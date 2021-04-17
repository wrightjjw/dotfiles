# Josh's dotfiles
I use these on linux.
How I use it is keeping the files in my repo,
and then linking them to the places they should go.
Those places are outlined below.
Currently using machines running Arch and Gentoo
but theoretically should work on any Linux, or even other UNIX-likes.
(Maybe even Windows, if you know where to put them...)

If you're interested in some of my other system customizations,
you should check out my builds of [st](https://github.com/wrightjjw/st)
and [dwm](https://github.com/wrightjjw/dwm).

## Misc Requirements/Options
These are some extras that don't come in the repo or associated programs.
You'll have to manually install them.
- zsh config uses the zsh syntax highlighting plugin.
- GUI monospace font is Hack. (used in vscode)

## Installation script
The provided installation script `install.sh`
will create symoblic links to the files in your local repo
in thier proper locations.
This is currently the only defined behavior,
though other options will likely be implemented.


## Programs

### alacritty
- alacritty.yml -> ~/.config/alacritty/alacritty.yml

### dunst
- `dunstrc` -> `~/.config/dunst/dunstrc`

### polybar
- `config` -> ~/.config/polybar/config

### vim
- `vimrc` -> `~/.vimrc`

### zsh
Everthing in the zsh folder should link straight to home.
These are hidden files (actual dotfiles).
This includes `.zshrc` and `.zshenv`.

### vscode
- `settings.json` -> `~/.config/Code/User/settings.json`.

### starship
- `starship.toml` -> `~/.config/starship.toml`

## Scripts
There is a scripts folder containing some scripts used by the wm and status bar.
I keep these in `~/.local/bin`, which is included in `PATH` by `.zshrc`.
The installation script will place these scripts there.

