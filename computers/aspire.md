# Aspire

Debian unstable (Sid)

## General

`apt-get install build-essential curl`

Dotfiles:
* `.bashrc`
* `.bash_profile`

## Firefox/Iceweasel aurora

[Source](http://mozilla.debian.net/)

```
apt-get install pkg-mozilla-archive-keyring
echo "deb http://mozilla.debian.net/ experimental iceweasel-aurora" > /etc/apt/sources.list.d/mozilla.list
apt-get update
apt-get install -t experimental iceweasel
``` 

and setup Sync.

## SSH

`apt-get install ssh` with `.ssh/config` dotfile. Generate keys with `ssh-keygen -t rsa`.

## Heroku

[Toolbelt](https://toolbelt.heroku.com/) with identity file `id_heroku`.

## Git

`apt-get install git`

Relies on dotfile `.gitconfig`.

## Ruby

With [rbenv](https://github.com/sstephenson/rbenv/):
```
apt-get install libssl-dev libreadline-dev
git clone https://github.com/sstephenson/rbenv.git .rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 1.9.3-pXXX
rbenv rehash
```
Also relies on content in `.bashrc`.

## Node.js

With [nvm](https://github.com/creationix/nvm):
```
git clone git://github.com/creationix/nvm.git ~/nvm
nvm install 0.8.21
```
Also relies on content in `.bashrc`.
