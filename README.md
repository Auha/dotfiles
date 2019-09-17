The personal dotfiles of Jonathan Chen.

The terminal software uses the following technology.

* zsh
* git

# Git Setup
```console
apt install git
brew install git
```

```console
ln -s /home/jonathan/workspace/dotfiles/git/gitconfig /home/jonathan/.gitconfig
```

# Setup Programming Language

## Python and Python3

```console
sudo apt install build-essential cmake python3-dev
```

# Setup ZSH and Default shell

## ZSH for Ubuntu

Copy over the different zsh files

```console
ln -s /home/jonathan/workspace/dotfiles/zsh/zpreztorc /home/jonathan/.zpreztorc
ln -s /home/jonathan/workspace/dotfiles/zsh/zprofile /home/jonathan/.zprofile
ln -s /home/jonathan/workspace/dotfiles/zsh/zshrc /home/jonathan/.zshrc
```

Change the default shell:

```console
chsh -s /bin/zsh
```

# VIM Setup

```console
apt install vim
```

```console
ln -s /home/jonathan/workspace/dotfiles/vim/vimrc /home/jonathan/.vimrc
bash /home/jonathan/workspace/dotfiles/vim/plugvim.sh
```

Go into a VIM session
```
:PlugInstall

```

## Installing YCMD Core

Go to the following Link: https://github.com/ycm-core/YouCompleteMe#installation





