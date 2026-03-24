{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    bashInteractive
    fzf
    gawk
    coreutils
    gnugrep
    findutils
    ncurses
    xclip
    xsel
    wl-clipboard
  ];

  shellHook = ''
    echo "history-find shell ready"
    echo "Source history-find.sh.txt to load hfindf20:"
    echo "  source ./history-find.sh.txt"
  '';
}
