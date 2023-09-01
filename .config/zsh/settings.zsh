# Change the key binding to Emacs mode.
bindkey -e

HISTSIZE=5000            # How many lines of history to keep in memory
HISTDUP=erase            # Erase duplicates in the history file
setopt appendhistory     # Append history to the history file (no overwriting)
setopt sharehistory      # Share history across terminals
setopt incappendhistory  # Immediately append to the history file, not just when a term is killed
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

autoload -U colors && colors
autoload -U compinit && compinit
# Lower case letters trigger autocompletion even for upper case names
# Upper case letters trigger only upper case names
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

