# Helm #Kubernetes #PackageManager #Overview
Helm helps you manage Kubernetes applications — Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

## Introduction to Helm #Basics #Overview #Kubernetes
Understanding the purpose and benefits of using Helm in a Kubernetes environment.
*   What is Helm? The package manager for Kubernetes.
*   Why use Helm? Managing complexity, reproducibility, sharing applications.
*   History and Evolution (Helm 2 vs Helm 3).

### Problem Space #Complexity #KubernetesManagement
Challenges Helm addresses: managing numerous Kubernetes manifests, application lifecycle, configuration drift.

### Key Benefits #Advantages #Efficiency
*   Simplified Deployment
*   Application Lifecycle Management
*   Reusability and Sharing
*   Consistency Across Environments
*   Rollbacks and Versioning

## Core Concepts #Fundamentals #Terminology #KeyIdeas
Essential terms and ideas underpinning Helm.

### Chart #Packaging #Definition
The Helm packaging format containing templates, default values, and metadata.

### Release #Deployment #Instance
An instance of a chart running in a Kubernetes cluster.

### Repository #Storage #Distribution
A place where charts can be collected and shared.

### Values #Configuration #Customization
Parameters used to customize a chart installation (e.g., `values.yaml`).

### Template #Generation #Manifests
Files processed by the Helm template engine to generate valid Kubernetes manifests.

### Hooks #Lifecycle #Automation
Mechanisms to intervene at specific points in a release's lifecycle (e.g., pre-install, post-delete).

### Subcharts / Dependencies #Composition #Reusability
Charts that a parent chart depends on.

## Helm Architecture #Internals #Components #Helm3
Understanding the components and interaction flow, primarily focusing on Helm 3.

### Helm Client (CLI) #Tool #Interface
The command-line tool (`helm`) used by end-users to interact with Helm functionalities.
*   Manages charts, repositories, releases.
*   Renders templates locally.
*   Communicates with Kubernetes API Server.

### Kubernetes API Server #Integration #Cluster
Helm interacts directly with the Kubernetes API Server to manage releases.

### Release Information Storage #State #Secrets
How Helm 3 stores release metadata (usually as Secrets or ConfigMaps in the cluster).

### Comparison with Helm 2 Architecture #History #Tiller
Brief mention of the Tiller server-side component in Helm 2 and why it was removed in Helm 3.

## Helm Charts #Structure #Packaging #Format
Detailed breakdown of the Helm chart structure and its components.

### Chart Structure #Directory #Filesystem
The standard directory layout of a Helm chart.
*   `Chart.yaml`
*   `values.yaml`
*   `templates/` directory
*   `charts/` directory (for subcharts)
*   `crds/` directory (for Custom Resource Definitions)
*   `templates/NOTES.txt`
*   `.helmignore` file

### `Chart.yaml` #Metadata #Definition
File containing metadata about the chart (name, version, description, API version, etc.).
*   `apiVersion` (v1 or v2)
*   `name`
*   `version` (SemVer 2)
*   `appVersion`
*   `description`
*   `keywords`
*   `home`, `sources`, `maintainers`
*   `dependencies` (for defining subcharts)

### `values.yaml` #Defaults #Configuration
Default configuration values for the chart. Can be overridden during installation/upgrade.

### `templates/` Directory #Manifests #Templating
Contains template files that generate Kubernetes manifests.
*   Uses Go templates.
*   Common files: `deployment.yaml`, `service.yaml`, `ingress.yaml`, `_helpers.tpl`.

### `charts/` Directory #Subcharts #Dependencies
Contains packaged dependency charts (`.tgz`) or unpacked chart directories. Managed via `Chart.yaml` dependencies.

### `crds/` Directory #CustomResources #Kubernetes
Contains Custom Resource Definitions that are installed before the rest of the chart templates.

### `templates/NOTES.txt` #Instructions #PostInstall
A plain text file displayed to the user after successful chart installation. Often contains usage instructions.

### `.helmignore` #Exclusion #Packaging
Specifies files and directories to ignore when packaging the chart.

## Working with Charts #Development #Workflow #Usage
Practical aspects of creating, modifying, and using Helm charts.

### Creating a Chart #Scaffolding #`helm create`
Using `helm create` to scaffold a new chart directory.

### Linting a Chart #Validation #Quality #`helm lint`
Checking a chart for adherence to standards and best practices.

### Packaging a Chart #Distribution #Archive #`helm package`
Creating a versioned chart archive (`.tgz`) file.

### Inspecting Charts #Exploration #Details
*   `helm show chart <repo>/<chart>`: Show chart definition.
*   `helm show values <repo>/<chart>`: Show default values.
*   `helm show readme <repo>/<chart>`: Show README.
*   `helm show all <repo>/<chart>`: Show all information.

