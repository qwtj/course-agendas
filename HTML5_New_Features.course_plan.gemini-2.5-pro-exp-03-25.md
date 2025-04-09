# I. Introduction to HTML5 and Semantic Structure
*   **Learning Objective:** Understand the motivation behind HTML5, its core design principles, and the importance of semantic elements for structuring web content.

## A. Evolution from HTML4 to HTML5
"<prompt>Explain the key limitations of HTML4 that led to the development of HTML5, focusing on the need for better multimedia support, richer semantics, and improved APIs.</prompt>"

## B. Core Design Principles
"<prompt>Describe the main design principles behind HTML5, such as paving the cowpaths, graceful degradation, and prioritizing users over authors.</prompt>"

## C. New Semantic Elements
"<prompt>Define the purpose and usage of the primary new semantic structuring elements introduced in HTML5.</prompt>"
### 1. Structural Elements
*   `<article>`: "<prompt>Generate a definition and a simple code example demonstrating the use of the HTML5 `<article>` element to represent a self-contained piece of content.</prompt>"
*   `<section>`: "<prompt>Generate a definition and a simple code example illustrating how the HTML5 `<section>` element groups related content thematically.</prompt>"
*   `<nav>`: "<prompt>Generate a definition and a code snippet showing the use of the HTML5 `<nav>` element for primary navigation blocks.</prompt>"
*   `<aside>`: "<prompt>Generate a definition and a code example of the HTML5 `<aside>` element, representing content tangentially related to the main content.</prompt>"
*   `<header>`: "<prompt>Generate a definition and a code example for the HTML5 `<header>` element, typically containing introductory content or navigational aids for its nearest sectioning ancestor.</prompt>"
*   `<footer>`: "<prompt>Generate a definition and a code example for the HTML5 `<footer>` element, typically containing authorship, copyright, or related links for its nearest sectioning ancestor.</prompt>"
*   `<main>`: "<prompt>Generate a definition and a code example demonstrating the HTML5 `<main>` element, representing the dominant content of the `<body>`.</prompt>"
*   `<figure>` & `<figcaption>`: "<prompt>Generate definitions and a combined code example showing how HTML5 `<figure>` and `<figcaption>` elements are used to group and caption figures like images, diagrams, or code listings.</prompt>"

### 2. Other Semantic Elements
*   `<mark>`: "<prompt>Generate a definition and usage example for the HTML5 `<mark>` element, used to highlight text for reference or notation purposes.</prompt>"
*   `<time>`: "<prompt>Generate a definition and examples showing how the HTML5 `<time>` element represents dates and times in a machine-readable format, including the use of the `datetime` attribute.</prompt>"

## D. Document Structure Best Practices
"<prompt>Provide guidelines and best practices for structuring an HTML5 document using the new semantic elements, emphasizing accessibility and SEO benefits.</prompt>"

*   **Section Summary:** HTML5 introduced semantic elements (`<header>`, `<footer>`, `<nav>`, `<article>`, `<section>`, `<aside>`, `<main>`) to provide clearer meaning and structure to web documents, improving accessibility and SEO compared to the generic `<div>` elements often used in HTML4.
*   **Glossary Prompt:** "<prompt>Define the following HTML5 terms: Semantic HTML, DOCTYPE, Element, Attribute, Sectioning Content, Heading Content.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate 3 multiple-choice questions testing the understanding of when to use `<article>` vs. `<section>` and the purpose of `<header>` and `<footer>` elements within different contexts in HTML5.</prompt>"
*   **Reflection Prompt:** "<prompt>How does using HTML5 semantic elements change the way you think about structuring a web page compared to using only `<div>` elements?</prompt>"
*   **Further Exploration Prompt:** "<prompt>Provide links to the official W3C specification for HTML5 semantic elements and a reputable tutorial on HTML5 document outlining.</prompt>"

