# auto-backup-domoticz Ver 2 
script to auto backup db file to network windows drive (cifs)


## Fonctionnalité et utilisation

Ceci est une deuxième version du 1er script, le script se base sur le premier avec quelques modifications.
    
<a> Ce script une fois lancé va effectuer tous les 24h une sauvegarde journalière de la base de donnée.
    <br>Les anciennes base de données de plus de 15 jours seront automatiquement supprimés.</br>.
</a>
    
   <h1 align="center"><br>Création Script backup domoticz</br></h1>

 
 La base du script est similaire, ce qui change c'est que le script ne sera pas lancé chaque jour mais une seul fois par mois.
 
 <h1>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/script2.JPG?raw=true" alt="Logo" 
 </a>
 </h1>
    
    J'ai rajouter la commande sleep qui permet de mettre un temps de repot entre chaque backup avec 86400 secondes qui correspond à 24h.
    
    On va lancer le script une fois avec la commande ./script.sh &
    il va ensuite tourner en arrière plan et tout faire de façon transparente.
  
  La ligne qui va être modifier dans le fichier crontab sera le suivant : 
  
   <h1>
  <a href="https://github.com/i0c1n/auto-backup-domoticz"><img src="/jpg/script3.JPG?raw=true" alt="Logo" 
 </a>
 </h1>
     
     Cela va indiquer au script de se lancer le premier jour du mois a 00h.
       
     
     
     





 
 
    
  






  
  
