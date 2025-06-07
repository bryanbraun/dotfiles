# SOURCE NON-ZSH-SPECIFIC CONFIG
[[ -s "$HOME/.bash_profile" ]] && source "$HOME/.bash_profile" # Load my .bash_profile


# ZSH-SPECIFIC CONFIG

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Load a zsh theme.
# Uses a custom location to allow loading of custom themes.
ZSH_CUSTOM=$HOME/.zsh-custom
ZSH_THEME="bb" # a custom theme

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"


# Improve behavior for history searching (see https://martinheinz.dev/blog/110)
HISTFILE="$HOME/.zsh_history" # This is also currently set by oh-my-zsh, but I set it again here, just in case
HISTSIZE=10000000
SAVEHIST=10000000
HISTORY_IGNORE="(ls|cd|pwd|exit)*"
HIST_STAMPS="yyyy-mm-dd"

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY            # append to history file (Default)
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks from each command line being added to the history list.

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# (note: the fzf plugin requires fzf to be installed on the machine)
plugins=(gh macos docker-compose npm bundler web-search z fzf)

source $ZSH/oh-my-zsh.sh

# Enables iTerm2 Shell Integration Features. See https://iterm2.com/documentation-shell-integration.html
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add bash tab-completion compatibility to zsh, followed by any tab-completion scripts
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

####
# If using NVM, consider including this gist for auto changing node versions when changing directories:
# https://gist.github.com/callumlocke/30990e247e52ab6ac1aa98e5f0e5bbf5
####

source ~/.api_tz_dont_delete
