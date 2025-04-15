# Content Security Policy (CSP) #WebSecurity #BrowserSecurity #Mitigation
Content Security Policy (CSP) is a security standard introduced to prevent cross-site scripting (XSS), clickjacking, and other code injection attacks resulting from execution of malicious content in the trusted web page context.

## Fundamentals of CSP #Basics #Concepts #Introduction
Understanding the core purpose and principles behind CSP.

### What is CSP? #Definition #Purpose
CSP provides a standard method for website owners to declare approved origins of content that browsers should be allowed to load for that website—covered types are JavaScript, CSS, HTML frames, fonts, images and embeddable objects such as Java applets, ActiveX, audio and video files.

### Why Use CSP? #Motivation #ThreatModel #Benefits
Primary motivation is mitigating Cross-Site Scripting (XSS) and certain data injection attacks.
It acts as a defense-in-depth mechanism.

### How CSP Works #Mechanism #Process
Browser receives the CSP policy (via HTTP header or meta tag).
Browser enforces the policy by blocking resources/actions that violate it.
Violations can be optionally reported back to a specified URI.

### Goals of CSP #Objectives #SecurityGoals
Prevent execution of untrusted scripts.
Prevent loading of untrusted resources.
Prevent unwanted framing.
Prevent form submissions to unexpected destinations.
Mitigate data exfiltration.

## CSP Directives #Syntax #Rules #Configuration
The core components of a CSP policy, defining the rules for resource loading and execution.

### Fetch Directives #Resources #Loading #Network
Control locations from which certain resource types may be loaded.
#### `default-src` #Fallback #DefaultPolicy
Defines the default policy for most fetch directives if they are not explicitly specified.
#### `script-src` #JavaScript #Scripts #Execution
Specifies valid sources for JavaScript `<script>` elements.
#### `style-src` #CSS #Stylesheets #Styling
Specifies valid sources for stylesheets (`<link>`, `<style>`, `style` attributes).
#### `img-src` #Images #Media
Specifies valid sources for images (`<img>`, favicons).
#### `font-src` #Fonts #Typography
Specifies valid sources for fonts loaded using `@font-face`.
#### `connect-src` #XHR #FetchAPI #WebSockets
Restricts URLs which can be loaded using script interfaces like `fetch`, `XMLHttpRequest`, `WebSocket`, `EventSource`.
#### `media-src` #Audio #Video #Media
Specifies valid sources for loading media using `<audio>` and `<video>`.
#### `object-src` #Plugins #Objects #Embeds
Specifies valid sources for `<object>`, `<embed>`, and `<applet>` elements. Often recommended to set to `'none'`.
#### `prefetch-src` #Prefetching #Performance
Specifies valid sources for prefetching or prerendering.
#### `child-src` #WebWorkers #Frames #Obsolete
Defines valid sources for web workers and nested browsing contexts loaded using elements such as `<frame>` and `<iframe>`. Deprecated in favor of `worker-src` and `frame-src`.
#### `frame-src` #Frames #Iframes #Embedding
Specifies valid sources for nested browsing contexts loaded into `<frame>` and `<iframe>`.
#### `worker-src` #WebWorkers #ServiceWorkers #Concurrency
Specifies valid sources for `Worker`, `SharedWorker`, or `ServiceWorker` scripts.

### Document Directives #DocumentPolicy #Environment
Govern the properties of a document or worker environment.
#### `base-uri` #BaseTag #RelativeURLs
Restricts the URLs which can be used in a document's `<base>` element. Helps prevent base tag hijacking.
#### `plugin-types` #Plugins #MIME #Obsolete
Restricts the set of plugins that can be invoked by limiting the types of resources that can be embedded. Deprecated.
#### `sandbox` #Sandboxing #IframeSecurity #Restrictions
Applies restrictions similar to the `sandbox` attribute on an `<iframe>`. Enables a sandbox for the requested resource.

### Navigation Directives #Navigation #FormSubmission #Framing
Govern to where a user can navigate or submit a form.
#### `form-action` #Forms #Submission #POST
Restricts the URLs which can be used as the target of form submissions from a given context.
#### `frame-ancestors` #Framing #Clickjacking #Embedding
Specifies valid parents that may embed a page using `<frame>`, `<iframe>`, `<object>`, `<embed>`, or `<applet>`. Crucial for preventing clickjacking. Supersedes the `X-Frame-Options` header.
#### `navigate-to` #Navigation #Experimental
Restricts the URLs to which a document can initiate navigation by any means (not widely supported yet).

