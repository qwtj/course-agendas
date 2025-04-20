```markdown
# Powershell #Automation #Scripting #Microsoft
The core topic: PowerShell, a task automation and configuration management framework from Microsoft.

## Introduction and Fundamentals #Basics #CoreConcepts #GettingStarted
Overview of PowerShell, its purpose, history, and foundational principles.
Introduces PowerShell as a command-line shell and scripting language built on .NET.

### History and Evolution #Versions #Timeline
From Monad Manifesto to PowerShell 7+ and beyond.
Key version differences (v2, v3, v5.1, v6, v7).

### Core Philosophy #Objects #Pipeline #Cmdlets
Object-oriented nature vs. text-based shells.
The concept of the pipeline for chaining commands.
Verb-Noun naming convention for cmdlets.

### Editions and Platforms #WindowsPowerShell #PowerShellCore #CrossPlatform
Windows PowerShell (legacy, Windows-only, .NET Framework).
PowerShell Core/PowerShell 7+ (modern, cross-platform, .NET Core/.NET 5+).
Compatibility considerations.

### Host Applications #Console #ISE #VisualStudioCode #Terminal
Running PowerShell (powershell.exe, pwsh.exe).
PowerShell Integrated Scripting Environment (ISE).
Using Visual Studio Code with the PowerShell extension.
Windows Terminal integration.

### Getting Help #Documentation #Support
Using `Get-Help`.
Understanding help syntax (`-Full`, `-Examples`, `-Online`).
`Update-Help`.
Online documentation and community resources.

## Syntax and Language Elements #Syntax #Language #Programming
The basic building blocks of the PowerShell language.

### Variables and Data Types #Variables #DataTypes #Memory
Defining and using variables (`$`).
Strong vs. weak typing.
Common data types: `[string]`, `[int]`, `[bool]`, `[array]`, `[hashtable]`, `[datetime]`, `[pscustomobject]`.
Type conversion and casting.
Special/Automatic variables (`$_`, `$this`, `$null`, `$true`, `$false`, `$Error`, etc.).

### Operators #Operators #Comparison #Logic #Arithmetic
Arithmetic operators (`+`, `-`, `*`, `/`, `%`).
Assignment operators (`=`, `+=`, `-=`, etc.).
Comparison operators (`-eq`, `-ne`, `-gt`, `-ge`, `-lt`, `-le`, `-like`, `-match`, `-contains`).
Logical operators (`-and`, `-or`, `-xor`, `-not`).
Type operators (`-is`, `-isnot`, `-as`).
Redirection operators (`>`, `>>`, `2>`, `&>`).
Other operators (`::`, `.`, `-split`, `-join`, `-replace`).

### Control Flow Statements #Logic #Loops #Decisions
Conditional logic (`if`/`elseif`/`else`).
Switch statements (`switch`).
Looping (`for`, `foreach`, `while`, `do-while`, `do-until`).
Loop control (`break`, `continue`).

### Comments #Documentation #CodeReadability
Single-line comments (`#`).
Multi-line block comments (`<# ... #>`).
Comment-based help for functions/scripts.

### Functions and Script Blocks #Functions #CodeReuse #Modularity
Defining basic functions (`function`).
Defining advanced functions (`[CmdletBinding()]`, `param()`).
Parameter attributes (Mandatory, Position, ValueFromPipeline).
Script blocks (`{}`).
Using script blocks with cmdlets (`Invoke-Command`).

### Scope #Scope #Variables #Functions
Understanding variable and function scope (Global, Script, Local, Private).
Using scope modifiers (`$global:`, `$script:`, `$local:`, `$private:`).
Dot sourcing (`.`).

## Cmdlets and Core Commands #Cmdlets #Commands #BuiltIn
Exploring the fundamental commands built into PowerShell.

