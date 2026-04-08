autoload -Uz compinit
compinit
zstyle ':antidote:bundle' use-friendly-names 'yes'
zstyle ':zsh-utils:plugins:editor' set-cursor-style false
source $(brew --prefix antidote)/share/antidote/antidote.zsh
antidote load