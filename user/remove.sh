#!/usr/bin/env bash
if $1 = $(whoami) then echo "Перелогиньтесь!" && exit 1
deluser --remove-all-files $1