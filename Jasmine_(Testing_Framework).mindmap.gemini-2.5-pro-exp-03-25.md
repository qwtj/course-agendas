# Jasmine (Framework) #JavaScript #Testing #BDD
Jasmine is a Behavior-Driven Development (BDD) testing framework for JavaScript. It does not depend on any other JavaScript frameworks, browsers, or a DOM.

## Introduction & Overview #GettingStarted #BDD #JavaScript
Understanding the purpose, philosophy, and basic structure of Jasmine.
### What is Jasmine? #Definition #Purpose
Explanation of Jasmine as a BDD framework for testing JavaScript code.
### Philosophy (BDD) #BDD #Approach #TestingPhilosophy
Focus on describing behavior rather than just testing implementation details.
### Key Features #Features #Highlights
Clean syntax, batteries included, no external dependencies, asynchronous support, spies, etc.
### Use Cases #Applications #Scenarios
Unit testing, integration testing, front-end testing, Node.js testing.

## Installation & Setup #Setup #Installation #Environment
How to get Jasmine installed and ready to use in different environments.
### Standalone #Standalone #HTMLRunner
Using the standalone distribution with an HTML spec runner.
#### Downloading Jasmine #Download #Distribution
Getting the `jasmine-standalone` zip file.
#### SpecRunner.html #HTMLRunner #Configuration
Understanding the structure and configuration of the HTML runner file.
#### Including Source and Spec Files #ProjectStructure #FileInclusion
How to link your application code and test files.
### Node.js Integration #NodeJS #ServerSide #CLI
Using Jasmine to test Node.js applications.
#### NPM Installation #NPM #PackageManagement
`npm install --save-dev jasmine`
#### Initialization #Init #ConfigurationFile
`npx jasmine init` to create the `spec/support/jasmine.json` file.
#### Running Tests via CLI #CLI #Execution
`npx jasmine` command and its options.
### Using with Task Runners/Build Tools #BuildTools #Automation
Integrating Jasmine with tools like Gulp or Grunt (less common now but still relevant historically).
### Using with Test Runners (Karma) #TestRunners #Karma #BrowserTesting
Setting up Jasmine with Karma for browser-based testing.
#### Karma Installation & Configuration #Karma #Configuration
`karma.conf.js` setup for Jasmine.
#### Karma-Jasmine Adapter #Adapter #Integration

## Core Concepts #Fundamentals #Basics #Syntax
The fundamental building blocks of Jasmine tests.
### Suites (`describe`) #Suites #Grouping #Organization
Grouping related tests together using `describe` blocks.
#### Nested Suites #Nesting #Hierarchy
Structuring tests with nested `describe` blocks for better organization.
### Specs (`it`) #Specs #TestCases #Assertions
Individual test cases defined using `it` blocks. Represents a single specification or requirement.
### Expectations (`expect`) #Expectations #Assertions #Verification
Making assertions about the code's behavior using `expect`. Always used with a Matcher.
### Anatomy of a Simple Test #Example #Structure

```javascript
describe("Component", () => {
  it("should do something", () => {
    const result = component.method();
    expect(result).toBe(true);
  });
});
```


