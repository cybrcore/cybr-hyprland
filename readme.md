<img src="https://raw.githubusercontent.com/cybrcore/cybrcore/refs/heads/main/assets/repo-banners/cybr-hyprland-banner-top.png"/>

# Showcase
<img src="https://raw.githubusercontent.com/cybrcore/cybrcore/refs/heads/main/assets/showcase/cybr-hyprland-hero1.png">
<p align="center">
  <em>Left-to-right: Neovim, rofi-launcher, cava, fastfetch, custom script ↗</em>
</p>
<br>
<img src="https://raw.githubusercontent.com/cybrcore/cybrcore/refs/heads/main/assets/showcase/cybr-hyprland-hero2.png">
<p align="center">
  <em>Left-to-right: stacked micro, yazi, broot ↗</em>
</p>

> [!CAUTION]
> Purpose of this repo has changed. As of now, it only serves the theme files (`theme.lua`, `colors.lua`, `variables.lua` and `/walls` wallpapers).  
> There are no scripts, keybinds, windowrules, nor hypridle or hyprlock.  
> Intended use case is "user has hyprland configured (either vanilla or modified) → user downloads files from this repo → user plugs downloaded files into their own hyprland config".  

> [!WARNING]  
> For Wallpaper switcher ([rofi](../rofi/readme.md)) to work as intended, you need latest `hyprpaper` -- update with `sudo pacman -Su hyprpaper`  
> `CTRL + SUPER + W` launches the Wallpaper switcher, `ENTER` confirms the selection.  
> If the selected wallpaper gets stuck, you can reset the timer by repeatedly selecting the wallpaper again.  

# Steps
## 0. Before you start
- Make sure [Geist Mono Nerd Font](https://www.nerdfonts.com/font-downloads) is installed, you can do that from terminal with:
```bash
curl -L https://github.com/ryanoasis/nerd-fonts/releases/latest/download/GeistMono.zip -o GeistMono.zip
mkdir -p ~/.local/share/fonts
unzip GeistMono.zip -d ~/.local/share/fonts/GeistMono
fc-cache -fv
```
- Make sure hyprland is installed: `sudo pacman -S hyprland`
- Make sure `git` is installed: `sudo pacman -S git`
- See [Installation Guide](https://github.com/cybrcore/cybrdots/blob/main/INSTALL.md) if you're coming from [cybrdots](https://github.com/cybrcore/cybrdots) and haven't set up prerequisites yet
- [hyprland Github](https://github.com/hyprwm/Hyprland) | [Arch Wiki](https://wiki.archlinux.org/title/Hyprland)

> [!IMPORTANT]
> Hyprland should be updated to latest (*v0.56.0 or higher*) for the config to properly work.  
> **If you already have Hyprland installed**: check your version with `hyprland -v` and either update with `sudo pacman -Su hyprland` or proceed with installation.

## 1. Backup existing config (if any)
```sh
[ -d ~/.config/hypr ] && mv ~/.config/hypr ~/.config/hypr.backup
```

## 2. Download and install hyprland configs
```sh
git clone --depth=1 --filter=blob:none --no-checkout https://github.com/cybrcore/cybr-hyprland.git && cd cybr-hyprland && git sparse-checkout init --cone && git sparse-checkout set hypr && git checkout main && mv hypr ~/.config/ && cd ~ && rm -rf cybr-hyprland
```
↑ Unsure what this does? [Explanation](https://github.com/cybrcore/cybrdots/blob/main/INSTALL.md#How-sparse-checkout-works)  

## 3. Verify installation
```sh
ls -R ~/.config/hypr
```

You should see: `cybr-hyprland.lua`, `theme.lua`, `variables.lua`, `walls/` directory with `chyoda-2560x1440.png` and other pngs, and `hyprpaper.conf`,

### Expected file structure

```
~/.config/hypr/
├── cybr-hyprland.lua       # main settings
├── theme.lua               # theme settings
├── vars.lua                # variables used in theme
├── colors.lua              # colors used in theme
└── walls/                  # wallpapers
    ├── chyoda-2560x1440.png
    ├── ikebukuro-2560x1440.png
    └── ...
```

## 4. Configure for your system
Change the hyprland config so it sees the installed config files.

```sh
$EDITOR ~/.config/hypr/hyprland.conf
```

Paste content of `cybr-hyprland.lua` at the top of your config file

```lua
---------------------------------------
-- cybrcore    lucid hyprland config file
-- Project:    https://github.com/cybrcore/cybr-hyprland
-- Author:     scherrer-txt   |   License:     GPL-3.0
-- Source:     ~/.config/hypr/hyprland.lua
---------------------------------------

configDir = os.getenv("HOME") .. "/.config/hypr"

require("theme")

-- Rest of your hyprland.lua config
```

## 5. Reload hyprland
Final step is to reload the config with:
```sh
hyprctl reload
```
