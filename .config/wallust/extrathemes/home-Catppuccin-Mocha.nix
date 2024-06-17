{ config, pkgs, ... }: {
  home = {
    username = "sus";
    homeDirectory = "/home/sus";
    stateVersion = "24.05";
  };
  gtk = {
    enable = true;
    catppuccin = {
      enable = true;
      icon.enable = true;
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
    };
    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
  qt = {
    enable = true;
    platformTheme = "gtk";
    style = {
      name = "gtk2";
    };
  };
  programs.home-manager.enable = true;
}
