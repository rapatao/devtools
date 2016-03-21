#!/bin/bash

source /usr/local/devtools/lib/message.sh;

message -q 'Install default configurations? [Yn] '
read -n 1 -e option;

response=${option,,}    # tolower
if [[ $response =~ ^(yes|y|)$ ]]; then
	source /usr/local/devtools/etc/default-config/install.sh;
fi
