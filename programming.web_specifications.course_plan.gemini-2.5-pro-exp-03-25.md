# I. Core Web Platform

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, clearly state the key learning objectives for the Core Web Platform section. Focus on understanding the foundational specifications (DOM, HTML, CSSOM, Fetch, URL, Console) and their roles in web structure, presentation, manipulation, and communication.</prompt>"

## DOM (Document Object Model)
"<prompt>Starting with heading level 2, explain the concept and purpose of the DOM (Document Object Model) as a core web platform specification. Describe how it represents the structure of HTML and XML documents as a tree of objects and how it allows programmatic access and manipulation of document content, structure, and style.</prompt>"

### Understanding the DOM Tree
"<prompt>Starting with heading level 3, describe the hierarchical tree structure of the DOM, including nodes (element nodes, text nodes, attribute nodes). Provide a simple HTML snippet and illustrate its corresponding DOM tree structure.</prompt>"

### Accessing and Manipulating DOM Elements
"<prompt>Starting with heading level 3, provide practical JavaScript code examples demonstrating how to select DOM elements using methods like `getElementById`, `getElementsByTagName`, `getElementsByClassName`, `querySelector`, and `querySelectorAll`. Show how to modify element content (e.g., `textContent`, `innerHTML`), attributes (`getAttribute`, `setAttribute`), and styles (`element.style`).</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block demonstrating how to change the text content of a paragraph element with the ID `myParagraph` to 'New content!'</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block showing how to add a CSS class named `highlight` to a `div` element selected using `querySelector`.</prompt>"

### Creating and Removing DOM Nodes
"<prompt>Starting with heading level 3, provide JavaScript code examples for creating new DOM elements (`createElement`), creating text nodes (`createTextNode`), appending nodes to the tree (`appendChild`, `insertBefore`), and removing nodes (`removeChild`).</prompt>"

## HTML Living Standard
"<prompt>Starting with heading level 2, explain the HTML Living Standard as the core language for structuring web content. Briefly describe its evolution from previous HTML versions and its role as a continuously updated standard maintained by WHATWG. Emphasize its importance in defining the semantics and structure of web pages.</prompt>"

### Key HTML Elements and Semantics
"<prompt>Starting with heading level 3, list and explain the purpose of essential HTML structural elements (e.g., `<html>`, `<head>`, `<body>`, `<header>`, `<footer>`, `<nav>`, `<main>`, `<article>`, `<section>`, `<div>`, `<span>`) and content elements (e.g., `<p>`, `<h1>`-`<h6>`, `<a>`, `<img>`, `<ul>`, `<ol>`, `<li>`, `<table>`, `<form>`). Emphasize the importance of using semantic HTML for accessibility and SEO.</prompt>"

## CSS Object Model (CSSOM)
"<prompt>Starting with heading level 2, explain the CSS Object Model (CSSOM) and its relationship to the DOM. Describe how the browser parses CSS rules and creates a tree structure representing the styles applied to DOM elements. Explain how the CSSOM enables JavaScript to dynamically access and modify CSS styles.</prompt>"

### Accessing Styles via CSSOM
"<prompt>Starting with heading level 3, provide JavaScript code examples showing how to access the computed styles of an element using `window.getComputedStyle()` and how to directly modify inline styles using the `element.style` property.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block demonstrating how to retrieve the computed background color of an element with ID `myElement`.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block showing how to change the font size of an element with ID `myElement` to `16px` using the `element.style` property.</prompt>"

## Fetch API
"<prompt>Starting with heading level 2, introduce the Fetch API as the modern standard for making network requests (e.g., fetching resources like data or assets) in web browsers. Contrast it briefly with the older `XMLHttpRequest` object. Explain its promise-based nature and basic usage for GET and POST requests.</prompt>"

### Making Basic Fetch Requests
"<prompt>Starting with heading level 3, provide JavaScript code examples using `fetch()` to make a simple GET request to retrieve JSON data from a URL and handle the response using Promises (`.then()`, `.catch()`). Also, show a basic POST request sending JSON data.</prompt>"
*   **Example (GET):** "<prompt>Starting with heading level 4, provide a complete JavaScript code block using `fetch` to get data from a hypothetical API endpoint `/api/data` and log the JSON response to the console, including basic error handling.</prompt>"
*   **Example (POST):** "<prompt>Starting with heading level 4, provide a complete JavaScript code block using `fetch` to send a JavaScript object `{ name: 'Example', value: 123 }` as JSON in the body of a POST request to `/api/submit`, including setting appropriate headers (`Content-Type: application/json`).</prompt>"

### Handling Responses
"<prompt>Starting with heading level 3, explain how to work with the `Response` object returned by `fetch()`, including methods like `.json()`, `.text()`, `.blob()`, and checking the response status (`response.ok`, `response.status`).</prompt>"

## URL API
"<prompt>Starting with heading level 2, describe the URL API and its utility for parsing, constructing, and manipulating URL strings in JavaScript. Explain the benefits of using the `URL` object over manual string manipulation.</prompt>"

### Parsing and Accessing URL Components
"<prompt>Starting with heading level 3, provide JavaScript code examples demonstrating how to create a `URL` object from a URL string and access its components like `protocol`, `hostname`, `port`, `pathname`, `search`, and `hash`.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, show JavaScript code that creates a `URL` object from 'https://example.com:8080/path/page?query=test#section' and logs its `hostname`, `pathname`, and `search` properties.</prompt>"

### Modifying URLs and Search Parameters
"<prompt>Starting with heading level 3, explain how to modify URL components using the `URL` object's properties and how to work with URL search parameters using the `URLSearchParams` interface (e.g., getting, setting, appending, deleting parameters).</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, show JavaScript code that creates a `URLSearchParams` object from '?q=search&limit=10', gets the value of 'q', sets the value of 'limit' to 20, appends a new parameter 'page=1', and converts it back to a string.</prompt>"

## Console API
"<prompt>Starting with heading level 2, explain the purpose of the Console API as a fundamental tool for debugging web applications directly within the browser's developer tools. List common methods and their uses.</prompt>"

### Common Console Methods
"<prompt>Starting with heading level 3, provide examples and explanations for essential `console` methods like `console.log()`, `console.warn()`, `console.error()`, `console.info()`, `console.table()`, `console.group()`/`console.groupEnd()`, and `console.time()`/`console.timeEnd()`. Explain when each might be used during development and debugging.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, show how to use `console.table()` to display an array of objects in a tabular format.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, demonstrate using `console.group()` and `console.groupEnd()` to organize related log messages.</prompt>"

*   **Section I Summary:** "<prompt>Starting with heading level 3, provide a concise summary of the Core Web Platform section, reiterating the fundamental roles of DOM, HTML, CSSOM, Fetch, URL, and Console APIs in building and interacting with web pages.</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to reflect on how the DOM, HTML, and CSSOM interact to create the visual representation of a webpage and how the Fetch API enables dynamic content loading.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement leading into the next major topic, JavaScript Language & Extensions, highlighting how the core platform APIs are primarily manipulated using JavaScript.</prompt>"

# II. JavaScript Language & Extensions

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, state the learning objectives for the JavaScript Language & Extensions section. Focus on understanding the core ECMAScript specification, the role of WebAssembly, and the module system for organizing JavaScript code.</prompt>"

## ECMAScript (JavaScript)
"<prompt>Starting with heading level 2, explain ECMAScript as the standardized specification upon which JavaScript is based. Briefly mention its history, the role of TC39, and the concept of yearly updates (ES6/ES2015, ES2016, etc.). Highlight key features introduced in modern ECMAScript versions relevant to web development (e.g., `let`/`const`, arrow functions, classes, promises, async/await, modules).</prompt>"

### Core Language Features
"<prompt>Starting with heading level 3, provide brief explanations and code snippets illustrating fundamental modern JavaScript features such as variable declarations (`let`, `const`), arrow functions, template literals, destructuring assignment, Promises, and `async`/`await` syntax for handling asynchronous operations. (Cross-reference Fetch API in Section I).</prompt>"
*   **Example (async/await):** "<prompt>Starting with heading level 4, provide a JavaScript code block demonstrating the use of `async`/`await` to handle the Promise returned by a `fetch` call, making asynchronous code look more synchronous.</prompt>"

## Web Assembly
"<prompt>Starting with heading level 2, introduce WebAssembly (Wasm) as a binary instruction format that allows running code written in languages other than JavaScript (like C, C++, Rust) on the web at near-native speed. Explain its purpose, typical use cases (e.g., performance-intensive tasks like gaming, video editing, cryptography), and how it interacts with JavaScript.</prompt>"

### Interacting with Wasm Modules
"<prompt>Starting with heading level 3, briefly explain the process of loading and instantiating a `.wasm` module using JavaScript and calling exported functions from the Wasm module within JavaScript code.</prompt>"
*   **Note:** "<prompt>Mention that compiling code to WebAssembly typically involves toolchains specific to the source language (e.g., Emscripten for C/C++).</prompt>"

## JavaScript Modules
"<prompt>Starting with heading level 2, explain the native JavaScript module system (ES Modules) defined in ECMAScript. Describe its purpose for organizing code into reusable, self-contained files using `import` and `export` syntax. Contrast it briefly with older module systems like CommonJS or AMD.</prompt>"

### Using `import` and `export`
"<prompt>Starting with heading level 3, provide clear JavaScript code examples demonstrating how to export functions, variables, or classes from one JavaScript file (`export`, `export default`) and import them into another file (`import`). Show examples of named imports and default imports.</prompt>"
*   **Example (Exporting):** "<prompt>Starting with heading level 4, show a simple JavaScript code block in a file named `mathUtils.js` that exports a function `add(a, b)` and a constant `PI`.</prompt>"
*   **Example (Importing):** "<prompt>Starting with heading level 4, show a JavaScript code block in another file that imports the `add` function and `PI` constant from `mathUtils.js` and uses them.</prompt>"

### Dynamic Imports
"<prompt>Starting with heading level 3, introduce the concept of dynamic `import()` which allows loading modules on demand, returning a Promise. Explain its use cases, such as code splitting and lazy loading.</prompt>"

