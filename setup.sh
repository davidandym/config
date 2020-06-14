#! /usr/bin/bash

# save repo dir
main_dir=$(pwd)


# Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts


cd ~/


# setup bash profile
"source ${main_dir}/bash_profile" >> .bash_profile
source .bash_profile


# setup vim
if [ ! -d ".vim" ]; then
	mkdir -p .vim
fi
# copy vimrc into vim dir
cp ${main_dir}/vimrc ~/.vim/vimrc
# point vimrc
"runtime vimrc" > .vimrc
# Install plugins
vim +PlugInstall +qall


# setup tmux
cp ${main_dir}/tmux.conf tmux.conf
tmux source-file ~/.tmux.conf
