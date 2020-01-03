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
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `CURRENCYCODE` varchar(16) NOT NULL,
  `DESCRIPTION` varchar(64) DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ALPHA2CODE` varchar(25) DEFAULT NULL,
  `EXPONENT` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`CURRENCYCODE`),
  KEY `FKcjhhiv66sf2v1c64no3u2voxg` (`STATUS`),
  CONSTRAINT `FK6sqtfgc1dai1dnypclkie5yfn` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKcjhhiv66sf2v1c64no3u2voxg` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `currency_ibfk_1` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES ('104','Myanma kyat','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MMK',2),('108','Burundian franc','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','BIF',0),('116','KHR','ACT','admin','2019-02-11 05:27:15','2018-07-04 11:04:24','KHR',0),('12','DZD','ACT','admin','2019-02-11 05:19:20','2018-07-04 11:04:24','DZD',0),('124','Canadian dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','CAD',2),('132','Cape Verde escudo','ACT','admin','2018-08-15 08:47:24','2018-07-04 11:04:24','CVE',2),('136','Cayman Islands dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','KYD',2),('144','LKR','ACT','eranga','2019-09-16 04:21:44','2019-08-08 05:20:19','LKR',2),('152','Chilean peso','ACT','admin','2019-02-11 04:56:33','2018-07-04 11:04:24','CLP',0),('156','Chinese yuan','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','CNY',2),('170','Colombian peso','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','COP',2),('174','Comoro franc','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','KMF',0),('188','Costa Rican colon','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','CRC',2),('191','Croatian kuna','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','HRK',2),('192','Cuban peso','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','CUP',2),('2','Test Description','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','AAZ',2),('203','Czech koruna','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','CZK',2),('208','Danish krone','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','DKK',2),('214','Dominican peso','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','DOP',2),('230','Ethiopian birr','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','ETB',2),('232','Eritrean nakfa','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','ERN',2),('238','Falkland Islands pound','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','FKP',2),('242','Fiji dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','FJD',2),('262','Djiboutian franc','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','DJF',2),('270','Gambian dalasi','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','GMD',2),('292','Gibraltar pound','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','GIP',2),('320','Guatemalan quetzal','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','GTQ',2),('324','Guinean franc','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','GNF',2),('328','Guyanese dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','GYD',2),('332','Haitian gourde','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','HTG',2),('340','Honduran lempira','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','HNL',2),('344','Hong Kong dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','HKD',2),('348','Hungarian forint','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','HUF',2),('352','Icelandic krona','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','ISK',2),('356','Indian rupee','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','INR',2),('36','Australian dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','AUD',2),('360','Indonesian rupiah','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','IDR',2),('364','Iranian rial','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','IRR',2),('368','Iraqi dinar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','IQD',2),('376','Israeli new sheqel','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','ILS',2),('388','Jamaican dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','JMD',2),('392','Japanese yen','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','JPY',0),('398','Kazakhstani tenge','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','KZT',2),('400','Jordanian dinar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','JOD',2),('404','Kenyan shilling','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','KES',2),('408','North Korean won','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','KPW',2),('410','South Korean won','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','KRW',2),('414','Kuwaiti dinar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','KWD',2),('417','Kyrgyzstani som','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','KGS',2),('418','Lao kip','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','LAK',2),('422','Lebanese pound','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','LBP',2),('426','Lesotho loti','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','LSL',2),('430','Liberian dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','LRD',2),('434','Libyan dinar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','LYD',2),('44','Bahamian dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','BSD',2),('446','Macanese pataca','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MOP',2),('454','Malawian kwacha','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MWK',2),('458','Malaysian ringgit','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MYR',2),('462','Maldivian rufiyaa','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MVR',2),('478','Mauritania','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MRO',2),('48','Bahraini dinar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','BHD',2),('480','Mauritian rupee','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MUR',2),('484','Mexican peso','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MXN',2),('496','Mongolian tugrik','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MNT',2),('498','Moldovan leu','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MDL',2),('50','Bangladeshi taka','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','BDT',2),('504','Moroccan dirham','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','MAD',2),('51','Armenian dram','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','AMD',2),('512','Omani rial','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','OMR',3),('516','Namibian dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','NAD',2),('52','Barbados dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','BBD',2),('524','Nepalese rupee','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','NPR',2),('532','Netherlands Antillean guilder','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','ANG',2),('533','aruban florin','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','AWG',2),('548','Vanuatu vatu','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','VUV',2),('554','New Zealand dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','NZD',2),('558','Cordoba oro','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','NIO',2),('566','Nigerian naira','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','NGN',2),('578','Norwegian krone','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','NOK',2),('586','Pakistani rupee','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','PKR',2),('590','Panamanian balboa','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','PAB',2),('598','Papua New Guinean kina','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','PGK',2),('60','Bermudian dollar or  Bermuda dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','BMD',2),('600','Paraguayan guarana','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','PYG',2),('604','Peruvian nuevo sol','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','PEN',2),('608','Philippine peso','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','PHP',2),('634','Qatari rial','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','QAR',2),('64','Bhutanese ngultrum','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','BTN',2),('643','Russian rouble','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','RUB',2),('646','Rwandan franc','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','RWF',0),('654','Saint Helena pound','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','SHP',2),('678','Sao Tome and Principe dobra','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','STD',2),('68','Boliviano','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','BOB',2),('682','Saudi riyal','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','SAR',2),('690','Seychelles rupee','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','SCR',2),('694','Sierra Leonean leone','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','SLL',2),('702','Singapore dollar','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','SGD',2),('704','Vietnamese dong','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','VND',0),('706','Somali shilling','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','SOS',2),('710','South African rand','ACT','admin','2018-07-04 11:04:24','2018-07-04 11:04:24','ZAR',2),('895','Sri Lankan Rupee','ACT','admin','2019-02-11 04:44:41','2019-02-08 08:27:03','RSL',0);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:37
