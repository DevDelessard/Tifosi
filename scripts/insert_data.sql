-- Insertion dans la table client
INSERT INTO client (id_client, nom_client, age, cp_client)
VALUES
(1, 'Jean Dupont', 25, 75001),
(2, 'Marie Curie', 30, 75002);

-- Insertion dans la table paye
INSERT INTO paye (id_client, jour)
VALUES
(1, '2024-12-01'),
(2, '2024-12-02');

-- Insertion dans la table achete
INSERT INTO achete (id_client, id_focaccia, jour)
VALUES
(1, 1, '2024-12-01'),
(2, 2, '2024-12-02');

-- Insertion dans la table menu
INSERT INTO menu (id_menu, nom_menu, prix_menu)
VALUES
(1, 'Menu Classique', 12.50),
(2, 'Menu Gourmet', 15.00);

-- Insertion dans la table contient
INSERT INTO contient (id_menu, id_boisson)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4);

