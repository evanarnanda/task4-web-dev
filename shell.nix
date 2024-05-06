#shell.nix

{
    pkgs ? import <nixpkgs> { }
}:

pkgs.mkShell
{
    nativeBuildInputs = with pkgs; [
        git
        python312
        python312Packages.pip
        pdm
    ];
}

