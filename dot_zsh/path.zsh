# Homebrew package manager
export PATH=$(brew --prefix)/bin:$PATH

# Development
export PATH="$PATH:$HOME/.local/bin"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Tools
export PATH=/Applications/MacUpdater.app/Contents/Resources:$PATH

# Own scripts
export PATH=/$HOME/.scripts:$PATH