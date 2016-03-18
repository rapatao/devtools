#!/bin/bash

function _loadConfigurations() {
    mkdir -p ${HOME}/.devtools/config/

    executeAllOnFolder ${HOME}/.devtools/config/*
}

_loadConfigurations;
unset _loadConfigurations;