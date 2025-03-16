# I. Introduction to SASS

## Understanding SASS Fundamentals

### What is SASS?
*   Explore the definition of SASS (Syntactically Awesome Style Sheets).
*   Understand its purpose as a CSS preprocessor.
*   Differentiate SASS from CSS.

### SASS vs. SCSS
*   Compare and contrast the two SASS syntaxes: SASS (indented syntax) and SCSS (Sassy CSS).
*   Understand the advantages and disadvantages of each syntax.
*   Focus on SCSS as the more widely used syntax, compatible with CSS.

### Setting up your Environment
*   Installing Ruby (if needed) and the SASS gem: `gem install sass`
*   Alternatively, use a Node.js package: `npm install -g sass`
*   Configuring your text editor or IDE for SASS/SCSS.

# II. Core SASS Features

## Variables

### Declaring Variables
*   Understanding the syntax for declaring SASS variables: `$variable-name: value;`
*   Defining variables for colors, fonts, spacing, and other reusable values.
*   Example: `$primary-color: #007bff;`

### Using Variables
*   Applying variables to CSS properties.
*   Example: `color: $primary-color;`
*   Benefits of using variables: maintainability and consistency.

## Nesting

### Basic Nesting
*   Nesting CSS selectors within each other.
*   Example:

    ```scss
    nav {
      ul {
        margin: 0;
        padding: 0;
        list-style: none;
      }

      li { display: inline-block; }

      a {
        display: block;
        padding: 6px 12px;
        text-decoration: none;
      }
    }
    ```

### Advanced Nesting
*   Using the `&` selector to reference the parent selector.
*   Example:

    ```scss
    a {
      color: blue;
      &:hover {
        color: darkblue;
      }
    }
    ```

## Partials and Imports

### Creating Partials
*   Creating partial SASS files (e.g., `_variables.scss`, `_mixins.scss`).
*   Naming conventions for partials (starting with an underscore).

### Importing Partials
*   Using the `@import` directive to include partials into your main SASS file.
*   Example: `@import 'variables';`
*   Benefits of using partials for organizing your SASS code.

## Mixins

### Defining Mixins
*   Creating reusable blocks of CSS declarations.
*   Using the `@mixin` directive.
*   Example:

    ```scss
    @mixin border-radius($radius) {
      -webkit-border-radius: $radius;
         -moz-border-radius: $radius;
              border-radius: $radius;
    }
    ```

### Using Mixins
*   Including mixins using the `@include` directive.
*   Example:

    ```scss
    .box {
      @include border-radius(5px);
    }
    ```

### Mixin Arguments
*   Passing arguments to mixins to customize their behavior.
*   Example:

    ```scss
    @mixin box-shadow($x, $y, $blur, $color) {
      -webkit-box-shadow: $x $y $blur $color;
         -moz-box-shadow: $x $y $blur $color;
              box-shadow: $x $y $blur $color;
    }

    .box {
      @include box-shadow(2px, 2px, 5px, rgba(0, 0, 0, 0.3));
    }
    ```

## Extending/Inheritance

### Extending Styles
*   Using the `@extend` directive to inherit styles from another selector.
*   Example:

    ```scss
    .button {
      padding: 10px 20px;
      border: none;
      background-color: blue;
      color: white;
    }

    .success-button {
      @extend .button;
      background-color: green;
    }
    ```

### Placeholder Selectors
*   Creating placeholder selectors (starting with `%`) that are only used for extending.
*   Example:

    ```scss
    %message-shared {
      border: 1px solid #ccc;
      padding: 10px;
      color: #333;
    }

    .success-message {
      @extend %message-shared;
      border-color: green;
    }
    ```

# III. Advanced SASS Features

## Operators

### Arithmetic Operators
*   Using arithmetic operators (+, -, \*, /) in SASS.
*   Example: `width: $base-width + 10px;`

### Comparison Operators
*   Using comparison operators (==, !=, >, <, >=, <=).

