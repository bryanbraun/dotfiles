### Import Bashstrap
### (for terminal highlighting, nice aliases, etc.)
source ~/bashstrap.bash
### Git autocompletion ###
source ~/.git-completion.bash

### Override Bashstrap Terminal Highlighting with mine ###
export CLICOLOR=1
export LSCOLORS=gxcxdxDxbafaFabaBagaGa

### Configuration for Bundler ###
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Add some easy terminal alias for bundler calls
alias b="bundle exec"
alias bi="bundle install --without production"
# Add bundler binstubs to the path so relative binarys are auto run from a project dir
export PATH="./vendor/bundle/bin:$PATH"

### Drush
### No PATH setting is needed for drush because there is a symlink pointing from usr/bin/drush -> ~/drush_6
alias drush6="~/drush_6/drush"
alias drush5="~/drush_5/drush"

### Akamai
alias akamai-curl='curl -SLIXGET -H "Pragma: akamai-x-cache-on, akamai-x-cache-remote-on, akamai-x-check-cacheable, akamai-x-get-cache-key, akamai-x-get-extracted-values, akamai-x-get-nonces, akamai-x-get-ssl-client-session-id, akamai-x-get-true-cache-key, akamai-x-serial-no"'

