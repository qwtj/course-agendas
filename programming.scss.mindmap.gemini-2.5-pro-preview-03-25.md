# SCSS #Preprocessor #CSS #Frontend
SCSS (Sassy CSS) is a powerful CSS preprocessor that adds features like variables, nesting, mixins, and more to standard CSS, making stylesheets more maintainable, themeable, and extendable.

## Introduction to SCSS #Basics #Overview #Concept
Understanding the fundamentals of SCSS and its purpose.

### What is SCSS? #Definition #Preprocessor
SCSS is a syntax of Sass (Syntactically Awesome StyleSheets) that extends CSS, allowing for more dynamic and organized stylesheets.

### Why Use a Preprocessor? #Benefits #Workflow
Explains the advantages like improved code organization, reusability, maintainability, and efficiency.

### History and Evolution #Sass #Timeline
Brief overview of Sass/SCSS development.

### SCSS vs. Sass Syntax #Syntax #Comparison
Comparing the CSS-like `.scss` syntax with the older indentation-based `.sass` syntax. SCSS is generally preferred due to its CSS compatibility.

## Syntax and Basics #Fundamentals #SyntaxRules
Covers the foundational syntax elements of SCSS.

### SCSS Syntax (.scss) #CSSCompatibility #Syntax
The primary syntax, fully compatible with standard CSS. Uses braces `{}` and semicolons `;`.

### Comments #Documentation #CodeNotes
Explains single-line `//` comments (removed during compilation) and multi-line `/* */` comments (preserved in output, unless in compressed mode).

### CSS Compatibility #Integration #StandardCSS
Emphasizes that any valid CSS is also valid SCSS.

## Core Features #Features #KeyConcepts #BuildingBlocks
Detailed exploration of the main features that extend CSS capabilities.

### Variables #Variables #Customization #Reusability
Using the `$` symbol to define reusable values like colors, fonts, or dimensions.
Example: `$primary-color: #333;`

#### Variable Scope #Scope #Local #Global
Understanding variable scope (global vs. local within selectors or blocks). Using `!global` flag.

#### Default Values #Defaults #Configuration
Using the `!default` flag to assign a value only if the variable isn't already defined.

### Nesting #Nesting #Hierarchy #Readability
Nesting CSS rules within one another to follow HTML structure and reduce repetition.

#### Selector Nesting #Selectors #Structure
Nesting child selectors inside parent selectors.
Example: `nav { ul { li { a { color: blue; } } } }`

#### Property Nesting #Properties #Organization
Nesting properties under a common namespace (e.g., `font: { weight: bold; size: 1em; }`).

#### Parent Selector (&) #ParentReference #Combinators
Using the `&` symbol to reference the parent selector, useful for pseudo-classes, pseudo-elements, and BEM modifiers.
Example: `a { &:hover { color: red; } }`

### Partials #Partials #Organization #ModularCSS
Creating separate SCSS files (prefixed with `_`, e.g., `_variables.scss`) that contain snippets of CSS meant to be included in other files, without being compiled directly.

### Importing Files (@import) #Import #CombiningFiles #Legacy
The older method for including partials into a main SCSS file. `@import 'variables';`
Note: This is largely superseded by the module system (`@use`).

### Mixins (@mixin / @include) #Mixins #Reusability #Functions
Creating reusable blocks of CSS declarations that can be included anywhere.

#### Defining Mixins (@mixin) #Definition #Declaration
Syntax for creating a mixin.
Example: `@mixin border-radius($radius) { border-radius: $radius; }`

#### Using Mixins (@include) #Usage #Invocation
Syntax for including a mixin's styles.
Example: `.box { @include border-radius(5px); }`

#### Mixin Arguments #Parameters #Customization
Passing arguments (with optional default values) to mixins for flexibility.

#### Passing Content Blocks (@content) #ContentBlocks #Flexibility
Allowing mixins to accept and output entire blocks of styles passed during inclusion.

