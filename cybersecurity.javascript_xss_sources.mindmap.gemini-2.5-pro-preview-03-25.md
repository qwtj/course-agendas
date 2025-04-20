# Javascript XSS Sources #XSS #JavaScript #Security
Overview of potential entry points for Cross-Site Scripting (XSS) within JavaScript code and execution contexts. XSS vulnerabilities arise when untrusted input is processed by an application and sent to the browser without proper validation or encoding, allowing malicious scripts to be executed.

## Introduction to Cross-Site Scripting (XSS) #Basics #Vulnerability #Theory
Explanation of XSS fundamentals and its relevance to JavaScript.
XSS allows attackers to inject malicious scripts (usually JavaScript) into web pages viewed by others. This can lead to session hijacking, data theft, defacement, or redirection to malicious sites.

### What is XSS? #Definition #Threat
Cross-Site Scripting enables attackers to inject client-side scripts into web pages. It exploits the application's handling of user input.

### Why Focus on JavaScript Sources? #Context #Importance
JavaScript is the primary target and vector for XSS because it's the language executed by browsers to manipulate web pages dynamically. Vulnerabilities often stem from how JavaScript handles data from various sources.

### Types of XSS Attacks #Classification #XSSTypes
Brief overview of the main XSS categories.
*   **Reflected XSS (Non-Persistent):** Malicious script comes from the current HTTP request (e.g., URL parameter). It's reflected off the web server to the victim's browser. Requires tricking the user into clicking a malicious link.
*   **Stored XSS (Persistent):** Malicious script is permanently stored on the target server (e.g., database, comment field). It's served to users browsing the stored content. Considered more severe.
*   **DOM-based XSS:** The vulnerability lies purely in client-side code. Untrusted data alters the Document Object Model (DOM) and is executed by a script on the page. The payload might never reach the server.

## DOM-based XSS Sources #DOM #ClientSide #Sources
Focuses on JavaScript properties and methods that read from the DOM and can be controlled by attackers. DOM XSS occurs when JavaScript takes data from a controllable source and passes it to a dangerous sink.

### URL-based Sources #URL #Location #BrowserAPI
Data derived directly from the URL. Often used in DOM XSS attacks.
*   `document.URL` #Property #DOMAPI
Reading the full URL.
*   `document.documentURI` #Property #DOMAPI
Similar to `document.URL`.
*   `location` Object #Object #BrowserAPI
Properties of the `window.location` object.
    *   `location.href` #Property #Navigation
The entire URL. Can be both a source and a sink.
    *   `location.search` #Property #QueryString
The query string part of the URL (including '?').
    *   `location.hash` #Property #Fragment
The fragment identifier part of the URL (including '#').
    *   `location.pathname` #Property #Path
The path part of the URL.
*   `document.referrer` #Property #HTTPHeader
The URL of the referring page. Can be manipulated in some scenarios.

### Other DOM Sources #DOM #Data #BrowserAPI
Other DOM properties accessible to JavaScript.
*   `window.name` #Property #WindowObject
Can store data across navigations within the same tab. Can be manipulated by an attacker if they control a page loaded earlier in the same tab.
*   Data from Storage #WebStorage #Persistence
    *   `localStorage` / `sessionStorage` #API #Storage
If attacker-controlled data is stored and later read unsafely.
    *   `document.cookie` #Cookies #StateManagement
Reading cookie values that might be injectable.

### Sinks Leading to DOM XSS #Sinks #Execution #Injection
Functions or properties that, when fed untrusted data from a source, can lead to script execution.
*   Direct Code Execution #ExecutionSink #DangerousFunctions
    *   `eval()` #Function #CodeExecution
Executes a string as JavaScript code.
    *   `Function()` constructor #Constructor #CodeExecution
Creates a new function from a string of code.
    *   `setTimeout(code, delay)` #Timer #CodeExecution
Executes a string `code` after `delay` milliseconds.
    *   `setInterval(code, delay)` #Timer #CodeExecution
Executes a string `code` repeatedly every `delay` milliseconds.
*   HTML/DOM Manipulation #HTMLSink #DOMManipulation
    *   `element.innerHTML` #Property #HTMLInjection
Parses and inserts HTML content. Scripts can be executed.
    *   `element.outerHTML` #Property #HTMLInjection
Replaces the element and its content with parsed HTML.
    *   `document.write()` #Method #DocumentWrite
Writes directly to the document stream during page load.
    *   `document.writeln()` #Method #DocumentWrite
