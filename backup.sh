#!/bin/bash
NOW=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="/tmp/archive"
HOME_DIR="/home"
CONFIG_DIR="/etc/ssh /etc/xrdp /etc/vsftpd"
LOG_DIR="/var/log"
if [ ! -d "$BACKUP_DIR" ]; then
mkdir "$BACKUP_DIR"
fi
tar -cpf "$BACKUP_DIR/home_$NOW.tar" "$HOME_DIR"
tar -cpf "$BACKUP_DIR/config_$NOW.tar" "$CONFIG_DIR"
tar -cpf "$BACKUP_DIR/log_$NOW.tar" "$LOG_DIR"
echo "Резервное копирование завершено"