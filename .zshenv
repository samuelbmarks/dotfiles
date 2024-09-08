# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home"
export JAVA17="$JAVA_HOME/bin"

# Maven
export M2_HOME="/Users/samuelmarks/Library/apache-maven-3.9.0"
export M2="$M2_HOME/bin"

# Homebrew
export HOMEBREW_HOME="/opt/homebrew/bin"

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$JAVA17:$M2_HOME:$HOMEBREW_HOME:$PYTHON3:$PATH"