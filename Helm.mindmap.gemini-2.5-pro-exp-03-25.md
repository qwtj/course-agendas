# Helm #PackageManager #Kubernetes #Deployment
The package manager for Kubernetes, simplifying the deployment and management of applications.

## Core Concepts and Overview #Basics #Introduction #Kubernetes
Fundamental ideas and the purpose of Helm.
Helm helps you manage Kubernetes applications — Helm Charts help you define, install, and upgrade even the most complex Kubernetes application.

### What is Helm? #Definition #ProblemSolving
Explanation of Helm's role in the Kubernetes ecosystem. It packages applications as Charts, which are collections of files describing related Kubernetes resources.

### Why Use Helm? #Benefits #UseCases
Advantages like managing complexity, easy updates, simple sharing, and rollbacks.

### Key Terminology #Glossary #Concepts
*   **Chart:** A Helm package containing templates for Kubernetes resources. #Chart
*   **Release:** An instance of a chart deployed to a Kubernetes cluster. #Release
*   **Repository:** A location where charts can be stored and shared. #Repository
*   **Template:** A file that generates Kubernetes manifest files when combined with values. #Template
*   **Values:** Configuration parameters provided to a chart to customize a release. #Values

## Helm Architecture #Architecture #Helm3 #Helm2
Understanding the components and interactions within Helm.

### Helm 3 Architecture #Current #Tillerless #Security
Focuses on the client-side `helm` binary interacting directly with the Kubernetes API server, using Kubernetes secrets to store release information. Eliminates the need for Tiller.
Improved security model leveraging Kubernetes RBAC.

### Helm 2 Architecture (Historical) #Legacy #Tiller #SecurityConcern
Client (`helm`) and server (`Tiller`) components. Tiller ran within the Kubernetes cluster, potentially having broad permissions.
Often cited for security concerns due to Tiller's default wide access.

### Helm Client (helm binary) #CLI #UserInterface
The command-line tool used by users to interact with Helm functionalities (installing charts, managing releases, etc.).

### Interaction with Kubernetes API #Integration #API
How Helm communicates with the Kubernetes cluster to manage resources.

## Installing and Configuring Helm #Setup #Installation #Configuration
Getting the Helm client ready for use.

### Prerequisites #Requirements #kubectl
Requires a configured Kubernetes cluster (`kubectl config current-context`).

### Installation Methods #Download #PackageManager
*   Binary Release (GitHub)
*   Script (get.helm.sh)
*   Package Managers (Homebrew, Chocolatey, Apt, Snap)

### Client Configuration #Environment #Settings
Setting up repository access, plugin installations, environment variables (`$HELM_HOME` - deprecated in Helm 3 but still relevant for plugins/cache, `$KUBECONFIG`).

## Helm Charts: Structure and Fundamentals #Charts #Packaging #Structure
The basic building blocks of Helm deployments.

### Chart Anatomy #DirectoryLayout #Files
The standard directory structure of a Helm chart.
*   `Chart.yaml`: Metadata about the chart (name, version, description, apiVersion). #Metadata #ChartYAML
*   `values.yaml`: Default configuration values for the chart. #Defaults #ValuesYAML
*   `charts/`: Directory for chart dependencies (subcharts). #Dependencies #Subcharts
*   `templates/`: Directory containing template files that generate Kubernetes manifests. #Templates #Manifests
*   `templates/NOTES.txt`: Optional text displayed after successful installation. #Notes
*   `templates/_helpers.tpl`: Contains template helpers (partials) for reuse within other templates. #Helpers #Partials
*   `crds/`: Directory for Custom Resource Definitions (CRDs). Installed before templates. #CRDs

### Chart Metadata (`Chart.yaml`) #Versioning #APIVersion
Key fields like `apiVersion` (v1 or v2), `name`, `version`, `appVersion`, `description`, `dependencies`.

### Default Values (`values.yaml`) #Configuration #Customization
Defining the default configurable parameters for the chart. Structure using YAML.

## Helm Chart Development #Development #Authoring #BestPractices
Creating and refining Helm charts.

### Creating a New Chart (`helm create`) #Scaffolding #Boilerplate
Using the command to generate a basic chart structure.

### Writing Templates #Templating #Manifests #GoTemplates
Creating Kubernetes manifest files using Go templates, values, and built-in objects.

### Defining Values #Parameters #UserConfiguration
Structuring `values.yaml` effectively for easy configuration. Using nested values.

### Using Helpers (`_helpers.tpl`) #DRY #Reusability #Templates
Defining named templates (partials) to avoid repetition and create reusable logic.

