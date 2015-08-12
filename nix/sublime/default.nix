{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "sublimetext-3.3083";
  builder = ./builder.sh;
  src = fetchurl {
    url = http://c758482.r82.cf2.rackcdn.com/sublime_text_3_build_3083_x64.tar.bz2;
    sha1 = "099f5a7e11499b911373ddf661f85cdb7e5e2351";
  };
}
