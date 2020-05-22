export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/tomcat@7/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/:$PATH"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes for nore themes
ZSH_THEME="robbyrussell"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git ruby bundler cp docker)

source $ZSH/oh-my-zsh.sh

# [[ -f ~/.essentials_profile ]] && source ~/.essentials_profile

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# initialise rbenv
eval "$(rbenv init -)"

# initialise kubectl helper
source $HOME/.kuberc

# initialise auto cd
setopt auto_cd
cdpath=($HOME/myob)
