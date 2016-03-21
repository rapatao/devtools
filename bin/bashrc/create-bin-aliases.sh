#!/bin/bash

function _createAliasForFiles() {

    for file in ${1}; do
        name=${file##*/}
        name=${name%.*}
        [ -r "$file" ] && [ -f "$file" ] && alias "${name}"="$file";
    done;
}

function _createBinAlias() {
    # default bin files
    mkdir -p /usr/local/bin/devtools/;
    _createAliasForFiles /usr/local/bin/devtools/**/*;

    # user bin files
    mkdir -p ${HOME}/.devtools/bin/;
    _createAliasForFiles ${HOME}/.devtools/bin/**/*;
}

# _createBinAlias;

unset _createBinAlias;
unset _createAliasForFiles;
