#!/bin/bash

# Specify the target and the link path
TARGET="~/.myconf/bin"
LINK_PATH="~/.local/bin"

# Check if the link exists and is a symbolic link
if [ ! -e "$LINK_PATH" ] || [ -L "$LINK_PATH" ]; then
  # If the link does not exist, create it
  ln -sf "$TARGET" "$LINK_PATH"
  echo "Symbolic link created at $LINK_PATH"
else
  echo "Symbolic link already exists at $LINK_PATH"
fi

# ln -sf ~/.myconf/dot_bashrc ~/.bashrc


