#!/data/data/com.termux/files/usr/bin/bash
# Redis Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Redis..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y redis
echo "✅ Redis installed"
echo "Start with: redis-server"
echo "CLI with: redis-cli"
