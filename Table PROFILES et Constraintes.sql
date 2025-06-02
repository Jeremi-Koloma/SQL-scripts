-- Utilisation de la base de donnée
USE `db-naissances`;

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
    CONSTRAINT profiles_roles_fk FOREIGN KEY(`roles_id`) REFERENCES `ROLE` (`id`),
    CONSTRAINT address_fk FOREIGN KEY (`address_id`) REFERENCES `ADDRESS` (`id`)
);
