# ghe
alias gh='cd $(ghq list -p | peco)'
alias gbm='c=$(git rev-parse --abbrev-ref HEAD) && gco develop && gl && gco $c && gl origin develop'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# shell
alias relogin='exec $SHELL -l'
