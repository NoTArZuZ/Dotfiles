if status is-interactive
    set fish_greeting
    zoxide init fish | source
    starship init fish | source
    fastfetch
    # Commands to run in interactive sessions can go here
end
