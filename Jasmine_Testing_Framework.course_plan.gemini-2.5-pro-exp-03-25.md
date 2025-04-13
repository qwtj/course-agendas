# I. Introduction & Overview
"<Prompt> Provide a comprehensive introduction to the Jasmine testing framework. Cover its purpose as a Behavior-Driven Development (BDD) tool for JavaScript, its core philosophy, key features, and typical use cases. Define the learning objectives for this entire section (Section I). At the end of this section's content, include a concise summary of the main points, define the key term 'BDD' for a glossary, provide a link for further reading on BDD principles, and add a reflective prompt asking the learner about their prior testing experience. Start the response with a heading level 1 ('I. Introduction & Overview')."

## Understanding the Purpose, Philosophy, and Basic Structure
"<Prompt> Explain the fundamental purpose of Jasmine within the context of JavaScript development. Detail its underlying philosophy, specifically Behavior-Driven Development (BDD), and contrast it with traditional testing approaches. Briefly outline the basic structural components of a Jasmine test suite. Start the response with a heading level 2. Define the learning objective for this subsection."

### What is Jasmine?
"<Prompt> Define Jasmine clearly, specifying its role as a BDD testing framework for JavaScript. Explain that it is standalone and does not require other frameworks or a DOM. Start the response with a heading level 3. Define the term 'Framework' for a glossary."

### Philosophy (BDD)
"<Prompt> Elaborate on the Behavior-Driven Development (BDD) philosophy that Jasmine embodies. Explain how focusing on describing behavior leads to more readable and maintainable tests compared to solely testing implementation details. Start the response with a heading level 3. Provide a cross-reference to the 'Best Practices' section regarding descriptive naming. Link to an article explaining BDD in more detail."

### Key Features
"<Prompt> List and briefly describe the key features of Jasmine, such as its clean syntax, inclusion of necessary testing components ('batteries included'), lack of external dependencies for core functionality, built-in asynchronous testing support, and test doubles (spies). Start the response with a heading level 3. Highlight the 'batteries included' aspect as a key point."

### Use Cases
"<Prompt> Describe common scenarios and applications where Jasmine is effectively used. Include examples like unit testing individual functions or modules, integration testing interactions between components, testing front-end JavaScript code (often with a runner like Karma), and testing Node.js server-side applications. Start the response with a heading level 3."

# II. Installation & Setup
"<Prompt> Detail the various methods for installing and setting up the Jasmine framework in different development environments. Cover standalone usage, Node.js integration (NPM, CLI), integration with task runners (like Gulp/Grunt, mentioning their historical relevance), and usage with dedicated test runners like Karma. Define the learning objectives for this section (Section II). At the end of this section's content, include a concise summary, define 'NPM' and 'CLI' for the glossary, and provide a link to the official Jasmine installation guides. Add a reflective prompt asking the learner which setup method seems most relevant to their current projects. Start the response with a heading level 1 ('II. Installation & Setup')."

## Standalone Usage
"<Prompt> Explain how to use Jasmine's standalone distribution, which typically involves an HTML spec runner file. Start the response with a heading level 2. Define the learning objective for this subsection."

### Downloading Jasmine
"<Prompt> Describe the process of obtaining the standalone Jasmine distribution, usually as a zip file (e.g., `jasmine-standalone-x.y.z.zip`), from the official Jasmine releases page. Start the response with a heading level 3. Provide a direct link to the Jasmine releases page."

### SpecRunner.html
"<Prompt> Explain the structure and purpose of the `SpecRunner.html` file included in the standalone distribution. Detail how it loads Jasmine's core files, source files, and spec files, and how it configures the HTML reporter. Start the response with a heading level 3. Define 'Spec Runner' for the glossary."

### Including Source and Spec Files
"<Prompt> Instruct the learner on how to modify the `SpecRunner.html` (or reference it) to include their own application's source code files and the corresponding test (spec) files. Show example `<script>` tag usage. Start the response with a heading level 3."

## Node.js Integration
"<Prompt> Explain how to set up and use Jasmine for testing Node.js applications. Cover installation via NPM, initializing the Jasmine environment, and running tests using the command-line interface. Start the response with a heading level 2. Define the learning objective for this subsection."

### NPM Installation
"<Prompt> Provide the command for installing Jasmine as a development dependency using NPM: `npm install --save-dev jasmine`. Explain the significance of the `--save-dev` flag. Start the response with a heading level 3."

### Initialization
"<Prompt> Explain the purpose and usage of the Jasmine initialization command: `npx jasmine init`. Describe the configuration file (`spec/support/jasmine.json`) and helper/boot files it creates. Start the response with a heading level 3. Provide a cross-reference to the 'Configuration' section."

### Running Tests via CLI
"<Prompt> Show how to execute Jasmine tests from the command line using `npx jasmine`. Mention common command-line options (like specifying config files or running specific specs). Start the response with a heading level 3."

## Using with Task Runners/Build Tools
"<Prompt> Briefly explain how Jasmine can be integrated into automated workflows using task runners like Gulp or Grunt. Mention that while still possible, this is less common now compared to dedicated test runners or NPM scripts. Provide conceptual examples or links to relevant plugins (e.g., `gulp-jasmine`). Start the response with a heading level 2."

## Using with Test Runners (Karma)
"<Prompt> Describe how to set up and use Jasmine in conjunction with a test runner like Karma, which is particularly useful for running tests in actual browser environments. Start the response with a heading level 2. Define 'Test Runner' for the glossary."

### Karma Installation & Configuration
"<Prompt> Outline the steps for installing Karma and the necessary Karma-Jasmine adapter (`karma-jasmine`). Explain the basic structure of the Karma configuration file (`karma.conf.js`) and how to specify Jasmine as the testing framework. Start the response with a heading level 3. Provide example `karma.conf.js` snippets. Provide a link to the Karma documentation."

### Karma-Jasmine Adapter
"<Prompt> Explain the role of the `karma-jasmine` adapter in bridging Karma and the Jasmine framework, allowing Karma to execute Jasmine tests and report their results. Start the response with a heading level 3."

# III. Core Concepts
"<Prompt> Introduce the fundamental building blocks and syntax used in writing Jasmine tests. Cover Suites (`describe`), Specs (`it`), and Expectations (`expect`), including the anatomy of a simple test. Define the learning objectives for this section (Section III). At the end of this section's content, include a concise summary, define 'Suite', 'Spec', and 'Expectation' for the glossary, provide links to the relevant official documentation pages, and create a short quiz assessing understanding of `describe`, `it`, and `expect`. Start the response with a heading level 1 ('III. Core Concepts')."

