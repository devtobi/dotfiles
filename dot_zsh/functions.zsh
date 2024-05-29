brewi() {
  brew install ${@}
  brew bundle dump --file=~/Brewfile --force
}

brewui() {
  brew uninstall ${@}
  brew bundle dump --file=~/Brewfile --force
}