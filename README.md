# Bryan's Dotfiles

Improves vim and git. Also adds some nice terminal colors.

## Branches

* `bash`: Includes bash customizations using [Barry Clark's bashstrap](https://github.com/barryclark/bashstrap), which is a pretty cool project.
* `zsh`: An improved iteration using [Robby Russell's oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and a few plugins. It also includes a symlink install script for [easy dotfiles managment](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/).

Have suggestions? Throw them in the issue queue.

## Maintainence

You can maintain the dotfiles in a separate repo and run buildsymlinks.sh to automatically create symlinks to these files in your $HOME directory. If you are doing this, ensure that your [repo directory is correct in the script](https://github.com/bryanbraun/dotfiles/blob/zsh/buildsymlinks.sh#L9) and that it does what you expect it to do. In short, it does this:

1. Back up any existing dotfiles in your home directory to ``~/dotfiles_old/``
2. Create symlinks to the dotfiles in your home directory
3. Clone the oh-my-zsh repository from my GitHub (for use with zsh)
4. Check to see if zsh is installed, if it isn't, try to install it.
5. If zsh is installed, run a `chsh -s` to set it as the default shell.

For more information on this approach, see http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/.
