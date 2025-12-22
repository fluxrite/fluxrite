{ pkgs, lib, config, inputs, ... }:

{
  cachix.enable = false;

  packages = with pkgs; [ 
    git 
    renode-bin
    cargo-expand
    pkg-config
  ];

  languages.rust = {
    enable = true;
    channel = "nightly";
    components = [ "cargo" "rustc" "rust-src" "rustfmt" "clippy"];
  };


  enterShell = ''
    echo "Fluxrite Devenv Shell"
  '';
}
