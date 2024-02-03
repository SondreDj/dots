# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```
## Things configured
 - neovim
 - tmux
 - zsh
 - hyprland
 - waybar
 - kitty
## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/SondreDj/dots.git dotfiles
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
