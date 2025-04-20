# Blender 3D #Software #OpenSource #3DCG
Blender is a free and open-source 3D creation suite covering the entire 3D pipeline.

## Introduction & Core Concepts #Basics #Overview #Fundamentals
Basic understanding of Blender's purpose, history, licensing, and fundamental 3D concepts relevant to its usage.
### What is Blender? #Definition #Scope
A comprehensive, free, and open-source 3D computer graphics software toolset used for creating animated films, visual effects, art, 3D-printed models, motion graphics, interactive 3D applications, virtual reality, and video games. [25, 6, 4]
### History & Development #Background #Foundation
Started by Ton Roosendaal, first released Jan 2, 1994. Developed by the Blender Foundation and a large community. [25, 22, 11]
### Licensing (GPL) #License #OpenSource
Licensed under the GNU General Public License (GPL) version 2 or later, ensuring it remains free and open-source forever. [11, 25]
### Target Users #Audience #Users
Suitable for individuals, small studios, hobbyists, professionals, artists, designers, game developers, VFX professionals, animators, architects. [4, 8, 11]
### Key Advantages #Benefits #Pros
Unified pipeline, free, open-source, cross-platform, customizable, active community, powerful features, responsive development. [4, 3, 8]
### Core 3D Concepts #Theory #Terminology
Understanding fundamental ideas applicable within Blender.
#### Coordinate Systems (Global vs Local) #Space #Transform
Global space defines object positions in the world (XYZ axes); Local space is relative to the object's own pivot point and orientation. [21]
#### Transformations (Location, Rotation, Scale) #Manipulation #Transform
Modifying an object's position, orientation, and size in 3D space. Applying transformations resets object data. [21, 28]
#### Meshes (Vertices, Edges, Faces) #Geometry #DataStructure
The fundamental components of 3D models: points (vertices), lines connecting vertices (edges), and surfaces enclosed by edges (faces). [21, 28]
#### Topology & Edge Flow #MeshQuality #ModelingTheory
Topology: The arrangement and connection of vertices, edges, and faces. Good topology aids deformation (animation), rendering, and editing. [21]
Edge Flow: The directional arrangement of edges, ideally following the object's contours for clean deformation and shading. [21]
#### Low Poly vs High Poly #ModelDetail #Optimization
Low Poly: Models with fewer polygons, optimized for real-time applications (games, VR) and faster workflow. [21]
High Poly: Models with many polygons, used for high detail (sculpting, realistic rendering) but more resource-intensive. [21]
#### Pivot Point / Origin #TransformCenter #Reference
The reference point around which transformations (scaling, rotation) occur for an object. [21, 12]

## Interface & Navigation #UI #UX #Workflow
Understanding and customizing Blender's user interface and navigating the 3D space.
### Main Window Layout #InterfaceLayout #Windows
Single main window, customizable through splitting and joining areas. [13]
### Editors #InterfaceComponents #Panels
Blender's interface is composed of various specialized editors (e.g., 3D Viewport, Outliner, Properties, Shader Editor). There are around 23 distinct editor types. [13, 23]
#### 3D Viewport #MainView #Navigation
The primary window for viewing and interacting with the 3D scene. [12, 28]
##### Navigation Controls (Orbit, Pan, Zoom) #ViewportNavigation #CameraControl
Techniques for moving the view within the 3D viewport (often using mouse buttons, scroll wheel, and keyboard modifiers). [28]
##### Viewport Gizmos #InterfaceWidgets #ManipulationHandles
On-screen controls for manipulating objects (move, rotate, scale arrows). [28]
##### Viewport Shading Modes #DisplayModes #Visualization
Different ways to display objects in the viewport (Wireframe, Solid, Material Preview, Rendered). [12, 12, 28]
##### 3D Cursor #ReferencePoint #PlacementTool
A versatile point in 3D space used for placing objects, setting pivot points, and more. [14, 12]
#### Outliner #SceneManagement #Hierarchy
Lists all data in the Blender file (objects, cameras, lights, collections, etc.) in a hierarchical tree. [12, 23]
#### Properties Editor #Settings #Parameters
Context-sensitive panel displaying settings for the active object, scene, render engine, modifiers, materials, etc. [12, 23]
#### Timeline #AnimationControl #Playback
Editor for controlling animation playback, managing keyframes, and setting frame ranges. [23]
### Workspaces #UITabs #WorkflowPresets
Predefined layouts of editors tailored for specific tasks (e.g., Modeling, Sculpting, Animation, Shading). Highly customizable. [13]
### Toolbar & Sidebar #Tools #Options
Toolbar (usually left): Contains active tool buttons. Sidebar (usually right, toggle with 'N'): Contains tool settings, view options, and addon panels. [14, 2, 13]
### Preferences #Configuration #Settings
Window for customizing Blender's behavior, theme, keymaps, add-ons, file paths, and system settings. [13]
### Navigation Gizmo #ViewportNavigation #Orientation
Interactive gizmo (usually top-right of viewport) for changing view orientation (Top, Front, Side, etc.) and toggling perspective/orthographic view. [28]

