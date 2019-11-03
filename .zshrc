# antigen setting
if [[ -f $HOME/.zshrc.antigen ]]; then
    source $HOME/.zshrc.antigen
fi

# custom settings
if [[ -d $HOME/.zsh ]]; then
    for f in $HOME/.zsh/*.zsh; do
        source "$f"
    done
fi
