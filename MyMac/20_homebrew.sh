#!/usr/bin/env bash


# Installs Homebrew software.


if ask "Do you want to install homebrew? You can skip this if you installed it manually!" Y; then 
  printf "If homebrew is not installed and in \$PATH - we will install it.\n"
    if ! command -v brew > /dev/null; then
      printf "brew not found, installing homebrew now\n"
      /bin/bash -c "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
      export PATH="/usr/local/bin:$PATH"
    else   
      printf "Success, brew has been found - proceeding.\n\n"
    fi
  else
    printf "Skipping installing homebrew.\n"
fi

# Install homebrew formulas 

if ask "Do you want to proceed with installing brew formulas?" Y; then 
  printf "Proceeding to install brew formulas...\n${BREW_FORMULAS}\n"
  for formula in ${BREW_FORMULAS}; do 
    printf "Installing ${formula}\n"
    brew install ${formula};
  done
else
  printf "Skipping installing brew formulas.\n\n"
fi


# Install homebrew casks 

if ask "Do you want to proceed with installing brew casks?" Y; then 
  printf "Proceeding to install brew casks...\n${BREW_CASKS}\n"
  for cask in ${BREW_CASKS}; do 
    printf "Installing ${cask}\n"
    brew cask install ${cask};
  done
else
  printf "Skipping installing brew casks.\n\n"
fi


