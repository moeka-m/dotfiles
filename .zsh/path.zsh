### lang
# anyenv
eval "$(anyenv init -)"

# goenv
export GOENV_DISABLE_GOPATH=1
export GOPATH="$HOME/ghq"
export PATH="$PATH:$GOPATH/bin"
eval "$(goenv init -)"

# brew
export HOMEBREW_BUNDLE_FILE="$HOME/.dotfiles/Brewfile"