#!/usr/bin/env bash
# $1 адрес ФТП с логином и паролем: ftp://ftplogin:ftpassword@ftpaddress.com
# $2 путь до папки на ФТП: dirname
# $3 имя архива сервера без расширения: arhive
# Проверяем введены ли аргументы
if (( $# < 3 )); then
    echo "Ошибка! Введено мало аргументов! Пример запуска скрипта:"
    echo "./deploy.sh ftp://ftplogin:ftpassword@ftpaddress.com dirname arhive"
    exit
fi
PROG=/home/$(whoami)/programms
rm -rf $PROG/$3
wget -O $PROG/$3.zip $1/$2/$3.zip
unzip -d $PROG/$3.zip $INSTALL_PATH
rm $PROG/$3.zip
cd $PROG/$3
chmod u+x install.sh
./install.sh
exit
