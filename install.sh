#!/usr/bin/env bash
echo "source $HOME/.zsh/zshrc" > $HOME/.zshrc
git clone git@github.com:ArturoGuerra/dotzsh.git $HOME/.zsh
chsh -s /bin/zsh
