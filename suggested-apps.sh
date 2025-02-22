#!/bin/bash
set -e

flatpak install flathub com.spotify.Client
flatpak install flathub org.telegram.desktop
flatpak install flathub org.shotcut.Shotcut
flatpak install flathub com.nextcloud.desktopclient.nextcloud

flatpak install flathub com.visualstudio.code
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community
flatpak install flathub com.jetbrains.PyCharm-Community
flatpak install flathub com.axosoft.GitKraken

flatpak install flathub org.blender.Blender
flatpak install flathub org.audacityteam.Audacity
flatpak install flathub org.kde.kdenlive
flatpak install flathub org.godotengine.Godot

sudo apt install -y gamemode
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.obsproject.Studio

flatpak install flathub org.mozilla.firefox
flatpak install flathub com.protonvpn.www #wireguard-alternative
flatpak install flathub com.brave.Browser
flatpak install flathub com.bitwarden.desktop

flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub com.github.IsmaelMartinez.teams_for_linux
flatpak install flathub com.slack.Slack