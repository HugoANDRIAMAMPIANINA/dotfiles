# dotfiles

My dotfiles used for system config

## About

### Files and folders

- Dowloaded Packages list (and ones from AUR) : [installs.txt](installs.txt)
- Hyprland configuration files
  - Hyprland general config: [hyprland.conf](./hypr/hyprland.conf)
  - Hyprlock (for custom lockscreen): [hyprlock.conf](./hypr/hyprlock.conf)
  - Hypridle (for screen saving and sleep mode): [hypridle.conf](./hypr/hypridle.conf)
  - Hyprpaper (for wallpapers): [hyprpaper.conf](./hypr/hyprpaper.conf)
  - Catppuccin Latte (Color Scheme) for hyprland: [latte.conf](./hypr/latte.conf)

### Scripts

|Script|Description|
|-|-|
|init.sh|Install yay then install backup pacakges from installs.txt. Copy config files and folders and .bashrc to local files.|
|backup.sh|List installed pacakges in installs.txt. Copy local config files and folders and .bashrc to repo files.|
|matcha.sh|Install matcha|

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
