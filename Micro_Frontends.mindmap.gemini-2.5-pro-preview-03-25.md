# Micro Frontends #Architecture #FrontendDevelopment #Modularity
An architectural style where independently deliverable frontend applications are composed into a greater whole. Inspired by microservices, it aims to break down monolithic frontend applications into smaller, more manageable, and independently deployable parts. [1, 4, 7, 10, 20, 23, 24, 37]

## Core Concepts & Principles #Basics #Fundamentals #Theory
Fundamental ideas underlying the micro frontend approach. [4, 6]

### Decomposition #Modularity #Slicing
Breaking down the UI into smaller, independent, business-domain-oriented parts. [1, 7, 23, 24]
How to split the UI (Vertical vs. Horizontal). [6]

#### Vertical Split #DomainDriven #FeatureBased
Splitting by business domain or feature, creating end-to-end teams responsible for a full feature slice (UI to database). [6, 2, 40]

#### Horizontal Split #LayerBased #TechnicalSplit
Splitting by technical layers or shared functionalities across different features (less common for core MFE idea). [6]

### Independent Teams #Autonomy #Decentralization
Enabling small, cross-functional teams to own features end-to-end, from UI to backend/database. [1, 4, 6, 23, 38, 40]
Each team can develop, test, and deploy their micro frontend independently. [1, 5, 6, 8, 23]

### Independent Deployment #CI/CD #ReleaseAgility
Each micro frontend can be deployed independently without requiring a coordinated release of the entire application. [1, 3, 5, 16, 30, 40]

### Technology Agnosticism #Flexibility #TechStack
Teams can choose their own technology stack (frameworks, libraries) for their specific micro frontend, although standardization is often recommended for practicality. [2, 4, 6, 7, 9, 20, 23, 29]
Allows for easier adoption of new technologies and incremental upgrades. [5, 8]

### Code & Style Isolation #Encapsulation #NoConflicts
Preventing CSS style conflicts and JavaScript runtime conflicts between different micro frontends. [2, 4, 13, 19, 25]
Avoid sharing runtime or global variables. [4, 6]

### Resilience #FaultIsolation #Robustness
Failures in one micro frontend should ideally not bring down the entire application. [2, 20, 30]
Features should be usable even if some JavaScript fails. [6]

### Team Prefixes / Namespacing #Conventions #Clarity
Using naming conventions for CSS classes, events, local storage, etc., to avoid collisions where true isolation isn't possible. [4]

## Motivations & Benefits #Advantages #WhyUseMFE
Reasons for adopting a micro frontend architecture.

### Scalability (Team & Application) #Growth #Flexibility
Easier to scale development across multiple teams. [1, 5, 7, 8, 11, 23, 24, 29, 38]
Individual micro frontends can be scaled independently based on demand. [6, 9, 16, 24, 25]

### Faster Development & Deployment #Agility #Speed #TimeToMarket
Independent teams and deployments lead to faster feature delivery cycles. [1, 5, 6, 23, 24, 29, 42]
Reduced development time and bottlenecks. [1, 5]

### Maintainability #CodeQuality #Simplicity
Smaller, focused codebases are easier to understand, maintain, and test. [2, 11, 18, 20, 30, 42]
Divide and conquer approach. [2]

### Technology Flexibility & Evolution #Innovation #Upgrades
Freedom for teams to choose appropriate technologies. [2, 4, 9, 20, 23]
Enables incremental upgrades and easier migration from legacy systems. [5, 8, 29, 40]

### Autonomous Teams #Ownership #Empowerment
Teams have full ownership and control over their part of the application. [1, 6, 23, 38, 40]
Reduces coordination overhead between teams. [6, 11]

### Improved Fault Isolation #Resilience #Stability
Issues in one micro frontend are less likely to impact others. [20, 23]

### Reusability #Efficiency #Components
Micro frontends themselves can potentially be reused across different applications or contexts. [16]

## Drawbacks & Challenges #Disadvantages #Complexity #Considerations
Potential difficulties and downsides of using micro frontends.

### Increased Complexity #Overhead #Management
Managing multiple repositories, build processes, deployments, and teams introduces operational complexity. [2, 11, 20, 40]
Potential for "development sprawl" if not managed well. [11]

### Payload Size #Performance #Optimization
Risk of duplicating dependencies (e.g., framework versions) across micro frontends, leading to larger bundle sizes for the user if not managed. [40]
Requires strategies for sharing common dependencies. [3, 31]

### Operational & Governance Complexity #Standards #Consistency
Need for robust infrastructure, CI/CD pipelines, and governance across teams. [2, 40]
Establishing and maintaining standards (UI/UX, testing, coding) across teams. [2]

### Environment Differences #Consistency #Testing
Ensuring consistent behavior across different development, testing, and production environments for all micro frontends. [40]

