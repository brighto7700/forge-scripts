#!/data/data/com.termux/files/usr/bin/bash
# Full Stack Mobile Dev Setup — forge.brgt.site
set -e
echo "🔥 Installing full stack dev environment..."
DEBIAN_FRONTEND=noninteractive pkg update -y && pkg upgrade -y --force-confold

# Core tools
pkg install -y git curl wget nano openssh

# Node.js
pkg install -y nodejs-lts
npm install -g vercel

# Python
pkg install -y python
pip install --upgrade pip

# Storage
termux-setup-storage

# Git config
echo "Enter your Git username:"
read GIT_NAME
echo "Enter your Git email:"
read GIT_EMAIL
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global init.defaultBranch main

# SSH key
ssh-keygen -t ed25519 -C "$GIT_EMAIL" -f ~/.ssh/id_ed25519 -N ""

echo ""
echo "✅ Full stack environment ready!"
echo ""
echo "📋 Your SSH public key (add to GitHub):"
cat ~/.ssh/id_ed25519.pub
echo ""
echo "Built with forge.brgt.site"