### Cmdlet Discovery #FindingCommands #Help
`Get-Command` (gcm): Finding available commands.
Filtering commands (Noun, Verb, Module).
`Get-Alias` (gal): Finding command aliases.
`Get-Help` (help): Getting detailed information about cmdlets.

### Common Cmdlet Verbs #Verbs #Actions
`Get`: Retrieve information.
`Set`: Modify existing resources.
`New`: Create new resources.
`Add`: Add to a resource.
`Remove`: Delete resources.
`Start`/`Stop`: Initiate or terminate processes/services.
`Read`/`Write`: Interact with input/output streams.
`Invoke`: Execute actions.
`Test`: Check conditions.
`Format`: Change output display.

### Common Cmdlet Nouns #Nouns #Resources
`Item`, `ChildItem`: Filesystem, Registry, etc.
`Service`: Windows Services.
`Process`: Running processes.
`Content`: File content.
`Module`: PowerShell modules.
`Object`: Generic objects.
`EventLog`/`WinEvent`: Event logs.
`WmiObject`/`CimInstance`: Management information.
`Computer`: Remote systems.
`Date`: Date and time.

### Parameters #CmdletInput #Options
Understanding parameters.
Positional vs. Named parameters.
Mandatory vs. Optional parameters.
Switch parameters.
Common parameters (`-Verbose`, `-Debug`, `-ErrorAction`, `-WarningAction`, `-OutBuffer`, etc.).
Parameter sets.

## The Pipeline and Object Manipulation #Pipeline #Objects #DataFlow
PowerShell's core strength: passing objects between commands.

### How the Pipeline Works #Mechanism #ObjectPassing
Passing objects, not just text.
Pipeline parameter binding (ByValue, ByPropertyName).
Processing pipeline input (`Begin`, `Process`, `End` blocks in functions).

### Filtering Objects #Filtering #Selection
`Where-Object` (where, ?): Filtering objects based on criteria.
Comparison operators within `Where-Object`.
Simplified syntax (PowerShell 3+).

### Selecting Object Properties #Projection #DataShaping
`Select-Object` (select): Choosing specific properties.
Calculated properties (`@{Name='NewProp'; Expression={...}}`).
Selecting first/last/unique objects (`-First`, `-Last`, `-Unique`).
Expanding properties (`-ExpandProperty`).

### Sorting Objects #Sorting #Ordering
`Sort-Object` (sort): Ordering objects based on property values.
Ascending/Descending order.
Sorting by multiple properties.
`-Unique`.

### Formatting Output #Display #Formatting #Tables #Lists
Default formatting system.
`Format-Table` (ft): Displaying output in tables.
`Format-List` (fl): Displaying output as lists of properties.
`Format-Wide` (fw): Displaying a single property in columns.
`Out-Host`: Sending output to the console (default).
`Out-File`: Sending output to a file.
`Out-String`: Converting objects to strings.
`Out-GridView`: Displaying output in an interactive window.

### Grouping and Measuring Objects #Aggregation #Analysis
`Group-Object` (group): Grouping objects based on property values.
`Measure-Object` (measure): Calculating statistics (count, sum, average, min, max).

## Scripting and Automation #Scripting #Automation #PS1
Writing and executing PowerShell scripts (.ps1 files).

### Creating and Running Scripts #PS1 #Execution
Writing code in `.ps1` files.
Running scripts (`.\MyScript.ps1`).
Passing arguments to scripts.

### Execution Policy #Security #ScriptExecution
Understanding execution policies (`Restricted`, `AllSigned`, `RemoteSigned`, `Unrestricted`, `Bypass`, `Undefined`).
`Get-ExecutionPolicy`.
`Set-ExecutionPolicy`.
Scope of policies (Process, CurrentUser, LocalMachine).
Signing scripts (`Set-AuthenticodeSignature`).

