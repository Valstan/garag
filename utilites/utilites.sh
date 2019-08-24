#!/usr/bin/env bash
# Установка обязательных для нашей системы утилит:
apt update
apt upgrade -y
apt install -y unzip nano mc build-essential libssl-dev cron socat curl libcurl3 openssl dirmngr
exit
