#!/bin/bash

function osRealPath() {
    if [[ osIsCygwin ]]; then
        echo "$(cygpath -m ${1})";
    else
        echo "${1}";
    fi;
}

function osIsCygwin() {
    osIsSystem "cygwin";
}

function osIsSystem() {
    local os=${1^^};
    [ -z "${MYSYSTEM}" ] && {
        local sys=$( uname -s );
        sys=${sys^^};
        MYSYSTEM=${sys%_*};
    }
    [ "${os}" == "${MYSYSTEM}" ]
}