### Script Parameters and Input #Parameters #Input #Validation
Defining parameters in scripts using `param()`.
Parameter validation attributes (`[Parameter(Mandatory=$true)]`, `[ValidateSet()]`, `[ValidateRange()]`, `[ValidateLength()]`, `[ValidatePattern()]`).
Accepting pipeline input in scripts.
Reading user input (`Read-Host`).

### Script Structure and Best Practices #BestPractices #Readability #Maintenance
Comment-based help.
Using approved verbs.
Error handling.
Logging and verbosity.
Modular design.

## PowerShell Remoting #Remoting #RemoteManagement #WinRM
Managing remote computers using PowerShell.

### Concepts and Architecture #WinRM #WSMan #Protocols
Windows Remote Management (WinRM) service.
WS-Management protocol.
HTTP/HTTPS listeners.
Authentication (Kerberos, CredSSP, NTLM, Basic).

### Enabling and Configuring Remoting #Configuration #EnableRemoting
`Enable-PSRemoting`.
Firewall considerations.
TrustedHosts configuration.
Using HTTPS for secure remoting.

### One-to-One Remoting #PSSession #Interactive
`Enter-PSSession`: Interactive remote session.
`Exit-PSSession`: Exiting a remote session.

### One-to-Many Remoting #InvokeCommand #ParallelExecution
`Invoke-Command` (icm): Running commands on multiple remote computers.
Using `-ComputerName`, `-Session`.
Running script blocks remotely.
Running script files remotely (`-FilePath`).

### Persistent Sessions #PSSession #Reuse
`New-PSSession`: Creating reusable remote sessions.
`Get-PSSession`: Viewing active sessions.
`Remove-PSSession`: Closing sessions.
Using sessions with `Invoke-Command -Session`.

### Implicit Remoting #RemoteModules #LocalCmdlets
`Import-PSSession`: Importing cmdlets from a remote session to use locally.

### Security Considerations #Security #Authentication #Encryption
Encryption (SSL/TLS for HTTPS).
Authentication mechanisms.
CredSSP delegation issues.
Firewall rules.
Just Enough Administration (JEA).

## Modules and Extending PowerShell #Modules #Extensibility #CodeDistribution
Packaging and distributing PowerShell code.

### Understanding Modules #Packaging #Distribution #Discovery
What modules are (collections of cmdlets, functions, variables, etc.).
Module types (Script, Binary, Manifest, Dynamic).
Module manifest files (`.psd1`).

### Finding and Installing Modules #PowerShellGet #PSGallery
The PowerShell Gallery (PSGallery).
`Find-Module`.
`Install-Module`.
`Update-Module`.
`Save-Module`.
Module repositories (`Register-PSRepository`).

### Using Modules #Importing #Autoloading
`Get-Module`: Listing loaded or available modules.
`Import-Module`: Explicitly loading a module.
Module autoloading (PowerShell 3+ based on `$env:PSModulePath`).
`Remove-Module`: Unloading a module.

### Creating Script Modules #CustomModules #Development
Structuring a script module (`.psm1` file).
Exporting module members (`Export-ModuleMember`).
Adding a manifest (`New-ModuleManifest`).

### Creating Binary Modules #CSharp #CompiledCode #Performance
Writing cmdlets in C# or other .NET languages.
Compiling into a DLL.
Improved performance for complex tasks.

## Working with Data Formats #DataFormats #CSV #JSON #XML #Hashtables
Handling structured data within PowerShell.

### Comma-Separated Values (CSV) #CSV #Spreadsheets #TextData
`Import-Csv`: Reading data from CSV files into objects.
`Export-Csv`: Writing objects to CSV files.
`-Delimiter`, `-NoTypeInformation`.
`ConvertTo-Csv`.
`ConvertFrom-Csv`.

### JavaScript Object Notation (JSON) #JSON #WebData #APIs
`ConvertTo-Json`: Converting PowerShell objects to JSON strings.
`ConvertFrom-Json`: Parsing JSON strings into PowerShell objects.
`-Depth`.

