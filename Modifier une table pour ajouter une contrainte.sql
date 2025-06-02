-- Préciser la base de donnée à utiliser
USE `db-naissances`;

-- Modifier la table PROFILES pour ajouter une contrainte
ALTER TABLE `PROFILES` 
ADD CONSTRAINT email_is_unique UNIQUE (`email`),
ADD CONSTRAINT phone_is_unique UNIQUE (`phone`)
;