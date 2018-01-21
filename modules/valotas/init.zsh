source "${0:h}/aliases.sh"
source "${0:h}/google-cloud-sdk.zsh"
source "${0:h}/go.zsh"
source "${0:h}/java.zsh"
source "${0:h}/dart.zsh"

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

export CHROME_BIN=`which chromium-browser`