### Logical Operators
*   Using logical operators (`and`, `or`, `not`).

## Functions

### Built-in Functions
*   Exploring built-in SASS functions (e.g., `lighten()`, `darken()`, `saturate()`).
*   Example: `background-color: lighten($primary-color, 20%);`

### Defining Custom Functions
*   Creating your own functions using the `@function` directive.
*   Example:

    ```scss
    @function double($number) {
      @return $number * 2;
    }

    .container {
      width: double(20px);
    }
    ```

## Control Directives

### @if/@else
*   Using conditional statements to control which styles are applied.
*   Example:

    ```scss
    $theme: dark;

    body {
      @if $theme == dark {
        background-color: black;
        color: white;
      } @else {
        background-color: white;
        color: black;
      }
    }
    ```

### @for
*   Using loops to generate repetitive CSS patterns.
*   Example:

    ```scss
    @for $i from 1 through 3 {
      .col-#{$i} {
        width: 100% / $i;
      }
    }
    ```

### @each
*   Iterating over lists or maps.
*   Example:

    ```scss
    $colors: (
      primary: blue,
      secondary: green,
      accent: red
    );

    @each $name, $color in $colors {
      .button-#{$name} {
        background-color: $color;
      }
    }
    ```

### @while
*   Creating while loops.
*   Less common than `@for` or `@each`, but useful in specific cases.

## Data Types

### Numbers
*   Working with numeric values, including units (px, em, %, etc.).

### Strings
*   Working with strings, including interpolation.

### Booleans
*   Using true/false values in conditional statements.

### Lists
*   Creating and manipulating lists of values.

### Maps
*   Creating and manipulating key-value pairs.

# IV. SASS Workflow and Best Practices

## Compiling SASS

### Command Line Compilation
*   Compiling SASS files using the command line: `sass input.scss output.css`
*   Watching for changes and automatically compiling: `sass --watch input.scss:output.css`

### Integrating with Build Tools
*   Using tools like Gulp, Grunt, or Webpack for automated SASS compilation and optimization.

## Organization and Structure

### The 7-1 Pattern
*   Organizing your SASS project into seven folders, each containing a single SASS file.
    *   `base/`: Contains boilerplate and reset styles.
    *   `components/`: Contains styles for individual UI components.
    *   `layout/`: Contains styles for page layout elements.
    *   `pages/`: Contains styles specific to individual pages.
    *   `themes/`: Contains theme-related styles.
    *   `abstracts/`: Contains variables, mixins, and functions.
    *   `vendors/`: Contains styles from third-party libraries.
*   The main `style.scss` file imports all the other files.

### BEM Naming Convention
*   Using the Block, Element, Modifier (BEM) naming convention for CSS classes.
    *   `block`: The standalone entity (e.g., `button`).
    *   `element`: A part of a block (e.g., `button__text`).
    *   `modifier`: A variation of a block or element (e.g., `button--primary`).

## Debugging SASS

### Using Source Maps
*   Generating source maps to easily debug SASS code in the browser.
*   Enabling source maps during compilation: `sass --sourcemap=inline input.scss output.css`

### Browser Developer Tools
*   Inspecting compiled CSS and tracing it back to the original SASS code using browser developer tools.

# V. SASS Project

## Small Project - Building a Responsive Navigation Bar

### Task Description
*   Create a responsive navigation bar using SASS.
*   Include variables for colors and fonts.
*   Use mixins for media queries and button styles.
*   Implement nesting for clean and readable code.

### Steps
1.  Set up your project structure with a `style.scss` file and partials.
2.  Define variables for colors, fonts, and spacing in a `_variables.scss` file.
3.  Create mixins for media queries and button styles in a `_mixins.scss` file.
4.  Write the SASS code for the navigation bar, using nesting and variables.
5.  Compile the SASS code into CSS.
6.  Test the navigation bar on different screen sizes to ensure it is responsive.

## Extended Learning

### Investigating SASS frameworks

*   Materialize
*   Compass
*   Bourbon
