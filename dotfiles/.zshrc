export PATH=/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes for nore themes
ZSH_THEME="robbyrussell"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git ruby rails bundler brew cp tmux docker)

source $ZSH/oh-my-zsh.sh
