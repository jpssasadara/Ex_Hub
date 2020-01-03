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
-- Table structure for table `casetype`
--

DROP TABLE IF EXISTS `casetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casetype` (
  `CASETYPECODE` varchar(16) NOT NULL,
  `CASECATEGORY` varchar(16) NOT NULL,
  `DESCRIPTION` varchar(64) DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CASETYPECODE`),
  KEY `CASECATEGORY` (`CASECATEGORY`),
  KEY `STATUS` (`STATUS`),
  CONSTRAINT `casetype_ibfk_1` FOREIGN KEY (`CASECATEGORY`) REFERENCES `casecategory` (`CATEGORYCODE`),
  CONSTRAINT `casetype_ibfk_2` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casetype`
--

LOCK TABLES `casetype` WRITE;
/*!40000 ALTER TABLE `casetype` DISABLE KEYS */;
INSERT INTO `casetype` VALUES ('001','002','Terminal not powering on','ACT','single','2019-09-25 04:41:00','2019-09-25 04:41:00'),('002','002','Tamper','ACT','single','2019-09-25 04:49:08','2019-09-25 04:49:08'),('003','002','Printer error','ACT','single','2019-09-25 04:49:05','2019-09-25 04:49:05'),('004','002','One side of the print out not clear','ACT','single','2019-09-25 04:49:02','2019-09-25 04:49:02'),('005','002','Network unavailable','ACT','single','2019-09-25 04:48:58','2019-09-25 04:48:58'),('006','001','Card swipe error','ACT','single','2019-09-25 04:51:52','2019-09-25 04:51:52'),('007','001','Track not found','ACT','single','2019-09-25 04:51:54','2019-09-25 04:51:54'),('008','001','No track on card','ACT','single','2019-09-25 04:52:04','2019-09-25 04:52:04'),('009','001','Card not supported','ACT','single','2019-09-25 04:52:07','2019-09-25 04:52:07'),('010','001','Chip malfunction','ACT','single','2019-09-25 04:52:00','2019-09-25 04:52:00'),('011','001','Comm error','ACT','single','2019-09-25 04:51:58','2019-09-25 04:51:58'),('251','002','Transaction issue','ACT','nirmal1','2019-10-04 08:37:55','2019-10-04 08:37:55'),('252','002','Manual settlement issue','ACT','nirmal1','2019-10-04 08:37:33','2019-10-04 08:37:33'),('253','002','Hardware settlement issue','ACT','nirmal1','2019-10-04 08:37:13','2019-10-04 08:37:13'),('280','002','Printer Error','ACT','nirmal1','2019-10-04 08:57:02','2019-10-04 08:57:02'),('281','002','Printer Error','ACT','nirmal1','2019-10-07 03:52:15','2019-10-07 03:52:15'),('444','001','444','ACT','instanceadmin','2019-10-10 09:53:26','2019-10-10 09:53:26');
/*!40000 ALTER TABLE `casetype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:17
