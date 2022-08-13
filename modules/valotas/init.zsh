source "${0:h}/aliases.sh"
source "${0:h}/google-cloud-sdk.zsh"
source "${0:h}/go.zsh"
source "${0:h}/editor.zsh"

for bin in "$HOME/local/bin" "$HOME/.local/bin"; do
  if [[ -d "$bin" ]]; then
    export -U PATH=$bin${PATH:+:$PATH}
  fi
done

export CHROME_BIN=`which google-chrome`

if [[ -f "$HOME/.config/lokali-c9daeea883e6.json" ]]; then
  export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/lokali-c9daeea883e6.json"
fi

if [[ -f "$HOME/.fly/bin/flyctl" ]]; then
  export FLYCTL_INSTALL="$HOME/.fly"
  export -U PATH=$FLYCTL_INSTALL/bin${PATH:+:$PATH}
fi