## Suites (`describe`)
"<Prompt> Explain the `describe` function in Jasmine. Detail its purpose for grouping related test cases (specs) into logical suites. Discuss how `describe` blocks help organize the test structure. Start the response with a heading level 2. Define the learning objective for this subsection."

### Nested Suites
"<Prompt> Explain that `describe` blocks can be nested within each other to create a hierarchical structure for tests, improving organization and readability for complex components or features. Provide a code example illustrating nested `describe` blocks. Start the response with a heading level 3."

## Specs (`it`)
"<Prompt> Explain the `it` function in Jasmine. Describe its role in defining an individual test case, often corresponding to a specific requirement or behavior of the code under test. Emphasize that the string argument to `it` should describe the expected behavior. Start the response with a heading level 2. Define the learning objective for this subsection."

## Expectations (`expect`)
"<Prompt> Explain the `expect` function, which is used to create assertions about the code being tested. Clarify that `expect` takes the actual value produced by the code and is always chained with a Matcher function to perform the comparison against an expected value. Start the response with a heading level 2. Define 'Assertion' for the glossary and provide a cross-reference to the 'Matchers' section (Section IV)."

## Anatomy of a Simple Test
"<Prompt> Present a complete, simple code example of a Jasmine test, incorporating `describe`, `it`, and `expect` with a basic matcher (like `toBe`). Break down the example step-by-step to illustrate how the core components work together. Start the response with a heading level 2. Use Markdown code blocks for the example:

```javascript
describe(\"MyComponent\", () => {
  it(\"should return true when condition is met\", () => {
    const myComponent = new MyComponent();
    const result = myComponent.someMethod(true);
    expect(result).toBe(true); // Expectation: result should be strictly true
  });
});
```
"

# IV. Matchers
"<Prompt> Provide a detailed explanation of Jasmine Matchers, the functions used with `expect` to perform various types of assertions. Cover the common built-in matchers, how to negate matchers using `.not`, and the concept of creating custom matchers. Define the learning objectives for this section (Section IV). At the end of this section's content, include a concise summary, define 'Matcher' and 'Truthiness' for the glossary, link to the official Matchers documentation, and add a reflective prompt asking the learner which matchers they anticipate using most often. Start the response with a heading level 1 ('IV. Matchers')."

## Built-in Matchers
"<Prompt> Introduce the set of matchers that come standard with Jasmine. Explain their purpose is to handle the most common assertion needs in tests. Start the response with a heading level 2. Define the learning objective for this subsection."

### `toBe()`
"<Prompt> Explain the `toBe()` matcher, used for strict equality comparison (`===`). Provide examples differentiating it from `toEqual()`. Start the response with a heading level 3."

### `toEqual()`
"<Prompt> Explain the `toEqual()` matcher, used for deep equality comparison, suitable for objects and arrays. Provide examples comparing object contents. Start the response with a heading level 3."

### `toBeTruthy()` / `toBeFalsy()`
"<Prompt> Explain the `toBeTruthy()` and `toBeFalsy()` matchers, used to check if a value is considered true or false in a boolean context (truthy/falsy). Provide examples of truthy and falsy values. Start the response with a heading level 3."

### `toBeDefined()` / `toBeUndefined()`
"<Prompt> Explain the `toBeDefined()` and `toBeUndefined()` matchers, used to check if a variable or property has been assigned a value (is not `undefined`). Start the response with a heading level 3."

### `toBeNull()`
"<Prompt> Explain the `toBeNull()` matcher, used specifically to check if a value is `null`. Start the response with a heading level 3."

### `toContain()`
"<Prompt> Explain the `toContain()` matcher, used to check if an array contains a specific element or if a string contains a specific substring. Provide examples for both arrays and strings. Start the response with a heading level 3."

### `toBeCloseTo()`
"<Prompt> Explain the `toBeCloseTo()` matcher, designed for comparing floating-point numbers. Describe how it requires a precision argument to account for potential floating-point inaccuracies. Provide examples. Start the response with a heading level 3."

### `toMatch()`
"<Prompt> Explain the `toMatch()` matcher, used for matching strings against regular expressions or other substrings. Provide examples using both regex and string patterns. Start the response with a heading level 3."

### `toThrow()` / `toThrowError()`
"<Prompt> Explain the `toThrow()` and `toThrowError()` matchers, used to assert that a function throws an error when executed. Show how to wrap the function call within `expect(() => { /* function call */ }).toThrow()`. Explain how `toThrowError()` can check for specific error types or messages. Start the response with a heading level 3."

### `anything()`
"<Prompt> Explain the `jasmine.anything()` matcher, used as a placeholder that matches any value except `null` or `undefined`. Mention its utility in `toEqual` or spy argument checking when the exact value isn't important. Start the response with a heading level 3."

### `any(Constructor)`
"<Prompt> Explain the `jasmine.any(Constructor)` matcher, used to check if a value is an instance of a specific constructor (e.g., `jasmine.any(String)`, `jasmine.any(Number)`, `jasmine.any(MyClass)`). Start the response with a heading level 3."

### `objectContaining(sample)`
"<Prompt> Explain the `jasmine.objectContaining(sample)` matcher, used within `toEqual` or spy argument checks to assert that an object contains at least the specified key-value pairs. Mention that extra properties on the actual object are ignored. Start the response with a heading level 3."

### `arrayContaining(sample)`
"<Prompt> Explain the `jasmine.arrayContaining(sample)` matcher, used within `toEqual` or spy argument checks to assert that an array contains specific elements, regardless of order or extra elements. Start the response with a heading level 3."

### `stringMatching(pattern)`
"<Prompt> Explain the `jasmine.stringMatching(pattern)` matcher, used within `toEqual` or spy argument checks to assert that a string value matches a given regular expression or substring. Start the response with a heading level 3."

## Negating Matchers (`.not`)
"<Prompt> Explain the `.not` property available on the value returned by `expect()`. Describe how it can be chained before any matcher to assert the opposite condition (e.g., `expect(value).not.toBe(null)`). Provide examples. Start the response with a heading level 2."

## Custom Matchers
"<Prompt> Introduce the concept of custom matchers in Jasmine. Explain why you might need custom matchers (e.g., reusable complex assertions, domain-specific language) and how they enhance test readability and maintainability. Start the response with a heading level 2. Define the learning objective for this subsection."