## Matchers #Matchers #Assertions #Comparison
Functions used with `expect` to perform assertions.
### Built-in Matchers #BuiltIn #CoreMatchers #CommonAssertions
Commonly used matchers provided by Jasmine.
#### `toBe()` #Equality #Identity
Strict equality (`===`).
#### `toEqual()` #Equality #DeepComparison
Deep equality comparison for objects and arrays.
#### `toBeTruthy()` / `toBeFalsy()` #Boolean #Truthiness
Checking for truthy or falsy values.
#### `toBeDefined()` / `toBeUndefined()` #Existence #Definition
Checking if a variable is defined or undefined.
#### `toBeNull()` #NullCheck #Existence
Checking if a value is null.
#### `toContain()` #Collections #Membership
Checking if an array or string contains a specific element or substring.
#### `toBeCloseTo()` #Numbers #FloatingPoint #Precision
Comparing floating-point numbers within a certain precision.
#### `toMatch()` #Strings #RegularExpressions
Matching strings against regular expressions or substrings.
#### `toThrow()` / `toThrowError()` #Errors #ExceptionHandling
Checking if a function throws an error.
#### `anything()` #AnyValue #FlexibleMatching
Matches any value except `null` or `undefined`.
#### `any(Constructor)` #TypeChecking #FlexibleMatching
Matches any value that is an instance of a given constructor.
#### `objectContaining(sample)` #Objects #PartialMatch
Checks if an object contains specific key-value pairs.
#### `arrayContaining(sample)` #Arrays #PartialMatch
Checks if an array contains specific elements (order doesn't matter).
#### `stringMatching(pattern)` #Strings #PatternMatching
Checks if a string matches a regex or another string.
### Negating Matchers (`.not`) #Negation #InverseAssertion
Using `.not` to assert the opposite of a matcher (e.g., `expect(x).not.toBe(y)`).
### Custom Matchers #CustomMatchers #Extensibility #Advanced
Creating your own reusable assertion logic.
#### Defining Custom Matchers #Implementation #API
Using `jasmine.addMatchers()` before tests run.
#### Matcher Factories #Factories #StatefulMatchers
Creating matchers that might require setup or state.
#### Asynchronous Custom Matchers #Async #CustomLogic

## Setup & Teardown #Fixtures #Lifecycle #Hooks
Running code before or after suites and specs.
### `beforeEach()` #Setup #PerSpec
Runs before each `it` block within a `describe`. Used for common setup.
### `afterEach()` #Teardown #PerSpec
Runs after each `it` block within a `describe`. Used for common cleanup.
### `beforeAll()` #Setup #PerSuite
Runs once before any `it` block within a `describe`. Used for expensive suite-level setup.
### `afterAll()` #Teardown #PerSuite
Runs once after all `it` blocks within a `describe`. Used for suite-level cleanup.
### Scope #Nesting #ExecutionOrder
Understanding how hooks interact within nested `describe` blocks.
### `this` Context #SharedContext #StateManagement
Sharing state between `beforeEach`/`afterEach` and `it` blocks using `this`.

## Test Doubles (Spies) #TestDoubles #Spies #Mocks #Stubs
Isolating code under test by replacing dependencies with controlled fakes. Jasmine primarily uses Spies.
### Introduction to Test Doubles #Concepts #Isolation #DependencyInjection
Why use test doubles: Stubs, Spies, Mocks. Jasmine focuses on Spies.
### Creating Spies (`spyOn`) #Spying #MethodInterception
Replacing an existing method on an object with a spy.
#### `spyOn(object, 'methodName')` #BasicSpy #Tracking
### Spy Properties & Methods #SpyAPI #Inspection #Assertions
Checking how a spy was used.
#### `.calls.count()` #InvocationCount #Tracking
How many times the spy was called.
#### `.calls.argsFor(index)` #Arguments #Tracking
Arguments passed to a specific call.
#### `.calls.mostRecent()` #LastCall #Tracking
Details of the most recent call.
#### `.calls.allArgs()` #AllArguments #Tracking
Arguments for all calls.
#### `.calls.reset()` #ResettingSpy #Cleanup
Resetting call tracking information.
### Stubbing Methods with Spies #Stubbing #BehaviorControl #FakeImplementation
Making spies return specific values or perform actions.
#### `.and.returnValue(value)` #ReturnValue #Stub
Returning a fixed value.
#### `.and.returnValues(val1, val2, ...)` #MultipleReturnValues #Stub
Returning different values on subsequent calls.
#### `.and.callFake(function)` #CustomImplementation #Stub
Providing a fake function implementation.
#### `.and.callThrough()` #Passthrough #PartialSpy
Calling the original underlying method in addition to tracking.
#### `.and.throwError(message)` #ErrorSimulation #Stub
Making the spied method throw an error.
#### `.and.stub()` #Noop #Stub
Making the spy do nothing (default behavior if not chained).
### Standalone Spies (`jasmine.createSpy`) #StandaloneSpy #FunctionSpy
Creating a bare spy function, not attached to an object method. Useful for callbacks or dependencies passed as functions.
### Spying on Constructors #Constructors #ClassSpying #Advanced
Techniques for spying on class constructors.
### Spy Objects (`jasmine.createSpyObj`) #MockObject #MultipleSpies
Creating an object with multiple spied methods at once.
#### `jasmine.createSpyObj('name', ['method1', 'method2'])` #Convenience #BulkCreation
#### `jasmine.createSpyObj('name', { method1: returnValue, method2: fakeFunction })` #StubbingDuringCreation

## Asynchronous Testing #Async #Promises #Callbacks #Timers
Handling asynchronous operations within tests.
### Default Timeout Interval #Timeout #Configuration
Understanding and configuring Jasmine's timeout for async specs (`jasmine.DEFAULT_TIMEOUT_INTERVAL`).
### Callback-based Asynchronous Specs (`done` function) #Callbacks #DoneFunction #ExplicitSignal
Using the `done` callback to signal completion of an async operation.
#### Passing `done` to `it`, `beforeEach`, `afterEach`, `beforeAll`, `afterAll` #AsyncHooks #Lifecycle
#### Calling `done()` #CompletionSignal #Requirement
Crucial to call `done()` to finish the spec.
#### Calling `done.fail()` #FailureSignal #ErrorHandling
Explicitly failing an async spec.
### Promise-based Asynchronous Specs #Promises #AsyncAwait #ModernJS
Testing code that returns Promises. Jasmine automatically waits for returned promises to resolve or reject.
#### Returning Promises from Specs/Hooks #PromiseReturn #ImplicitWait
#### Using `async/await` #AsyncAwait #SyntaxSugar #Clarity
Modern syntax for handling promises in tests.
### Testing Time-dependent Code #Timers #Clock #TimeManipulation
Using Jasmine's mock clock to control `setTimeout`, `setInterval`, etc.
#### `jasmine.clock().install()` #ClockInstallation #MockingTime
Enabling the mock clock.
#### `jasmine.clock().uninstall()` #ClockCleanup #RestoringTime
Disabling the mock clock.
#### `jasmine.clock().tick(milliseconds)` #AdvancingTime #Simulation
Manually advancing the mock clock.
#### `jasmine.clock().mockDate(date)` #MockingDate #DateControl
Setting a specific date for `new Date()`.

## Running Tests & Reporters #Execution #Reporting #Output #CI
How tests are executed and how results are displayed.
### Standalone HTML Runner #HTMLRunner #Browser
Running tests directly in a browser via `SpecRunner.html`.
### Command Line Interface (CLI) #CLI #NodeJS #Automation
Using `jasmine` or `npx jasmine` in Node.js environments.
### Test Runners (Karma, etc.) #TestRunners #Integration #BrowserAutomation
Executing tests via dedicated runners like Karma.
### Built-in Reporters #Reporters #OutputFormats
Default reporting mechanisms.
#### Console Reporter (Node.js) #CLI #DefaultReporter
Standard output in the terminal.
#### HTML Reporter (Standalone) #Browser #HTMLOutput
Visual feedback in the `SpecRunner.html`.
### Custom Reporters #CustomReporters #Extensibility #CIIntegration
Implementing custom logic for reporting test results (e.g., for CI systems, custom logging).
#### Reporter API #API #Implementation #Hooks
Using `jasmine.addReporter()` and the reporter interface methods (`specDone`, `suiteDone`, `jasmineDone`, etc.).
#### Example Custom Reporters #JUnitXML #CI #Examples
Creating reporters for specific formats like JUnit XML.

## Configuration #Configuration #Options #Customization
Tailoring Jasmine's behavior.
### `jasmine.json` (Node.js) #NodeJS #ConfigFile #CLIConfiguration
Configuration file used by the Jasmine CLI.
#### `spec_dir` #SpecLocation #Directory
Directory containing spec files.
#### `spec_files` #FileMatching #GlobPatterns
Glob patterns to find spec files.
#### `helpers` #HelperFiles #SetupCode
Files to execute before specs (e.g., for custom matchers, global setup).
#### `requires` #NodeRequire #Preloading
Node modules to require before running tests.
#### `stopSpecOnExpectationFailure` #FailFast #Debugging
Stop a spec immediately on the first expectation failure.
#### `random` #Randomization #TestOrder
Run specs in random order to detect dependencies.
### Configuring via Jasmine Core (Standalone/Custom Runners) #CoreAPI #ProgrammaticConfig
Using `jasmine.getEnv().configure()` or loading configuration objects.
### Environment Variables #EnvVars #CI #Overrides
Overriding configuration using environment variables.

## Advanced Features #Advanced #Techniques #Productivity
More specialized features of Jasmine.
### Focused Specs (`fit`, `fdescribe`) #Focus #Debugging #SelectiveExecution
Running only specific specs or suites (`fit`, `fdescribe`). **Remember to remove before committing!**
### Pending Specs (`xit`, `xdescribe`) #Pending #Skipping #Placeholders
Marking specs or suites as pending (skipped) using `xit` or `xdescribe`, or by calling `pending()` within a spec.
#### `pending('reason')` #SkippingWithReason #Documentation
Providing a reason why a spec is pending.
### Custom Equality Testers #Equality #ComparisonLogic #Customization
Providing custom logic for `toEqual` comparisons for specific object types.
#### `jasmine.addCustomEqualityTester(testerFn)` #Implementation #DeepEquals
### Tagging/Filtering Specs (via custom implementation or runners) #Tagging #Filtering #SelectiveExecution
Strategies for tagging specs and running specific subsets (often runner-dependent or requires custom setup).
### Jasmine Timeouts #Timeouts #Async #Configuration
Setting timeouts per spec or globally.
#### `it('...', function() { ... }, timeoutInMillis)` #PerSpecTimeout #Override
Setting timeout for a specific spec.
#### `jasmine.DEFAULT_TIMEOUT_INTERVAL` #GlobalTimeout #Default
Setting the global default timeout.
### Spying on Properties (Getters/Setters) #Properties #Accessors #AdvancedSpying
Using `spyOnProperty(obj, 'propertyName', 'accessType')` where accessType is 'get' or 'set'.

## Integration & Ecosystem #Integration #Tools #Frameworks
Using Jasmine with other tools and frameworks.
### Karma #TestRunner #BrowserTesting #Automation
Popular test runner for executing Jasmine tests in multiple real browsers.
### Protractor (E2E Testing - Historically significant) #E2E #Angular #WebDriver
End-to-end testing framework built on WebDriverJS, often used with Angular (though less common now). Jasmine is the default assertion framework.
### Node.js Testing #NodeJS #Backend #ServerSide
Using the `jasmine` NPM package for backend testing.
### Integration with Frontend Frameworks (React, Angular, Vue, etc.) #Frontend #UI #ComponentTesting
Strategies for testing components built with popular frontend frameworks, often involving additional libraries or test runners.
### Code Coverage #Coverage #Istanbul #NYC
Integrating tools like Istanbul (via NYC) to measure test coverage. Typically configured via the test runner (e.g., Karma, Jest).

## Best Practices #BestPractices #Patterns #Maintainability #Readability
Writing effective, readable, and maintainable Jasmine tests.
### Arrange-Act-Assert (AAA) #AAA #Structure #Readability
Structuring tests clearly into setup, execution, and assertion phases.
### DRY vs. DAMP #DRY #DAMP #Abstraction #Clarity
Balancing "Don't Repeat Yourself" with "Descriptive And Meaningful Phrases". Avoid excessive abstraction in tests. Use `beforeEach` judiciously.
### One Expectation Per Spec? #SingleAssertion #Focus #Tradeoffs
Guideline suggesting each `it` block should test one specific thing, though multiple related expectations can be acceptable.
### Writing Descriptive Names (`describe`, `it`) #Naming #Readability #Documentation
Using clear, sentence-like descriptions that explain the behavior being tested.
### Avoiding Logic in Specs #Simplicity #Focus #NoConditionals
Tests should be straightforward assertions, not complex logic.
### Proper Use of Setup/Teardown #Lifecycle #Efficiency #Isolation
Using `beforeEach`/`afterEach`/`beforeAll`/`afterAll` effectively without creating fragile tests. Ensure proper cleanup.
### Test Isolation #Isolation #Independence #NoOrderDependency
Ensuring tests can run independently and in any order. Avoid tests depending on the side effects of others. Use randomization.
### Keeping Tests Fast #Performance #FeedbackLoop #Efficiency
Writing efficient tests and setup/teardown routines.

## Comparison with Alternatives #Comparison #Alternatives #Jest #Mocha #Chai
Understanding Jasmine's place in the JavaScript testing landscape.
### Jasmine vs. Jest #Jest #Comparison #Features
Jest built upon Jasmine, added features like snapshot testing, built-in mocking, parallelization, integrated coverage. Often preferred for React.
### Jasmine vs. Mocha #Mocha #Comparison #Flexibility
Mocha is a flexible framework often paired with assertion libraries (like Chai) and spy/stub libraries (like Sinon.JS). Jasmine is more "batteries-included".
### Assertion Libraries (Chai) #Chai #Assertions #Alternatives
Comparing Jasmine's built-in matchers with dedicated assertion libraries like Chai (`expect`, `should`, `assert` styles).
### Spying/Mocking Libraries (Sinon.JS) #SinonJS #TestDoubles #Alternatives
Comparing Jasmine's spies with more feature-rich libraries like Sinon.JS.

## Community & Resources #Community #Resources #Learning #Support
Where to find help and further information.
### Official Documentation #Docs #OfficialSource #APIReference
The primary source for Jasmine information.
### GitHub Repository #SourceCode #Issues #Contributions
Accessing the source code, reporting bugs, contributing.
### Tutorials & Blogs #Learning #Guides #Examples
Online resources for learning Jasmine.
### Community Forums/Stack Overflow #Support #Q&A #Help
Places to ask questions and find answers.
