-- DDL (Data Description Language)

-- Supprimer la base de donnée si elle existe
DROP DATABASE IF EXISTS `db-naissances`;

-- Créer la base de donnée
CREATE DATABASE `db-naissances`;

-- Utilisation de la base de donnée
USE `db-naissances`;

-- Création de la table ROLES
CREATE TABLE `ROLES`(
	`id` INT AUTO_INCREMENT,
    `label` varbinary(255),
    `description` text,
    PRIMARY KEY (`id`),
    CONSTRAINT label_is_unique UNIQUE(`label`)
);

-- Créer la table ADDRESS
CREATE TABLE `ADDRESS` (
	`id` int AUTO_INCREMENT,
	`street` varchar(200),
    `zip` int(10),
    `city` varchar(200),
    `country` varchar(200),
    PRIMARY KEY (`id`)
);

-- Création de la table PROFILES
CREATE TABLE `PROFILES` (
	`id` int AUTO_INCREMENT,
	`first_name` varchar(100),
    `last_name` varchar(100),
    `email` varchar(100),
    `phone` varchar(50),
    `creation` datetime DEFAULT CURRENT_TIMESTAMP,
    `roles_id` int,
    `address_id` int,
    PRIMARY KEY (`id`),
    CONSTRAINT email_is_unique UNIQUE(`email`),
    CONSTRAINT phone_is_unique UNIQUE(`phone`),
    CONSTRAINT profiles_roles_fk FOREIGN KEY(`roles_id`) REFERENCES `ROLES` (`id`),
    CONSTRAINT address_fk FOREIGN KEY (`address_id`) REFERENCES `ADDRESS` (`id`)
);
