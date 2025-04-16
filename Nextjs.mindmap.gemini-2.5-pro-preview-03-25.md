# Nextjs #ReactFramework #FullStack
Next.js is a popular open-source React framework for building full-stack web applications. It provides structure, features, and optimizations on top of React, enabling developers to create fast, interactive, and SEO-friendly sites. [7, 25, 38]

## Core Concepts #Fundamentals #Basics #Overview
Fundamental ideas and features that define Next.js. [2, 7, 11, 27, 28]

### React Framework #React #Framework
Builds upon React, providing additional structure, features, and optimizations for web applications. [2, 7, 25, 38]
Next.js handles tooling and configuration needed for React, allowing developers to focus on the application itself. [7]

### File-based Routing #Routing #FileSystem
Uses the file system to define application routes. Files and folders within specific directories (like `pages/` or `app/`) automatically map to URL paths. [7, 11, 27, 39]
Eliminates the need for manual routing configuration found in many other frameworks. [27]

### Rendering Strategies #Rendering #Performance #SEO
Supports various methods for converting code into viewable UI, including Server-Side Rendering (SSR), Static Site Generation (SSG), Incremental Static Regeneration (ISR), and Client-Side Rendering (CSR). [1, 2, 4, 10, 17, 19, 20, 27, 28]
Allows developers to choose the best rendering approach on a per-page basis. [4, 28]

### Data Fetching #Data #API #ServerSide
Provides simplified and optimized ways to fetch data, both on the server (during build or request time) and on the client. [7, 9, 11, 14, 16, 21, 25, 26]

### Full-Stack Capabilities #FullStack #Backend
Enables building both frontend UI and backend API logic within the same project using features like API Routes (Pages Router) or Route Handlers (App Router). [11, 24, 25]

### Built-in Optimizations #Optimization #Performance #WebDev
Includes automatic optimizations for images, fonts, scripts, code splitting, and more to improve performance and user experience. [7, 8, 12, 13, 15, 23, 25]

### Developer Experience #DX #Tooling
Focuses on providing a smooth development workflow with features like fast refresh (hot module replacement), TypeScript integration, and clear error reporting. [2, 8]

## Routing #Navigation #URL #Structure
How users navigate between different parts of the application. [7, 17]

### Pages Router #LegacyRouting #FileBased
The original file-system based router where files in the `pages` directory define routes. [5, 7, 18, 27]
Each file typically exports a React component. [27]
Supports dynamic routes using bracket notation (e.g., `pages/blog/[slug].js`). [7]
Includes API routes within `pages/api/`. [11, 27]

### App Router #ModernRouting #FileBased #ServerComponents
The newer routing system introduced in Next.js 13+, located in the `app` directory. [5, 7, 17, 18, 28]
Uses Server Components by default. [17, 18]
Introduces new file conventions ( `page.js`, `layout.js`, `loading.js`, `error.js`, `template.js`, `route.js` for API endpoints). [7, 17, 39]
Supports advanced routing patterns like nested layouts, route groups, parallel routes, and intercepting routes. [7, 17, 25]
Dynamic segments use bracket notation (e.g., `app/blog/[slug]/page.js`). [17, 39]
Catch-all routes (`[...slug]`) and optional catch-all routes (`[[...slug]]`). [17]

### Linking and Navigation #Navigation #ClientSideRouting
Using the `next/link` component for client-side transitions between routes without a full page reload. [7, 15]
Using the `useRouter` hook (Pages Router) or `useRouter`, `usePathname`, `useSearchParams` hooks (App Router) for programmatic navigation and route information access.

### Dynamic Routes #DynamicContent #Parameters
Creating routes with parameters in the URL (e.g., product IDs, blog slugs). [7, 17, 33, 39]
Defined using brackets in file/folder names (e.g., `[id]`, `[slug]`). [17, 39]

### Layouts #SharedUI #Structure
Defining shared UI structures that persist across multiple routes. [7, 17]
#### Nested Layouts (App Router) #HierarchicalUI
Ability to nest layouts within each other, applying UI hierarchically. [7, 17]
#### Root Layout (App Router) #GlobalLayout #Required
The top-level layout (`app/layout.js`) required in the App Router, defining the `<html>` and `<body>` tags. [17]

