#!/bin/bash

# source the users bashrc if it exists

source /usr/local/devtools/bin/load-bashrc.sh;

if [ -f "${HOME}/.bashrc" ] ; then
    source "${HOME}/.bashrc";
fi
