# Rollupjs #Bundler #JavaScript #ESModules
Rollup is a module bundler for JavaScript, compiling smaller pieces of code into a larger, more complex whole like a library or application. It primarily uses the standardized ES module format.

## Core Concepts #Fundamentals #Introduction
Understanding the basic principles and goals of Rollup.js.
Rollup focuses on bundling code, particularly ES modules, efficiently.

### What is Rollup? #Definition #Purpose
Rollup is a next-generation JavaScript module bundler designed to create smaller, faster bundles, especially well-suited for libraries. [4, 13, 20, 31] It processes and combines JavaScript modules into single or multiple output files. [13, 31]

### Why Use Rollup? #Motivation #Benefits
Reasons for choosing Rollup over other tools or approaches.
#### ES Module Native #ESM #ModernJS
Built around the ES6 module specification for efficient bundling and future-proof code. [13, 19]
#### Tree Shaking #Optimization #DeadCodeElimination
Rollup's standout feature: statically analyzes code and eliminates unused exports (dead code), resulting in smaller bundle sizes. [13, 14, 17, 19, 20, 21] This is more effective than simple minification. [13]
#### Smaller Bundles #Performance #Size
Often produces smaller, more optimized bundles compared to other bundlers like Webpack, especially for libraries, due to effective tree shaking and focus on ES modules. [2, 10, 12, 13, 17]
#### Library Authoring Focus #Libraries #Packages
Historically favored for building JavaScript libraries due to clean output and strong ES module support. [2, 5, 7, 9, 19, 20, 25]
#### Simplicity (Relative) #Configuration #EaseOfUse
Can have a simpler configuration setup compared to Webpack, especially for ES module projects. [2, 6, 25]

### How Rollup Works #Mechanism #Process
Brief overview of the bundling process.
Rollup analyzes the `input` file(s), follows `import` statements to build a dependency graph, performs tree shaking, applies plugins, and generates output(s) in the specified `format`(s). [4, 6, 13, 25]

## Getting Started #Installation #Setup
Initial steps to install and use Rollup.

### Installation #npm #yarn #CLI
#### Global Installation #SystemWide
`npm install --global rollup` allows running `rollup` from anywhere. [13]
#### Local Installation (Recommended) #ProjectDependency
`npm install --save-dev rollup` installs Rollup per project, ensuring consistent versions across teams. [3, 4] Recommended for team projects. [3]
#### Using with npx #Execution
Run Rollup without global or local installation: `npx rollup ...`

### Basic Usage (CLI) #CommandLine #Build
Running Rollup from the command line. [13]
#### Simple Bundle #Example
`rollup src/main.js --file bundle.js --format cjs` bundles `src/main.js` into `bundle.js` using CommonJS format. [3, 13]
#### Outputting to stdout #ConsoleOutput
Omitting `--file` or `-o` prints the bundle to the console. [3]

## Configuration #Options #Settings
Configuring Rollup builds using a configuration file.

### `rollup.config.js` / `rollup.config.mjs` #ConfigFile #JavaScriptAPI
The primary way to configure Rollup, offering more flexibility than the CLI. [3, 6, 31] Usually placed in the project root. [3, 4, 6]
It's a JavaScript file exporting a configuration object (or an array of objects for multiple builds). [3, 6, 31] Supports ES module syntax (`.mjs` or `type: "module"` in `package.json`) or CommonJS. [3, 31]
#### Basic Structure #Syntax #Example

```javascript
// rollup.config.mjs
export default {
  input: 'src/main.js',
  output: {
    file: 'bundle.js',
    format: 'cjs' // CommonJS format
  },
  plugins: [
    // ... plugins go here
  ]
};
```
 [3, 6]

