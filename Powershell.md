# I. Introduction to PowerShell

## Understanding PowerShell Basics

### What is PowerShell?

PowerShell is a cross-platform task automation solution made up of a command-line shell, a scripting language, and a configuration management framework.

### PowerShell's Key Features

*   **Cmdlets:** Pre-built commands (e.g., `Get-Process`, `Stop-Process`).
*   **Pipelines:** Connecting cmdlets to pass objects (e.g., `Get-Process | Where-Object {$_.CPU -gt 5} | Stop-Process`).
*   **Objects:** PowerShell works with objects, not just text.
*   **Modules:** Packages of cmdlets, providers, functions, and variables that can be imported into PowerShell.
*   **Providers:** Allow access to different data stores (e.g., Registry, File System) in a consistent way.

### Core PowerShell Concepts

*   **Cmdlets:** Lightweight commands used in PowerShell (e.g., `Get-Help`, `Get-Command`).
*   **Aliases:** Shorter names for cmdlets (e.g., `ls` for `Get-ChildItem`).
*   **Parameters:** Options to modify a cmdlet's behavior (e.g., `-Name`, `-Path`).
*   **Variables:** Storing data (e.g., `$name = "John"`).

## Installing and Configuring PowerShell

### Checking PowerShell Version

Use the command `$PSVersionTable` to see the installed PowerShell version.

### Installing PowerShell on Different Platforms

Instructions for installing PowerShell on Windows, Linux, and macOS.

### Configuring Execution Policies

*   Understanding execution policies (e.g., `Restricted`, `RemoteSigned`, `Unrestricted`).
*   Setting the execution policy: `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`.

## PowerShell Help System

### Using `Get-Help`

*   Basic usage: `Get-Help Get-Process`.
*   Getting detailed help: `Get-Help Get-Process -Detailed`.
*   Examples: `Get-Help Get-Process -Examples`.
*   Online help: `Get-Help Get-Process -Online`.

### Finding Cmdlets

*   Using `Get-Command`: `Get-Command -Name *Process*`.
*   Filtering by module: `Get-Command -Module Microsoft.PowerShell.Management`.

### Updating Help Files

Using `Update-Help` to download the latest help files.

## Summary of Introduction to PowerShell

This section covered the basic introduction to PowerShell including key features, installation, basic concepts and the help system.

# II. Working with Cmdlets and Pipelines

## Basic Cmdlets

### Working with Files and Folders

