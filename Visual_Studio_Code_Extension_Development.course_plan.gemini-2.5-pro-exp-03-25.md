# I. Introduction to VS Code Extension Development

*   **Learning Objectives:** "<prompt>Generate a bulleted list of 3-5 key learning objectives for the 'Introduction to VS Code Extension Development' section. Objectives should cover understanding the extension ecosystem, setting up the development environment, and creating a basic 'Hello World' extension."

## A. Understanding the VS Code Extension Ecosystem
"<prompt>Provide a concise explanation of the Visual Studio Code extension architecture, including the concepts of Extension Host and the main process. Describe the types of extensions that can be developed (e.g., Themes, Language Support, Linters, Debuggers, Keymaps, Snippets) and their potential impact on the editor."

### 1. Extension Manifest (`package.json`)
"<prompt>Explain the role and structure of the `package.json` file in a VS Code extension. Detail key properties like `name`, `publisher`, `version`, `engines.vscode`, `activationEvents`, and `contributes`."
*   **Glossary Definition:** "<prompt>Define the term 'Extension Manifest' in the context of VS Code extension development."
*   **Example:** "<prompt>Show a minimal example of a `package.json` file for a basic VS Code extension, highlighting the essential fields."

### 2. Extension Entry Point
"<prompt>Describe the purpose of the main JavaScript or TypeScript file specified in the `package.json` (usually linked via the `main` property). Explain the `activate` and `deactivate` functions and their lifecycle within the Extension Host."
*   **Glossary Definition:** "<prompt>Define 'Activation Events' in VS Code extensions."
*   **Glossary Definition:** "<prompt>Define 'Extension Host' in VS Code."

## B. Setting Up the Development Environment
"<prompt>Provide step-by-step instructions for setting up a local development environment for VS Code extension development. Include installing Node.js, npm/yarn, Yeoman (`yo`), and the VS Code Extension Generator (`generator-code`)."

### 1. Installing Prerequisites
*   "<prompt>Generate instructions on how to check if Node.js and npm are installed and how to install them on Windows, macOS, and Linux."
*   "<prompt>Provide the command to install Yeoman and the VS Code Extension Generator globally using npm: `npm install -g yo generator-code`."

### 2. Generating a Basic Extension Project
"<prompt>Guide the user through using the `yo code` command to scaffold a new TypeScript or JavaScript extension project. Explain the prompts presented by the generator (e.g., extension type, name, identifier, description, git initialization)."

## C. Creating and Running a "Hello World" Extension
"<prompt>Provide a step-by-step tutorial for creating a simple 'Hello World' extension. This should cover modifying the generated project to register and implement a basic command that displays an information message."

### 1. Registering a Command
"<prompt>Explain how to register a command in the `package.json` file under the `contributes.commands` section. Include properties like `command` (ID) and `title`."
*   **Example:** "<prompt>Show the JSON snippet for registering a command with ID `myExtension.helloWorld` and title 'Hello World' in `package.json`."

### 2. Implementing the Command
"<prompt>Show how to implement the registered command in the extension's entry file (e.g., `extension.ts`). Explain how to use the `vscode.commands.registerCommand` function and the `vscode.window.showInformationMessage` API."
*   **Code Example:**
    ```
typescript
    // <prompt>Generate the TypeScript code for the activate function in extension.ts that registers a command 'myExtension.helloWorld' which, when executed, displays an information message 'Hello World from My Extension!' using the vscode API. Include necessary imports.
    import * as vscode from 'vscode';

    export function activate(context: vscode.ExtensionContext) {
        console.log('Congratulations, your extension "my-extension" is now active!');

        let disposable = vscode.commands.registerCommand('myExtension.helloWorld', () => {
            vscode.window.showInformationMessage('Hello World from My Extension!');
        });

        context.subscriptions.push(disposable);
    }

    export function deactivate() {}
    
```

### 3. Running and Debugging the Extension
"<prompt>Explain how to launch a new VS Code window (the Extension Development Host) with the extension running by pressing F5 (Run and Debug). Show how to trigger the 'Hello World' command from the Command Palette (Ctrl+Shift+P)."
*   **Key Point Highlight:** "<prompt>Emphasize that pressing F5 in the main VS Code window starts a *new* VS Code instance specifically for testing the extension currently being developed."

*   **Quiz Question:** "<prompt>Generate a multiple-choice question: What file defines the metadata and contribution points for a VS Code extension? A) extension.ts B) package.json C) tsconfig.json D) .vscodeignore"
*   **Reflective Prompt:** "<prompt>Ask the user to reflect: What other simple actions could an extension perform upon activation besides showing a message?"

*   **Section Summary:** "<prompt>Summarize the key takeaways from the 'Introduction' section, covering the extension structure, setup process, and the steps to create, run, and test a basic command-based extension."
*   **Further Reading Links:** "<prompt>Provide links to the official VS Code documentation pages for 'Your First Extension', 'Extension Manifest', and 'Contribution Points'."
*   **Section Transition:** "<prompt>Write a brief transition statement leading into the next section on 'Extension Core Concepts', indicating that the user will now dive deeper into fundamental APIs and activation mechanisms."

# II. Extension Core Concepts

*   **Learning Objectives:** "<prompt>Generate a bulleted list of 3-5 key learning objectives for the 'Extension Core Concepts' section. Objectives should focus on understanding activation, registering commands effectively, managing extension configuration, and using context keys."

## A. Activation Events
"<prompt>Explain the concept of Activation Events in detail. Describe why lazy activation is important for performance and list common activation events like `onCommand`, `onLanguage`, `workspaceContains`, `onFileSystem`, `onView`, `*` (startup), etc. Explain how to specify them in `package.json`."
*   **Glossary Definition:** "<prompt>Define 'Lazy Activation' in the context of VS Code extensions."
*   **Example:** "<prompt>Show an example `activationEvents` array in `package.json` demonstrating activation on a specific command execution and when a Python file is opened: `\"activationEvents\": [\"onCommand:myExtension.doSomething\", \"onLanguage:python\"]`"
*   **Key Point Highlight:** "<prompt>Emphasize that using specific activation events (`onCommand`, `onLanguage`, etc.) is strongly preferred over the wildcard (`*`) for better editor performance."

## B. Commands API
"<prompt>Provide a more in-depth explanation of the Commands API (`vscode.commands`). Cover registering commands (`registerCommand`), executing commands programmatically (`executeCommand`), and passing arguments to commands."

