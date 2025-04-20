# PEP 508: Dependency specification for Python Software Packages #Overview #Specification #Packaging

This PEP specifies the standard format used to declare dependencies for Python packages. It focuses on describing a single dependency, including its name, version constraints, extras, and environmental conditions under which it's required. This format serves as a foundational block for higher-level packaging tools and specifications.

## Introduction and Motivation #Purpose #History #ProblemStatement

*   **Goal:** Define a unified, compact, line-based format for dependency specification. #Standardization
*   **Problem Addressed:** Replace varied and sometimes ambiguous older formats (e.g., pre-existing `pip` requirements file variations, inconsistencies in metadata). Needed a formal PEP for other standards (like `pyproject.toml` dependency specification) to build upon. #Ambiguity #Inconsistency
*   **Approach:** Adopt and formalize the battle-tested, user-friendly format already widely used in `pip` requirements files, while integrating improvements and clarifications (like URL specifiers from PEP 440 and refined environment markers). #Adoption #Improvement
*   **Scope:** Focuses solely on the *syntax* for specifying a single dependency. Does not cover dependency *resolution* strategies or how multiple dependency declarations interact (e.g., different types like build vs. runtime). #Syntax #ScopeDefinition

## Core Specification String Structure #Syntax #Format #Structure

Defines the two main forms of a dependency specification string.

### Name-Based Requirement #Name #Version #Core

The most common form, identifying a package by its distribution name.
*   **Structure:** `name [extras] [version specifiers] [environment marker]` #Layout
*   **Components:**
    *   `name`: The distribution package name (normalized according to PEP 503). #PackageName #Identifier
    *   `extras`: Optional list of extras (square brackets, comma-separated). #Extras #OptionalDependencies
    *   `version specifiers`: Optional version constraints (comma-separated clauses). #Versioning #Constraints
    *   `environment marker`: Optional condition for installation (semicolon prefix). #Markers #Conditional

### URL-Based Requirement #URL #DirectReference #Alternative

Specifies a direct URL for acquiring the package, bypassing index lookups for that specific dependency.
*   **Structure:** `name [extras] @ URL [environment marker]` #Layout
    Note: Whitespace around `@` is significant.
*   **Components:**
    *   `name`: The distribution package name. #PackageName #Identifier
    *   `extras`: Optional list of extras. #Extras #OptionalDependencies
    *   `URL`: The direct URL pointing to the package archive or VCS location. #Location #VCS #Archive
        *   Must include a scheme (e.g., `https://`, `git+https://`, `file://`). #Scheme
        *   Can include VCS references (branch, tag, commit hash) using `@<rev-spec>` for some schemes. #RevisionControl
    *   `environment marker`: Optional condition for installation (semicolon prefix). #Markers #Conditional
*   **Limitation:** Cannot specify both a URL and version specifiers for the same requirement string. #Constraint #Exclusivity

## Dependency Name #Naming #Identification #Normalization

*   **Source:** Based on Python distribution names (see PEP 345, PEP 503). #PEP345 #PEP503
*   **Normalization:** Names are compared case-insensitively and after replacing runs of underscores, hyphens, and periods with a single hyphen (e.g., `Cool-Package`, `cool_package`, `cool.package` all refer to the same normalized name `cool-package`). #CaseInsensitive #NormalizationRule

## Version Specifiers #Versioning #Constraints #PEP440

Defines how required versions are constrained, following PEP 440.
*   **Syntax:** Comma-separated clauses, each consisting of an operator and a version identifier. #Syntax #Operators
*   **Operators:** #Comparison
    *   `==`: Version matching (allows limited wildcard `.*`, e.g., `== 2.8.*`)
    *   `!=`: Version exclusion (allows limited wildcard `.*`)
    *   `>=`, `<=`: Inclusive ordered comparison
    *   `>`, `<`: Exclusive ordered comparison
    *   `~=`: Compatible release clause (e.g., `~= 1.4.2` means `>= 1.4.2, == 1.4.*`)
*   **Version Identifiers:** Adhere to PEP 440 version format (e.g., `1.3`, `2.0.4`, `1.0a1`). #Format #SemVer (Implied)
*   **Examples:** #Examples
    *   `requests >= 2.8.1, < 3.0`
    *   `django ~= 4.1`
    *   `numpy == 1.23.*`

## URL Specifiers #URL #DirectReference #VCS

Provides detailed rules for specifying dependencies via URLs.
*   **Format:** `name @ <URL>` #Syntax
*   **URL Structure:** Based on standard URL formats, but PEP 508 defines specific handling. #Standard #Parsing
*   **Supported Schemes:** `http://`, `https://`, `file://`, `ftp://`, plus VCS schemes like `git+<URL>`, `hg+<URL>`, `svn+<URL>`, `bzr+<URL>`. #Scheme #VCS
*   **VCS Revisions:** Can specify branches, tags, or commit hashes (e.g., `package @ git+https://github.com/org/repo.git@main`, `package @ git+https://github.com/org/repo.git@v1.0.1`). #RevisionControl #Branch #Tag #Commit
*   **Fragment Identifiers:** Used for specifying checksums (e.g., `#sha256=<hash>`) or subdirectories (`#subdirectory=path/to/package`). #Checksum #Subdirectory
*   **Parsing:** Whitespace after the `@` and before the URL is significant for separating the name/extras from the URL. Non-breaking whitespace within the URL itself is generally ignored. #ParsingRule #Whitespace

## Extras #OptionalDependencies #Features #Groups