### Core Configuration Options #Essential #Parameters
Key properties within the configuration object. [1, 6, 18]
#### `input` #Entrypoint #Source
Specifies the entry point(s) for the bundle. Can be a string for a single entry or an array/object for multiple entries (for code splitting). [1, 3, 4, 6] Required option. [6]
#### `output` #Bundle #Destination
An object or array of objects defining the output bundle(s). [1, 3, 6]
##### `output.file` #SingleFile #OutputName
Path to the single output file (used when not code splitting into multiple chunks). [1, 3, 6]
##### `output.dir` #MultipleFiles #OutputDirectory
Directory to output generated chunks when code splitting or using multiple entry points. [1, 3]
##### `output.format` #ModuleFormat #Compatibility
Specifies the format of the generated bundle (e.g., `es`, `cjs`, `umd`, `iife`, `amd`, `system`). [1, 3, 4, 6, 13, 14]
##### `output.name` #GlobalVariable #UMD #IIFE
Required for `umd` and `iife` formats; specifies the global variable name the bundle will export. [1, 3, 6]
##### `output.globals` #ExternalDependencies #Browser
Maps external module IDs to global variable names (needed for `umd`/`iife` formats with external dependencies). [1, 18]
##### `output.plugins` #OutputSpecific #Transformation
Plugins applied specifically to this output during the generation phase (e.g., minification). [1, 3]
##### `output.sourcemap` #Debugging #Mapping
Generates source maps (`true`, `'inline'`, or `'hidden'`). [4]
##### `output.exports` #ExportMode #Compatibility
Controls how exports are handled (`'default'`, `'named'`, `'none'`, `'auto'`).
##### `output.chunkFileNames` #CodeSplitting #Naming
Pattern for naming generated code-split chunks. [3]
##### `output.entryFileNames` #CodeSplitting #Naming
Pattern for naming generated entry chunks. [3]
##### `output.assetFileNames` #Assets #Naming
Pattern for naming emitted asset files.
##### `output.manualChunks` #CodeSplitting #Control
Allows manual definition of code chunks for splitting. [3]
#### `plugins` #Extensions #Customization
An array of plugins to customize the build process (e.g., transpiling, resolving modules, minifying). [1, 2, 3, 6, 31]
#### `external` #Dependencies #Exclude
Specifies module IDs that should be treated as external and not bundled (e.g., peer dependencies). Can be an array of strings/regexps or a function. [1, 18]
#### `watch` #Development #AutoRebuild
Options for watching files and rebuilding on changes (`watch.include`, `watch.exclude`).
#### `treeshake` #Optimization #Configuration
Fine-tune tree-shaking behavior (`treeshake.moduleSideEffects`, `treeshake.propertyReadSideEffects`, etc.). [17] See also `package.json` `sideEffects` field. [17, 21]
#### `onwarn` #Logging #Errors
Function to handle warnings during the build process.
#### `perf` #Performance #Metrics
Set to `true` to display performance timings.

## Core Functionality #Features #Capabilities
Key features that define Rollup's behavior.

### ES Modules (ESM) Support #ES6 #Imports #Exports
Natively understands and processes ES module syntax (`import`/`export`). This is fundamental to its design and enables effective tree shaking. [13, 17, 19]

### Tree Shaking #DeadCodeElimination #Optimization
Rollup's primary optimization technique. [13, 14]
#### Static Analysis #CompileTime #Analysis
Analyzes `import` and `export` statements statically (without running code) to determine which code is actually used. [13, 17, 19]
#### Unused Code Removal #BundleSize #Efficiency
Removes unused functions, variables, and entire modules from the final bundle. [13, 17, 19, 20]
#### Prerequisites #ESM #Purity
Requires code to be written using ES modules. [17, 19, 21] CommonJS modules are less amenable to tree shaking. [21] Transpilers (like Babel) must be configured not to convert ESM to CommonJS. [21]
#### `sideEffects` Flag #PackageJson #PurityHint
The `sideEffects` flag in `package.json` helps bundlers identify modules that perform actions upon import, preventing them from being incorrectly removed. [17, 21]

