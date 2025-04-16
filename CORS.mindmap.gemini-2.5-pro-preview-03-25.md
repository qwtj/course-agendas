# CORS #WebSecurity #HTTP #Browser
Cross-Origin Resource Sharing (CORS) is an HTTP-header based mechanism that allows a server to indicate any origins (domain, scheme, or port) other than its own from which a browser should permit loading resources. It's a way to relax the Same-Origin Policy (SOP) in a controlled manner.

## Introduction and Motivation #Basics #Concept #Problem
Why CORS is necessary for modern web applications.
### The Problem: Same-Origin Policy (SOP) #Security #BrowserBehavior #Origin
Browsers enforce SOP to prevent scripts on one origin from interacting with resources on another origin, mitigating risks like cross-site scripting (XSS) and data theft.
#### Definition of Origin #Components #URL
An origin is defined by the combination of URL scheme (e.g., `http`, `https`), domain (e.g., `example.com`), and port (e.g., `80`, `443`).
#### Restrictions Imposed by SOP #Limitations #SecurityMeasure
SOP restricts cross-origin reads (e.g., via `fetch` or `XMLHttpRequest`) but generally allows embedding resources (e.g., `<img>`, `<script>`, `<iframe>`).
### The Need for Cross-Origin Requests #Usecase #ModernWeb
Modern web applications often need to interact with resources from different origins (e.g., APIs hosted on different domains, fetching web fonts, microservices architecture).
#### API Consumption #Microservices #ThirdPartyAPI
Fetching data from backend APIs hosted on separate domains/subdomains.
#### Resource Sharing #Fonts #CDN #Assets
Loading assets like fonts, images, or scripts from Content Delivery Networks (CDNs) or other domains.
#### Single Page Applications (SPAs) #Frontend #Backend
SPAs often served from one origin need to communicate with APIs on another origin.

## Same-Origin Policy (SOP) #Security #Prerequisite #Browser
Detailed look at the foundational security policy that necessitates CORS.
### Definition and Purpose #CoreConcept #SecurityPrinciple
Restricts how a document or script loaded from one origin can interact with resources from another origin. Primary goal is security.
### How SOP Works #Mechanism #Enforcement
Enforced primarily by web browsers when scripts attempt to make network requests.
### What SOP Restricts #Scope #Limitations
Primarily restricts script access to responses from different origins (e.g., reading data from an `XMLHttpRequest`).
### What SOP Allows #Exceptions #Embeddings
Embedding resources (images, scripts, stylesheets, iframes) is generally allowed, though interaction with embedded content (like iframe content) might be restricted.

## Core CORS Protocol #Mechanism #Workflow #HTTP
The underlying process by which CORS operates.
### HTTP Header Exchange #Communication #ProtocolDetails
CORS works by adding new HTTP headers that allow servers to describe which origins are permitted to access resources. Browsers use these headers to enforce the policy.
### Browser Role #ClientSide #Enforcement
Browsers initiate CORS checks, send appropriate headers (`Origin`), handle preflight requests, and enforce the server's CORS policy based on response headers.
### Server Role #Backend #Configuration #Policy
Servers must be configured to understand CORS requests and send back the correct CORS response headers (e.g., `Access-Control-Allow-Origin`) to indicate whether the request is permitted.

