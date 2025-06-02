-- Préciser la base de donnée à utiliser
USE `db-naissances`;

-- Afficher tous les UTILISATEURS et leurs ADRESSES ainsi que les utilisateurs qui n'ont pas d'adresse
SELECT * FROM `PROFILES` p
LEFT JOIN `ADDRESS` a ON p.address_id = a.id;