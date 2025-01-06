# Linux system setup for Herr Ken

This is a Repo for Herr Ken's portable Linux setup 


### 1. [suckless](suckless.org)
	- Autostart script called at /usr/share/xsessions/dwm.desktop
	- sudo make clean install

### 2. zsh
	- Put .zshrc in home
	- Put .zshenv in home
### 3. vim
	- Put .vimrc in home
	- Put .vim in home
### 4. [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
	- Put folder in ~/.config

## Tools 

### fzf
https://github.com/junegunn/fzf?tab=readme-ov-file#installation

### batcat
https://github.com/sharkdp/bat

### eza
https://github.com/eza-community/eza

### zoxide
https://github.com/ajeetdsouza/zoxide

### mc
https://github.com/MidnightCommander/mc

### tldr
https://github.com/tldr-pages/tldr

### safeeyes
https://github.com/slgobinath/SafeEyes

## Additional Info
To adjust the transparency of windows, PICOM is required. 
1. Simple Terminal (ST)
- Change the _alpha_ setting under **bg opacity** in `../st/config.h`

2. Every other window
- Modify _defaultopacity_ in `../dwm/config.h`
- To change other settings including blur, modify in `/etc/xdg/picom.conf`

Adjusting _alpha_ and _defaultopacity_ takes precedence over makign changes directly in the `picom.conf` file