*   **Section II Summary:** "<prompt>Starting with heading level 3, summarize the key concepts covered in the JavaScript Language & Extensions section: the ECMAScript standard driving JavaScript's evolution, the performance potential of WebAssembly, and the organizational benefits of ES Modules.</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to consider how JavaScript modules help manage complexity in larger web applications compared to using only global scripts.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing the next section, Storage & Files, explaining the need for web applications to store data locally on the user's machine.</prompt>"

# III. Storage & Files

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, outline the learning objectives for the Storage & Files section. Focus on understanding different mechanisms for client-side storage (Web Storage, IndexedDB, Cache API) and interacting with files (File API, File System Access API).</prompt>"

## File API
"<prompt>Starting with heading level 2, introduce the File API, explaining how it allows web applications to access file content selected by the user, typically through an `<input type='file'>` element. Describe the `File` and `FileList` objects and how to read file metadata (name, size, type).</prompt>"

### Reading File Content
"<prompt>Starting with heading level 3, explain the role of the `FileReader` object. Provide JavaScript code examples demonstrating how to read the content of a user-selected file as text (`readAsText`), a data URL (`readAsDataURL`), or an `ArrayBuffer` (`readAsArrayBuffer`). Include handling asynchronous load events.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block that listens for changes on a file input element, gets the selected `File` object, creates a `FileReader`, and reads the file content as text, logging it when complete.</prompt>"

## File System Access API
"<prompt>Starting with heading level 2, describe the File System Access API as a more powerful (and permission-based) API that enables web apps to directly read, write, and manage files and directories on the user's local file system (with explicit user permission). Contrast its capabilities with the basic File API.</prompt>"

### Reading and Writing Files
"<prompt>Starting with heading level 3, explain the core concepts: obtaining file or directory handles (e.g., `showOpenFilePicker`, `showSaveFilePicker`, `showDirectoryPicker`), getting `FileSystemFileHandle` or `FileSystemDirectoryHandle` objects, and using methods like `getFile()` and `createWritable()` to read and write file content.</prompt>"
*   **Note:** "<prompt>Highlight that this API requires user interaction and explicit permissions for security reasons and browser support might vary.</prompt>"
*   **Example (Conceptual):** "<prompt>Starting with heading level 4, provide a conceptual JavaScript code snippet using `async/await` to illustrate the flow of picking a file with `showOpenFilePicker`, getting the file object, and reading its text content.</prompt>"

## IndexedDB
"<prompt>Starting with heading level 2, introduce IndexedDB as a low-level API for client-side storage of significant amounts of structured data, including files/blobs. Explain its asynchronous nature, transactional model, and use cases (offline data storage, caching large datasets). Mention it's more complex than Web Storage.</prompt>"

### Core Concepts
"<prompt>Starting with heading level 3, explain the fundamental concepts of IndexedDB: databases, object stores (similar to tables), indexes (for searching), transactions (for data integrity), cursors (for iterating over data), and asynchronous requests.</prompt>"

### Basic Operations
"<prompt>Starting with heading level 3, provide conceptual JavaScript code examples illustrating how to open a database, create an object store during a version upgrade, add data (`add`), retrieve data (`get`), update data (`put`), and delete data (`delete`) within a transaction.</prompt>"
*   **Note:** "<prompt>Acknowledge the complexity and suggest considering wrapper libraries for simpler usage in many cases.</prompt>"

## Web Storage (localStorage & sessionStorage)
"<prompt>Starting with heading level 2, explain the Web Storage API, specifically `localStorage` and `sessionStorage`. Describe it as a simple mechanism for storing key/value pairs as strings. Contrast `localStorage` (persistent) and `sessionStorage` (session-based). Mention storage limits (typically 5-10MB).</prompt>"

### Using localStorage and sessionStorage
"<prompt>Starting with heading level 3, provide simple JavaScript code examples demonstrating how to store data (`setItem(key, value)`), retrieve data (`getItem(key)`), remove data (`removeItem(key)`), and clear all data (`clear()`) for both `localStorage` and `sessionStorage`.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, show how to save a user preference 'theme' with value 'dark' to `localStorage` and retrieve it later.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, show how to save a temporary session ID to `sessionStorage`.</prompt>"

## Cache API
"<prompt>Starting with heading level 2, introduce the Cache API as part of the Service Worker specification, designed for storing and retrieving network requests and responses. Explain its primary use case in enabling offline experiences and improving performance by caching assets.</prompt>"

### Caching Requests and Responses
"<prompt>Starting with heading level 3, explain the core operations: opening or creating a cache using `caches.open(cacheName)`, adding responses using `cache.put(request, response)` or `cache.addAll(urls)`, retrieving responses using `cache.match(request)`, and deleting caches or entries (`caches.delete`, `cache.delete`).</prompt>"
*   **Note:** "<prompt>Mention that the Cache API is typically used within the context of Service Workers (See Section V).</prompt>"
*   **Example (Conceptual):** "<prompt>Starting with heading level 4, provide a conceptual JavaScript snippet showing how to open a cache named 'my-cache-v1' and add a resource URL '/styles.css' to it.</prompt>"

*   **Section III Summary:** "<prompt>Starting with heading level 3, summarize the different client-side storage options (simple Web Storage, powerful IndexedDB, request-focused Cache API) and file interaction methods (user-selected File API, direct File System Access API), highlighting their respective use cases and trade-offs.</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to consider scenarios where they would choose `localStorage` versus `IndexedDB` for storing application data.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section IV, Networking & Communication, focusing on APIs that enable real-time and asynchronous communication between the browser and servers or other clients.</prompt>"

# IV. Networking & Communication

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, define the learning objectives for the Networking & Communication section. Aim for understanding various communication protocols and APIs like WebSockets, Server-Sent Events (SSE), WebRTC, and the older XMLHttpRequest (XHR).</prompt>"

## WebSockets
"<prompt>Starting with heading level 2, introduce the WebSocket API, explaining its purpose for establishing persistent, bidirectional communication channels between a client (browser) and a server over a single TCP connection. Contrast this with the request/response model of HTTP. Highlight use cases like real-time chats, live notifications, and multiplayer games.</prompt>"

### Establishing a Connection and Exchanging Data
"<prompt>Starting with heading level 3, provide JavaScript code examples showing how to create a new `WebSocket` connection to a server (`ws://` or `wss://`), handle connection opening (`onopen`), receiving messages (`onmessage`), sending messages (`send()`), handling errors (`onerror`), and closing the connection (`onclose`, `close()`).</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a basic JavaScript code block demonstrating how to connect to a WebSocket server at `wss://example.com/socket`, send a message 'Hello Server!' upon connection, and log any incoming messages.</prompt>"

## XMLHttpRequest (XHR)
"<prompt>Starting with heading level 2, describe the `XMLHttpRequest` (XHR) object as the older mechanism for making asynchronous HTTP requests from web browsers. Mention that while the Fetch API (Section I) is generally preferred now, XHR is still widely used and important to understand, especially when working with older codebases or needing features like progress events.</prompt>"

### Making Requests with XHR
"<prompt>Starting with heading level 3, provide JavaScript code examples showing how to create an `XMLHttpRequest` instance, configure it using `open(method, url, async)`, set request headers (`setRequestHeader`), handle the response using the `onload` event (checking `status` and accessing `responseText` or `responseXML`), handle errors (`onerror`), and send the request (`send()`). Include an example for tracking upload/download progress using progress events (`onprogress`).</prompt>"
*   **Example (GET):** "<prompt>Starting with heading level 4, provide a JavaScript code block demonstrating a simple GET request using XHR to retrieve data from `/api/data` and logging the response text upon successful completion.</prompt>"
*   **Example (Progress):** "<prompt>Starting with heading level 4, show how to attach an event listener to the XHR `upload.onprogress` event to calculate and display upload progress.</prompt>"

## Server-Sent Events (SSE)
"<prompt>Starting with heading level 2, explain Server-Sent Events (SSE) as a standard enabling servers to push data updates to the client over a standard HTTP connection (server-to-client only). Contrast it with WebSockets (bidirectional). Mention use cases like live news feeds, stock tickers, and status updates.</prompt>"

### Subscribing to Events
"<prompt>Starting with heading level 3, provide JavaScript code examples showing how to create an `EventSource` object pointing to a server endpoint that generates SSE streams. Demonstrate how to listen for incoming messages using the `onmessage` event handler and how to listen for custom-named events using `addEventListener(eventName, handler)`.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block that connects to an SSE endpoint `/api/updates` and logs the `data` field of any incoming messages.</prompt>"

## WebRTC (Web Real-Time Communication)
"<prompt>Starting with heading level 2, introduce WebRTC as a framework enabling real-time communication (audio, video, and generic data) directly between browsers (peer-to-peer) without requiring intermediary servers for the data transfer itself (though signaling servers are needed for connection setup). Mention key use cases: video conferencing, P2P file sharing, and live streaming.</prompt>"

### Core Concepts
"<prompt>Starting with heading level 3, briefly explain the main components and concepts of WebRTC: `getUserMedia` (accessing camera/microphone - see Section VI), `RTCPeerConnection` (establishing the P2P connection), `RTCDataChannel` (for arbitrary data transfer), and the need for signaling (using mechanisms like WebSockets) to exchange metadata for connection setup (SDP, ICE candidates).</prompt>"
*   **Note:** "<prompt>Acknowledge the complexity of WebRTC and suggest focusing on the high-level concepts and use cases initially.</prompt>"

## Broadcast Channel API
"<prompt>Starting with heading level 2, describe the Broadcast Channel API as a simple mechanism allowing basic communication between different browsing contexts (windows, tabs, iframes) of the same origin. Explain its use case for synchronizing state across multiple open instances of the same web application.</prompt>"

