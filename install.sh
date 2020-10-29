#!/usr/bin/env bash

set -e

mkdir -p ~/.config
ln -nfs ~/dotfiles/fish ~/.config

echo "Completed!"