---
*Transition: Now that we understand the foundational semantic structure, let's explore how HTML5 enhances multimedia capabilities.*
---

# II. Multimedia Integration
*   **Learning Objective:** Learn how to embed and control audio and video content natively in web pages using HTML5 elements.

## A. Native Video Playback
"<prompt>Explain how the HTML5 `<video>` element enables native video playback without requiring browser plugins like Flash.</prompt>"
### 1. Basic Implementation
*   "<prompt>Generate a basic HTML code example using the `<video>` element with the `src` attribute to embed a single video file.</prompt>"
### 2. Attributes and Controls
*   `<controls>`: "<prompt>Explain the function of the `controls` attribute for the HTML5 `<video>` element and show its usage in a code snippet.</prompt>"
*   `<width>` & `<height>`: "<prompt>Describe how to set the dimensions of the video player using the `width` and `height` attributes in the `<video>` tag. Provide an example.</prompt>"
*   `<autoplay>`, `<loop>`, `<muted>`: "<prompt>Define the purpose and show code examples for the `autoplay`, `loop`, and `muted` boolean attributes of the HTML5 `<video>` element.</prompt>"
*   `<poster>`: "<prompt>Explain the `poster` attribute of the `<video>` element and demonstrate how to specify an image to display before the video loads.</prompt>"
### 3. Multiple Sources and Fallbacks
*   `<source>` element: "<prompt>Explain why using multiple `<source>` elements inside a `<video>` tag is beneficial (e.g., different formats, browser compatibility). Provide a code example showing multiple `<source>` elements with `src` and `type` attributes, and include fallback text for older browsers.</prompt>"
    *   `type` attribute: "<prompt>Explain the importance of the `type` attribute within the `<source>` tag for specifying the MIME type of the video format (e.g., `video/mp4`, `video/webm`).</prompt>"

## B. Native Audio Playback
"<prompt>Explain how the HTML5 `<audio>` element allows for native audio playback in browsers.</prompt>"
### 1. Basic Implementation
*   "<prompt>Generate a basic HTML code example using the `<audio>` element with the `src` attribute to embed a single audio file.</prompt>"
### 2. Attributes and Controls
*   `<controls>`, `<autoplay>`, `<loop>`, `<muted>`: "<prompt>Define the purpose and show code examples for the `controls`, `autoplay`, `loop`, and `muted` attributes as they apply to the HTML5 `<audio>` element.</prompt>"
### 3. Multiple Sources and Fallbacks
*   `<source>` element: "<prompt>Provide a code example demonstrating the use of multiple `<source>` elements within an `<audio>` tag for different audio formats (e.g., MP3, Ogg Vorbis) and include fallback text.</prompt>"
    *   `type` attribute: "<prompt>Explain the role of the `type` attribute within the `<source>` tag for specifying audio MIME types (e.g., `audio/mpeg`, `audio/ogg`).</prompt>"

## C. Accessibility for Multimedia
"<prompt>Describe techniques for making HTML5 audio and video content accessible, focusing on captions, subtitles, and transcripts.</prompt>"
### 1. Tracks and Subtitles (`<track>`)
*   "<prompt>Explain the purpose of the HTML5 `<track>` element and its attributes (`kind`, `src`, `srclang`, `label`, `default`) for adding timed text tracks like subtitles, captions, or descriptions to media elements. Provide a code example within a `<video>` tag.</prompt>"

