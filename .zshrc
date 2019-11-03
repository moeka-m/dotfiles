# antigen setting
if [[ -f $HOME/.zshrc.antigen ]]; then
    source $HOME/.zshrc.antigen
fi

# custom settings
if [[ -d $HOME/.zsh ]]; then
    pushd "$HOME/.zsh" > /dev/null
    for f in *.zsh; do
        source "$f"
    done
    popd > /dev/null
fi
