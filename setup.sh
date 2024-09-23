#! /bin/bash
FILE=/etc/nixos/configuration.nix
if [[ -f "$FILE" ]]; then
	echo "Backing up file before replacing."
	mv "$FILE" "$FILE".bak
fi

ln -s ./configuration.nix "$FILE"
