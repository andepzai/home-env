# If you come from bash you might have to change your $PATH.

alias jx='FX_APPLY=jsonata fx'

export PATH=$HOME/bin:/usr/local/bin:$PATH

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

echo "Happy Coding 😎"

tput smam

# Path to your oh-my-zsh installation.
export ZSH="/Users/ducan/.oh-my-zsh"

export NODE_PATH=`npm root -g`

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias jp=autojump
alias ls=exa
alias p="git push"
alias pull="git pull"
alias pl="git pull"
alias add="git add ."
alias c="git commit"

autoload -U promptinit; promptinit
prompt pure

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax/zsh-syntax-highlighting.zsh

export GOROOT=/usr/local/Cellar/go@1.12/1.12.13/libexec
export GOPATH=~/go

export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"


export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

init-commit() {
  git add .
  git commit -m '🚚'
}

to-dev() {
  git checkout dev
  git pull
  git merge - --no-edit
  git push
  git checkout -
  git push > /dev/null;
}

tiki-dev() {
  JIRA_TASK_NAME=$(git rev-parse --abbrev-ref HEAD | grep -o -E "[a-zA-Z0-9,\.\_\-]+-[0-9]+")
  git add .
  git commit -m "$JIRA_TASK_NAME: $1" ${@:2}
  to-dev
}
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
alias lg='lazygit'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
