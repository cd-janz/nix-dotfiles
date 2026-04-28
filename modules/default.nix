{ ... }:
{
  imports = [
    ./apps/browsers.nix
    ./apps/spotify.nix

    ./core/wl-clipboard.nix

    ./desktop/hypr.nix

    ./dev

    ./tool/git.nix
    ./tool/asus_battery.nix

    ./use/creation.nix
    ./use/gaming.nix
  ];
}
