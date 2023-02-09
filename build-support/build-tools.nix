{ pkgs ? (import ./pinned-nixpkgs.nix) { } }:
[
  pkgs.gnumake
  pkgs.gnugrep
  pkgs.gnused
  pkgs.gawk
  (pkgs.poetry2nix.mkPoetryEnv {
    projectDir = ../.;
    # Some overrides are needed because some packages do not define their build deps correctly
    # https://github.com/nix-community/poetry2nix/blob/master/docs/edgecases.md
    overrides = pkgs.poetry2nix.defaultPoetryOverrides.extend (
      self: super: {
        sphinx = super.sphinx.overridePythonAttrs (
          old: {
            buildInputs = (old.buildInputs or [ ]) ++ [ self.flit-core ];
          }
        );
      }
    );
  })
]
