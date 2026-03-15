#!/data/data/com.termux/files/usr/bin/bash
# Rust Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Rust..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y rust
echo "✅ $(rustc --version) installed"
echo "✅ $(cargo --version) installed"
