#!/bin/bash

# Examen blanc - Checkpoint 1

# Script création automatique d'utilisateurs


# Definir les variables nécessaires pour la création des utilisateurs et la vérification de leur existence
New_User="$1,$2,$3,$4,$5,$6,$7,$8,$9"


# Verification de la présence d'arguments
if [ $# -eq 0 ]; then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
else
    read -p "Quel est le nom de l'utilisateur à créer ? " New_User 
        if cat /etc/passwd | grep $New_User >/dev/null; then
          echo "L'utilisateur $New_User existe déjà."
          exit 1
        else
          echo " Début de la création de l'utilisateur $New_User"
          sudo useradd "$New_User"
          if cat /etc/passwd | grep $New_User >/dev/null; then
              echo "L'utilisateur $New_User a été créé."
            else
               echo "Erreur à la création de l'utilisateur $New_User."
               exit 1
          fi
    fi
  fi

