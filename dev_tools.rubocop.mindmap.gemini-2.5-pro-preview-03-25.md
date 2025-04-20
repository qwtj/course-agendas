# Rubocop #Linter #Formatter #Ruby #StaticAnalysis
RuboCop is a popular Ruby static code analyzer (linter) and code formatter. It enforces many guidelines from the community Ruby Style Guide, helps maintain code consistency, identifies potential issues, and can automatically correct offenses.

## Introduction and Core Concepts #Overview #Basics #Philosophy
Understanding what Rubocop is, its goals, and fundamental ideas.
RuboCop serves two main purposes: enforcing code style via configurable rules ("cops") and performing static analysis to find potential problems. It helps maintain consistency, especially in team environments.

### What is Rubocop? #Definition #Tool
A Ruby static code analyzer and formatter based on the community Ruby Style Guide. It checks code for style violations ("offenses") and potential errors.

### Goals and Philosophy #Objectives #Principles
*   **Enforce Style:** Promote consistency based on the Ruby Style Guide and other community guides (Rails, RSpec, Minitest).
*   **Static Analysis:** Detect potential bugs, code smells, and overly complex code (Lint cops, Metrics cops).
*   **Flexibility:** Highly configurable to adapt to various team preferences and styles, although initially more opinionated. Aims to support diverse Ruby programming styles.
*   **Maintainability:** Improve code readability and long-term maintainability.

### Key Terminology #Vocabulary #Concepts
*   **Linter:** A tool that analyzes source code for programmatic and stylistic errors.
*   **Formatter:** A tool that automatically reformats code to adhere to specific style rules.
*   **Static Analysis:** Analyzing code without executing it.
*   **Cop:** An individual check/rule that Rubocop performs. Each cop targets a specific offense.
*   **Offense:** A violation of a Rubocop rule detected in the code.
*   **Department:** A grouping of related cops (e.g., Style, Layout, Lint, Metrics).
*   **Autocorrect:** Rubocop's ability to automatically fix certain offenses.

## Installation and Setup #GettingStarted #Installation #Setup
How to install Rubocop and integrate it into a project.

### Installation Methods #Install #RubyGems #Bundler
*   **RubyGems:** `gem install rubocop` for system-wide or specific project use.
*   **Bundler:** Add `gem 'rubocop', require: false` to the `Gemfile` (often in `:development, :test` group) and run `bundle install`. Setting `require: false` is recommended as it's a standalone tool.

### Versioning #Versioning #Compatibility
*   **Runtime Compatibility:** Supports MRI Ruby 2.7+, JRuby 9.4+. Analyzes Ruby 2.0+ code.
*   **Version Locking:** Recommended to lock the version in `Gemfile` (e.g., `gem 'rubocop', '~> 1.75', require: false`) to prevent unexpected changes from updates, as major versions may introduce breaking changes. Minor versions aim for stability.

## Configuration (`.rubocop.yml`) #Configuration #YAML #Customization
How to customize Rubocop's behavior using configuration files. Rubocop is highly configurable.

### Configuration Files #ConfigFile #Hierarchy
*   **Project Specific:** `.rubocop.yml` at the project root.
*   **Directory Specific:** Can place `.rubocop.yml` in subdirectories for specific configurations.
*   **User Global:** `~/.rubocop.yml` or `~/.config/rubocop/config.yml` (used if no project config found).
*   **Default Configuration:** Inherits from `~/.config/rubocop/default.yml`.

### Inheritance #Inherit #ConfigurationManagement
*   **`inherit_from`:** Include settings from other YAML files (e.g., `inherit_from: .rubocop_todo.yml` or shared company standards).
*   **`inherit_gem`:** Inherit configuration from a gem (e.g., inherit rules from `rubocop-rails`).

### Enabling/Disabling Cops #Rules #EnableDisable
*   **Disable All by Default:** `AllCops: DisabledByDefault: true` (then enable specific cops).
*   **Enable All by Default:** `AllCops: EnabledByDefault: true` (default, then disable specific cops).
*   **Enable/Disable Specific Cop:**
    
```yaml
    Style/StringLiterals:
      Enabled: false
    Lint/UnusedVariable:
      Enabled: true
    ```

*   **Enable/Disable Department:**
    
```yaml
    Layout:
      Enabled: false
    ```


