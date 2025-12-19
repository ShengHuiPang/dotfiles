#!/usr/bin/env bash

IMG=$1
BLUR_IMG=$2
cp $IMG /usr/share/sddm/themes/sugar-candy/wallpaper.jpg && mv $BLUR_IMG /boot/efi/EFI/refind/themes/jsfsf-rEFInd/bg.png
