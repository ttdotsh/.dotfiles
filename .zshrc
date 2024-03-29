# Options -- https://zsh.sourceforge.io/Doc/Release/Options.html
setopt autocd
setopt histignoredups

# Variables
export PLUGINDIR=$HOME/.zsh/plugins
export DEV=$HOME/Development
export CONFIG=$HOME/.config
export DOTFILES=$HOME/.dotfiles

# Aliases
alias nv="nvim"

# Plugins
source $PLUGINDIR/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $PLUGINDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ZVM_VI_HIGHLIGHT_FOREGROUND=default
export ZVM_VI_HIGHLIGHT_BACKGROUND="#44475a"

# FZF settings
export FZF_DEFAULT_OPTS="\
	--color fg:#f8f8f2,bg:#282a36,hl:#bd93f9 \
	--color fg+:#f8f8f2,bg+:#44475a,gutter:#282a36,hl+:#bd93f9 \
	--color info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 \
	--color marker:#ff79c6,spinner:#ffb86c,header:#6272a4 \
	--no-bold \
"
export FZF_TMUX_OPTS="$FZF_DEFAULT_OPTS"

# Zoxide settings
export _ZO_DATA_DIR="$HOME/.local/share"
export _ZO_RESOLVE_SYMLINKS=1
export _ZO_FZF_OPTS="$FZF_DEFAULT_OPTS"

# Fast Node Manager setup
eval "$(fnm env --use-on-cd)"

# Bun
[ -s "/Users/timtonelli/.bun/_bun" ] && source "/Users/timtonelli/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
