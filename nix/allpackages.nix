{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  fetchurl = pkgs.fetchurl;
  pythonPackages = pkgs.python34Packages;
  unzip = pkgs.unzip;
in rec {

  stdenv = pkgs.stdenv;

  sublimetext = import sublime/default.nix { inherit stdenv fetchurl; };

  nodejs = import node/default.nix { inherit stdenv fetchurl; };
  awscli = import aws/default.nix { inherit pythonPackages fetchurl; };

}
