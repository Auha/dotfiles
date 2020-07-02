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

We also need to install `virtualenvwrapper` Since we are trying to migrate 
everything over to Python 3, we will use Python 3 to install everything.

```console
sudo pip3 install virtualenvwrapper
```

By next year, I will migrate everything over to Python 3 and use alias to get 
it to work together.


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

Log out of the session and log back in. Sometimes you may need to restart.

Follow the instructions on this to install Prezto

https://github.com/sorin-ionescu/prezto

After following the instructions we will need to install the missing symbols

You will most likely need to install the Powerline-patched Font at this link.
https://github.com/powerline/fonts

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

:warning: just remove YCMD Core due to sluggishness 

## Adding Skeleton templates

```console
ln -s /Users/jonathan/workspace/dotfiles/templates /Users/jonathan/.vim/templates

```

This will create a template folder

