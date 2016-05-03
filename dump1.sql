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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_auto_increments`
--

LOCK TABLES `custom_auto_increments` WRITE;
/*!40000 ALTER TABLE `custom_auto_increments` DISABLE KEYS */;
INSERT INTO `custom_auto_increments` VALUES (2,'pig',31,'2016-04-30 02:24:46','2016-05-03 01:27:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `litters`
--

LOCK TABLES `litters` WRITE;
/*!40000 ALTER TABLE `litters` DISABLE KEYS */;
INSERT INTO `litters` VALUES (1,2,'2016-04-13 16:00:00','2016-04-12 16:00:00',1,1,'2016-04-12 16:00:00',0,11111,11112,2),(2,2,'2016-05-04 16:00:00','2016-05-01 16:00:00',0,0,'2016-05-01 16:00:00',0,4011,4015,0),(3,2,'2016-05-06 16:00:00','2016-05-02 16:00:00',2,1,'2016-05-01 16:00:00',0,4012,4016,1),(4,3,'2016-05-03 16:00:00','2016-05-01 16:00:00',2,2,'2016-05-01 16:00:00',0,NULL,NULL,2),(5,3,'2016-05-02 16:00:00','2016-05-02 16:00:00',3,2,'2016-05-02 16:00:00',0,NULL,12,2),(6,4,'2016-05-01 16:00:00','2016-04-30 16:00:00',2,2,'2016-04-30 16:00:00',0,14,16,5),(12,3,'2016-05-03 16:00:00','2016-05-03 16:00:00',0,0,'2016-05-03 16:00:00',0,17,16,1),(13,2,'2016-05-02 16:00:00','2016-05-02 16:00:00',0,0,'2016-05-02 16:00:00',0,7,15,7),(14,3,'2016-05-01 16:00:00','2016-05-01 16:00:00',0,0,'2016-05-01 16:00:00',0,20,8,1),(15,2,'2016-05-04 16:00:00','2016-05-04 16:00:00',0,0,'2016-05-06 16:00:00',0,17,4,2),(16,4,'2016-05-09 16:00:00','2016-05-04 16:00:00',0,0,'2016-05-03 16:00:00',0,1,8,3),(17,2,'2016-05-11 16:00:00','2016-05-11 16:00:00',0,0,'2016-05-11 16:00:00',0,2,4,2),(18,1,'2016-05-04 16:00:00','2016-05-04 16:00:00',0,0,'2016-05-04 16:00:00',0,1,4,2),(19,1,'2016-05-04 16:00:00','2016-05-04 16:00:00',0,0,'2016-05-04 16:00:00',0,1,4,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pens`
--

