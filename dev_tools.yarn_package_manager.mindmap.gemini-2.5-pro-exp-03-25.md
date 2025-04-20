# Yarn Package Manager #Main #PackageManager #JavaScript #NodeJS
Yarn is a modern package manager for JavaScript projects, initially developed by Facebook (now Meta) in 2016 in collaboration with Google, Exponent, and Tilde. It serves as an alternative to the default Node.js package manager, npm, aiming to improve speed, reliability, security, and consistency in dependency management, especially for large projects. Yarn manages project dependencies, allowing developers to install, update, configure, and remove packages easily.

## Introduction and Overview #Level1 #Basics #Goals
Provides a foundational understanding of what Yarn is, why it was created, and its primary objectives.
### What is Yarn? #Level2 #Definition
Yarn (Yet Another Resource Negotiator) is a software tool designed to manage JavaScript code dependencies found in the npm registry and other sources. It automates the process of installing, updating, configuring, and removing packages.
### Purpose and Motivation #Level2 #WhyYarn
Yarn was created to address shortcomings perceived in npm at the time (around 2016), such as issues with installation speed, deterministic installs (ensuring the same dependencies are installed everywhere), and security vulnerabilities.
### Key Benefits #Level2 #Advantages
Outlines the main advantages of using Yarn.
#### Speed #Level3 #Performance
Yarn achieves faster package installations compared to older npm versions by performing operations in parallel and utilizing a sophisticated caching mechanism. It can install packages from a local cache, even offline.
#### Reliability #Level3 #Consistency #Determinism
Yarn uses a lock file (`yarn.lock`) by default to ensure that a project uses the exact same dependency versions across all development environments and deployment stages, leading to more consistent and predictable builds.
#### Security #Level3 #Integrity
Yarn uses checksums to verify the integrity of every installed package before its code is executed, adding a layer of security. Modern Yarn (Berry) includes additional security features.
#### Offline Mode #Level3 #Caching
Yarn caches downloaded packages, allowing developers to install dependencies even without an active internet connection, provided the packages have been downloaded previously.
#### Workspaces #Level3 #Monorepo
Native support for monorepos (projects with multiple packages in one repository) through workspaces, simplifying dependency management and linking between local packages.
#### Plug'n'Play (PnP) #Level3 #Innovation #PnP
An innovative installation strategy (default in Yarn Berry) that aims to replace the `node_modules` folder, improving installation speed, reliability, and dependency resolution.

## Core Concepts #Level1 #Fundamentals
Explains the essential components and ideas behind how Yarn works.
### `package.json` #Level2 #ManifestFile
The standard manifest file for Node.js projects, used by Yarn (and npm/pnpm) to define project metadata, dependencies, scripts, and other configurations. Yarn reads this file to determine which packages to install.
### `yarn.lock` #Level2 #LockFile #Determinism
A file automatically generated and updated by Yarn that precisely records the versions of all dependencies (including transitive dependencies) installed in a project. This ensures deterministic installations across different environments. Committing this file to version control is crucial.
### Dependency Types #Level2 #Dependencies
Categorizes the different types of dependencies a project can have.
#### `dependencies` #Level3 #ProductionDeps
Packages required for the application to run in production. Installed via `yarn add <package>`.
#### `devDependencies` #Level3 #DevelopmentDeps
Packages needed only during development and testing (e.g., linters, test runners, bundlers). Installed via `yarn add <package> -D`.
#### `peerDependencies` #Level3 #PeerDeps
Packages that a package expects its host project or consumer to provide.
#### `optionalDependencies` #Level3 #OptionalDeps
Packages that are not strictly required; installation failures are ignored. Installed via `yarn add <package> -O`.
### Caching #Level2 #OfflineCache #Performance
Yarn maintains a cache of downloaded packages on the user's machine. This speeds up subsequent installs and enables offline installations. Modern Yarn uses a zip-based cache located typically in `.yarn/cache`.
#### Global Cache #Level3 #SharedCache
Yarn Berry allows configuring a global cache shared across multiple projects to save disk space.
#### Offline Mirror #Level3 #OfflineMode
A feature allowing the cache to be checked into the repository, enabling "Zero-Installs" where `yarn install` might not be needed after cloning.

