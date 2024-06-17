{ config, pkgs, ... }: {
  home = {
    username = "sus";
    homeDirectory = "/home/sus";
    stateVersion = "24.05";
  };
  gtk = {
    enable = true;
    cursorTheme = {
      name = "Bibata-Modern-Ice";
    };
    theme = {
      name = "rose-pine-gtk";
      package = pkgs.rose-pine-gtk-theme;
    };
    iconTheme = {
      name = "rose-pine-icons";
      package = pkgs.rose-pine-icon-theme;
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
