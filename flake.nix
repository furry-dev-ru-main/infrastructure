{
  inputs = {
    utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      in {
       devShell = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            dnsutils
            docker
            just
            terraform
            terraform-ls
          ];
        };
      });
}

