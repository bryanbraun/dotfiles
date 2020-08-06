# SOURCE OTHER FILES
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s $HOME/.private ]] && source "$HOME/.private" # For any private or proprietary setup


# SETUP FOR LANGAUGES AND TOOLS
export PATH="$HOME/.composer/vendor/bin:$PATH" # Composer (PHP)
export PATH="/usr/local/sbin:$PATH" # Homebrew

export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads rvm

export BUNDLER_EDITOR='code'

# CONVENIENCES

# Custom Shell Aliases - add aliases here as needed.
alias server='python -m SimpleHTTPServer 1111' # Start a quick and easy local web server for static files.
alias removemerged='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ftk='sudo killall VDCAssistant' # ftk stands for "face time killer", named after this: https://github.com/asimpson/VDCAssistant-killer

# Shell into a running docker container with dsh <CONTAINER_ID>
function dsh(){
  docker exec -it "$@" /bin/bash
}

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

