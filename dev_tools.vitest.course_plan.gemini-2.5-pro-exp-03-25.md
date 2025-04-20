# I. Introduction to ViTest

## Learning Objectives
"<prompt>Generate a list of 3-5 key learning objectives for understanding the fundamentals of ViTest, including its purpose, benefits compared to other frameworks like Jest, and its integration with Vite.</prompt>"

## What is ViTest?
"<prompt>Explain what ViTest is, highlighting its nature as a Vite-native unit testing framework, its key advantages like speed and shared configuration, and its primary use cases in modern JavaScript/TypeScript projects.</prompt>"

## Why ViTest?
"<prompt>Describe the reasons for choosing ViTest, focusing on its seamless integration with Vite (sharing config, plugins, transformers), performance benefits (HMR-like watch mode, multi-threading), Jest compatibility, and out-of-the-box support for modern web features (ESM, TypeScript, JSX).</prompt>"

## Core Features Overview
"<prompt>List and briefly describe the main features of ViTest, such as Vite integration, smart watch mode, Jest compatibility (API, snapshots), built-in Chai assertions, mocking capabilities (Tinyspy), DOM mocking (jsdom, happy-dom), TypeScript/JSX support, code coverage, in-source testing, and component testing support.</prompt>"

### Glossary
"<prompt>Define the following key terms related to ViTest and testing: Unit Testing, Test Runner, Vite, Jest, ESM (ES Modules), HMR (Hot Module Replacement), Assertion, Mocking, Snapshot Testing, Code Coverage, DOM Mocking (jsdom/happy-dom), Configuration File (`vitest.config.ts`), In-source testing.</prompt>"

## Section Summary
"<prompt>Provide a concise summary (2-3 sentences) of the introductory concepts covered in Section I, emphasizing what ViTest is and why it's beneficial for Vite-based projects.</prompt>"

## Section Quiz
"<prompt>Create a short multiple-choice quiz (3-5 questions) covering the basic concepts of ViTest introduced in Section I, such as its relationship with Vite, key features, and advantages.</prompt>"

## Further Exploration
"<prompt>Provide links to the official ViTest 'Why Vitest?' page and introductory blog posts or articles explaining its benefits.</prompt>"

# II. Setting Up and Configuration

## Learning Objectives
"<prompt>List 3-5 learning objectives for setting up a ViTest environment, including installation, basic configuration, creating the first test file, and running tests.</prompt>"

## Installation
"<prompt>Provide step-by-step instructions for installing ViTest as a development dependency in a project using npm, yarn, pnpm, and bun. Mention the prerequisite versions for Node.js and Vite.</prompt>"
*   Example Command:
    "<prompt>Show the specific commands to install ViTest using npm, yarn, pnpm, and bun, highlighting that it should be installed as a dev dependency (`-D`).</prompt>"
    
```bash
    npm install -D vitest
    yarn add -D vitest
    pnpm add -D vitest
    bun add -D vitest
    ```


## Basic Configuration (`vitest.config.ts`)
"<prompt>Explain how ViTest utilizes the existing `vite.config.ts` file by default and how to create a dedicated `vitest.config.ts` for test-specific settings. Show a minimal configuration example, including adding the `test` property and the triple-slash directive for types.</prompt>"
*   "<prompt>Explain the `environment` option in `vitest.config.ts`, detailing the choices like `node`, `jsdom`, and `happy-dom`, and when to use each. Mention installing `jsdom` or `happy-dom` if needed.</prompt>"
*   "<prompt>Explain the `globals` option in `vitest.config.ts` and its effect on importing common testing utilities like `describe`, `it`, and `expect`.</prompt>"

## Project Setup (Example)
"<prompt>Walk through creating a simple project structure, including initializing npm (`npm init -y`), installing ViTest, creating a source file (e.g., `sum.js`), and a corresponding test file (e.g., `sum.test.js`).</prompt>"

## Creating Your First Test
"<prompt>Provide a basic example of a ViTest test file (e.g., `sum.test.js`) importing functions from `vitest` (`test`, `expect`) and the function to be tested. Show a simple test case using `expect` and a matcher like `toBe()`.</prompt>"
*   Example Code:
    "<prompt>Generate a simple JavaScript function (e.g., `sum(a, b)`) in `sum.js` and a corresponding ViTest test file (`sum.test.js`) that imports the function and includes a basic test case using `test` and `expect(...).toBe(...)`.</prompt>"
    