### Defining Custom Matchers
"<Prompt> Explain the process of creating and registering custom matchers using `jasmine.addMatchers()`. Show the structure of a matcher factory function and the `compare` function it must return. Provide a simple example of a custom matcher (e.g., `toBePositiveNumber`). Start the response with a heading level 3. Define 'Matcher Factory' for the glossary. Link to the relevant section in the official Jasmine documentation."

### Matcher Factories
"<Prompt> Elaborate on the concept of matcher factories as functions that return the actual matcher implementation. Explain how this allows for potential setup or configuration when the matcher is defined. Start the response with a heading level 3."

### Asynchronous Custom Matchers
"<Prompt> Briefly introduce the capability to create custom matchers that handle asynchronous operations, although this is an advanced topic. Mention that the `compare` function can return a Promise. Start the response with a heading level 3. Provide a link to documentation or examples if available."

# V. Setup & Teardown
"<Prompt> Explain the setup and teardown functions (`beforeEach`, `afterEach`, `beforeAll`, `afterAll`) provided by Jasmine, often referred to as lifecycle hooks or fixtures. Discuss their purpose in executing common code before or after specs and suites, their scope, execution order, and how to manage shared context using `this`. Define the learning objectives for this section (Section V). At the end of this section's content, include a concise summary, define 'Setup', 'Teardown', and 'Scope' for the glossary, link to the relevant documentation, and provide a reflective prompt about potential use cases for `beforeAll` vs. `beforeEach`. Start the response with a heading level 1 ('V. Setup & Teardown')."

## `beforeEach()`
"<Prompt> Explain the `beforeEach()` function. Detail that it runs before every `it` block within the `describe` block where it is defined. Emphasize its common use for setting up preconditions or resetting state for each individual test. Provide a code example. Start the response with a heading level 2."

## `afterEach()`
"<Prompt> Explain the `afterEach()` function. Detail that it runs after every `it` block within the `describe` block where it is defined. Emphasize its common use for cleaning up resources or state modified during a test to ensure test isolation. Provide a code example. Start the response with a heading level 2."

## `beforeAll()`
"<Prompt> Explain the `beforeAll()` function. Detail that it runs only once, before any `it` block or `beforeEach` within the `describe` block where it is defined. Discuss its use cases, such as expensive setup operations (e.g., database connections) that only need to happen once per suite. Caution about potential state leakage if not managed carefully. Provide a code example. Start the response with a heading level 2."

## `afterAll()`
"<Prompt> Explain the `afterAll()` function. Detail that it runs only once, after all `it` blocks and `afterEach` calls within the `describe` block where it is defined. Discuss its use cases, such as releasing resources acquired in `beforeAll`. Provide a code example. Start the response with a heading level 2."

## Scope
"<Prompt> Explain how the setup and teardown functions (`beforeEach`, `afterEach`, `beforeAll`, `afterAll`) are scoped to the `describe` block in which they are defined. Describe the execution order when these functions are used within nested `describe` blocks (outermost `beforeAll`, outer `beforeEach`, inner `beforeEach`, `it`, inner `afterEach`, outer `afterEach`, outermost `afterAll`). Use a diagram or illustrative code example. Start the response with a heading level 2."

## `this` Context
"<Prompt> Explain how variables or state can be shared between `beforeEach`, `it`, and `afterEach` functions within the same `describe` scope by assigning them to the `this` keyword. Provide a code example demonstrating setting a value in `beforeEach` and accessing it in `it`. Caution against overusing `this` for complex state management. Start the response with a heading level 2."

# VI. Test Doubles (Spies)
"<Prompt> Introduce the concept of Test Doubles, focusing on Jasmine's implementation: Spies. Explain why test doubles are crucial for isolating the code under test by replacing real dependencies with controlled fakes. Cover creating spies (`spyOn`), inspecting spy calls, stubbing methods using spies, creating standalone spies (`jasmine.createSpy`), spying on constructors, and creating spy objects (`jasmine.createSpyObj`). Define the learning objectives for this section (Section VI). At the end of this section's content, provide a concise summary, define 'Test Double', 'Spy', 'Stub', and 'Mock' (briefly differentiating them) for the glossary, link to the official Spies documentation, and create a quiz assessing understanding of `spyOn`, `.calls`, and stubbing methods like `.and.returnValue()`. Start the response with a heading level 1 ('VI. Test Doubles (Spies)')."

## Introduction to Test Doubles
"<Prompt> Provide a general introduction to the concept of test doubles in software testing. Briefly define related terms like Stubs, Spies, and Mocks, highlighting their purpose in achieving test isolation by replacing dependencies. Clarify that Jasmine's primary mechanism for this is called a 'Spy', which has both spying (tracking calls) and stubbing capabilities. Start the response with a heading level 2. Define the learning objective for this subsection."

## Creating Spies (`spyOn`)
"<Prompt> Explain the `spyOn(object, 'methodName')` function in Jasmine. Describe how it replaces an existing method on a real object with a spy. Emphasize that the original method is not called by default unless `.and.callThrough()` is used. Start the response with a heading level 2. Define the learning objective for this subsection."

### `spyOn(object, 'methodName')`
"<Prompt> Provide a detailed code example of using `spyOn(object, 'methodName')` to intercept calls to a method on an object instance. Show a basic test setup where a dependency's method is spied upon before the code under test is executed. Start the response with a heading level 3."

## Spy Properties & Methods
"<Prompt> Detail the properties and methods available on a Jasmine spy object that allow inspection of how the spied-upon method was called. Explain how these are used within `expect` calls to make assertions about the interactions. Start the response with a heading level 2. Define the learning objective for this subsection."

### `.calls.count()`
"<Prompt> Explain the `spy.calls.count()` property. Describe how it returns the number of times the spied-upon method was invoked. Provide an example assertion: `expect(mySpy.calls.count()).toBe(1);`. Start the response with a heading level 3."

### `.calls.argsFor(index)`
"<Prompt> Explain the `spy.calls.argsFor(index)` method. Describe how it returns an array of arguments passed to the spy for a specific call (zero-indexed). Provide an example assertion: `expect(mySpy.calls.argsFor(0)).toEqual(['arg1', 'arg2']);`. Start the response with a heading level 3."

### `.calls.mostRecent()`
"<Prompt> Explain the `spy.calls.mostRecent()` method. Describe how it returns an object containing details about the most recent invocation, including the arguments (`args`) and the context (`object`). Provide an example assertion: `expect(mySpy.calls.mostRecent().args).toEqual(['latestArg']);`. Start the response with a heading level 3."