### Testing Complexity #QA #Integration
End-to-end testing across multiple independently deployed frontends can be challenging. [8, 22, 29]
Requires strategies for local development and testing setups (e.g., mocking dependencies). [8, 39]

### Shared Functionality Management #Duplication #Libraries
Deciding how to handle shared components, utility functions, and state management across micro frontends. [12, 14, 16, 18, 26, 31, 33]

### Styling Conflicts & Consistency #CSS #UI/UX
Ensuring consistent look and feel and avoiding CSS conflicts requires specific strategies. [2, 5, 13, 19, 31]

### Communication Complexity #Events #StateManagement
Managing communication and state sharing between micro frontends can be complex. [15, 26, 27, 33]

### Cost #Resources #TeamSize
May require larger teams and potentially higher initial setup costs compared to a monolith. [20, 29]

## Architectural Patterns & Integration Techniques #Implementation #Composition
Methods for composing micro frontends into a cohesive application. [40]

### Composition Location #IntegrationPoint

#### Client-Side Composition (Runtime) #Browser #JavaScript #WebComponents #Iframes
Micro frontends are assembled in the user's browser at runtime. [5]
Offers flexibility and dynamic loading. [5]
##### Runtime via JavaScript #Flexibility #DynamicLoading
Using JavaScript to load and mount micro frontends. Often involves a container/shell application. [2, 40] Tools like single-spa or Module Federation facilitate this. [2, 8, 10]
##### Runtime via Web Components #Encapsulation #Standards
Using standard Web Components (Custom Elements, Shadow DOM) to encapsulate and integrate micro frontends. [2, 4, 10, 14, 18, 40] Hides implementation details. [4]
##### Runtime via Iframes #Isolation #Simplicity
Using HTML iframes to embed micro frontends. Provides strong isolation but can have drawbacks regarding communication and UX. [2, 5, 10, 13, 18, 40]

#### Server-Side Composition (SSR) #Performance #SEO #ServerRendering
Micro frontends are composed on the server before sending the page to the browser. [5, 6, 14, 15, 18, 40]
Can improve initial load performance and SEO. [2, 5, 6]
Tools like Tailor, Podium, Next.js. [6, 14]

#### Edge-Side Composition (ESI) #CDN #Performance #EdgeComputing
Composition happens at the CDN edge layer (e.g., using Edge Side Includes or similar technologies). [5, 6, 15]

#### Build-Time Integration #Dependencies #NPM #Monorepo
Micro frontends are compiled and bundled together as dependencies during the build process (e.g., published as npm packages). [2, 4, 6, 12, 17, 18, 25, 40, 41]
Simpler deployment but creates tighter coupling and can negate independence benefits. [6, 17, 25, 40] Often seen with shared component libraries. [12]

### Key Components #BuildingBlocks

#### Container Application (Shell / Host) #Orchestrator #Wrapper
The main application that renders common elements (header, footer), handles routing, authentication, and loads/coordinates the micro frontends. [2, 21, 28, 34, 40]
Should be kept as simple as possible. [2]

#### Micro Frontend Modules #Features #Applications #Parcels
The individual, independently deployable frontend units. [1, 3, 28]
Can be single-spa applications, parcels, or utility modules. [3]

## Communication Strategies #Interaction #StateManagement #Events
How different micro frontends interact with each other and the container. [15, 26, 27, 33]

### Avoiding Direct Communication #Decoupling #Independence
Minimize direct calls between micro frontends to reduce coupling. [15, 27]

### URL Parameters / Routing #Navigation #StatePassing
Passing state or triggering actions via URL changes managed by the container/router. [27, 40]

### Custom Events / Event Bus #PubSub #Asynchronous
Using browser Custom Events or a dedicated event bus for asynchronous communication. Micro frontends publish events, and interested parties subscribe. [15, 26, 27]
Avoids direct dependencies between publisher and subscriber. [15]

### Props Down, Events Up #ParentChild #Attributes
Pattern often used with Web Components or framework components where parent passes data down via attributes/props, and child emits events upwards. [27]

### Shared State Management #StateSync #Complexity
Using shared state stores (e.g., Redux, NgRx) accessible by multiple micro frontends. Use with caution as it can introduce coupling. [26, 27, 33] Often implemented via shared libraries or utility modules. [26]

### Window / Global Scope #SharedContext #Legacy
Using the window object or global variables for communication (generally discouraged due to tight coupling and potential conflicts). [4]

### Backend Communication Pattern #APIs #DataFetching
Each micro frontend should ideally communicate only with its corresponding backend service(s). Avoid cross-team API calls from the frontend. [27, 40]

## Shared Components & Logic #Reusability #Consistency #DRY
Strategies for handling code and UI elements needed by multiple micro frontends. [12, 14, 16, 18, 26, 31, 33, 40]