### Route Groups #Organization #RoutingStructure
Organizing routes logically without affecting the URL path using parentheses `(groupName)`. [7, 17]

### Parallel Routes #SimultaneousViews #AdvancedRouting
Rendering multiple independent page segments simultaneously within the same layout using named slots (`@slotName`). [17]

### Intercepting Routes #ModalUI #RouteInterception
Loading a route within the current layout while masking the browser URL, often used for modals. Uses `(.)`, `(..)`, `(..)(..)`, `(...)` conventions. [17]

### Loading UI #LoadingStates #Suspense #UX
Defining loading indicators shown while route segments are loading using `loading.js` (App Router) and React Suspense. [7, 17, 29]

### Error Handling #Errors #Boundaries #UX
Defining error boundaries to gracefully handle runtime errors using `error.js` (App Router) or custom `_error.js` (Pages Router). [7, 17, 29]
Catching errors in root layouts/templates with `global-error.js` (App Router). [35]
Creating custom 404 pages with `not-found.js` (App Router) or `pages/404.js` (Pages Router). [17]

### Redirecting #Navigation #Redirects
Programmatically or declaratively redirecting users from one route to another using `redirect()` (App Router) or `next.config.js`. [7]

### Middleware #Edge #RequestHandling #Auth
Executing code before a request is completed, allowing for modification of requests/responses, redirects, authentication checks, etc. Often runs on the Edge Runtime. [3, 7, 11, 25]

## Rendering #UI #HTMLGeneration #Performance
The process of turning React code into the HTML UI users see. [1, 4, 7, 10, 17, 19, 20, 28]

### Server-Side Rendering (SSR) #DynamicRendering #RequestTime
Generating HTML for a page on the server for *each request*. Ideal for pages with highly dynamic or personalized data. [1, 2, 4, 10, 11, 17, 19, 27, 28, 33]
Ensures up-to-date content and good SEO. [2, 4, 19]
Implemented via `getServerSideProps` (Pages Router) or dynamic rendering in App Router (default for dynamic functions/uncached data). [9, 14, 16, 19, 21]

### Static Site Generation (SSG) #PreRendering #BuildTime #Performance
Generating HTML for a page at *build time*. The same HTML is served for each request, often via CDN. [1, 2, 4, 11, 17, 19, 20, 27, 28]
Offers excellent performance and SEO. [4, 11]
Ideal for content that doesn't change often (blogs, marketing pages, docs). [4, 27]
Implemented via `getStaticProps` and potentially `getStaticPaths` (Pages Router). The App Router achieves SSG by default when fetching data statically. [9, 14, 16, 21]

### Incremental Static Regeneration (ISR) #HybridRendering #StaleWhileRevalidate
Updating static pages *after* build time without needing a full site rebuild. Combines static benefits with dynamic updates. [2, 4, 9, 11, 17, 27]
Uses a `revalidate` option to specify update frequency. [9]
Suitable for large sites or content that needs periodic updates. [4, 27]

### Client-Side Rendering (CSR) #BrowserRendering #Interactivity
Rendering pages directly in the browser using JavaScript. The server sends minimal HTML, and the client fetches data and builds the UI. [1, 4, 17, 19, 20, 28]
Often used after initial pre-rendering (SSR/SSG) for hydration or for parts of a page like dashboards or user-specific content. [1, 4]
Mark components with `'use client'` directive in App Router for CSR. [18, 20, 28, 37, 39]

### React Server Components (RSC) #ServerComponents #AppRouter #Performance
Components that render exclusively on the server (including at build time), never sending their JavaScript to the client. [7, 17, 18, 20, 32]
The default in the App Router. [17, 18, 20, 39]
Can directly access server-side resources (databases, file system) and perform async operations. [7, 17, 25]
Reduces client-side bundle size. [17, 25]

