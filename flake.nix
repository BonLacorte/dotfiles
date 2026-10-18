{
  description = "Ubuntu WSL user environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Official Herdr prebuilt binary packaging
    herdr-nix.url = "github:herdrdev/herdr-nix";
  };

  outputs = { nixpkgs, home-manager, herdr-nix, ... }: {
    homeConfigurations.costa = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };

      modules = [
        ./home.nix

        # Add Herdr alongside existing Home Manager packages
        {
          home.packages = [
            herdr-nix.packages.x86_64-linux.default
          ];
        }
      ];
    };
  };
}
