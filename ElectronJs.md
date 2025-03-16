# I. Introduction to Electron

## Understanding Electron's Architecture

### Node.js Backend

*   Understanding the role of Node.js in Electron.
*   Using `npm` for package management.
*   Example: `npm install electron --save-dev`

### Chromium Frontend

*   Understanding Chromium's rendering engine.
*   Using HTML, CSS, and JavaScript for the user interface.
*   Developer tools for debugging frontend code.

### Main and Renderer Processes

*   Understanding the separation of processes in Electron.
*   Communication between processes using IPC (Inter-Process Communication).
*   `ipcMain` and `ipcRenderer` modules.

## Setting Up Your Development Environment

### Installing Node.js and npm

*   Downloading and installing Node.js from the official website.
*   Verifying installation using `node -v` and `npm -v`.

### Creating a New Electron Project

*   Initializing a new Node.js project with `npm init -y`.
*   Installing Electron as a development dependency: `npm install electron --save-dev`.
*   Creating `package.json` and a basic project structure.

### Basic Project Structure

*   `package.json`: Contains project metadata and dependencies.
*   `main.js`: The main process entry point.
*   `index.html`: The renderer process's HTML file.

# II. Building a Basic Electron Application

## Creating the Main Process

### Importing the Electron Module

*   Using `require('electron')`.
*   Destructuring imports: `const { app, BrowserWindow } = require('electron')`.

### Creating a BrowserWindow Instance

*   Creating a new window using `new BrowserWindow({...})`.
*   Setting window properties: `width`, `height`, `icon`, `webPreferences`.

### Loading the HTML File

*   Using `mainWindow.loadFile('index.html')`.
*   Using `path.join(__dirname, 'index.html')` for reliable path resolution.

### Handling Window Events

*   Listening for the `closed` event: `mainWindow.on('closed', ...)` to handle window closure.
*   Listening for the `ready` event in the `app` module to create the window. `app.on('ready', ...)`

## Creating the Renderer Process

### Creating index.html

*   Basic HTML structure including `<head>` and `<body>` tags.
*   Linking to CSS and JavaScript files.

### Adding Basic JavaScript

*   Using `document.getElementById()` to interact with DOM elements.
*   Handling user input.
*   Example:

    ```html
    <button id="myButton">Click Me</button>
    <script>
        document.getElementById('myButton').addEventListener('click', () => {
            alert('Button Clicked!');
        });
    </script>
    ```

## Running Your Electron Application

### Using the `electron .` Command

*   Running the application from the command line.
*   Debugging with the Developer Tools (Ctrl+Shift+I or Cmd+Option+I).

### Configuring the `package.json` Script

*   Adding a `start` script to `package.json`: `"start": "electron ."`.
*   Running the application using `npm start`.

# III. Inter-Process Communication (IPC)

## Understanding IPC

### The Need for IPC

*   Explaining why main and renderer processes cannot directly access each other's data.
*   Understanding the security implications of allowing direct access.

### `ipcRenderer` and `ipcMain` Modules

*   Using `ipcRenderer` in the renderer process to send messages.
*   Using `ipcMain` in the main process to receive messages.

## Sending Messages from Renderer to Main

### Using `ipcRenderer.send()`

*   Sending a simple message: `ipcRenderer.send('my-message', 'Hello from Renderer!')`.

### Passing Data with Messages

*   Sending JSON data: `ipcRenderer.send('my-data', { name: 'John', age: 30 })`.

## Receiving Messages in the Main Process

### Using `ipcMain.on()`

*   Listening for a specific message: `ipcMain.on('my-message', (event, arg) => { console.log(arg); })`.

### Responding to Messages

*   Using `event.reply()` to send a response back to the renderer process.
*   Example:

    ```javascript
    ipcMain.on('ping', (event, arg) => {
      console.log(arg);  // prints "ping"
      event.reply('pong', 'pong');
    });
    ```

## Sending Messages from Main to Renderer

### Using `mainWindow.webContents.send()`

*   Sending a message to a specific window.
*   Example: `mainWindow.webContents.send('update-status', 'Downloading update...');`

### Receiving Messages in the Renderer Process

*   Using `ipcRenderer.on()` to listen for messages from the main process.
*   Example:

    ```javascript
    ipcRenderer.on('update-status', (event, message) => {
      console.log(message);
    });
    ```

# IV. Working with Menus and Dialogs

## Creating Application Menus

### The `Menu` and `MenuItem` Modules

*   Using the `Menu` and `MenuItem` classes to create menus.
*   Example: `const { Menu, MenuItem } = require('electron')`.

### Building a Menu Template

*   Creating a JSON array representing the menu structure.
*   Defining menu items with labels, accelerators, and click handlers.
*   Example:

    ```javascript
    const template = [
      {
        label: 'File',
        submenu: [
          { label: 'New File', accelerator: 'CmdOrCtrl+N', click: () => { /* ... */ } },
          { label: 'Open File', accelerator: 'CmdOrCtrl+O', click: () => { /* ... */ } },
          { type: 'separator' },
          { label: 'Exit', role: 'quit' }
        ]
      }
    ];
    ```

### Setting the Application Menu

*   Using `Menu.buildFromTemplate(template)` to create a `Menu` object.
*   Using `Menu.setApplicationMenu(menu)` to set the application menu.

## Using Dialogs

### The `dialog` Module

*   Using the `dialog` module for native dialogs.
*   Example: `const { dialog } = require('electron')`.

### Showing Message Boxes

*   Using `dialog.showMessageBox()` to display simple message boxes.
*   Configuring options such as `title`, `message`, and `buttons`.

### Opening and Saving Files

*   Using `dialog.showOpenDialog()` to open files.
*   Using `dialog.showSaveDialog()` to save files.
*   Handling the results of the dialogs.

# V. Packaging and Distributing Your Application

## Understanding Electron Packager and Forge

### Electron Packager

*   A simple tool for packaging Electron applications.
*   Installation: `npm install electron-packager --save-dev`.

### Electron Forge

*   A more comprehensive tool for packaging and distributing Electron applications.
*   Initialization: `npx create-electron-app my-app --template=webpack`
*   Forge requires a different project initialization compared to a basic Electron project.

## Packaging with Electron Packager

### Basic Usage

*   Running `electron-packager . MyApp --platform=darwin --arch=x64 --out=dist`.
*   Specifying the platform (`darwin`, `win32`, `linux`) and architecture (`x64`, `ia32`, `arm64`).

### Customizing Packaging Options

*   Specifying the application icon, name, and version.
*   Ignoring unnecessary files and directories.

## Packaging and Distributing with Electron Forge

### Configuring Forge

*   Modifying the `forge.config.js` file to configure the packaging process.
*   Setting up publishers for distributing the application to different platforms (e.g., GitHub Releases, Squirrel.Windows).

### Making and Publishing

*   Using `npm run make` to create distributable packages.
*   Using `npm run publish` to publish the application to a distribution channel.
