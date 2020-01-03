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
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page` (
  `PAGECODE` varchar(16) NOT NULL,
  `DESCRIPTION` varchar(64) NOT NULL,
  `SECTION` varchar(64) NOT NULL,
  `DUALAUTH` bit(1) DEFAULT NULL,
  `SORTKEY` smallint(6) DEFAULT NULL,
  `URL` varchar(128) DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  PRIMARY KEY (`PAGECODE`),
  KEY `FKpfvi7ndduyhtchgiaudfuoa57` (`SECTION`),
  KEY `FKkgq39q3bkwqkhdx59asjf8176` (`STATUS`),
  CONSTRAINT `page_ibfk_1` FOREIGN KEY (`SECTION`) REFERENCES `section` (`SECTIONCODE`),
  CONSTRAINT `page_ibfk_2` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES ('ADMT','Audit Trace Management  ','ADMINSEC',_binary '',8,'ViewAuditTrace','ACT'),('APMT','Application Management','DEVICESEC',_binary '\0',7,'ViewApplication','ACT'),('AVMT','Application Version Management','DEVICESEC',_binary '',12,'ViewApplicationVersion','ACT'),('BRMT','Device Brand Mangement','CONFIGSEC',_binary '',11,'ViewDeviceBrand','ACT'),('CCMT','Case Category Management','CASESEC',_binary '',20,'ViewCaseCategory','ACT'),('CMCT','Complain Category Management','CASESEC',_binary '',17,'ViewComplainCategory','ACT'),('CMTY','Complain Type Management','CASESEC',_binary '',28,'ViewComplainType','ACT'),('CRMT','Currency Management','CONFIGSEC',_binary '',14,'ViewCurrency','ACT'),('CSCM','Customer Support Case Management','CASESEC',_binary '',29,'ViewCustomerSupportCase','ACT'),('CSMT','Case Type Management','CASESEC',_binary '',21,'ViewCaseType','ACT'),('CSOM','Case Management','CASESEC',_binary '\0',38,'ViewCSOCaseMgt','ACT'),('CSRA','Case Reassign Management ','CASESEC',_binary '',4,'ViewCaseReassignMgt','ACT'),('CTMT','Country Management','GLOBALCONFIGSEC',_binary '',3,'ViewCountry','ACT'),('CYMT','City Management','GLOBALCONFIGSEC',_binary '',5,'ViewCity','ACT'),('DBMT','Dashboard','DEVICESEC',_binary '\0',0,'ViewDashboard','ACT'),('DCMT','Device Category Management','CONFIGSEC',_binary '',15,'ViewDeviceCategory','ACT'),('DMMT','Device Model Management','CONFIGSEC',_binary '',13,'ViewDeviceModel','ACT'),('DOMT','Device Operation Management','DEVICESEC',_binary '\0',26,'ViewDeviceOperationMgt','ACT'),('DORG','Device Operation Report','ADMINSEC',_binary '',8,'ViewDeviceReport','ACT'),('DPMT','Device Profile Management','DEVICESEC',_binary '',24,'ViewDeviceProfile','ACT'),('DPRT',' Device Profile Report Management','DEVICESEC',_binary '',26,'ViewDeviceProfileReport','ACT'),('DSMT','Device Status','DEVICESEC',_binary '\0',38,'ViewStatusMgt','ACT'),('DTMT','District Management','GLOBALCONFIGSEC',_binary '',6,'ViewDistrict','ACT'),('DVMT','Device Management','DEVICESEC',_binary '',60,'ViewDevice','ACT'),('GPCM','Global Profile  Management','DEVICESEC',_binary '',50,'ViewGlobalProfile','ACT'),('IIMT','Instance Management','ADMINSEC',_binary '',1,'ViewInstance','ACT'),('ITMT','Institute Management','ADMINSEC',_binary '',2,'ViewInstitute','ACT'),('MCMT','Merchant Customer Management ','CONFIGSEC',_binary '',36,'ViewMerchantCustomer','ACT'),('MRMT','Merchant Management','CONFIGSEC',_binary '',30,'ViewMerchant','ACT'),('OPMT','Operation Management','CONFIGSEC',_binary '',22,'ViewOperation','ACT'),('PGMT','Page Management','ADMINSEC',_binary '',9,'ViewPage','ACT'),('PIMT','Page Institute Management','ADMINSEC',_binary '\0',9,'ViewPageInstituteMgt','ACT'),('PMIT','Page Instance Management','ADMINSEC',_binary '',33,'ViewPageInstanceMgt','ACT'),('PMMT','Password Parameter Management','CONFIGSEC',_binary '',17,'ViewPasswordParm','ACT'),('PPMT','Password Policy Management','CONFIGSEC',_binary '',15,'ViewPasswordPolicy','ACT'),('PVMT','Province Management','GLOBALCONFIGSEC',_binary '',4,'ViewProvince','ACT'),('RQMT','Request Management','DEVICESEC',_binary '\0',32,'ViewRequestMgt','ACT'),('TEMT','Terminal Management','DEVICESEC',_binary '',14,'ViewTerminal','ACT'),('TPMT','Terminal Profile Management','DEVICESEC',_binary '',3,'ViewTerminalProfile','ACT'),('URMT','User Role Management','ADMINSEC',_binary '',10,'ViewUserRole','ACT'),('USMT','User Management','ADMINSEC',_binary '',11,'ViewUser','ACT');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:34
