# Aspire

Debian Jessie amd64.

## General

As root:
```
apt-get install sudo
adduser mathieu sudo
```
then reboot.

`apt-get install kde-standard yakuake build-essential curl docker.io ntp`

Dotfiles:
* `.bashrc`

## [Nix](http://nixos.org/nix/)

See [here](../nix).

## Maven

Available through docker containers. Set `/home/dummy/.m2/settings.xml` in data container `mvn-cache` (using `docker run -it --rm --volumes-from mvn-cache -v `pwd`:/pwd -w /pwd -u dummy local/mvn-with-user /bin/bash` to log in) according to [Sonatype help](https://docs.sonatype.org/display/Repository/Sonatype+OSS+Maven+Repository+Usage+Guide) to publish artifacts.

## Firefox (nightly)

`nix-env --install firefox` and setup Sync.

## SSH

`apt-get install ssh` with `.ssh/config` dotfile. Generate keys with `ssh-keygen -t rsa`.

## Sublime Text

Using [Nix](../nix): `nix-env -i sublimetext3`

Plugins listed on dedicated [dotfiles](../dotfiles/.config/sublime-text-3). Requires `allowUnfree`.

## [AWS CLI](http://aws.amazon.com/documentation/cli/)

Using [Nix](../nix): `nix-env -f nix/allpackages.nix -i awscli`

## Git

`nix-env --install git`

Relies on dotfile `.gitconfig`.

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
