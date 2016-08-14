# [Nix](http://nixos.org/nix/)

## Installation

Install Nix as a single user: run (asks for root password to create `/nix` folder):

```
curl https://nixos.org/nix/install | sh
```

Remove added line in `.bash_profile` (already included in [`.bashrc`](../dotfiles/.bashrc)). Symlink `.nixpkgs` dotfile folder in home directory.

## Package management

```
nix-channel --update

nix-env --install foo
nix-env --upgrade foo

nix-env --delete-generations old
nix-collect-garbage
```

## Local development

Projects needing packages from these definitions should have a `default.nix` like (here depending on [Node.js](https://nodejs.org/)):

```
{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  name = "dev";
  buildInputs = [ pkgs.nodejs-6_x ];
  src = ./empty;
}
```

And run `nix-shell` from the project repository to get a working environment. Setting `src` to a folder with stable content reduces time to build the environment.

## Docker usage (Google Cloud Shell)

[Here](nix-builder)
