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

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# set homebrew cask app symlink directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Activate rbenv
export RBENV_ROOT="/usr/local/var/rbenv"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# set vim as the default editor
export EDITOR=vim

# Print your public IPv4 address
function publicip () {
  curl -s http://whatismyip.akamai.com/;
  printf "\n";
}

# Print your LAN IPv4 address
function localip () {
  (awk '{print $2}' <(ifconfig en0 | grep 'inet '));
}

# Extract nearly any command-line archive
function extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1     ;;
      *.tar.gz)   tar xzf $1     ;;
      *.bz2)      bunzip2 $1     ;;
      *.rar)      unrar e $1     ;;
      *.gz)       gunzip $1      ;;
      *.tar)      tar xf $1      ;;
      *.tbz2)     tar xjf $1     ;;
      *.tgz)      tar xzf $1     ;;
      *.zip)      unzip $1       ;;
      *.Z)        uncompress $1  ;;
      *.7z)       7z x $1        ;;
      *)          echo "'$1' cannot be extracted via extract()" ;;
      esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias :q="exit"
alias :bd="exit"
alias base="tmux attach -t base || tmux new -s base"

source ~/.aliases
