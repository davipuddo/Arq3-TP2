{
pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
    buildInputs = with pkgs; [
        iverilog
        gcc
        gtkwave
        valgrind
    ];

    shellHook = ''
    '';
}

