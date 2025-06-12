{
  pkgs,
  # system ? "x86_64-linux",
}: let
in
  # Instantiate nixpkgs with the given system and allow unfree packages
  # pkgs = import inputs.nixpkgs {
  #   inherit system;
  #   config.allowUnfree = true;
  #   overlays = [
  #     # Add overlays if needed, e.g., inputs.neovim-nightly-overlay.overlays.default
  #   ];
  # };
  {
    default = pkgs.mkShell {
      name = "meeeeh";
      packages = with pkgs; [
        python3Packages.numpy
        python3Packages.pandas
        python3Packages.folium
        python3Packages.matplotlib
      ];

      shellHook = ''
        echo "Welcome to the development shell!"
      '';
    };
  }
