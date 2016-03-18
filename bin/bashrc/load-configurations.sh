#!/bin/bash

function _loadConfigurations() {
    # default configuration files
    mkdir -p /usr/local/etc/devtools/config;
    executeAllOnFolder /usr/local/etc/devtools/config;

    # user configuration files
    mkdir -p ${HOME}/.devtools/config/
    executeAllOnFolder ${HOME}/.devtools/config/*
}

_loadConfigurations;
unset _loadConfigurations;