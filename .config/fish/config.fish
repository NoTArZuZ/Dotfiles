if status is-interactive
    set fish_greeting
    abbr nixswitch "sudo nixos-rebuild switch --flake ."
    alias ls="eza --icons -a1"
    alias ll="eza --icons --git -al"
    alias tree="eza --icons -aT"
    zoxide init fish | source
    starship init fish | source
    set fish_color_command green
    set fish_color_param magenta
    set fish_color_valid_path yellow --underline
    fastfetch
    # Commands to run in interactive sessions can go here
end
