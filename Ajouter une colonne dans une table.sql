-- Préciser la base de donnée à utiliser
USE `db-naissances`;

ALTER TABLE `PROFILES`
ADD `creation` datetime NOT NULL DEFAULT current_timestamp; 