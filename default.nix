{ pkgs ? import <nixpkgs> { } }:
{
  anki-newer = pkgs.callPackage ./pkgs/anki { };
}