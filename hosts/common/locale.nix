{ inputs, outputs, ... }: {
    # Set your time zone.
    time.timeZone = "America/Edmonton";

    # Select internationalisation properties.
    i18n.defaultLocale = "en_CA.UTF-8";

    # Configure keymap in X11
    services.xserver.xkb = {
        layout = "us";
        variant = "";
    };
}
