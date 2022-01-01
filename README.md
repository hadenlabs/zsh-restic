 <!-- Space: ZshRestic -->
<!-- Title: Project -->

<!--


  ** DO NOT EDIT THIS FILE
  **
  ** 1) Make all changes to `provision/generator/README.yaml`
  ** 2) Run`task readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **


  -->

[![Latest Release](https://img.shields.io/github/release/hadenlabs/zsh-restic)](https://github.com/hadenlabs/zsh-restic/releases) [![Lint](https://img.shields.io/github/workflow/status/hadenlabs/zsh-restic/lint-code)](https://github.com/hadenlabs/zsh-restic/actions?workflow=lint-code) [![Issues](https://img.shields.io/github/issues/hadenlabs/zsh-restic)](https://github.com/hadenlabs/zsh-restic/issues) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow)](https://conventionalcommits.org)

# zsh-restic

zsh-restic plugin for zsh.

## Requirements

This is a list of plugins that need to be installed previously to enjoy all the goodies of this configuration:

- [zsh-core](https://github.com/hadenlabs/zsh-core)

* [python](https://www.python.org)
* [taskfile](https://github.com/go-task/task)

## Installation

<!-- Space: ZshRestic -->
<!-- Parent: Project -->
<!-- Title: Project Installation Oh-My-Zsh -->

<!-- Label: ZshRestic -->
<!-- Label: Project -->
<!-- Label: Installation -->
<!-- Label: Oh-My-Zsh -->
<!-- Include: docs/disclaimer.md -->
<!-- Include: ac:toc -->

### [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) users

If you're using [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh), install this plugin by doing the following:

1.  Go to your oh-my-zsh custom plugins directory -`cd ~/.oh-my-zsh/custom/plugins`
2.  Clone the plugin `bash git clone https://github.com/hadenlabs/zsh-restic`bash
3.  Edit your `.zshrc` and add `plugins=( ... zsh-restic )` to your list of plugins
4.  Open a new terminal and enjoy!
    <!-- Space: ZshRestic -->
    <!-- Parent: Project -->
    <!-- Title: Project Installation Antigen -->

<!-- Label: ZshRestic -->
<!-- Label: Project -->
<!-- Label: Installation -->
<!-- Label: Antigen -->
<!-- Include: docs/disclaimer.md -->
<!-- Include: ac:toc -->

### [antigen](https://github.com/zsh-users/antigen) users

If you're using [Antigen](https://github.com/zsh-users/antigen), install this plugin by doing the following:

1.  Add `antigen bundle hadenlabs/zsh-restic` to your `.zshrc` where you're adding your other plugins.
2.  Either open a new terminal to force zsh to load the new plugin, or run `antigen bundle hadenlabs/zsh-restic` in a running zsh session.
3.  Enjoy!
    <!-- Space: ZshRestic -->
    <!-- Parent: Project -->
    <!-- Title: Project Installation Antibody -->

<!-- Label: ZshRestic -->
<!-- Label: Project -->
<!-- Label: Installation -->
<!-- Include: docs/disclaimer.md -->
<!-- Include: ac:toc -->

### [antibody](https://github.com/getantibody/antibody) users

If you're using [Antibody](https://github.com/getantibody/antibody), install this plugin by doing the following:

1.  Add :

```{.sourceCode .bash}
antibody bundle hadenlabs/zsh-restic
```

to your `.zshrc` where you're adding your other plugins.

2.  Either open a new terminal to force zsh to load the new plugin, or run `antibody bundle hadenlabs/zsh-restic` in a running zsh session.
3.  Enjoy!

 <!-- Space: ZshRestic -->
<!-- Parent: Project -->
<!-- Title: Functions -->

<!-- Label: Functions -->
<!-- Include: docs/disclaimer.md -->
<!-- Include: ac:toc -->

## Functions

zsh restic includes a small utility `restic` to fetch and install new packages.

#### `restic::backup` `path`

run backup of path.

#### `restic::backup::all`

run a backup of all to restic

## Help

**Got a question?**

File a GitHub [issue](https://github.com/hadenlabs/zsh-restic/issues).

## Contributing

See [Contributing](./docs/contributing.md).

## Module Versioning

This Module follows the principles of [Semantic Versioning (SemVer)](https://semver.org/).

Using the given version number of `MAJOR.MINOR.PATCH`, we apply the following constructs:

1. Use the `MAJOR` version for incompatible changes.
1. Use the `MINOR` version when adding functionality in a backwards compatible manner.
1. Use the `PATCH` version when introducing backwards compatible bug fixes.

### Backwards compatibility in `0.0.z` and `0.y.z` version

- In the context of initial development, backwards compatibility in versions `0.0.z` is **not guaranteed** when `z` is increased. (Initial development)
- In the context of pre-release, backwards compatibility in versions `0.y.z` is **not guaranteed** when `y` is increased. (Pre-release)

## Copyright

Copyright © 2018-2022 [Hadenlabs](https://hadenlabs.com)

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## License

The code and styles are licensed under the LGPL-3.0 license [See project license.](LICENSE).

## Don't forget to 🌟 Star 🌟 the repo if you like zsh-restic

[Your feedback is appreciated](https://github.com/hadenlabs/zsh-restic/issues)
