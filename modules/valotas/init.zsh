source "$HOME/.zprezto/modules/valotas/aliases.sh"

if [[ -s "$HOME/go/current" ]]; then
  export GOROOT="$HOME/go"
  PATH="$GOROOT/bin:$PATH"
fi

if [[ -s "$HOME/Projects/go" ]]; then
  export GOPATH="$HOME/Projects/go"
fi


if [[ -d "$JAVA_HOME/bin" ]]; then
  PATH="$JAVA_HOME/bin:$PATH"
fi

if [[ -s "$HOME/usr/maven/current" ]]; then
  export M2_HOME="$HOME/usr/maven/current";
  export M2="$M2_HOME/bin"
  PATH="$M2:$PATH"
fi

if [[ -d "$HOME/local/usr/dart/dart-sdk/bin" ]]; then
  PATH="$HOME/local/usr/dart/dart-sdk/bin:$PATH"
fi

export PATH
export CHROME_BIN=`which chromium-browser`