### Code Splitting #Chunks #LazyLoading #Performance
Ability to split the bundle into multiple smaller chunks that can be loaded on demand. [2, 14, 23, 27, 28]
#### Automatic Splitting #DynamicImports #MultipleEntries
Rollup automatically creates separate chunks for dynamic `import()` expressions or when multiple entry points share common code. [3, 23, 28]
#### Manual Splitting #`output.manualChunks` #Control
Allows developers to define explicit chunks based on module paths or other criteria. [3]
#### Benefits #LoadTime #OnDemand
Improves initial load time by only loading necessary code; remaining chunks are loaded lazily when needed. [23, 27, 28] Reduces overhead compared to custom loader code. [14]
#### Output Formats #ESM #AMD #SystemJS
Code splitting works best with formats that support dynamic loading like `es`, `amd`, or `system`. [3]

## Plugins #Extensibility #Ecosystem
Extending Rollup's core functionality. Rollup itself focuses on ESM bundling; plugins handle other tasks. [2, 7, 11, 15]
Rollup's plugin API is influential and forms the basis for Vite's plugin system. [11, 14]

### Plugin Ecosystem #Community #Tools
A wide range of official and community plugins exist. [11, 15, 16, 20] While growing, the ecosystem might be smaller than Webpack's. [2]
#### Finding Plugins #Discovery #AwesomeRollup
Search npm for `rollup-plugin` or `vite-plugin` (many Vite plugins are compatible). [11] The `awesome-rollup` list is a curated resource. [11, 15]

### Common Official Plugins (@rollup/plugin-*) #CorePlugins #Maintained
Key plugins maintained by the Rollup team. [15]
#### `@rollup/plugin-node-resolve` #NodeModules #Resolution
Locates modules using the Node.js resolution algorithm (looks in `node_modules`). [15, 18]
#### `@rollup/plugin-commonjs` #CommonJS #Compatibility
Converts CommonJS modules (`require`/`module.exports`) to ES modules so Rollup can process them. [2, 15, 22] Necessary for using most npm packages.
#### `@rollup/plugin-babel` #Transpilation #Compatibility
Integrates Babel for transpiling modern JavaScript (ES2015+) to older, more compatible versions. [4, 15, 22] Requires separate Babel configuration (`.babelrc` or `babel.config.js`). [21]
#### `@rollup/plugin-typescript` #TypeScript #Typing
Integrates TypeScript for compiling TS code to JS. [15]
#### `@rollup/plugin-terser` #Minification #Compression
Minifies the output bundle using Terser for production builds. [3, 15] Can be used as an output-specific plugin. [3]
#### `@rollup/plugin-replace` #EnvironmentVariables #Substitution
Replaces strings in the code (e.g., replacing `process.env.NODE_ENV` with `'production'`). [4, 15]
#### `@rollup/plugin-alias` #Imports #Mapping
Defines aliases for module paths. [15]
#### `@rollup/plugin-json` #Data #Import
Allows importing data from `.json` files. [15, 30]
#### `@rollup/plugin-url` #Assets #DataURI
Imports assets (like images) as Data URIs or file URLs. [15, 16]
#### `@rollup/plugin-virtual` #InMemory #Modules
Loads modules directly from memory (strings) instead of the filesystem. [15]

### Using Plugins #Configuration #`plugins`
Plugins are added to the `plugins` array in `rollup.config.js`. [3, 6, 11] Their order often matters. [11]

```javascript
// rollup.config.mjs
import resolve from '@rollup/plugin-node-resolve';
import commonjs from '@rollup/plugin-commonjs';
import terser from '@rollup/plugin-terser';

export default {
  input: 'src/main.js',
  output: { file: 'bundle.js', format: 'es' },
  plugins: [ resolve(), commonjs(), terser() ] // Order matters!
};
```


### Creating Plugins #API #CustomLogic
Rollup provides a plugin API based on hooks that tap into different stages of the build process (e.g., `resolveId`, `load`, `transform`, `renderChunk`). [3, 14, 18]

## Command Line Interface (CLI) #Terminal #Commands
Using Rollup directly from the command line. [3, 13]

