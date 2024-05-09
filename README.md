<!--
*** To avoid retyping too much info. Do a search and replace for the following:
*** devtobi/dotfiles, twitter_handle, email
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Last commit][commit-shield]][commit-url] [![License][license-shield]][license-url]

<br />
<p align="center">
  <h3 align="center">dotfiles</h3>

  <p align="center">
    advanced dotfile setup for macOS-based systems
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](#built-with)
  <!--* formatting comment -->
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Usage](#usage)
  <!--* formatting comment -->
- [License](#license)

<!-- ABOUT THE PROJECT -->

## About The Project

This repository contains my current dotfile configuration I use on my macOS-based systems.
It contains various tools for an advanced development setup.

### Built With

This repository contains dotfiles for various tools including:

- [bat](https://github.com/sharkdp/bat)
- [brew](https://brew.sh)
- [btop](https://github.com/aristocratos/btop)
- [chezmoi](https://www.chezmoi.io)
- [conda](https://conda.io)
- [delta](https://github.com/dandavison/delta)
- [editorconfig](https://editorconfig.org)
- [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
- [gh-dash](https://github.com/dlvhdr/gh-dash)
- [git](https://git-scm.com)
- [k9s](https://k9scli.io)
- [kitty](https://github.com/kovidgoyal/kitty)
- [lazydocker](https://github.com/jesseduffield/lazydocker)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [mackup](https://github.com/lra/mackup)
- [tmux](https://github.com/tmux/tmux)
- [topgrade](https://github.com/topgrade-rs/topgrade)
- [wtf](https://wtfutil.com)
- [ssh](https://www.ssh.com)
- [starship](https://starship.rs)
- [zsh](https://www.zsh.org)
- - various [catppuccin](https://catppuccin.com) themes
- more to come...

<!-- GETTING STARTED -->

## Getting Started

To get the dotfiles up and running follow these simple steps.

### Prerequisites

- [chezmoi](https://www.chezmoi.io/install/) must be installed and available on your `$PATH`

### Installation

1. Clone dotfiles via `chezmoi`

```sh
chezmoi init devtobi
```

2. Apply dotfiles (overrides your current files)

```sh
chezmoi apply
```

3. Further customize dotfiles for your own needs

**Info:** With `chezmoi update` you can pull the latest changes from this repo. Keep in mind that changes you made by yourself will be overwritten.

### Usage

The dotfiles contain various configurations for homebrew and other tools.
To use those `brew` and `mas` must be available in your `$PATH`.

1. Download CLI tools, Desktop applications with `homebrew` and `mas` (Customize `Brewfile` for your own apps)

```sh
brew bundle
```

2. Load configurations from iCloud storage with `mackup` (Store via `mackup backup`)

```sh
mackup restore
```

3. Setup your `ssh` and `gpg` keys. This must be done manually.

**Info:** After doing all those steps your development setup should be ready to go! Congratulations.

## License

Distributed under the MIT License. See [LICENSE][license-url] for more information.

[license-shield]: https://img.shields.io/github/license/devtobi/dotfiles.svg?style=for-the-badge&logo=github
[license-url]: https://github.com/devtobi/dotfiles/blob/main/LICENSE
[commit-shield]: https://img.shields.io/github/last-commit/devtobi/dotfiles?style=for-the-badge&logo=github
[commit-url]: https://github.com/devtobi/dotfiles/commit/main