## Key CORS HTTP Headers #Protocol #Details #Specification
Specific headers used in the CORS mechanism.
### Request Headers (Sent by Browser) #ClientHeaders #RequestInfo
#### `Origin` #Mandatory #RequestOrigin
Indicates the origin (scheme, hostname, port) of the web page initiating the request. This header is automatically added by the browser for cross-origin requests.
#### `Access-Control-Request-Method` #Preflight #HTTPMethod
Used in preflight (`OPTIONS`) requests to indicate the HTTP method that will be used in the actual request.
#### `Access-Control-Request-Headers` #Preflight #CustomHeaders
Used in preflight (`OPTIONS`) requests to indicate the custom HTTP headers that will be used in the actual request.
### Response Headers (Sent by Server) #ServerHeaders #PolicyDefinition
#### `Access-Control-Allow-Origin` #Mandatory #AllowedOrigins
Specifies which origins are allowed to access the resource. Can be a specific origin (e.g., `https://example.com`) or a wildcard (`*`) allowing any origin (with security implications, especially regarding credentials).
#### `Access-Control-Allow-Methods` #AllowedMethods #PreflightResponse
Specifies the HTTP method(s) allowed when accessing the resource. Used in response to a preflight request.
#### `Access-Control-Allow-Headers` #AllowedHeaders #PreflightResponse
Indicates which HTTP headers can be used during the actual request. Used in response to a preflight request.
#### `Access-Control-Allow-Credentials` #Credentials #Cookies #Authentication
Indicates whether the browser should expose the response to the frontend JavaScript code when the request's credentials mode is `include`. Cannot be used with `Access-Control-Allow-Origin: *`.
#### `Access-Control-Expose-Headers` #ExposedHeaders #ResponseAccess
Lists the headers that browsers are allowed to access from the response. By default, only CORS-safelisted response headers are exposed.
#### `Access-Control-Max-Age` #Caching #Performance #Preflight
Indicates how long the results of a preflight request can be cached (in seconds). Reduces the number of preflight requests.
#### `Vary: Origin` #Caching #IntermediateCaches
Important for caches to differentiate responses based on the request's `Origin` header, preventing incorrect cached responses from being served to different origins.

## Types of CORS Requests #Classification #Workflow #BrowserBehavior
Different categories of requests handled by CORS.
### Simple Requests #BasicRequest #NoPreflight
Requests that do not trigger a CORS preflight check. They must meet specific criteria.
#### Criteria for Simple Requests #Conditions #Limitations
*   Method: `GET`, `HEAD`, or `POST`.
*   Headers: Only CORS-safelisted request headers (e.g., `Accept`, `Accept-Language`, `Content-Language`, `Content-Type` with specific values).
*   `Content-Type` Header Values: Limited to `application/x-www-form-urlencoded`, `multipart/form-data`, or `text/plain`.
*   No event listeners on `XMLHttpRequestUpload`.
*   No `ReadableStream` object used.
#### Server Handling #ResponseHeaders
Server still needs to respond with `Access-Control-Allow-Origin` for the browser to allow the client-side script access to the response.
### Preflighted Requests #ComplexRequest #OPTIONSMethod
Requests that trigger an initial HTTP `OPTIONS` request (preflight) to the server to check if the actual request is safe to send.
#### Triggering Conditions #NonSimple #CustomHeaders #Methods
Requests using methods other than `GET`, `HEAD`, `POST`, `POST` requests with non-simple `Content-Type`, or requests including custom headers trigger a preflight.
#### The `OPTIONS` Request #PreflightCheck #ServerApproval
The browser sends an `OPTIONS` request with `Access-Control-Request-Method` and `Access-Control-Request-Headers` headers.
#### Server Response to Preflight #Approval #PolicyCheck
The server responds to the `OPTIONS` request with `Access-Control-Allow-Origin`, `Access-Control-Allow-Methods`, `Access-Control-Allow-Headers`, etc., to indicate whether the actual request is permitted.
#### The Actual Request #SubsequentRequest #DataExchange
If the preflight is successful (approved by the server), the browser then sends the actual request.

## CORS with Credentials #Authentication #Security #Cookies
Handling cookies and HTTP authentication in CORS requests.
### Definition of Credentials #Cookies #HTTPAuth #ClientCertificates
Includes cookies, HTTP authentication information, and client-side TLS certificates.
### `credentials` Request Option #FetchAPI #XMLHttpRequest
Client-side code must explicitly opt-in to send credentials using `fetch(url, { credentials: 'include' })` or `xhr.withCredentials = true`.
### Server Configuration (`Access-Control-Allow-Credentials: true`) #Policy #BackendSetup
The server must respond with `Access-Control-Allow-Credentials: true` to allow the browser to expose the response when credentials are included.
### Restrictions with Wildcard Origin (`*`) #SecurityConstraint #CredentialsPolicy
`Access-Control-Allow-Origin: *` cannot be used when `Access-Control-Allow-Credentials: true`. The server must specify an explicit origin.