## Modeling #3DModeling #MeshEditing #AssetCreation
Creating and manipulating the 3D geometry of objects. [3, 6, 2]
### Object Mode vs Edit Mode #Modes #Workflow
Object Mode: Manipulate objects as whole units (move, rotate, scale). [12, 28]
Edit Mode: Manipulate the object's underlying geometry (vertices, edges, faces). [12, 28]
### Mesh Primitives #BasicShapes #StartingPoints
Basic geometric shapes (Cube, Sphere, Cylinder, Plane, Cone, Torus, etc.) used as starting points for modeling. [12, 25]
### Selection Tools #Selecting #Workflow
Various methods for selecting geometry components (vertices, edges, faces) in Edit Mode and objects in Object Mode. [14, 13]
### Transformation Tools #Manipulation #Editing
Tools for moving (Grab), rotating, and scaling geometry or objects, often constrained to axes. [28, 12]
### Basic Mesh Editing #MeshOperations #Fundamentals
Core operations like Extrude, Inset, Bevel, Loop Cut & Slide. [26]
#### Extrude #MeshOperation #AddingGeometry
Extends selected geometry (vertices, edges, faces) outwards or inwards. [26]
#### Inset Faces #MeshOperation #Detailing
Creates smaller faces within selected faces. [28]
#### Bevel #MeshOperation #EdgeSoftening
Chamfers or rounds edges and vertices. [1]
#### Loop Cut and Slide #MeshOperation #AddingDetail
Adds edge loops across faces and allows sliding them. [26]
### Modifiers #NonDestructive #ProceduralModeling
Stackable operations that alter geometry non-destructively, allowing changes without permanently altering the base mesh. [25, 16]
#### Generate Modifiers (e.g., Subdivision Surface, Mirror, Array, Boolean) #Modifiers #GeometryGeneration
Create or duplicate geometry (Subdivision smooths, Mirror duplicates across an axis, Array creates grids/lines, Boolean combines/subtracts shapes). [16]
#### Deform Modifiers (e.g., Simple Deform, Lattice, Curve) #Modifiers #ShapeManipulation
Change the shape of geometry (Bend, Taper, Stretch, deform along a curve, etc.).
#### Physics Modifiers (Covered under Simulation) #Modifiers #Simulation
Used for physics simulations like Cloth, Soft Body.
#### Modifier Stack #Modifiers #Workflow
Modifiers are applied sequentially; the order matters. [28]
### Proportional Editing #SoftSelection #OrganicModeling
Allows transformations to affect nearby geometry smoothly based on a falloff radius.
### Precision Modeling #Accuracy #Snapping
Tools and techniques for accurate modeling, including snapping, numeric input, and measurement tools.
### Topology Tools #MeshQuality #Retopology
Tools and techniques for creating clean, efficient mesh topology, including retopology workflows for high-poly sculpts. [21]
### Hard Surface Modeling #ModelingStyle #SciFi #Mechanical
Techniques focused on creating non-organic models with sharp edges and defined forms (vehicles, machines, props). [27]
### Organic Modeling #ModelingStyle #Characters #Creatures
Techniques focused on creating natural, curved forms (characters, creatures, plants). [15]

## Sculpting #DigitalSculpting #OrganicModeling #HighPoly
Artistic manipulation of mesh geometry similar to traditional clay sculpting. [3, 6, 2]
### Sculpt Mode #Modes #Workflow
Dedicated mode with specialized brushes and tools for sculpting. [1]
### Brushes #SculptingTools #Techniques
Various brushes for different effects (Draw, Clay Strips, Grab, Smooth, Crease, Flatten, Scrape, Pinch, Inflate, Blob, etc.). [9]
#### Brush Settings (Radius, Strength, Autosmooth) #SculptingParameters #Control
Parameters controlling brush size, intensity, and smoothing effects.
#### Brush Textures & Alphas #SculptingDetail #SurfaceDetail
Using textures to add surface detail or patterns while sculpting.
### Dynamic Topology (Dyntopo) #SculptingTechnique #AdaptiveMesh
Dynamically adds or removes mesh detail under the brush as needed, freeing the artist from polygon limitations. [2]
### Multiresolution Modifier #SculptingTechnique #LevelOfDetail
Allows sculpting at different subdivision levels non-destructively, preserving lower levels for animation or base mesh editing. [2]
### Masking #SculptingControl #Isolation
Temporarily protecting parts of the mesh from being affected by brushes. [9]
### Face Sets #SculptingOrganization #VisibilityControl
Assigning parts of the mesh to colored sets for easy hiding, showing, and masking.
### Voxel Remesher #SculptingUtility #TopologyUpdate
Rebuilds the mesh using a uniform voxel grid, useful for creating a clean base for sculpting or merging separate pieces. [1]
### Sculpt Vertex Colors #Painting #DataChannel
Painting color directly onto vertices in Sculpt Mode.
### Brush Asset System #BrushManagement #Organization
Storing and managing custom and preset brushes as assets for easy access across projects. [1, 9]

