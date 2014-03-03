# AspireOne

Debian unstable (Wheezy)

## General

`apt-get install yakuake build-essential curl`

Dotfiles:
* `.bashrc`

## SSH

`apt-get install ssh` with `.ssh/config` dotfile. Generate keys with `ssh-keygen -t rsa`.

## Git

`apt-get install git`

Relies on dotfile `.gitconfig`.

## Sublime Text

Extract Linux-32 archive from [official website](http://www.sublimetext.com/3) in `~/software/sublime_text_3`, link `sublime_text` in `~/software/bin` (added to PATH in dotfile `.bashrc`) and link dotfiles from `.config/sublime-text-3`. Plugins listed at `.config/sublime-text-3/README.md`.

## Node.js

With [nvm](https://github.com/creationix/nvm):
```
git clone git://github.com/creationix/nvm.git ~/nvm
source ~/.bashrc
nvm install 0.11
nvm alias default 0.11
```
Also relies on content in `.bashrc`.