## Installation and Setup #Level1 #GettingStarted
Covers how to install Yarn and configure it for projects.
### Installation Methods #Level2 #Install
Different ways to get Yarn onto your system.
#### Using Corepack (Recommended) #Level3 #Corepack #NodeJS
Corepack is a tool bundled with recent Node.js versions designed to manage package manager versions (Yarn, pnpm). It ensures the correct Yarn version specified in `package.json` (`packageManager` field) is used. Enable via `corepack enable`.
#### Using npm #Level3 #NpmInstall
Install Yarn globally using npm: `npm install -g yarn`. Note: This typically installs Yarn Classic (v1). Managing Yarn Berry versions is best done via Corepack.
#### Standalone Binary #Level3 #ManualInstall
Downloading specific Yarn versions directly from the Yarn releases page or repository.
### Version Management #Level2 #Versions #Corepack
Managing different Yarn versions, especially switching between Yarn Classic (v1) and Yarn Berry (v2+).
#### `yarn set version` #Level3 #SwitchVersion
Command in Yarn Berry to switch the Yarn version used for a specific project (e.g., `yarn set version stable`, `yarn set version berry`, `yarn set version classic`). Updates the `.yarnrc.yml` and downloads the specified version into `.yarn/releases`.
#### `packageManager` field in `package.json` #Level3 #ProjectVersion
Specifies the exact package manager (Yarn or pnpm) and version a project should use, enforced by Corepack. Example: `"packageManager": "yarn@4.8.1"`.

## Basic Usage (CLI Commands) #Level1 #Commands #Workflow
Details the common commands used in everyday development workflows with Yarn.
### `yarn init` #Level2 #Initialization
Initializes a new project by creating a `package.json` file, prompting the user for basic project information. Add `-y` flag for default settings. Yarn Berry uses `yarn init -2` to initialize with modern Yarn features.
### `yarn install` (or `yarn`) #Level2 #InstallDeps
Installs all dependencies listed in `package.json`, using `yarn.lock` to ensure consistent versions. If `yarn.lock` is absent or outdated, it will be created/updated based on `package.json`.
#### `yarn install --frozen-lockfile` #Level3 #CI #ImmutableInstall
Installs dependencies strictly based on `yarn.lock`. Fails if `yarn.lock` needs updating, ensuring reproducible builds, often used in CI environments.
#### `yarn install --check-files` #Level3 #Verification
Verifies that packages installed on disk match the lockfile.
### `yarn add <package...>` #Level2 #AddDependency
Adds one or more packages as dependencies (`dependencies`) to the project, updating `package.json` and `yarn.lock`.
#### Adding Specific Versions #Level3 #Versioning
Specify versions using syntax like `yarn add package@1.2.3`, `yarn add package@^1.2.0`, `yarn add package@latest`.
#### Adding Dev Dependencies (`-D` or `--dev`) #Level3 #DevDeps
Adds packages to `devDependencies`. Example: `yarn add jest -D`.
#### Adding Peer Dependencies (`-P` or `--peer`) #Level3 #PeerDeps
Adds packages to `peerDependencies`.
#### Adding Optional Dependencies (`-O` or `--optional`) #Level3 #OptionalDeps
Adds packages to `optionalDependencies`.
### `yarn remove <package...>` #Level2 #RemoveDependency
Removes one or more packages from the project, updating `package.json` and `yarn.lock`.
### `yarn upgrade [package...]` #Level2 #UpdateDependency
Upgrades specified packages (or all dependencies if none specified) to their latest allowed versions according to the version ranges in `package.json`, updating `yarn.lock`.
#### `yarn upgrade --latest` #Level3 #UpgradeLatest
Upgrades packages to their absolute latest versions, potentially updating ranges in `package.json`.
#### `yarn upgrade-interactive` #Level3 #InteractiveUpgrade
Provides an interactive UI to select which packages to upgrade.
### `yarn run <script> [args...]` #Level2 #RunScript
Executes a script defined in the `scripts` section of `package.json`. The `run` keyword is often optional (e.g., `yarn test` instead of `yarn run test`).
### `yarn info <package>` #Level2 #PackageInfo
Displays information about a package available on the registry.
### `yarn list` #Level2 #ListDependencies
Lists installed dependencies for the project.
### `yarn why <query>` #Level2 #DependencyTree
Shows why a specific package is installed (which other packages depend on it).
### `yarn cache clean` #Level2 #CacheManagement
Cleans the Yarn cache (use with caution).

