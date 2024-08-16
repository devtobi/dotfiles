# Homebrew package manager
export PATH=$(brew --prefix)/bin:$PATH
export PATH=$(brew --prefix openssh)/bin:$PATH
export PATH=$(brew --prefix openjdk@21)/bin:$PATH

# Development
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PNPM_HOME:$PATH
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"

# Tools
export PATH=/Applications/MacUpdater.app/Contents/Resources:$PATH

# Own scripts
export PATH=/$HOME/.scripts:$PATH
