-- Préciser la base de donnée à utiliser
USE `db-naissances`;

-- Création de la table ROLE
CREATE TABLE `ROLE`(
	`id` INT AUTO_INCREMENT,
    `label` VARCHAR(255),
    `description` TEXT,
    PRIMARY KEY (`id`),
    CONSTRAINT label_is_unique UNIQUE(`label`)
);