### Reporting Directives #Violations #Monitoring #Feedback
Control the reporting process of CSP violations.
#### `report-uri` #ReportingEndpoint #JSON #Legacy
Specifies a URI where the browser should send reports about policy violations. Deprecated in favor of `report-to`.
#### `report-to` #ReportingAPI #JSON #Modern
Specifies a group name defined in the `Report-To` HTTP header. Enables use of the Reporting API for more flexible reporting.

### Special Source Values #Keywords #Permissions
Keywords that modify how directives behave.
#### `'self'` #SameOrigin
Refers to the origin from which the protected document is being served, including the same URL scheme and port number.
#### `'none'` #Block #Deny
Blocks use of sources of the specified type.
#### `'unsafe-inline'` #InlineCode #Risk #Avoid
Allows the use of inline resources, such as inline `<script>` elements, `javascript:` URLs, inline event handlers, and inline `<style>` elements. Generally discouraged.
#### `'unsafe-eval'` #Eval #DynamicCode #Risk #Avoid
Allows the use of `eval()` and similar methods for creating code from strings. Generally discouraged.
#### `'unsafe-hashes'` #InlineHandlers #LegacyCompatibility
Allows enabling specific inline event handlers. Requires specifying allowed hashes.
#### `nonce-{base64-value}` #NonceBased #InlineCode #Security
Allows a specific inline script or style block identified by a cryptographic nonce (number used once). The nonce must be unique per request.
#### `sha256-{base64-value}`, `sha384-...`, `sha512-...` #HashBased #InlineCode #Security
Allows a specific inline script or style block identified by its hash.
#### `strict-dynamic` #Propagation #NonceBased #HashBased #Modern
Allows the execution of scripts dynamically added to the page by an already trusted script (via nonce or hash), regardless of the source. Simplifies deployment with frameworks.
#### `host-source` #Domain #URL #Wildcard
Specifies hosts by domain name or IP address (e.g., `example.com`, `*.example.com`, `https://example.com`).
#### `scheme-source` #Protocol #Scheme
Specifies schemes (e.g., `https:`, `data:`, `blob:`).
#### `report-sample` #ViolationDetail #Reporting
Instructs the browser to include a sample of the violating code in the violation report (applies to `script-src` and `style-src`).

### Other Directives #Miscellaneous #SecurityEnhancements
#### `upgrade-insecure-requests` #HTTPS #MixedContent #AutoUpgrade
Instructs user agents to treat all of a site's insecure URLs (those served over HTTP) as though they have been replaced with secure URLs (those served over HTTPS).
#### `block-all-mixed-content` #HTTPS #MixedContent #Strict
Prevents loading any assets using HTTP when the page is loaded using HTTPS. More strict than `upgrade-insecure-requests`.
#### `require-sri-for` #SubresourceIntegrity #SRI #Validation
Requires the use of Subresource Integrity (SRI) for scripts or styles on the page. Values: `script`, `style`.
#### `require-trusted-types-for` #TrustedTypes #DOMXSS #Experimental
Requires Trusted Types for DOM manipulation sinks (e.g., `script`). Helps prevent DOM-based XSS.
#### `trusted-types` #TrustedTypes #DOMXSS #Configuration #Experimental
Used to specify policies for Trusted Types enforcement.

## Implementation and Deployment #Configuration #Setup #Adoption
Practical steps and considerations for putting CSP into effect.

### Delivery Methods #Headers #MetaTags
How the policy is sent from the server to the browser.
#### HTTP Header (`Content-Security-Policy`) #Recommended #ServerSide
The standard and recommended method. Set by the web server or application.
#### HTTP Header (`Content-Security-Policy-Report-Only`) #Monitoring #Testing #Audit
Instructs the browser to report violations but not enforce the policy. Used for testing and refinement before full enforcement.
#### HTML Meta Tag (`<meta http-equiv="...">`) #Limited #ClientSide
Can be used within the HTML document itself. Less flexible and has limitations (e.g., cannot use `frame-ancestors`, `report-uri`, `sandbox`).

### Deployment Strategy #Rollout #Process
Phased approach to introducing CSP.
#### 1. Auditing #Inventory #Assessment
Identify all necessary resources (scripts, styles, images, fonts, connections, frames).
#### 2. Policy Generation #Drafting #Tools
Create an initial policy based on the audit. Online generators can help.
#### 3. Report-Only Mode #Testing #Refinement
Deploy using `Content-Security-Policy-Report-Only` header. Monitor violation reports.
#### 4. Policy Refinement #Iteration #Adjustments
Adjust the policy based on reports, fixing legitimate issues and tightening rules.
#### 5. Enforcement Mode #Live #Protection
Switch to the `Content-Security-Policy` header once confident the policy is correct.
#### 6. Ongoing Monitoring #Maintenance #Updates
Continuously monitor reports and update the policy as the application evolves.