### 1. Registering Commands with Logic
"<prompt>Show how to register a command that accepts arguments and performs logic based on them within the `activate` function."
*   **Code Example:**
    ```
typescript
    // <prompt>Generate TypeScript code registering a command 'myExtension.greetUser' that accepts a name as an argument and displays a personalized greeting message.
    import * as vscode from 'vscode';

    export function activate(context: vscode.ExtensionContext) {
        let disposable = vscode.commands.registerCommand('myExtension.greetUser', (name?: string) => {
            const userName = name || 'User';
            vscode.window.showInformationMessage(`Hello, ${userName}!`);
        });
        context.subscriptions.push(disposable);
    }
    // ... rest of the file
    
```

### 2. Executing Built-in and Other Extension Commands
"<prompt>Explain how `vscode.commands.executeCommand` can be used to trigger built-in VS Code commands (like `editor.action.formatDocument`) or commands contributed by other extensions."
*   **Example:** "<prompt>Show the TypeScript code snippet to programmatically trigger the built-in 'Format Document' command: `vscode.commands.executeCommand('editor.action.formatDocument');`"

## C. Configuration API
"<prompt>Describe how extensions can define configuration settings that users can modify in their User or Workspace settings (`settings.json`). Explain how to define configuration points in `package.json` under `contributes.configuration` and how to read these settings in the extension code using `vscode.workspace.getConfiguration()`."

### 1. Defining Configuration Settings
"<prompt>Show an example of defining a configuration setting (e.g., `myExtension.greetingName`) with a type, default value, and description in the `package.json` `contributes.configuration` section."
*   **Example:**
    ```
json
    // <prompt>Generate the JSON structure for `contributes.configuration` in package.json to define a setting 'myExtension.featureX.enabled' of type boolean with a default value of true and a description.
    "contributes": {
        "configuration": {
            "title": "My Extension Settings",
            "properties": {
                "myExtension.featureX.enabled": {
                    "type": "boolean",
                    "default": true,
                    "description": "Enable or disable Feature X for My Extension."
                }
            }
        }
    }
    
```

### 2. Reading Configuration Values
"<prompt>Provide a TypeScript code example showing how to access the value of a defined configuration setting within the extension's code using `vscode.workspace.getConfiguration('myExtension').get('featureX.enabled')`."
*   **Code Example:**
    ```
typescript
    // <prompt>Generate TypeScript code demonstrating how to read the 'myExtension.featureX.enabled' configuration setting and store it in a variable. Include necessary imports.
    import * as vscode from 'vscode';

    function checkFeatureX() {
        const config = vscode.workspace.getConfiguration('myExtension.featureX');
        const isEnabled = config.get<boolean>('enabled'); // Or get('enabled', true) to provide fallback

        if (isEnabled) {
            console.log('Feature X is enabled.');
            // ... do something based on the setting
        } else {
            console.log('Feature X is disabled.');
        }
    }
    
```

## D. Context Keys and `when` Clauses
"<prompt>Explain the concept of context keys (`setContext`) and how they control the visibility and enablement of UI contributions (like commands in menus or view visibility) using `when` clauses in `package.json`. List some built-in context keys (e.g., `editorLangId`, `editorHasSelection`, `isInDiffEditor`)."
*   **Glossary Definition:** "<prompt>Define 'When Clause' in VS Code."
*   **Glossary Definition:** "<prompt>Define 'Context Key' in VS Code."

### 1. Setting Custom Context Keys
"<prompt>Show how to set a custom context key from the extension code using `vscode.commands.executeCommand('setContext', 'myExtension.customContextKey', value)`."
*   **Example:** `<prompt>Provide the TypeScript code snippet for setting a custom context key 'myExtension.isProcessing' to true: `vscode.commands.executeCommand('setContext', 'myExtension.isProcessing', true);`"

### 2. Using Context Keys in `when` Clauses
"<prompt>Show an example `when` clause in `package.json` (e.g., for a menu contribution) that uses both built-in and custom context keys: `\"when\": \"editorLangId == python && myExtension.customContextKey\"`."

*   **Quiz Question:** "<prompt>Generate a fill-in-the-blank question: To make a command available in the Command Palette only when a text editor is focused and has a selection, you would use a _______ clause in your `package.json`." (Answer: when)
*   **Reflective Prompt:** "<prompt>Ask the user to think about scenarios where controlling UI element visibility based on context (like file type, workspace state, or extension state) would be beneficial."
*   **Cross-Reference:** "<prompt>Mention that `when` clauses will be revisited in Section III when discussing specific UI Contributions like Menus and Views."

*   **Section Summary:** "<prompt>Summarize the key concepts covered in this section: the importance and use of Activation Events, the versatility of the Commands API, how to manage user configuration via the Configuration API, and the role of Context Keys and `when` clauses in conditional UI."
*   **Further Reading Links:** "<prompt>Provide links to the official VS Code documentation for 'Activation Events', 'Command API', 'Configuration API', and 'When Clause Contexts'."
*   **Section Transition:** "<prompt>Write a transition statement indicating that the next section will focus on how extensions can contribute various elements to the VS Code User Interface."

# III. User Interface Contributions

*   **Learning Objectives:** "<prompt>Generate a bulleted list of 4-6 learning objectives for the 'User Interface Contributions' section. Objectives should include adding commands to the Command Palette and menus, creating custom views (Activity Bar, Sidebar, Panel), utilizing Webviews, adding Status Bar items, and showing notifications."

## A. Command Palette and Menus
"<prompt>Explain how to make commands accessible through the Command Palette and various menus (e.g., Editor Context Menu, Explorer Context Menu, Editor Title Menu) by defining contributions in `package.json` under `contributes.commands` and `contributes.menus`."

### 1. Command Palette Contribution
"<prompt>Reiterate how `contributes.commands` (with `title` and `category`) makes a command appear in the Command Palette (Ctrl+Shift+P)."
*   **Example:** "<prompt>Show the `package.json` snippet for contributing a command 'myExtension.analyzeFile' with title 'Analyze Current File' under the category 'My Analysis Tools'."

