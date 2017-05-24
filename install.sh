#!/usr/bin/env bash
rm -rf $HOME/.zsh*
echo "export ZDOTDIR=\$HOME/.zsh\nsource \$ZDOTDIR/.zshenv" > $HOME/.zshenv
git clone git@github.com:ArturoGuerra/dotzsh.git $HOME/.zsh
