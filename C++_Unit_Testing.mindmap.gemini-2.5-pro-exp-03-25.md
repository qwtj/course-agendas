# C++ Unit Testing #Overview #SoftwareEngineering #QualityAssurance
An outline of concepts, frameworks, techniques, and best practices for unit testing C++ code.

## Fundamentals of Unit Testing #Basics #Theory #Concepts
Core principles and the 'why' behind unit testing.
### What is Unit Testing? #Definition #Scope
Testing individual, isolated components (units) of software, typically functions or classes.
### Why Unit Test? #Benefits #Motivation
Improving code quality, facilitating refactoring, enabling regression detection, providing documentation, supporting design (TDD).
### Properties of Good Unit Tests (FIRST) #Principles #Quality
Fast, Independent/Isolated, Repeatable, Self-Validating, Timely/Thorough.
### The Unit Testing Lifecycle #Process #Workflow
Write test -> Write code -> Run tests -> Refactor -> Repeat.
### Anatomy of a Unit Test #Structure #Components
Setup (Arrange), Execution (Act), Verification (Assert), Teardown.

## C++ Unit Testing Frameworks #Tools #Libraries #Ecosystem
Popular libraries and tools to facilitate writing and running C++ unit tests.
### GoogleTest (gtest) #Popular #Framework #Google
Widely used framework with rich assertions, death tests, fixtures, parameterized tests.
#### Key Features #gtest #Features
Assertions (ASSERT_, EXPECT_), Test Fixtures (`::testing::Test`), Parameterized Tests (`::testing::TestWithParam`), Mocking (via GoogleMock).
### Catch2 #Modern #Framework #HeaderOnly
Header-only framework known for easy setup and natural language BDD-style syntax.
#### Key Features #Catch2 #Features
Sections (`SECTION`), BDD Syntax (`SCENARIO`, `GIVEN`, `WHEN`, `THEN`), Tagging (`[tag]`), Generators.
### Boost.Test #Boost #Framework #Library
Part of the Boost C++ Libraries, offering a comprehensive testing solution.
#### Key Features #BoostTest #Features
Test Organization (Suites, Cases), Assertions (`BOOST_CHECK`), Fixtures, Data-Driven Tests.
### CppUnit #Classic #Framework #xUnit
An older, established framework based on the xUnit architecture (like JUnit).
#### Key Features #CppUnit #Features
Fixtures (`CppUnit::TestFixture`), Assertions (`CPPUNIT_ASSERT`), Test Suites (`CppUnit::TestSuite`).
### Choosing a Framework #Selection #Criteria
Factors: Ease of use, features, community support, integration, licensing, project needs.

## Writing Effective Unit Tests #BestPractices #TestDesign #Quality
Guidelines and techniques for creating valuable and maintainable tests.
### Arrange-Act-Assert (AAA) Pattern #Structure #Pattern
Standard structure for clear and concise tests.
### Test Naming Conventions #Readability #Convention
Descriptive names indicating the tested unit, scenario, and expected outcome.
### Test Granularity #Scope #Design
Focusing tests on a single logical concept or behavior. Avoid testing multiple things at once.
### Testing Edge Cases and Boundaries #Thoroughness #Robustness
Verifying behavior at limits, null inputs, empty containers, zero values, etc.
### Negative Testing #ErrorHandling #Robustness
Testing how the code handles invalid input or error conditions gracefully.
### Keeping Tests Independent #Isolation #FIRST
Ensuring tests don't rely on each other's execution order or side effects.
### Test Readability and Maintainability #Maintainability #Clarity
Writing tests that are easy to understand and update as the code evolves.

