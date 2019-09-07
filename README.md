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
