# This fixes oh-my-zsh
ZSH_DISABLE_COMPFIX=true

# This sets the users umask
umask 0002

# set PATH so it includes user's private bin directories
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/bin:$HOME/.local/bin:$HOME/.zsh/bin:$HOME/.cargo/bin:/usr/local/go/bin:$GOPATH/bin:$HOME/.linkerd2/bin
source "$HOME/.cargo/env"
