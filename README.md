# Sain-Biswas's Arch + Hyprland Dotfiles

This repository contains my personal dotfiles and setup scripts for an Arch Linux system running the [Hyprland](https://github.com/hyprwm/Hyprland) dynamic tiling Wayland compositor. It is designed to provide a fully functional, aesthetic, and highly customizable desktop environment with a focus on modern tools, efficient workflows, and beautiful themes.

---

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Directory Structure](#directory-structure)
- [Components & Highlights](#components--highlights)
- [Theming & Custom Scripts](#theming--custom-scripts)
- [Package List](#package-list)
- [Screenshots](#screenshots)
- [Credits](#credits)

---

## Features

- **Hyprland**: Dynamic tiling window manager with custom configuration.
- **Arch Linux**: Rolling release base with AUR support (`paru`).
- **SDDM**: Simple Desktop Display Manager for graphical logins.
- **Zsh**: Highly customized shell environment with [zinit](https://github.com/zdharma-continuum/zinit) and advanced plugins.
- **Kitty & Alacritty**: Beautiful, GPU-accelerated terminal emulators with dynamic color schemes.
- **Rofi**: Application launcher and dynamic menu.
- **Matugen**: Dynamic color generation for themes and GTK integration.
- **Swaync**: Wayland notification center with custom colors.
- **Custom Scripts**: For theming, color picking, player control, and utility functions.
- **Developer Tools**: Ready-to-go setups for Node.js (via nvm), Bun, Rust, and more.

---

## Installation

### 1. Prerequisites

- Fresh Arch Linux installation.
- Internet connection.
- `git` and `stow` installed (the script will handle these if not present).

### 2. Clone the Repository

```bash
git clone https://github.com/Sain-Biswas/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 3. Run the Installation Script

The `install.sh` script automates the majority of the setup:

```bash
chmod +x install.sh
./install.sh
```

**What this script does:**

- Installs essential packages and `stow` for dotfile management.
- Sets up AUR helper (`paru`).
- Installs all packages listed in `packages.lst`.
- Installs Node.js (via `nvm`), Bun, and pnpm.
- Clones and enables TPM for tmux plugins.
- Changes the default shell to Zsh.
- Enables and starts SDDM for graphical login.
- Cleans up package cache and starts Hyprland session.

---

## Directory Structure

```
dotfiles/
├── .config/
│   ├── hypr/                # Hyprland and lock scripts
│   ├── swaync/              # Sway notification center config
│   ├── matugen/             # Dynamic theme templates
│   └── ...
├── .local/bin/              # Custom utility scripts (theme, colorpicker, airplane mode, etc.)
├── .zshrc                   # Zsh configuration
├── alias.zsh                # Custom shell aliases
├── matugen.zsh              # Matugen Zsh integration
├── packages.lst             # List of all required packages
├── install.sh               # Installation script
└── README.md
```

---

## Components & Highlights

### Hyprland

- All Hyprland configuration lives in `.config/hypr/`, including lock screen scripts and custom keybindings.
- Lock screen features dynamic greetings (`greeting.sh`) based on time of day and user.
- Player controls and media info via `playerctl.sh`.

### Shell Environment

- Zsh with `zinit` plugin manager.
- Plugins: syntax highlighting, completions, fzf, zoxide, starship prompt.
- Node (nvm), Bun, and pnpm environments are auto-configured in `.zshrc`.

### Theming

- `theme-change.sh` for on-the-fly theme switching.
- Dynamic color generation and propagation to terminals, GTK, and other apps using Matugen.
- Kitty and Alacritty both follow the current theme.
- GTK theme updates via template files in `.config/matugen/templates/`.

### Utilities

- `utility-colorpicker.sh`: Advanced color picker with notification and clipboard integration.
- `utility-airplane-mode.sh`: Quickly toggle network radios.

### Notification Center

- Swaync with custom colors and style for seamless integration with the overall theme.

---

## Theming & Custom Scripts

- **Matugen**: Generates cohesive color schemes for terminals, GTK, and other apps.
- **theme-change.sh**: Applies new themes system-wide and updates configs for terminals and other apps.
- **greeting.sh**: Personalized lock screen greetings based on the time of day.
- **playerctl.sh**: Extracts currently playing media info for lock screens and status bars.

---

## Package List

All required packages (including Hyprland, SDDM, common utilities, and programming environments) are listed in `packages.lst`. The installation script reads from this list to ensure your system installs everything needed in one go.

---

## Screenshots

_Add screenshots of your desktop, lock screen, and key features here!_

---

## Credits

- [Hyprland](https://github.com/hyprwm/Hyprland)
- [Matugen](https://github.com/InioX/matugen)
- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [Alacritty](https://github.com/alacritty/alacritty)
- [Zinit](https://github.com/zdharma-continuum/zinit)
- [Starship](https://starship.rs/)
- [All open-source contributors & the Arch Linux community](https://archlinux.org/)

---

## License

This repository is provided as-is for personal use or as inspiration. Feel free to fork and adapt for your own workflow!

---

## Contact

For questions, feedback, or suggestions, open an issue or reach out via [GitHub](https://github.com/Sain-Biswas).

---
