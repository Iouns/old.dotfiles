# Dotfiles (Iouns)
Here is my basic dotfiles for fun. :)

## Basic actions
Here is my dotfiles for :
 * bash, zsh..
 * tmux
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

### to enable vim plugins :
```
vim +BundleInstall +qall
```

### to use oh-my-zsh :
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
```
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```
