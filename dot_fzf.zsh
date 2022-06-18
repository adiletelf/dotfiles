# Setup fzf
# ---------
if [[ ! "$PATH" == */home/elf/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/elf/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/elf/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/elf/.fzf/shell/key-bindings.zsh"
