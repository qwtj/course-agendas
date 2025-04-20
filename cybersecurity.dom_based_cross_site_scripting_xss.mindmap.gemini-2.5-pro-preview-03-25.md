# DOM-based Cross-Site Scripting (XSS) #Vulnerability #WebSecurity #JavaScript
Overview of DOM XSS, a client-side XSS vulnerability where attacker-controlled data modifies the Document Object Model (DOM) environment in the victim's browser, causing script execution.

## Introduction & Fundamentals #Basics #Concepts #Overview
Core concepts required to understand DOM XSS and its distinction from other XSS types.

### Definition of DOM XSS #Definition #ClientSide
Explanation of DOM XSS: Payload executes as a result of modifying the DOM environment in the victim's browser. The client-side script writes attacker-controlled data to the DOM.

### Comparison with Reflected & Stored XSS #Classification #XSS_Types
Differences in payload delivery, execution trigger, and server-side involvement compared to server-side XSS vulnerabilities.
- **Reflected XSS:** Payload injected via request, reflected in response, executed by browser. Server processes malicious data.
- **Stored XSS:** Payload stored on server (e.g., database), delivered to users browsing the site. Server stores malicious data.
- **DOM XSS:** Vulnerability lies entirely in client-side code. Payload might never reach the server.

### Client-Side Execution Context #JavaScript #Browser
Emphasizes that DOM XSS occurs entirely within the user's browser due to vulnerable client-side scripts processing data unsafely.

### The Role of the Browser DOM #DOM #CoreConcept
How the DOM represents the web page structure and how manipulating it via JavaScript can lead to code execution.

## Core Concepts & Mechanisms #Theory #HowItWorks #Internals
Fundamental building blocks and processes involved in DOM XSS attacks.

### Document Object Model (DOM) #DOM #API #Structure
Representation of the HTML/XML document as a tree structure; accessible and modifiable via scripting languages like JavaScript.

### JavaScript Execution Flow #JavaScript #Execution
How browsers parse HTML, build the DOM, and execute embedded or linked JavaScript.

### Sources (Data Entry Points) #Source #UserInput #TaintOrigin
Locations where untrusted data enters the client-side JavaScript code. Data from a source is considered "tainted".

### Sinks (Execution Points) #Sink #Execution #VulnerableFunction
JavaScript functions or DOM properties that can cause script execution or modify the page unsafely if they process tainted data without proper handling.

### Data Flow Analysis (Taint Tracking) #Analysis #TaintTracking
The process of tracking tainted data from its source to a potential sink to identify vulnerabilities.

## Common Sources of Tainted Data #Source #DataInput #Examples
Specific browser objects and APIs often used as entry points for malicious data in DOM XSS.

### URL Components (`location.*`) #URL #LocationObject
Properties like `location.href`, `location.search`, `location.hash`, `location.pathname`. URL fragments (`location.hash`) are common vectors as they aren't sent to the server.

### Navigation Properties (`document.referrer`, `window.name`) #Navigation #Document #Window
Information related to navigation history or window properties that might be controllable.

### Storage Mechanisms (`localStorage`, `sessionStorage`, `cookies`) #Storage #HTML5
Client-side storage that can potentially store tainted data processed later by vulnerable scripts. `document.cookie` can also be a source.

### Communication APIs (`postMessage`) #API #Communication #WebMessaging
Data received via cross-origin communication might be tainted if not validated properly.

### User Input Elements (Forms) #Forms #UserInput
Data entered into form fields can be processed client-side and potentially lead to DOM XSS if handled insecurely by JavaScript *before* submission or without server interaction.

## Common Dangerous Sinks #Sink #Vulnerability #ExecutionPoints
JavaScript functions and DOM properties frequently involved in executing malicious scripts or performing unsafe actions when processing tainted data.

### Direct HTML Manipulation (`innerHTML`, `outerHTML`, `document.write`) #HTMLManipulation #DOMModification
Writing raw HTML strings containing tainted data directly into the DOM. `document.write` is particularly dangerous during page load.

### Script Execution (`eval()`, `setTimeout()`, `setInterval()`, `Function()`) #ScriptExecution #CodeInjection
Functions that explicitly execute strings as code. Tainted data passed to these can lead to arbitrary script execution.

### URL/Location Manipulation (`location.href`, `location.assign`, `location.replace`, `<a>.href`) #URLManipulation #Redirection #JavaScriptURI
Assigning tainted data to properties that change the browser's location, especially using `javascript:` URIs.

### DOM Event Handlers (`setAttribute('onclick', ...)` , `element.onclick = ...`) #Events #EventHandlers
Setting event handlers using strings derived from tainted data.

### JQuery Sinks (`$(selector).html()`, `$(selector).append()`, `$.parseHTML()`, `$()` selector injection) #JQuery #FrameworkSinks
Common jQuery methods that can act as sinks if used with untrusted data. Selector injection is also a related risk.

