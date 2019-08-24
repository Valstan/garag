#!/usr/bin/env bash
# Автоматическое создание юзера
# $1 name_user
# $2 pass_user
useradd -m -p $(openssl passwd -1 $2) -G sudo -s /bin/bash $1
exit
