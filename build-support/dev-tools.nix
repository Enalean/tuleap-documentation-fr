{
  pkgs,
  treefmt-nix ? (import ./pinned-treefmt-nix.nix { }),
}:
[
  pkgs.uv
  (treefmt-nix.mkWrapper pkgs {
    programs.oxipng.enable = true;
    programs.nixfmt = {
      enable = true;
      package = pkgs.nixfmt;
    };
    programs.actionlint.enable = true;
    programs.zizmor.enable = true;
  })
]
