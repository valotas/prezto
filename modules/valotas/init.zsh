if [[ -s "$HOME/.dotfiles/aliases.sh" ]]; then
  source "$HOME/.dotfiles/aliases.sh"
fi

if [[ -s "$HOME/go/current" ]]; then
  export GOROOT="$HOME/go"
  export PATH="$PATH:$GOROOT/bin"
fi

if [[ -s "$HOME/Projects/go" ]]; then
  export GOPATH="$HOME/Projects/go"
fi

export CHROME_BIN=`which chromium-browser`
