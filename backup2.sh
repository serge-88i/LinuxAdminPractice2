#!/bin/bash
#Создание директории для резервных копий.
backup_dir="/Документы/backup"
mkdir -p "$backup_dir"
#Копирование директории /home.
cp -r /home "$backup_dir"
#Копирование конфигурационных файлов (SSH, RDP, FTP).
cp /etc/ssh/sshd_config "$backup_dir"
cp /etc/xrdp/xrdp.ini "$backup_dir"
cp /etc/vsftpd.conf "$backup_dir"
#Копирование директории /var/log.
cp -r /var/log "$backup_dir"
#Перемещение резервных копий в отдельную директорию.
archive_dir="/Документы/archive"
mkdir -p "$archive_dir"
mv "$backup_dir" "$archive_dir"
echo "Резервное копирование завершено успешно!"
