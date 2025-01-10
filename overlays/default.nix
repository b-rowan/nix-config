{ inputs, ... }: {
  additions = final: _prev: import ../pkgs { pkgs = final; };

  # https://nixos.wiki/wiki/Overlays
  modifications = final: prev:
    {
    };
}
