# ThreeJs #WebGL #3DGraphics #JavaScriptLibrary
A high-level JavaScript library used to create and display animated 3D computer graphics in a web browser, primarily leveraging WebGL.

## Core Concepts & Scene Graph #Fundamentals #Basics #Structure
The foundational building blocks and the hierarchical organization of elements within a ThreeJs application.

### Scene #Container #World
The top-level container holding all renderable objects, lights, and cameras. Represents the 3D world.
`const scene = new THREE.Scene();`

### Renderer #Drawing #Output
Responsible for taking the scene description and camera view and drawing the result onto a `<canvas>` element.
#### WebGLRenderer #WebGL #Performance
The primary renderer, utilizing the browser's WebGL API for hardware-accelerated graphics.
#### CSS3DRenderer / CSS2DRenderer #DOM #CSS
Renders scene objects as HTML DOM elements transformed using CSS3D or CSS2D properties. Useful for UI or labels.

### Camera #Viewpoint #Projection
Defines the virtual viewpoint into the scene, controlling what is visible and how it's projected onto the 2D screen.
#### PerspectiveCamera #Realism #Depth
Simulates human eye perspective with a field of view (FOV). Objects appear smaller further away.
#### OrthographicCamera #Parallel #2DStyle #Isometric
Renders objects without perspective distortion; parallel lines remain parallel. Used for 2D overlays, UI, or isometric views.

### Objects / Meshes #Entities #Visuals
Visible elements within the scene, most commonly Meshes which combine geometry (shape) and material (appearance).
#### Mesh #Geometry #Material
The standard object type for rendering shapes with surfaces.
#### InstancedMesh #Performance #Replication
Efficiently renders multiple identical geometries with different transformations (positions, rotations, scales).
#### SkinnedMesh #Animation #Bones
Used for characters or objects deformed by an underlying skeleton structure (bones).
#### Points #Particles #Sprites
Renders individual vertices as points or sprites.
#### Line / LineSegments / LineLoop #Vectors #Paths
Renders lines based on sequences of vertices.

### Scene Graph Hierarchy #Parenting #Transformations
The tree structure formed by adding objects as children of other objects (including the Scene itself). Child objects inherit transformations (position, rotation, scale) from their parents.
#### Object3D #BaseClass #Transformation
The base class for most objects in the scene graph, providing properties like `position`, `rotation`, `scale`, and methods like `add()`, `remove()`, `traverse()`.
#### Group #Container #Organization
An object specifically designed to group other objects without having its own geometry or material, simplifying transformations and organization.

## Geometries #Shapes #Vertices #Data
Defines the structure and shape of 3D objects using vertex data (positions, normals, UVs, etc.).

### Built-in Geometries #Primitives #Convenience
A collection of commonly used shapes provided by ThreeJs.
#### BoxGeometry #Cube
#### SphereGeometry #Ball
#### PlaneGeometry #FlatSurface
#### CylinderGeometry #Tube
#### ConeGeometry #Pointed
#### TorusGeometry #Donut
#### TorusKnotGeometry #ComplexShape
#### PolyhedronGeometries (Tetrahedron, Octahedron, Icosahedron, Dodecahedron) #PlatonicSolids
#### LatheGeometry #RotationShape (Revolving a 2D profile)
#### ExtrudeGeometry #ShapePath (Extruding a 2D shape along a path)
#### ShapeGeometry #2DShape3D (Creating a flat shape from a 2D path)
#### TubeGeometry #PathExtrusion (Creating a tube along a 3D path)
#### TextGeometry #3DText (Requires Font Loader)

### BufferGeometry #Performance #Custom #Attributes
The modern, efficient representation of geometry using typed arrays (Buffers) for attributes like position, normal, uv, color. This is the base for all built-in geometries.
#### Attributes (position, normal, uv, color, etc.) #VertexData #Layout
Named buffers holding per-vertex data. `position` is mandatory.
#### Indexing #Efficiency #VertexReuse
An optional buffer specifying the order in which vertices are connected to form faces (triangles), allowing vertex reuse and reducing data size.
#### Morph Attributes #Animation #ShapeKeys
Allows defining multiple states (morph targets) for vertex positions, enabling morph target animation.
#### Interleaved Buffers #MemoryLayout #Optimization
Storing multiple attributes within a single buffer, potentially improving cache efficiency.

### Custom Geometry Creation #Procedural #Manual
Defining geometries programmatically or by manually specifying vertex data.

## Materials #Appearance #Surfaces #Shading
Defines the visual properties of a geometry's surface, such as color, texture, shininess, and how it interacts with light.

### Basic Materials #Simple #NoLight
#### MeshBasicMaterial #Unlit #ColorTexture
Renders geometry with a solid color or texture, unaffected by scene lights.

### Light-Responsive Materials #Shading #Realism
Materials that react to lights in the scene according to different shading models.
#### MeshStandardMaterial #PBR #Realistic #MetalRough
Physically-Based Rendering (PBR) material using metalness and roughness properties. Industry standard for realism.
#### MeshPhysicalMaterial #AdvancedPBR #Clearcoat #Transmission #Sheen
An extension of `MeshStandardMaterial` adding more advanced physical properties like clearcoat, transmission (for glass-like effects), sheen, etc.
#### MeshLambertMaterial #Diffuse #Performance
A simple, computationally inexpensive material with diffuse reflection, good for matte surfaces.
#### MeshPhongMaterial #Specular #Shiny
Calculates specular highlights for shiny surfaces, more computationally expensive than Lambert.
#### MeshToonMaterial #CelShading #Cartoon
Creates a cartoon or cel-shaded look with distinct color steps.

