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
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `STATUSCODE` varchar(16) NOT NULL,
  `DESCRIPTION` varchar(128) DEFAULT NULL,
  `STATUSCATEGORYCODE` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`STATUSCODE`),
  KEY `FKt7p2awwk2q1mnqqlhfb1kvxg3` (`STATUSCATEGORYCODE`),
  CONSTRAINT `FKs0swrifrerif2qur5bcthmy90` FOREIGN KEY (`STATUSCATEGORYCODE`) REFERENCES `statuscategory` (`STATUSCATEGORYCODE`),
  CONSTRAINT `FKt7p2awwk2q1mnqqlhfb1kvxg3` FOREIGN KEY (`STATUSCATEGORYCODE`) REFERENCES `statuscategory` (`STATUSCATEGORYCODE`),
  CONSTRAINT `status_ibfk_1` FOREIGN KEY (`STATUSCATEGORYCODE`) REFERENCES `statuscategory` (`STATUSCATEGORYCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES ('ACON','Confirmed','AUTH'),('ACT','Active','DFA'),('APEN','Pending','AUTH'),('AREJ','Rejected','AUTH'),('ASSIGNED','Assigned','CASE'),('ASTOVEND','Assign To Vendor','CASE'),('BEGIN','Beginning','CASE'),('CHA','Changed','PAS'),('CLOSED','Closed','CASE'),('COMP','Completed','TOS'),('DCT','De-Active','DFA'),('DELETE','Deleted','DFA'),('EXP','Expired','PAS'),('FIXED','Fixed','CASE'),('INIT','Init','TOS'),('MPNW','Pending Web','AUTH'),('NEW','New','PAS'),('OPBC','Battary Low,Location Changed','TAS'),('OPBL','Battery Low','TAS'),('OPBM','Battary Low,Memory Full','TAS'),('OPBS','Battary Low,Must Settle Enabled','TAS'),('OPEN','Open','CASE'),('OPLC','Location Changedl','TAS'),('OPLS','Low Signal','TAS'),('OPMC','Must Settle Enabled, Location Changed','TAS'),('OPMF','Memory Full','TAS'),('OPML','Memory Full,Location Changed','TAS'),('OPMM','Memory Full,Must Settle Enabled','TAS'),('OPMS','Must Settle Enable','TAS'),('OPSA','Setup Accessed','TAS'),('OPSF','Operation Failed','TAS'),('OPSS','Operation Success','TAS'),('PEND','Pending','TOS'),('PROC','Processing','CASE'),('REASSIGN','Re Assign','CASE'),('REOPEN','Re Open','CASE'),('RES','Reset','PAS');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
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