LOCK TABLES `pens` WRITE;
/*!40000 ALTER TABLE `pens` DISABLE KEYS */;
INSERT INTO `pens` VALUES (1,1,0,1,'Fattener','2016-04-30 07:43:33'),(2,2,0,1,'Fattener','2016-04-30 07:43:33'),(3,3,0,1,'Fattener','2016-04-30 07:43:33'),(4,4,0,1,'Fattener','2016-04-30 07:43:33'),(5,5,0,1,'Fattener','2016-04-30 07:43:33'),(6,6,0,1,'Fattener','2016-04-30 07:43:33'),(7,7,0,1,'Fattener','2016-04-30 07:43:33'),(8,8,0,1,'Fattener','2016-04-30 07:43:33'),(9,9,0,1,'Fattener','2016-04-30 07:43:33'),(10,10,0,1,'Fattener','2016-04-30 07:43:33'),(11,1,0,2,'Grower','2016-04-30 07:43:33'),(12,2,0,2,'Grower','2016-04-30 07:43:33'),(13,3,0,2,'Grower','2016-04-30 07:43:33'),(14,4,0,2,'Grower','2016-04-30 07:43:33'),(15,5,0,2,'Grower','2016-04-30 07:43:33'),(16,6,0,2,'Grower','2016-04-30 07:43:33'),(17,7,0,2,'Grower','2016-04-30 07:43:33'),(18,8,0,2,'Grower','2016-04-30 07:43:33'),(19,9,0,2,'Grower','2016-04-30 07:43:33'),(20,10,0,2,'Grower','2016-04-30 07:43:33'),(21,1,0,3,'Grower','2016-04-30 07:43:33'),(22,2,0,3,'Grower','2016-04-30 07:43:33'),(23,3,0,3,'Grower','2016-04-30 07:43:33'),(24,4,0,3,'Grower','2016-04-30 07:43:33'),(25,5,0,3,'Grower','2016-04-30 07:43:33'),(26,6,0,3,'Grower','2016-04-30 07:43:33'),(27,7,0,3,'Grower','2016-04-30 07:43:33'),(28,8,0,3,'Grower','2016-04-30 07:43:33'),(29,9,0,3,'Grower','2016-04-30 07:43:33'),(30,10,0,3,'Grower','2016-04-30 07:43:33'),(31,11,0,3,'Grower','2016-04-30 07:43:33'),(32,12,0,3,'Grower','2016-04-30 07:43:33'),(33,1,0,4,'Grower','2016-04-30 07:43:33'),(34,2,0,4,'Grower','2016-04-30 07:43:33'),(35,3,0,4,'Grower','2016-04-30 07:43:33'),(36,4,0,4,'Grower','2016-04-30 07:43:33'),(37,5,0,4,'Grower','2016-04-30 07:43:33'),(38,6,0,4,'Grower','2016-04-30 07:43:33'),(39,7,0,4,'Grower','2016-04-30 07:43:33'),(40,8,0,4,'Grower','2016-04-30 07:43:33'),(41,9,0,4,'Grower','2016-04-30 07:43:33'),(42,10,0,4,'Grower','2016-04-30 07:43:33'),(43,11,0,4,'Grower','2016-04-30 07:43:33'),(44,12,0,4,'Grower','2016-04-30 07:43:33'),(45,1,0,5,'Grower','2016-04-30 07:43:33'),(46,2,0,5,'Grower','2016-04-30 07:43:33'),(47,3,0,5,'Grower','2016-04-30 07:43:33'),(48,4,0,5,'Grower','2016-04-30 07:43:33'),(49,5,0,5,'Grower','2016-04-30 07:43:33'),(50,6,0,5,'Grower','2016-04-30 07:43:33'),(51,7,0,5,'Grower','2016-04-30 07:43:33'),(52,8,0,5,'Grower','2016-04-30 07:43:33'),(53,9,0,5,'Grower','2016-04-30 07:43:33'),(54,10,0,5,'Grower','2016-04-30 07:43:33'),(55,11,0,5,'Grower','2016-04-30 07:43:33'),(56,12,0,5,'Grower','2016-04-30 07:43:33'),(57,13,0,5,'Grower','2016-04-30 07:43:33'),(58,14,0,5,'Grower','2016-04-30 07:43:33'),(59,1,0,6,'Grower','2016-04-30 07:43:33'),(60,2,0,6,'Grower','2016-04-30 07:43:33'),(61,3,0,6,'Grower','2016-04-30 07:43:33'),(62,4,0,6,'Grower','2016-04-30 07:43:33'),(63,5,0,6,'Grower','2016-04-30 07:43:33'),(64,6,0,6,'Grower','2016-04-30 07:43:33'),(65,7,0,6,'Grower','2016-04-30 07:43:33'),(66,8,0,6,'Grower','2016-04-30 07:43:33'),(67,9,0,6,'Grower','2016-04-30 07:43:33'),(68,10,0,6,'Grower','2016-04-30 07:43:33'),(69,11,0,6,'Grower','2016-04-30 07:43:33'),(70,12,0,6,'Grower','2016-04-30 07:43:33'),(71,13,0,6,'Grower','2016-04-30 07:43:33'),(72,14,0,6,'Grower','2016-04-30 07:43:33'),(73,1,0,7,'Starter','2016-04-30 07:43:33'),(74,2,0,7,'Starter','2016-04-30 07:43:33'),(75,3,0,7,'Starter','2016-04-30 07:43:33'),(76,4,0,7,'Starter','2016-04-30 07:43:33'),(77,5,0,7,'Starter','2016-04-30 07:43:33'),(78,6,0,7,'Starter','2016-04-30 07:43:33'),(79,7,0,7,'Starter','2016-04-30 07:43:33'),(80,8,0,7,'Starter','2016-04-30 07:43:33'),(81,9,0,7,'Starter','2016-04-30 07:43:33'),(82,10,0,7,'Starter','2016-04-30 07:43:33'),(83,11,0,7,'Starter','2016-04-30 07:43:33'),(84,12,0,7,'Starter','2016-04-30 07:43:33'),(85,13,0,7,'Starter','2016-04-30 07:43:33'),(86,14,0,7,'Starter','2016-04-30 07:43:33'),(87,1,0,8,'Gestating','2016-04-30 07:43:33'),(88,1,0,9,'Gestating','2016-04-30 07:43:33'),(89,1,0,10,'Gestating','2016-04-30 07:43:33'),(90,1,0,11,'Gestating','2016-04-30 07:43:33'),(91,1,0,12,'Starter','2016-04-30 07:43:33'),(92,2,0,12,'Starter','2016-04-30 07:43:33'),(93,3,0,12,'Starter','2016-04-30 07:43:33'),(94,4,0,12,'Starter','2016-04-30 07:43:33'),(95,5,0,12,'Starter','2016-04-30 07:43:33'),(96,6,0,12,'Starter','2016-04-30 07:43:33'),(97,7,0,12,'Starter','2016-04-30 07:43:33'),(98,8,0,12,'Starter','2016-04-30 07:43:33'),(99,9,0,12,'Starter','2016-04-30 07:43:33'),(100,10,0,12,'Starter','2016-04-30 07:43:33'),(101,11,0,12,'Starter','2016-04-30 07:43:33'),(102,12,0,12,'Starter','2016-04-30 07:43:33'),(103,13,0,12,'Starter','2016-04-30 07:43:33'),(104,14,0,12,'Starter','2016-04-30 07:43:33'),(105,15,0,12,'Starter','2016-04-30 07:43:33'),(106,16,0,12,'Starter','2016-04-30 07:43:33'),(107,17,0,12,'Starter','2016-04-30 07:43:33'),(108,18,0,12,'Starter','2016-04-30 07:43:33'),(109,19,0,12,'Starter','2016-04-30 07:43:33'),(110,20,0,12,'Starter','2016-04-30 07:43:33'),(111,21,0,12,'Starter','2016-04-30 07:43:33'),(112,22,0,12,'Starter','2016-04-30 07:43:33'),(113,23,0,12,'Starter','2016-04-30 07:43:33'),(114,24,0,12,'Starter','2016-04-30 07:43:33'),(115,25,0,12,'Starter','2016-04-30 07:43:33'),(116,26,0,12,'Starter','2016-04-30 07:43:33'),(117,27,0,12,'Starter','2016-04-30 07:43:33'),(118,28,0,12,'Starter','2016-04-30 07:43:33'),(119,1,0,13,'Pre-Starter','2016-04-30 07:43:33'),(120,2,0,13,'Pre-Starter','2016-04-30 07:43:33'),(121,3,0,13,'Pre-Starter','2016-04-30 07:43:33'),(122,4,0,13,'Pre-Starter','2016-04-30 07:43:33'),(123,5,0,13,'Pre-Starter','2016-04-30 07:43:33'),(124,6,0,13,'Pre-Starter','2016-04-30 07:43:33'),(125,7,0,13,'Pre-Starter','2016-04-30 07:43:33'),(126,8,0,13,'Pre-Starter','2016-04-30 07:43:33'),(127,9,0,13,'Pre-Starter','2016-04-30 07:43:33'),(128,10,0,13,'Pre-Starter','2016-04-30 07:43:33'),(129,11,0,13,'Pre-Starter','2016-04-30 07:43:33'),(130,12,0,13,'Pre-Starter','2016-04-30 07:43:33'),(131,13,0,13,'Pre-Starter','2016-04-30 07:43:33'),(132,14,0,13,'Pre-Starter','2016-04-30 07:43:33'),(133,15,0,13,'Pre-Starter','2016-04-30 07:43:33'),(134,16,0,13,'Pre-Starter','2016-04-30 07:43:33'),(135,17,0,13,'Pre-Starter','2016-04-30 07:43:33'),(136,18,0,13,'Pre-Starter','2016-04-30 07:43:33'),(137,19,0,13,'Pre-Starter','2016-04-30 07:43:33'),(138,20,0,13,'Pre-Starter','2016-04-30 07:43:33'),(139,21,0,13,'Pre-Starter','2016-04-30 07:43:33'),(140,22,0,13,'Pre-Starter','2016-04-30 07:43:33'),(141,23,0,13,'Pre-Starter','2016-04-30 07:43:33'),(142,24,0,13,'Pre-Starter','2016-04-30 07:43:33'),(143,25,0,13,'Pre-Starter','2016-04-30 07:43:33'),(144,26,0,13,'Pre-Starter','2016-04-30 07:43:33'),(145,27,0,13,'Pre-Starter','2016-04-30 07:43:33'),(146,28,0,13,'Pre-Starter','2016-04-30 07:43:33'),(147,1,0,14,'Farrowing','2016-04-30 07:43:33'),(148,2,0,14,'Farrowing','2016-04-30 07:43:33'),(149,3,0,14,'Farrowing','2016-04-30 07:43:33'),(150,4,0,14,'Farrowing','2016-04-30 07:43:33'),(151,5,0,14,'Farrowing','2016-04-30 07:43:33'),(152,6,0,14,'Farrowing','2016-04-30 07:43:33'),(153,7,0,14,'Farrowing','2016-04-30 07:43:33'),(154,8,0,14,'Farrowing','2016-04-30 07:43:33'),(155,9,0,14,'Farrowing','2016-04-30 07:43:33'),(156,10,0,14,'Farrowing','2016-04-30 07:43:33'),(157,11,0,14,'Farrowing','2016-04-30 07:43:33'),(158,12,0,14,'Farrowing','2016-04-30 07:43:33'),(159,13,0,14,'Farrowing','2016-04-30 07:43:33'),(160,14,0,14,'Farrowing','2016-04-30 07:43:33'),(161,15,0,14,'Farrowing','2016-04-30 07:43:33'),(162,16,0,14,'Farrowing','2016-04-30 07:43:33'),(163,17,0,14,'Farrowing','2016-04-30 07:43:33'),(164,18,0,14,'Farrowing','2016-04-30 07:43:33'),(165,19,0,14,'Farrowing','2016-04-30 07:43:33'),(166,20,0,14,'Farrowing','2016-04-30 07:43:33'),(167,21,0,14,'Farrowing','2016-04-30 07:43:33'),(168,22,0,14,'Farrowing','2016-04-30 07:43:33'),(169,23,0,14,'Farrowing','2016-04-30 07:43:33'),(170,24,0,14,'Farrowing','2016-04-30 07:43:33'),(171,25,0,14,'Farrowing','2016-04-30 07:43:33'),(172,26,0,14,'Farrowing','2016-04-30 07:43:33'),(173,27,0,14,'Farrowing','2016-04-30 07:43:33'),(174,28,0,14,'Farrowing','2016-04-30 07:43:33'),(175,29,0,14,'Farrowing','2016-04-30 07:43:33'),(176,30,0,14,'Farrowing','2016-04-30 07:43:33'),(177,31,0,14,'Farrowing','2016-04-30 07:43:33'),(178,32,0,14,'Farrowing','2016-04-30 07:43:33'),(179,33,0,14,'Farrowing','2016-04-30 07:43:33'),(180,34,0,14,'Farrowing','2016-04-30 07:43:33'),(181,35,0,14,'Farrowing','2016-04-30 07:43:33'),(182,36,0,14,'Farrowing','2016-04-30 07:43:33'),(183,37,0,14,'Farrowing','2016-04-30 07:43:33'),(184,38,0,14,'Farrowing','2016-04-30 07:43:33'),(185,1,0,15,'Farrowing','2016-04-30 07:43:33'),(186,1,0,16,'Farrowing','2016-04-30 07:43:33');
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
  `ear_notch_number` mediumint(7) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pigs`
--

LOCK TABLES `pigs` WRITE;
/*!40000 ALTER TABLE `pigs` DISABLE KEYS */;
INSERT INTO `pigs` VALUES (1,1604011,NULL,30.00,'2016-04-30 07:21:52',NULL,NULL,0,1,'2016-04-13 16:00:00','M',NULL),(2,1604012,NULL,3.00,'2016-04-30 07:21:52',NULL,NULL,0,1,'2016-04-13 16:00:00','M',NULL),(3,1604013,NULL,30.00,'2016-04-30 07:21:52',NULL,NULL,0,1,'2016-04-13 16:00:00','M',NULL),(4,1604014,NULL,30.00,'2016-04-30 07:21:52',NULL,NULL,0,1,'2016-04-13 16:00:00','F',NULL),(5,1604015,NULL,30.00,'2016-04-30 07:21:52',NULL,NULL,0,1,'2016-04-13 16:00:00','F',NULL),(6,1604016,NULL,30.00,'2016-04-30 07:21:52',NULL,NULL,0,1,'2016-04-13 16:00:00','F',NULL),(7,1605001,NULL,20.00,'2016-05-01 14:00:10',4011,4015,0,2,'2016-05-04 16:00:00','M',NULL),(8,1605002,NULL,23.00,'2016-05-01 14:00:10',4011,4015,0,2,'2016-05-04 16:00:00','F',NULL),(9,1605003,NULL,40.00,'2016-05-01 14:16:22',4012,4016,0,3,'2016-05-06 16:00:00','M',NULL),(10,1605004,NULL,0.00,'2016-05-01 14:24:13',NULL,NULL,0,4,'2016-05-03 16:00:00','M',NULL),(11,1605005,NULL,0.00,'2016-05-01 14:24:13',NULL,NULL,0,4,'2016-05-03 16:00:00','M',NULL),(12,1605006,NULL,0.00,'2016-05-01 14:24:13',NULL,NULL,0,4,'2016-05-03 16:00:00','F',NULL),(13,1605007,NULL,0.00,'2016-05-01 14:26:01',NULL,12,0,5,'2016-05-02 16:00:00','M',NULL),(14,1605008,NULL,0.00,'2016-05-01 14:26:01',NULL,12,0,5,'2016-05-02 16:00:00','M',NULL),(15,1605009,NULL,0.00,'2016-05-01 14:26:01',NULL,12,0,5,'2016-05-02 16:00:00','F',NULL),(16,1605010,NULL,0.00,'2016-05-01 14:26:01',NULL,12,0,5,'2016-05-02 16:00:00','F',NULL),(17,1605011,NULL,0.00,'2016-05-01 14:35:18',14,16,0,6,'2016-05-01 16:00:00','M',NULL),(18,1605012,NULL,0.00,'2016-05-02 05:25:49',17,16,0,12,'2016-05-03 16:00:00','M',NULL),(19,1605013,NULL,0.00,'2016-05-02 05:28:52',7,15,0,13,'2016-05-02 16:00:00','M',NULL),(20,1605014,NULL,0.00,'2016-05-02 05:28:52',7,15,0,13,'2016-05-02 16:00:00','M',NULL),(21,1605015,NULL,0.00,'2016-05-02 05:28:52',7,15,0,13,'2016-05-02 16:00:00','M',NULL),(22,1605016,NULL,0.00,'2016-05-02 05:28:52',7,15,0,13,'2016-05-02 16:00:00','F',NULL),(23,1605017,NULL,0.00,'2016-05-02 05:28:52',7,15,0,13,'2016-05-02 16:00:00','F',NULL),(24,1605018,NULL,0.00,'2016-05-02 05:28:52',7,15,0,13,'2016-05-02 16:00:00','F',NULL),(25,1605019,NULL,0.00,'2016-05-02 05:28:52',7,15,0,13,'2016-05-02 16:00:00','F',NULL),(26,1605020,NULL,0.00,'2016-05-02 06:05:42',20,8,0,14,'2016-05-01 16:00:00','F',NULL),(27,1605021,NULL,0.00,'2016-05-03 01:14:57',17,4,0,15,'2016-05-04 16:00:00','M',NULL),(28,1605022,NULL,0.00,'2016-05-03 01:14:57',17,4,0,15,'2016-05-04 16:00:00','M',NULL),(29,1605023,NULL,0.00,'2016-05-03 01:18:58',1,8,0,16,'2016-05-09 16:00:00','M',NULL),(30,1605024,NULL,0.00,'2016-05-03 01:18:58',1,8,0,16,'2016-05-09 16:00:00','M',NULL),(31,1605025,NULL,0.00,'2016-05-03 01:18:58',1,8,0,16,'2016-05-09 16:00:00','F',NULL),(32,1605026,NULL,0.00,'2016-05-03 01:25:01',2,4,0,17,'2016-05-11 16:00:00','M',NULL),(33,1605027,NULL,0.00,'2016-05-03 01:25:01',2,4,0,17,'2016-05-11 16:00:00','M',NULL),(34,1605028,NULL,0.00,'2016-05-03 01:26:22',1,4,0,18,'2016-05-04 16:00:00','M',NULL),(35,1605029,NULL,0.00,'2016-05-03 01:26:22',1,4,0,18,'2016-05-04 16:00:00','M',NULL),(36,1605030,'Chester white',0.00,'2016-05-03 01:27:16',1,4,0,19,'2016-05-04 16:00:00','M',NULL),(37,1605031,'Chester white',0.00,'2016-05-03 01:27:16',1,4,0,19,'2016-05-04 16:00:00','M',NULL);
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

-- Dump completed on 2016-05-03 10:17:36