*   **Section Summary:** HTML5 introduces the `<video>` and `<audio>` elements, allowing native playback of multimedia content without plugins. Multiple formats can be specified using the `<source>` element for broad compatibility, and the `<track>` element enhances accessibility.
*   **Glossary Prompt:** "<prompt>Define the following HTML5 multimedia terms: Codec, Container Format (e.g., MP4, WebM, Ogg), MIME Type, Timed Text Track, WebVTT.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate 3 short-answer questions asking about the attributes needed to add default player controls to video, provide multiple video formats, and specify subtitles for a video element in HTML5.</prompt>"
*   **Reflection Prompt:** "<prompt>Consider a website you frequently visit that uses video or audio. How might HTML5 native multimedia elements simplify or improve the user experience compared to older plugin-based methods?</prompt>"
*   **Further Exploration Prompt:** "<prompt>Provide links to MDN documentation for the HTML5 `<video>` and `<audio>` elements, and a guide on creating WebVTT files for captions/subtitles.</prompt>"
*   **Cross-Reference:** Refer back to Section I regarding semantic structure when discussing fallback content for older browsers.

---
*Transition: Building on structured content and multimedia, let's explore the significant improvements HTML5 brought to web forms.*
---

# III. Enhanced Web Forms
*   **Learning Objective:** Understand and implement the new input types, attributes, and validation features introduced in HTML5 forms to create more user-friendly and robust data entry experiences.

## A. New Input Types
"<prompt>List and briefly describe the purpose of the new input types introduced in HTML5 forms, beyond the standard `text`, `password`, `radio`, `checkbox`, `submit`, etc.</prompt>"
### 1. Date/Time Inputs
*   `type="date"`: "<prompt>Generate a definition and code example for the HTML5 input `type="date"`.</prompt>"
*   `type="month"`: "<prompt>Generate a definition and code example for the HTML5 input `type="month"`.</prompt>"
*   `type="week"`: "<prompt>Generate a definition and code example for the HTML5 input `type="week"`.</prompt>"
*   `type="time"`: "<prompt>Generate a definition and code example for the HTML5 input `type="time"`.</prompt>"
*   `type="datetime-local"`: "<prompt>Generate a definition and code example for the HTML5 input `type="datetime-local"`.</prompt>"
### 2. Numeric Inputs
*   `type="number"`: "<prompt>Generate a definition and code example for the HTML5 input `type="number"`, including attributes like `min`, `max`, and `step`.</prompt>"
*   `type="range"`: "<prompt>Generate a definition and code example for the HTML5 input `type="range"`, including attributes like `min`, `max`, and `step`.</prompt>"
### 3. User Interface Inputs
*   `type="color"`: "<prompt>Generate a definition and code example for the HTML5 input `type="color"`.</prompt>"
### 4. Contact/Search Inputs
*   `type="email"`: "<prompt>Generate a definition and code example for the HTML5 input `type="email"`, mentioning its built-in validation pattern and mobile keyboard benefits. Include the `multiple` attribute.</prompt>"
*   `type="tel"`: "<prompt>Generate a definition and code example for the HTML5 input `type="tel"`, explaining its purpose (semantic and mobile keyboard) despite lacking a specific validation pattern.</prompt>"
*   `type="url"`: "<prompt>Generate a definition and code example for the HTML5 input `type="url"`, mentioning its validation pattern.</prompt>"
*   `type="search"`: "<prompt>Generate a definition and code example for the HTML5 input `type="search"`, noting its semantic meaning and potential UI differences.</prompt>"