### 2. Menu Contributions
"<prompt>Detail the `contributes.menus` section in `package.json`. Explain common menu contribution points like `commandPalette`, `editor/context`, `explorer/context`, `editor/title`, `view/title`, `view/item/context`. Show how to associate a command ID with a menu item and use `when` clauses for context-sensitivity."
*   **Example:**
    ```
json
    // <prompt>Generate the JSON structure for `contributes.menus` in package.json to add the command 'myExtension.analyzeFile' to the editor's context menu only when the language is 'javascript'.
    "contributes": {
      "menus": {
        "editor/context": [
          {
            "command": "myExtension.analyzeFile",
            "when": "editorLangId == javascript",
            "group": "navigation"
          }
        ]
      }
    }
    
```
*   **Glossary Definition:** "<prompt>Define 'Contribution Point' in VS Code."

## B. Views (Activity Bar, Sidebar, Panels)
"<prompt>Explain how extensions can contribute custom views to the VS Code UI, primarily in the Activity Bar (leading to Sidebar views) or the Panel area (bottom). Describe the necessary `package.json` contributions under `contributes.viewsContainers` and `contributes.views`."

### 1. Defining Views Containers and Views
"<prompt>Show the `package.json` structure for defining a custom Activity Bar icon (`viewsContainers`) and a view (`views`) associated with it. Include properties like `id`, `title`, `icon` for the container, and `id`, `name`, `when` for the view."
*   **Example:** "<prompt>Provide a JSON snippet for `package.json` contributing an Activity Bar container 'My Tools' and a view 'My Custom View' within it."

### 2. Implementing a Tree View
"<prompt>Introduce the concept of Tree Views, a common way to display hierarchical data in a custom view. Explain the role of `vscode.window.registerTreeDataProvider` and the `TreeDataProvider` interface (implementing `getChildren`, `getTreeItem`)."
*   **Glossary Definition:** "<prompt>Define 'TreeDataProvider' in the context of VS Code view development."
*   **Code Example:** "<prompt>Show a basic skeleton of a TypeScript class implementing `vscode.TreeDataProvider` for a simple, static list of items. Include `getTreeItem` and `getChildren` method signatures."
*   **Cross-Reference:** "<prompt>Mention that Tree Views will be covered in more detail in the 'Advanced Topics' section (Section VII)."

## C. Webviews
"<prompt>Describe the Webview API (`vscode.window.createWebviewPanel`), which allows extensions to create highly customizable UI panels using standard web technologies (HTML, CSS, JavaScript). Explain the security implications and the messaging API for communication between the extension and the webview content."
*   **Glossary Definition:** "<prompt>Define 'Webview' in VS Code."

### 1. Creating a Basic Webview Panel
"<prompt>Provide a TypeScript code example demonstrating how to create a simple webview panel, set its HTML content, and handle its disposal."
*   **Code Example:** "<prompt>Generate TypeScript code for a command that creates a Webview panel titled 'My Webview' displaying static HTML '<h1>Hello from Webview</h1>'."

### 2. Webview Communication (Extension <-> Webview)
"<prompt>Explain the mechanism for sending messages from the extension to the webview (`webview.postMessage()`) and receiving messages from the webview back to the extension (`webview.onDidReceiveMessage()`). Briefly mention the setup required in the webview's JavaScript to handle these messages."
*   **Key Point Highlight:** "<prompt>Highlight the importance of sanitizing any data passed into the webview HTML and using Content Security Policies (`meta http-equiv="Content-Security-Policy"`) for security."

## D. Status Bar Items
"<prompt>Explain how to add custom information or interactive elements to the VS Code Status Bar using `vscode.window.createStatusBarItem`. Cover setting text, tooltips, colors, alignment (`Left`/`Right`), priority, and associating a command."

### 1. Creating and Updating a Status Bar Item
"<prompt>Show a TypeScript code example for creating a Status Bar item, setting its initial text, and showing it. Also, demonstrate how to update its text dynamically."
*   **Code Example:** "<prompt>Generate TypeScript code within the `activate` function to create a Status Bar item aligned to the left, set its text to 'My Ext: Ready', give it a tooltip 'My Extension Status', and make it visible. Include handling its disposal."

## E. Notifications
"<prompt>Describe how to display non-intrusive information, warning, or error messages to the user using the `vscode.window.showInformationMessage`, `showWarningMessage`, and `showErrorMessage` APIs. Mention the possibility of adding buttons to notifications for user interaction."

### 1. Showing Different Notification Types
"<prompt>Provide simple TypeScript examples for showing each type of notification message."
*   **Example:** "<prompt>Show three separate TypeScript calls demonstrating `showInformationMessage`, `showWarningMessage`, and `showErrorMessage`."

### 2. Notifications with Actions
"<prompt>Show how to add action buttons (e.g., 'Retry', 'Cancel') to a notification message and handle the user's choice."
*   **Code Example:**
    ```
typescript
    // <prompt>Generate TypeScript code showing an error message 'Operation Failed!' with two buttons 'Retry' and 'Details'. Log the user's choice to the console.
    import * as vscode from 'vscode';

    async function showNotificationWithActions() {
        const selection = await vscode.window.showErrorMessage(
            'Operation Failed!',
            { modal: false }, // Optional: make it non-modal
            'Retry',
            'Details'
        );

        if (selection === 'Retry') {
            console.log('User chose Retry');
            // Trigger retry logic...
        } else if (selection === 'Details') {
            console.log('User chose Details');
            // Show details...
        } else {
            console.log('Notification dismissed');
        }
    }
    
```

*   **Quiz Question:** "<prompt>Generate a multiple-choice question: To add a custom view that appears in the sidebar when a specific icon in the Activity Bar is clicked, which two contribution points are primarily needed in `package.json`? A) `contributes.commands` and `contributes.menus` B) `contributes.viewsContainers` and `contributes.views` C) `contributes.configuration` and `contributes.keybindings` D) `contributes.languages` and `contributes.grammars`"
*   **Reflective Prompt:** "<prompt>Ask the user to consider which UI contribution methods (menus, views, webviews, status bar, notifications) are most appropriate for different types of extension interactions or information displays."

*   **Section Summary:** "<prompt>Summarize the various ways extensions can integrate with the VS Code UI, including adding commands to menus, creating custom views and webviews, displaying status information, and interacting via notifications."
*   **Further Reading Links:** "<prompt>Provide links to the official VS Code documentation for 'Command Palette', 'Menu Contribution', 'Tree View API', 'Webview API', 'Status Bar API', and 'Notifications API'."
*   **Section Transition:** "<prompt>Write a transition statement explaining that the focus will now shift to enhancing the code editing experience by contributing language-specific features."

