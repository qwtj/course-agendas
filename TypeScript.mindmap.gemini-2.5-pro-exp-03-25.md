```markdown
# TypeScript #Language #Superset #JavaScript
TypeScript is a strongly typed programming language that builds on JavaScript, giving you better tooling at any scale. It acts as a superset of JavaScript, adding optional static types.

## Introduction and Core Concepts #Basics #Fundamentals #GettingStarted
Covers the fundamental reasons for TypeScript's existence, its relationship with JavaScript, and basic syntax elements.
*   Why TypeScript? Static Typing benefits.
*   Relation to JavaScript (Superset).
*   Basic Setup (Compiler `tsc`, Playground).

### Basic Types #Primitives #BuiltIn
Core data types provided by TypeScript.
*   `string` #Text
*   `number` #Numeric
*   `boolean` #Logical
*   `null` & `undefined` #AbsenceOfValue
*   `symbol` #UniqueIdentifiers
*   `bigint` #LargeIntegers

### Special Types #SpecialPurpose
Types with specific roles in the type system.
*   `any` #DynamicTyping #TypeSafetyOff
    *   Opting out of type checking.
*   `unknown` #TypeSafeAny
    *   Safer alternative to `any`. Requires type checking before use.
*   `void` #NoReturnValue
    *   Typically used for functions that don't return a value.
*   `never` #UnreachableCode
    *   Represents values that never occur (e.g., functions that always throw errors or infinite loops).

### Variables and Declarations #Variables #Scope
How variables are declared using `let`, `const`, and `var` with type annotations.
*   Type Annotations #ExplicitTypes
*   Type Inference #ImplicitTypes
    *   TypeScript's ability to deduce types automatically. [8, 1]

### Operators #Expressions #Operations
Standard JavaScript operators and any TypeScript-specific considerations.

### Control Flow Analysis #TypeNarrowing #CodeFlow
How TypeScript analyzes code flow (e.g., `if`, `switch`, loops) to narrow down types.

## Functions #Functions #Methods #Behavior
Defining and typing functions, including parameters, return types, and special function types.

### Function Signatures #Typing #Contracts
Defining the types for function parameters and return values. [12]
*   Parameter Types #Inputs
*   Return Types #Outputs
*   Optional and Default Parameters #Flexibility
*   Rest Parameters #VarArgs

### Function Overloads #MultipleSignatures
Providing multiple function signatures for the same function body.

### `this` in Functions #Context #ArrowFunctions
Handling the `this` keyword and its typing in different function contexts.

### Special Function Types #Callback #HigherOrder
Typing callbacks, higher-order functions, etc.

## Object Types #Objects #DataStructures
Working with objects, including defining their shape using interfaces and type aliases.

### Object Literal Types #InlineDefinition
Defining object types directly.

### Type Aliases #CustomTypes #Naming
Creating custom names for types (`type`). [11, 18]
*   Difference between Type Aliases and Interfaces.

### Interfaces #Contracts #Shapes #OOP
Defining contracts for object shapes or class implementations (`interface`). [12, 10, 11]
*   Optional Properties (`?`) #OptionalMembers
*   Readonly Properties (`readonly`) #Immutability
*   Index Signatures #DynamicProperties
    *   Defining types for properties accessed via index (e.g., `[key: string]: number`).
*   Extending Interfaces #Inheritance

### Arrays and Tuples #Collections #Sequences
Typed collections of data. [12, 18]
*   Array Types (`string[]`, `Array<number>`) #Homogeneous
*   Tuple Types (`[string, number]`) #FixedStructure #Heterogeneous

### Enums #Enumerations #NamedConstants
Creating sets of named constants (numeric and string-based). [11, 18]
*   Numeric Enums
*   String Enums
*   Heterogeneous Enums
*   Computed and Constant Members

## Classes and Object-Oriented Programming (OOP) #Classes #OOP #Encapsulation
Using classes for object-oriented design patterns in TypeScript. [12, 4]

### Class Definitions #Blueprints #Constructors
Basic class syntax, constructors, properties, and methods.

### Inheritance #Extends #Super
Extending classes and using `super()`.

### Access Modifiers #Visibility #Encapsulation
Controlling member visibility (`public`, `private`, `protected`).
*   `public` (Default)
*   `private`
*   `protected`

### Static Members #ClassLevel
Properties and methods belonging to the class itself, not instances.

### Abstract Classes and Methods #Templates #Contracts
Defining base classes that cannot be instantiated directly and must be implemented by subclasses.

### Implementing Interfaces #Contracts #Polymorphism
Ensuring classes adhere to specific interface contracts.

### `readonly` Modifier for Properties #Immutability

## Advanced Types #ComplexTypes #TypeManipulation
More sophisticated type system features for complex scenarios. [1, 9]

### Union Types (`|`) #Alternatives #OrType
Allowing a variable to be one of several types. [1, 9, 10]

### Intersection Types (`&`) #CombiningTypes #AndType
Combining multiple types into one. [1, 9, 10]

### Literal Types #SpecificValues
Types representing exact values (e.g., `"GET"`, `42`, `true`). [10]
*   String Literal Types
*   Numeric Literal Types
*   Boolean Literal Types

### Type Narrowing and Type Guards #Refinement #Safety
Techniques to narrow down types within conditional blocks. [1, 9]
*   `typeof` Guard
*   `instanceof` Guard [13]
*   `in` Operator Guard
*   Equality Narrowing (`===`, `!==`)
*   Truthiness Narrowing
*   Custom Type Guards (User-Defined Type Predicates)

### Discriminated Unions (Tagged Unions) #AlgebraicDataTypes #PatternMatching
Combining union types with literal types to create type-safe structures. [9]

### Nullish Coalescing (`??`) #NullHandling #DefaultValue
Operator for handling `null` or `undefined`. [9]

### Optional Chaining (`?.`) #NullHandling #SafeAccess
Safely accessing properties of potentially `null` or `undefined` objects.

## Generics #ReusableCode #TypeParameters #Flexibility
Creating reusable components that work with various types while maintaining type safety. [1, 9, 10, 13]

### Generic Functions #TypeVariables
Functions that operate on different types specified by type parameters.

### Generic Interfaces #TypeVariables
Interfaces that use type parameters. [13]

### Generic Classes #TypeVariables
Classes that use type parameters.

### Generic Constraints (`extends`) #LimitingTypes
Restricting the types that can be used as generic parameters. [21]

### Using Type Parameters in Generic Constraints

### Default Type Parameters

## Modules and Namespaces #Organization #CodeSplitting #Encapsulation
Organizing code into reusable and maintainable units. [3, 7]

### ES Modules (`import`/`export`) #Standard #CodeSharing
Using the standard JavaScript module system.
*   `export` Statements
*   `import` Statements
*   Default Exports/Imports
*   Re-exports (`export * from '...'`)

### Module Resolution Strategies #FindingModules
How TypeScript finds modules (`Node`, `Classic`).

### Namespaces #InternalModules #Organization
Older TypeScript-specific way to group related code (less common with ES Modules). [3]
*   Namespace Merging

### Ambient Modules #Declaration #ExternalCode
Declaring modules that exist externally (e.g., in JavaScript libraries).

## Type Manipulation #UtilityTypes #TypeTransformation
Advanced techniques for creating new types from existing ones. [11, 25]

### Keyof Type Operator (`keyof`) #PropertyNames #IndexTypes
Extracting the keys of an object type as a union of string literals. [18, 22, 21, 23]

### Typeof Type Operator (`typeof`) #ValueToType
Inferring the type of a variable or property. [22]

### Indexed Access Types (`T[K]`) #LookupTypes
Accessing the type of a property using its key type. [15]

### Conditional Types (`extends ? T : F`) #TypeLogic #DecisionMaking
Creating types based on conditions involving other types. [10, 11]
*   Distributive Conditional Types
*   `infer` Keyword #TypeExtraction [13]

### Mapped Types #Transformation #DRY
Creating new types by transforming properties of existing types. [10, 25, 21]
*   Mapping Modifiers (`readonly`, `?`, `+`, `-`) [25]
*   Key Remapping via `as` [25]

### Template Literal Types #StringManipulation #TypeLevelStrings
Creating types based on string literal concatenation and patterns. [25, 21]

### Utility Types #Helpers #CommonPatterns
Built-in generic types for common transformations. [11, 18, 23]
*   `Partial<T>`
*   `Required<T>`
*   `Readonly<T>`
*   `Record<K, T>`
*   `Pick<T, K>`
*   `Omit<T, K>`
*   `Exclude<T, U>`
*   `Extract<T, U>`
*   `NonNullable<T>`
*   `Parameters<T>`
*   `ConstructorParameters<T>`
*   `ReturnType<T>`
*   `InstanceType<T>`
*   `Awaited<T>` (for Promises)

## Decorators #Metadata # metaprogramming #AOP
Experimental feature for adding annotations and meta-programming syntax to classes and members. [11]

### Decorator Basics #Syntax #Experimental

### Class Decorators

### Method Decorators

### Accessor Decorators

### Property Decorators

### Parameter Decorators

### Decorator Composition

### Decorator Metadata (requires `reflect-metadata`)

## Declaration Files (`.d.ts`) #TypeDefinitions #Interoperability
Providing type information for JavaScript code or external libraries. [3, 15]

### Writing Declaration Files #Authoring #Contracts
Creating `.d.ts` files from scratch.
*   Declaring Variables, Functions, Classes
*   Declaring Modules (Ambient Modules)
*   Declaring Namespaces
*   Interface Merging / Module Augmentation

### Consuming Declaration Files #UsingTypes
How TypeScript uses `.d.ts` files.

### DefinitelyTyped #Community #Types #Repository
Community-driven repository for high-quality TypeScript type definitions for JavaScript libraries. [8, 18]

### Publishing Declaration Files #Distribution

## Configuration (`tsconfig.json`) #CompilerOptions #ProjectSetup
Configuring the TypeScript compiler (`tsc`) behavior. [15]

### Compiler Options (`compilerOptions`) #Flags #Settings
Key settings for compilation, type checking, output, etc.
*   Target ECMAScript Version (`target`)
*   Module System (`module`)
*   Output Directory (`outDir`)
*   Root Directory (`rootDir`)
*   Strict Type-Checking Options (`strict`, `noImplicitAny`, `strictNullChecks`, etc.)
*   Source Maps (`sourceMap`)
*   JSX Support (`jsx`)
*   Declaration File Generation (`declaration`, `declarationMap`)
*   Library Files (`lib`)
*   Path Mapping (`paths`, `baseUrl`)
*   Type Roots (`typeRoots`, `types`)
*   Module Resolution (`moduleResolution`)

### File Inclusion/Exclusion (`include`, `exclude`, `files`) #ProjectScope

### Project References (`references`) #Monorepos #BuildOptimization

## Tooling and Ecosystem #Development #Productivity #Integration
Tools and integrations that enhance the TypeScript development experience. [2, 6, 8, 14]

### TypeScript Compiler (`tsc`) #Transpilation #TypeChecking
The core tool for compiling TS to JS and checking types. [6, 20]

### IDE Integration #EditorSupport #DX
Support in editors like VS Code, WebStorm, etc. [6]
*   IntelliSense / Autocompletion [8]
*   Error Highlighting
*   Refactoring Tools [8]
*   Go to Definition [8]

### Linters and Formatters #CodeQuality #Consistency
Tools like ESLint (with `@typescript-eslint`) and Prettier. [2]

### Build Tools and Bundlers #BuildProcess #Optimization
Integrating TypeScript with tools like Webpack, Rollup, Parcel, esbuild, Vite, tsup. [2, 5]

### Testing Frameworks #Testing #QualityAssurance
Using Jest, Mocha, Vitest, etc., with TypeScript (e.g., `ts-jest`). [2]

### Node.js Integration #Backend #ServerSide
Using TypeScript for backend development with Node.js. [18, 19]

### Package Management #Dependencies #NPM #Yarn
Managing dependencies (`npm`, `yarn`, `pnpm`). [14]

### Version Management (`nvm`, `asdf`) #NodeVersions [14]

### JSR (JavaScript Registry) #Registry #ModernJS [5]

## Framework Integration #Frontend #Backend #Ecosystem
Using TypeScript with popular JavaScript frameworks and libraries. [19, 16]

### React #Frontend #UI
Using TypeScript with React components, props, state, hooks, and context.

### Angular #Frontend #Framework
Angular's primary language is TypeScript. [6, 18]

### Vue.js #Frontend #UI
Using TypeScript with Vue components, Composition API, Options API.

### Node.js / Express #Backend #ServerSide
Building server-side applications with TypeScript.

### Svelte #Frontend #Compiler
Using TypeScript within Svelte components.

### GraphQL #API #DataFetching
Using TypeScript with GraphQL for type-safe API interactions (e.g., GraphQL Code Generator). [6, 2]

## Advanced Patterns and Best Practices #Patterns #Maintainability #Scalability
Techniques and guidelines for writing robust, maintainable, and scalable TypeScript code. [10, 15]

### Design Patterns in TypeScript #Solutions #Architecture
Implementing common design patterns (Singleton, Factory, Observer, etc.) with TypeScript types.

### Error Handling #Exceptions #Robustness
Strategies for handling errors in a type-safe way.

### Immutability #StateManagement #Predictability
Techniques for working with immutable data structures.

### Dependency Injection #Decoupling #Testability

### Branding / Nominal Typing #TypeSafety #Distinction
Simulating nominal types using techniques like branded types. [15]

### Performance Considerations #Optimization #Runtime

### Code Style and Readability #Consistency #Maintainability [8]

## Migrating from JavaScript #Adoption #Transition
Strategies and considerations for introducing TypeScript into existing JavaScript projects. [16]

### Gradual Adoption #StepByStep

### Setting up `tsconfig.json` for Migration (`allowJs`, `checkJs`)

### Adding Types Incrementally #ProgressiveTyping

### Using JSDoc for Type Annotations #JavaScriptTyping

## Future of TypeScript #Roadmap #Evolution
Ongoing development, upcoming features, and community direction. [6]

### TC39 Alignment #Standards #JavaScriptEvolution
Keeping TypeScript aligned with JavaScript standards and proposals.

### Performance Improvements #Compiler #Runtime

### New Type System Features #Enhancements
```