## Yarn Workspaces #Level1 #Monorepos #Workspaces
Explores Yarn's native feature for managing multiple packages within a single repository (monorepo).
### What are Workspaces? #Level2 #Concept
A feature allowing a single root `yarn install` to manage dependencies for multiple sub-packages (workspaces) within a project. Facilitates code sharing and coordinated development across packages.
### Setting up Workspaces #Level2 #Configuration
Configured in the root `package.json` file using the `workspaces` field, which accepts an array of glob patterns matching the workspace directories. The root `package.json` must typically be marked as `private: true`.

```json
{
  "name": "my-monorepo",
  "private": true,
  "workspaces": [
    "packages/*",
    "apps/*"
  ]
}
```

### Benefits #Level2 #Advantages
#### Simplified Dependency Management #Level3 #SingleInstall
One `yarn install` at the root installs dependencies for all workspaces.
#### Dependency Hoisting #Level3 #Optimization
Yarn attempts to hoist common dependencies to the root `node_modules` (in non-PnP mode) to save disk space and ensure consistency, though this can sometimes cause issues.
#### Cross-Workspace Linking #Level3 #Linking
Workspaces can depend on each other. Yarn automatically symlinks local workspaces, ensuring they always use the latest local code during development.
#### Single Lockfile #Level3 #Consistency
A single `yarn.lock` file at the root manages dependencies for the entire monorepo, ensuring consistency across all packages.
### Workspace Commands #Level2 #Commands
Commands to interact with specific workspaces.
#### `yarn workspace <workspace_name> <command>` #Level3 #RunInWorkspace
Executes a Yarn command (`add`, `remove`, `run script`, etc.) within the context of a specific workspace. Example: `yarn workspace my-package add lodash`.
#### `yarn workspaces foreach <command>` #Level3 #RunAcrossWorkspaces
Runs a shell command in each workspace. Useful for running tests, builds, or linting across the entire monorepo. Supports options for parallel execution, topological sort, etc. Example: `yarn workspaces foreach run build`.
### Constraints (Yarn Berry) #Level2 #Policies #Governance
A powerful feature in Yarn Berry allowing project maintainers to define rules and policies across workspaces (e.g., enforcing specific dependency versions, banning certain packages, requiring license fields). Managed via `yarn constraints`.

## Plug'n'Play (PnP) #Level1 #PnP #Innovation #Berry
Details Yarn's modern installation strategy, default in Yarn Berry (v2+).
### What is PnP? #Level2 #Concept #NoNodeModules
An alternative installation strategy that eliminates the need for the `node_modules` directory. Instead, Yarn generates a `.pnp.cjs` (or `.pnp.loader.mjs`) file. This file acts as a Node.js loader, containing mappings of package names and versions to their locations on disk (usually within the compressed `.yarn/cache` directory).
### How it Works #Level2 #Mechanism
Yarn intercepts Node.js's `require()` and `import` calls using the generated PnP loader file. This loader resolves dependencies directly based on the information Yarn recorded during installation, bypassing the slow and complex `node_modules` resolution algorithm. Packages are typically stored as zip archives in the cache.
### Benefits #Level2 #Advantages
#### Faster Installs #Level3 #Performance
Significantly reduces installation time as creating the vast `node_modules` directory structure (often 70%+ of install time) is skipped.
#### Faster Boot Times #Level3 #RuntimePerformance
Applications start faster because Node.js doesn't need to perform numerous file system checks (`stat`, `readdir`) to locate dependencies. The PnP file provides instant lookups.
#### Improved Reliability #Level3 #Correctness #NoPhantomDeps
Eliminates "phantom dependencies" (accessing packages not explicitly listed in `package.json`) because the PnP mechanism only resolves declared dependencies. Makes dependency resolution stricter and more predictable.
#### Disk Space Efficiency #Level3 #Storage
Storing packages as zip archives in a shared cache can be more disk-space efficient than duplicating files in `node_modules` across projects (especially with a global cache).
#### Zero-Installs #Level3 #CI #Offline
When the cache and `.pnp.cjs` file are committed to the repository (Offline Mirror), running `yarn install` after cloning might become instantaneous or unnecessary, speeding up CI and onboarding.
### Compatibility and Challenges #Level2 #Adoption #Tooling
#### Editor Integration (SDKs) #Level3 #IDESupport
Requires editor setup (e.g., VS Code via `yarn dlx @yarnpkg/sdks vscode`) to provide features like auto-completion and go-to-definition, as tools can't rely on `node_modules`.
#### Tooling Compatibility #Level3 #Ecosystem
Some tools might have issues with PnP if they make incorrect assumptions about the presence or structure of `node_modules`. Yarn provides APIs and utilities (`pnpapi`) to help tools integrate, and compatibility has greatly improved.
#### Unplugged Packages #Level3 #NativeModules
Packages with postinstall scripts or native bindings might need to be "unplugged" (extracted from the cache zip files into `.yarn/unplugged`) to function correctly.
### PnP Modes #Level2 #Configuration
#### Strict PnP (Default) #Level3 #Strict Mode
Enforces strict dependency declarations. Accessing undeclared packages will fail.
#### Loose PnP #Level3 #Loose Mode
A less strict mode available via configuration (`pnpMode: loose` in `.yarnrc.yml`), which may improve compatibility with some legacy tools but reduces some guarantees.

