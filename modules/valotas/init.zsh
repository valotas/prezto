source "aliases.sh"

if [[ -s "$HOME/go/current" ]]; then
  export GOROOT="$HOME/go"
  export PATH="$PATH:$GOROOT/bin"
fi

if [[ -s "$HOME/Projects/go" ]]; then
  export GOPATH="$HOME/Projects/go"
fi

if [[ -s "$HOME/usr/maven/current" ]]; then
  export M2_HOME="$HOME/usr/maven/current";
  export M2="$M2_HOME/bin"
  export PATH="$PATH:$M2"
fi

export CHROME_BIN=`which chromium-browser`
