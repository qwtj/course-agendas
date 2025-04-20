# CSS Security #Overview #WebSecurity

This mind map outlines the key areas, vulnerabilities, mitigation techniques, and best practices related to Cascading Style Sheets (CSS) security in web development. It covers how CSS can be exploited and how to defend against such attacks.

## Introduction and Fundamentals #Basics #Concepts
Introduction to the role of CSS in web applications and the potential security implications.
### What is CSS Security? #Definition #Scope
Understanding that CSS, while primarily for styling, can be a vector for attacks or contribute to vulnerabilities if not handled carefully.
### Why is CSS Security Important? #Risk #Impact
Discusses the potential impact of CSS vulnerabilities, such as data theft, user tracking, UI manipulation, and contributing to XSS attacks. [3, 21]
### Relationship with HTML and JavaScript #Interactions #WebPlatform
How CSS interacts with HTML structure and JavaScript behavior, and how these interactions can create security risks.

## Core CSS Vulnerabilities and Attack Vectors #Threats #Exploits
Major categories of attacks that leverage CSS or CSS injection.
### CSS Injection #Injection #Vulnerability
The ability for an attacker to inject arbitrary CSS code into a web page, potentially altering appearance, executing scripts (in older browsers or specific contexts), or exfiltrating data. [1, 18]
#### Reflected CSS Injection #Exploit #NonPersistent
CSS injection where the malicious style rules are reflected from a user request (e.g., URL parameter) back to the user. [12]
#### Stored CSS Injection #Exploit #Persistent
CSS injection where the malicious style rules are stored persistently on the server (e.g., in user profiles, comments) and served to other users. [2]
### Cross-Site Scripting (XSS) via CSS #XSS #Exploit
Scenarios where CSS injection can lead to JavaScript execution.
#### `expression()` in Older IE #Legacy #IE #JavaScript
Exploiting the proprietary `expression()` function in older Internet Explorer versions to execute JavaScript via CSS. [11, 12, 23]
#### `url('javascript:...')` #Legacy #JavaScript
Using `javascript:` URIs within CSS properties like `background-image` (largely mitigated in modern browsers). [11, 23]
#### `-moz-binding` (Older Firefox) #Legacy #Firefox
Exploiting XBL bindings in older Firefox versions. [11]
#### HTML Components (.htc) #Legacy #IE
Loading executable `.htc` files via the `behavior` property in IE. [23]
### Side-Channel Attacks #TimingAttack #InformationLeak
Attacks that infer information based on timing differences or other indirect observations related to CSS processing.
#### Timing Attacks #Exploit #Performance
Measuring the time it takes for certain CSS rules or rendering operations to apply, potentially leaking information. [19, 20]
#### CSS Blend Modes Leaks #Exploit #Rendering
Exploiting features like `mix-blend-mode` to infer visual content from cross-origin sources. [32]
#### Browser Cache Timing #Exploit #Cache
Using timing differences related to resource loading (e.g., fonts, images) to infer state or history. [5, 20]

## Data Exfiltration Techniques #DataLeak #Exfiltration #CSSExfil
Methods attackers use to steal data from a web page using only CSS. [2, 10, 21, 27]
### Attribute Selector Exfiltration #Selectors #Attributes
Using CSS attribute selectors (`[attribute^="value"]`, `[attribute$="value"]`, `[attribute*="value"]`) combined with properties loading external resources (`background-image: url(...)`) to leak attribute values (e.g., CSRF tokens, usernames, parts of passwords) character by character. [1, 2, 10, 18, 27]
### Font Loading Exfiltration #Fonts #Timing
Using `@font-face` and `unicode-range` to selectively load external font files based on characters present on the page, leaking text content. [10]
### Scrollbar Detection #Layout #Scrollbars
Inferring content presence or length by detecting the appearance/disappearance of scrollbars based on conditional CSS rules. [10]
### `:has()` Selector Exfiltration (Blind CSS Exfil) #Selectors #ModernCSS
Leveraging the `:has()` selector, often combined with CSS variables, to exfiltrate data even from unknown HTML structures. [27]
### Scroll-to-Text Fragment (STTF) Exfiltration #BrowserFeature #Leak
Using the STTF browser feature combined with CSS (`::target-text`) to leak whether specific text fragments exist on a page. [10]

## UI Redressing and Clickjacking #UIHijacking #Clickjacking
Attacks that manipulate the user interface visually to trick users into performing unintended actions. [24, 28, 29]
### Basic Clickjacking via iFrames #iFrame #Overlay
Overlaying an invisible `iframe` containing a target site over a deceptive UI, tricking users into clicking elements on the hidden target site. [24, 28]
### CSS-Based UI Manipulation #Styling #Deception
Using injected CSS to radically alter the appearance of a legitimate page, hiding/moving elements to trick users into unintended interactions (without iframes). [26, 28]
#### Opacity and Positioning #CSSProperties #Trick
Using CSS properties like `opacity: 0`, `z-index`, and `position` to make the malicious overlay invisible or blend in. [24, 28]
#### Keystroke Hijacking #Input #PasswordTheft
Using carefully styled iframes and text boxes to trick users into typing credentials into a hidden attacker-controlled input field. [29]

