# Setup fzf
# ---------
if [[ ! "$PATH" == */home/simrog/.fzf/bin* ]]; then
  export PATH="$PATH:/home/simrog/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/simrog/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/simrog/.fzf/shell/key-bindings.bash"

