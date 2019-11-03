#!/bin/bash

# set -x

DOTPATH="$HOME/.dotfiles"

for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue

    ln -sfnv "$DOTPATH/$f" "$HOME"/"$f"
done

if [[ ! -d $HOME/.zsh/antigen ]]; then
    git clone https://github.com/zsh-users/antigen.git $HOME/.zsh/antigen
fi