## Browser History Sniffing #Privacy #Tracking
Techniques using CSS to determine which websites a user has previously visited. [5, 6, 7]
### `:visited` Selector Abuse #PseudoClass #Leak
Exploiting the styling differences applied by the `:visited` pseudo-class to links. [5, 6, 7]
#### Classic Timing Attacks #Timing #Legacy
Measuring the time taken to render or compute styles for visited vs. unvisited links (largely mitigated). [5, 7]
#### Color-Based Detection #Color #Legacy
Querying the computed color of links using JavaScript (mitigated in modern browsers). [6, 7]
#### Modern Bypass Techniques #Exploit #Advanced
Newer techniques exploiting subtle timing differences, paint APIs, or bytecode caching to bypass standard mitigations. [5, 7, 20]
#### Interaction-Based Sniffing #UserInteraction #Trick
Tricking users into interacting (e.g., clicking) in ways that reveal visited status through visual changes only possible with `:visited`. [5, 6]

## Mitigation and Defense Mechanisms #Prevention #Countermeasures
General strategies and specific technologies to prevent or mitigate CSS-related attacks.
### Input Sanitization #Validation #Sanitization
Properly validating and sanitizing any user-provided input that might be used in CSS contexts (e.g., inline styles, style blocks, CSS variables). [3, 21, 31, 37]
#### Context-Aware Escaping #Escaping #OutputEncoding
Ensuring that output encoding is appropriate for the specific CSS context where data is being placed. [37]
#### Avoiding Unsafe Sinks #CodePractice #Security
Avoiding direct insertion of untrusted data into sensitive CSS properties or functions like `element.style.cssText`. [1, 18]
### Output Encoding #Encoding #Security
Applying appropriate encoding for data placed within CSS contexts.
### Content Security Policy (CSP) #CSP #HttpHeaders
Using the `Content-Security-Policy` HTTP header to restrict resource loading and execution. [39, 40, 43, 46]
#### `style-src` Directive #CSPDirective #Styles
Restricting sources for stylesheets, including inline styles (`<style>` tags and `style` attributes). [39, 46]
#### `script-src` Directive #CSPDirective #Scripts
Restricting sources for scripts (relevant when CSS injection aims for XSS). [39, 40]
#### `'unsafe-inline'` and `'unsafe-eval'` #CSPKeywords #Risk
Understanding the risks of allowing inline styles/scripts and dynamic code evaluation (`eval`). [40]
#### Nonces and Hashes #CSPMechanism #InlineCode
Using nonces or hashes to allow specific inline scripts or styles without enabling `'unsafe-inline'`. [43, 47]
#### `frame-ancestors` Directive #CSPDirective #Clickjacking
Preventing clickjacking by controlling which sites can embed the page in an iframe. [26, 39]
#### `object-src` Directive #CSPDirective #Plugins
Restricting sources for plugins like Flash (`<object>`, `<embed>`). [47]
#### `base-uri` Directive #CSPDirective #BaseTag
Preventing attackers from changing base URLs via injected `<base>` tags. [47]
#### `strict-dynamic` #CSPKeyword #TrustedScripts
Allowing scripts loaded by a trusted script to load further dependencies, simplifying deployment. [47]
### HTTP Headers for Security #HttpHeaders #Defense
Other relevant HTTP headers.
#### `X-Frame-Options` #Header #Clickjacking
Legacy header to prevent clickjacking (superseded by CSP `frame-ancestors` but still useful for older browsers). [26]
#### `X-Content-Type-Options: nosniff` #Header #MIME
Preventing browsers from MIME-sniffing responses away from the declared content type, which can mitigate certain CSS-related XSS vectors.
### Browser-Level Protections #BrowserSecurity #BuiltIn
Security features implemented directly within web browsers.
#### Same-Origin Policy (SOP) #SOP #CoreSecurity
Fundamental browser security model restricting how documents/scripts from one origin can interact with resources from another.
#### CORS (Cross-Origin Resource Sharing) #CORS #DataAccess
Mechanism allowing controlled access to resources located outside of a given domain (relevant for some data leakage scenarios).
#### :visited Link Mitigation #Privacy #HistorySniffing
Browser attempts to limit the information leak from `:visited` links (e.g., restricting style properties, limiting timing precision, partitioning history). [5, 6, 7, 13]
#### Sandboxing #Isolation #iFrame
Using `iframe` attributes like `sandbox` or `srcdoc` to isolate potentially untrusted content, including CSS. [8]
### Subresource Integrity (SRI) #SRI #Integrity
Ensuring that fetched resources (like CSS or JS files from CDNs) are delivered without unexpected manipulation using cryptographic hashes. [40]

