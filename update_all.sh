#!/bin/bash

# This script is the entry point

# Cleaning ? Uncomment
# brew cleanup
# brew cleanup --prune=all
# brew autoremove

if [[ "$OSTYPE" == "linux-gnu"* ]]; then

    # if Fedora do need to grant sudo permission
    sudo echo "SMS UPDATE ALL"

    bash -x ./update_os_fedora.sh

# WIP elif [[ "$OSTYPE" == "darwin"* ]]; then
    # update os
    # update app store

fi

# common section
bash -x ./update_os_tools.sh
bash -x ./update_nvim.sh
