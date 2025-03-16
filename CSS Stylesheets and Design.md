# I. Introduction to CSS

## Understanding CSS Fundamentals

### What is CSS?
   *  Definition and purpose: separating content from presentation.
   *  CSS syntax: selectors, properties, and values. Example: `p { color: blue; }`
   *  CSS comments: `/* This is a CSS comment */`

## Applying CSS: Inline, Internal, and External Stylesheets

### Inline Styles
   * Applying styles directly to HTML elements using the `style` attribute.
   * Example: `<p style="color: red;">This is a red paragraph.</p>`
   * Advantages and disadvantages.

### Internal Stylesheets
   * Embedding CSS within the `<style>` tag in the `<head>` section of an HTML document.
   * Example:
     ```html
     <head>
       <style>
         p { color: green; }
       </style>
     </head>
     ```
   * Advantages and disadvantages.

### External Stylesheets
   * Linking to external `.css` files using the `<link>` tag.
   * Example: `<link rel="stylesheet" href="styles.css">`
   * Advantages and disadvantages; best practices for maintainability.

# II. CSS Selectors

## Basic CSS Selectors

### Element Selectors
   * Selecting HTML elements by their tag name.
   * Example: `h1 { font-size: 2em; }`

### ID Selectors
   * Selecting a specific element by its unique `id` attribute.
   * Example: `#my-paragraph { font-weight: bold; }`

### Class Selectors
   * Selecting elements that share a common `class` attribute.
   * Example: `.highlight { background-color: yellow; }`

### Universal Selector
   * Selecting all elements on the page.
   * Example: `* { margin: 0; padding: 0; }`

## Combinator Selectors

### Descendant Combinator
   * Selecting elements that are descendants of another element.
   * Example: `div p { font-style: italic; }` (selects all `<p>` elements inside `<div>` elements)

### Child Combinator
   * Selecting elements that are direct children of another element.
   * Example: `ul > li { list-style-type: none; }` (selects all `<li>` elements that are direct children of `<ul>` elements)

### Adjacent Sibling Combinator
   * Selecting an element that is immediately preceded by another element.
   * Example: `h2 + p { margin-top: 0; }` (selects the `<p>` element immediately following an `<h2>` element)

### General Sibling Combinator
   * Selecting elements that are siblings of another element (not necessarily immediately adjacent).
   * Example: `h2 ~ p { color: gray; }` (selects all `<p>` elements that are siblings of an `<h2>` element)

## Pseudo-classes and Pseudo-elements

### Pseudo-classes
   * Selecting elements based on their state or position.
   * Examples: `:hover`, `:active`, `:visited`, `:first-child`, `:last-child`, `:nth-child(n)`
   * Example: `a:hover { color: red; }`

### Pseudo-elements
   * Styling specific parts of an element.
   * Examples: `::before`, `::after`, `::first-line`, `::first-letter`
   * Example: `p::first-letter { font-size: 1.5em; }`

# III. CSS Box Model

## Understanding the Box Model

### Content
   * The actual content of the element (text, images, etc.).

### Padding
   * Space between the content and the border.
   * CSS properties: `padding-top`, `padding-right`, `padding-bottom`, `padding-left`, `padding` (shorthand).

### Border
   * The border surrounding the padding and content.
   * CSS properties: `border-width`, `border-style`, `border-color`, `border` (shorthand).

### Margin
   * Space outside the border, separating the element from other elements.
   * CSS properties: `margin-top`, `margin-right`, `margin-bottom`, `margin-left`, `margin` (shorthand).

## Box Sizing

### `content-box`
    * The default box sizing; width and height apply only to the content area. Padding and border are added to the final size.

### `border-box`
    * Width and height apply to the entire box, including padding and border.
    * Using `box-sizing: border-box` for easier layout management. Apply `* { box-sizing: border-box; }` as a common reset.

## Margin Collapsing

### Understanding margin collapsing
   * Vertical margins of adjacent block-level elements can collapse into a single margin.
   * Rules and behavior of margin collapsing.
   * How to prevent margin collapsing.

# IV. CSS Typography and Text Styling

## Font Properties

### `font-family`
   * Specifying the font family to use.
   * Example: `font-family: "Arial", sans-serif;`
   * Font stacks and fallback fonts.

### `font-size`
   * Setting the size of the font.
   * Units: `px`, `em`, `rem`, `%`.
   * Example: `font-size: 16px;`

### `font-weight`
   * Setting the weight (boldness) of the font.
   * Values: `normal`, `bold`, `lighter`, `bolder`, `100` - `900`.
   * Example: `font-weight: bold;`

