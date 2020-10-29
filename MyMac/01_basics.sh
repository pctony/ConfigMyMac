#!/usr/bin/env bash


# # Setting hostname

if ask "Do you want set your hostname?"; then
  read -p "What hostname would you like to use? (Example: \"MyMac\")? " MyMacHostname
  if [[ -z "$MyMacHostname" ]]; then
    printf "ERROR: Bad name..\n"
  exit 1
fi

printf "Setting our hostname... (You may be prompted for your sudo credentials\n"
sudo scutil --set HostName ${MyMacHostname}
sudo scutil --set ComputerName ${MyMacHostname}
sudo scutil --set LocalHostName ${MyMacHostname}
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string ${MyMacHostname}
fi

# # Setting 


