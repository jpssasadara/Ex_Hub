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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `APPCODE` varchar(16) NOT NULL,
  `DESCRIPTION` varchar(64) DEFAULT NULL,
  `INSTITUTE` int(11) NOT NULL,
  `CONFIGURL` varchar(256) DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FKf24x5wfxh1pw8ywqaealnbfqs` (`INSTITUTE`),
  KEY `FKt15b4gg4e31livcy54d7w9745` (`STATUS`),
  CONSTRAINT `FK28o9km489yvdxvk1i5alwmca` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FKeaf0wt64o9ji49300k14s2vph` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKf24x5wfxh1pw8ywqaealnbfqs` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FKt15b4gg4e31livcy54d7w9745` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `application_ibfk_1` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `application_ibfk_2` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (1,'X990BOC','X990 Test App',4,'/opt/TMS_UPLOAD/Applications/EPIC/4/X990BOC/Application.csv','ACT','2019-09-11 08:35:47','single','2019-09-11 08:35:47'),(2,'test002','test app 002',4,'C:\\TMS_UPLOAD\\Applications\\EPIC\\4\\test002\\Config2.csv','ACT','2019-09-12 04:44:39','adminboc','2019-09-12 04:44:39'),(7,'testapp0076','application 0076',4,'C:\\TMS_UPLOAD\\Applications\\EPIC\\4\\testapp0076\\Config55.csv','ACT','2019-09-12 06:37:02','adminboc','2019-09-12 06:37:02'),(8,'testapp008','app 0008',4,'C:\\TMS_UPLOAD\\Applications\\EPIC\\4\\testapp008\\Config55.csv','ACT','2019-09-12 06:43:39','adminboc','2019-09-12 06:43:39'),(12,'Dintest001','test app by Dinesh',4,'C:\\TMS_UPLOAD\\Applications\\EPIC\\4\\Dintest001\\Application.csv','ACT','2019-09-23 07:52:29','superdinesh','2019-09-23 07:52:29'),(14,'DinTest002','Test app by Dinesh 002',4,'C:\\TMS_UPLOAD\\Applications\\EPIC\\4\\DinTest002\\Application.csv','ACT','2019-09-23 08:05:25','superdinesh','2019-09-23 08:05:25');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
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
