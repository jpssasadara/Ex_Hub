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
-- Table structure for table `pageinstance`
--

DROP TABLE IF EXISTS `pageinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pageinstance` (
  `PAGE` varchar(16) NOT NULL,
  `INSTANCE` varchar(16) NOT NULL,
  `DUALAUTH` bit(1) NOT NULL DEFAULT b'1',
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PAGE`,`INSTANCE`),
  KEY `FK56hcg9ch8648qbui0xf8s1bx0` (`INSTANCE`),
  KEY `FKieys07t0vsi2webu9fl2cdj0k` (`STATUS`),
  CONSTRAINT `pageinstance_ibfk_1` FOREIGN KEY (`PAGE`) REFERENCES `page` (`PAGECODE`),
  CONSTRAINT `pageinstance_ibfk_2` FOREIGN KEY (`INSTANCE`) REFERENCES `instance` (`INSTANCECODE`),
  CONSTRAINT `pageinstance_ibfk_3` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pageinstance`
--

LOCK TABLES `pageinstance` WRITE;
/*!40000 ALTER TABLE `pageinstance` DISABLE KEYS */;
INSERT INTO `pageinstance` VALUES ('ADMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('ADMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('APMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('APMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-01 07:27:11'),('AVMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('AVMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-01 07:27:11'),('BRMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('BRMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-06 05:54:32'),('CCMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-10 10:52:23'),('CCMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('CMCT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-10 10:52:23'),('CMCT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('CMTY','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-10 10:52:23'),('CMTY','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('CRMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('CRMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-08 04:53:06'),('CSCM','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-10 10:52:23'),('CSCM','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('CSMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-10 10:52:23'),('CSMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('CSOM','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-10 10:52:23'),('CSOM','VERIFONE',_binary '\0','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('CSRA','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-10 10:52:23'),('CSRA','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('CTMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('CTMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 02:40:18'),('CYMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('CYMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 03:12:20'),('DBMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-30 03:50:48'),('DBMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-30 03:50:22'),('DCMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('DCMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-08 10:05:59'),('DMMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('DMMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-06 11:53:26'),('DOMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-22 13:49:40'),('DOMT','VERIFONE',_binary '\0','ACT','admin','2019-09-03 08:52:53','2019-08-21 04:22:59'),('DORG','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('DORG','VERIFONE',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('DPMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('DPMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-01 07:27:11'),('DPRT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-03 08:54:16'),('DPRT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-26 10:50:11'),('DSMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-03 08:54:16'),('DSMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-09-03 08:52:53'),('DTMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('DTMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 03:47:36'),('DVMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('DVMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-01 07:27:11'),('GPCM','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('GPCM','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('IIMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-04-03 11:10:17'),('ITMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('ITMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-15 10:25:32'),('MCMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('MCMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-15 11:37:10'),('MRMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('MRMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-15 10:21:52'),('OPMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-22 13:49:40'),('OPMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-19 04:15:55'),('PGMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 04:52:41'),('PIMT','EPIC',_binary '','ACT','admin','2019-09-20 09:11:09','2019-09-20 09:11:09'),('PIMT','VERIFONE',_binary '','ACT','admin','2019-09-20 09:11:09','2019-09-20 09:11:09'),('PMIT','VERIFONE',_binary '\0','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('PMMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-22 13:49:40'),('PMMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-16 17:22:01'),('PPMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-22 13:49:40'),('PPMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-16 17:22:01'),('PVMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('PVMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 04:20:51'),('RQMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-03 08:54:16'),('RQMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-12 05:10:33'),('TEMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-09-04 10:25:29'),('TEMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-21 07:38:25'),('URMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('URMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-06 05:09:54'),('USMT','EPIC',_binary '','ACT','admin','2019-09-10 11:02:01','2019-08-21 04:22:59'),('USMT','VERIFONE',_binary '','ACT','admin','2019-09-03 08:52:53','2019-08-16 17:22:01');
/*!40000 ALTER TABLE `pageinstance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:29
