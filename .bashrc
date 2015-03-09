# Settings for rbenv
# Use Homebrew's directories rather than ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv

# Enable Shims and auto completion.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
