source $stdenv/setup

tar xvfz $src
mkdir $out
cp -R kubernetes/* $out

mkdir $out/bin
cd $out/bin
ln -s $out/platforms/linux/amd64/kubectl
