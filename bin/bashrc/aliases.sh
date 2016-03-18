#!/bin/bash

source /usr/local/devtools/lib/executors.sh

function _configureAliases() {
    # default aliases files
    mkdir -p /usr/local/etc/devtools/aliases;
    executeAllOnFolder /usr/local/etc/devtools/aliases;

    # user aliases files
    mkdir -p ${HOME}/.devtools/aliases/;
    executeAllOnFolder ${HOME}/.devtools/aliases/*;
}

_configureAliases;
unset _configureAliases;