## Test Doubles (Mocks, Stubs, Fakes) #Isolation #Dependencies #Mocking
Techniques for replacing dependencies to isolate the unit under test.
### The Need for Test Doubles #Problem #Dependencies
Breaking dependencies on external systems (files, network, DB), complex collaborators, or non-deterministic behavior.
### Types of Test Doubles #Taxonomy #Definitions
#### Dummies #TestDouble #Placeholder
Objects passed around but never actually used. Usually just satisfy parameter lists.
#### Fakes #TestDouble #SimplifiedImplementation
Objects with working implementations, but simplified for testing (e.g., in-memory database).
#### Stubs #TestDouble #CannedAnswers
Provide pre-defined answers to calls made during the test.
#### Spies #TestDouble #Verification
Stubs that also record information about how they were called.
#### Mocks #TestDouble #Expectations
Objects pre-programmed with expectations about the calls they should receive. Tests fail if expectations aren't met.
### Mocking Frameworks #Tools #Libraries
#### Google Mock (gmock) #Google #Mocking #Framework
Companion library to GoogleTest for creating mock objects.
#### Trompeloeil #Mocking #HeaderOnly #Framework
A header-only C++14 mocking framework.
#### Manual Mocking/Stubbing #Technique #Manual
Creating test doubles by hand using inheritance/interfaces or templates.
### Dependency Injection #DesignPattern #Decoupling
Techniques (constructor injection, setter injection, interface injection) to provide dependencies externally, facilitating replacement with doubles.
### Seams #Technique #DesignForTestability
Points in the code where behavior can be altered for testing without modifying the production code itself (e.g., virtual methods, function pointers, templates, link seams).

## Test-Driven Development (TDD) in C++ #Methodology #DevelopmentProcess #Agile
Writing tests before writing the production code.
### The Red-Green-Refactor Cycle #TDD #Workflow
1. Write a failing test (Red). 2. Write the minimal code to pass the test (Green). 3. Improve the code design (Refactor).
### Benefits of TDD #Advantages #Design
Improved design, higher test coverage, confidence in refactoring, living documentation.
### Challenges of TDD #Disadvantages #Considerations
Learning curve, potential for over-testing trivial code, can be difficult with legacy code or complex dependencies.
### Applying TDD in C++ Context #Implementation #CPP
Using frameworks, managing dependencies, designing for testability.

## Behavior-Driven Development (BDD) in C++ #Methodology #Specification #Collaboration
Extending TDD by focusing on behavior and specification using natural language.
### BDD Principles #Concepts #Communication
Focusing on business value, collaboration between developers, QA, and business analysts.
### Gherkin Syntax #DSL #Specification
Using `Given-When-Then` format to describe scenarios.
### BDD Frameworks/Styles in C++ #Tools #Libraries
#### Catch2 BDD Syntax #Catch2 #BDD
Using `SCENARIO`, `GIVEN`, `WHEN`, `THEN` within Catch2 tests.
#### Cucumber-Cpp #Cucumber #BDD #Framework
A C++ implementation allowing Gherkin feature files to drive tests.
### Relating Requirements to Tests #Traceability #AcceptanceTesting
Using BDD scenarios as executable specifications.

## Integrating Unit Tests in the Build Process #Automation #BuildSystems #CI_CD
Making unit tests a seamless part of the development workflow.
### Build System Integration #Tools #Build
#### CMake and CTest #CMake #CTest #BuildIntegration
Defining tests using `add_test` and running them with `ctest`.
#### Makefiles #Make #BuildIntegration
Adding targets to compile and run tests.
#### Other Build Systems #Bazel #Meson #BuildIntegration
Integration strategies for systems like Bazel, Meson, SCons, etc.
### Continuous Integration (CI) #Automation #DevOps
Running tests automatically on every commit or pull request using CI servers (Jenkins, GitLab CI, GitHub Actions, Travis CI).
### Linking Test Code #Compilation #Linking
Strategies for compiling test code and linking against production code and test frameworks.

## Code Coverage Analysis #Metrics #QualityAssurance #Measurement
Measuring the extent to which production code is executed by the test suite.
### Types of Coverage #Metrics #Definitions
#### Statement Coverage #Coverage #Metric
Percentage of code statements executed.
#### Branch Coverage #Coverage #Metric
Percentage of branches (e.g., in if/else, switch) taken.
#### Function Coverage #Coverage #Metric
Percentage of functions called.
#### Condition/Decision Coverage #Coverage #Metric
More granular branch coverage metrics.
### Code Coverage Tools #Tools #Instrumentation
#### gcov / llvm-cov #GCC #Clang #CoverageTool
Tools accompanying GCC and Clang compilers for generating coverage data.
#### lcov / genhtml #Reporting #CoverageTool
Tools for processing gcov/llvm-cov output into HTML reports.
#### IDE Integrations #IDE #VisualStudio #CLion
Coverage features built into development environments.
### Interpreting Coverage Reports #Analysis #Insights
Understanding what coverage numbers mean and identifying untested code areas.
### Limitations of Code Coverage #Caution #Misinterpretation
High coverage doesn't guarantee correctness; it only shows what code *was* executed, not if it behaved correctly. Low coverage indicates gaps.

