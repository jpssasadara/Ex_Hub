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
-- Table structure for table `customersupportcase`
--

DROP TABLE IF EXISTS `customersupportcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customersupportcase` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CASETYPE` varchar(16) DEFAULT NULL,
  `DESCRIPTION` varchar(64) DEFAULT NULL,
  `REFERENCENO` varchar(32) NOT NULL,
  `USERS` bigint(10) DEFAULT NULL,
  `REMARK` varchar(64) NOT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INSTITUTE` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `REFERENCENO` (`REFERENCENO`),
  KEY `CASETYPE` (`CASETYPE`),
  KEY `STATUS` (`STATUS`),
  KEY `INSTITUTE` (`INSTITUTE`),
  KEY `USERS` (`USERS`),
  CONSTRAINT `customersupportcase_ibfk_1` FOREIGN KEY (`CASETYPE`) REFERENCES `casetype` (`CASETYPECODE`),
  CONSTRAINT `customersupportcase_ibfk_2` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `customersupportcase_ibfk_3` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `customersupportcase_ibfk_4` FOREIGN KEY (`USERS`) REFERENCES `users` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customersupportcase`
--

LOCK TABLES `customersupportcase` WRITE;
/*!40000 ALTER TABLE `customersupportcase` DISABLE KEYS */;
INSERT INTO `customersupportcase` VALUES (15,'005','Cannot connect host','20190926162437',18,'Check Gprs Settings','CLOSED','adminboc','2019-09-30 13:00:22','2019-09-25 04:53:58',4),(16,'009','When insert card to device screen show card not supported msg','20190926162438',18,'Check bin ranges','ASSIGNED','adminboc','2019-10-01 04:01:39','2019-09-25 04:58:15',4),(17,'002','Device show error msg as Tamper','20190926162439',20,'Replace Device','ASTOVEND','adminboc','2019-09-26 12:28:51','2019-09-25 05:00:40',4),(18,'005','Not connection to bank','20190926162436',20,'not displaying 3g signals','ASSIGNED','single','2019-10-03 07:32:48','2019-09-26 10:54:36',4),(19,'252','haradware failure','84566',15,'not fixed','PROC','adminboc','2019-10-14 03:45:53','2019-10-10 10:54:01',4),(20,'253','hardware','333333',18,'initilize','CLOSED','adminboc','2019-10-11 08:14:13','2019-10-10 10:55:23',4),(21,'252','hardware damage','3265',2,'initialize ','OPEN','admin','2019-10-10 10:58:11','2019-10-10 10:58:11',3),(22,'252','hardware','3652',18,'hardware case initilized','CLOSED','adminboc','2019-10-11 06:29:47','2019-10-11 05:34:34',4),(23,'253','hardware issue inititlize','69539',2,'hardware issue inititlize','OPEN','admin','2019-10-11 10:42:15','2019-10-11 10:42:15',4),(24,'252','hardware failure','3653',NULL,'hardware failure assign','OPEN','admin','2019-10-11 10:50:49','2019-10-11 10:50:49',4);
/*!40000 ALTER TABLE `customersupportcase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:55
