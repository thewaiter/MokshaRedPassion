#!/bin/bash
# Copyright 2025 Bodhi Linux

printf "\n\033[1;33mWARNING:\033[0m For use with Bodhi Linux 7 only.\n\n"
cd MokshaRedPassion
sed -i 's/MokshaRedPassion/Icons-Moksha-RedPassion/g' default.edc
sed -i 's/MokshaRedPassion/MokshaPassion-GTK/g' default.edc
./build.sh
sed -i 's/Icons-Moksha-RedPassion/MokshaRedPassion/g' default.edc
sed -i 's/MokshaPassion-GTK/MokshaRedPassion/g' default.edc
cd ..
