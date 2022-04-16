#!/bin/bash

usage() {
    echo usage: $0 user
    exit 1
}
[ $# -ne 1 ] && usage

htpasswd /etc/squid/squid_passwd $1
service squid restart