## B. New Form Attributes
"<prompt>Describe the new attributes available for HTML5 form elements that enhance functionality and user experience.</prompt>"
### 1. Input Attributes
*   `placeholder`: "<prompt>Generate a definition and code example for the `placeholder` attribute in HTML5 input fields.</prompt>"
*   `required`: "<prompt>Generate a definition and code example for the `required` boolean attribute in HTML5 input fields.</prompt>"
*   `pattern`: "<prompt>Explain the `pattern` attribute in HTML5 input fields, used for custom validation with regular expressions. Provide a simple code example (e.g., validating a specific format).</prompt>"
*   `autofocus`: "<prompt>Generate a definition and code example for the `autofocus` boolean attribute in HTML5 input fields.</prompt>"
*   `autocomplete`: "<prompt>Explain the `autocomplete` attribute, its possible values (e.g., 'on', 'off', specific field types like 'name', 'email'), and its purpose in HTML5 forms. Provide an example.</prompt>"
*   `list` (with `<datalist>`): "<prompt>Explain the `list` attribute on an `<input>` element and how it links to a `<datalist>` element to provide autocomplete suggestions. Generate a code example using both elements.</prompt>"
*   `multiple`: "<prompt>Explain the `multiple` attribute as used with `type="email"` and `type="file"` inputs in HTML5. Provide examples.</prompt>"
*   `formaction`, `formenctype`, `formmethod`, `formnovalidate`, `formtarget`: "<prompt>Define the `form*` attributes (`formaction`, `formenctype`, `formmethod`, `formnovalidate`, `formtarget`) that allow submit buttons to override corresponding `<form>` attributes. Provide a brief example.</prompt>"
### 2. Form Attributes
*   `novalidate`: "<prompt>Explain the `novalidate` attribute for the `<form>` element in HTML5, which disables built-in browser validation.</prompt>"

## C. Client-Side Validation
"<prompt>Explain the concept of HTML5 client-side form validation and its benefits.</prompt>"
### 1. Built-in Validation Mechanisms
*   "<prompt>Describe how browsers automatically validate HTML5 forms based on input types (e.g., `email`, `url`, `number`) and attributes (`required`, `pattern`, `min`, `max`, `step`) before submission.</prompt>"
### 2. Styling Validation States (CSS Pseudo-classes)
*   `:valid`, `:invalid`: "<prompt>Explain the CSS pseudo-classes `:valid` and `:invalid` and how they can be used to style form inputs based on their HTML5 validation status. Provide a simple CSS example.</prompt>"
*   `:required`, `:optional`: "<prompt>Explain the CSS pseudo-classes `:required` and `:optional` for styling inputs based on the presence of the `required` attribute. Provide a CSS example.</prompt>"
*   `:in-range`, `:out-of-range`: "<prompt>Explain the CSS pseudo-classes `:in-range` and `:out-of-range` for styling numeric inputs based on `min` and `max` attributes. Provide a CSS example.</prompt>"

*   **Section Summary:** HTML5 revolutionizes forms with new input types (date, number, email, etc.), helpful attributes (`placeholder`, `required`, `pattern`), and built-in client-side validation, reducing reliance on JavaScript for basic checks and improving user experience.
*   **Glossary Prompt:** "<prompt>Define the following HTML5 form terms: Client-Side Validation, Input Type, Form Attribute, Datalist, Regular Expression (as used in `pattern`).</prompt>"
*   **Quiz Prompt:** "<prompt>Generate 2 multiple-choice questions and 1 fill-in-the-blank question about HTML5 form input types (e.g., choosing the right type for email), attributes (e.g., purpose of `required`), and validation pseudo-classes (e.g., styling an invalid field).</prompt>"
*   **Reflection Prompt:** "<prompt>How can HTML5's built-in form validation features improve the development workflow and the end-user experience compared to relying solely on JavaScript for validation?</prompt>"
*   **Further Exploration Prompt:** "<prompt>Provide links to the MDN guide on HTML5 Forms, a tutorial on HTML5 form validation, and a regular expression testing tool.</prompt>"
*   **Callout:** Highlight the accessibility implications of using `placeholder` (not a replacement for `<label>`) and the importance of server-side validation as a necessary backup to client-side checks.

---
*Transition: Having covered structure, multimedia, and forms, we now delve into HTML5's capabilities for creating dynamic graphics directly in the browser.*
---

# IV. Graphics with Canvas and SVG
*   **Learning Objective:** Understand the differences between the HTML5 Canvas API and Scalable Vector Graphics (SVG) and learn basic techniques for drawing shapes, text, and images using both technologies.

