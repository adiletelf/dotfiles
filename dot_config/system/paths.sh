# Include binaries
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Go
if [ -d "/usr/local/go" ] ; then
    PATH="/usr/local/go/bin:$PATH"
fi

if [ -d "$HOME/go/bin" ] ; then
    PATH="$HOME/go/bin:$PATH"
fi

# Cargo
if [ -d "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
