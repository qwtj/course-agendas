# NX Mono Application Framework #Monorepo #BuildSystem #JavaScript
NX is a smart, fast and extensible build system with first-class monorepo support and powerful integrations. This mind map explores its use as a framework for managing mono-application structures (or closely related applications within a single repo).

## Introduction and Core Concepts #Overview #Fundamentals #WhyNX
Understanding the philosophy and benefits of using NX for managing application development within a monorepo.
### What is NX? #Definition #BuildTool
Explanation of NX as an extensible development tool, workspace manager, and build system.
### Why Use a Monorepo? #MonorepoBenefits #CodeSharing
Advantages of the monorepo approach: code sharing, atomic commits, standardized tooling, easier refactoring.
### NX Philosophy #CorePrinciples #DesignGoals
Emphasis on developer experience, performance (caching, affected commands), consistency, and extensibility.
### Key Benefits of NX #Advantages #Features
Summarizing the main selling points: speed, caching, dependency graph, plugins, consistency, developer ergonomics.
### NX vs Other Monorepo Tools #Comparison #Lerna #Turborepo
Brief comparison with tools like Lerna, Turborepo, Yarn Workspaces, pnpm Workspaces.

## Workspace Setup and Structure #GettingStarted #Setup #Configuration
Creating and understanding the layout of an NX workspace.
### Creating an NX Workspace #Initialization #CLI
Using `npx create-nx-workspace` or similar commands.
#### Workspace Types #Presets #React #Angular #Node #Empty
Choosing presets (e.g., React, Angular, Node, Next.js, integrated vs. package-based).
### Directory Structure #Layout #Organization
Understanding the standard folders and their purpose.
#### `apps/` #Applications #EntryPoints
Directory for runnable applications (frontends, backends).
#### `libs/` #Libraries #SharedCode
Directory for reusable code libraries (UI components, utilities, data access).
#### `tools/` #Scripts #Utilities
Custom scripts, generators, executors.
#### Configuration Files #Settings #WorkspaceConfig
Location of key configuration files (`nx.json`, `package.json`, `tsconfig.base.json`).
### Integrated vs. Package-Based Repos #RepoStyle #Strategy
Understanding the two main approaches to structuring an NX monorepo.

## Project Management (Apps & Libs) #Applications #Libraries #CodeOrganization
Managing individual projects (applications and libraries) within the workspace.
### Generating Projects #CodeGeneration #Scaffolding #CLI
Using NX generators (`nx g ...`) to create new applications and libraries.
#### Application Generators (`@nx/react:app`, `@nx/node:app`, etc.) #AppGen #Frameworks
Specific generators for different types of applications.
#### Library Generators (`@nx/js:lib`, `@nx/react:lib`, etc.) #LibGen #ReusableCode
Generators for creating shareable libraries.
##### Library Types #Feature #UI #DataAcess #Utility
Categorizing libraries based on their purpose for better organization.
### Project Configuration (`project.json`) #ProjectSettings #Targets
Understanding the structure and purpose of `project.json` for each project.
#### Targets (build, serve, test, lint) #Tasks #Commands
Defining tasks (targets) that can be run on a project.
#### Executors #TaskRunners #Plugins
Specifying the underlying tool/script used to run a target (e.g., Webpack, Jest, ESLint).
#### Configurations #BuildConfigs #Environments
Defining variations for targets (e.g., `production`, `development`).
#### Implicit Dependencies #Dependencies #BuildOrder
Manually defining dependencies between projects not captured by code imports.
#### Tags #ProjectTagging #LintingRules #Scoping
Using tags for categorization, enforcing boundaries, and conditional task execution.

## Core NX Features and Commands #CLITools #Productivity #Workflow
Exploring the essential commands and features provided by the NX CLI.
### Running Tasks #Execution #CLICommands
Using `nx run <project>:<target>` or `nx <target> <project>`.
#### Running Single Tasks #BasicExecution
Executing a specific target for a specific project.
#### Running Tasks for Multiple Projects #ParallelExecution #Filtering
Using patterns or tags to run tasks across several projects.
#### `nx run-many` #BatchExecution
Running a specific target for multiple projects.
#### `nx affected` #Optimization #CI
Running tasks only for projects affected by code changes.
##### Affected Targets (`affected:build`, `affected:test`, `affected:lint`) #AffectedCommands
Specific commands for affected projects.
##### Determining Affected Projects #ChangeDetection #Git
How NX detects changes using Git history (`base` and `head` commits).
### Dependency Graph #Visualization #Analysis #Architecture
Understanding project relationships.
#### `nx graph` / `nx dep-graph` #GraphCommand #WebUI
Command to visualize the project dependency graph in an interactive UI.
#### Analyzing Dependencies #ProjectRelations #CodeStructure
Using the graph to understand coupling and architecture.
### Code Generation (`nx generate` / `nx g`) #Scaffolding #Automation
Leveraging generators to automate boilerplate code creation.
#### Workspace Generators #CustomGenerators #Automation
Creating custom generators for project-specific scaffolding.
### Caching #Performance #BuildSpeed #Optimization
NX's computation caching mechanism.
#### Local Computation Caching #LocalStorage #Speedup
How NX caches task results locally.
#### Cache Invalidation #Hashing #Determinism
How NX determines if a cached result is valid.
#### `nx reset` #CacheManagement
Clearing the NX cache.
#### Distributed Computation Caching (NX Cloud / Nx Private Cloud) #RemoteCache #TeamCollaboration
Sharing cache artifacts across CI and developer machines.