### Configuring Cop Parameters #Parameters #Settings #Styles
*   **Supported Styles:** Many cops support multiple styles (e.g., `Style/StringLiterals: EnforcedStyle: double_quotes`).
*   **Metrics:** Cops like `Metrics/MethodLength` have `Max` parameters.
*   **Other Parameters:** Various cops have specific configuration options (e.g., `Layout/LineLength: Max: 120`).

### Including/Excluding Files #Scope #IncludeExclude
*   **`AllCops/Include`:** Patterns for files to include (default covers common Ruby files).
*   **`AllCops/Exclude`:** Patterns for files/directories to exclude (e.g., `db/schema.rb`, `vendor/**/*`, generated files).
*   **Cop-Specific Excludes:** Exclude files only for specific cops.
    
```yaml
    Metrics/BlockLength:
      Exclude:
        - 'spec/**/*'
        - 'config/routes.rb'
    ```


### Target Ruby Version #RubyVersion #Compatibility
*   **`AllCops/TargetRubyVersion`:** Specify the Ruby version the project targets (e.g., `TargetRubyVersion: 3.2`). This affects which cops are enabled/disabled based on language features.

### Generating Configuration #AutoGenConfig #TODO
*   **`rubocop --auto-gen-config`:** Generates `.rubocop_todo.yml` listing current offenses. Useful for introducing Rubocop to existing projects gradually.
*   **`--exclude-limit`:** Controls when `--auto-gen-config` disables a cop entirely vs. listing excluded files (default: 15). Use `--no-exclude-limit` or a high number to prevent disabling cops.

## Running Rubocop #Usage #CLI #Analysis
How to execute Rubocop checks from the command line.

### Basic Usage #Execution #Analyze
*   Run `rubocop` (or `bundle exec rubocop`) in the project directory to check all Ruby files.
*   Run `rubocop path/to/file.rb path/to/directory` to check specific targets.

### Command Line Options #Flags #Options
*   **`-a`, `--autocorrect`:** Automatically correct safe offenses.
*   **`-A`, `--autocorrect-all`:** Automatically correct safe and unsafe offenses (use with caution).
*   **`-f`, `--format [FORMATTER]`:** Specify output format (e.g., `progress` (default), `simple`, `json`, `html`, `github`).
*   **`-l`, `--lint`:** Run only Lint cops.
*   **`-x`, `--fix-layout`:** Run only Layout cops with autocorrect.
*   **`--only [COP_NAME/DEPARTMENT]`:** Run only specified cops/departments.
*   **`--except [COP_NAME/DEPARTMENT]`:** Run all enabled cops except the specified ones.
*   **`-d`, `--debug`:** Show debug information.
*   **`-D`, `--display-cop-names`:** Show cop names in offense messages (default).
*   **`-S`, `--display-style-guide`:** Show style guide URLs for relevant offenses.
*   **`-C`, `--cache [true/false]`:** Use caching to speed up analysis (default: true).
*   **`-P`, `--parallel`:** Use multiple CPU cores for faster analysis (default: true).
*   **`--show-cops`:** List available cops and their configuration.
*   **`--fail-level [SEVERITY]`:** Minimum severity for exiting with a non-zero status code.
*   **`--force-exclusion`:** Apply `Exclude` patterns even when files are explicitly passed as arguments.

### Exit Codes #StatusCode #CI
Rubocop uses exit codes to indicate success (0) or failure (non-zero if offenses are found), suitable for CI pipelines.

## Cops and Departments #Rules #Categories #Checks
Understanding the different types of checks Rubocop performs.

### Overview of Departments #Groups #Classification
Cops are grouped into departments based on the type of check:
*   **`Style`:** Enforce stylistic conventions (often from Ruby Style Guide). Configurable.
*   **`Layout`:** Check code formatting (indentation, whitespace, alignment). Configurable.
*   **`Lint`:** Detect potential errors, ambiguities, or bad practices (like `ruby -wc`). Generally not recommended to disable.
*   **`Metrics`:** Measure code complexity and size (e.g., Class/Method Length, Cyclomatic Complexity). Often configured with `Max` values.
*   **`Naming`:** Check naming conventions for variables, methods, classes, etc.
*   **`Security`:** Identify potential security vulnerabilities (e.g., use of `eval`).
*   **`Bundler`:** Check `Gemfile` style and practices.
*   **`Gemspec`:** Check `.gemspec` file style and practices.
*   **(Extension Departments):** `Rails`, `RSpec`, `Performance`, `Minitest`, etc., added by plugins.

