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
          # lean4 ships both `lean` and `lake`; flake.lock pins the exact version.
          packages = [ pkgs.lean4 pkgs.nodejs ];
        };
      });
    };
}
