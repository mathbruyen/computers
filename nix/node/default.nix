{ pkgs ? import <nixpkgs> {} }:

let
  stdenv = pkgs.stdenv;
  fetchurl = pkgs.fetchurl;
in rec {

  node = stdenv.mkDerivation {
    name = "nodejs-0.12.7";
    builder = ./builder.sh;
    src = fetchurl {
      url = https://nodejs.org/dist/v0.12.7/node-v0.12.7-linux-x64.tar.gz;
      sha1 = "0a861a6ded50c8cda32ac39c3a54699c767742e6";
    };
  };
}
