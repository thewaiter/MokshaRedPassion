#!/bin/bash
# Copyright 2025 Bodhi Linux

printf "\n\033[1;33mWARNING:\033[0m For use with Bodhi Linux 7 only.\n\n"
cd MokshaRedPassion
sed -i \
    -e 's/data.item: "gtk-theme" *"[^"]*"/data.item: "gtk-theme"     "MokshaPassion-GTK"/' \
    -e 's/data.item: "icon-theme" *"[^"]*"/data.item: "icon-theme"    "Icons-Moksha-RedPassion"/' \
    default.edc
./build.sh
git restore default.edc
cd .