## UV Unwrapping & Editing #TexturingPrep #Mapping #Coordinates
Flattening the 3D model's surface into a 2D map (UV map) to control how textures are applied.
### UV Editing Workspace #InterfaceLayout #Workflow
Dedicated workspace combining the 3D Viewport and UV Editor.
### UV Editor #InterfaceComponents #2DView
The 2D editor where UV maps are viewed and manipulated. [23]
### Unwrapping Methods #UVTechniques #Projection
Different algorithms for creating UV maps (Smart UV Project, Unwrap, Lightmap Pack, Project from View, Cube/Cylinder/Sphere Projection).
#### Seams #UVControl #CuttingEdges
Marking edges on the 3D model where the UV map will be cut during unwrapping.
#### Pinning #UVControl #Manipulation
Fixing UV vertices in place during unwrapping or relaxation.
### UV Manipulation Tools #UVEditing #Layout
Tools within the UV Editor for moving, rotating, scaling, aligning, stitching, and relaxing UV islands.
### Texture Packing #UVLayout #Optimization
Arranging UV islands efficiently within the UV space to maximize texture resolution usage.
### UDIMs (U-Dimension) #UVTechnique #HighResolution
Using multiple UV tiles (grids) to allow for extremely high-resolution textures across a single model.
### Minimum Stretch Unwrapping #UVTechnique #DistortionReduction
A newer unwrapping method designed to minimize texture distortion by refining results iteratively. [9, 7]

## Texture Painting #Texturing #SurfaceDetail #Painting
Painting directly onto the 3D model's surface or onto its 2D UV map.
### Texture Paint Mode #Modes #Workflow
Dedicated mode for texture painting tools and workflows.
### Brushes & Tools #PaintingTools #Techniques
Various brushes (Draw, Soften, Smear, Clone, Fill) and tools for applying color and texture detail.
#### Brush Settings (Color, Radius, Strength, Texture) #PaintingParameters #Control
Controlling brush appearance and behavior.
#### Texture Masking #PaintingControl #Isolation
Using textures to control where paint is applied.
### Layers (Addon or Workflow based) #PaintingOrganization #NonDestructive
Managing paint strokes in layers for non-destructive editing (often facilitated by add-ons or specific workflows).
### Projection Painting (Stencil & 3D) #PaintingTechnique #ImageBased
Painting through images projected onto the model (Stencil) or painting directly in the 3D view.
### Vertex Painting #PaintingTechnique #DataChannel
Painting color information directly onto mesh vertices, often used for simple color, masks, or influencing shaders.

## Shading & Materials #Materials #SurfaceAppearance #LookDev
Defining how the surface of 3D models interacts with light. [15]
### Shading Workspace #InterfaceLayout #Workflow
Dedicated workspace primarily featuring the Shader Editor and 3D Viewport (Material Preview mode).
### Shader Editor #InterfaceComponents #NodeEditor
Node-based editor for creating and connecting material properties.
### Nodes #NodeBased #ModularSystem
Building blocks representing specific functions (e.g., texture input, color mixing, shader types) connected by noodles.
#### Input Nodes (Texture Coordinates, UV Map, Vertex Color, Geometry) #Nodes #DataInput
Nodes providing input data to the shader tree.
#### Texture Nodes (Image Texture, Noise, Voronoi, Musgrave, Gradient) #Nodes #Patterns #Images
Nodes generating or loading patterns and images. [9]
#### Shader Nodes (Principled BSDF, Diffuse, Glossy, Glass, Emission, Volume) #Nodes #SurfaceBehavior
Nodes defining the core light interaction behavior (how light reflects, refracts, emits, scatters). [4]
##### Principled BSDF #ShaderNode #PBR #UberShader
A versatile physically-based shader node combining multiple layers (diffuse, metallic, specular, transmission, subsurface scattering, etc.) into one easy-to-use interface. [4]
##### Metal BSDF #ShaderNode #Metals #PBR
A dedicated node for realistic metal rendering with advanced options like conductor fresnel. [9, 7]
#### Color Nodes (Mix Color, RGB Curves, Color Ramp, Hue Saturation Value) #Nodes #ColorManipulation
Nodes for manipulating color values. [14]
#### Vector Nodes (Mapping, Bump, Normal Map) #Nodes #CoordinateManipulation
Nodes for manipulating texture coordinates and surface normals. [14]
#### Converter Nodes (Math, ColorRamp, Shader to RGB) #Nodes #DataConversion
Nodes for converting data types or values.
#### Output Node (Material Output) #Nodes #FinalOutput
The final node where the shader network connects to define the material's surface, volume, and displacement.
### Material Properties #Settings #Parameters
Settings panel (in Properties Editor) for managing material slots and basic material settings.
### Physically Based Rendering (PBR) #ShadingConcept #Realism
Workflow aiming to simulate real-world material properties and light interaction accurately using parameters like Base Color, Metallic, Roughness, Specular. [6]
### Procedural Texturing #TexturingTechnique #NodeBased
Creating textures using mathematical functions (nodes) rather than image files, allowing infinite resolution and easy modification. [9]
### Material Library / Asset Browser #Organization #Reusability
Storing and reusing materials across different projects using Blender's Asset Browser.

## Lighting #Illumination #SceneSetup #Mood
Placing and configuring light sources to illuminate the 3D scene. [15]
### Light Object Types #LightSources #IlluminationTypes
Different types of lights available (Point, Sun, Spot, Area).
#### Point Light #LightType #Omnidirectional
Emits light equally in all directions from a single point.
#### Sun Light #LightType #Directional #ParallelRays
Simulates distant light source (like the sun) with parallel rays and constant intensity regardless of distance.
#### Spot Light #LightType #Cone #Directional
Emits light in a cone shape with adjustable angle and falloff.
#### Area Light #LightType #Surface #SoftShadows
Emits light from a surface (rectangle, disk, etc.), producing softer shadows.
### Light Settings #LightParameters #Control
Properties controlling light behavior (Color, Power/Strength, Size/Angle, Shadow properties).
### World Lighting (Environment Texture / HDRI) #GlobalIllumination #BackgroundLight
Using an image (often an HDRI) mapped to the scene background to provide ambient light and reflections from the environment.
### Three-Point Lighting #LightingTechnique #StandardSetup
Classic lighting setup using Key, Fill, and Rim lights for balanced illumination of a subject.
### Volumetrics #Atmosphere #Effects
Simulating light scattering through a volume (fog, mist, god rays) using Volume Scatter and Volume Absorption shaders. [9]
### Light Linking (Eevee/Cycles) #LightingControl #SelectiveIllumination
Ability to specify which lights affect which objects, and which objects cast shadows from specific lights (feature parity improving between Eevee and Cycles). [9, 7]

