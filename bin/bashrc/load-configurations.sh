#!/bin/bash

function _loadConfigurations() {
    # default configuration files
    executeAllOnFolder "/usr/local/etc/devtools/*.config";

    # user configuration files
    mkdir -p ${HOME}/.devtools/
    executeAllOnFolder "${HOME}/.devtools/*.config";
}

_loadConfigurations;
unset _loadConfigurations;
