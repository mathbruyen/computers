# Aspire

Debian Squeeze (6.0.6)

## General

`apt-get install build-essential`

Dotfiles:
* `.bashrc`
* `.bash_profile`

## SSH

`apt-get install ssh` with `.ssh/config` dotfile. Generate keys with `ssh-keygen -t rsa`.

## Heroku

[Toolbelt](https://toolbelt.heroku.com/) with identity file `id_heroku`.

## Git

`apt-get install git`

Relies on dotfile `.gitconfig`.

## Ruby

`apt-get install libssl-dev libreadline-dev`

With [rbenv](https://github.com/sstephenson/rbenv/):
```
git clone https://github.com/sstephenson/rbenv.git .rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 1.9.3-pXXX
rbenv rehash
```
Also relies on content in `.bashrc`.


