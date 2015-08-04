source $stdenv/setup

tar xvfz $src
cd node-*
mkdir $out
cp -R * $out
