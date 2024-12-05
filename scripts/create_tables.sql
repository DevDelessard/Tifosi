-- Table client
CREATE TABLE client (
    id_client INT PRIMARY KEY,
    nom_client VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    cp_client INT NOT NULL
);

-- Table paye
CREATE TABLE paye (
    id_client INT NOT NULL,
    jour DATE NOT NULL,
    PRIMARY KEY (id_client, jour),
    FOREIGN KEY (id_client) REFERENCES client(id_client)
);

-- Table achete
CREATE TABLE achete (
    id_client INT NOT NULL,
    id_focaccia INT NOT NULL,
    jour DATE NOT NULL,
    PRIMARY KEY (id_client, id_focaccia, jour),
    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

-- Table menu
CREATE TABLE menu (
    id_menu INT PRIMARY KEY,
    nom_menu VARCHAR(45) NOT NULL,
    prix_menu FLOAT NOT NULL
);

-- Table contient
CREATE TABLE contient (
    id_menu INT NOT NULL,
    id_boisson INT NOT NULL,
    PRIMARY KEY (id_menu, id_boisson),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
);

