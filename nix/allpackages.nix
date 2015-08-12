{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  fetchurl = pkgs.fetchurl;
in rec {

  stdenv = pkgs.stdenv;

  sublimetext = import sublime/default.nix { inherit stdenv fetchurl; };

  nodejs = import node/default.nix { inherit stdenv fetchurl; };

}