## Configuration Files #Settings #Customization #WorkspaceConfig
Deep dive into the main NX configuration files.
### `nx.json` #WorkspaceConfiguration #GlobalSettings
The primary workspace configuration file.
#### `targetDefaults` #DefaultOptions #TaskConfig
Setting default options for specific targets across all projects.
#### `namedInputs` / `inputs` #CachingConfig #HashingInputs
Defining file sets that influence task caching.
#### `plugins` / `pluginsConfig` #PluginManagement #Extensibility
Configuring installed NX plugins.
#### `affected.defaultBase` #GitBase #ChangeDetectionConfig
Setting the default base branch/commit for affected commands.
#### Task Pipeline Configuration #TaskDependencies #ExecutionOrder
Defining the order and dependencies between tasks (e.g., build depends on test).
### `project.json` #ProjectConfiguration #LocalSettings
Per-project configuration file (explained also under Project Management).
#### Overriding `nx.json` Defaults #ProjectSpecificConfig
How `project.json` settings can override global defaults from `nx.json`.
### `.nxignore` #IgnoreFiles #CacheExclusions
Specifying files and patterns for NX to ignore during hashing and processing.
### `tsconfig.base.json` #TypeScript #PathMappings
Base TypeScript configuration, often defining path aliases for libraries (`@myorg/mylib`).

## Plugin Ecosystem #Extensibility #Integrations #Frameworks
Extending NX capabilities with official and community plugins.
### Official Plugins (@nx/*) #CorePlugins #SupportedFrameworks
Plugins maintained by the NX team (e.g., React, Angular, Node, Next.js, Jest, Cypress, ESLint, Storybook).
#### Installation and Usage #PluginSetup
How to add and configure plugins.
#### Generators Provided by Plugins #FrameworkSpecificGen
Scaffolding features specific to the plugin's technology.
#### Executors Provided by Plugins #FrameworkSpecificTasks
Running tasks using tools integrated by the plugin (e.g., `nx build` using Webpack via `@nx/webpack`).
### Community Plugins #ThirdParty #Ecosystem
Plugins developed by the community for other tools and frameworks.
### Creating Custom Plugins #Advanced #Automation
Developing your own generators and executors.
#### Workspace Generators #LocalGenerators #ProjectAutomation
Creating generators specific to your workspace needs.
#### Workspace Executors #LocalExecutors #CustomTasks
Creating custom task runners for your workspace.
#### Publishing Plugins #Sharing #NPM
Making your custom plugins available for others.

## Development Workflow #DeveloperExperience #DailyTasks #DX
How NX streamlines common development activities.
### Serving Applications #LocalDevelopment #HotReload
Using `nx serve <app-name>` for local development servers.
### Building Applications and Libraries #Compilation #Bundling
Using `nx build <project-name>` for production or intermediate builds.
### Testing Projects #UnitTesting #IntegrationTesting #E2ETesting
Using `nx test <project-name>` and `nx e2e <app-name>-e2e`.
#### Jest Integration #UnitTestRunner #Configuration
Running unit tests with Jest via `@nx/jest`.
#### Cypress Integration #E2ETestRunner #Configuration
Running end-to-end tests with Cypress via `@nx/cypress`.
### Linting Code #CodeQuality #StaticAnalysis
Using `nx lint <project-name>` with ESLint (`@nx/eslint` or `@nx/linter`).
### Managing Dependencies #NodeModules #PackageManagement
How NX works with npm, Yarn, or pnpm for dependency management.

## Testing Strategies in NX #QualityAssurance #TestingTypes
Approaches to testing within an NX monorepo.
### Unit Testing #Isolation #Jest
Testing individual functions or components in libraries and apps.
### Integration Testing #Interaction #Modules
Testing interactions between different libraries or modules within an application.
### End-to-End (E2E) Testing #UserFlows #Cypress
Testing complete application flows from the user's perspective.
#### E2E Project Structure #TestApps #Configuration
How E2E tests are typically set up in a separate `apps/<app-name>-e2e` project.
### Using Tags for Test Scoping #SelectiveTesting #CIStrategy
Running specific types of tests based on project tags (e.g., `scope:shared`, `type:ui`).
### Affected Test Commands #EfficientTesting #CICommands
Running only tests impacted by code changes (`nx affected:test`, `nx affected:e2e`).

