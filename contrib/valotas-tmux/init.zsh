# skip loading tmux if in vscode

if [[ -n "$VSCODE_PID"  ]]; then
  return
fi

source $ZPREZTODIR/modules/tmux/init.zsh
