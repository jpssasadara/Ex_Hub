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
-- Table structure for table `keyterminal`
--

DROP TABLE IF EXISTS `keyterminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyterminal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdtime` datetime NOT NULL,
  `deviceid` bigint(20) NOT NULL,
  `deviceip` varchar(16) NOT NULL,
  `deviceport` varchar(4) NOT NULL,
  `imei` varchar(17) DEFAULT NULL,
  `lastupdatedtime` datetime NOT NULL,
  `lastupdateduser` varchar(64) DEFAULT NULL,
  `serialno` varchar(64) DEFAULT NULL,
  `terminalid` varchar(8) NOT NULL,
  `terminalip` varchar(45) NOT NULL,
  `terminalmodel` varchar(15) NOT NULL,
  `terminalport` varchar(5) NOT NULL,
  `devicemodel` int(11) NOT NULL,
  `institute` int(11) NOT NULL,
  `status` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6igsa0qbtfvrd5k43tlk5ob5t` (`devicemodel`),
  KEY `FKdopcmh37cqhw8fxhn6q4duahv` (`institute`),
  KEY `FKjt3tg5bau8udf9otha0u54e09` (`status`),
  CONSTRAINT `FK6igsa0qbtfvrd5k43tlk5ob5t` FOREIGN KEY (`devicemodel`) REFERENCES `devicemodel` (`ID`),
  CONSTRAINT `FKdopcmh37cqhw8fxhn6q4duahv` FOREIGN KEY (`institute`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FKggqkhiwygedg8rgf5ad7kxso5` FOREIGN KEY (`status`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKiqckw4ejrvog9abv9sc0tmn2c` FOREIGN KEY (`institute`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FKjt3tg5bau8udf9otha0u54e09` FOREIGN KEY (`status`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKk3uovmh2wiybtq1a7chmv9qgk` FOREIGN KEY (`devicemodel`) REFERENCES `devicemodel` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyterminal`
--

LOCK TABLES `keyterminal` WRITE;
/*!40000 ALTER TABLE `keyterminal` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyterminal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:42
