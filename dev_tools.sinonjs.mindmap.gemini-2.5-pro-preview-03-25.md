# SinonJs #JavaScript #Testing #TestDoubles
SinonJS is a standalone JavaScript library for creating test spies, stubs, and mocks. It's framework-agnostic, meaning it can be used with any JavaScript unit testing framework like Mocha, Jest, QUnit, etc. [10, 15] The main goal is to make testing easier, especially when dealing with dependencies or complex behaviors like time-sensitive code or network requests. [1, 11, 16]

## Core Concepts #Fundamentals #TestDoubles #Overview
Understanding the fundamental building blocks and philosophy of SinonJS.
Sinon helps isolate units of code by replacing dependencies with test doubles, making tests faster and more deterministic. [1, 7, 16]

### Test Doubles #Theory #Types #Isolation
Objects that replace real dependencies in tests. [1, 3, 7]
SinonJS provides three primary types: Spies, Stubs, and Mocks. Fakes are also available. [6, 7, 8, 9, 11]
These are used to manage dependencies (internal, external, physical like databases or network) during testing. [7, 11, 16]

### Framework Agnostic #Compatibility #Integration
SinonJS works independently of any specific testing framework. [2, 3, 10, 14, 15]
It can be easily integrated into test runners like Jest, Mocha, QUnit, Jasmine, etc. [3, 14, 19]

### Goals and Philosophy #Design #Principles
Key goals include no global pollution, ease of use, minimal integration effort, and the ability to fake any interface easily. [10]

## Test Spies #Observation #Verification #Tracking
Spies record information about function calls without affecting their behavior. [6, 8, 9, 11]

### Creating Spies #Setup #Instantiation
How to create spies for existing functions or anonymous functions. [9, 11]
Example: `sinon.spy(object, 'method')` or `sinon.spy()` for anonymous functions. [11]

### Spy API #Properties #Methods #Information
Accessing recorded data: arguments, return values, `this` context, exceptions thrown. [8, 9, 11]
Properties like `called`, `calledOnce`, `callCount`, `args`, `firstCall`, `lastCall`. [6, 11, 24]

### Use Cases #Scenarios #Verification
Verifying that a function was called, how many times, and with specific arguments. [11, 24]
Checking if callbacks were invoked. [11]
Used when the original function's behavior doesn't need changing, just observation. [7, 12]

### Assertions with Spies #Validation #Checking
Using `sinon.assert` or integrating with assertion libraries (like Chai via `sinon-chai`) to validate spy data. [1, 24]
Examples: `sinon.assert.calledOnce(spy)`, `sinon.assert.calledWith(spy, arg1, ...)`. [1, 24]

## Test Stubs #Control #Replacement #Behavior
Stubs replace functions with implementations you control, while also recording call information like spies. [6, 8, 9, 11]

### Creating Stubs #Setup #Instantiation
How to create stubs to replace existing methods or functions. [9]
Example: `sinon.stub(object, 'method')`. [9]

### Configuring Behavior #API #Methods
Defining return values (`returns`, `resolves`), throwing exceptions (`throws`, `rejects`), calling fake implementations (`callsFake`), calling the original function (`callThrough`). [7, 9, 24]
Invoking callbacks passed as arguments (`yields`, `callsArg`, `callsArgWith`). [22]

### Use Cases #Scenarios #Isolation
Isolating the system under test from dependencies (e.g., database calls, API requests). [1, 9, 11, 12]
Forcing specific code paths (e.g., error handling). [24]
Preventing side effects during tests. [1]
Used when you need to control the behavior of a dependency. [7, 12]

### Stubs vs. Spies #Comparison #Differences
Stubs can change behavior; spies only observe. [11, 24]
Stubs have all the inspection capabilities of spies. [7, 12]

## Test Mocks #Expectations #Verification #Behavior
Mocks combine the spying and stubbing capabilities with built-in expectations that are verified after the test. [6, 8, 9, 11]

### Creating Mocks #Setup #Instantiation
Creating mocks around objects. [9]
Example: `sinon.mock(object)`. [9]

### Defining Expectations #API #Methods #Configuration
Setting expectations on method calls (`expects('method')`) including call count (`once`, `twice`, `thrice`, `exactly`), arguments (`withArgs`), return values (`returns`). [8, 9, 24]

### Verifying Expectations #Validation #Checking
Using `mock.verify()` to check if all defined expectations were met. [8, 9, 24]
Mocks fail the test if expectations aren't met. [12]

### Use Cases #Scenarios #Specification
Testing interactions between objects where specific call sequences or arguments are critical. [7]
Often used when the interaction itself is the focus of the test.

### Mocks vs. Stubs #Comparison #Differences
Mocks define expectations upfront; stubs typically use assertions after the fact. [7, 8, 24]
Mocks are often considered more brittle if overused, as they tightly couple tests to implementation details. [24]

