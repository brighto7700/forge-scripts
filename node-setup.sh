#!/data/data/com.termux/files/usr/bin/bash
# Node.js Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Node.js..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y nodejs-lts
echo "✅ Node.js $(node --version) installed"
echo "✅ npm $(npm --version) installed"