### Template Rendering (Dry Run) #Debugging #Preview #`helm template`
Rendering chart templates locally without installing to the cluster. Useful for debugging.

## Helm Releases #Lifecycle #Management #ClusterState
Managing application instances deployed via Helm.

### Installing a Release #Deployment #`helm install`
Deploying a chart to the Kubernetes cluster.
*   Specifying release name.
*   Overriding values (`--values`, `--set`).
*   Namespace management.
*   Waiting for resources (`--wait`).
*   Atomic installs (`--atomic`).

### Upgrading a Release #Update #`helm upgrade`
Updating an existing release with a new chart version or configuration changes.
*   `helm upgrade [RELEASE] [CHART]`
*   Value overrides.
*   Rollback on failure (`--atomic`).
*   Resetting values (`--reset-values`).
*   Reusing values (`--reuse-values`).

### Rolling Back a Release #Revert #History #`helm rollback`
Reverting a release to a previous revision.
*   `helm history [RELEASE]`
*   `helm rollback [RELEASE] [REVISION]`

### Uninstalling a Release #Deletion #Cleanup #`helm uninstall`
Removing a release and its associated resources from the cluster.
*   `helm uninstall [RELEASE]`
*   Keeping history (`--keep-history`).

### Listing Releases #Status #Query #`helm list`
Viewing deployed releases in the cluster.
*   Filtering by namespace (`-n`).
*   Showing all releases (`-a`).

### Getting Release Status #Details #`helm status`
Checking the status and resources of a specific release.

### Getting Release Values #Configuration #`helm get values`
Retrieving the computed values used for a deployed release.

### Getting Release Manifests #Kubernetes #`helm get manifest`
Retrieving the rendered Kubernetes manifests for a deployed release.

## Helm Repositories #Distribution #Sharing #Storage
Managing sources for Helm charts.

### Repository Concepts #Index #ChartServer
How repositories work (index file `index.yaml`, chart packages).

### Adding a Repository #Configuration #`helm repo add`
Adding a chart repository to the Helm client configuration.

### Updating Repositories #Sync #`helm repo update`
Fetching the latest `index.yaml` from configured repositories.

### Searching Repositories #Discovery #`helm search repo`
Finding available charts in added repositories.

### Removing Repositories #Cleanup #`helm repo remove`
Removing a repository from the Helm client configuration.

### Creating a Chart Repository #Hosting #Server
Options for hosting your own chart repository.
*   Static web server (e.g., GitHub Pages).
*   ChartMuseum.
*   Cloud provider services (ACR, ECR, GCR/Artifact Registry - OCI support).

### OCI Support #Registry #Standards
Using OCI-compliant registries (like Docker Hub, ACR, etc.) to store Helm charts.
*   `helm push/pull/login/logout` with OCI URIs (`oci://...`).

## Helm CLI #Commands #Tool #Reference
Overview of key Helm command-line interface commands.

### Core Commands #Essential #CommonUsage
*   `helm create`
*   `helm install`
*   `helm upgrade`
*   `helm uninstall`
*   `helm list`
*   `helm status`
*   `helm rollback`
*   `helm history`

### Chart Management Commands #Development #Packaging
*   `helm package`
*   `helm lint`
*   `helm show`
*   `helm template`
*   `helm dependency`

### Repository Commands #Distribution #Configuration
*   `helm repo add`
*   `helm repo update`
*   `helm repo list`
*   `helm repo remove`
*   `helm search repo`

### Utility Commands #Helper #Information
*   `helm version`
*   `helm env`
*   `helm completion`
*   `helm plugin`
*   `helm get` (values, manifest, hooks, all)

### OCI Related Commands #Registry #NewStandards
*   `helm push`
*   `helm pull`
*   `helm registry login`
*   `helm registry logout`

## Chart Templating #GoTemplates #Sprig #Logic
Techniques and functions used for templating Kubernetes manifests.

### Go Template Language Basics #Syntax #ControlFlow
*   Actions: `{{ }}`
*   Pipelines: `|`
*   Variables: `$`
*   Control Structures: `if/else`, `range`, `with`

### Built-in Objects #Context #Data
Accessing data within templates.
*   `.Release` (Name, Namespace, Service, IsInstall, IsUpgrade, Revision)
*   `.Chart` (Name, Version, AppVersion, etc.)
*   `.Values` (Accessing `values.yaml` data)
*   `.Files` (Accessing non-template files in the chart)
*   `.Capabilities` (Kubernetes cluster information, API versions)
*   `.Template` (Information about the current template being rendered)