### Sending and Receiving Messages
"<prompt>Starting with heading level 3, provide JavaScript code examples showing how to create a `BroadcastChannel` instance with a specific name, post messages using `channel.postMessage(data)`, and listen for messages from other contexts using the `onmessage` event handler.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, demonstrate creating a channel named 'app-sync', sending an object `{ action: 'update', value: 42 }`, and setting up a listener to log received messages.</prompt>"

## Web Transport
"<prompt>Starting with heading level 2, introduce WebTransport as a modern API designed to offer low-latency, bidirectional, client-server messaging. Mention it aims to combine the benefits of WebSockets and WebRTC data channels, supporting unreliable datagrams (UDP-like) and reliable streams (TCP-like) over HTTP/3 (QUIC).</prompt>"
*   **Note:** "<prompt>Highlight that WebTransport is a newer API and focus on its intended purpose and advantages over older communication methods for specific use cases requiring low latency and flexibility.</prompt>"

*   **Section IV Summary:** "<prompt>Starting with heading level 3, summarize the various networking and communication APIs covered, contrasting their communication models: request/response (Fetch, XHR), persistent bidirectional (WebSockets, WebTransport), server-to-client push (SSE), peer-to-peer (WebRTC), and inter-context (Broadcast Channel).</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to compare WebSockets and Server-Sent Events, identifying scenarios where one would be more appropriate than the other.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section V, Multithreading & Background Processing, explaining how browsers can perform tasks off the main thread to avoid blocking user interaction.</prompt>"

# V. Multithreading & Background Processing

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, specify the learning objectives for the Multithreading & Background Processing section. Focus on understanding how Web Workers enable parallel execution, how Service Workers act as network proxies, and the purpose of background fetch and sync APIs.</prompt>"

## Web Workers
"<prompt>Starting with heading level 2, introduce Web Workers as a mechanism to run scripts in background threads, separate from the main execution thread that handles the UI. Explain the key benefit: performing computationally intensive tasks without freezing the user interface. Distinguish between dedicated workers and shared workers (briefly).</prompt>"

### Creating and Communicating with Workers
"<prompt>Starting with heading level 3, provide JavaScript code examples for both the main script and the worker script. Show how to create a new `Worker` instance in the main script (`new Worker('worker.js')`), send messages to the worker (`worker.postMessage(data)`), receive messages from the worker (`worker.onmessage`), and handle errors (`worker.onerror`). In the worker script, show how to listen for messages (`self.onmessage`) and send results back (`self.postMessage(result)`).</prompt>"
*   **Example (Main Script):** "<prompt>Starting with heading level 4, provide a JavaScript code block for the main thread that creates a worker from `calculatorWorker.js`, sends it an object `{ command: 'add', values: [10, 20] }`, and logs the result received from the worker.</prompt>"
*   **Example (Worker Script):** "<prompt>Starting with heading level 4, provide the corresponding JavaScript code block for `calculatorWorker.js` that listens for messages, performs the requested calculation (e.g., addition), and posts the result back to the main thread.</prompt>"
*   **Limitations:** "<prompt>Starting with heading level 4, mention key limitations of Web Workers, such as no direct access to the DOM or the `window` object, and communication relying solely on message passing.</prompt>"

## Service Workers
"<prompt>Starting with heading level 2, explain Service Workers as event-driven workers registered for an origin and path, acting as programmable network proxies that sit between the web application, the browser, and the network. Highlight their key capabilities: intercepting network requests, enabling offline experiences (via caching, see Cache API in Section III), handling push notifications (see Push API in Section XI), and background sync.</prompt>"

### Lifecycle and Registration
"<prompt>Starting with heading level 3, describe the service worker lifecycle (registering, installing, activating, fetching). Provide a JavaScript code example showing how to register a service worker script using `navigator.serviceWorker.register('/sw.js')` in the main application code.</prompt>"

### Intercepting Network Requests
"<prompt>Starting with heading level 3, explain the concept of the `fetch` event within the service worker script. Provide a conceptual example within a service worker file (`sw.js`) showing how to listen for the `fetch` event (`self.addEventListener('fetch', event => { ... })`) and potentially respond with a cached asset using the Cache API (`event.respondWith(caches.match(event.request))`).</prompt>"
*   **Note:** "<prompt>Emphasize that Service Workers run independently of the web page and are essential for Progressive Web Apps (PWAs).</prompt>"

## Background Fetch API
"<prompt>Starting with heading level 2, introduce the Background Fetch API as a way to delegate the downloading or uploading of large resources (like videos, software updates) to the browser, allowing the transfers to continue even if the user navigates away from the page or closes the initiating tab. Explain its advantage over standard `fetch` or `XHR` for large, unreliable transfers.</prompt>"

### Initiating a Background Fetch
"<prompt>Starting with heading level 3, briefly explain the process: registering a service worker, then using `backgroundFetch.fetch(id, requests, options)` to start a fetch operation. Mention that progress and completion are typically handled within the associated Service Worker.</prompt>"
*   **Note:** "<prompt>Highlight this is for specialized use cases involving large file transfers.</prompt>"

## Background Sync API
"<prompt>Starting with heading level 2, describe the Background Sync API (specifically one-off sync) as a mechanism allowing web applications to defer actions until the user has stable network connectivity. Explain its primary use case: ensuring that user actions taken while offline (e.g., sending a message, submitting a form) are reliably completed once connectivity is restored.</prompt>"

### Registering for Sync
"<prompt>Starting with heading level 3, explain the process: the web page requests a sync registration (`syncManager.register('mySyncTag')`) via the Service Worker registration object. The browser then fires a `sync` event in the Service Worker when connectivity is available, allowing the deferred action (e.g., fetching data, sending stored form data) to be performed.</prompt>"
*   **Example (Conceptual):** "<prompt>Starting with heading level 4, show conceptual code within a Service Worker listening for the `sync` event and checking the event tag (`event.tag`) to perform the appropriate background task.</prompt>"

*   **Section V Summary:** "<prompt>Starting with heading level 3, summarize the APIs for background processing: Web Workers for parallel computation off the main thread, Service Workers as powerful network proxies enabling offline capabilities and background tasks, and Background Fetch/Sync for reliable large transfers and deferred actions.</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to think about how Service Workers fundamentally change the capabilities of a web application compared to a traditional website.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section VI, Media & Graphics, focusing on APIs that allow web applications to render graphics and interact with audio and video.</prompt>"

# VI. Media & Graphics

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, state the learning objectives for the Media & Graphics section. Focus on understanding APIs for 2D/3D rendering (Canvas, WebGL, WebGPU), audio processing (Web Audio), media playback and control (Media Source Extensions, Media Capture), and codec access (WebCodecs).</prompt>"

## Canvas API
"<prompt>Starting with heading level 2, introduce the Canvas API, focusing on the 2D rendering context (`getContext('2d')`). Explain that it provides a way to draw graphics dynamically via JavaScript, rendering shapes, text, and images onto an HTML `<canvas>` element. Mention its use cases: data visualization, simple games, image manipulation.</prompt>"

### Basic Drawing Operations
"<prompt>Starting with heading level 3, provide JavaScript code examples demonstrating how to get the 2D rendering context from a `<canvas>` element and perform basic drawing operations like drawing rectangles (`fillRect`, `strokeRect`), paths (`beginPath`, `moveTo`, `lineTo`, `stroke`, `fill`), arcs (`arc`), and text (`fillText`).</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block that draws a filled red rectangle and some black text onto a canvas element with ID `myCanvas`.</prompt>"

## WebGL (Web Graphics Library)
"<prompt>Starting with heading level 2, introduce WebGL as a JavaScript API for rendering interactive 2D and 3D graphics within an HTML `<canvas>` element without plugins. Explain that it's based on OpenGL ES and provides low-level access to the GPU, enabling high-performance graphics. Mention its complexity and common use with helper libraries (like Three.js, Babylon.js).</prompt>"

### Core Concepts
"<prompt>Starting with heading level 3, briefly explain the fundamental concepts of the WebGL pipeline: shaders (vertex and fragment shaders written in GLSL), buffers (for vertex data), textures (for images), initializing the WebGL context, compiling shaders, linking programs, and the rendering loop.</prompt>"
*   **Note:** "<prompt>Emphasize that direct WebGL programming is complex and often abstracted by higher-level libraries.</prompt>"

## WebGPU
"<prompt>Starting with heading level 2, introduce WebGPU as the successor to WebGL, designed to provide more modern, efficient, and predictable access to GPU capabilities for both graphics rendering and general-purpose GPU computations (GPGPU). Mention its advantages like better performance by reducing CPU overhead, improved API design, and native support for compute shaders.</prompt>"
*   **Note:** "<prompt>Highlight that WebGPU is a newer API, potentially offering significant performance gains for demanding applications, but browser support is still evolving.</prompt>"

### Key Differences from WebGL
"<prompt>Starting with heading level 3, briefly outline some key differences compared to WebGL, such as the explicit concepts of physical devices, logical devices, command queues, pipeline state objects (PSOs), and bind groups.</prompt>"

## Media Capture and Streams API (getUserMedia)
"<prompt>Starting with heading level 2, explain the Media Capture and Streams API, focusing on the `navigator.mediaDevices.getUserMedia()` method. Describe how it allows web applications to request access to the user's camera and microphone, retrieving the audio and video as a `MediaStream` object.</prompt>"

### Accessing Camera and Microphone
"<prompt>Starting with heading level 3, provide a JavaScript code example using `async/await` and `navigator.mediaDevices.getUserMedia({ video: true, audio: true })` to request access to both video and audio. Show how to handle success (receiving the `MediaStream`) and attach it to an HTML `<video>` element's `srcObject` property for display. Include error handling for permissions denial or hardware issues.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a complete JavaScript code block that attempts to get user media (video only) and displays the stream in a `<video>` element with ID `localVideo`.</prompt>"

## Media Source Extensions (MSE)
"<prompt>Starting with heading level 2, introduce Media Source Extensions (MSE) as an API that allows JavaScript to dynamically construct media streams for playback using the HTML `<audio>` and `<video>` elements. Explain its primary use case in enabling adaptive streaming technologies like DASH (Dynamic Adaptive Streaming over HTTP) and HLS (HTTP Live Streaming) directly within the browser, allowing for variable bitrate streaming without plugins.</prompt>"

