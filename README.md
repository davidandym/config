Default vim config, tmux conf, and bash profile.

## Vim

To use, I would just clone this whole directory into ~/.vim folder `git clone https://github.com/davidandym/config.git ~/.vim`
and create a new ~/.vimrc that only contains "runtime vimrc".

### Plugins
I use plug: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

https://github.com/junegunn/vim-plug

Then start up vim, and run `:PluginInstall` to install the rest of the plugins into your bundle folder.

## tmux

To use the config, type `tmux source [Path-to-this-dir]/tmux.conf` to source the conf.

### Plugins

I use TPM: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`.

To install plugins specified in the `tmux.conf` file, use `prefix-I`.

## Bash

Just add a `source [Path-to-this-dir]/bash_profile` to your `~/.bashrc` or `~/.bash_profile`
