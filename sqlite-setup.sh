#!/data/data/com.termux/files/usr/bin/bash
# SQLite Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing SQLite..."
pkg install -y sqlite
echo "✅ SQLite $(sqlite3 --version) installed"
echo "Run 'sqlite3 mydb.db' to create a database"