## A. Canvas API
"<prompt>Introduce the HTML5 `<canvas>` element as a resolution-dependent bitmap canvas for rendering graphics, animations, and games on the fly using JavaScript.</prompt>"
### 1. Getting Started
*   Setting up the `<canvas>` element: "<prompt>Generate an HTML code example showing how to include a `<canvas>` element with `id`, `width`, and `height` attributes, and fallback content.</prompt>"
*   Accessing the Rendering Context: "<prompt>Provide a JavaScript code snippet demonstrating how to get the 2D rendering context (`getContext('2d')`) from an HTML5 `<canvas>` element.</prompt>"
### 2. Drawing Shapes
*   Rectangles: "<prompt>Generate JavaScript code examples using the Canvas 2D context methods `fillRect()`, `strokeRect()`, and `clearRect()`.</prompt>"
*   Paths (Lines, Arcs, Curves): "<prompt>Explain the concept of paths in the Canvas API. Provide JavaScript code examples using `beginPath()`, `moveTo()`, `lineTo()`, `arc()`, `closePath()`, `stroke()`, and `fill()` to draw lines and shapes.</prompt>"
### 3. Applying Styles and Colors
*   "<prompt>Generate JavaScript code examples demonstrating how to set `fillStyle` and `strokeStyle` properties for coloring shapes, and `lineWidth` for line thickness in the Canvas 2D context.</prompt>"
### 4. Drawing Text
*   "<prompt>Generate JavaScript code examples using `fillText()` and `strokeText()` methods, along with the `font` property, to draw text on the HTML5 canvas.</prompt>"
### 5. Drawing Images
*   "<prompt>Generate a JavaScript code example showing how to load an image and draw it onto the HTML5 canvas using the `drawImage()` method.</prompt>"

## B. Scalable Vector Graphics (SVG)
"<prompt>Introduce SVG as an XML-based vector image format for defining graphics directly within HTML, emphasizing its scalability and resolution independence.</prompt>"
### 1. Embedding SVG in HTML5
*   Inline SVG: "<prompt>Generate an HTML code example showing how to embed SVG code directly within an HTML5 document using the `<svg>` element.</prompt>"
*   Using `<img>`, `<object>`, `<iframe>`: "<prompt>Briefly explain how SVG files can be included using standard HTML elements like `<img>`, `<object>`, or `<iframe>`, noting the differences in interactivity and styling capabilities.</prompt>"
### 2. Basic Shapes
*   `<rect>`, `<circle>`, `<ellipse>`, `<line>`, `<polyline>`, `<polygon>`: "<prompt>Generate simple SVG code examples demonstrating the creation of basic shapes like rectangles (`<rect>`), circles (`<circle>`), ellipses (`<ellipse>`), and lines (`<line>`, `<polyline>`, `<polygon>`) using their respective elements and attributes (e.g., `x`, `y`, `width`, `height`, `r`, `cx`, `cy`, `points`, `fill`, `stroke`).</prompt>"
### 3. Paths
*   `<path>` element: "<prompt>Explain the `<path>` element in SVG and the basic commands used in the `d` attribute (e.g., M, L, H, V, Z) to draw complex shapes. Provide a simple `<path>` example.</prompt>"
### 4. Text
*   `<text>` element: "<prompt>Generate an SVG code example using the `<text>` element to add text content, including attributes like `x`, `y`, `fill`, and `font-size`.</prompt>"

## C. Canvas vs. SVG
"<prompt>Compare and contrast HTML5 Canvas and SVG, outlining their respective strengths, weaknesses, and typical use cases (e.g., Canvas for pixel manipulation/games, SVG for scalable icons/illustrations/data visualization).</prompt>"

