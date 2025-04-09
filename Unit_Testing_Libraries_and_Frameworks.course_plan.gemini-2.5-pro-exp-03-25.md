# I. Fundamentals of Unit Testing

*   **Learning Objective:** Understand the core concepts, purpose, and benefits of unit testing in software development.

## Understanding Unit Testing
"<prompt>Explain the concept of unit testing in software development, defining what constitutes a 'unit' and the primary goal of this testing level. Context: Introduction to unit testing fundamentals."

## Importance and Benefits
"<prompt>Describe the key benefits of implementing unit testing, such as improved code quality, early bug detection, enhanced maintainability, and facilitating refactoring. Context: Justifying the value of unit testing within the Fundamentals section."

## Core Terminology
"<prompt>Define the following essential unit testing terms: Test Case, Test Suite, Test Runner, Assertion, Test Double (Mock, Stub, Fake). Context: Establishing foundational vocabulary for unit testing."
*   **Glossary:**
    *   "<prompt>Provide a concise definition for 'Test Case' in the context of unit testing."
    *   "<prompt>Provide a concise definition for 'Test Suite' in the context of unit testing."
    *   "<prompt>Provide a concise definition for 'Test Runner' in the context of unit testing."
    *   "<prompt>Provide a concise definition for 'Assertion' in the context of unit testing."
    *   "<prompt>Provide a concise definition for 'Test Double' and its common types (Mock, Stub, Fake) in unit testing."

*   **Key Point:**
    > Unit testing focuses on verifying the smallest testable parts of an application, called units, in isolation from the rest of the system.

*   **Summary:** This section introduced the definition, significance, and basic terminology of unit testing, laying the groundwork for understanding testing frameworks and practices.
*   **Quiz:**
    *   "<prompt>Generate 3 multiple-choice questions testing the understanding of what a unit test is, its primary benefits, and the definitions of Test Case and Assertion. Context: Self-assessment for Fundamentals of Unit Testing."
*   **Further Exploration:**
    *   "<prompt>Provide a link to a reputable online article or resource that gives a comprehensive overview of unit testing principles."
*   **Reflection:**
    *   "<prompt>Generate a prompt asking the learner to reflect on how unit testing could have been applied to a recent coding task they completed or encountered."
*   **Transition:** Now that the fundamental concepts are clear, we will explore the tools that help implement these concepts: unit testing frameworks.

# II. Introduction to Unit Testing Frameworks

*   **Learning Objective:** Gain familiarity with common unit testing frameworks across different programming languages and understand the basic structure of a test using a chosen framework.

## Framework Overview
"<prompt>Provide a brief overview of popular unit testing frameworks for major programming languages (e.g., Java: JUnit, TestNG; Python: pytest, unittest; JavaScript: Jest, Mocha; .NET: NUnit, MSTest). Highlight their common purpose. Context: Introducing the landscape of unit testing frameworks."

## Focus Framework: [Select One, e.g., pytest for Python]
"<prompt>Introduce pytest as the focus framework for practical examples. Explain its key features like minimal boilerplate, powerful fixture system, and plugin architecture. Context: Selecting and introducing a specific framework (pytest) within the Introduction to Frameworks section."

## Basic Test Structure and Execution
"<prompt>Show the basic structure of a unit test function using pytest, including naming conventions (`test_`) and a simple assertion. Demonstrate the command-line instruction to discover and run this test. Context: Practical implementation of a basic test using pytest."
*   **Example (pytest):**
    ```python
    # Example test file: test_example.py
    def func(x):
        return x + 1

    def test_answer():
        assert func(3) == 4
    ```
    "<prompt>Explain the Python code block above, detailing the function under test (`func`), the test function (`test_answer`), the assertion used, and how pytest would discover and execute this test. Context: Explaining a basic pytest example."
*   **Command:**
    `pytest`
    "<prompt>Explain what happens when the `pytest` command is run in a directory containing test files like `test_example.py`. Context: Demonstrating test execution with pytest."

*   **Glossary:**
    *   "<prompt>Provide a concise definition for 'Unit Testing Framework' in the context of software development."
    *   "<prompt>Provide a concise definition for 'Test Discovery' as performed by unit testing frameworks."
*   **Key Point:**
    > Unit testing frameworks provide structure, tools (like test runners and assertion libraries), and automation for writing and executing tests efficiently.

