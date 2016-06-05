# Nix builder

## Prepare

Go to [releases](http://hydra.nixos.org/project/nix#tabs-releases) and download latest release:

```
wget https://nixos.org/releases/nix/nix-1.11.2/nix-1.11.2-x86_64-linux.tar.bz2
```

Build docker image:

```
docker build -t nix-builder .
```

Initialize nix cache persistent volume (volumes are not persisted in Google Cloud Shell):

```
mkdir ~/.nix-builder-cache
docker run --rm -v ~/.nix-builder-cache:/nix-cache nix-builder cp -r /nix/* /nix-cache
```

## Build

Create nix expression and run:

```
docker run --rm -v ~/.nix-builder-cache:/nix -v $(pwd):/mnt -it nix-builder
> nix-build mapnik.nix
docker load < ~/.nix-builder-cache/store/lw53d62i8n1pza4kh3ird2vlnb9iilh5-mapnik.tar.gz
```
