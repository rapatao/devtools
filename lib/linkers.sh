#!/bin/bash

source /usr/local/devtools/lib/message.sh;

#---
# CREATE / REPLACE SYNLINK
#---
function linker() {

	local OPTIND;
	local extractExt=0;

	while getopts :e opts; do
		case ${opts} in
			e) extractExt=1;;
		esac
	done
	shift $(($OPTIND-1));

	local origin=${1};
	local destDir=${2};
	local filename=${origin##*/};
	[ ${extractExt} -eq 1 ] && {
		filename=${filename%.*}
	}

	local dest="${destDir}/${filename}";
	if [ -f "${dest}" ] || [ -d "${dest}" ]; then
		rm -rf "${dest}";
	fi;
	ln -sf "${origin}" "${dest}"
	message -ls "Linked ${origin} TO ${dest}"

}