### Functions and Pipelines #Logic #Transformation
Using built-in and Sprig library functions.
*   Sprig Library: String manipulation, math, dates, dictionaries, lists, encoding, etc.
*   Helm-specific functions: `include`, `tpl`, `required`, `lookup`, `toYaml`, `fromJson`, etc.

### Named Templates (`_helpers.tpl`) #DRY #Reusability
Defining reusable template snippets using `{{ define "template.name" }} ... {{ end }}` and including them with `{{ include "template.name" . }}`.

### Subcharts and Values #Scope #Overrides
How values flow from parent charts to subcharts.
*   Global values (`--set global.key=value`).
*   Accessing parent values from subchart (`.Values.parentKey` - generally discouraged).
*   Passing values down via `exports` or dedicated sections in parent `values.yaml`.

### Template Debugging #Troubleshooting #Tips
Techniques for finding and fixing issues in templates.
*   `helm lint`
*   `helm template --debug`
*   `fail` function.
*   Careful use of `toYaml | nindent`.

## Chart Dependencies #Subcharts #Composition #Management
Managing charts that depend on other charts.

### Declaring Dependencies (`Chart.yaml`) #Metadata #Configuration
Using the `dependencies` field in `Chart.yaml`.
*   `name`, `version`, `repository`
*   `condition`: Enable/disable dependency based on values.
*   `tags`: Grouping dependencies.
*   `alias`: Using a different name for the dependency locally.

### Managing Dependencies (`helm dependency`) #Commands #Workflow
*   `helm dependency update`: Download/update dependencies into the `charts/` directory.
*   `helm dependency build`: Rebuilds `charts/` directory from `Chart.lock`.
*   `helm dependency list`: List dependencies for a chart.

### Values Flow #Configuration #Overrides
How parent chart values can override subchart values (e.g., `subchartName.key=value`).
*   Global values (`global:`).
*   Exports format (less common now).

### Conditions and Tags #ConditionalLogic #Filtering
Enabling/disabling dependencies dynamically based on values or tags during install/upgrade (`--set dependencyName.enabled=false`, `--set tags.tagName=false`).

## Helm Plugins #Extensibility #Customization #Tools
Extending Helm's functionality with custom commands.

### What are Plugins? #Concept #Extension
Adding custom subcommands to the Helm CLI.

### Installing Plugins #`helm plugin install`
Adding plugins from Git repositories or local paths.

### Managing Plugins #`helm plugin list/update/uninstall`
Listing, updating, and removing installed plugins.

### Popular Plugins #Examples #Community
*   `helm-diff`: Preview changes between releases.
*   `helm-secrets`: Manage secrets with tools like SOPS or Vault.
*   `helm-push`: Push charts to ChartMuseum (less needed with OCI).
*   `helm-unittest`: Unit testing Helm charts.

### Creating Plugins #Development #Scripting
Writing your own plugins (often shell scripts or compiled binaries).
*   Plugin structure (`plugin.yaml`).
*   Environment variables provided by Helm.

## Security Considerations #BestPractices #Hardening #Protection
Securing Helm charts and installations.

### Chart Security #Linting #Validation
*   Using `helm lint`.
*   Scanning chart source code.
*   Validating values (`required` function, JSON schema).

### Image Security #Container #Scanning
Ensuring container images specified in charts are secure and scanned for vulnerabilities.

### RBAC #Permissions #Kubernetes
Ensuring Helm/Tiller (for Helm 2) or the user running Helm 3 has appropriate RBAC permissions, but not excessive ones.

### Secrets Management #Credentials #SensitiveData
Handling sensitive data within charts.
*   Using Kubernetes Secrets directly.
*   External secret management solutions (Vault, Sealed Secrets).
*   Helm Secrets plugin (SOPS, Vault integration).

### Provenance and Integrity #Signing #Verification
Signing chart packages (`helm package --sign`) and verifying them (`helm install --verify`).
*   Requires GPG keys.

### Securing Repositories #Authentication #Authorization
Using authentication for private chart repositories (HTTP basic auth, token auth).

### Least Privilege Principle #RBAC #Helm3
Running `helm install/upgrade` with user credentials scoped to the necessary namespace and resources.

## Helm in CI/CD #Automation #DevOps #Pipelines
Integrating Helm into automated build, test, and deployment pipelines.

### Workflow Overview #Pipeline #Stages
Common stages: Build Image -> Package Chart -> Test Chart -> Deploy to Staging -> Test Staging -> Deploy to Production.

### Tools Integration #Examples #Technology
*   Jenkins
*   GitLab CI/CD
*   GitHub Actions
*   Argo CD (GitOps)
*   Flux CD (GitOps)

