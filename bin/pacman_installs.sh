#!/bin/bash

sudo pacman -Syu
sudo pacman -Ss base-devel git clang
sudo pacman -Ss iwd nvidia-dkms
sudo pacman -Ss tmux xorg
sudo pacman -Ss linux-lts linux-lts-headers
sudo pacman -Ss firefox flatpak fuse2
sudo pacman -Ss pipewire pipewire-alsa pipewire-pulse
sudo pacman -Ss btop htop curl wget geany nmap mc vlc sqlite3
sudo pacman -Ss unzip zsh fxf bat flameshot qalculate-gtk tldr relector rsync openssh p7zip unrar tar neofetch exfat-utils fuse-exfat ntfs-3g flac
sudo pacman -Ss ttf-font-awesome ttf-jetbrains-mono-nerd ttf-iosevkaterm-nerd
sudo pacman -Ss cmatrix cowsay 
