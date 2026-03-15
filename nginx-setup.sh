#!/data/data/com.termux/files/usr/bin/bash
# Nginx Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Nginx..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y nginx
echo "✅ Nginx installed"
echo "Start with: nginx"
echo "Stop with: nginx -s stop"
echo "Config at: $PREFIX/etc/nginx/nginx.conf"
