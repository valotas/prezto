if [[ -s "$HOME/go/current" ]]; then
  export GOROOT="$HOME/go"
  PATH="$GOROOT/bin:$PATH"
fi

if [[ -s "$HOME/Projects/go" ]]; then
  export GOPATH="$HOME/Projects/go"
fi
