# Dotfiles (Iouns)
Here is my basic dotfiles for fun. :)

## Basic actions
Here is my dotfiles for :
 * bash & zsh
zsh:1: command not found: q
 * vim plugins
 * gitconfig

## Installation

Clone main repository and linked submodules:
```
git clone --recursive git://github.com/Iouns/dotfiles.git
```

Start the deploy.sh script, it will show you potential modifications:
```
iouns@hostname:[dotfiles]$ ./deploy.sh 
>f+++++++++ .bash_aliases
>f+++++++++ .bash_profile
>f+++++++++ .bashrc
```

Once changes are reviewed, choose to apply them or not:
```
Deploy dotfiles to => /home/iouns? [y/N]y
>f+++++++++ .bash_aliases
>f+++++++++ .bash_profile
>f+++++++++ .bashrc
```

### Install vim plugins:
```
vim +BundleInstall +qall
```
source: [Gmarik: vundle vim plugin](https://github.com/gmarik/vundle)

### Install powerline enabled fonts on archlinux:
```
sudo yaourt -S aur/otf-inconsolata-dz-powerline-git
```
source: [Lokaltog: vim powerline](https://github.com/Lokaltog/vim-powerline)

### If you want to use oh-my-zsh:
```
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```
source: [Robby Russel: oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
