# check_daemon
Check running process


Добавим запуск скрипта (в моем случае я его сохранил как /home/firdavs/scripts/check.sh) в cron с интервалом проверки каждую минуту:

```bash
echo -ne '
# Daemon check
*       *       *       *       *       firdavs    /bin/sh /home/firdavs/scripts/check.sh' >> /etc/crontab
```

