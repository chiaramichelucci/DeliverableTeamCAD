-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Gen 31, 2020 alle 15:59
-- Versione del server: 5.7.26
-- Versione PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_teamcad`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `aula`
--

DROP TABLE IF EXISTS `aula`;
CREATE TABLE IF NOT EXISTS `aula` (
  `id_aula` int(11) NOT NULL AUTO_INCREMENT,
  `edificio` varchar(25) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `posti` int(11) NOT NULL,
  PRIMARY KEY (`id_aula`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `aula`
--

INSERT INTO `aula` (`id_aula`, `edificio`, `nome`, `posti`) VALUES
(1, 'blocco0', 'A1.1', 150),
(2, 'blocco0', 'A1.2', 200),
(3, 'blocco0', 'A1.3', 150),
(4, 'blocco0', 'A1.4', 200),
(5, 'blocco0', 'A1.5', 150),
(6, 'blocco0', 'A1.6', 200),
(7, 'coppito2', 'C1.9', 250),
(8, 'coppito2', 'C1.10', 200),
(9, 'coppito2', 'C1.7', 200),
(10, 'coppito2', 'C1.6', 250),
(11, 'coppito1', 'B1.3', 100),
(12, 'coppito1', 'B1.5', 150);

-- --------------------------------------------------------

--
-- Struttura della tabella `corso`
--

DROP TABLE IF EXISTS `corso`;
CREATE TABLE IF NOT EXISTS `corso` (
  `id_corso` int(11) NOT NULL,
  `docente` varchar(25) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `indirizzo` varchar(25) NOT NULL,
  `frequenza_obbligatoria` tinyint(1) NOT NULL,
  `anno` int(4) NOT NULL,
  PRIMARY KEY (`id_corso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `corso`
--