### How MSE Works
"<prompt>Starting with heading level 3, explain the basic workflow: creating a `MediaSource` object, attaching it to a media element via a URL created with `URL.createObjectURL()`, adding `SourceBuffer` instances to the `MediaSource`, and appending media segments (fetched via Fetch or XHR) into the buffers (`appendBuffer()`).</prompt>"
*   **Note:** "<prompt>Mention that MSE is typically used by video player libraries rather than directly by most application developers.</prompt>"

## Web Audio API
"<prompt>Starting with heading level 2, describe the Web Audio API as a high-level JavaScript API for processing and synthesizing audio in web applications. Explain its modular routing graph concept, involving audio nodes connected together, starting from sources (like oscillators, audio files, microphone input) through processing nodes (like gain, filters, effects) to a destination (usually the speakers).</prompt>"

### Creating an Audio Graph
"<prompt>Starting with heading level 3, explain the core components: the `AudioContext`, source nodes (`OscillatorNode`, `AudioBufferSourceNode`), processing nodes (`GainNode`, `BiquadFilterNode`, `DelayNode`), and the `destination` node. Provide a conceptual JavaScript example showing how to create an `AudioContext`, create an `OscillatorNode` and a `GainNode`, connect them (`oscillator.connect(gain)`), connect the gain node to the destination (`gain.connect(audioCtx.destination)`), and start the oscillator (`oscillator.start()`).</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a simple JavaScript code block that creates an oscillator, sets its frequency, connects it to the output, and plays a tone for a short duration.</prompt>"

## WebCodecs
"<prompt>Starting with heading level 2, introduce the WebCodecs API as a low-level API providing access to the browser's built-in media encoders and decoders (codecs) for audio and video. Explain its purpose for applications requiring fine-grained control over media processing, such as real-time video editing, transcoding, or game streaming, potentially improving performance compared to JavaScript or Wasm-based solutions.</prompt>"

### Encoding and Decoding Frames
"<prompt>Starting with heading level 3, briefly explain the core concepts: configuring decoders (`VideoDecoder`, `AudioDecoder`) or encoders (`VideoEncoder`, `AudioEncoder`), feeding them raw frames (`VideoFrame`, `AudioData`) or encoded chunks (`EncodedVideoChunk`, `EncodedAudioChunk`), and handling the output via callbacks.</prompt>"
*   **Note:** "<prompt>Highlight this is an advanced API for specific media processing needs.</prompt>"

*   **Section VI Summary:** "<prompt>Starting with heading level 3, summarize the diverse APIs for media and graphics: Canvas for 2D drawing, WebGL/WebGPU for high-performance 2D/3D graphics, Web Audio for sophisticated audio manipulation, Media Capture for device input, MSE for adaptive streaming, and WebCodecs for low-level media frame processing.</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to compare the use cases for Canvas 2D versus WebGL/WebGPU for rendering graphics.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section VII, Device Access & Hardware, focusing on APIs that bridge the gap between web applications and the physical device's capabilities beyond media input.</prompt>"

# VII. Device Access & Hardware

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, define the learning objectives for the Device Access & Hardware section. Aim for understanding how web applications can interact with device sensors (Geolocation, Generic Sensor API), peripherals (Bluetooth, USB, MIDI, Gamepad, NFC, Serial, HID), XR devices (WebXR), and query device status (Battery, Vibration).</prompt>"

## Geolocation API
"<prompt>Starting with heading level 2, introduce the Geolocation API, explaining how it allows web applications to request the user's geographical location (latitude and longitude), with their explicit permission. Mention common use cases like location-aware services, mapping applications, and check-ins.</prompt>"

### Getting Current Position
"<prompt>Starting with heading level 3, provide a JavaScript code example using `navigator.geolocation.getCurrentPosition(successCallback, errorCallback, options)` to obtain a one-time location fix. Show how to access latitude and longitude from the `coords` object in the success callback and how to handle potential errors (e.g., permission denied, unavailable position).</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block that requests the user's current location and logs the latitude and longitude or an error message to the console.</prompt>"

### Watching Position Changes
"<prompt>Starting with heading level 3, explain the `navigator.geolocation.watchPosition(successCallback, errorCallback, options)` method for receiving continuous updates as the user's position changes. Mention the need to store the watch ID and use `clearWatch(id)` to stop receiving updates.</prompt>"

## Web Bluetooth API
"<prompt>Starting with heading level 2, describe the Web Bluetooth API as a means for web applications to discover and communicate with nearby Bluetooth Low Energy (BLE) devices, requiring explicit user permission to select a device.</prompt>"

### Connecting and Interacting with Devices
"<prompt>Starting with heading level 3, outline the typical workflow: requesting a device (`navigator.bluetooth.requestDevice()`), connecting to its GATT server (`device.gatt.connect()`), getting services and characteristics, and reading/writing characteristic values or subscribing to notifications. Emphasize the permission and security model.</prompt>"
*   **Note:** "<prompt>Highlight the complexity and the need to understand BLE concepts (services, characteristics, GATT).</prompt>"

## Web USB API
"<prompt>Starting with heading level 2, introduce the WebUSB API, which allows web applications to communicate with USB devices connected to the user's computer, again, with explicit user permission to select the device. Mention use cases like interacting with hardware development boards, printers, or specialized USB peripherals.</prompt>"

### Device Discovery and Communication
"<prompt>Starting with heading level 3, explain the process: requesting permission for a device (`navigator.usb.requestDevice()`), opening the device, selecting a configuration, claiming an interface, and performing transfers (control, bulk, interrupt, isochronous) on specific endpoints.</prompt>"
*   **Note:** "<prompt>Emphasize the security implications and the need for user consent.</prompt>"

## Web MIDI API
"<prompt>Starting with heading level 2, describe the Web MIDI API, which enables web applications to enumerate, connect to, and interact with MIDI (Musical Instrument Digital Interface) devices, such as keyboards, synthesizers, and controllers connected to the user's system.</prompt>"

### Accessing MIDI Devices
"<prompt>Starting with heading level 3, explain how to request access (`navigator.requestMIDIAccess()`), iterate through available input and output ports from the resulting `MIDIAccess` object, and attach event listeners (`onmidimessage`) to input ports to receive MIDI messages.</prompt>"

## Gamepad API
"<prompt>Starting with heading level 2, introduce the Gamepad API for accessing and responding to input from gamepad controllers connected to the device. Explain its use primarily in web-based games or applications requiring controller input.</prompt>"

### Detecting and Reading Gamepad State
"<prompt>Starting with heading level 3, explain how to detect connected gamepads (e.g., using `navigator.getGamepads()` within a loop or listening for `gamepadconnected`/`gamepaddisconnected` events) and poll the state (axes positions, button presses) of a connected gamepad object within the application's main loop (e.g., using `requestAnimationFrame`).</prompt>"

## WebXR Device API
"<prompt>Starting with heading level 2, introduce the WebXR Device API as the standard for accessing virtual reality (VR) and augmented reality (AR) devices from web applications. Explain its purpose in creating immersive web experiences.</prompt>"

### Requesting and Managing XR Sessions
"<prompt>Starting with heading level 3, explain the core concepts: checking for XR system support (`navigator.xr.isSessionSupported()`), requesting an XR session (`navigator.xr.requestSession()`), obtaining a reference space, and running a render loop (`session.requestAnimationFrame()`) to draw content based on viewer pose for VR or integrate virtual objects into the real world for AR.</prompt>"
*   **Note:** "<prompt>Mention the use of 3D graphics libraries (like Three.js) is common for handling rendering within WebXR sessions.</prompt>"

## Generic Sensor API
"<prompt>Starting with heading level 2, describe the Generic Sensor API as a modern, consistent way to access various device sensors like accelerometer, gyroscope, magnetometer, and orientation sensor. Explain its permission-based model and event-driven approach.</prompt>"

### Using Sensors
"<prompt>Starting with heading level 3, provide conceptual JavaScript examples showing how to instantiate a specific sensor class (e.g., `new Accelerometer()`, `new Gyroscope()`), handle errors (security, permissions), add an event listener (`onreading`) to get sensor data, and start the sensor (`start()`).</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, show conceptual code for creating an Accelerometer instance and logging the x, y, and z acceleration values when readings occur.</prompt>"

## Battery Status API
"<prompt>Starting with heading level 2, introduce the Battery Status API, which provides information about the system's battery charge level, charging state, and estimated charge/discharge times.</prompt>"

### Accessing Battery Information
"<prompt>Starting with heading level 3, provide a JavaScript code example using `navigator.getBattery()` (which returns a Promise) to obtain the `BatteryManager` object. Show how to access properties like `level` (0.0-1.0), `charging` (boolean), and listen for events like `chargingchange` and `levelchange`.</prompt>"

## Vibration API
"<prompt>Starting with heading level 2, describe the Vibration API as a simple way to provide physical feedback to the user by accessing the device's vibration hardware (if available).</prompt>"

### Triggering Vibration
"<prompt>Starting with heading level 3, provide a JavaScript code example using `navigator.vibrate(duration)` or `navigator.vibrate([duration1, pause1, duration2, ...])` to trigger simple or patterned vibrations.</prompt>"

## Web NFC (Near Field Communication)
"<prompt>Starting with heading level 2, introduce the Web NFC API, allowing web applications (on supported devices with user permission) to read from and write to NFC tags when the device comes into close proximity with them.</prompt>"

### Reading and Writing NFC Tags
"<prompt>Starting with heading level 3, explain the basic concepts: creating an `NDEFReader` instance, starting a scan (`scan()`), handling reading events (`onreading`), and writing data (`write()`). Emphasize the security context requirements (HTTPS, user interaction).</prompt>"

