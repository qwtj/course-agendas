# I. Introduction to Next.js

## Understanding Next.js Fundamentals

### React.js Prerequisites

*   Understanding React components, JSX, state, and props.
*   Experience with functional components and hooks (`useState`, `useEffect`).

### Next.js Overview

*   Benefits of Next.js: Server-Side Rendering (SSR), Static Site Generation (SSG), Routing, API Routes.
*   `create-next-app`: Initializing a new Next.js project using the command.
    ```bash
    npx create-next-app my-nextjs-app
    cd my-nextjs-app
    npm run dev
    ```
*   File-based routing: How the `pages` directory defines routes.
    *   `pages/index.js`: The home page route (`/`).
    *   `pages/about.js`: The about page route (`/about`).

## Exploring the Project Structure

### `pages` Directory

*   Creating routes by adding `.js`, `.jsx`, `.ts` or `.tsx` files to the `pages` directory.
*   Dynamic routes with brackets: `pages/posts/[id].js`.

### `public` Directory

*   Serving static assets like images, fonts, and robots.txt.
*   Referencing assets in components using absolute paths: `/image.jpg`.

### `styles` Directory

*   CSS Modules: Writing scoped CSS for components.
*   Global Styles: Applying styles to the entire application.
*   Using CSS-in-JS libraries (e.g., styled-components, emotion) (Optional at this stage).

### `next.config.js`

*   Configuring Next.js behavior: environment variables, image optimization, redirects, rewrites.
*   Example: Adding environment variables:
    ```javascript
    module.exports = {
      env: {
        API_URL: 'https://api.example.com',
      },
    };
    ```

# II. Routing and Navigation

## Client-Side Navigation

### The `<Link>` Component

*   Importing and using the `<Link>` component from `next/link`.
*   Navigating between pages without full page reloads.
*   Example:
    ```jsx
    import Link from 'next/link';

    function Home() {
      return (
        <Link href="/about">
          <a>Go to About Page</a>
        </Link>
      );
    }
    ```

### The `useRouter` Hook

*   Importing and using the `useRouter` hook from `next/router`.
*   Programmatically navigating between pages: `router.push()`, `router.replace()`.
*   Accessing route parameters: `router.query`.
*   Example:
    ```jsx
    import { useRouter } from 'next/router';

    function MyComponent() {
      const router = useRouter();

      const handleClick = () => {
        router.push('/about');
      };

      return <button onClick={handleClick}>Go to About</button>;
    }
    ```

## Dynamic Routes

### Creating Dynamic Routes

*   Using brackets to define dynamic route segments in the `pages` directory: `pages/posts/[id].js`.
*   Accessing route parameters using `useRouter`: `router.query.id`.

### `getStaticPaths` (SSG)

*   Pre-rendering dynamic routes at build time.
*   Defining possible values for the dynamic route segment.
*   Returning an array of objects with the `params` key:
    ```javascript
    export async function getStaticPaths() {
      return {
        paths: [
          { params: { id: '1' } },
          { params: { id: '2' } },
        ],
        fallback: false, // or 'blocking'
      };
    }
    ```

### `getStaticProps` (SSG) or `getServerSideProps` (SSR)

*   Fetching data for dynamic routes.
*   Passing data as props to the page component.
*   Example using `getStaticProps`:
    ```javascript
    export async function getStaticProps({ params }) {
      const data = await fetchData(params.id);
      return {
        props: {
          data,
        },
      };
    }
    ```

# III. Data Fetching

## Understanding Data Fetching Strategies

### Server-Side Rendering (SSR)

*   Rendering pages on the server for each request.
*   Using `getServerSideProps` to fetch data on each request.
*   Suitable for frequently updated data or personalized content.

### Static Site Generation (SSG)

*   Generating pages at build time.
*   Using `getStaticProps` to fetch data during the build process.
*   Suitable for content that doesn't change frequently.

### Client-Side Data Fetching

*   Fetching data in the browser using `useEffect` and `fetch` (or libraries like Axios).
*   Suitable for data that is specific to the user or requires authentication.
*   Example:
    ```jsx
    import { useState, useEffect } from 'react';

    function MyComponent() {
      const [data, setData] = useState(null);

      useEffect(() => {
        fetch('/api/data')
          .then((res) => res.json())
          .then((data) => setData(data));
      }, []);

      return <div>{/* Render data */}</div>;
    }
    ```

## `getStaticProps`

### Implementing `getStaticProps`

*   Defining `getStaticProps` as an `async` function in a page component.
*   Fetching data from an API or database.
*   Returning an object with a `props` key containing the fetched data.
*   Example:
    ```javascript
    export async function getStaticProps() {
      const data = await fetchData();
      return {
        props: {
          data,
        },
      };
    }
    ```

### `revalidate`

*   Incremental Static Regeneration (ISR): Updating statically generated pages after deployment.
*   Adding the `revalidate` key to the `getStaticProps` return object.
*   Specifying the time in seconds after which Next.js will regenerate the page.
*   Example:
    ```javascript
    export async function getStaticProps() {
      const data = await fetchData();
      return {
        props: {
          data,
        },
        revalidate: 10, // Regenerate every 10 seconds
      };
    }
    ```

