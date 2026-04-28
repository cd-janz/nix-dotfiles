{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    librewolf
    # zen-browser
  ];
  environment.sessionVariables = {
    DEFAULT_BROWSER = "librewolf";
    BROWSER = "librewolf";
  };
}
