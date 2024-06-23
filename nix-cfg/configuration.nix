# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Yekaterinburg";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Enable fstrim for better SSD lifetime.
  services.fstrim = {
    enable = true;
    interval = "weekly";
  };

  # Enable mpd for music.
  services.mpd = {
    enable = true;
    musicDirectory = "/home/sus/Music";
    user = "sus";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My Pipewire Output"
      }
    '';
  };
  systemd.services.mpd.environment = {
    XDG_RUNTIME_DIR = "/run/user/1000";
  };

  # Polkit-gnome systemd service.
  systemd.user.services.polkit-gnome-authentication-agent-1 = {
    description = "polkit-gnome-authentication-agent-1";
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
      RestartSec = 1;
      TimeoutStopSec = 10;
    };
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable GPU drivers for X11.
  services.xserver.videoDrivers = [ "amdgpu" ];

  # Enable some desktop services.
  services.libinput.enable = true;
  security.polkit.enable = true;
  services.udisks2.enable = true;
  services.xserver.updateDbusEnvironment = true;

  # Change mouse acceleration to flat.
  services.libinput.mouse.accelProfile = "flat";

  # Enable the lightdm service.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.displayManager.lightdm.greeters.gtk.enable = false;
  services.xserver.displayManager.lightdm.greeters.slick.enable = true;
  services.xserver.displayManager.lightdm.greeters.slick.theme.name = "Qogir-Dark";
  services.xserver.displayManager.lightdm.greeters.slick.iconTheme.name = "Qogir";

  # Enable qtile
  services.xserver.windowManager.qtile.enable = true;
  services.xserver.windowManager.qtile.extraPackages = p: with p; [ qtile-extras ];

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sus = {
    isNormalUser = true;
    description = "sus";
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  # Install some programs.
  programs.firefox.enable = true;
  programs.fish.enable = true;
  programs.dconf.enable = true;

  # OpenGL support.
  hardware.opengl.enable = true;
  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;

  # Allow unfree packages.
  nixpkgs.config.allowUnfree = true;

  # Enable NixOS flakes support.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Install system packages.
  environment.systemPackages = with pkgs; [
  wget
  curl
  git
  vim
  helix
  fastfetch
  vesktop
  pavucontrol
  picom
  bibata-cursors
  yazi
  htop
  nsxiv
  feh
  (wrapOBS { plugins = [ obs-studio-plugins.obs-gstreamer obs-studio-plugins.obs-vaapi ]; })
  dunst
  wallust
  libnotify
  radeontop
  xclip
  xdotool
  maim
  zoxide
  davinci-resolve
  translate-shell
  colorpicker
  starship
  vlc
  mpc-cli
  ncmpcpp
  yt-dlp
  stow
  polkit_gnome
  eza
  unzip
# themes
  # gruvbox-dark
  gruvbox-dark-gtk
  # Dracula
  dracula-theme
  # Qogir-Dark
  qogir-theme
# icon themes
  # Papirus-Dark
  papirus-icon-theme
  # Qogir
  qogir-icon-theme
  # Dracula
  dracula-icon-theme
# home-manager
  home-manager
  (dmenu.overrideAttrs (oldAttrs: rec {
    src = builtins.fetchTarball {
      url = "https://github.com/NoTArZuZ/dmenu-sus/archive/master.tar.gz";
    };
    buildInputs = oldAttrs.buildInputs ++ [ xorg.libX11 xorg.libXft xorg.libXinerama fontconfig xorg.libXrender freetype ];
  }))
  (st.overrideAttrs (oldAttrs: rec {
    src = builtins.fetchTarball {
      url = "https://github.com/NoTArZuZ/st-sus/archive/master.tar.gz";
    };
    buildInputs = oldAttrs.buildInputs ++ [ harfbuzz fontconfig xorg.libX11 xorg.libXft xorg.libXcursor libsixel imlib2 gd ];
  }))
  ];

  # Install fonts.
  fonts.packages = with pkgs; [
    ubuntu_font_family
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  # Install OpenGL extra packages.
  hardware.opengl.extraPackages = with pkgs; [
    rocmPackages.clr.icd
  ];

  # Set default text editor.
  environment.variables.EDITOR = "hx";

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ 80 443 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?

}
