#!/data/data/com.termux/files/usr/bin/bash
# GitHub CLI Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing GitHub CLI..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y gh
echo "✅ GitHub CLI $(gh --version | head -1) installed"
echo "Run 'gh auth login' to authenticate"
