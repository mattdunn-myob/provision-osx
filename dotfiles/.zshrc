export PATH=/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes for nore themes
ZSH_THEME="robbyrussell"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git ruby rails bundler brew cp tmux docker rvm)

source $ZSH/oh-my-zsh.sh

[[ -f ~/.essentials_profile ]] && source ~/.essentials_profile
[ -s "~/.scm_breeze/scm_breeze.sh" ] && source "~/.scm_breeze/scm_breeze.sh"

alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 codesimple/elm:0.18'
