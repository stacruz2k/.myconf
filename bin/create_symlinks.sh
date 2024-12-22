#!/bin/bash

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
