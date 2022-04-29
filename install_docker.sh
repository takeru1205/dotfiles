#! /usr/sh

set -e

apt-get upgrade
apt-get install zsh && chsh -s $(which zsh)

cd ${dotfiles_root}/dotfiles
for file in .*; do
    ln -s ${PWD}/${file} ${HOME}
done

