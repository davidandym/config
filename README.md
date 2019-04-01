Default vim config, tmux conf, and bash profile.

## Vim

To use, I would just clone this whole directory into ~/.vim folder `git clone https://github.com/davidandym/config.git ~/.vim`
and create a new ~/.vimrc that only contains "runtime vimrc".

### Plugins
I use vundle: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Then start up vim, and run `:PluginInstall` to install the rest of the plugins into your bundle folder.

I commented out YCM, since it's really finicky sometimes with your python / vim version (it's kinda heavy). Uncomment it if you want it.

## tmux

To use the config, type `tmux source [Path-to-this-dir]/tmux.conf` to source the conf.

### Plugins

I use TPM: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`.

To install plugins specified in the `tmux.conf` file, use `prefix-I`.

## Bash

Just add a `source [Path-to-this-dir]/bash_profile` to your `~/.bashrc` or `~/.bash_profile`
