import os
from flask import Flask, jsonify
import psycopg2

app = Flask(__name__)

# Récupération des variables d'environnement configurées dans Docker Compose
DB_HOST = os.getenv("DB_HOST", "db")
DB_NAME = os.getenv("DB_NAME", "mydb")
DB_USER = os.getenv("DB_USER", "myuser")
DB_PASSWORD = os.getenv("DB_PASSWORD", "mypassword")

@app.route("/")
def home():
    return "Bienvenue sur l'API du projet Cloud Computing ! L'application fonctionne correctement."

@app.route("/check-db")
def check_db():
    try:
        conn = psycopg2.connect(
            host=DB_HOST,
            database=DB_NAME,
            user=DB_USER,
            password=DB_PASSWORD
        )
        cur = conn.cursor()
        cur.execute("SELECT version();")
        db_version = cur.fetchone()
        cur.close()
        conn.close()
        return jsonify({
            "status": "success",
            "message": "Connexion à PostgreSQL réussie !",
            "database_version": db_version[0]
        })
    except Exception as e:
        return jsonify({
            "status": "error",
            "message": f"Erreur de connexion à la base de données : {str(e)}"
        }), 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)