# I. Introduction to Puppeteer

## Understanding Puppeteer's Purpose and Capabilities

### Defining Puppeteer
*   What Puppeteer is: A Node.js library.
*   Its main purpose: Controlling headless Chrome or Chromium.
*   Automating browser actions: Clicking, filling forms, navigation.
*   Web scraping and testing scenarios.

### Puppeteer vs. Selenium

*   Key differences in architecture.
*   Performance and resource consumption comparison.
*   Use cases where Puppeteer excels.
*   Use cases where Selenium might be more appropriate.

## Setting Up Your Environment

### Installing Node.js and npm
*   Downloading and installing Node.js.
*   Verifying installation using `node -v` and `npm -v`.

### Installing Puppeteer
*   Using npm: `npm install puppeteer`.
*   Understanding the downloaded Chromium browser.
*   Configuring Puppeteer to use an existing Chrome installation.

# II. Core Puppeteer Concepts

## Launching and Closing a Browser Instance

### Launching a new browser instance
*   Using `puppeteer.launch()`.
*   Configuring launch options: `headless`, `args`, `userDataDir`.
*   Example:

    ```javascript
    const puppeteer = require('puppeteer');

    (async () => {
      const browser = await puppeteer.launch({ headless: false });
      // ... rest of the code
      await browser.close();
    })();
    ```

### Closing a browser instance
*   Using `browser.close()`.
*   Handling unexpected browser closures.

## Working with Pages

### Creating and navigating to a new page
*   Using `browser.newPage()`.
*   Navigating to a URL: `page.goto('https://example.com')`.
*   Waiting for navigation to complete: `page.goto('https://example.com', { waitUntil: 'networkidle0' })`.

### Interacting with page content
*   Selecting elements: `page.$('selector')`, `page.$$('selector')`.
*   Getting element properties: `elementHandle.getProperty('propertyName')`.
*   Example: getting the text content of an element:

    ```javascript
    const element = await page.$('h1');
    const text = await element.getProperty('textContent');
    const textValue = await text.jsonValue();
    console.log(textValue);
    ```

## Evaluating JavaScript in the Browser Context

### Running JavaScript code within the page
*   Using `page.evaluate()`.
*   Passing arguments to the evaluated function.
*   Example:

    ```javascript
    const result = await page.evaluate((selector) => {
      return document.querySelector(selector).innerText;
    }, 'h1');
    console.log(result);
    ```

### Exposing Node.js functions to the browser
*   Using `page.exposeFunction()`.
*   Calling exposed functions from the browser.

# III. Advanced Puppeteer Techniques

## Handling Forms

### Filling out form fields
*   Using `page.type('selector', 'text')`.
*   Selecting from dropdowns: `page.select('selector', 'value')`.
*   Checking checkboxes and radio buttons: `page.click('selector')`.

### Submitting forms
*   Using `page.click('selector')` on a submit button.
*   Waiting for navigation after submission: `page.waitForNavigation()`.
*   Example:

    ```javascript
    await page.type('#username', 'myusername');
    await page.type('#password', 'mypassword');
    await page.click('#login');
    await page.waitForNavigation();
    ```

## Web Scraping with Puppeteer

### Extracting data from web pages
*   Using `page.evaluate()` to extract data.
*   Iterating over elements using `page.$$()`.
*   Example: Extracting all links from a page.

    ```javascript
    const links = await page.evaluate(() => {
      const anchors = Array.from(document.querySelectorAll('a'));
      return anchors.map(anchor => anchor.href);
    });
    console.log(links);
    ```

### Handling pagination

*   Identifying pagination elements.
*   Automating navigation through multiple pages.
*   Combining data from different pages.

## Taking Screenshots and Generating PDFs

### Taking screenshots
*   Using `page.screenshot({ path: 'example.png' })`.
*   Configuring screenshot options: `fullPage`, `clip`.

### Generating PDFs
*   Using `page.pdf({ path: 'example.pdf' })`.
*   Configuring PDF options: `format`, `margin`.

## Intercepting Network Requests

### Intercepting and modifying requests
*   Using `page.setRequestInterception(true)`.
*   Responding to requests with custom data.
*   Example: blocking image requests.

    ```javascript
    await page.setRequestInterception(true);
    page.on('request', (request) => {
      if (request.resourceType() === 'image') {
        request.abort();
      } else {
        request.continue();
      }
    });
    ```

### Mocking API responses

*   Using `page.respond()` to mock API responses.
*   Creating test scenarios without relying on external APIs.

# IV. Testing with Puppeteer

## Writing End-to-End Tests

### Automating user interactions
*   Simulating user flows with Puppeteer.
*   Asserting expected outcomes.

### Integrating with testing frameworks

*   Using Jest, Mocha, or other testing frameworks.
*   Example using Jest:

    ```javascript
    const puppeteer = require('puppeteer');

    describe('My Website', () => {
      it('should display the correct title', async () => {
        const browser = await puppeteer.launch();
        const page = await browser.newPage();
        await page.goto('https://example.com');
        const title = await page.title();
        expect(title).toBe('Example Domain');
        await browser.close();
      });
    });
    ```

## Performance Testing

### Measuring page load times
*   Using `page.metrics()` to gather performance data.
*   Identifying performance bottlenecks.

### Auditing page performance with Lighthouse
*   Running Lighthouse audits programmatically.
*   Analyzing performance reports.

# V. Best Practices and Common Issues

## Handling Asynchronous Operations

### Using `async/await` effectively
*   Avoiding callback hell.
*   Writing clean and readable asynchronous code.

### Handling timeouts
*   Setting appropriate timeouts for Puppeteer operations.
*   Handling timeout errors gracefully.

## Dealing with Dynamic Content

### Waiting for elements to appear
*   Using `page.waitForSelector('selector')`.
*   Waiting for specific conditions using `page.waitForFunction()`.

### Handling single-page applications (SPAs)
*   Waiting for data to load in SPAs.
*   Using `page.waitForNavigation()` after route changes.

## Avoiding Detection

### Rotating user agents
*   Using different user agent strings to avoid detection.

### Using proxies
*   Configuring Puppeteer to use proxies.

### Dealing with CAPTCHAs
*   Exploring CAPTCHA solving services.
