#!/bin/bash

source /usr/local/devtools/lib/executors.sh

function _loadBashrc() {
    executeAllOnFolder "/usr/local/devtools/bin/bashrc/*.sh";
}

_loadBashrc;
unset _loadBashrc;
