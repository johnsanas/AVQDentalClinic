-- MySQL dump 10.13  Distrib 5.6.26, for Win32 (x86)
--
-- Host: localhost    Database: avq
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `dental_records`
--

DROP TABLE IF EXISTS `dental_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dental_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `title` mediumtext,
  `description` longtext NOT NULL,
  `date_time` datetime NOT NULL,
  `balance` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental_records`
--

LOCK TABLES `dental_records` WRITE;
/*!40000 ALTER TABLE `dental_records` DISABLE KEYS */;
INSERT INTO `dental_records` VALUES (73,1,1,0,NULL,'try tonight','2016-10-13 03:22:43',1500),(74,1,1,0,NULL,'try tonight','2016-10-13 03:22:43',1500),(75,2,1,0,NULL,'bhuiiii','2016-10-13 03:23:48',1198),(76,2,1,0,NULL,'bhuiiii','2016-10-13 03:23:48',1350),(77,1,1,0,NULL,'cvxcv','2016-10-13 03:24:03',1500),(78,1,1,0,NULL,'cvxcv','2016-10-13 03:24:04',1500),(79,1,1,0,NULL,'1 click','2016-10-13 03:26:44',1500),(80,2,1,0,NULL,'xzcz','2016-10-13 03:27:01',1500),(81,1,1,0,NULL,'xxzc','2016-10-13 03:27:30',1250),(83,14,3,0,NULL,'Extract try','2016-10-13 13:58:19',350),(84,7,2,0,NULL,'Palinis','2016-10-13 14:03:52',0);
/*!40000 ALTER TABLE `dental_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action` longtext NOT NULL,
  `received_by` int(11) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(175) NOT NULL,
  `contact_number` varchar(25) NOT NULL,
  `birthday` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `balance` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Ray Vincent Phillip','Dineros','Villaver','Makati City','09480676172','1995-06-03','Singleddd','Web Developer (Backend)',8750),(2,'Kathleen Claire','De Leon','Saquilayan','Pateros City','09074946945','1995-01-06','Single','Chef',3548),(5,'FirstEditRheaMarieGulo','MiddleUPDATE','Lastxxx','Address','Contact','1567-01-03','Single','pation',0),(7,'John','Hernandez','Villete','Taguig','12345678','1995-01-01','Single','manager',0),(9,'First','MIddleEdit','Last','Address','09234435467','0000-00-00','Single','Occupation',0),(10,'First','MIddletyng isa','Last','Adress','09234435467','0000-00-00','Single','Occupation',0),(11,'AgainFirst1234567','AgainMiddle12345678','AgainLast','AgainAddress','3242314','0000-00-00','Single','Occupation',0),(12,'John Paulo','Vergara','Cruz','South Cembo','12345678','0000-00-00','Taken','Developer',0),(13,'askjh','kjh','lkjh','klj','hklj','0000-00-00','kjlhkj','kjhlkj',0),(14,'Aldwin','Balagtas','Labrador','Caloocan','123456789','0000-00-00','Married','Full Stack Developer',350),(15,'Michael','Dineros','Quimson','Valle Verde 5','1239879012','0000-00-00','Single','Dota Player',0),(16,'Modal First','Modal Middle','Modal Last','Modal Address','Modal Contact','0000-00-00','Modal Status','Modal Occupation',0),(18,'Raphael John','Dineros','Quimson','','','0000-00-00','','',0),(19,'Raphael John','Dineros','Quimson','','','0000-00-00','','',0),(20,'Raphael John ','Dineros','Quimson','Pasig','09989852484','0000-00-00','Single','Tambay',0);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `paid` float NOT NULL,
  `payment_for` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,2,2,0,0,'2016-10-13 04:13:02'),(2,2,500,82,0,'2016-10-13 12:42:29'),(3,2,0,75,0,'2016-10-13 13:04:17'),(4,2,300,75,0,'2016-10-13 13:52:38'),(5,2,75,76,0,'2016-10-13 13:54:54'),(6,2,75,76,0,'2016-10-13 13:54:54'),(7,2,750,82,0,'2016-10-13 13:55:29'),(8,2,750,82,0,'2016-10-13 13:55:30'),(9,1,250,81,0,'2016-10-13 13:56:25'),(10,14,350,83,0,'2016-10-13 13:58:53'),(11,7,250,84,0,'2016-10-13 14:04:19'),(12,7,250,84,0,'2016-10-13 14:04:38');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Restoration','Pasta',1500),(2,'Oral Prophylaxis','Cleaning',500),(3,'Extraction',NULL,700),(4,'Endodontic Treatment',NULL,800),(5,'Prosthodontic',NULL,500);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(75) NOT NULL,
  `password` varchar(75) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `middle_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'kath','saquilayan','De Leon','De Leon','Saquilayan','Manager'),(3,'pelp','villaver','Ray Vincent Phillip','Dineros','Villaver','Developer'),(4,'john','villete','John','Hernandez','Villete','Developer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-13 14:24:26