*   `Get-ChildItem`: Listing files and folders (e.g., `Get-ChildItem C:\`).
*   `New-Item`: Creating new files and folders (e.g., `New-Item -ItemType File -Name "test.txt"`).
*   `Remove-Item`: Deleting files and folders (e.g., `Remove-Item "test.txt"`).
*   `Rename-Item`: Renaming files and folders (e.g., `Rename-Item "test.txt" "new_test.txt"`).
*   `Copy-Item`: Copying files and folders (e.g., `Copy-Item "test.txt" "C:	emp"`).
*   `Move-Item`: Moving files and folders (e.g., `Move-Item "test.txt" "C:	emp"`).

### Working with Processes

*   `Get-Process`: Listing running processes (e.g., `Get-Process`).
*   `Stop-Process`: Stopping a process (e.g., `Stop-Process -Name "notepad"`).
*   `Start-Process`: Starting a new process (e.g., `Start-Process "notepad"`).

### Working with Services

*   `Get-Service`: Listing services (e.g., `Get-Service`).
*   `Start-Service`: Starting a service (e.g., `Start-Service "wuauserv"`).
*   `Stop-Service`: Stopping a service (e.g., `Stop-Service "wuauserv"`).
*   `Restart-Service`: Restarting a service (e.g., `Restart-Service "wuauserv"`).

### Working with Registry

*   `Get-ItemProperty`: Getting registry values (e.g., `Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion"`).
*   `Set-ItemProperty`: Setting registry values (e.g., `Set-ItemProperty "HKLM:\SOFTWARE\Test" -Name "ValueName" -Value "ValueData"`).
*   `New-Item`: Creating new registry keys (e.g., `New-Item -Path "HKLM:\SOFTWARE" -Name "Test"`).
*   `Remove-Item`: Removing registry keys (e.g., `Remove-Item "HKLM:\SOFTWARE\Test"`).

## Understanding Pipelines

### What are Pipelines?

Pipelines are a sequence of cmdlets connected by the pipe operator (`|`), where the output of one cmdlet becomes the input of the next.

### How Pipelines Work

Data flows from left to right. Each cmdlet processes the incoming objects and passes them to the next cmdlet in the pipeline.

### Pipeline Examples

*   `Get-Process | Where-Object {$_.CPU -gt 5} | Select-Object Name, CPU`: Filtering processes with CPU usage greater than 5 and selecting the Name and CPU properties.
*   `Get-ChildItem C:\ | Where-Object {$_.LastWriteTime -gt (Get-Date).AddDays(-7)}`: Finding files modified in the last 7 days.

## Filtering and Selecting Objects

### Using `Where-Object`

*   Filtering based on conditions (e.g., `Get-Process | Where-Object {$_.CPU -gt 5}`).
*   Using comparison operators (e.g., `-eq`, `-ne`, `-gt`, `-lt`, `-ge`, `-le`).
*   Using logical operators (e.g., `-and`, `-or`, `-not`).

### Using `Select-Object`

*   Selecting specific properties (e.g., `Get-Process | Select-Object Name, CPU`).
*   Creating calculated properties (e.g., `Get-Process | Select-Object Name, @{Name="Memory (MB)";Expression={$_.WorkingSet / 1MB}}`).
*   Selecting the first or last few objects (e.g., `Get-Process | Select-Object -First 5`, `Get-Process | Select-Object -Last 5`).

### Using `Sort-Object`

*   Sorting by a property (e.g., `Get-Process | Sort-Object CPU`).
*   Sorting in descending order (e.g., `Get-Process | Sort-Object CPU -Descending`).
*   Sorting by multiple properties (e.g., `Get-Process | Sort-Object CPU, Name`).

## Summary of Working with Cmdlets and Pipelines

In this section we covered the basic and common cmdlets, how pipelines work, and how to filter select and sort objects.

# III. Scripting with PowerShell

## Basic Scripting Concepts

### Creating and Running Scripts

*   Creating a script file (e.g., `script.ps1`).
*   Running a script: `.\script.ps1`.
*   Using the PowerShell ISE or VS Code for scripting.

### Variables and Data Types

*   Declaring variables: `$name = "John"`.
*   Data types: String, Integer, Boolean, Array, Hashtable.
*   Type casting: `[int]"10"`, `[string]10`.

### Operators

*   Arithmetic operators: `+`, `-`, `*`, `/`, `%`.
*   Comparison operators: `-eq`, `-ne`, `-gt`, `-lt`, `-ge`, `-le`.
*   Logical operators: `-and`, `-or`, `-not`.
*   Assignment operators: `=`, `+=`, `-=`, `*=`, `/=`.

## Control Structures

### `if`, `elseif`, `else` Statements

*   Basic `if` statement:

```powershell
$age = 20
if ($age -ge 18) {
    Write-Host "You are an adult."
}
```

*   `if-elseif-else` statement:

```powershell
$score = 75
if ($score -ge 90) {
    Write-Host "A"
} elseif ($score -ge 80) {
    Write-Host "B"
} else {
    Write-Host "C"
}
```

### `for` Loops

*   Basic `for` loop:

```powershell
for ($i = 1; $i -le 5; $i++) {
    Write-Host "Iteration: $i"
}
```

### `foreach` Loops

*   Basic `foreach` loop:

```powershell
$names = "John", "Jane", "Doe"
foreach ($name in $names) {
    Write-Host "Name: $name"
}
```

### `while` and `do-while` Loops

*   Basic `while` loop:

```powershell
$count = 1
while ($count -le 5) {
    Write-Host "Count: $count"
    $count++
}
```

*   `do-while` loop:

```powershell
$num = 0
do {
    Write-Host "Number: $num"
    $num++
} while ($num -lt 3)
```

### `switch` Statements

*   Basic `switch` statement:

```powershell
$day = "Monday"
switch ($day) {
    "Monday" { Write-Host "Start of the week" }
    "Friday" { Write-Host "End of the week" }
    default { Write-Host "Mid-week" }
}
```

## Functions

### Defining Functions

*   Basic function definition:

```powershell
function Greet {
    param($name)
    Write-Host "Hello, $name!"
}
```

### Calling Functions

*   Calling the function: `Greet -name "John"`

### Parameters

*   Using parameters in functions:
    *   Positional parameters.
    *   Named parameters.
    *   Parameter validation.

### Return Values

*   Returning values from a function:

```powershell
function Add {
    param($a, $b)
    return $a + $b
}
$sum = Add -a 5 -b 3
Write-Host "Sum: $sum"
```

## Error Handling

### `try`, `catch`, `finally` Blocks

*   Basic `try-catch` block:

```powershell
try {
    # Code that might throw an error
    Get-Content "nonexistent_file.txt"
} catch {
    Write-Host "Error: $($_.Exception.Message)"
}
```

### Using `Throw` and `Write-Error`

*   Throwing custom errors: `throw "Custom error message"`
*   Writing error messages: `Write-Error "An error occurred"`

### `$ErrorActionPreference`

*   Setting the error action preference: `$ErrorActionPreference = "Stop"`
    *   Common values: `Continue`, `Stop`, `SilentlyContinue`, `Inquire`.

## Summary of Scripting with PowerShell

In this section we covered basic scripting concepts, control structures, functions, and error handling.

# IV. Advanced PowerShell Concepts

## Working with Modules

### Importing Modules

*   Using `Import-Module`: `Import-Module ActiveDirectory`.
*   Listing installed modules: `Get-Module -ListAvailable`.

### Creating Custom Modules

*   Creating a module manifest file (`.psd1`).
*   Organizing module files.
*   Exporting functions and variables.

### Using External Modules

*   Installing modules from the PowerShell Gallery: `Install-Module -Name PSReadLine`.
*   Finding modules: `Find-Module -Name PSReadLine`.

## Working with Objects

### Understanding Objects

*   Properties: Attributes of an object (e.g., `$process.Name`).
*   Methods: Actions that can be performed on an object (e.g., `$string.ToUpper()`).

### Manipulating Objects

*   Creating custom objects: `[PSCustomObject]@{Name="John"; Age=30}`.
*   Adding and removing properties: `Add-Member`, `Remove-Member`.

### Formatting Output

*   Using `Format-Table`: `Get-Process | Format-Table Name, CPU`.
*   Using `Format-List`: `Get-Process | Format-List`.
*   Using `ConvertTo-Json`: `Get-Process | ConvertTo-Json`.
*   Using `ConvertTo-Csv`: `Get-Process | ConvertTo-Csv`.

## Remoting

### Enabling Remoting

*   Using `Enable-PSRemoting`.
*   Configuring WinRM.

### Invoking Commands Remotely

*   Using `Invoke-Command`: `Invoke-Command -ComputerName "RemoteComputer" -ScriptBlock {Get-Process}`.
*   Using sessions: `New-PSSession`, `Enter-PSSession`, `Remove-PSSession`.

### Security Considerations

*   Using HTTPS.
*   Configuring trusted hosts.

## Background Jobs

### Starting Background Jobs

*   Using `Start-Job`: `Start-Job -ScriptBlock {Get-Process}`.

### Managing Background Jobs

*   Listing jobs: `Get-Job`.
*   Receiving results: `Receive-Job -Id 1`.
*   Stopping jobs: `Stop-Job -Id 1`.
*   Removing jobs: `Remove-Job -Id 1`.

## Summary of Advanced PowerShell Concepts

This section reviewed working with Modules, how to work with and manipulate objects, remoting, and background jobs.

# V. Practical PowerShell Projects

## Automating System Administration Tasks

### Script to Check Disk Space

*   Retrieving disk space information.
*   Alerting when disk space is low.

### Script to Monitor System Performance

*   Collecting CPU and memory usage.
*   Logging performance data.

### Script to Manage User Accounts

*   Creating new user accounts.
*   Modifying user account properties.
*   Disabling or deleting user accounts.

## Automating Application Deployment

### Script to Install Software

*   Downloading software packages.
*   Running installers.
*   Configuring software settings.

### Script to Configure Web Servers

*   Creating new websites.
*   Configuring application pools.
*   Deploying web applications.

## Creating Custom Tools

### Building a GUI Tool

*   Using Windows Forms or WPF.
*   Connecting PowerShell scripts to the GUI.

### Building a Command-Line Tool

*   Creating reusable scripts.
*   Adding help documentation.
*   Distributing the tool to others.

## Summary of Practical PowerShell Projects

In this section we have covered some practical projects that can be created with Powershell to automate system administration tasks, automate application deployment, and the creation of custom tools.