# IV. Language Features

*   **Learning Objectives:** "<prompt>Generate a bulleted list of 4-6 learning objectives for the 'Language Features' section. Objectives should cover implementing syntax highlighting, providing IntelliSense features (completion, hover info, signature help), reporting diagnostics (errors/warnings), offering code actions, and enabling code formatting."

## A. Basic Language Features: Syntax Highlighting and Snippets
"<prompt>Explain how extensions can contribute basic language support features like syntax highlighting using TextMate grammars (`.tmLanguage.json` or `.tmLanguage`) and code snippets (`.json`) defined in `package.json` under `contributes.grammars` and `contributes.snippets`."

### 1. Syntax Highlighting (Grammars)
"<prompt>Describe the role of TextMate grammars in syntax highlighting. Explain how to reference a grammar file in `package.json` and associate it with a language ID."
*   **Example:** "<prompt>Show the `package.json` snippet for `contributes.grammars` associating the language ID 'myLang' with a TextMate grammar file located at './syntaxes/myLang.tmLanguage.json'."
*   **Glossary Definition:** "<prompt>Define 'TextMate Grammar' in the context of syntax highlighting."
*   **Further Reading Links:** "<prompt>Provide a link to the TextMate grammar documentation and resources for creating them."

### 2. Code Snippets
"<prompt>Explain how to define reusable code snippets in a JSON file and register them in `package.json` under `contributes.snippets`, associating them with a specific language ID."
*   **Example:** "<prompt>Show an example snippet definition in JSON format for a simple 'for loop' in a hypothetical language 'myLang', including `prefix`, `body`, and `description`."

## B. IntelliSense Features (Providers)
"<prompt>Introduce the concept of Language Feature Providers. Explain that these are typically registered programmatically in the extension's `activate` function using `vscode.languages.register...Provider` methods and require implementing specific provider interfaces."

### 1. Completion Item Provider (`registerCompletionItemProvider`)
"<prompt>Describe how to provide context-aware code completion suggestions. Explain the `CompletionItemProvider` interface, focusing on the `provideCompletionItems` method, `CompletionItem` structure, and `CompletionItemKind`."
*   **Code Example:** "<prompt>Generate a basic TypeScript skeleton for a `CompletionItemProvider` for a language 'myLang', showing the `provideCompletionItems` method returning a hardcoded list of `CompletionItem` objects."

### 2. Hover Provider (`registerHoverProvider`)
"<prompt>Explain how to show information tooltips when hovering over symbols in the code. Describe the `HoverProvider` interface and its `provideHover` method, returning a `Hover` object (often containing Markdown content)."
*   **Code Example:** "<prompt>Generate a basic TypeScript skeleton for a `HoverProvider` for 'myLang', showing the `provideHover` method returning a simple `Hover` object with Markdown content."

### 3. Signature Help Provider (`registerSignatureHelpProvider`)
"<prompt>Describe how to provide signature help (parameter information) for function calls. Explain the `SignatureHelpProvider` interface and its `provideSignatureHelp` method, returning a `SignatureHelp` object."
*   **Code Example:** "<prompt>Generate a basic TypeScript skeleton for a `SignatureHelpProvider` for 'myLang', showing the `provideSignatureHelp` method signature."

## C. Diagnostics (Linting and Error Reporting)
"<prompt>Explain how extensions can analyze code and report problems (errors, warnings, hints) that appear in the 'Problems' panel and as squiggles in the editor. Introduce the Diagnostics API: `vscode.languages.createDiagnosticCollection` and the `Diagnostic` object structure (`range`, `message`, `severity`)."
*   **Glossary Definition:** "<prompt>Define 'Diagnostic' in VS Code language features."

### 1. Creating and Updating Diagnostics
"<prompt>Show a TypeScript example of creating a `DiagnosticCollection`, creating `Diagnostic` objects with appropriate ranges and severities (`Error`, `Warning`, `Information`, `Hint`), and updating the collection for a given document URI, typically triggered on document changes or saves."
*   **Code Example:** "<prompt>Generate TypeScript code demonstrating how to create a DiagnosticCollection named 'myLinter', create a sample Warning diagnostic for a specific line in a document, and set it for that document's URI using the collection's `set` method."

## D. Code Actions (`registerCodeActionsProvider`)
"<prompt>Explain Code Actions (Quick Fixes), which provide context-specific commands to resolve diagnostics or perform refactorings, accessible via a lightbulb icon or `Ctrl+.`. Describe the `CodeActionProvider` interface and its `provideCodeActions` method, returning `Command` or `CodeAction` objects."
*   **Glossary Definition:** "<prompt>Define 'Code Action' (or 'Quick Fix') in VS Code."

### 1. Implementing a Simple Code Action
"<prompt>Show a basic TypeScript `CodeActionProvider` implementation that, when invoked on a line with a specific diagnostic, provides a `CodeAction` to fix it (e.g., by providing a `Command` or a `WorkspaceEdit`)."
*   **Code Example:** "<prompt>Generate a TypeScript skeleton for a `CodeActionProvider` showing the `provideCodeActions` method signature and how it receives context (document, range, diagnostics)."

## E. Formatting (`registerDocumentFormattingEditProvider`, `registerDocumentRangeFormattingEditProvider`)
"<prompt>Describe how extensions can provide code formatting capabilities for an entire document or a selected range. Explain the `DocumentFormattingEditProvider` and `DocumentRangeFormattingEditProvider` interfaces and their respective `provide...Edits` methods, which return an array of `TextEdit` objects."
*   **Glossary Definition:** "<prompt>Define 'TextEdit' in the VS Code API."

### 1. Implementing a Document Formatter
"<prompt>Show a basic TypeScript example skeleton for a `DocumentFormattingEditProvider`, illustrating the `provideDocumentFormattingEdits` method signature which needs to return `TextEdit[]` representing the changes needed to format the document."
*   **Code Example:** "<prompt>Generate a TypeScript skeleton for a `DocumentFormattingEditProvider`, showing the `provideDocumentFormattingEdits` method signature."

