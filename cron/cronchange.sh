#!/usr/bin/env bash
# $1 NAME_SCRIPT=--name_script # backup15.sh или backup_hour.sh
# $2 CRON_COMMAND=--cron_command # 15,30,45 * * * * или 0 * * * *
sed -i '/$1/d' /var/spool/cron/crontabs/$(whoami) # удаляем старое расписание для данного срикпта
# добавляем новое расписание для данного скрипта в конец файла crontab текущего пользователя
sed -i '$ a \\$2 $1 >>/var/log/mongo_backup/mongo_backup.log 2>&1' /var/spool/cron/crontabs/$(whoami)
service cron restart
exit