# anom-Dotfiles

My personal Linux **dotfiles**, focused on a clean, minimal, and functional **Wayland rice** built around **Hyprland**.

> ⚠️ These dotfiles are tailored for my workflow. Use them as inspiration and adapt as needed.

---
<table> <tr> <td align="center"><b>Desktop</b></td> <td align="center"><b>Hyprlock</b></td> </tr> <tr> <td> <img src="https://github.com/user-attachments/assets/b22c2f1d-b650-414e-91b1-6a8be84406bc" width="100%"> </td> <td> <img src="https://github.com/user-attachments/assets/e78884ce-bddb-4ff9-a166-35dca00072e3" width="100%"> </td> </tr> </table> <br> <table> <tr> <td align="center"><b>Rofi</b></td> <td align="center"><b>SwayNC + OSD</b></td> </tr> <tr> <td align="center"> <img src="https://github.com/user-attachments/assets/b558de08-b78f-485b-9749-32d51707f4ff" width="300"> </td> <td> <img src="https://github.com/user-attachments/assets/4a9043bb-464a-46a0-b274-f9d4db828343" width="100%"> </td> </tr> </table> <br> <table> <tr> <td align="center"><b>Waybar – Material Pills (Stable)</b></td> <td align="center"><b>Waybar – Minimal (Unstable)</b></td> </tr> <tr> <td> <img src="https://github.com/user-attachments/assets/12602c4a-19da-413e-82f7-180504db52e4" width="100%"> </td> <td> <img src="https://github.com/user-attachments/assets/de465e06-3983-4f5c-a684-01143d2bbf7d" width="100%"> </td> </tr> </table>

---

## ✨ Features

- 🪟 Hyprland (Wayland compositor)
- 🎨 Color By Matugen inclueds Waybar, Swaync, Kitty, Borders and Rofi
- 📊 Waybar with multiple themes + theme switcher
- 🔔 SwayNC notification center
- 🎛️ Custom Volume OSD
- 🎨 Animated wallpapers using swww (GIF and on hyprlock no gif)
- 🧠 Rofi launcher & utilities
- 📼 Screen recording scripts (wf-recorder)
- 🧩 Modular shell scripts

---

## 📂 Directory Structure

```bash
.config/
├── hypr/        # Hyprland configuration
├── waybar/      # Waybar themes & scripts
├── swaync/      # Notification styling
├── rofi/        # Rofi configs
├── swayosd/     # OSD styling
└── scripts/     # Custom scripts

wallpapers/     # Wallpapers (optional)

```
## ⌨️ Keybindings

> **Modifier:** `SUPER`

### 🚀 Apps & Utilities

| Key | Action |
|----|-------|
| `SUPER + Enter` | Terminal (Kitty) |
| `SUPER + E` | File Manager |
| `SUPER + Shift + B` | Firefox |
| `SUPER + Space` | App Launcher (Rofi) |
| `SUPER + Shift + Space` | Reload Waybar |
| `CTRL + Space` | Wallpaper Selector |
| `SUPER + Shift + E` | Emoji Picker |
| `SUPER + Shift + I` | Icon Picker |
| `SUPER + Shift + W` | Waybar Switcher |
| `SUPER + Alt + Space` | Main Menu Rofi |
| `SUPER + L` | Lock Screen |
| `SUPER + X` | Logout Menu |

### 🪟 Window Management

| Key | Action |
|----|-------|
| `SUPER + W` | Close Window |
| `SUPER + T` | Toggle Floating |
| `SUPER + P` | Pseudo Tiling |
| `SUPER + J` | Toggle Split |
| `SUPER + Mouse Left` | Move Window |
| `SUPER + Mouse Right` | Resize Window |

### 🧭 Workspaces

| Key | Action |
|----|-------|
| `SUPER + 1–9` | Switch Workspace |
| `SUPER + 0` | Workspace 10 |
| `SUPER + Shift + 1–9` | Move Window |
| `SUPER + Shift + 0` | Move to Workspace 10 |
| `SUPER + Scroll` | Cycle Workspaces |

### 🪄 Scratchpad

| Key | Action |
|----|-------|
| `SUPER + S` | Toggle Scratchpad |
| `SUPER + Shift + S` | Move to Scratchpad |

### 📸 Screenshot

| Key | Action |
|----|-------|
| `SUPER + Print` | Screenshot |
| `Shift + Print` | Color Picker |

### 🔊 🔆 Media & Brightness

| Key | Action |
|----|-------|
| `XF86AudioRaiseVolume` | Volume Up (OSD) |
| `XF86AudioLowerVolume` | Volume Down (OSD) |
| `XF86AudioMute` | Mute |
| `XF86MonBrightnessUp` | Brightness Up |
| `XF86MonBrightnessDown` | Brightness Down |
| `XF86AudioPlay` | Play / Pause |
| `XF86AudioNext` | Next Track |
| `XF86AudioPrev` | Previous Track |
