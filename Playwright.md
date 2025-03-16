# I. Introduction to Playwright

## Understanding Playwright's Core Concepts

### Cross-Browser Testing

*   Understanding the need for testing across different browsers (Chrome, Firefox, Safari, Edge).
*   Playwright's ability to control multiple browsers with a single API.

### Auto-Waiting

*   Learn about Playwright's built-in auto-waiting mechanism.
*   Understanding how Playwright implicitly waits for elements to be actionable.

### Selectors

*   Different types of selectors in Playwright (`CSS`, `XPath`, `Text`, `ID`, `Role`).
*   Best practices for choosing reliable and maintainable selectors.

### Execution Contexts

*   Understanding Playwright's isolated execution contexts.
*   Managing multiple pages and iframes.

## Setting up a Playwright Project

### Installation

*   Installing Playwright via `npm install -D @playwright/test`.
*   Installing browser binaries using `npx playwright install`.

### Project Structure

*   Understanding the default project structure: `tests/`, `package.json`, `playwright.config.js`.
*   Configuring Playwright using `playwright.config.js` (e.g., `use` options).

### Running Tests

*   Running tests using the `npx playwright test` command.
*   Using the Playwright Inspector for debugging (`npx playwright test --ui`).

# II. Writing Basic Tests

## Locating Elements

### Using Selectors

*   Practical exercises for locating elements using different selectors.
*   Examples:
    ```javascript
    await page.locator('text=Submit').click();
    await page.locator('#username').fill('testuser');
    await page.locator('input[name="password"]').type('password123');
    ```

### Chaining Locators

*   Combining locators for more specific element selection.
*   Example: `page.locator('#form').locator('button[type="submit"]')`

## Interacting with Elements

### Clicking

*   `page.click()` and `locator.click()` methods.
*   Clicking on buttons, links, and other interactive elements.

### Filling Forms

*   `page.fill()` and `locator.fill()` for input fields.
*   `page.selectOption()` and `locator.selectOption()` for dropdowns.
*   `page.check()` and `page.uncheck()` for checkboxes and radio buttons.

### Keyboard and Mouse Actions

*   `page.keyboard` for typing and pressing keys.
*   `page.mouse` for simulating mouse movements and clicks.

## Assertions

### Using Expect

*   Understanding the `expect` API for assertions.
*   Common matchers: `toBeVisible()`, `toBeChecked()`, `toHaveText()`, `toHaveValue()`, `toHaveAttribute()`.

### Asserting Element States

*   Checking if an element is visible, enabled, checked, etc.
*   Example: `await expect(page.locator('#success-message')).toBeVisible();`

### Asserting Text Content

*   Verifying the text content of an element.
*   Example: `await expect(page.locator('.title')).toHaveText('Welcome');`

# III. Advanced Playwright Features

## Page Object Model (POM)

### Creating Page Objects

*   Implementing the Page Object Model design pattern for test maintainability.
*   Creating classes to represent web pages and their elements.

### Using Page Objects in Tests

*   Instantiating page objects in tests and using their methods to interact with the UI.

### Example Page Object

```javascript
class LoginPage {
  constructor(page) {
    this.page = page;
    this.usernameInput = page.locator('#username');
    this.passwordInput = page.locator('#password');
    this.loginButton = page.locator('button[type="submit"]');
  }

  async goto() {
    await this.page.goto('/login');
  }

  async login(username, password) {
    await this.usernameInput.fill(username);
    await this.passwordInput.fill(password);
    await this.loginButton.click();
  }
}
```

## Fixtures

### Understanding Fixtures

*   Using Playwright's fixtures for test setup and teardown.
*   Defining custom fixtures for common test scenarios.

### Page and Browser Fixtures

*   Understanding the built-in `page` and `browser` fixtures.
*   Using fixtures to manage browser contexts and pages.

### Worker Fixtures

*   Using worker-scoped fixtures to perform setup tasks once per worker.
*   Example: Setting up a database connection.

## API Testing

### Making API Requests

*   Using `request` fixture to make API requests.
*   Sending `GET`, `POST`, `PUT`, and `DELETE` requests.

### Asserting API Responses

*   Checking the status code, headers, and body of API responses.
*   Example:
    ```javascript
    const response = await request.get('/api/users/1');
    expect(response.status()).toBe(200);
    const body = await response.json();
    expect(body.name).toBe('John Doe');
    ```

## Handling Alerts and Dialogs

### Intercepting Dialogs

*   Using `page.on('dialog', ...)` to intercept alerts, confirms, and prompts.

### Accepting or Dismissing Dialogs

*   Using `dialog.accept()` and `dialog.dismiss()` to handle dialogs.
*   Example:
    ```javascript
    page.on('dialog', async dialog => {
      console.log(dialog.message());
      await dialog.accept();
    });
    await page.locator('#delete-button').click();
    ```

# IV. Advanced Techniques and Best Practices

## Test Hooks

### BeforeEach and AfterEach

*   Using `beforeEach` and `afterEach` hooks for setup and teardown within a test file.
*   Example: Logging in a user before each test.

### BeforeAll and AfterAll

*   Using `beforeAll` and `afterAll` hooks for setup and teardown before and after all tests in a file.
*   Example: Starting and stopping a server.

## Parallel Testing

### Configuring Parallelism

*   Configuring the number of workers in `playwright.config.js`.
*   Using `fullyParallel: true` to run tests in parallel across files.

### Managing Shared Resources

*   Using worker fixtures to manage shared resources in parallel tests.

## Test Retries and Flaky Tests

### Configuring Retries

*   Configuring the number of retries in `playwright.config.js`.
*   Identifying and addressing flaky tests.

### Analyzing Test Results

*   Using Playwright's HTML reporter to analyze test results and identify failures.

## Continuous Integration (CI)

### Integrating with CI Systems

*   Configuring Playwright tests in CI systems like GitHub Actions, GitLab CI, and Jenkins.

### Running Tests in Headless Mode

*   Running tests in headless mode on CI servers.
*   Using environment variables to configure Playwright.
