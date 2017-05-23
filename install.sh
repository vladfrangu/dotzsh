#!/usr/bin/env bash
echo "source $HOME/.zsh/zshrc" > $HOME/.zshrc
git clone git@github.com:ArturoGuerra/dotzsh.git $HOME/.zsh
git clone --depth=1 git@github.com:robbyrussell/oh-my-zsh.git $HOME/.zsh/.oh-my-zsh
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.zsh/.oh-my-zsh/custom/themes/powerlevel9k
git clone git://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh/.oh-my-zsh/custom/plugins/zsh-autosuggestions
chsh -s /bin/zsh
