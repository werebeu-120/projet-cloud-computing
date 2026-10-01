# Utilisation d'une image Python officielle légère (recommandé pour les performances)
FROM python:3.11-slim

# Définition du répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Installation des dépendances système nécessaires pour compiler certains paquets si besoin
RUN apt-get update && apt-get install -y libpq-dev gcc && rm -rf /var/lib/apt/lists/*

# Copie du fichier des dépendances dans le conteneur
COPY requirements.txt .

# Installation des bibliothèques Python listées dans requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copie du reste du code source de l'application
COPY . .

# Exposition du port sur lequel l'application Flask écoute
EXPOSE 5000

# Commande pour lancer l'application au démarrage du conteneur
CMD ["python", "app.py"]