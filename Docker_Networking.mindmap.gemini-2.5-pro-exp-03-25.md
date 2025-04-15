# Docker Networking #Overview #CoreConcept #Containers

Overview of networking concepts within the Docker ecosystem, enabling communication between containers and with the outside world.

## Core Networking Concepts #Fundamentals #Architecture #Basics

Fundamental principles and components underlying Docker networking.

### Container Network Model (CNM) #CNM #Model #Abstraction
Docker's specification for container networking, defining the core objects.
    *   **Sandbox:** An isolated network stack (network interfaces, routing tables, DNS settings). Usually corresponds to a container. #Sandbox #Isolation
    *   **Endpoint:** A network interface connecting a Sandbox to a Network. #Endpoint #Interface
    *   **Network:** A group of Endpoints that can communicate directly. Typically implemented using network drivers. #Network #Connectivity

### Libnetwork #Libnetwork #Library #Implementation
Go library implementing the CNM, providing the core networking functionality for Docker.

### Network Namespaces #Namespaces #Isolation #Linux
Linux kernel feature providing network stack isolation for containers. Each container gets its own private network namespace.

### Virtual Ethernet Pairs (veth) #veth #VirtualInterface #Linux
Used often by bridge networks to connect container namespaces to the Docker host's network bridge.

### Network Address Translation (NAT) #NAT #IPMasquerade #Connectivity
Mechanism often used (especially with bridge networks) to allow containers without public IPs to communicate with the outside world via the host's IP.

### iptables / nftables #Firewall #Linux #PacketFiltering
Linux kernel firewall tools used extensively by Docker to manage port forwarding, NAT, and network isolation rules.

## Docker Network Drivers #Drivers #NetworkTypes #Configuration

Mechanisms that provide specific network implementations, defining how containers connect.

### Bridge Network Driver #Bridge #Default #NAT
The default network driver for standalone containers. Creates a private network internal to the host and uses NAT for external connectivity.
    *   **Default Bridge Network (`docker0` / `bridge`)**: Automatically created, containers attach here if no network is specified. #DefaultBridge #docker0
    *   **User-Defined Bridge Networks**: Recommended over the default bridge for better isolation and DNS resolution. #UserDefinedBridge #Isolation #DNS

### Host Network Driver #Host #NoIsolation #Performance
Removes network isolation between the container and the Docker host. The container shares the host's network stack. High performance but reduced security.

### None Network Driver #None #NoNetwork #Isolation
Disables networking for a container. The container gets a loopback interface but no external network connectivity. Useful for batch jobs or security.

### Overlay Network Driver #Overlay #Swarm #MultiHost #VXLAN
Enables multi-host networking, primarily used with Docker Swarm. Creates distributed networks spanning multiple Docker hosts.
    *   **VXLAN Tunnels**: Encapsulates container traffic to traverse the underlying host network. #VXLAN #Tunneling #Encapsulation
    *   **Control Plane**: Manages network state across the swarm (using gossip protocol). #ControlPlane #Gossip
    *   **Data Plane**: Handles the actual packet forwarding. #DataPlane

### Macvlan Network Driver #Macvlan #Layer2 #PhysicalNetwork
Allows assigning MAC addresses to containers, making them appear as physical devices directly on the host's network. Requires promiscuous mode on the host interface.
    *   **Subinterfaces**: Creates virtual subinterfaces on a parent host interface. #Subinterface
    *   **Use Cases**: Integrating containers into existing physical network infrastructure, legacy applications. #LegacyIntegration #PhysicalIP

### IPvlan Network Driver #IPvlan #Layer2 #Layer3 #PhysicalNetwork
Similar to Macvlan but provides Layer 2 (L2) or Layer 3 (L3) connectivity. Offers more control over IP address management.
    *   **L2 Mode**: Containers share the same broadcast domain as the host interface. #IPvlanL2
    *   **L3 Mode**: Isolates containers into separate L3 networks, requires external router. #IPvlanL3

### Network Plugins #Plugins #Extensibility #CNM
Third-party or custom network drivers implementing the CNM for specialized networking needs (e.g., Calico, Weave Net).

## Container Communication #Connectivity #InterContainer #ServiceDiscovery

How containers connect and communicate with each other.

