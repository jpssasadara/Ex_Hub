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
-- Table structure for table `casehistory`
--

DROP TABLE IF EXISTS `casehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casehistory` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CUSTOMERSUPPORTCASE` bigint(20) NOT NULL,
  `STATUS` varchar(16) NOT NULL,
  `CREATEDUSER` varchar(64) NOT NULL,
  `REMARK` varchar(256) DEFAULT NULL,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `CUSTOMERSUPPORTCASE` (`CUSTOMERSUPPORTCASE`),
  KEY `STATUS` (`STATUS`),
  CONSTRAINT `casehistory_ibfk_1` FOREIGN KEY (`CUSTOMERSUPPORTCASE`) REFERENCES `customersupportcase` (`ID`),
  CONSTRAINT `casehistory_ibfk_2` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casehistory`
--

LOCK TABLES `casehistory` WRITE;
/*!40000 ALTER TABLE `casehistory` DISABLE KEYS */;
INSERT INTO `casehistory` VALUES (1,15,'ASSIGNED','adminboc','check printer ','2019-09-30 11:21:51'),(2,18,'REOPEN','adminboc','check battary','2019-09-30 12:58:22'),(3,15,'CLOSED','adminboc','fixed signal issue and closed','2019-09-30 13:00:22'),(4,16,'ASSIGNED','adminboc',NULL,'2019-10-01 04:01:39'),(5,18,'ASSIGNED','single',NULL,'2019-10-03 07:32:48'),(13,19,'OPEN','instanceadmin',NULL,'2019-10-10 10:54:01'),(14,20,'OPEN','adminboc',NULL,'2019-10-10 10:55:23'),(15,21,'OPEN','admin',NULL,'2019-10-10 10:58:11'),(16,22,'OPEN','adminboc',NULL,'2019-10-11 05:34:34'),(19,19,'PROC','adminboc','start processing','2019-10-11 08:36:01'),(20,23,'OPEN','admin','hardware issue inititlize','2019-10-11 10:42:15'),(21,24,'OPEN','admin','hardware failure assign','2019-10-11 10:50:49'),(22,19,'PROC','admin','','2019-10-11 11:01:33'),(35,19,'PROC','adminboc','not fixed','2019-10-14 03:44:36');
/*!40000 ALTER TABLE `casehistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:18
