# Contributing

Thank you for your interest in contributing to `git-clone-worktree`!

## Development Setup

This project uses [mise](https://mise.jdx.dev/) for task automation and managing tool dependencies (like `shellcheck`, `shfmt`, `pandoc`, and `markdownlint`).

### 1. Install `mise`

If you don't have `mise` installed, follow the [official installation instructions](https://mise.jdx.dev/getting-started.html).

### 2. Install Project Dependencies

Once `mise` is installed, navigate to the project root and run:

```sh
mise install
```

This will automatically download and set up the exact versions of the linters and build tools required by this project, keeping your global environment clean.

## Available Tasks

You can see all available tasks by running `mise tasks`. Here are the most common commands you'll need during development:

### Formatting and Linting

To automatically format the shell scripts and lint both the code and documentation:

```sh
mise run lint:all:fix
```

To run the linters without applying fixes (useful to verify everything passes before opening a PR):

```sh
mise run lint:all
```

### Building the Documentation

To compile the Markdown documentation into the standard `man` page format:

```sh
mise run man
```

### Packaging a Release

To test packaging the executable and the compiled man page into a release tarball:

```sh
mise run bundle vX.Y.Z
```
