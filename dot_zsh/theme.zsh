# String to check for macOS dark mode setting
DARK_MODE="Dark"

# Catppuccin theme name definitions
THEME_BASE="Catppuccin"
DARK_THEME="Frappe"
LIGHT_THEME="Latte"

# Configuration file locations
BTOP_CONFIG_PATH=$XDG_CONFIG_HOME/btop/btop.conf
LAZYGIT_DIR=$XDG_CONFIG_HOME/lazygit
GIT_CONFIG_PATH=$HOME/.gitconfig
STARSHIP_CONFIG_PATH=$XDG_CONFIG_HOME/starship.toml
TMUX_CONFIG_PATH=$XDG_CONFIG_HOME/tmux/tmux.conf
GH_DASH_CONFIG_PATH=$XDG_CONFIG_HOME/gh-dash

# fzf theme definitions
FZF_LIGHT_THEME=" \
--color=bg+:#ccd0da,bg:#eff1f5,spinner:#dc8a78,hl:#d20f39 \
--color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
--color=marker:#dc8a78,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39"
FZF_DARK_THEME=" \
--color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284 \
--color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf \
--color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284"

is_dark_mode_enabled() {
    if [ "$(defaults read -g AppleInterfaceStyle 2>/dev/null)" = $DARK_MODE ]; then
        return 0 # Dark mode is enabled
    else
        return 1 # Dark mode is disabled
    fi
}

create_symlink() {
    local source=$1
    local target=$2
    ln -sf $source $target
}

if is_dark_mode_enabled; then
    NEW_THEME=$DARK_THEME
    FZF_THEME=$FZF_DARK_THEME

    OLD_THEME=$LIGHT_THEME
else
    NEW_THEME=$LIGHT_THEME
    FZF_THEME=$FZF_LIGHT_THEME

    OLD_THEME=$DARK_THEME
fi

# Set theme for fsh (fast-syntax-highlighting)
fast-theme XDG:${(L)THEME_BASE}-${(L)NEW_THEME} > /dev/null

# Set theme for bat
export BAT_THEME="${THEME_BASE} ${NEW_THEME}"

# Set theme for btop
sd ${(L)OLD_THEME} ${(L)NEW_THEME} $BTOP_CONFIG_PATH

# Set theme for fzf
export FZF_DEFAULT_OPTS=$FZF_THEME

# Set theme for lazygit
export LG_CONFIG_FILE=$LAZYGIT_DIR/config.yml,$LAZYGIT_DIR/${(L)THEME_BASE}-${(L)NEW_THEME}.yml

# Set theme for delta (git plugin)
sd ${(L)OLD_THEME} ${(L)NEW_THEME} $GIT_CONFIG_PATH

# Set theme for starship
sd "\"${(L)THEME_BASE}_${(L)OLD_THEME}\"" "\"${(L)THEME_BASE}_${(L)NEW_THEME}\"" $STARSHIP_CONFIG_PATH

# Set theme for tmux
sd ${(L)OLD_THEME} ${(L)NEW_THEME} $TMUX_CONFIG_PATH

# Set theme for gh-dash via symlink
create_symlink $GH_DASH_CONFIG_PATH/config-${(L)THEME_BASE}-${(L)NEW_THEME}.yml $GH_DASH_CONFIG_PATH/config.yml