*   **Section VII Summary:** "<prompt>Starting with heading level 3, summarize the wide range of APIs enabling web applications to interact with device hardware and sensors, from location (Geolocation) and physical sensors (Generic Sensor API) to peripherals (Bluetooth, USB, MIDI, NFC, etc.) and status indicators (Battery, Vibration), as well as immersive experiences (WebXR).</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to consider the security and privacy implications of web applications requesting access to device hardware like location, camera, or USB devices.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section VIII, Performance & Optimization, shifting focus from hardware interaction to APIs designed for monitoring and improving the performance of web applications.</prompt>"

# VIII. Performance & Optimization

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, set the learning objectives for the Performance & Optimization section. Focus on understanding APIs for measuring various performance aspects (Performance API, Resource Timing, User Timing, Long Tasks), and optimizing rendering and responsiveness (Intersection Observer, Resize Observer).</prompt>"

## Performance API
"<prompt>Starting with heading level 2, introduce the High Resolution Time and Performance Timeline APIs (often collectively referred to as the Performance API). Explain their purpose: providing high-precision timestamps (`performance.now()`) and a timeline of performance-related events (navigation, resource loading, user marks/measures) accessible via `performance.getEntries()`, `performance.getEntriesByName()`, and `performance.getEntriesByType()`.</prompt>"

### High Resolution Time
"<prompt>Starting with heading level 3, explain `performance.now()` and its advantage over `Date.now()` for measuring durations accurately (monotonic, sub-millisecond precision). Provide a JavaScript code example showing how to measure the execution time of a block of code using `performance.now()`.</prompt>"

### Performance Timeline
"<prompt>Starting with heading level 3, describe how the browser automatically records performance entries (like navigation timing, resource timing). Explain how `performance.getEntriesByType(type)` can be used to retrieve these entries (e.g., `performance.getEntriesByType('navigation')`, `performance.getEntriesByType('resource')`).</prompt>"

## Resource Timing API
"<prompt>Starting with heading level 2, describe the Resource Timing API as a specific part of the Performance Timeline that provides detailed network timing information for every resource loaded by the page (e.g., CSS, JS, images, fetch requests). Explain its usefulness in diagnosing slow resource loading.</prompt>"

### Analyzing Resource Load Times
"<prompt>Starting with heading level 3, explain how to retrieve `PerformanceResourceTiming` entries using `performance.getEntriesByType('resource')`. Describe the key timing properties available for each resource, such as `startTime`, `duration`, `connectStart`, `connectEnd`, `requestStart`, `responseStart`, `responseEnd`, etc., and how they can be used to understand network latency, server response time, and content download time.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block that retrieves all resource timing entries and logs the name and duration of each resource.</prompt>"

## User Timing API
"<prompt>Starting with heading level 2, introduce the User Timing API, which allows developers to add custom, application-specific timing points (marks) and measure durations between these points (measures) on the Performance Timeline. Explain its value in measuring the performance of specific parts of application code.</prompt>"

### Creating Custom Marks and Measures
"<prompt>Starting with heading level 3, provide JavaScript code examples showing how to create a mark using `performance.mark('mark_name')` and how to measure the duration between two marks (or between a mark and navigation start) using `performance.measure('measure_name', 'start_mark', 'end_mark')`. Show how to retrieve these custom entries using `getEntriesByName` or `getEntriesByType('mark'/'measure')`.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, demonstrate marking the start and end of a specific JavaScript function execution and measuring the duration, then logging the measure entry.</prompt>"

## Long Tasks API
"<prompt>Starting with heading level 2, explain the Long Tasks API, which helps identify tasks executing on the main thread that take longer than 50 milliseconds, potentially blocking the UI and leading to unresponsiveness. Explain its role in detecting performance bottlenecks that impact user experience.</prompt>"

### Observing Long Tasks
"<prompt>Starting with heading level 3, explain how to use a `PerformanceObserver` to subscribe to `longtask` entries. Provide a JavaScript code example showing how to create the observer, start observing (`observer.observe({ type: 'longtask', buffered: true })`), and process the reported `PerformanceLongTaskTiming` entries in the observer's callback, potentially logging information about the long task's duration and attribution.</prompt>"

## Intersection Observer API
"<prompt>Starting with heading level 2, introduce the Intersection Observer API as an efficient way to asynchronously detect when a target element enters or exits the browser's viewport (or intersects with a specified ancestor element). Explain its advantages over traditional scroll event listeners for tasks like lazy loading images/content, implementing infinite scrolling, or triggering animations when elements become visible, as it avoids main thread jank.</prompt>"

### Observing Intersections
"<prompt>Starting with heading level 3, provide a JavaScript code example showing how to create a new `IntersectionObserver(callback, options)`, where the callback receives a list of `IntersectionObserverEntry` objects. Show how to start observing a target element (`observer.observe(targetElement)`) and how to check the `isIntersecting` property within the callback to determine if the element is currently visible.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, demonstrate creating an observer that logs a message to the console whenever a specific `div` element enters the viewport.</prompt>"

## Resize Observer API
"<prompt>Starting with heading level 2, introduce the Resize Observer API, which provides an efficient mechanism to react to changes in the dimensions (content rectangle size) of an element. Explain its advantage over manual size checking or listening to window resize events when needing to respond specifically to element size changes (e.g., adjusting layout, re-rendering charts).</prompt>"

### Observing Element Resizes
"<prompt>Starting with heading level 3, provide a JavaScript code example showing how to create a `ResizeObserver(callback)`, where the callback receives an array of `ResizeObserverEntry` objects containing the new dimensions. Show how to start observing an element (`observer.observe(targetElement)`) and access the new size information (e.g., `entry.contentRect.width`, `entry.contentRect.height`) within the callback.</prompt>"

*   **Section VIII Summary:** "<prompt>Starting with heading level 3, summarize the Performance & Optimization APIs, covering tools for precise measurement (Performance API, Resource/User Timing), identifying bottlenecks (Long Tasks), and efficiently responding to visibility and size changes (Intersection/Resize Observer) to build faster and more responsive web applications.</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to consider how Intersection Observer could be used to improve the perceived performance of a long webpage with many images.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section IX, Security & Identity, focusing on APIs designed to enhance the security of web applications and manage user authentication and credentials.</prompt>"

# IX. Security & Identity

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, state the learning objectives for the Security & Identity section. Focus on understanding APIs for strong authentication (WebAuthn), credential management (Credential Management API), cryptographic operations (Web Cryptography API), controlling resource loading and script execution (CSP), and managing permissions (Permissions API).</prompt>"

## Web Authentication API (WebAuthn)
"<prompt>Starting with heading level 2, introduce the Web Authentication API (WebAuthn) as a standard for strong, phishing-resistant authentication on the web using public-key cryptography. Explain how it allows users to authenticate using hardware authenticators (like security keys, Touch ID/Face ID, Windows Hello) instead of or in addition to passwords. Differentiate between registration (creating credentials) and authentication (verifying credentials).</prompt>"

### Registration and Authentication Flow
"<prompt>Starting with heading level 3, describe the high-level interaction flow involving the browser, the authenticator, and the relying party (website server). Explain the roles of `navigator.credentials.create()` for registration and `navigator.credentials.get()` for authentication, emphasizing the challenge-response mechanism and the server-side validation required.</prompt>"
*   **Note:** "<prompt>Highlight that implementing WebAuthn involves both client-side API calls and significant server-side logic for managing public keys and validating assertions.</prompt>"

## Credential Management API
"<prompt>Starting with heading level 2, describe the Credential Management API as a way to streamline the user sign-in experience by providing programmatic access to the browser's credential store (including passwords and federated identities). Explain its main goals: enabling one-tap sign-in, automatic sign-in, and easier management of multiple accounts.</prompt>"

### Storing and Retrieving Credentials
"<prompt>Starting with heading level 3, explain the core methods: `navigator.credentials.get()` (to request credentials, potentially triggering browser UI for selection or auto sign-in) and `navigator.credentials.store()` (to store credentials, like `PasswordCredential` or `FederatedCredential`, after successful sign-up or sign-in). Provide conceptual JavaScript examples for requesting and storing a password credential.</prompt>"
*   **Example (Get):** "<prompt>Starting with heading level 4, show a conceptual JavaScript snippet using `navigator.credentials.get({password: true})` to request a password credential.</prompt>"
*   **Example (Store):** "<prompt>Starting with heading level 4, show a conceptual JavaScript snippet using `navigator.credentials.store(new PasswordCredential({...}))` after a successful login.</prompt>"

## Content Security Policy (CSP)
"<prompt>Starting with heading level 2, explain Content Security Policy (CSP) not as a JavaScript API, but as an HTTP header (`Content-Security-Policy`) that web servers send to instruct the browser on which sources of content (scripts, styles, images, fonts, etc.) are allowed to be loaded and executed. Describe its primary goal: mitigating cross-site scripting (XSS) and data injection attacks.</prompt>"

### Common CSP Directives
"<prompt>Starting with heading level 3, list and explain common CSP directives like `default-src`, `script-src`, `style-src`, `img-src`, `connect-src`, `font-src`, `frame-src`, `object-src`, and `report-uri`/`report-to`. Provide examples of policy strings defining allowed sources (e.g., `'self'`, `https://trusted.cdn.com`, `'unsafe-inline'`, `'unsafe-eval'`, `nonce-...`, `sha256-...`).</prompt>"
*   **Example Header:** "<prompt>Starting with heading level 4, provide an example of a `Content-Security-Policy` HTTP header string that allows scripts only from the same origin and a specific CDN, and images only from the same origin.</prompt>"

## Web Cryptography API
"<prompt>Starting with heading level 2, introduce the Web Cryptography API as a low-level JavaScript API providing standard cryptographic operations like hashing, signing, encryption, and key generation directly within the browser. Explain its use cases for ensuring data integrity and confidentiality without needing external libraries for basic crypto functions.</prompt>"

