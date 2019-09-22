#!/bin/bash
cd "$(dirname "${BASH_SOURCE[0]}")" || exit

# get stowsh (and put it in a package)
curl -o ./bin/stowsh https://raw.githubusercontent.com/williamsmj/stowsh/master/stowsh
chmod +x ./bin/stowsh

pkgs="$(find . -maxdepth 1 ! -name '.*' -type d | sed "s|./||")"

for pkg in $pkgs
do
    ./bin/stowsh -v -s "$pkg" -t "$HOME"
done
