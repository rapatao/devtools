#!/bin/bash

function executeAllOnFolder() {
    for file in ${1}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
    done;
}

