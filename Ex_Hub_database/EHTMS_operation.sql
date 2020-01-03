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
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operation` (
  `OPERATIONCODE` varchar(16) NOT NULL,
  `DESCRIPTION` varchar(64) DEFAULT NULL,
  `SORTKEY` smallint(6) DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`OPERATIONCODE`),
  KEY `STATUS` (`STATUS`),
  CONSTRAINT `FK5nrep4if8cxpju96ew0qgk51l` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKlximiyva4nw3ttis2hrhbl9qr` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` VALUES ('000','ECHO Operation',999,'ACT','admin','2019-05-28 09:03:43','2019-05-28 09:03:43'),('001','Application Download',20,'ACT','admin','2019-05-28 09:03:39','2019-05-28 09:03:39'),('002','Profile Download',22,'ACT','admin','2019-05-28 11:42:14','2019-05-28 09:03:36'),('003','Script Download',3,'ACT','admin','2019-05-28 09:03:33','2019-05-28 09:03:33'),('004','TLE Key Download',4,'ACT','admin','2019-05-28 09:03:30','2019-05-28 09:03:30'),('005','Debit Key Download',5,'ACT','admin','2019-05-28 09:03:27','2019-05-28 09:03:27'),('006','Initialize Settlement',6,'ACT','admin','2019-05-28 09:03:24','2019-05-28 09:03:24'),('007','Disable Terminal Operation',7,'ACT','admin','2019-05-28 09:03:20','2019-05-28 09:03:20'),('008','Enable Terminal Operations',8,'ACT','admin','2019-05-28 09:03:15','2019-05-28 09:03:15'),('009','Enable Log Level',9,'ACT','admin','2019-05-28 09:03:11','2019-05-28 09:03:11'),('010','Disable Log Level',10,'ACT','admin','2019-05-28 09:03:08','2019-05-28 09:03:08'),('011','Get Terminal Information',11,'ACT','admin','2019-05-28 09:03:04','2019-05-28 09:03:04'),('012','Alert Notification',12,'ACT','admin','2019-05-28 09:03:01','2019-05-28 09:03:01'),('013','Get Terminal Location',13,'ACT','admin','2019-05-28 09:02:58','2019-05-28 09:02:58'),('014','Upload Digital Receipt',14,'ACT','admin','2019-05-28 09:02:55','2019-05-28 09:02:55'),('015','Set SDK Configuration',15,'ACT','admin','2019-05-28 09:02:51','2019-05-28 09:02:51'),('100','INIT Operation',998,'ACT','adminboc','2019-09-05 12:08:36','2019-05-29 11:27:45');
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:38
