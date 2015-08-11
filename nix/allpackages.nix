{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  fetchurl = pkgs.fetchurl;
in rec {

  nodejs = import node/default.nix { inherit stdenv fetchurl; };

}