### Handling Inline Code #Refactoring #SecurityTechniques
Strategies for dealing with `unsafe-inline`.
#### Nonce-Based Approach #DynamicNonce #ServerSideLogic
Generate a unique nonce per request, add it to the CSP header (`script-src 'nonce-...'`), and add `nonce="..."` attributes to allowed `<script>`/`<style>` tags. Requires server-side logic.
#### Hash-Based Approach #StaticContent #BuildProcess
Calculate the hash of allowed inline scripts/styles, add them to the CSP header (`script-src 'sha256-...'`). Suitable for static inline code. Can be automated in build processes.
#### Refactoring Code #BestPractice #SeparationOfConcerns
Move inline scripts and styles to external files. This is often the cleanest solution.
#### Using `strict-dynamic` #ModernBrowsers #ScriptLoading
Simplifies nonce/hash deployment by allowing trusted scripts to load other scripts.

### Server-Side Configuration #WebServer #ApplicationFramework
Examples of setting the header in common environments.
#### Nginx #WebServerConfig
Using `add_header Content-Security-Policy "...";`
#### Apache #WebServerConfig #htaccess
Using `Header set Content-Security-Policy "...";`
#### Application Level #BackendCode #Frameworks
Setting headers via application code (e.g., Node.js/Express, Python/Django, PHP).

## CSP Reporting #Monitoring #Violations #FeedbackLoop
Understanding and utilizing violation reports sent by browsers.

### Report Structure (JSON) #DataFormat #Schema
Details included in a violation report.
Key fields: `document-uri`, `referrer`, `violated-directive`, `effective-directive`, `original-policy`, `blocked-uri`, `source-file`, `line-number`, `column-number`, `status-code`, `script-sample` (if enabled).

### Reporting Endpoints #Collection #Aggregation
Where reports are sent and how they are processed.
#### `report-uri` (Legacy) #SimplePOST #Deprecated
Sends a simple JSON POST request to the specified URI.
#### `report-to` (Reporting API) #Modern #Flexible #Batched
Uses the newer Reporting API, allowing more configuration (e.g., grouping, priorities) via the `Report-To` header. Reports might be batched.

### Processing Reports #Analysis #Alerting #Tools
Handling the potentially large volume of reports.
#### Aggregation Services #SaaS #ThirdPartyTools
Using dedicated services (e.g., report-uri.com, Sentry) to collect, aggregate, and analyze reports.
#### Custom Solutions #InHouse #Logging
Building an in-house endpoint and processing logic.
#### Filtering Noise #FalsePositives #BrowserExtensions
Ignoring irrelevant reports caused by browser extensions, proxies, or scanners.

## Common CSP Patterns and Best Practices #Recommendations #SecurityLevels #StrictCSP

### Strict CSP #Recommended #NonceBased #HashBased #Modern
A highly recommended approach focusing on nonces or hashes.
Typically includes `object-src 'none'`, `base-uri 'self'`, and `script-src`/`style-src` based on nonces/hashes plus `strict-dynamic`. Avoids broad whitelists.

### Allowing `unsafe-inline` / `unsafe-eval` #Risks #Tradeoffs #Legacy
Should be avoided whenever possible due to significantly weakening security. Sometimes a temporary measure during migration.

### Whitelisting Domains #Maintenance #Permissive
Allowing specific domains (e.g., `script-src 'self' https://cdn.example.com`). Can be brittle and requires careful management. Less secure than nonce/hash approaches if overly broad wildcards are used.

### Using `'none'` #Blocking #MaximumSecurity
Setting directives like `object-src 'none'` or `frame-ancestors 'none'` for maximum restriction where applicable.

### Leveraging `strict-dynamic` #Frameworks #ScriptLoaders
Essential for making nonce/hash-based policies practical with modern JavaScript frameworks and libraries that dynamically load scripts.

### Gradual Rollout #PhasedApproach #ReportOnly
Using `Content-Security-Policy-Report-Only` extensively before enforcement.

## CSP Bypasses and Limitations #Weaknesses #AttackVectors #Evasion

### Overly Permissive Policies #Wildcards #UnsafeKeywords
Using `*` or broad wildcards (`*.example.com`), or allowing `unsafe-inline` / `unsafe-eval` can negate CSP's benefits.

### Misconfigured Server #HeaderIssues #CDN
Incorrect header syntax, issues with CDNs caching policies incorrectly, or proxies stripping headers.

### Dangling Markup Injection #HTMLInjection #DataExfiltration
Injecting partial HTML tags that capture data and send it to an attacker-controlled server allowed by `img-src` or `connect-src`.