### Extensible Markup Language (XML) #XML #StructuredData #Configuration
Reading and parsing XML files (`[xml]`, `Get-Content`).
Navigating XML documents (dot notation, XPath).
`Select-Xml`: Querying XML using XPath.
Creating and modifying XML.
`ConvertTo-Xml`.

### Hashtables and Custom Objects #Hashtables #PSCustomObject #InMemoryData
Creating and using hashtables (`@{}`).
Creating custom objects (`[PSCustomObject]@{}`).
Use cases for structured in-memory data.

## Interacting with the Operating System #OSInteraction #FileSystem #Registry #WMI #CIM
Managing Windows and other operating systems.

### Filesystem Management #Files #Folders #Drives
Navigating the filesystem (`Set-Location`, `Get-Location`, `Push-Location`, `Pop-Location`).
PowerShell Drives (PS Drives) (`Get-PSDrive`).
Working with items (`Get-Item`, `Get-ChildItem`, `New-Item`, `Copy-Item`, `Move-Item`, `Rename-Item`, `Remove-Item`).
Working with file content (`Get-Content`, `Set-Content`, `Add-Content`, `Clear-Content`).

### Registry Management #Registry #Configuration #Settings
Navigating the registry (HKLM:, HKCU: PSDrives).
Reading registry keys and values (`Get-Item`, `Get-ItemProperty`).
Creating/Modifying registry keys and values (`New-Item`, `Set-ItemProperty`, `New-ItemProperty`).
Deleting registry keys and values (`Remove-Item`, `Remove-ItemProperty`).

### WMI and CIM #WMI #CIM #Management #Hardware #Software
Windows Management Instrumentation (WMI) - Legacy.
Common Information Model (CIM) - Modern, WS-Management based.
`Get-WmiObject`: Querying WMI (requires DCOM/RPC).
`Get-CimInstance`: Querying CIM (uses WinRM).
`Get-CimAssociatedInstance`, `Get-CimClass`.
Invoking methods (`Invoke-WmiMethod`, `Invoke-CimMethod`).

### Managing Processes and Services #Processes #Services #Applications
`Get-Process` (gps): Listing running processes.
`Stop-Process` (kill): Terminating processes.
`Start-Process`: Launching applications or opening files.
`Get-Service` (gsv): Listing system services.
`Start-Service`, `Stop-Service`, `Restart-Service`, `Set-Service`.

### Event Log Management #EventLogs #Troubleshooting #Monitoring
`Get-EventLog`: Querying classic event logs (System, Application, Security) - Legacy.
`Get-WinEvent`: Querying modern Windows Eventing logs (more powerful filtering).
Filtering events (`-FilterHashtable`, `-FilterXPath`, `-FilterXML`).
Creating custom events (`Write-EventLog`).

## PowerShell Security Features #Security #Hardening #Protection
Mechanisms within PowerShell to enhance security.

### Execution Policy #ScriptControl #Safety
(Reiteration) Purpose and levels.
Scope and GPO control.

### Code Signing #Authenticode #Trust #Integrity
Signing scripts with digital certificates.
Verifying signatures.
Policies requiring signed scripts.

### Constrained Language Mode #Lockdown #ReducedFunctionality
Limiting available cmdlets, language features for security.
Used in AppLocker, Device Guard, JEA.

### Just Enough Administration (JEA) #RBAC #Delegation #LeastPrivilege
Role-based access control for PowerShell remoting.
Defining roles and capabilities.
Creating constrained session endpoints.

### Script Block Logging and Transcription #Auditing #Forensics #Monitoring
Logging executed PowerShell code blocks (`Enable-PSWSManCombinedTrace`, `Enable-PSModuleLogging`, `Enable-PSScriptBlockLogging`).
Creating transcripts of PowerShell sessions (`Start-Transcript`, `Stop-Transcript`).

### Antimalware Scan Interface (AMSI) #Malware #Detection #Integration
Integration point for antimalware solutions to scan script content before execution.