## Camera #Viewpoint #Framing #Composition
Setting up the virtual camera to define the viewpoint for rendering the final image or animation.
### Camera Object #SceneElement #ViewDefinition
The object representing the virtual camera in the scene.
### Camera Settings #CameraParameters #Control
Properties controlling the camera's view (Focal Length, Sensor Size, Depth of Field, Clipping).
#### Focal Length #CameraSetting #FieldOfView
Determines the field of view (wide-angle vs telephoto). [18]
#### Depth of Field (DoF) #CameraEffect #Focus
Simulating the effect where only objects within a certain distance range are in focus.
#### Clipping (Start/End) #CameraSetting #VisibilityRange
Defines the near and far distances beyond which objects are not rendered by the camera.
### Camera Navigation & Framing #Workflow #Composition
Positioning and rotating the camera to frame the shot effectively. Lock Camera to View option is useful.
### Camera Constraints #Animation #Automation
Using constraints (e.g., Track To) to make the camera automatically follow or point at objects.
### Camera Types #Projection #SpecializedCameras
Different camera projection types (Perspective, Orthographic, Panoramic). [18, 25]
#### Panoramic Camera Types #CameraType #360View
Specialized types like Equirectangular and Fisheye for 360° images/videos, and Central Cylindrical for specific architectural needs. [9, 4]

## Rendering #ImageGeneration #FinalOutput #Photorealism
Generating the final 2D image or animation sequence from the 3D scene based on camera, lighting, and materials. [3, 6, 2]
### Render Engines #RenderingTechnology #Options
Different systems within Blender for calculating the final image. [25]
#### Cycles #RenderEngine #PathTracing #Photorealistic
Physically-based path tracing engine for high realism, supporting CPU and GPU rendering. [11, 6, 25]
##### Cycles Settings (Samples, Denoising, Light Paths) #CyclesParameters #QualityControl
Parameters controlling render quality, speed, and noise reduction. [18]
##### GPU Rendering (CUDA, OptiX, HIP, Metal) #CyclesAcceleration #Hardware
Utilizing graphics cards (NVIDIA, AMD, Apple Silicon) to speed up Cycles rendering. [25]
##### Open Shading Language (OSL) #CyclesFeature #CustomShaders
Allows writing custom shader nodes for advanced effects. [25]
#### Eevee #RenderEngine #Realtime #Rasterization
Physically-based real-time render engine using rasterization techniques, suitable for fast previews and stylized rendering. [8, 25]
##### Eevee Settings (Samples, Ambient Occlusion, Bloom, SSR, Shadows) #EeveeParameters #QualityControl
Parameters controlling real-time effects and quality.
##### Eevee Next / Vulkan Backend #EeveeDevelopment #Performance
Ongoing development efforts including a Vulkan backend aimed at improving performance and capabilities (experimental). [9, 7, 10]
#### Workbench #RenderEngine #SolidView #TechnicalDrawing
Basic render engine primarily used for solid viewport rendering and technical visualizations. [25]
### Render Properties #Settings #OutputConfiguration
Panel in Properties Editor for setting render engine, output resolution, frame range, file format, quality settings, etc. [18]
### Render Output Settings #FileOutput #FormatOptions
Configuring resolution, aspect ratio, frame rate, output path, file format (PNG, JPG, EXR, MP4, etc.), color depth. [5]
### Render Passes / AOVs #CompositingPrep #DataLayers
Rendering out different aspects of the scene (e.g., Diffuse Color, Glossy Direct, Ambient Occlusion, Mist, Object ID) as separate images for compositing.
### Denoising #QualityImprovement #NoiseReduction
Techniques (built-in or nodes) to reduce noise artifacts common in path tracing. [18]
### Color Management (Filmic / AgX) #ColorScience #DynamicRange
Handling color spaces and transforms to manage high dynamic range and produce more photographic results. [18]
### Baking #TextureGeneration #Optimization
Transferring high-resolution details (normals, ambient occlusion, color) from a high-poly model or complex shader setup onto a texture map for use on a low-poly model. [14]

