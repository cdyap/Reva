-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 13, 2016 at 01:56 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Reva`
--
CREATE DATABASE IF NOT EXISTS `Reva_development` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Reva_development`;

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `building_number` tinyint(2) NOT NULL DEFAULT '0',
  `name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `buildings`:
--

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`building_number`, `name`) VALUES
(1, 'Fattener'),
(2, 'Grower'),
(3, 'Grower'),
(4, 'Grower'),
(5, 'Grower'),
(6, 'Grower'),
(7, 'Starter'),
(8, 'Gestating'),
(9, 'Gestating'),
(10, 'Gestating'),
(11, 'Gestating'),
(12, 'PS - Starter'),
(13, 'Pre - Starter'),
(14, 'Farrowing'),
(15, 'Farrowing'),
(16, 'Farrowing');

-- --------------------------------------------------------

--
-- Table structure for table `cause_of_removals`
--

CREATE TABLE `cause_of_removals` (
  `ear_notch_number` smallint(5) NOT NULL DEFAULT '0',
  `date_of_removal` date NOT NULL,
  `sale?` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'date pig removed from farm',
  `death?` tinyint(1) NOT NULL DEFAULT '0',
  `weight_on_removal` decimal(5,2) NOT NULL DEFAULT '0.00',
  `remarks` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `cause_of_removals`:
--   `ear_notch_number`
--       `pigs` -> `ear_notch_number`
--

-- --------------------------------------------------------

--
-- Table structure for table `litters`
--

CREATE TABLE `litters` (
  `litter_id` smallint(6) NOT NULL COMMENT 'unique identifier of litter',
  `parity_number` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'number of pregnancies',
  `actual_date_of_farrowing` date NOT NULL COMMENT 'actual date of birth',
  `due_to_farrow` date DEFAULT NULL COMMENT 'actual date of birth',
  `mummified_piglets` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'number of piglets that were mummified',
  `stillborn_piglets` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'number of piglets that were stillborn',
  `date_bred` date NOT NULL COMMENT 'date pig was bred',
  `building_of_birth` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'building where pig gave birth to litter',
  `dam_id` smallint(5) DEFAULT NULL COMMENT 'Male Parent’s Pig ID',
  `sire_id` smallint(5) DEFAULT NULL COMMENT 'Female Parent’s Pig ID',
  `litter_size_at_birth` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Litter size at birth'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `litters`:
--   `dam_id`
--       `pigs` -> `ear_notch_number`
--   `sire_id`
--       `pigs` -> `ear_notch_number`
--

-- --------------------------------------------------------

--
-- Table structure for table `pens`
--

CREATE TABLE `pens` (
  `pen_id` tinyint(2) NOT NULL DEFAULT '0',
  `pen_side` char(1) NOT NULL DEFAULT 'x',
  `daily_headcount` smallint(2) NOT NULL DEFAULT '0',
  `building_number` tinyint(2) NOT NULL DEFAULT '0',
  `date_of_headcount` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `pens`:
--   `building_number`
--       `buildings` -> `building_number`
--

-- --------------------------------------------------------

--
-- Table structure for table `pigs`
--

CREATE TABLE `pigs` (
  `ear_notch_number` smallint(5) NOT NULL DEFAULT '0',
  `breed` varchar(14) DEFAULT NULL,
  `birth_weight` decimal(2,2) NOT NULL DEFAULT '0.00',
  `date_weaned` date DEFAULT NULL,
  `dam_id` smallint(5) DEFAULT NULL,
  `sire_id` smallint(5) DEFAULT NULL,
  `pen_id` tinyint(2) NOT NULL DEFAULT '0',
  `litter_id` smallint(6) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `sex` char(1) NOT NULL DEFAULT 'x',
  `remarks` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `pigs`:
--   `dam_id`
--       `pigs` -> `ear_notch_number`
--   `litter_id`
--       `litters` -> `litter_id`
--   `pen_id`
--       `pens` -> `pen_id`
--   `sire_id`
--       `pigs` -> `ear_notch_number`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`building_number`);

--
-- Indexes for table `cause_of_removals`
--
ALTER TABLE `cause_of_removals`
  ADD PRIMARY KEY (`ear_notch_number`);

--
-- Indexes for table `litters`
--
ALTER TABLE `litters`
  ADD PRIMARY KEY (`litter_id`);

--
-- Indexes for table `pens`
--
ALTER TABLE `pens`
  ADD PRIMARY KEY (`pen_id`);

--
-- Indexes for table `pigs`
--
ALTER TABLE `pigs`
  ADD PRIMARY KEY (`ear_notch_number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