### `.calls.allArgs()`
"<Prompt> Explain the `spy.calls.allArgs()` method. Describe how it returns an array containing the argument lists for all calls made to the spy. Provide an example assertion: `expect(mySpy.calls.allArgs()).toEqual([['call1Arg'], ['call2Arg']]);`. Start the response with a heading level 3."

### `.calls.reset()`
"<Prompt> Explain the `spy.calls.reset()` method. Describe its use for clearing all tracking information (call count, arguments, etc.) stored on the spy. Mention its utility in `beforeEach` or `afterEach` for specific scenarios, though often spies are recreated per test. Start the response with a heading level 3."

## Stubbing Methods with Spies
"<Prompt> Explain how Jasmine spies can be configured to control the behavior of the spied-upon method, essentially acting as stubs. Cover the various `.and` methods used for defining return values, faking implementations, or throwing errors. Start the response with a heading level 2. Define the learning objective for this subsection."

### `.and.returnValue(value)`
"<Prompt> Explain the `.and.returnValue(value)` spy strategy. Describe how it makes the spy return a specific, fixed value whenever it's called. Provide a code example. Start the response with a heading level 3."

### `.and.returnValues(val1, val2, ...)`
"<Prompt> Explain the `.and.returnValues(val1, val2, ...)` spy strategy. Describe how it makes the spy return different specified values on successive calls. Provide a code example. Start the response with a heading level 3."

### `.and.callFake(function)`
"<Prompt> Explain the `.and.callFake(function)` spy strategy. Describe how it allows providing a custom function implementation that will be executed when the spy is called. Provide a code example where the fake function performs some logic or returns a dynamic value. Start the response with a heading level 3."

### `.and.callThrough()`
"<Prompt> Explain the `.and.callThrough()` spy strategy. Describe how it makes the spy track calls *and* execute the original underlying method it replaced. Mention its use when you need both tracking and the real method's behavior. Provide a code example. Start the response with a heading level 3."

### `.and.throwError(message)`
"<Prompt> Explain the `.and.throwError(message)` spy strategy. Describe how it makes the spy throw an error with the specified message whenever it's called. Provide a code example. Start the response with a heading level 3."

### `.and.stub()`
"<Prompt> Explain the `.and.stub()` spy strategy. Describe how it makes the spy return `undefined` and do nothing (which is the default behavior of `spyOn` if no `.and` strategy is chained). Clarify its use for explicitly stating the spy should do nothing. Start the response with a heading level 3."

## Standalone Spies (`jasmine.createSpy`)
"<Prompt> Explain the `jasmine.createSpy(name?)` function. Describe its purpose for creating a 'bare' spy function that is not attached to any object's method. Explain its usefulness for testing scenarios involving callbacks or functions passed as dependencies. Provide a code example where `jasmine.createSpy` is used for a callback function. Start the response with a heading level 2."

## Spying on Constructors
"<Prompt> Briefly discuss the challenges and techniques involved in spying on class constructors in JavaScript using Jasmine. Mention that this often involves spying on the prototype or using module mocking techniques (especially in Node.js environments with tools like Jest, or potentially more complex setups in pure Jasmine). Note this as an advanced technique. Start the response with a heading level 2. Provide a link to external resources discussing constructor spying."

## Spy Objects (`jasmine.createSpyObj`)
"<Prompt> Explain the `jasmine.createSpyObj(baseName, methodNames)` function. Describe its utility as a convenient way to create a mock object with multiple methods already spied upon. Show the two primary ways to use it: providing an array of method names, or providing an object mapping method names to return values or fake implementations for simultaneous stubbing. Start the response with a heading level 2."

### `jasmine.createSpyObj('name', ['method1', 'method2'])`
"<Prompt> Provide a code example using `jasmine.createSpyObj` with an array of method names to create an object where each method is a basic spy. Start the response with a heading level 3."

### `jasmine.createSpyObj('name', { method1: returnValue, method2: fakeFunction })`
"<Prompt> Provide a code example using `jasmine.createSpyObj` with a configuration object to create an object where methods are spied upon and simultaneously stubbed with return values or fake implementations. Start the response with a heading level 3."

# VII. Asynchronous Testing
"<Prompt> Explain how Jasmine handles asynchronous operations within tests. Cover the default timeout interval, the traditional callback-based approach using the `done` function, the modern Promise-based approach (including `async/await`), and techniques for testing time-dependent code using Jasmine's mock clock. Define the learning objectives for this section (Section VII). At the end of this section's content, provide a concise summary, define 'Asynchronous', 'Callback', 'Promise', and 'Async/Await' for the glossary, link to the official Asynchronous Support documentation, and create a quiz covering the `done` callback and returning Promises. Start the response with a heading level 1 ('VII. Asynchronous Testing')."

## Default Timeout Interval
"<Prompt> Explain the concept of `jasmine.DEFAULT_TIMEOUT_INTERVAL`. Describe its purpose in preventing tests involving asynchronous operations from hanging indefinitely. Show how to potentially adjust this value globally if needed, but caution against setting it too high without reason. Start the response with a heading level 2."

## Callback-based Asynchronous Specs (`done` function)
"<Prompt> Explain the traditional mechanism for handling asynchronous tests in Jasmine using the special `done` callback. Describe how to signal asynchronous completion or failure. Start the response with a heading level 2. Define the learning objective for this subsection."

### Passing `done` to `it`, `beforeEach`, `afterEach`, `beforeAll`, `afterAll`
"<Prompt> Show how to declare that a spec or hook (`it`, `beforeEach`, etc.) is asynchronous by accepting a single argument, conventionally named `done`. Provide code examples for `it(..., (done) => { ... });`. Start the response with a heading level 3."

### Calling `done()`
"<Prompt> Emphasize the critical importance of calling the `done()` function exactly once within the asynchronous callback (e.g., `setTimeout` callback, event handler) to signal to Jasmine that the asynchronous operation has completed successfully. Explain what happens if `done()` is not called (timeout). Provide a code example using `setTimeout`. Start the response with a heading level 3."

### Calling `done.fail()`
"<Prompt> Explain the `done.fail(message?)` method. Describe its use for explicitly failing an asynchronous spec, typically within error handling logic of the asynchronous operation. Provide a code example. Start the response with a heading level 3."

## Promise-based Asynchronous Specs
"<Prompt> Explain Jasmine's built-in support for testing asynchronous code that returns Promises. Clarify that Jasmine automatically waits for a returned Promise to resolve or reject. Mention this is often preferred over the `done` callback for Promise-based code. Start the response with a heading level 2. Define the learning objective for this subsection."

