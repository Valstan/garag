#!/usr/bin/env bash
# Скачать с ФТП определенный Бэкап
# $1 адрес ФТП id45d@id45d.myjino.ru:/domains/id45d.myjino.ru/BACKUPS/
# $2 имя сервера: gazpromlog
# $3 имя бэкапа без расширения: backup
NAME_DIR_COPY=/home/$(whoami)/mongo_backup
rm $NAME_DIR_COPY/$3.zip
rm -rf $NAME_DIR_COPY/$3
wget -O $NAME_DIR_COPY/$3.zip $1/$2/$3.zip
unzip -d $NAME_DIR_COPY/$3.zip $NAME_DIR_COPY/
rm $NAME_DIR_COPY/$3.zip
exit
