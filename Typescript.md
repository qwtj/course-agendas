# I. Introduction to TypeScript

## Understanding TypeScript's Purpose and Benefits

### What is TypeScript?
   *  Definition and overview of TypeScript.
   *  TypeScript as a superset of JavaScript.

### Why Use TypeScript?
   *  Static typing and its advantages.
   *  Improved code maintainability and readability.
   *  Early error detection during development.
   *  Enhanced tooling and IDE support.
   *  Large-scale application development benefits.

## Setting Up Your Development Environment

### Installing TypeScript
   *  Installing Node.js and npm (Node Package Manager).
   *  Installing TypeScript globally using npm: `npm install -g typescript`

### Configuring the TypeScript Compiler (tsc)
   *  Creating a `tsconfig.json` file.
   *  Understanding compiler options: `target`, `module`, `strict`, `esModuleInterop`.
   * Example `tsconfig.json`:
   ```json
   {
     "compilerOptions": {
       "target": "es5",
       "module": "commonjs",
       "strict": true,
       "esModuleInterop": true,
       "outDir": "dist"
     },
     "include": ["src/**/*"]
   }
   ```
   * Using `tsc` to compile TypeScript files: `tsc` or `tsc -w` (watch mode).

# II. Basic Types and Type Annotations

## Understanding Primitive Types

### Boolean
   *  `true` or `false` values.
   *  Example: `let isDone: boolean = false;`

### Number
   *  All numeric values including integers and floating-point numbers.
   *  Example: `let decimal: number = 6;`

### String
   *  Textual data.
   *  Example: `let color: string = "blue";`
   *  Template literals: `let sentence: string = `My color is ${ color }.`;`

### Array
   *  Arrays of a specific type.
   *  Example: `let list: number[] = [1, 2, 3];` or `let list: Array<number> = [1, 2, 3];`

### Tuple
   *  Arrays with a fixed number of elements, each of a known type.
   *  Example: `let x: [string, number]; x = ["hello", 10];`

### Enum
   *  A way of giving more friendly names to sets of numeric values.
   *  Example:
   ```typescript
   enum Color {Red, Green, Blue}
   let c: Color = Color.Green;
   ```

### Any
   *  Opt-out of type checking.
   *  Use sparingly to avoid losing the benefits of TypeScript.
   *  Example: `let notSure: any = 4;`

### Void
   *  Represents the absence of a value. Commonly used as the return type of functions that do not return a value.
   *  Example: `function warnUser(): void { console.log("This is my warning message"); }`

### Null and Undefined
   *  Types representing the absence of a value, similar to JavaScript.
   *  Example: `let u: undefined = undefined; let n: null = null;`

### Never
   * Represents values that never occur. Used for functions that always throw an exception or never return.
   * Example:
   ```typescript
   function error(message: string): never {
     throw new Error(message);
   }
   ```

### Object
   * Represents non-primitive types, i.e. anything that is not number, string, boolean, symbol, null, or undefined.

## Type Annotations and Inference

### Explicit Type Annotations
   *  Specifying the type of a variable explicitly.
   *  Example: `let myName: string = "Alice";`

### Type Inference
   *  TypeScript automatically infers the type of a variable based on its initial value.
   *  Example: `let age = 30;` (TypeScript infers `age` to be a `number`).

### Understanding When to Use Type Annotations
   *  When the type cannot be inferred.
   *  For function parameters and return types.
   *  To improve code clarity.

# III. Functions and Interfaces

## Defining Functions in TypeScript

### Function Declarations
   *  Specifying parameter types and return types.
   *  Example: `function add(x: number, y: number): number { return x + y; }`

### Function Expressions
   *  Defining functions as variables.
   *  Example: `let myAdd = function(x: number, y: number): number { return x + y; };`

### Optional and Default Parameters
   *  Making parameters optional using `?`.
   *  Example: `function buildName(firstName: string, lastName?: string): string { ... }`
   *  Providing default values for parameters.
   *  Example: `function buildName(firstName: string, lastName = "Smith"): string { ... }`

### Rest Parameters
   *  Allowing a function to accept a variable number of arguments.
   *  Example: `function buildName(firstName: string, ...restOfName: string[]): string { ... }`

### Function Overloads
   *  Defining multiple function signatures for the same function name.
   * Example:
   ```typescript
   function pickCard(x: {suit: string; card: number; }[]): number;
   function pickCard(x: number): {suit: string; card: number; };
   function pickCard(x): any {
     // ... implementation ...
   }
   ```

## Understanding Interfaces

### Defining Interfaces
   *  Creating contracts for objects.
   *  Example: `interface Person { firstName: string; lastName: string; }`

### Optional Properties
   *  Making properties optional using `?`.
   *  Example: `interface Person { firstName: string; lastName?: string; }`

### Readonly Properties
   *  Declaring properties that can only be set during object creation.
   *  Example: `interface Point { readonly x: number; readonly y: number; }`

