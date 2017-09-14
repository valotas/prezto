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

if [[ -s "$HOME/usr/gradle/current" ]]; then
  export GRADLE_HOME="$HOME/usr/gradle/current";
  PATH="$GRADLE_HOME/bin:$PATH"
fi

if [[ -d "$HOME/local/bin" ]]; then
  PATH="$HOME/local/bin:$PATH"
fi

if [[ -d "/usr/lib/dart" ]]; then
  PATH="/usr/lib/dart/bin:$PATH"
fi

if [[ -d "$HOME/usr/android-sdk-linux/platform-tools" ]]; then
  PATH="$HOME/usr/android-sdk-linux/platform-tools:$PATH"
fi

# Adapted n-install (see http://git.io/n-install-repo).
if [[ -d "$HOME/n" ]]; then
  export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  
fi

# dart stuff
if [[ -f "$HOME/.dvm/scripts/dvm" ]]; then
  . $HOME/.dvm/scripts/dvm
fi

if [[ -d "$HOME/.pub-cache/bin" ]]; then
  export PUB_CACHE="$HOME/.pub-cache"; [[ :$PATH: == *":$PUB_CACHE/bin:"* ]] || PATH+=":$PUB_CACHE/bin"  
fi

export PATH
export CHROME_BIN=`which chromium-browser`

