# Git #VCS #DVCS #SoftwareDevelopment
An overview of the Git distributed version control system, its purpose, and core ideas.

## Introduction to Git #Basics #Concepts #History
Fundamental concepts, history, and the rationale behind Git.

### What is Version Control? #VCS #Definition
Explains the purpose of version control systems (VCS) in tracking changes to files over time.

### Centralized vs Distributed VCS #CVCS #DVCS #Comparison
Compares Git (Distributed) with older systems like Subversion or CVS (Centralized). Key difference: every developer has a full repository copy in DVCS.

### Why Git? #Benefits #Popularity
Discusses the advantages of Git: speed, non-linear development (branching/merging), data integrity, distributed nature, staging area, and widespread adoption.

### A Short History of Git #LinusTorvalds #Origins
Brief history of Git's creation by Linus Torvalds for Linux kernel development in 2005.

### Git's Design Philosophy #Speed #Scalability #Distributed
Core principles guiding Git's development: performance, ability to handle large projects, fully distributed model, and data assurance.

## Getting Started with Git #Installation #Setup #Initialization
Covers installing Git, initial configuration, and creating or cloning repositories.

### Installing Git #Windows #macOS #Linux
Instructions or references for installing Git on various operating systems.

### First-Time Git Setup #Configuration #Username #Email
Essential configuration steps after installation, primarily setting user identity.
`git config --global user.name "Your Name"` #GlobalConfig
`git config --global user.email "your.email@example.com"` #GlobalConfig

#### Checking Your Settings (git config --list) #Verification
How to verify the configuration settings applied.

### Getting Help #Documentation #Manual
Accessing Git's built-in help system.
`git help <command>` #CommandHelp
`git <command> --help` #CommandHelp

### Initializing a Repository #NewProject #gitinit
Creating a new Git repository from scratch in a project directory.
`git init` #Command

#### The .git directory #RepositoryInternals
Explanation of the hidden `.git` subdirectory containing all repository metadata and objects.

### Cloning an Existing Repository #ExistingProject #gitclone
Getting a local copy of a remote repository.
`git clone <repository-url>` #Command

#### Cloning via HTTPS #Protocol #Authentication
Using the HTTPS protocol, often requiring username/password or token authentication.

#### Cloning via SSH #Protocol #Security #Keys
Using the SSH protocol, typically requiring pre-configured SSH keys for secure authentication.

## Core Git Concepts #Fundamentals #DataModel #Architecture
Understanding the fundamental ideas and architecture behind how Git works.

### The Three States #WorkingDirectory #StagingArea #Repository
Git files primarily exist in three states: modified (in working directory), staged (in staging area/index), and committed (in repository/.git directory).

#### Modified #FileState
File has changes but is not yet staged.

#### Staged #FileState
File with changes marked to be included in the next commit (added to the staging area/index).

#### Committed #FileState
Changes are safely stored in the local repository database.

### Snapshots, Not Differences #DataModel #Efficiency
Git thinks of data more like a stream of snapshots of the entire project filesystem, rather than tracking individual file changes (deltas), though it uses deltas for efficiency internally.

### Git Integrity #Checksums #SHA1 #Hashing
All Git objects (commits, trees, blobs) are checksummed using SHA-1 hashes, ensuring data integrity and allowing content-addressable storage.

### The HEAD Pointer #Reference #CurrentBranch #CurrentCommit
HEAD is a pointer usually indicating the currently checked-out branch or commit (in "detached HEAD" state).

## Basic Git Workflow #DailyUse #Commands #Lifecycle
The common cycle of modifying files, staging changes, and committing snapshots.

### Checking the Status #gitstatus #Tracking #State
`git status` shows the state of the working directory and staging area: tracked, untracked, modified, and staged files. #Command

### Tracking New Files #gitadd #Staging
Adding untracked files to be tracked by Git and staging them for the next commit.
`git add <file>...` #Command

### Staging Modified Files #gitadd #Staging
Adding changes in already tracked files to the staging area for the next commit.
`git add <file>...` or `git add .` (stage all changes) #Command