### Chart Linting (`helm lint`) #Validation #QualityCheck
Checking charts for adherence to best practices and potential issues.

### Chart Packaging (`helm package`) #Distribution #Archive
Creating a versioned chart archive (`.tgz` file) for distribution or storage in a repository.

### Chart Provenance and Signing #Security #Integrity #Provenance
Creating provenance files (`.prov`) to verify the integrity and origin of chart packages. Requires GPG.

## Helm Templating Engine #Templating #GoTemplates #Sprig #Functions
Deep dive into the mechanism Helm uses to generate manifests.

### Go `text/template` Language #Syntax #Logic
The core templating language used by Helm. Control structures (`if`, `range`), variables, pipelines.

### Built-in Objects #Context #Data
Objects available within templates: `.Release`, `.Chart`, `.Values`, `.Files`, `.Capabilities`.
*   `.Release`: Information about the release (Name, Namespace, Service, IsUpgrade, IsInstall, Revision).
*   `.Chart`: Contents of `Chart.yaml`.
*   `.Values`: Values provided for the release (merged from `values.yaml`, `--set`, `-f`).
*   `.Files`: Access to non-template files within the chart (`.Files.Get`, `.Files.Glob`).
*   `.Capabilities`: Information about the Kubernetes cluster (`.Capabilities.KubeVersion`, `.Capabilities.ApiVersions`).

### Functions #Logic #Manipulation
Helm provides numerous built-in functions.
*   Templating Functions (`include`, `template`, `required`).
*   Logic and Flow Control (`if`, `else`, `range`, `with`).
*   String Manipulation (`trim`, `upper`, `quote`, `nospace`).
*   Type Conversion (`toInt`, `toYaml`, `fromJson`).
*   Dictionaries (`dict`, `get`, `set`, `hasKey`).
*   Lists (`list`, `first`, `last`, `slice`).
*   Math Functions (`add`, `max`, `mul`).
*   Encoding (`b64enc`, `b64dec`).
*   Regular Expressions (`regexMatch`, `regexFindAll`).
*   File Path Functions (`base`, `dir`, `ext`).
*   Reflection (`typeOf`, `kindIs`).
*   Semantic Version Functions (`semver`, `semverCompare`).
*   Network Functions (Helm 3.3+).

### Sprig Library Functions #Utilities #Helpers
Helm includes almost all functions from the Sprig library, offering extensive utility functions.

### Custom Template Functions #Extensibility #Advanced
Defining custom functions within `_helpers.tpl` or potentially through plugins (though less common for functions).

### Flow Control #Conditionals #Loops #Templates
Using `if/else`, `range`, and `with` actions for dynamic template generation.

### Variables #Scope #Templates
Defining and using variables within templates (`$name := value`). Understanding variable scope.

## Managing Releases (Lifecycle) #Releases #Deployment #Management
Interacting with deployed instances of charts.

### Installing Charts (`helm install`) #Deploy #Create
Deploying a chart to the cluster, creating a new release. Customizing with values (`--values` / `-f`, `--set`, `--set-string`, `--set-file`).

### Upgrading Releases (`helm upgrade`) #Update #Modify
Upgrading an existing release to a new chart version or with new configuration values. Options like `--install` (atomic upgrade or install).

### Rolling Back Releases (`helm rollback`) #Revert #Safety
Reverting a release to a previously deployed version.

### Listing Releases (`helm list` / `ls`) #Query #Status
Viewing deployed releases in a namespace or across all namespaces.

### Getting Release Status (`helm status`) #Inspect #Details
Retrieving detailed information about a specific release, including deployed resources and notes.

### Uninstalling Releases (`helm uninstall` / `delete`) #Remove #Cleanup
Removing a release and its associated Kubernetes resources from the cluster.

### Release History (`helm history`) #Audit #Versions
Viewing the revision history of a specific release.

## Chart Dependencies #Subcharts #Dependencies #Composition
Managing charts that depend on other charts.

### Defining Dependencies (`Chart.yaml`) #Requirements #Declaration
Specifying required subcharts in the `dependencies` section of `Chart.yaml`. Fields: `name`, `version`, `repository`, `condition`, `tags`, `alias`.

### Managing Dependencies (`helm dependency`) #Commands #Update
Commands for fetching (`update`/`build`) and listing (`list`) dependencies stored in the `charts/` directory or `dependencies` section.

