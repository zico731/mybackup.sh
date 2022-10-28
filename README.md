# Script de sauvegarde en bash

Adapter le script en modifiant dans les lignes suivantes:

 - SOURCES  : les répertoires à sauvegarder
 - DESTINATION :  le dossier où sont stocker la sauvegarde<br><br>


## OUTPUT: ##

  \****************************************************************  
       Script de sauvegarde - Sauvegarde sur la machine G7-7700<br>  
  \****************************************************************  

  La sauvegarde sera faîte dans le dossier /mnt/d/mybackup/.<br>
  La synchronisation de Thunderbird, Applications, Developpement commence:<br>
  (1/3) - Thunderbird ...<br>
  (2/3) - Applications ...<br>
  (3/3) - Developpement ...<br>
  Taille totale: 124G - Durée: 0h:01m:49s<br>

  La sauvegarde est renseignée dans /var/log/mybackup.log<br><br>


## JOURNALISATION: ##

**\# cat /var/log/mybackup.log**<br>



\>>------------------------------------------------Sat Oct 29 00:33:02 CEST 2022---------------------------------------------<<<br>
  Sauvegarde des fichiers systèmes par root sur la machine G7-7700 dans le dossier /mnt/d/mybackup/.<br>
  /mnt/c/Users/Paco/AppData/Roaming/Thunderbird.............[ok]<br>
  /mnt/c/Users/Paco/Applications............................[ok]<br>
  /mnt/c/Users/Paco/Developpement...........................[ok]<br>
  Taille totale: 124G - Durée: 0h:04m:46s<br>
