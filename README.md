# Bryan's Dotfiles

Improves vim and git. Also adds some nice terminal colors.

## Branches

* `bash`: Includes bash customizations using [Barry Clark's bashstrap](https://github.com/barryclark/bashstrap), which is a pretty cool project.
* `zsh`: An improved iteration using [Robby Russell's oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and a few plugins. It also includes a symlink install script for [easy dotfiles managment](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/).

Have suggestions? Throw them in the issue queue.

## OSX Default Settings

The OSX file contains my preferred OSX settings and is designed to be run once (like when setting up a new computer). It can be run from within this repo with the following command:

    sh osx

The file is a selectively commented version of Mathias Bynens orginal (which can be found at https://mths.be/osx).

## iTerm Profile

To use my iTerm profile and preferences, do the following:

1. Install iTerm2: `brew cask install iterm2`.
2. Browse to preferences: iTerm2 > Preferences > General > Preferences
3. Check the "Load preferences from a custom folder or URL" option.
4. Click the "Browse" button, and select the `dotfiles/iterm2` folder (in your locally cloned version of this repo).

## Approach to `.bash_profile`

These dotfiles are designed for a personal computer, using an interactive shell supporting bash. As a result:

- `.profile` exists, but it's intentionally left empty
- `.bash_profile` contains nearly all of my shell setup
- `.zshrc` only contains zsh-specific setup (importing the rest from `.bash_profile`)

With the assumptions above, no other RC files should be necessary. If I ever want to move away from ZSH, then my `.bash_profile` will already have everything I need.

## Maintenance

You can maintain the dotfiles in a separate repo and run buildsymlinks.sh to automatically create symlinks to these files in your $HOME directory. If you are doing this, ensure that your [repo directory is correct in the script](https://github.com/bryanbraun/dotfiles/blob/zsh/buildsymlinks.sh#L9) and that it does what you expect it to do. In short, it does this:

1. Back up any existing dotfiles in your home directory to ``~/dotfiles_old/``
2. Create symlinks to the dotfiles in your home directory
3. Clone the oh-my-zsh repository from my GitHub (for use with zsh)
4. Check to see if zsh is installed, if it isn't, try to install it.
5. If zsh is installed, run a `chsh -s` to set it as the default shell.

For more information on this approach, see http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/.
