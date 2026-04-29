#!/bin/bash

# Examen blanc - Checkpoint 1

# Script création automatique d'utilisateurs


# Definir les variables nécessaires pour la création des utilisateurs et la vérification de leur existence
New_User="$@"


# Verification de la présence d'arguments
if [ $# -eq 0 ]; then
    # Si aucun argument n'est fourni, Afficher "Il manque les noms d'utilisateurs"
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi



# Sinon, continuer le processus de création des utilisateurs avec une boucle for pour parcourir les arguments
for New_User in "$@"
do

# Lire "quel est le nom de l'utilisateur à créer ?" $New_User et stocker la réponse dans une variable
read -p "Quel est le nom de l'utilisateur à créer ? " New_User 
# Vérification de la présence de chaque utilisateur dans le système
if cat /etc/passwd | grep $New_User >/dev/null
then
    # Si l'utilisateur existe déjà, Afficher un message d'erreur indiquant que l'utilisateur existe déjà 
    echo "L'utilisateur $New_User existe déjà."
    exit 1
    # Sinon, créer l'utilisateur avec commande adduser et afficher un message de confirmation de la création de l'utilisateur
else
    # Le compte utilisateur $New_User n'éxiste pas
        # Début de la création de l'utilisateur $New_User
        echo " Début de la création de l'utilisateur $New_User"
        sudo useradd "$New_User"
            
            
        # Verification de la création de l'utilisateur 
        if cat /etc/passwd | grep $New_User >/dev/null 
        then
            # Afficher un message de confirmation de la création de l'utilisateur
            echo "L'utilisateur $New_User a été créé."
            # Sinon, afficher un message d'erreur disant "Erreur a la creation de l'utilisateur et terminer le script"
        else
                echo "Erreur à la création de l'utilisateur $New_User."
                exit 0
        fi
fi
done
