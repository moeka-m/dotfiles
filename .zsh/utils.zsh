# peco
peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history

peco-git-checkout() {
  local res=$(git branch -a | sed 's/^\*/ /' | awk '{ print $1 }' | peco)
  if [ -n "$res" ]; then
    BUFFER+="gco $res"
    CURSOR=$#BUFFER
  fi
  zle clear-screen
}
zle -N peco-git-checkout

# gitアカウント切り替え
function gitmain() {
  git config --global user.name "moeka-m"
  git config --global user.email "moeka.dev@gmail.com"
}

function gitsub() {
  git config --global user.name "m-moeka"
  git config --global user.email "m.moeka.ascend@gmail.com"
}