### Specialized Materials #Effects #PointsLines
#### PointsMaterial #Particles #Sprites
Defines the appearance of objects rendered with `Points`. Allows sizing and coloring points, optionally using a texture (sprite).
#### LineBasicMaterial #SolidLine
Renders lines with a solid, uniform color.
#### LineDashedMaterial #DottedLine
Renders lines with a dashed pattern.
#### ShadowMaterial #ShadowCapture #Planes
A material that receives shadows but is otherwise transparent. Useful for ground planes.
#### ShaderMaterial #CustomShaders #GLSL
Allows using custom vertex and fragment shaders written in GLSL, providing access to ThreeJs uniforms and attributes.
#### RawShaderMaterial #BarebonesGLSL
Similar to `ShaderMaterial` but provides less automatic setup from ThreeJs (e.g., no built-in uniforms like `projectionMatrix`). More control, more setup required.
#### SpriteMaterial #Billboarding #2DImage
Used with `Sprite` objects. Sprites are planes that always face the camera.

### Material Properties #Configuration #Looks
Common properties shared by many materials.
#### color #BaseColor
#### map #Texture #DiffuseMap (Base color texture)
#### normalMap #SurfaceDetail #Bump (Simulates surface detail using lighting)
#### roughnessMap / metalnessMap #PBRMaps (Control PBR properties per texel)
#### aoMap (Ambient Occlusion Map) #ContactShadows #Detail
#### emissiveMap #Glow (Adds light emission)
#### alphaMap #TransparencyMask (Controls transparency per texel)
#### envMap #Reflections #Refractions (Uses a CubeTexture for environment mapping)
#### side (FrontSide, BackSide, DoubleSide) #RenderingFaces (Which faces of the geometry to render)
#### transparent / opacity #AlphaBlending #Visibility
#### blending #Transparency #Effects (How colors blend with background)
#### depthTest / depthWrite #Occlusion #Sorting (Interaction with the depth buffer)
#### wireframe #Debug #Style

## Textures #Images #Patterns #SurfaceDetail
Images or procedurally generated data applied to materials to add color, detail, or modify surface properties.

### Texture Loading #Assets #Images
Using Loaders to load texture data from files or other sources.
#### TextureLoader #ImageFiles (JPG, PNG, GIF, WebP)
Loads standard image files.
#### CubeTextureLoader #EnvironmentMaps #Skyboxes
Loads six images to form a cube texture, typically used for environment maps or skyboxes.
#### CompressedTextureLoader #Performance #KTX2 #Basis #DDS
Loads textures stored in GPU-optimized compressed formats (e.g., KTX2 with Basis Universal, DDS, PVR). Reduces download size and GPU memory usage.
#### DataTexture #Procedural #RawData
Creates a texture directly from raw data in a JavaScript array.
#### CanvasTexture #Dynamic #Drawing
Uses the content of an HTML `<canvas>` element as a texture, allowing dynamic updates.
#### VideoTexture #Animation #Media
Uses an HTML `<video>` element as a texture source, allowing animated textures.

### Texture Properties & Manipulation #UVMapping #Filtering #Wrapping
Configuring how textures are applied and sampled.
#### UV Mapping #Coordinates #Projection
The process of mapping 2D texture coordinates (UVs) onto the 3D geometry's surface. Usually defined within the geometry or model file.
#### wrapS / wrapT (RepeatWrapping, ClampToEdgeWrapping, MirroredRepeatWrapping) #Tiling #Edges
Controls how texture coordinates outside the [0, 1] range are handled (repeat, clamp, mirror).
#### minFilter / magFilter (NearestFilter, LinearFilter, Mipmaps) #Magnification #Minification #Quality
Controls how the texture is sampled when it appears larger or smaller than its original resolution on screen. Mipmapping improves quality and performance for minification.
#### anisotropy #FilteringQuality #AngleDependent
Improves texture quality when viewed at oblique angles (requires anisotropic filtering support from GPU).
#### encoding (sRGBEncoding, LinearEncoding) #ColorSpace #Gamma
Specifies the color space of the texture data (e.g., sRGB for standard images, Linear for data maps like normals/roughness). Important for correct lighting and color management.
#### repeat / offset / rotation / center #UVTransformations #Adjustments
Allows transforming UV coordinates directly for simple tiling, offsetting, or rotating effects.

## Lights #Illumination #Shadows #Realism
Objects that emit light, illuminating materials in the scene.

### Ambient Light #Global #Uniform
#### AmbientLight #BaseIllumination #NoDirection
Provides a constant, non-directional light across the entire scene. Helps soften shadows and illuminate unlit areas.
#### HemisphereLight #SkyGround #Gradient
Simulates outdoor ambient light with different colors coming from the sky and the ground.

### Directional Light #ParallelRays #Sunlight
#### DirectionalLight #InfiniteSource #Shadows
Emits parallel light rays from a specific direction, simulating distant sources like the sun. Can cast shadows.

### Point Light #Omnidirectional #Bulb
#### PointLight #LocalSource #Decay #Shadows
Emits light equally in all directions from a single point. Intensity typically diminishes with distance (decay). Can cast shadows (omnidirectional, computationally expensive).

### Spot Light #Cone #Flashlight
#### SpotLight #DirectionalCone #Angle #Penumbra #Shadows
Emits light from a point in a specific direction, constrained to a cone shape. Has properties like angle and penumbra (softness of the cone edge). Can cast shadows.

### RectArea Light #SurfaceLight #Realistic #PBR
#### RectAreaLight #Windows #SoftLight #NonShadowCasting (Typically)
Emits light uniformly from a rectangular area. Provides soft, realistic lighting, often used for simulating windows or panel lights. Note: Does not support shadows by default and works best with `MeshStandardMaterial` / `MeshPhysicalMaterial`.

### Light Properties #Configuration #Behavior
#### color #Hue #Saturation
#### intensity #Brightness
#### position / target #Placement #Direction (Target used by Directional/Spot lights)
#### distance / decay #Falloff #Range (For Point/Spot lights)
#### angle / penumbra #ConeShape #Softness (For Spot lights)
#### castShadow #Shadows #Performance

