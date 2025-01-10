#!/usr/bin/env sh

nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko ./hosts/delltest/disko.nix
