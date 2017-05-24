#!/usr/bin/env bash
touch $HOME/.zsh && touch $HOME/.zcompdump
rm -rf $HOME/.zsh* && rm -rf $HOME/.zcompdump*
echo "export ZDOTDIR=\$HOME/.zsh" > $HOME/.zshenv
echo "source \$ZDOTDIR/.zshenv" >> $HOME/.zshenv
git clone git@github.com:ArturoGuerra/dotzsh.git $HOME/.zsh
chsh -s /bin/zsh
