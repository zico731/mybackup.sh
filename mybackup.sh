#!/bin/bash

#./mybackup.sh   
#
# Auteur : zico731
# Date : Octobre 2022
#
# PREREQUIS pour wsl :	* monter le lecteur au préalable : mount -t drvfs f: /mnt/f
#			* transformer chemin de windows en linux avec : echo 'C:/path/of/windows/' |sed -e 's|\\|/|g' -e  's|C:|/mnt/c|'


# Variables globales

## REPERTOIREs à sauvegarder

SOURCES=(
'/mnt/c/Users/Paco/AppData/Roaming/Thunderbird'
'/mnt/c/Users/Paco/Applications'
'/mnt/c/Users/Paco/Developpement'
#'/mnt/c/Users/Paco/Documents/Virtual Machines'
)
NB_ITEMS=${#SOURCES[*]}

## REPERTOIRE de  destination
DESTINATION='/mnt/d/mybackup/'


# Un nom de dossier avec le quantième du jour
rep="  backup-$(date +%j)"  

# Nettoie l'écran :
clear

echo ">>------------------------------------------------$(date)---------------------------------------------<<" >> /var/log/mybackup.log
echo "  Sauvegarde des fichiers systèmes par ${USER} sur la machine ${HOSTNAME} dans le dossier ${DESTINATION}." >> /var/log/mybackup.log


# Lancer la sauvegarde
echo "  ****************************************************************"  
echo "       Script de sauvegarde - Sauvegarde sur la machine $HOSTNAME "  
echo "  ****************************************************************"  
echo
echo "  La sauvegarde sera faîte dans le dossier ${DESTINATION}." 
printf "  La synchronisation de "; for i in  $(seq 0 $((NB_ITEMS-1))); do echo -n "${SOURCES[$i]//*\/}, "; done | sed 's/..$/ commence:/'
echo

## creation d'une chaine 80 points servant à la mise en page
POINTS=$(printf ".%.s" $(seq 60))

for i in ${!SOURCES[*]}
do 
	echo "  ($((i+1))/${NB_ITEMS}) - ${SOURCES[i]//*\/} ..."
	rsync -a --delete "${SOURCES[i]}" "${DESTINATION}" >> /var/log/mybackup.log 2>>/var/log/mybackup.err
	echo -e "${POINTS}#\r  ${SOURCES[i]}"|sed "s/#/[ok]/" >> /var/log/mybackup.log 2>>/var/log/mybackup.err
done

## on stocke dans une variable la durée en secondes
secs=$SECONDS  

## on converti la duréée en Heure:Minute:Seconde
echo -n "  Taille totale: $(du -sh /mnt/f/mybackup|cut -f1) - " | tee -a /var/log/mybackup.log
printf 'Durée: %dh:%02dm:%02ds\n\n' $(($secs/3600)) $(($secs%3600/60)) $(($secs%60)) | tee -a /var/log/mybackup.log

# La sauvegarde est notée dans le journal d'évènements du système :
echo "  La sauvegarde est renseignée dans /var/log/mybackup.log"
echo
