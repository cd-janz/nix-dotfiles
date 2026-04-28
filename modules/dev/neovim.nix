{ config,, pkgs, ... }:

{
  xdg.configFile."nvim" = {
    source = ../../dotfiles/neovim;
    recursive = true;
  };
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
