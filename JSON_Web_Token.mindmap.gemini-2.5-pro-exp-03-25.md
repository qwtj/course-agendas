# JSON Web Token (JWT) #Overview #Standard #RFC7519
A compact, URL-safe means of representing claims to be transferred between two parties. Commonly used for authentication, authorization, and information exchange. Part of the JOSE (JSON Object Signing and Encryption) framework.

## Fundamentals of JWT #Basics #CoreConcepts #Introduction
Introduces the core ideas and purpose behind JWTs.

### What is JWT? #Definition #Purpose
Explanation of JWT as a standard for creating self-contained access tokens.
Defines JWT as an open standard (RFC 7519).

### Why use JWT? #Benefits #UseCases
Discusses advantages like statelessness, compactness, security (when used correctly), and interoperability.
Contrasts with traditional session management.

### History and Evolution #Origins #JOSE
Brief overview of its development within the JOSE working group.
Relationship to other JOSE standards (JWS, JWE, JWK, JWA).

### Core Concepts #Terminology #BuildingBlocks
*   **Self-Contained:** Tokens carry user information (claims).
*   **Stateless:** Server doesn't need to store session state (usually).
*   **Signed/Encrypted:** Ensures integrity and optionally confidentiality.

## Structure of a JWT #Format #Components #Encoding
Details the physical composition of a JWT string.

### Three Parts #Header #Payload #Signature
Describes the three Base64Url-encoded parts separated by dots (`.`).
`xxxxx.yyyyy.zzzzz`

### Header #Metadata #Algorithm
Contains token metadata, primarily the token type (`typ`, usually "JWT") and the signing or encryption algorithm (`alg`).
Example: `{"alg": "HS256", "typ": "JWT"}`

#### Common Header Parameters #Parameters #JOSEHeader
*   `typ` (Type): Typically "JWT".
*   `alg` (Algorithm): Signing/encryption algorithm (e.g., `HS256`, `RS256`, `ES256`, `RSA-OAEP`, `A256GCMKW`).
*   `cty` (Content Type): Used for nested JWTs.
*   `kid` (Key ID): Hints at the key used for signing/encryption.
*   `jku` (JWK Set URL): URL pointing to a set of JSON Web Keys.
*   `x5u` (X.509 URL): URL pointing to X.509 certificate or chain.
*   `x5t` (X.509 Certificate SHA-1 Thumbprint): Thumbprint of the X.509 certificate.

### Payload #Claims #Data
Contains the claims (statements) about an entity (typically the user) and additional data. This is the main body of the token.
Example: `{"sub": "1234567890", "name": "John Doe", "iat": 1516239022}`

#### Claim Types #Registered #Public #Private
*   **Registered Claims:** Standardized, recommended claims (IANA JSON Web Token Claims registry). Not mandatory but provide a common baseline.
*   **Public Claims:** Custom claims defined by users of JWTs, should be collision-resistant (e.g., use URIs as names).
*   **Private Claims:** Custom claims agreed upon between parties, not necessarily collision-resistant.

#### Registered Claims (Examples) #StandardClaims #RFC7519
*   `iss` (Issuer): Principal that issued the JWT.
*   `sub` (Subject): Principal that is the subject of the JWT.
*   `aud` (Audience): Recipient(s) that the JWT is intended for.
*   `exp` (Expiration Time): Time after which the JWT must not be accepted (NumericDate).
*   `nbf` (Not Before): Time before which the JWT must not be accepted (NumericDate).
*   `iat` (Issued At): Time at which the JWT was issued (NumericDate).
*   `jti` (JWT ID): Unique identifier for the JWT, helps prevent replays.

### Signature / Encryption Data #Integrity #Confidentiality #Security
*   **For JWS (Signed):** Created by signing the encoded header and payload with a secret or private key using the specified algorithm. Verifies integrity and authenticity.
*   **For JWE (Encrypted):** Contains the encrypted payload (ciphertext) and information needed to decrypt it. Provides confidentiality.

### Base64Url Encoding #Encoding #URLSafe
Explains the use of Base64Url encoding (RFC 4648 §5) instead of standard Base64 to ensure the token is safe for use in URLs and HTTP headers.

## Types of JWTs #JWS #JWE #Classification
Distinguishes between the different forms JWTs can take based on security properties.

### JWS (JSON Web Signature) #Signing #Integrity #Authenticity
Focuses on ensuring the integrity and authenticity of the claims. The payload is Base64Url-encoded but *not* encrypted; it's publicly readable.
Structure: `HEADER.PAYLOAD.SIGNATURE`

