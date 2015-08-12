source $stdenv/setup

tar xvfj $src

mkdir $out
cp -R sublime_text_3/* $out

mkdir $out/bin
cd $out/bin
ln -s ../sublime_text