## Fakes #Simplified #API #TestDoubles
A simpler alternative combining spy and stub features with an immutable behavior. [7, 12, 15]

### Creating Fakes #Setup #Instantiation
Using `sinon.fake()` to create a fake function. [12, 14]
Can wrap existing functions or define new behavior. [12]

### Fake API #Properties #Methods
Records call history like spies (arguments, return value, `this`, exceptions). [12]
Can be configured with specific behavior (return values, exceptions) upon creation. [12]
Behavior is immutable once created. [12]

### Plugging Fakes #Integration #Replacement
Unlike spies/stubs created on objects, `sinon.fake()` doesn't automatically replace anything. [12]
Use `sinon.replace`, `sinon.replaceGetter`, `sinon.replaceSetter` to install the fake. [12]

### Fakes vs. Stubs/Spies #Comparison #Differences
Fakes offer a potentially simpler API for common use cases. [12]
Immutability can be a key difference. [12]
Stubs have a richer API for controlling behavior dynamically (e.g., `onCall`, changing behavior). [7]

## Fake Timers #Time #Async #Control
Allows controlling timers (`setTimeout`, `setInterval`, `Date`, `process.nextTick`, etc.) within tests. [10, 15, 19]

### Enabling Fake Timers #Setup #Activation
Using `sinon.useFakeTimers()` to replace native timer functions. [15, 21]

### Controlling Time #API #Methods
Advancing the clock manually (`clock.tick(milliseconds)`). [15, 21]
Setting the clock to a specific time (`clock.setSystemTime(new Date())`).
Running timers (`clock.runAll()`, `clock.runToLast()`).

### Use Cases #Scenarios #TimeSensitive
Testing debounced/throttled functions. [15]
Testing code relying on `setTimeout` or `setInterval` without actual waiting. [11, 21]
Ensuring time-dependent logic executes correctly under controlled conditions. [15]

### Restoring Timers #Cleanup #Teardown
Using `clock.restore()` to bring back native timer functions, typically in `afterEach` or `after` blocks. [15, 21]

## Fake XHR and Server #Network #HTTP #Simulation
Simulating network requests (XMLHttpRequest) and server responses without actual network activity. [5, 19]

### Fake XMLHttpRequest #Setup #API
Replacing the global `XMLHttpRequest` object.
Inspecting requests made and controlling responses.

### Fake Server #Setup #API #Simulation
Creating a fake server (`sinon.fakeServer.create()`) to respond to requests automatically based on configuration.
Defining responses for specific URLs and methods (`server.respondWith(...)`).
Triggering responses (`server.respond()`).

### Use Cases #Scenarios #NetworkDependent
Testing code that makes AJAX/HTTP requests (e.g., fetching data from an API). [1, 11, 15]
Ensuring frontend code handles various server responses (success, error, specific data) correctly.
Isolating frontend tests from backend availability or state. [1]

### Restoring #Cleanup #Teardown
Restoring the original XHR object (`server.restore()`). [15]

## Sandboxes #Isolation #Cleanup #Management
Sandboxes provide a way to manage multiple Sinon fakes (spies, stubs, mocks) and restore them all at once. [5]

### Creating Sandboxes #Setup #Instantiation
Using `sinon.createSandbox()`.

### Using Sandboxes #API #Methods
Creating fakes attached to the sandbox: `sandbox.spy()`, `sandbox.stub()`, `sandbox.mock()`, `sandbox.useFakeTimers()`, etc. [1]

### Automatic Cleanup #Restoration #Teardown
Using `sandbox.restore()` to restore all fakes created within that sandbox.
Often used with test runner hooks (`beforeEach`, `afterEach`). [1]
`sinon.test` provides a wrapper that automatically creates and restores a sandbox (using `this.spy`, `this.stub`). [1]

### Use Cases #Scenarios #BestPractices
Simplifying test setup and teardown, preventing state leakage between tests. [1]
Ensuring all stubs/spies/mocks are restored correctly. [1]

## Matchers #Arguments #Flexibility #Validation
Allowing flexible argument matching in assertions and stub/mock configurations. [17]

### Built-in Matchers #API #Types
`sinon.match.any`, `sinon.match.same`, `sinon.match.typeOf`, `sinon.match.instanceOf`, `sinon.match.has`, `sinon.match.string`, `sinon.match.number`, `sinon.match.bool`, `sinon.match.func`, `sinon.match.object`, `sinon.match.array`.

### Use Cases #Scenarios #Matching
Verifying calls when exact argument values are unknown or irrelevant.
Checking argument types or properties instead of exact equality.
Example: `spy.calledWith(sinon.match.string, sinon.match.number)`.

### Custom Matchers #Extensibility #Creation
Creating custom matcher functions for complex validation logic.

## Assertions #Verification #Validation #Integration
Sinon provides its own assertion library tailored for its test doubles. [17, 24]

