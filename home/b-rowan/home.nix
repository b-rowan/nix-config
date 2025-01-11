# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  home = {
    username = lib.mkDefault "b-rowan";
    homeDirectory = lib.mkDefault "/home/b-rowan";
  };

  # Add stuff for your user as you see fit:
  programs.neovim.enable = true;
  programs.home-manager.enable = true;
  programs.git.enable = true;

  home.packages = with pkgs; [
    kitty
    steam
    wofi
  ];

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
