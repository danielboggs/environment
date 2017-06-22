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
COMPOSER_PATH=~/.composer/vendor/bin
HOMEBREW_PATH=/usr/local/bin:/usr/local/sbin
HEROKU_TOOLBELT_PATH=/usr/local/heroku/bin
POSTGRES_APP_PATH=/Applications/Postgres.app/Contents/Versions/latest/bin
SYSTEM_PATH=/usr/bin:/bin:/usr/sbin:/sbin

export PATH=$HOME_PATH:$COMPOSER_PATH:$HOMEBREW_PATH:$HEROKU_TOOLBELT_PATH:$POSTGRES_APP_PATH:$SYSTEM_PATH:$PATH

# set homebrew cask app symlink directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Activate chruby and the .ruby-version auto-switcher
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

export NVM_DIR="/Users/daniel/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# set vim as the default editor
export EDITOR=vim
alias vi="vim"

eval "$(hub alias -s)"

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

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
