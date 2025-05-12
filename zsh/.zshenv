# Cargo
[ -f "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"

# Secrets
[ -f "$HOME/.env" ] && source "$HOME/.env"

# Locale settings
export LANG="en_US.UTF-8" # Sets default locale for all categories
export LC_ALL="en_US.UTF-8" # Overrides all other locale settings
export LC_CTYPE="en_US.UTF-8" # Controls character classification and case conversion

# Use Neovim as default editor
export EDITOR="/opt/homebrew/bin/nvim"
export VISUAL="/opt/homebrew/bin/nvim"

export PATH="/usr/local/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# Hide computer name in terminal
export DEFAULT_USER="$(whoami)"

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export GOPRIVATE='github.com/signalflare-ai/*'
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

export XDG_CONFIG_HOME="$HOME/.config"

export JSII_SILENCE_WARNING_UNTESTED_NODE_VERSION=TRUE
export HOMEBREW_NO_ENV_HINTS
export PATH="/opt/homebrew/opt/node/bin:$PATH"
. "$HOME/.cargo/env"
