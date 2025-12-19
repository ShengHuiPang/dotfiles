#!/bin/sh

# List of web browsers with their launch commands
browsers="Brave Web Browser
Brave Web Browser (nightly)
Firefox
Tor Browser
Chromium"

# Show the browsers in Rofi and get the selected browser
selected=$(printf "%s\n" "$browsers" | rofi -show -dmenu -p "Choose browser")

# Launch the selected browser
case "$selected" in
    "Brave Web Browser")
        brave --enable-features=WaylandWindowDecorations --ozone-platform-hint=wayland --enable-wayland-ime --password-store=basic &
        ;;
      "Brave Web Browser (nightly)")
        brave-nightly --enable-features=WaylandWindowDecorations --ozone-platform-hint=wayland --enable-wayland-ime --password-store=basic &
        ;;
    Firefox)
        firefox &
        ;;
    "Tor Browser")
        torbrowser-launcher &
        ;;
    Chromium)
        chromium --enable-features=WaylandWindowDecorations --ozone-platform-hint=wayland --enable-wayland-ime --password-store=basic &
        ;;
    *)
        printf "No browser selected or unknown choice.\n"
        ;;
esac
