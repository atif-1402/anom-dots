# anom-Dotfiles

My personal Linux **dotfiles**, focused on a clean, minimal, and functional **Wayland rice** built around **Hyprland**.

> ⚠️ These dotfiles are tailored for my workflow. Use them as inspiration and adapt as needed.

> ⚠️ Make every script executable (by chmod +x filename.sh) or some utils not gonna work.

---
<table> <tr> <td align="center"><b>Desktop</b></td> <td align="center"><b>Hyprlock</b></td> </tr> <tr> <td> <img src="https://github.com/user-attachments/assets/b22c2f1d-b650-414e-91b1-6a8be84406bc" width="100%"> </td> <td> <img src="https://github.com/user-attachments/assets/e78884ce-bddb-4ff9-a166-35dca00072e3" width="100%"> </td> </tr> </table> <br> <table> <tr> <td align="center"><b>Rofi</b></td> <td align="center"><b>SwayNC + OSD</b></td> </tr> <tr> <td align="center"> <img src="https://github.com/user-attachments/assets/b558de08-b78f-485b-9749-32d51707f4ff" width="300"> </td> <td> <img src="https://github.com/user-attachments/assets/4a9043bb-464a-46a0-b274-f9d4db828343" width="100%"> </td> </tr> </table> <br> <table> <tr> <td align="center"><b>Waybar – Material Pills (Stable)</b></td> <td align="center"><b>Waybar – Minimal (Unstable)</b></td> </tr> <tr> <td> <img src="https://github.com/user-attachments/assets/12602c4a-19da-413e-82f7-180504db52e4" width="100%"> </td> <td> <img src="https://github.com/user-attachments/assets/de465e06-3983-4f5c-a684-01143d2bbf7d" width="100%"> </td> </tr> </table>

<p align="center">
  <a href="https://github.com/atif-1402/anom-dots/stargazers"><img src="https://img.shields.io/github/stars/atif-1402/anom-dots?color=057E6A&style=for-the-badge&logo=starship"></a>
  <a href="https://github.com/atif-1402/anom-dots/issues"><img src="https://img.shields.io/github/issues/atif-1402/anom-dots?color=057E6A&style=for-the-badge&logo=codecov"></a>
  <a href="https://github.com/atif-1402/anom-dots/network/members"><img src="https://img.shields.io/github/forks/atif-1402/anom-dots?color=8aadf4&style=for-the-badge&logo=jfrog-bintray"></a>
  <!-- <a href="https://github.com/atif-1402/anom-dots/blob/master/LICENSE"><img src="https://img.shields.io/badge/license-MIT-orange.svg?color=a6da95&style=for-the-badge&logo=mitsubishi"></a> -->
</p>

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

## 🛠️ Requirements

| Package | Description |
|-------|------------|
| **hyprland** | Wayland compositor |
| **waybar** | Status bar |
| **swaync** | Notification daemon |
| **swww** | Animated wallpaper daemon |
| **matugen** | Generate color schemes from wallpapers |
| **kitty** | GPU-accelerated terminal |
| **zsh** | Interactive shell |
| **rofi** | App launcher & menus |
| **pipewire** | Audio & video server |
| **wireplumber** | PipeWire session manager |
| **grim** | Screenshot utility |
| **slurp** | Screen region selector |
| **wf-recorder** | Screen recording |
| **pamixer** | Audio control |
| **playerctl** | Media control |
| **nautilus** | File manager |
| **hyprpicker** | Color Picker |
| **JetBrainsMono Nerd Font** | Terminal & UI font |

---
## 📂 Directory Structure

```bash
.config/
├── hypr/          # Hyprland configuration
├── waybar/        # Waybar themes & scripts
├── swaync/        # Notification styling
├── rofi/          # Rofi configs
├── swayosd/       # OSD styling
└── scripts/       # Custom scripts

.local/
├──share/
   ├── fonts       # Fonts Used in Hyprlock
   ├── rofi/themes # Themes for rofi (myrofi-in rofi theme selector) 

Wallpapers/        # Wallpapers

```
## ⌨️ Keybindings

