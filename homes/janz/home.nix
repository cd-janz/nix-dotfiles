{ config, pkgs, ... }:

{

  imports = [
    ./hypr.nix
    ./nvim.nix
  ];

  home.username = "janz";
  home.homeDirectory = "/home/janz";
  home.stateVersion = "25.11";
  
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    fastfetch
  ];

  programs.git.settings = {
    name = "cd-janz";
    email = "cd.juanzuniga@gmail.com";
  };
}