## Animation #Motion #Keyframing #Timing
Bringing objects, characters, and cameras to life over time. [3, 6, 2]
### Animation Workspace #InterfaceLayout #Workflow
Dedicated workspace with Timeline, Dope Sheet, Graph Editor.
### Keyframe Animation #AnimationTechnique #Fundamentals
Setting object properties (location, rotation, scale, material values) at specific frames (keyframes) and letting Blender interpolate the changes between them. [15]
#### Timeline #AnimationEditor #PlaybackControl
Editor for basic keyframe visualization, playback control, and setting start/end frames. [23]
#### Dope Sheet #AnimationEditor #KeyframeManagement
Editor showing keyframes for selected objects/properties as diamonds on a timeline grid, allowing manipulation of timing. [1]
#### Graph Editor (F-Curves) #AnimationEditor #CurveManipulation
Editor showing animation data as curves (F-Curves) over time, allowing fine control over interpolation and easing. [15]
##### Interpolation Modes #KeyframeBehavior #Easing
Controls how Blender calculates values between keyframes (Linear, Bezier, Constant, Bouncing, etc.).
### Rigging (Armatures) #CharacterSetup #DeformationControl
Creating a skeletal structure (armature) inside a mesh to control its deformation for animation. (Covered in detail in its own section). [15]
### Constraints #AnimationAutomation #Relationships
Rules applied to objects to limit or control their transformations based on other objects (e.g., Copy Location, Track To, Limit Rotation). [25]
### Drivers #AnimationAutomation #PropertyLinking
Using the value of one property (e.g., an object's location) to control another property (e.g., a shape key's value or a material color) often via Python expressions. [7]
### Shape Keys #MeshDeformation #Morphing
Storing variations of a mesh's shape ('Basis' plus 'Key 1', 'Key 2', etc.) and blending between them, used for facial expressions, corrective shapes, etc. [25, 14]
### Non-Linear Animation (NLA) Editor #AnimationOrganization #Reuse
Editor for arranging and blending pre-made animation sequences (Actions) like clips in video editing, allowing complex animation layering. [25]
### Motion Paths #AnimationVisualization #Trajectory
Visualizing the path an object or bone takes over the course of an animation directly in the 3D viewport. [9]
### Action Slots #AnimationWorkflow #DataSharing
System allowing multiple data-blocks (like objects or armatures) to share a single Action data-block for animation, simplifying workflows. [5]

## Rigging #CharacterSetup #SkeletalAnimation #Deformation
Creating control systems (rigs), typically using armatures (skeletons), to make complex objects like characters easier to animate. [3, 6, 4]
### Armature Object #RigComponent #Skeleton
The object type representing a skeleton, composed of bones. [25]
### Edit Mode (Armatures) #Modes #BoneEditing
Mode for creating, arranging, and parenting bones within an armature.
#### Bones #RigComponent #ControlElement
The individual elements of an armature, defining pivot points and relationships.
#### Bone Parenting & Relationships #RigHierarchy #ControlFlow
Connecting bones into hierarchical chains (e.g., upper arm > lower arm > hand) where parent bones influence child bones.
### Pose Mode #Modes #AnimationControl
Mode for posing and animating bones using keyframes, constraints, etc.
### Bone Constraints #RigAutomation #BehaviorControl
Constraints applied specifically to bones in Pose Mode to automate movement, limit rotation, point at targets, etc. (e.g., Inverse Kinematics, Copy Rotation, Track To, Limit Rotation). [25]
#### Inverse Kinematics (IK) #BoneConstraint #GoalBasedPosing
Constraint allowing manipulation of the end of a bone chain (e.g., hand) to automatically position the rest of the chain (e.g., arm). [25]
#### Forward Kinematics (FK) #BoneControl #RotationBasedPosing
Posing a bone chain by rotating each bone individually down the hierarchy.
### Skinning (Armature Deform) #MeshBinding #Deformation
Binding the mesh geometry to the armature so that moving the bones deforms the mesh.
#### Automatic Weights #SkinningTechnique #InitialBinding
Blender's attempt to automatically assign how much influence each bone has on nearby vertices.
#### Weight Painting #SkinningTechnique #FineTuning
Manually painting influence values (weights) onto the mesh vertices to refine deformation control for each bone. [26]
### Custom Bone Shapes #RigUI #VisualAid
Assigning custom mesh objects to visually represent bones in Pose Mode, making the rig controls more intuitive.
### Rigify Add-on #RigAutomation #PresetRigs
A powerful built-in add-on providing modular human, animal, and other rig presets that can be generated quickly.
### Drivers in Rigs #RigAutomation #AdvancedControl
Using drivers to link bone movements or custom properties to control other bones, shape keys, or complex behaviors.

