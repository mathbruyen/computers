{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  fetchurl = pkgs.fetchurl;
in rec {

  stdenv = pkgs.stdenv;

  nodejs = import node/default.nix { inherit stdenv fetchurl; };

}
