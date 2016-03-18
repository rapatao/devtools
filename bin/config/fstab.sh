#!/bin/bash
source /usr/local/devtools/lib/os.sh;

function _configureFstab() {
    if [[ osIsCygwin ]]; then
        echo "none / cygdrive binary,posix=0,user 0 0" > /etc/fstab;
    fi;
}

_configureFstab;
unset _configureFstab;