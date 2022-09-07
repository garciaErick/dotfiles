#!/bin/bash
if [[ "$1" =~ :\\ ]]; then
				path=$(sed -e "s/C:\\\/\/mnt\/c\//" -e "s/\\\/\//" <<< "$1")
else
				path=$(sed -e "s/\/mnt\/c\//C:\\\/" -e "s/\//\\\/" <<< "$1")
fi
echo $path
