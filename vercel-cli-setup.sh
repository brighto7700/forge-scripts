#!/data/data/com.termux/files/usr/bin/bash
# Vercel CLI Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Vercel CLI..."
pkg install -y nodejs-lts
npm install -g vercel
echo "✅ Vercel CLI $(vercel --version) installed"
echo "Run 'vercel login' to authenticate"