### Storing Charts #Repository #Registry #OCI
Where to store charts for CI/CD consumption (Chart Repository, OCI Registry).

### Dynamic Environments #Preview #Testing
Using Helm to spin up temporary environments for testing branches or pull requests.

### Secrets Handling in CI/CD #Credentials #Automation
Injecting secrets securely into the pipeline for Helm operations.

### GitOps Approach #ArgoCD #FluxCD
Using Git as the single source of truth for declarative infrastructure and applications, often managed via Helm charts.

## Helm Best Practices #Recommendations #Quality #Maintainability
Tips for creating robust, maintainable, and reusable Helm charts.

### Chart Structure and Metadata #Organization #Clarity
*   Meaningful chart names and descriptions.
*   Accurate `appVersion`.
*   Using `keywords` and `maintainers`.

### Values Design #Configuration #Flexibility
*   Sensible defaults in `values.yaml`.
*   Clear value naming and structure.
*   Adding comments to `values.yaml`.
*   Avoiding overly complex value structures.

### Templating Practices #Readability #DRY
*   Using `_helpers.tpl` for reusable snippets.
*   Keeping templates concise and focused.
*   Adding comments to complex template logic.
*   Using `nindent` correctly for YAML formatting.
*   Employing `required` for essential values.

### Dependencies #Modularity #Reuse
*   Favoring dependencies over copying templates.
*   Using aliases for clarity when needed.
*   Managing dependencies explicitly (`helm dependency update/build`).

### Release Management #Strategy #Consistency
*   Using meaningful release names.
*   Leveraging namespaces effectively.
*   Using `--atomic` for safer upgrades/installs.
*   Regularly checking release history and status.

### Testing #Validation #QualityAssurance
*   Using `helm lint`.
*   Using `helm template` for previews.
*   Implementing chart testing frameworks (e.g., `helm-unittest`, Terratest).

### Documentation #README #NOTES.txt
*   Writing a comprehensive `README.md`.
*   Providing useful post-install instructions in `NOTES.txt`.

## Helm Ecosystem and Community #Resources #Support #Tools
Surrounding tools, resources, and ways to get involved.

### Official Documentation #Learning #Reference
The primary source for Helm information (helm.sh).

### Artifact Hub #Discovery #Charts
Centralized hub for finding publicly available Helm charts and other CNCF artifacts.

### Community Support #Help #Forum
*   Slack channels (#helm-users, #helm-dev)
*   Stack Overflow
*   GitHub Issues

### Related Tools #Integration #Extensions
*   Helmfile: Declarative spec for deploying Helm charts.
*   Helmsman: Another declarative tool for managing Helm charts.
*   Terratest: Infrastructure testing including Helm charts.
*   GitOps tools (Argo CD, Flux).

### Contributing to Helm #Development #Community
Ways to get involved in the Helm project (code, documentation, testing).

## Comparing Helm Versions (v2 vs v3) #History #Evolution #Architecture
Key differences between the major versions.

### Removal of Tiller #Security #Architecture
The most significant change: Helm 3 is tiller-less, improving security and simplifying architecture.

### Release Information Storage #Secrets #ConfigMaps
Helm 3 stores release info in Secrets/ConfigMaps within the release's target namespace.

### Namespaced Releases #Scope #Isolation
Releases are now namespaced by default in Helm 3.

### Chart API Version (`apiVersion`) #Metadata #Charts
Introduction of `v2` for `apiVersion` in `Chart.yaml`, supporting changes like library charts.

### JSON Schema Validation #Values #Quality
Built-in support for validating `values.yaml` against a JSON schema.

### OCI Support #Registry #Distribution
Native support for storing charts in OCI registries.

### Changes in Commands #CLI #Usage
Minor adjustments and additions to Helm CLI commands.

## Alternatives to Helm #Comparison #Tools #KubernetesManagement
Other tools that address similar problems in the Kubernetes ecosystem.

### Kustomize #Configuration #Overlay
Kubernetes-native configuration management via overlays. Often used alongside Helm or independently.

### Operator Framework / Kubebuilder #Automation #CustomControllers
Building Kubernetes-native applications (Operators) that manage application lifecycle more deeply.

### Carvel Tools (ytt, kapp) #Templating #Deployment
A suite of tools from VMware Tanzu for configuration, deployment, and management.

### Plain Kubernetes Manifests #Simplicity #Manual
Managing applications directly using `kubectl apply -f <directory>`. Suitable for simple cases.

### Pulumi / Terraform #IaC #CloudNative
Infrastructure as Code tools that can also manage Kubernetes resources, sometimes using Helm charts internally or providing alternative abstractions.
