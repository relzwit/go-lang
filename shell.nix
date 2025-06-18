# gpt gave me this shell. untested tbh
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Build inputs are packages available in the shell environment.
  buildInputs = with pkgs; [
    go # The Go toolchain
    gopls # Go language server for IDE integration
    gotools # Collection of Go tools like goimports, golint, etc.
    delve # Go debugger
  ];

  # Optional: Set environment variables specific to your project
  # shellHook = ''
  #   export MY_CUSTOM_VAR="some_value"
  # '';
}