## Shadows #Realism #DepthCue #PerformanceCost
Simulating shadows cast by objects when illuminated by certain light types (Directional, Spot, Point).

### Enabling Shadows #Renderer #Lights #Objects
Requires enabling shadows on the renderer, the light source, and configuring which objects cast and receive shadows.
#### renderer.shadowMap.enabled = true #GlobalSwitch
#### light.castShadow = true #LightSource
#### mesh.castShadow = true #CasterObject
#### mesh.receiveShadow = true #ReceiverObject (e.g., ground plane)

### Shadow Map Types #Quality #Performance #Algorithm
Different algorithms for generating shadow maps, trading off quality, softness, and performance. Configured on the renderer (`renderer.shadowMap.type`).
#### BasicShadowMap #HardEdges #Fastest #Aliased
#### PCFShadowMap (Percentage-Closer Filtering) #SoftEdges #BaselineSoft
#### PCFSoftShadowMap #SmootherEdges #BetterQuality
#### VSMShadowMap (Variance Shadow Maps) #VerySoft #PotentialArtifacts (Light Bleeding)

### Shadow Camera Helper #Debugging #Visualization
#### CameraHelper( light.shadow.camera ) #ShadowFrustum
A helper to visualize the frustum used by the light to generate its shadow map. Essential for debugging shadow cutoffs.

### Shadow Properties #Tuning #Bias #Radius #MapSize
Fine-tuning shadow appearance and fixing artifacts. Set on `light.shadow`.
#### mapSize (width, height) #Resolution #Quality #Performance (Power of 2, e.g., 1024, 2048)
#### camera (near, far, fov/left/right/top/bottom) #FrustumBounds #Coverage
#### bias #AcneReduction #SelfShadowing (Small offset to prevent surfaces shadowing themselves)
#### normalBias #SlopeBasedAcne #CurvedSurfaces
#### radius #Softness (Controls filter radius for PCF/VSM, simulating softer shadows)

## Cameras #Viewpoint #Perspective #Projection
Defining the virtual lens through which the scene is viewed.

### Perspective Camera #Realism #FOV
#### PerspectiveCamera(fov, aspect, near, far) #Standard3D
Creates a view with perspective distortion, defined by Field of View (fov), Aspect Ratio (aspect), and Near/Far clipping planes.
    *   `fov`: Vertical field of view in degrees.
    *   `aspect`: Width / Height of the viewport.
    *   `near`, `far`: Distance range within which objects are rendered.

### Orthographic Camera #Parallel #2D #Isometric
#### OrthographicCamera(left, right, top, bottom, near, far) #NoPerspective
Creates a view without perspective distortion, defined by the boundaries of the viewing volume.
    *   `left`, `right`, `top`, `bottom`: Boundaries of the viewing frustum.

### Camera Controls #Navigation #Interaction #UX
Helper libraries to easily implement user-controlled camera movement. These are typically found in the `examples/jsm/controls/` directory.
#### OrbitControls #Rotation #Zoom #Pan (Mouse/Touch)
Rotates around a target point, zooms, and pans. Very common for model viewers.
#### TrackballControls #FreeRotation #Zoom #Pan (Mouse)
Allows tumbling the camera freely like a trackball.
#### FlyControls #FPSStyle #Movement (Keyboard/Mouse)
Allows moving forward/backward and steering like in a flight simulator or FPS game.
#### FirstPersonControls #LookAround #Movement (Keyboard/Mouse)
Similar to FlyControls but often constrained to a horizontal plane for looking.
#### PointerLockControls #MouseLook #FPS (Requires Pointer Lock API)
Locks the mouse cursor for immersive first-person view control, common in FPS games.
#### MapControls #Pan #Zoom #TopDown
Similar to OrbitControls but optimized for panning and zooming on a 2D plane (like a map).

### Camera Positioning & Targeting #ViewSetup #Orientation
Manually setting the camera's position and orientation.
#### camera.position.set(x, y, z) #Location
#### camera.lookAt(x, y, z | vector3) #TargetPoint (Orients the camera to look at a specific point)
#### camera.up.set(x, y, z) #Orientation (Defines the 'up' direction, usually (0, 1, 0))
#### camera.updateProjectionMatrix() #UpdateNeeded (Required after changing parameters like fov, aspect, near, far)

## Renderer #Output #Canvas #WebGL
Manages the process of drawing the scene to the screen (typically an HTML `<canvas>` element).

### WebGLRenderer #Core #GPU #Performance
The main renderer using the WebGL API for hardware acceleration.
#### Initialization (parameters: canvas, context, antialias, alpha, etc.) #Setup
Creating the renderer instance and associating it with a canvas.
#### setSize(width, height, updateStyle=true) #Resolution #Viewport
Sets the size of the drawing buffer and optionally updates the canvas CSS size. Crucial for matching canvas dimensions.
#### setPixelRatio(window.devicePixelRatio) #DeviceResolution #Sharpness #HiDPI
Adjusts rendering resolution for high-DPI (Retina) displays to avoid blurriness.
#### render(scene, camera) #DrawCall #FrameExecution
The core function called within the render loop to draw a single frame.
#### setClearColor(color, alpha) / setClearAlpha(alpha) #Background #Transparency
Sets the background color and alpha used when clearing the canvas before rendering.
#### outputEncoding #ColorSpace #GammaCorrection (e.g., `THREE.sRGBEncoding`)
Determines the output color space. `sRGBEncoding` is standard for display.
#### toneMapping #HDR #LDR #Appearance (e.g., `THREE.ACESFilmicToneMapping`)
Maps High Dynamic Range (HDR) scene lighting to the Low Dynamic Range (LDR) of typical displays. Affects the overall look and feel significantly.
#### physicallyCorrectLights (deprecated, use Physical materials instead) #LightingModel

