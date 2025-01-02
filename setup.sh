#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

# Define source files and the symlink paths
VSCODE_KEYBINDINGS_FILE="$SCRIPT_DIR/keybindings.json"
VSCODE_KEYBINDINGS_SYMLINK="$HOME/.config/Code/User/keybindings.json"
VSCODE_SETTINGS_FILE="$SCRIPT_DIR/settings.json"
VSCODE_SETTINGS_SYMLINK="$HOME/.config/Code/User/settings.json"

# Create symlinks
ln -sf "$VSCODE_KEYBINDINGS_FILE" "$VSCODE_KEYBINDINGS_SYMLINK"
ln -sf "$VSCODE_SETTINGS_FILE" "$VSCODE_SETTINGS_SYMLINK"

# Print confirmation messages
echo "Symlink created: $VSCODE_KEYBINDINGS_SYMLINK -> $VSCODE_KEYBINDINGS_FILE"
echo "Symlink created: $VSCODE_SETTINGS_SYMLINK -> $VSCODE_SETTINGS_FILE"
