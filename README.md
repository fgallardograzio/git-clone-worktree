# git-clone-worktree

Clones a git repository into a bare `.git` directory and checks out the default branch as the first worktree alongside it.

This tool separates the Git storage from your active working directories. You can maintain multiple concurrent branch states without duplicating repository data or managing complex stash histories.

## Why this tool?

A standard `git clone --bare` creates a repository where all remote branches are mapped as local branches, skipping remote-tracking branches (`refs/remotes/origin/*`) entirely. This leads to cluttered local branches that are disconnected from upstream.

`git-clone-worktree` solves this by automating the creation of a bare repository that behaves exactly like a regular clone:

1. Reconfigures fetch settings so remote branches are tracked properly in `refs/remotes/origin/*`.
2. Sets up upstream tracking for the default branch.
3. Cleans up duplicate local branches safely, leaving a clean repository ready for worktrees.

## Installation

The easiest way to install in macOS or Linux is via Homebrew using the custom tap:

```sh
brew install fgallardograzio/tap/git-clone-worktree
```

<details>
<summary><strong>Manual Installation</strong></summary>

1. Download the latest release tarball from the [Releases](https://github.com/fgallardograzio/git-clone-worktree/releases) page.
2. Extract the archive:

   ```sh
   tar -xzf git-clone-worktree-*.tar.gz
   ```

3. Move the executable to a directory in your `PATH` (e.g., `~/.local/bin` or `/usr/local/bin`):

   ```sh
   sudo cp src/git-clone-worktree /usr/local/bin/
   ```

4. (Optional) Install the man page:

   ```sh
   sudo cp man/git-clone-worktree.1 /usr/local/share/man/man1/
   ```

5. (Optional) Install shell completions:

   **Zsh**:

   ```sh
   sudo cp completions/_git-clone-worktree /usr/local/share/zsh/site-functions/
   ```

   **Fish**:

   ```sh
   mkdir -p ~/.config/fish/completions
   cp completions/git-clone-worktree.fish ~/.config/fish/completions/
   ```

   **Bash**:

   ```sh
   sudo cp completions/git-clone-worktree.bash /etc/bash_completion.d/git-clone-worktree
   ```

</details>

## Usage

```sh
git-clone-worktree [<options>] <repository> [<directory>]
```

For a complete list of options and more detailed information, run `git-clone-worktree --help` or refer to the manual page (`man git-clone-worktree`).

<details>
<summary><strong>Examples</strong></summary>

Clone a repository into a directory named after the repository basename:

```sh
git-clone-worktree git@github.com:user/repo.git
```

Clone a repository into a specific target directory:

```sh
git-clone-worktree git@github.com:user/repo.git my-project
```

</details>

## Development

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for instructions on how to set up your environment, install dependencies using `mise`, and run the linters.
