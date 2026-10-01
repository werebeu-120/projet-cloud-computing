-- Création d'une table d'exemple pour le projet Cloud
CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    major VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertion de données initiales pour valider que l'initialisation fonctionne
INSERT INTO students (name, major) VALUES 
('Étudiant DevOps', 'Data Sciences et Management'),
('Testeur Cloud', 'Ingénierie Informatique');