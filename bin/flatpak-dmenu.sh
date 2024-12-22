#!/bin/bash

# Get the list of executables in /var/lib/flatpak/exports/bin
apps=$(ls -d /var/lib/flatpak/exports/bin/*)

# Filter out any non-executable files and remove the /var/lib/flatpak/exports/bin/ prefix
apps=$(echo "$apps" | sed -E 's#^/var/lib/flatpak/exports/bin/##')

# Pass the list to dmenu
selected_app=$(echo "$apps" | dmenu -p "Launch Flatpak:")

# Run the selected app
/var/lib/flatpak/exports/bin/"$selected_app"