### Render Loop #Animation #Frames #Timing
The continuous cycle that updates scene state (animations, interactions) and re-renders the scene for each frame.
#### requestAnimationFrame(callback) #BrowserAPI #Efficiency #VSync
The standard browser API for scheduling animations smoothly and efficiently, typically syncing with the display refresh rate.
#### Clock #TimeTracking #DeltaTime
A ThreeJs utility (`THREE.Clock`) to track elapsed time and the time delta between frames, crucial for frame-rate independent animations. `getElapsedTime()`, `getDelta()`.

## Animation #Movement #Dynamics #Time
Bringing scenes to life through changes in object properties over time.

### Animation Loop (using requestAnimationFrame) #Core #Timing
The fundamental structure for creating animation, ensuring updates happen before each screen repaint. (See Renderer section).

### Direct Property Manipulation #SimpleAnimation #Manual
Animating objects by directly changing their `position`, `rotation`, or `scale` properties within the render loop, often based on `Clock.getElapsedTime()` or `Clock.getDelta()`.

### Animation System (AnimationMixer) #Complex #Keyframes #Clips #Actions
ThreeJs's built-in system for handling complex, keyframe-based animations, especially those imported from 3D modeling software (e.g., via glTF).
#### AnimationClip #KeyframeData #Tracks
Contains the animation data, composed of multiple tracks targeting specific object properties.
#### KeyframeTrack #PropertyAnimation (e.g., VectorKeyframeTrack, QuaternionKeyframeTrack, NumberKeyframeTrack)
Defines how a specific property (like position, rotation quaternion, scale, morph target influence, material color) changes over time using keyframes (time/value pairs).
#### AnimationMixer #PlaybackControl #Blending
The central controller for animations on a specific object. Manages multiple `AnimationAction` instances. Requires updating in the render loop (`mixer.update(deltaTime)`).
#### AnimationAction #Play #Pause #Stop #Loop #Weight #TimeScale
Represents a single instance of an `AnimationClip` being played by a mixer. Provides controls like `play()`, `stop()`, `fadeIn()`, `fadeOut()`, `setLoop()`, `timeScale`. Allows blending multiple animations.

### Morph Target Animation #VertexAnimation #ShapeKeys
Animating geometry by interpolating between predefined vertex position states (morph targets). Controlled via `mesh.morphTargetInfluences`. Often managed via `AnimationMixer` with `NumberKeyframeTrack`.

### Skinned Mesh Animation #BoneAnimation #CharacterRigging #Skeletons
Animating meshes by deforming them based on an underlying skeleton (hierarchy of bones). The animation typically moves the bones, and the mesh vertices follow based on skinning weights.
#### Skeleton #BoneHierarchy #Joints
The hierarchy of `Bone` objects that drive the deformation.
#### SkinnedMesh #Binding #Weights #Indices
The mesh bound to the skeleton, with vertex attributes defining which bones influence each vertex and by how much. Often managed via `AnimationMixer`.

### Tweening Libraries (External) #Interpolation #Easing #Transitions
JavaScript libraries that simplify the creation of smooth transitions (tweens) between property values, often with various easing functions.
#### GSAP (GreenSock Animation Platform) #FeatureRich #Popular
#### Tween.js #Simple #Lightweight

## Interactivity #UserInput #Events #Controls
Responding to user actions like mouse movements, clicks, keyboard input, and touch events.

### Raycasting #Picking #Selection #Intersection
The process of projecting a ray (e.g., from the camera through the mouse cursor position) into the 3D scene to determine which objects it intersects.
#### Raycaster #OriginDirection #NearFar
The main class for performing raycasts. Requires an origin point and a direction vector.
#### setFromCamera(coords, camera) #MouseProjection
Helper method to set the raycaster's origin and direction based on normalized mouse coordinates (ranging from -1 to +1) and the camera.
#### intersectObjects(objects, recursive = false) #Detection #Targets #Results
Performs the intersection test against an array of objects and returns an array of intersection results (containing distance, point, face, object, etc.), sorted by distance.
#### Mouse Coordinates to Normalized Device Coordinates (NDC) #ProjectionConversion #EventHandling
Converting DOM mouse event coordinates (`event.clientX`, `event.clientY`) into the NDC space required by `setFromCamera`.

### Event Listeners #DOMEvents #BrowserAPI #Callbacks
Using standard JavaScript event listeners on the canvas or document to capture user input.
#### `element.addEventListener('click', ...)`
#### `element.addEventListener('mousemove', ...)`
#### `element.addEventListener('mousedown', ...)`
#### `element.addEventListener('mouseup', ...)`
#### `element.addEventListener('wheel', ...)`
#### `window.addEventListener('keydown', ...)`
#### `window.addEventListener('keyup', ...)`
#### `element.addEventListener('touchstart', ...)`
#### `element.addEventListener('touchmove', ...)`
#### `element.addEventListener('touchend', ...)`

### Camera Controls Libraries #Navigation #Prebuilt #UX
Using pre-built controls libraries simplifies implementing common camera navigation patterns (See Cameras section for OrbitControls, etc.).

### Drag and Drop #Manipulation #Objects #InteractionLogic
Implementing logic to select objects (using raycasting) and move them based on mouse or touch drag events, often involving projecting movements onto a plane.

## Loaders #Assets #Models #ExternalData #Import
Classes responsible for parsing external files (like 3D models, textures, fonts, audio) and converting them into ThreeJs objects. Loaders are typically found in `examples/jsm/loaders/`.

