# Processing-p5 #CreativeCoding #JavaScript #Visualization
An overview of p5.js, a JavaScript library for creative coding, building on the core ideas of Processing. Focuses primarily on the p5.js library and ecosystem.

## Introduction to Processing & p5.js #History #Philosophy #GettingStarted
Understanding the context, goals, and relationship between Processing and p5.js.
### What is Processing? #Java #Origins #Desktop
Brief overview of the original Processing environment (Java-based).
### What is p5.js? #JavaScript #Web #Library
Introduction to the p5.js library for web-based creative coding.
### Philosophy & Goals #Art #Education #Accessibility #Community
The core principles behind Processing and p5.js: making coding accessible for artists, designers, educators, and beginners.
### Processing vs. p5.js #Comparison #KeyDifferences #WebVsDesktop
Highlighting the similarities and differences, focusing on language (Java vs. JS) and environment (Desktop vs. Web).
### Use Cases #Art #DataVisualization #Education #Prototyping #Games
Examples of what p5.js is used for.

## Environment Setup #Installation #Workflow #Editor
Setting up the necessary tools to start coding with p5.js.
### p5.js Web Editor #OnlineEditor #Browser #BeginnerFriendly
Using the official online editor for quick setup and coding.
### Local Development Setup #HTMLEditor #WebServer #NodeJS
Setting up a local environment using a text editor and a local server.
#### Downloading the Library #p5jsLibrary #CDN #LocalFile
Getting the p5.js library file or linking via CDN.
#### Basic HTML Structure #index.html #ScriptTag #Canvas
Creating the necessary HTML file to host a p5.js sketch.
#### Running a Local Server #HTTPServer #LiveServer #DevelopmentTool
Tools and techniques for running sketches locally.
### Using p5.js with Build Tools #npm #Webpack #Vite #ES6Modules
Integrating p5.js into modern JavaScript development workflows.

## Fundamental Concepts #Sketch #Core #Structure
The basic building blocks and execution model of a p5.js sketch.
### Sketch Structure #setup #draw #CoreFunctions
Understanding the `setup()` and `draw()` functions.
`setup()` runs once at the beginning.
`draw()` runs repeatedly, creating animation.
### The Canvas #DrawingSurface #HTMLElement #Pixels
The digital canvas where graphics are rendered.
#### Creating a Canvas #createCanvas #Dimensions #Renderer
Using `createCanvas()` to define the drawing area and renderer (P2D/default, WEBGL).
### The Drawing Loop #Animation #FrameRate #LoopControl
How `draw()` creates animation and how to control it.
#### `frameRate()` #Speed #AnimationControl
Setting the desired frames per second.
#### `noLoop()`, `loop()`, `redraw()` #ExecutionControl #StaticImage
Controlling the execution of the `draw()` loop.
### Coordinate System #2D #Origin #Pixels
Understanding the default coordinate system (origin at top-left).
### Instance Mode vs Global Mode #Scoping #MultipleSketches #Namespacing
Different ways to structure p5.js code, especially for multiple sketches on one page.

## Core Programming Elements #JavaScript #Basics #Logic
Fundamental JavaScript concepts as applied within p5.js.
### Variables & Data Types #let #const #var #Number #String #Boolean
Storing and manipulating data.
#### p5.js Specific Variables #width #height #mouseX #mouseY #frameCount
Built-in variables provided by the library.
### Operators #Arithmetic #Comparison #Logical #Assignment
Performing operations on data.
### Control Flow #ConditionalStatements #Loops
Directing the execution path of the code.
#### Conditionals (`if`, `else if`, `else`) #DecisionMaking #Logic
Making decisions based on conditions.
#### Loops (`for`, `while`) #Iteration #Repetition
Repeating blocks of code.
### Functions #Modularity #Reusability #Organization
Defining reusable blocks of code.
#### Defining Functions #functionKeyword #Parameters #ReturnValues
Creating custom functions.
#### Calling Functions #Execution #CodeFlow
Using defined functions.
### Comments #Documentation #Explanation #CodeReadability
Adding notes to code.