### Key CLI Flags #Options #Arguments
Common command-line arguments.
#### `-c, --config <filename>` #ConfigurationFile
Specify a configuration file (defaults to `rollup.config.js` or `.mjs`). [3]
#### `-i, --input <filename>` #Entrypoint
Specify the input entry point file. [1, 3]
#### `-o, --file <filename>` #OutputFile
Specify the output bundle file. [1, 3]
#### `-d, --dir <dirname>` #OutputDirectory
Specify the output directory for chunks. [1, 3]
#### `-f, --format <format>` #OutputFormat
Specify the output format (cjs, es, iife, umd, amd, system). [1, 3, 13]
#### `-n, --name <name>` #GlobalName
Specify the UMD/IIFE global variable name. [1, 3]
#### `-p, --plugin <plugin>` #PluginUsage
Use plugins directly from the CLI.
#### `-w, --watch` #WatchMode #Development
Rebuild automatically when source files change.
#### `-e, --external <ids>` #ExternalModules
Comma-separated list of external module IDs. [1, 18]
#### `--sourcemap` #SourceMaps #Debugging
Generate source maps. [4]
#### `--globals <pairs>` #GlobalVariables #Mapping
Specify global variable names for external dependencies. [1, 18]
#### `--environment <values>` #EnvironmentVariables
Pass environment variables to the config file.

## JavaScript API #Programmatic #Integration
Using Rollup programmatically within Node.js scripts. [3, 13]

### `rollup.rollup(options)` #BuildFunction #CoreAPI
Takes the configuration options object and returns a Promise resolving to a `bundle` object.

### `bundle.generate(outputOptions)` #InMemory #Generation
Generates the bundle based on output options but keeps it in memory. Returns a Promise resolving to `{ output: [...] }`.

### `bundle.write(outputOptions)` #FileSystem #Output
Writes the generated bundle(s) to the file system based on output options. Returns a Promise. [3]

### Example #Code #Usage

```javascript
import { rollup } from 'rollup';
import resolve from '@rollup/plugin-node-resolve';
import commonjs from '@rollup/plugin-commonjs';

async function build() {
  const bundle = await rollup({
    input: 'src/main.js',
    plugins: [resolve(), commonjs()]
  });

  const { output } = await bundle.generate({
    format: 'es',
    // file: 'bundle.js' // Use write for filesystem output
  });

  console.log(output[0].code); // Log generated code

  await bundle.write({
    file: 'dist/bundle.js',
    format: 'es',
    sourcemap: true
  });

  await bundle.close(); // Close the bundle to free resources
}

build();
```


## Output Formats #Bundling #Targets
Different formats Rollup can generate bundles in. [1, 13, 14]

### `es` (ES Modules) #ESM #Modern
Standard ES module format, suitable for modern browsers supporting `<script type="module">` or other bundlers. Preserves `import`/`export` and ideal for tree shaking in consuming applications. [3, 13, 21] Often preferred for libraries. [19]
### `cjs` (CommonJS) #NodeJS #Legacy
CommonJS format, suitable for Node.js environments or older bundlers. Uses `require` and `module.exports`. [3, 13]
### `umd` (Universal Module Definition) #Browser #NodeJS #Compatibility
Works as AMD, CommonJS, or via a global variable, making it highly compatible across different environments. Requires `output.name`. [1, 3, 13, 18]
### `iife` (Immediately Invoked Function Expression) #Browser #ScriptTag
Wraps the bundle in a function expression that runs immediately. Suitable for direct inclusion via `<script>` tags. Creates a global variable specified by `output.name`. [1, 3, 4, 13, 18] Prevents polluting the global scope. [3]
### `amd` (Asynchronous Module Definition) #RequireJS #LegacyBrowser
Format used by module loaders like RequireJS. [13]
### `system` (SystemJS) #DynamicLoading #Polyfill
Format for the SystemJS universal module loader. Can handle dynamic imports and various module formats. [3, 14]

## Advanced Features & Concepts #Techniques #Internals

### External Dependencies (`external`) #PeerDependencies #BundlingControl
Mechanism to exclude certain modules (like `react`, `lodash`) from the bundle, expecting them to be provided by the consuming environment. [1, 18] Crucial for libraries to avoid bundling common peer dependencies.