### Model Loaders #Formats #Importing #SceneStructure
Loaders for various 3D model file formats.
#### GLTFLoader #glTF #glb #Standard #Recommended #PBR #Animation
The preferred modern format. Loads `.gltf` (JSON + external files) or `.glb` (binary package). Supports PBR materials, animations, morph targets, skins. Often used with `DRACOLoader` for geometry compression.
#### OBJLoader #Simple #WidelySupported #MaterialsLimited (.mtl)
Loads `.obj` files (geometry) and optionally `.mtl` files (basic materials). Less feature-rich than glTF.
#### FBXLoader #Autodesk #Complex #Animation #Skins
Loads `.fbx` files, a common format from Autodesk software. Can be complex to configure correctly. Supports animation and skins.
#### ColladaLoader #DAE #XMLBased #Animation #Skins
Loads `.dae` files, an XML-based format. Supports animation and skins.
#### DRACOLoader #Compression #Geometry #Performance (Used *with* other loaders)
Decodes Draco-compressed geometry data. Often configured within `GLTFLoader` to load compressed glTF files significantly faster. Requires WASM decoder files.
#### FontLoader #TextGeometry #Fonts #JSONFonts
Loads fonts in a specific JSON format (generated by converters) for use with `TextGeometry`.

### Texture Loaders #Images #Maps (See Textures section for details)
#### TextureLoader, CubeTextureLoader, CompressedTextureLoader, etc.

### AudioLoader #Sound #PositionalAudio
Loads audio files for use with ThreeJs audio objects (`AudioListener`, `Audio`, `PositionalAudio`).

### Loading Manager #Progress #Callbacks #Coordination
#### LoadingManager(onLoad, onProgress, onError, onStart)
Manages multiple loading operations. Allows tracking overall progress and defining callbacks for when all managed loaders complete or encounter errors. Useful for creating loading screens.

### Async Loading Patterns #Promises #async_await #ModernJS
Most modern loaders support `.loadAsync()` methods returning Promises, integrating well with `async/await` syntax for cleaner asynchronous code.

## Shaders & GLSL #CustomRendering #GPUProgramming #Effects #Performance
Writing custom programs (shaders) that run directly on the GPU to control exactly how geometry is processed (vertex shader) and how pixels are colored (fragment shader). Allows for unique visual effects beyond standard materials.

### ShaderMaterial & RawShaderMaterial #Integration #CustomCode #Uniforms #Attributes
Materials designed to work with custom GLSL shader code.
#### `ShaderMaterial`: Provides many built-in ThreeJs uniforms (`projectionMatrix`, `modelViewMatrix`, etc.) and attributes (`position`, `normal`, `uv`) automatically.
#### `RawShaderMaterial`: A more barebones version where you must declare all uniforms and attributes manually. Offers more control, potentially avoiding overhead.
#### Uniforms: Variables passed from your JavaScript code (CPU) to the shaders (GPU), like colors, time, texture samplers, light positions.
#### Attributes: Per-vertex data passed from `BufferGeometry` to the vertex shader (e.g., `position`, `normal`, `uv`, custom attributes).
#### Varyings: Variables declared in the vertex shader and passed (after interpolation) to the fragment shader, transferring data like UV coordinates or calculated normals.

### GLSL (OpenGL Shading Language) #Syntax #Basics #GPUCode
The C-like language used to write shaders.
#### Vertex Shader (`vertexShader` property) #Position #VertexManipulation #Transformation
Runs once per vertex. Its primary job is to calculate the final clip-space position (`gl_Position`) of the vertex. It can also manipulate vertex attributes and pass data to the fragment shader via varyings.
#### Fragment Shader (`fragmentShader` property) #Color #PixelManipulation #Lighting #Texturing
Runs once per pixel (or fragment). Its primary job is to calculate the final color (`gl_FragColor` or custom output variable) of the pixel, often involving texture lookups, lighting calculations, and other effects based on interpolated varyings and uniforms.
#### Data Types (float, vec2, vec3, vec4, mat3, mat4, sampler2D, etc.) #Variables
#### Built-in Variables (gl_Position, gl_FragColor, gl_PointCoord, gl_VertexID, etc.) #StandardIO #GPUState
#### Built-in Functions (sin, cos, mix, clamp, step, smoothstep, texture2D, normalize, dot, cross, etc.) #Math #Texture #Helpers

### Common Shader Techniques #Examples #Effects #Patterns
#### Noise Functions (Perlin, Simplex, Worley) #ProceduralTextures #Displacement #OrganicMovement
#### Vertex Displacement #WavingFlag #WaterSurface
#### Custom Lighting Models #NonStandardShading #StylizedLooks
#### Fresnel Effect #EdgeHighlighting #RimLighting
#### Outlines #SobelFilter #EdgeDetection
#### Ray Marching #SDF #VolumetricEffects (Advanced)

## Post-Processing #FullscreenEffects #Filters #Enhancements #Passes
Applying image-based effects to the entire rendered scene *after* it has been rendered but *before* it's displayed on the screen. Uses a sequence of "passes".

### EffectComposer #Pipeline #Passes #RenderTarget
The main class for managing a chain of post-processing passes. Renders the scene to an offscreen buffer (render target) and then processes that buffer through the passes.
#### Initialization (`new EffectComposer(renderer)`)
#### addPass(pass) #ChainEffects
#### setSize(width, height) #ResolutionMatching
#### render() #ExecutePipeline (Called instead of `renderer.render` in the loop)

