{ lib
, stdenv
, fetchurl
, gnutls
}:

stdenv.mkDerivation rec {
  pname = "my-emacs";
  version = "29.1";
  src = fetchurl {
    url = "http://mirror.keystealth.org/gnu/emacs/emacs-29.1.tar.xz";
    sha256="sha256-0viBpcwjHi9aA+hvRYSwQ4+D7ddZignSSiG9jQA+LgE=";
  };

  nativeBuildInputs = [ gnutls ];
  buildPhase = ''
mkdir build
cd build
../configure
'';
}