if [[ -f $HOME/.zshrc.antigen ]]; then
    source $HOME/.zshrc.antigen
fi

# Load my custom settings
if [[ -d $HOME/.zsh ]]; then
    source $HOME/.zsh/utils.zsh
    source $HOME/.zsh/bindkey.zsh
    source $HOME/.zsh/path.zsh
    source $HOME/.zsh/alias.zsh
fi
