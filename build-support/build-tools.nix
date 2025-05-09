{ pkgs ? (import ./pinned-nixpkgs.nix) { } }:
let
  pythonWorkspace = pkgs.uv2nix.lib.workspace.loadWorkspace { workspaceRoot = ../.; };
  pythonSet = (pkgs.callPackage pkgs.pyproject-nix.build.packages {
    python = pkgs.python3;
  }).overrideScope
    (
      pkgs.lib.composeManyExtensions [
        pkgs.pyproject-build-systems
        (pythonWorkspace.mkPyprojectOverlay { sourcePreference = "wheel"; })
      ]
    );
  pythonVirtualenv = pythonSet.mkVirtualEnv "build-deps" pythonWorkspace.deps.all;
in [
  pkgs.gnumake
  pkgs.gnugrep
  pkgs.gnused
  pkgs.gawk
  pythonVirtualenv
]
