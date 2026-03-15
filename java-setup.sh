#!/data/data/com.termux/files/usr/bin/bash
# Java 17 Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Java 17..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y openjdk-17
echo "✅ $(java --version | head -1) installed"
