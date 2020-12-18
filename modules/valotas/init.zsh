source "${0:h}/aliases.sh"
source "${0:h}/google-cloud-sdk.zsh"
source "${0:h}/go.zsh"

export SYSTEMD_EDITOR=vim

for bin in "$HOME/local/bin" "$HOME/.local/bin"; do
  if [[ -d "$bin" ]]; then
    export PATH="$bin:$PATH"
  fi
done

# Adapted n-install (see http://git.io/n-install-repo).
if [[ -d "$HOME/n" ]]; then
  export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
fi

export CHROME_BIN=`which google-chrome`

if [[ -f "$HOME/.config/lokali-c9daeea883e6.json" ]]; then
  export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/lokali-c9daeea883e6.json"
fi

[[ -s "$HOME/dotfiles/profile.sh" ]] && source "$HOME/dotfiles/profile.sh"
