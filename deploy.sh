#!/bin/bash

set -x


DOTPATH=~/.dotfiles

for f in .??*
do
    [ "$f" = ".git" ] && continue

    echo "$DOTPATH/$f" "$HOME"/"$f"
    # ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done