```javascript
    // sum.js
    export function sum(a, b) {
      return a + b;
    }

    // sum.test.js
    import { expect, test } from 'vitest';
    import { sum } from './sum.js';

    test('adds 1 + 2 to equal 3', () => {
      expect(sum(1, 2)).toBe(3);
    });
    ```


## Running Tests
"<prompt>Explain how to add a test script to `package.json` (e.g., `"test": "vitest"`) and run tests using npm/yarn/pnpm/bun (e.g., `npm test`). Describe the default watch mode and how to run tests once using `vitest run`.</prompt>"
*   Command Example:
    "<prompt>Show the command to run tests using the npm script defined in `package.json`.</prompt>"
    
```bash
    npm test
    # or
    npm run test
    ```

*   "<prompt>Show the command to run ViTest tests once without watch mode.</prompt>"
    
```bash
    npx vitest run
    ```


## Section Summary
"<prompt>Summarize Section II in 2-3 sentences, covering the process of installing ViTest, basic configuration, writing a simple test, and executing it.</prompt>"

## Section Quiz
"<prompt>Create a short quiz (3-5 questions) focusing on ViTest installation, configuration files (`vitest.config.ts`, `vite.config.ts`), basic test syntax (`test`, `expect`), and commands for running tests.</prompt>"

## Further Exploration
"<prompt>Provide links to the official ViTest 'Getting Started' guide and configuration documentation.</prompt>"

# III. Core Testing APIs and Techniques

## Learning Objectives
"<prompt>Generate 3-5 learning objectives for understanding and using ViTest's core APIs, including test structure, assertions, matchers, and setup/teardown hooks.</prompt>"

## Test Structure (`describe`, `it`, `test`)
"<prompt>Explain the use of `describe` blocks for grouping related tests and `it` or `test` functions for defining individual test cases. Provide an example showing nested `describe` blocks.</prompt>"

## Assertions and Matchers (`expect`)
"<prompt>Explain the role of the `expect` function and common matchers provided by Chai (integrated into ViTest) and Jest-compatible matchers. Provide examples of basic matchers like `toBe`, `toEqual`, `toBeTruthy`, `toContain`, etc.</prompt>"
*   Example Matchers:
    "<prompt>Generate examples using ViTest's `expect` function with various common matchers like `toBe`, `toEqual`, `toHaveLength`, `toMatchObject`, `toThrow`, `toHaveBeenCalled`.</prompt>"
    
```javascript
    expect(value).toBe(expected); // Strict equality (===)
    expect(object).toEqual({ key: 'value' }); // Deep equality
    expect(array).toHaveLength(3);
    expect(string).toContain('substring');
    expect(fn).toThrow();
    ```


## Setup and Teardown Hooks
"<prompt>Explain the purpose and execution order of setup (`beforeAll`, `beforeEach`) and teardown (`afterAll`, `afterEach`) hooks. Provide an example demonstrating their usage for setting up preconditions or cleaning up resources.</prompt>"
*   Example Hooks:
    "<prompt>Show a ViTest example using `beforeEach` to set up a variable before each test in a `describe` block and `afterEach` to reset it.</prompt>"
    
```javascript
    import { describe, it, expect, beforeEach, afterEach } from 'vitest';

    describe('counter tests', () => {
      let count;

      beforeEach(() => {
        count = 0; // Reset count before each test
      });

      it('should increment', () => {
        count++;
        expect(count).toBe(1);
      });

      it('should be zero initially', () => {
        expect(count).toBe(0);
      });
    });
    ```


## Test Filtering (`.skip`, `.only`, CLI flags)
"<prompt>Describe how to skip tests or suites using `.skip` and run only specific tests or suites using `.only`. Explain how to filter tests from the command line using test name patterns.</prompt>"
*   CLI Filtering Example:
    "<prompt>Show the command-line syntax for running only ViTest tests whose names contain a specific string pattern.</prompt>"
    
```bash
    npx vitest run <pattern>
    # Example: npx vitest run login
    ```


