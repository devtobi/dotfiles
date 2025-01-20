# Homebrew package manager
export PATH=$(brew --prefix)/bin:$PATH
export PATH=$(brew --prefix openssh)/bin:$PATH

# Development
export PATH=$PNPM_HOME:$PATH
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# Tools
export PATH=/Applications/MacUpdater.app/Contents/Resources:$PATH

# Own scripts
export PATH=/$HOME/.scripts:$PATH