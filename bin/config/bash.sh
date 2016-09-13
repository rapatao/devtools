#!/bin/bash

rm -rf ${HOME}/.bash_profile;
ln -sf /usr/local/devtools/lib/bash_profile.sh ${HOME}/.bash_profile;

echo -e "\nsource ${HOME}/.bash_profile;\n" >> "${HOME}/.bashrc";

rm -rf ${HOME}/.profile;
ln -sf /usr/local/devtools/lib/bash_profile.sh ${HOME}/.profile;
