#!/bin/bash

# source the users bashrc if it exists

source /usr/local/devtools/bin/config-bashrc.sh;

if [ -f "${HOME}/.bashrc" ] ; then
    source "${HOME}/.bashrc";
fi
