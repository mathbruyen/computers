# Aspire

Debian unstable (Wheezy) amd64.

## Sudo

As root:
```
adduser mathieu sudo
```
then reboot.

## General

`apt-get install kde-standard yakuake build-essential curl`

Dotfiles:
* `.bashrc`

## Maven

Install OpenJDK with `sudo apt-get install openjdk-7-jdk`.

Download maven binary from official website and expand in `~/software`.

Relies on dotfile `.bashrc`.

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

## Sublime Text

Extract Linux-64 archive from [official website](http://www.sublimetext.com/) in `~/software/sublime_text_3`, link `sublime_text` in `~/software/bin` (added to PATH in dotfile `.bashrc`) and link dotfiles from `.config/sublime-text-3`. Plugins listed at `.config/sublime-text-3/README.md`.

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
source ~/.bashrc
nvm install 0.11
nvm alias default 0.11
```
Also relies on content in `.bashrc`.

## OpenSCAD

[Built from source](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Building_on_Linux/UNIX):
```
git clone https://github.com/openscad/openscad.git
cd openscad
git submodule init
git submodule update
sudo
apt-get install libqt4-dev libqt4-opengl-dev libxmu-dev cmake bison flex git-core libboost-all-dev libXi-dev libmpfr-dev libboost-dev libglew-dev libeigen2-dev libeigen3-dev libcgal-dev libopencsg-dev libgmp3-dev libgmp-dev python-paramiko
exit
./scripts/check-dependencies.sh
qmake-qt4
make
```

And in `~/software/bin`, `ln -s ~/dev/openscad/openscad`.

[Website](http://www.openscad.org/) and [language reference](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/The_OpenSCAD_Language).
