# I. SCSS Fundamentals

## Understanding SCSS Basics

### What is SCSS?
*   Superset of CSS, adds features like variables, nesting, mixins, functions.
*   Compiled into standard CSS.

### SCSS vs. CSS
*   Advantages: Maintainability, reusability, organization.
*   Disadvantages: Compilation step required.

### Setting up an SCSS Environment
*   Installing a compiler (e.g., `sass` gem, Node.js `node-sass` or `dart-sass`).
*   Creating `.scss` files.
*   Configuring compilation (e.g., command-line arguments, build scripts).

## Variables in SCSS

### Declaring Variables
*   Using the `$` symbol (e.g., `$primary-color: #007bff;`).
*   Variable naming conventions.

### Using Variables
*   Applying variables to CSS properties (e.g., `color: $primary-color;`).

### Variable Scope
*   Global vs. local variables.
*   Understanding variable precedence.

## Nesting in SCSS

### Basic Nesting
*   Nesting CSS rules within other rules.
*   Example:

    ```scss
    nav {
      ul {
        margin: 0;
        padding: 0;
        list-style: none;
      }

      li {
        display: inline-block;
      }
    }
    ```

### Parent Selector (&)
*   Referencing the parent selector (e.g., `&:hover`).
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
*   Naming partials with a leading underscore (e.g., `_variables.scss`).

### Importing Partials
*   Using the `@import` directive (e.g., `@import 'variables';`).
*   Benefits of using partials for code organization.

# II. Advanced SCSS Features

## Mixins

### Defining Mixins
*   Using the `@mixin` directive (e.g., `@mixin border-radius($radius) { ... }`).
*   Accepting arguments.

### Including Mixins
*   Using the `@include` directive (e.g., `@include border-radius(5px);`).

### Example: Creating a Responsive Grid Mixin

```scss
@mixin grid($columns, $gap: 10px) {
  display: grid;
  grid-template-columns: repeat($columns, 1fr);
  grid-gap: $gap;
}

.container {
  @include grid(3); //Creates a 3-column grid with default 10px gap
}
```

## Functions

### Defining Functions
*   Using the `@function` directive (e.g., `@function double($number) { ... }`).
*   Returning values.

### Using Functions
*   Calling functions in CSS properties (e.g., `width: double(50px);`).

### Example: Color Manipulation Function

```scss
@function lighten-by-percent($color, $amount) {
  @return lighten($color, $amount);
}

.element {
    background-color: lighten-by-percent(#007bff, 20%);
}
```

## Extend/Inheritance

### Using `@extend`
*   Sharing CSS properties from one selector to another (e.g., `.button { @extend .base-style; }`).
*   Understanding the difference between `@extend` and mixins.

### Example
```scss
.message {
  border: 1px solid #ccc;
  padding: 10px;
  color: #333;
}

.success-message {
  @extend .message;
  border-color: green;
  color: green;
}
```

## Control Directives

### `@if`, `@else if`, `@else`
*   Conditional statements in SCSS.
*   Example:

    ```scss
    $theme: dark;

    .element {
      @if $theme == dark {
        background-color: black;
        color: white;
      } @else {
        background-color: white;
        color: black;
      }
    }
    ```

### `@for`
*   Looping through a sequence of numbers.
*   Example:

    ```scss
    @for $i from 1 through 3 {
      .col-#{$i} {
        width: 100% / $i;
      }
    }
    ```

### `@each`
*   Looping through a list or map.
*   Example:

    ```scss
    $colors: (
      primary: blue,
      secondary: gray,
      accent: red
    );

    @each $name, $color in $colors {
      .button-#{$name} {
        background-color: $color;
      }
    }
    ```

### `@while`

* Looping while a condition is true.

```scss
$i: 6;
@while $i > 0 {
  .item:nth-child(#{$i}) {
    font-size: percentage($i / 6);
  }
  $i: $i - 2;
}
```

# III. SCSS Project Structure and Best Practices

## Project Structure

### 7-1 Pattern
*   Structuring SCSS files into directories like `base`, `components`, `layout`, `pages`, `themes`, `utils`, and a main SCSS file.

### Modular Approach
*   Breaking down styles into small, reusable modules.

## Naming Conventions

### BEM (Block, Element, Modifier)
*   Understanding and applying the BEM naming methodology.
*   Example: `.block`, `.block__element`, `.block--modifier`.

### SMACSS (Scalable and Modular Architecture for CSS)
*   Categorizing CSS rules into base, layout, module, state, and theme.

## Code Organization

### Commenting
*   Adding comments to explain complex logic or code sections.

### Formatting
*   Using consistent indentation and spacing.

### Avoiding Over-nesting
*   Keeping nesting levels shallow for readability.

## Optimization and Performance

### Minification
*   Reducing the size of compiled CSS files.

### Gzip Compression
*   Enabling Gzip compression on the server.

### Avoiding Excessive Selectors
*   Writing efficient CSS selectors.

# IV. Practical Application and Tooling

## Integrating SCSS into Projects

### Using Build Tools (Webpack, Parcel)
*   Configuring build tools to compile SCSS files.

### Using Task Runners (Gulp, Grunt)
*   Automating SCSS compilation and optimization.

## SCSS Frameworks and Libraries

### Bootstrap
*   Using Bootstrap's SCSS files for customization.

### Materialize
*   Using Materialize's SCSS files for theming.

### Compass
*   Exploring Compass's mixins and functions.

## Debugging SCSS

### Source Maps
*   Generating source maps for debugging SCSS in the browser.

### Browser Developer Tools
*   Inspecting compiled CSS and SCSS source code.

## Version Control

### Using Git
*   Commiting SCSS files to Git repositories.
*   Branching for feature development.