### Returning Promises from Specs/Hooks
"<Prompt> Show code examples where an `it` block or a hook (`beforeEach`, etc.) returns a Promise. Explain that Jasmine will wait for this Promise to settle before proceeding. Include examples with `.then()` and `.catch()` or assertions chained to the promise. Start the response with a heading level 3."

### Using `async/await`
"<Prompt> Introduce the `async/await` syntax as a modern and often more readable way to handle Promise-based asynchronous code within Jasmine tests. Show how to declare a spec or hook function as `async` and use `await` to pause execution until a Promise settles. Provide equivalent code examples using `async/await` compared to `.then()`.
 Start the response with a heading level 3. Highlight `async/await` as a best practice for clarity when working with Promises."

## Testing Time-dependent Code
"<Prompt> Explain how to test code that relies on time-based functions like `setTimeout`, `setInterval`, or `new Date()` using Jasmine's built-in mock clock. Start the response with a heading level 2. Define the learning objective for this subsection."

### `jasmine.clock().install()`
"<Prompt> Explain the `jasmine.clock().install()` method. Describe how it replaces the native timer functions (`setTimeout`, `setInterval`) and the `Date` constructor with Jasmine's mock implementations. Mention it's typically called in a `beforeEach`. Start the response with a heading level 3."

### `jasmine.clock().uninstall()`
"<Prompt> Explain the `jasmine.clock().uninstall()` method. Describe how it restores the original native timer functions and `Date` constructor. Mention it's typically called in an `afterEach` to ensure cleanup and avoid affecting other tests. Start the response with a heading level 3."

### `jasmine.clock().tick(milliseconds)`
"<Prompt> Explain the `jasmine.clock().tick(milliseconds)` method. Describe how it manually advances the mock clock by the specified number of milliseconds, synchronously triggering any `setTimeout` or `setInterval` callbacks scheduled during that period. Provide a code example testing a `setTimeout` callback. Start the response with a heading level 3."

### `jasmine.clock().mockDate(date)`
"<Prompt> Explain the `jasmine.clock().mockDate(date?)` method. Describe how it allows setting a specific point in time for the mock clock, affecting subsequent calls to `new Date()`. Mention its use for creating predictable date/time conditions in tests. Start the response with a heading level 3."

# VIII. Running Tests & Reporters
"<Prompt> Describe the various ways Jasmine tests can be executed and how the results can be reported or displayed. Cover the standalone HTML runner, the command-line interface for Node.js, execution via test runners like Karma, built-in console and HTML reporters, and the concept of creating custom reporters. Define the learning objectives for this section (Section VIII). At the end of this section's content, provide a concise summary, define 'Reporter' and 'CI (Continuous Integration)' for the glossary, link to documentation on reporters, and add a reflective prompt about the pros and cons of HTML vs. console reporters. Start the response with a heading level 1 ('VIII. Running Tests & Reporters')."

## Standalone HTML Runner
"<Prompt> Revisit the `SpecRunner.html` used in the standalone setup. Explain its role not just in loading files but also in executing the tests and displaying results using the built-in HTML reporter directly in a web browser. Start the response with a heading level 2."

## Command Line Interface (CLI)
"<Prompt> Discuss running Jasmine tests via the `jasmine` or `npx jasmine` command in Node.js environments. Mention that this typically uses a built-in console reporter to output results directly to the terminal. Start the response with a heading level 2. Provide a cross-reference back to the Node.js setup subsection."

## Test Runners (Karma, etc.)
"<Prompt> Explain that dedicated test runners like Karma provide more sophisticated environments for running Jasmine tests, especially for cross-browser testing. Mention that these runners often manage the execution process and integrate with Jasmine's reporting system or provide their own reporters. Start the response with a heading level 2. Provide a cross-reference back to the Karma setup subsection."

## Built-in Reporters
"<Prompt> Describe the default reporters provided by Jasmine for common environments. Start the response with a heading level 2."

### Console Reporter (Node.js)
"<Prompt> Describe the typical output format of the default console reporter used in Node.js environments (via the CLI). Mention the summary of passed/failed specs, timings, and details of failures. Start the response with a heading level 3."

### HTML Reporter (Standalone)
"<Prompt> Describe the visual feedback provided by the default HTML reporter used in the `SpecRunner.html`. Mention features like clickable suite/spec names, pass/fail status indicators (green/red), failure messages, and stack traces. Start the response with a heading level 3."

## Custom Reporters
"<Prompt> Introduce the concept of custom reporters in Jasmine. Explain their purpose in allowing developers to process test results in specific ways, such as generating custom log files, outputting results in formats suitable for Continuous Integration (CI) systems (like JUnit XML), or integrating with other tools. Start the response with a heading level 2. Define the learning objective for this subsection."

### Reporter API
"<Prompt> Explain how custom reporters are implemented by creating an object that conforms to Jasmine's reporter interface (implementing methods like `jasmineStarted`, `suiteStarted`, `specStarted`, `specDone`, `suiteDone`, `jasmineDone`). Show how to register a custom reporter using `jasmine.getEnv().addReporter(myReporter);`. Start the response with a heading level 3. Link to the official Jasmine documentation detailing the Reporter API."

### Example Custom Reporters
"<Prompt> Briefly mention common use cases for custom reporters, such as generating JUnit XML output for Jenkins or other CI servers, or creating highly customized logging formats. Provide links to popular third-party reporter libraries or examples if available. Start the response with a heading level 3."

# IX. Configuration
"<Prompt> Explain how to configure Jasmine's behavior, primarily focusing on the `jasmine.json` file used by the Node.js CLI runner. Cover key configuration options like specifying spec directories, file patterns, helper files, pre-required modules, failure behavior, and randomization. Also, briefly touch upon programmatic configuration and environment variables. Define the learning objectives for this section (Section IX). At the end of this section's content, provide a concise summary, define 'Glob Pattern' for the glossary, link to the official configuration documentation, and add a reflective prompt asking the learner about the benefits of randomizing test order. Start the response with a heading level 1 ('IX. Configuration')."

## `jasmine.json` (Node.js)
"<Prompt> Introduce the `jasmine.json` file as the standard way to configure the Jasmine CLI runner in Node.js projects. Explain its location (usually `spec/support/jasmine.json`) and its JSON format. Start the response with a heading level 2."

### `spec_dir`
"<Prompt> Explain the `spec_dir` property in `jasmine.json`. Describe its purpose in specifying the root directory where Jasmine should look for spec files. Provide the default value (usually `spec`). Start the response with a heading level 3."

