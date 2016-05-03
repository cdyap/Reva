-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2016 at 06:27 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Reva_development`
--
DROP DATABASE `Reva_development`;
CREATE DATABASE `Reva_development` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Reva_development`;

-- --------------------------------------------------------

--
-- Table structure for table `cause_of_removals`
--
DROP TABLE IF EXISTS `cause_of_removals`;
CREATE TABLE `cause_of_removals` (
  `removal_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pig_id` mediumint(7) UNSIGNED DEFAULT NULL,
  `date_of_removal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale?` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'date pig removed from farm',
  `death?` tinyint(1) NOT NULL DEFAULT '0',
  `weight_on_removal` decimal(5,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `remarks` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`removal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


DROP TABLE IF EXISTS `custom_auto_increments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_auto_increments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counter_model_name` varchar(255) DEFAULT NULL,
  `counter` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_auto_increments_on_counter_model_name` (`counter_model_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Table structure for table `litters`
--
DROP TABLE IF EXISTS `litters`;
CREATE TABLE `litters` (
  `litter_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'unique identifier of litter',
  `parity_number` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'number of pregnancies',
  `actual_date_of_farrowing` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'actual date of birth',
  `due_to_farrow` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'actual date of birth',
  `mummified_piglets` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'number of piglets that were mummified',
  `stillborn_piglets` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'number of piglets that were stillborn',
  `date_bred` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date pig was bred',
  `building_of_birth` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'building where pig gave birth to litter',
  `dam_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Female Parent’s Pig ID',
  `sire_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'MaleParent’s Pig ID',
  `litter_size_at_birth` tinyint(2) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Litter size at birth',
  PRIMARY KEY (`litter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pens`
--
DROP TABLE IF EXISTS `pens`;
CREATE TABLE IF NOT EXISTS `pens` (
  `pen_id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pen_number` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `daily_headcount` smallint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_number` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_name` varchar(15) DEFAULT NULL,
  `date_of_headcount` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pigs`
--
DROP TABLE IF EXISTS `pigs`;
CREATE TABLE `pigs` (
  `pig_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ear_notch_number` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `breed` varchar(14) DEFAULT NULL,
  `birth_weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `weaning_weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_weaned` timestamp NULL DEFAULT NULL,
  `dam_id` smallint(5) UNSIGNED DEFAULT NULL,
  `sire_id` smallint(5) UNSIGNED DEFAULT NULL,
  `pen_id` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `litter_id` smallint(6) UNSIGNED DEFAULT NULL,
  `date_of_birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sex` char(1) NOT NULL DEFAULT 'x',
  `remarks` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Starter Data
-- Actual Monthly Count
-- 1 FATTENER
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 1, "Fattener");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 1, "Fattener");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 1, "Fattener");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 1, "Fattener");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 1, "Fattener");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 1, "Fattener");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 1, "Fattener");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 1, "Fattener");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 1, "Fattener");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 1, "Fattener");
-- 2 GROWER
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 2, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 2, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 2, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 2, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 2, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 2, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 2, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 2, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 2, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 2, "Grower");
-- 3 GROWER
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (11, 3, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (12, 3, "Grower");
-- 4 GROWER
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (11, 4, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (12, 4, "Grower");
-- 5 GROWER
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (11, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (12, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (13, 5, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (14, 5, "Grower");
-- 6 GROWER
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (11, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (12, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (13, 6, "Grower");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (14, 6, "Grower");
-- 7 STARTER
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (11, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (12, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (13, 7, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (14, 7, "Starter");
-- 8-11 GESTATING
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 8, "Gestating");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 9, "Gestating");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 10, "Gestating");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 11, "Gestating");
-- 12 STARTER
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (11, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (12, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (13, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (14, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (15, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (16, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (17, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (18, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (19, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (20, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (21, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (22, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (23, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (24, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (25, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (26, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (27, 12, "Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (28, 12, "Starter");
-- 13 PRE-STARTER
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (11, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (12, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (13, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (14, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (15, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (16, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (17, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (18, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (19, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (20, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (21, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (22, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (23, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (24, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (25, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (26, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (27, 13, "Pre-Starter");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (28, 13, "Pre-Starter");
-- 14 FARROWING
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (2, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (3, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (4, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (5, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (6, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (7, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (8, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (9, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (10, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (11, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (12, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (13, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (14, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (15, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (16, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (17, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (18, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (19, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (20, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (21, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (22, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (23, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (24, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (25, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (26, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (27, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (28, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (29, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (30, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (31, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (32, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (33, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (34, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (35, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (36, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (37, 14, "Farrowing");
INSERT INTO pens (pen_number, building_number, building_name) VALUES (38, 14, "Farrowing");
 -- 15 FARROWING
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 15, "Farrowing");
-- 16 FARROWING
INSERT INTO pens (pen_number, building_number, building_name) VALUES (1, 16, "Farrowing");
