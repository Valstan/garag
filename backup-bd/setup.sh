#!/usr/bin/env bash
# Создание папки бэкапов базы данных Монго
if $(whoami) = "root" then $PAKMA_FOLDER/user/list.sh & exit 1
mkdir /home/$(whoami)/mongo_backup
exit