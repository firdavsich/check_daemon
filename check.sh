#!/bin/sh
# Название процесса
DAEMON="yandex-disk"
# "Убираем" grep из вывода
EXCLUDE="grep"
# Минимальное количество процессов
PROC_NUM="0"
# Команда для перезапуска
RESTART="/usr/bin/yandex-disk start"
# Утилита ps
PS="/bin/ps"
# Утилита grep
GREP="/bin/grep"
if [ `$PS -ax | $GREP $DAEMON | $GREP -v $EXCLUDE | wc -l` -le "$PROC_NUM" ]
then
   $RESTART
fi
