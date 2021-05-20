{ pkgs ? import <nixpkgs> {} }:
let
  inherit (pkgs) haskellPackages;

  haskellDeps = ps: with ps; [
    base
  ];

  ghc = haskellPackages.ghcWithPackages haskellDeps;

  nixPackages = [
    ghc
    haskellPackages.cabal-install
  ];
in
pkgs.stdenv.mkDerivation {
  name = "learn-haskell-env";
  buildInputs = nixPackages;
}
