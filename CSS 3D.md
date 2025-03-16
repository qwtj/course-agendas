# I. Introduction to 3D Transforms

## Understanding the Coordinate System

### Right-Hand Rule
*   Visualizing the x, y, and z axes using the right-hand rule.

### The Z-Axis
*   Understanding how the z-axis represents depth.
*   Positive z values move objects towards the viewer, and negative values move objects away.

## Basic 3D Transform Functions

### `translate3d()`
*   Syntax: `translate3d(tx, ty, tz)`
*   Moving elements along the x, y, and z axes.
*   Example: `transform: translate3d(100px, 50px, 25px);`

### `translateX()`, `translateY()`, `translateZ()`
*   Individual axis translation functions.
*   `transform: translateX(100px);`
*   `transform: translateY(50px);`
*   `transform: translateZ(25px);`

### `scale3d()`
*   Syntax: `scale3d(sx, sy, sz)`
*   Scaling elements along the x, y, and z axes.
*   Example: `transform: scale3d(2, 0.5, 1);`

### `scaleX()`, `scaleY()`, `scaleZ()`
*   Individual axis scaling functions.
*   `transform: scaleX(2);`
*   `transform: scaleY(0.5);`
*   `transform: scaleZ(1);`

### `rotateX()`, `rotateY()`, `rotateZ()`
*   Rotating elements around the x, y, and z axes.
*   Values are specified in degrees (`deg`).
*   Example: `transform: rotateX(45deg);`
*   Example: `transform: rotateY(60deg);`
*   Example: `transform: rotateZ(30deg);`

### `rotate3d()`
*   Syntax: `rotate3d(x, y, z, angle)`
*   Defining a rotation axis using a vector and an angle.
*   Example: `transform: rotate3d(1, 1, 0, 45deg);` (rotates around axis defined by vector <1,1,0>)

## Combining Transforms

### Order of Transforms
*   Understanding how the order of transforms affects the final result.
*   Apply transforms sequentially (e.g., translate then rotate).

### Example: Translation followed by Rotation

```css
.element {
  transform: translate3d(50px, 20px, 10px) rotateX(45deg);
}
```

# II. Perspective and Transform Style

## Understanding Perspective

### `perspective` Property
*   Setting the distance between the viewer and the z=0 plane.
*   Apply to the *parent* element of the transformed element.
*   Syntax: `perspective: value;` (e.g., `perspective: 500px;`)
*   Smaller values create a stronger perspective effect.

### Perspective Origin

*   `perspective-origin` Property
*   Setting the vanishing point of the perspective.
*   Syntax: `perspective-origin: x-position y-position;`
*   Example: `perspective-origin: 50% 50%;` (default value)
*   Example: `perspective-origin: 0% 0%;` (top-left corner)

## `transform-style` Property

### `transform-style: flat`
*   The default value; child elements are rendered in 2D.

### `transform-style: preserve-3d`
*   Enables 3D rendering of child elements within the transformed element.
*   Essential for creating 3D structures.

# III. Creating 3D Shapes

## Building a Cube

### HTML Structure
*   Creating six `div` elements representing the faces of the cube.

```html
<div class="cube">
  <div class="face front">Front</div>
  <div class="face back">Back</div>
  <div class="face right">Right</div>
  <div class="face left">Left</div>
  <div class="face top">Top</div>
  <div class="face bottom">Bottom</div>
</div>
```

### CSS Styling
*   Positioning the faces using `translate3d()` and `rotateX()`/`rotateY()`.
*   Applying `transform-style: preserve-3d` to the parent `.cube` element.
*   Setting a `perspective` value on the parent container.

```css
.container {
  perspective: 800px;
}

.cube {
  width: 200px;
  height: 200px;
  position: relative;
  transform-style: preserve-3d;
  transition: transform 1s;
}

.cube .face {
  position: absolute;
  width: 200px;
  height: 200px;
  background: rgba(0, 0, 255, 0.5);
  border: 1px solid black;
  font-size: 20px;
  text-align: center;
  line-height: 200px;
}

.cube .front { transform: translateZ(100px); }
.cube .back { transform: translateZ(-100px) rotateY(180deg); }
.cube .right { transform: translateX(100px) rotateY(90deg); }
.cube .left { transform: translateX(-100px) rotateY(-90deg); }
.cube .top { transform: translateY(-100px) rotateX(90deg); }
.cube .bottom { transform: translateY(100px) rotateX(-90deg); }
```

## Animating the Cube

### Hover Effects
*   Rotating the cube on hover using `transform: rotateX()` and `rotateY()`.

```css
.cube:hover {
  transform: rotateX(45deg) rotateY(45deg);
}
```

### Keyframe Animations
*   Creating continuous rotation animations using `@keyframes`.

```css
@keyframes rotateCube {
  0% { transform: rotateX(0deg) rotateY(0deg); }
  100% { transform: rotateX(360deg) rotateY(360deg); }
}

.cube {
  animation: rotateCube 5s linear infinite;
}
```

# IV. Advanced Techniques

## 3D Carousel

### Structuring the Carousel
*   Creating multiple elements positioned around a central axis.
*   Using `rotateY()` to position each element.

### Creating the Illusion of Depth

### Controlling the Carousel
*   Using JavaScript to control the rotation of the carousel.

## 3D Typography

### Extruding Text
*   Creating multiple layers of text and positioning them along the z-axis to simulate depth.

### Applying Lighting Effects
*   Using gradients and shadows to enhance the 3D effect of the text.

# V. Practical Projects

## 3D Card Flip Animation
*   Create a card that flips over to reveal content on the back.
*   Use `rotateY()` and `backface-visibility` to control the flip animation.

## 3D Gallery
*   Create a gallery where images are displayed in a 3D space.
*   Use `translate3d()`, `rotateX()`, and `rotateY()` to position the images.