## Physics & Simulation #Simulation #Dynamics #Effects
Simulating real-world physical phenomena like gravity, collisions, fluids, cloth, smoke, etc. [3, 6, 2]
### Physics Properties #Settings #SimulationSetup
Panel in Properties Editor for adding and configuring physics simulations.
### Rigid Body Physics #SimulationType #Collisions
Simulating solid, non-deforming objects interacting with gravity and collisions. [15]
#### Active vs Passive #RigidBodyState #Interaction
Active bodies are affected by simulation forces; Passive bodies affect active bodies but are not moved by the simulation themselves (e.g., ground plane).
#### Constraints (Rigid Body) #RigidBodyControl #Joints
Connecting rigid bodies with constraints like hinges, sliders, motors.
### Cloth Simulation #SimulationType #Fabric #Garments
Simulating the behavior of fabric, including draping, folding, collisions, and wind effects. [25, 15]
#### Pinning (Cloth) #ClothControl #Attachment
Defining vertices that are fixed in place or attached to other objects.
#### Collision Settings #SimulationInteraction #Accuracy
Defining how cloth (or other simulations) interacts with collision objects.
### Soft Body Physics #SimulationType #DeformableObjects
Simulating objects that deform upon collision or under forces, like jelly or rubber balls. [15]
### Fluid Simulation (Mantaflow) #SimulationType #Liquids #Gases
Simulating liquids (water, goo) and gases (smoke, fire). [2, 25]
#### Domains, Flows, Effectors #FluidComponents #Setup
Domain: The bounding box where the simulation takes place. Flow: Objects emitting fluid/smoke. Effectors: Objects interacting with the fluid (colliders).
#### Liquid Simulation #FluidType #Water
Simulating behavior like splashing, viscosity, surface tension.
#### Gas Simulation (Smoke & Fire) #FluidType #VolumeEffects
Simulating smoke plumes, explosions, fire, and their interaction with forces. [15]
### Particle Systems #SimulationType #Crowds #Hair #Effects
Emitting large numbers of particles from mesh surfaces or volumes. [6]
#### Emitter Particles #ParticleBehavior #Instances
Particles emitted over time, often used for effects like sparks, rain, or instancing objects (e.g., crowds, grass).
#### Hair Particles #ParticleBehavior #Strands #Fur
Particles rendered as strands, used for hair, fur, grass.
#### Particle Settings (Emission, Physics, Render, Children) #ParticleParameters #Control
Extensive settings controlling particle number, lifetime, velocity, physics type (Newtonian, Boids, Keyed), rendering appearance, and child particle generation.
### Dynamic Paint #SimulationType #SurfaceEffects #Interaction
Using objects as "brushes" to dynamically modify textures or vertex data on other objects ("canvases"), creating effects like footprints, ripples, paint splatters. [15]
### Force Fields #SimulationInfluence #ExternalForces
Objects emitting forces (Wind, Vortex, Magnetic, Turbulence, etc.) that influence particle systems, cloth, and soft body simulations. [15]
### Geometry Nodes Simulation (Simulation Zones) #ProceduralSimulation #NodeBased
Newer system allowing physics-like simulations to be built directly within Geometry Nodes using Simulation Input/Output nodes. [7]

## Compositing #PostProcessing #ImageManipulation #VFX
Combining and enhancing rendered images or footage using a node-based system. [3, 6, 2]
### Compositing Workspace #InterfaceLayout #Workflow
Dedicated workspace featuring the Compositor node editor.
### Compositor #InterfaceComponents #NodeEditor
Node-based editor for post-processing rendered images or image sequences. [23]
### Render Layers Node #CompositingInput #SceneData
Input node providing access to the rendered image and its associated passes (AOVs).
### Input Nodes (Image, Movie Clip, Mask) #CompositingInput #ExternalMedia
Nodes for bringing external images, videos, or masks into the compositor.
### Output Nodes (Composite, Viewer, File Output) #CompositingOutput #Results
Nodes determining the final composited output, displaying previews, or saving results to files.
#### Viewer Node #CompositingPreview #Feedback
Displays the output of any node connection in the backdrop of the Compositor or in the Image Editor.
### Color Correction Nodes (RGB Curves, Color Balance, Hue Correct) #CompositingTools #ColorGrading
Nodes for adjusting colors, brightness, contrast, saturation.
### Filter Nodes (Blur, Sharpen, Glare, Pixelate) #CompositingTools #Effects
Nodes for applying filters and effects. [10]
#### Glare Node #CompositingNode #BloomEffect
Creates bloom, streaks, and glow effects based on bright areas. [10]
### Matte Nodes (Keying, Masking, Set Alpha) #CompositingTools #Transparency #Isolation
Nodes for creating transparency, using masks, or keying out colors (e.g., green screen).
### Distort Nodes (Lens Distortion, Transform) #CompositingTools #GeometricAdjustments
Nodes for correcting lens distortion or transforming images.
### Layer Nodes (Alpha Over, Mix, Z Combine) #CompositingTools #CombiningImages
Nodes for layering and blending images together based on alpha channels or depth.
### Cryptomatte #CompositingUtility #MaskGeneration
Advanced system for automatically generating accurate mattes (masks) for objects or materials based on stored metadata, simplifying complex selections.
### Multi-pass Compositing (Eevee Support) #CompositingWorkflow #EeveeFeature
Using render passes (AOVs) from Eevee for more detailed post-processing workflows (support added/improved). [9, 7]

## Video Editing (Video Sequence Editor - VSE) #VideoEditing #NLE #PostProduction
Built-in non-linear video editor for basic and intermediate video editing tasks. [3, 6, 4]
### Video Editing Workspace #InterfaceLayout #Workflow
Dedicated workspace for the VSE.
### Video Sequence Editor (VSE) #InterfaceComponents #TimelineEditor
The main editor for arranging video, audio, and image strips on channels (tracks). [23]
### Channels / Tracks #VSEOrganization #Layering
Horizontal lanes where media strips are placed. Strips in higher channels overlay those in lower channels.
### Media Strips (Video, Audio, Image, Scene, Adjustment Layer) #VSEContent #ClipTypes
Different types of content that can be added to the VSE timeline.
### Editing Tools #VSEOperations #Manipulation
Tools for cutting (Blade tool), moving, trimming, and snapping strips.
### Transitions #VSEEffects #Cuts
Effects like Crossfade, Wipe applied between strips.
### Effect Strips #VSEEffects #Adjustments
Applying effects like Color Balance, Gaussian Blur, Masks, Transform directly to media strips or as separate effect strips.
### Adding Text & Titles #VSEContent #Graphics
Creating text overlays within the VSE.
### Audio Editing #VSESound #Mixing
Adjusting audio levels, adding fades, displaying waveforms.
### Proxies #VSEPerformance #Optimization
Generating lower-resolution versions of video files for smoother playback during editing, especially with high-resolution footage.
### Rendering from VSE #VSEOutput #Export
Exporting the final edited video sequence from the VSE.
### Recent Improvements (Codec Support, Color Space) #VSEDevelopment #Updates
Support for newer codecs like H.265/HEVC, improved color space handling (BT.709 default), support for 10/12-bit video. [5]

