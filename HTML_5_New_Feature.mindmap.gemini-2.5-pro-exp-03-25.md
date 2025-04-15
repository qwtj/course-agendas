# HTML 5 New Feature #HTML5 #WebDevelopment #Frontend

Overview of the significant additions and changes introduced with the HTML5 standard.

## Semantic Elements #Semantics #Structure #SEO
New elements providing better document structure and meaning.

### Content Sectioning Elements #Layout #Structure
Elements for defining logical sections of a page.
#### `<article>` #Content #Blog #News
Represents a self-contained composition (e.g., forum post, blog entry, news story).
#### `<section>` #Grouping #Thematic
Represents a generic section of a document or application, typically with a heading.
#### `<nav>` #Navigation #Links #Menus
Represents a section containing navigation links.
#### `<aside>` #Sidebar #RelatedContent
Represents content tangentially related to the content around it (e.g., sidebars, pull quotes).
#### `<header>` #Introduction #Heading #Banner
Represents introductory content, typically containing headings, logos, search forms, etc.
#### `<footer>` #Info #Copyright #Author
Represents the footer for its nearest sectioning content or root element.
#### `<main>` #PrimaryContent #Core
Represents the dominant content of the `<body>` of a document.

### Text-Level Semantics #Inline #Formatting #Meaning
Elements for marking up specific parts of text.
#### `<mark>` #Highlight #Reference
Represents text marked or highlighted for reference purposes.
#### `<time>` #Date #Time #MachineReadable
Represents a specific period in time or a date. Can include `datetime` attribute for machine readability.
#### `<figure>` #Illustration #Diagram #Photo
Represents self-contained content, potentially with a caption (`<figcaption>`), referenced from the main flow.
#### `<figcaption>` #Caption #Description #Figure
Represents the caption or legend for a `<figure>`.
#### `<data>` #MachineReadable #Value
Links content with a machine-readable translation.
#### `<wbr>` #WordBreak #Opportunity #LineBreak
Represents a word break opportunity.

## Forms Enhancements #Forms #Input #Validation #UX
Improvements to web forms for better user experience and data handling.

### New Input Types #DataEntry #UIControls
Expanding the types available for `<input>` elements.
#### `email` #Validation #Contact
For email addresses; basic client-side validation.
#### `url` #Validation #Link
For web addresses; basic client-side validation.
#### `number` #Numeric #Spinner
For numeric values; often includes spinner controls.
#### `range` #Slider #Numeric
For numeric values within a range; often represented as a slider.
#### `date` #Calendar #DatePicker
For selecting a date.
#### `time` #Clock #TimePicker
For selecting a time.
#### `datetime-local` #Calendar #Clock
For selecting date and time without timezone.
#### `month` #Calendar #MonthPicker
For selecting a month and year.
#### `week` #Calendar #WeekPicker
For selecting a week and year.
#### `search` #Input #SearchField
For search input fields.
#### `tel` #PhoneNumber #Input
For telephone numbers (no specific validation enforced).
#### `color` #ColorPicker #Input
For selecting a color.

### New Form Attributes #Behavior #Validation #Accessibility
Attributes applicable to form elements or controls.
#### `placeholder` #Hint #UX
Provides a hint to the user of what can be entered.
#### `required` #Validation #Mandatory
Specifies that an input field must be filled out.
#### `pattern` #RegExp #Validation #Custom
Specifies a regular expression for validation.
#### `autofocus` #UX #Focus
Specifies that an element should automatically get focus when the page loads.
#### `autocomplete` #UX #Efficiency #FormFill
Controls browser autofill behavior.
#### `min` / `max` / `step` #Numeric #Range #Constraints
Define constraints for numeric input types.
#### `multiple` #Selection #Files #Email
Allows multiple values to be selected/entered (e.g., for `file` or `email` inputs).
#### `novalidate` #Form #ValidationControl
Disables default browser validation for a form.
#### `form` #Association #LayoutFlexibility
Associates an input element with a form, even if outside the `<form>` tags.
#### `formaction` / `formenctype` / `formmethod` / `formnovalidate` / `formtarget` #Button #Override
Allow buttons to override form attributes.

### Other Form Features #Output #DataList
#### `<output>` #Calculation #Result
Represents the result of a calculation or user action.
#### `<datalist>` #Autocomplete #Suggestions #Input
Provides predefined options for input controls, offering autocomplete suggestions.
#### `<progress>` #Loading #Task #Status
Represents the completion progress of a task.
#### `<meter>` #Gauge #Measurement #DiskUsage
Represents a scalar measurement within a known range or fractional value.

## Multimedia Support #Audio #Video #Media
Native support for embedding and controlling audio and video content.

### `<audio>` Element #Sound #Music #Podcast
For embedding sound content.
#### Attributes (`controls`, `autoplay`, `loop`, `preload`, `src`) #Control #Behavior
#### Audio API Integration #JavaScript #Manipulation

### `<video>` Element #Movie #Streaming #Media
For embedding video content.
#### Attributes (`controls`, `autoplay`, `loop`, `preload`, `src`, `poster`, `width`, `height`) #Control #Behavior #Appearance
#### Video API Integration #JavaScript #Manipulation
#### `<track>` Element #Subtitles #Captions #Accessibility
Specifies timed text tracks (e.g., subtitles, captions).

## Graphics #Canvas #SVG #WebGL #Visuals
New ways to draw graphics directly in the browser.

### Canvas API #2D #Drawing #Bitmap #JavaScript
Provides a resolution-dependent bitmap canvas for rendering graphs, game graphics, or other visual images on the fly using JavaScript.
#### Drawing Shapes (Rectangles, Paths, Lines, Arcs, Bezier curves) #Primitives
#### Applying Styles (Colors, Gradients, Patterns) #Styling
#### Text Manipulation #Typography
#### Image Manipulation #Pixels #Filters
#### Animation #Dynamic #Interactive