## Asynchronous Testing (`async`/`await`)
"<prompt>Explain how ViTest handles asynchronous operations using `async`/`await`. Provide an example of testing a function that returns a Promise.</prompt>"
*   Example Async Test:
    "<prompt>Generate an example of an asynchronous function (`fetchData`) that returns a Promise, and a corresponding ViTest test using `async`/`await` and `expect(...).resolves` or `expect(await ...)`.</prompt>"
    
```javascript
    // api.js
    export async function fetchData() {
      return Promise.resolve({ data: 'fetched data' });
    }

    // api.test.js
    import { expect, test } from 'vitest';
    import { fetchData } from './api.js';

    test('should fetch data', async () => {
      const result = await fetchData();
      expect(result).toEqual({ data: 'fetched data' });
      // or
      await expect(fetchData()).resolves.toEqual({ data: 'fetched data' });
    });
    ```


## Section Summary
"<prompt>Provide a 2-3 sentence summary of Section III, highlighting the core ViTest APIs for structuring tests (`describe`, `it`), making assertions (`expect`), managing setup/teardown, and handling asynchronous code.</prompt>"

## Section Quiz
"<prompt>Create a quiz (4-6 questions) covering the usage of `describe`/`it`, common `expect` matchers, the purpose of setup/teardown hooks, test filtering methods, and testing asynchronous functions.</prompt>"

## Reflective Prompt
"<prompt>Ask the learner to reflect on how the `describe`/`it` structure helps organize tests compared to having all tests at the top level.</prompt>"

## Further Exploration
"<prompt>Provide links to the official ViTest API documentation, specifically sections on `describe`, `test`/`it`, `expect`, and hooks.</prompt>"

# IV. Mocking and Spies

## Learning Objectives
"<prompt>Generate 3-5 learning objectives focused on understanding and applying mocking techniques in ViTest, including mocking modules, functions, timers, and using spies.</prompt>"

## Introduction to Mocking
"<prompt>Explain the concept of mocking in testing: why it's necessary (isolating units, controlling external dependencies, avoiding side effects like network calls), and the difference between mocks, stubs, and spies.</prompt>"

## Mocking Modules (`vi.mock`)
"<prompt>Explain how to use `vi.mock` to replace entire modules or specific exports with mock implementations. Show an example of mocking a module that performs an API call.</prompt>"
*   "<prompt>Demonstrate mocking a default export versus named exports using `vi.mock`.</prompt>"
*   Manual Mock Creation (`__mocks__`):
    "<prompt>Explain the concept of manual mocks using the `__mocks__` directory structure adjacent to the module being mocked, and how ViTest automatically uses these.</prompt>"

## Mocking Functions and Spies (`vi.fn`, `vi.spyOn`)
"<prompt>Explain `vi.fn()` for creating basic mock functions and `vi.spyOn()` for wrapping existing functions to track calls without replacing the implementation initially. Provide examples for both.</prompt>"
*   Mock Implementations:
    "<prompt>Show how to provide custom implementations for mocks created with `vi.fn` or `vi.spyOn` using methods like `.mockImplementation()`, `.mockReturnValue()`, `.mockResolvedValue()`.</prompt>"
*   Assertion on Mocks:
    "<prompt>Demonstrate using matchers like `toHaveBeenCalled`, `toHaveBeenCalledTimes`, `toHaveBeenCalledWith` to assert how mocks were called.</prompt>"
    
```javascript
    // service.js
    export const externalService = {
      call: () => { /* Does something external */ return 'real data'; }
    };

    // component.js
    import { externalService } from './service.js';
    export function processData() {
      return externalService.call();
    }

    // component.test.js
    import { expect, test, vi } from 'vitest';
    import { externalService } from './service.js';
    import { processData } from './component.js';

    // Using spyOn
    test('should call external service using spyOn', () => {
      const spy = vi.spyOn(externalService, 'call').mockReturnValue('mock data');
      const result = processData();
      expect(spy).toHaveBeenCalled();
      expect(result).toBe('mock data');
      spy.mockRestore(); // Important to restore original implementation
    });

    // Using vi.mock (often preferred for modules)
    vi.mock('./service.js', () => ({
      externalService: {
        call: vi.fn().mockReturnValue('mock data from vi.mock')
      }
    }));

    test('should call mocked external service using vi.mock', () => {
      const result = processData();
      expect(externalService.call).toHaveBeenCalled();
      expect(result).toBe('mock data from vi.mock');
    });
    ```


