# Quick Start

* install dependencies.

```
sudo apt install python3
sudo apt install python3-neovim
python3 -m pip install pynvim
python3 -m pip install msgpack
```

* install newest vim.

```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

* create symlinks.

```
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
```

* setup plugins using `:PlugInstall` in vim.