*   **Quiz Question:** "<prompt>Generate a matching question: Match the language feature provider interface with the functionality it enables: 1) `CompletionItemProvider`, 2) `HoverProvider`, 3) `DiagnosticCollection`, 4) `CodeActionProvider`. A) Showing errors/warnings, B) Providing Quick Fixes, C) Showing info on hover, D) Offering auto-complete suggestions." (Answers: 1-D, 2-C, 3-A, 4-B)
*   **Reflective Prompt:** "<prompt>Ask the user to think about a simple custom language (e.g., for configuration files or a domain-specific language) and brainstorm which language features (syntax highlighting, completion, diagnostics) would be most valuable to implement first."
*   **Cross-Reference:** "<prompt>Mention that for complex language features involving deep semantic analysis, the Language Server Protocol (LSP), discussed in Section VII, is often a better approach than implementing individual providers directly."

*   **Section Summary:** "<prompt>Summarize the key language features extensions can contribute, ranging from basic syntax highlighting and snippets to advanced IntelliSense (completion, hover, signature help), diagnostics, code actions, and formatting, primarily through implementing various Provider interfaces."
*   **Further Reading Links:** "<prompt>Provide links to the official VS Code documentation for 'Syntax Highlight Guide', 'Snippets Guide', 'Programmatic Language Features', 'Diagnostics', 'Code Action Provider', and 'Formatting Provider'."
*   **Section Transition:** "<prompt>Write a transition statement explaining that the next section will cover how extensions can manage data, state, and interact with VS Code's settings and storage mechanisms."

# V. Data, State, and Settings Management

*   **Learning Objectives:** "<prompt>Generate a bulleted list of 3-4 learning objectives for the 'Data, State, and Settings Management' section. Objectives should cover storing workspace-specific data, managing global extension state, reading/writing extension configuration settings, and understanding the different storage scopes."

## A. Workspace Storage (`ExtensionContext.workspaceState`)
"<prompt>Explain the purpose of Workspace State (`context.workspaceState`). Describe it as a key-value store specific to the current workspace, ideal for storing project-related settings or caching information that shouldn't be shared across different projects/workspaces. Explain its persistence."
*   **Glossary Definition:** "<prompt>Define 'Workspace State' in VS Code extensions."

### 1. Using Workspace State
"<prompt>Provide TypeScript code examples demonstrating how to store (`update`) and retrieve (`get`) data using `context.workspaceState` within the `activate` function or other parts of the extension."
*   **Code Example:**
    ```
typescript
    // <prompt>Generate TypeScript code snippets within an activate function showing how to: 1. Store a value 'project-setup-complete' with the key 'myExtension.projectStatus'. 2. Retrieve the value associated with the key 'myExtension.projectStatus'. Assume 'context: vscode.ExtensionContext' is available.
    import * as vscode from 'vscode';

    export function activate(context: vscode.ExtensionContext) {
        // 1. Store a value
        context.workspaceState.update('myExtension.projectStatus', 'project-setup-complete');
        console.log('Stored project status in workspace state.');

        // 2. Retrieve the value
        const status = context.workspaceState.get<string>('myExtension.projectStatus');
        if (status) {
            console.log(`Retrieved project status: ${status}`);
        } else {
            console.log('No project status found in workspace state.');
        }

        // Retrieve with a default value
        const setting = context.workspaceState.get<boolean>('myExtension.someFlag', false);
        console.log(`Retrieved someFlag (with default): ${setting}`);

        // ... rest of activation
    }
    
```

## B. Global State (`ExtensionContext.globalState`)
"<prompt>Explain the purpose of Global State (`context.globalState`). Describe it as a key-value store persistent across all workspaces for the current user, suitable for storing user preferences specific to the extension or information that applies globally. Explain its persistence."
*   **Glossary Definition:** "<prompt>Define 'Global State' in VS Code extensions."

### 1. Using Global State
"<prompt>Provide TypeScript code examples demonstrating how to store (`update`) and retrieve (`get`) data using `context.globalState`."
*   **Code Example:** "<prompt>Generate TypeScript code snippets showing how to: 1. Store a user's preference `theme: 'dark'` using the key 'myExtension.userPrefs'. 2. Retrieve the value for 'myExtension.userPrefs' from global state. Assume 'context: vscode.ExtensionContext' is available."

## C. Extension Settings (Configuration API Revisited)
"<prompt>Revisit the Configuration API (`vscode.workspace.getConfiguration`) focusing on its role in managing user-configurable settings defined in `package.json`. Contrast this with `workspaceState` and `globalState` (user-configured vs. programmatically managed internal state)."

### 1. Reading Configuration Settings
"<prompt>Provide a concise TypeScript example reminding how to read a specific configuration value (e.g., `myExtension.featureX.enabled`) using `vscode.workspace.getConfiguration('myExtension.featureX').get('enabled')`."

### 2. Writing Configuration Settings
"<prompt>Explain how extensions can programmatically update user or workspace settings using the `update` method on a `WorkspaceConfiguration` object. Discuss the different configuration targets (`ConfigurationTarget.Global`, `ConfigurationTarget.Workspace`, `ConfigurationTarget.WorkspaceFolder`) and the necessary permissions/user awareness."
*   **Code Example:**
    ```
typescript
    // <prompt>Generate TypeScript code to update the workspace setting 'myExtension.featureX.enabled' to false. Handle potential errors.
    import * as vscode from 'vscode';

    async function disable
FeatureXInWorkspace() {
        const config = vscode.workspace.getConfiguration('myExtension.featureX');
        try {
            // Update the setting specifically for the current workspace
            await config.update('enabled', false, vscode.ConfigurationTarget.Workspace);
            vscode.window.showInformationMessage('Feature X disabled for this workspace.');
        } catch (error) {
            vscode.window.showErrorMessage(`Failed to update setting: ${error}`);
        }
    }
    
```
*   **Key Point Highlight:** "<prompt>Emphasize that programmatically changing user settings (`ConfigurationTarget.Global` or `Workspace`) should be done judiciously, often in response to explicit user action, to avoid unexpected behavior."

## D. Storage Paths (`ExtensionContext.storageUri`, `globalStorageUri`)
"<prompt>Introduce the dedicated storage locations provided by `context.storageUri` (workspace-specific) and `context.globalStorageUri` (global). Explain that these provide `Uri`s pointing to directories where extensions can store larger files or complex data structures (e.g., databases, cache files) instead of using the key-value state objects. Mention that these locations are managed by VS Code."
*   **Glossary Definition:** "<prompt>Define 'Storage URI' in VS Code extensions."

