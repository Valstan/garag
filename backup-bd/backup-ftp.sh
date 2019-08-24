#!/usr/bin/env bash
# script_hour - бэкап на ФТП каждый час
# $1 addres_sftp # id45d@id45d.myjino.ru:/domains/id45d.myjino.ru
# $2 ftp_dir_backup # папка где лежат бэкапы баз данных, например BACKUPS
# $3 port_sftp # 2222 для Jino.ru
# $4 nameBD
# $5 name_server
# даем имя папки часового дампа
NAME_DUMP=$4_$(date +%Y%m%d%H%M%S)
# собираем путь до папки дампа
DIR_DUMP=/home/$(whoami)/mongo_backup/$NAME_DUMP
mkdir $DIR_DUMP
mongodump  --out=$DIR_DUMP --db $4 --numParallelCollections 1
zip -r -9 $NAME_DUMP.zip $DIR_DUMP
scp -P $3 $NAME_DUMP.zip $1/$2/$5
rm $NAME_DUMP.zip
# Удаление каталогов в $DIR_BACKUP старше 1 дня (не проверено):
find /home/$(whoami)/mongo_backup/ -mtime +1 -type d | xargs rm -f -r
exit
