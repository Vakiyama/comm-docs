{
    description = "flake for python";

    inputs = {
        old-nixpkgs = {
            type = "github";
            owner = "NixOS";
            repo = "nixpkgs";
            rev = "f294325aed382b66c7a188482101b0f336d1d7db";
        };
    };

    outputs = { self, old-nixpkgs, flake-utils }:
        flake-utils.lib.eachDefaultSystem ( system:
        let
            pkgs = old-nixpkgs.legacyPackages.${ system };
        in {
            devShell = with pkgs; pkgs.mkShell {
                buildInputs = [
                    python38Full
                    #python38Packages.tkinter
                ];

                shellHook = ''
                    source .venv/bin/activate
                '';
            };
        }
    );
}