### JWE (JSON Web Encryption) #Encryption #Confidentiality #Privacy
Focuses on ensuring the confidentiality of the claims. The payload is encrypted. Often involves both encryption and integrity protection.
Structure: `HEADER.ENCRYPTED_KEY.IV.CIPHERTEXT.AUTHENTICATION_TAG` (structure varies slightly based on serialization)

### Nested JWT #Combination #Advanced
A JWT where the payload is another complete JWT (either JWS or JWE). Allows combining signing and encryption (e.g., sign then encrypt).

### Unsecured JWT #NoSecurity #algNone
JWTs where the `alg` header parameter is set to `none`. The signature part is empty. Offers no integrity or authenticity protection. **Should generally be avoided or handled with extreme caution.**

## Signing Algorithms (JWS) #JWA #RFC7518 #Cryptography
Algorithms used to create the signature part of a JWS. Defined in JWA (JSON Web Algorithms - RFC 7518).

### HMAC + SHA2 #Symmetric #SharedSecret
*   `HS256` (HMAC using SHA-256)
*   `HS384` (HMAC using SHA-384)
*   `HS512` (HMAC using SHA-512)
Requires a shared secret between the issuer and verifier.

### RSA #Asymmetric #PublicKeyInfrastructure #PKI
*   `RS256` (RSASSA-PKCS1-v1_5 using SHA-256)
*   `RS384` (RSASSA-PKCS1-v1_5 using SHA-384)
*   `RS512` (RSASSA-PKCS1-v1_5 using SHA-512)
Uses a private key to sign and a public key to verify. Suitable for distributed verification.

### ECDSA #Asymmetric #EllipticCurve #ECC
*   `ES256` (ECDSA using P-256 and SHA-256)
*   `ES384` (ECDSA using P-384 and SHA-384)
*   `ES512` (ECDSA using P-521 and SHA-512)
Elliptic Curve alternative to RSA, often providing similar security with shorter keys.

### RSA-PSS #Asymmetric #PKI #Probabilistic
*   `PS256` (RSASSA-PSS using SHA-256 and MGF1 with SHA-256)
*   `PS384` (RSASSA-PSS using SHA-384 and MGF1 with SHA-384)
*   `PS512` (RSASSA-PSS using SHA-512 and MGF1 with SHA-512)
Probabilistic Signature Scheme, considered more robust than PKCS1-v1_5 by some cryptographers.

### `none` Algorithm #Unsecured #Danger
Specifies an unsecured JWT (JWS). No signature is applied. See Security Considerations.

### Key Management (JWS) #Keys #Secrets #JWK
How keys/secrets are generated, distributed, stored, and rotated for signing and verification. JSON Web Key (JWK - RFC 7517) is often used.

## Encryption Algorithms (JWE) #JWA #RFC7518 #Cryptography
Algorithms used to encrypt the payload and manage keys in a JWE. Defined in JWA (JSON Web Algorithms - RFC 7518).

### Key Encryption Algorithms (`alg`) #KeyManagement #Asymmetric #Symmetric
Used to encrypt the Content Encryption Key (CEK).
*   **Asymmetric:** `RSA1_5`, `RSA-OAEP`, `RSA-OAEP-256`, `ECDH-ES`, `ECDH-ES+A128KW`, `ECDH-ES+A192KW`, `ECDH-ES+A256KW`
*   **Symmetric Key Wrapping:** `A128KW`, `A192KW`, `A256KW`
*   **Direct Symmetric Key:** `dir` (CEK is the shared symmetric key)
*   **Password-Based:** `PBES2-HS256+A128KW`, `PBES2-HS384+A192KW`, `PBES2-HS512+A256KW`

### Content Encryption Algorithms (`enc`) #PayloadEncryption #Symmetric #AEAD
Used to encrypt the actual payload (plaintext) using the CEK. Often Authenticated Encryption with Associated Data (AEAD) algorithms are used.
*   `A128CBC-HS256` (AES-CBC + HMAC-SHA2)
*   `A192CBC-HS384`
*   `A256CBC-HS512`
*   `A128GCM` (AES-GCM)
*   `A192GCM`
*   `A256GCM`

### Key Management (JWE) #Keys #Secrets #JWK
How keys are managed for encryption and decryption. Often involves asymmetric key pairs (e.g., RSA, EC) or pre-shared symmetric keys. JWK (RFC 7517) is commonly used.

