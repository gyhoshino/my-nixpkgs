{
  description = "My Overlay for Custom Packages";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.05";
  };

  outputs = {
    self,
    nixpkgs
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    packages.${system} = {
      anki-newer = pkgs.callPackage ./pkgs/anki {};
    };
  };

}