### `font-style`
   * Setting the style of the font.
   * Values: `normal`, `italic`, `oblique`.
   * Example: `font-style: italic;`

### `line-height`
   * Setting the line height of the text.
   * Values: `normal`, `<number>`, `<length>`, `<percentage>`.
   * Example: `line-height: 1.5;`

### `text-align`
   * Aligning text within an element.
   * Values: `left`, `right`, `center`, `justify`.
   * Example: `text-align: center;`

### `color`
   * Setting the color of the text.
   * Values: Named colors, hex codes, `rgb()`, `rgba()`, `hsl()`, `hsla()`.
   * Example: `color: #333;`

### `text-decoration`
   * Adding decorations to text (underline, overline, line-through).
   * Values: `none`, `underline`, `overline`, `line-through`.
   * Example: `text-decoration: none;` (removing underlines from links)

### `letter-spacing` and `word-spacing`
   * Adjusting the spacing between letters and words.
   * Values: `<length>`.
   * Example: `letter-spacing: 1px;`

# V. CSS Layout

## Display Property

### `block`
   * Elements take up the full width available and start on a new line.
   * Examples: `<div>`, `<p>`, `<h1>`-`<h6>`

### `inline`
   * Elements only take up as much width as necessary and flow within the content.
   * Examples: `<span>`, `<a>`, `<em>`, `<strong>`

### `inline-block`
   * Elements are formatted as inline elements but behave like block elements (can set width and height).

### `none`
    * Element is removed from the document.

### Understanding the differences and use cases of different display values.

## Positioning

### `static`
   * The default positioning; elements are positioned in the normal flow of the document.

### `relative`
   * Elements are positioned relative to their normal position.
   * Using `top`, `right`, `bottom`, `left` to offset the element.

### `absolute`
   * Elements are positioned relative to their nearest positioned ancestor (an ancestor with a position other than `static`). If no positioned ancestor exists, they are positioned relative to the initial containing block (the `<html>` element).

### `fixed`
   * Elements are positioned relative to the viewport and do not scroll with the page.

### `sticky`
    * Elements are initially positioned relatively, but become fixed when they reach a specified scroll position.
    * Using `top`, `right`, `bottom`, `left` to specify the sticky offset.

## Float and Clear

### `float`
   * Positioning elements to the left or right of their container, allowing other content to wrap around them.
   * Values: `left`, `right`, `none`.

### `clear`
   * Preventing elements from floating on the left, right, or both sides.
   * Values: `left`, `right`, `both`, `none`.
   * Common issues with floating elements and how to clear them (clearfix techniques).

## Flexbox

### Understanding Flexbox Concepts
   * The flex container and flex items.
   * Setting `display: flex;` on the container.

### Flex Container Properties
   * `flex-direction`: defines the direction of the flex items (row, column, row-reverse, column-reverse).
   * `justify-content`: aligns flex items along the main axis (flex-start, flex-end, center, space-between, space-around, space-evenly).
   * `align-items`: aligns flex items along the cross axis (flex-start, flex-end, center, baseline, stretch).
   * `flex-wrap`: controls whether flex items wrap to the next line (nowrap, wrap, wrap-reverse).
   * `align-content`: aligns flex lines when there is extra space in the cross axis (flex-start, flex-end, center, space-between, space-around, stretch).
   * `flex-flow`: shorthand for `flex-direction` and `flex-wrap`.

### Flex Item Properties
   * `flex-grow`: defines the ability of a flex item to grow if necessary.
   * `flex-shrink`: defines the ability of a flex item to shrink if necessary.
   * `flex-basis`: defines the initial main size of the flex item.
   * `flex`: shorthand for `flex-grow`, `flex-shrink`, and `flex-basis`.
   * `align-self`: overrides the `align-items` property for a single flex item (auto, flex-start, flex-end, center, baseline, stretch).
   * `order`: controls the order of flex items.

## CSS Grid Layout

### Understanding Grid Concepts
   * Grid container and grid items.
   * Setting `display: grid;` on the container.

### Grid Container Properties
   * `grid-template-columns`: defines the columns of the grid.
   * `grid-template-rows`: defines the rows of the grid.
   * `grid-template-areas`: defines named grid areas.
   * `grid-gap`, `grid-column-gap`, `grid-row-gap`: sets the gaps between rows and columns.
   * `justify-items`: aligns grid items along the inline (row) axis (start, end, center, stretch).
   * `align-items`: aligns grid items along the block (column) axis (start, end, center, stretch).
   * `justify-content`: aligns the grid container along the inline axis (start, end, center, space-between, space-around, space-evenly).
   * `align-content`: aligns the grid container along the block axis (start, end, center, space-between, space-around, stretch).
   * `grid-auto-rows`, `grid-auto-columns`: specify the size of implicitly-created grid tracks (rows or columns).
   * `grid-auto-flow`: controls how auto-placed items are inserted into the grid (row, column, dense).