## Configuration (`.yarnrc.yml`) #Level1 #Settings #Customization
Explains how to configure Yarn's behavior using its configuration file.
### Configuration File #Level2 #FileFormat
Yarn Berry (v2+) uses a YAML file named `.yarnrc.yml` located at the project root for configuration. Yarn Classic (v1) used a `.yarnrc` file (non-YAML). Configuration can cascade from user home directory files, but project-level configuration is standard.
### Configuration Scope #Level2 #Hierarchy
Settings in a project's `.yarnrc.yml` override global settings. Environment variables (e.g., `YARN_CACHE_FOLDER`) can also override file settings.
### Common Configuration Settings #Level2 #Options
Key settings available in `.yarnrc.yml`.
#### `nodeLinker` #Level3 #InstallStrategy
Specifies the installation strategy. Common values: `pnp` (default), `node-modules` (traditional `node_modules` layout), `pnpm` (uses pnpm-style symlinking).
#### `yarnPath` #Level3 #YarnVersion #SelfManagement
Specifies the path to the Yarn binary to use for the project, enabling per-project Yarn versions. Managed by `yarn set version`.
#### `cacheFolder` #Level3 #CacheLocation
Defines the location for the package cache (default: `./.yarn/cache`).
#### `enableGlobalCache` #Level3 #SharedCacheConfig
Boolean setting (default: `false`) to enable sharing the cache across projects globally. The global cache location can be configured.
#### `npmRegistryServer` #Level3 #RegistryURL
Specifies the URL of the npm registry to use for fetching packages.
#### `npmAuthToken` / `npmAlwaysAuth` #Level3 #Authentication #PrivateRegistry
Credentials for authenticating with private registries. Often set via environment variables for security.
#### `plugins` #Level3 #Extensibility
Lists any Yarn plugins used by the project. Plugins extend Yarn's functionality.
#### `unsafeHttpWhitelist` #Level3 #Security #HTTP
Allows Yarn to connect to specified non-HTTPS registries.
#### `packageExtensions` #Level3 #DependencyPatching
Allows overriding dependencies or adding missing peer dependencies for specific packages.
#### `supportedArchitectures` #Level3 #Platform #OS #CPU
Defines supported OS/CPU combinations, used for selecting optional dependencies.

## Advanced Features #Level1 #PowerFeatures
Covers more sophisticated capabilities of Yarn.
### Protocols #Level2 #DependencySources
Yarn supports installing dependencies from various sources beyond the npm registry.
#### `git` Protocol #Level3 #GitDeps
Install directly from Git repositories (URLs, branches, tags, commit SHAs). Example: `yarn add user/repo#commit-sha`.
#### `file` Protocol #Level3 #LocalDeps
Install from local file paths. Example: `yarn add file:../relative/path/to/package`.
#### `link` Protocol #Level3 #LocalLinking
Similar to `file:`, but uses symlinks. Often used for local development within monorepos if not using workspaces.
#### `portal` Protocol (Berry) #Level3 #WorkspaceLinkingInternal
Used internally by workspaces for cross-linking. Can sometimes be used explicitly.
#### `patch` Protocol (Berry) #Level3 #Patching
Applies a patch file (generated via `yarn patch`) to a package after fetching, allowing modifications without forking. Example: `yarn add package@npm:1.2.3#./my-patch.patch`.
### Plugins (Yarn Berry) #Level2 #Extensibility #Plugins
Yarn Berry has a plugin architecture allowing developers to extend or modify its functionality. Core features like workspaces are often implemented as built-in plugins. Custom plugins can be developed and shared.
### Constraints (Yarn Berry) #Level2 #Policies #MonorepoGovernance
As mentioned under Workspaces, constraints allow defining and enforcing dependency rules across a monorepo using Prolog-like syntax. Run via `yarn constraints` or `yarn constraints --fix`.
### Release Workflow (Yarn Berry) #Level2 #Publishing #Versioning
Tools built into Yarn Berry to assist with versioning and publishing packages, especially within workspaces. Commands like `yarn version check` and `yarn version apply`.
### Offline Mirror / Zero-Installs #Level2 #Offline #CI #Performance
The practice of committing the Yarn cache (`.yarn/cache`) and PnP data (`.pnp.cjs`, `.yarn/unplugged`) directly into the Git repository. This allows cloning the repo and potentially running/building the project without needing to run `yarn install`, ensuring extreme reproducibility and fast CI setup.

