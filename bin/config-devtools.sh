#!/bin/bash

source /usr/local/devtools/lib/executors.sh

function _main() {
    executeAllOnFolder "/usr/local/devtools/bin/config/*.sh";
    source /usr/local/devtools/bin/config-bashrc.sh;
}

_main;
unset _main;