*   **Summary:** This section surveyed common unit testing frameworks and introduced the basic syntax and execution process using pytest as a concrete example.
*   **Quiz:**
    *   "<prompt>Generate 2 multiple-choice questions testing the recognition of common frameworks for specific languages and the basic command to run tests using pytest. Context: Self-assessment for Introduction to Unit Testing Frameworks."
*   **Further Exploration:**
    *   "<prompt>Provide a link to the official documentation or a 'Getting Started' guide for pytest. Context: Directing learners to primary resources for the focus framework."
*   **Reflection:**
    *   "<prompt>Generate a prompt asking the learner to consider the benefits a framework like pytest offers over manually writing and running test checks."
*   **Transition:** With a basic test written and executed, the next step is to learn how to write *effective* and well-structured unit tests.

# III. Writing Effective Unit Tests

*   **Learning Objective:** Learn standard patterns and techniques for structuring tests, writing meaningful assertions, and managing test setup/teardown.

## The Arrange-Act-Assert (AAA) Pattern
"<prompt>Explain the Arrange-Act-Assert (AAA) pattern for structuring unit tests. Describe what happens in each phase (Setup, Execution, Verification). Context: Introducing the standard structure for writing effective unit tests."

## Writing Assertions
"<prompt>Describe the role of assertions in unit tests. Provide examples of common assertion types (equality, inequality, truthiness, type checking, raising exceptions) using the chosen focus framework (pytest). Context: Detailing how to verify outcomes in unit tests using pytest assertions."
*   **Example (pytest assertions):**
    *   `assert actual == expected` "<prompt>Explain this pytest assertion for checking equality."
    *   `assert actual != expected` "<prompt>Explain this pytest assertion for checking inequality."
    *   `assert condition` "<prompt>Explain this pytest assertion for checking truthiness."
    *   `assert isinstance(obj, type)` "<prompt>Explain this pytest assertion for checking object type."
    *   `with pytest.raises(ExceptionType): ...` "<prompt>Explain how to use `pytest.raises` to assert that a specific exception is raised."

## Handling Setup and Teardown (Fixtures)
"<prompt>Explain the need for setup (creating preconditions) and teardown (cleaning up resources) in tests. Introduce the concept of fixtures in pytest for managing setup/teardown logic efficiently. Context: Managing test context using pytest fixtures."
### Basic Fixtures
"<prompt>Demonstrate how to define and use a simple pytest fixture using the `@pytest.fixture` decorator to provide data or objects to test functions. Context: Practical implementation of basic pytest fixtures."
*   **Example (pytest fixture):**
    ```python
    import pytest

    @pytest.fixture
    def sample_data():
        return {"key": "value"}

    def test_using_fixture(sample_data):
        assert sample_data["key"] == "value"
    ```
    "<prompt>Explain the Python code block above, detailing the fixture definition (`sample_data`) and how it's automatically passed to the test function (`test_using_fixture`). Context: Explaining a basic pytest fixture example."

*   **Glossary:**
    *   "<prompt>Provide a concise definition for the 'Arrange-Act-Assert (AAA)' pattern."
    *   "<prompt>Provide a concise definition for 'Fixture' in the context of testing frameworks like pytest."
*   **Key Point:**
    > The AAA pattern provides a clear and consistent structure for tests, while fixtures help manage test dependencies and setup/teardown logic cleanly.

*   **Summary:** This section covered the standard AAA structure for tests, various assertion methods provided by pytest, and the use of fixtures for managing test context.
*   **Quiz:**
    *   "<prompt>Generate 3 short-answer or multiple-choice questions testing the understanding of the AAA pattern, the purpose of assertions, and the role of fixtures in pytest. Context: Self-assessment for Writing Effective Unit Tests."
*   **Further Exploration:**
    *   "<prompt>Provide a link to the pytest documentation specifically covering assertions and fixtures."
    *   **Cross-reference:** See Section VI for advanced fixture usage.
*   **Reflection:**
    *   "<prompt>Generate a prompt asking the learner to rewrite a previously considered simple test scenario using the AAA pattern and identify potential needs for fixtures."
*   **Transition:** Unit tests often need to isolate the code under test from its dependencies. The next section explores techniques for achieving this using test doubles.

# IV. Test Doubles (Mocks, Stubs, Fakes)

