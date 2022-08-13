
export SYSTEMD_EDITOR="vim"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then # SSH mode
  export EDITOR='vim'
else # Local terminal mode
  export EDITOR='code -w'
fi

export VISUAL="$EDITOR"
