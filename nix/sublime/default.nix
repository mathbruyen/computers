{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "sublimetext-3.3103";
  builder = ./builder.sh;
  src = fetchurl {
    url = http://download.sublimetext.com/sublime_text_3_build_3103_x64.tar.bz2;
    sha1 = "l467msr688bfmdbqjl3f63a7bwq81fbq";
  };
}
