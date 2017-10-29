#!/usr/bin/env bash
# not tested just adding install stuff for new comp
#https://github.com/VundleVim/Vundle.vim
#https://github.com/tmux-plugins/tpm
#https://github.com/sitaktif/dotfiles #should use this one day

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#TODO check if files exist and create backups if they do
cp ~/.bashrc ~/original_bashrc
rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

vim +PluginInstall +qall
.  ~/.tmux/plugins/tpm/tpm
exec bash -l
 
 
