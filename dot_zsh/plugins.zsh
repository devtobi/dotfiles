autoload -Uz compinit
compinit
zstyle ':antidote:bundle' use-friendly-names 'yes'
source /$(brew --prefix antidote)/share/antidote/antidote.zsh
antidote load