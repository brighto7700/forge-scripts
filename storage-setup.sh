#!/data/data/com.termux/files/usr/bin/bash
# Termux Storage Setup — forge.brgt.site
set -e
echo "🔥 Setting up Termux storage access..."
termux-setup-storage
echo "✅ Storage mounted at ~/storage"
echo "  ~/storage/downloads → Internal Downloads"
echo "  ~/storage/dcim     → Camera"
echo "  ~/storage/pictures → Pictures"