## Grease Pencil #2DAnimation #Storyboarding #2DIn3D
A unique Blender object type allowing drawing and animating in 2D within the 3D environment. [11]
### Grease Pencil Object #ObjectType #2DData
A distinct object type containing layers, frames, and strokes.
### Draw Mode #Modes #Workflow
Mode for creating Grease Pencil strokes using various brushes.
### Edit Mode (Grease Pencil) #Modes #StrokeEditing
Mode for editing individual stroke points, similar to vector editing.
### Sculpt Mode (Grease Pencil) #Modes #StrokeManipulation
Mode for sculpting and deforming strokes using specialized brushes.
### Brushes & Materials #GPDrawing #Appearance
Defining the look of strokes using brushes (pencil, ink, marker) and materials (solid color, gradient, texture).
### Layers & Frames #GPOrganization #AnimationStructure
Organizing strokes into layers (like image editing) and managing animation timing with keyframes on those layers. [9]
### Animation Tools #GPAnimation #Techniques
Keyframing stroke properties, using onion skinning, interpolating between frames.
### Modifiers (Grease Pencil) #GPNonDestructive #Effects
Applying modifiers specifically designed for Grease Pencil objects (e.g., Array, Build, Simplify, Tint, Noise).
### Effects (Grease Pencil) #GPVisualEffects #PostProcessing
Applying visual effects like Blur, Pixelate, Rim light directly to Grease Pencil objects or layers.
### Grease Pencil 3.0 Rewrite #GPDevelopment #Integration
Significant rewrite (introduced around Blender 4.2/4.3) focusing on performance improvements and better integration with the rest of Blender, notably Geometry Nodes. [1, 9]
### Geometry Nodes Integration #GPProcedural #NodeBased
Ability to create and manipulate Grease Pencil data using Geometry Nodes. [1, 7, 9]

## Scripting & Add-ons #Customization #Automation #Extensibility
Extending Blender's functionality using Python scripting and add-ons. [3]
### Python API (bpy) #ScriptingInterface #Development
Blender's Application Programming Interface, allowing access and control over Blender data and functions using the Python language. [3, 11]
### Text Editor #InterfaceComponents #ScriptingIDE
Built-in editor for writing and running Python scripts within Blender. [23]
### Python Console #InterfaceComponents #InteractiveScripting
Interactive console for executing Python commands line-by-line. [23]
### Add-ons #Plugins #Extensions
Scripts (often packaged) that add new tools, features, or interface elements to Blender. [11, 17]
#### Built-in Add-ons #BundledExtensions #CoreAdd
ons
Add-ons included with Blender that can be enabled via Preferences (e.g., Node Wrangler, Rigify, LoopTools, Import Images as Planes). [27]
#### Community Add-ons #ThirdParty #Marketplace
Vast number of add-ons created by the Blender community, available for free or purchase online (e.g., Blender Market, Gumroad). [19, 20, 29]
#### Installing Add-ons #Workflow #Setup
Process of downloading and enabling add-ons through Blender's Preferences.
### Scripting Use Cases #AutomationTasks #ToolDevelopment
Automating repetitive tasks, creating custom modeling tools, developing complex pipeline integrations, creating custom UI panels.

## Geometry Nodes #ProceduralModeling #NodeBased #NonDestructive
A node-based system for procedurally creating and manipulating geometry non-destructively. [25]
### Geometry Nodes Workspace #InterfaceLayout #Workflow
Dedicated workspace featuring the Geometry Node Editor.
### Geometry Node Editor #InterfaceComponents #NodeSystem
Node editor specifically for building geometry node trees.
### Modifier vs Tool #GNImplementation #Workflow
Geometry Nodes can be used as a Modifier on an object or as a Tool for direct mesh editing (new workflow).
### Node Categories #GNNodes #Functionality
Nodes grouped by function (Geometry, Mesh Primitives, Curve Primitives, Instances, Point Cloud, Volume, Attributes, Utilities, etc.). [14]
### Attributes #GNData #MeshProperties
Data associated with geometry elements (vertices, edges, faces, instances) like position, normal, UV map, custom values. Can be created, modified, and utilized within the node tree. [25]
#### Spreadsheet Editor #GNInterface #DataInspection
Editor for viewing geometry attributes and values. [23]
### Instancing #GNTechnique #Duplication
Efficiently creating many copies (instances) of objects or geometry collections, often distributed on points. [25]
### Point Cloud Manipulation #GNTechnique #AbstractData
Working with points in space as a fundamental data type.
### Volume Nodes #GNTechnique #VolumetricData
Nodes for creating and manipulating volumetric data.
### Curve Nodes #GNTechnique #SplineManipulation
Nodes specifically for creating and manipulating curve objects.
### Simulation Nodes (Simulation Zones) #GNPhysics #ProceduralDynamics
Nodes (Simulation Input/Output) allowing stateful calculations over time, enabling custom physics-like simulations directly within the node tree. [7]
### Tool Development with Geometry Nodes #GNCustomTools #OperatorCreation
Creating custom modeling or editing tools using Geometry Nodes that can be run directly in the 3D Viewport.
### Grease Pencil Integration #GPProcedural #2DManipulation
Nodes allowing Geometry Nodes to read, manipulate, and generate Grease Pencil data. [1, 7, 9]

