source $stdenv/setup

unzip $src
python3 awscli-bundle/install -i $out/install -b $out/bin/aws
