# Script: v1.5 Stable
# Takes a screenshot of an image and focuses on the CherryTree window if it is running
# Useful for having drawings or web clips to import
#
# DEPENDENCIES (in AUR or your distro's package repo)
# maim, slop
# wmctrl
# xclip
#
# OPTIONAL
# KDE or similar with functionality for setting custom keyboard shortcuts for running scripts
# (Meta+Print (Meta+PrtSc/Windows+PrintScreen) is what I use)
# 
# SAVED PICTURE FILE LOCATION: ~/Pictures/cherrytree-drawings
mkdir ~/Pictures/cherrytree-drawings

# Take screenshot of the selection and save it into pictures folder (using scrot)
maim -s ~/Pictures/cherrytree-drawings/scrdraw.png

# Copy to clipboard
xclip -selection clipboard -t image/png -i < ~/Pictures/cherrytree-drawings/scrdraw.png

# Switch active window to CherryTree
wmctrl -a "CherryTree "