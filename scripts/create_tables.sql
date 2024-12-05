CREATE TABLE marque (
    id_marque INT PRIMARY KEY,
    nom_marque VARCHAR(50) NOT NULL
);

CREATE TABLE boisson (
    id_boisson INT PRIMARY KEY,
    nom_boisson VARCHAR(100) NOT NULL,
    id_marque INT NOT NULL,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

CREATE TABLE ingredient (
    id_ingredient INT PRIMARY KEY,
    nom_ingredient VARCHAR(50) NOT NULL
);

CREATE TABLE focaccia (
    id_focaccia INT PRIMARY KEY,
    nom_focaccia VARCHAR(100) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    ingredients TEXT NOT NULL
);
