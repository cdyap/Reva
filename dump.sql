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
CREATE DATABASE IF NOT EXISTS `Reva_development` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Reva_development`;

-- --------------------------------------------------------

--
-- Table structure for table `cause_of_removals`
--

CREATE TABLE IF NOT EXISTS `cause_of_removals` (
  `pig_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_of_removal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale?` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'date pig removed from farm',
  `death?` tinyint(1) NOT NULL DEFAULT '0',
  `weight_on_removal` decimal(5,2) NOT NULL DEFAULT '0.00',
  `remarks` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `litters`
--

CREATE TABLE IF NOT EXISTS `litters` (
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

CREATE TABLE IF NOT EXISTS `pigs` (
  `pig_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ear_notch_number` mediumint(7) UNSIGNED NOT NULL DEFAULT '0',
  `breed` varchar(14) DEFAULT NULL,
  `birth_weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_weaned` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
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
