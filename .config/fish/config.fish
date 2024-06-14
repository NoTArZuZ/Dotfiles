if status is-interactive
    set fish_greeting
    alias nixswitch="sudo nixos-rebuild switch --flake ~/nix-cfg"
    zoxide init fish | source
    starship init fish | source
    fastfetch
    # Commands to run in interactive sessions can go here
end
