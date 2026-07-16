# If loading a non-interactive shell, specifically setup homebrew and fnm. This allows agents in non-interactive
# terminal sessions to run commands using the correct version of node.
if [[ $- != *i* ]]; then
    [[ -s /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)" # Homebrew PATH configuration for M1 Macs
    eval "$(fnm env --use-on-cd --version-file-strategy=recursive --shell zsh)"
fi
