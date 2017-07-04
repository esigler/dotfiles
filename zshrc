ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"

DEFAULT_USER="esigler"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs docker_machine)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator rbenv pyenv background_jobs time)
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
TERM="xterm-256color"

EDITOR='/usr/local/bin/mate -w'

setopt hist_ignore_all_dups
setopt hist_ignore_space

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.travis/travis.sh" && source "${HOME}/.travis/travis.sh"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(rbenv init -)"

export PATH="/home/esigler/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias sleepsafe='sudo pmset -a darkwakes 0'
alias sleepfast='sudo pmset -a standby 0'
alias sleepdefault='sudo pmset -a standbydelay 0'
