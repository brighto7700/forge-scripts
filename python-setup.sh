#!/data/data/com.termux/files/usr/bin/bash
# Python Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Python..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y python
pip install --upgrade pip
echo "✅ Python $(python --version) installed"
echo "✅ pip $(pip --version) installed"