*   **Learning Objective:** Understand the purpose of test doubles and learn how to use mocking libraries to create mocks and stubs for isolating code during testing.

## The Need for Isolation
"<prompt>Explain why isolating the unit under test from its external dependencies (like databases, network services, or complex objects) is crucial for effective unit testing. Context: Justifying the use of test doubles."

## Introduction to Test Doubles
"<prompt>Define 'Test Double' as a generic term for objects that replace real dependencies in a test. Briefly differentiate between Mocks, Stubs, and Fakes based on their behavior and purpose. Context: Defining and categorizing test doubles."
*   **Cross-reference:** Revisit the Glossary definition in Section I.

## Mocking Libraries (e.g., `unittest.mock` in Python)
"<prompt>Introduce Python's built-in `unittest.mock` library (or an equivalent for another language/framework, e.g., Mockito for Java, Moq for .NET). Explain its role in creating mock objects and controlling their behavior. Context: Introducing a specific library for creating test doubles in Python."

## Creating Mocks and Stubs
"<prompt>Demonstrate how to use `unittest.mock.Mock` or `unittest.mock.patch` to replace a dependency with a mock object in a test. Show how to configure return values (stubbing) and verify interactions (mocking). Context: Practical application of `unittest.mock` for creating stubs and mocks."
*   **Example (using `unittest.mock.patch`):**
    ```python
    from unittest.mock import patch
    import my_module # Assume my_module uses an external_service

    def test_my_function_with_mock():
        # Arrange: Patch the external service and configure return value
        with patch('my_module.external_service') as mock_service:
            mock_service.get_data.return_value = "mocked data"

            # Act: Call the function under test
            result = my_module.function_under_test()

            # Assert: Check the result and verify the mock was called
            assert result == "expected outcome based on mocked data"
            mock_service.get_data.assert_called_once()
    ```
    "<prompt>Explain the Python code block above, detailing how `patch` replaces `external_service`, how `return_value` is set (stubbing), and how `assert_called_once` verifies interaction (mocking). Context: Explaining a `unittest.mock.patch` example."

*   **Glossary:**
    *   "<prompt>Provide a concise definition for 'Mock Object' focusing on behavior verification."
    *   "<prompt>Provide a concise definition for 'Stub Object' focusing on providing canned responses."
    *   "<prompt>Provide a concise definition for 'Dependency Injection' and explain its relevance to testability and using test doubles."
*   **Key Point:**
    > Test doubles (especially mocks and stubs) allow testing units in isolation by replacing real dependencies with controllable substitutes. Mocking libraries simplify their creation and management.

*   **Summary:** This section explained the necessity of isolation in unit tests and introduced test doubles, focusing on practical implementation using Python's `unittest.mock` library to create mocks and stubs.
*   **Quiz:**
    *   "<prompt>Generate 3 questions (mix of multiple-choice and fill-in-the-blank) testing the difference between mocks and stubs, the purpose of isolation, and the basic usage of `unittest.mock.patch`. Context: Self-assessment for Test Doubles."
*   **Further Exploration:**
    *   "<prompt>Provide a link to the Python `unittest.mock` library documentation or a tutorial explaining its features in more detail."
*   **Reflection:**
    *   "<prompt>Generate a prompt asking the learner to identify dependencies in a function they wrote or know, and describe how they would use mocks or stubs to test that function in isolation."
*   **Transition:** Having covered the essentials of writing isolated tests, we now move to more advanced techniques to handle complex scenarios and improve test suites.

# V. Advanced Unit Testing Techniques

*   **Learning Objective:** Explore advanced testing features like parameterization, exception testing, coverage analysis, and integration with development workflows.

## Parameterizing Tests
"<prompt>Explain test parameterization and its benefits (reducing code duplication, testing multiple scenarios). Demonstrate how to parameterize tests using pytest's `@pytest.mark.parametrize` decorator. Context: Introducing test parameterization with pytest."
*   **Example (pytest parameterization):**
    ```python
    import pytest

    @pytest.mark.parametrize("test_input,expected", [
        (1, 2),
        (3, 4),
        (-1, 0),
    ])
    def test_increment(test_input, expected):
        assert my_module.increment(test_input) == expected # Assume increment adds 1
    ```
    "<prompt>Explain the Python code block above, showing how `@pytest.mark.parametrize` runs `test_increment` multiple times with different inputs and expected outputs. Context: Explaining a pytest parameterization example."