### JSONP Endpoints #CallbackAbuse #DataLeak
If a whitelisted domain hosts a JSONP endpoint, it might be abused to bypass `script-src` restrictions.

### External Script Dependencies #TrustedScripts #Vulnerabilities
Trusting third-party scripts means trusting their security. A compromised CDN or third-party script can bypass CSP.

### Server-Side Template Injection (SSTI) #ServerSideVulnerability
If an attacker can control server-side templates, they might inject nonces or modify the CSP header itself.

### Bypasses via `object-src` / `embed` / `applet` #PluginAbuse #LegacyRisk
If `object-src` allows vulnerable plugins (like Flash in the past) or broad sources. Best set to `'none'`.

### Browser Bugs / Inconsistencies #ImplementationErrors #EdgeCases
Rarely, bugs in browser implementations can lead to bypasses.

### Non-Mitigated Threats #LimitationsScope
CSP primarily targets XSS and some data injection/exfiltration. It does *not* directly mitigate CSRF, server-side flaws (SQLi, RCE), authentication issues etc., although it can sometimes limit their impact.

## Advanced Topics and Related Technologies #Future #Integrations #Ecosystem

### Trusted Types #DOMXSS #Prevention #API
A newer mechanism enforced via CSP (`require-trusted-types-for`, `trusted-types`). Aims to prevent DOM XSS by requiring potentially dangerous DOM sink functions (like `innerHTML`) to receive special `TrustedType` objects instead of strings. Requires code refactoring.

### CSP for Single Page Applications (SPAs) #Frameworks #Routing #Challenges
Handling dynamic content loading, client-side routing, and template rendering within CSP constraints, often relying heavily on `strict-dynamic`.

### CSP in Service Workers #BackgroundScripts #SecurityContext
Defining and enforcing CSP for Service Worker scripts (`Service-Worker-Allowed` header interaction).

### CSP and WebAssembly (Wasm) #BinaryCode #Execution #`unsafe-eval`
WebAssembly execution often requires `'unsafe-eval'` unless specific mechanisms are used. Work is ongoing to improve this interaction.

### Subresource Integrity (SRI) #IntegrityCheck #CDN #Hashing
Ensures that fetched resources (typically from CDNs) are delivered without unexpected manipulation by providing hashes (`integrity="..."` attribute). Complements CSP. Can be enforced using `require-sri-for`.

### Reporting API #ModernReporting #FlexibleEndpoints #`Report-To`
A broader browser mechanism for sending various reports (CSP, NEL, Deprecation, Intervention, Crashes) specified via the `Report-To` HTTP header.

### Relationship to other Security Headers #DefenseInDepth #HTTPHeaders
How CSP interacts with or complements other security headers.
#### `X-Frame-Options` #Clickjacking #Legacy
Superseded by `frame-ancestors`. CSP provides more flexibility.
#### `Referrer-Policy` #Privacy #DataLeakage
Controls how much referrer information is sent.
#### `Permissions-Policy` (Feature-Policy) #FeatureControl #APIControl
Controls access to browser features and APIs (camera, geolocation, etc.).
#### `HTTP Strict Transport Security (HSTS)` #HTTPS #Encryption
Enforces HTTPS connections. Complements `upgrade-insecure-requests`.

## Tools and Testing #Utilities #Validation #Debugging

### Browser Developer Tools #Debugging #Console #NetworkTab
Inspecting CSP violations in the browser console, viewing applied policies.

### Online CSP Validators #SyntaxCheck #BestPracticeCheck
Tools like Google's CSP Evaluator, Mozilla Observatory check policy syntax and security posture.

### Online CSP Generators #PolicyCreation #Wizard
Tools that help create a basic policy based on requirements.

### Violation Reporting Services #Monitoring #Aggregation #Analysis
Third-party services (e.g., report-uri.com, Sentry, Datadog) that collect and help analyze CSP violation reports.

### Security Scanners #AutomatedTesting #VulnerabilityAssessment
Web application scanners may check for the presence and basic configuration of CSP headers.

## Evolution and Future of CSP #CSPLevel3 #Standards #Development

### CSP Level 3 #NewDirectives #Enhancements
Current standard, introduced features like `strict-dynamic`, `report-to`, `worker-src`, `frame-ancestors`, nonce/hash support refinements.

### Future Directions #SpecDevelopment #Research
Potential new directives, tighter integration with other security features (Trusted Types, Permissions Policy), improved ergonomics.

### Browser Compatibility #Support #ImplementationDifferences
Checking caniuse.com or MDN for support levels and potential browser-specific quirks.
