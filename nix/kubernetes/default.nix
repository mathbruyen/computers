{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "kubernetes-${version}";
  version = "1.0.3";
  builder = ./builder.sh;
  src = fetchurl {
    url = "https://github.com/kubernetes/kubernetes/releases/download/v${version}/kubernetes.tar.gz";
    sha1 = "13d3125fe3b25808b4b4c07f2a350f4c02d44205";
  };
}