### 1. Accessing Storage Paths
"<prompt>Show how to get the string paths for these storage locations in TypeScript using `context.storageUri.fsPath` and `context.globalStorageUri.fsPath`. Briefly mention using Node.js `fs` or other libraries to interact with files in these directories."
*   **Example:** "<prompt>Provide TypeScript code snippets showing how to get the file system paths for both workspace and global storage URIs provided by the ExtensionContext."

*   **Quiz Question:** "<prompt>Generate a scenario-based question: Your extension needs to remember which files a user has marked as 'favorites' *only* within the current project they have open. Which storage mechanism is most appropriate? A) `context.globalState`, B) `context.workspaceState`, C) Extension Configuration Settings, D) `context.globalStorageUri`." (Answer: B)
*   **Reflective Prompt:** "<prompt>Ask the user to compare and contrast the use cases for `workspaceState`, `globalState`, configuration settings, and file-based storage via `storageUri`/`globalStorageUri`."

*   **Section Summary:** "<prompt>Summarize the different ways extensions can store data and state: `workspaceState` for workspace-specific key-value data, `globalState` for global key-value data, the Configuration API for user-editable settings, and storage URIs for file-based storage needs."
*   **Further Reading Links:** "<prompt>Provide links to the official VS Code documentation for 'Extension Context' (covering states and storage paths) and 'Configuration API'."
*   **Section Transition:** "<prompt>Write a transition statement indicating the importance of testing and debugging extensions, which will be the focus of the next section."

# VI. Testing and Debugging Extensions

*   **Learning Objectives:** "<prompt>Generate a bulleted list of 3-4 learning objectives for the 'Testing and Debugging Extensions' section. Objectives should include running extensions in the debugger, setting breakpoints, inspecting variables, understanding unit vs. integration testing approaches, and using the VS Code extension testing libraries."

## A. Debugging Extensions (F5 Revisited)
"<prompt>Expand on the debugging process initiated by pressing F5 (Run and Debug). Explain that this launches the Extension Development Host window and attaches the debugger from the main VS Code instance. Cover setting breakpoints, stepping through code, inspecting variables, and using the Debug Console within the main instance."

### 1. Setting Breakpoints
"<prompt>Explain how to set breakpoints in the extension's TypeScript/JavaScript source code in the main VS Code window before or after pressing F5."

### 2. Using the Debug Console
"<prompt>Describe the purpose of the Debug Console in the main VS Code window for viewing `console.log` output from the extension and evaluating expressions in the context of the running extension."

## B. Extension Testing Approaches
"<prompt>Introduce the concept of automated testing for VS Code extensions. Differentiate between Unit Tests (testing isolated functions/modules without the VS Code API) and Integration Tests (testing extension behavior within a running VS Code instance, interacting with the API)."

## C. Unit Testing
"<prompt>Explain how to set up and write unit tests for the logic within an extension, typically using standard JavaScript/TypeScript testing frameworks like Mocha, Jest, or Jasmine. Emphasize mocking or stubbing any direct VS Code API dependencies (`vscode` module) since these are not available in a standard Node.js test environment."

### 1. Setting up a Test Runner (e.g., Mocha)
"<prompt>Briefly describe how the `yo code` generator often includes a basic Mocha test setup. Explain the `src/test` folder structure and the `runTest.ts` or similar script used to execute tests."

### 2. Writing Unit Tests
"<prompt>Provide a conceptual example of a unit test for a simple utility function within the extension, highlighting the use of assertions and potentially mocking."
*   **Example:** "<prompt>Show a pseudo-code or simple conceptual Mocha unit test for a hypothetical function `myExtension.utils.calculateValue(a, b)` that doesn't depend on the `vscode` API."

## D. Integration Testing (`vscode-test`)
"<prompt>Introduce the `@vscode/test-electron` (and potentially `@vscode/test-web`) library provided by Microsoft for running integration tests. Explain that this library automates the process of downloading a specific VS Code version, launching it with the extension, and running test scripts within the Extension Host environment, allowing interaction with the VS Code API."
*   **Glossary Definition:** "<prompt>Define '@vscode/test-electron'."

### 1. Test Script Structure for Integration Tests
"<prompt>Explain that integration tests are often written using Mocha (or another framework) but run within the special environment set up by `@vscode/test-electron`. Show how tests can now import and use the `vscode` API directly."

### 2. Example Integration Test Scenario
"<prompt>Describe a simple integration test scenario, such as: 1. Opening a document. 2. Programmatically triggering an extension command (`executeCommand`). 3. Asserting that the command produced the expected result (e.g., text was inserted, a diagnostic appeared, a setting was changed)."
*   **Code Example:** "<prompt>Generate a conceptual Mocha integration test snippet (using `@vscode/test-electron` setup assumed) that demonstrates activating the extension and executing a simple command, then potentially asserting a basic outcome using the `vscode` API. Focus on the structure and API usage within the test."
    ```
typescript
    // <prompt>Generate a conceptual Mocha integration test snippet (using @vscode/test-electron setup assumed) that demonstrates activating the extension and executing a simple command 'myExtension.helloWorld', then potentially asserting a basic outcome using the `vscode` API. Focus on the structure and API usage within the test.
    import * as assert from 'assert';
    import * as vscode from 'vscode';
    // import * as myExtension from '../../extension'; // Adjust path as needed

    suite('Extension Test Suite', () => {
        vscode.window.showInformationMessage('Start all tests.');

        test('Sample test: Execute command', async () => {
            // Ensure extension is activated (if not activated on startup)
            // await vscode.extensions.getExtension('your_publisher.your_extension_name').activate(); // Replace with actual ID

            // Execute the command
            await vscode.commands.executeCommand('myExtension.helloWorld');

            // Add assertions here. For a command that shows a message,
            // testing the message directly is hard. Test observable side effects instead.
            // For example, if the command modified a document or setting:
            // const doc = await vscode.workspace.openTextDocument({...});
            // assert.strictEqual(doc.getText(), 'Expected text after command');

            // Placeholder assertion
            assert.strictEqual(1, 1, "Assertion demonstrating test structure");
        });
    });

    
```

*   **Quiz Question:** "<prompt>Generate a true/false question: Integration tests for VS Code extensions using `@vscode/test-electron` can directly import and use the `vscode` API, while standard unit tests cannot without mocking." (Answer: True)
*   **Reflective Prompt:** "<prompt>Ask the user to think about a feature they implemented (or plan to implement) in their extension and consider what aspects would be best tested with unit tests versus integration tests."