### `spec_files`
"<Prompt> Explain the `spec_files` property in `jasmine.json`. Describe how it uses an array of glob patterns to identify which files within `spec_dir` (and its subdirectories) should be treated as test files. Provide common examples like `**/*[sS]pec.js` or `**/*.test.js`. Start the response with a heading level 3."

### `helpers`
"<Prompt> Explain the `helpers` property in `jasmine.json`. Describe how it specifies an array of glob patterns for files that should be executed *before* the spec files. Mention common uses like setting up custom matchers, global `beforeEach` hooks, or other test environment preparations. Start the response with a heading level 3."

### `requires`
"<Prompt> Explain the `requires` property in `jasmine.json`. Describe how it specifies an array of Node.js modules that should be `require`d before specs and helpers are run. Mention use cases like preloading polyfills or instrumentation libraries. Start the response with a heading level 3."

### `stopSpecOnExpectationFailure`
"<Prompt> Explain the `stopSpecOnExpectationFailure` boolean property in `jasmine.json`. Describe how setting it to `true` causes a spec (`it` block) to stop execution immediately after the first expectation failure, potentially speeding up feedback during debugging. Start the response with a heading level 3."

### `random`
"<Prompt> Explain the `random` boolean property in `jasmine.json`. Describe how setting it to `true` causes Jasmine to run the specs in a random order. Emphasize its importance in detecting and preventing dependencies between tests (order-dependent failures). Start the response with a heading level 3. Highlight test randomization as a best practice."

## Configuring via Jasmine Core (Standalone/Custom Runners)
"<Prompt> Briefly explain that when not using the standard CLI runner (e.g., in standalone mode or with custom test runners), Jasmine's environment can often be configured programmatically using methods like `jasmine.getEnv().configure({ ... })` or by loading configuration objects before execution starts. Provide a conceptual example or link to relevant API documentation. Start the response with a heading level 2."

## Environment Variables
"<Prompt> Mention that some Jasmine configurations (especially in CLI or CI environments) might be influenced or overridden by environment variables (e.g., `JASMINE_CONFIG_PATH`). Advise checking documentation specific to the execution environment (CLI, specific runners). Start the response with a heading level 2."

# X. Advanced Features
"<Prompt> Explore more specialized and advanced features provided by Jasmine that aid in debugging, test management, and handling complex scenarios. Cover focused specs (`fit`, `fdescribe`), pending specs (`xit`, `xdescribe`, `pending()`), custom equality testers, strategies for tagging/filtering (mentioning runner dependency), configuring timeouts, and spying on properties. Include subsections for Performance Optimization and Improving Techniques based on the initial request. Define the learning objectives for this section (Section X). At the end of this section's content, provide a concise summary, define 'Focused Spec', 'Pending Spec', and 'Equality Tester' for the glossary, link to relevant documentation, and add a reflective prompt about when to use `fit`/`fdescribe` vs. commenting out tests. Start the response with a heading level 1 ('X. Advanced Features')."

## Focused Specs (`fit`, `fdescribe`)
"<Prompt> Explain the `fit` (focused it) and `fdescribe` (focused describe) functions. Describe how prefixing `it` or `describe` with `f` instructs Jasmine (or the runner) to execute only those specific specs or suites. **Crucially, emphasize that these are temporary debugging tools and must be removed before committing code.** Start the response with a heading level 2."

## Pending Specs (`xit`, `xdescribe`)
"<Prompt> Explain the `xit` (pending it) and `xdescribe` (pending describe) functions. Describe how prefixing `it` or `describe` with `x` marks them as pending, causing them to be skipped during execution and typically reported as such. Also, introduce the `pending('reason')` function call within a spec as another way to mark it pending. Start the response with a heading level 2."

### `pending('reason')`
"<Prompt> Explain the `pending('reason')` function. Show how calling it within an `it` block (or setup/teardown) immediately stops the spec's execution and marks it as pending, optionally including the reason string in the test report. Start the response with a heading level 3."

## Custom Equality Testers
"<Prompt> Explain the purpose of custom equality testers in Jasmine. Describe scenarios where the default `toEqual` deep comparison might be insufficient or incorrect for specific object types (e.g., comparing objects with private fields, comparing DOM nodes, custom data structures). Start the response with a heading level 2."

### `jasmine.addCustomEqualityTester(testerFn)`
"<Prompt> Explain how to register a custom equality tester function using `jasmine.addCustomEqualityTester()`. Describe the signature of the `testerFn(a, b)` which should return `true` if the objects are considered equal, `false` if not, and `undefined` if the tester doesn't apply to the given types (allowing other testers or the default logic to proceed). Provide a simple conceptual example. Start the response with a heading level 3. Link to the relevant official documentation."

## Tagging/Filtering Specs (via custom implementation or runners)
"<Prompt> Discuss strategies for tagging specs with metadata (e.g., 'smoke', 'regression', 'slow') and filtering test runs based on these tags. Acknowledge that Jasmine core doesn't have built-in tagging/filtering commands, but explain that this is often achieved through naming conventions, custom helper logic, or features provided by test runners like Karma or specific CLI options/plugins. Start the response with a heading level 2."

## Jasmine Timeouts
"<Prompt> Revisit asynchronous timeouts, explaining how they can be configured more granularly. Start the response with a heading level 2."

### `it('...', function() { ... }, timeoutInMillis)`
"<Prompt> Explain how to override the default timeout for a single asynchronous spec (`it` block) by providing an optional third argument: the timeout duration in milliseconds. Provide a code example. Start the response with a heading level 3."

### `jasmine.DEFAULT_TIMEOUT_INTERVAL`
"<Prompt> Remind the learner about the global `jasmine.DEFAULT_TIMEOUT_INTERVAL` property for setting the default timeout for all asynchronous specs, typically configured during setup. Provide a cross-reference back to the Asynchronous Testing section. Start the response with a heading level 3."

## Spying on Properties (Getters/Setters)
"<Prompt> Explain the `spyOnProperty(obj, 'propertyName', 'accessType')` function. Describe its use for spying on object properties defined with getters or setters. Clarify that `accessType` must be specified as either `'get'` or `'set'`. Provide code examples for spying on both a getter and a setter. Mention that stubbing is also possible using `.and.returnValue()` (for getters) or `.and.callFake()` (for setters). Start the response with a heading level 2."

## Performance Optimization
"<Prompt> Discuss strategies and techniques for improving the performance of Jasmine test suites. Cover identifying slow tests (potentially using custom reporters or runner features), optimizing expensive `beforeAll`/`beforeEach` setup, minimizing redundant operations, and ensuring efficient cleanup in `afterAll`/`afterEach`. Start the response with a heading level 2."

