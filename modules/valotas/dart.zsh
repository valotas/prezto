# dart stuff
if [[ -f "$HOME/.dvm/scripts/dvm" ]]; then
  . $HOME/.dvm/scripts/dvm

  # set up pub
  if [[ -d "$HOME/.pub-cache/bin" ]]; then
    export PUB_CACHE="$HOME/.pub-cache"; [[ :$PATH: == *":$PUB_CACHE/bin:"* ]] || PATH+=":$PUB_CACHE/bin"
  fi
fi

FLUTTER_HOME="$HOME/local/flutter"
if [[ -d "$FLUTTER_HOME/bin" ]]; then
  export PATH="$FLUTTER_HOME/bin:$PATH"
  export FLUTTER_HOME
fi
