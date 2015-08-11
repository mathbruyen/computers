# [Nix](http://nixos.org/nix/)

## Installation

Install Nix as a single user: run (asks for root password to create `/nix` folder):

```
curl https://nixos.org/nix/install | sh
```

Remove added line in `.bash_profile` (already included in [`.bashrc`](../dotfiles/.bashrc)). Symlink this folder to `~/.nix-local`. All included packages are in [allpackages.nix](allpackages.nix).

## Local development

Projects needing packages from these definitions should have a `default.nix` like (here depending on [Node.js](https://nodejs.org/)):

```
{ pkgs ? import ~/.nix-local/allpackages.nix {} }:

pkgs.stdenv.mkDerivation rec {
  name = "dev";
  buildInputs = [ pkgs.nodejs ];
  src = ./.;
}
```

And run `nix-shell` from the project repository to get a working environment.