### Shared Component Libraries #UIKits #DesignSystems
Creating separate libraries/packages for reusable UI components (buttons, forms, etc.) published via registries (e.g., npm). [12, 14, 16, 18, 19, 23]
Ensures UI/UX consistency. [14, 16, 18]

### Monorepos #CodeSharing #Tooling
Using tools like Lerna or Nx to manage multiple packages (including shared libraries and micro frontends) in a single repository. [12] Simplifies code sharing and refactoring. [12]

### Utility Modules / Shared Logic Packages #Functions #Helpers
Sharing non-UI code like utility functions, data formatting, or API clients via separate packages. [3, 12, 21, 26, 31]

### Module Federation #DynamicSharing #Webpack #RuntimeSharing
Using tools like Webpack 5's Module Federation to share code (components, libraries, logic) dynamically at runtime between independently deployed applications. [6, 8, 10, 12, 17, 18, 30, 31, 32] Avoids duplication in user bundles. [17]

### Git Submodules #VersionControl #CodeLinking
Using Git submodules to include shared code repositories within micro frontend repositories (can be cumbersome). [12]

### Copy-Pasting (Anti-Pattern) #Duplication #Avoid
Duplicating code across micro frontends; generally discouraged due to maintenance overhead.

## Styling Strategies #CSS #Design #UIConsistency
Methods for managing CSS and ensuring visual consistency without conflicts. [2, 5, 13, 19, 31, 40]

### CSS Isolation Techniques #Encapsulation #NoConflicts

#### Shadow DOM #WebComponents #TrueIsolation
Using Shadow DOM (part of Web Components) to encapsulate styles within a micro frontend, preventing leaks in or out. [5, 13, 25] May block global styles. [13]

#### CSS Modules #LocalScope #BuildTool
Using CSS Modules (often via build tooling) to locally scope class names automatically, preventing global clashes. [5, 19, 25]

#### CSS-in-JS #ScopedStyles #ComponentLevel
Using libraries (e.g., styled-components) to write styles within JavaScript components, often providing automatic scoping. [5, 19]

#### Naming Conventions (BEM, Prefixes) #Methodology #ManualScoping
Applying strict naming conventions like BEM or team-specific prefixes to CSS classes to manually avoid collisions. [4, 5, 13]

### Shared Styling Approaches #Consistency #DesignSystem

#### Shared CSS Files / Libraries #GlobalStyles #BaseStyles
Providing a common base stylesheet or utility classes (e.g., Tailwind) used by all micro frontends. [5, 19]

#### Shared Design System / Component Library #Guidelines #ReusableUI
Implementing a comprehensive design system with shared components that enforce visual consistency. [2, 16, 19, 23, 30]

## Development Workflow & Tooling #DevEx #Build #Setup
Tools and processes supporting micro frontend development. [30, 32, 35]

### Monorepo vs. Polyrepo #CodeOrganization #RepositoryStructure
Decision on whether to store micro frontends in a single repository (monorepo) or multiple repositories (polyrepo). [12, 41]
Monorepo tools: Lerna, Nx, Bit. [12, 17]

### Local Development Setup #RunningLocally #Integration
Strategies for running and testing multiple micro frontends together locally (e.g., running a shell and specific MFEs, mocking others). [8]

### Build Tools & Bundlers #Compilation #Optimization
Webpack (esp. with Module Federation), Parcel, Rollup. [8, 10, 31, 32]

### Frameworks & Libraries #Ecosystem #Support
Specific frameworks designed for or facilitating micro frontends.
single-spa: Framework-agnostic router and orchestrator. [2, 3, 10, 30, 32, 35]
Qiankun: Based on single-spa, adds features like sandboxing. [30, 32]
Piral: React-based framework. [10, 35]
FrintJS: Modular framework. [32]
Mosaic (Zalando): Complete framework. [32, 35]
Bit: Component-driven tooling, supports independent components/MFEs. [6, 17]

### Component Development Tools #Isolation #UI
Storybook: Develop and test UI components in isolation. [32]

## Deployment Strategies #CI/CD #ReleaseManagement #Infrastructure
How micro frontends are built, tested, and deployed to production. [40]

### Independent Pipelines #Autonomy #Automation
Each micro frontend should have its own CI/CD pipeline for independent building, testing, and deployment. [1, 6, 16, 30]

### Containerization (Docker, Kubernetes) #Packaging #Orchestration
Using containers to package and deploy micro frontends and their associated backends. [2]

### CDN Deployment #StaticAssets #Performance
Deploying static assets (JS, CSS, images) for micro frontends to Content Delivery Networks.

### Versioning Strategies #Compatibility #Updates
Managing versions of micro frontends and shared libraries to ensure compatibility. [30, 41]

## Testing Strategies #QualityAssurance #Verification #Validation
Ensuring the quality and correctness of individual micro frontends and the integrated application. [22, 30, 36, 38, 39]

