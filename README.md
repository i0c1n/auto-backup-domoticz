# auto-backup-domoticz
script to auto backup db file to network windows drive (cifs)

<h1 align="center">
  <br>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/screen.jpg?raw=true" alt="Logo" 
 </h1>

## A Quoi sert ce script ? 

Ce script en bash permet d'enregistrer de façon automatique les fichiers de backup de base données domoticz sur un lecteur réseau windows.
    <br>
    </br>
  
  
 ```bash
# Clone ou télécharger les fichiers bash 
$ git clone https://github.com/i0c1n/auto-backup-domoticz

# Dépendance nécessaires 
$ sudo apt update
$ sudo apt install cifs-utils   
```
    
## Fonctionnalité et utilisation

1)  Avant la création du script, il faut d’abord créer un répertoire (mnt/backup) qui sera ensuite monté sur le répertoire domoticz-backup de nom_du_serveur (Serveur) ou sera enregistré les backups.
  
<a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/folder.jpg?raw=true" alt="Logo"
  
    
    
    
    