## Attack Vectors & Techniques #Exploitation #Methods #Payloads
Specific methods and scenarios used by attackers to exploit DOM XSS vulnerabilities.

### URL Fragment Exploitation (`#`) #URLFragment #Hash #ClientOnly
Using the hash part of the URL to deliver payloads, often effective as fragments are not sent to the server. Example: `www.site.com/page#<img src=x onerror=alert(1)>`

### Query Parameter Manipulation (`?`) #URLQuery #Parameters
Using query parameters when client-side scripts read them directly (e.g., via `location.search`).

### Exploiting `document.write` Sinks #DocumentWrite #SinkExploit
Injecting scripts via sources processed by `document.write`.

### Exploiting `innerHTML` / `outerHTML` Sinks #InnerHTML #SinkExploit
Injecting HTML/Script content via sources processed by `innerHTML` or `outerHTML`.

### Exploiting `eval()` and related function Sinks #Eval #SinkExploit #CodeExecution
Crafting sources that become executable code when passed to sinks like `eval()`.

### Leveraging JavaScript Frameworks (AngularJS, React, Vue) #Frameworks #SPA #ClientSideRendering
Exploiting framework-specific functions or patterns that might act as sinks, especially in older versions or with insecure usage (e.g., AngularJS template injection).

### HTML5 APIs (`postMessage`, Web Storage) #HTML5 #APIExploits
Manipulating data flow through modern APIs to reach vulnerable sinks.

### Mutation XSS (mXSS) #mXSS #Advanced #DOMMutation
Exploiting differences in how browsers parse and modify HTML, where the DOM structure changes *after* initial sanitization, introducing executable script.

## Detection & Analysis Methods #FindingVulnerabilities #Testing #SecurityAudit
Techniques and tools used to identify DOM XSS flaws in web applications.

### Manual Code Review #CodeReview #ManualTesting #WhiteBox
Reading the client-side JavaScript code to trace data flow from potential sources to dangerous sinks.

### Static Analysis Security Testing (SAST) #SAST #AutomatedTesting #CodeAnalysis
Using automated tools to analyze source code for patterns indicating potential source-to-sink flows. Often has limitations with complex JavaScript.

### Dynamic Analysis Security Testing (DAST) #DAST #AutomatedTesting #BlackBox
Using automated scanners that interact with the web application, providing payloads to sources and monitoring the DOM and JavaScript execution for signs of XSS.

### Interactive Application Security Testing (IAST) #IAST #HybridTesting #Instrumentation
Combines SAST and DAST elements, often using instrumentation during runtime to track data flows more accurately.

### Browser Developer Tools #DevTools #Debugging #ManualTesting
Using built-in browser tools (Debugger, DOM Inspector, Console) to trace script execution, inspect DOM changes, and test payloads manually.

### Fuzzing Techniques #Fuzzing #AutomatedTesting
Sending large amounts of varied, semi-random data to potential sources to uncover unexpected behaviour or vulnerabilities.

### Automated Scanners & Linters #Tools #Scanners #Linters
Specialized tools (e.g., Burp Suite Scanner, OWASP ZAP, ESLint security plugins) designed to automatically detect potential DOM XSS issues.

## Prevention & Mitigation Strategies #Defense #SecureCoding #Countermeasures
Techniques and best practices to prevent or reduce the impact of DOM XSS vulnerabilities.

### Secure Coding Practices #BestPractices #Development
General principles like treating all client-side data as untrusted, preferring safer methods over dangerous ones.

### Context-Aware Output Encoding/Escaping #Encoding #Escaping #OutputHandling
Applying the correct encoding (HTML, JavaScript string, URL, etc.) depending on the context where data is inserted into the DOM or scripts. **Crucial for sinks like `innerHTML`.**

### Input Sanitization vs. Validation #Sanitization #Validation #InputHandling
Sanitization aims to clean potentially malicious data. Validation checks if data conforms to expected formats. Sanitization is generally preferred for XSS prevention, especially for sinks. Use trusted libraries.

### Avoiding Dangerous Sinks #SecureAPI #SafeFunctions
Preferring safer alternatives to dangerous sinks (e.g., using `textContent` instead of `innerHTML`, avoiding `eval()`).

### Using Safe APIs and Frameworks #Frameworks #Libraries #SecurityFeatures
Leveraging built-in security features of modern web frameworks (React, Angular, Vue) that often handle DOM manipulation safely (e.g., data binding with automatic encoding). Using safe DOM manipulation APIs like `createElement`, `createTextNode`, `setAttribute` (carefully).

### Content Security Policy (CSP) #CSP #HTTPHeader #DefenseInDepth
A browser security mechanism (delivered via HTTP header) that restricts sources of executable scripts, styles, and other resources, significantly mitigating XSS impact even if a vulnerability exists. `script-src`, `object-src`, `base-uri` directives are key.

