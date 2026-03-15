#!/data/data/com.termux/files/usr/bin/bash
# Git Bare Repo (Mobile Deploy) Setup — forge.brgt.site
set -e
echo "🔥 Setting up Git bare repo workflow..."
pkg install -y git
mkdir -p ~/repos
echo "Enter project name:"
read PROJECT_NAME
git init --bare ~/repos/$PROJECT_NAME.git
mkdir -p ~/projects/$PROJECT_NAME
cd ~/projects/$PROJECT_NAME
git init
git remote add origin ~/repos/$PROJECT_NAME.git
echo "✅ Bare repo created at ~/repos/$PROJECT_NAME.git"
echo "✅ Working dir at ~/projects/$PROJECT_NAME"
