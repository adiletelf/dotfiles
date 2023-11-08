ZSH_DIR="$HOME/.config/zsh"

source_script () { [ -f "$1" ] && source "$1" }

prepend_to_path() {
    if [ -d "$1" ] && [[ ":$PATH" != *":$1:"* ]]; then 
        PATH="$1${PATH:+:$PATH}"
    fi
}

append_to_path() {
    if [ -d "$1" ] && [[ ":$PATH" != *":$1:"* ]]; then 
        PATH="${PATH:+$PATH:}$1"
    fi
}

# Time zsh load time
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

source_script "$ZSH_DIR/aliases.zsh"                   # Useful aliases
source_script "$ZSH_DIR/settings.zsh"                  # General zsh settings
source_script "$ZSH_DIR/zshenv"                        # Exported variables, update PATH
source_script "$ZSH_DIR/colored-man-pages.plugin.zsh"  # Add colored man pages
source_script "$ZSH_DIR/fzf.zsh"                       # fzf key bindings and fuzzy completion

# Enable brew zsh-syntax-highlighting
source_script "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Enable cargo commands
source_script "$HOME/.cargo/env"

# Add docker
prepend_to_path "$HOME/.docker/bin"

# Install Rust
if ! command -v cargo &> /dev/null ; then
    echo "Installing rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    echo "Successfully installed rust"
fi


# Init [Starship prompt](https://starship.rs/)
if command -v starship &> /dev/null ; then
    eval "$(starship init zsh)"
else
    echo "starship is not installed"
fi


# Init [fnm - Fast Node Manager](github.com/Schniz/fnm)
if command -v fnm &> /dev/null ; then
    eval "$(fnm env --use-on-cd)"
else
    echo "fnm is not installed"
fi

# Init [zoxide - zump around](github.com/ajeetdsouza/zoxide)
# Necessary to run `autoload -U compinit && compinit`
if command -v zoxide &> /dev/null ; then
    eval "$(zoxide init zsh)"
else
    echo "zoxide is not installed"
fi

unset -f source_script
unset -f append_to_path
unset -f prepend_to_path


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

