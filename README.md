# dotfiles

My dotfiles used for system config

## About

- Dowloaded Packages list (and ones from AUR) : [installs.txt](installs.txt)
- Hyprland configuration files
  - Hyprland general config: [hyprland.conf](./hypr/hyprland.conf)
  - Hyprlock (for custom lockscreen): [hyprlock.conf](./hypr/hyprlock.conf)
  - Hypridle (for screen saving and sleep mode): [hypridle.conf](./hypr/hypridle.conf)
  - Hyprpaper (for wallpapers): [hyprpaper.conf](./hypr/hyprpaper.conf)
  - Catppuccin Latte (Color Scheme) for hyprland: [latte.conf](./hypr/latte.conf)

## Usage

```bash
cd dotfiles/

# Give files permission to be executed
chmod +x init.sh backup.sh
```

Copy repo config files to local
```bash
./init.sh
```

Copy local config files to the repo
```bash
./backup.sh
```
