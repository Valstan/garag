#!/usr/bin/env bash
# Скачать с ФТП определенный Бэкап
# $1 адрес ФТП id45d@id45d.myjino.ru:/domains/id45d.myjino.ru/BACKUPS/
# $2 имя сервера: gazpromlog
# $3 имя бэкапа без расширения: backup
# $4 имя базы данных Монго
DIR=/home/$(whoami)/mongo_backup
rm $DIR/$3.zip
rm -rf $DIR/$3
wget -O $DIR/$3.zip $1/$2/$3.zip
unzip -d $DIR/$3.zip $DIR/
rm $DIR/$3.zip
mongorestore --drop  --dir=$DIR/$3 --db $4 --numParallelCollections 1 --numInsertionWorkersPerCollection 1
exit
