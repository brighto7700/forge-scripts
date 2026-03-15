#!/data/data/com.termux/files/usr/bin/bash
# Git Setup for Termux — forge.brgt.site
set -e
echo "🔥 Setting up Git..."
pkg install -y git
echo "Enter your Git username:"
read GIT_NAME
echo "Enter your Git email:"
read GIT_EMAIL
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global init.defaultBranch main
git config --global core.editor nano
echo "✅ Git configured for $GIT_NAME"
