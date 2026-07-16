# SOURCE OTHER FILES
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.private" ]] && source "$HOME/.private" # For any private or proprietary setup
[[ -s "$HOME/.workrc" ]] && source "$HOME/.workrc" # For any work-specific setup (omitted from bryanbraun/dotfiles)


# SETUP FOR LANGAUGES AND TOOLS
[[ -s /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)" # Homebrew PATH configuration for M1 Macs
[[ -s /opt/homebrew/opt/chruby/share/chruby/chruby.sh ]] && source /opt/homebrew/opt/chruby/share/chruby/chruby.sh # Ruby
[[ -s /opt/homebrew/opt/chruby/share/chruby/auto.sh ]] && source /opt/homebrew/opt/chruby/share/chruby/auto.sh # Ruby
export PATH="$HOME/.local/bin:$PATH" # Cursor/Claude Code
export BUNDLER_EDITOR="code" # Ruby
export GOBIN="$HOME/go/bin" # Golang
export PATH="$HOME/go/bin:$PATH" # Golang
export PATH="$HOME/.composer/vendor/bin:$PATH" # Composer (PHP)
export PYENV_ROOT="$HOME/.pyenv" # Python
export PATH="$PYENV_ROOT/bin:$PATH" # Python
# assumes installation of pyenv and node
eval "$(pyenv init --path)" # Python
eval "$(pyenv init --detect-shell)" # Python
eval "$(fnm env --use-on-cd --version-file-strategy=recursive)" # Node


# CONVENIENCES

# Custom Shell Aliases - add aliases here as needed.
alias server='python3 -m http.server 1111' # Start a quick and easy local web server for static files.
alias removemerged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ftk='sudo killall VDCAssistant' # ftk stands for "face time killer", named after this: https://github.com/asimpson/VDCAssistant-killer
alias untilfail='f() { while "$@"; do :; done; }; f' # for repeatedly running something (useful for finding flaky tests). Ex: untilfail npm test

# Shell into a running docker container with dsh <CONTAINER_ID>
function dsh(){
  docker exec -it "$@" /bin/bash
}