### Passes #IndividualEffects #OrderMatters
Individual effects applied sequentially. Common passes are found in `examples/jsm/postprocessing/`.
#### RenderPass #BasePass #Input #SceneCamera
The first pass, typically, which renders the actual ThreeJs scene into the composer's buffer.
#### ShaderPass #CustomEffect #GLSL #Uniforms
Applies a custom full-screen shader effect using `ShaderMaterial` logic. Needs a shader object defining the GLSL code and uniforms.
#### UnrealBloomPass #Glow #Bloom #Highlights
Creates a soft glow effect around bright areas of the scene. Highly configurable.
#### SSAOPass (Screen Space Ambient Occlusion) #ContactShadows #DepthEnhancement #Realism
Adds subtle shadowing in crevices and where objects meet, enhancing depth perception. Can be performance-intensive.
#### FilmPass #Grain #Scanlines #Nostalgia
Simulates old film effects like noise, scanlines, and grayscale.
#### GlitchPass #DigitalDistortion #ArtisticEffect
Creates various digital glitch artifacts.
#### DotScreenPass / HalftonePass #PrintEffect #Stylized
Simulates halftone or dot screen printing effects.
#### BokehPass #DepthOfField #Focus #Blur (Often requires depth texture)
Simulates camera depth-of-field, blurring parts of the scene based on distance from a focal point.
#### SMAAPass / FXAAPass #AntiAliasing #EdgeSmoothing
Screen-space anti-aliasing techniques applied as a post-processing step to smooth jagged edges. Can be cheaper than MSAA (Multi-Sample Anti-Aliasing from the renderer).
#### MaskPass / ClearMaskPass #EffectMasking #SelectiveApplication
Used to control where subsequent passes are applied using stencil buffers.

## Physics Integration #Realism #Collision #Dynamics #Simulation
Adding realistic physical behavior to objects in the scene, such as gravity, collisions, friction, and constraints. Requires a separate physics engine library.

### Physics Engines #Libraries #Choices #Backend
JavaScript or WebAssembly libraries that handle the physics calculations.
#### Cannon.js / Cannon-es #JavaScriptBased #Common #EasierSetup
A pure JavaScript physics engine. `cannon-es` is a maintained fork. Relatively easy to integrate.
#### Ammo.js #BulletPort #WASM #Performance #FeatureRich
A direct port of the robust Bullet physics engine (C++) to JavaScript/WASM using Emscripten. Generally more performant and feature-rich than Cannon, but potentially larger file size and slightly more complex API.
#### Rapier #RustWASM #Modern #Performance #ActivelyDeveloped
A newer physics engine written in Rust and compiled to WASM. Known for excellent performance and active development.

### Integration Steps #Synchronization #Concepts #Workflow
The general process of connecting ThreeJs visuals with a physics simulation.
#### 1. Initialize Physics World #SimulationSpace #Gravity #Settings
Set up the physics engine's world container, configure gravity, solver iterations, etc.
#### 2. Create Physics Bodies #Representation #Shapes #Mass #Material
For each ThreeJs object that needs physics, create a corresponding rigid body in the physics engine. Define its shape (Box, Sphere, Cylinder, Convex Hull, Trimesh), mass (0 for static objects), physical material (friction, restitution), position, and orientation.
#### 3. Link ThreeJs Meshes and Physics Bodies #MappingVisualsPhysics
Keep a reference associating the ThreeJs `Mesh` with its corresponding physics `Body`.
#### 4. Step the Physics World #SimulationUpdate #TimeStep
In the render loop, update the physics simulation by a fixed or variable time step (`world.step(deltaTime)`).
#### 5. Update ThreeJs Transforms from Physics #SynchronizationLoop #CopyData
After stepping the physics world, copy the updated position and quaternion from each physics body back to its corresponding ThreeJs mesh.
#### 6. Collision Detection & Response #Events #Callbacks #Gameplay
Physics engines provide ways to detect when bodies collide (e.g., via events) and allow defining custom responses or triggers for gameplay logic.
#### 7. Constraints #Joints #Restrictions #Connections (e.g., Hinge, Point-to-Point, Lock)
Define relationships between physics bodies, like hinges, sliders, or fixed connections.

## Optimization #Performance #Speed #Efficiency #FPS
Techniques and strategies to ensure ThreeJs applications run smoothly at a high frame rate (FPS) across different devices.

### Geometry Optimization #ReduceComplexity #DrawCalls #CPU #GPU
#### Merging Geometries (BufferGeometryUtils.mergeBufferGeometries / mergeVertices) #ReduceDrawCalls #StaticObjects
Combine multiple static geometries with the same material into a single `BufferGeometry`, reducing the number of draw calls (a major bottleneck).
#### Instancing (InstancedMesh / InstancedBufferGeometry) #MassReplication #DynamicObjects #ReduceDrawCalls
Render many copies of the same geometry with different transformations (and potentially colors/other attributes) in a single draw call. Ideal for things like foliage, crowds, particle systems.
#### Using BufferGeometry Directly #EfficientData #Memory
Avoid legacy `Geometry` class; use `BufferGeometry` for optimal performance.
#### Level of Detail (LOD) #DistanceBasedSimplification #PerformanceScaling
Automatically switch to lower-polygon versions of a mesh as it moves further from the camera.
#### Geometry Compression (Draco) #LoadingTime #FileSize (See Loaders section)

### Material & Texture Optimization #Memory #GPU #Bandwidth
#### Sharing Materials & Textures #ReuseAssets #MemorySaving
Reuse the same material or texture instance on multiple meshes whenever possible.
#### Texture Compression (KTX2, Basis Universal, DDS, Crunch) #SmallerFiles #GPUMemory #LoadingTime
Use GPU-native compressed texture formats. Reduces VRAM usage, speeds up loading, and improves performance. Requires specific loaders.
#### Texture Atlases #CombineImages #ReduceDrawCalls #MemoryLayout
Combine multiple smaller textures into a single larger texture sheet. Reduces the number of texture swaps and draw calls if meshes share the atlas.
#### Power-of-Two (POT) Textures #Mipmapping #Compatibility #Performance (Less critical now, but good practice)
Ensure texture dimensions are powers of two (e.g., 256, 512, 1024) for optimal mipmapping and compatibility/performance on some older hardware.
#### Mipmapping #MinificationQuality #Performance (Enabled by default for POT textures)
Generate pre-filtered lower-resolution versions of textures to improve rendering quality and performance when textures are viewed from far away.