### Communication on the Same Network #SameNetwork #DNS #Alias
Containers connected to the same user-defined network can communicate directly using container names or network aliases thanks to Docker's embedded DNS server.
    *   **Embedded DNS Server**: Resolves container names/aliases to their internal IP addresses within a network. #EmbeddedDNS #NameResolution
    *   **Network Aliases**: Assigning additional names to a container within a specific network. #NetworkAlias

### Communication Across Different Networks #DifferentNetworks #Routing
Containers on different networks cannot communicate directly by default. They typically need to be connected to a common network or communicate via exposed ports through the host.

### Linking (Legacy) #Linking #Legacy #Deprecated
Older method for connecting containers, largely replaced by user-defined networks. Relied on environment variables.

## Exposing Container Ports #PortMapping #Publishing #ExternalAccess

Making container services accessible from outside the Docker host.

### Port Publishing #Publish #Expose #PortForwarding
Mapping a port on the Docker host to a port inside the container.
    *   **`-p host_port:container_port`**: Maps a specific host port to a container port. #SpecificPortMapping
    *   **`-P`**: Publishes all exposed ports to random high-numbered host ports. #PublishAll #RandomPort
    *   **`EXPOSE` Dockerfile Instruction**: Metadata indicating which ports the application inside the container listens on. Does not publish the port itself. #ExposeInstruction #Metadata

### Host vs. Container Port #HostPort #ContainerPort #Mapping
Distinction between the port listened on by the host machine and the port listened on by the application inside the container.

## Docker Compose Networking #Compose #MultiContainer #YAML

Managing networking for multi-container applications defined using Docker Compose.

### Default Network #ComposeDefault #AutomaticNetwork
Compose creates a default bridge network for each `docker-compose.yml` file, connecting all defined services.

### Defining Custom Networks #ComposeCustomNetwork #NetworkDefinition
Specifying custom networks (bridge, overlay, etc.) in the `docker-compose.yml` file for more control.
    *   `networks:` top-level key. #ComposeNetworksKey
    *   Assigning services to specific networks. #ComposeServiceNetwork

### Service Discovery in Compose #ComposeDNS #ServiceName
Services within the same Compose project (and network) can discover each other using their service names as hostnames.

### Linking in Compose #ComposeLinking #LegacyCompose
Legacy linking (`links:`) still exists but using common networks is preferred.

## Docker Swarm Networking #Swarm #Orchestration #ClusterNetworking

Networking features specific to Docker's native orchestration tool, Swarm.

### Overlay Networks #SwarmOverlay #DistributedNetwork
The primary network type for Swarm services, enabling communication across multiple nodes in the cluster.
    *   **Scope**: `swarm` (vs. `local` for non-swarm overlay). #SwarmScope
    *   **Attachable Networks**: Allows standalone containers to connect to swarm overlay networks. #AttachableOverlay

### Ingress Network #SwarmIngress #RoutingMesh #LoadBalancing
A special overlay network handling external requests to published service ports across all nodes in the swarm (Routing Mesh).
    *   **Routing Mesh**: Routes incoming requests on published ports to available tasks (containers) for a service, regardless of which node receives the request. #RoutingMesh
    *   **Published Ports**: Ports defined in the `ports:` section of a service definition. #SwarmPublishedPorts

### Service Discovery in Swarm #SwarmDNS #VirtualIP #LoadBalancing
Swarm provides built-in DNS-based service discovery and load balancing for services.
    *   **Virtual IP (VIP)**: Each service gets a stable VIP, DNS resolves service name to VIP, Swarm load balances requests to VIP across healthy tasks. #VIP #DNSRR
    *   **DNS Round Robin (DNSRR)**: Alternative load balancing mode where DNS resolves service name directly to task IPs. #DNSRR

### Network Encryption #SwarmEncryption #IPsec #Security
Overlay networks in Swarm can have their control plane and/or data plane traffic encrypted using IPsec/AES.

## Network Security #Security #Isolation #Firewall

Securing Docker network environments.

### Network Segmentation #Segmentation #UserDefinedNetworks #Isolation
Using user-defined networks (bridge, overlay) to isolate groups of containers. Containers not on the same network cannot directly communicate by default.