## 2D Drawing Primitives & Attributes #Shapes #Graphics #Visuals
Creating visual elements on the canvas.
### Basic Shapes #Geometry #DrawingFunctions
Functions for drawing simple geometric forms.
#### Points & Lines #`point()` #`line()` #Connections
Drawing dots and straight lines.
#### Rectangles & Squares #`rect()` #`square()` #Quadrilaterals
Drawing four-sided shapes. `rectMode()` affects positioning.
#### Ellipses & Circles #`ellipse()` #`circle()` #Curves
Drawing circular and elliptical shapes. `ellipseMode()` affects positioning.
#### Triangles & Quads #`triangle()` #`quad()` #Polygons
Drawing three and four-sided polygons with specified vertices.
#### Arcs #`arc()` #PieCharts #Curves
Drawing sections of an ellipse.
#### Curves #`curve()` #`bezier()` #Splines
Drawing smooth, curved lines.
### Polygons #`beginShape()` #`endShape()` #`vertex()` #CustomShapes
Creating complex shapes by defining vertices.
### Drawing Attributes #Styling #Appearance #VisualProperties
Modifying the appearance of shapes.
#### Stroke #`stroke()` #`noStroke()` #`strokeWeight()` #Outlines
Setting the color and thickness of shape outlines.
#### Fill #`fill()` #`noFill()` #InteriorColor
Setting the interior color of shapes.
#### Caps & Joins #`strokeCap()` #`strokeJoin()` #LineEndings #Corners
Controlling the appearance of line endings and corners.

## Color Representation & Manipulation #ColorTheory #Styling #Visuals
Working with colors in p5.js.
### Color Models #RGB #HSB #Hex #Representation
Different ways to specify colors.
#### RGB (Red, Green, Blue) #AdditiveColor #DefaultModel
Specifying color by mixing red, green, and blue light. Alpha (transparency) can be included.
#### HSB/HSV (Hue, Saturation, Brightness/Value) #IntuitiveColor #Perception
Specifying color based on hue, saturation, and brightness. Often more intuitive for color selection.
#### Hexadecimal Codes #WebColor #CSS #Notation
Using standard web color codes (e.g., `#FF0000`).
#### Grayscale #ShadesOfGray #Simplicity
Using single values for black, white, and grays.
### Setting Colors #`color()` #`background()` #`fill()` #`stroke()`
Applying colors to the background and shapes.
#### `color()` Function #ColorObject #StoringColors
Creating and storing color values.
#### Transparency (Alpha) #Opacity #Blending #Layers
Adding transparency to colors.
### Color Functions #`lerpColor()` #Blending #Interpolation #Gradients
Functions for manipulating and blending colors.

## Interaction (Input Handling) #Events #UserInput #Responsiveness
Making sketches respond to user actions.
### Mouse Input #Cursor #Clicking #Dragging
Detecting mouse position and actions.
#### Mouse Position #`mouseX`, `mouseY`, `pmouseX`, `pmouseY` #Tracking
Accessing current and previous mouse coordinates.
#### Mouse Buttons #`mouseButton` #`mouseIsPressed` #Clicks
Detecting which mouse button is pressed (LEFT, CENTER, RIGHT).
#### Mouse Events #`mousePressed()` #`mouseReleased()` #`mouseMoved()` #`mouseDragged()` #`mouseClicked()` #`doubleClicked()` #`mouseWheel()` #EventFunctions
Functions that are called automatically when mouse events occur.
### Keyboard Input #Typing #Controls #Shortcuts
Detecting key presses.
#### Key Variables #`key` #`keyCode` #`keyIsPressed` #Character #Code
Accessing the character or code of the pressed key.
#### Key Events #`keyPressed()` #`keyReleased()` #`keyTyped()` #EventFunctions
Functions called automatically for keyboard events.
### Touch Input #Mobile #Tablets #MultiTouch
Handling touch events on touch-enabled devices.
#### Touch Variables #`touches[]` #MultiTouchData #Tracking
Accessing data for multiple touch points (position, ID).
#### Touch Events #`touchStarted()` #`touchMoved()` #`touchEnded()` #EventFunctions
Functions called automatically for touch events.
### Device Events #`deviceMoved()` #`deviceTurned()` #`deviceShaken()` #Sensors #Mobile
Responding to device orientation and motion sensors.

