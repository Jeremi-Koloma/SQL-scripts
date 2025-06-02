-- DML (Data Manipulation Language)

-- Préciser la base de donnée à utiliser
USE `db-naissances`;

-- Insertion des données dans la table ROLE
INSERT INTO `ROLES` (`label`, `description`) VALUES
("PUBLIC", "Lorem Ipsum is simply dummy text of the printing and typesetting industry."), 
("AGENT", "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
("ADMIN", "Lorem Ipsum is simply dummy text of the printing and typesetting industry.");

-- Insertion des données dans la table ADDRESS
INSERT INTO `ADDRESS` (`street`, `zip`, `city`, `country`) VALUES
("Rue 3032", 23000, "Bamako", "MALI"),
("Rue 672", 983, "Koutiala", "MALI"),
("Rue 9893", 1893, "Segou", "MALI"),
("Rue 0920", 394, "Kaye", "MALI");

-- Insertion des données dans la table PROFILES
INSERT INTO `PROFILES` (`first_name`, `last_name`, `email`, `phone`, `roles_id`, `address_id`) VALUES
("Avila", "Roberson", "avila@gmail.com", "+223 92365829", (SELECT `id` FROM `ROLES` WHERE `label`= "PUBLIC"), (SELECT `id` FROM `ADDRESS` WHERE `city`= "Bamako")),
("Tabita", "Rogrigo", "tabita@gmail.com", "+223 82365828", (SELECT `id` FROM `ROLES` WHERE `label`= "AGENT"), (SELECT `id` FROM `ADDRESS` WHERE `city`= "Koutiala")),
("Issiaka", "Wallet", "issiaka@gmail.com", "+223 72365827", (SELECT `id` FROM `ROLES` WHERE `label`= "PUBLIC"), (SELECT `id` FROM `ADDRESS` WHERE `city`= "Kaye")),
("Hawa", "Coulibaly", "hawa@gmail.com", "+223 62365826", (SELECT `id` FROM `ROLES` WHERE `label`= "ADMIN"), (SELECT `id` FROM `ADDRESS` WHERE `city`= "Bamako"))