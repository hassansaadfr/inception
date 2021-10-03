#!/bin/sh

adduser -S $FTP_USER -s /bin/ash
addgroup $FTP_USER
addgroup $FTP_USER $FTP_USER
echo $FTP_USER:$FTP_PASSWORD | chpasswd

chmod -R 777 /var/www/wordpress

exec vsftpd /etc/vsftpd/vsftpd.conf