*   **Section Summary:** "<prompt>Summarize the methods for ensuring extension quality: interactive debugging using the built-in debugger (F5), unit testing for isolated logic, and integration testing using `@vscode/test-electron` for testing interactions with the VS Code API within a live editor environment."
*   **Further Reading Links:** "<prompt>Provide links to the official VS Code documentation for 'Debugging Extensions' and 'Testing Extensions'."
*   **Section Transition:** "<prompt>Write a transition statement indicating that the following section will delve into more advanced extension development techniques, including the Language Server Protocol and custom UI elements."

# VII. Advanced Topics

*   **Learning Objectives:** "<prompt>Generate a bulleted list of 4-6 learning objectives for the 'Advanced Topics' section. Objectives should cover understanding the Language Server Protocol (LSP), implementing complex Tree Views, creating Custom Editors, integrating with Source Control, optimizing performance, and developing Web Extensions."

## A. Language Server Protocol (LSP)
"<prompt>Explain the Language Server Protocol (LSP) as a standardized way for extensions (clients) to communicate with separate language analysis processes (servers). Describe the benefits: decoupling language logic from the editor, reusability across editors, improved performance for complex analysis. Outline the basic architecture (client-side extension, server-side process, JSON-RPC communication)."
*   **Glossary Definition:** "<prompt>Define 'Language Server Protocol (LSP)'."
*   **Glossary Definition:** "<prompt>Define 'Language Client' and 'Language Server'."

### 1. LSP Client Implementation (`vscode-languageclient`)
"<prompt>Introduce the `vscode-languageclient` library, which simplifies implementing the client side of LSP in a VS Code extension. Explain its role in starting the language server process and proxying LSP requests/notifications between VS Code and the server."
*   **Code Example:** "<prompt>Show a conceptual TypeScript snippet demonstrating the basic setup of a `LanguageClient` within the extension's `activate` function, specifying the server module path and connection options."

### 2. LSP Server Implementation (Conceptual)
"<prompt>Briefly explain that the Language Server itself is a separate Node.js (or other language) process that implements the LSP specification, handling requests like `textDocument/completion`, `textDocument/hover`, `textDocument/definition`, etc., and sending notifications like `textDocument/publishDiagnostics`."
*   **Further Reading Links:** "<prompt>Provide links to the official LSP Specification website and the `vscode-languageclient` library documentation."

## B. Advanced Tree Views
"<prompt>Build upon the basic Tree View concept. Discuss more advanced features like actions/commands on tree items (in the title bar or context menu), dynamically updating the view (`onDidChangeTreeData` event), handling selection, and revealing specific items."

### 1. Tree Item Commands and Context Menus
"<prompt>Explain how to define commands associated with tree items using the `TreeItem.command` property and how to contribute context menus specific to tree items using `view/item/context` in `package.json` `contributes.menus`, often using `when` clauses based on `viewItem` context keys (e.g., `viewItem == 'myContextValue'`)."
*   **Example:** "<prompt>Show how to set a `contextValue` on a `TreeItem` and then reference it in a `when` clause for a `view/item/context` menu contribution in `package.json`."

### 2. Refreshing Tree View Data
"<prompt>Explain the need for an `EventEmitter` for the `onDidChangeTreeData` event in the `TreeDataProvider`. Show how to trigger this event (`fire()`) when the underlying data changes, causing VS Code to refresh the view by calling `getChildren` and `getTreeItem` again."
*   **Code Example:** "<prompt>Generate a TypeScript snippet showing the declaration of the `onDidChangeTreeData` event emitter and a method within the TreeDataProvider to `fire` the event."

## C. Custom Editors
"<prompt>Introduce the Custom Editor API, allowing extensions to provide entirely custom visual editors or read-only previews for specific file types instead of the standard text editor. Differentiate between Text-based Custom Editors (modify text model) and Binary Custom Editors (work with raw bytes, manage own data model)."

### 1. Contributing a Custom Editor
"<prompt>Explain the `contributes.customEditors` point in `package.json`, specifying the `viewType`, `displayName`, `selector` (file patterns), and `priority`."

### 2. Implementing a `CustomReadonlyEditorProvider` or `CustomTextEditorProvider`
"<prompt>Describe the core interfaces (`CustomReadonlyEditorProvider`, `CustomTextEditorProvider`) and the primary method (`resolveCustomEditor`) which is responsible for setting up the editor's UI (often using a Webview) and handling data synchronization."
*   **Code Example:** "<prompt>Show a very basic TypeScript skeleton for a class implementing `vscode.CustomReadonlyEditorProvider`, focusing on the `resolveCustomEditor` method signature."
*   **Further Reading Links:** "<prompt>Provide a link to the official VS Code Custom Editor API documentation."

## D. Source Control (SCM) Integration
"<prompt>Explain how extensions can integrate with VS Code's Source Control view. Introduce the `vscode.scm.createSourceControl` API to create a new SCM provider and the `SourceControl` and `SourceControlResourceGroup` objects for managing repositories and displaying changed resources."

### 1. Creating an SCM Provider
"<prompt>Show a basic TypeScript example of creating a `SourceControl` instance and potentially a resource group to display tracked changes."
*   **Code Example:** "<prompt>Generate a TypeScript snippet demonstrating the use of `vscode.scm.createSourceControl` within the `activate` function."

## E. Performance Optimization and Best Practices
"<prompt>Discuss common performance considerations for extensions: minimizing activation time (lazy activation), efficient event handling, avoiding blocking operations in the main thread (using `async`/`await`, workers), optimizing webview performance, and managing disposables correctly (`context.subscriptions`)."
*   **Key Point Highlight:** "<prompt>Emphasize the critical importance of using specific Activation Events instead of `*`."
*   **Key Point Highlight:** "<prompt>Stress the proper disposal of event listeners, commands, providers, etc., by adding them to `context.subscriptions` to prevent memory leaks."

## F. Web Extensions
"<prompt>Introduce Web Extensions, which are designed to run in browser-based environments like vscode.dev, github.dev, or other platforms supporting the VS Code web runtime. Explain the limitations (no Node.js APIs, no local file system access unless explicitly granted, no separate processes like language servers unless they are also web-compatible). Mention the `browser` entry point in `package.json`."
*   **Glossary Definition:** "<prompt>Define 'Web Extension' in VS Code."
*   **Further Reading Links:** "<prompt>Provide a link to the official VS Code documentation on Web Extensions."

