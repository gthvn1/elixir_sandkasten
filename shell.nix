{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    elixir
    erlang
    elixir-ls
    rebar3
    git
    inotify-tools
  ];

  shellHook = ''
    echo "Elixir dev shell ready 🚀"
    elixir --version
  '';
}

