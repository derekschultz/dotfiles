export ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
ZSH_THEME="agnoster"
plugins=(git tmux zsh-completion)
source $ZSH/oh-my-zsh.sh

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

# Set default editor
export EDITOR='vim'
export VISUAL=$EDITOR

# Go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin:/usr/local/go/bin"

# Zsh settings for history
export HISTSIZE=10000
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Prompts for confirmation after 'rm *' etc
# Helps avoid mistakes like 'rm * o' when 'rm *.o' was intended
setopt RM_STAR_WAIT

alias be='bundle exec'
alias cdpro='cd ~/projects'
alias gocode='cd ~/go/src/'
alias gl='git log --graph --abbrev-commit --pretty=oneline --decorate'
alias gs='git status'
alias squash='git fetch origin && git rebase -i HEAD~`git cherry -v origin/master | wc -l | tr -d " "`'
