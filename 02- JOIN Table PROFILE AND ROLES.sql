-- Préciser la base de donnée à utiliser
USE `db-naissances`;

-- Jointure JOIN sur les table PROFILES et ROLES
SELECT * FROM `PROFILES` JOIN `ROLES` ON `PROFILES`.roles_id = `ROLES`.id;

-- Jointure JOIN sur les table PROFILES et ROLES en précisant des colonnes et des aléas
SELECT p.first_name, p.last_name, r.label FROM `PROFILES` p JOIN `ROLES` r ON p.roles_id = p.id;