## Asset Management & Pipeline Integration #Workflow #Organization #Collaboration
Managing project assets and integrating Blender into larger production pipelines. [3]
### Asset Browser #BlenderFeature #LibraryManagement
Blender's built-in system for creating, organizing, tagging, and reusing assets (objects, materials, node groups, poses, brushes, etc.) across different projects. [9]
#### Asset Libraries #AssetOrganization #Storage
Locations on disk where Blender assets are stored and managed.
#### Marking Assets #AssetWorkflow #SavingAssets
Designating data-blocks (like materials or objects) as Assets for use in the browser.
### File Linking & Appending #ProjectManagement #Referencing
Linking: Referencing data from external .blend files without duplicating it (changes in the source file update linked files).
Appending: Copying data from an external .blend file into the current file.
### Library Overrides #LinkedDataEditing #Collaboration
System for making local modifications to linked data-blocks (e.g., changing the material of a linked character) while still receiving updates from the source file. [11]
### File Formats (Import/Export) #Interoperability #DataExchange
Support for various industry-standard file formats for exchanging data with other software. [25]
#### Common Formats (FBX, OBJ, Alembic, glTF, USD) #FileFormats #Compatibility
FBX: Animation, models, rigging. OBJ: Models, materials (basic). Alembic (ABC): Animated/cached geometry. glTF: Web/real-time standard. USD (Universal Scene Description): Complex scene description, pipeline integration.
### Pipeline Tools Integration #ProductionWorkflow #CollaborationTools
Blender's Python API and support for standards facilitate integration with pipeline management tools (e.g., Kitsu, ShotGrid) and workflows. [3]
### Version Control (e.g., Git, SVN) #Collaboration #RevisionManagement
Using external version control systems to manage .blend files and project assets, although binary files like .blend can be challenging.

## Community & Resources #Learning #Support #Ecosystem
The ecosystem surrounding Blender, providing learning materials, support, and extensions.
### Official Website (blender.org) #Resources #InformationHub
Main source for downloads, news, documentation, development information. [11]
### Blender Manual #Documentation #UserGuide
Official comprehensive user guide covering Blender's features and usage. [4, 17]
### Blender Community Forums (e.g., Blender Artists) #Support #Discussion
Online forums where users ask questions, share work, and discuss Blender.
### Tutorials (YouTube, CG Cookie, Blender Guru, etc.) #Learning #Education
Vast amount of free and paid tutorials available online from various creators and platforms. [8, 15, 26, 28]
### Blender Development Fund #SupportBlender #Funding
Mechanism for users and companies to financially support Blender development. [9]
### Blender Studio #OpenMovies #TrainingAssets
Blender Foundation's own studio producing open movie projects, sharing assets and techniques. [11, 17]
### Blender Conference (BCON) #Event #Networking
Annual conference bringing together developers, artists, and users. [11]
### Blender Market / Gumroad / Other Platforms #Addons #Assets #Marketplace
Online marketplaces for purchasing community-created add-ons, assets, and training. [19]
### Social Media & Art Platforms (Twitter, ArtStation, Instagram) #Showcase #Networking
Platforms where artists share Blender creations and connect. [27]

## Advanced & Specialized Topics #CuttingEdge #NicheAreas #Future
Areas requiring deeper knowledge or specific applications.
### Virtual Reality (VR) #ImmersiveTech #Visualization
Using Blender tools for VR scene inspection and potentially VR modeling/sculpting workflows. [25]
### 3D Printing #Manufacturing #Prototyping
Preparing models for 3D printing, including mesh integrity checks (3D-Print Toolbox add-on), thickness analysis, and exporting to suitable formats (STL, OBJ). [8]
### Motion Tracking (VFX) #VisualEffects #CameraTracking #CompositingIntegration
Tracking camera movement or object movement in live-action footage to integrate 3D elements realistically. Includes camera solving and masking tools within the Movie Clip Editor. [3, 11, 23]
### Game Asset Creation #GameDev #Optimization #Workflow
Specific workflows for creating models, textures, and animations optimized for real-time game engines (e.g., Unity, Unreal Engine). Includes baking, LOD creation, and appropriate export settings. [3, 20]
### Architectural Visualization (ArchViz) #IndustryApplication #Rendering
Using Blender for creating realistic renders and animations of architectural designs. [4]
### Scientific Visualization (SciVis) #IndustryApplication #DataRepresentation
Using Blender to visualize scientific data, simulations, or concepts.
### Non-Photorealistic Rendering (NPR) #RenderingStyle #StylizedLook
Techniques and shaders (e.g., Toon BSDF, Shader to RGB node, Grease Pencil) for creating stylized, cartoonish, or illustrative renders.
### Artificial Intelligence (AI) in Blender #FutureTech #Integration
Emerging integrations or potential uses of AI for tasks like denoising, texture generation, or potentially assisted modeling/animation (less established within core Blender currently).