### Globals (`output.globals`) #UMD #IIFE #BrowserCompatibility
Mapping external dependencies to global variables when using `umd` or `iife` formats for browser environments where modules aren't loaded via a module system. [1, 18]

### Interoperability (`output.interop`) #ModuleCompatibility #ESM #CJS
Controls how Rollup handles differences between ES modules and CommonJS when importing/exporting.

### Source Maps (`output.sourcemap`) #Debugging #Development
Generating `.map` files to allow debugging the original source code even after bundling and minification. [4]

### Watch Mode (`--watch` / `watch: {}`) #Development #LiveReload
Automatically monitors input files and plugins for changes and triggers rebuilds. Often used with live-reloading servers during development. [22]

### Performance (`perf: true`) #BuildTime #Analysis
Outputs timing information for different stages of the build process, useful for identifying bottlenecks.

### Caching #Performance #IncrementalBuilds
Rollup uses caching internally (especially in watch mode) to speed up subsequent builds by reusing work from previous runs.

### Intro & Outro (`output.intro`, `output.outro`) #Banner #Footer #Injection
Allows prepending (`intro`) or appending (`outro`) strings to the generated bundle(s), useful for banners, licenses, or environment-specific code. [31]

### Handling Assets #CSS #Images #NonJS
Rollup core only handles JavaScript. Plugins are required to import, process, and bundle other asset types like CSS, images, JSON, etc. [2, 4, 15, 16, 30]

### JSX Support (`jsx.*` options) #React #Preact #UIFrameworks
Built-in options (`jsx`, `jsxFactory`, `jsxFragment`, `jsxImportSource`) to parse and transform JSX syntax, compatible with classic and automatic runtimes (like React 17+). [1, 18]

## Performance Optimization #Speed #BundleSize

### Effective Tree Shaking #CodeStructure #Purity
Ensure code is written in ESM and minimize side effects. Use the `sideEffects` flag in `package.json`. [17, 19, 21]
### Code Splitting #LazyLoading #InitialLoad
Split code logically (e.g., by route or feature) to reduce initial bundle size. [27, 28]
### Minification #Compression #Production
Use plugins like `@rollup/plugin-terser` for production builds to significantly reduce bundle size. [3, 15]
### Plugin Selection #BuildSpeed #Efficiency
Choose efficient plugins. Some operations (like heavy transpilation) can slow down builds. Consider faster alternatives like `esbuild` or `swc` plugins where applicable. [15, 16, 20]
### Caching #IncrementalBuilds #WatchMode
Leverage Rollup's caching, especially during development with watch mode.

## Rollup vs Other Bundlers #Comparison #Alternatives

### Rollup vs Webpack #Webpack #Comparison
#### Strengths #RollupAdvantages
Often simpler configuration (especially for libraries/ESM). [2, 6] Generally produces smaller bundles due to superior tree shaking for ESM. [2, 10, 12, 13] Excellent for library development. [2, 5, 7, 9, 19]
#### Weaknesses #RollupDisadvantages
Smaller plugin ecosystem compared to Webpack. [2, 10] Less feature-rich out-of-the-box (e.g., Hot Module Replacement (HMR) requires plugins/integration, less mature historically). [2, 7, 10] Can be more complex for applications needing extensive configuration or non-JS asset handling (relies heavily on plugins). [2] May struggle with very large projects compared to Webpack's optimizations for large apps. [2] Less suited for complex SPAs compared to Webpack's historical focus. [8, 23] Bundling CommonJS can require complex configuration. [25]
#### Use Cases #WhenToUse
Rollup: Libraries, components, smaller applications, projects prioritizing minimal bundle size and ESM purity. [2, 5, 9, 19]
Webpack: Large-scale applications, SPAs, projects requiring extensive configuration, complex asset pipelines, mature HMR. [2, 5, 8, 9, 25]

### Rollup vs Parcel #Parcel #Comparison
#### Strengths #RollupAdvantages
More explicit configuration control. Better suited for library development due to fine-tuned output and tree shaking. [10]
#### Weaknesses #RollupDisadvantages
Requires configuration, unlike Parcel's zero-config approach. [8, 10] Steeper learning curve than Parcel. [10]
#### Use Cases #WhenToUse
Rollup: Libraries, projects needing explicit control over the build process.
Parcel: Quick prototypes, smaller projects, beginners, projects benefiting from zero-configuration setup. [5, 8, 9, 10]

