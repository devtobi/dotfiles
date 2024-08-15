# Virtualenvwrapper
source $(brew --prefix)/bin/virtualenvwrapper.sh

# Misc CLI tools
eval $(thefuck --alias)
eval "$(zoxide init zsh)"
# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"