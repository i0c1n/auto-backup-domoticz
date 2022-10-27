# auto-backup-domoticz
script to auto backup db file to network windows drive (cifs)

<h1 align="center">
  <br>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/screen.jpg?raw=true" alt="Logo" 
 </h1>


## A Quoi sert ce script ?   
    
    Ce script en bash permet d'enregistrer de façon automatique les fichiers de backup de base données domoticz sur un lecteur réseau windows.
    
    
```bash
# Clone ou télécharger les fichiers bash 
$ git clone https://github.com/i0c1n/auto-backup-domoticz

# Dépendance nécessaires 
$ sudo apt update
$ sudo apt install cifs-utils   


## A Quoi sert ce script ?
    
 Pour effectuer un montage automatique du répertoire au démarrage la commande suivante :  //192.168.0.100/domoticz-backup /mnt/backup cifs username=backup.domoticz,password=pbGpAt8865dJyd 0 0  est ajouté dans le fichier de configuration fstab dans le répertoire /etc.
    
    
