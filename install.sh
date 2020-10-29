#!/usr/bin/env bash

set -e

link () {
  src="$1"
  dst="$2"

  if [ -e "$dst" ]; then
    echo "${dst} exits. Backing up..."
    mv -v "$dst" "${dst}_bak_`date +%s`"
  fi

  ln -nfs "$src" "$dst"
} 

echo "Installing dotfiles..."

echo "-> Linking fish..."
link "${HOME}/dotfiles/fish" "${HOME}/.config/fish"

echo "Completed!"