### Rendering Optimization #ReduceWorkload #GPU #CPU
#### Frustum Culling #RenderOnlyVisible (Automatic)
ThreeJs automatically avoids rendering objects entirely outside the camera's view frustum.
#### Occlusion Culling #RenderOnlyNonObscured (Manual/Advanced/Engine-Specific)
Techniques (often complex to implement manually) to avoid rendering objects hidden behind other objects. Some engines/frameworks might offer solutions.
#### Reducing Draw Calls #Batching #Merging #Instancing #KeyBottleneck
Minimize the number of times the CPU needs to tell the GPU to draw something. This is often the most significant optimization target.
#### Shadow Optimization #PerformanceCost #Tuning (See Shadows section)
Shadows are expensive. Reduce `shadow.mapSize`, limit the number of shadow-casting lights, optimize the shadow camera frustum, and use simpler shadow map types (`BasicShadowMap`, `PCFShadowMap`).
#### Post-Processing Selectivity #CostlyEffects #Tradeoffs
Be mindful that some post-processing passes (like SSAO, complex blooms) can be very demanding. Use them judiciously or provide quality settings.
#### Conditional Rendering #VisibilityChecks #Logic
Manually set `object.visible = false` for objects that shouldn't be rendered based on game logic or distance, preventing them from even reaching the frustum culling stage.

### Code Optimization #JavaScript #CPU #MemoryManagement
#### Avoiding expensive calculations in the render loop #Caching #Precomputation
Perform heavy computations outside the main `requestAnimationFrame` loop whenever possible. Cache results if they don't change every frame.
#### Object Pooling #ReuseObjects #ReduceGC #MemoryChurn
Reuse frequently created/destroyed objects (like particles, projectiles, temporary vectors) instead of creating new ones each time. Reduces pressure on the garbage collector (GC).
#### Using Web Workers #OffloadComputation #Threading #Parallelism
Move computationally intensive tasks (e.g., physics simulation, pathfinding, complex geometry generation) off the main thread to prevent blocking rendering and user interaction. Requires careful data synchronization.

### Profiling & Debugging Tools #Analysis #Bottlenecks #IdentifyIssues
#### Browser DevTools (Performance Tab, Memory Tab) #JSProfiling #Timeline #HeapAnalysis
Profile JavaScript execution time, identify memory leaks, analyze rendering timelines.
#### Spector.js #WebGLDebugging #FrameAnalysis #GPUTrace
A browser extension/tool to capture and inspect individual WebGL calls within a frame. Essential for deep-diving into rendering issues.
#### stats.js #FPSCounter #PerformanceMonitor #RealtimeFeedback
A simple library to display FPS, memory usage, and frame time graphs overlaid on your application.
#### ThreeJs Editor Debugging Features #SceneInspection #PropertyEditing (If using the editor)

## Debugging & Tools #Troubleshooting #DevelopmentAids #Visualization
Utilities, helpers, and techniques specifically for diagnosing and fixing problems in ThreeJs applications.

### Helpers #Visualization #Guides #SceneUnderstanding
Visual aids provided by ThreeJs (usually in `examples/jsm/helpers/`) to make abstract concepts visible.
#### AxesHelper #CoordinateSystem #Orientation (Red=X, Green=Y, Blue=Z)
Displays three lines representing the X, Y, and Z axes.
#### GridHelper #GroundPlane #ScaleReference
Displays a 2D grid, often used as a ground plane reference.
#### CameraHelper #ViewFrustum #ClippingPlanes
Visualizes the viewing frustum (near/far planes, field of view) of a camera (Perspective or Orthographic).
#### DirectionalLightHelper / SpotLightHelper / PointLightHelper / HemisphereLightHelper #LightVisualization #Position #Direction #Range #Cone
Visualizes the position, direction, and range/shape of different light types. Essential for setting up lights correctly.
#### SkeletonHelper #BoneStructure #AnimationDebugging
Visualizes the bone hierarchy of a `SkinnedMesh`.
#### BoxHelper / BoundingBoxHelper #BoundingBox #Selection #CollisionDebugging
Displays an axis-aligned bounding box (AABB) around an object.

### Console Logging & Breakpoints #StandardDebugging #CodeFlow #VariableInspection
Using `console.log()`, `console.warn()`, `console.error()`, and browser debugger statements (`debugger;`) to inspect code execution and variable values.

### Browser Developer Tools #JSConsole #Network #Performance #Memory #Elements (See Optimization section)

### WebGL Debuggers #GPUTrace #StateInspection #ShaderDebugging
Tools that intercept and analyze the raw WebGL calls made by ThreeJs.
#### Spector.js (Browser Extension / Library)
#### RenderDoc (Advanced, Desktop Application, requires specific browser setup)

### stats.js #PerformanceMonitoring #FPS #Realtime (See Optimization section)

### Three.js Editor #SceneInspection #VisualDebugging #PropertyAdjustment
The official ThreeJs editor provides a graphical interface to load scenes/models, inspect the scene graph, adjust object properties, materials, lights, etc., in real-time. Great for experimentation and debugging visual issues.

## Ecosystem & Related Libraries #Extensions #Community #Tools #Frameworks
The broader landscape of libraries, frameworks, tools, and communities surrounding ThreeJs.

### React Three Fiber (R3F) #React #Declarative #ComponentBased #Hooks
A popular React renderer for ThreeJs. Allows building ThreeJs scenes declaratively using React components and hooks, managing the imperative ThreeJs logic behind the scenes. Simplifies state management and component reuse.

### Drei #R3FHelpers #Abstractions #Components
A large collection of useful helpers, abstractions, and ready-made components specifically for React Three Fiber (e.g., controls, loaders, shaders, performance monitors, shapes).

### A-Frame #WebXR #Declarative #ECS #VR #AR
A web framework for building VR and AR experiences using an HTML-like entity-component-system (ECS) structure. Often uses ThreeJs as its underlying rendering engine.

### Vanilla ThreeJs #Imperative #CoreLibrary #NoFramework
Using the ThreeJs library directly without frameworks like React Three Fiber or A-Frame. Requires manual setup of scene, renderer, render loop, etc.

