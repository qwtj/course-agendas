# I. Cucumber Fundamentals

## Understanding Behavior-Driven Development (BDD)

### Principles of BDD
*   Focus on business value and collaboration.
*   Writing specifications in natural language.

### Benefits of BDD
*   Improved communication between stakeholders.
*   Executable specifications as living documentation.
*   Increased test coverage and reduced ambiguity.

## Introducing Cucumber

### What is Cucumber?
*   A BDD automation tool.
*   Supports multiple programming languages (e.g., Ruby, Java, JavaScript).

### Cucumber Workflow
*   Write feature files in Gherkin.
*   Implement step definitions to map Gherkin steps to code.
*   Run Cucumber to execute the scenarios and generate reports.

# II. Gherkin: Writing Feature Files

## Feature File Structure

### Feature Keyword
*   Describes a high-level feature.
*   Example: `Feature: User Authentication`

### Scenario Keyword
*   Describes a specific scenario within a feature.
*   Example: `Scenario: Successful login with valid credentials`

### Scenario Outline Keyword
*   Describes multiple scenarios with different data sets using examples.
*   Example: `Scenario Outline: Login with different roles`

### Background Keyword
*   Defines steps that are executed before each scenario.
*   Example: `Background: Given the user is on the login page`

## Gherkin Keywords: Given, When, Then, And, But

### Given Keyword
*   Sets up the initial context or preconditions.
*   Example: `Given the user is on the registration page`

### When Keyword
*   Describes an event or action performed by the user or system.
*   Example: `When the user enters valid credentials`

### Then Keyword
*   Describes the expected outcome or result.
*   Example: `Then the user should be logged in successfully`

### And/But Keywords
*   Used to add more detail to Given, When, or Then steps.
*   Example: `And the user should see the welcome message`
*   Example: `But the user should not see an error message`

## Writing Effective Feature Files

### Use Clear and Concise Language
*   Focus on business terms and avoid technical jargon.

### Keep Scenarios Focused
*   Each scenario should test one specific aspect of the feature.

### Example: Simple Feature File

```gherkin
Feature: User Login

  Scenario: Successful login with valid credentials
    Given the user is on the login page
    When the user enters username "validuser" and password "password123"
    And clicks on the login button
    Then the user should be logged in successfully
    And the user should see the welcome message
```

# III. Step Definitions

## Understanding Step Definitions

### Mapping Gherkin Steps to Code
*   Step definitions are code that implement the actions described in Gherkin steps.

### Regular Expressions in Step Definitions
*   Used to match Gherkin steps with the corresponding code.

## Writing Step Definitions

### Step Definition Annotations
*   Annotations (e.g., `@Given`, `@When`, `@Then`) associate the step definition with a Gherkin step.

### Capturing Parameters
*   Extracting data from Gherkin steps using regular expressions.

### Example: Java Step Definition

```java
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class LoginSteps {

    @Given("the user is on the login page")
    public void theUserIsOnTheLoginPage() {
        // Code to navigate to the login page
    }

    @When("the user enters username {string} and password {string}")
    public void theUserEntersUsernameAndPassword(String username, String password) {
        // Code to enter username and password
        System.out.println("Username: " + username + ", Password: " + password);
    }

    @Then("the user should be logged in successfully")
    public void theUserShouldBeLoggedInSuccessfully() {
        // Code to verify successful login
    }
}
```

# IV. Cucumber Setup and Configuration (Java Example)

## Setting up a Cucumber Project

### Maven or Gradle Dependency Management
*   Adding Cucumber dependencies to your project.
    ```xml
    <dependency>
        <groupId>io.cucumber</groupId>
        <artifactId>cucumber-java</artifactId>
        <version>7.0.0</version>
    </dependency>
    <dependency>
        <groupId>io.cucumber</groupId>
        <artifactId>cucumber-junit</artifactId>
        <version>7.0.0</version>
        <scope>test</scope>
    </dependency>
    ```

### Creating Feature Files Directory
*   Organizing feature files in a dedicated directory (e.g., `src/test/resources/features`).

