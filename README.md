# dotfiles

## OS:
  * Linux
    * Debian 8 Jessie (headless server)
    * Ubuntu 16.04 Xenial Xerus LTS (desktop)
  * MacOS 10 High Sierra
  * Windows 10

## Soft:
  * tmux 2.6   (Linux/Mac)
  * vim 8.1
    * versions:
      * vim    (Linux/Mac/Windows terminal)
      * gvim   (Linux/Windows)
      * MacVim (MacOS)
    * plugins:
        * NerdTree
  * spacemacs (emacs 26.1, Windows/Linux/Mac)

## Keys
  * Karabiner Elements (Mac)
  * AutoHotKey (Windows)

## Init
  * tmux:
	```
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	tmux
	prefix+I
	```
  * vim:
	```
	bash .vim/get_submodules.sh
	bash .vim/install.sh
	```
  * spacemacs:
	```
    MacOS: brew cask install emacs
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
	```
  
