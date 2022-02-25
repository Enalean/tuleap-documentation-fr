{ pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/38346f64616c3176f73ad0f20e51557ec0f3d75d.tar.gz";
    sha256 = "0kxs5z821hl23v3vp2sjdx9m2hk43448nzi3nsfc1wmqlflv1rsr";
  } ) {} 
}:

pkgs.stdenvNoCC.mkDerivation {
    name = "tuleap-documentation-fr-build";
    buildInputs = [
        pkgs.gnumake
        pkgs.gnugrep
        pkgs.gnused
        pkgs.gawk
        pkgs.python39Packages.virtualenv
    ];
}
