#!/data/data/com.termux/files/usr/bin/bash
# Docker via Termux:Alpine — forge.brgt.site
set -e
echo "🔥 Setting up Docker via proot-distro (Alpine)..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y proot-distro
proot-distro install alpine
echo "✅ Alpine Linux installed via proot-distro"
echo "Enter Alpine with: proot-distro login alpine"
echo "Then inside Alpine: apk add docker"
