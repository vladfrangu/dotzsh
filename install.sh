#!/usr/bin/env bash
rm -rf $HOME/.zsh
rm $HOME/.zshrc && echo "source $HOME/.zsh/zshrc" > $HOME/.zshrc
git clone git@github.com:ArturoGuerra/dotzsh.git $HOME/.zsh
