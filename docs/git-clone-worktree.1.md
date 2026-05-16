% GIT-CLONE-WORKTREE(1) git-clone-worktree v1.0.0
%
% May 2026

# NAME

git-clone-worktree - Clones a bare git repository and checks out the default branch as the first worktree

# SYNOPSIS

**git-clone-worktree** [_\<options\>_] _\<repository\>_ [_\<directory\>_]

# DESCRIPTION

**git-clone-worktree** clones a git repository into a bare `.git` folder in a new directory, and checks out the default branch as the first worktree alongside it.

This tool streamlines the process of setting up a Git repository using multiple worktrees, which is highly recommended for developers who frequently switch branches or maintain multiple concurrent working states. Instead of a standard monolithic clone, it creates a clean separation between the bare `.git` storage and the checked-out source files.

# OPTIONS

**-r**, **--relative-paths**
: Configure worktrees to use relative paths.

**-q**, **--quiet**
: Suppress Git output.

**-h**, **--help**
: Show this help message.

**-v**, **--version**
: Show version information.

**_\<repository\>_**
: The Git repository URL to clone (e.g., `git@github.com:user/repo.git`).

**_\<directory\>_**
: The target directory to create. If omitted, it will be inferred from the repository URL.

# EXAMPLES

Clone a repository into a directory named after the repository basename:
: $ git-clone-worktree git@github.com:user/repo.git

Clone a repository into a specific target directory (`my-project`):
: $ git-clone-worktree git@github.com:user/repo.git my-project
