-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 192.168.20.121    Database: EHTMS
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `synctable`
--

DROP TABLE IF EXISTS `synctable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `synctable` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `OPERATION` varchar(32) NOT NULL,
  `TABLENAME` varchar(64) NOT NULL,
  `RECORDID` bigint(20) NOT NULL,
  `STATUS` varchar(16) NOT NULL,
  `INSTITUTE` int(11) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FKjw18y4ej92gji9id9mlcgkgc7` (`INSTITUTE`),
  KEY `FK2c1mnatxctt327pv8fa53c4ti` (`STATUS`),
  CONSTRAINT `FK12k3js1g45luai18khhcqfqnl` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FK2c1mnatxctt327pv8fa53c4ti` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKjw18y4ej92gji9id9mlcgkgc7` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `synctable_ibfk_1` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `synctable_ibfk_2` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synctable`
--

LOCK TABLES `synctable` WRITE;
/*!40000 ALTER TABLE `synctable` DISABLE KEYS */;
INSERT INTO `synctable` VALUES (5,'ADD','MerchantCustomer',17,'INIT',4,'adminboc','2019-09-12 05:14:19','2019-09-12 05:14:19'),(6,'ADD','Merchant',39,'INIT',4,'single','2019-09-12 06:57:18','2019-09-12 06:57:18'),(7,'ADD','Terminal',3,'INIT',4,'adminboc','2019-09-12 07:12:46','2019-09-12 07:12:46'),(8,'ADD','Terminal',4,'INIT',4,'adminboc','2019-09-16 12:47:28','2019-09-16 12:47:28'),(9,'ADD','Terminal',5,'INIT',4,'adminboc','2019-09-16 13:17:11','2019-09-16 13:17:11'),(10,'UPDATE','Terminal',1,'INIT',4,'adminboc','2019-09-17 11:25:31','2019-09-17 11:25:31'),(11,'UPDATE','Terminal',1,'INIT',4,'adminboc','2019-09-18 04:32:12','2019-09-18 04:32:12'),(12,'UPDATE','Terminal',1,'INIT',4,'adminboc','2019-09-18 04:50:33','2019-09-18 04:50:33'),(13,'UPDATE','Merchant',38,'INIT',4,'adminboc','2019-09-18 07:41:11','2019-09-18 07:41:11'),(14,'UPDATE','Terminal',3,'INIT',4,'adminboc','2019-09-18 09:41:29','2019-09-18 09:41:29'),(15,'UPDATE','Terminal',2,'INIT',4,'adminboc','2019-09-18 10:17:24','2019-09-18 10:17:24'),(16,'ADD','Terminal',6,'INIT',4,'adminboc','2019-09-18 11:31:14','2019-09-18 11:31:14'),(17,'ADD','Terminal',7,'INIT',4,'adminboc','2019-09-18 11:42:38','2019-09-18 11:42:38'),(18,'UPDATE','Terminal',7,'INIT',4,'adminboc','2019-09-18 11:47:56','2019-09-18 11:47:56'),(19,'UPDATE','Terminal',6,'INIT',4,'adminboc','2019-09-19 05:15:04','2019-09-19 05:15:04'),(20,'ADD','Terminal',8,'INIT',4,'adminboc','2019-09-19 05:26:41','2019-09-19 05:26:41'),(21,'UPDATE','Terminal',8,'INIT',4,'adminboc','2019-09-19 05:41:33','2019-09-19 05:41:33'),(22,'UPDATE','Terminal',8,'INIT',4,'adminboc','2019-09-19 06:23:36','2019-09-19 06:23:36'),(23,'UPDATE','Terminal',6,'INIT',4,'adminboc','2019-09-19 06:30:32','2019-09-19 06:30:32'),(24,'ADD','Terminal',9,'INIT',4,'adminboc','2019-09-19 06:32:09','2019-09-19 06:32:09'),(25,'UPDATE','Terminal',9,'INIT',4,'adminboc','2019-09-19 06:34:08','2019-09-19 06:34:08'),(26,'UPDATE','Terminal',6,'INIT',4,'adminboc','2019-09-19 06:36:01','2019-09-19 06:36:01'),(27,'UPDATE','Terminal',3,'INIT',4,'adminboc','2019-09-19 06:38:16','2019-09-19 06:38:16'),(28,'ADD','Terminal',10,'INIT',4,'adminboc','2019-09-19 06:45:49','2019-09-19 06:45:49'),(29,'ADD','Terminal',11,'INIT',4,'adminboc','2019-09-19 08:37:51','2019-09-19 08:37:51'),(30,'ADD','Terminal',12,'INIT',4,'adminboc','2019-09-19 09:20:03','2019-09-19 09:20:03'),(31,'UPDATE','Terminal',12,'INIT',4,'adminboc','2019-09-19 09:22:26','2019-09-19 09:22:26'),(32,'UPDATE','Terminal',12,'INIT',4,'adminboc','2019-09-19 09:23:00','2019-09-19 09:23:00'),(33,'UPDATE','Terminal',12,'INIT',4,'adminboc','2019-09-19 09:24:13','2019-09-19 09:24:13'),(34,'UPDATE','Terminal',12,'INIT',4,'adminboc','2019-09-19 09:24:50','2019-09-19 09:24:50'),(35,'UPDATE','Terminal',12,'INIT',4,'adminboc','2019-09-19 09:25:20','2019-09-19 09:25:20'),(36,'ADD','Terminal',13,'INIT',4,'adminboc','2019-09-19 11:02:41','2019-09-19 11:02:41'),(37,'UPDATE','Terminal',13,'INIT',4,'adminboc','2019-09-19 11:04:38','2019-09-19 11:04:38'),(38,'UPDATE','Terminal',7,'INIT',4,'adminboc','2019-09-19 11:06:43','2019-09-19 11:06:43'),(39,'UPDATE','Terminal',7,'INIT',4,'adminboc','2019-09-19 11:07:14','2019-09-19 11:07:14'),(40,'UPDATE','Terminal',11,'INIT',4,'adminboc','2019-09-20 03:35:06','2019-09-20 03:35:06'),(41,'DELETE','Terminal',10,'INIT',4,'adminboc','2019-09-20 04:15:37','2019-09-20 04:15:37'),(42,'ADD','Merchant',40,'INIT',4,'adminboc','2019-09-20 06:12:22','2019-09-20 06:12:22'),(43,'UPDATE','Merchant',38,'INIT',4,'admin','2019-09-23 06:15:51','2019-09-23 06:15:51'),(44,'UPDATE','Merchant',39,'INIT',4,'admin','2019-09-23 06:18:57','2019-09-23 06:18:57'),(45,'UPDATE','Merchant',39,'INIT',4,'adminboc','2019-09-23 06:26:47','2019-09-23 06:26:04'),(46,'UPDATE','Merchant',38,'INIT',4,'adminboc','2019-09-23 06:35:47','2019-09-23 06:35:47'),(47,'UPDATE','Merchant',38,'INIT',4,'adminboc','2019-10-04 04:25:44','2019-10-04 04:25:44'),(48,'UPDATE','Merchant',38,'INIT',4,'adminboc','2019-10-04 05:31:12','2019-10-04 05:31:12'),(52,'UPDATE','Merchant',38,'INIT',4,'adminboc','2019-10-04 08:40:10','2019-10-04 08:40:10'),(57,'ADD','Merchant',41,'INIT',4,'adminboc','2019-10-04 08:49:46','2019-10-04 08:49:46'),(58,'DELETE','Merchant',41,'INIT',4,'adminboc','2019-10-04 08:50:03','2019-10-04 08:50:03'),(59,'UPDATE','Merchant',38,'INIT',4,'adminboc','2019-10-04 08:57:01','2019-10-04 08:57:01'),(60,'ADD','Terminal',14,'INIT',4,'adminboc','2019-10-04 09:56:50','2019-10-04 09:56:50'),(61,'ADD','Terminal',15,'INIT',4,'adminboc','2019-10-04 10:11:01','2019-10-04 10:11:01'),(62,'ADD','Terminal',16,'INIT',4,'adminboc','2019-10-04 10:17:12','2019-10-04 10:17:12'),(64,'ADD','Merchant',42,'INIT',4,'adminboc','2019-10-07 03:39:06','2019-10-07 03:39:06'),(65,'UPDATE','Merchant',42,'INIT',4,'adminboc','2019-10-07 03:39:38','2019-10-07 03:39:38'),(66,'DELETE','Merchant',42,'INIT',4,'adminboc','2019-10-07 03:39:55','2019-10-07 03:39:55'),(67,'DELETE','Terminal',7,'INIT',4,'adminboc','2019-10-09 05:35:08','2019-10-09 05:35:08'),(68,'DELETE','Terminal',11,'INIT',4,'adminboc','2019-10-09 05:57:53','2019-10-09 05:57:53');
/*!40000 ALTER TABLE `synctable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:33