Optional sets of dependencies defined by a package.
*   **Syntax:** `[extra1, extra2, ...]` following the package name. #Syntax #Brackets
*   **Purpose:** Allows users to install optional functionality (e.g., `requests[security]` might install additional security-related dependencies). #UseCases #Modularity
*   **Naming:** Extra names follow specific rules (letters, digits, `.`, `-`, `_` after the first char). Normalization rules apply for comparison (specified in PEP 685). #Naming #Normalization #PEP685
*   **Resolution:** When an extra is requested, the dependencies listed under that extra in the package's metadata are added to the list of requirements to be installed. #DependencyResolution

## Environment Markers #Conditional #Platform #PythonVersion

Allows dependencies to be installed only when specific conditions about the execution environment are met.
*   **Syntax:** Appended to the requirement string, prefixed by a semicolon (`;`). #Syntax #Semicolon
    *   Example: `pywin32 >= 1.0 ; sys_platform == 'win32'`
*   **Marker Language:** Inspired by Python expression syntax, designed for safe evaluation. #Expression #Safety
    *   Uses variables representing environment properties.
    *   Uses operators for comparison and logic (`==`, `!=`, `>`, `>=`, `<`, `<=`, `in`, `not in`, `and`, `or`). #Operators #Logic
*   **Available Variables:** #Variables #Environment
    *   `os_name`: e.g., `'posix'`, `'nt'`
    *   `sys_platform`: e.g., `'linux'`, `'darwin'`, `'win32'`
    *   `platform_machine`: e.g., `'x86_64'`, `'arm64'`
    *   `platform_python_implementation`: e.g., `'CPython'`, `'Jython'`, `'PyPy'`
    *   `python_version`: e.g., `'3.9'` (string for comparison)
    *   `python_full_version`: e.g., `'3.9.12'` (string for comparison)
    *   `implementation_name`: e.g., `'cpython'`
    *   `implementation_version`: e.g., `'3.9.12'`
    *   `extra`: Special variable, typically used within package metadata (Wheels) to associate dependencies with specific extras. Evaluates based on the requested extras during installation. #ExtraVariable #MetadataContext
*   **Evaluation:** Markers evaluate to `True` or `False`. If `True`, the dependency is considered; if `False`, it's ignored. Unknown variables or inability to calculate a value usually results in specific fallback values (empty string or `0`) or errors depending on the context and variable. #Boolean #EvaluationLogic
*   **String Constants:** Use single (`'`) or double (`"`) quotes. Backslash escapes are not formally defined but may be supported by implementations. #Strings #Quotes

## Formal Grammar and Parsing #Technical #Implementation #Parsing

*   **Grammar Definition:** PEP 508 provides a formal grammar (originally using `parsley`, conceptually similar to EBNF) to precisely define the valid syntax. #Grammar #Parsley #EBNF
*   **Whitespace:** Generally insignificant except where needed to delimit tokens (e.g., separating name, extras, version specifiers, URL marker `@`, environment marker `;`). #Whitespace #Delimiter
*   **Parsing Tools:** Libraries exist (e.g., `packaging.requirements`, `pep508-rs`) to parse these strings into structured data. #Libraries #Tooling

## Usage in Packaging Ecosystem #Application #Integration #Tools

*   **`Requires-Dist`:** PEP 508 strings are the standard format for the `Requires-Dist` field in core package metadata (e.g., in `METADATA` files within wheels or sdists). #CoreMetadata #RequiresDist
*   **`pyproject.toml`:** Used within the `[project.dependencies]` and `[project.optional-dependencies]` tables as defined by PEP 621 and PEP 631. #PyprojectTOML #PEP621 #PEP631
*   **Requirements Files:** The format heavily influences (and was influenced by) `pip`'s `requirements.txt` files, although those files allow additional commands/options not covered by PEP 508 itself. #RequirementsFiles #Pip
*   **Tooling:** Parsed and used by installers (`pip`, `uv`, `conda`), build backends (`setuptools`, `hatch`, `pdm`, `poetry`), and dependency analysis tools. #Installers #BuildBackends #DependencyAnalysis

## Relationship to Other PEPs/Standards #Context #Interoperability #PythonPackaging

*   **PEP 440:** Defines version scheme and version specifiers used within PEP 508. #PEP440 #Versioning
*   **PEP 345 / PEP 426 / PEP 566:** Precursors or related metadata specifications defining distribution names and initial concepts for markers/dependencies. PEP 508 refines and standardizes elements from these. #PEP345 #PEP426 #PEP566 #Metadata
*   **PEP 503:** Defines normalized distribution names. #PEP503 #Normalization
*   **PEP 621 / PEP 631:** Define how PEP 508 strings are used within `pyproject.toml` for static metadata. #PEP621 #PEP631 #PyprojectTOML
*   **PEP 685:** Defines normalization and comparison rules for extra names. #PEP685 #Extras
*   **Wheel Specification:** Wheels embed metadata containing `Requires-Dist` fields formatted according to PEP 508. #Wheel #Metadata

## History and Compatibility #Evolution #BackwardsCompatibility #Adoption

*   **Motivation:** Created to provide a stable, specified format based on existing `pip` practices, replacing parts of the withdrawn PEP 426. #PEP426 #Stabilization
*   **Adoption:** Widely adopted by Python packaging tools. #Standard #Tooling
*   **URL Specifiers:** Added later to `pip` (v19.1) and formalized in PEP 508, replacing the deprecated `dependency_links` mechanism. #DependencyLinks #Deprecation
*   **Environment Markers:** Standardized and refined compared to earlier versions in PEP 345/426. #Markers #Refinement
*   **Backwards Compatibility:** While based on existing practice, the formal specification clarifies ambiguities. Tools might need updates to fully support all nuances (especially around URL parsing and marker evaluation). #Implementation #Updates
