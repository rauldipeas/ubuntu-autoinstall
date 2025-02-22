#!/bin/bash
set -e

# flatpaks
## flatseal
flatpak install -y com.github.tchx84.Flatseal
## gimp
flatpak install -y org.gimp.GIMP
## helvum
flatpak install -y org.pipewire.Helvum
## kdenlive
flatpak install -y org.kde.kdenlive
## pwvucontrol
flatpak install -y com.saivert.pwvucontrol
## reaper
flatpak install -y fm.reaper.Reaper

# pipewire settings
mkdir -pv "$HOME"/.config/pipewire
cp -v /usr/share/pipewire/pipewire.conf "$HOME"/.config/pipewire/pipewire.conf
sed -i 's/#default.clock.rate          = 48000/default.clock.rate          = 44100/g' "$HOME"/.config/pipewire/pipewire.conf
sed -i 's/#default.clock.max.quantum   = 2048/#default.clock.max.quantum   = 64/g' "$HOME"/.config/pipewire/pipewire.conf
systemctl restart --user pipewire.service pipewire.socket pipewire-pulse.service pipewire-pulse.socket

# rtcqs
sudo usermod -aG audio "$USER"
pipx install rtcqs