#!/usr/bin/env bash
# восстановление базы данных
# $1 - имя базы данных
# $2 - имя архива базы данных без .zip
DIR_RESTORE=/home/$(whoami)/mongo_backup
mongorestore --drop  --dir=$DIR_RESTORE/$2 --db $1 --numParallelCollections 1 --numInsertionWorkersPerCollection 1
exit
