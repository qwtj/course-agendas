# I. Introduction to Helm

## Understanding Helm's Purpose and Architecture

### Defining Helm and its role in Kubernetes deployment
*   Package manager for Kubernetes.
*   Simplifies deployment and management of applications.

### Key components of Helm: Charts, Values, and Templates
*   **Charts:** Packages containing Kubernetes resource definitions.
*   **Values:** Configuration data to customize deployments.
*   **Templates:** Kubernetes manifest files with placeholders.

## Installing and Configuring Helm

### Downloading and installing the Helm CLI
*   Instructions for various operating systems (Linux, macOS, Windows).
*   Verifying installation: `helm version`

### Initializing Helm in your Kubernetes cluster (Helm 2 vs. Helm 3)
*   **Helm 2:** `helm init` (Tiller deployment).
*   **Helm 3:** Tillerless architecture.
*   Adding repositories: `helm repo add stable https://charts.helm.sh/stable`

# II. Helm Charts: Creation and Structure

## Chart Structure and Basic Files

### Understanding the required files: `Chart.yaml`, `values.yaml`, `templates/` directory
*   **Chart.yaml:** Metadata about the chart (name, version, description).
    ```yaml
    apiVersion: v2
    name: my-app
    description: A Helm chart for my application
    version: 0.1.0
    ```
*   **values.yaml:** Default values for template variables.
    ```yaml
    replicaCount: 3
    image:
      repository: nginx
      tag: latest
    ```
*   **templates/:** Directory containing Kubernetes manifest templates.

### Creating a basic Helm chart using `helm create`
*   `helm create my-app`
*   Exploring the generated directory structure.

## Template Language: Go Templating

### Introduction to Go templating syntax
*   Using `{{ }}` for variables and functions.
*   Control structures: `{{ if }}`, `{{ else }}`, `{{ range }}`.

### Using `.Values` to access values defined in `values.yaml`
*   Example: `{{ .Values.replicaCount }}`
*   Understanding dot notation for nested values: `{{ .Values.image.repository }}`

### Using built-in Helm functions
*   `Release.Name`, `Release.Namespace`, `Release.Service`.
*   `Values`, `Chart`, `Capabilities`.

## Defining Kubernetes Resources with Templates

### Creating a Deployment template
*   `templates/deployment.yaml`
*   Example:
    ```yaml
    apiVersion: apps/v1
    kind: Deployment
    metadata:
      name: {{ .Release.Name }}-deployment
    spec:
      replicas: {{ .Values.replicaCount }}
      selector:
        matchLabels:
          app: {{ .Release.Name }}
      template:
        metadata:
          labels:
            app: {{ .Release.Name }}
        spec:
          containers:
            - name: nginx
              image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
    ```

### Creating a Service template
*   `templates/service.yaml`
*   Example:
    ```yaml
    apiVersion: v1
    kind: Service
    metadata:
      name: {{ .Release.Name }}-service
    spec:
      selector:
        app: {{ .Release.Name }}
      ports:
        - protocol: TCP
          port: 80
          targetPort: 80
    ```

# III. Deploying and Managing Helm Charts

## Installing Charts

### Using `helm install` command
*   `helm install my-release ./my-app`
*   Specifying a release name: `my-release`.
*   Deploying from a local chart directory.
*   Deploying from a remote chart repository: `helm install my-release stable/nginx-ingress`

### Overriding default values using the `--set` flag
*   `helm install my-release ./my-app --set replicaCount=5`
*   Setting multiple values: `--set image.tag=1.20`, `--set service.type=LoadBalancer`

### Using values files to override defaults
*   Creating a custom `values.yaml` file.
*   `helm install my-release ./my-app -f custom-values.yaml`

## Managing Releases

### Listing installed releases: `helm list`
*   Filtering releases by namespace: `helm list -n my-namespace`

### Upgrading releases: `helm upgrade`
*   `helm upgrade my-release ./my-app --set replicaCount=4`
*   Upgrading with a custom values file: `helm upgrade my-release ./my-app -f new-values.yaml`