### Client Components #ClientComponents #AppRouter #Interactivity
Components that can render on the server (for initial HTML) and hydrate/render interactively on the client. [7, 28]
Opt-in using the `'use client'` directive at the top of the file. [18, 28, 39]
Necessary for using React hooks (like `useState`, `useEffect`), browser APIs, and event listeners. [28, 37, 39]

### Partial Prerendering (PPR) #Experimental #HybridRendering #Streaming
An experimental rendering strategy aiming to combine the benefits of SSR and SSG. Serves a static shell immediately, while dynamic parts are streamed in. [7, 10]

### Streaming #ProgressiveLoading #UX #Suspense
Sending UI pieces from the server to the client as they become ready, integrated with React Suspense and the App Router. Improves perceived performance for dynamic content. [7, 17, 25, 26]

### Hydration #Interactivity #ClientSide
The process where client-side JavaScript makes the server-rendered static HTML interactive by attaching event listeners and restoring application state. [17, 28]

## Data Fetching #DataManagement #API #Database
Strategies and APIs for retrieving data needed by components. [7, 9, 11, 14, 16, 21, 25, 26, 29]

### Pages Router Data Fetching #LegacyDataFetching
#### `getStaticProps` #SSG #BuildTimeData
Fetches data at build time to pre-render a page statically. [9, 11, 14, 16, 21, 23]
#### `getServerSideProps` #SSR #RequestTimeData
Fetches data on the server for every incoming request. [9, 11, 14, 16, 19, 21, 23]
#### `getStaticPaths` #DynamicSSG #BuildTimePaths
Specifies which dynamic routes should be pre-rendered at build time using SSG. Used with `getStaticProps`. [7, 9, 11]
#### `getInitialProps` (Legacy) #SSR #Legacy
Older method for server-side data fetching, generally replaced by `getServerSideProps` and `getStaticProps`. [14, 16]

### App Router Data Fetching #ModernDataFetching #ServerComponents #FetchAPI
#### Extended `fetch` API #Caching #Revalidation #Deduplication
Next.js extends the native `fetch` API in Server Components to provide automatic request deduplication, caching, and revalidation controls. [7, 16, 26]
#### `async` Server Components #AwaitData #ServerSide
Server Components can be `async` functions, allowing direct use of `await` for data fetching within the component. [7, 17, 25]
#### Client-Side Fetching #ClientComponents #Hooks #SWR
Using libraries like SWR or TanStack Query, or the `useEffect` hook within Client Components (`'use client'`) to fetch data in the browser. [9, 11, 13, 16, 21]
#### Route Handlers (API Routes) #Backend #APIEndpoints
Functions defined in `route.js` files (App Router) to create backend API endpoints for handling requests and fetching/returning data, callable from client or server components. [7, 16, 25, 26]
#### Server Actions #Mutations #Forms #RPC
Functions defined on the server that can be called directly from Client or Server Components, often used for form submissions and data mutations without manually creating API endpoints. Simplifies full-stack data handling. [7, 14, 25, 26, 29]

### Caching #Performance #DataCache #FullRouteCache
Next.js implements multiple layers of caching to improve performance and reduce data fetching costs. [3, 7, 13, 15, 16, 23, 26]
#### Data Cache #FetchCache #PersistentCache
Persistent cache for data fetched using the extended `fetch` API in Server Components. Configurable via `fetch` options (`cache`, `next.revalidate`). [7, 16, 26]
#### Full Route Cache #StaticRenderingCache #AppRouter
Automatic caching of statically rendered route segments in the App Router on the server. [7]
#### Router Cache #ClientSideCache #AppRouter
In-memory client-side cache storing payload of visited route segments for fast navigation. [7]
#### Revalidation #CacheInvalidation #DataFreshness
Strategies to update cached data: time-based (ISR `revalidate` option) or on-demand (using `revalidatePath` or `revalidateTag`). [7, 9, 16, 25, 26]

## Styling #CSS #UI #Design
Methods for applying styles to Next.js applications. [7]

### Global CSS #BaseStyles #AppWide
Importing standard CSS files directly into `_app.js` (Pages Router) or the root `layout.js` (App Router). [7]