## Desired State Configuration (DSC) #DSC #ConfigurationManagement #Declarative
Managing system configuration as code.

### Overview and Concepts #Declarative #Idempotent #ConfigurationAsCode
Declarative vs. imperative configuration.
Idempotency.
Managed nodes.

### DSC Resources #Resources #BuildingBlocks
Built-in resources.
Finding and installing resources (PSGallery).
Creating custom resources.

### Configurations #DSCConfig #MOF
Writing DSC configuration scripts (.ps1).
Generating MOF files.
Applying configurations.

### Local Configuration Manager (LCM) #LCM #Agent #NodeManagement
The engine on target nodes applying configurations.
Configuring the LCM (Refresh mode: Push/Pull, frequency, etc.).
`Get-DscLocalConfigurationManager`, `Set-DscLocalConfigurationManager`.

### Push and Pull Modes #Deployment #ConfigurationDelivery
Push Mode: Manually pushing configurations to nodes.
Pull Mode: Nodes pulling configurations from a central Pull Server (HTTP/SMB).
Setting up a Pull Server.

## Advanced Scripting Techniques #AdvancedScripting #Techniques #Optimization
Going beyond basic scripting.

### Advanced Functions #CmdletBinding #ProfessionalScripts
Using `[CmdletBinding()]`.
Implementing `-WhatIf` and `-Confirm` support (`SupportsShouldProcess`).
Advanced parameter attributes (`ValueFromPipeline`, `ValueFromPipelineByPropertyName`, `ParameterSetName`).

### Error Handling #ErrorHandling #Exceptions #Robustness
Terminating vs. Non-terminating errors.
`Try`/`Catch`/`Finally` blocks.
The `$Error` automatic variable.
Error preferences (`$ErrorActionPreference`).
`Trap` statement (less common).
`Write-Error`.

### Debugging Scripts #Debugging #Troubleshooting #Development
Using `Write-Verbose`, `Write-Debug`.
`Set-PSDebug -Trace`.
Breakpoints (`Set-PSBreakpoint`, `Get-PSBreakpoint`, `Remove-PSBreakpoint`).
Debugging in ISE or VS Code (step over, step into, step out).

### PowerShell Classes (v5+) #Classes #OOP #CustomTypes
Defining classes in PowerShell (`class`).
Constructors, properties, methods.
Inheritance.
Enums.

### PowerShell Workflows #Workflows #Parallelism #LongRunning (Largely Deprecated)
(Historical Context) Defining long-running, parallel, resumable tasks.
Largely superseded by other automation tools but part of PowerShell history.

## Interacting with .NET and COM #DotNET #COM #Integration #Extensibility
Leveraging the underlying .NET Framework/.NET Core and Component Object Model.

### Using .NET Framework/Core Classes #System #Assemblies #Types
Accessing static members (`[DateTime]::Now`).
Creating instances of .NET classes (`New-Object`).
Loading assemblies (`Add-Type`).
Exploring types (`Get-Member -Static`).

### Working with COM Objects #COM #Automation #LegacyApps
Creating COM objects (`New-Object -ComObject`).
Interacting with applications like Excel, Word, Outlook (if installed).

## Community and Resources #Community #Learning #Resources #Support
Where to learn more and get help.

### PowerShell Gallery #PSGallery #Modules #Scripts
Central repository for modules and scripts.

### Blogs and Websites #Blogs #Websites #Experts
Microsoft PowerShell Team Blog.
Community blogs (Adam the Automator, Kevin Marquette, etc.).
Forums (Stack Overflow, Reddit r/PowerShell).

### Books and Training #Books #Training #Courses
Recommended books.
Online training platforms (Pluralsight, Udemy, Microsoft Learn).

### Conferences and User Groups #Conferences #UserGroups #Networking
PowerShell + DevOps Global Summit.
Local user groups.
```
