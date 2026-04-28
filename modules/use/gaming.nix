{ pkgs, config, ... }:
{

  environment.systemPackages = with pkgs; [
    # PROGRAMS
    protonup-qt
    heroic

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