## Server-Side Configuration #Implementation #Backend #Enablement
How to enable and configure CORS on the server.
### General Principles #ConfigurationStrategy #PolicySetting
Configure response headers based on the request's `Origin` header and the server's security policy.
### Configuration Examples #WebServers #Frameworks
#### Nginx #WebServer #ConfigSyntax
Using `add_header` directives, potentially within `if` blocks or `map` directives to handle `OPTIONS` requests and conditionally add headers.
#### Apache #WebServer #ConfigSyntax
Using `Header set` directives within `<Directory>`, `<Location>`, `<Files>`, or `.htaccess`, often requiring `mod_headers`.
#### Node.js (Express) #JavaScript #Middleware
Using middleware like the `cors` package (`app.use(cors({ origin: 'allowed_origin' }))`).
#### Spring (Java) #Java #Framework #Annotations
Using `@CrossOrigin` annotations on controllers/methods or global configuration via `WebMvcConfigurer`.
#### ASP.NET Core #CSharp #Framework #Middleware
Using middleware (`app.UseCors()`) and defining policies in `Startup.cs` or via attributes (`[EnableCors]`).
#### PHP #ScriptingLanguage #HeaderFunction
Using the `header()` function to set the necessary `Access-Control-*` headers.
#### Other Platforms #Python #Ruby #Go
Similar approaches using framework-specific middleware or manual header setting.

## Client-Side Considerations #Frontend #Browser #MakingRequests
How CORS affects frontend development.
### Making CORS Requests #Fetch #XMLHttpRequest
Using standard APIs like `fetch()` or `XMLHttpRequest`. The browser handles the CORS mechanism transparently.
### Handling CORS Errors in JavaScript #ErrorHandling #DebuggingLimitations
JavaScript code typically receives a generic network error for CORS failures due to security reasons. Detailed error information is usually only available in the browser's developer console.
### `no-cors` Request Mode #OpaqueResponse #Limitations
`fetch(url, { mode: 'no-cors' })` allows sending certain cross-origin requests where the response body is not needed or accessible (opaque response). Does not bypass SOP for reading responses.

## Security Implications and Best Practices #Security #Hardening #ConfigurationMistakes
Understanding the security aspects and recommended practices.
### CORS is Not a Primary Server Security Mechanism #Misconception #BrowserSecurity
CORS controls browser behavior, telling the browser which cross-origin requests to allow. It does not inherently protect the server endpoint itself from direct requests (e.g., via `curl` or server-to-server calls). Server-side security (authentication, authorization) is still essential.
### Risks of Misconfiguration #Vulnerabilities #AttackVectors
#### Overly Permissive `Access-Control-Allow-Origin` (`*`) #WildcardRisk #DataExposure
Using `*` allows any website to make requests to the endpoint. If used with `Access-Control-Allow-Credentials: true` (which is disallowed by spec but might be improperly handled), it could allow malicious sites to make authenticated requests on behalf of users.
#### Reflecting `Origin` Header #DynamicOrigin #TrustIssues
Dynamically reflecting the request `Origin` header in `Access-Control-Allow-Origin` without proper validation can be dangerous.
#### Trusting Vulnerable Origins #XSS #TrustRelationship
Allowing requests from an origin that is vulnerable to XSS can lead to attackers exploiting that trust relationship to steal data via CORS.
#### Whitelisting `null` Origin #Sandbox #InternalDocs
Avoid `Access-Control-Allow-Origin: null` unless explicitly needed and understood, as requests from sandboxed iframes or local files can have a `null` origin.
### Best Practices #Recommendations #SecureConfig
#### Be Specific with `Access-Control-Allow-Origin` #Whitelist #TrustedDomains
Use a whitelist of specific, trusted origins instead of `*` whenever possible, especially for endpoints requiring credentials or handling sensitive data.
#### Validate Dynamic Origins Carefully #ServerLogic #Filtering
If dynamically setting `Access-Control-Allow-Origin`, rigorously validate the incoming `Origin` against a list of allowed domains.
#### Limit Allowed Methods and Headers #MinimizeExposure #LeastPrivilege
Only allow the necessary HTTP methods (`Access-Control-Allow-Methods`) and headers (`Access-Control-Allow-Headers`).
#### Use `Vary: Origin` Header #Caching #Correctness
Include `Vary: Origin` in the response to ensure caches handle different origins correctly.
#### Enforce HTTPS #Encryption #SecureTransport
Ensure communication occurs over HTTPS.
#### Combine with Server-Side Security #Authentication #Authorization #RateLimiting
Always implement robust server-side authentication, authorization, input validation, and rate limiting. CORS complements, but does not replace, these measures.
#### Audit CORS Configuration Regularly #Review #Maintenance
Periodically review CORS policies to ensure they are still appropriate and secure.

