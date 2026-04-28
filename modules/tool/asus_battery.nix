{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    power-profiles-daemon
    acpi
    libnotify
    brightnessctl
    btop
  ];
  services.power-profiles-daemon.enable = true;
  services.thermald.enable = true;
  services.auto-cpufreq.enable = false;
  hardware.cpu.amd.updateMicrocode = true;
}
