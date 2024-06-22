if status is-interactive
    # disable fish greeting
    set fish_greeting
    # abbreviations
    abbr nixswitch "sudo nixos-rebuild switch --flake ."
    # aliases
    alias ls="eza --icons -a1"
    alias ll="eza --icons --git -al"
    alias tree="eza --icons -aT"
    alias config="git -C $HOME/Dotfiles/"
    # initialization of programs
    zoxide init fish | source
    starship init fish | source
    # vim mode
    function fish_user_key_bindings
        # fish_default_key_bindings
        fish_vi_key_bindings
    end
    # cursor shapes
    set fish_cursor_default block
    set fish_cursor_insert block
    set fish_cursor_replace_one underscore
    set fish_cursor_replace underscore
    set fish_cursor_external block
    set fish_cursor_visual block
    # colors
    set fish_color_command green
    set fish_color_quote cyan
    set fish_color_param magenta
    set fish_color_valid_path yellow --underline
    # commands on start
    fastfetch
    # Commands to run in interactive sessions can go here
end