### Creating Step Definitions Directory
*   Organizing step definitions in a dedicated directory (e.g., `src/test/java/stepdefinitions`).

## Running Cucumber Tests

### JUnit Runner
*   Creating a JUnit runner class to execute Cucumber tests.

### Cucumber Options
*   Specifying feature files location, glue code location (step definitions), and report format.

### Example: JUnit Runner Class

```java
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "stepdefinitions",
        plugin = {"pretty", "html:target/cucumber-reports"}
)
public class RunCucumberTest {
}
```

# V. Advanced Cucumber Techniques

## Data Tables

### Using Data Tables to Pass Multiple Data Sets
*   Representing tabular data in Gherkin scenarios.

### Accessing Data Tables in Step Definitions
*   Using Cucumber's `DataTable` class to access the data.

### Example: Data Table in Feature File

```gherkin
Scenario: Register multiple users
  Given the user is on the registration page
  When the user enters the following details:
    | firstname | lastname | email             | password   |
    | John      | Doe      | john.doe@test.com | password123 |
    | Jane      | Smith    | jane.smith@test.com| password456 |
  Then the users should be registered successfully
```

### Example: Step Definition using DataTable

```java
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.When;

import java.util.List;
import java.util.Map;

public class RegistrationSteps {
    @When("the user enters the following details:")
    public void theUserEntersTheFollowingDetails(DataTable dataTable) {
        List<Map<String, String>> users = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> user : users) {
            String firstname = user.get("firstname");
            String lastname = user.get("lastname");
            String email = user.get("email");
            String password = user.get("password");
            // Code to register the user
            System.out.println("Registering user: " + firstname + " " + lastname + " with email: " + email);
        }
    }
}
```

## Scenario Outlines

### Parameterized Scenarios
*   Running the same scenario multiple times with different data sets.

### Examples Keyword
*   Defining the data sets for the scenario outline.

### Example: Scenario Outline in Feature File

```gherkin
Scenario Outline: Login with different roles
  Given the user is on the login page
  When the user enters username "<username>" and password "<password>"
  Then the user should be logged in as "<role>"

  Examples:
    | username  | password    | role        |
    | admin     | admin123    | administrator |
    | editor    | editor456   | editor      |
    | viewer    | viewer789   | viewer      |
```

### Example: Step Definition for Scenario Outline

```java
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class LoginSteps {

    @Given("the user is on the login page")
    public void theUserIsOnTheLoginPage() {
        // Code to navigate to the login page
    }

    @When("the user enters username {string} and password {string}")
    public void theUserEntersUsernameAndPassword(String username, String password) {
        // Code to enter username and password
        System.out.println("Username: " + username + ", Password: " + password);
    }

    @Then("the user should be logged in as {string}")
    public void theUserShouldBeLoggedInAs(String role) {
        // Code to verify the user's role
        System.out.println("User logged in as: " + role);
    }
}
```

## Hooks

### Before and After Hooks
*   Executing code before and after each scenario or feature.

### Using Hooks for Setup and Teardown
*   Setting up test data, initializing drivers, and cleaning up resources.

### Example: Hook in Step Definitions

```java
import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {

    @Before
    public void setup() {
        // Code to initialize WebDriver or database connection
        System.out.println("Starting setup...");
    }

    @After
    public void teardown() {
        // Code to close WebDriver or database connection
        System.out.println("Running teardown...");
    }
}
```

# VI. Reporting and Integration

## Cucumber Reporting

### Built-in Reports
*   Using Cucumber's built-in HTML and JSON reports.

### Customizing Reports
*   Using plugins to generate more detailed and visually appealing reports.

### Common Reporting Plugins
*   `pretty`, `html`, `json`, `junit`

## Integration with CI/CD Pipelines

### Running Cucumber Tests in CI/CD
*   Integrating Cucumber tests into your CI/CD pipeline (e.g., Jenkins, GitLab CI, GitHub Actions).

### Publishing Reports to CI/CD
*   Making Cucumber reports available in your CI/CD environment.
