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
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MERCHANTID` varchar(15) NOT NULL,
  `MERCHANTTYPE` varchar(32) NOT NULL,
  `MERCHANTCUSTOMER` bigint(20) DEFAULT NULL,
  `MCC` int(10) NOT NULL,
  `DESCRIPTION` varchar(64) NOT NULL,
  `INSTITUTE` int(11) DEFAULT NULL,
  `CONTACTNO` varchar(64) DEFAULT NULL,
  `CONTACTPERSON` varchar(256) DEFAULT NULL,
  `CONTACTPERSONPOSITION` varchar(256) DEFAULT NULL,
  `COUNTRY` varchar(16) DEFAULT NULL,
  `PROVINCE` varchar(16) DEFAULT NULL,
  `DISTRICT` varchar(16) DEFAULT NULL,
  `CITY` varchar(16) DEFAULT NULL,
  `POSTALCODE` varchar(16) DEFAULT NULL,
  `ADDRESS1` varchar(64) DEFAULT NULL,
  `ADDRESS2` varchar(64) DEFAULT NULL,
  `ADDRESS3` varchar(64) DEFAULT NULL,
  `FAX` varchar(64) DEFAULT NULL,
  `EMAIL` varchar(256) DEFAULT NULL,
  `REMARK` varchar(64) DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `BRANCH` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKd2e7uav0clupulbscxr33bf13` (`CITY`),
  KEY `FK2vmwnrqhpvlmx1vh8g7qoi9ok` (`COUNTRY`),
  KEY `FK8x07yp2a1ffok5ndu0kug9gy7` (`DISTRICT`),
  KEY `FKqp04xld9ythj34459d4etq0r5` (`INSTITUTE`),
  KEY `FK30xerhucm9eov51uhkyodbi0j` (`MCC`),
  KEY `FKa0hbw9ttwby77lashhbyyuknw` (`MERCHANTCUSTOMER`),
  KEY `FKgta9sg0mde0ykd3lc1xlb08kv` (`PROVINCE`),
  KEY `FKcedk2kxyy2uwkabbgn0cieept` (`STATUS`),
  CONSTRAINT `FK2vmwnrqhpvlmx1vh8g7qoi9ok` FOREIGN KEY (`COUNTRY`) REFERENCES `country` (`COUNTRYCODE`),
  CONSTRAINT `FK30xerhucm9eov51uhkyodbi0j` FOREIGN KEY (`MCC`) REFERENCES `mcc` (`ID`),
  CONSTRAINT `FK359wylw180djmktrptpxct55f` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FK6r3frqbwk4n2xnynlk6ffj37v` FOREIGN KEY (`CITY`) REFERENCES `city` (`CITYCODE`),
  CONSTRAINT `FK8x07yp2a1ffok5ndu0kug9gy7` FOREIGN KEY (`DISTRICT`) REFERENCES `district` (`DISTRICTCODE`),
  CONSTRAINT `FKa0hbw9ttwby77lashhbyyuknw` FOREIGN KEY (`MERCHANTCUSTOMER`) REFERENCES `merchantcustomer` (`ID`),
  CONSTRAINT `FKaedbqdqhmgi7s5bh1o2gjma3q` FOREIGN KEY (`MCC`) REFERENCES `mcc` (`ID`),
  CONSTRAINT `FKcedk2kxyy2uwkabbgn0cieept` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKd2e7uav0clupulbscxr33bf13` FOREIGN KEY (`CITY`) REFERENCES `city` (`CITYCODE`),
  CONSTRAINT `FKgta9sg0mde0ykd3lc1xlb08kv` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`PROVINCECODE`),
  CONSTRAINT `FKivxue5bkd8nj8w3r9rspgye5u` FOREIGN KEY (`MERCHANTCUSTOMER`) REFERENCES `merchantcustomer` (`ID`),
  CONSTRAINT `FKjgkb0edo6i81ll8aab6m1jptr` FOREIGN KEY (`DISTRICT`) REFERENCES `district` (`DISTRICTCODE`),
  CONSTRAINT `FKkl208hu565i1tfojcuimc2vmi` FOREIGN KEY (`COUNTRY`) REFERENCES `country` (`COUNTRYCODE`),
  CONSTRAINT `FKosog5bqgf4s95x4yamg3v85ht` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`PROVINCECODE`),
  CONSTRAINT `FKqp04xld9ythj34459d4etq0r5` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FKtai6d47vss2djn4kyi7t7ntn4` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `merchant_ibfk_1` FOREIGN KEY (`MERCHANTCUSTOMER`) REFERENCES `merchantcustomer` (`ID`),
  CONSTRAINT `merchant_ibfk_2` FOREIGN KEY (`MCC`) REFERENCES `mcc` (`ID`),
  CONSTRAINT `merchant_ibfk_3` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `merchant_ibfk_4` FOREIGN KEY (`COUNTRY`) REFERENCES `country` (`COUNTRYCODE`),
  CONSTRAINT `merchant_ibfk_5` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`PROVINCECODE`),
  CONSTRAINT `merchant_ibfk_6` FOREIGN KEY (`DISTRICT`) REFERENCES `district` (`DISTRICTCODE`),
  CONSTRAINT `merchant_ibfk_7` FOREIGN KEY (`CITY`) REFERENCES `city` (`CITYCODE`),
  CONSTRAINT `merchant_ibfk_8` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (38,'000000000000005','Non structured merchant',17,2,'Test Merchant',4,'716539575','hcontactperson','hcontactpersonposition','144','LK-1','LK-11','00000','hpostalcode','Aluth Ambewela Adikarigama','dfg','dfg','716539575','ucscjanaka@gmail.com','Test By eranga','ACT','adminboc','2019-10-04 08:57:01','2019-09-11 06:00:31','EPIC'),(39,'000000000000002','Non structured merchant',17,2,'Test Merchant 2',4,'716539575','hcontactperson','hcontactpersonposition','144','LK-1','LK-11','00000','hpostalcode','Aluth Ambewela Adikarigama','','','716539575','ucscjanaka@gmail.com','hhh','ACT','adminboc','2019-09-23 06:26:04','2019-09-12 06:57:18','45'),(40,'000000000000008','Non structured merchant',17,5,'Test By Janaka',4,'0716539575','eranga','developer','144','LK-1','LK-11','10150','20712','address 1','address 2','address 3','0716539575','jayana@gmail.co','d','ACT','adminboc','2019-09-20 06:12:22','2019-09-20 06:12:22','epic');
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:14