## Common Use Cases #Applications #Scenarios #Protocols
Where and how JWTs are typically employed.

### Authentication #Login #SessionManagement #StatelessAuth
Using JWTs to manage user login sessions without server-side state. Often involves returning a JWT upon successful login.

### Authorization #AccessControl #Permissions #OAuth2
Transmitting authorization information (e.g., user roles, permissions) within the token. Commonly used in OAuth 2.0 flows (as Access Tokens or ID Tokens).

### Information Exchange #SecureDataTransfer #InterServiceCommunication
Securely transmitting information between parties, where the signature/encryption verifies the integrity/confidentiality. Useful in microservice architectures.

### OpenID Connect (OIDC) #IdentityLayer #AuthenticationProtocol
OIDC builds on OAuth 2.0 and uses JWTs extensively, specifically the `id_token`.

### Microservices Communication #DistributedSystems #APISecurity
Services can issue and verify JWTs to authenticate/authorize requests between themselves without contacting a central auth server for every request.

### Single Sign-On (SSO) #FederatedIdentity #Convenience
JWTs can facilitate SSO across multiple domains or applications.

## Security Considerations #Threats #Vulnerabilities #Mitigation
Potential security pitfalls and how to avoid them. This is a critical section.

### Weak Secrets / Keys #BruteForce #KeyStrength
Using short or predictable secrets for HMAC or weak keys for asymmetric algorithms.
**Mitigation:** Use strong, high-entropy secrets/keys; follow key length recommendations.

### Algorithm Confusion (`alg` header) #SignatureStripping #VerificationBypass
Attackers tricking the server into using the wrong algorithm for verification (e.g., forcing HS256 verification with an RS256 public key, or forcing `none`).
**Mitigation:** Verifier *must* explicitly specify allowed algorithms, never trust `alg` header alone to select verification method. Whitelist expected `alg` values.

### `none` Algorithm Attack #SignatureBypass #UnsecuredJWT
Attackers changing `alg` to `none` and removing the signature to bypass verification.
**Mitigation:** Explicitly reject tokens with `alg: none` unless specifically designed for it in a secure context.

### Information Leakage (JWS Payload) #SensitiveData #Privacy
The payload of a JWS is only Base64Url-encoded, not encrypted. Sensitive data should not be placed in the payload unless JWE is used.
**Mitigation:** Use JWE for sensitive payload data; minimize data in JWS payload.

### Token Theft #XSS #CSRF #StorageSecurity
Stealing tokens from the client (e.g., via Cross-Site Scripting - XSS) or insecure storage.
**Mitigation:** Use `HttpOnly`, `Secure` cookies; avoid storing tokens in `localStorage`; implement Content Security Policy (CSP); protect against CSRF if using cookies.

### Replay Attacks #TokenReuse #AuthorizationBypass
An attacker capturing a token and re-using it later.
**Mitigation:** Use short expiration times (`exp`); use `jti` (JWT ID) claim and maintain a list of used `jti`s (stateful); implement nonce checks.

### Expiration (`exp`) Handling Issues #ClockSkew #Validation
Improper validation of the `exp` claim, or issues related to clock skew between issuer and verifier.
**Mitigation:** Always validate `exp`; allow for small clock skew; synchronize server clocks (NTP).

### Token Revocation #Logout #Compromise #Scalability
Handling scenarios where a token needs to be invalidated before its expiration (e.g., user logout, password change, compromise). This challenges the stateless nature of JWTs.
**Mitigation:** Short token lifetimes; maintain revocation lists (blocklists) - adds state; use refresh tokens with revocation mechanisms.

### Header Parameter Injection (`jku`, `x5u`) #KeyInjection #TrustIssues
Attackers manipulating header parameters like `jku` (JWK Set URL) or `x5u` (X.509 URL) to point to malicious keys.
**Mitigation:** Don't blindly trust URLs in headers; whitelist trusted URLs/keys; validate certificate chains properly.

### Timing Attacks #SideChannel #Cryptography
Potential side-channel attacks during signature verification, especially with non-constant-time comparison functions.
**Mitigation:** Use constant-time comparison functions provided by crypto libraries.

## Best Practices #Recommendations #SecureImplementation #Guidelines
Key recommendations for implementing JWT securely and effectively.

### Use Strong Secrets and Keys #Security #Cryptography
Generate cryptographically strong secrets (for HMAC) and keys (for asymmetric crypto).

