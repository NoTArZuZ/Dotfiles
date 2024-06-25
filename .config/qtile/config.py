# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from libqtile import bar, layout, qtile, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from qtile_extras import widget
from qtile_extras.widget.decorations import BorderDecoration

import os
import subprocess
import colors

mod = "mod4"
home = os.path.expanduser('~')

keys = [
    # Focus Movement.
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Window Movement.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    # Window Resizing.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod, "control"], "equal", lazy.layout.grow(), desc="Grow window"),
    Key([mod, "control"], "minus", lazy.layout.shrink(), desc="Shrink window"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Split Sides of Stack.
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(), desc="Toggle between split and unsplit sides of stack"),
    # Cycle Layouts.
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    # Kill Focused Window.
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    # Float and Fullscreen Focused Window.
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen on the focused window"),
    Key([mod], "t", lazy.window.toggle_floating(), desc="Toggle floating on the focused window"),
    # Reload and Shutdown Qtile
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    # Spawn Programs
    Key([mod], "Return", lazy.spawn("st"), desc="Launch terminal"),
    Key([mod], "e", lazy.spawn("st fish -c yazi"), desc="Launch yazi"),
    Key([mod], "b", lazy.spawn("firefox"), desc="Launch firefox"),
    Key([mod], "r", lazy.spawn("dmenu_run -bw 2 -c -l 10"), desc="Spawn a program using dmenu"),
    Key([mod, "control"], "Return", lazy.spawn(home + "/.config/qtile/scripts/run-desktop"), desc="Run desktop file"),
    Key([mod], "g", lazy.spawn(home + "/.config/qtile/hub"), desc="Script Hub"),
    Key([mod, "shift"], "n", lazy.spawn("dunstctl history-pop"), desc="Send previous notification"),
]

# Add key bindings to switch VTs in Wayland.
# We can't check qtile.core.name in default config as it is loaded before qtile is started
# We therefore defer the check until the key binding is run by using .when(func=...)
for vt in range(1, 8):
    keys.append(
        Key(
            ["control", "mod1"],
            f"f{vt}",
            lazy.core.change_vt(vt).when(func=lambda: qtile.core.name == "wayland"),
            desc=f"Switch to VT{vt}",
        )
    )


groups = [Group(i) for i in "12345"]
# groups = [Group(i, label="●︎") for i in "12345"] # circles instead of numbers

for i in groups:
    keys.extend(
        [
            # mod1 + group number = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + group number = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + group number = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            #     desc="move focused window to group {}".format(i.name)),
        ]
    )

colors = colors.DoomOne

layout_defaults = {
    "border_width": 2,
    "margin": 8,
    "border_focus": colors[6],
    "border_normal": colors[0],
    "single_margin": 0,
    "single_border_width": 0,
}

layouts = [
    # layout.Columns(border_focus_stack=["#d75f5f", "#8f3d3d"], border_width=4),
    layout.MonadTall(**layout_defaults),
    layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(**layout_defaults),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font="Ubuntu Bold",
    fontsize=12,
    foreground=colors[1],
    padding=3,
    background=colors[0]
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.Image(
                  filename = "~/.config/qtile/icon.png",
                  scale = True,  
                ),
                widget.CurrentLayoutIcon(
                    padding = 4,
                    scale = 0.7
                ),
                widget.GroupBox(
                    borderwidth = 2,
                    # highlight_method = "text", # you can use it with circles
                    highlight_method = "line",
                    highlight_color = colors[2],
                    this_current_screen_border = colors[6],
                    active = colors[6],
                    inactive = colors[1]
                ),
                widget.Prompt(),
                widget.WindowName(
                    foreground = colors[6],
                ),
                widget.Spacer(length = 8),
                widget.Mpd2(
                    foreground = colors[7],
                    status_format = "{play_status} {artist} - {title} [{repeat}{random}{single}{consume}]",
                    idle_format = "{play_status} {idle_message} [{repeat}{random}{single}{consume}]",
                    color_progress = "9678dd",
                    decorations=[
                        BorderDecoration(
                            colour = colors[7],
                            border_width = [0, 0, 2, 0],
                        )
                    ],
                ),
                widget.Spacer(length = 8),
                widget.DF(
                  update_interval = 60,
                  foreground = colors[3],
                  partition = '/',
                  format = '{uf}{m} free',
                  fmt = 'Disk: {}',
                  visible_on_warn = False,
                    decorations=[
                        BorderDecoration(
                            colour = colors[3],
                            border_width = [0, 0, 2, 0],
                        )
                    ],
                ),
                widget.Spacer(length = 8),
                widget.Memory(
                    foreground = colors[4],
                    format = '{MemUsed: .0f}{mm}',
                    fmt = 'Ram: {}',
                    decorations=[
                        BorderDecoration(
                            colour = colors[4],
                            border_width = [0, 0, 2, 0],
                        )
                    ],
                ),
                widget.Spacer(length = 8),
                widget.CPU(
                  format = 'Cpu: {load_percent}%',
                  foreground = colors[5],  
                    decorations=[
                        BorderDecoration(
                            colour = colors[5],
                            border_width = [0, 0, 2, 0],
                        )
                    ],
                ),
                widget.Spacer(length = 8),
                widget.PulseVolume(
                    foreground = colors[7],
                    fmt = 'Vol: {}',
                    decorations=[
                        BorderDecoration(
                            colour = colors[7],
                            border_width = [0, 0, 2, 0],
                        )
                    ],
                ),
                widget.Spacer(length = 8),
                widget.Clock(
                    format="%Y-%m-%d %a %I:%M %p",
                    foreground = colors[8],
                    decorations=[
                        BorderDecoration(
                            colour = colors[8],
                            border_width = [0, 0, 2, 0],
                        )
                    ],
                ),
                widget.Spacer(length = 8),
                widget.Systray(padding = 3),
                widget.Spacer(length = 8),
            ],
            24,
            # margin = [ 8, 12, 2, 12 ],
            # background = colors[0], # Uncomment this line to enable bar transparency
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
        # You can uncomment this variable if you see that on X11 floating resize/moving is laggy
        # By default we handle these events delayed to already improve performance, however your system might still be struggling
        # This variable is set to None (no cap) by default, but you can set it to 60 to indicate that you limit it to 60 events per second
        # x11_drag_polling_rate = 60,
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
floats_kept_above = True
cursor_warp = False
floating_layout = layout.Floating(
    border_width = 0,
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
        Match(title="nsxiv"),
        Match(wm_class="pavucontrol"),
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

@hook.subscribe.startup_once
def start_once():
    subprocess.call([home + '/.config/qtile/autostart.sh'])

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
