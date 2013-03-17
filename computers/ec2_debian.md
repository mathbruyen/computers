# EC2 Debian

[Official Debian AMI](http://wiki.debian.org/Cloud/AmazonEC2Image) 64-bits. Default user is `admin`.

## General

`apt-get install vim build-essential`

Dotfiles:
* `.bashrc`
* `.bash_profile`

## SSH

Relies on `.ssh/config` dotfile. Generate keys with `ssh-keygen -t rsa`. Additionally listens to port 443 in `/etc/ssh/sshd_config`.

## Git

`apt-get install git`

Relies on dotfile `.gitconfig`.

