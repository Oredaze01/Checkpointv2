#!/bin/bash

# Examen blanc - Checkpoint 1
# # Script création automatique d'utilisateurs

# Les utilisateurs a créer sont entrés en arguments lors de l'exécution du script
# $1, $2, $3, $4, $5, $6, $7, $8, $9



# Definir les variables nécessaires pour la création des utilisateurs et la vérification de leur existence
# Verification de la présence d'arguments
    # Si aucun argument n'est fourni, Afficher "Il manque les noms d'utilisateurs"
    # Sortir du script
# Sinon, continuer le processus de création des utilisateurs
    # Lire "quel est le nom de l'utilisateur à créer ?" $New_User 
    # Vérification de la présence de chaque utilisateur dans le système
        # Si l'utilisateur existe déjà, Afficher un message d'erreur indiquant que l'utilisateur existe déjà
        # Sortir du script
    # Sinon, créer l'utilisateur avec commande adduser et afficher un message de confirmation de la création de l'utilisateur
        # Le compte utilisateur $New_User n'éxiste pas
            # Début de la création de l'utilisateur $New_User
            # Verification de la création de l'utilisateur $New_User
                # Afficher un message de confirmation de la création de l'utilisateur
                # Sinon, afficher un message d'erreur disant "erreur a la creation de l'utilisateur et terminer le script"
                # fin
    # fin
# fin