## Mocking Timers (`vi.useFakeTimers`, `vi.advanceTimersByTime`)
"<prompt>Explain how to use `vi.useFakeTimers` to control time-based functions like `setTimeout` or `setInterval` within tests. Demonstrate advancing time using `vi.advanceTimersByTime` or `vi.runAllTimers`.</prompt>"
*   Example Timer Mock:
    "<prompt>Generate an example of a function using `setTimeout` and a ViTest test that uses `vi.useFakeTimers` and `vi.advanceTimersByTime` to test its behavior without waiting.</prompt>"

## Mocking Globals (e.g., `fetch`)
"<prompt>Show how to mock global objects or functions like the `fetch` API using `vi.stubGlobal` or by assigning a mock function to `global.fetch` within a test or setup file.</prompt>"

## Section Summary
"<prompt>Summarize Section IV in 2-3 sentences, covering the importance of mocking, ViTest's primary mocking APIs (`vi.mock`, `vi.fn`, `vi.spyOn`), and techniques for mocking timers and globals.</prompt>"

## Section Quiz
"<prompt>Create a quiz (4-6 questions) about ViTest mocking, covering `vi.mock` vs `vi.spyOn`, common mock assertion matchers, timer mocking, and the purpose of mocking dependencies.</prompt>"

## Reflective Prompt
"<prompt>Ask the learner to consider a scenario where they would choose `vi.spyOn` over `vi.mock` and explain their reasoning.</prompt>"

## Further Exploration
"<prompt>Provide links to the official ViTest documentation on Mocking, Spies, and Timer Mocks.</prompt>"

# V. Advanced Features and Integrations

## Learning Objectives
"<prompt>List 3-5 learning objectives covering advanced ViTest features like snapshot testing, component testing, coverage reporting, and IDE integration.</prompt>"

## Snapshot Testing
"<prompt>Explain the concept of snapshot testing and its use cases (e.g., UI component rendering, large object structures). Show how to use `toMatchSnapshot()` and `toMatchInlineSnapshot()` and how to update snapshots.</prompt>"
*   Example Snapshot:
    "<prompt>Provide a ViTest example using `toMatchSnapshot()` to test the structure of a returned object or rendered component output.</prompt>"

## Component Testing (React, Vue, etc.)
"<prompt>Introduce ViTest's capability for component testing. Explain the general setup involving a DOM environment (`jsdom` or `happy-dom`) and potentially a testing library like `@testing-library/react` or `@vue/test-utils`. Provide links or brief examples for React and Vue.</prompt>"
*   React Example Setup:
    "<prompt>Outline the necessary packages (`@testing-library/react`, `jsdom`) and basic configuration (`environment: 'jsdom'`, potential setup file) for testing React components with ViTest.</prompt>"
*   Vue Example Setup:
    "<prompt>Outline the necessary packages (`@vue/test-utils`, `jsdom`) and basic configuration (`environment: 'jsdom'`, potential setup file) for testing Vue components with ViTest.</prompt>"

## Code Coverage Reporting
"<prompt>Explain the importance of code coverage. Show how to install a coverage provider (`@vitest/coverage-v8` or `@vitest/coverage-istanbul`) and configure coverage reporting in `vitest.config.ts` (provider, reporters like `text`, `html`, `lcov`). Show the command to run tests with coverage (`vitest run --coverage`).</prompt>"
*   Configuration Example:
    "<prompt>Show a `vitest.config.ts` snippet configuring the `coverage` property with a provider and reporters.</prompt>"
    
```typescript
    // vitest.config.ts
    import { defineConfig } from 'vitest/config';

    export default defineConfig({
      test: {
        coverage: {
          provider: 'v8', // or 'istanbul'
          reporter: ['text', 'json', 'html'],
          // Add include/exclude patterns if needed
        },
      },
    });
    ```


## In-Source Testing
"<prompt>Describe ViTest's unique in-source testing feature, where tests can be written directly within source files alongside the implementation. Explain the configuration needed (`includeSource`) and the benefits/trade-offs.</prompt>"

## ViTest UI
"<prompt>Introduce the ViTest UI package (`@vitest/ui`) and how it provides a visual interface for running, viewing, and filtering tests in the browser. Show the command to start it (`vitest --ui`).</prompt>"