### Function Types in Interfaces
   *  Describing the type of a function within an interface.
   *  Example: `interface StringArray { (index: number): string; }`

### Extending Interfaces
   *  Inheriting properties and methods from other interfaces.
   *  Example: `interface Shape { color: string; } interface Square extends Shape { sideLength: number; }`

### Hybrid Types
    * Objects that act as both an object and a function.

# IV. Classes and Inheritance

## Defining Classes in TypeScript

### Class Syntax
   *  Using the `class` keyword to define classes.
   *  Example: `class Animal { constructor(name: string) { ... } }`

### Class Properties and Methods
   *  Defining properties and methods within a class.
   *  Example: `class Animal { name: string; move(distanceInMeters: number = 0) { ... } }`

### Constructors
   *  Defining constructors to initialize class instances.
   *  Example: `class Animal { constructor(name: string) { this.name = name; } }`

### Access Modifiers (public, private, protected)
   *  Controlling the visibility of class members.
   *  `public`: Accessible from anywhere.
   *  `private`: Accessible only within the class.
   *  `protected`: Accessible within the class and its subclasses.

### Getters and Setters
   *  Controlling access to class properties.
   * Example:
   ```typescript
   class Employee {
     private _fullName: string;

     get fullName(): string {
       return this._fullName;
     }

     set fullName(newName: string) {
       this._fullName = newName;
     }
   }
   ```

## Inheritance

### Extending Classes
   *  Creating subclasses using the `extends` keyword.
   *  Example: `class Dog extends Animal { bark() { ... } }`

### Overriding Methods
   *  Providing a different implementation of a method in a subclass.
   *  Example: `class Dog extends Animal { move(distanceInMeters: number = 5) { ... } }`

### The `super` Keyword
   *  Calling the constructor or methods of the superclass.
   *  Example: `class Dog extends Animal { constructor(name: string) { super(name); } }`

### Abstract Classes and Methods
   *  Defining classes that cannot be instantiated directly.
   *  Defining abstract methods that must be implemented in subclasses.
   *  Example: `abstract class Animal { abstract makeSound(): void; }`

# V. Generics

## Understanding Generics

### Generic Functions
   *  Creating functions that can work with multiple types.
   *  Example: `function identity<T>(arg: T): T { return arg; }`

### Generic Interfaces
   *  Creating interfaces that can work with multiple types.
   *  Example: `interface GenericIdentityFn<T> { (arg: T): T; }`

### Generic Classes
   *  Creating classes that can work with multiple types.
   *  Example: `class GenericNumber<T> { zeroValue: T; add: (x: T, y: T) => T; }`

### Generic Constraints
   *  Limiting the types that can be used with a generic type parameter.
   *  Example: `function loggingIdentity<T extends { length: number }>(arg: T): T { ... }`

### Using Type Parameters in Generic Constraints
   *  Referencing type parameters in generic constraints.
   *  Example: `function getProperty<T, K extends keyof T>(obj: T, key: K): T[K] { ... }`

# VI. Modules

## Understanding Modules

### What are Modules?
   *  Organizing code into reusable units.
   *  Modules provide encapsulation and avoid global namespace pollution.

### Internal Modules (Namespaces)
   *  (Legacy) Grouping related code using namespaces.  Discouraged in modern TypeScript.
   *  Example: `namespace Shapes { export class Circle { ... } }`

### External Modules (ES Modules)
   *  Using `import` and `export` statements.
   *  Preferred method for organizing code in modern TypeScript.

## Exporting and Importing Modules

### Exporting Declarations
   *  Marking variables, functions, classes, interfaces, and type aliases as exportable.
   *  Example: `export const pi = 3.14; export function calculateArea(radius: number) { ... }`

### Importing Declarations
   *  Bringing in exported declarations from other modules.
   *  Example: `import { pi, calculateArea } from './math';`

### Default Exports
   *  Exporting a single default value from a module.
   *  Example: `export default class MyClass { ... }`

### Renaming Imports and Exports
   *  Using `as` to rename imported or exported declarations.
   *  Example: `import { calculateArea as area } from './math'; export { area as myArea };`

### Module Loaders and Bundlers (Webpack, Parcel, Rollup)
   *  Tools for bundling modules into optimized packages.
   *  Brief overview of configuring and using module bundlers.

# VII. Advanced Types

## Union and Intersection Types

### Union Types
    * Variables that can hold values of different types.
    * Example: `let val: string | number = 12;`

### Intersection Types
    * Combining multiple types into one.  The resulting type has all the properties of the combined types.
    * Example: `interface Colorful { color: string; } interface Circle { radius: number; } type ColorfulCircle = Colorful & Circle;`

## Type Aliases

### Creating Type Aliases
   *  Giving a new name to an existing type.
   *  Example: `type Point = { x: number; y: number; };`

