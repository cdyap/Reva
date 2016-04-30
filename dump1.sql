-- MySQL dump 10.13  Distrib 5.7.12, for osx10.11 (x86_64)
--
-- Host: localhost    Database: Reva_development
-- ------------------------------------------------------
-- Server version	5.7.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cause_of_removals`
--

DROP TABLE IF EXISTS `cause_of_removals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cause_of_removals` (
  `pig_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date_of_removal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale?` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'date pig removed from farm',
  `death?` tinyint(1) NOT NULL DEFAULT '0',
  `weight_on_removal` decimal(5,2) NOT NULL DEFAULT '0.00',
  `remarks` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cause_of_removals`
--

LOCK TABLES `cause_of_removals` WRITE;
/*!40000 ALTER TABLE `cause_of_removals` DISABLE KEYS */;
/*!40000 ALTER TABLE `cause_of_removals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_auto_increments`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_auto_increments`
--

LOCK TABLES `custom_auto_increments` WRITE;
/*!40000 ALTER TABLE `custom_auto_increments` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_auto_increments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `litters`
--

DROP TABLE IF EXISTS `litters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `litters` (
  `litter_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT 'unique identifier of litter',
  `parity_number` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'number of pregnancies',
  `actual_date_of_farrowing` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'actual date of birth',
  `due_to_farrow` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'actual date of birth',
  `mummified_piglets` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'number of piglets that were mummified',
  `stillborn_piglets` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'number of piglets that were stillborn',
  `date_bred` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date pig was bred',
  `building_of_birth` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'building where pig gave birth to litter',
  `dam_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Female Parent’s Pig ID',
  `sire_id` smallint(5) unsigned DEFAULT NULL COMMENT 'MaleParent’s Pig ID',
  `litter_size_at_birth` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'Litter size at birth',
  PRIMARY KEY (`litter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `litters`
--

LOCK TABLES `litters` WRITE;
/*!40000 ALTER TABLE `litters` DISABLE KEYS */;
INSERT INTO `litters` VALUES (1,2,'2016-04-27 16:00:00','2016-04-26 16:00:00',1,0,'2016-03-15 16:00:00',0,10001,10002,10),(6,3,'2016-04-29 16:00:00','2016-04-19 16:00:00',0,0,'2016-04-24 16:00:00',0,8001,9001,7);
/*!40000 ALTER TABLE `litters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pens`
--

DROP TABLE IF EXISTS `pens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pens` (
  `pen_id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `pen_number` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `daily_headcount` smallint(2) unsigned NOT NULL DEFAULT '0',
  `building_number` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `building_name` varchar(15) DEFAULT NULL,
  `date_of_headcount` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pens`
--

LOCK TABLES `pens` WRITE;
/*!40000 ALTER TABLE `pens` DISABLE KEYS */;
/*!40000 ALTER TABLE `pens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pigs`
--

DROP TABLE IF EXISTS `pigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pigs` (
  `pig_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ear_notch_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `breed` varchar(14) DEFAULT NULL,
  `birth_weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_weaned` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dam_id` smallint(5) unsigned DEFAULT NULL,
  `sire_id` smallint(5) unsigned DEFAULT NULL,
  `pen_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `litter_id` smallint(6) unsigned DEFAULT NULL,
  `date_of_birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sex` char(1) NOT NULL DEFAULT 'x',
  `remarks` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pig_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pigs`
--

LOCK TABLES `pigs` WRITE;
/*!40000 ALTER TABLE `pigs` DISABLE KEYS */;
INSERT INTO `pigs` VALUES (1,10003,NULL,20.00,'2016-04-28 16:32:36',NULL,NULL,0,1,'2016-04-28 16:32:36','F',NULL),(6,4112,NULL,18.00,'2016-04-29 04:37:34',NULL,NULL,0,6,'2016-04-29 04:37:34','F',NULL),(7,4113,NULL,19.00,'2016-04-29 04:37:34',NULL,NULL,0,6,'2016-04-29 04:37:34','F',NULL);
/*!40000 ALTER TABLE `pigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160430015636');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-30 10:01:21
