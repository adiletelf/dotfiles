ZSH_DIR="$HOME/.config/zsh"

source_script () { [ -f "$1" ] && source "$1" }

source_script "$ZSH_DIR/settings.zsh"                  # General zsh settings
source_script "$ZSH_DIR/aliases.zsh"                   # Useful aliases
source_script "$ZSH_DIR/functions.zsh"                 # Reusable functions
source_script "$ZSH_DIR/zshenv"                        # Exported variables, update PATH
source_script "$ZSH_DIR/colored-man-pages.plugin.zsh"  # Add colored man pages
source_script "$ZSH_DIR/fzf.zsh"                       # fzf key bindings and fuzzy completion

# Enable cargo commands
source_script "$HOME/.cargo/env"

# Enable brew zsh-syntax-highlighting
source_script "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Added by Docker Desktop
source /Users/adiletelf/.docker/init-zsh.sh || true

# Init [Starship prompt](https://starship.rs/)
eval "$(starship init zsh)"

# Init [fnm - Fast Node Manager](github.com/Schniz/fnm)
eval "$(fnm env --use-on-cd)"

# Init [zoxide - zump around](github.com/ajeetdsouza/zoxide)
# Necessary to run `autoload -U compinit && compinit`
eval "$(zoxide init zsh)"

unset -f source_script
