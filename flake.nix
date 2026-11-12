{
  description = "LeanLingo exercises in Lean 4";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
    in
    {
      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShell {
          # elan installs the official Lean release named in lean-toolchain; Mathlib's
          # prebuilt cache only works with official builds, not nixpkgs' lean4.
          # git and curl are used by lake to fetch Mathlib and its build cache.
          packages = [ pkgs.elan pkgs.nodejs pkgs.git pkgs.curl ];
        };
      });
    };
}
