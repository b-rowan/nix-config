{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.b-rowan = {
      initialPassword = "7609";
      isNormalUser = true;
      description = "Brett";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFTT22I8k3E4tp+AFgIR/5wX7bZhDr0tJMkVN73kp4Y9 brett@DESKTOP-7QTCKO3"
      ];
    extraGroups = [
      "wheel"
      "networkmanager"
      "libvirtd"
      "flatpak"
      "audio"
      "video"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
    ];
    packages = [inputs.home-manager.packages.${pkgs.system}.default];
  };
  home-manager.users.b-rowan =
    import ../../../home/b-rowan/${config.networking.hostName}.nix;
}