### Tweening Libraries #Animation #Interpolation #Easing (See Animation section)
#### GSAP (GreenSock Animation Platform)
#### Tween.js

### Physics Engines #Simulation #Collision (See Physics section)
#### Cannon-es, Ammo.js, Rapier

### GUI Libraries #Controls #Parameters #DebuggingUI
Libraries for creating simple graphical user interfaces, often used during development to tweak parameters in real-time.
#### dat.GUI (Simple, Classic, Less Maintained)
#### lil-gui (Successor to dat.GUI, Recommended)
#### Tweakpane #Modern #FeatureRich

### 3D Modeling & Asset Creation Software #Workflow #ContentPipeline
Software used to create the 3D models, textures, and animations imported into ThreeJs.
#### Blender (Free, Open Source, Powerful)
#### Maya / 3ds Max (Autodesk, Commercial, Industry Standard)
#### Cinema 4D (Maxon, Commercial)
#### Substance Painter/Designer (Texturing)
#### ZBrush (Sculpting)

### Online Editors / Playgrounds #Experimentation #Sharing #Learning
Web-based platforms for writing and running ThreeJs code instantly.
#### Three.js Editor (Official)
#### CodePen
#### CodeSandbox
#### StackBlitz
#### Shadertoy (Focus on fragment shaders)

## Advanced Topics #Specialization #CuttingEdge #WebXR #GPGPU
Areas involving more complex techniques, newer browser features, or specialized applications.

### WebXR (VR / AR) #Immersive #FutureWeb #InteractionModels
Using the WebXR Device API through ThreeJs to create Virtual Reality (VR) and Augmented Reality (AR) experiences in the browser.
#### `renderer.xr` (.enabled, .setReferenceSpaceType, .getSession, etc.) #XRManager
#### VRButton / ARButton #SessionSetup #EntryPoints (From `examples/jsm/webxr/`)
#### Controllers / Input Handling (`renderer.xr.getController`, `select` events, etc.) #XRInputSources #Interaction
#### Immersive Rendering Loop #XRSession #FrameData #PoseTracking
#### Hit Testing (AR) #SurfaceDetection #Placement
#### Anchors (AR) #WorldTracking #Persistence

### Compute Shaders (WebGL 2 Compute) #GPGPU #AdvancedSimulation #ParallelProcessing
Leveraging the GPU for general-purpose parallel computation beyond just rendering graphics (e.g., complex particle systems, fluid dynamics, physics calculations). Requires a WebGL 2 Compute context (support still evolving).

### Multi-pass Rendering #Techniques #Effects #RenderTargets
Manually rendering the scene or parts of it multiple times to different render targets to achieve complex effects not possible in a single pass (e.g., custom outlines, deferred rendering G-buffers, advanced reflections).

### Global Illumination (Approximations) #AdvancedLighting #Realism #IndirectLight
Techniques to simulate indirect lighting (light bouncing off surfaces). Often involves pre-calculation (baking) or approximations.
#### Light Probes (`LightProbe`) #BakedGI #EnvironmentSampling
Samples baked or dynamic environment lighting at specific points in space.
#### Baked Lightmaps #OfflineRendering #StaticScenes
Pre-calculating lighting and shadows into textures applied to static geometry.
#### Screen Space Global Illumination (SSGI) #RealtimeApproximation #PostProcessing (Complex)

### Geometry Streaming & Progressive Loading #LargeWorlds #Performance #Scalability
Techniques for handling extremely large scenes or environments by dynamically loading and unloading geometry and textures based on camera proximity or visibility, often using spatial data structures like Octrees or Quadtrees.

### Custom Shader Chunks & Material Extensions #ShaderModification #ModularShaders
Modifying or extending ThreeJs's built-in shader functionality by injecting custom GLSL code into specific "chunks" of the standard shaders (`Material.onBeforeCompile`). Allows adding custom features to standard materials without rewriting entire shaders.

## Deployment & Build Process #Production #Workflow #Bundling #Hosting
Steps and tools involved in preparing and publishing a ThreeJs application for users.

### Module Bundlers #JavaScript #Optimization #DependencyManagement
Tools that bundle your JavaScript code (including ThreeJs and other libraries) into optimized files for the browser.
#### Vite #Fast #Modern #ESModules #DevServer
#### Webpack #Powerful #Configurable #Established
#### Rollup #LibraryFocused #ESM #TreeShaking
#### Parcel #ZeroConfig #Simple

### Code Splitting #Performance #Loading #OnDemand
Breaking down the bundled JavaScript into smaller chunks that can be loaded on demand, improving initial page load time. Bundlers often have features for automatic or manual code splitting.

### Asset Handling #Models #Textures #Bundling #Optimization #Paths
Strategies for managing static assets (3D models, textures, fonts, audio). Bundlers can help optimize images, hash filenames for caching, and manage paths. Draco/Basis compression is key here.

### Hosting #Servers #CDNs #Distribution
Making the application files accessible on the web.
#### Static Hosting Platforms (Netlify, Vercel, GitHub Pages, AWS S3/CloudFront) #Simple #Scalable
#### Node.js Server (if server-side logic is needed) #BackendIntegration
#### Content Delivery Networks (CDNs) #Performance #Caching #GlobalDistribution

### Cross-Browser Compatibility & Fallbacks #WebGLSupport #FeatureDetection
Ensuring the application works reasonably well across different browsers and devices. Checking for WebGL 1/2 support. Providing fallbacks or messages for unsupported browsers. Testing on target devices.

### Performance Budgeting #TargetFPS #DeviceTesting
Defining performance goals (e.g., target FPS on specific hardware) and continuously testing to ensure the application meets them.

### Security Considerations #AssetLoading #UserInput #XSS
Being mindful of potential security issues, especially when loading external assets or handling user input.