### Common/Important Cops #Examples #CoreRules
*   `Layout/LineLength`: Checks line length.
*   `Style/StringLiterals`: Enforces single or double quotes.
*   `Naming/MethodName`: Checks method name style (snake_case).
*   `Lint/UnusedVariable`: Detects unused local variables.
*   `Metrics/MethodLength`: Checks method length.
*   `Metrics/AbcSize`, `Metrics/CyclomaticComplexity`, `Metrics/PerceivedComplexity`: Measure complexity.
*   `Bundler/DuplicatedGem`: Checks for duplicate gem entries.
*   `Security/Eval`: Warns about using `eval`.

### Cop Documentation #Help #UnderstandingRules
Each cop has documentation explaining its purpose, configuration options, and examples of good/bad code. Can be viewed online or often via CLI flags.

## Autocorrection #Autofix #Formatting #CodeStyle
Using Rubocop to automatically fix offenses.

### How it Works #Mechanism #Correction
*   **`-a`, `--autocorrect`:** Fixes offenses deemed "safe" (unlikely to change code behavior).
*   **`-A`, `--autocorrect-all`:** Fixes both safe and "unsafe" offenses. Unsafe corrections might change semantics and require careful review.

### Safe vs. Unsafe Corrections #Safety #Risks
*   **Safe:** Primarily formatting changes (whitespace, quotes, syntax sugar).
*   **Unsafe:** Might involve logic changes (e.g., refactoring conditionals) that could potentially alter behavior. Review is crucial after using `-A`.

### Limitations #Boundaries #ManualFixes
Not all offenses can be automatically corrected. Rubocop will report these, requiring manual intervention.

## Extending Rubocop #Extensions #Plugins #Customization
Adding more specialized checks via extensions or custom cops.

### Official Extensions #CorePlugins #RubocopTeam
Maintained by the Rubocop team:
*   `rubocop-rails`: Cops specific to Rails best practices.
*   `rubocop-performance`: Cops focused on identifying potential performance bottlenecks.
*   `rubocop-rspec`: Cops for RSpec testing framework conventions.
*   `rubocop-minitest`: Cops for Minitest testing framework conventions.

### Third-Party Extensions #CommunityPlugins #Ecosystem
A wide range of extensions created by the community for various libraries, frameworks, or specific style needs.

### Loading Extensions (Plugins vs. Require) #LoadingMechanism #API
*   **Plugin API (Recommended, Rubocop >= 1.72):** Use the `plugins:` key in `.rubocop.yml`. Requires extension gems to support the new API based on `lint_roller`.
    
```yaml
    plugins:
      - rubocop-performance
      - rubocop-rails
    ```

*   **Legacy `require`:** Older method using the `require:` key. Still needed for extensions not updated to the plugin API.
    
```yaml
    require:
      - rubocop-rspec # Assuming rspec hasn't updated yet
    ```

*   **Extension Suggestions:** Rubocop may suggest relevant extensions based on gems in the project.

### Developing Custom Cops #CustomRules #Development
*   Write custom cops within your project (e.g., in `lib/custom_cops`) or create a shareable gem.
*   Requires understanding Rubocop's AST (Abstract Syntax Tree) processing and node pattern API.
*   Useful for enforcing project-specific or team-specific conventions not covered by existing cops.

## Integration #Workflow #Tools #Automation
Using Rubocop within development workflows and other tools.

### CI/CD Pipelines #Automation #DevOps
*   **GitHub Actions:** Use actions like `ruby/setup-ruby`, `reviewdog/action-rubocop`, or run `bundle exec rubocop` directly. Output can be formatted for annotations (`--format github`).
*   **GitLab CI:** Run `bundle exec rubocop` in a script stage.
*   **Jenkins, CircleCI, etc.:** Integrate `rubocop` execution into build steps. Non-zero exit code fails the build.

### Editor Integration #IDE #DeveloperExperience
*   **VS Code:** Extensions like `vscode-ruby` (using Solargraph) or dedicated Rubocop extensions.
*   **RubyMine / IntelliJ IDEA:** Built-in Rubocop integration, highlighting offenses, offering quick fixes, running inspections. Supports StandardRB wrapper.
*   **Sublime Text, Atom, Vim, Emacs:** Various plugins available.
*   **Features:** Real-time linting, formatting on save, quick fixes.