> **Modifier:** `SUPER`

<details> <summary><b>🚀 Apps & Utilities</b></summary> <br> <table> <tr><th>Key</th><th>Action</th></tr> <tr><td>SUPER + Enter</td><td>Terminal (Kitty)</td></tr> <tr><td>SUPER + E</td><td>File Manager</td></tr> <tr><td>SUPER + Shift + B</td><td>Firefox</td></tr> <tr><td>SUPER + Space</td><td>App Launcher (Rofi)</td></tr> <tr><td>SUPER + Shift + Space</td><td>Reload Waybar</td></tr> <tr><td>CTRL + Space</td><td>Wallpaper Selector</td></tr> <tr><td>SUPER + Shift + E</td><td>Emoji Picker</td></tr> <tr><td>SUPER + Shift + I</td><td>Icon Picker</td></tr> <tr><td>SUPER + Shift + W</td><td>Waybar Theme Switcher</td></tr> <tr><td>SUPER + Alt + Space</td><td>Main Menu (Rofi)</td></tr> <tr><td>SUPER + L</td><td>Lock Screen</td></tr> </table> </details>
<details> <summary><b>🪟 Window Management</b></summary> <br> <table> <tr><th>Key</th><th>Action</th></tr> <tr><td>SUPER + W</td><td>Close Window</td></tr> <tr><td>SUPER + T</td><td>Toggle Floating</td></tr> <tr><td>SUPER + P</td><td>Pseudo Tiling</td></tr> <tr><td>SUPER + J</td><td>Toggle Split</td></tr> <tr><td>SUPER + Mouse Left</td><td>Move Window</td></tr> <tr><td>SUPER + Mouse Right</td><td>Resize Window</td></tr> </table> </details>
<details> <summary><b>🧭 Workspaces</b></summary> <br> <table> <tr><th>Key</th><th>Action</th></tr> <tr><td>SUPER + 1–9</td><td>Switch Workspace</td></tr> <tr><td>SUPER + 0</td><td>Workspace 10</td></tr> <tr><td>SUPER + Shift + 1–9</td><td>Move Window to Workspace</td></tr> <tr><td>SUPER + Shift + 0</td><td>Move Window to Workspace 10</td></tr> <tr><td>SUPER + Scroll</td><td>Cycle Workspaces</td></tr> </table> </details>
<details> <summary><b>🪄 Scratchpad</b></summary> <br> <table> <tr><th>Key</th><th>Action</th></tr> <tr><td>SUPER + S</td><td>Toggle Scratchpad</td></tr> <tr><td>SUPER + Shift + S</td><td>Move to Scratchpad</td></tr> </table> </details>
<details> <summary><b>📸 Screenshot</b></summary> <br> <table> <tr><th>Key</th><th>Action</th></tr> <tr><td>SUPER + Print</td><td>Screenshot</td></tr> <tr><td>Shift + Print</td><td>Color Picker</td></tr> </table> </details>
<details> <summary><b>🔊 🔆 Media & Brightness</b></summary> <br> <table> <tr><th>Key</th><th>Action</th></tr> <tr><td>XF86AudioRaiseVolume</td><td>Volume Up (OSD)</td></tr> <tr><td>XF86AudioLowerVolume</td><td>Volume Down (OSD)</td></tr> <tr><td>XF86AudioMute</td><td>Mute</td></tr> <tr><td>XF86MonBrightnessUp</td><td>Brightness Up</td></tr> <tr><td>XF86MonBrightnessDown</td><td>Brightness Down</td></tr> <tr><td>XF86AudioPlay</td><td>Play / Pause</td></tr> <tr><td>XF86AudioNext</td><td>Next Track</td></tr> <tr><td>XF86AudioPrev</td><td>Previous Track</td></tr> </table> </details>

## 🚀 Installation

> Automatic installer coming soon  
> Manual installation only for now.

Copy Paste the things you want.