## Comparison with Other Package Managers #Level1 #Comparison #Alternatives
Highlights the differences and similarities between Yarn and its main alternatives, npm and pnpm.
### Yarn vs npm #Level2 #YarnVsNpm
#### History #Level3 #Origins
npm is the original package manager bundled with Node.js (since 2010). Yarn was created by Facebook in 2016 to address npm's early performance and consistency issues. npm has since adopted many features inspired by Yarn (e.g., lockfiles, workspaces).
#### Performance #Level3 #Speed
Historically, Yarn (especially Yarn Classic) was significantly faster than early npm due to parallel installs and better caching. Modern npm has improved, but Yarn Berry (especially with PnP) often maintains a speed advantage, particularly in install and startup times.
#### Determinism #Level3 #Consistency
Both use lockfiles (`yarn.lock` vs `package-lock.json`) to ensure deterministic installs.
#### Disk Usage #Level3 #Storage
Yarn PnP with zipped cache can be more disk-efficient than traditional `node_modules`, especially with a global cache. npm's `node_modules` can consume significant space due to duplication.
#### Features #Level3 #Capabilities
Yarn Berry offers unique features like PnP, stricter dependency resolution, built-in patching (`patch:`), advanced workspace constraints, and a plugin API. npm has broad compatibility and is bundled with Node.js.
#### CLI / User Experience #Level3 #DX
Command syntax differs (`yarn add` vs `npm install`, `yarn` vs `npm install`). Output formatting and error reporting preferences vary. Yarn often aims for more concise output.
### Yarn vs pnpm #Level2 #YarnVsPnpm
#### Installation Strategy #Level3 #NodeModulesApproach
Yarn PnP (default in Berry) avoids `node_modules` using a loader file. pnpm uses a symlinked `node_modules` structure where packages are stored centrally in a content-addressable store (`~/.pnpm-store`) and linked into projects, avoiding duplication while maintaining `node_modules` compatibility. Yarn Berry can also be configured to use a pnpm-like strategy (`nodeLinker: pnpm`).
#### Disk Usage #Level3 #Storage
Both pnpm and Yarn PnP are highly disk-space efficient compared to traditional `node_modules` structures. pnpm's content-addressable store with hardlinks/reflinks is very effective.
#### Performance #Level3 #Speed
Both pnpm and Yarn PnP generally offer excellent installation speed. Benchmarks vary depending on the scenario.
#### Compatibility #Level3 #Ecosystem
pnpm's symlinked `node_modules` generally offers better out-of-the-box compatibility with existing tools compared to Yarn PnP, which might require specific integration or configuration for some tools.
#### Features #Level3 #Capabilities
Both offer strong monorepo support (workspaces). Yarn Berry has features like PnP, Constraints, Patch protocol, and Plugins. pnpm has excellent performance, strictness by default, and good compatibility.

