# ghe
alias gh='cd $(ghq list -p | peco)'

# shell
alias relogin='exec $SHELL -l'

# leetcode-cli
alias lc='leetcode'
alias lcls='leetcode list'
alias lcgen='leetcode show -gxl python3'

# exercism-cli
alias em='exercism'
alias emsub='exercism submit'

# brew doctorのワーニング回避
# ref: https://www.xn--ebkc7kqd.com/entry/pyenv-brew-doctor
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
