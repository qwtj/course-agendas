# I. Introduction to Three.js

## Understanding the Three.js Library

### Core Concepts: Scenes, Cameras, and Renderers
*   Scene: The container for all objects.
*   Camera: Defines the viewpoint. PerspectiveCamera and OrthographicCamera.
*   Renderer: Renders the scene using WebGL. `WebGLRenderer`.

### Setting up a Basic Three.js Scene
*   Creating a scene: `const scene = new THREE.Scene();`
*   Creating a camera: `const camera = new THREE.PerspectiveCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000);`
*   Creating a renderer: `const renderer = new THREE.WebGLRenderer();`
*   Setting renderer size: `renderer.setSize(window.innerWidth, window.innerHeight);`
*   Adding the renderer to the DOM: `document.body.appendChild(renderer.domElement);`

## Geometries, Materials, and Meshes

### Understanding Geometries
*   Built-in geometries: `BoxGeometry`, `SphereGeometry`, `PlaneGeometry`, `CylinderGeometry`, etc.
*   Creating a BoxGeometry: `const geometry = new THREE.BoxGeometry(1, 1, 1);`
*   Custom geometries: Creating geometries from vertices and faces.

### Understanding Materials
*   Basic materials: `MeshBasicMaterial`, `MeshLambertMaterial`, `MeshPhongMaterial`.
*   Advanced materials: `MeshStandardMaterial`, `MeshPhysicalMaterial`.
*   Material properties: `color`, `emissive`, `roughness`, `metalness`, `map`.
*   Creating a MeshBasicMaterial: `const material = new THREE.MeshBasicMaterial({ color: 0x00ff00 });`

### Creating Meshes
*   Combining geometry and material to create a mesh.
*   Creating a mesh: `const cube = new THREE.Mesh(geometry, material);`
*   Adding a mesh to the scene: `scene.add(cube);`

# II. Transformations and Animation

## Working with Transformations

### Position, Rotation, and Scale
*   Manipulating object position: `object.position.x = 1; object.position.y = 2; object.position.z = 3;`
*   Manipulating object rotation: `object.rotation.x = Math.PI / 4; object.rotation.y = Math.PI / 2;`
*   Manipulating object scale: `object.scale.x = 2; object.scale.y = 0.5; object.scale.z = 1;`

### Understanding Euler Angles and Quaternions
*   Euler angles: Representing rotations with three angles. Potential for gimbal lock.
*   Quaternions: Representing rotations with four numbers. Avoids gimbal lock. `THREE.Quaternion`.

### Parent-Child Relationships
*   Creating hierarchical relationships between objects.
*   Adding a child object to a parent object: `parent.add(child);`
*   Transformations applied to the parent object affect the child object.

## Creating Animations

### The Animation Loop
*   Using `requestAnimationFrame` for smooth animations.
*   Basic animation loop structure:

```javascript
function animate() {
    requestAnimationFrame(animate);
    // Update object properties here
    cube.rotation.x += 0.01;
    renderer.render(scene, camera);
}
animate();
```

### Using Clock and Delta Time
*   Using `THREE.Clock` to track time.
*   Calculating delta time (time elapsed since the last frame).
*   Animating objects based on delta time for consistent speed regardless of frame rate.

### Animation Libraries (Tween.js)
*   Introduction to tweening libraries for creating more complex animations.
*   Basic tweening example using Tween.js.
```javascript
new TWEEN.Tween(cube.position)
    .to({x: 5}, 1000)
    .start();

function animate() {
    requestAnimationFrame(animate);
    TWEEN.update();
    renderer.render(scene, camera);
}
animate();

```

# III. Lighting and Shadows

## Understanding Lighting

### Types of Lights
*   Ambient light: `THREE.AmbientLight`. Simulates global illumination.
*   Directional light: `THREE.DirectionalLight`. Simulates sunlight.
*   Point light: `THREE.PointLight`. Emits light from a single point.
*   Spot light: `THREE.SpotLight`. Emits light from a single point in a cone shape.
*   Hemisphere light: `THREE.HemisphereLight`. Simulates outdoor lighting.

### Light Properties
*   Color: `light.color = new THREE.Color(0xffffff);`
*   Intensity: `light.intensity = 1;`
*   Distance: `light.distance = 100;` (for point and spot lights)
*   Angle and penumbra: `light.angle = Math.PI / 6; light.penumbra = 0.5;` (for spot lights)
*   Positioning lights for optimal effect.

