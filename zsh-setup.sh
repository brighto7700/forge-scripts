#!/data/data/com.termux/files/usr/bin/bash
# Zsh + Oh My Zsh Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Zsh..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y zsh curl git
echo "🔥 Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s zsh
echo "✅ Zsh + Oh My Zsh installed"
