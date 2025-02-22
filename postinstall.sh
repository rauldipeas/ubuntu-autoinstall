#!/bin/bash
set -e

sudo usermod -aG audio "$USER"
sudo apt install python3-tk
pipx install rtcqs

flatpak remote-add --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
flatpak install -y com.github.tchx84.Flatseal
flatpak install -y fm.reaper.Reaper
flatpak install -y org.gimp.GIMP
flatpak install -y org.kde.kdenlive
flatpak install -y org.pipewire.Helvum