*   **Section Summary:** HTML5 provides two powerful ways to render graphics: the `<canvas>` element for scriptable, pixel-based drawing (suited for dynamic graphics and games), and SVG for resolution-independent, XML-based vector graphics (ideal for illustrations, icons, and charts).
*   **Glossary Prompt:** "<prompt>Define the following graphics terms: Canvas, SVG, Bitmap (Raster) Graphics, Vector Graphics, Rendering Context, Path (in Canvas and SVG), DOM (as relevant to SVG).</prompt>"
*   **Quiz Prompt:** "<prompt>Generate 3 comparison questions asking when to choose Canvas vs. SVG for specific scenarios (e.g., interactive game vs. scalable logo).</prompt>"
*   **Reflection Prompt:** "<prompt>Think about a web application that heavily uses graphics (e.g., a photo editor, a map service, a data dashboard). Which technology, Canvas or SVG, do you think is predominantly used, and why?</prompt>"
*   **Further Exploration Prompt:** "<prompt>Provide links to the MDN Canvas API tutorial, the MDN SVG tutorial, and a comparison article detailing Canvas vs. SVG use cases.</prompt>"
*   **Cross-Reference:** Mention that Canvas drawing is performed via JavaScript, linking to future potential JavaScript modules. SVG integrates directly into the DOM structure discussed in Section I.

---
*Transition: Beyond visual elements, HTML5 introduced several JavaScript APIs that allow web pages to interact more deeply with the browser and operating system.*
---

# V. Browser APIs
*   **Learning Objective:** Understand and utilize key HTML5 JavaScript APIs for accessing device capabilities (Geolocation), storing data locally (Web Storage), running background scripts (Web Workers), and enabling real-time communication (WebSockets).

## A. Geolocation API
"<prompt>Introduce the HTML5 Geolocation API and its purpose: allowing web applications to request and utilize the user's geographical location, with their permission.</prompt>"
### 1. Getting Current Position
*   `navigator.geolocation.getCurrentPosition()`: "<prompt>Provide a JavaScript code example demonstrating how to use `navigator.geolocation.getCurrentPosition()` to retrieve the user's current location, including handling success and error callbacks.</prompt>"
### 2. Handling Permissions and Errors
*   "<prompt>Explain the importance of user permission for Geolocation and describe common error codes that might be returned by the API.</prompt>"

## B. Web Storage API
"<prompt>Introduce the HTML5 Web Storage API (localStorage and sessionStorage) as a mechanism for storing key-value pairs locally within the user's browser, offering more space and a simpler API than cookies.</prompt>"
### 1. `localStorage`
*   "<prompt>Explain the characteristics of `localStorage` (persistent storage, origin-bound). Provide JavaScript code examples for `setItem()`, `getItem()`, `removeItem()`, and `clear()` methods.</prompt>"
### 2. `sessionStorage`
*   "<prompt>Explain the characteristics of `sessionStorage` (session-only storage, tab-specific, origin-bound). Provide JavaScript code examples for `setItem()`, `getItem()`, `removeItem()`, and `clear()` methods.</prompt>"
### 3. Use Cases and Limitations
*   "<prompt>Discuss common use cases for Web Storage (e.g., user preferences, offline data caching) and its limitations (e.g., storage limits, synchronous nature, security considerations).</prompt>"
*   **Callout:** Emphasize that Web Storage is synchronous and should not be used for large amounts of data on the main thread due to potential performance impacts.

## C. Web Workers API
"<prompt>Introduce the HTML5 Web Workers API as a way to run JavaScript code in background threads, preventing complex computations from freezing the main user interface thread.</prompt>"
### 1. Creating and Communicating with a Worker
*   `new Worker()`: "<prompt>Generate a JavaScript code example showing how to create a new Worker by specifying the path to the worker script.</prompt>"
*   `postMessage()` and `onmessage`: "<prompt>Provide simple JavaScript code examples for both the main script and the worker script, demonstrating how they communicate using `postMessage()` to send data and the `onmessage` event handler to receive data.</prompt>"
### 2. Use Cases
*   "<prompt>List common use cases for Web Workers, such as intensive calculations, background data processing, or image manipulation.</prompt>"

