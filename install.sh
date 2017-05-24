#!/usr/bin/env bash
git clone git@github.com:ArturoGuerra/dotzsh.git $HOME/.zsh
touch $HOME/.zsh && touch $HOME/.zcompdump
rm -rf $HOME/.zsh* && rm -rf $HOME/.zcompdump*
echo "export ZDOTDIR=\$HOME/.zsh" > $HOME/.zshenv
echo "source \$ZDOTDIR/.zshenv" >> $HOME/.zshenv
chsh -s /bin/zsh