### Rolling back to a previous release: `helm rollback`
*   `helm rollback my-release 1` (rollback to revision 1).

### Uninstalling releases: `helm uninstall`
*   `helm uninstall my-release`

## Chart Versioning

### Understanding Semantic Versioning (SemVer)
*   MAJOR.MINOR.PATCH

### Updating the chart version in `Chart.yaml`
*   Incrementing the version when making changes.

### Packaging a chart for distribution: `helm package`
*   `helm package my-app` creates `my-app-0.1.0.tgz`.

# IV. Advanced Helm Techniques

## Using Sprig Functions

### Introduction to Sprig template functions
*   String manipulation, math, date functions.

### Examples of common Sprig functions
*   `quote`, `lower`, `upper`, `now`, `add`.
*   Example: `{{ quote .Values.image.repository }}`

## Conditional Logic and Loops

### Using `if` statements to conditionally include resources
*   Example:
    ```yaml
    {{- if .Values.ingress.enabled }}
    apiVersion: networking.k8s.io/v1
    kind: Ingress
    metadata:
      name: {{ .Release.Name }}-ingress
    spec:
      rules:
        - host: {{ .Values.ingress.host }}
          http:
            paths:
              - path: /
                pathType: Prefix
                backend:
                  service:
                    name: {{ .Release.Name }}-service
                    port:
                      number: 80
    {{- end }}
    ```

### Using `range` loops to iterate over lists
*   Example:
    ```yaml
    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: {{ .Release.Name }}-config
    data:
      {{- range $key, $value := .Values.config }}
      {{ $key }}: {{ $value | quote }}
      {{- end }}
    ```

## Subcharts and Dependencies

### Defining dependencies in `Chart.yaml`
*   Using the `dependencies` section.
    ```yaml
    dependencies:
      - name: redis
        version: ">=6.0.0"
        repository: "https://charts.bitnami.com/bitnami"
    ```

### Managing dependencies using `helm dependency update`
*   Downloading and updating dependencies.

### Understanding the scope of values in subcharts
*   Overriding values in subcharts.

## Hooks

### Introduction to Helm hooks
*   Defining lifecycle hooks: `pre-install`, `post-install`, `pre-upgrade`, `post-upgrade`, `pre-delete`, `post-delete`.

### Creating hook definitions in templates with annotations
*   Example:
    ```yaml
    apiVersion: batch/v1
    kind: Job
    metadata:
      name: {{ .Release.Name }}-migration
      annotations:
        "helm.sh/hook": post-install,post-upgrade
        "helm.sh/hook-weight": "5"
        "helm.sh/hook-delete-policy": hook-succeeded
    spec:
      template:
        spec:
          containers:
            - name: migrate
              image: your-migration-image
              command: ["/app/migrate.sh"]
          restartPolicy: Never
      backoffLimit: 4
    ```

### Common use cases for hooks: database migrations, initialization tasks
*   Ensuring tasks are executed at specific stages of deployment.

# V. Testing and Linting Helm Charts

## Linting Charts

### Using `helm lint` to validate chart syntax
*   `helm lint ./my-app`
*   Identifying common errors and best practices.

## Testing Charts

### Introduction to Helm tests
*   Creating test pods to verify functionality.

### Defining test pods in `templates/tests/` directory
*   Example:
    ```yaml
    apiVersion: v1
    kind: Pod
    metadata:
      name: {{ .Release.Name }}-test
      labels:
        app: {{ .Release.Name }}
    spec:
      containers:
        - name: test
          image: appropriate/bats
          command: ["bats", "-t", "/test/test.sh"]
          volumeMounts:
            - name: test-volume
              mountPath: /test
      restartPolicy: Never
      volumes:
        - name: test-volume
          configMap:
            name: {{ .Release.Name }}-test-config
    ---
    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: {{ .Release.Name }}-test-config
    data:
      test.sh: |
        #!/usr/bin/env bats

        @test "service is available" {
          curl http://{{ .Release.Name }}-service:80
          [ $status -eq 0 ]
        }
    ```

### Running tests using `helm test`
*   `helm test my-release`
*   Analyzing test results and fixing issues.