### Key Rotation #SecurityHygiene #CompromiseMitigation
Regularly rotate signing and encryption keys. Have a plan for transitioning to new keys.

### Choose Appropriate Algorithms #Security #Performance
Select algorithms based on security requirements and performance needs (e.g., asymmetric for distributed verification, symmetric for shared secret scenarios). Avoid known weak algorithms.

### Validate ALL Relevant Claims #Verification #SecurityChecks
Always validate `iss`, `aud`, `exp`, `nbf`. Check `sub` and other custom claims as needed by the application logic.

### Use HTTPS #TransportSecurity #EncryptionInTransit
Always transmit JWTs over HTTPS to prevent eavesdropping.

### Secure Token Storage (Client-Side) #XSS #CSRF #BrowserSecurity
Store tokens securely. `HttpOnly`, `Secure`, `SameSite` cookies are generally preferred over `localStorage` or `sessionStorage` due to XSS risks.

### Keep Payload Minimal #Performance #Privacy
Include only necessary claims in the payload to keep tokens small and reduce information exposure (especially for JWS).

### Implement Token Expiration and Renewal #SessionLifecycle #Security
Use short-lived access tokens (`exp`) and potentially longer-lived refresh tokens for renewal.

### Have a Token Revocation Strategy #Logout #SecurityResponse
Decide if revocation is needed and choose an appropriate strategy (blocklist, short lifetimes). Understand the trade-offs (statelessness vs. immediate revocation).

### Explicitly Specify Algorithms #Security #Verification
Verifier should explicitly specify the *expected* algorithm(s) and keys, not rely solely on the `alg` header.

## Libraries and Implementations #Tools #SDKs #Ecosystem
Software libraries and tools for working with JWTs.

### Language-Specific Libraries #Development #Implementation
*   **Java:** `jjwt`, `nimbus-jose-jwt`, Spring Security OAuth
*   **Python:** `PyJWT`, `python-jose`
*   **Node.js / JavaScript:** `jsonwebtoken`, `jose`
*   **.NET:** `System.IdentityModel.Tokens.Jwt`
*   **Go:** `jwt-go` (community maintained fork `golang-jwt/jwt`), `go-jose`
*   **Ruby:** `jwt` gem
*   **PHP:** `lcobucci/jwt`, `firebase/php-jwt`

### Debugging Tools #Development #Troubleshooting
Online debuggers (like jwt.io) and browser extensions for decoding and verifying JWTs.
**Caution:** Be careful pasting sensitive tokens into public online tools.

## Related Standards (JOSE Framework) #Interoperability #Specifications #BuildingBlocks
Other specifications closely related to JWT.

### JOSE (JSON Object Signing and Encryption) #Framework #UmbrellaSpec
The overall framework defining JWS, JWE, JWK, JWA.

### JWS (JSON Web Signature) #Specification #RFC7515
Standard defining how to represent signed content using JSON data structures.

### JWE (JSON Web Encryption) #Specification #RFC7516
Standard defining how to represent encrypted content using JSON data structures.

### JWK (JSON Web Key) #Specification #RFC7517
Standard defining a JSON representation of cryptographic keys.

### JWA (JSON Web Algorithms) #Specification #RFC7518
Standard defining cryptographic algorithms and identifiers used in JOSE.

### Comparison with Other Tokens #Alternatives #SAML #PASETO
Brief comparison with other token formats like SAML (Security Assertion Markup Language) and PASETO (Platform-Agnostic Security Tokens).

## Advanced Topics #BeyondBasics #Specialized #Future
More complex or specialized aspects of JWT usage.

### Nested JWTs #SignThenEncrypt #EncryptThenSign
Combining JWS and JWE for complex security requirements.

### Token Binding #Security #ChannelBinding #RFC8473
Cryptographically binding tokens to the underlying TLS connection to prevent export and replay on different channels.

### JWK Thumbprints #KeyIdentification #RFC7638
A method for creating unique identifiers for JWKs.

### Confirmation Methods (`cnf`) #ProofOfPossession #SenderConstrained #RFC7800
Claim used to associate a key ("proof-of-possession" key) with the JWT, requiring the presenter to demonstrate possession of that key.

### Distributed Systems Considerations #Scalability #KeyDistribution #RevocationChallenges
Challenges in large-scale systems, such as key distribution/management and efficient revocation.

### Performance Implications #TokenSize #VerificationCost
Impact of token size, choice of algorithms, and verification steps on system performance.
