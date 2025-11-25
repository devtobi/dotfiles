# Misc CLI tools
eval $(thefuck --alias)
eval "$(zoxide init zsh)"

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# safe-chain configuration for supply chain safety in npm packages
source ~/.safe-chain/scripts/init-posix.sh # Safe-chain Zsh initialization script

# SDKMAN
export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

# OrbStack
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# batdiff configuration (to use delta)
export BATDIFF_USE_DELTA=true

# Setup cache completion directory for ohmyzsh plugins
export ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
[[ -d $ZSH_CACHE_DIR ]] || mkdir -p $ZSH_CACHE_DIR
[[ -d "${ZSH_CACHE_DIR}/completions" ]] || mkdir -p "${ZSH_CACHE_DIR}/completions"
export FPATH="$ZSH_CACHE_DIR/completions:$FPATH"

# uv autocompletion
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

_uv_run_mod() {
    if [[ "$words[2]" == "run" && "$words[CURRENT]" != -* ]]; then
        _arguments '*:filename:_files'
    else
        _uv "$@"
    fi
}
compdef _uv_run_mod uv