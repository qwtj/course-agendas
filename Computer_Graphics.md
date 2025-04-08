# I. Introduction to Computer Graphics

## Understanding Computer Graphics Concepts

### Defining Computer Graphics

### Applications of Computer Graphics

### Graphics Pipeline Overview

## Introduction to Graphics Systems

### Display Technologies: Raster and Vector Displays

### Input Devices: Mouse, Keyboard, Touchscreen

### Graphics Cards (GPUs) and their architecture

# II. 2D Graphics

## Basic 2D Geometric Primitives

### Points, Lines, and Polygons

### Line Drawing Algorithms: DDA, Bresenham's

```
function bresenham(x0, y0, x1, y1) {
  let dx = Math.abs(x1 - x0);
  let dy = Math.abs(y1 - y0);
  let sx = (x0 < x1) ? 1 : -1;
  let sy = (y0 < y1) ? 1 : -1;
  let err = dx - dy;

  while(true){
    setPixel(x0, y0);

    if ((x0==x1) && (y0==y1)) break;
    let e2 = 2*err;
    if (e2 > -dy){ err -= dy; x0  += sx; }
    if (e2 < dx){ err += dx; y0  += sy; }
  }
}
```

### Circle Drawing Algorithms: Midpoint Circle Algorithm

## 2D Transformations

### Translation, Rotation, Scaling

### Homogeneous Coordinates

### Composite Transformations (Matrix Multiplication)

```
// Example: Translate then Rotate
let translationMatrix = [[1, 0, tx], [0, 1, ty], [0, 0, 1]];
let rotationMatrix = [[cos(theta), -sin(theta), 0], [sin(theta), cos(theta), 0], [0, 0, 1]];
let compositeMatrix = multiplyMatrices(rotationMatrix, translationMatrix);
```

## 2D Clipping

### Point Clipping

### Line Clipping: Cohen-Sutherland, Liang-Barsky

### Polygon Clipping: Sutherland-Hodgman

# III. 3D Graphics

## 3D Geometric Primitives

### Points, Lines, Triangles, Polygons

### Representing 3D Objects: Polygon Meshes

## 3D Transformations

### Translation, Rotation, Scaling in 3D

### 3D Rotations: Euler Angles, Quaternions

### Viewing Transformations: Modelview Matrix

## 3D Projections

### Parallel Projections: Orthographic, Oblique

### Perspective Projections: One-Point, Two-Point, Three-Point

## 3D Clipping

### View Frustum Clipping

### Homogeneous Clipping

# IV. Rendering

## Illumination Models

### Ambient, Diffuse, Specular Reflection

### Phong Shading, Gouraud Shading

```
// Phong Shading Example (Pseudo-code)
for each pixel {
  calculate normal vector N
  calculate vector to light source L
  calculate vector to viewer V
  calculate reflection vector R
  ambient = Ka * Ia;
  diffuse = Kd * L.dot(N) * Id;
  specular = Ks * R.dot(V)^shininess * Is;
  color = ambient + diffuse + specular;
  setPixelColor(pixel, color);
}
```

## Hidden Surface Removal

### Z-Buffer Algorithm

### Scan-Line Algorithm

## Texture Mapping

### Texture Coordinates

### Texture Filtering: Nearest Neighbor, Bilinear, Trilinear

### Texture Mapping Techniques: Environment Mapping, Bump Mapping

# V. Advanced Topics

## Ray Tracing

### Ray-Object Intersection

### Recursive Ray Tracing

### Acceleration Techniques: Bounding Volume Hierarchies (BVH)

## Global Illumination

### Path Tracing

### Radiosity

## Shaders

### Vertex Shaders

### Fragment Shaders

### GLSL (OpenGL Shading Language)

```glsl
// Simple Vertex Shader
#version 330 core
layout (location = 0) in vec3 aPos;
uniform mat4 modelview;
uniform mat4 projection;

void main() {
  gl_Position = projection * modelview * vec4(aPos, 1.0);
}
```

## Computer Graphics APIs

### OpenGL

### DirectX

### Vulkan
