#!/usr/bin/env bash


BREW_ROOT=$(brew config | grep HOMEBREW_PREFIX | awk '{print $2}')
BREW_BIN=${BREW_ROOT}/bin

if [[ -f ${BREW_BIN}/dockutil ]]; then 

# Remove unwanted icons from the dock
dockutil --remove Launchpad --remove Maps --remove FaceTime --remove Contacts --remove Reminders --remove Podcasts --remove News --remove 'App Store' --remove 'System Preferences' --remove Music --remove Keynote --remove Numbers --remove Pages --remove TV

# Add extra icons to the dock
dockutil --add /Applications/ --before Downloads --label Applications --view list --display stack

else 
echo "dockutil not found - check to ensure brew is installed, in the path and dockutil brew is installed"


fi
