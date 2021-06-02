#/bin/bash
backup_file=backup_"$(date +%F)".sql
cd /home/xavier/dev/euro2020
/usr/local/bin/docker-compose exec -T db pg_dump euro2021 -U postgres -f /pg_backups/"$backup_file"
printf "Backup del dia!" | mpack -a -s "Eurobackup" -d /dev/stdin -m 0  /home/xavier/dev/data/euro2021/pg_backups/"$backup_file" xjaner@gmail.com