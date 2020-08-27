# Quick Start

* Install vim dependencies.

```
(linux) sudo apt install python3
(linux) sudo apt install python3-neovim
(linux) python3 -m pip install pynvim
```
```
(mac) brew install python3
(mac) sudo pip3 install pynvim
```

* Install newest vim.

```
(linux) sudo add-apt-repository ppa:jonathonf/vim
(linux) sudo apt update
(linux) sudo apt install vim
```
```
(mac) brew install vim
```

* Install tmux.

```
(linux) sudo apt install tmux
```
```
(mac) brew install tmux
```

* Clone dotfiles and create symlinks.

```
git clone (this repo)
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
```

* Setup vim plugins using `:PlugInstall` in vim.