## D. WebSockets API
"<prompt>Introduce the HTML5 WebSockets API as a technology enabling full-duplex, persistent communication channels over a single TCP connection between a client (browser) and a server.</prompt>"
### 1. Establishing a Connection
*   `new WebSocket()`: "<prompt>Generate a JavaScript code example showing how to establish a WebSocket connection to a server using the `WebSocket` constructor with a `ws://` or `wss://` URL.</prompt>"
### 2. Sending and Receiving Messages
*   `send()`: "<prompt>Provide a JavaScript code example demonstrating how to send a message to the WebSocket server using the `send()` method.</prompt>"
*   `onmessage`: "<prompt>Provide a JavaScript code example showing how to handle incoming messages from the WebSocket server using the `onmessage` event handler.</prompt>"
### 3. Handling Events
*   `onopen`, `onerror`, `onclose`: "<prompt>Explain the purpose of the `onopen`, `onerror`, and `onclose` event handlers for managing the WebSocket connection lifecycle. Provide brief code structure examples.</prompt>"
### 4. Use Cases
*   "<prompt>List common use cases for WebSockets, such as real-time chat applications, live notifications, multiplayer games, and streaming data dashboards.</prompt>"

*   **Section Summary:** HTML5 enhances browser capabilities with JavaScript APIs like Geolocation (location access), Web Storage (local data persistence), Web Workers (background threads), and WebSockets (real-time, bidirectional communication).
*   **Glossary Prompt:** "<prompt>Define the following API terms: API (Application Programming Interface), Geolocation, localStorage, sessionStorage, Web Worker, WebSocket, Full-duplex communication, Origin (in web security).</prompt>"
*   **Quiz Prompt:** "<prompt>Generate 3 scenario-based questions asking which HTML5 API (Geolocation, Web Storage, Web Workers, WebSockets) would be most appropriate for tasks like saving user preferences, performing heavy background calculations, or implementing a live chat feature.</prompt>"
*   **Reflection Prompt:** "<prompt>How do these HTML5 APIs enable web applications to behave more like native desktop or mobile applications compared to earlier web technologies?</prompt>"
*   **Further Exploration Prompt:** "<prompt>Provide links to MDN documentation for the Geolocation API, Web Storage API, Web Workers API, and WebSockets API.</prompt>"
*   **Cross-Reference:** Note the connection between Web Workers and potential performance optimizations (Section VI). Mention security considerations for Geolocation and Web Storage.

---
*Transition: Having explored the major features, let's focus on advanced techniques, performance optimization, and ensuring robustness in HTML5 development.*
---

# VI. Advanced Techniques and Best Practices
*   **Learning Objective:** Learn about advanced HTML5 features, performance optimization strategies, accessibility considerations (ARIA), and modern development workflows.

## A. Accessibility (ARIA Integration)
"<prompt>Explain the purpose of WAI-ARIA (Accessible Rich Internet Applications) and how ARIA attributes (`role`, `aria-*`) can be used to enhance the accessibility of HTML5 elements and dynamic web applications, especially for custom widgets or components not natively understood by assistive technologies.</prompt>"
### 1. Basic ARIA Roles and Properties
*   "<prompt>Provide examples of common ARIA roles (e.g., `role="navigation"`, `role="button"`, `role="alert"`) and properties (e.g., `aria-label`, `aria-required`, `aria-hidden`) applied to HTML elements to improve semantics for assistive technologies.</prompt>"
*   **Cross-Reference:** Link back to Section I (Semantic Elements) and Section III (Forms), noting how native HTML5 elements often have implicit ARIA roles, but ARIA can supplement them or make custom components accessible.

