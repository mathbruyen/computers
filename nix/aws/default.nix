{ python3, unzip, stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "awscli-1.7.44";
  builder = ./builder.sh;
  buildInputs = [ python3 unzip ];
  src = fetchurl {
    url = https://s3.amazonaws.com/aws-cli/awscli-bundle.zip;
    sha1 = "ac639bd4a3117a3b2c9ac844e14d8ab2fd668477";
  };
}
