{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    git-credential-manager
    lazygit
    gh
    difftastic
    git-absorb
  ];
  environment.sessionVariables = {
    GCM_CREDENTIAL_STORE = "secretservice";
    GIT_EDITOR = "nvim";
  };
  programs.git = {
    enable = true;
    config = {
      credential = {
        helper = "${pkgs.git-credential-manager}/bin/git-credential-manager";
        credentialStore = "secretservice";
      };
      core = {
        pager = "${pkgs.difftastic}/bin/dft --color auto";
      };
      core.fsmonitor = true;
      pull.rebase = true;
    };
  };
  programs.bash.shellAliases = {
    gs = "git status";
    ga = "git add";
    gc = "git commit -m";
    gp = "git push";
    gpus = "git push -u";
    nix-switch = "sudo nixos-rebuild switch --flake ~/nix-dotfiles#linkeddreams";
  };
}