### Sinon Assert API #Methods #Checks
`sinon.assert.called`, `sinon.assert.calledOnce`, `sinon.assert.calledWith`, `sinon.assert.calledWithExactly`, `sinon.assert.neverCalledWith`, `sinon.assert.threw`, `sinon.assert.callCount`, `sinon.assert.callOrder`. [1, 24]

### Integration with Assertion Libraries #Chai #Expect
Using plugins like `sinon-chai` to integrate Sinon's capabilities directly into assertion library chains (e.g., `expect(spy).to.have.been.calledWith(...)`).

## Configuration and Setup #Environment #Installation
Setting up SinonJS in a project.

### Installation #npm #yarn #Setup
Installing via package managers: `npm install sinon --save-dev` or `yarn add sinon --dev`. [9, 14]

### Module Systems #CommonJS #ESModules #AMD
Using SinonJS with different JavaScript module systems (RequireJS, Node.js CommonJS, ES Modules). [4]
Techniques for stubbing module dependencies (e.g., using `proxyquire` or `inject-loader`). [4, 6, 9]

### Browser Usage #Frontend #Compatibility
Using SinonJS directly in browsers via script tags or bundlers (Webpack, Rollup). [2, 18]
Compatibility considerations for different browser versions. [17, 18]

### TypeScript Integration #Typings #Setup
Using SinonJS with TypeScript, including type definitions (`@types/sinon`).

## Advanced Topics #EdgeCases #Techniques
More complex scenarios and features.

### Stubbing Dependencies #Modules #DI
Strategies for stubbing dependencies that are required/imported within modules. [4, 6, 9]
Using tools like `proxyquire`, `inject-loader`, or dependency injection patterns. [4, 6]

### Testing Asynchronous Code #Promises #AsyncAwait
Using stubs with `resolves` and `rejects` for Promises. [9]
Combining fake timers with async tests. [4]
Handling callbacks effectively using `yields`, `callsArg`. [22]

### Stubbing Getters and Setters #Properties #Accessors
Using `sinon.replaceGetter` and `sinon.replaceSetter`.

### Verifying Call Order #Sequence #Interactions
Using `sinon.assert.callOrder(spy1, spy2, ...)` or `spy1.calledBefore(spy2)`. [9]

## Best Practices and Patterns #Guidelines #TestingStrategy
Effective ways to use SinonJS.

### When to Use Spies, Stubs, or Mocks #DecisionMaking #Strategy
Guidelines for choosing the right test double for the job. [1, 24]
Spies for observation, Stubs for control/isolation, Mocks for strict interaction verification. [8, 12]
Be cautious with mocks to avoid brittle tests. [24]

### Clean Test Setup and Teardown #Isolation #Sandboxes
Using sandboxes or `beforeEach`/`afterEach` hooks for reliable setup and restoration. [1, 9]

### Avoiding Over-Mocking #Brittleness #Maintainability
Focusing tests on behavior rather than implementation details.
Mocking boundaries, not internals.

### Test Readability #Clarity #Maintainability
Writing clear and concise tests using SinonJS features.

## Integration with Tools #Ecosystem #TestingFrameworks
How SinonJS works alongside other common development tools.

### Test Runners #Mocha #Jest #QUnit #Jasmine
Integrating Sinon setup/teardown with test runner lifecycle hooks. [3, 14, 19]
Specific considerations for runners like Jest which have built-in mocking. [2, 3]

### Assertion Libraries #Chai #ExpectJS
Using SinonJS assertions alongside or integrated with libraries like Chai (e.g., `sinon-chai`).

### Module Loaders/Bundlers #Webpack #RequireJS
Techniques for using SinonJS and stubbing dependencies in bundled or module-loaded environments. [4]

## Comparison with Other Libraries #Alternatives #TestDoubles
How SinonJS compares to other mocking/stubbing tools.

### Jest Mocks #BuiltIn #Comparison
Comparing SinonJS features with Jest's built-in mocking capabilities (`jest.fn`, `jest.spyOn`, module mocks). [2, 3]

### testdouble.js #Alternative #Comparison
Comparing SinonJS with libraries like testdouble.js, highlighting differences in API design and features (e.g., module replacement). [6]

## Troubleshooting and Common Pitfalls #Errors #Debugging #Gotchas
Addressing common issues when using SinonJS.

### Forgetting `restore()` #Leaks #SideEffects
Tests interfering with each other due to un-restored stubs/spies/timers. Solved by sandboxes or manual cleanup. [1, 9, 11]

### Incorrect Stubbing Target #Context #Binding
Issues related to `this` context when stubbing methods.

### Misunderstanding Mock Expectations #Verification #Errors
Common errors when setting up and verifying mock expectations.

### Async Test Issues #Timers #Promises
Problems with fake timers or unhandled promises in async tests.

### Wrapping Already Wrapped Functions #Errors
Encountering errors when trying to spy on or stub a function that Sinon has already wrapped. [14]