Similar to `document.write()`, adds a newline.
    *   jQuery `html()` / `append()` / `prepend()` etc. #jQuery #LibrarySink
Methods that parse and insert HTML content.
*   URL/Navigation Sinks #NavigationSink #URLManipulation
    *   `location.href = userInput` #Assignment #Redirect
Navigating based on user input can lead to `javascript:` URL execution.
    *   `location = userInput` #Assignment #Redirect
Similar to assigning to `location.href`.
    *   `location.assign(userInput)` #Method #Redirect
Navigates to the given URL.
    *   `location.replace(userInput)` #Method #Redirect
Replaces the current page in history and navigates.
    *   `<a href="userInput">` #Attribute #Hyperlink
Setting `href` attributes dynamically.
    *   `window.open(userInput)` #Method #WindowManagement
Opening new windows with potentially malicious URLs.

## Reflected & Stored XSS (JavaScript Context) #ServerSide #Reflection #Persistence
How server-side code can reflect or store user input in a way that it gets executed as JavaScript on the client side.

### Server-Side Rendering into JavaScript Blocks #ServerRendering #ScriptBlock
Injecting data directly into `<script>` tags.
*   Assigning to JavaScript Variables #VariableAssignment #Injection
Example: `var userData = <?= $unsanitized_user_input ?>;`
*   Inside String Literals #StringInjection #EscapeBypass
Breaking out of strings to inject code. Example: `var username = '<?= $username ?>'; alert(1); //';`
*   Direct Code Output #CodeOutput #ServerLogic
Server directly outputs user input as executable code.

### Server-Side Rendering into HTML Event Handlers #EventHandler #HTMLAttributes
Injecting data into attributes like `onclick`, `onerror`, `onload`, etc.
*   `onclick="...<?= $unsanitized_input ?>..."` #AttributeInjection #EventHandling
*   `onerror="...<?= $unsanitized_input ?>..."` #AttributeInjection #ErrorHandling
*   `onload="...<?= $unsanitized_input ?>..."` #AttributeInjection #LoadEvent

### Server-Side Rendering into `javascript:` URLs #JavascriptURL #ProtocolHandler
Injecting data into attributes that accept URLs, using the `javascript:` protocol.
*   `<a href="javascript:<?= $unsanitized_input ?>">` #Hyperlink #URLScheme
*   `<img src="javascript:<?= $unsanitized_input ?>">` #Image #URLScheme

## JavaScript Frameworks and Libraries #Frameworks #Libraries #SPA
Vulnerabilities specific to popular client-side frameworks and libraries. While frameworks often provide protection, misuse can lead to XSS.

### React #ReactJS #FrontendFramework
*   `dangerouslySetInnerHTML` #Property #HTMLInjection
Explicitly designed for inserting raw HTML; requires careful sanitization if used with untrusted input.
*   Direct DOM manipulation #DOMAccess #AntiPattern
Bypassing React's rendering (e.g., via `refs`) to manipulate the DOM directly.
*   URL-based vulnerabilities #Routing #URLScheme
Injecting `javascript:` URLs into links or component props.
*   Server-Side Rendering (SSR) Hydration Issues #SSR #HydrationMismatch

### Angular #AngularJS #Angular #FrontendFramework
*   `[innerHTML]` binding #Binding #HTMLInjection
Binding untrusted HTML content. Angular attempts sanitization but can be bypassed or disabled.
*   `bypassSecurityTrustHtml()` / `bypassSecurityTrustScript()` etc. #SecurityAPI #Bypass
Explicitly trusting content, bypassing Angular's built-in sanitization.
*   Template Injection #Templating #ServerSideAngular
If server-side templating mixes with Angular client-side templates incorrectly.
*   Older AngularJS ($sce) #AngularJS1 #Legacy
Security Context Enforcement (SCE) and potential bypasses.

### Vue.js #VueJS #FrontendFramework
*   `v-html` directive #Directive #HTMLInjection
Similar to `dangerouslySetInnerHTML`, inserts raw HTML.
*   URL bindings (`:href`, `:src`) #Binding #URLScheme
Binding `javascript:` URLs. Vue attempts to prevent this but context matters.
*   Server-Side Rendering (SSR) Issues #SSR #VueSSR
Vulnerabilities related to state hydration or template rendering on the server.

### jQuery #jQuery #JavaScriptLibrary
*   `$()` / `jQuery()` selector #Selector #DOMManipulation
Using HTML strings in selectors can lead to execution if untrusted input is included.
*   `.html()`, `.append()`, `.prepend()`, etc. #Method #HTMLInjection
Methods that parse and insert HTML strings.
*   Attribute manipulation (`.attr()`) #Method #AttributeInjection
Setting event handlers or `href`/`src` with untrusted data.

