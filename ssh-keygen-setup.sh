#!/data/data/com.termux/files/usr/bin/bash
# SSH Key Generator for Termux — forge.brgt.site
set -e
echo "🔥 Generating SSH key..."
pkg install -y openssh
echo "Enter your email for SSH key:"
read SSH_EMAIL
ssh-keygen -t ed25519 -C "$SSH_EMAIL" -f ~/.ssh/id_ed25519 -N ""
echo ""
echo "📋 Your public SSH key (add to GitHub):"
cat ~/.ssh/id_ed25519.pub
echo ""
echo "✅ SSH key generated at ~/.ssh/id_ed25519"
