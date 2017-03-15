#!/bin/bash

source /usr/local/devtools/lib/executors.sh

function _loadAliases() {
    # default aliases files
    executeAllOnFolder "/usr/local/etc/devtools/*.alias";

    # user aliases files
    mkdir -p ${HOME}/.devtools/;
    executeAllOnFolder "${HOME}/.devtools/*.alias";
}

_loadAliases;
unset _loadAliases;
