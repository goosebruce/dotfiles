# zsh Options
setopt HIST_IGNORE_ALL_DUPS
neofetch
# Custom zsh
[ -f "$HOME/.config/zsh/custom.zsh" ] && source "$HOME/.config/zsh/custom.zsh"

# Aliases
[ -f "$HOME/.config/zsh/aliases.zsh" ] && source "$HOME/.config/zsh/aliases.zsh"

# Work
[ -f "$HOME/.config/zsh/work.zsh" ] && source "$HOME/.config/zsh/work.zsh"

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc



# sst
export PATH=/Users/nathan/.sst/bin:$PATH
