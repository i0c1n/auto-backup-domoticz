# auto-backup-domoticz
script to auto backup db file to network windows drive (cifs)

<h1 align="center">
  <br>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/screen.jpg?raw=true" alt="Logo" 
 </h1>


    
## Fonctionnalité et utilisation

Ceci est une deuxième version du 1er script, le script se base sur le premier avec quelques modifications.
    
<a> Ce script une fois lancé va effectuer tous les 24h une sauvegarde journalière de la base de donnée.
    Les anciennes base de données de plus de 15 jours seront automatiquement supprimés.
.</a>
    
   <br><h3>Regardons le script de plus près.</br></h3>

  <br>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/folder.JPG?raw=true" alt="Logo" 
 </h1>
  </a>
    
  
  
  <br>J’ai ensuite crée un répertoire backupscript ou sont placé les scripts de chaque jour de
la semaine.</br>
    
    
  <h1>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/Capture2.jpg?raw=true" alt="Logo" 
 </a>
 </h1>
  
 
  <br>2) Pour effectuer un montage automatique du répertoire au démarrage la
commande suivante : <h4>//192.168.0.100/domoticz-backup /mnt/backup cifs
  username=backup.domoticz,password=pbGpAt8865dJyd 0 0</h4> est ajouté dans
le fichier de configuration fstab dans le répertoire /etc.</br>

  <h1>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/fstab.jpg?raw=true" alt="Logo" 
 </a>
 </h1>

Cette commande indique de monter le répertoire domoticz-backup du serveur sur le
répertoire local /mnt/backup du raspberry avec les logins de connexion de
l’utilisateur (active directory)

<h4><br> on va maintenant utiliser l'outil Crontab c'est un utilitaire linux en ligne de commande permettant de créer des tâches
planifiées permettant d’automatiser le lancement de script.</br></h4>

<a>3) Une ligne de commande dans le fichier crontab a été ajouté pour lancer le
backup tous les jours.
Le fichier de configuration est accessible avec la commande crontab –e.
L’exemple suivante permet de planifier l’exécution du script tous les jours à 22h.</a>

  <h1>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/backup.jpg?raw=true" alt="Logo" 
 </a>
 </h1>
    
   <h1 align="center"><br>Création Script backup domoticz</br></h1>
   
   <br>Le script permettant d’effectuer les backups est en bash, voici la structure :</br>
    
   <h1>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/Capture3.jpg?raw=true" alt="Logo" 
 </a>
 </h1>

<h4>La première ligne de commande va vérifier grâce à if si le fichier lundi.db existe dans le
répertoire /mnt/backup/ si c’est le cas il affiche « base détectée ! ».
Si le fichier n’existe pas dans le répertoire, avec Else (sinon) le script va afficher « base
absente ! Téléchargement de la base… »
  
 <br>La commande curl va télécharger le fichier et l’enregistrer dans répertoire
/mnt/backup/ et créer le fichier lundi.db
Et fi pour fermer l’instruction.</br></h4>

<br>on peut ajouter une ligne qui permet de supprimer les bases enregistrer depuis plus de 7 jours.</br>

<h1>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/Capture.JPG?raw=true" alt="Logo" 
 </a>
 </h1>
  
  
