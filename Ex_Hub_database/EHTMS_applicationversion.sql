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
-- Table structure for table `applicationversion`
--

DROP TABLE IF EXISTS `applicationversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicationversion` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION` varchar(16) NOT NULL,
  `DESCRIPTION` varchar(64) NOT NULL,
  `APPLICATION` int(10) NOT NULL,
  `DEVICEMODEL` int(10) NOT NULL,
  `EFFECTIVEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `APKURL` varchar(256) DEFAULT NULL,
  `SCRIPTURL` varchar(256) DEFAULT NULL,
  `CONFIGURL` varchar(256) NOT NULL,
  `STATUS` varchar(16) DEFAULT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FKkladeapd8j0gj3vww79wmqe7u` (`APPLICATION`),
  KEY `FKkde9pwso193po5bg14jrpsemi` (`DEVICEMODEL`),
  KEY `FKoekh1x1s89oevbgvufgjkva0t` (`STATUS`),
  CONSTRAINT `FK5w0wdu74n8n28ss8quhdus0fx` FOREIGN KEY (`DEVICEMODEL`) REFERENCES `devicemodel` (`ID`),
  CONSTRAINT `FK6hm2pco7c3g1ftaf3h7f14xfp` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKf8may6ken1hw7omn3hs7af45i` FOREIGN KEY (`APPLICATION`) REFERENCES `application` (`ID`),
  CONSTRAINT `FKkde9pwso193po5bg14jrpsemi` FOREIGN KEY (`DEVICEMODEL`) REFERENCES `devicemodel` (`ID`),
  CONSTRAINT `FKkladeapd8j0gj3vww79wmqe7u` FOREIGN KEY (`APPLICATION`) REFERENCES `application` (`ID`),
  CONSTRAINT `FKoekh1x1s89oevbgvufgjkva0t` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `applicationversion_ibfk_1` FOREIGN KEY (`APPLICATION`) REFERENCES `application` (`ID`),
  CONSTRAINT `applicationversion_ibfk_2` FOREIGN KEY (`DEVICEMODEL`) REFERENCES `devicemodel` (`ID`),
  CONSTRAINT `applicationversion_ibfk_3` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationversion`
--

LOCK TABLES `applicationversion` WRITE;
/*!40000 ALTER TABLE `applicationversion` DISABLE KEYS */;
INSERT INTO `applicationversion` VALUES (1,'V1.00','Init App',1,13,'2019-09-12 11:32:25','/opt/TMS_UPLOAD/Application_Versions/EPIC/4/1/13/V1.00/X990_Ver1.00.apk','/opt/TMS_UPLOAD/Application_Versions/EPIC/4/1/13/V1.00/Config.csv','/opt/TMS_UPLOAD/Application_Versions/EPIC/4/1/13/V1.00/Config.csv','ACT','single','2019-09-12 11:32:25','2019-09-11 08:55:36'),(3,'V10.33','test version 0033',8,13,'2019-09-25 18:30:00','C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V10.33\\HelloWorld_v1.0.com.apk',NULL,'C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V10.33\\ParamMapVersion222.csv','ACT','adminboc','2019-09-12 06:55:04','2019-09-12 06:55:04'),(4,'V10.33','test version 0033',8,13,'2019-09-25 18:30:00','C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V10.33\\HelloWorld_v1.0.com.apk',NULL,'C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V10.33\\ParamMapVersion222.csv','ACT','adminboc','2019-09-12 06:56:22','2019-09-12 06:56:22'),(7,'V123.123','app version 123',8,13,'2019-09-26 18:30:00','C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V123.123\\HelloWorld_v1.0.com.apk',NULL,'C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V123.123\\ParamMapVersion222.csv','ACT','adminboc','2019-09-12 07:15:50','2019-09-12 07:15:50'),(8,'V55.555','version 555',8,13,'2019-09-26 18:30:00','C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V55.555\\HelloWorld_v1.0.com.apk',NULL,'C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V55.555\\ParamMapVersion.csv','ACT','adminboc','2019-09-12 07:20:11','2019-09-12 07:20:11'),(9,'V55.555','version 555-2',8,13,'2019-10-11 08:06:30','C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V55.555\\HelloWorld_v1.0.com.apk',NULL,'C:\\TMS_UPLOAD\\Application_Versions\\EPIC\\4\\8\\13\\V55.555\\ParamMapVersion.csv','ACT','adminboc','2019-10-11 08:06:30','2019-09-12 07:34:46');
/*!40000 ALTER TABLE `applicationversion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:15
