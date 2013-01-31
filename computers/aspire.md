# Aspire

Debian Squeeze (6.0.6)

## APT software

`apt-get install build-essential`

## Git

`apt-get install git`

Relies on dotfile `.gitconfig`.

## Ruby

`apt-get install libssl-dev`

With [rbenv](https://github.com/sstephenson/rbenv/):
```
git clone https://github.com/sstephenson/rbenv.git .rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 1.9.3-pXXX
rbenv rehash
```
Also relies on content in `.bashrc`.

## Dotfiles

* `.bashrc`
* `.bash_profile`
