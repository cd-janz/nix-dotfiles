{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    grim
    slurp
    wl-clipboard
    swappy
  ];
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
}
