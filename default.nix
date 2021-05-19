{ pkgs ? import <nixpkgs> {}
, compilerVersion ? "8104"
, compiler ? "ghc${compilerVersion}"
, ghc ? pkgs.haskell.compiler.${compiler}
}:

with pkgs;
let
  hls = pkgs.haskell-language-server.override
    { supportedGhcVersions = [ compilerVersion ]; };
in
haskell.lib.buildStackProject {
  ghc = ghc;
  name = "learn-haskell-env";

  buildInputs = [ hls ];
}
