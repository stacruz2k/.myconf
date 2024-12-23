#!/bin/bash

# Function to create a single symlink if it doesn't exist
create_single_symlink() {
    local source="$1"
    local target="$2"

    # Check if source file/directory exists
    if [ ! -e "$source" ]; then
        echo "Error: Source '$source' does not exist"
        return 1
    fi

    # Check if symlink already exists
    if [ -L "$target" ]; then
        echo "Symlink '$target' already exists, skipping..."
        return 0
    fi

    # Check if target exists but is not a symlink
    if [ -e "$target" ]; then
        echo "Error: '$target' exists but is not a symlink"
        return 1
    fi

    # Create the symlink
    # ln -sf "$source" "$target"
    echo "Created symlink '$target' -> '$source'"
}




# Specify the target and the link path
TARGET="$HOME/.myconf/bin"
LINK_PATH="$HOME/.local/bin"

# Check if the link exists and is a symbolic link
if [ ! -L "$LINK_PATH" ]; then
  # If the link does not exist, create it
  #ln -sf "$TARGET" "$LINK_PATH"
  echo "Symbolic link created at $LINK_PATH"
else
  echo "Symbolic link already exists at $LINK_PATH"
fi

# ln -sf ~/.myconf/dot_bashrc ~/.bashrc

# ln -sf ~/.myconf/nvim ~/.config/nvim

#Create symlinks for suckless in ~/src
#ln -sf ~/.myconf/skls/dwm/config.h ~/src/dwm/config.h
#ln -sf ~/.myconf/skls/st/config.h ~/src/st/config.h
#ln -sf ~/.myconf/skls/slstatus/config.h ~/src/slstatus/config.h