### Ignoring Files #gitignore #UntrackedFiles #Configuration
Specifying intentionally untracked files (e.g., build artifacts, logs) that Git should ignore using `.gitignore` files.

#### .gitignore patterns #Syntax #Rules
Syntax and rules for patterns within `.gitignore` files.

#### Global .gitignore #UserConfiguration
Configuring a global ignore file for user-specific patterns across all repositories.

#### git check-ignore #Debugging
A command to debug which `.gitignore` rule is ignoring a specific file. #Command

### Viewing Staged and Unstaged Changes #gitdiff #Comparison
Comparing changes between different states (working directory, staging area, commits).

#### git diff (Working Directory vs Staging Area) #UnstagedChanges
Shows changes made but not yet staged. #Command

#### git diff --staged (Staging Area vs Repository) #StagedChanges
Shows changes staged but not yet committed. Also `git diff --cached`. #Command

#### git diff <commit>..<commit> (Between Commits) #HistoryDiff
Shows differences between two arbitrary commits. #Command

### Committing Changes #gitcommit #Snapshots #History
Recording the snapshot of the staging area to the project history.

#### Writing Good Commit Messages #BestPractices #Communication
Guidelines for crafting clear, concise, and informative commit messages.

#### Committing Staged Changes #gitcommit -m
`git commit -m "Commit message"` commits staged changes with an inline message. #Command