## Testing Exceptions
"<prompt>Revisit and elaborate on testing for expected exceptions. Show the preferred way to assert that a specific piece of code raises a specific exception using the chosen framework (e.g., `pytest.raises`). Context: Focusing on the technique for testing expected error conditions using pytest."
*   **Cross-reference:** See Section III for the initial introduction to `pytest.raises`.

## Test Coverage Analysis
"<prompt>Explain the concept of test coverage (e.g., line coverage, branch coverage). Introduce tools like `coverage.py` (for Python) and explain how to generate and interpret coverage reports to identify untested code. Context: Introducing test coverage as a metric for test suite completeness."
*   **Commands (Coverage.py with pytest):**
    `coverage run -m pytest`
    `coverage report -m`
    `coverage html`
    "<prompt>Explain the purpose of these three `coverage.py` commands when used with pytest: running tests under coverage, generating a text report, and generating an HTML report. Context: Demonstrating practical usage of coverage.py."

## Integration with CI/CD
"<prompt>Briefly explain how automated unit tests are typically integrated into Continuous Integration/Continuous Deployment (CI/CD) pipelines to provide rapid feedback on code changes. Mention common CI platforms (e.g., GitHub Actions, GitLab CI, Jenkins). Context: Situating unit testing within the broader DevOps workflow."

*   **Glossary:**
    *   "<prompt>Provide a concise definition for 'Test Parameterization'."
    *   "<prompt>Provide a concise definition for 'Test Coverage' and common metrics like line and branch coverage."
    *   "<prompt>Provide a concise definition for 'Continuous Integration (CI)' and its relationship with automated testing."
*   **Key Point:**
    > Advanced techniques like parameterization reduce test code duplication, coverage analysis helps identify gaps, and CI/CD integration automates the testing process, ensuring consistent quality checks.

*   **Summary:** This section explored advanced unit testing capabilities including parameterization, robust exception testing, code coverage measurement, and the role of unit tests in CI/CD pipelines.
*   **Quiz:**
    *   "<prompt>Generate 3 questions testing the understanding of parameterization benefits, how to interpret a basic coverage report, and the purpose of running tests in a CI pipeline. Context: Self-assessment for Advanced Unit Testing Techniques."
*   **Further Exploration:**
    *   "<prompt>Provide a link to the pytest documentation on parameterization (`parametrize`)."
    *   "<prompt>Provide a link to the `coverage.py` documentation or a tutorial."
    *   "<prompt>Provide a link to an article explaining the role of automated testing in CI/CD."
*   **Reflection:**
    *   "<prompt>Generate a prompt asking the learner to consider how test coverage reports could help improve the test suite for a project they are familiar with."
*   **Transition:** To gain mastery, it's helpful to dive deeper into the features of a specific framework. The next section focuses on advanced capabilities within pytest.

# VI. Framework-Specific Deep Dive (pytest)

*   **Learning Objective:** Master advanced features of the pytest framework, including fixture scopes, markers, and plugins, to write more sophisticated and maintainable tests.

## Advanced Fixture Usage
"<prompt>Explain different fixture scopes in pytest (`function`, `class`, `module`, `session`) and their use cases. Demonstrate how to define fixtures with specific scopes. Context: Exploring advanced fixture management in pytest."
### Fixture Teardown
"<prompt>Show how to add teardown logic to pytest fixtures using `yield` or `addfinalizer`. Context: Implementing cleanup actions within pytest fixtures."

## Using Markers
"<prompt>Explain pytest markers (`@pytest.mark`) for organizing, selecting, or configuring tests (e.g., `@pytest.mark.slow`, `@pytest.mark.skip`, `@pytest.mark.xfail`). Demonstrate defining and using custom markers. Context: Utilizing markers for test management in pytest."
*   **Command (Running marked tests):**
    `pytest -m slow`
    "<prompt>Explain how the `pytest -m <marker_name>` command selects tests tagged with a specific marker. Context: Demonstrating selective test execution using pytest markers."

