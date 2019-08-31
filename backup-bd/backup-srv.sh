#!/usr/bin/env bash
# script15 - бэкап монго каждые 15 минут
# $1 - имя базы данных
# собираем в кучу путь до папки 15-минутного дампа
DIR_DUMP=/home/$(whoami)/mongo_backup/$1_$(date +%Y%m%d%H%M%S)
mkdir $DIR_DUMP
mongodump  --out=$DIR_DUMP --db $1 --numParallelCollections 1
exit