### Core Cryptographic Operations
"<prompt>Starting with heading level 3, explain the main interface `crypto.subtle` and its Promise-based methods. Provide conceptual examples or descriptions for common operations like:
*   Hashing data (`digest`) (e.g., SHA-256)
*   Generating cryptographic key pairs (`generateKey`) (e.g., RSA, ECDSA)
*   Encrypting/Decrypting data (`encrypt`, `decrypt`) (e.g., AES-GCM)
*   Signing data/Verifying signatures (`sign`, `verify`) (e.g., RSA-PSS, ECDSA)</prompt>"
*   **Example (Hashing):** "<prompt>Starting with heading level 4, provide a JavaScript code block using `crypto.subtle.digest` with `async/await` to calculate the SHA-256 hash of a string.</prompt>"

## Permissions API
"<prompt>Starting with heading level 2, describe the Permissions API as a consistent way for web applications to query the status of permissions for using powerful web APIs (like Geolocation, Notifications, Camera, Microphone, Web MIDI, etc.) without actually triggering a request for the permission itself. Explain its usefulness in adapting the UI based on existing permissions.</prompt>"

### Querying Permission Status
"<prompt>Starting with heading level 3, provide a JavaScript code example using `navigator.permissions.query({ name: 'permissionName' })` (e.g., `{ name: 'geolocation' }`). Show how to check the `state` property ('granted', 'denied', 'prompt') of the returned `PermissionStatus` object and listen for changes using the `onchange` event handler.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block that queries the status of the 'geolocation' permission and logs the result.</prompt>"

*   **Section IX Summary:** "<prompt>Starting with heading level 3, summarize the Security & Identity APIs, covering modern authentication (WebAuthn), streamlined sign-in (Credential Management), attack mitigation via policies (CSP), built-in cryptographic functions (Web Crypto), and consistent permission checking (Permissions API).</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to consider how WebAuthn improves security compared to traditional password-based authentication.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section X, User Interaction & UI, focusing on APIs that handle user input and control aspects of the user interface presentation.</prompt>"

# X. User Interaction & UI

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, outline the learning objectives for the User Interaction & UI section. Focus on understanding APIs for handling diverse inputs (Pointer/Touch Events, Drag and Drop), managing animations (Web Animations), controlling display modes (Fullscreen, Page Visibility, Screen Orientation), enabling sharing (Web Share), and interacting with text selection (Selection API).</prompt>"

## Pointer Events
"<prompt>Starting with heading level 2, introduce the Pointer Events API as a modern, unified model for handling input from various pointing devices like mouse, touch (single and multi-touch), and pen. Explain its advantages over handling mouse events and touch events separately, providing a single set of events (e.g., `pointerdown`, `pointermove`, `pointerup`, `pointercancel`, `pointerenter`, `pointerleave`) that work consistently across devices.</prompt>"

### Handling Pointer Input
"<prompt>Starting with heading level 3, provide JavaScript code examples demonstrating how to attach event listeners for pointer events to an element. Show how to access properties from the `PointerEvent` object, such as `pointerId` (to track individual pointers), `pointerType` ('mouse', 'pen', 'touch'), `clientX`/`clientY` (coordinates), and `pressure`/`tiltX`/`tiltY` (for applicable devices).</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, show a JavaScript code block that attaches a `pointerdown` listener to a `div` and logs the `pointerType` and coordinates of the event.</prompt>"

## Touch Events
"<prompt>Starting with heading level 2, describe the Touch Events API as the older standard specifically for handling touch interactions on touch-enabled devices. Mention that while Pointer Events are generally preferred for new development due to their unified model, Touch Events (`touchstart`, `touchmove`, `touchend`, `touchcancel`) are still relevant for compatibility or specific multi-touch scenarios not easily covered by Pointer Events.</prompt>"

### Accessing Touch Points
"<prompt>Starting with heading level 3, explain the `TouchEvent` object and its lists of touch points: `touches` (current touches on the screen), `targetTouches` (touches started on the target element), and `changedTouches` (touches involved in the current event). Show how to access individual `Touch` objects from these lists and their properties like `identifier`, `clientX`/`clientY`.</prompt>"

## Web Animations API (WAAPI)
"<prompt>Starting with heading level 2, introduce the Web Animations API (WAAPI) as a powerful JavaScript API for creating, controlling, and inspecting animations, providing capabilities comparable to CSS animations and transitions but with more programmatic control. Explain its advantages for complex, interactive, or dynamically generated animations.</prompt>"

### Creating and Controlling Animations
"<prompt>Starting with heading level 3, provide JavaScript code examples using `element.animate(keyframes, options)`. Show how to define `keyframes` (an array of objects representing states) and `options` (like `duration`, `easing`, `iterations`, `delay`). Demonstrate how to control the returned `Animation` object using methods like `play()`, `pause()`, `reverse()`, `cancel()`, `finish()`, and access properties like `currentTime` and `playbackRate`.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block that animates the background color and transform (scale) of a `div` element using `element.animate()` and provides buttons to play and pause the animation.</prompt>"

## Fullscreen API
"<prompt>Starting with heading level 2, describe the Fullscreen API, which allows web applications to request that an element (and its descendants) or the entire page be displayed in fullscreen mode, occupying the entire screen without browser UI chrome.</prompt>"

### Entering and Exiting Fullscreen
"<prompt>Starting with heading level 3, provide JavaScript code examples showing how to request fullscreen on an element using `element.requestFullscreen()` and how to exit fullscreen mode using `document.exitFullscreen()`. Mention the need to handle vendor prefixes for older browser compatibility and how to listen for fullscreen change events (`fullscreenchange`).</prompt>"

## Page Visibility API
"<prompt>Starting with heading level 2, explain the Page Visibility API, which allows applications to determine whether the current page is visible or hidden (e.g., tab is in the background, window is minimized). Explain its usefulness for pausing resource-intensive activities (like animations, video playback, data polling) when the page is not visible to save resources and battery life.</prompt>"

### Detecting Visibility Changes
"<prompt>Starting with heading level 3, provide a JavaScript code example showing how to check the current visibility state using `document.visibilityState` ('visible', 'hidden', 'prerender') and how to listen for changes using the `visibilitychange` event on the `document`.</prompt>"

## Screen Orientation API
"<prompt>Starting with heading level 2, describe the Screen Orientation API, which provides information about the current orientation of the screen (e.g., portrait-primary, landscape-secondary) and allows locking the screen orientation (on supported devices, typically mobile).</prompt>"

### Accessing and Locking Orientation
"<prompt>Starting with heading level 3, explain how to access the current orientation type via `screen.orientation.type`. Show how to attempt locking the orientation using `screen.orientation.lock(orientationType)` (e.g., 'landscape') and unlocking using `screen.orientation.unlock()`. Mention that locking might only work in fullscreen mode and requires user interaction.</prompt>"

## Web Share API
"<prompt>Starting with heading level 2, introduce the Web Share API as a way for web applications to invoke the native sharing mechanism of the underlying operating system, allowing users to share text, URLs, or files with other applications (e.g., email, social media, messaging apps).</prompt>"

### Triggering Native Share
"<prompt>Starting with heading level 3, provide a JavaScript code example using `navigator.share({ title: '...', text: '...', url: '...', files: [...] })`. Explain that it must be triggered by user action (e.g., button click), returns a Promise, and is typically checked for availability first using `navigator.canShare()` or checking if `navigator.share` exists.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, show a JavaScript code block within a click handler that attempts to share the current page's title and URL using `navigator.share`.</prompt>"

## Drag and Drop API
"<prompt>Starting with heading level 2, explain the HTML Drag and Drop API, which allows users to drag elements or selected text within a page or drag files from their desktop onto a web page. Describe the different events involved (`dragstart`, `drag`, `dragenter`, `dragover`, `dragleave`, `drop`, `dragend`) and the role of the `DataTransfer` object for carrying data during the drag operation.</prompt>"

### Implementing Drag and Drop
"<prompt>Starting with heading level 3, provide conceptual JavaScript examples outlining the key steps:
1.  Marking an element as draggable (`draggable="true"` attribute).
2.  Setting data on `dragstart` using `event.dataTransfer.setData(format, data)`.
3.  Preventing default handling on `dragover` for potential drop targets (`event.preventDefault()`).
4.  Reading data on `drop` using `event.dataTransfer.getData(format)` and preventing default handling (`event.preventDefault()`).
5.  Handling file drops by accessing `event.dataTransfer.files`.</prompt>"

## Selection API
"<prompt>Starting with heading level 2, describe the Selection API, which represents the currently selected text or range within the document. Explain its use for getting information about the user's text selection or programmatically modifying it.</prompt>"

### Working with Text Selection
"<prompt>Starting with heading level 3, provide JavaScript code examples showing how to get the `Selection` object using `window.getSelection()`, retrieve the selected text as a string using `.toString()`, get the `Range` object representing the selection (`getRangeAt(0)`), and potentially modify the selection (e.g., `selectAllChildren`, `collapse`).</prompt>"

*   **Section X Summary:** "<prompt>Starting with heading level 3, summarize the User Interaction & UI APIs, covering unified input handling (Pointer Events), animations (WAAPI), display control (Fullscreen, Page Visibility, Screen Orientation), system integration (Web Share), drag/drop functionality, and text selection management.</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to think about the benefits of using Pointer Events compared to handling Mouse Events and Touch Events separately.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section XI, Emerging & Specialized APIs, covering newer or more niche APIs that address specific web application needs like payments, speech, push notifications, and hardware access.</prompt>"

# XI. Emerging & Specialized APIs

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, specify the learning objectives for the Emerging & Specialized APIs section. Focus on understanding the purpose and basic concepts of newer or domain-specific APIs like Web Payments, Web Speech, Push & Notifications, Contact Picker, Web Serial, WebHID, and WebML.</prompt>"

## Web Payments API
"<prompt>Starting with heading level 2, introduce the Web Payments API as a standard designed to streamline the online checkout process by acting as an intermediary between the user, the merchant website, and payment providers. Explain its goal of providing a faster, more consistent, and secure payment experience using browser-stored payment credentials and shipping information.</prompt>"

### Payment Request Flow
"<prompt>Starting with heading level 3, describe the basic flow: creating a `PaymentRequest` object with details about supported payment methods, total amount, and requested information (like shipping address). Then, showing the native browser payment UI using `request.show()` and handling the resulting `PaymentResponse` upon user confirmation or cancellation.</prompt>"
*   **Note:** "<prompt>Emphasize this API standardizes the *interaction* but relies on registered payment handlers (like browser-saved cards or third-party payment apps) to process the actual payment.</prompt>"