## pytest Plugins
"<prompt>Introduce the concept of pytest plugins. Briefly mention some popular existing plugins (e.g., `pytest-cov`, `pytest-django`, `pytest-xdist`). Explain how plugins extend pytest functionality. Context: Overview of the pytest plugin ecosystem."
### Writing a Simple Plugin
"<prompt>Provide a conceptual overview or a very simple example of how a local plugin (`conftest.py`) can be used to define custom hooks or fixtures available across multiple test files. Context: Introduction to extending pytest via simple plugins."

*   **Glossary:**
    *   "<prompt>Provide concise definitions for pytest fixture 'scopes' (`function`, `class`, `module`, `session`)."
    *   "<prompt>Provide a concise definition for 'pytest Marker'."
    *   "<prompt>Provide a concise definition for 'pytest Plugin'."
*   **Key Point:**
    > Mastering framework-specific features like pytest's advanced fixtures, markers, and plugin system allows for highly efficient, organized, and powerful test suites.

*   **Summary:** This section delved into advanced pytest features, covering fixture scopes and teardown, test organization with markers, and the extensibility offered by the plugin system.
*   **Quiz:**
    *   "<prompt>Generate 3 questions testing the understanding of different fixture scopes, the purpose of markers like `skip` and `xfail`, and the role of plugins in pytest. Context: Self-assessment for pytest Deep Dive."
*   **Further Exploration:**
    *   "<prompt>Provide a link to the pytest documentation section covering fixtures in detail."
    *   "<prompt>Provide a link to the pytest documentation section covering markers."
    *   "<prompt>Provide a link to the pytest documentation section on plugins and hooks."
*   **Reflection:**
    *   "<prompt>Generate a prompt asking the learner to think about how markers or different fixture scopes could improve the organization or performance of a test suite they have worked with or imagined."
*   **Transition:** Knowing the tools and advanced techniques is essential, but applying them effectively requires understanding best practices and common pitfalls, which are covered in the final section.

# VII. Best Practices and Patterns

*   **Learning Objective:** Learn principles for writing high-quality, maintainable unit tests, understand the basics of TDD, and recognize common anti-patterns.

## Writing Maintainable Tests
"<prompt>Discuss best practices for writing readable and maintainable unit tests, including clear naming conventions, focusing each test on a single concern, avoiding complex logic in tests, and keeping tests independent. Context: Guidelines for improving test quality."

## Test-Driven Development (TDD) Overview
"<prompt>Introduce the Test-Driven Development (TDD) workflow (Red-Green-Refactor). Explain its benefits, such as driving design and ensuring testability from the start. Context: Introducing the TDD methodology."
*   **TDD Cycle:**
    1.  **Red:** Write a failing test for the desired functionality.
    2.  **Green:** Write the minimum code necessary to make the test pass.
    3.  **Refactor:** Improve the code while ensuring tests still pass.
    "<prompt>Explain the Red-Green-Refactor cycle of TDD."

## Common Anti-Patterns
"<prompt>Describe common anti-patterns in unit testing to avoid, such as testing implementation details, overly complex tests, interdependent tests, slow tests, and testing trivial code. Explain why these are problematic. Context: Identifying and avoiding common mistakes in unit testing."

## Performance Considerations
"<prompt>Discuss factors affecting test suite performance (e.g., excessive I/O, complex setup, inefficient mocks). Suggest strategies for keeping unit test suites fast, emphasizing that unit tests should generally be quick to run. Context: Addressing performance aspects of unit testing."
*   **Key Point:**
    > Following best practices like clear structure, focusing on behavior, and adopting TDD leads to more effective and maintainable test suites. Avoiding anti-patterns prevents tests from becoming a liability.

*   **Summary:** This concluding section focused on best practices for writing high-quality tests, introduced the TDD cycle, highlighted common anti-patterns to avoid, and touched upon performance considerations for test suites.
*   **Quiz:**
    *   "<prompt>Generate 3 questions testing the understanding of key maintainability principles, the Red-Green-Refactor cycle of TDD, and the identification of a common unit testing anti-pattern. Context: Self-assessment for Best Practices and Patterns."
*   **Further Exploration:**
    *   "<prompt>Provide a link to an article or blog post discussing unit testing best practices in depth."
    *   "<prompt>Provide a link to a resource that offers a more detailed introduction to Test-Driven Development (TDD)."
*   **Reflection:**
    *   "<prompt>Generate a final reflection prompt asking the learner to summarize the three most important things they learned about unit testing libraries and frameworks and how they plan to apply this knowledge."
