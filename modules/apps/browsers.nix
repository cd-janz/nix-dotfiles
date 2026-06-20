{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    librewolf
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
  environment.sessionVariables = {
    DEFAULT_BROWSER = "librewolf";
    BROWSER = "librewolf";
  };
}
