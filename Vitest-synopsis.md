Learning Objectives: Understand Vitest core concepts, write unit and component tests, utilize mocking, and configure testing environments.

Prerequisites: Basic JavaScript, familiarity with a frontend framework (Vue, React, or Svelte), and npm/Node.js.

Depth & Scope: Intermediate; covers setup, core concepts, advanced features, and CI integration.

Target Audience: Frontend developers seeking to implement unit and component testing.

Technical Details:
*   `npm create vite@latest my-project --template vue`
*   `npm install -D vitest`
*   `"test": "vitest"` in `package.json`
*   `describe`, `it`, `expect`
*   `.toBe`, `.toEqual`, `.toBeTruthy`, `.toBeFalsy`, `.toBeGreaterThan`, `.toBeLessThan`, `.toContain`, `.resolves`, `.rejects`
*   `vi.fn()`, `vi.spyOn()`, `.mockReturnValue()`, `.mockImplementation()`, `.toHaveBeenCalled()`, `.toHaveBeenCalledWith()`
*   `beforeAll`, `beforeEach`, `afterEach`, `afterAll`
*   `@vitest/coverage-v8`
*   `jsdom` or `happy-dom`
*   `@vue/test-utils`, `@testing-library/react`, `@testing-library/svelte`
*   `async/await`
*   `vi.useFakeTimers()`
*   GitHub Actions configuration for CI.

Relevant Technologies/Tools: JavaScript, Vue.js, React, Svelte, Vitest, npm, Node.js, `@vue/test-utils`, `@testing-library/react`, `@testing-library/svelte`, `@vitest/coverage-v8`, jsdom, happy-dom, GitHub Actions.

Preferred Format/Length: Detailed explanations with concise code examples.
