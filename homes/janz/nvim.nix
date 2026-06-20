{ config, pkgs, ... }:

{
  home.file.".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix-dotfiles/config/nvim";

  home.packages = with pkgs; [
    neovim
    imagemagick
    gnumake
    gcc
    ripgrep
    fd
    git
    luarocks
    lua51Packages.magick
    
    # --- LSPs, Formatters y Linters ---
    # Core
    stylua
    lua-language-server
    
    # Web & Frontend
		typescript-language-server
    tailwindcss-language-server
    vscode-langservers-extracted # Provee html, cssls, jsonls, eslint
    astro-language-server
    biome
    
    # Python & Markdown
    basedpyright
    ruff
    marksman
    
    # Java/Kotlin & LaTeX
    kotlin-language-server
    ktlint
    ktfmt
    texlab
    tex-fmt
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}
