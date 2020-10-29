#~/usr/bin/env bash 

printf "Setting up ConfigMyMac...\n\n"
printf "Loading configuration...\n"

if [[ ! -e "$CONFIG_ROOT" ]]; then
  export CONFIG_ROOT=../config
  printf "Configuration root set to ${CONFIG_ROOT} \n"
fi

if [[ ! -e "$MyMac_ROOT" ]]; then
  export MyMac_ROOT=../MyMac
  printf "MyMac root set to ${MyMac_ROOT} \n"
fi

printf "\nConfiguration complete.\n"


