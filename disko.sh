#!/usr/bin/env sh

nix --experimental-features "nix-command flakes" run 'github:nix-community/disko/latest#disko-install' -- --write-efi-boot-entries --flake .#delltest --disk main /dev/sda
