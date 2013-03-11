# EC2 Debian

[Official Debian AMI](http://wiki.debian.org/Cloud/AmazonEC2Image) 64-bits. Default user is `admin`.

## General

`apt-get install vim build-essential`

Dotfiles:
* `.bashrc`
* `.bash_profile`

## SSH

Relies on `.ssh/config` dotfile. Generate keys with `ssh-keygen -t rsa`. Additionally listens to port 443 in `/etc/ssh/sshd_config`.

## Sublime Text

Extract Linux-64 archive from [official website](http://www.sublimetext.com/) in `~/software/Sublime Text 2`, link `sublime_text` in `~/software/bin` (added to PATH in dotfile `.bashrc`) and link dotfiles from `.config/sublime-text-2`. Plugins listed at `.config/sublime-text-2/README.md`.

## Git

`apt-get install git`

Relies on dotfile `.gitconfig`.

