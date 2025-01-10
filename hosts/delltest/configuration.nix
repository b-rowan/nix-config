{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    "${builtins.fetchTarball "https://github.com/nix-community/disko/commits/master.tar.gz"}/module.nix"
    ./disko.nix
    ./hardware-configuration.nix
    ../common/home-manager.nix
    ../common/users.nix
    ../common/locale.nix
  ];

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking
  networking.hostName = "delltest";
  networking.networkmanager.enable = true;

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  nix = {
    settings = {
      experimental-features = "nix-command flakes";
    };
  };

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
    };
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "23.05";
}
