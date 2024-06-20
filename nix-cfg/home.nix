{ config, pkgs, ... }: {
  home = {
    username = "sus";
    homeDirectory = "/home/sus";
    stateVersion = "24.05";
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
