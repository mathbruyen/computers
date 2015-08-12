{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  fetchurl = pkgs.fetchurl;
  python3 = pkgs.python3;
  unzip = pkgs.unzip;
in rec {

  stdenv = pkgs.stdenv;

  sublimetext = import sublime/default.nix { inherit stdenv fetchurl; };

  nodejs = import node/default.nix { inherit stdenv fetchurl; };
  awscli = import aws/default.nix { inherit stdenv fetchurl python3 unzip; };

}
