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
-- Table structure for table `pageinstitute`
--

DROP TABLE IF EXISTS `pageinstitute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pageinstitute` (
  `PAGE` varchar(16) NOT NULL,
  `INSTITUTE` int(11) NOT NULL,
  `DUALAUTH` bit(1) NOT NULL DEFAULT b'1',
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PAGE`,`INSTITUTE`),
  KEY `FKoqre0agni9ski436du91ckkkn` (`INSTITUTE`),
  KEY `FKdml0ftve57nn7boimbbemxdf` (`STATUS`),
  CONSTRAINT `pageinstitute_ibfk_1` FOREIGN KEY (`PAGE`) REFERENCES `page` (`PAGECODE`),
  CONSTRAINT `pageinstitute_ibfk_2` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `pageinstitute_ibfk_3` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pageinstitute`
--

LOCK TABLES `pageinstitute` WRITE;
/*!40000 ALTER TABLE `pageinstitute` DISABLE KEYS */;
INSERT INTO `pageinstitute` VALUES ('ADMT',4,_binary '','DCT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('APMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('AVMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('BRMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('CCMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-10 11:04:32'),('CMCT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-10 11:04:32'),('CMTY',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-10 11:04:32'),('CRMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('CSCM',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-10 11:04:32'),('CSMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-10 11:04:32'),('CSOM',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-10 11:04:32'),('CSRA',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('CTMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('CYMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('DBMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-02 10:15:54'),('DCMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('DMMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('DOMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 14:38:45'),('DORG',4,_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('DPMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('DPRT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-04 10:38:05'),('DSMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-04 10:38:05'),('DTMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('DVMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('GPCM',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('ITMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-10 11:15:40'),('MCMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('MRMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('OPMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('PIMT',4,_binary '','DCT','admin','2019-10-14 09:25:02','2019-09-20 10:45:30'),('PMMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('PPMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('PVMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('RQMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-04 10:38:05'),('TEMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-09-04 10:38:05'),('URMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-08-22 17:21:34'),('USMT',3,_binary '','ACT','admin','2019-09-23 09:07:35','2019-08-22 17:21:34'),('USMT',4,_binary '','ACT','admin','2019-10-03 11:17:20','2019-10-03 11:17:20');
/*!40000 ALTER TABLE `pageinstitute` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:32