## Testing C++ Specific Features #Language #Challenges #Techniques
Addressing complexities unique to C++.
### Testing Templates #Templates #Generics
Strategies for testing templated classes and functions (instantiation, type traits).
### Testing RAII and Resource Management #RAII #Resources #Memory
Ensuring resource acquisition and release (memory, files, locks) behaves correctly, often using test doubles or controlled environments.
### Testing Exception Handling #Exceptions #ErrorHandling
Verifying that functions throw the correct exceptions under specific conditions (`ASSERT_THROW`, `CHECK_THROWS`). Testing `noexcept` specifications.
### Testing Constructors and Destructors #Lifecycle #ObjectState
Validating object state after construction and resource cleanup during destruction.
### Testing Private/Protected Members #Encapsulation #TestingTechniques
#### Friend Classes/Functions #Technique #Access
Making test fixtures friends of the class under test (use with caution).
#### Testing via Public Interface #BestPractice #BlackBox
Prefer testing private behavior indirectly through the public API.
#### Refactoring for Testability #Design #Improvement
Modifying the design to make private implementation details testable via public interfaces or seams.
### Testing Polymorphism and Inheritance #OOP #Inheritance
Testing virtual functions, abstract classes, and derived class behavior. Using interfaces.
### Testing Concurrent Code #Concurrency #Threading #Challenges
Difficulties in testing multi-threaded code (race conditions, deadlocks). Techniques like thread-safe test fixtures, mocking concurrency primitives, stress testing (often overlaps integration testing).

## Advanced Unit Testing Techniques #Techniques #BeyondBasics #Specialized
More sophisticated approaches to testing.
### Property-Based Testing #PBT #GenerativeTesting
Generating a wide range of inputs based on properties the code should satisfy.
#### Frameworks (RapidCheck, CppCheck PBT Addon) #Tools #PBT
Libraries for implementing property-based tests in C++.
### Mutation Testing #TestEffectiveness #QualityAssessment
Modifying production code (mutations) to check if tests fail, assessing test suite effectiveness.
### Parameterized Tests #DataDriven #Efficiency
Running the same test logic with different sets of input data and expected outputs. Supported by most major frameworks.
### Test Fixture Reuse and Setup Optimization #Efficiency #Performance
Sharing expensive setup logic across multiple tests (e.g., class fixtures, setup/teardown suites).
### Performance Testing (Micro-benchmarks) #Performance #Benchmarking
Using unit test frameworks for basic performance measurements of small code units (e.g., Google Benchmark, Catch2 benchmarks).

## Test Maintenance and Organization #Management #Scalability #Readability
Keeping the test suite healthy and manageable over time.
### Test Suite Structure #Organization #ProjectLayout
Organizing test files logically, often mirroring the production code structure.
### Refactoring Tests #Maintainability #CodeQuality
Applying refactoring principles to test code to keep it clean, readable, and efficient.
### Dealing with Flaky Tests #Reliability #Troubleshooting
Identifying and fixing tests that sometimes pass and sometimes fail without code changes.
### Test Discovery #Automation #FrameworkFeature
How frameworks find and identify tests to run (e.g., naming conventions, registration macros).

## Debugging Test Failures #Troubleshooting #Debugging #Analysis
Strategies for finding the root cause when a unit test fails.
### Analyzing Framework Output #Reporting #FailureAnalysis
Understanding assertion messages, stack traces, and diagnostic information provided by the testing framework.
### Using a Debugger with Tests #Debugging #Tools
Attaching a debugger (GDB, LLDB, Visual Studio Debugger) to the test executable to step through execution.
### Logging within Tests #Diagnostics #Tracing
Adding temporary or permanent logging to understand the state and flow during test execution.
### Isolating the Failure #Technique #MinimalReproducer
Simplifying the test case or commenting out parts to pinpoint the exact cause of the failure.