## Secure Coding Practices for CSS #Development #Guidelines
Best practices developers should follow when writing and managing CSS. [34, 41, 42]
### Avoiding Risky Patterns #CodeQuality #BestPractice
Minimizing reliance on complex selectors for critical functionality, avoiding user input directly in style properties where possible.
### Principle of Least Privilege #SecurityPrinciple #AccessControl
Applying styles based on user roles/permissions server-side or through separate, access-controlled CSS files, rather than relying on a single global CSS file with selectors revealing sensitive roles/features. [34]
### Code Reviews #QualityAssurance #PeerReview
Reviewing CSS code for potential security issues, just like other code types. [41]
### Consistent Naming Conventions #Readability #Maintainability
Using clear and consistent naming conventions (like BEM) makes code easier to audit and maintain. [41, 42]
### Limiting Use of `@import` #Performance #SecurityRisk
Being cautious with `@import`, as it can introduce dependencies and potentially chain requests that could be exploited.
### Using Linters and Formatters #Tooling #CodeQuality
Employing tools like CSS Lint to catch errors and enforce style guides. [16, 41]
### Modular CSS / CSS-in-JS #Architecture #Encapsulation
Using methodologies like CSS Modules or CSS-in-JS can help scope styles and reduce global namespace conflicts, potentially reducing injection impact. [34, 41]
### Minification and Obfuscation #Deployment #Obfuscation
While not a primary security measure, obfuscating class names during build can make reverse-engineering selectors slightly harder. [34]

## Risky CSS Features and Properties #Features #Risks
Specific CSS features that have known security implications or require careful handling.
### `url()` Function #ResourceLoading #Risk
Used in properties like `background-image`, `cursor`, `list-style-image`, `@font-face src`. Can trigger requests to external/malicious URLs, used in data exfiltration and potentially XSS (legacy). [2, 10, 11, 23]
### Attribute Selectors #Selectors #DataLeak
Core mechanism for data exfiltration attacks. [1, 2, 10, 21, 27]
### Pseudo-classes like `:visited`, `:target-text` #PseudoClasses #Leak
Features used for history sniffing and text fragment leakage. [5, 6, 7, 10]
### CSS Variables (Custom Properties) #Variables #Complexity
Can be manipulated via injection and used as triggers in advanced exfiltration techniques (e.g., Blind CSS Exfil). [27]
### `@import` Rule #Dependencies #Chaining
Can be used to chain requests or load malicious stylesheets. [8]
### CSS Animations and Transitions #DynamicCSS #Performance
Can potentially be used in side-channel attacks (timing) or cause denial-of-service if overly complex. [23, 31]
### Blend Modes (`mix-blend-mode`) #Rendering #Leak
Shown to be exploitable for cross-origin information leaks. [32]
### Container Queries #ModernCSS #Fingerprinting
Modern features might introduce new fingerprinting surfaces or side channels. [30]
### `expression()`, `behavior`, `-moz-binding` #Legacy #Execution
Deprecated/non-standard properties that allowed code execution. [11, 12, 23]

## Testing and Auditing CSS Security #Testing #Audit
Methods and tools for identifying CSS vulnerabilities.
### Manual Code Review #HumanAnalysis #Review
Carefully inspecting CSS code and how user input interacts with styles. [11]
### Automated Scanning Tools #SAST #DAST
Using security scanners that can detect CSS injection points or known risky patterns. [3, 9, 14]
#### OWASP ZAP #Tool #Scanner
Web application security scanner that can test for injection vulnerabilities. [9]
#### Burp Suite #Tool #Scanner
Comprehensive platform for web application security testing, including CSS injection checks. [9]
#### CSS Linters (Security Focused) #Linter #StaticAnalysis
Linters configured with rules to detect potentially insecure CSS patterns. [16]
### Visual Regression Testing #VisualTesting #UI
Tools that compare screenshots to detect unintended UI changes, which might sometimes indicate UI redressing attempts (though primarily for functional/UI testing). [16, 36]
#### BackstopJS #Tool #VisualRegression
A popular tool for visual regression testing. [16]
#### Percy #Tool #VisualRegression
A visual testing platform often integrated into CI/CD. [36]
#### CSSCritic #Tool #VisualRegression
An open-source tool focused on CSS regression testing. [16, 36]
### Penetration Testing #Pentesting #SecurityAssessment
Simulating attacks to find vulnerabilities, including CSS-based ones. [9]
### Fuzzing #FuzzTesting #InputTesting
Providing unexpected or malformed input to fields that influence CSS to uncover injection vulnerabilities. [1]

## Advanced and Emerging Topics #Future #Research
Newer areas of research and future considerations in CSS security.
### CSS Fingerprinting #Tracking #Privacy
Using subtle differences in CSS rendering across browsers, OS, or hardware to fingerprint users without JavaScript. [30]
### Exploiting New CSS Features #ModernCSS #AttackSurface
Security implications of recently added or upcoming CSS features (e.g., Houdini APIs, advanced selectors like `:has()`). [27, 30]
### Interaction with Web Components #WebComponents #ShadowDOM
Security considerations when CSS interacts with Shadow DOM and custom elements.
### Server-Side Rendering (SSR) vs Client-Side Rendering (CSR) #Architecture #Context
Differences in how CSS vulnerabilities might manifest or be mitigated depending on the rendering approach.
### CSS and Email Security #Email #HTMLRendering
Fingerprinting and potential attacks using CSS within the restricted environment of HTML emails. [30]
