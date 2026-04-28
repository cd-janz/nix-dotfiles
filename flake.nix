{
  description = "Orquestation Master";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ags.url = "github:aylur/ags";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let 
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      nixosConfigurations.linkeddreams = nixpkgs.lib.nixosSystem {
        inherit system;

	specialArgs = { inherit inputs; };

	modules = [
	  ./hosts/linkeddreams/configuration.nix
	  ./modules

	  home-manager.nixosModules.home-manager {
	    home-manager.useGlobalPkgs = true;
	    home-manager.useUserPackages = true;

	    home-manager.users.janz = import ./users/janz/home.nix;

	    home-manager.extraSpecialArgs = { inherit inputs; };
	  }
	];
      };
    };
}