### Grid Item Properties
   * `grid-column-start`, `grid-column-end`, `grid-row-start`, `grid-row-end`: specify the starting and ending lines of a grid item.
   * `grid-column`, `grid-row`: shorthand for `grid-column-start` and `grid-column-end`, and `grid-row-start` and `grid-row-end`, respectively.
   * `grid-area`: assigns a name defined by `grid-template-areas` to a grid item, or is a shorthand for `grid-row-start`, `grid-column-start`, `grid-row-end`, and `grid-column-end`.
   * `justify-self`: overrides the `justify-items` property for a single grid item (start, end, center, stretch).
   * `align-self`: overrides the `align-items` property for a single grid item (start, end, center, stretch).

# VI. Responsive Web Design

## Viewport Meta Tag

### Understanding the viewport meta tag.
   * `<meta name="viewport" content="width=device-width, initial-scale=1.0">`
   * Importance for responsive design.

## Media Queries

### Understanding media queries
   * Using `@media` rules to apply styles based on device characteristics.
   * Example: `@media (max-width: 768px) { ... }`
   * Targeting different screen sizes, orientations, and resolutions.
   * Common breakpoints for mobile, tablet, and desktop devices.

## Flexible Images and Videos

### Ensuring images and videos scale properly on different devices.
   * Using `max-width: 100%; height: auto;` for images.
   * Using the `<picture>` element for responsive images.
   * Using CSS to control video size and aspect ratio.

## Mobile-First Approach

### Developing websites starting with mobile styles and progressively enhancing for larger screens.
   * Benefits of a mobile-first approach.
   * Structuring CSS with mobile-first in mind.

# VII. CSS Transitions and Animations

## CSS Transitions

### Understanding CSS transitions.
   * Animating CSS properties smoothly over a specified duration.
   * CSS properties: `transition-property`, `transition-duration`, `transition-timing-function`, `transition-delay`, `transition` (shorthand).
   * Example: `transition: all 0.3s ease-in-out;`
   * Common transition effects: hover effects, state changes.

## CSS Animations

### Understanding CSS animations.
   * Creating more complex animations using keyframes.
   * `@keyframes` rule: defining the animation sequence.
   * CSS properties: `animation-name`, `animation-duration`, `animation-timing-function`, `animation-delay`, `animation-iteration-count`, `animation-direction`, `animation-fill-mode`, `animation-play-state`, `animation` (shorthand).
   * Example:
     ```css
     @keyframes fadeIn {
       from { opacity: 0; }
       to { opacity: 1; }
     }
     .fade-in {
       animation: fadeIn 1s;
     }
     ```
   * Looping animations, delayed animations, and animation direction.

# VIII. Advanced CSS Techniques

## CSS Preprocessors (Sass/SCSS, Less)

### Introduction to CSS preprocessors.
   * Benefits: variables, nesting, mixins, functions, and more.
   * Sass/SCSS: Syntax, features, and usage.
   * Less: Syntax, features, and usage.
   * Compiling preprocessor code to CSS.

## CSS Frameworks (Bootstrap, Tailwind CSS)

### Introduction to CSS frameworks.
   * Benefits: pre-built components, responsive layouts, and consistent design.
   * Bootstrap: Features, grid system, components, and customization.
   * Tailwind CSS: Features, utility-first approach, customization, and build process.
   * Choosing the right framework for your project.

## CSS Methodologies (BEM, SMACSS)

### Introduction to CSS methodologies.
   * BEM (Block, Element, Modifier): Naming conventions and structure for CSS classes.
   * SMACSS (Scalable and Modular Architecture for CSS): Categorizing CSS rules for better organization.
   * Benefits of using a CSS methodology.

# IX. Practical CSS Projects

## Building a Responsive Navigation Bar

### Creating a navigation bar that adapts to different screen sizes.
   * Using media queries to adjust the layout for mobile devices.
   * Implementing a hamburger menu for mobile navigation.

## Designing a Portfolio Website

### Creating a visually appealing portfolio website with CSS.
   * Using CSS Grid or Flexbox for layout.
   * Implementing animations and transitions for interactive elements.

## Creating a Landing Page

### Creating a marketing landing page with a compelling design.
   * Using CSS to style typography, colors, and images.
   * Optimizing the landing page for different devices and browsers.
