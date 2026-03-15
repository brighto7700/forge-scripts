#!/data/data/com.termux/files/usr/bin/bash
# Node.js + PM2 Process Manager — forge.brgt.site
set -e
echo "🔥 Installing Node.js + PM2..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold
pkg install -y nodejs-lts
npm install -g pm2
echo "✅ Node.js $(node --version) installed"
echo "✅ PM2 $(pm2 --version) installed"
echo ""
echo "Usage:"
echo "  pm2 start app.js"
echo "  pm2 list"
echo "  pm2 logs"
echo "  pm2 stop app"