### Extend/Inheritance (@extend) #Extend #Inheritance #DRY
Sharing sets of CSS properties from one selector to another, promoting DRY (Don't Repeat Yourself) principles.
Example: `.error { border: 1px solid red; } .serious-error { @extend .error; font-weight: bold; }`

#### Placeholder Selectors (%) #Placeholders #Optimization
Using `%` placeholders for rulesets that should only be used via `@extend` and not output directly. This helps avoid unused CSS classes.

#### Limitations and Best Practices #ExtendCaveats #Performance
Understanding the potential downsides of `@extend`, such as generating complex selectors, and when to prefer mixins.

### Operators #Operators #Calculations #Logic
Performing operations within SCSS.

#### Mathematical Operators #Math #Calculations
Addition `+`, Subtraction `-`, Multiplication `*`, Division `/`, Modulo `%`. Requires compatible units or unitless numbers.

#### Comparison Operators #Comparison #Logic
`==`, `!=`, `<`, `>`, `<=`, `>=`.

#### Logical Operators #BooleanLogic #Conditions
`and`, `or`, `not`.

#### String Operations #Strings #Concatenation
Using `+` to concatenate strings (quoted or unquoted).

#### Color Operations #Colors #Manipulation
Functions and operators for manipulating color values.

## Control Directives & Expressions #ControlFlow #Logic #DynamicCSS
Adding logic and loops to stylesheet generation.

### Conditional Statements (@if / @else if / @else) #Conditionals #Logic #Branching
Applying styles based on conditions.
Example: `@if $debug == true { /* debug styles */ } @else { /* production styles */ }`

### Loops (@for) #Loops #Iteration #Automation
Iterating a set number of times.
Example: `@for $i from 1 through 5 { .item-#{$i} { width: 20% * $i; } }`

### Loops (@each) #Loops #Iteration #Collections
Iterating over items in a list or map.
Example: `@each $color, $value in $colors { .bg-#{$color} { background-color: $value; } }`

### Loops (@while) #Loops #Iteration #Conditions
Repeating a block of styles as long as a condition is true. (Used less commonly than `@for` or `@each`).

## Functions #Functions #Calculations #Utilities
Using built-in and custom functions to manipulate values.

### Built-in Functions #Builtins #Utilities
Sass provides a rich set of functions for various data types.

#### String Functions #Strings #Manipulation
e.g., `str-length()`, `str-insert()`, `to-upper-case()`.

#### Numeric Functions #Numbers #Math
e.g., `abs()`, `round()`, `percentage()`, `min()`, `max()`.

#### List Functions #Lists #Arrays #Manipulation
e.g., `length()`, `nth()`, `append()`, `join()`.

#### Map Functions #Maps #Objects #Manipulation
e.g., `map-get()`, `map-has-key()`, `map-merge()`.

#### Selector Functions #Selectors #Introspection
e.g., `selector-nest()`, `selector-parse()`, `is-superselector()`.

#### Color Functions #Colors #Manipulation #Theming
e.g., `rgba()`, `lighten()`, `darken()`, `adjust-hue()`, `mix()`.

#### Introspection Functions #Introspection #Debugging
e.g., `type-of()`, `variable-exists()`, `mixin-exists()`.

### Defining Custom Functions (@function) #CustomFunctions #Reusability #Logic
Creating your own reusable functions to encapsulate complex calculations or logic.
Example: `@function px-to-rem($pixels) { @return $pixels / 16 * 1rem; }`

## Data Types #DataTypes #Values
Understanding the different types of values SCSS can work with.

### Numbers #Numbers #Units
Integers and decimals, potentially with units (e.g., `10px`, `2.5em`, `80%`).

### Strings #Strings #Text
Quoted (`"hello"`) or unquoted (`hello`). Unquoted strings can sometimes cause ambiguity.

### Colors #Colors #Styling
Hex (`#ff0000`), RGB (`rgb(255,0,0)`), RGBA (`rgba(255,0,0,0.5)`), HSL (`hsl(0, 100%, 50%)`), HSLA (`hsla(0, 100%, 50%, 0.5)`), Color names (`red`).

### Booleans #Booleans #Logic
`true` and `false`.

### Null #Null #EmptyValue
Represents the absence of a value. Often used with `!default` or conditional logic.

### Lists #Lists #Arrays #Collections
Ordered sequences of values, separated by spaces or commas. Can be enclosed in parentheses.
Example: `1px 2px 0 5px`, `helvetica, arial, sans-serif`.

### Maps #Maps #Objects #KeyValuePairs
Collections of key-value pairs. Keys must be unique.
Example: `(key1: value1, key2: value2)`.

## Modules and Scope (@use, @forward) #Modules #Scope #Organization #ModernCSS
The modern Sass module system for better code organization, encapsulation, and namespacing, replacing `@import`.

### Introduction to the Module System #Modules #Encapsulation
Why the module system was introduced (addressing `@import`'s global scope issues).

### Loading Modules (@use) #Use #Importing #Namespacing
Using `@use` to load styles, variables, functions, and mixins from another file (partial). Loaded members are namespaced by default.
Example: `@use 'variables'; body { color: variables.$primary-color; }`

#### Namespacing #Namespaces #Organization
How `@use` prevents naming conflicts by default. Custom namespaces with `@use 'module' as mod;`. Global access with `@use 'module' as *;`.

### Forwarding Modules (@forward) #Forward #API #Abstraction
Using `@forward` within a module to expose members from *other* modules, creating cleaner APIs for your stylesheets.

#### Hiding and Showing Members #Visibility #APIControl
Using `show` and `hide` clauses with `@forward` to control which members are exposed.

#### Configuration with `!default` #Configuration #Modules
Using `@use ... with (...)` to configure modules by overriding `!default` variables before they are used.

### Migrating from @import #Migration #Legacy #Modernization
Guidance on transitioning projects from the older `@import` directive to `@use` and `@forward`.

## Compiling SCSS #Compilation #Workflow #BuildProcess
Converting SCSS code into standard CSS that browsers can understand.

### Command Line Interface (CLI) #CLI #Compiler #DartSass
Using the official Sass compiler (typically Dart Sass) from the command line.
Example: `sass input.scss output.css`

#### Watch Mode #Automation #Development
Using flags like `--watch` to automatically recompile when SCSS files change.

### Build Tools #BuildTools #Automation #Integration
Integrating SCSS compilation into modern frontend development workflows.

#### Webpack (with sass-loader) #Webpack #ModuleBundler
Using `sass-loader` within a Webpack configuration.

#### Gulp (with gulp-sass) #Gulp #TaskRunner
Using `gulp-sass` within a Gulp task pipeline.

#### Parcel #Parcel #Bundler
Parcel often supports SCSS out-of-the-box or with minimal configuration.

#### Vite #Vite #BuildTool
Vite offers built-in SCSS support.

### GUI Applications #GUI #Software #Compiler
Graphical user interface tools for compiling SCSS (e.g., CodeKit, Prepros, Scout-App).

### Online Compilers #OnlineTools #Playground
Web-based tools for quick testing and compilation (e.g., SassMeister).

### Output Styles #OutputFormat #Optimization
Controlling the format of the compiled CSS.
Common options: `expanded`, `compressed`.

### Source Maps #Debugging #Development #Mapping
Generating source maps (`.map` files) to link compiled CSS back to the original SCSS source for easier debugging in browser developer tools.

## Advanced Techniques #Advanced #Tips #Patterns
More sophisticated ways to leverage SCSS features.

### Advanced Parent Selector (&) Usage #ParentSelector #BEM #Context
Using `&` for BEM syntax (`&--modifier`, `&__element`), stateful styles (`.is-active &`), and context-based styling (`body.dark-theme &`).

### Interpolation (# {}) #Interpolation #DynamicCode #Flexibility
Using `#{}` to inject the results of expressions (variables, function calls) into selectors, property names, or strings.
Example: `@mixin define-icon($name) { .icon-#{$name} { /* styles */ } }`

### Advanced @extend Scenarios #Extend #Patterns
Using `@extend` with placeholder selectors (`%`) for optimal output, understanding selector merging.

### Content Blocks (@content) in Depth #ContentBlocks #Mixins #Flexibility
Passing complex structures, including media queries or nested rules, into mixins via `@content`.

### Responsive Design with SCSS #Responsive #MediaQueries #Breakpoints
Strategies for managing media queries using variables, mixins, or maps.
Example: `@mixin respond-to($breakpoint) { @media (min-width: $breakpoint) { @content; } }`

### Theming #Theming #Customization #UI
Using SCSS variables, maps, and functions to create themeable components or websites.

## Best Practices & Maintainability #BestPractices #CodeQuality #Architecture
Writing clean, organized, and scalable SCSS code.

### File Structure #Architecture #Organization #Patterns
Common organizational patterns like the 7-1 Pattern (7 folders, 1 main file) or ITCSS (Inverted Triangle CSS).

### Naming Conventions #Naming #Consistency #BEM
Using methodologies like BEM (Block, Element, Modifier) alongside SCSS nesting and parent selectors.

### Avoiding Over-Nesting #Nesting #Specificity #Performance
Keeping nesting levels shallow (e.g., 3-4 levels max) to avoid overly specific selectors and maintain readability.

### DRY Principle #DRY #Reusability #Efficiency
Leveraging variables, mixins, functions, and extends effectively to avoid repeating code.

### Code Smells #CodeQuality #AntiPatterns
Recognizing common issues like magic numbers, deeply nested rules, overly complex mixins, or inappropriate use of `@extend`.

### Linting #Linting #CodeStyle #QualityAssurance
Using tools like Stylelint with SCSS plugins (e.g., `stylelint-scss`) to enforce code style consistency and catch errors.

## Ecosystem & Tooling #Ecosystem #Libraries #Frameworks
Exploring libraries, frameworks, and tools related to SCSS.

### CSS Frameworks using SCSS #Frameworks #Bootstrap #Foundation
Major frameworks built with SCSS (e.g., Bootstrap, Foundation) and how they can be customized.

### Mixin Libraries #Libraries #Utilities #Bourbon
Collections of pre-built mixins and functions (e.g., Bourbon - though less maintained now, Compass - largely historical).

### Debugging Tools #Debugging #Troubleshooting
Using source maps and browser developer tools effectively.

## Comparison with CSS & Alternatives #Comparison #Alternatives #Tradeoffs
Understanding how SCSS fits into the broader landscape of styling technologies.

### SCSS vs. Plain CSS #CSS #ProsCons
Benefits of SCSS (maintainability, features) vs. the simplicity and native nature of CSS.

### SCSS vs. CSS Custom Properties #Variables #CSSVariables #Comparison
Comparing SCSS variables (compile-time) with CSS Custom Properties (runtime variables) and their respective use cases. Often used together.

### SCSS vs. Less #Less #Preprocessor #Comparison
Comparing features, syntax, and community support with another popular CSS preprocessor, Less.

### SCSS vs. Stylus #Stylus #Preprocessor #Comparison
Comparing features and syntax flexibility with Stylus.
