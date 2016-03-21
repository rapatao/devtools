#!/bin/bash

[ -d "/usr/local/bin/devtools/" ] && PATH="/usr/local/bin/devtools/:${PATH}";
[ -d "${HOME}/.devtools/bin" ] && PATH="${HOME}/.devtools/bin:${PATH}";
