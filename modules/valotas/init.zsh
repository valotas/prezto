source "${0:h}/aliases.sh"
source "${0:h}/google-cloud-sdk.zsh"
source "${0:h}/go.zsh"
source "${0:h}/dart.zsh"

export SYSTEMD_EDITOR=vim

ANDROID_HOME="$HOME/Android/Sdk"
if [[ -d "$ANDROID_TOOLS/tools/bin" ]]; then
  export PATH="$ANDROID_TOOLS/tools/bin:$PATH"
  export ANDROID_HOME
fi

if [[ -d "$HOME/local/bin" ]]; then
  export PATH="$HOME/local/bin:$PATH"
fi

# Adapted n-install (see http://git.io/n-install-repo).
if [[ -d "$HOME/n" ]]; then
  export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
fi

export CHROME_BIN=`which google-chrome`

if [[ -f "$HOME/.config/lokali-c9daeea883e6.json" ]]; then
  export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/lokali-c9daeea883e6.json"
fi

if [[ -d "$HOME/.local/bin" ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi
