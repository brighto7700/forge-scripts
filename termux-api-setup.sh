#!/data/data/com.termux/files/usr/bin/bash
# Termux:API Setup — forge.brgt.site
set -e
echo "🔥 Installing Termux:API..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y termux-api
echo "✅ Termux:API installed"
echo "Make sure Termux:API app is also installed from F-Droid"
echo ""
echo "Test with:"
echo "  termux-battery-status"
echo "  termux-clipboard-get"
echo "  termux-vibrate"
