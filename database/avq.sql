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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dental_records`
--

LOCK TABLES `dental_records` WRITE;
/*!40000 ALTER TABLE `dental_records` DISABLE KEYS */;
INSERT INTO `dental_records` VALUES (1,1,1,0,NULL,'try lang','2016-09-19 17:49:10'),(2,5,1,3,NULL,'dded','2016-09-19 17:51:27'),(3,1,4,0,NULL,'tinry ko today','2016-09-25 23:05:25'),(4,2,1,0,NULL,'restoration for 2','2016-10-08 02:07:52'),(5,1,2,0,NULL,'packeck kay sir nung oct 10','2016-10-10 18:50:19'),(6,1,2,0,NULL,'fGSDGSDGSDF','2016-10-12 17:07:13'),(7,1,1,0,NULL,'new one','2016-10-12 18:21:14'),(8,1,1,0,NULL,'new one','2016-10-12 18:21:14'),(9,1,1,0,NULL,'october 12 2016','2016-10-12 18:21:44'),(10,2,1,0,NULL,'wwwwwww','2016-10-12 18:22:50'),(11,1,1,0,NULL,'oct 12 7:12','2016-10-12 19:11:41'),(12,1,1,0,NULL,'oct 12 7:12','2016-10-12 19:12:06'),(13,1,1,0,NULL,'oct 12 7:13','2016-10-12 19:12:23'),(14,1,1,0,NULL,'oct 12 gumana na pls','2016-10-12 19:12:50'),(15,1,1,0,NULL,'ssssss','2016-10-12 19:14:33'),(16,1,1,0,NULL,'xxx','2016-10-12 19:16:10'),(17,1,1,0,NULL,'whattt','2016-10-12 19:18:34'),(18,1,1,0,NULL,'whattt','2016-10-12 19:19:35'),(19,1,1,0,NULL,'ddd','2016-10-12 19:19:50'),(20,1,1,0,NULL,'cc','2016-10-12 19:20:35'),(21,1,1,0,NULL,'xxxx','2016-10-12 19:21:36'),(22,1,1,0,NULL,'okokokoko','2016-10-12 19:22:27'),(23,1,1,0,NULL,'xczcasdas','2016-10-12 19:23:49'),(24,2,1,0,NULL,'xczcsdfaf','2016-10-12 19:29:25'),(25,1,1,0,NULL,'xczcccc','2016-10-12 19:30:26'),(26,2,1,0,NULL,'ccvsdvsvsde','2016-10-12 19:31:54'),(27,2,1,0,NULL,'bncvkljf','2016-10-12 19:32:42'),(28,2,1,0,NULL,'lmlm','2016-10-12 19:34:36'),(29,2,1,0,NULL,'plplplpl','2016-10-12 19:35:29'),(30,2,1,0,NULL,'vxcvgf','2016-10-12 19:36:08'),(31,2,1,0,NULL,'cvbcb','2016-10-12 19:37:35'),(32,2,1,0,NULL,'lllll','2016-10-12 19:37:58'),(33,2,1,0,NULL,'pppp','2016-10-12 19:39:43'),(34,2,1,0,NULL,'plplpl','2016-10-12 19:40:29'),(35,2,1,0,NULL,'cvopskdvposk','2016-10-12 19:42:38'),(36,1,1,0,NULL,'okokokplp','2016-10-12 19:43:16'),(37,1,1,0,NULL,'plplpl','2016-10-12 19:44:23'),(38,5,1,0,NULL,'spflaspfl','2016-10-12 19:46:54'),(39,2,1,0,NULL,'plfplpl','2016-10-12 19:47:45'),(40,7,1,0,NULL,'plplplxzpvlz','2016-10-12 19:48:06'),(41,1,1,0,NULL,'mmhjmhj','2016-10-12 19:52:36'),(42,2,1,0,NULL,'jkmhjmghm','2016-10-12 19:52:42'),(43,2,1,0,NULL,'dfdsfs','2016-10-12 19:53:36'),(44,2,1,0,NULL,'ttwt','2016-10-12 22:39:26'),(45,1,1,0,NULL,'34523523','2016-10-12 22:40:51'),(46,2,1,0,NULL,'65265','2016-10-12 22:43:09'),(47,1,1,0,NULL,'564964','2016-10-12 22:43:35'),(48,5,1,0,NULL,'54984','2016-10-12 22:45:38'),(49,5,1,0,NULL,'54984','2016-10-12 22:45:52'),(50,5,1,0,NULL,'234234','2016-10-12 22:46:21'),(51,1,1500,0,NULL,'2342','2016-10-12 22:47:29'),(52,7,1500,0,NULL,'we42','2016-10-12 22:48:12'),(53,7,1500,0,NULL,'234','2016-10-12 22:48:42'),(54,7,1500,0,NULL,'fadfa','2016-10-12 22:48:46'),(55,1,1,0,NULL,'43','2016-10-12 22:58:31'),(56,1,1,0,NULL,'43','2016-10-12 22:58:56'),(57,1,1,0,NULL,'43','2016-10-12 22:59:13'),(58,1,1,0,NULL,'234234','2016-10-12 22:59:33'),(59,2,1,0,NULL,'3453','2016-10-12 22:59:43'),(60,1,1,0,NULL,'','2016-10-12 22:59:59'),(61,1,1,0,NULL,'2342','2016-10-12 23:00:49'),(62,1,1,0,NULL,'2131','2016-10-12 23:01:20'),(63,1,1,0,NULL,'sd','2016-10-12 23:01:57'),(64,1,1,0,NULL,'23423','2016-10-12 23:08:58'),(65,1,1,0,NULL,'23423','2016-10-12 23:09:09');
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
INSERT INTO `patient` VALUES (1,'Ray Vincent Phillip','Dineros','Villaver','Makati City','09480676172','1995-06-03','Singleddd','Web Developer (Backend)',5500),(2,'Kathleen Claire','De Leon','Saquilayan','Pateros City','09074946945','1995-01-06','Single','Chef',4095),(5,'FirstEditRheaMarieGulo','MiddleUPDATE','Lastxxx','Address','Contact','1567-01-03','Single','pation',1001),(7,'John','Hernandez','Villete','Taguig','12345678','1995-01-01','Single','manager',4500),(9,'First','MIddleEdit','Last','Address','09234435467','0000-00-00','Single','Occupation',0),(10,'First','MIddletyng isa','Last','Adress','09234435467','0000-00-00','Single','Occupation',0),(11,'AgainFirst1234567','AgainMiddle12345678','AgainLast','AgainAddress','3242314','0000-00-00','Single','Occupation',0),(12,'John Paulo','Vergara','Cruz','South Cembo','12345678','0000-00-00','Taken','Developer',0),(13,'askjh','kjh','lkjh','klj','hklj','0000-00-00','kjlhkj','kjhlkj',0),(14,'Aldwin','Balagtas','Labrador','Caloocan','123456789','0000-00-00','Married','Full Stack Developer',0),(15,'Michael','Dineros','Quimson','Valle Verde 5','1239879012','0000-00-00','Single','Dota Player',0),(16,'Modal First','Modal Middle','Modal Last','Modal Address','Modal Contact','0000-00-00','Modal Status','Modal Occupation',0),(17,'Raphael John','Dineros','','','','0000-00-00','','',0),(18,'Raphael John','Dineros','Quimson','','','0000-00-00','','',0),(19,'Raphael John','Dineros','Quimson','','','0000-00-00','','',0),(20,'Raphael John ','Dineros','Quimson','Pasig','09989852484','0000-00-00','Single','Tambay',0);
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
  `balance` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'kath','saquilayan','De Leon','De Leon','Saquilayan','Manager'),(3,'pelp','villaver','Ray Vincent Phillip','Dineros','Villaver','Developer');
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

-- Dump completed on 2016-10-12 23:10:10
