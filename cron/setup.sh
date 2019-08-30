#!/usr/bin/env bash
# Настройка папки логирования работы Крона
if $(whoami) = "root" then cat /etc/passwd & exit 1
rm -rf /var/log/cron_backup
mkdir /var/log/cron_backup
chown $(whoami):$(whoami) /var/log/cron_backup
exit