### Rollup vs esbuild/swc #esbuild #swc #Speed
esbuild and swc are bundlers/transpilers written in Go/Rust, respectively, making them significantly faster than JavaScript-based tools like Rollup or Webpack, especially for transpilation and basic bundling. [7] Rollup can leverage esbuild/swc via plugins (`@rollup/plugin-esbuild`, `@rollup/plugin-swc`) for faster transformations. [15, 20] Vite uses Rollup for production builds but esbuild for fast development builds. [14]

## Use Cases & Applications #Examples #Scenarios

### Building JavaScript Libraries #Libraries #NPM #Distribution
Rollup's primary and most recognized use case due to its focus on clean ESM output and tree shaking. [2, 5, 7, 9, 19, 20, 21, 26]
### Component Libraries #UIComponents #React #Vue #Svelte
Bundling UI components for distribution and consumption in applications. [17, 21, 26]
### Applications (Smaller Scale) #WebApps #SPAs
Suitable for bundling smaller to medium-sized web applications, especially those written primarily with ES modules. [2, 13]
### Tooling & Frameworks #Vite #BuildTools
Rollup serves as the production bundler behind modern tools like Vite. [7, 11, 14]

## Community & Ecosystem #Resources #Support

### Official Documentation #Docs #Guides
The primary source for learning and reference (rollupjs.org). [1, 3, 13, 18]
### GitHub Repository #SourceCode #Issues #Contributions
Source code hosting, issue tracking, and contributions. [14, 15]
### Awesome Rollup #Plugins #Resources
A curated list of Rollup plugins, resources, and tools. [11, 15]
### Stack Overflow & Forums #Help #QnA #Support
Community support channels for questions and troubleshooting. [21, 26]
### Tutorials & Blog Posts #Learning #Examples
Numerous online resources provide guides and examples for specific use cases. [3, 4, 6, 16, 17, 19, 20, 25, 30, 31]

## Troubleshooting & Debugging #Errors #Issues #Fixes

### Common Errors #Problems #Solutions
#### Plugin Order Issues #Configuration #OrderMatters
Ensure plugins like `commonjs` run before transpilers like `babel`. [22]
#### Resolution Failures #NodeModules #`plugin-node-resolve`
Use `@rollup/plugin-node-resolve` to find modules in `node_modules`. [15, 18]
#### CommonJS Issues #`plugin-commonjs` #Compatibility
Use `@rollup/plugin-commonjs` for dependencies using `require`/`module.exports`. [15, 22] Ensure it runs before plugins that expect ESM.
#### `this is undefined` #Context #Troubleshooting
May occur at the top level of CommonJS modules; check `plugin-commonjs` configuration or module structure.
#### Tree Shaking Not Working #DeadCode #SideEffects
Verify code is in ESM format. [17, 21] Check Babel/TypeScript config doesn't convert ESM to CJS. [21] Check `sideEffects` flag in `package.json`. [17, 21] Ensure `preserveModules: true` is used when building tree-shakable libraries with multiple files. [21]
#### Sourcemap Issues #Debugging #MappingErrors
Ensure `sourcemap: true` is set correctly in `output` options and that intermediate plugins also support/pass sourcemaps.

### Debugging Techniques #Strategies #Tools
#### Using `onwarn` #Logging #Filtering
Customize the handling of warnings to filter noise or investigate specific issues.
#### Inspecting Output #BundleAnalysis #Verification
Manually check the generated bundle(s) to understand Rollup's output.
#### Using Visualizers #`rollup-plugin-visualizer` #BundleAnalysis
Plugins like `rollup-plugin-visualizer` generate diagrams showing module composition and bundle size. [15]
#### Incremental Debugging #Isolation #Testing
Simplify the configuration or code, disable plugins one by one to isolate the source of the problem.