### CSS Modules #ScopedCSS #ComponentLevel
Locally scoped CSS by naming files `[name].module.css`. Avoids class name collisions. [7]

### Tailwind CSS #UtilityFirst #CSSFramework
Popular utility-first CSS framework with built-in support and optimization in Next.js. [7]

### Sass/SCSS #CSSPreprocessor #Variables #Mixins
Support for Sass (`.scss`, `.sass` files) after installing the `sass` package. [7]

### CSS-in-JS #StyledComponents #Emotion #RuntimeCSS
Libraries like Styled Components or Emotion allow writing CSS directly within JavaScript components. Next.js provides configuration guidance. [7]

## Optimizations #Performance #Web Vitals #Speed
Built-in features and techniques to enhance application speed and user experience. [7, 8, 11, 12, 13, 15, 23, 25]

### Image Optimization #Images #Performance #next/image
Automatic optimization using the `next/image` component. Provides resizing, format optimization (like WebP), lazy loading, and prevents layout shifts. [6, 7, 12, 13, 15, 23, 25]

### Font Optimization #Fonts #Performance #next/font
Automatic self-hosting and optimization of local or Google Fonts using `next/font`. Improves performance and privacy by avoiding external network requests. [7, 12, 15, 25]

### Script Optimization #Scripts #Performance #next/script
Control loading priority of third-party scripts using `next/script` component (e.g., `beforeInteractive`, `afterInteractive`, `lazyOnload`). [7, 15, 25]

### Code Splitting #Bundling #JavaScript #Performance
Automatically splitting JavaScript bundles on a per-route/per-page basis, so users only download the code needed for the current view. [2, 7, 11, 12, 13, 17, 23]
Dynamic imports (`next/dynamic`) for lazy loading components. [6, 12, 15, 23, 24]

### Bundle Analysis #Webpack #Optimization #Debugging
Tools like `@next/bundle-analyzer` help visualize the size of JavaScript bundles to identify optimization opportunities. [12, 13]

### Turbopack (Beta) #Bundler #Compiler #Rust #Performance
An experimental, Rust-based successor to Webpack aimed at significantly faster build and development compilation times. [8] Can be enabled with `--turbo`. [8]

### Caching Strategies #CDN #BrowserCache #ServerCache
Leveraging CDNs, browser caching, and server-side caching (Data Cache, Full Route Cache) to serve content faster. [3, 13, 15, 23]

## Deployment #Hosting #Production #Server
Options and processes for deploying Next.js applications to production environments. [3, 7, 22, 30, 31, 34]

### Vercel #Platform #Hosting #Serverless #Edge
The platform created by the makers of Next.js, offering seamless deployment, automatic scaling, serverless functions, edge network, and optimized support for all Next.js features. [3, 6, 22, 30, 31]

### Self-Hosting #Nodejs #Docker #Static
Deploying on your own infrastructure. [3, 30, 34]
#### Node.js Server #CustomServer #Standalone
Running `next start` after `next build` on a Node.js server (e.g., using PM2 for process management). Supports all features. [3, 30, 34]
#### Docker Container #Containerization #Kubernetes
Packaging the Next.js application within a Docker container for deployment on container platforms like Kubernetes or cloud providers. [3]
#### Static HTML Export #StaticSite #CDN #LimitedFeatures
Exporting the application as static HTML, CSS, and JS files (`next export`). Suitable for purely static sites but limits dynamic features like SSR, API routes, and ISR. [3, 7, 24, 30, 31]

### Other Platforms #Netlify #AWS #Firebase #Cloud
Deploying to other hosting providers like Netlify, AWS (Amplify, Lambda, EC2), Google Cloud, Azure, Firebase Hosting, Render, Hostinger, etc. [6, 22, 30, 31] Support for Next.js features may vary. [30]

### Build Process #Compilation #Optimization
The `next build` command compiles the application, optimizes assets, generates static pages, and prepares it for production. [3, 8]

## Advanced Topics #Edge #Middleware #Internationalization #Auth
More complex features and concepts for specialized use cases. [6, 11, 29, 33, 35]

