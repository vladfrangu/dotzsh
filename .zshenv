# This fixes oh-my-zsh
ZSH_DISABLE_COMPFIX=true

# This sets the users umask
umask 0002

# set PATH so it includes user's private bin directories
export PATH=$PATH:$HOME/bin:$HOME/.local/bin:$HOME/.zsh/bin:$HOME/.cargo/bin:/usr/local/go/bin
export GOPATH=$HOME/go