*   **Quiz Question:** "<prompt>Generate a scenario-based question: You need to provide rich language intelligence (completion, diagnostics, find references) for a complex, proprietary language, and you want this logic to be potentially reusable in other editors. Which approach is most suitable? A) Implementing individual providers (`CompletionItemProvider`, etc.) directly in the VS Code extension. B) Using the Language Server Protocol (LSP) with a separate language server process. C) Building a Custom Editor. D) Using Webviews." (Answer: B)
*   **Reflective Prompt:** "<prompt>Ask the user to consider which of these advanced features (LSP, Custom Editors, SCM integration, Web Extensions) might be relevant for the type of extension they envision building."

*   **Section Summary:** "<prompt>Summarize the advanced topics covered, including the powerful LSP for language features, enhanced Tree Views, Custom Editors for unique file interactions, SCM integration, performance optimization strategies, and the considerations for building Web Extensions."
*   **Further Reading Links:** "<prompt>Provide links to the main documentation pages for LSP, Tree View API, Custom Editors, SCM API, Extension Guidelines (Performance), and Web Extensions."
*   **Section Transition:** "<prompt>Write a transition statement indicating that the final section covers the practical steps of packaging, publishing, and maintaining an extension on the VS Code Marketplace."

# VIII. Packaging, Publishing, and Maintenance

*   **Learning Objectives:** "<prompt>Generate a bulleted list of 4-5 learning objectives for the 'Packaging, Publishing, and Maintenance' section. Objectives should include preparing the extension for packaging, using `vsce` to package and publish, understanding the Marketplace requirements, versioning strategies, and general maintenance considerations."

## A. Preparing for Publication
"<prompt>Outline the necessary steps before packaging, including: finalizing the `package.json` (publisher name, proper naming, description, icon, repository link, license), creating a comprehensive README.md file, adding a license file (e.g., MIT), and potentially creating a CHANGELOG.md."

### 1. Finalizing `package.json` Details
"<prompt>Emphasize the importance of fields like `publisher` (needs to match your Marketplace publisher ID), `repository`, `icon`, and `categories` for discoverability."

### 2. Creating Essential Files (README, LICENSE, CHANGELOG)
"<prompt>Explain the purpose of `README.md` (Marketplace page content), `LICENSE` (legal terms), and `CHANGELOG.md` (tracking changes between versions)."

### 3. Ignoring Files (`.vscodeignore`)
"<prompt>Explain the role of the `.vscodeignore` file in preventing unnecessary files (e.g., source files if shipping compiled JS, test files, large assets not needed at runtime) from being included in the packaged `.vsix` file, reducing its size."
*   **Example:** "<prompt>Show an example `.vscodeignore` file listing common patterns like `node_modules`, `.git`, `src` (if compiling), `*.ts`, `*.map` (if not needed), etc."

## B. Packaging the Extension (`vsce package`)
"<prompt>Introduce the `vsce` (Visual Studio Code Extensions) command-line tool. Explain how to install it (`npm install -g @vscode/vsce`) and how to use the `vsce package` command to bundle the extension into a `.vsix` file."
*   **Glossary Definition:** "<prompt>Define 'vsce'."
*   **Glossary Definition:** "<prompt>Define '.vsix file'."

### 1. Running the Package Command
"<prompt>Provide the command `vsce package` and explain that it reads `package.json` and `.vscodeignore` to create the distributable file."

## C. Publishing to the VS Code Marketplace
"<prompt>Explain the process of publishing the `.vsix` file to the official VS Code Marketplace, making it available for others to install."

### 1. Creating a Publisher Account
"<prompt>Direct users to the Azure DevOps organization creation process required to obtain a Publisher ID."
*   **Further Reading Links:** "<prompt>Provide a link to the VS Code documentation page explaining how to create a publisher account."

### 2. Creating a Personal Access Token (PAT)
"<prompt>Explain the need for a Personal Access Token (PAT) from Azure DevOps with Marketplace permissions (`Manage`) for `vsce` to authenticate."
*   **Further Reading Links:** "<prompt>Provide a link to the VS Code documentation detailing PAT creation for publishing."

### 3. Logging in and Publishing (`vsce login`, `vsce publish`)
"<prompt>Show the commands `vsce login <publisher_name>` (to store the PAT) and `vsce publish` (to package if needed and upload the `.vsix` file). Mention the alternative `vsce publish -p <token>` for non-interactive environments."

## D. Versioning and Maintenance
"<prompt>Discuss the importance of semantic versioning (SemVer: MAJOR.MINOR.PATCH) for extensions. Explain how to increment the `version` field in `package.json` before publishing updates. Briefly cover handling issues reported on the repository, responding to reviews, and keeping dependencies updated."

### 1. Semantic Versioning (SemVer)
"<prompt>Briefly explain the MAJOR (breaking changes), MINOR (new features, backward-compatible), and PATCH (bug fixes, backward-compatible) increments."

### 2. Publishing Updates
"<prompt>Reiterate the process: 1. Update code. 2. Update `CHANGELOG.md`. 3. Increment `version` in `package.json`. 4. Run `vsce publish`."

### 3. Ongoing Maintenance
"<prompt>Mention monitoring the linked GitHub repository issues (if applicable), responding to Marketplace reviews, and periodically updating Node.js dependencies (`npm update`) and testing compatibility with new VS Code versions."

*   **Quiz Question:** "<prompt>Generate a multiple-choice question: Which command-line tool is used to package and publish VS Code extensions? A) `npm` B) `yo code` C) `tsc` D) `vsce`" (Answer: D)
*   **Reflective Prompt:** "<prompt>Ask the user to think about the information they would include in their extension's README.md file to attract users and clearly explain its functionality."

*   **Section Summary:** "<prompt>Summarize the lifecycle stages after development: preparing the extension with necessary metadata and files, packaging it into a `.vsix` file using `vsce`, publishing it to the Marketplace using a publisher ID and PAT, and the ongoing process of versioning and maintenance."
*   **Further Reading Links:** "<prompt>Provide links to the official VS Code documentation for 'Publishing Extensions' and 'Extension Manifest' (revisiting fields relevant to publishing)."
*   **Course Conclusion Prompt:** "<prompt>Write a brief concluding statement encouraging the learner to apply the knowledge gained to build and share their own VS Code extensions."