## Media Integration #Assets #Multimedia #BeyondShapes
Incorporating external media files into sketches.
### Images #Loading #Displaying #Manipulation #Pixels
Working with image files (JPG, PNG, GIF).
#### Loading Images #`loadImage()` #Asynchronous #Preload
Loading images before they can be displayed, often in `preload()`.
#### Displaying Images #`image()` #Positioning #Resizing
Drawing loaded images onto the canvas. `imageMode()` affects positioning.
#### Pixel Manipulation #`loadPixels()` #`updatePixels()` #`pixels[]` #ImageProcessing
Accessing and modifying the raw pixel data of the canvas or images.
#### `p5.Image` Class #ImageObject #Methods
Using methods associated with image objects (e.g., `get()`, `set()`, `resize()`, `filter()`).
### Fonts #Typography #Text #CustomFonts
Displaying text with different typefaces.
#### Loading Fonts #`loadFont()` #OTF #TTF #Preload
Loading external font files.
#### Displaying Text #`text()` #Positioning #Styling
Drawing text on the canvas.
#### Text Attributes #`textFont()` #`textSize()` #`textAlign()` #`textLeading()` #Styling
Controlling the appearance and layout of text.
### Sound #Audio #Playback #Analysis #Synthesis
Incorporating sound files and generating audio.
#### Loading Sound Files #`loadSound()` #MP3 #WAV #Preload #p5.sound
Loading audio files using the p5.sound library.
#### Playing Sound #`.play()` #`.loop()` #`.stop()` #`.pause()` #PlaybackControl
Controlling sound playback.
#### Sound Synthesis #`p5.Oscillator` #`p5.Noise` #GeneratingSound
Creating sound programmatically.
#### Audio Analysis #`p5.Amplitude` #`p5.FFT` #Visualization #Responsiveness
Analyzing audio input (microphone) or playback (amplitude, frequency spectrum).
### Video #Loading #Playback #Capture #Pixels
Playing video files and capturing live video from webcams. Requires DOM library/methods usually.
#### Loading & Playing Video #`createVideo()` #DOMElement #PlaybackControl
Using HTML5 video capabilities within p5.js.
#### Capturing Video #`createCapture()` #Webcam #LiveInput
Accessing live video feed from a camera.
#### Using Video as Texture #WEBGL #DynamicTexture
Applying video frames as textures in 3D mode.

## Data Structures & Management #Organization #ComplexData #Information
Handling collections of data and external data sources.
### Arrays #Lists #Collections #OrderedData
Storing ordered sequences of values.
#### Creating & Accessing Arrays #`[]` #Indices #Iteration
Working with array elements.
#### Array Methods #`.push()` #`.pop()` #`.splice()` #`.length` #Manipulation
Built-in JavaScript methods for array manipulation.
### Objects #Dictionaries #KeyValuePairs #StructuredData
Storing data using key-value pairs (properties).
#### Creating & Accessing Objects #`{}` #DotNotation #BracketNotation
Working with object properties.
### Loading External Data #API #Files #DataInput
Bringing data into sketches from external sources.
#### Loading JSON #`loadJSON()` #JavaScriptObjectNotation #APIs #DataFiles
Fetching and parsing data in JSON format.
#### Loading Text & Strings #`loadStrings()` #TextFiles #Parsing
Loading raw text data from files.
#### Loading Table Data #`loadTable()` #CSV #TSV #Spreadsheets
Loading data structured in rows and columns.
### `p5.Table` Class #TableObject #Rows #Columns #Methods
Working with tabular data using p5.js specific methods.

## Transformations & Coordinate Systems #Motion #Positioning #AdvancedGraphics
Manipulating the drawing space.
### Translate #`translate()` #MovingOrigin #RelativePositioning
Shifting the origin (0,0) of the coordinate system.
### Rotate #`rotate()` #Angles #Spinning #Orientation
Rotating the coordinate system around the origin. Units are typically radians.
### Scale #`scale()` #Resizing #Proportions
Enlarging or shrinking the coordinate system.
### Transformation Stack #`push()` #`pop()` #Isolation #StateManagement
Saving and restoring the current transformation state (translation, rotation, scale, styles). Essential for complex compositions.
### Angle Modes #`angleMode()` #DEGREES #RADIANS #Units
Specifying whether rotation angles are measured in degrees or radians.

