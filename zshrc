# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="simple"

# Dont set title of terminal/iterm
DISABLE_AUTO_TITLE="true"

# disable command autocorrection
DISABLE_CORRECTION="true"

# oh-my-zsh plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# PATH Configuration
HOME_PATH=~/bin
ANDROID_PATH=~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools
COMPOSER_PATH=~/.composer/vendor/bin
HOMEBREW_PATH=/usr/local/bin:/usr/local/sbin
HEROKU_TOOLBELT_PATH=/usr/local/heroku/bin
POSTGRES_APP_PATH=/Applications/Postgres.app/Contents/Versions/latest/bin
SYSTEM_PATH=/usr/bin:/bin:/usr/sbin:/sbin
# NPM_PATH=~/.asdf/installs/nodejs/10.0.0/.npm/bin
NPM_PATH=~/.asdf/installs/nodejs/10.7.0/.npm/bin

export PATH=$HOME_PATH:$COMPOSER_PATH:$HOMEBREW_PATH:$HEROKU_TOOLBELT_PATH:$POSTGRES_APP_PATH:$ANDROID_PATH:$NPM_PATH:$SYSTEM_PATH:$PATH

# set homebrew cask app symlink directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# set vim as the default editor
export EDITOR=vim
alias vi="vim"

# exit all the things
alias :q="exit"
alias :bd="exit"

# generic tmux session
alias base="tmux attach -t base || tmux new -s base"

# bundle exec
alias be="bundle exec"

source ~/.zsh_project_aliases
source ~/.zsh_functions

source /usr/local/share/zsh/site-functions/_aws

eval "$(hub alias -s)"

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/danielboggs'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/danielboggs/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
