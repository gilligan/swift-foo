{ npins ? import ./npins
, system ? builtins.currentSystem
, pkgs ? import npins.nixpkgs { inherit system; }
}:

let
  inherit (pkgs) stdenv;
  swift-format = stdenv.mkDerivation {
    name = "swiftformat";
    src = npins.SwiftFormat;
    version = "0.50.6";
    buildInputs = with pkgs; [ strace swift ];
    buildPhase = ''
      export HOME=$PWD
      export CC=clang++
      swift build -c release -v --skip-update
    '';
    installPhase = ''
      BIN_OUTPUT_PATH=$(swift build -c release --show-bin-path)
      mkdir -p $out/bin
      cp $BIN_OUTPUT_PATH/swiftformat $out/bin
    '';

  };
in

pkgs.mkShell {
  buildInputs = with pkgs; [ swift swift-format ];
}
