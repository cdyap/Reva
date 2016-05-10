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
  `removal_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pig_id` mediumint(7) unsigned DEFAULT NULL,
  `date_of_removal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sale?` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'date pig removed from farm',
  `death?` tinyint(1) NOT NULL DEFAULT '0',
  `weight_on_removal` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `remarks` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`removal_id`)
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
-- Table structure for table `headcounts`
--

DROP TABLE IF EXISTS `headcounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headcounts` (
  `headcount_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT 'unique identifier of headcount',
  `headcount_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp of headcount',
  `pen_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT 'pen_id of the headcount',
  `headcount` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'headcount value',
  PRIMARY KEY (`headcount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headcounts`
--

LOCK TABLES `headcounts` WRITE;
/*!40000 ALTER TABLE `headcounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `headcounts` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `litters`
--

LOCK TABLES `litters` WRITE;
/*!40000 ALTER TABLE `litters` DISABLE KEYS */;
INSERT INTO `litters` VALUES (1,1,'2016-05-06 16:00:00','2016-05-06 16:00:00',0,1,'2016-05-04 16:00:00',0,2,1,6),(2,1,'2016-05-05 16:00:00','2016-05-05 16:00:00',0,0,'2016-05-03 16:00:00',0,5,4,2);
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
  `building_number` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `building_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pens`
--

LOCK TABLES `pens` WRITE;
/*!40000 ALTER TABLE `pens` DISABLE KEYS */;
INSERT INTO `pens` VALUES (1,1,1,'Fattener'),(2,2,1,'Fattener'),(3,3,1,'Fattener'),(4,4,1,'Fattener'),(5,5,1,'Fattener'),(6,6,1,'Fattener'),(7,7,1,'Fattener'),(8,8,1,'Fattener'),(9,9,1,'Fattener'),(10,10,1,'Fattener'),(11,1,2,'Grower'),(12,2,2,'Grower'),(13,3,2,'Grower'),(14,4,2,'Grower'),(15,5,2,'Grower'),(16,6,2,'Grower'),(17,7,2,'Grower'),(18,8,2,'Grower'),(19,9,2,'Grower'),(20,10,2,'Grower'),(21,1,3,'Grower'),(22,2,3,'Grower'),(23,3,3,'Grower'),(24,4,3,'Grower'),(25,5,3,'Grower'),(26,6,3,'Grower'),(27,7,3,'Grower'),(28,8,3,'Grower'),(29,9,3,'Grower'),(30,10,3,'Grower'),(31,11,3,'Grower'),(32,12,3,'Grower'),(33,1,4,'Grower'),(34,2,4,'Grower'),(35,3,4,'Grower'),(36,4,4,'Grower'),(37,5,4,'Grower'),(38,6,4,'Grower'),(39,7,4,'Grower'),(40,8,4,'Grower'),(41,9,4,'Grower'),(42,10,4,'Grower'),(43,11,4,'Grower'),(44,12,4,'Grower'),(45,1,5,'Grower'),(46,2,5,'Grower'),(47,3,5,'Grower'),(48,4,5,'Grower'),(49,5,5,'Grower'),(50,6,5,'Grower'),(51,7,5,'Grower'),(52,8,5,'Grower'),(53,9,5,'Grower'),(54,10,5,'Grower'),(55,11,5,'Grower'),(56,12,5,'Grower'),(57,13,5,'Grower'),(58,14,5,'Grower'),(59,1,6,'Grower'),(60,2,6,'Grower'),(61,3,6,'Grower'),(62,4,6,'Grower'),(63,5,6,'Grower'),(64,6,6,'Grower'),(65,7,6,'Grower'),(66,8,6,'Grower'),(67,9,6,'Grower'),(68,10,6,'Grower'),(69,11,6,'Grower'),(70,12,6,'Grower'),(71,13,6,'Grower'),(72,14,6,'Grower'),(73,1,7,'Starter'),(74,2,7,'Starter'),(75,3,7,'Starter'),(76,4,7,'Starter'),(77,5,7,'Starter'),(78,6,7,'Starter'),(79,7,7,'Starter'),(80,8,7,'Starter'),(81,9,7,'Starter'),(82,10,7,'Starter'),(83,11,7,'Starter'),(84,12,7,'Starter'),(85,13,7,'Starter'),(86,14,7,'Starter'),(87,1,8,'Gestating'),(88,1,9,'Gestating'),(89,1,10,'Gestating'),(90,1,11,'Gestating'),(91,1,12,'Starter'),(92,2,12,'Starter'),(93,3,12,'Starter'),(94,4,12,'Starter'),(95,5,12,'Starter'),(96,6,12,'Starter'),(97,7,12,'Starter'),(98,8,12,'Starter'),(99,9,12,'Starter'),(100,10,12,'Starter'),(101,11,12,'Starter'),(102,12,12,'Starter'),(103,13,12,'Starter'),(104,14,12,'Starter'),(105,15,12,'Starter'),(106,16,12,'Starter'),(107,17,12,'Starter'),(108,18,12,'Starter'),(109,19,12,'Starter'),(110,20,12,'Starter'),(111,21,12,'Starter'),(112,22,12,'Starter'),(113,23,12,'Starter'),(114,24,12,'Starter'),(115,25,12,'Starter'),(116,26,12,'Starter'),(117,27,12,'Starter'),(118,28,12,'Starter'),(119,1,13,'Pre-Starter'),(120,2,13,'Pre-Starter'),(121,3,13,'Pre-Starter'),(122,4,13,'Pre-Starter'),(123,5,13,'Pre-Starter'),(124,6,13,'Pre-Starter'),(125,7,13,'Pre-Starter'),(126,8,13,'Pre-Starter'),(127,9,13,'Pre-Starter'),(128,10,13,'Pre-Starter'),(129,11,13,'Pre-Starter'),(130,12,13,'Pre-Starter'),(131,13,13,'Pre-Starter'),(132,14,13,'Pre-Starter'),(133,15,13,'Pre-Starter'),(134,16,13,'Pre-Starter'),(135,17,13,'Pre-Starter'),(136,18,13,'Pre-Starter'),(137,19,13,'Pre-Starter'),(138,20,13,'Pre-Starter'),(139,21,13,'Pre-Starter'),(140,22,13,'Pre-Starter'),(141,23,13,'Pre-Starter'),(142,24,13,'Pre-Starter'),(143,25,13,'Pre-Starter'),(144,26,13,'Pre-Starter'),(145,27,13,'Pre-Starter'),(146,28,13,'Pre-Starter'),(147,1,14,'Farrowing'),(148,2,14,'Farrowing'),(149,3,14,'Farrowing'),(150,4,14,'Farrowing'),(151,5,14,'Farrowing'),(152,6,14,'Farrowing'),(153,7,14,'Farrowing'),(154,8,14,'Farrowing'),(155,9,14,'Farrowing'),(156,10,14,'Farrowing'),(157,11,14,'Farrowing'),(158,12,14,'Farrowing'),(159,13,14,'Farrowing'),(160,14,14,'Farrowing'),(161,15,14,'Farrowing'),(162,16,14,'Farrowing'),(163,17,14,'Farrowing'),(164,18,14,'Farrowing'),(165,19,14,'Farrowing'),(166,20,14,'Farrowing'),(167,21,14,'Farrowing'),(168,22,14,'Farrowing'),(169,23,14,'Farrowing'),(170,24,14,'Farrowing'),(171,25,14,'Farrowing'),(172,26,14,'Farrowing'),(173,27,14,'Farrowing'),(174,28,14,'Farrowing'),(175,29,14,'Farrowing'),(176,30,14,'Farrowing'),(177,31,14,'Farrowing'),(178,32,14,'Farrowing'),(179,33,14,'Farrowing'),(180,34,14,'Farrowing'),(181,35,14,'Farrowing'),(182,36,14,'Farrowing'),(183,37,14,'Farrowing'),(184,38,14,'Farrowing'),(185,1,15,'Farrowing'),(186,1,16,'Farrowing');
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
  `weaning_weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_weaned` timestamp NULL DEFAULT NULL,
  `dam_id` smallint(5) unsigned DEFAULT NULL,
  `sire_id` smallint(5) unsigned DEFAULT NULL,
  `pen_id` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `litter_id` smallint(6) unsigned DEFAULT NULL,
  `date_of_birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sex` char(1) NOT NULL DEFAULT 'x',
  `remarks` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pig_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pigs`
--

LOCK TABLES `pigs` WRITE;
/*!40000 ALTER TABLE `pigs` DISABLE KEYS */;
INSERT INTO `pigs` VALUES (1,1605000,'Large white',30.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-04 16:00:00','M',NULL),(2,1605001,'Pure land race',31.00,0.00,NULL,NULL,NULL,0,NULL,'2016-05-04 16:00:00','F',NULL),(3,1605002,'Pure land race',20.00,0.00,NULL,2,1,0,1,'2016-05-06 16:00:00','M',NULL),(4,1605003,'Pure land race',20.00,0.00,NULL,2,1,0,1,'2016-05-06 16:00:00','M',NULL),(5,1605004,'Pure land race',20.00,0.00,NULL,2,1,0,1,'2016-05-06 16:00:00','F',NULL),(6,1605005,'Pure land race',20.00,0.00,NULL,2,1,0,1,'2016-05-06 16:00:00','F',NULL),(7,1605006,'Pure land race',20.00,0.00,NULL,2,1,0,1,'2016-05-06 16:00:00','F',NULL),(8,1605007,'Pure land race',25.00,0.00,NULL,5,4,0,2,'2016-05-05 16:00:00','M',NULL),(9,1605008,'Pure land race',25.00,0.00,NULL,5,4,0,2,'2016-05-05 16:00:00','F',NULL);
/*!40000 ALTER TABLE `pigs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-06 15:18:22
