#!/data/data/com.termux/files/usr/bin/bash
# Go Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Go..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y golang
echo "✅ $(go version) installed"
