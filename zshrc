# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github osx bower brew bundler web-search)

source $ZSH/oh-my-zsh.sh

# Put any proprietary or private functions/values in ~/.private, and this will source them
if [ -f $HOME/.private ]; then
  source $HOME/.private
fi

if [ -f $HOME/.profile ]; then
  source $HOME/.profile  # Read Mac .profile, if present.
fi

# Custom Shell Aliases
## Add aliases here as needed.
alias npm-exec='PATH=$(npm bin):$PATH' # Allows for running local binarys like this: npm-exec karma
alias server='python -m SimpleHTTPServer 1111' # Start a quick and easy local web server for static files.
alias removemerged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ftc='sudo killall VDCAssistant' # ftc stands for "face time killer", named after this: https://github.com/asimpson/VDCAssistant-killer

# Manage Ruby Versions with rbenv
export PATH="$HOME/.rbenv/bin:$PATH" # this command should be first
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi # this command should be second

# Access Global Composer packages from the CLI
export PATH="$HOME/.composer/vendor/bin:$PATH"

export BUNDLER_EDITOR='code'

# Starts the gpg-agent dameon automatically in each shell. This will allow us to sign git commits with GPG
# keys without needing to reenter our password every time. For details:
#   Github setup: https://help.github.com/categories/gpg/ 
#   Automatic local signing setup: https://gist.github.com/bmhatfield/cc21ec0a3a2df963bffa3c1f884b676b
if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
    source ~/.gnupg/.gpg-agent-info
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi

# Enables iTerm2 Shell Integration Features. See https://iterm2.com/documentation-shell-integration.html
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

