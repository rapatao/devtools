#!/bin/bash

source /usr/local/devtools/lib/executors.sh

function _configureAliases() {
    mkdir -p ${HOME}/.devtools/aliases/

    executeAllOnFolder ${HOME}/.devtools/aliases/*
}

_configureAliases;
unset _configureAliases;