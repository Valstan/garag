#!/usr/bin/env bash
# Создание папки бэкапов базы данных Монго
# Если юзер - root то выдает список юзеров в системе и вываливается с ошибкой 1
if $(whoami) = "root" then cat /etc/passwd & exit 1
mkdir /home/$(whoami)/mongo_backup
exit