# git-clone-worktree

Clones a git repository into a bare `.git` directory and checks out the default branch as the first worktree alongside it.

This tool separates the Git storage from your active working directories. You can maintain multiple concurrent branch states without duplicating repository data or managing complex stash histories.

## Installation

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

## Usage

```sh
git-clone-worktree [<options>] <repository> [<directory>]
```

For a complete list of options and more detailed information, run `git-clone-worktree --help` or refer to the manual page (`man git-clone-worktree`).

### Examples

Clone a repository into a directory named after the repository basename:

```sh
git-clone-worktree git@github.com:user/repo.git
```

Clone a repository into a specific target directory:

```sh
git-clone-worktree git@github.com:user/repo.git my-project
```

## Development

This project uses `mise` for task automation and dependency management.

Format and lint the shell scripts and documentation:

```sh
mise run lint:all:fix
```

Compile the man page:

```sh
mise run man
```
