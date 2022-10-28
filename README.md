# Script de sauvegarde en bash

Adapter le script en modifiant dans les lignes suivantes:

 - SOURCES  : les répertoires à sauvegarder
 - DESTINATION :  le dossier où sont stocker la sauvegarde


## OUTPUT: ##

  \****************************************************************
       Script de sauvegarde - Sauvegarde sur la machine G7-7700
  \****************************************************************

  La sauvegarde sera faîte dans le dossier /mnt/d/mybackup/.
  La synchronisation de Thunderbird, Applications, Developpement commence:
  (1/3) - Thunderbird ...
  (2/3) - Applications ...
  (3/3) - Developpement ...
  Taille totale: 124G - Durée: 0h:01m:49s

  La sauvegarde est renseignée dans /var/log/mybackup.log


## JOURNALISATION: ##

**\# cat /var/log/mybackup.log**



\>>------------------------------------------------Sat Oct 29 00:33:02 CEST 2022---------------------------------------------<<
  Sauvegarde des fichiers systèmes par root sur la machine G7-7700 dans le dossier /mnt/d/mybackup/.
  /mnt/c/Users/Paco/AppData/Roaming/Thunderbird.............[ok]
  /mnt/c/Users/Paco/Applications............................[ok]
  /mnt/c/Users/Paco/Developpement...........................[ok]
  Taille totale: 124G - Durée: 0h:04m:46s
