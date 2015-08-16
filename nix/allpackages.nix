{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  fetchurl = pkgs.fetchurl;
  pythonPackages = pkgs.python34Packages;
  unzip = pkgs.unzip;
in rec {

  stdenv = pkgs.stdenv;

  nodejs = import node/default.nix { inherit stdenv fetchurl; };

  sublimetext = import sublime/default.nix { inherit stdenv fetchurl; };
  awscli = import aws/default.nix { inherit pythonPackages fetchurl; };
  kubernetes = import kubernetes/default.nix { inherit stdenv fetchurl; };

}
