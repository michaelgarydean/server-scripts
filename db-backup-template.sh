#/bin/sh

#need to update this script to be secure
#https://www.everythingcli.org/secure-mysqldump-script-with-encryption-and-compression/

datestamp="$(date +'%d-%m-%Y')"
filepath="/home/miked/db-backups"

#remove old backups from more than a week
find "$filepath"/ -mtime +7 -delete

#brown property management
mysqldump -u${USER} -p${PASSWORD} ${DATABASE} > "$filepath/"brown_"$datestamp".sql