### Benchmarking and Profiling Tests
"<Prompt> Introduce basic concepts of benchmarking or profiling Jasmine tests to identify bottlenecks. Mention the use of simple `console.time`/`console.timeEnd` or more sophisticated profiling tools and techniques, possibly integrated via custom reporters or test runners. Provide links to articles or tools related to JavaScript test performance analysis. Start the response with a heading level 3."

## Improving Techniques
"<Prompt> Discuss general approaches for writing more effective and robust Jasmine tests beyond basic syntax. Cover techniques like data-driven testing (parameterizing tests with different inputs), using helper functions to abstract common setup or assertion logic, and structuring tests for maximum clarity and maintainability. Start the response with a heading level 2."

# XI. Integration & Ecosystem
"<Prompt> Explore how Jasmine integrates with other tools, frameworks, and concepts within the broader JavaScript testing ecosystem. Cover its use with Karma for browser testing, its historical significance with Protractor for E2E testing (especially Angular), its role in Node.js backend testing, strategies for testing frontend framework components (React, Angular, Vue), and integrating code coverage tools. Define the learning objectives for this section (Section XI). At the end of this section's content, provide a concise summary, define 'E2E Testing', 'Code Coverage', and 'Istanbul' for the glossary, link to resources on testing specific frontend frameworks with Jasmine (if available), and add a reflective prompt about the importance of code coverage metrics. Start the response with a heading level 1 ('XI. Integration & Ecosystem')."

## Karma
"<Prompt> Reiterate the role of Karma as a popular test runner frequently used with Jasmine. Emphasize its strengths in automating test execution across multiple real browsers, handling file watching, and integrating various reporters (including coverage). Provide a cross-reference to the Karma setup section. Start the response with a heading level 2."

## Protractor (E2E Testing - Historically significant)
"<Prompt> Explain the historical context of Protractor as an end-to-end (E2E) testing framework, particularly prominent in the Angular ecosystem. Mention that Jasmine was its default assertion framework. Note Protractor's declining usage/deprecation status but acknowledge its significance in the history of JavaScript E2E testing. Start the response with a heading level 2."

## Node.js Testing
"<Prompt> Reiterate that Jasmine is well-suited for testing backend Node.js applications using the `jasmine` NPM package and CLI runner. Mention common scenarios like testing API endpoints (often involving libraries like `supertest`), business logic modules, and database interactions (using test doubles). Provide a cross-reference to the Node.js setup section. Start the response with a heading level 2."

## Integration with Frontend Frameworks (React, Angular, Vue, etc.)
"<Prompt> Discuss general strategies and considerations when using Jasmine to test components built with modern frontend frameworks like React, Angular, or Vue. Mention that while Jasmine provides the core assertion and test structure, additional libraries or framework-specific testing utilities (e.g., Angular's `TestBed`, React Testing Library, Vue Test Utils) are often required for rendering components, simulating events, and querying the DOM within tests. Start the response with a heading level 2."

## Code Coverage
"<Prompt> Explain the concept of code coverage as a metric indicating which lines of application code are exercised by the test suite. Introduce common tools like Istanbul (often used via its command-line interface, `nyc`). Start the response with a heading level 2."

### Integrating Coverage Tools (Istanbul/NYC)
"<Prompt> Explain that code coverage instrumentation and reporting are typically integrated via the test runner (like Karma using `karma-coverage`) or by wrapping the test execution command (like using `nyc npx jasmine`). Briefly describe the process of instrumenting code, running tests, and generating coverage reports (e.g., HTML, LCOV). Start the response with a heading level 3. Provide links to `nyc` documentation or `karma-coverage` setup guides."

# XII. Best Practices
"<Prompt> Outline recommended practices for writing effective, readable, and maintainable Jasmine tests. Cover structuring tests using Arrange-Act-Assert, balancing DRY vs. DAMP principles, the guideline of one expectation per spec, writing descriptive names, avoiding logic in specs, proper use of setup/teardown, ensuring test isolation, and keeping tests fast. Include subsections for Robust Error Management and Debugging Complex Scenarios. Define the learning objectives for this section (Section XII). At the end of this section's content, provide a concise summary, define 'AAA (Arrange-Act-Assert)', 'DRY (Don't Repeat Yourself)', and 'Test Isolation' for the glossary, link to articles on JavaScript testing best practices, and create a quiz assessing understanding of these principles. Start the response with a heading level 1 ('XII. Best Practices')."

## Arrange-Act-Assert (AAA)
"<Prompt> Explain the Arrange-Act-Assert (AAA) pattern as a way to structure test cases (`it` blocks) for clarity. Describe each phase: Arrange (set up preconditions, initialize objects, create spies/stubs), Act (execute the code under test), and Assert (use `expect` to check the outcome or interactions). Provide a code example clearly commented with AAA phases. Start the response with a heading level 2."

## DRY vs. DAMP
"<Prompt> Discuss the trade-offs between "Don't Repeat Yourself" (DRY) and "Descriptive And Meaningful Phrases" (DAMP) in the context of testing. Explain that while DRY is good in production code, excessive abstraction (e.g., overly complex helper functions or deep `beforeEach` setups) can make tests harder to understand. Advocate for clarity and readability, even if it involves some repetition, suggesting judicious use of `beforeEach` and helper functions. Start the response with a heading level 2."

## One Expectation Per Spec?
"<Prompt> Discuss the guideline suggesting that each spec (`it` block) should ideally test only one specific behavior or outcome, often leading to a single `expect` call. Explain the benefits (clearer failure messages, focused tests) but also acknowledge that multiple related expectations within a single spec can sometimes be acceptable and practical, especially when testing closely linked outcomes of a single action. Start the response with a heading level 2."

## Writing Descriptive Names (`describe`, `it`)
"<Prompt> Emphasize the importance of using clear, descriptive, and sentence-like strings for `describe` and `it` blocks. Explain how well-named tests act as living documentation for the code's behavior. Provide examples of good vs. bad naming conventions (e.g., `it('should return true when user is valid')` vs. `it('test1')`). Start the response with a heading level 2."

## Avoiding Logic in Specs
"<Prompt> Advise against putting conditional logic (if/else, switch statements, complex loops) within test specs (`it` blocks). Explain that tests should be straightforward sequences of actions and assertions. Suggest moving any necessary logic into the code under test or potentially into test helper functions if absolutely required, but strive for simple, direct assertions. Start the response with a heading level 2."

