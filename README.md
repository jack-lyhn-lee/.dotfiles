# Quick Start

* install dependencies (linux/mac).

```
sudo apt install python3
sudo apt install python3-neovim
python3 -m pip install pynvim
```
```
brew install python3
pip3 install pynvim
```

* install newest vim (linux/mac).

```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```
```
brew install vim
```

* create symlinks.

```
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
```

* setup vim plugins using `:PlugInstall` in vim.