## 3D Rendering (WEBGL) #3DGraphics #Space #Depth
Creating sketches in three-dimensional space.
### Enabling WEBGL Mode #`createCanvas(w, h, WEBGL)` #Renderer #Setup
Switching the canvas renderer to WEBGL for 3D capabilities.
### 3D Coordinate System #X #Y #Z #Depth
Understanding the coordinate system in 3D (often Y points down or up depending on conventions).
### 3D Primitives #Shapes3D #Geometry
Drawing basic shapes in 3D.
#### Box #`box()` #Cube #RectangularPrism
#### Sphere #`sphere()` #Ball #Globe
#### Cylinder #`cylinder()` #Tube #Pipe
#### Cone #`cone()` #PointedShape
#### Ellipsoid #`ellipsoid()` #OvalSphere
#### Torus #`torus()` #DonutShape
#### Plane #`plane()` #FlatSurface
### Camera Control #Perspective #ViewingAngle #Position
Manipulating the viewpoint in the 3D scene.
#### `camera()` #Position #Target #Orientation
Setting the camera's position, the point it looks at, and its up direction.
#### `perspective()` #FieldOfView #AspectRatio #ClippingPlanes
Setting the perspective projection properties.
#### `ortho()` #OrthographicProjection #FlatView #2DIn3D
Setting an orthographic projection (no perspective distortion).
#### Orbit Control #`orbitControl()` #Navigation #Interaction
Easily adding mouse/touch controls to navigate the 3D scene.
### Lighting #Illumination #Shading #Appearance
Adding lights to illuminate 3D objects.
#### Ambient Light #`ambientLight()` #BaseColor #NoDirection
Uniform light that illuminates all surfaces equally.
#### Directional Light #`directionalLight()` #Sunlight #ParallelRays
Light coming from a specific direction.
#### Point Light #`pointLight()` #Bulb #PositionalLight
Light emanating from a specific point in space.
#### Spot Light #`spotLight()` #Flashlight #ConeOfLight
A light source emitting in a specific direction within a cone.
### Materials & Textures #SurfaceProperties #Appearance3D
Controlling the appearance of 3D surfaces.
#### `ambientMaterial()` #DiffuseMaterial #SpecularMaterial #Shininess #ColorReflection
Defining how surfaces reflect different types of light.
#### `texture()` #ImageMapping #SurfaceWrapping
Applying 2D images (textures) to the surfaces of 3D shapes.
### Custom 3D Geometry #`beginShape()` #`vertex()` #`endShape()` #ComplexModels
Creating custom 3D shapes using vertices, similar to 2D custom polygons.
### Loading 3D Models #`loadModel()` #OBJ #STL #ExternalAssets
Importing 3D models created in other software.

## Object-Oriented Programming (OOP) in p5.js #Classes #Encapsulation #Organization #Scalability
Structuring code using objects and classes for better organization and reusability, especially in complex sketches.
### JavaScript Classes #`class` #`constructor` #Methods #Properties #ES6
Using modern JavaScript syntax for creating classes.
### Creating Objects #Instances #Instantiation #`new` Keyword
Making multiple instances of a class.
### Encapsulation #DataHiding #BundlingLogic
Grouping data (properties) and functions (methods) that operate on that data within an object.
### Inheritance #ExtendingClasses #CodeReuse #Hierarchy
Creating new classes based on existing ones.
### Polymorphism #MethodOverriding #Flexibility
Objects of different classes responding to the same method call in their own way.
### Examples #BouncingBalls #ParticleSystems #Agents
Common use cases for OOP in p5.js sketches.

## DOM Manipulation & Integration #WebPage #HTML #CSS #p5.dom
Interacting with the HTML page that hosts the p5.js sketch using the p5.dom library.
### p5.dom Library #Addon #HTMLInteraction
The library providing functions for DOM manipulation. Usually included separately or as part of the complete p5.js library.
### Creating HTML Elements #`createP()` #`createButton()` #`createSlider()` #`createInput()` #UI
Generating HTML elements like paragraphs, buttons, sliders, inputs directly from the sketch.
### Selecting Elements #`select()` #`selectAll()` #CSSSelectors
Accessing existing HTML elements on the page.
### Modifying Elements #`.html()` #`.value()` #`.position()` #`.style()` #DynamicContent
Changing the content, value, position, and style of HTML elements.
### Event Handling for DOM Elements #`.mousePressed()` #`.changed()` #`.input()` #UIInteraction
Attaching event listeners to DOM elements created or selected with p5.js.
### Positioning Elements #Parenting #RelativePositioning #CSS
Controlling where DOM elements appear relative to the canvas or other elements.

