{ pkgs ? (import ./pinned-nixpkgs.nix) { } }:
[
  pkgs.gnumake
  pkgs.gnugrep
  pkgs.gnused
  pkgs.gawk
  (pkgs.poetry2nix.mkPoetryEnv {
    projectDir = ../.;
    # Some overrides are needed because some packages does not define their build deps correctly
    overrides = pkgs.poetry2nix.overrides.withDefaults (
      self: super: {
        idna = super.idna.overrideAttrs (
          old: {
            buildInputs = (old.buildInputs or [ ]) ++ [ self.flit-core ];
          }
        );
        sphinx = super.sphinx.overrideAttrs (
          old: {
            buildInputs = (old.buildInputs or [ ]) ++ [ self.flit-core ];
          }
        );
      }
    );
  })
]