### Unit Testing #Isolation #Components
Testing individual components or functions within a single micro frontend in isolation. [5, 22, 36, 39] Jest is a common tool. [36, 39]

### Integration Testing #Collaboration #Boundaries
Testing the interaction points between micro frontends or between a micro frontend and its backend. [5, 22, 36] May involve mocking dependencies. [36, 39]

### End-to-End (E2E) Testing #UserFlows #FullSystem
Testing complete user journeys through the integrated application, involving multiple micro frontends. [5, 22, 23, 36] Tools like Cypress are often used. [22, 36] Can be complex to set up and maintain. [8, 22]

### Contract Testing #APIs #Interfaces
Ensuring that the interfaces (APIs, events) between micro frontends or between frontend and backend remain compatible. [22]

### Visual Regression Testing #UI #Consistency
Automated tests to catch unintended visual changes in UI components.

### Performance Testing #Load #Responsiveness
Assessing the performance impact of individual micro frontends and the overall application load time. [3, 22, 38]

### Testing in Isolation vs. Integrated Environment #Scope #Setup
Balancing tests run against a single micro frontend (often using mocks) versus tests run against a fully integrated environment. [38, 39]

## Organizational Impact #Teams #Culture #Collaboration
How adopting micro frontends affects team structure and ways of working.

### Vertical Team Slicing #CrossFunctional #DomainOwnership
Organizing teams around business capabilities or user journeys ("verticals") rather than technical layers ("horizontals"). [2, 6, 40]

### Increased Team Autonomy #Independence #DecisionMaking
Empowering teams to make decisions about their specific domain. [1, 6, 11, 23, 40]

### Need for Strong Communication & Collaboration #Alignment #Standards
While teams are autonomous, communication is crucial for defining interfaces, setting standards, and resolving integration issues. [2, 23, 30]

### DevOps Culture #Automation #Responsibility
Requires a mature DevOps culture where teams own the full lifecycle (dev, test, deploy, operate) of their micro frontend.

## Comparison with Other Architectures #Alternatives #Tradeoffs

### vs. Monolithic Frontend #SingleCodebase #Coupling
Contrasting with traditional single-codebase frontends, highlighting differences in scalability, deployment, team structure, and complexity. [1, 7, 11, 20, 24, 41, 42]
Micro frontends aim to solve the maintainability and scaling issues of large monoliths. [2, 7, 11, 20]

### vs. Microservices #Backend #Analogy
Micro frontends apply similar principles of decomposition and independence as backend microservices, but adapted for the frontend context (browser environment, shared DOM, etc.). [1, 3, 7, 9, 10, 37]

### vs. Component Libraries #Scope #Deployment
Component libraries focus on reusable UI elements within an application, while micro frontends are independently deployable application parts, often encompassing multiple components and features. [16]

### vs. Modular Monolith #InternalModularity #SingleDeployment
A monolith designed with strong internal modularity, but still deployed as a single unit, unlike independently deployable micro frontends. [41]

## Use Cases & Examples #Applications #WhenToUse
Scenarios where micro frontends are particularly beneficial. [6, 23, 28, 34]

### Large, Complex Web Applications #Scale #Enterprise
Applications with significant complexity and many features. [1, 7, 9, 11, 23, 28]

### Multiple Development Teams #Collaboration #ParallelWork
Projects involving numerous teams working concurrently on the same frontend. [1, 6, 7, 23, 28, 42]

### Incremental Modernization / Migration #LegacySystems #Refactoring
Gradually migrating a legacy monolithic frontend by replacing parts with micro frontends. [3, 8, 29, 40]

### Multi-Framework Applications #TechnologyDiversity #MigrationPath
Situations requiring integration of different frontend frameworks (though often recommended to minimize this). [2, 3]

### Real-World Examples #Companies #CaseStudies
IKEA, Spotify, DAZN, Upwork, Canonical, Scania AB, Zalando, Stack Overflow (uses monolith), OpenComponents, Tractor Store example. [10, 29, 35, 40, 41]

## Future Trends & Considerations #Evolution #AdvancedTopics

### Server Components #RSC #NextJS
Exploring integration with newer patterns like React Server Components.

### Edge Computing Integration #Performance #EdgeSideIncludes
Leveraging edge compute for composition and performance optimizations. [5, 15]

### Standardization Efforts #WebStandards #BestPractices
Ongoing evolution of best practices and potential standardization around Web Components and module loading.

### Performance Optimization Techniques #LazyLoading #CodeSplitting
Advanced strategies for lazy loading, code splitting, and dependency sharing to mitigate payload size issues. [3, 8, 30]

### Developer Experience (DevEx) Improvements #Tooling #Efficiency
Continued focus on improving tooling and workflows for easier local development, testing, and debugging. [8]
