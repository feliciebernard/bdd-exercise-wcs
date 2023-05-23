# Suit les instruction du checkpoint, en utilisant https://www.dbdesigner.net/, créer un script
# d'initialisation de BDD SQLite et copie colle son contenu ici
# (tu dois notmalement avoir +/- 4 instructions CREATE TABLE, chaque instructions doit bien se terminer par un ";")
CREATE TABLE `recruitor` (
  `id` INTEGER PRIMARY KEY,
  `pseudo` VARCHAR,
  `password` VARCHAR,
  `created_at` datetime,
	`updated_at` datetime
);

CREATE TABLE `company` (
	`id` INTEGER PRIMARY KEY,
	`name` varchar,
  `recruitor_id` INT,
  `job_offer_id` INT,
	`description` varchar,
	`created_at` datetime,
	`updated_at` datetime
);

CREATE TABLE job_offer (
	`id` INTEGER PRIMARY KEY,
	`title` varchar,
	`description` varchar,
	`place` varchar,
	`company_id` int,
	`created_at` datetime,
	`updated_at` datetime
);

CREATE TABLE candidate (
	`id` INTEGER PRIMARY KEY,
	`pseudo` varchar,
	`password` varchar,
	`name` varchar,
	`firstname` varchar,
	`email` varchar,
	`phone_number` varchar,
	`resume` varchar,
	`created_at` datetime,
	`updated_at` datetime
);

CREATE TABLE request (
	`id` INTEGER PRIMARY KEY,
  `job_offer_id` int,
	`candidate_id` int,
	`created_at` datetime,
	`updated_at` datetime
);