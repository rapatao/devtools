#!/bin/bash

source /usr/local/devtools/lib/message.sh;

function _configureGit() {
    if ! [ -f $HOME/.gitconfig ]; then
        git_credential='cache'
        git_default_editor='vim'
        message -q ' - What is your git author name? '
        read -e git_authorname
        message -q ' - What is your git author email? '
        read -e git_authoremail

        sed -e "s/AUTHORNAME/$git_authorname/g" \
            -e "s/AUTHOREMAIL/$git_authoremail/g" \
            -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" \
            -e "s/GIT_DEFAULT_EDITOR/$git_default_editor/g" \
            /usr/local/devtools/etc/git/.gitconfig.template > ${HOME}/.gitconfig

        message -s 'gitconfig configured';
    fi
}

_configureGit;
unset _configureGit;