## Implementing Shadows

### Enabling Shadows
*   Enabling shadows on the renderer: `renderer.shadowMap.enabled = true;`
*   Setting shadow type: `renderer.shadowMap.type = THREE.PCFSoftShadowMap;`
*   Setting `castShadow` and `receiveShadow` properties on objects.

### Shadow Casting and Receiving
*   Making a light cast shadows: `light.castShadow = true;`
*   Making an object cast shadows: `object.castShadow = true;`
*   Making an object receive shadows: `object.receiveShadow = true;`

### Shadow Map Properties
*   Adjusting shadow map size for better quality: `light.shadow.mapSize.width = 2048; light.shadow.mapSize.height = 2048;`
*   Adjusting shadow camera properties: `light.shadow.camera.near = 0.1; light.shadow.camera.far = 1000;`

# IV. Textures and Materials

## Applying Textures

### Loading Textures
*   Using `THREE.TextureLoader` to load images.
*   Loading a texture: `const texture = new THREE.TextureLoader().load('path/to/image.jpg');`

### Texture Mapping
*   Applying textures to materials: `material.map = texture;`
*   Texture properties: `wrapS`, `wrapT`, `repeat`, `offset`.

### Types of Textures
*   Color maps: Basic textures that define the color of the surface.
*   Normal maps: Simulate surface details by altering the surface normals.
*   Roughness maps: Define the roughness of the surface.
*   Metalness maps: Define the metalness of the surface.
*   Ambient occlusion maps: Simulate shadows in crevices.
*   Displacement maps:  Actually displace the vertices of the mesh.

## Advanced Material Properties

### Understanding Shaders
*   Introduction to GLSL shaders (vertex and fragment shaders).
*   Basic shader structure and syntax.
*   Uniforms and attributes.

### Custom Materials
*   Creating custom materials with shaders: `THREE.ShaderMaterial`.
*   Passing data from JavaScript to shaders using uniforms.
*   Modifying vertex and fragment shaders to achieve specific visual effects.

# V. Models and Advanced Techniques

## Loading 3D Models

### Using Loaders
*   `GLTFLoader`: For loading GLTF/GLB files.
*   `OBJLoader`: For loading OBJ files.
*   `FBXLoader`: For loading FBX files. (Requires extra setup)

### Model Optimization
*   Reducing polygon count.
*   Optimizing textures.
*   Using compression techniques.

### Handling Complex Models
*   Accessing individual meshes within a loaded model.
*   Applying materials and textures to different parts of the model.

## Advanced Techniques

### Raycasting

*   Using `THREE.Raycaster` to detect intersections between a ray and objects in the scene.
*   Creating a raycaster: `const raycaster = new THREE.Raycaster();`
*   Setting raycaster origin and direction: `raycaster.setFromCamera(mouse, camera);`
*   Getting intersections: `const intersects = raycaster.intersectObjects(scene.children);`

### Post-Processing

*   Introduction to post-processing effects.
*   Using `THREE.EffectComposer` to apply effects.
*   Common post-processing effects: Bloom, FXAA, Depth of Field.

### Physics Engines (Ammo.js, Cannon.js)

*   Introduction to physics engines.
*   Setting up a basic physics simulation.
*   Synchronizing Three.js objects with physics bodies.

# VI. Projects and Further Learning

## Small Projects

### Simple 3D Scene with User Interaction
*   Create an interactive scene with clickable or draggable objects.
*   Use raycasting to detect mouse clicks on objects.

### 3D Model Viewer
*   Load and display a 3D model with controls for rotation and zoom.
*   Implement lighting and shadows to enhance the model's appearance.

### Simple Game
*   Create a basic game using Three.js and a physics engine.
*   Implement player movement, collision detection, and simple game mechanics.

## Further Learning Resources

### Official Three.js Documentation
*   Explore the official Three.js documentation for detailed information on all classes and methods.

### Online Tutorials and Courses
*   Search for Three.js tutorials and courses on platforms like Udemy, Coursera, and YouTube.

### Three.js Community
*   Join the Three.js community on forums and social media to ask questions and share your work.

### Experimentation
*   Experiment with different features and techniques to expand your knowledge and skills.
