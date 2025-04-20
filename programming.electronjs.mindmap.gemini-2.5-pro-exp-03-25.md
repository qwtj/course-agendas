# ElectronJs #SkillsOverview #KnowledgeMap #Main
## Introduction & Core Concepts #Fundamentals #Architecture #Overview
### What is Electron? #Definition #Purpose #CrossPlatform #DesktopApps
Electron allows building cross-platform desktop applications using web technologies (HTML, CSS, JavaScript).
### Core Architecture #Chromium #NodeJs #V8 #Libuv #MultiProcess
Combines Chromium for rendering UI and Node.js for backend/system operations within separate processes.
### Main Process vs. Renderer Process #ProcessModel #Distinction #Responsibilities
Understanding the roles: Main process manages app lifecycle and native APIs, Renderer processes display web pages.
### Use Cases #DesktopApps #Examples #Benefits #Tradeoffs
Used for apps like VS Code, Slack, Discord. Benefits include web tech reuse; tradeoffs involve resource usage.
### Prerequisites #NodeJs #NPM #HTML #CSS #JavaScript #WebDev
Requires solid understanding of Node.js, npm/yarn, and frontend web development fundamentals.
## Setting Up the Development Environment #Setup #Tooling #GettingStarted
### Installing Node.js & npm/yarn #Prerequisites #Installation #PackageManager
Essential base for running Electron and managing project dependencies.
### Creating a Basic Electron Project #QuickStart #Boilerplate #ProjectStructure
Using `npm init` and installing Electron, or using starter templates like `electron-quick-start`.
### Essential Files #package.json #main.js #index.html #preload.js
Key files: `package.json` (config, dependencies), `main.js` (main process entry), `index.html` (UI), `preload.js` (bridge script).
### Running the Application #DevelopmentMode #electron . #npmstart
Launching the app locally for development using the Electron executable or npm scripts.
### Development Tools #DevTools #Debugging #ChromeDevTools #VSCodeExtensions
Utilizing Chrome DevTools for renderer process debugging and Node.js tools for the main process.
## Main Process #Backend #NodeJsIntegration #ApplicationLifecycle
### Role of the Main Process #AppControl #WindowManagement #NativeAPI #Entrypoint
The central coordinator, responsible for creating windows, handling app events, and accessing Node.js APIs.
### `app` Module #LifecycleEvents #AppControl #API #CoreModule
Controls the application's event lifecycle.
#### Lifecycle Events (`ready`, `window-all-closed`, `activate`, etc.) #Events #AppManagement
Hooks into application state changes like startup, shutdown, activation.
#### Methods (`quit`, `getPath`, `focus`, `getVersion`, etc.) #Functions #Utilities
Provides functions for controlling the app, getting paths, managing focus.
### `BrowserWindow` Module #WindowCreation #WindowManagement #API #CoreModule
Creates and controls application windows (renderer instances).
#### Creating Windows #Configuration #Options #WebPreferences
Instantiating `BrowserWindow` with size, position, and behavior options.
#### Window Events (`close`, `blur`, `focus`, `resize`, `move`) #Events #UIInteraction
Responding to user interactions and state changes of individual windows.
#### Window Methods (`loadURL`, `show`, `hide`, `close`, `webContents`, `setMenu`) #Functions #WindowControl
Programmatically manipulating windows (loading content, visibility, closing).
#### WebPreferences #Security #NodeIntegration #ContextIsolation #PreloadScripts
Configuring security settings and features for the web content within a window.
### Native File Dialogs (`dialog` module) #FileSystem #NativeUI #Interaction #API
Showing native open/save file dialogs and message boxes.
### Application Menu (`Menu` module) #NativeUI #Menus #Customization #API
Creating native application menus (top bar) and context menus.
### System Tray (`Tray` module) #NativeUI #BackgroundApps #Notifications #API
Adding an icon and menu to the system's notification area (system tray).
### Global Shortcuts (`globalShortcut` module) #Keyboard #SystemWide #API
Registering keyboard shortcuts that work even when the app is not focused.
### Power Management (`powerMonitor` module) #SystemEvents #Battery #API
Monitoring system power events like suspend, resume, battery status changes.
### Accessing Node.js APIs #FileSystem #ChildProcess #OS #NodeModules #BackendLogic
Directly using Node.js built-in modules (like `fs`, `path`, `child_process`) and third-party npm packages.
## Renderer Process #Frontend #Chromium #UI #WebTechnologies
### Role of the Renderer Process #UI #WebRendering #UserInterface #IsolatedEnvironment
Responsible for rendering HTML/CSS/JS, handling user interface logic within a sandboxed Chromium environment.
### Displaying Web Content #HTML #CSS #JavaScript #DOM #WebAPIs
Using standard web technologies to build the application's user interface.
### Using Frontend Frameworks #React #Vue #Angular #Svelte #Integration #UIFrameworks
Integrating popular JavaScript frameworks/libraries for building complex UIs.
### `webContents` Object #Communication #Events #Methods #RendererControl
An emitter and controller for events and actions related to the web page content (accessible from Main and Renderer).
#### Navigation (`loadURL`, `goBack`, `reload`) #PageControl
Controlling page loading and history within the window.
#### DevTools Access (`openDevTools`, `closeDevTools`, `toggleDevTools`) #Debugging
Programmatically opening and closing the Chrome DevTools for a specific renderer.
#### Printing (`print`, `printToPDF`) #Output #Features
Initiating native printing or saving content as PDF.
#### Capturing Page (`capturePage`) #Screenshots #Features
Taking screenshots of the rendered web page.
### Preload Scripts #Security #IPC #ContextBridge #NodeAccess #Bridging
Scripts that run before the web page loads in the renderer, in a privileged environment with Node.js access.
#### Purpose and Usage #SecurityBoundary #ControlledExposure
Bridging the isolated renderer world and the Node.js world securely.
#### `contextBridge` Module #SecureIPC #APIExposure #BestPractice
Securely exposing specific APIs from the preload script to the renderer process.
#### Node.js Access in Preload #LimitedAccess #BestPractice #Security
Using Node.js APIs within the preload script, selectively exposed via `contextBridge`.
### Web APIs in Renderer #Fetch #WebSockets #LocalStorage #WebWorkers #BrowserFeatures
Utilizing standard browser APIs available in Chromium.
### Handling Multiple Windows #MultiWindowApps #WindowManagement #RendererSide
Managing communication and state across different application windows from renderer contexts (often via IPC to Main).
## Inter-Process Communication (IPC) #Communication #ProcessModel #DataTransfer
### Why IPC? #ProcessIsolation #DataSharing #Coordination
Necessary for communication between the isolated Main and Renderer processes.
### `ipcMain` and `ipcRenderer` Modules #CoreModules #API #CommunicationChannel
The core Electron modules enabling message passing between processes. `ipcMain` listens in Main, `ipcRenderer` sends/receives in Renderer.
### Asynchronous Messaging (`invoke`/`handle`, `send`/`on`) #Async #RequestResponse #EventBased
Preferred method for non-blocking communication.
#### Main -> Renderer (`webContents.send`) #OneWay #Push
Sending messages from the Main process to a specific Renderer process.
#### Renderer -> Main (`ipcRenderer.send`, `ipcRenderer.invoke`) #OneWay #TwoWay
Sending messages or invoking handlers from a Renderer process to the Main process.
#### Main <-> Renderer (Request/Response with `invoke`/`handle`) #TwoWay #AsyncAwait
Implementing two-way communication with asynchronous request/response patterns.
### Synchronous Messaging (`ipcRenderer.sendSync`) #Sync #Blocking #UseWithCaution #PerformanceImpact
Sends a message from Renderer to Main and waits for a result; blocks the Renderer process. Avoid if possible.
### Sharing Data Between Processes #Serialization #Strategies #Limitations
Data sent via IPC must be serializable (usually JSON). Complex objects may need specific handling.
### Best Practices for IPC #Security #Performance #ErrorHandling #ContextBridge
Using `contextBridge` for secure exposure, preferring async methods, validating inputs.
## Native APIs Integration #DesktopFeatures #OSIntegration #SystemAccess
### Accessing Native OS Features #BeyondWeb #DesktopPower
Leveraging APIs that go beyond standard web browser capabilities.
### File System Access #fs #dialog #Paths #Permissions #NodeAPI
Reading, writing, and managing files using Node.js `fs` module, often initiated via `dialog`.
### Desktop Notifications (`Notification` module) #UserAlerts #NativeUI #API
Displaying native OS notifications.
### Clipboard (`clipboard` module) #CopyPaste #DataTransfer #API
Reading from and writing to the system clipboard.
### Screen Information (`screen` module) #DisplayInfo #MultiMonitor #WindowPositioning #API
Getting information about displays, resolutions, cursor position.
### Protocol Handling (`protocol` module) #CustomProtocols #ResourceLoading #API
Registering custom protocols (e.g., `myapp://`) to handle resource loading.
### Native Addons (C/C++) #Performance #LowLevel #NodeAddons #NAPI #Integration #Advanced
Integrating native code modules for performance-critical tasks or accessing platform-specific libraries.
### OS Specific Features #Dock #Taskbar #JumpLists #macOS #Windows #Linux
Implementing platform-specific UI elements like dock menus (macOS) or jump lists (Windows).
## Packaging and Distribution #Deployment #BuildProcess #Installation
### Packaging Concepts #Bundling #CodeSigning #Installers
Preparing the application for end-users, including bundling code and creating installers.
### `electron-builder` #Tooling #BuildSystem #Configuration #PopularChoice
A popular, comprehensive solution for packaging and building Electron apps.
#### Configuration (`package.json` or `electron-builder.yml`) #BuildOptions #Customization
Setting up build targets, signing, icons, and other packaging options.
#### Targets (Windows, macOS, Linux) #CrossPlatformBuilds #NSIS #DMG #AppImage #deb #rpm
Building installers and packages for different operating systems.
#### Code Signing #Security #Verification #Certificates #macOS #Windows
Signing the application to ensure authenticity and avoid OS warnings.
#### Auto Updates #UpdateMechanism #electron-updater #Distribution
Integrating automatic update capabilities using `electron-updater`.
### `electron-forge` #Tooling #BuildSystem #Alternative #Official
An official, integrated toolset for developing, packaging, and publishing Electron apps.
#### Templates and Boilerplates #ProjectSetup
Provides project structures and build configurations out-of-the-box.
#### Build Pipeline #Packaging #Making #Publishing
Handles the entire process from source code to distributable application.
#### Plugin System #Extensibility
Allows extending build capabilities through plugins.
### App Icons #Branding #PlatformSpecific #IconFormats
Providing appropriate icons for different operating systems and contexts (app icon, installer icon).
### ASAR Archives #Bundling #Performance #SourceCodeProtection #Archiving
Packaging app source code into an archive file for potentially faster loading and slight obfuscation.
### Auto Updates Implementation #electron-updater #ServerSetup #ReleaseManagement
Setting up the update mechanism, potentially involving a server to host updates.
## Security Considerations #Security #BestPractices #Vulnerabilities
### Electron Security Model #ProcessIsolation #Sandbox #Threats
Understanding potential attack vectors and Electron's security mechanisms.
### Context Isolation #SecurityFeature #BestPractice #WebPreferences #PreloadScripts
Ensuring preload scripts and renderer logic run in separate JavaScript contexts. (Enabled by default).
#### Enabling Context Isolation #Default #Configuration
Typically enabled in `webPreferences`.
#### Impact on Preload Scripts #contextBridge #SecureExposure
Requires using `contextBridge` to expose APIs from preload to renderer safely.
### Node Integration (`nodeIntegration`) #SecurityRisk #DisableInRenderer #BestPractice
Disabling direct Node.js access in the renderer process (`nodeIntegration: false`) to prevent remote code execution.
### `nodeIntegrationInWorker` #WebWorkers #Security #Considerations
Controlling Node.js access specifically for web workers.
### `webview` Tag Security #Isolation #Alternatives #BrowserView #SecurityRisk
Understanding the risks of the `<webview>` tag and preferring alternatives like `BrowserView` or sandboxed iframes.
### Sandboxing (`sandbox: true`) #RendererProcess #LimitedPermissions #SecurityFeature
Running renderer processes with reduced OS-level permissions for enhanced security.
### Content Security Policy (CSP) #WebSecurity #Mitigation #XSS
Implementing CSP headers to mitigate cross-site scripting (XSS) and data injection attacks.
### Validating IPC Messages #InputValidation #Security #IPC
Treating all data received via IPC as potentially untrusted and validating it in the Main process.
### Securely Loading Remote Content #Permissions #HTTPS #SecurityChecklist
Being cautious when loading external URLs, enforcing HTTPS, checking permissions.
### Dependency Security #npmAudit #Vulnerabilities #SupplyChainAttack #Auditing
Regularly auditing npm dependencies for known vulnerabilities.
### Electron Security Checklist #OfficialGuidance #BestPractices #Auditing
Following the official security recommendations provided by the Electron team.
## Performance Optimization #Performance #Optimization #Responsiveness
### Identifying Bottlenecks #Profiling #DevTools #MemoryLeaks #CPUUsage
Using profiling tools (Chrome DevTools Performance/Memory tabs) to find performance issues.
### Startup Performance #LazyLoading #CodeSplitting #ASAR #Optimization
Minimizing the time it takes for the application to launch and become interactive.
### Runtime Performance #EfficientIPC #DOMManipulation #Throttling #Debouncing #UIResponsiveness
Ensuring the UI remains smooth and responsive during operation.
### Memory Management #LeakDetection #GarbageCollection #Profiling #HeapSnapshots
Finding and fixing memory leaks, reducing overall memory consumption.
### Resource Loading Optimization #Caching #ASAR #CodeSplitting #LazyRequire
Optimizing how code and assets are loaded to improve speed.
### Offloading Tasks #WebWorkers #ChildProcesses #BackgroundTasks #NodeWorkerThreads #UtilityProcess
Moving CPU-intensive or blocking tasks off the main UI thread or main process.
### Using `BrowserView` vs `webview` #Performance #Isolation #Alternatives
Understanding the performance characteristics and use cases for `BrowserView` and alternatives.
## Testing #Testing #QualityAssurance #Automation
### Unit Testing #Jest #Mocha #MainProcessLogic #RendererLogic #TestingFrameworks
Testing individual functions and modules in isolation for both Main and Renderer processes.
### End-to-End (E2E) Testing #Spectron #Playwright #WebDriverIO #Automation #UITesting #TestingTools
Automating user interactions to test the application as a whole. Spectron was popular, but Playwright/WebDriverIO are common now.
#### Setting up E2E Tests #Configuration #TestRunners
Configuring the testing framework and environment to run tests against the packaged or development app.
#### Interacting with App Windows #UIAutomation #Assertions
Writing test scripts that simulate user actions (clicks, typing) and verify results.
### Mocking Electron APIs #TestingIsolation #UnitTests #MockingLibraries
Replacing Electron-specific modules with mocks during unit testing.
### Testing IPC Communication #MockingIPC #E2ETestingIPC
Verifying that messages are sent and received correctly between processes.
### Continuous Integration (CI) #GitHubActions #TravisCI #CircleCI #AutomatedTesting #BuildPipelines
Setting up automated build and test runs on CI servers.
## Advanced Topics & Techniques #Advanced #Specialized #DeepDive
### Native Node Modules #C++Addons #NAPI #Performance #LowLevelAccess
Building and integrating C/C++ modules for high performance or system interaction using N-API.
### Working with Databases #SQLite #IndexedDB #LocalStorage #DataPersistence
Implementing data storage solutions, ranging from simple key/value stores to relational databases.
### Background Processes #HiddenWindows #UtilityProcess #LongRunningTasks
Running tasks independently of visible application windows.
### `UtilityProcess` API #NodeJS #ChildProcessAlternative #Sandboxed #Performance
A modern way to spawn sandboxed Node.js processes for utility tasks, improving security and stability over traditional child processes or hidden windows for some use cases.
### Hardware Access #SerialPort #USB #HID #NodeModules #PlatformSpecific
Interfacing with hardware devices using Node modules like `serialport`, `node-hid`.
### WebRTC Integration #RealTimeCommunication #VideoChat #ScreenSharing
Implementing real-time communication features using WebRTC APIs available in Chromium.
### Accessibility (A11y) #WCAG #ScreenReaders #KeyboardNavigation #InclusiveDesign
Ensuring the application is usable by people with disabilities.
### Internationalization (i18n) & Localization (l10n) #MultiLanguage #Libraries #BestPractices
Adapting the application for different languages and regions.
### Custom Title Bars / Frameless Windows #UI #Customization #WindowControls
Creating windows without standard OS chrome and implementing custom controls.
### GPU Acceleration Control #HardwareAcceleration #Performance #Compatibility
Managing whether and how the application uses the GPU (`app.disableHardwareAcceleration()`).
### Crash Reporting (`crashReporter` module) #Debugging #ErrorTracking #Stability
Setting up automated reporting of application crashes to a server for analysis.
## Ecosystem & Community #Ecosystem #Resources #Tooling #Community
### Electron Boilerplates & Templates #StarterKits #ProjectSetup #electron-react-boilerplate
Using pre-configured project starters to accelerate development.
### Useful Electron Modules/Libraries #electron-store #electron-log #electron-context-menu #CommunityModules
Leveraging third-party modules for common tasks like settings management, logging, context menus.
### Documentation & Resources #OfficialDocs #Blog #AwesomeElectron #StackOverflow
Finding help and information from official documentation, community lists, and Q&A sites.
### Community Support #GitHub #Discord #Forums #GettingHelp
Engaging with the Electron community for support and discussion.
### Staying Updated #ElectronReleases #Versioning #BreakingChanges #ReleaseNotes
Keeping track of new Electron versions, features, and potential breaking changes.
