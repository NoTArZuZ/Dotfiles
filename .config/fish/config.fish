if status is-interactive
    set fish_greeting
    alias nixswitch="sudo nixos-rebuild switch --flake ."
    alias ls="eza --icons -a1"
    alias ll="eza --icons --git -al"
    alias tree="eza --icons -aT"
    zoxide init fish | source
    starship init fish | source
    fastfetch
    # Commands to run in interactive sessions can go here
end