## Proper Use of Setup/Teardown
"<Prompt> Summarize best practices for using `beforeEach`, `afterEach`, `beforeAll`, and `afterAll`. Recommend preferring `beforeEach`/`afterEach` for setup/cleanup that needs to run for every test to ensure isolation. Use `beforeAll`/`afterAll` sparingly for expensive operations that don't interfere with other tests. Stress the importance of proper cleanup in `afterEach`/`afterAll` to prevent state leakage. Provide a cross-reference to the Setup & Teardown section. Start the response with a heading level 2."

## Test Isolation
"<Prompt> Explain the critical importance of test isolation – ensuring that each test can run independently of others and that the order of execution does not affect the outcome. Discuss how shared state (via `beforeAll`, global variables, or external systems) can lead to fragile, order-dependent tests. Recommend techniques like careful cleanup (`afterEach`), resetting state in `beforeEach`, and using randomization (`random: true` in config) to detect and fix isolation issues. Start the response with a heading level 2. Highlight test isolation as a fundamental principle."

## Keeping Tests Fast
"<Prompt> Discuss the importance of maintaining a fast test suite for quick feedback during development and efficient CI/CD pipelines. Suggest strategies like avoiding unnecessary delays (e.g., real network calls, long timeouts unless needed), optimizing setup/teardown, running tests in parallel (often a runner feature), and periodically reviewing test suite performance. Provide a cross-reference to the Performance Optimization subsection in Advanced Features. Start the response with a heading level 2."

## Advanced Error Handling and Debugging
"<Prompt> Discuss techniques applicable when dealing with complex errors or debugging challenging test failures in Jasmine. Start the response with a heading level 2."

### Robust Error Management in Tests
"<Prompt> Explain strategies for making tests more robust against unexpected errors, both in the code under test and in the test setup itself. Cover using `toThrowError` effectively, handling asynchronous errors correctly (using `done.fail` or Promise rejections), and potentially using `try...catch` blocks judiciously within tests or helpers (though generally assertions are preferred). Start the response with a heading level 3."

### Debugging Complex Scenarios
"<Prompt> Provide tips for debugging failing Jasmine tests, especially complex ones. Suggest techniques like using `debugger;` statements (in browser/Node inspect mode), logging intermediate values (`console.log`), using focused specs (`fit`/`fdescribe`) to isolate the problem, examining spy call arguments (`.calls.allArgs()`), and simplifying the test case to its minimal failing state. Mention using browser developer tools or Node.js debugging tools effectively. Start the response with a heading level 3."

# XIII. Comparison with Alternatives
"<Prompt> Compare Jasmine to other popular JavaScript testing frameworks and libraries, highlighting key differences in philosophy, features, and common usage patterns. Focus on comparisons with Jest and Mocha (often paired with Chai and Sinon.JS). Define the learning objectives for this section (Section XIII). At the end of this section's content, provide a concise summary, define 'Assertion Library' and 'Spying/Mocking Library' for the glossary, link to comparison articles or feature matrices, and add a reflective prompt asking the learner which framework seems most appealing based on the comparison. Start the response with a heading level 1 ('XIII. Comparison with Alternatives')."

## Jasmine vs. Jest
"<Prompt> Compare Jasmine with Jest. Highlight that Jest was originally based on Jasmine but has evolved significantly. Point out Jest's key differentiators, such as its integrated features (built-in test runner, assertion library compatible with Jasmine's `expect`, mocking/spying capabilities, snapshot testing, parallel execution, integrated code coverage), its focus on the Node.js/React ecosystem, and its often 'zero-config' setup experience. Mention that Jasmine can be more flexible for integration into different environments. Start the response with a heading level 2. Define 'Snapshot Testing' for the glossary."

## Jasmine vs. Mocha
"<Prompt> Compare Jasmine with Mocha. Describe Mocha as a more minimalist and flexible testing framework that provides the basic test structure (`describe`, `it`, hooks) but requires separate libraries for assertions (like Chai) and test doubles (like Sinon.JS). Contrast this with Jasmine's 'batteries-included' approach, which provides built-in matchers and spies. Mention Mocha's flexibility in choosing assertion styles and other plugins. Start the response with a heading level 2."

## Assertion Libraries (Chai)
"<Prompt> Briefly introduce Chai as a popular alternative assertion library often paired with Mocha. Mention its different assertion styles (`expect`, `should`, `assert`) and compare its syntax and features conceptually to Jasmine's built-in matchers. Explain that Jasmine users typically don't need a separate assertion library. Start the response with a heading level 2. Link to the Chai assertion library website."

## Spying/Mocking Libraries (Sinon.JS)
"<Prompt> Briefly introduce Sinon.JS as a powerful standalone library dedicated to test doubles (spies, stubs, mocks). Compare its capabilities conceptually to Jasmine's built-in spies, mentioning that Sinon often offers more advanced features for stubbing, faking timers, and mocking. Explain that while Jasmine's spies cover many common cases, Sinon might be chosen (often with Mocha) for more complex mocking requirements. Start the response with a heading level 2. Link to the Sinon.JS website."

# XIV. Community & Resources
"<Prompt> Provide pointers to resources where learners can find more information, documentation, help, and engage with the Jasmine community. Include links to official documentation, the GitHub repository, relevant tutorials/blogs, and community forums like Stack Overflow. Define the learning objectives for this section (Section XIV). At the end of this section's content, provide a final summary for the entire learning agenda, encourage contribution to the Jasmine project, and add a final reflective prompt asking the learner what topic they plan to explore first after completing this agenda. Start the response with a heading level 1 ('XIV. Community & Resources')."

## Official Documentation
"<Prompt> Provide a direct link to the official Jasmine documentation website. Emphasize that this is the most authoritative and up-to-date source for API references, guides, and release notes. Start the response with a heading level 2."

## GitHub Repository
"<Prompt> Provide a direct link to the official Jasmine GitHub repository. Explain that users can view the source code, report issues (bugs), suggest features, and potentially contribute to the project here. Start the response with a heading level 2."

## Tutorials & Blogs
"<Prompt> Suggest that learners search for online tutorials, blog posts, and articles about Jasmine for practical examples, specific use cases, and different perspectives. Mention reputable JavaScript-focused websites or blogs where such content might be found (without linking to specific non-official resources unless explicitly allowed/verified). Start the response with a heading level 2."

## Community Forums/Stack Overflow
"<Prompt> Recommend using platforms like Stack Overflow for asking specific questions about Jasmine usage or troubleshooting issues. Advise learners to search for existing answers before posting new questions and to use appropriate tags (e.g., `jasmine`). Start the response with a heading level 2. Provide a link to Stack Overflow questions tagged with 'jasmine'."
