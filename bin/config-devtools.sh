#!/bin/bash

source /usr/local/devtools/lib/executors.sh

function _configDevtools() {
    executeAllOnFolder "/usr/local/devtools/bin/config/*.sh";
    source /usr/local/devtools/bin/load-bashrc.sh;
}

_configDevtools;
unset _configDevtools;
