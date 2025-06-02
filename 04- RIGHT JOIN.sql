-- Préciser la base de donnée à utiliser
USE `db-naissances`;

-- Afficher tous les UTILISATEURS et leurs ROLES et même les ROLES qui ne sont affectés à personne
SELECT * FROM `PROFILES` p
RIGHT JOIN `ROLES` r ON p.roles_id = r.id;