### Using Type Aliases with Unions and Intersections
   *  Combining type aliases to create more complex types.
   *  Example: `type StringOrNumber = string | number;`

## Discriminated Unions

### Defining Discriminated Unions
   *  Creating union types where each member has a common, singleton type property (discriminant).
   * Example:
   ```typescript
   interface Square { kind: "square"; size: number; }
   interface Circle { kind: "circle"; radius: number; }
   type Shape = Square | Circle;
   ```

### Using Discriminated Unions with Type Guards
   *  Narrowing down the type of a variable based on its discriminant property.
   * Example:
   ```typescript
   function area(s: Shape) {
     switch (s.kind) {
       case "square": return s.size * s.size;
       case "circle": return Math.PI * s.radius ** 2;
     }
   }
   ```

## Conditional Types

### Understanding Conditional Types
    * Types that depend on a condition. Uses a ternary-like syntax.
    * `T extends U ? X : Y`

### Example Usage
    * Example:
    ```typescript
    type NonNullable<T> = T extends null | undefined ? never : T;
    type StringOnly<T> = T extends string ? T : never;
    ```

## Mapped Types

### Understanding Mapped Types
    * Creating new types based on existing ones by transforming each property.

### Example Usage
    * Example:
    ```typescript
    type Readonly<T> = { readonly [K in keyof T]: T[K] };
    type Partial<T> = { [K in keyof T]?: T[K] };
    type Required<T> = { [K in keyof T]-?: T[K] }; // Remove optional modifier
    type Pick<T, K extends keyof T> = { [P in K]: T[P] };
    type Record<K extends string | number | symbol, T> = { [P in K]: T };
    ```

# VIII. Decorators

## Introduction to Decorators

### What are Decorators?
   *  A way to add metadata or modify the behavior of classes, methods, properties, or parameters.
   *  Experimental feature in TypeScript.  Requires enabling in `tsconfig.json`: `"experimentalDecorators": true`

### Decorator Syntax
   *  Using the `@` symbol followed by the decorator name.
   *  Example: `@sealed class Greeter { ... }`

## Types of Decorators

### Class Decorators
   *  Applied to class constructors.
   * Example:
   ```typescript
   function sealed(constructor: Function) {
     Object.seal(constructor);
     Object.seal(constructor.prototype);
   }
   ```

### Method Decorators
   *  Applied to methods.
   * Example:
   ```typescript
   function log(target: any, propertyKey: string, descriptor: PropertyDescriptor) {
     const originalMethod = descriptor.value;
     descriptor.value = function (...args: any[]) {
       console.log("Calling:", propertyKey, args);
       const result = originalMethod.apply(this, args);
       console.log("Result:", result);
       return result;
     };
     return descriptor;
   }
   ```

### Property Decorators
   *  Applied to properties.
   * Example:
   ```typescript
   function readOnly(target: any, propertyKey: string) {
     Object.defineProperty(target, propertyKey, {
       writable: false,
     });
   }
   ```

### Parameter Decorators
   *  Applied to parameters in a function.
   * Example:
   ```typescript
   function required(target: Object, propertyKey: string | symbol, parameterIndex: number) {
       console.log(`Parameter ${String(propertyKey)} at index ${parameterIndex} is required`);
   }
   ```

# IX. Working with Libraries and Frameworks

## Using TypeScript with React

### Setting up a React Project with TypeScript
   *  Using Create React App with the TypeScript template: `npx create-react-app my-app --template typescript`

### Typing React Components
   *  Using interfaces and type aliases to define props and state.
   * Example:
   ```typescript
   interface Props { name: string; }
   const MyComponent: React.FC<Props> = ({ name }) => { ... };
   ```

### Using React Hooks with TypeScript
   *  Typing `useState`, `useEffect`, and other hooks.
   * Example:
   ```typescript
   const [count, setCount] = useState<number>(0);
   useEffect(() => { ... }, []);
   ```

## Using TypeScript with Node.js and Express

### Setting up a Node.js Project with TypeScript
   *  Creating a `package.json` file and installing TypeScript.
   *  Configuring the `tsconfig.json` file.

### Writing Express Routes with TypeScript
   *  Typing request and response objects.
   * Example:
   ```typescript
   app.get('/users/:id', (req: Request<{id: string}>, res: Response) => {
     const userId = req.params.id;
     // ...
   });
   ```

# X. Project-Based Learning

## Building a Simple Application Using TypeScript

### Choose a Project
   *  Example: A simple to-do list application, a calculator, or a basic API.

### Project Setup
   *  Set up the project directory and configure TypeScript.

### Implementing the Application
   *  Write the application logic using TypeScript.
   *  Apply the concepts learned throughout the course.

### Testing and Debugging
   *  Write unit tests for the application.
   *  Debug and fix any issues.

### Deployment
   *  Deploy the application to a hosting platform (e.g., Netlify, Heroku).