## Web Speech API
"<prompt>Starting with heading level 2, describe the Web Speech API, which consists of two parts: Speech Recognition (speech-to-text) and Speech Synthesis (text-to-speech). Explain how it enables web applications to incorporate voice commands and spoken feedback.</prompt>"

### Speech Recognition
"<prompt>Starting with heading level 3, explain the `SpeechRecognition` interface: creating an instance, starting recognition (`start()`), and handling results via events like `onresult` (containing transcription possibilities) and `onerror`.</prompt>"
*   **Note:** "<prompt>Mention that availability and quality can vary significantly between browsers and may rely on server-side processing.</prompt>"

### Speech Synthesis (TTS)
"<prompt>Starting with heading level 3, explain the `SpeechSynthesis` interface and the `SpeechSynthesisUtterance` object: creating an utterance with text (`new SpeechSynthesisUtterance('Hello world')`), configuring properties like voice, pitch, and rate, and using `speechSynthesis.speak(utterance)` to make the browser speak the text.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a simple JavaScript code block that creates an utterance with the text 'Web APIs are powerful' and speaks it using the default voice.</prompt>"

## Push API
"<prompt>Starting with heading level 2, introduce the Push API, which allows web applications (via their Service Worker) to receive push messages sent by their server, even when the application is not active in the browser. Explain its primary use case: enabling timely and relevant notifications to re-engage users.</prompt>"

### Subscribing and Receiving Messages
"<prompt>Starting with heading level 3, explain the process: the web application requests permission for notifications, subscribes to the push service using `pushManager.subscribe()`, gets a unique `PushSubscription` endpoint, sends this endpoint to its application server. The server then uses this endpoint to send push messages. The Service Worker listens for the `push` event to receive the message (often used in conjunction with the Notifications API).</prompt>"
*   **Note:** "<prompt>Requires a Service Worker (Section V) and usually works together with the Notifications API.</prompt>"

## Notifications API
"<prompt>Starting with heading level 2, describe the Notifications API, which allows web applications to display system-level notifications to the user (outside the browser window) after obtaining permission. Explain its use for alerting users about events, messages, or updates, often triggered by Push API messages or application logic.</prompt>"

### Displaying Notifications
"<prompt>Starting with heading level 3, provide a JavaScript code example showing how to request permission (`Notification.requestPermission()`) and then create and display a notification using `new Notification('Title', { body: 'Notification body text', icon: '...' })`. Mention handling user interactions via notification events (`onclick`, `onclose`).</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, provide a JavaScript code block inside a function that checks for permission and then displays a simple notification with a title and body.</prompt>"

## Contact Picker API
"<prompt>Starting with heading level 2, introduce the Contact Picker API as a secure, privacy-preserving way for web applications to allow users to select contacts from their device's native contact list. Explain that the site only receives the selected contact information, not the entire list.</prompt>"

### Selecting Contacts
"<prompt>Starting with heading level 3, provide a conceptual JavaScript code example using `navigator.contacts.select(properties, options)` (e.g., requesting `['name', 'email']`). Show how to handle the Promise returned, which resolves with an array of selected contact information upon user selection. Emphasize it requires user interaction and HTTPS.</prompt>"

## Web Serial API
"<prompt>Starting with heading level 2, describe the Web Serial API, which allows web applications to communicate with devices connected via serial ports (including some USB devices that emulate a serial port, like Arduino boards), subject to user permission.</prompt>"

### Communicating over Serial
"<prompt>Starting with heading level 3, explain the flow: requesting a port (`navigator.serial.requestPort()`), opening the port (`port.open()`), and using the readable/writable streams (`port.readable`, `port.writable`) with `TextDecoderStream`/`TextEncoderStream` or `DataReader`/`DataWriter` to send and receive data.</prompt>"

## WebHID API
"<prompt>Starting with heading level 2, introduce the WebHID (Human Interface Device) API, which provides a way for web pages to interact with less common or unusual HID devices like joysticks, gamepads (beyond the Gamepad API's scope), and other specialized peripherals, requiring user permission.</prompt>"

### Interacting with HID Devices
"<prompt>Starting with heading level 3, explain the process: requesting a device (`navigator.hid.requestDevice()`), opening the device, listening for input reports (`oninputreport`), and sending output reports.</prompt>"

## WebML API (Conceptual)
"<prompt>Starting with heading level 2, introduce WebML (Web Machine Learning) not as a single finalized API, but as an umbrella term and ongoing effort (often associated with the Web Neural Network API - WebNN) to provide web applications with accelerated access to underlying hardware (CPU, GPU) for performing machine learning computations efficiently directly in the browser. Explain the goal: enabling performant on-device ML for tasks like image recognition, natural language processing, etc., without relying solely on server-side processing.</prompt>"
*   **Note:** "<prompt>Highlight this is an emerging area with evolving specifications and browser implementations.</prompt>"

*   **Section XI Summary:** "<prompt>Starting with heading level 3, summarize the Emerging & Specialized APIs, covering functionalities like streamlined payments (Web Payments), voice interaction (Web Speech), server push and notifications (Push/Notifications), access to contacts (Contact Picker), and connectivity to specific hardware (Web Serial, WebHID), along with the future potential of accelerated on-device machine learning (WebML).</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to think about how the Push and Notifications APIs could be combined to create a better user experience for a web-based chat application.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section XII, Advanced Techniques and Concepts, moving beyond specific APIs to discuss broader strategies for integrating, optimizing, and improving the use of Web APIs.</prompt>"

# XII. Advanced Techniques and Concepts

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, define the learning objectives for the Advanced Techniques and Concepts section. Focus on strategies for integrating multiple APIs, optimizing performance through benchmarking and profiling, and improving development techniques when working with complex Web APIs.</prompt>"

## Complex Integrations
"<prompt>Starting with heading level 2, discuss the concept of combining multiple Web APIs to achieve complex functionalities. Explain that real-world applications often require orchestrating several APIs together (e.g., using Fetch to get data, Web Workers to process it, IndexedDB to store it, and the DOM API to display it).</prompt>"

### Example Scenario: Offline-First Data Sync
"<prompt>Starting with heading level 3, outline a scenario combining Service Workers, Cache API, IndexedDB, Background Sync, and Fetch API to create an application that works offline, stores user data locally, syncs data with the server when online, and uses background sync for reliable updates.</prompt>"
*   **Challenge Prompt:** "<prompt>Starting with heading level 4, ask the learner to sketch out the high-level interaction between Service Worker events (fetch, sync), IndexedDB operations, and Fetch calls needed for the offline-first data sync scenario.</prompt>"

### Example Scenario: Real-time Collaboration Tool
"<prompt>Starting with heading level 3, outline a scenario combining WebSockets or WebRTC (Data Channels) for real-time communication, DOM API for UI updates, potentially Web Workers for complex calculations, and Credential Management/WebAuthn for authentication.</prompt>"

## Performance Optimization Strategies
"<prompt>Starting with heading level 2, discuss strategies for optimizing the performance of applications heavily reliant on Web APIs, going beyond the basic use of performance monitoring APIs.</prompt>"

### API-Specific Optimizations
"<prompt>Starting with heading level 3, provide optimization tips relevant to specific APIs discussed earlier:
*   **DOM:** Minimizing direct manipulations (batching updates, using DocumentFragments), avoiding layout thrashing.
*   **Fetch/XHR:** Caching responses (HTTP caching, Cache API), using appropriate data formats, compressing data.
*   **Canvas/WebGL:** Offscreen rendering, optimizing draw calls, using Web Workers for calculations.
*   **Web Workers:** Efficient data transfer (using Transferable Objects), managing worker lifecycle.
*   **IndexedDB:** Proper indexing, batching operations within transactions, handling large data efficiently (e.g., storing Blobs).</prompt>"

### Debouncing and Throttling Event Handlers
"<prompt>Starting with heading level 3, explain the concepts of debouncing and throttling and their importance when attaching handlers to high-frequency events like `scroll`, `resize`, `pointermove`, or `input`. Provide conceptual examples of how these techniques prevent excessive function calls and improve responsiveness.</prompt>"

## Improving Techniques
"<prompt>Starting with heading level 2, discuss techniques for writing more robust, maintainable, and efficient code when working with asynchronous Web APIs.</prompt>"

### Effective Use of Promises and Async/Await
"<prompt>Starting with heading level 3, reinforce the importance of `Promises` and `async`/`await` (Section II) for managing asynchronous operations common in many Web APIs (Fetch, IndexedDB, Permissions, etc.). Discuss Promise composition (`Promise.all`, `Promise.race`) and proper error handling (`.catch()`, `try...catch` with async/await).</prompt>"

### Feature Detection and Graceful Degradation
"<prompt>Starting with heading level 3, emphasize the importance of checking for browser support for specific APIs or API features before using them (e.g., `if ('serviceWorker' in navigator)`, `if (window.IntersectionObserver)`). Discuss strategies for providing fallback functionality or alternative experiences when an API is not supported (graceful degradation).</prompt>"

### Using Abstraction Libraries
"<prompt>Starting with heading level 3, discuss the role of third-party libraries that can simplify the usage of complex Web APIs (e.g., libraries for IndexedDB, WebRTC, WebGL, state management interacting with APIs). Weigh the pros (simplicity, productivity) and cons (dependency, overhead).</prompt>"

## Benchmarking and Profiling
"<prompt>Starting with heading level 2, explain the importance of actively measuring performance using browser developer tools and performance APIs (Section VIII) to identify bottlenecks and validate optimization efforts.</prompt>"

### Using Browser DevTools Profiler
"<prompt>Starting with heading level 3, briefly describe how to use the Performance tab in browser developer tools to record and analyze runtime performance, identifying long tasks, layout thrashing, and costly JavaScript execution.</prompt>"

