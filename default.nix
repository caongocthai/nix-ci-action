{
  source ? import ./nix/sources.nix,
  system ? builtins.currentSystem,
  crossSystem ? null,
}:
let
  pkgs = import source.nixpkgs { inherit system crossSystem; };
  inherit (pkgs.buildPackages.stdenv) mkDerivation;
in
  {
    ci = mkDerivation {
      name = "test-action";
      builder = builtins.toFile "builder.sh" ''
        source $stdenv/setup
        mkdir -p $out
        echo "Test create a file"
        cd $out
        mkdir -p src
        cat <<EOF > src/name
        Harry Cao
        Testing
        EOF
      '';
    };
  }