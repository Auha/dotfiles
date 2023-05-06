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

https://docs.microsoft.com/en-us/windows/terminal/tutorials/powerline-setup

For themes on MacOSX

https://github.com/lysyi3m/macos-terminal-themes

For nerdtree fonts:

```console
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
```

# Setup Programming Language

## Install PyEnv

```console
sudo apt install build-essential cmake make libssl-dev zlib1g-dev libbz2-dev 
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev 
libxmlsec1-dev libffi-dev liblzma-dev
```

Afterwards we will install pyenv
```console
curl https://pyenv.run | bash
```

## Install NVM for NodeJS

Go to the following URL to install the latest version of NVM
https://github.com/nvm-sh/nvm#installing-and-updating

## Install SDKMan to install Java SDK's

Execute the following script to get sdk man to install and be useable.

```console
curl -s "https://get.sdkman.io" | bash
```

# Setup Flutter

## Install FVM

`brew tap leoafarias/fvm`
`brew install fvm`

## Setup the latest version of flutter

https://fvm.app/docs/guides/basic_commands

## Install Sidekick for flutter

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
# NeoVIM Setup
```console
brew install neovim
```

```console
ln -s /home/jonathan/workspace/dotfiles/nvim/init.vim /home/jonathan/.config/nvim/init.vim
```

## Adding Skeleton templates

```console
ln -s /Users/jonathan/workspace/dotfiles/templates /Users/jonathan/.vim/templates

```

This will create a template folder