### Git Hooks #PreCommit #QualityGates
*   **Tools:** `Overcommit`, `Lefthook`, `pre-commit` framework.
*   **Purpose:** Run Rubocop automatically before committing code to catch issues early.

### Other Services #CodeQuality #ExternalServices
*   **CodeClimate:** Integrates Rubocop analysis.
*   **HoundCI:** Uses Rubocop for automated style reviews on pull requests.

## Advanced Features #AdvancedUsage #Techniques
More sophisticated ways to use and control Rubocop.

### Caching (`--cache`) #Performance #Speed
Speeds up subsequent runs by caching results for unchanged files. Enabled by default. Can be managed with `--cache true/false`.

### Server Mode (`rubocop --server`) #Performance #Daemon
Keeps a Rubocop process running in the background for faster execution, especially useful for editor integrations. (Note: Status/availability might vary across versions).

### Custom Formatters #Reporting #Output
Develop custom formatters for specific reporting needs beyond the built-in ones.

### Disabling Cops in Source Code #InlineDisable #Directives
*   **Disable for a block:**
    
```ruby
    # rubocop:disable Style/StringLiterals
    puts "This uses double quotes."
    # rubocop:enable Style/StringLiterals
    ```

*   **Disable for one line:**
    
```ruby
    puts "This uses double quotes." # rubocop:disable Style/StringLiterals
    ```

*   **Disable specific cops or all cops:** `rubocop:disable CopName, AnotherCopName` or `rubocop:disable all`
*   **TODO Comments (`rubocop:todo`):** Used by `--auto-gen-config` and `--disable-uncorrectable`. Indicates temporary disabling, often linked to an issue tracker. Should not be used indefinitely.

### Path Relativity in Configuration #Paths #ConfigurationDetails
Paths in `.rubocop.yml` are relative to the file's location. Paths in files included via `inherit_from` that *don't* start with `.rubocop` are relative to the execution directory.

## Best Practices and Strategies #Workflow #Adoption #Tips
Effective ways to use Rubocop in projects and teams.

### Gradual Adoption #LegacyCode #Incremental
*   Use `.rubocop_todo.yml` (`rubocop --auto-gen-config`) for existing projects.
*   Fix offenses incrementally as code is touched.
*   Prioritize enabling Lint and Security cops first.

### Team Agreement #Collaboration #StyleGuide
*   Agree on a base style guide (e.g., community guide, StandardRB).
*   Discuss and document customizations in `.rubocop.yml`. Aim for consistency over personal preference.
*   Avoid excessive inline disables; configure cops appropriately or refactor code.

### CI/CD Integration #Automation #QualityAssurance
Essential for enforcing standards consistently. Fail builds on offenses.

### Editor Integration #DeveloperWorkflow #Productivity
Provides immediate feedback, speeding up development and reducing CI failures.

### Keeping Rubocop Updated #Maintenance #Updates
Regularly update Rubocop and its extensions to benefit from new cops, bug fixes, and performance improvements. Be mindful of potential changes in major versions.

### Using `--safe-auto-correct` (`-a`) Regularly #Formatting #Consistency
Run `-a` frequently (e.g., via Git hooks or editor integration) to maintain basic formatting consistency automatically.

## Community and Ecosystem #Community #Resources #Contributing
The broader world around Rubocop.

### Core Style Guides #Standards #References
*   Ruby Style Guide
*   Rails Style Guide
*   RSpec Style Guide
*   Minitest Style Guide

### Contributing to Rubocop #Development #OpenSource
*   Reporting issues and suggesting features on GitHub.
*   Submitting pull requests for bug fixes, new cops, or documentation improvements. Contribution guidelines are available.

### Related Tools #Alternatives #Complementary
*   **StandardRB:** A wrapper around Rubocop with a fixed, non-configurable ruleset aiming for zero configuration.
*   **Solargraph:** Language server providing IntelliSense, inline documentation, and integrating linters like Rubocop.
*   **Faster Rubocop execution:** Tools like `Qlty CLI` aim to optimize Rubocop run times, especially on large codebases.

### Support and Community #Help #Discussion
*   Official Documentation (docs.rubocop.org)
*   GitHub Repository (Issues, Discussions)
*   Community forums, Slack/Discord channels (may vary).
