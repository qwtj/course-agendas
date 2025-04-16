# Computer Graphics #Overview #Technology #FieldOfStudy
The field concerned with digitally synthesizing and manipulating visual content. Covers the creation, storage, manipulation, and display of images and models of objects using computers.

## Fundamentals of Computer Graphics #Basics #Theory #Mathematics
Core concepts underpinning the field.

### Mathematical Foundations #LinearAlgebra #Geometry #Calculus
Essential mathematics used throughout computer graphics.
#### Vectors and Matrices #LinearAlgebra #Transformations
Representing points, directions, and operations like translation, rotation, scaling.
#### Coordinate Systems #Frames #Spaces
World space, object space, camera space, screen space.
#### Geometric Transformations #Translation #Rotation #Scaling #Shear
Modifying the position, orientation, or shape of objects.
#### Quaternions #Rotation #Interpolation
Alternative representation for 3D rotations, avoiding gimbal lock.
#### Curves and Surfaces #Parametric #Implicit #Geometry
Mathematical descriptions of shapes.
#### Differential Geometry #Curvature #Normals #Surfaces
Analyzing local properties of curves and surfaces.

### Physics of Light #Optics #Physics #Rendering
Understanding light behavior for realistic image synthesis.
#### Electromagnetic Spectrum #VisibleLight #Color
The nature of light.
#### Reflection and Refraction #Materials #Optics
How light interacts with surfaces (Snell's Law, Fresnel Equations).
#### Radiometry #LightMeasurement #EnergyTransport
Measuring light energy (Radiance, Irradiance, BRDF).

### Human Visual Perception #Vision #ColorScience #Perception
How humans perceive visual information, influencing rendering and display.
#### The Human Eye #Biology #Vision
Structure and function relevant to graphics.
#### Color Vision #Trichromacy #ColorModels
How we perceive color.
#### Spatial and Temporal Resolution #Flicker #Detail
Limits of human visual perception.
#### Depth Perception #Stereopsis #Cues
How we perceive 3D space.

## Geometry Representation and Modeling #Modeling #Shapes #Representation
Techniques for defining and creating 3D shapes and scenes.

### Polygonal Meshes #Triangles #Quads #Topology
Representing surfaces using connected polygons.
#### Data Structures #Vertices #Edges #Faces #HalfEdge
Efficient ways to store and query mesh information (e.g., Winged Edge, Half-Edge).
#### Mesh Processing #Simplification #Remeshing #Smoothing
Algorithms to modify and improve mesh quality.

### Parametric Curves and Surfaces #Splines #NURBS #CAD
Using mathematical functions to define smooth shapes.
#### Bézier Curves and Surfaces #ControlPoints #Interpolation
Polynomial curves defined by control points.
#### B-Splines #BasisFunctions #Knots
Piecewise polynomial curves offering local control.
#### NURBS (Non-Uniform Rational B-Splines) #CAD #IndustryStandard
Generalized B-Splines widely used in CAD and modeling.

### Implicit Surfaces #Metaballs #LevelSets #FunctionRepresentation
Surfaces defined as the zero set of a function (f(x,y,z) = 0).

### Subdivision Surfaces #Refinement #Smoothing #CatmullClark #Loop
Creating smooth surfaces by recursively refining a coarse control mesh.

### Procedural Modeling #Algorithms #Generation #Automation
Generating geometric models using algorithms, often incorporating randomness.
#### Fractals #SelfSimilarity #Iteration
Generating complex shapes through recursive processes.
#### L-Systems #Biology #Plants
Grammar-based systems for modeling growth patterns, especially plants.
#### Noise Functions #PerlinNoise #Terrain #Textures
Generating natural-looking randomness for textures and geometry.

### Solid Modeling #Volumes #CSG #BRep #CAD
Representing solid objects with volume.
#### Constructive Solid Geometry (CSG) #BooleanOperations #Primitives
Building complex solids by combining simple primitives (cubes, spheres, etc.) using Boolean operations (union, intersection, difference).
#### Boundary Representation (B-Rep) #Faces #Edges #Vertices #Topology
Representing solids by their boundary surfaces, edges, and vertices.

### Point-Based Representations #PointClouds #Scanning #Rendering
Representing geometry directly as a collection of points.

### Volumetric Representations #Voxels #MedicalImaging #Simulation
Representing objects or phenomena using a 3D grid of values (voxels).

## Rendering #ImageSynthesis #Shading #Lighting
The process of generating a 2D image from a 3D scene definition.

### Rendering Pipeline #Rasterization #RealTime #GPU
The sequence of steps typically used in real-time rendering (GPUs).
#### Vertex Processing #Transformations #Lighting
Operations performed on each vertex.
#### Clipping #ViewFrustum #Efficiency
Removing geometry outside the visible view volume.
#### Rasterization #ScanConversion #Pixels
Converting geometric primitives (triangles) into pixel fragments.
#### Fragment Processing #Shading #Texturing #DepthTest
Operations performed on each pixel fragment (potential pixel).
#### Framebuffer Operations #Blending #Output
Combining fragment results into the final image buffer.

### Ray Tracing #RayCasting #GlobalIllumination #Photorealism
Simulating light paths by tracing rays from the camera into the scene.
#### Ray Generation #CameraModels #Projections
Creating initial rays based on camera parameters.
#### Ray-Object Intersection #AccelerationStructures #BVH #KDTree
Finding the closest object intersected by a ray.
#### Recursive Ray Tracing #Reflection #Refraction
Tracing secondary rays for reflections and refractions.

### Illumination and Shading Models #Lighting #Materials #Appearance
Calculating the color of points on surfaces based on lighting and material properties.
#### Local Illumination #DirectLighting #Phong #BlinnPhong
Calculating light interaction considering only direct light sources.
#### Global Illumination #IndirectLighting #Realism
Simulating light bouncing around the scene (indirect illumination).
##### Radiosity #DiffuseInterreflection #FiniteElement
View-independent method focusing on diffuse light transport.
##### Path Tracing #MonteCarlo #StochasticSampling
Stochastic ray tracing technique simulating full light paths.
##### Photon Mapping #Caustics #TwoPass
Hybrid technique combining ray tracing and particle tracing (photons).
#### Shading Techniques #FlatShading #GouraudShading #PhongShading
Interpolation methods for applying illumination models across surfaces.
#### Physically Based Rendering (PBR) #Materials #Realism #Microfacets
Shading models aiming for physical accuracy based on material properties (roughness, metallic).
#### Bidirectional Reflectance Distribution Function (BRDF) #Materials #LightInteraction
Function describing how light reflects off a surface.

### Texturing #SurfaceDetail #Images #Mapping
Applying images or procedural patterns to surfaces to add detail.
#### Texture Mapping #UVCoordinates #Projection
Assigning texture coordinates to vertices to map textures onto surfaces.
#### Texture Types #ColorMap #NormalMap #BumpMap #SpecularMap #DisplacementMap
Different kinds of textures used for various surface properties.
#### Procedural Textures #Algorithms #Noise #Patterns
Generating textures algorithmically instead of using predefined images.
#### Mipmapping #Antialiasing #Performance
Using pre-filtered texture versions at different resolutions to improve quality and performance.

### Volume Rendering #MedicalImaging #ScientificVisualization #Voxels
Visualizing data defined on a 3D grid (volumetric data).
#### Transfer Functions #Mapping #Classification
Assigning optical properties (color, opacity) to voxel values.
#### Direct Volume Rendering #RayMarching #Splatting
Rendering volumes directly without creating intermediate geometry.

### Non-Photorealistic Rendering (NPR) #Stylized #Artistic #CelShading
Rendering styles that aim for artistic or illustrative looks rather than photorealism.

### Acceleration Structures #Optimization #Performance #RayTracing
Data structures used to speed up ray-object intersection tests (e.g., Bounding Volume Hierarchies (BVH), k-d trees, Grids).

## Animation #Motion #Simulation #Time
Techniques for creating the illusion of movement.

### Keyframe Animation #Interpolation #Timing #PrinciplesOfAnimation
Defining key poses or states at specific times and interpolating between them.
#### Principles of Animation #SquashAndStretch #Anticipation #Timing
Guidelines for creating appealing and believable motion (e.g., Disney's 12 principles).
#### Interpolation Methods #Linear #EaseInOut #Splines
Mathematical techniques for calculating in-between frames.

### Kinematics #MotionPlanning #Robotics #Characters
Describing motion without considering forces.
#### Forward Kinematics (FK) #Joints #Hierarchies
Calculating the position of end effectors based on joint angles in a hierarchical structure.
#### Inverse Kinematics (IK) #GoalOriented #Constraints
Calculating the required joint angles to reach a desired end effector position.

### Physics-Based Animation and Simulation #Dynamics #Realism #Forces
Simulating motion based on the laws of physics.
#### Rigid Body Dynamics #CollisionDetection #Response
Simulating non-deformable objects under forces like gravity, friction, collisions.
#### Soft Body Dynamics #Deformation #FiniteElementMethod
Simulating deformable objects (cloth, flesh).
#### Fluid Simulation #NavierStokes #SPH #LatticeBoltzmann
Simulating liquids and gases.
#### Particle Systems #Fire #Smoke #Explosions
Simulating large groups of small elements for effects like fire, smoke, water spray.

### Character Animation #Rigging #Skinning #Performance
Techniques specific to animating characters.
#### Rigging #Skeletons #Bones #Controls
Creating a hierarchical skeleton and control structure for a character model.
#### Skinning (Vertex Blending) #Deformation #Weights
Binding the character mesh to the skeleton so it deforms realistically with bone movement.
#### Facial Animation #BlendShapes #FACS
Techniques for animating character facial expressions.

### Motion Capture (MoCap) #DataDriven #Realism #PerformanceCapture
Recording the movement of real actors or objects and applying it to digital models.

### Procedural Animation #Algorithms #Behavior #Crowds
Generating animation algorithmically, often for complex systems like crowds or flocking behavior.

## Interaction #UserInput #UI #HCI
How users interact with graphics systems and applications.

### Input Devices #Mouse #Keyboard #Tablet #Controller #VRTrackers
Hardware used to provide input to the graphics system.

### Interaction Techniques #Selection #Manipulation #Navigation #Widgets
Methods for interacting with objects and navigating within a 3D scene.
#### 3D Object Selection and Manipulation #Pointing #Grabbing #Transforming
Techniques specific to interacting with objects in 3D space.
#### Camera Control and Navigation #Orbit #Pan #Zoom #FlyThrough
Methods for changing the viewpoint within the scene.

### Graphical User Interfaces (GUIs) #Widgets #Layout #EventHandling
Designing and implementing interfaces for graphics applications.

### Haptics #ForceFeedback #TactileFeedback
Providing force or tactile feedback to the user, often used in VR/AR and simulation.

## Graphics Hardware #GPU #Displays #Architecture
The physical components that enable computer graphics.

### Graphics Processing Unit (GPU) #ParallelProcessing #Pipeline #Shaders
Specialized hardware designed for parallel processing tasks in graphics rendering.
#### GPU Architecture #Cores #Memory #SIMD
Internal structure and components of a modern GPU.
#### Shader Programming #VertexShader #FragmentShader #ComputeShader
Writing small programs (shaders) that run on the GPU to control parts of the rendering pipeline or perform general computation (GPGPU).

### Display Technologies #Monitor #VRHeadset #Projector #RasterDisplays
Devices used to present the final image to the viewer (LCD, OLED, CRT principles).
#### Framebuffer #PixelStorage #ColorDepth #DoubleBuffering
Memory buffer holding the pixel data for display.

### Output Devices #Printers #Plotters #3DPrinters
Devices for producing physical copies of digital graphics or models.

## Software and APIs #Libraries #Engines #Tools
Software tools, libraries, and interfaces used in computer graphics development.

### Graphics APIs (Application Programming Interfaces) #OpenGL #DirectX #Vulkan #Metal #WebGL
Standardized interfaces for applications to communicate with graphics hardware drivers.
#### Pipeline States #Configuration #Control
How APIs manage the configuration of the graphics pipeline (e.g., blend state, depth test state).
#### Shader Languages #GLSL #HLSL #MSL
Languages used to write shaders for different APIs (OpenGL Shading Language, High-Level Shading Language, Metal Shading Language).

### Game Engines #Unity #UnrealEngine #Godot
Integrated development environments providing rendering, physics, scripting, and other tools for game creation.

### Modeling and Animation Software #Blender #Maya #3dsMax #Houdini #Cinema4D
Applications used by artists to create 3D models, scenes, and animations.

### Rendering Software #RenderMan #Arnold #V-Ray #Cycles
Standalone or integrated renderers focused on high-quality image synthesis, often for film and visualization.

### Scene Description Languages #Formats #Interchange #glTF #USD #FBX
Standardized file formats for storing and exchanging 3D scene data (geometry, materials, lighting, animation).

## Color Theory in Graphics #ColorModels #ColorSpaces #Gamut
Principles of color representation and management in digital systems.

### Color Models #RGB #CMYK #HSV #HSL #LAB
Different ways to represent colors numerically (e.g., Additive RGB for displays, Subtractive CMYK for print).

### Color Spaces #sRGB #AdobeRGB #Rec709 #Rec2020 #CIEXYZ
Standardized definitions of representable colors, including primaries, white point, and transfer function.

### Color Management #ICCProfiles #Calibration #Consistency
Ensuring consistent color appearance across different devices.

### Gamut #Range #Mapping
The range of colors that a particular device can produce or a color space can represent. Gamut mapping deals with converting colors between different gamuts.

### High Dynamic Range (HDR) Imaging #Luminance #ToneMapping
Representing and displaying a wider range of luminance levels than traditional standards. Tone mapping techniques compress HDR images for viewing on standard displays.

## Image Processing #Pixels #Filters #Analysis
Techniques for manipulating and analyzing digital images, often used in conjunction with graphics.

### Image Representation #Pixels #Resolution #BitDepth
How digital images are stored and structured.

### Point Operations #Brightness #Contrast #GammaCorrection
Modifying pixel values independently.

### Filtering #Convolution #Blurring #Sharpening #EdgeDetection
Applying operations based on pixel neighborhoods (e.g., Gaussian blur, Sobel edge detection).

### Geometric Transformations #Scaling #Rotation #Warping
Changing the spatial arrangement of pixels.

### Image Compression #Lossy #Lossless #JPEG #PNG #Codecs
Reducing the storage size of images.

### Image Analysis and Computer Vision #FeatureDetection #Segmentation #Recognition
Extracting meaningful information from images (often considered a separate but related field).

## Applications of Computer Graphics #UseCases #Industries #Impact
Where computer graphics techniques are employed.

### Entertainment #Film #VFX #VideoGames #AnimationMovies
Visual effects, animated films, real-time graphics in games.

### Design and Engineering #CAD #CAM #CAE #Architecture
Computer-Aided Design, Manufacturing, Engineering, architectural visualization.

### Scientific and Medical Visualization #DataAnalysis #Imaging #SimulationResults
Visualizing complex data from simulations, experiments, or medical scanners (MRI, CT).

### Simulation and Training #FlightSimulators #MedicalTraining #VirtualPrototyping
Creating virtual environments for training and simulation purposes.

### Art and Design #DigitalArt #Illustration #Typography
Using computer graphics tools for artistic creation and graphic design.

### Data Visualization #InformationGraphics #Charts #Graphs
Representing abstract data visually to aid understanding.

### Virtual Reality (VR) and Augmented Reality (AR) #Immersive #Interactive #MixedReality
Creating immersive experiences or overlaying digital information onto the real world.

## Advanced Topics and Research Areas #Frontiers #Future #Specialization
Current areas of active research and development.

### Real-Time Rendering #Optimization #Performance #Games
Techniques for rendering complex scenes at interactive frame rates.

### Advanced Global Illumination #PathGuiding #ReSTIR #ManyLightSampling
More sophisticated algorithms for realistic lighting simulation.

### Machine Learning in Graphics #NeuralRendering #StyleTransfer #Denoising #GenerativeModels
Applying AI and ML techniques to graphics problems (e.g., NeRFs, GANs for image generation).

### Computational Photography #ImageManipulation #HDR #LightFields
Using computation to overcome limitations of traditional cameras or create novel imagery.

### Physics Simulation Enhancements #PositionBasedDynamics #MaterialPointMethod #FEM
Advanced techniques for more stable, efficient, or realistic physical simulations.

### Differentiable Rendering #Optimization #InverseProblems #ML
Rendering processes where gradients can be computed, enabling optimization and integration with machine learning.

### Digital Humans #Avatars #Realism #Capture
Research into creating highly realistic digital representations of humans.
