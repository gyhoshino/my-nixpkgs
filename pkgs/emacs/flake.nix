{
  description = "Custom Emacs Build";

  inputs = {
    nixpkgs = {
      url = github:nixos/nixpkgs?ref=nixos-unstable;
    };
  };

  outputs = {
    self,
    nixpkgs
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    packages.${system} = {
      myPackage = pkgs.callPackage ./. {};
      default = self.packages.${system}.myPackage;
    };
  };
}