## `getServerSideProps`

### Implementing `getServerSideProps`

*   Defining `getServerSideProps` as an `async` function in a page component.
*   Fetching data on each request.
*   Returning an object with a `props` key containing the fetched data.
*   Accessing the request and response objects through the `context` parameter.
*   Example:
    ```javascript
    export async function getServerSideProps(context) {
      const data = await fetchData(context.req, context.res);
      return {
        props: {
          data,
        },
      };
    }
    ```

# IV. API Routes

## Creating API Endpoints

### Creating API Routes

*   Creating API routes in the `pages/api` directory.
*   Handling HTTP requests: `req` (request) and `res` (response) objects.
*   Sending JSON responses using `res.json()`.
*   Example:
    ```javascript
    // pages/api/hello.js
    export default function handler(req, res) {
      res.status(200).json({ name: 'John Doe' });
    }
    ```

### Handling Different HTTP Methods

*   Using `req.method` to determine the HTTP method (GET, POST, PUT, DELETE).
*   Implementing different logic based on the HTTP method.
*   Example:
    ```javascript
    export default function handler(req, res) {
      if (req.method === 'GET') {
        // Handle GET request
        res.status(200).json({ message: 'GET request' });
      } else if (req.method === 'POST') {
        // Handle POST request
        const data = req.body;
        res.status(201).json({ message: 'POST request', data });
      } else {
        // Handle other methods
        res.status(405).json({ message: 'Method Not Allowed' });
      }
    }
    ```

## Integrating with Databases

### Connecting to a Database

*   Using database libraries (e.g., Mongoose for MongoDB, Prisma, Sequelize) to connect to a database.
*   Fetching data from the database in API routes.
*   Example (Conceptual with Mongoose):
    ```javascript
    import mongoose from 'mongoose';

    async function connectToDatabase() {
      await mongoose.connect(process.env.MONGODB_URI);
    }

    export default async function handler(req, res) {
      await connectToDatabase();
      // Fetch data from the database
      const data = await MyModel.find({});
      res.status(200).json(data);
    }
    ```

### Performing CRUD Operations

*   Implementing Create, Read, Update, and Delete (CRUD) operations in API routes.
*   Handling data validation and error handling.

# V. Styling and Layout

## CSS Modules

### Using CSS Modules

*   Creating CSS files with the `.module.css` extension.
*   Importing CSS Modules into components.
*   Applying styles using `styles.className`.
*   Example:
    ```jsx
    // components/MyComponent.js
    import styles from './MyComponent.module.css';

    function MyComponent() {
      return <div className={styles.container}>My Component</div>;
    }
    ```
    ```css
    /* components/MyComponent.module.css */
    .container {
      color: blue;
    }
    ```

## Global Styles

### Applying Global Styles

*   Adding global styles to the `styles/global.css` file.
*   Importing the global styles file in `_app.js`.
*   Example:
    ```javascript
    // pages/_app.js
    import '../styles/global.css';

    function MyApp({ Component, pageProps }) {
      return <Component {...pageProps} />;
    }

    export default MyApp;
    ```
    ```css
    /* styles/global.css */
    body {
      font-family: sans-serif;
    }
    ```

## Layout Components

### Creating Layout Components

*   Creating reusable layout components for consistent UI elements (e.g., headers, footers, navigation).
*   Wrapping page content with the layout component in `_app.js`.
*   Example:
    ```jsx
    // components/Layout.js
    function Layout({ children }) {
      return (
        <div>
          <header>Header</header>
          <main>{children}</main>
          <footer>Footer</footer>
        </div>
      );
    }

    export default Layout;
    ```
    ```javascript
    // pages/_app.js
    import Layout from '../components/Layout';

    function MyApp({ Component, pageProps }) {
      return (
        <Layout>
          <Component {...pageProps} />
        </Layout>
      );
    }

    export default MyApp;
    ```

# VI. Deployment

## Preparing for Deployment

### Configuring `next.config.js`

*   Setting environment variables for production.
*   Configuring image optimization settings.
*   Configuring base path if deploying to a subdirectory

### Building the Application

*   Running the `next build` command to create an optimized production build.
    ```bash
    npm run build
    ```

## Deploying to Platforms

### Deploying to Vercel

*   Vercel is created by the makers of Next.js.
*   Connect your GitHub, GitLab, or Bitbucket repository to Vercel.
*   Vercel automatically deploys your Next.js application.

### Deploying to Netlify

*   Connect your Git repository to Netlify.
*   Configure the build command (`next build`) and publish directory (`.next`).
*   Netlify automatically deploys your Next.js application.

### Deploying to AWS (Optional, More Advanced)

*   Using AWS Amplify or other AWS services (e.g., S3, CloudFront, Lambda) to deploy your Next.js application.
*   Requires more configuration and infrastructure management.