## History and Evolution #Level1 #History #Versioning
Traces the development trajectory of Yarn.
### Yarn Classic (v1) #Level2 #V1 #Legacy
The initial version released in 2016. Introduced parallel installs, `yarn.lock` for determinism, offline caching, and later, workspaces. It significantly influenced npm's development. Now in maintenance mode (only critical fixes). Last version is 1.22.x.
### Yarn Berry (v2+) #Level2 #V2 #V3 #V4 #Modern
A major rewrite released in 2020 (v2), codenamed "Berry". Migrated codebase to TypeScript. Introduced Plug'n'Play (PnP) as the default, `.yarnrc.yml` configuration, a plugin architecture, improved workspaces, constraints, and many other modern features. Versions v3 and v4 have continued to build upon this foundation, refining features and improving performance/stability.
#### Key Motivations for Berry #Level3 #GoalsV2
Addressing fundamental issues with `node_modules` (performance, correctness, phantom dependencies), improving developer experience, enhancing extensibility via plugins, and providing more robust monorepo tooling.

## Community and Ecosystem #Level1 #Community #Resources
Information about the Yarn community, support channels, and related tools.
### Official Documentation #Level2 #Docs
The primary source for learning and reference (yarnpkg.com). Includes guides, API references, and configuration details.
### GitHub Repository #Level2 #SourceCode #Issues
The source code (github.com/yarnpkg/berry), issue tracker for bug reports and feature requests, and discussion forums.
### Community Support #Level2 #Help #Support
Channels like Discord servers or Stack Overflow where users can ask questions and get help from the community and maintainers.
### Contributing #Level2 #Development
Information on how to contribute to Yarn's development (code, documentation, issue triage).
### Related Tools #Level2 #EcosystemTools
Tools often used in conjunction with Yarn, such as Lerna (though less needed with native workspaces), Renovate/Dependabot (for automated dependency updates), etc.

## Troubleshooting and Best Practices #Level1 #Troubleshooting #Tips
Common issues encountered and recommended practices when using Yarn.
### Common Errors #Level2 #Errors
Typical problems users might face.
#### Lockfile Conflicts #Level3 #MergeConflicts
Resolving merge conflicts in `yarn.lock` when collaborating. Usually resolved by checking out one version and running `yarn install`.
#### PnP Compatibility Issues #Level3 #PnPProblems #ToolingIssues
Dealing with tools that don't work correctly with Plug'n'Play. May involve configuring the tool, using Yarn SDKs, or sometimes switching the `nodeLinker` back to `node-modules`.
#### Cache Issues #Level3 #CorruptCache
Problems possibly related to a corrupted cache. Can sometimes be resolved by clearing relevant parts of the cache (use `yarn cache clean --all` cautiously) or removing `.yarn/cache` and reinstalling.
#### Network Errors #Level3 #RegistryErrors
Issues connecting to the registry (timeouts, authentication failures). Check network connection, registry status, and authentication tokens (`.yarnrc.yml` or environment variables).
#### Phantom Dependencies Errors (PnP) #Level3 #MissingDeps
Errors where code tries to access a package not explicitly listed in `package.json`, which PnP prevents. Solution is to add the missing dependency via `yarn add`.
### Debugging #Level2 #Debugging
Techniques for diagnosing problems.
#### Verbose Output (`-v`) #Level3 #Logging
Running Yarn commands with increased verbosity flags (`-v`, `-vv`, `-vvv`) to get more detailed logs.
#### Checking `yarn.lock` #Level3 #LockfileInspection
Manually inspecting the lockfile to understand resolved versions.
#### Using `yarn why` #Level3 #DependencyAnalysis
Identifying which packages depend on a specific problematic package.
### Best Practices #Level2 #Recommendations
Recommended ways of working with Yarn.
#### Commit `yarn.lock` #Level3 #VersionControl
Always commit the `yarn.lock` file to your version control system (Git) to ensure deterministic installs for all team members and CI/CD pipelines.
#### Use Corepack #Level3 #VersionConsistency
Leverage Corepack (via `packageManager` field) to enforce a specific Yarn version for the project, avoiding inconsistencies caused by different global Yarn versions.
#### Keep Yarn Updated #Level3 #Upgrades
Regularly update to the latest stable Yarn version (`yarn set version stable`) to benefit from performance improvements, bug fixes, and new features.
#### Understand PnP (if using Berry) #Level3 #PnPBestPractice
Invest time in understanding how PnP works and how to configure editor/tooling integration if using Yarn Berry's default strategy.
#### Leverage Workspaces for Monorepos #Level3 #MonorepoBestPractice
Use Yarn's native workspaces for managing monorepos effectively.
#### Use `--frozen-lockfile` in CI #Level3 #CIBestPractice
Ensure reproducible builds in CI/CD environments by using `yarn install --frozen-lockfile`.
