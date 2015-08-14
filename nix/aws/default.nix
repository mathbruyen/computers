{ pythonPackages, fetchurl }:

let
  jmespath = pythonPackages.buildPythonPackage rec {
    name = "botocore-${version}";
    version = "0.7.1";
    namePrefix = "";
    buildInputs = [ pythonPackages.pbr ];
    src = fetchurl {
      url = "https://pypi.python.org/packages/source/j/jmespath/jmespath-${version}.tar.gz";
      md5 = "ca76cb014165306c1eded212cfb78cf5";
    };
  };
  botocore = pythonPackages.buildPythonPackage rec {
    name = "botocore-${version}";
    version = "1.1.8";
    namePrefix = "";
    buildInputs = [ pythonPackages.pbr ];
    pythonPath = [
      pythonPackages.docutils
      pythonPackages.dateutil
      jmespath
    ];
    src = fetchurl {
      url = "https://pypi.python.org/packages/source/b/botocore/botocore-${version}.tar.gz";
      md5 = "edd035adee11f3da8e9db76139ba758a";
    };
  };
in pythonPackages.buildPythonPackage rec {
  name = "awscli-${version}";
  version = "1.7.45";
  namePrefix = "";
  buildInputs = [ pythonPackages.pbr ];
  pythonPath = [
    pythonPackages.rsa
    pythonPackages.docutils
    pythonPackages.colorama
    pythonPackages.pyasn1
    pythonPackages.dateutil
    botocore
    jmespath
  ];
  src = fetchurl {
    url = "https://github.com/aws/aws-cli/archive/${version}.tar.gz";
    sha1 = "00z9ql9ybwynqgchi9sxq951cidz9skp";
  };
}
