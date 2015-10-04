ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerline"

DEFAULT_USER="esigler"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

POWERLINE_HIDE_USER_NAME="true"
POWERLINE_NO_BLANK_LINE="true"
POWERLINE_DETECT_SSH="true"

plugins=(git github jump)

source $ZSH/oh-my-zsh.sh

HISTSIZE=25000
EDITOR='vi'
[ -f /Users/esigler/.travis/travis.sh ] && source /Users/esigler/.travis/travis.sh
PATH="$HOME/.rbenv/bin:$HOME/.binstubs:$PATH"
eval "$(rbenv init -)"
eval "$(docker-machine env default)"
PATH="/usr/local/heroku/bin:$PATH"
