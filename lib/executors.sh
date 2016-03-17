#!/bin/bash

function executeAllOnFolder() {
    for file in ${1}; do
        echo $file
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
    done;
}

