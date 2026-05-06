# dotfiles

Personal builds of [suckless](https://suckless.org/) software used on my **Artix Linux** setup.

## Programs
- **dwm**: dynamic window manager
- **st**: simple terminal
- **dmenu**: dynamic menu
- **slstatus**: status monitor

## Installation
Navigate into the desired directory and run:
```bash
sudo make clean install

Dependencies

Ensure you have the base development tools and X11 libraries installed:

    Artix/Arch: sudo pacman -S base-devel libx11 libxft libxinerama


### To apply this to your repo:
1. Create the file: `nano README.md`
2. Paste the text above.
3. Save and push:
   ```bash
   git add README.md
   git commit -m "add readme"
   git push origin main
