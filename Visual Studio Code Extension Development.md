# I. Setting Up the Development Environment for Visual Studio Code Extension Development

## Installing Node.js and npm

### Downloading and Installing Node.js

*   Visit the official Node.js website ([https://nodejs.org](https://nodejs.org)) and download the LTS (Long Term Support) version.
*   Run the installer and follow the on-screen instructions.
*   Verify the installation by opening a terminal or command prompt and running `node -v` and `npm -v`. These commands should display the installed versions of Node.js and npm.

## Installing Visual Studio Code

### Downloading and Installing VS Code

*   Visit the official Visual Studio Code website ([https://code.visualstudio.com](https://code.visualstudio.com)) and download the appropriate version for your operating system.
*   Run the installer and follow the on-screen instructions.

## Installing Yeoman and the VS Code Extension Generator

### Installing Yeoman

*   Open a terminal or command prompt and run the following command: `npm install -g yo`

### Installing the VS Code Extension Generator

*   Run the following command: `npm install -g generator-code`

# II. Creating a New Extension

## Using the Yeoman Generator

### Running the Generator

*   Open a terminal or command prompt.
*   Run the command `yo code`.
*   Select "New Extension (TypeScript)" or "New Extension (JavaScript)" based on your preferred language.
*   Answer the generator's prompts, including:
    *   Extension Name: The name of your extension (e.g., `my-awesome-extension`).
    *   Identifier: A unique identifier for your extension (e.g., `my-publisher.my-awesome-extension`).
    *   Description: A brief description of your extension.
    *   Activate on start-up: Choose "yes" or "no" to activate the extension automatically when VS Code starts.
    *   Language: TypeScript or JavaScript.

## Understanding the Generated Code

### Examining the `package.json` File

*   Open the generated project folder in VS Code.
*   Inspect the `package.json` file.  Note:
    *   `name`:  The extension name.
    *   `displayName`:  The name displayed in the VS Code marketplace.
    *   `description`:  The extension description.
    *   `version`:  The extension version.
    *   `publisher`: Your publisher ID
    *   `engines`: Defines VS Code compatibility.
    *   `activationEvents`: Determines when the extension is activated.
    *   `main`: The entry point of the extension (e.g., `./out/extension.js`).
    *   `contributes`:  Defines contributions to VS Code, such as commands and menus.

### Examining the `extension.ts` or `extension.js` File

*   Locate the `extension.ts` (if you chose TypeScript) or `extension.js` (if you chose JavaScript) file in the `src` folder.
*   Understand the `activate` and `deactivate` functions.
    *   `activate(context: vscode.ExtensionContext)`: Called when the extension is activated.  The `context` provides access to extension API.
    *   `deactivate()`: Called when the extension is deactivated.  Use it for cleanup.

# III. Registering Commands

## Defining a Command

### Adding a Command to `package.json`

*   In the `package.json` file, within the `contributes` section, add a `commands` array:

```json
{
  "contributes": {
    "commands": [
      {
        "command": "my-awesome-extension.helloWorld",
        "title": "Hello World"
      }
    ]
  }
}
```

*   `command`: A unique identifier for the command.
*   `title`: The command's display name in the VS Code UI.

## Implementing the Command Logic

### Registering the Command in `extension.ts` or `extension.js`

*   In your `extension.ts` or `extension.js` file, inside the `activate` function, register the command:

```typescript
import * as vscode from 'vscode';

export function activate(context: vscode.ExtensionContext) {
    let disposable = vscode.commands.registerCommand('my-awesome-extension.helloWorld', () => {
        vscode.window.showInformationMessage('Hello World from My Awesome Extension!');
    });

    context.subscriptions.push(disposable);
}

export function deactivate() {}
```

*   `vscode.commands.registerCommand()`:  Registers the command with VS Code.
*   The first argument is the command identifier (same as in `package.json`).
*   The second argument is a callback function that will be executed when the command is invoked.
*   `vscode.window.showInformationMessage()`: Displays a message box in VS Code.
*   `context.subscriptions.push(disposable)`:  Adds the command to the extension's subscriptions, so it can be disposed of when the extension is deactivated.

# IV. Adding Menu Items

## Adding a Menu Item to the Editor Context Menu

### Modifying the `package.json` file

* Add a `menus` section inside the `contributes` section in `package.json`.

```json
{
  "contributes": {
    "commands": [
      {
        "command": "my-awesome-extension.helloWorld",
        "title": "Hello World"
      }
    ],
    "menus": {
      "editor/context": [
        {
          "command": "my-awesome-extension.helloWorld",
          "group": "navigation"
        }
      ]
    }
  }
}
```

*   `editor/context`:  Specifies the editor context menu.
*   `command`: The command to be executed when the menu item is clicked.
*   `group`:  Determines the position of the menu item within the context menu (e.g., `navigation`, `1_modification`).

## Adding a Menu Item to the Command Palette

### Modifying the `package.json` file

*   Add a `when` clause to the `menus` section:

```json
{
  "contributes": {
    "commands": [
      {
        "command": "my-awesome-extension.helloWorld",
        "title": "Hello World"
      }
    ],
    "menus": {
      "editor/context": [
        {
          "command": "my-awesome-extension.helloWorld",
          "group": "navigation"
        }
      ],
      "commandPalette": [
        {
          "command": "my-awesome-extension.helloWorld",
          "when": "editorFocus"
        }
      ]
    }
  }
}
```

*   `commandPalette`: Specifies that the command should be added to the Command Palette.
*   `when`: Specifies when the command should be visible in the Command Palette (e.g., `editorFocus` means the command is visible when an editor is focused).

# V. Working with the VS Code API

## Accessing the Active Text Editor

### Getting the Active Editor Instance

```typescript
import * as vscode from 'vscode';

export function activate(context: vscode.ExtensionContext) {
    let disposable = vscode.commands.registerCommand('my-awesome-extension.getText', () => {
        const editor = vscode.window.activeTextEditor;

        if (editor) {
            const document = editor.document;
            const selection = editor.selection;

            const text = document.getText(selection);

            vscode.window.showInformationMessage(`Selected text: ${text}`);
        } else {
            vscode.window.showInformationMessage('No active text editor found.');
        }
    });

    context.subscriptions.push(disposable);
}

export function deactivate() {}
```

*   `vscode.window.activeTextEditor`: Returns the active text editor, if any.
*   `editor.document`:  Provides access to the document associated with the editor.
*   `editor.selection`:  Provides access to the selected text.
*   `document.getText(selection)`: Gets the text within the specified selection.

## Modifying the Text Editor

### Inserting Text

```typescript
import * as vscode from 'vscode';

export function activate(context: vscode.ExtensionContext) {
    let disposable = vscode.commands.registerCommand('my-awesome-extension.insertText', () => {
        const editor = vscode.window.activeTextEditor;

        if (editor) {
            editor.edit(editBuilder => {
                editBuilder.insert(editor.selection.start, 'Hello, inserted text!');
            });
        } else {
            vscode.window.showInformationMessage('No active text editor found.');
        }
    });

    context.subscriptions.push(disposable);
}

export function deactivate() {}
```

*   `editor.edit(editBuilder => { ... })`:  Performs edits on the document.
*   `editBuilder.insert(position, text)`: Inserts text at the specified position.

### Replacing Text

```typescript
import * as vscode from 'vscode';

export function activate(context: vscode.ExtensionContext) {
    let disposable = vscode.commands.registerCommand('my-awesome-extension.replaceText', () => {
        const editor = vscode.window.activeTextEditor;

        if (editor) {
            editor.edit(editBuilder => {
                editBuilder.replace(editor.selection, 'Replaced text!');
            });
        } else {
            vscode.window.showInformationMessage('No active text editor found.');
        }
    });

    context.subscriptions.push(disposable);
}

export function deactivate() {}
```

*   `editBuilder.replace(range, text)`: Replaces the text within the specified range with the new text.

# VI. Debugging and Testing

## Debugging the Extension

### Launching the Debugger

*   Press `F5` to launch the extension in debug mode. This will open a new VS Code window with your extension loaded.
*   Set breakpoints in your `extension.ts` or `extension.js` file.
*   Execute the commands you've registered to trigger the breakpoints.
*   Use the VS Code debugger to step through the code, inspect variables, and identify issues.

## Testing the Extension

### Writing Unit Tests

*   Create a `test` folder in your project.
*   Install testing libraries like `mocha` and `chai`: `npm install --save-dev mocha chai @types/mocha @types/chai`
*   Write unit tests for your extension's functionality.
*   Configure the testing environment in `package.json`:

```json
{
  "scripts": {
    "test": "node ./node_modules/vscode/bin/test"
  },
  "devDependencies": {
    "@types/mocha": "^9.1.1",
    "@types/chai": "^4.3.1",
    "mocha": "^10.0.0",
    "chai": "^4.3.6"
  }
}
```

### Running Tests

*   Run the tests using the command: `npm test`

# VII. Packaging and Publishing

## Packaging the Extension

### Using `vsce`

*   Install `vsce`: `npm install -g vsce`
*   Package the extension: `vsce package`
*   This will create a `.vsix` file, which is the extension package.

## Publishing the Extension

### Creating an Azure DevOps Organization and Personal Access Token

*   Create an Azure DevOps organization at [https://dev.azure.com](https://dev.azure.com).
*   Create a Personal Access Token (PAT) with "Marketplace - Manage" and "Marketplace - Publish" scopes.

### Publishing to the Marketplace

*   Run the command: `vsce publish`
*   You will be prompted for the publisher ID and the PAT.
*   Follow the instructions to publish your extension to the VS Code Marketplace.
