{ config, pkgs, ... }:

{
  home.file.".config/hypr" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix-dotfiles/config/hyprland";
    recursive = true;
  };
  home.packages = with pkgs; [
    rofi
  ];
}