#### Skipping the Staging Area #gitcommit -a
`git commit -a -m "Commit message"` stages all tracked, modified files and commits them (doesn't add new untracked files). Use with caution. #Command

### Removing Files #gitrm #Untracking #Deletion
Removing files from the working directory and staging the removal.
`git rm <file>...` #Command
`git rm --cached <file>...` (Remove from index/staging, keep in working dir) #Command

### Moving Files #gitmv #Renaming #Tracking
Renaming or moving files within the repository; Git often detects this automatically, but `git mv` makes it explicit.
`git mv <source> <destination>` #Command

## Viewing Commit History #gitlog #Inspection #HistoryTraversal
Commands and options for exploring the sequence of commits in the repository.

### Basic Log Output #gitlog #Chronological
`git log` displays the commit history chronologically. #Command

### Formatting Log Output #PrettyFormats #Customization
Options to control the appearance and content of `git log` output.

#### --oneline #CompactView
Shows each commit on a single line (SHA-1 hash and commit title).

#### --graph #BranchVisualisation
Displays an ASCII graph representing the branch and merge history.

#### --decorate #Refs #Tags #Branches
Shows branch names, tags, and other references pointing to commits.

#### --pretty=format:"..." #CustomFormat
Allows defining custom output formats using placeholders.

### Filtering Log Output #Filtering #Searching
Options to narrow down the commit history displayed.

#### By Author (--author) #AuthorFilter
Show commits by a specific author.

#### By Date (--since, --until) #DateFilter
Show commits within a specific date range.

#### By Message (--grep) #MessageFilter
Show commits whose messages match a pattern.

#### By File/Path (-- <path>) #PathFilter
Show commits that introduced changes to specific files or directories.

#### By Commit Range (<commit>..<commit>) #RangeFilter
Show commits reachable from one commit but not another.

### Using GUI Log Viewers #Tools #Visualization
Graphical tools often provide more intuitive ways to explore history.

## Undoing Things #Recovery #Mistakes #Correction
Techniques for reverting changes, fixing mistakes, and managing the commit history.

### Amending the Last Commit #gitcommit --amend #Correction
Modifying the most recent commit (e.g., changing the commit message, adding forgotten files). Rewrites history, use with caution if already pushed.
`git commit --amend` #Command

### Unstaging a Staged File #gitresetHEAD #StagingArea
Removing a file from the staging area, keeping the changes in the working directory.
`git reset HEAD <file>...` #Command

### Discarding Changes in Working Directory #gitcheckout #RevertFile
Reverting a file in the working directory back to its last committed state (or index state if staged). **Changes are lost.**
`git checkout -- <file>...` (Older command, potentially confusing) #Command
`git restore <file>...` (Newer, clearer command) #Command

#### `git clean` #RemoveUntrackedFiles
Removes untracked files from the working directory. **Use with extreme caution (`-n` for dry run, `-f` to force).** #Command

### Reverting Commits #gitrevert #SafeUndo #History
Creates a new commit that undoes the changes introduced by a previous commit. This is a safe way to undo public history as it doesn't rewrite it.
`git revert <commit-hash>` #Command

### Resetting Commits #gitreset #DangerousUndo #HistoryRewriting
Moves the current branch pointer (HEAD) to a previous commit, potentially discarding history and changes. **Dangerous, especially `--hard`**. Primarily for local cleanup before sharing.
`git reset <commit-hash>` #Command

#### --soft (Move HEAD only) #ResetType
Moves HEAD pointer; index and working directory remain unchanged.

#### --mixed (Move HEAD, Reset Index - Default) #ResetType
Moves HEAD pointer and resets the index; working directory remains unchanged. Changes are unstaged.

#### --hard (Move HEAD, Reset Index, Reset Working Directory - Destructive) #ResetType
Moves HEAD pointer, resets index, and resets working directory to match the target commit. **All subsequent changes and commits are lost.**

## Branching in Git #ParallelDevelopment #Isolation #Features
Using branches to work on different features or versions concurrently without interference.

### What is a Branch? #Pointer #Lightweight #CommitReference
A branch in Git is simply a lightweight movable pointer to a specific commit.

### Creating a New Branch #gitbranch #BranchCreation
Creating a new pointer to the current commit.
`git branch <branchname>` #Command

### Switching Branches #gitcheckout #git-switch #HEADUpdate
Changing the HEAD pointer and updating the working directory to match the selected branch.
`git checkout <branchname>` (Older command, overloaded) #Command
`git switch <branchname>` (Newer, dedicated command for switching) #Command
`git switch -c <branchname>` (Create and switch in one step) #Command

### Listing Branches #gitbranch #BranchManagement
Viewing local, remote, or all branches.
`git branch` (Local) #Command
`git branch -r` (Remote-tracking) #Command
`git branch -a` (All) #Command

### Deleting Branches #gitbranch -d #Cleanup #BranchManagement
Removing branch pointers.
`git branch -d <branchname>` (Safe delete: only if merged) #Command
`git branch -D <branchname>` (Force delete: even if unmerged) #Command

### Renaming Branches #gitbranch -m #BranchManagement
Changing the name of a branch.
`git branch -m <oldname> <newname>` #Command

## Merging #CombiningWork #Integration #Collaboration
Integrating changes from one branch into another.

### Basic Merging #gitmerge #Integration
Combining the history of two branches.
`git checkout <receiving-branch>`
`git merge <feature-branch>` #Command

#### Fast-Forward Merge #LinearHistory #SimpleMerge
Occurs when the receiving branch hasn't diverged; the branch pointer is simply moved forward. No merge commit created.

#### Three-Way Merge (Recursive Strategy) #MergeCommit #NonLinearHistory
Occurs when branches have diverged; Git finds a common ancestor and creates a new merge commit tying the histories together.

### Merge Conflicts #Collisions #Resolution #ManualIntervention
Situations where Git cannot automatically combine changes because the same lines were modified differently in both branches.

#### Identifying Conflicts #ConflictMarkers #gitstatus
Git marks conflicted files and `git status` shows them. Files contain conflict markers (`<<<<<<<`, `=======`, `>>>>>>>`).

#### Resolving Conflicts #ManualEdit #DecisionMaking
Manually editing conflicted files to choose the desired combination of changes, then staging (`git add`) and committing the result.

#### Aborting a Merge #gitmerge --abort #UndoMerge
Canceling a merge process that resulted in conflicts.
`git merge --abort` #Command

### Merge Strategies #MergingAlgorithms #Options
Different algorithms Git can use to perform merges, controllable via the `-s` option.

#### Recursive (Default for 2 heads) #MergeStrategy
Handles complex scenarios including criss-cross merges.

#### Resolve #MergeStrategy
Older algorithm, sometimes useful for simpler cases.

#### Octopus (Default for >2 heads) #MergeStrategy
Used when merging more than two branches simultaneously.

#### Ours #MergeStrategy
Auto-resolves conflicts by preferring the version from the current branch ('ours').

#### Subtree #MergeStrategy
Advanced strategy used for managing subprojects.

## Rebasing #HistoryRewriting #LinearHistory #AlternativeToMerge
Re-applying commits from one branch onto the tip of another branch, creating a linear history. Alternative to merging for integrating changes.

### The Basic Rebase #gitrebase #ReplayingCommits
Taking commits from a feature branch and replaying them on top of the target branch (e.g., main).
`git checkout <feature-branch>`
`git rebase <base-branch>` (e.g., `git rebase main`) #Command

### Interactive Rebasing #gitrebase -i #HistoryModification #Cleanup
A powerful mode allowing modification of commits before they are replayed: reordering, squashing (combining), editing messages, dropping, etc. Useful for cleaning up local history before sharing.
`git rebase -i <base-commit-or-branch>` #Command

#### Reordering Commits #InteractiveRebase
Changing the order in which commits are applied.

#### Squashing Commits #InteractiveRebase #CondenseHistory
Combining multiple commits into a single one.

#### Editing Commits #InteractiveRebase #AmendOlder
Modifying the changes or message of an older commit.

#### Splitting Commits #InteractiveRebase #RefactorHistory
Breaking a large commit into smaller ones.

#### Dropping Commits #InteractiveRebase #RemoveCommit
Removing a commit entirely.

### Rebase vs Merge #Comparison #ProsCons #WorkflowChoice
Discusses trade-offs: rebase creates a cleaner, linear history but rewrites it; merge preserves the exact history but can be noisier.

### The Perils of Rebasing #GoldenRule #SharedHistory #Collaboration
**Crucial rule:** Do not rebase commits that have already been pushed and shared with others, as it
 rewrites history and causes problems for collaborators. Rebase is best used for local cleanup before pushing.

## Working with Remote Repositories #Collaboration #Sharing #Synchronization
Interacting with repositories hosted on other servers (e.g., GitHub, GitLab).

### Understanding Remotes #RemoteAlias #URL #RepositoryLink
Remotes are aliases (like 'origin') that point to the URLs of other repositories.

### Listing Remotes #gitremote #RemoteManagement
Viewing configured remote repositories.
`git remote` (List names) #Command
`git remote -v` (List names and URLs) #Command

### Adding Remotes #gitremoteadd #RemoteSetup
Adding a new remote connection.
`git remote add <name> <url>` (e.g., `git remote add upstream https://...`) #Command

### Fetching from Remotes #gitfetch #DownloadObjects #UpdateRemoteRefs
Downloading commits and objects from a remote repository without merging them into your local working branches. Updates remote-tracking branches (e.g., `origin/main`).
`git fetch <remote-name>` (e.g., `git fetch origin`) #Command

### Pulling from Remotes #gitpull #FetchAndMerge #Synchronization
Fetching changes from a remote repository and immediately merging them into the current local branch. Equivalent to `git fetch` followed by `git merge`.
`git pull <remote-name> <branch-name>` (e.g., `git pull origin main`) #Command

#### `git pull --rebase` #FetchRebase
Fetches changes and then rebases the local branch onto the fetched branch instead of merging. Keeps history linear but rewrites local commits.

### Pushing to Remotes #gitpush #UploadObjects #ShareChanges
Uploading local commits and objects to a remote repository, updating the remote branch.
`git push <remote-name> <local-branch-name>:<remote-branch-name>` (e.g., `git push origin main:main`) #Command
Often shortened to `git push <remote-name> <branch-name>` if tracking is set up.

#### Tracking Branches #Upstream #Configuration #gitpush -u
Setting up a link between a local branch and a remote branch (its "upstream"). Allows using `git pull` and `git push` without specifying remote/branch names.
`git push -u <remote-name> <branch-name>` (Set upstream on first push) #Command

#### Force Pushing (`git push --force`, `git push --force-with-lease`) #Dangerous #HistoryRewriting #CoordinationNeeded
Overwriting the remote branch history with local history. `--force` is dangerous; `--force-with-lease` is slightly safer as it checks if the remote branch has been updated by someone else. Use only when necessary and with team coordination.

### Inspecting Remotes #gitremote show #RemoteDetails
Showing detailed information about a specific remote, including URLs and tracked branches.
`git remote show <remote-name>` (e.g., `git remote show origin`) #Command

### Renaming and Removing Remotes #gitremote rename #gitremote remove #RemoteManagement
Managing remote aliases.
`git remote rename <old-name> <new-name>` #Command
`git remote remove <name>` #Command

## Tagging #ReleasePoints #Milestones #Versioning
Marking specific points in history, typically used for releases (e.g., v1.0).

### What are Tags? #Reference #CommitPointer #StablePoint
Tags are references that point to specific commits, making it easy to find important points like releases.

### Listing Tags #gittag #TagManagement
Displaying existing tags.
`git tag` #Command

### Creating Tags #gittag #TagCreation
Creating new tags pointing to a specific commit (defaults to HEAD).

#### Lightweight Tags #SimplePointer
Just a pointer to a commit, like a branch that doesn't move.
`git tag <tagname>` #Command

#### Annotated Tags #TagObject #Metadata #GPGSigning
Stored as full objects in the Git database. They contain metadata like tagger name, email, date, tagging message, and can be GPG-signed for verification. Preferred for releases.
`git tag -a <tagname> -m "Tag message"` #Command
`git tag -s <tagname> -m "Tag message"` (GPG Signed) #Command

### Tagging Later #TaggingPastCommits #HistoryTagging
Creating a tag pointing to an older commit by specifying the commit hash.
`git tag <tagname> <commit-hash>` #Command

### Sharing Tags #gitpush --tags #RemoteSync
Tags are not pushed by default; they must be pushed explicitly.
`git push <remote-name> --tags` #Command
`git push <remote-name> <tagname>` (Push a single tag) #Command

### Deleting Tags #gittag -d #TagManagement
Removing tags locally and remotely (requires separate push).
`git tag -d <tagname>` (Local delete) #Command
`git push <remote-name> --delete <tagname>` (Remote delete) #Command

### Checking Out Tags #DetachedHEAD #Inspection
Checking out a tag puts the repository in a "detached HEAD" state, allowing inspection of the code at that point.

## Git Aliases #Shortcuts #Efficiency #Customization
Creating shortcuts for longer or frequently used Git commands.

### Creating Aliases #gitconfig #AliasDefinition
Defining aliases using `git config`.
`git config --global alias.<alias-name> '<command-string>'` #Command

#### Example: `git config --global alias.co checkout` #AliasExample
#### Example: `git config --global alias.br branch` #AliasExample
#### Example: `git config --global alias.ci commit` #AliasExample
#### Example: `git config --global alias.st status` #AliasExample
#### Example: `git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"` #AliasExample

### Complex Aliases #ShellCommands #Scripting
Aliases can execute external shell commands by starting the alias string with `!`.

## Git Internals #Plumbing #Porcelain #DataStructures
A look under the hood at how Git stores data and manages history.

### Plumbing vs Porcelain Commands #LowLevel #HighLevel #UserInterface
Distinction between low-level core commands (plumbing, e.g., `hash-object`, `cat-file`) and user-friendly commands (porcelain, e.g., `commit`, `checkout`).

### Git Objects #CoreData #Storage
The fundamental units of data storage in the `.git/objects` directory.

#### Blobs (File Content) #ObjectType #ContentAddressable
Store the contents of files. The hash depends only on the content.

#### Trees (Directory Structure) #ObjectType #Snapshot
Represent directory contents, listing blobs and other trees (subdirectories) with their filenames and modes. Defines a snapshot of the project structure.

#### Commits (Snapshot Metadata) #ObjectType #HistoryLink
Point to a specific tree object (the project snapshot), parent commit(s), author/committer info, date, and commit message. Links history together.

#### Tags (Annotated Tag Objects) #ObjectType #Reference
Contain metadata for annotated tags, pointing to a commit object.

### Git References (Refs) #Pointers #Branches #Tags #HEAD
Human-readable pointers (stored in `.git/refs`) to commit hashes.

#### refs/heads/ #BranchRefs
Stores local branch pointers.

#### refs/tags/ #TagRefs
Stores tag pointers.

#### refs/remotes/ #RemoteRefs
Stores remote-tracking branch pointers (e.g., `refs/remotes/origin/main`).

#### HEAD #SymbolicRef #CurrentCommit
Typically a symbolic reference (e.g., points to `refs/heads/main`) indicating the current branch.

### The Index / Staging Area #CacheFile #NextCommit
A file (usually `.git/index`) that acts as a staging area, holding information about the working directory snapshot that will go into the next commit.

### Packfiles #StorageOptimization #Efficiency #GarbageCollection
To save space and improve efficiency, Git packs loose objects into compressed packfiles (`.pack`), often using delta compression. Index files (`.idx`) allow quick lookup.

### Garbage Collection #gitgc #Maintenance #Optimization
The process (`git gc`) of cleaning up unreachable objects and repacking loose objects into packfiles to optimize the repository. Often run automatically. #Command

## Advanced Git Techniques #ExpertFeatures #SpecialCases
More specialized Git commands and features for complex scenarios.

### Submodules #git submodule #ProjectDependencies #NestedRepos
Managing external Git repositories as subdirectories within a main repository. Useful for tracking dependencies.
`git submodule add <repo-url> <path>` #Command
`git submodule update --init --recursive` #Command

### Subtrees #git subtree #VendorBranches #AlternativeToSubmodules
An alternative approach to incorporating another repository's history into the main repository, effectively merging it in. Can be simpler than submodules but history is intertwined.
`git subtree add --prefix=<path> <repo-url> <branch>` #Command

### Searching History #gitlog -S #gitlog -G #Pickaxe #RegexSearch
Finding commits based on changes they introduced.
`git log -S"<string>"` (Pickaxe: finds commits adding/removing the string) #Command
`git log -G"<regex>"` (Finds commits where diff matches regex) #Command

### Debugging with Git #gitbisect #BugHunting #BinarySearch
Automatically finding the commit that introduced a bug using binary search on the commit history.
`git bisect start` #Command
`git bisect bad` (Mark current commit as bad) #Command
`git bisect good <commit>` (Mark a known good commit) #Command

### Finding Culprits #gitblame #LineAnnotation #Authorship
Showing which commit and author last modified each line of a file. Useful for understanding context or finding who introduced specific code.
`git blame <filename>` #Command

### Git Hooks #Automation #CustomScripts #WorkflowEnforcement
Scripts that Git executes automatically at certain points in its execution flow (e.g., before commit, after push). Used for enforcing policies, automation, CI integration.

#### Client-Side Hooks (pre-commit, prepare-commit-msg, etc.) #LocalHooks
Run on the developer's local machine. Examples: linting, running tests before commit.

#### Server-Side Hooks (pre-receive, update, post-receive) #RemoteHooks
Run on the server hosting the repository. Examples: enforcing push policies, triggering notifications or builds.

### Stashing Changes #gitstash #TemporarySave #ContextSwitching
Temporarily shelving changes in the working directory and index to switch branches or pull updates without committing incomplete work.
`git stash` or `git stash save "message"` #Command
`git stash list` #Command
`git stash apply [<stash-id>]` #Command
`git stash pop [<stash-id>]` #Command
`git stash drop [<stash-id>]` #Command

### Cherry Picking #gitcherry-pick #ApplyingSpecificCommits #Backporting
Applying the changes introduced by specific existing commits onto the current branch. Useful for backporting fixes or selectively applying features.
`git cherry-pick <commit-hash>...` #Command

### The Reflog #gitreflog #Recovery #LocalHistory #SafetyNet
Records updates to the tip of branches and other references locally. A safety net for recovering lost commits or undone actions (e.g., after a bad rebase or reset). Not part of the shared history.
`git reflog` #Command

### Sparse Checkout #git sparse-checkout #PartialClone #LargeRepos
Checking out only a subset of files/directories from a large repository, reducing disk space usage and improving performance.
`git sparse-checkout init --cone` #Command
`git sparse-checkout set <dir1> <dir2> ...` #Command

### Worktrees #git worktree #MultipleCheckouts #ParallelTasks
Allows having multiple working trees linked to the same repository, enabling checking out different branches simultaneously in different directories. Useful for working on multiple features or testing concurrently.
`git worktree add <path> [<branch>]` #Command

## Git Workflows #CollaborationModels #TeamStrategies #BestPractices
Common strategies and models for how teams use Git branches for collaboration and release management.

### Centralized Workflow #SimpleWorkflow #SVNStyle
A basic workflow resembling traditional centralized VCS, often using a single `main` branch where developers push directly (less common for teams).

### Feature Branch Workflow #Isolation #CodeReview #PullRequests
Core idea: all new development happens on dedicated feature branches, which are then merged into the main branch (often via Pull/Merge Requests for review). Protects the main branch.

### Gitflow Workflow #VincentDriessen #StructuredWorkflow #ReleaseManagement
A more complex, structured workflow with dedicated branches for features (`feature/*`), releases (`release/*`), hotfixes (`hotfix/*`), development integration (`develop`), and stable production (`main`/`master`). Good for projects with scheduled releases.

#### Main/Master Branch #ProductionReady
Represents the official production release history.

#### Develop Branch #Integration
Integration branch for features; reflects the latest delivered development changes for the next release.

#### Feature Branches #NewDevelopment
Branched off `develop`, merged back into `develop`.

#### Release Branches #ReleasePrep
Branched off `develop` when nearing a release, used for final testing and bug fixing. Merged into `main` and `develop`.

#### Hotfix Branches #ProductionFixes
Branched off `main` to fix critical production bugs, merged back into `main` and `develop`.

### GitHub Flow #LightweightWorkflow #DeploymentFocused #ContinuousDelivery
Simpler workflow focused on `main` being always deployable. Features are developed on branches, reviewed via Pull Requests, and merged directly to `main` upon approval, triggering deployment.

### GitLab Flow #EnvironmentBranches #IssueTrackingIntegration
Similar to GitHub Flow but adds environment branches (e.g., `staging`, `production`) or release branches as needed. Emphasizes issue tracking integration.

### Forking Workflow #OpenSource #Contributions #DistributedCollaboration
Common in open source. Contributors "fork" the main repository, push changes to their personal fork, and submit Pull Requests from their fork back to the original repository. Maintainers manage integration.

### Choosing a Workflow #TeamSize #ProjectType #ReleaseCycle
Factors influencing the choice of workflow: team size, project complexity, release frequency, deployment strategy, need for structure vs simplicity.

## Git Hosting & Collaboration Platforms #RemoteStorage #CodeReview #CI/CD
Services that host Git repositories and provide collaboration tools.

### GitHub #Platform #Community #Actions #Packages
Largest host, strong community focus, integrated CI/CD (Actions), package registry.

### GitLab #Platform #DevOps #SelfHostedOption #CI/CD
Comprehensive DevOps platform, strong built-in CI/CD, issue tracking, available as SaaS or self-hosted.

### Bitbucket #Platform #Atlassian #JiraIntegration
Owned by Atlassian, strong integration with Jira and other Atlassian tools. Offers Git and Mercurial hosting.

### Azure DevOps Repos #Microsoft #Platform #Integration
Part of Microsoft's Azure DevOps suite, integrates well with other Azure services and Windows development.

### Pull Requests / Merge Requests #CodeReview #Collaboration #Discussion
Mechanism used by hosting platforms for proposing changes from one branch (or fork) to another, enabling code review, discussion, and automated checks before merging.

### Issue Tracking #BugTracking #FeatureRequests #ProjectManagement
Integrated systems for managing tasks, bugs, features, often linked to commits and branches.

### Wikis & Documentation #KnowledgeSharing
Platforms often include wikis or other documentation features tied to the repository.

## Git Tools & Ecosystem #GUIs #Utilities #Extensions
Software and utilities that enhance or simplify the use of Git.

### Command Line Interface (CLI) #DefaultInterface #Scripting
The native `git` command-line tool. Powerful, scriptable, universally available.

### Graphical User Interfaces (GUIs) #Visualization #EaseOfUse
Visual tools for interacting with Git repositories, often helpful for visualizing history and complex operations.

#### SourceTree #GUI #Atlassian #Free
Free Git GUI for Windows and macOS from Atlassian.

#### GitKraken #GUI #CrossPlatform #PaidFeatures
Popular cross-platform Git GUI with free and paid tiers. Known for its visual appeal and features.

#### GitHub Desktop #GUI #GitHubIntegration #Simple
Simple GUI focused on GitHub workflows, available for Windows and macOS.

#### Fork #GUI #Windows #macOS
Well-regarded Git client for Windows and macOS.

#### IDE Integrations (VS Code, JetBrains, etc.) #BuiltInTools #WorkflowIntegration
Most modern code editors and IDEs have built-in Git support, integrating version control directly into the development environment.

### Git Large File Storage (LFS) #git-lfs #BinaryFiles #LargeAssets
An extension for versioning large files (e.g., binaries, assets, datasets) with Git by storing pointers in Git and the actual files on a separate LFS server.
`git lfs track "*.psd"` #Command
Requires `git lfs install` once per user. #Command

### Diff & Merge Tools #ExternalTools #Comparison #ConflictResolution
Configuring external visual tools for comparing file versions (`git difftool`) and resolving merge conflicts (`git mergetool`).
Examples: Meld, KDiff3, Beyond Compare, P4Merge, VS Code.

## Git Best Practices & Tips #Efficiency #Maintainability #Collaboration
Recommendations for using Git effectively and maintaining a clean, understandable project history.

### Commit Often, Perfect Later #AtomicCommits #SmallChanges
Make small, logical, atomic commits frequently. History can be cleaned up later (e.g., with interactive rebase) before sharing if needed.

### Write Meaningful Commit Messages #Communication #Context #StandardFormats
Commit messages should be clear, concise, and explain the *why* behind a change, not just the *what*. Follow team conventions (e.g., imperative mood, subject line limits).

#### Conventional Commits #StandardFormat #Automation
A specification for commit message structure that allows for automated changelog generation and semantic versioning.

### Use Branches Effectively #IsolateWork #FeatureBranches
Isolate new work (features, bug fixes) on separate branches to keep the main branch stable and facilitate review.

### Keep History Clean (When Appropriate) #RebaseLocal #InteractiveRebase
Use tools like interactive rebase to clean up *local*, *unshared* history before merging or pushing. Avoid rewriting shared history.

### Test Before Committing/Pushing #QualityAssurance #CI
Ensure code works and tests pass before committing or pushing changes to avoid breaking the build or main branch. Utilize pre-commit hooks or CI systems.

### Use .gitignore #RepositoryCleanliness #AvoidBinaries
Prevent committing unnecessary files (build artifacts, logs, secrets, editor configs) by using `.gitignore`.

### Regularly Pull Changes #Synchronization #AvoidConflicts
Update local branches frequently (especially before starting new work or pushing) to minimize merge conflicts and stay synchronized with collaborators. Use `git pull --rebase` cautiously if preferred for linear history.

### Understand Your Chosen Workflow #Consistency #TeamAlignment
Ensure the entire team understands and consistently follows the chosen branching and merging workflow.

### Backup Your Repositories #DataSafety #RemoteCopies
While Git itself is distributed, relying solely on local copies is risky. Regularly push to one or more remote repositories for backup and collaboration.
