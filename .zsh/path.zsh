### lang
# anyenv
eval "$(anyenv init -)"

# go
export GOENV_DISABLE_GOPATH=1
export GOPATH="$HOME/ghq"
export PATH="$PATH:$GOPATH/bin"
eval "$(goenv init -)"

# java
# export JAVA_HOME=$(/usr/libexec/java_home -v 11)

# python
export PIPENV_VENV_IN_PROJECT=1 #project直下に仮想環境を作る

### brew
export HOMEBREW_BUNDLE_FILE="$HOME/.dotfiles/Brewfile"

### その時々で使いたいコマンド置き場
mkdir -p "$HOME/bin"
export PATH="$HOME/bin:$PATH"