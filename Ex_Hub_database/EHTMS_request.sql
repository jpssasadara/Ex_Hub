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
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `INSTITUTE` int(11) DEFAULT NULL,
  `DEVICE` bigint(20) NOT NULL,
  `OPERATION` varchar(16) DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK5p3y50pvi5urp9w883xsff1gj` (`DEVICE`),
  KEY `FKj3rl055y1i1nkaw8itq5sbyrg` (`INSTITUTE`),
  KEY `FK94pxysjvks0w9jj7xtsffc0je` (`OPERATION`),
  KEY `FK9o2lphm4m10m533xv6ndg76ws` (`STATUS`),
  CONSTRAINT `FK5p3y50pvi5urp9w883xsff1gj` FOREIGN KEY (`DEVICE`) REFERENCES `device` (`ID`),
  CONSTRAINT `FK7cj1bhuuuud317897wyqltnm7` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FK94pxysjvks0w9jj7xtsffc0je` FOREIGN KEY (`OPERATION`) REFERENCES `operation` (`OPERATIONCODE`),
  CONSTRAINT `FK9o2lphm4m10m533xv6ndg76ws` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKa100mnn1dnbuaqtx55198opli` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FKcnyf3i23aju3yg678nsaskunp` FOREIGN KEY (`DEVICE`) REFERENCES `device` (`ID`),
  CONSTRAINT `FKj3rl055y1i1nkaw8itq5sbyrg` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FKps6f6a0bbyoo8w101jr9p7wku` FOREIGN KEY (`OPERATION`) REFERENCES `operation` (`OPERATIONCODE`),
  CONSTRAINT `request_ibfk_1` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `request_ibfk_2` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `request_ibfk_3` FOREIGN KEY (`DEVICE`) REFERENCES `device` (`ID`),
  CONSTRAINT `request_ibfk_4` FOREIGN KEY (`OPERATION`) REFERENCES `operation` (`OPERATIONCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (1,4,7,'002','OPSS','Rest Service','2019-09-12 09:32:18'),(2,4,7,'002','OPSS','Rest Service','2019-09-12 09:32:23'),(3,4,7,'002','OPSS','Rest Service','2019-09-12 09:34:18'),(4,4,7,'002','OPSS','Rest Service','2019-09-12 09:34:23'),(5,4,7,'001','OPSS','Rest Service','2019-09-12 10:27:18'),(6,4,7,'001','OPSS','Rest Service','2019-09-12 10:27:23'),(7,4,7,'001','OPSS','Rest Service','2019-09-12 10:28:17'),(8,4,7,'001','OPSS','Rest Service','2019-09-12 10:28:22'),(9,4,7,'002','OPSS','Rest Service','2019-09-12 10:28:54'),(10,4,7,'002','OPSS','Rest Service','2019-09-12 10:28:59'),(11,4,7,'003','OPSF','Rest Service','2019-09-12 10:57:29'),(12,4,7,'003','OPSF','Rest Service','2019-09-12 10:57:34'),(13,4,7,'003','OPSF','Rest Service','2019-09-12 10:57:39'),(14,4,7,'003','OPSF','Rest Service','2019-09-12 10:57:45'),(15,4,7,'003','OPSF','Rest Service','2019-09-12 10:57:50'),(16,4,7,'003','OPSF','Rest Service','2019-09-12 10:57:55'),(17,4,7,'003','OPSF','Rest Service','2019-09-12 10:58:00'),(18,4,7,'003','OPSF','Rest Service','2019-09-12 10:58:05'),(19,4,7,'003','OPSF','Rest Service','2019-09-12 10:58:10'),(20,4,7,'003','OPSF','Rest Service','2019-09-12 10:58:16'),(21,4,7,'003','OPSF','Rest Service','2019-09-12 10:58:21'),(22,4,7,'003','OPSF','Rest Service','2019-09-12 10:58:26'),(23,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:07'),(24,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:13'),(25,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:18'),(26,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:23'),(27,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:28'),(28,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:33'),(29,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:39'),(30,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:44'),(31,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:49'),(32,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:54'),(33,4,7,'003','OPSF','Rest Service','2019-09-12 10:59:59'),(34,4,7,'003','OPSF','Rest Service','2019-09-12 11:00:04'),(35,4,7,'003','OPSF','Rest Service','2019-09-12 11:00:10'),(36,4,7,'003','OPSF','Rest Service','2019-09-12 11:00:15'),(37,4,7,'003','OPSF','Rest Service','2019-09-12 11:00:20'),(38,4,7,'003','OPSF','Rest Service','2019-09-12 11:00:25'),(39,4,7,'003','OPSS','Rest Service','2019-09-12 11:00:40'),(40,4,7,'003','OPSS','Rest Service','2019-09-12 11:00:45'),(41,4,7,'002','OPSF','Rest Service','2019-09-16 04:46:54'),(42,4,7,'002','OPSF','Rest Service','2019-09-16 04:48:16'),(43,4,7,'002','OPSF','Rest Service','2019-09-16 06:35:15'),(44,4,7,'002','OPSF','Rest Service','2019-09-16 07:30:30'),(45,4,7,'002','OPSF','Rest Service','2019-09-16 07:30:36'),(46,4,7,'002','OPSF','Rest Service','2019-09-16 07:30:42'),(47,4,7,'002','OPSF','Rest Service','2019-09-16 07:30:47'),(48,4,7,'002','OPSS','Rest Service','2019-09-16 07:31:07'),(49,4,7,'002','OPSS','Rest Service','2019-09-16 07:31:12');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:53
