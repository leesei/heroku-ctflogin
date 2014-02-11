#!/usr/bin/env bash
[[ $1 ]] && CTF_LOGIN="$1"
[[ $2 ]] && CTF_PASSWORD="$2"

#echo "${CTF_LOGIN}:${CTF_PASSWORD}"
if [[ -z ${CTF_LOGIN} ]] || [[ -z ${CTF_PASSWORD} ]]; then
	echo "CTF_LOGIN or CTF_PASSWORD missing"
	exit
fi
echo "$(basename $0) on $(date -R)"
casperjs --ignore-ssl-errors=true "$(dirname $0)/ctflogin.casperjs" ${CTF_LOGIN} ${CTF_PASSWORD}
