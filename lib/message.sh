#!/bin/bash

source /usr/local/devtools/lib/colors.sh;

function _message() {
    declare -A COLORSOPTS;
    COLORSOPTS["h"]="${YELLOW}%s${CRESET}";
    COLORSOPTS["i"]="[ ${CYAN}..${CRESET} ] %s";
    COLORSOPTS["n"]="[${BYELLOW}NEWS${CRESET}] %s";
    COLORSOPTS["f"]="[${RED}FAIL${CRESET}] %s";
    COLORSOPTS["w"]="[${YELLOW}WARN${CRESET}] %s";
    COLORSOPTS["p"]=" %s";
    COLORSOPTS["pstart"]="[${GREEN}STARTED${CRESET}] %s";
    COLORSOPTS["pstop"]="[${RED}STOPPED${CRESET}] %s";
    COLORSOPTS["pon"]="[${GREEN}ON${CRESET} ] %s";
    COLORSOPTS["poff"]="[${RED}OFF${CRESET}] %s";

    local OPTIND;
    local msg="";
    local flg=1;
    local lf=;

    while getopts hinfwp:l opts; do
        case ${opts} in
            l) lf='\n';;
            h|i|n|f|w|p) flg=0;;
        esac
        shift $(($OPTIND-1));
        [ ${flg} -eq 0 ] && {
            msg+=$( printf "${COLORSOPTS[${opts}${OPTARG}]}" "${@}" );
        }
    done

    [ -z "${msg}" ] && msg+="${@}";

    printf "\r\033[2K  ${msg}${lf}";
}

_message "$@";
unset _message;