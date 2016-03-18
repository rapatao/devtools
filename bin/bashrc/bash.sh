#!/bin/bash

export TERM=linux

rm -rf ${HOME}/.bash_profile;
ln -sf /usr/local/devtools/lib/bash_profile.sh ${HOME}/.bash_profile;

rm -rf ${HOME}/.profile;
ln -sf /usr/local/devtools/lib/bash_profile.sh ${HOME}/.profile;
