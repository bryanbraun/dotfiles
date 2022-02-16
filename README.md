# Bryan's Dotfiles

Dotfiles for managing a local development environment on an Apple computer. It includes the following setup:

* [MacOS default settings](#macos-default-settings)
* [iTerm profile](#iterm-profile)
* [Generic dotfiles](#generic-dotfiles)

This repo can be pulled down and managed from any location on your computer. To use the settings in the repo, see the [usage instructions](#usage) below.

## Usage

### MacOS Default Settings

The MacOS file contains my preferred MacOS settings and is designed to be run once (like when setting up a new computer). It can be run from within this repo with the following command:

```bash
sh macos
```

The file is a selectively commented and customized version of Mathias Bynens orginal (which can be found at https://mths.be/macos).

### iTerm Profile

To use my iTerm profile and preferences, do the following:

1. Install iTerm2: `brew install --cask iterm2`.
2. Browse to preferences: iTerm2 > Preferences > General > Preferences
3. Check the "Load preferences from a custom folder or URL" option.
4. Click the "Browse" button, and select the `dotfiles/iterm2` folder (in your locally cloned version of this repo).

### Generic dotfiles

Generic dotfiles are [managed in this repo using symlinks](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/). 

Before setting up the symlinks, it's a good idea to read the `buildsymlinks.sh` script and make sure it does what you expect. In short, it does this:

1. Back up any existing dotfiles in your home directory to `~/dotfiles_old/`
2. Create symlinks to this repo's dotfiles in your home directory
3. Set up zsh and oh-my-zsh:
    1. Check to see if zsh is installed. If it isn't, try to install it.
    2. Clone the oh-my-zsh repository from my GitHub (for use with zsh).
    3. If zsh is installed, run a `chsh -s` to set it as the default shell.

If all of that looks good, you can setup your symlinks like so:

```bash
# Before running, check the "dir" value in buildsymlinks (line 9)
# to make sure it points to this repo's location in your filesystem.
sh buildsymlinks.sh
```

****

## Other Details

### Approach to `.bash_profile`

These dotfiles are designed for a personal computer, using an interactive shell supporting bash. As a result:

- `.profile` exists, but it's intentionally left empty
- `.bash_profile` contains nearly all of my shell setup
- `.zshrc` only contains zsh-specific setup (importing the rest from `.bash_profile`)

With the assumptions above, no other RC files should be necessary. If I ever want to move away from ZSH, then my `.bash_profile` will already have everything I need.

### Branches

* `zsh` (active): A ZSH-based setup using [Robby Russell's oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and a few plugins. It also includes a symlink install script for [easy dotfiles managment](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/).
* `bash` (inactive): A BASH-based setup using [Barry Clark's bashstrap](https://github.com/barryclark/bashstrap).
