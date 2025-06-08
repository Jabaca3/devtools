#!/bin/bash

set -e  # Exit on error
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Linking .tmux.conf..."
ln -sf "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"

echo "Linking Alacritty config..."
mkdir -p "$HOME/.config/alacritty"
ln -sf "$DOTFILES_DIR/.config/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"

echo "Linking Neovim config..."
mkdir -p "$HOME/.config/nvim"
ln -sf "$DOTFILES_DIR/.config/nvim/init.lua" "$HOME/.config/nvim/init.lua"

if [ -d "$DOTFILES_DIR/.config/nvim/lua" ]; then
    ln -sf "$DOTFILES_DIR/.config/nvim/lua" "$HOME/.config/nvim/lua"
fi

