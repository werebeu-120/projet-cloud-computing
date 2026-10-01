# Projet Cloud Computing - Déploiement Conteneurisé Multi-services

## Membres du binôme
* **Nom 1 :** Ilian 
* **Nom 2 :** Mohamed

## Description du scénario choisi
Nous avons choisi le **Scénario B (Développement Custom)** :
* **Conteneur 1 (Web) :** Une API web développée sur mesure en Python avec le framework **Flask**, empaquetée à l'aide d'un `Dockerfile`.
* **Conteneur 2 (Base de données) :** Une base de données relationnelle **PostgreSQL** (version 15 Alpine).

## Instructions pour lancer le projet
1. Assurez-vous d'avoir **Docker Desktop** lancé sur votre machine.
2. Clonez ou téléchargez ce dépôt, puis placez-vous dans le dossier du projet via votre terminal.
3. Lancez la construction et le démarrage des conteneurs en arrière-plan avec la commande suivante :
   ```bash
   docker compose up --build -d