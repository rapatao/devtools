#!/bin/bash

source /usr/local/devtools/lib/message.sh;

DEFAULT_CONFIG_ORI="/usr/local/devtools/etc/default-config";
DEFAULT_CONFIG_BIN="${HOME}/.devtools/bin";
DEFAULT_CONFIG_ETC="${HOME}/.devtools/etc/default-config";
DEFAULT_CONFIG="${HOME}/.devtools";

function _copyFilesToDevtoolsEtc() {
	rm -rf ${DEFAULT_CONFIG_ETC};
	mkdir -p ${DEFAULT_CONFIG_ETC};
	cp -f ${DEFAULT_CONFIG_ORI}/.[^.]* ${DEFAULT_CONFIG_ETC}/ 2>/dev/null;
	cp -f ${DEFAULT_CONFIG_ORI}/*.alias ${DEFAULT_CONFIG}/ 2>/dev/null;
	cp -f ${DEFAULT_CONFIG_ORI}/*.config ${DEFAULT_CONFIG}/ 2>/dev/null;
	cp -f ${DEFAULT_CONFIG_ORI}/*.sh ${DEFAULT_CONFIG_BIN}/ 2>/dev/null;
}


function _linkDefaultConfigDotfiles() {
	for file in ${DEFAULT_CONFIG_ETC}/.[^.]*; do
		local filename=${file##*/}

		if [ "${filename}" != "." ] && [ "${filename}" != ".." ]; then
			if [ -f "${HOME}/${filename}" ] || [ -d "${HOME}/${filename}" ]; then
				rm -rf "${HOME}/${filename}";
			fi;
			ln -sf "${file}" "${HOME}/${filename}"
			message -ls "Linked ${file} TO ${HOME}/${filename}"
		fi
	done;


	rm -rf ${HOME}/.bash_profile;
	ln -sf /usr/local/devtools/lib/bash_profile.sh ${HOME}/.bash_profile;

	rm -rf ${HOME}/.profile;
	ln -sf /usr/local/devtools/lib/bash_profile.sh ${HOME}/.profile;

}

function _defaultConfig() {
	message -q 'Install default configurations? [Yn] '
	read -n 1 -e option;

	response=${option,,}    # tolower
	if [[ $response =~ ^(yes|y|)$ ]]; then
		_copyFilesToDevtoolsEtc;


		_linkDefaultConfigDotfiles;
		message -s "default configuration installed"
	fi
}

_defaultConfig "$@";
unset _defaultConfig;
unset _copyFilesToDevtoolsEtc;
unset _linkDefaultConfigDotfiles;
