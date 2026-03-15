#!/data/data/com.termux/files/usr/bin/bash
# Vim + Plugins Setup for Termux — forge.brgt.site
set -e
echo "🔥 Installing Vim..."
pkg install -y vim curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cat > ~/.vimrc << 'VIMRC'
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
call plug#end()
colorscheme gruvbox
set number
set tabstop=2
set shiftwidth=2
set expandtab
VIMRC
echo "✅ Vim installed with vim-plug"
echo "Open vim and run :PlugInstall to install plugins"
