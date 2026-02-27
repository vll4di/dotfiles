# dotfiles

My Arch Linux configuration files for a minimal suckless setup.

## Setup

- **WM**: dwm
- **Terminal**: st
- **Status bar**: slstatus
- **Launcher**: dmenu

## Patches

### dwm
- vanitygaps

### st
- alpha (transparency)

## Install

Clone the repo and copy the config files to your suckless source directories, then rebuild each tool:

```bash
cp dwm/config.h ~/dwm/config.h && cd ~/dwm && sudo make clean install
cp st/config.h ~/st/config.h && cd ~/st && sudo make clean install
cp slstatus/config.h ~/slstatus/config.h && cd ~/slstatus && sudo make clean install
```

## Screenshot

<!-- Add a screenshot here -->