## Third-Party JavaScript #ThirdParty #ExternalScripts #SupplyChain
Risks introduced by including scripts from external sources.
*   Trusting External Providers #Trust #VendorRisk
Malicious code injected by the provider or via compromise of the provider.
*   Supply Chain Attacks #Compromise #CDN
External script source (e.g., CDN, Tag Manager) gets compromised.
*   Lack of Subresource Integrity (SRI) #SRI #IntegrityCheck
Failure to use SRI allows loading of modified scripts if the source is compromised.

## Web APIs and Interfaces #WebAPI #BrowserInterface #Communication
Sources related to newer browser APIs.
*   `postMessage()` API #Messaging #CrossWindow
Insufficient origin validation on the receiving end allows messages from untrusted origins to be processed unsafely.
*   WebSockets #WebSocket #RealTime
Receiving untrusted data via WebSockets and processing it unsafely (e.g., writing to DOM).
*   Server-Sent Events (SSE) #SSE #RealTime
Similar to WebSockets, processing untrusted server-sent data unsafely.
*   Service Workers #ServiceWorker #Offline #Proxy
Potential for intercepting and modifying responses if the worker script itself is compromised or handles data unsafely.

## Data Handling and Serialization #DataFormat #Serialization #Parsing
Issues related to processing structured data.
*   JSON / `JSON.parse()` #JSON #Parsing
Parsing JSON that contains strings intended for direct use in sensitive sinks (though `JSON.parse` itself is generally safe, the *use* of parsed data can be unsafe).
*   Unsafe Deserialization (Less Common in Frontend JS) #Deserialization #ObjectInjection
If complex objects are serialized/deserialized unsafely, potentially leading to prototype pollution or other issues that could facilitate XSS.

## Server-Side JavaScript (Node.js) #NodeJS #ServerSideJS #Backend
XSS vulnerabilities originating from server-side JavaScript environments.
*   Template Engines #Templating #SSR #NodeJS
Improper escaping in server-side template engines (EJS, Handlebars, Pug, etc.).
*   Direct Response Writing #HTTPResponse #NodeAPI
Using `res.write()` or `res.send()` with unsanitized user input in an HTML context.
*   Server-Side DOM Manipulation Libraries #JSDOM #Cheerio #NodeLibrary
Using libraries like JSDOM or Cheerio on the server to manipulate HTML with user input without proper sanitization before sending to the client.

## Mitigation Bypass Techniques #Bypass #Evasion #Filtering
Methods attackers use to circumvent filters and sanitizers.
*   Encoding #Encoding #Obfuscation
Using HTML entities, URL encoding, Hex, Base64, etc., to hide payloads.
*   Case Variation #CaseSensitivity #FilterBypass
Using mixed case (e.g., `<ScRiPt>`) to bypass case-sensitive filters.
*   Event Handler Obfuscation #Events #Obfuscation
Using less common event handlers or creative syntax.
*   JavaScript String Manipulation #StringMethods #PayloadGeneration
Using functions like `String.fromCharCode()` to build payloads.
*   Mutation XSS (mXSS) #mXSS #DOMMutation
Exploiting differences in how browsers parse invalid or complex HTML, causing the DOM to be modified in unexpected ways that enable script execution after sanitization.
*   Using `javascript:` Pseudo-Protocol in Unexpected Places #URLScheme #AttributeInjection

## Detection and Analysis Tools #Tools #Testing #Analysis
Methods and tools for identifying JavaScript XSS sources.
*   Static Analysis Security Testing (SAST) #SAST #CodeReview
Analyzing source code without executing it to find potential source-to-sink flows.
*   Dynamic Analysis Security Testing (DAST) #DAST #RuntimeAnalysis
Testing the running application by sending payloads and observing responses/behavior. Burp Suite Scanner is a common tool.
*   Manual Code Review #CodeAudit #HumanAnalysis
Carefully examining JavaScript code, especially areas handling user input or manipulating the DOM.
*   Browser Developer Tools #DevTools #Debugging #Inspection
Using the browser's built-in tools to inspect the DOM, debug JavaScript, and trace data flow. Searching the DOM for test strings is key for DOM XSS.
*   Specialized Tools (e.g., DOM Invader) #BurpSuite #DOMTesting
Browser extensions or tools specifically designed to find DOM XSS vulnerabilities.
