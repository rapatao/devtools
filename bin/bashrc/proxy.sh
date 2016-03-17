#!/bin/bash

function _configureProxy() {
    while read -r line
    do
        export "${line}";
    done < /usr/local/etc/devtools/proxy.config;
}

_configureProxy;
unset _configureProxy;