### WebGL (Web Graphics Library) #3D #Graphics #OpenGL #JavaScript
A JavaScript API for rendering interactive 3D and 2D graphics within any compatible web browser without the use of plug-ins, based on OpenGL ES.
#### Integration with `<canvas>` #RenderingContext
#### Shaders (Vertex, Fragment) #GPU #Programming
#### Textures and Lighting #Realism #Effects

### SVG (Scalable Vector Graphics) Integration #Vector #Graphics #XML
While SVG predates HTML5, its integration and usage became more seamless, often used alongside Canvas/WebGL.
#### Embedding SVG directly in HTML #InlineSVG
#### DOM Manipulation via JavaScript #Scripting #Interaction

## Connectivity #Networking #RealTime #Communication
Enhanced communication capabilities between the browser and server.

### WebSockets #Bidirectional #FullDuplex #RealTime
API enabling two-way communication channels over a single TCP connection. Ideal for real-time applications like chat, games, live feeds.
#### `WebSocket` Object #JavaScript #API
#### Event Handling (`onopen`, `onmessage`, `onerror`, `onclose`) #Lifecycle

### Server-Sent Events (SSE) #Unidirectional #ServerPush #Updates
API enabling a server to push data to a browser client once an initial connection is established (server-to-client only).
#### `EventSource` Object #JavaScript #API
#### Handling Events #RealTimeData

## Offline and Storage #OfflineFirst #DataPersistence #Performance
APIs allowing web pages to store data locally on the user's machine and potentially function offline.

### Web Storage #LocalStorage #SessionStorage #KeyValue
Mechanisms for storing key/value pairs locally, simpler than cookies.
#### `localStorage` #Persistent #LongTerm
Stores data with no expiration date. Persists even after the browser window is closed.
#### `sessionStorage` #Temporary #SessionBased
Stores data for one session. Data is lost when the browser tab is closed.

### IndexedDB #Database #ClientSide #Asynchronous #StructuredData
A low-level API for client-side storage of significant amounts of structured data, including files/blobs. Supports transactions and indexes.
#### Object Stores #Collections #Data
#### Indexes #Querying #Performance
#### Transactions #ACID #DataIntegrity
#### Asynchronous Operations #NonBlocking #Callbacks #Promises

### File API #FileSystem #ClientSide #Blobs
API providing access to file contents selected by the user, enabling reading and manipulation.
#### Reading Files #FileReader #DataURLs
#### File Metadata (Name, Size, Type) #Information
#### Slicing Files #Chunks #Processing

### Application Cache (Deprecated) #Offline #Caching #Legacy
*Note: This feature is deprecated and generally replaced by Service Workers.*
A mechanism to cache resources offline, making web applications available without an internet connection.

## Performance and Integration #Multithreading #BackgroundTasks #BrowserHistory #Interactivity
APIs improving performance and enabling better integration with the browser environment.

### Web Workers #BackgroundThreads #Concurrency #Performance
API allowing scripts to run in background threads, separate from the main execution thread, preventing UI freezes during intensive computations.
#### Dedicated Workers #SingleScript
#### Shared Workers #MultipleScripts #SharedState
#### `postMessage()` Communication #Messaging

### History API #SPA #Navigation #URLManipulation #StateManagement
Allows manipulation of the browser session history, enabling changes to the URL without full page reloads (crucial for Single Page Applications).
#### `history.pushState()` #AddState #ModifyURL
#### `history.replaceState()` #ModifyState #ModifyURL
#### `popstate` Event #BrowserNavigation #BackForward

### Drag and Drop API #UI #Interaction #DataTransfer
API enabling native drag and drop functionality within web pages.
#### Draggable Elements (`draggable="true"`) #Attribute
#### Drag Events (`dragstart`, `drag`, `dragenter`, `dragleave`, `dragover`, `drop`, `dragend`) #Lifecycle
#### `DataTransfer` Object #Payload #Data

## Device Access APIs #Hardware #Sensors #Integration
APIs providing access to device hardware and capabilities.

### Geolocation API #Location #Mapping #LBS
API allowing web applications to retrieve the geographical position of the user's device (with permission).
#### `navigator.geolocation` Object #JavaScript #API
#### `getCurrentPosition()` #OneTime #LocationData
#### `watchPosition()` #Continuous #Tracking
#### Handling Permissions and Errors #Privacy #UX

### getUserMedia / MediaStream API #Camera #Microphone #WebRTC
*(Often associated with WebRTC but foundational)*
API to access user's camera and microphone streams.
#### Capturing Audio/Video #InputDevices #Stream

## Removed/Obsolete Elements and Attributes #Cleanup #Standards #Modernization
Elements and attributes deprecated or removed in HTML5 to promote cleaner code and better practices (often replaced by CSS or semantic elements).

### Removed Elements #Legacy #Deprecated
Examples: `<center>`, `<font>`, `<big>`, `<strike>`, `<frame>`, `<frameset>`, `<noframes>`, `<applet>`, `<basefont>`, `<dir>`.
### Removed Attributes #Presentation #Styling #Deprecated
Examples: `align` (on many elements), `bgcolor`, `border` (on `<img>`), `cellpadding`, `cellspacing` (on `<table>`), `height`, `width` (on some elements, CSS preferred), `language` (on `<script>`), `noshade` (on `<hr>`), `size` (on `<hr>`, `<font>`), `type` (on `<li>`, `<ol>`, `<ul>`), `valign` (on table elements).
