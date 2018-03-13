#!/usr/bin/env bash
touch $HOME/.zsh && touch $HOME/.zcompdump
rm -rf $HOME/.zsh* && rm -rf $HOME/.zcompdump*
git clone https://github.com/ArturoGuerra/dotzsh.git $HOME/.zsh
echo "export ZDOTDIR=\$HOME/.zsh" > $HOME/.zshenv
echo "source \$ZDOTDIR/.zshenv" >> $HOME/.zshenv
chsh -s $(which zsh)