INSERT INTO `corso` (`id_corso`, `docente`, `nome`, `indirizzo`, `frequenza_obbligatoria`, `anno`) VALUES
(1, 'M.Tivoli', 'Architettura_elaboratori', 'Informatica', 0, 1),
(2, 'P.Inverardi', 'F_Programmazione', 'Informatica', 0, 1),
(3, 'K.Engel', 'Analisi_Mat', 'Informatica', 0, 1),
(4, 'M.Nesi', 'Lab_Programmazione', 'Informatica', 0, 1),
(5, 'A.Guerrieri', 'Mat_Discreta', 'Informatica', 0, 1),
(6, 'L.Forlizzi', 'LAE', 'Informatica', 0, 1),
(7, 'M.Vellante', 'Fisica', 'Informatica', 0, 1),
(8, 'V.Cortellessa', 'Sistemi_Operativi', 'Informatica', 0, 2),
(9, 'S.Costantini', 'Basi_di_dati', 'Informatica', 0, 2),
(10, 'P.Pelliccione', 'Lab_basi_dati', 'Informatica', 0, 2),
(11, 'R.Eramo', 'OOS.Design', 'Informatica', 0, 2),
(12, 'S.Smiriglio', 'Ricerca_Operativa', 'Informatica', 0, 2),
(13, 'A.Pierantonio', 'Tecnologie_Web', 'Informatica', 0, 3),
(14, 'H.Muccini', 'Ingegneria_Software', 'Informatica', 0, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `docente`
--

DROP TABLE IF EXISTS `docente`;
CREATE TABLE IF NOT EXISTS `docente` (
  `id_docente` int(25) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cognome` varchar(25) NOT NULL,
  `giorno_ricevimento` text,
  `orario_ricevimento` time DEFAULT NULL,
  `dipartimento` varchar(25) NOT NULL,
  PRIMARY KEY (`id_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `docente`
--

INSERT INTO `docente` (`id_docente`, `nome`, `cognome`, `giorno_ricevimento`, `orario_ricevimento`, `dipartimento`) VALUES
(1, 'Massimo', 'Tivoli', NULL, NULL, 'DISIM'),
(2, 'Paola', 'Inverardi', 'martedì', NULL, 'DISIM'),
(3, 'Klaus', 'Engel', 'mercoledì', NULL, 'DISIM'),
(4, 'Monica ', 'Nesi', 'giovedì', '11:00:00', 'DISIM'),
(5, 'Anna ', 'Guerrieri', 'venerdì', NULL, 'DISIM'),
(6, 'Luca', 'Forlizzi', 'lunedì', NULL, 'DISIM'),
(7, 'Massimo', 'Vellante', 'giovedì', '16:00:00', 'DISIM'),
(8, 'Vittorio', 'Cortellessa', 'giovedì', '09:30:00', 'DISIM'),
(9, 'Stefania', 'Costantini', NULL, NULL, 'DISIM'),
(10, 'Patrizio', 'Pelliccione', NULL, NULL, 'DISIM'),
(11, 'Romina', 'Eramo', NULL, NULL, 'DISIM'),
(12, 'Stefano', 'Smriglio', 'martedì', '14:30:00', 'DISIM'),
(13, 'Alfonso', 'Pierantonio', 'giovedì', '15:00:00', 'DISIM'),
(14, 'Henry', 'Muccini', 'giovedì, venerdì', NULL, 'DISIM');

-- --------------------------------------------------------

--
-- Struttura della tabella `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `events`
--

INSERT INTO `events` (`id`, `start_date`, `end_date`, `text`, `created_at`, `updated_at`) VALUES
(1, '2020-01-06 10:00:00', '2020-01-06 13:00:00', 'esame Muccini', NULL, NULL),
(2, '2020-01-24 15:00:00', '2020-01-24 17:00:00', 'seminario', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `insegnamento`
--

DROP TABLE IF EXISTS `insegnamento`;
CREATE TABLE IF NOT EXISTS `insegnamento` (
  `id_docente` int(25) NOT NULL,
  `id_corso` int(11) NOT NULL,
  `data_inizio` datetime DEFAULT NULL,
  `data_fine` datetime DEFAULT NULL,
  PRIMARY KEY (`id_corso`,`id_docente`),
  KEY `id_docente` (`id_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `insegnamento`
--

INSERT INTO `insegnamento` (`id_docente`, `id_corso`, `data_inizio`, `data_fine`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 8, NULL, NULL),
(9, 9, NULL, NULL),
(10, 10, NULL, NULL),
(11, 11, NULL, NULL),
(12, 12, NULL, NULL),
(13, 13, NULL, NULL),
(14, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `piano_studi`
--

DROP TABLE IF EXISTS `piano_studi`;
CREATE TABLE IF NOT EXISTS `piano_studi` (
  `id_corso` int(11) NOT NULL,
  `username_studente` varchar(25) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_corso`,`username_studente`),
  KEY `username_studente` (`username_studente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `piano_studi`
--

INSERT INTO `piano_studi` (`id_corso`, `username_studente`, `nome`) VALUES
(1, '244236', NULL),
(1, '252633', NULL),
(2, '248779', NULL),
(4, '252633', NULL),
(5, '244236', NULL),
(6, '248779', NULL),
(6, '252633', NULL),
(7, '256689', NULL),
(8, '244236', NULL),
(8, '248779', NULL),
(8, '252633', NULL),
(10, '244236', NULL),
(10, '252633', NULL),
(11, '244236', NULL),
(11, '248779', NULL),
(12, '248779', NULL),
(14, '244236', NULL),
(14, '248779', NULL),
(14, '252633', NULL),
(14, '256689', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `studente`
--

DROP TABLE IF EXISTS `studente`;
CREATE TABLE IF NOT EXISTS `studente` (
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `anno_immatricolazione` int(4) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `studente`
--

INSERT INTO `studente` (`username`, `password`, `email`, `anno_immatricolazione`) VALUES
('244236', 'e2r2f1', 'alessandro@student.univaq.it', 2016),
('248779', 'a1a2a1', 'dragos@student.univaq.it', 2016),
('252633', '123abc', 'chiara@student.univaq.it', 2017),
('256689', 'r255s5ef', 'ciao@student.univaq.it', 2017);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `insegnamento`
--
ALTER TABLE `insegnamento`
  ADD CONSTRAINT `insegnamento_ibfk_1` FOREIGN KEY (`id_corso`) REFERENCES `corso` (`id_corso`),
  ADD CONSTRAINT `insegnamento_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`);

--
-- Limiti per la tabella `piano_studi`
--
ALTER TABLE `piano_studi`
  ADD CONSTRAINT `piano_studi_ibfk_1` FOREIGN KEY (`id_corso`) REFERENCES `corso` (`id_corso`),
  ADD CONSTRAINT `piano_studi_ibfk_2` FOREIGN KEY (`username_studente`) REFERENCES `studente` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
