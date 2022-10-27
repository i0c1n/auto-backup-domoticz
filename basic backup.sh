if [ -e /mnt/backup/backup1.db ]; then
       echo "file found!"

else
       echo "Téléchargement de la base..."
       curl -s http://192.168.1.193:8080/backupdatabase.php > /mnt/backup/backup1.db



exit




