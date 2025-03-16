# I. Introduction to Karate DSL

## Understanding Karate's Core Concepts

### Feature Files and Scenarios
*   Structure of a `.feature` file.
*   Defining `Scenario` and `Scenario Outline`.
*   Use of `Given`, `When`, `Then`, `And`, `But` keywords.

### Variables and Data Types
*   Declaring variables in Karate.
*   Understanding data types: `string`, `number`, `boolean`, `array`, `object`.
*   Working with JSON and XML data.

## Setting up a Karate Project

### Maven Dependency
*   Adding the Karate dependency to your `pom.xml`:

```xml
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-core</artifactId>
    <version>1.4.1</version> <!-- Use the latest version -->
    <scope>test</scope>
</dependency>
```

### JUnit Runner
*   Creating a JUnit runner class to execute Karate feature files.

```java
import com.intuit.karate.junit5.Karate;

class MyTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

}
```

# II. Basic Karate Syntax and Operations

## Making HTTP Requests

### `url` keyword
*   Setting the base URL: `url 'https://api.example.com'`

### `path` keyword
*   Appending path segments: `path '/users/123'`

### HTTP Methods
*   Using `get`, `post`, `put`, `delete`, `patch` methods.
*   Example `get`:

```gherkin
Given url 'https://api.example.com'
And path '/users/123'
When method get
Then status 200
```

### Request Body
*   Sending JSON request bodies.
*   Example `post` with JSON:

```gherkin
Given url 'https://api.example.com'
And path '/users'
And request { "name": "John Doe", "job": "Software Engineer" }
When method post
Then status 201
```

## Assertions and Validations

### `status` keyword
*   Asserting HTTP status codes: `status 200`, `status 404`.

### `match` keyword
*   Performing assertions on response data.
*   Examples:
    *   `match response.id == 123`
    *   `match response.name == 'John Doe'`
    *   `match response.hobbies contains ['reading', 'coding']`
*   Using `contains`, `each`, `every`, `not contains` keywords.

### JsonPath and XPath
*   Using JsonPath to extract data from JSON responses: `$.name`, `$.address.city`.
*   Using XPath to extract data from XML responses: `/users/user[1]/name`.

# III. Advanced Karate Features

## Karate Expressions and Functions

### JavaScript Interop
*   Executing JavaScript code within Karate.
*   Example: `* def userId = karate.eval("Math.floor(Math.random() * 1000)")`

### Calling Other Feature Files
*   Reusing scenarios from other feature files using `call`.
*   Example: `* call read('classpath:common/user-management.feature')`

### Data-Driven Testing
*   Using `Scenario Outline` and `Examples` tables.

```gherkin
Scenario Outline: Create user with different roles
    Given url 'https://api.example.com'
    And path '/users'
    And request { "name": "<name>", "role": "<role>" }
    When method post
    Then status 201

    Examples:
      | name     | role         |
      | John Doe | administrator |
      | Jane Doe | editor       |
```

## Working with Headers and Cookies

### Setting Request Headers
*   Using the `header` keyword: `header Content-Type = 'application/json'`

### Handling Cookies
*   Setting and retrieving cookies.
*   `header Set-Cookie`

## Reporting and Debugging

### Karate Reports
*   Generating HTML reports after test execution.
*   Understanding the report structure and content.

### Debugging Techniques
*   Using `print` statements for debugging.
*   Analyzing Karate logs.

# IV. Building a Test Automation Framework

## Environment Configuration

### `karate-config.js`
*   Creating a `karate-config.js` file to define environment-specific variables.
*   Example:

```javascript
function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    baseUrl: 'https://api.example.com'
  };
  if (env == 'stage') {
    config.baseUrl = 'https://stage.example.com';
  }
  return config;
}
```

### Environment Switching
*   Running tests against different environments using `-Dkarate.env=<environment>`

## Reusable Functions and Libraries

### Creating Helper Functions
*   Defining reusable functions in JavaScript files.
*   Example: `* def generateRandomId = function(){ return Math.floor(Math.random() * 10000) }`

### Organizing Feature Files
*   Structuring feature files into logical modules.
*   Using folders for different API endpoints or functionalities.

## API Testing Best Practices

### Test Data Management
*   Generating and managing test data effectively.

### Test Case Design
*   Writing clear, concise, and maintainable test cases.

### Continuous Integration
*   Integrating Karate tests into a CI/CD pipeline.