## B. Performance Optimization
"<prompt>Discuss strategies for optimizing the performance of web pages utilizing HTML5 features.</prompt>"
### 1. Optimizing Multimedia
*   "<prompt>Provide tips for optimizing HTML5 video and audio, such as choosing appropriate formats/codecs, compressing media files, using the `preload` attribute wisely, and considering adaptive streaming techniques.</prompt>"
### 2. Canvas Performance
*   "<prompt>List techniques for improving HTML5 Canvas performance, including minimizing state changes, drawing off-screen, batching drawing operations, and using layering or multiple canvases.</prompt>"
### 3. Web Workers for Responsiveness
*   "<prompt>Reiterate the use of Web Workers (covered in Section V) as a key technique for offloading intensive tasks from the main thread to maintain UI responsiveness.</prompt>"
### 4. Efficient Web Storage Use
*   "<prompt>Provide advice on using Web Storage efficiently, such as avoiding storing large amounts of data, being mindful of the synchronous nature, and considering asynchronous alternatives like IndexedDB for complex client-side storage needs.</prompt>"

## C. Improving Techniques: Feature Detection vs. Browser Sniffing
"<prompt>Explain the concept of feature detection (checking if a specific browser feature exists) versus browser sniffing (checking the browser's user agent string). Emphasize why feature detection is the preferred, more robust method for handling browser differences in HTML5 feature support.</prompt>"
### 1. Using Modernizr (Example)
*   "<prompt>Briefly introduce Modernizr as a popular JavaScript library for feature detection and provide a conceptual example of how it can be used to conditionally apply styles or run scripts based on HTML5 feature availability.</prompt>"
*   **Further Exploration Prompt:** "<prompt>Provide a link to the Modernizr library website.</prompt>"

## D. Progressive Enhancement and Graceful Degradation
"<prompt>Define the concepts of Progressive Enhancement (starting with baseline functionality and adding enhancements for capable browsers) and Graceful Degradation (building the full experience and ensuring it degrades gracefully in less capable browsers). Discuss how these strategies apply to using new HTML5 features.</prompt>"

## E. Validation and Debugging
"<prompt>Discuss tools and techniques for validating HTML5 markup and debugging issues related to HTML5 features.</prompt>"
### 1. HTML Validation
*   "<prompt>Recommend using the W3C Markup Validation Service or similar tools to check HTML5 documents for syntax errors and conformance.</prompt>"
*   **Further Exploration Prompt:** "<prompt>Provide a link to the W3C Markup Validation Service.</prompt>"
### 2. Browser Developer Tools
*   "<prompt>Explain how browser developer tools (Elements/Inspector tab, Console tab, Network tab) are essential for inspecting the DOM, debugging JavaScript APIs (like Geolocation, Web Storage, WebSockets), and identifying rendering issues with Canvas or SVG.</prompt>"
### 3. Handling API Errors and Compatibility
*   "<prompt>Emphasize checking for the existence of APIs (feature detection) and using error callbacks or try...catch blocks (where appropriate in JavaScript) to handle potential issues when using HTML5 APIs (e.g., Geolocation permission denied, WebSocket connection errors).</prompt>"
*   **Callout:** Reinforce that robust error handling and consideration for browser compatibility are crucial for production applications using advanced HTML5 features.

*   **Section Summary:** Advanced HTML5 development involves integrating accessibility with ARIA, optimizing performance (especially for media, Canvas, and background tasks), using feature detection for cross-browser compatibility, applying progressive enhancement principles, and utilizing validation and debugging tools effectively.
*   **Glossary Prompt:** "<prompt>Define the following terms: WAI-ARIA, Feature Detection, Browser Sniffing, Progressive Enhancement, Graceful Degradation, W3C Validator, Browser Developer Tools.</prompt>"
*   **Quiz Prompt:** "<prompt>Generate 2 scenario questions asking whether Progressive Enhancement or Graceful Degradation is being described, and 1 question about the primary method recommended for checking browser support for an HTML5 feature.</prompt>"
*   **Reflection Prompt:** "<prompt>Consider a complex web application you might build. How would you incorporate principles like feature detection and progressive enhancement to ensure it works reliably for the widest possible audience?</prompt>"