### Trusted Types #TrustedTypes #API #Mitigation
An emerging browser API designed to prevent DOM XSS by enforcing type checking on values passed to dangerous sinks, requiring explicit creation of "trusted" objects.

### HTTPOnly Cookies (Indirect Mitigation) #Cookies #HTTPOnly
Prevents client-side scripts from accessing sensitive cookies, reducing the impact of session hijacking via XSS. Does not prevent DOM XSS itself.

### SameSite Cookies (Indirect Mitigation) #Cookies #SameSite
Helps mitigate cross-site request forgery (CSRF) and leakage of session identifiers, indirectly reducing opportunities for some XSS-driven attacks.

## Tools & Resources #Software #Utilities #Learning
Specific tools and platforms helpful for detecting, analyzing, or learning about DOM XSS.

### Browser Extensions (DOM Invader, Detect DOM XSS) #Tools #BrowserExtension #Testing
Extensions specifically designed to help find and test DOM XSS vulnerabilities during manual testing. (e.g., Burp Suite's DOM Invader).

### Security Scanners (Burp Suite, OWASP ZAP) #Tools #Scanners #DAST
Comprehensive web vulnerability scanners with capabilities to detect various XSS types, including DOM XSS.

### Linters & SAST Tools (ESLint security plugins, Semgrep) #Tools #SAST #CodeAnalysis
Static analysis tools that can be integrated into development workflows to identify potentially vulnerable code patterns.

### Online Labs & Training (PortSwigger Web Security Academy, OWASP Juice Shop, Google Gruyere) #Training #Learning #Labs
Platforms offering hands-on exercises and explanations of web vulnerabilities, including DOM XSS.

## Impact & Consequences #Risk #Threats #Damage
The potential negative outcomes resulting from successful DOM XSS exploitation.

### Session Hijacking #SessionTheft #Authentication
Stealing session cookies or tokens to impersonate the victim.

### Credential Theft #Phishing #PasswordStealing
Injecting fake login forms or capturing keystrokes to steal passwords.

### Data Exfiltration #DataLeakage #PrivacyViolation
Stealing sensitive information displayed on the page or stored in JavaScript variables/client-side storage.

### Website Defacement #Vandalism #ReputationDamage
Modifying the visual appearance of the website.

### Malware Distribution #Malware #DriveByDownload
Redirecting users to malicious websites or forcing downloads.

### Phishing Attacks #Phishing #SocialEngineering
Injecting deceptive content or forms to trick users into revealing sensitive information.

### Keystroke Logging #Keylogging #Spying
Capturing everything the user types on the affected page.

### Client-Side Request Forgery (CSRF) #CSRF #ActionHijacking
Forcing the user's browser to perform unintended actions on the site.

## Advanced Topics & Edge Cases #Advanced #Complex #Nuances
More complex scenarios, sophisticated techniques, and related vulnerabilities.

### Mutation XSS (mXSS) #mXSS #BrowserQuirks #DOMParsing
Exploiting browser inconsistencies in parsing and re-serializing HTML, causing sanitization to fail.

### Polyglot Payloads #Payloads #Bypass #MultiContext
Crafting XSS payloads that are valid and executable in multiple contexts (e.g., HTML, JavaScript string, URL).

### DOM Clobbering #DOMClobbering #NamespaceCollision #Overwrite
Injecting HTML elements (like forms or anchors with specific `id` or `name` attributes) to overwrite global JavaScript variables or DOM properties, potentially bypassing security checks or enabling script execution.

### Bypassing Filters & WAFs #Evasion #WAFBypass #FilterBypass
Techniques used to circumvent security filters, sanitizers, or Web Application Firewalls (WAFs) intended to block XSS payloads.

### Framework-Specific Vulnerabilities #Frameworks #SPA #LibraryIssues
DOM XSS issues unique to specific JavaScript frameworks or libraries (e.g., old AngularJS template injection, React `dangerouslySetInnerHTML` misuse).

### Service Workers and XSS #ServiceWorkers #PWA #AttackSurface
Potential for XSS within service worker scripts or exploitation of service workers to persist XSS attacks.

## Real-World Examples & Case Studies #Examples #CaseStudies #History
Illustrative examples of DOM XSS vulnerabilities found in practice.

### Vulnerabilities in Single Page Applications (SPAs) #SPA #ClientSideRouting
Common occurrences in SPAs where routing and content rendering are handled client-side, increasing reliance on JavaScript and susceptibility to DOM XSS if not careful.

### Exploits in Popular Websites/Libraries #RealWorld #Incidents
Documented cases of DOM XSS found in major websites, frameworks, or widely used JavaScript libraries.

### Historical Examples #History #VulnerabilityReports
Notable past DOM XSS vulnerabilities and their impact.