### Dependency Values #Configuration #Subcharts
How values are passed down to subcharts (global values, nested values under the subchart alias/name).
*   Global Values (`global:` key in parent chart's values).
*   Subchart Values (Values nested under the subchart's alias or name in the parent's `values.yaml`).

### Conditional Dependencies #Optional #Toggles
Using the `condition` field in `dependencies` to enable/disable subcharts based on parent values.

### Aliases #Naming #Flexibility
Using the `alias` field to deploy multiple instances of the same subchart or provide a different name.

## Helm Hooks #Hooks #Lifecycle #Automation
Executing actions at specific points in a release lifecycle.

### Hook Types #Events #Triggers
Available hooks: `pre-install`, `post-install`, `pre-delete`, `post-delete`, `pre-upgrade`, `post-upgrade`, `pre-rollback`, `post-rollback`, `crd-install` (legacy).

### Hook Resources #Jobs #Pods
Defining Kubernetes resources (often Jobs or Pods) with hook annotations (`helm.sh/hook`).

### Hook Weights and Policies #Ordering #Deletion
Controlling the execution order (`helm.sh/hook-weight`) and deletion behavior (`helm.sh/hook-delete-policy`) of hooks.

### Use Cases for Hooks #Examples #Scenarios
Database schema migrations, running integration tests, pre-delete cleanup tasks, notifications.

## Helm Tests #Testing #Validation #Charts
Defining tests within a chart to verify a release is functioning correctly.

### Defining Tests #Annotations #Templates
Creating Kubernetes Pods or Jobs in the `templates/` directory with the `helm.sh/hook: test` annotation.

### Running Tests (`helm test`) #Execution #Verification
Executing the defined test resources against a deployed release.

### Test Results #Success #Failure
Interpreting the output of `helm test` based on the exit codes of test containers.

## Chart Repositories #Repositories #Distribution #Sharing
Storing and sharing Helm charts.

### Repository Structure #IndexFile #Packages
A Helm repository is an HTTP server hosting an `index.yaml` file and packaged chart (`.tgz`) files.

### Managing Repositories (`helm repo`) #Commands #Add #Update
Commands for adding (`add`), removing (`remove`), listing (`list`), and updating (`update`) chart repositories.

### Hosting Chart Repositories #Options #Platforms
*   **ChartMuseum:** Open-source Helm Chart Repository server.
*   **Harbor:** Open-source cloud native registry project (includes Helm charts).
*   **JFrog Artifactory:** Universal artifact repository manager.
*   **Sonatype Nexus Repository:** Universal repository manager.
*   **GitHub/GitLab Pages:** Hosting static repositories using Git repository features.
*   **Cloud Storage:** Using services like Google Cloud Storage, AWS S3 with an index file.
*   **OCI Registries (Experimental -> GA):** Using OCI-compliant registries (like Docker Hub) to store charts. #OCI

### OCI Support #Registry #Docker #Future
Leveraging OCI registries (e.g., Docker Hub, ACR, ECR, GCR) as Helm chart repositories. Commands like `helm push`, `helm pull`.

## Helm Plugins #Plugins #Extensibility #CLI
Extending Helm's functionality with custom subcommands.

### What are Plugins? #CustomCommands #Addons
Scripts or binaries that add new commands to the `helm` CLI.

### Installing Plugins (`helm plugin install`) #Setup #Management
Adding plugins from Git repositories or local paths.

### Managing Plugins (`list`, `update`, `uninstall`) #Lifecycle
Listing installed plugins, updating them, and removing them.

### Creating Plugins #Development #Structure
Structure of a plugin (`plugin.yaml`, executable script/binary). Using environment variables passed by Helm.

### Popular Plugins #Examples #Community
Helm Diff, Helm Secrets, Helm Push, Helm Unit Test, Helm SchemaGen, etc.

## Helm Security Practices #Security #BestPractices #RBAC
Securing Helm deployments and charts.

### Securing Helm 3 #RBAC #Namespaces #Secrets
Leveraging Kubernetes RBAC for fine-grained access control. Using namespaces effectively. Understanding how release information is stored in Secrets.

### Securing Helm 2 (Historical) #Tiller #ServiceAccount #RBAC
Risks associated with Tiller and recommended practices like using Tiller with RBAC, specific Service Accounts, and namespace restrictions.

### Chart Security #Linting #Scanning #Provenance
*   **Linting:** Using `helm lint` to catch potential issues.
*   **Static Analysis:** Tools to scan chart templates for security misconfigurations.
*   **Image Provenance:** Ensuring container images used in charts are trusted.
*   **Vulnerability Scanning:** Scanning container images defined in chart values.
*   **Chart Signing:** Using `helm package --sign` and `helm install --verify` for integrity and authenticity.

### Secrets Management #SensitiveData #Encryption
Strategies for handling sensitive data within Helm charts (e.g., using Kubernetes Secrets, external secret managers like Vault, Helm Secrets plugin).

### RBAC for Helm Users #Permissions #ClusterRoles
Configuring appropriate Role-Based Access Control for users and CI/CD systems interacting with Helm.

## CI/CD Integration #CICD #Automation #DevOps
Using Helm within automated build, test, and deployment pipelines.

### Pipeline Workflows #GitOps #Automation
Common patterns: Linting charts, packaging charts, pushing to repositories, deploying/upgrading releases.

### Tools Integration #Jenkins #GitLabCI #GitHubActions #ArgoCD #Flux
Integrating Helm commands into popular CI/CD platforms and GitOps tools.
*   Using Helm CLI within pipeline scripts.
*   Using dedicated Helm plugins/tasks for CI/CD tools.
*   Using GitOps operators (Argo CD, Flux) that natively understand Helm charts.

### Automating Deployments #BlueGreen #Canary
Using Helm as the deployment mechanism for advanced deployment strategies.

### Managing Environments #Staging #Production #Values
Using different value files (`-f`) or layered values for managing configurations across different environments.

## Helm SDK and Programmatic Usage #SDK #Go #API #Automation
Interacting with Helm using Go code.

### Helm Go SDK #Libraries #Packages
Utilizing Helm's internal packages for building custom applications or controllers that manage Helm operations.
Key packages: `helm.sh/helm/v3/pkg/action`, `helm.sh/helm/v3/pkg/chart`, `helm.sh/helm/v3/pkg/repo`, etc.

### Use Cases #Operators #Controllers #CustomTools
Building Kubernetes operators that manage application lifecycles using Helm charts, creating custom deployment tools.

### Authentication #KubernetesConfig #Programmatic
Handling Kubernetes authentication within Go applications using client-go.

## Advanced Techniques and Best Practices #Advanced #Tips #BestPractices
More sophisticated usage patterns and recommendations.

### Library Charts #Reusability #Templates #Helpers
Creating non-deployable "library" charts containing only reusable template helpers (`type: library` in `Chart.yaml`).

### Post Renderer #Modification #Kustomize #Advanced
Modifying rendered Kubernetes manifests *after* templating but *before* installation/upgrade. Integrating tools like Kustomize.

### Structuring Values Files #Organization #Scalability
Best practices for organizing complex `values.yaml` files (e.g., flat vs. nested structures, commenting).

### Chart Versioning Strategies #SemVer #AppVersion
Using semantic versioning (`version`) for chart changes and `appVersion` for the application version it deploys.

### Conditional Logic in Charts #Templates #Values
Advanced techniques for enabling/disabling components or resources based on values.

### Resource Policies #Orphan #Keep
Using `helm.sh/resource-policy: keep` annotation to prevent Helm from deleting specific resources during uninstall.

## Troubleshooting Helm #Debugging #Errors #Troubleshooting
Diagnosing and fixing common issues.

### Common Errors #Issues #Fixes
Installation failures, upgrade issues, template rendering errors, image pull errors, RBAC problems.

### Debugging Tools and Commands #Inspect #Logs
*   `helm template --debug`: Render templates locally for inspection.
*   `helm install/upgrade --dry-run --debug`: Simulate an install/upgrade and see rendered manifests.
*   `helm get manifest RELEASE_NAME`: View the manifests deployed for a release.
*   `helm get values RELEASE_NAME`: View the computed values for a release.
*   `helm get hooks RELEASE_NAME`: View the hooks for a release.
*   `kubectl logs`, `kubectl describe`: Standard Kubernetes debugging tools for resources created by Helm.

### Template Debugging #Syntax #Logic
Identifying and fixing errors in Go templates (syntax errors, logic errors, incorrect function usage).

### Connectivity and Permissions Issues #Network #RBAC
Troubleshooting problems related to connecting to the Kubernetes API or insufficient permissions.

## Helm Ecosystem and Community #Ecosystem #Community #Resources
Related tools, projects, and ways to get involved.

### Artifact Hub #Discovery #Charts #Search
Centralized hub for finding, installing, and publishing Kubernetes packages, including Helm charts.

### Related CNCF Projects #Flux #ArgoCD #Kubernetes
Helm's place within the Cloud Native Computing Foundation landscape and interactions with other projects like GitOps tools.

### Community Resources #Support #Contribution
Official documentation, Helm GitHub repository (issues, discussions), Slack channels, mailing lists, Stack Overflow.

### Contributing to Helm #Development #OpenSource
How to contribute code, documentation, or report issues to the Helm project.

### Helm vs. Alternatives #Comparison #Kustomize #Operators
Comparing Helm with other Kubernetes application management approaches like Kustomize, Carvel, Operators, or raw manifests.
