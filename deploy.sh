#!/bin/bash

DOTPATH="$HOME/.dotfiles"

# deploy dotfiles
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue

    ln -sfnv "$DOTPATH/$f" "$HOME"/"$f"
done


# clone antigen
if [[ ! -d $HOME/.zsh/antigen ]]; then
    git clone https://github.com/zsh-users/antigen.git $HOME/.zsh/antigen
fi


# install homebrew
if ! (type brew >/dev/null 2>&1); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle
