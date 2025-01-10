{
  imports = [
    ../features/cli
    ../features/desktop
    ./home.nix
  ];

  features = {
    cli = {
      fish.enable = true;
      fzf.enable = true;
      neofetch.enable = true;
    };
    desktop = {
      fonts.enable = true;
      hyprland.enable = true;
      wayland.enable = true;
    };
  };

  wayland.windowManager.hyprland = {
    settings = {
      device = [
        {
          name = "keyboard";
          kb_layout = "us";
        }
        {
          name = "mouse";
          sensitivity = -0.5;
        }
      ];
      monitor = [
        ", preferred, auto, 1"
      ];
    };
  };
}
