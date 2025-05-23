# Linux system setup for Herr Ken

This is a Repo for Herr Ken's portable Linux setup 


### 1. [suckless](https://suckless.org)
	- Autostart script called at /usr/share/xsessions/dwm.desktop
	- sudo make clean install

### 2. zsh
	- Link .zshrc in home
	- Link .zshenv in home
### 3. vim
	- Link .vimrc in home
	- Link .vim in home
### 4. [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
	- Link folder in ~/.config
	- Link all files in formatting in ~ 

## CLI Tools 

### 1. fzf
https://github.com/junegunn/fzf?tab=readme-ov-file#installation

### 2. batcat
https://github.com/sharkdp/bat

### 3. eza
https://github.com/eza-community/eza

### 4. zoxide
https://github.com/ajeetdsouza/zoxide

### 5. mc
https://github.com/MidnightCommander/mc

### 6. tldr
https://github.com/tldr-pages/tldr

### 7. safeeyes
https://github.com/slgobinath/SafeEyes

## Additional Info
To adjust the transparency of windows, PICOM is required. 
1. Simple Terminal (ST)
- Change the _alpha_ setting under **bg opacity** in `../st/config.h`

2. Every other window
- Modify _defaultopacity_ in `../dwm/config.h`
- To change other settings including blur, modify in `/etc/xdg/picom.conf`

Adjusting _alpha_ and _defaultopacity_ takes precedence over makign changes directly in the `picom.conf` file
