# How to configure my dotfiles for your preference

## qtile/config.py

### Workspace circles instead of numbers in bar:

```
Uncomment:
96
172
Comment:
95
173
174
Edit:
175 this_current_screen_border = colors[4],
```

### Floating bar:

```
Uncomment:
261
```

### Transparent bar:

```
Uncomment:
262
```

### Enable single window margins and borders:

```
Comment:
129
130
```

### No single window margin and border:

```
Uncomment:
131
132
Comment:
130
```

## ~/.Xresources

* To change st font uncomment one of the 14-16 lines.
* To change dmenu font edit 18 line.
* To change st border edit 10 line.

## picom/picom.conf

### Rounded corners:

```
Uncomment:
9
````

### Helix transparency:

```
Uncomment:
12
```