## IDE Integration (VS Code, WebStorm)
"<prompt>Mention available extensions or built-in integrations for popular IDEs like VS Code (Vitest extension) and JetBrains IDEs (built-in support) that allow running tests, debugging, and viewing results directly within the editor.</prompt>"

## Workspaces / Monorepo Support
"<prompt>Briefly explain ViTest's workspace feature for managing tests across multiple packages in a monorepo, typically configured via a `vitest.workspace.js` or `.ts` file.</prompt>"

## Section Summary
"<prompt>Summarize Section V in 2-3 sentences, highlighting advanced capabilities like snapshot testing, component testing integration, coverage analysis, and tooling features like the UI and IDE support.</prompt>"

## Section Quiz
"<prompt>Create a quiz (4-6 questions) about snapshot testing commands, requirements for component testing, coverage configuration, the purpose of in-source testing, and the ViTest UI.</prompt>"

## Further Exploration
"<prompt>Provide links to official ViTest documentation sections on Snapshot Testing, Component Testing guides (if available or external examples), Code Coverage, In-Source Testing, ViTest UI, and Workspaces.</prompt>"

# VI. Advanced Techniques and Optimization

## Learning Objectives
"<prompt>List 3-5 learning objectives focusing on optimizing test suites, advanced mocking patterns, custom environments, and benchmarking.</prompt>"

## Performance Optimization
"<prompt>Discuss strategies for speeding up test suites, including running tests concurrently (default behavior), test isolation considerations, using appropriate DOM environments (`happy-dom` vs `jsdom`), and potentially test sharding for CI environments.</prompt>"
*   Test Sharding:
    "<prompt>Explain the concept of test sharding and how the `--shard` CLI option can be used in CI pipelines to distribute tests across multiple machines/jobs.</prompt>"

## Advanced Mocking Patterns
"<prompt>Explore more complex mocking scenarios, such as mocking parts of a module, mocking classes or prototypes, dealing with complex asynchronous flows within mocks, and using manual mocks (`__mocks__`) effectively.</prompt>"
*   "<prompt>Discuss the use of `vi.fn().mockImplementation` for complex mock logic.</prompt>"
*   "<prompt>Mention techniques for cleaning up mocks and spies, potentially using `vi.clearAllMocks()` or `vi.resetAllMocks()` in setup/teardown hooks.</prompt>"

## Custom Test Environments
"<prompt>Introduce the possibility of creating custom Vitest environments for highly specific testing needs beyond the built-in `node`, `jsdom`, or `happy-dom`.</prompt>"
*   "<prompt>Provide a link to the relevant ViTest documentation on custom environments.</prompt>"

## Benchmarking (`bench`)
"<prompt>Introduce ViTest's experimental benchmarking feature using the `bench` function (similar to `test`/`it`) and its integration with Tinybench. Provide a simple example comparing the performance of two functions.</prompt>"
*   Example Benchmarking:
    "<prompt>Show a basic ViTest benchmark comparing two different implementations of a function using the `bench` API.</prompt>"

## Type Testing (`expectTypeOf`)
"<prompt>Introduce ViTest's experimental type testing feature using `expectTypeOf` for asserting TypeScript types at compile time within tests.</prompt>"
*   Example Type Test:
    "<prompt>Generate a simple ViTest example using `expectTypeOf` to assert the type of a variable or function return value.</prompt>"

## Custom Matchers
"<prompt>Explain how to extend `expect` with custom assertion logic using `expect.extend` for domain-specific or reusable complex assertions.</prompt>"
*   "<prompt>Provide a link to the documentation or an example of creating a custom matcher.</prompt>"

## Section Summary
"<prompt>Summarize Section VI in 2-3 sentences, focusing on techniques for optimizing test performance, handling advanced mocking situations, and utilizing specialized features like benchmarking and type testing.</prompt>"

## Section Quiz
"<prompt>Create a quiz (3-5 questions) covering performance optimization strategies (sharding, environments), advanced mocking concepts, and the purpose of benchmarking and type testing features.</prompt>"

## Reflective Prompt
"<prompt>Ask the learner to think about a situation in their project where a custom matcher could simplify test assertions.</prompt>"

## Further Exploration
"<prompt>Provide links to the official ViTest documentation on Performance, Benchmarking, Type Testing, Custom Matchers, and Custom Environments.</prompt>"