### Middleware #RequestInterception #EdgeFunctions
Executing code on requests before they reach the page or API route. Useful for authentication, redirects, A/B testing, localization. [3, 7, 11, 25]

### Edge Runtime #EdgeFunctions #Performance #Vercel
An alternative, lightweight runtime (based on Vercel Edge Functions / Cloudflare Workers) for Middleware and certain Route Handlers/Server Components, offering lower latency by running closer to the user. Has some API limitations compared to the Node.js runtime. [7]

### Internationalization (i18n) #Localization #MultiLanguage
Built-in support for routing based on locales and domains to serve translated content. [6, 7, 25]

### Authentication #Auth #Security #Login
Strategies and patterns for implementing user authentication, often involving Middleware, Server Actions, API/Route Handlers, and third-party libraries/services. [6, 7, 25, 29]

### Server Actions #Mutations #RPC #Forms
Securely executing server-side code triggered by UI interactions (like form submissions) without needing explicit API endpoints. [7, 14, 25, 26, 29]

### Draft Mode #Preview #HeadlessCMS
Allows previewing draft content from a Headless CMS before it's published, bypassing static generation temporarily. [7]

### Custom Server #AdvancedConfiguration #Nodejs
Using a custom Node.js server script instead of `next start` for more control over the server logic (less common now with Middleware and Route Handlers). [7]

### MDX Support #Markdown #Components
Ability to use JSX components directly within Markdown files (`.mdx`). [7]

### Instrumentation #Observability #Monitoring
Using `instrumentation.ts` to register code that runs when the server starts up, useful for OpenTelemetry or other monitoring setups. [35]

## Ecosystem & Integrations #Tooling #Libraries #CMS
Connecting Next.js with other tools and services. [2, 38]

### Vercel Platform #Hosting #Analytics #DevOps
Deployment, analytics, serverless functions, edge network, CI/CD integration. [3, 22, 30]

### Headless CMS #ContentManagement #Sanity #Contentful
Integrating with CMS platforms like Sanity, Contentful, Strapi, Storyblok, etc., for content management. [2, 6]

### UI Libraries #Components #MaterialUI #ChakraUI
Using popular React component libraries within Next.js applications.

### State Management #Redux #Zustand #ContextAPI
Integrating state management solutions for handling complex application state.

### Testing #Jest #Vitest #Cypress #Playwright
Strategies and tools for testing Next.js applications (unit, integration, end-to-end). [6, 7]

## App Router vs. Pages Router #Comparison #Migration #Architecture
Understanding the differences and choosing between the two routing architectures. [5, 18, 32, 36, 37]

### Key Differences #Architecture #Features #Defaults
App Router uses Server Components by default, nested layouts, and new file conventions (`page.js`, `layout.js`). Pages Router uses client-side components by default (pages are pre-rendered then hydrated) and simpler conventions (`pages/`, `_app.js`, `_document.js`). [5, 18, 32, 37]
App Router offers more granular control, advanced routing, and leverages newer React features like Suspense for streaming. [5, 18, 32]
Pages Router is generally considered simpler for basic use cases and has a longer history of stability. [5, 18, 37]

### Performance Considerations #TTFB #BundleSize
App Router's reliance on RSC aims to reduce client-side JS bundles but might have different TTFB characteristics compared to Pages Router SSR, depending on implementation and hosting. [18, 32, 36] Some users report slower TTFB with App Router in self-hosted scenarios initially. [36]

### Developer Experience #DX #LearningCurve
App Router introduces new concepts (Server Components, explicit client boundaries) that require a learning curve compared to the more established Pages Router patterns. [5, 18, 37] Some find Pages Router simpler initially. [5, 37]

### Migration #Upgrade #CodeChanges
Moving from Pages Router to App Router requires adapting to the new conventions, data fetching methods, and component types. Next.js provides migration guides. [32]

### When to Choose Which #DecisionGuide #ProjectNeeds
App Router is recommended for new projects to leverage the latest features. [18, 32]
Pages Router remains viable for existing projects or simpler applications where the advanced features of App Router are not needed. [5, 18] Stability and team familiarity might favour Pages Router in some contexts. [18, 37]
