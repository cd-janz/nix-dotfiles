{ pkgs, config, ... }:
let
  ankamaAppImagePath = "/home/janz/.local/share/ankama/ankama_launcher.AppImage";

  ankamaDesktop = pkgs.makeDesktopItem {
    name = "ankama-launcher";
    desktopName = "Ankama Launcher";
    exec = "${pkgs.appimage-run}/bin/appimage-run ${ankamaAppImagePath}";
    icon = "ankama-launcher"; # Usa el icono del sistema si existe, o puedes poner una ruta a un .png
    categories = [ "Game" ];
    terminal = false;
  };
in
{

  environment.systemPackages = with pkgs; [
    # PROGRAMS
    protonup-qt
    heroic
    ankamaDesktop

    # UTILITIES
    goverlay
    mangohud
    gamescope
    bottles
    vkbasalt

    # EMULATION
    pcsx2
    xemu
    dolphin-emu
    mgba
    melonds
    retroarch-full
    azahar
    ryubing
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    gamescopeSession.enable = true;
  };
  programs.gamemode.enable = true;
  networking.firewall = {
    allowedUDPPorts = [ 5055 5056 5058 25565 ];
    allowedTCPPorts = [ 4530 4531 25565 ];
  };
}
