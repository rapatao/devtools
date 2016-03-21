#!/bin/bash

source /usr/local/devtools/lib/message.sh;
source /usr/local/devtools/lib/linkers.sh;

DEFAULT_CONFIG_ORI="/usr/local/devtools/etc/default-config";
DEFAULT_CONFIG_BIN="${HOME}/.devtools/bin";
DEFAULT_CONFIG="${HOME}/.devtools";

function _linkDefaultConfigDotfiles() {
	for file in ${DEFAULT_CONFIG_ORI}/etc/.[^.]*; do
		linker "${file}" "${HOME}";
	done;
}

function _linkDefaultConfigAliasConfig() {
	for file in ${DEFAULT_CONFIG_ORI}/config/*.alias; do
		linker "${file}" "${DEFAULT_CONFIG}";
	done;

	for file in ${DEFAULT_CONFIG_ORI}/config/*.config; do
		linker "${file}" "${DEFAULT_CONFIG}";
	done;
}

function _defaultConfig() {
	mkdir -p "${DEFAULT_CONFIG}";
	rm -f ${DEFAULT_CONFIG}/default-config*.*

	_linkDefaultConfigAliasConfig;
	_linkDefaultConfigDotfiles;

	message -s "default configuration installed"
}

_defaultConfig "$@";
unset _defaultConfig;
unset _linkDefaultConfigDotfiles;
unset _linkDefaultConfigAliasConfig;