## Libraries & Extending p5.js #Ecosystem #Plugins #Capabilities
Using external libraries to add functionality beyond the core p5.js features.
### Official Libraries #p5.sound #p5.dom #CoreExtensions
Libraries maintained as part of the p5.js project.
### Community Libraries #Physics #MachineLearning #Networking #GUI #DiverseFunctionality
Exploring libraries created by the p5.js community (e.g., ml5.js, p5.play, RiTa, Matter.js wrappers).
### Finding Libraries #p5jsWebsite #GitHub #CommunityResources
Where to discover available libraries.
### Using Libraries #IncludeScript #ImportModule #Integration
How to add and use external libraries in a p5.js project.
### Creating Your Own Library #CodeSharing #Modularity #Contribution
Structuring reusable code as a p5.js library.

## Asynchronous Programming & Events #Callbacks #Promises #DataLoading #Timing
Handling operations that take time to complete, like loading files or waiting for user input.
### Callbacks #EventHandling #FunctionPassing #Sequence
Using functions that are executed once an operation finishes (e.g., `loadImage(path, callback)`).
### `preload()` Function #AssetLoading #Synchronization #SetupPhase
The primary mechanism in p5.js for handling asynchronous loading before `setup()` runs.
### JavaScript Promises & Async/Await #ModernJS #AsynchronousPatterns #Readability
Using newer JavaScript features for managing asynchronous operations, especially outside `preload()`.
### Custom Events #EventEmitters #Communication #Decoupling
Creating and listening for custom events within a sketch (less common in basic p5, more in complex apps).

## Development Workflow #Tools #Debugging #Optimization
Tools and techniques for writing, testing, and improving p5.js sketches.
### p5.js Editor Features #Autocomplete #ErrorConsole #Reference #Sharing
Leveraging the features of the online Web Editor.
### Browser Developer Tools #Console #Debugger #Inspector #PerformanceAnalysis
Using the built-in tools in web browsers (Chrome, Firefox) for debugging and inspection.
#### Console Logging #`console.log()` #DebuggingOutput #Tracing
Printing values and messages to the console.
#### Debugger #Breakpoints #StepThrough #CodeInspection
Pausing execution and inspecting variables.
#### Element Inspector #DOMTree #CSSStyles #LayoutDebugging
Examining the HTML structure and CSS styles.
### Debugging Techniques #VisualDebugging #IsolatingCode #Simplification
Strategies for finding and fixing errors.
### Performance Considerations #Optimization #FrameRate #Efficiency
Writing code that runs smoothly.
#### Reducing Calculations in `draw()` #CachingValues #Efficiency
Minimizing complex computations inside the main loop.
#### Efficient Drawing #ShapeMode #Batching #MinimizingStateChanges
Techniques for faster rendering.
#### Memory Management #ObjectCreation #GarbageCollection #Leaks
Being mindful of memory usage, especially with many objects or large data.
### Version Control #Git #GitHub #TrackingChanges #Collaboration
Using tools like Git for managing code history and collaborating.

## Community, Resources & Learning #Support #Examples #Education
Finding help, inspiration, and further learning materials.
### Official p5.js Website #Reference #Examples #Tutorials #Documentation
The primary source for official information.
### p5.js Reference #FunctionList #API #Documentation
Detailed documentation for all p5.js functions and variables.
### p5.js Forum #Questions #Answers #CommunitySupport
The official online forum for asking questions and sharing work.
### GitHub Repository #SourceCode #Issues #Contribution #Development
Accessing the source code, reporting bugs, and contributing.
### Examples & Tutorials #LearningMaterials #Inspiration #CodeSamples
Online examples, tutorials (Coding Train, p5.js tutorials page).
### Books & Courses #StructuredLearning #DeepDives
Published books and online courses dedicated to p5.js and creative coding.
### Social Media & Events #Showcase #Networking #Workshops #ProcessingCommunityDay
Platforms like Twitter, Mastodon, Instagram (#p5js, #creativecoding) and community events.

## Exporting & Sharing Projects #Deployment #Showcase #WebIntegration
Making p5.js sketches available to others.
### Sharing via p5.js Editor #Sketches #OnlineSharing #Embed
Using the share functionality of the online editor.
### Embedding in Webpages #iframe #Integration #Websites
Including p5.js sketches within other websites using iframes.
### Self-Hosting #WebServer #DeployingFiles #StaticSite
Hosting the sketch files (HTML, CSS, JS, assets) on your own web server.
### Exporting as Applications (Advanced) #Electron #NodeWebkit #DesktopApp
Packaging p5.js sketches as standalone desktop applications (requires more advanced techniques).
### Recording Output #SavingImages #SavingVideo #GIFs #Documentation
Techniques for saving static images (`saveCanvas()`, `saveFrames()`) or creating recordings of sketches.