### Combining User Timing and DevTools
"<prompt>Starting with heading level 3, explain how custom marks and measures created with the User Timing API (`performance.mark`, `performance.measure`) appear in the DevTools Performance timeline, allowing developers to correlate application-specific operations with browser performance metrics.</prompt>"

*   **Section XII Summary:** "<prompt>Starting with heading level 3, summarize the advanced concepts discussed, including the necessity of integrating multiple APIs, specific optimization strategies for common APIs, techniques like debouncing/throttling and feature detection, the effective use of Promises, and the critical role of benchmarking and profiling with browser DevTools.</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to think about a complex web application they use and identify at least three different Web APIs that are likely being used together under the hood.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section XIII, Advanced Error Handling and Debugging, focusing specifically on techniques for managing errors and debugging issues that arise when working with Web APIs.</prompt>"

# XIII. Advanced Error Handling and Debugging

*   **Learning Objectives:** "<prompt>Starting with heading level 3 using a bulleted list, define the learning objectives for the Advanced Error Handling and Debugging section. Focus on implementing robust error management strategies for asynchronous APIs and debugging complex scenarios involving multiple APIs or background contexts.</prompt>"

## Robust Error Management
"<prompt>Starting with heading level 2, discuss the challenges of error handling with asynchronous Web APIs and the need for comprehensive strategies beyond simple console logging.</prompt>"

### Handling Promise Rejections
"<prompt>Starting with heading level 3, reiterate the importance of handling rejected Promises using `.catch()` blocks or `try...catch` with `async/await`. Discuss strategies for centralized error handling, reporting errors to logging services, and providing informative feedback to the user.</prompt>"
*   **Example:** "<prompt>Starting with heading level 4, show an `async` function using `try...catch` to handle potential errors from `fetch` and `response.json()` calls, logging details and potentially updating the UI to show an error message.</prompt>"

### API-Specific Error Handling
"<prompt>Starting with heading level 3, highlight common error patterns or specific error objects/events for various APIs:
*   **Fetch API:** Checking `response.ok`, handling network errors (Promise rejection), handling non-JSON responses.
*   **IndexedDB:** Handling errors via `onerror` handlers on requests and transactions, understanding `DOMException` types.
*   **getUserMedia/WebRTC:** Handling `DOMException` errors for permission denial (`NotAllowedError`), hardware issues (`NotFoundError`, `NotReadableError`), or constraints issues (`OverconstrainedError`).
*   **Web Workers/Service Workers:** Using the `onerror` event handler for unhandled exceptions within the worker.
*   **Permissions API:** Handling potential errors during `query()`.</prompt>"

### Error Reporting and Monitoring
"<prompt>Starting with heading level 3, discuss integrating third-party error reporting services (like Sentry, Bugsnag) to capture and aggregate frontend errors, including those originating from Web API interactions, providing context for debugging.</prompt>"

## Debugging Complex Scenarios
"<prompt>Starting with heading level 2, address techniques for debugging situations involving asynchronous operations, background threads (Workers), or Service Workers.</prompt>"

### Debugging Web Workers
"<prompt>Starting with heading level 3, explain how to debug Web Worker scripts using browser developer tools. Mention accessing the worker context via the 'Sources' or dedicated 'Threads' panel, setting breakpoints, inspecting variables, and using `console.log` within the worker script.</prompt>"

### Debugging Service Workers
"<prompt>Starting with heading level 3, explain how to debug Service Workers via the 'Application' panel (or 'Service Workers' section) in browser developer tools. Cover inspecting the current status and lifecycle, viewing console logs from the Service Worker, simulating offline mode, triggering push/sync events, and using the 'Sources' panel to set breakpoints within the `sw.js` file.</prompt>"
*   **Highlight:** "<prompt>Starting with heading level 4 using a blockquote, emphasize the importance of understanding the Service Worker lifecycle (installing, waiting, activating) when debugging, as changes might not take effect immediately.</prompt>"

### Debugging Asynchronous Flows
"<prompt>Starting with heading level 3, discuss using DevTools features designed for asynchronous debugging, such as the 'Call Stack' view showing asynchronous operations (e.g., 'async') and setting asynchronous breakpoints (e.g., break on Promise resolution/rejection).</prompt>"

### Debugging API Interactions
"<prompt>Starting with heading level 3, emphasize using the 'Network' panel to inspect Fetch/XHR requests/responses, headers, and timings. Mention using the 'Application' panel to inspect storage (LocalStorage, SessionStorage, IndexedDB, Cache Storage) and Service Worker status. Highlight using `console.log`, `console.table`, etc., strategically to trace data flow through different API calls.</prompt>"

*   **Section XIII Summary:** "<prompt>Starting with heading level 3, summarize the key aspects of advanced error handling and debugging for Web APIs, including robust handling of asynchronous errors (especially Promises), understanding API-specific error types, utilizing error reporting services, and employing browser developer tools effectively to debug background contexts (Workers, Service Workers) and complex asynchronous flows.</prompt>"
*   **Reflective Prompt:** "<prompt>Starting with heading level 3, ask the learner to consider the most challenging type of error they might anticipate when combining the Fetch API with IndexedDB within a Service Worker, and how they would approach debugging it.</prompt>"
*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section XIV, the Glossary, which will define key technical terms encountered throughout the learning agenda.</prompt>"

# XIV. Glossary

## Key Technical Terms
"<prompt>Starting with heading level 2, define the following key technical terms introduced in sections I-XIII. Provide concise, clear definitions suitable for someone learning about Web APIs. Terms to define: API, DOM, HTML, CSSOM, Fetch, URL, Console, ECMAScript, WebAssembly, ES Modules, File API, File System Access API, IndexedDB, Web Storage, Cache API, WebSocket, XMLHttpRequest (XHR), Server-Sent Events (SSE), WebRTC, Broadcast Channel, Web Worker, Service Worker, Background Fetch, Background Sync, Canvas API, WebGL, WebGPU, MediaStream, Media Source Extensions (MSE), Web Audio API, WebCodecs, Geolocation, Web Bluetooth, WebUSB, Web MIDI, Gamepad API, WebXR, Generic Sensor API, Performance API, Resource Timing, User Timing, Long Tasks API, Intersection Observer, Resize Observer, WebAuthn, Credential Management API, Content Security Policy (CSP), Web Cryptography API, Permissions API, Pointer Events, Web Animations API (WAAPI), Fullscreen API, Page Visibility API, Web Share API, Push API, Notifications API.</prompt>"

*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section XV, Quizzes and Self-Assessment, designed to help learners check their understanding of the covered material.</prompt>"

# XV. Quizzes and Self-Assessment

## Quiz: Core Web Platform & JavaScript Basics
"<prompt>Starting with heading level 2, create a multiple-choice quiz with 5 questions covering fundamental concepts from Sections I (Core Web Platform) and II (JavaScript Language & Extensions). Include questions about the purpose of the DOM, Fetch vs. XHR, the role of ECMAScript, and the benefit of Web Workers. Provide the correct answer for each question.</prompt>"

## Quiz: Storage, Files & Networking
"<prompt>Starting with heading level 2, create a multiple-choice quiz with 5 questions covering concepts from Sections III (Storage & Files) and IV (Networking & Communication). Include questions comparing localStorage vs. IndexedDB, the purpose of the Cache API, WebSockets vs. SSE, and the function of WebRTC. Provide the correct answer for each question.</prompt>"

## Quiz: Background Processing, Media & Graphics
"<prompt>Starting with heading level 2, create a multiple-choice quiz with 5 questions covering concepts from Sections V (Multithreading & Background Processing) and VI (Media & Graphics). Include questions about the primary role of Service Workers, the difference between Canvas 2D and WebGL, the purpose of `getUserMedia`, and the function of the Web Audio API. Provide the correct answer for each question.</prompt>"

## Quiz: Device Access, Performance & Security
"<prompt>Starting with heading level 2, create a multiple-choice quiz with 5 questions covering concepts from Sections VII (Device Access & Hardware), VIII (Performance & Optimization), and IX (Security & Identity). Include questions about the Geolocation API, the use of Intersection Observer, the goal of WebAuthn, and the function of CSP. Provide the correct answer for each question.</prompt>"

## Quiz: UI, Interaction & Specialized APIs
"<prompt>Starting with heading level 2, create a multiple-choice quiz with 5 questions covering concepts from Sections X (User Interaction & UI) and XI (Emerging & Specialized APIs). Include questions about Pointer Events, the Web Animations API, the purpose of the Push API, and the function of the Web Share API. Provide the correct answer for each question.</prompt>"

*   **Section Transition:** "<prompt>Create a brief transition statement introducing Section XVI, Further Exploration, providing resources for continued learning.</prompt>"

# XVI. Further Exploration

## Recommended Resources
"<prompt>Starting with heading level 2, provide a curated list of links to high-quality resources for deeper learning about Web APIs. Include links to:
*   MDN Web Docs (specifically the Web APIs reference section)
*   web.dev (articles and tutorials from Google)
*   W3C Specifications website (for official standards documents)
*   Can I use... (for browser compatibility information)
*   Relevant blogs or online publications focused on web development (provide 1-2 examples if possible).
Organize the links logically, perhaps grouped by category (General Reference, Tutorials, Specifications, Compatibility).</prompt>"

## Exploring Specific API Areas
"<prompt>Starting with heading level 3, suggest specific areas or APIs that learners might want to explore further based on their interests, linking back to the relevant sections or MDN pages. Examples:
*   Building Progressive Web Apps (PWAs) leveraging Service Workers, Cache API, Push API.
*   Advanced 3D Graphics with WebGL/WebGPU and libraries like Three.js.
*   Real-time applications using WebSockets or WebRTC.
*   Hardware interaction with Web Bluetooth, WebUSB, or Web Serial.
*   Performance monitoring and optimization techniques.</prompt>"

## Contributing and Community
"<prompt>Starting with heading level 3, briefly mention ways learners can engage further, such as contributing to browser documentation (like MDN), participating in web standards discussions (W3C, WHATWG), or joining online web developer communities.</prompt>"