## Build and Deployment (CI/CD) #ContinuousIntegration #ContinuousDeployment #Automation
Integrating NX into CI/CD pipelines for efficient builds and deployments.
### Leveraging `nx affected` Commands in CI #Efficiency #PipelineSpeed
Building, testing, and linting only what has changed.
### Distributed Task Execution (DTE) #ParallelCI #Scalability
Running tasks across multiple CI agents (often requires Nx Cloud).
### Distributed Computation Caching #CICache #SharedCache
Using Nx Cloud or a custom remote cache to share build artifacts across CI runs and developers.
### Building Deployable Artifacts #ProductionBuilds #Packaging
Generating optimized outputs for deployment.
### Deployment Strategies #Serverless #Containers #StaticHosting
Examples of deploying NX applications (e.g., deploying a Next.js app, a Node backend, static sites).
### Handling Secrets and Environment Variables #CISecrets #ConfigurationManagement
Best practices for managing sensitive information in CI/CD pipelines.

## Advanced Features #PowerFeatures #Optimization #Scalability
Exploring more complex and powerful NX capabilities.
### Task Pipelines #TaskDependencies #ExecutionGraph
Defining dependencies between different targets within and across projects (e.g., `build` depends on `test`).
### Incremental Builds and Tests #BuildOptimization #TestOptimization
Leveraging caching and affected commands for faster feedback loops.
### Module Federation #MicroFrontends #Webpack
Using NX plugins (like `@nx/react:module-federation`) to implement Module Federation for micro-frontend architectures.
#### Setting up Host and Remote Applications #MFConfig #Architecture
Configuring applications to expose and consume federated modules.
### Custom Executors and Generators #ExtendingNX #AutomationTools
Deep dive into building custom automation tailored to specific project needs.
### Nx Release #Versioning #Publishing #Changelog
Commands and workflows for versioning projects, generating changelogs, and publishing packages within the monorepo.

## Code Sharing and Boundaries #Architecture #Modularity #Encapsulation
Strategies for managing shared code and enforcing architectural rules.
### Library Types and Scopes #CodeOrganization #DomainDrivenDesign
Using naming conventions and directory structures to categorize libraries (feature, UI, data-access, utility, shared).
### Enforcing Module Boundaries #LintRules #DependencyRules #ArchitectureGuardrails
Using ESLint rules (`@nx/enforce-module-boundaries`) to prevent unwanted dependencies between projects.
#### Tag-Based Restrictions #AccessControl #ScopingRules
Configuring rules based on project tags (e.g., `type:feature` cannot depend directly on another `type:feature`).
### Path Aliases (`tsconfig.base.json`) #Imports #DeveloperExperience
Using TypeScript path aliases for cleaner import statements (`import { MyButton } from '@myorg/ui'`).
### Publishing Libraries #SharingExternally #NPMRelease
Strategies for publishing libraries from the monorepo to npm or a private registry.

## Migration and Updates #Maintenance #Versioning #Upgrades
Keeping the NX workspace and its dependencies up to date.
### Keeping NX Updated (`nx migrate`) #VersionManagement #AutomatedUpdates
Using the `nx migrate` command to update NX itself, plugins, and other dependencies.
#### Migration Generators #CodeMods #AutomatedRefactoring
Scripts run by `nx migrate` to automatically update configuration files and code for breaking changes.
### Updating Dependencies #PackageJson #NPM #Yarn #PNPM
Managing updates for application/library dependencies.
### Migrating Existing Projects to NX #Adoption #Refactoring
Strategies for bringing non-NX projects into an NX workspace.

## Best Practices and Patterns #Recommendations #Patterns #AntiPatterns
Effective ways to use and structure NX workspaces.
### Library Granularity #Modularity #ScopeDefinition
Finding the right balance for library size and scope.
### Strategic Use of Tags #Organization #RuleEnforcement
Leveraging tags for organization, linting rules, and conditional execution.
### Consistent Tooling Configuration #Standardization #ESLint #Prettier
Ensuring consistent code style and quality checks across all projects.
### Optimizing CI/CD Pipelines #Efficiency #Speed
Best practices for using affected commands, caching, and parallelization.
### Naming Conventions #Consistency #Readability
Establishing clear naming conventions for projects, libraries, and files.
### Documentation within the Monorepo #ReadmeFiles #ArchitectureDocs
Keeping documentation alongside the code it describes.

## Troubleshooting and Community #Debugging #Help #Support
Finding help and resolving issues when working with NX.
### Common Issues #Errors #ConfigurationProblems
Frequently encountered problems and their solutions.
### Debugging NX Tasks #VerboseLogging #NodeInspect
Techniques for debugging generators, executors, and builds.
### Using `--verbose` Flag #Logging #Diagnostics
Getting more detailed output from NX commands.
### Official Documentation #UserGuides #APIDocs
Referencing the official NX website (nx.dev).
### Community Support #GitHub #Discord #StackOverflow
Where to ask questions and find help from the community.
### Reporting Issues #BugReports #FeatureRequests
Contributing back by reporting bugs or suggesting improvements on GitHub.
