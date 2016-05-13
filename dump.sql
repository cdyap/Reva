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
  `pig_id` smallint(5) UNSIGNED DEFAULT '0',
  `date_of_removal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale` tinyint(1)  DEFAULT NULL,
  `weight_on_removal` decimal(5,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `remarks` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`removal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `cause_of_removals` WRITE;
/*!40000 ALTER TABLE `cause_of_removals` DISABLE KEYS */;
INSERT INTO `cause_of_removals` VALUES (1,7,'2016-05-11 16:00:00',0,50.00,''),(2,26,'2016-05-11 16:00:00',0,100.00,'Huhu');
/*!40000 ALTER TABLE `cause_of_removals` ENABLE KEYS */;
UNLOCK TABLES;

-- --------------------------------------------------------
--
-- Table structure for table `headcount`
--
DROP TABLE IF EXISTS `headcounts`;
CREATE TABLE `headcounts` (
  `headcount_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'unique identifier of headcount',
  `headcount_date` date NOT NULL COMMENT 'timestamp of headcount',
  `pen_id` tinyint(3) UNSIGNED NOT NULL DEFAULT'0' COMMENT 'pen_id of the headcount',
  `headcount` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'COMMENT 'headcount value',
  PRIMARY KEY (`headcount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `headcounts` WRITE;
/*!40000 ALTER TABLE `headcounts` DISABLE KEYS */;
INSERT INTO `headcounts` VALUES (1,'2016-05-09 16:00:00',1,10),(2,'2016-05-09 16:00:00',2,15),(3,'2016-05-09 16:00:00',3,5),(4,'2016-05-09 16:00:00',4,5),(5,'2016-05-09 16:00:00',5,5),(6,'2016-05-09 16:00:00',6,5),(7,'2016-05-09 16:00:00',7,7),(8,'2016-05-09 16:00:00',8,8),(9,'2016-05-09 16:00:00',9,9),(10,'2016-05-09 16:00:00',10,0),(11,'2016-05-08 16:00:00',1,10),(12,'2016-05-08 16:00:00',2,10),(13,'2016-05-08 16:00:00',3,10),(14,'2016-05-08 16:00:00',4,19),(15,'2016-05-08 16:00:00',1,10),(16,'2016-05-08 16:00:00',2,10),(17,'2016-05-08 16:00:00',3,10),(18,'2016-05-08 16:00:00',4,19),(19,'2016-05-08 16:00:00',5,28),(20,'2016-05-08 16:00:00',6,12),(21,'2016-05-08 16:00:00',7,20),(22,'2016-05-08 16:00:00',8,6),(23,'2016-05-08 16:00:00',9,1),(24,'2016-05-08 16:00:00',10,30),(25,'2016-05-08 16:00:00',11,6),(26,'2016-05-08 16:00:00',12,7),(27,'2016-05-08 16:00:00',13,9),(28,'2016-05-08 16:00:00',14,0),(29,'2016-05-08 16:00:00',15,7),(30,'2016-05-08 16:00:00',16,5),(31,'2016-05-08 16:00:00',17,4),(32,'2016-05-08 16:00:00',18,4),(33,'2016-05-08 16:00:00',19,41),(34,'2016-05-08 16:00:00',20,2),(35,'2016-05-08 16:00:00',21,8),(36,'2016-05-08 16:00:00',22,54),(37,'2016-05-08 16:00:00',23,3),(38,'2016-05-08 16:00:00',24,34),(39,'2016-05-08 16:00:00',25,4),(40,'2016-05-08 16:00:00',26,41),(41,'2016-05-08 16:00:00',27,12),(42,'2016-05-08 16:00:00',28,32),(43,'2016-05-08 16:00:00',29,31),(44,'2016-05-08 16:00:00',30,45),(45,'2016-05-08 16:00:00',31,2),(46,'2016-05-08 16:00:00',32,43),(47,'2016-05-08 16:00:00',33,44),(48,'2016-05-08 16:00:00',34,33),(49,'2016-05-08 16:00:00',35,33),(50,'2016-05-08 16:00:00',36,3),(51,'2016-05-08 16:00:00',37,3),(52,'2016-05-08 16:00:00',38,3),(53,'2016-05-08 16:00:00',39,3),(54,'2016-05-08 16:00:00',40,3),(55,'2016-05-08 16:00:00',41,33),(56,'2016-05-08 16:00:00',42,3),(57,'2016-05-08 16:00:00',43,3),(58,'2016-05-08 16:00:00',44,34),(59,'2016-05-08 16:00:00',45,55),(60,'2016-05-08 16:00:00',46,66),(61,'2016-05-08 16:00:00',47,74),(62,'2016-05-08 16:00:00',48,3),(63,'2016-05-08 16:00:00',49,24),(64,'2016-05-08 16:00:00',50,5),(65,'2016-05-08 16:00:00',51,3),(66,'2016-05-08 16:00:00',52,3),(67,'2016-05-08 16:00:00',53,5),(68,'2016-05-08 16:00:00',54,3),(69,'2016-05-08 16:00:00',55,5),(70,'2016-05-08 16:00:00',56,3),(71,'2016-05-08 16:00:00',57,5),(72,'2016-05-08 16:00:00',58,3),(73,'2016-05-08 16:00:00',59,4),(74,'2016-05-08 16:00:00',60,5),(75,'2016-05-08 16:00:00',61,5),(76,'2016-05-08 16:00:00',62,3),(77,'2016-05-08 16:00:00',63,2),(78,'2016-05-08 16:00:00',64,3),(79,'2016-05-08 16:00:00',65,5),(80,'2016-05-08 16:00:00',66,5),(81,'2016-05-08 16:00:00',67,4),(82,'2016-05-08 16:00:00',68,5),(83,'2016-05-08 16:00:00',69,52),(84,'2016-05-08 16:00:00',70,1),(85,'2016-05-08 16:00:00',71,1),(86,'2016-05-08 16:00:00',72,1),(87,'2016-05-08 16:00:00',73,20),(88,'2016-05-08 16:00:00',74,20),(89,'2016-05-08 16:00:00',75,20),(90,'2016-05-08 16:00:00',76,20),(91,'2016-05-08 16:00:00',77,20),(92,'2016-05-08 16:00:00',78,20),(93,'2016-05-08 16:00:00',79,20),(94,'2016-05-08 16:00:00',80,20),(95,'2016-05-08 16:00:00',81,20),(96,'2016-05-08 16:00:00',82,20),(97,'2016-05-08 16:00:00',83,20),(98,'2016-05-08 16:00:00',84,20),(99,'2016-05-08 16:00:00',85,20),(100,'2016-05-08 16:00:00',86,20),(101,'2016-05-08 16:00:00',87,20),(102,'2016-05-08 16:00:00',88,20),(103,'2016-05-08 16:00:00',89,40),(104,'2016-05-08 16:00:00',90,21),(105,'2016-05-08 16:00:00',91,20),(106,'2016-05-08 16:00:00',92,20),(107,'2016-05-08 16:00:00',93,20),(108,'2016-05-08 16:00:00',94,20),(109,'2016-05-08 16:00:00',95,20),(110,'2016-05-08 16:00:00',96,20),(111,'2016-05-08 16:00:00',97,2),(112,'2016-05-08 16:00:00',98,20),(113,'2016-05-08 16:00:00',99,2),(114,'2016-05-08 16:00:00',100,20),(115,'2016-05-08 16:00:00',101,20),(116,'2016-05-08 16:00:00',102,20),(117,'2016-05-08 16:00:00',103,20),(118,'2016-05-08 16:00:00',104,2),(119,'2016-05-08 16:00:00',105,20),(120,'2016-05-08 16:00:00',106,2),(121,'2016-05-08 16:00:00',107,2),(122,'2016-05-08 16:00:00',108,3),(123,'2016-05-08 16:00:00',109,30),(124,'2016-05-08 16:00:00',110,30),(125,'2016-05-08 16:00:00',111,30),(126,'2016-05-08 16:00:00',112,3),(127,'2016-05-08 16:00:00',113,30),(128,'2016-05-08 16:00:00',114,30),(129,'2016-05-08 16:00:00',115,3),(130,'2016-05-08 16:00:00',116,3),(131,'2016-05-08 16:00:00',117,30),(132,'2016-05-08 16:00:00',118,30),(133,'2016-05-08 16:00:00',119,10),(134,'2016-05-08 16:00:00',120,10),(135,'2016-05-08 16:00:00',121,10),(136,'2016-05-08 16:00:00',122,10),(137,'2016-05-08 16:00:00',123,10),(138,'2016-05-08 16:00:00',124,10),(139,'2016-05-08 16:00:00',125,1),(140,'2016-05-08 16:00:00',126,10),(141,'2016-05-08 16:00:00',127,10),(142,'2016-05-08 16:00:00',128,10),(143,'2016-05-08 16:00:00',129,10),(144,'2016-05-08 16:00:00',130,10),(145,'2016-05-08 16:00:00',131,10),(146,'2016-05-08 16:00:00',132,10),(147,'2016-05-08 16:00:00',133,10),(148,'2016-05-08 16:00:00',134,10),(149,'2016-05-08 16:00:00',135,10),(150,'2016-05-08 16:00:00',136,10),(151,'2016-05-08 16:00:00',137,10),(152,'2016-05-08 16:00:00',138,10),(153,'2016-05-08 16:00:00',139,1),(154,'2016-05-08 16:00:00',140,10),(155,'2016-05-08 16:00:00',141,1),(156,'2016-05-08 16:00:00',142,10),(157,'2016-05-08 16:00:00',143,10),(158,'2016-05-08 16:00:00',144,10),(159,'2016-05-08 16:00:00',145,10),(160,'2016-05-08 16:00:00',146,1),(161,'2016-05-08 16:00:00',147,10),(162,'2016-05-08 16:00:00',148,10),(163,'2016-05-08 16:00:00',149,10),(164,'2016-05-08 16:00:00',150,10),(165,'2016-05-08 16:00:00',151,10),(166,'2016-05-08 16:00:00',152,10),(167,'2016-05-08 16:00:00',153,10),(168,'2016-05-08 16:00:00',154,10),(169,'2016-05-08 16:00:00',155,1),(170,'2016-05-08 16:00:00',156,10),(171,'2016-05-08 16:00:00',157,10),(172,'2016-05-08 16:00:00',158,10),(173,'2016-05-08 16:00:00',159,1),(174,'2016-05-08 16:00:00',160,10),(175,'2016-05-08 16:00:00',161,1),(176,'2016-05-08 16:00:00',162,0),(177,'2016-05-08 16:00:00',163,1),(178,'2016-05-08 16:00:00',164,10),(179,'2016-05-08 16:00:00',165,10),(180,'2016-05-08 16:00:00',166,10),(181,'2016-05-08 16:00:00',167,1),(182,'2016-05-08 16:00:00',168,10),(183,'2016-05-08 16:00:00',169,10),(184,'2016-05-08 16:00:00',170,10),(185,'2016-05-08 16:00:00',171,10),(186,'2016-05-08 16:00:00',172,10),(187,'2016-05-08 16:00:00',173,10),(188,'2016-05-08 16:00:00',174,10),(189,'2016-05-08 16:00:00',175,10),(190,'2016-05-08 16:00:00',176,1),(191,'2016-05-08 16:00:00',177,10),(192,'2016-05-08 16:00:00',178,1),(193,'2016-05-08 16:00:00',179,10),(194,'2016-05-08 16:00:00',180,10),(195,'2016-05-08 16:00:00',181,0),(196,'2016-05-08 16:00:00',182,10),(197,'2016-05-08 16:00:00',183,10),(198,'2016-05-08 16:00:00',184,10),(199,'2016-05-08 16:00:00',185,60),(200,'2016-05-08 16:00:00',186,30);
/*!40000 ALTER TABLE `headcounts` ENABLE KEYS */;
UNLOCK TABLES;
-- --------------------------------------------------------
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

LOCK TABLES `litters` WRITE;
/*!40000 ALTER TABLE `litters` DISABLE KEYS */;
INSERT INTO `litters` VALUES (1,1,'2016-05-09 16:00:00','2016-05-09 16:00:00',1,1,'2016-05-09 16:00:00',0,2,1,6),(2,1,'2016-05-03 16:00:00','2016-05-03 16:00:00',0,0,'2016-05-01 16:00:00',0,6,4,16),(3,1,'2016-04-19 16:00:00','2016-04-06 16:00:00',2,0,'2016-04-06 16:00:00',0,16,3,5);
/*!40000 ALTER TABLE `litters` ENABLE KEYS */;
UNLOCK TABLES;
-- --------------------------------------------------------

--
-- Table structure for table `pens`
--
DROP TABLE IF EXISTS `pens`;
CREATE TABLE IF NOT EXISTS `pens` (
  `pen_id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pen_number` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_number` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `building_name` varchar(15) DEFAULT NULL,
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
  `pen_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `litter_id` smallint(6) UNSIGNED DEFAULT NULL,
  `date_of_birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sex` char(1) NOT NULL DEFAULT 'x',
  `remarks` varchar(30) DEFAULT NULL,
  `removed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`pig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `pigs` WRITE;
/*!40000 ALTER TABLE `pigs` DISABLE KEYS */;
INSERT INTO `pigs` VALUES (1,1605000,'Pure land race',15.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-10 16:00:00','M',NULL,0),(2,1605001,'Pure land race',15.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-10 16:00:00','F',NULL,0),(3,1605002,'Pure land race',15.00,30.00,'2016-05-12 16:00:00',2,1,0,1,'2016-05-09 16:00:00','M',NULL,0),(4,1605003,'Pure land race',15.00,30.00,'2016-05-13 16:00:00',2,1,0,1,'2016-05-09 16:00:00','M',NULL,0),(5,1605004,'Pure land race',15.00,30.00,'2016-05-13 16:00:00',2,1,0,1,'2016-05-09 16:00:00','F',NULL,0),(6,1605005,'Pure land race',15.00,30.00,'2016-05-13 16:00:00',2,1,0,1,'2016-05-09 16:00:00','F',NULL,0),(7,1605006,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','M',NULL,0),(8,1605007,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','M',NULL,0),(9,1605008,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','M',NULL,0),(10,1605009,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','M',NULL,0),(11,1605010,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','M',NULL,0),(12,1605011,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','M',NULL,0),(13,1605012,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(14,1605013,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(15,1605014,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(16,1605015,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(17,1605016,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(18,1605017,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(19,1605018,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(20,1605019,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(21,1605020,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(22,1605021,'CEFN',20.00,0.00,NULL,6,4,0,2,'2016-05-03 16:00:00','F',NULL,0),(23,1605022,'Hybrid',16.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-20 16:00:00','F',NULL,0),(24,1605023,'Pure land race',16.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-10 16:00:00','M',NULL,0),(25,1605024,'Chester white',14.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-04 16:00:00','M',NULL,0),(26,1605025,'Pure land race',-29.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-05 16:00:00','F',NULL,1),(27,1605026,'Pure land race',30.00,0.00,NULL,16,3,0,3,'2016-04-19 16:00:00','M',NULL,0),(28,1605027,'Pure land race',30.00,0.00,NULL,16,3,0,3,'2016-04-19 16:00:00','M',NULL,0),(29,1605028,'Pure land race',30.00,0.00,NULL,16,3,0,3,'2016-04-19 16:00:00','F',NULL,0);
/*!40000 ALTER TABLE `pigs` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cdyap@outlook.com','$2a$10$SkKYYaNgG3h6Xhrqtkiw5.dxcUsb6tdHqkfHMo6MrH7Asrpeu6VgS',NULL,NULL,NULL,6,'2016-05-13 17:22:08','2016-05-13 14:58:27','::1','::1','2016-05-13 08:43:05','2016-05-13 17:22:08','reva_admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
-- ----------------------------------------------------
-- Starter Data

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/*--Pigs
-- INSERT INTO pigs VALUES (3,1605000,'Pure land race',30.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-02 16:00:00','M',NULL),(4,1605001,'Pure land race',40.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-03 16:00:00','F',NULL),(5,1605002,'Pure land race',0.00,0.00,NULL,3,4,0,1,'2016-05-02 16:00:00','M',NULL),(6,1605002,'Pure land race',0.00,0.00,NULL,3,4,0,1,'2016-05-02 16:00:00','F',NULL),(7,1605003,'Chester white',0.00,0.00,NULL,3,4,0,2,'2016-05-05 16:00:00','M',NULL),(8,1605004,'Chester white',0.00,0.00,NULL,3,4,0,2,'2016-05-05 16:00:00','M',NULL),(9,1605005,'Chester white',0.00,0.00,NULL,3,4,0,2,'2016-05-05 16:00:00','M',NULL),(10,1605006,'CEFN',30.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-05 16:00:00','M',NULL),(11,1605007,'Chester white',0.00,0.00,NULL,10,4,0,3,'2016-05-06 16:00:00','M',NULL),(12,1605008,'Chester white',0.00,0.00,NULL,10,4,0,3,'2016-05-06 16:00:00','M',NULL),(13,1605009,'Chester white',0.00,0.00,NULL,10,4,0,3,'2016-05-06 16:00:00','M',NULL);

--Litters
-- INSERT INTO litters VALUES (1,1,'2016-05-02 16:00:00','2016-05-01 16:00:00',0,0,'2016-05-01 16:00:00',0,3,4,2),(2,2,'2016-05-05 16:00:00','2016-05-03 16:00:00',0,0,'2016-05-03 16:00:00',0,3,4,3),(3,4,'2016-05-06 16:00:00','2016-05-06 16:00:00',0,0,'2016-05-06 16:00:00',0,10,4,3);
-- Actual Monthly Count*/;
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
