# SOURCE OTHER FILES
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s $HOME/.private ]] && source "$HOME/.private" # For any private or proprietary setup


# SETUP FOR LANGAUGES AND TOOLS
export PATH="$HOME/go/bin:$PATH" # Golang
export PATH="$HOME/.composer/vendor/bin:$PATH" # Composer (PHP)
[[ -s /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)" # Homebrew PATH configuration for M1 Macs

export GOBIN="$HOME/go/bin" # Golang

export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads rvm

export BUNDLER_EDITOR='code'

# CONVENIENCES

# Custom Shell Aliases - add aliases here as needed.
alias server='python3 -m http.server 1111' # Start a quick and easy local web server for static files.
alias removemerged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ftk='sudo killall VDCAssistant' # ftk stands for "face time killer", named after this: https://github.com/asimpson/VDCAssistant-killer

# Shell into a running docker container with dsh <CONTAINER_ID>
function dsh(){
  docker exec -it "$@" /bin/bash
}

