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
-- Table structure for table `mcc`
--

DROP TABLE IF EXISTS `mcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcc` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `MCCCODE` varchar(16) NOT NULL,
  `INSTITUTE` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK9ciufd6p2hl7w0bp3v1wjyqg0` (`INSTITUTE`),
  KEY `FKjkjd2g9xxttccptoylv2wgo0k` (`STATUS`),
  CONSTRAINT `FK9ciufd6p2hl7w0bp3v1wjyqg0` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FKdkxxf2mvyb0bvmp070mx3uhyr` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKjkjd2g9xxttccptoylv2wgo0k` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKqorpql00draao1tqk3dmv0uro` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `mcc_ibfk_1` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `mcc_ibfk_2` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcc`
--

LOCK TABLES `mcc` WRITE;
/*!40000 ALTER TABLE `mcc` DISABLE KEYS */;
INSERT INTO `mcc` VALUES (2,'001',4,'Sporting Goods Stores','ACT','mahel','2019-08-29 10:39:55','2019-08-29 10:39:55'),(3,'002',4,'Fast Food Restaurants','ACT','mahel','2019-08-29 10:39:50','2019-08-29 10:39:50'),(4,'003',4,'Drug Stores and Pharmacies','ACT','mahel','2019-08-29 10:39:48','2019-08-29 10:39:48'),(5,'004',4,'Eating Places Restaurants','ACT','mahel','2019-08-29 10:39:44','2019-08-29 10:39:44'),(6,'999',4,'Merchant Category test','ACT','admin','2019-02-08 11:59:13','2019-02-08 11:59:13');
/*!40000 ALTER TABLE `mcc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:27
