{ pkgs, ... }:
{
  home.username = "costa";
  home.homeDirectory = "/home/costa";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    hello
    git
    jq
  ];
}
