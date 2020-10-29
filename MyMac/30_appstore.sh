#!/usr/bin/env bash 

if ask "Do you want to install Apple App Store Apps? Y"; then

  # Check to see if the mas binary exists - should be installed via homebrew

  if ! command -v mas > /dev/null; then
    printf "ERROR: Mac App Store CLI (mas) can't be found.\n"
    printf "       Please ensure Homebrew and mas (i.e. brew install mas) have been installed first."
    if ask "Would you like to go back to the homebrew step?" Y; then 
      source ./20_homebrew.sh
    else
      printf "You cannot install Mac App Store Apps as you do not have 'mas' installed and you have opted to skip installing it.\n\n"
    fi
  else
    printf "Installing Mac App Store Apps....\n"
    mas install ${APPSTORE_IDS}
  fi

else 
  printf "Skipping Mac App Store installs..\n\n"
fi



