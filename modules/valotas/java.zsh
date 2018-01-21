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
