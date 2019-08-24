#!/usr/bin/env bash
# Очистка папки бэкапов базы данных Монго
if $(whoami) = "root" then $PAKMA_FOLDER/user/list.sh & exit 1
rm -rf /home/$(whoami)/mongo_backup
mkdir /home/$(whoami)/mongo_backup
exit