## Debugging and Troubleshooting CORS Errors #Errors #Debugging #DevTools
Identifying and fixing common CORS problems.
### Identifying CORS Errors #BrowserConsole #NetworkTab
Checking the browser's developer console for error messages (e.g., "Cross-Origin Request Blocked...") and inspecting the Network tab for failed requests (especially `OPTIONS` preflight requests).
### Common Error Messages and Reasons #ErrorTypes #Causes
#### Missing `Access-Control-Allow-Origin` Header #ServerError #MissingHeader
The server did not include the required header in its response.
#### Mismatched `Access-Control-Allow-Origin` Header #OriginMismatch #PolicyViolation
The value of `Access-Control-Allow-Origin` sent by the server does not match the requesting origin (and isn't `*`).
#### Disallowed Method or Header in Preflight #MethodNotAllowed #HeaderNotAllowed
The server's response to the `OPTIONS` preflight request did not permit the method or headers specified in `Access-Control-Request-Method` or `Access-Control-Request-Headers`.
#### Credential Disallowed with Wildcard Origin #CredentialsError #WildcardConflict
Attempting to use `credentials: 'include'` when the server responds with `Access-Control-Allow-Origin: *`.
#### Preflight Request Failure (Non-2xx Status) #OPTIONSFailure #ServerError
The `OPTIONS` request itself failed (e.g., returned a 4xx or 5xx status code).
#### Redirects #PreflightRedirect #RequestRedirect
Redirects during preflight requests can sometimes cause issues.
### Debugging Tools and Techniques #TroubleshootingSteps #Tools
#### Browser Developer Tools #Console #NetworkAnalysis
Inspecting console errors and network request/response headers (including `OPTIONS` requests).
#### `curl` or Similar Tools #ManualRequest #HeaderInspection
Manually crafting requests with `curl -H "Origin: <your_origin>" -X OPTIONS ...` or `curl -H "Origin: <your_origin>" ...` to inspect server responses directly.
#### Postman / Insomnia #APITesting #RequestSimulation
Simulating requests to check server responses (Note: These tools typically don't enforce CORS like browsers do, but can show response headers).
#### Server Logs #BackendDebugging #ErrorTracking
Checking server-side logs for errors related to CORS configuration or request handling.
#### Online CORS Checkers #ValidationTool #ExternalCheck
Using online tools to test server CORS configuration (use with caution for sensitive endpoints).

## Alternatives and Related Technologies #Comparison #Context #Workarounds
Other methods used historically or for different purposes.
### JSONP (JSON with Padding) #Legacy #Workaround #SecurityRisk
A historical technique using `<script>` tags to bypass SOP for `GET` requests. Considered a hack and has security risks (XSS). Largely superseded by CORS.
### Server-Side Proxy #ProxyPattern #Bypass #Architecture
Setting up a proxy server on the same origin as the frontend. The frontend communicates with the proxy, which then forwards requests to the target cross-origin server. This avoids browser CORS restrictions as the browser interacts only with its own origin.
### `document.domain` #Legacy #Subdomains #Limited
A legacy technique allowing limited interaction between documents from different subdomains of the same parent domain, provided they both set `document.domain` to the parent domain. Less relevant with CORS.
### `postMessage` API #WindowCommunication #Iframe
For communication between different window objects (e.g., parent window and an iframe from a different origin). Not a direct replacement for `fetch`/`XHR` but useful for cross-window messaging.
### Cross-Origin Resource Policy (CORP) #SecurityHeader #ResourceIsolation
A related security header (`Cross-Origin-Resource-Policy`) that allows a server to control which origins can *embed* its resources, complementing CORS which controls reading responses via scripts.

## Advanced CORS Topics #EdgeCases #Future #Nuances
More complex scenarios and considerations.
### Caching Issues #IntermediateCaches #VaryHeader
Importance of the `Vary: Origin` header for HTTP caches. Incorrect caching can lead to serving responses meant for one origin to another.
### Redirects and CORS #HTTPRedirects #Behavior
How browsers handle redirects in the context of CORS requests, particularly preflight requests.
### Service Workers and CORS #PWA #FetchEvent
How service workers intercepting `fetch` events interact with CORS rules.
### Future Directions and Specifications #Standards #Evolution #WHATWG
Ongoing evolution of the Fetch standard (which defines CORS) by WHATWG.
