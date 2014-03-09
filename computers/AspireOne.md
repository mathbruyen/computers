# AspireOne

Debian Jessie i386.

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

## Ruby

With [rbenv](https://github.com/sstephenson/rbenv/):
```
apt-get install autoconf bison libssl-dev libyaml-dev libreadline6 libreadline6-dev zlib1g zlib1g-dev patchutils
git clone https://github.com/sstephenson/rbenv.git .rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
curl -fsSL https://github.com/ruby/ruby/commit/1e7a929c1d44d7a368fbe379211183ac6c972920.patch | filterdiff --strip=1 -i a/ext/openssl/ossl_ssl.c | rbenv install -p 1.9.3-p484
rbenv rehash
rbenv global 1.9.3-p484
```
Also relies on content in `.bashrc`.

* [Required packages](https://github.com/sstephenson/ruby-build/wiki#wiki-suggested-build-environment)
* [OpenSSL patch](https://github.com/sstephenson/ruby-build/wiki#wiki-openssl-bindings-on-debian-80-jessie)