### Default Network Isolation #DefaultIsolation #BridgeNetwork
Containers on the default bridge network have limited isolation compared to user-defined bridges.

### Docker Daemon Attack Surface #DaemonSecurity #Socket #API
Securing the Docker daemon socket (`docker.sock`) as it controls network configurations.

### Host Firewall Rules #HostFirewall #iptables #ufw
Configuring the host's firewall (iptables, firewalld, ufw) to control traffic entering/leaving the host and potentially reaching container ports.

### Network Policies #NetworkPolicy #AdvancedSecurity #Plugins
Advanced network filtering using network plugins that support network policies (e.g., Calico) for fine-grained control over traffic flow between containers.

## Troubleshooting and Debugging #Troubleshooting #Debugging #Tools

Diagnosing and fixing Docker networking issues.

### Basic Commands #DockerCommands #Inspection
    *   `docker network ls`: List networks. #ListNetworks
    *   `docker network inspect <network_name>`: View detailed network configuration and connected containers. #InspectNetwork
    *   `docker network create <network_name>`: Create a new network. #CreateNetwork
    *   `docker network rm <network_name>`: Remove a network. #RemoveNetwork
    *   `docker network connect <network_name> <container_name>`: Connect a running container to a network. #ConnectContainer
    *   `docker network disconnect <network_name> <container_name>`: Disconnect a container from a network. #DisconnectContainer
    *   `docker container inspect <container_name>`: View container details, including network settings and IP addresses. #InspectContainer

### Diagnostic Tools #NetworkTools #Utilities
Using standard network tools inside containers or on the host.
    *   `ping`: Test basic connectivity. #ping
    *   `curl` / `wget`: Test HTTP/HTTPS connectivity to services. #curl #wget
    *   `netstat` / `ss`: Check listening ports and connections inside containers. #netstat #ss
    *   `ip addr` / `ifconfig`: View network interfaces and IP addresses inside containers. #ipaddr #ifconfig
    *   `tcpdump`: Capture network traffic for deep analysis. #tcpdump #PacketCapture

### Common Issues #Problems #Errors
    *   **Connectivity Problems**: Containers unable to reach each other or the outside world. #ConnectivityIssue
    *   **Port Conflicts**: Host port already in use when trying to publish a container port. #PortConflict
    *   **DNS Resolution Failures**: Containers unable to resolve names (other containers, external hosts). #DNSIssue
    *   **Performance Bottlenecks**: Slow network throughput. #PerformanceIssue
    *   **Firewall Blocking**: Host or external firewall preventing traffic. #FirewallIssue

## Advanced Topics #Advanced #Customization #Internals

More complex networking scenarios and configurations.

### Custom Network Drivers/Plugins #NetworkPlugins #Extensibility
Developing or using third-party network drivers for specific needs (e.g., CNI plugins, specific cloud provider integrations).

### IPv6 Support #IPv6 #DualStack
Configuring Docker networks to use IPv6 addresses alongside or instead of IPv4.

### Embedded DNS Server Configuration #DNSConfig #CustomDNS
Customizing the behavior of Docker's embedded DNS server (e.g., adding custom DNS servers for containers to use).

### Internal Load Balancing #LoadBalancing #InternalServices
Load balancing traffic between containers within Docker networks without exposing ports externally (often using DNS or tools like Traefik/Nginx).

### Connecting to Host Services #HostAccess #docker.internal
How containers can access services running directly on the Docker host machine (using `host.docker.internal` or `gateway.docker.internal`).

## Integration with External Systems #Integration #ExternalServices #Cloud

Connecting Docker networks to existing infrastructure and services.

### Connecting to External Databases #Database #ExternalConnectivity
Strategies for containers to securely connect to databases running outside Docker.

### VPN Integration #VPN #SecureTunnel
Running VPN clients within containers or routing container traffic through host VPNs.

### Cloud Provider Networking #CloudIntegration #AWS #Azure #GCP
Leveraging cloud-specific networking services (VPCs, Security Groups, Load Balancers) with Docker deployments.

### Proxy Integration #Proxy #ForwardProxy #ReverseProxy
Configuring containers to use forward proxies for outbound traffic or setting up reverse proxies (like Nginx, Traefik, HAProxy) in front of containers.
