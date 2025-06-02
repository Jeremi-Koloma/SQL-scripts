-- Supprimer la base de donnée si elle existe;
DROP DATABASE IF EXISTS `db-naissances`;

-- Créer la base de donnée db-naissances
CREATE DATABASE `db-naissances`;

-- Préciser le base de donnée qu'on souhaite utilisée
USE `db-naissances`;

-- Créer la table ADDRESS
CREATE TABLE `ADDRESS` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
	`street` VARCHAR(200),
    `zip` INT(10),
    `city` VARCHAR(200),
    `country` VARCHAR(200)
);

-- Insérer les données dans la table ADDRESS
INSERT INTO ADDRESS (street, zip, city, country)
VALUES ("Rue 3032", 23000, "Bamako", "MALI");

-- Lire toutes les données de la table ADDRESS
SELECT * FROM ADDRESS;

-- Afficher seulement les villes et les pays dans la table ADDRESS
SELECT city, country FROM ADDRESS;

-- Insérer plusieurs lignes à la fois
INSERT INTO ADDRESS (street, zip, city, country) VALUES
("Rue 3032", 23000, "Bamako", "MALI"),
("Rue 672", 983, "Koutiala", "MALI"),
("Rue 9893", 1893, "Segou", "MALI"),
("Rue 0920", 394, "Kaye", "MALI");

-- Filter les ADDRESS ou la ville est Bamako
SELECT * FROM ADDRESS WHERE city = "Bamako";

-- Afficher seulement le code postal, la ville de Koutiala
SELECT zip, city FROM ADDRESS WHERE city = "Koutiala";