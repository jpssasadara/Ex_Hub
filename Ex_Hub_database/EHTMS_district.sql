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
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `DISTRICTCODE` varchar(16) NOT NULL,
  `DESCRIPTION` varchar(64) NOT NULL,
  `PROVINCE` varchar(16) NOT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`DISTRICTCODE`),
  KEY `FKr2xs2sc2xq7bttc4qjyvf9m0u` (`PROVINCE`),
  KEY `FKb6ox95u189oow3mnm4pce22pb` (`STATUS`),
  CONSTRAINT `FKb6ox95u189oow3mnm4pce22pb` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKhjqjc8lokbb2jv09gvsifl8mm` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`PROVINCECODE`),
  CONSTRAINT `FKr2xs2sc2xq7bttc4qjyvf9m0u` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`PROVINCECODE`),
  CONSTRAINT `FKra6ao22mxxg9i8w64s7kcp2wk` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `district_ibfk_1` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`PROVINCECODE`),
  CONSTRAINT `district_ibfk_2` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES ('CVB','CVB','LK-2','ACT','eranga','2019-08-15 08:34:21','2019-08-15 08:34:21'),('LK-11','Colombo','LK-1','ACT','admin','2018-07-10 18:30:00','2018-07-10 18:30:00'),('LK-12','Gampaha','LK-1','ACT','admin','2018-07-10 18:30:00','2018-07-10 18:30:00'),('LK-13','Kalutara','LK-1','ACT','admin','2018-07-11 04:00:53','2018-07-10 18:30:00'),('LK-21','Kandy','LK-2','ACT','admin','2018-07-11 04:01:12','2018-07-10 18:30:00'),('LK-22','Matale','LK-2','ACT','admin','2018-07-11 04:01:14','2018-07-10 18:30:00'),('LK-23','Nuwara Eliya','LK-2','ACT','admin','2018-07-11 04:01:20','2018-07-10 18:30:00'),('LK-31','Galle','LK-3','ACT','admin','2018-07-10 18:30:00','2018-07-10 18:30:00'),('LK-32','Matara','LK-3','ACT','admin','2018-07-10 18:30:00','2018-07-10 18:30:00'),('LK-33','Hambantota','LK-3','ACT','admin','2018-07-10 18:30:00','2018-07-10 18:30:00'),('LK-41','Jaffna','LK-4','ACT','admin','2018-07-10 18:30:00','2018-07-10 18:30:00'),('LK-42','Kilinochchi','LK-4','ACT','admin','2018-07-11 04:04:48','2018-07-10 18:30:00'),('LK-43','Mannar','LK-4','ACT','admin','2018-07-11 04:05:02','2018-07-10 18:30:00'),('LK-44','Vavuniya','LK-4','ACT','admin','2018-07-11 04:05:09','2018-07-10 18:30:00'),('LK-45','Mullaittivu','LK-4','ACT','admin','2018-07-11 04:05:11','2018-07-10 18:30:00'),('LK-51','Batticaloa','LK-5','ACT','admin','2018-07-11 04:07:16','2018-07-10 18:30:00'),('LK-52','Ampara','LK-5','ACT','admin','2018-07-11 04:07:22','2018-07-10 18:30:00'),('LK-53','Trincomalee','LK-5','ACT','admin','2018-07-11 04:07:30','2018-07-10 18:30:00'),('LK-61','Kurunegala','LK-6','ACT','admin','2018-07-11 04:07:37','2018-07-10 18:30:00'),('LK-62','Puttalam','LK-6','ACT','admin','2018-07-11 04:07:40','2018-07-10 18:30:00'),('LK-71','Anuradhapura','LK-7','ACT','admin','2018-07-11 04:08:36','2018-07-10 18:30:00'),('LK-72','Polonnaruwa','LK-7','ACT','admin','2018-07-11 04:08:40','2018-07-10 18:30:00'),('LK-81','Badulla','LK-8','ACT','admin','2018-07-11 04:09:42','2018-07-10 18:30:00'),('LK-82','Monaragala','LK-8','ACT','admin','2018-07-11 04:09:52','2018-07-10 18:30:00'),('LK-91','Ratnapura','LK-9','ACT','admin','2018-07-11 04:09:58','2018-07-10 18:30:00'),('LK-92','Kegalla','LK-9','ACT','admin','2018-07-11 04:10:02','2018-07-10 18:30:00'),('sdf','zcZCasd','LK-5','ACT','eranga','2019-08-12 04:13:42','2019-08-12 04:13:42');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:21
