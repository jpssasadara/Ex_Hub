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
-- Table structure for table `merchantcustomer`
--

DROP TABLE IF EXISTS `merchantcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchantcustomer` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MOBILELOGO` longblob,
  `WEBLOGO` longblob,
  `IDNO` varchar(128) DEFAULT NULL,
  `IDTYPE` varchar(16) DEFAULT NULL,
  `LEGALNAME` varchar(256) DEFAULT NULL,
  `CONTACTNO` varchar(64) DEFAULT NULL,
  `CONTACTPERSON` varchar(256) DEFAULT NULL,
  `CONTACTPERSONPOSITION` varchar(256) DEFAULT NULL,
  `INSTITUTE` int(11) NOT NULL,
  `COUNTRY` varchar(16) DEFAULT NULL,
  `PROVINCE` varchar(16) DEFAULT NULL,
  `DISTRICT` varchar(16) DEFAULT NULL,
  `CITY` varchar(16) DEFAULT NULL,
  `POSTALCODE` varchar(16) DEFAULT NULL,
  `ADDRESS` varchar(512) DEFAULT NULL,
  `FAX` varchar(64) DEFAULT NULL,
  `EMAIL` varchar(256) DEFAULT NULL,
  `REMARK` varchar(64) DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  `LASTUPDATEDUSER` varchar(64) DEFAULT NULL,
  `LASTUPDATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATEDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EMAIL_E_STATEMENT` varchar(256) DEFAULT NULL,
  `BRANCH` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKtauh5k29agi5bdftxo7t07et5` (`CITY`),
  KEY `FKhc11kcgmm3965pbyjwlbf550g` (`COUNTRY`),
  KEY `FK73mfq13upx2s89hu79qxhn2fq` (`DISTRICT`),
  KEY `FKa278rv2loiap3f9ewjfmcrp6r` (`INSTITUTE`),
  KEY `FKrcwadgm2q5cubvhacf7pw86pn` (`PROVINCE`),
  KEY `FKne4bvos82c8ca1oaev65mtvu7` (`STATUS`),
  CONSTRAINT `FK57t8fu5cld0srnlp000glytsp` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FK73mfq13upx2s89hu79qxhn2fq` FOREIGN KEY (`DISTRICT`) REFERENCES `district` (`DISTRICTCODE`),
  CONSTRAINT `FK78dsirls0ybkgm1x27evflluf` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKa278rv2loiap3f9ewjfmcrp6r` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `FKa2bgq8ybsxmj5olqe3fhaci3p` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`PROVINCECODE`),
  CONSTRAINT `FKfn2pjiaff63xqqa7393h41uiq` FOREIGN KEY (`CITY`) REFERENCES `city` (`CITYCODE`),
  CONSTRAINT `FKhc11kcgmm3965pbyjwlbf550g` FOREIGN KEY (`COUNTRY`) REFERENCES `country` (`COUNTRYCODE`),
  CONSTRAINT `FKne4bvos82c8ca1oaev65mtvu7` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`),
  CONSTRAINT `FKnq0nmsn6b90pdvmg0lx30fjjp` FOREIGN KEY (`DISTRICT`) REFERENCES `district` (`DISTRICTCODE`),
  CONSTRAINT `FKrcwadgm2q5cubvhacf7pw86pn` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`PROVINCECODE`),
  CONSTRAINT `FKslpn081f0gawnlbtfo38em191` FOREIGN KEY (`COUNTRY`) REFERENCES `country` (`COUNTRYCODE`),
  CONSTRAINT `FKtauh5k29agi5bdftxo7t07et5` FOREIGN KEY (`CITY`) REFERENCES `city` (`CITYCODE`),
  CONSTRAINT `merchantcustomer_ibfk_1` FOREIGN KEY (`INSTITUTE`) REFERENCES `institute` (`ID`),
  CONSTRAINT `merchantcustomer_ibfk_2` FOREIGN KEY (`COUNTRY`) REFERENCES `country` (`COUNTRYCODE`),
  CONSTRAINT `merchantcustomer_ibfk_3` FOREIGN KEY (`PROVINCE`) REFERENCES `province` (`PROVINCECODE`),
  CONSTRAINT `merchantcustomer_ibfk_4` FOREIGN KEY (`DISTRICT`) REFERENCES `district` (`DISTRICTCODE`),
  CONSTRAINT `merchantcustomer_ibfk_5` FOREIGN KEY (`CITY`) REFERENCES `city` (`CITYCODE`),
  CONSTRAINT `merchantcustomer_ibfk_6` FOREIGN KEY (`STATUS`) REFERENCES `status` (`STATUSCODE`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchantcustomer`
--

LOCK TABLES `merchantcustomer` WRITE;
/*!40000 ALTER TABLE `merchantcustomer` DISABLE KEYS */;
INSERT INTO `merchantcustomer` VALUES (17,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0\�\0\0\0\�aͣ\0\0\0\�PLTE\0&\0\'$\'\0*���%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0+\0\0\0\0	\0\0\0\n!\r\"\0\0\045@���\0&���\�\�덍�bfnsv\0\0\"���\�\�\�JKT���\�\�\�nouTV_���\�\�\�\0\n$18F���>?J�\�\�,\'\'4%.= 0\\dk$4@EROW`x��GPZWWd?>M��POXtuy*���hin#-=mt����\�bkw\0\0IDATx�흉v�\��A��IDäh����s;	9\��?ԭ!\Z\�>�\�߫�I\��w\�*@A`aaaaaaaaaaaaaaaaaaaaaaaaaa*\n�$\��\�G�ڪs\�_\�v�+�~��\r��\�\��Ņ\�����1\��.9��\�u����\�\n¹��$Y8\Z}s΍�=o��s�|K\�g_���Y�ש�\�\�?�\�8\��*����\0��\�P��j\0\�\�u�~~%\0\�&;D?\��\n~��Z��:�?����\�\�ۭ�_��\�}E��|%�O\�\'\�?7\�6�\�=�D\�yg��O���\�\�٥\Z�ߢ\'[渳o�2�X�D\��◑�Ī/i���%��D�\�#M\�\�//�����Ҝ�[���O�s\�~\�Q\�#\�fs_�i�\�\��\�\�}}��\�O\���\���\�\�MA��/����\�\�?\�����\�\�\�\�����P���uJD\�\�\�\r*����:�~3;\�\"zz\�ZtU��4|}�\�Ӄj\�\�{R�V���l�����B_��\�f�f���u�e�\���\�B��\�ץ\'?�\��Kÿk\�\�\�@\��7\�}�f,n7�e\�?���m�Y!�}�\�.�ϦO��3\�dw\��N���,h\�+���ۣv\�\�\����9l��\"��{�]�_ݷ\�y\��;\�o�8k���b\�^�s��:��m}~<j+�?���\�\�Q%��\�\��뽛\��\�*��\��-��W��@�l��7+_S�xZ_\�>�2�\"��t�6��\�E௚�\�\�\�F;�t���G���\�f�\�E�\��DU�W\�\�\�o.\�\�Oy\�o5\��}l\��wܠY�^o�\0.��.S]���o\���=\�ԙ\�Y.m��D9�)\�\�-�p��\�omRe\�?|\�\�l\��\��\ZX�\n\�\�ڇ_�ʿ\��\�O9����<�ǋ~Of�\�闉�����m�E\�K�\�Gq�0x��\�W�r��?\�ں�\�t�.2F�䷪r\�>�w�Ȇ�\�/��\\v8*r\�s$~qa����\�/\0�A�du��������ָ���{�ݞ\�B�\�3;/u�(��\�\��AN�]\�l-J�W�\�\�7I�0�\�\��l�<\�s�\�\rHͦ\�\�\Zz�2�G]\�\��\�[=\�~��.�\�\���s�\���>`xP���\�c�KE\�\��\�2G���7K��>W\\�\�q�[A�\\�Qͪ\�M�\�~������\�\��a�\�?�_��O�ڙn��/�˂����\��6\�����\�7�2L]N>\�\�A\���Y��6�ծ&{3�{��g�`\�\�^\�K��G�Qoq\0�\�\��~��\�3�Я�nr�X\�K��ݯ4��L�\'~������O}9\�\�\0�Z�\�\�\�\�n�\�\��\r�*��`��(H(\0����7\�v\'\�\0=ݱ\r8�f��M2`\�x���+��\0Ƹ\�Ip#\����\�Ɏ$����(&\�\ZR?�fW6e[\�=m�\��߃\��$gi	\"zƔ�\�#}�R�i�gۑ\�{p���o\�ǔ�D\�L�\�K�\���\�\��=\�\��\�9�c��0ٞҖc7���\0UV��YC�H�\�IuG�}@��\�gA?�#@Ivd�+X��=\r\�@\�/[\��\�\�h��l��m\�\ZC�6��%�\�X{X<�F�=\�Q��!Ҟ�\�M\�L�{��\Z\���&���1=`H�}K[ϴ���0# \�\'�H0-q\�K���|Y�4��0m���\�^K\�{��\�\���B�\�hgz\n\�Gy!�\�Ҵy�\�Ï�2Yj��x}F_\�s��]�\�\�d�_-!��\��f�`@�}\�x�t�=�����ͧd�ϒQ�������͒Q������\0�@�bs�h��\�e�ڀ�ef=\�\n]T3\Z\�\��tR|6M�_N�R\�\��\�i}*�aK���\�\�PPR��}P�P\�/~�f8A����\�Q�ߒS��\�\�6�(��v\�F����xɀ�є�\�\�6����\�\Zi*ܶ�!=\�\�%\�9\�\��!\�`�\�7`\�\�t\"�4\���\�\�s�\�D1뱀��.\�\'\\�\�\�p��\��\�*ƴm�C�&VlQp>\�U測\��\�/U�t����|��sD�$\�s|_�*y\�\�T䡤G��\��\�L6%\�)j\�z+m�\�.bc\�\r$ZC0|�\�t�Зw���M�T\��l�\�\�\�2�^\�$q��$�\�\r�`���\�\�f�\����B_	\�ͿZ���ې�~��\�CV!\�ɮy�:3P!3?\�\�\\\�L\�Y�\�A��\�\'b��\"\��\�/\�/8\��\��!�\�\0�\�v\r\�m�\�a�l�=H+$3\�2\�l\�N�\nz���O�\�fw�q�\�~�M�ҧO(��\�v\�\�\�9��/?NH�\�	�\��3�+\�=��\0���\�&\�(��%7�\�D�\�\�d{Q�\��9=U-\�6�-���?�3͕�\'~�\'\�\�\�s�����	�\���_��x�P}���\��M�\�\�3\0��D}\�Q\��GZ#\��\r;��\�B��a\��O\\��C�nz\�\�\0��h���=\�U\�\�Z�e]1:\�i�u\�\"jW-�\�\��׬_QФX�9WS��Zw\�鞍\�pl����z�Ԕ0�~W~\�\�y/ޠ8w�FJ\��㿺\\M\0\'\�j,\'��\\E�Ʋ �\�}�7	tk��\�\���^��\�(�1\n�N\��\�Ž\��Nb\Z\0U�\�Q8;\��\�ya8�\�?\�\�Y�Ge\�\0�)6���05�\��SX�&4�o�N9>��R�1\����bAO\� \�,:\�k#G�l#T�\�a\�\�\�}\�Q�G\\�\�6D�\���?���0?GU�\r��]~tg*�\�·��Į92\�Q�\�\�%�[ГႫ&�\'=	���vlu\�\r�@c�\r���?�0\�\�\�w\��}h\�\����ߋG|\�Ga\���\�I�V�ZnrW\�h\�y��\�$y�+:>\�\n�\�[\�Y�\�ǉĄFOT@��Om\0ƦD\�\r��s{\�\'\�h>w�\�\n��au\\êYSúK�\Z\�0\�o?�@\0\�7U\r���&�\�Rc�>�}J�\��\�\Zo�\�?�������H��)�\�DSO���\�\�ĴCߖ\��)1�՞�f��$o�\�J\����\�\�pd�f\�~$o���\�\�\�C\��ݡa���j�}�_��-(r�\��#�F\�0�\�\�5\�x\�M}�Q�0Q\�b\���\�+���b\�\�\'U�a\�̨J(*N\�\�\�\���\�\��]\����\��.\�\�X\�y��9\�\�S>G}\n�����\�xTUyAAU�\�\�k�W`ل�,�JM8?}:2�G	�)�4\�\�\�\�\�&8\�.V�{,�\������YW��\�Zݞ\��\0\0\0\0IEND�B`�',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0q\0\0@GjN\0\0\0gAMA\0\0���a\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0bKGD\0�\0�\0�����\0\0\0tIME\�2\"QQ�\0\0!\�IDATx\�\�yx\��\�?g\�ޛ{���$d{!T@��TE+��\"Z�ZźUm�������Uk-JU\�P�K\�\�ZT�BADe�M�$d���9�?\�		1	\�\��>\�}\�\�̙��\�=\�yϜy\�\\��ӎR0\�\�\�Y�׌]\�dش\�/9��b\�֟l\�g�eK\���K{l\0P��ј\��\�TW\�쏧�۸�E� #�f�2�W��Y=\�~�,i�x;V{�\�\�\�fx,�zچa�Һ\�my�	���Ϯ�p|��.mr>\�\��\�9^i\�)�\����-\0Y�J\�G@�s���4ά�\��\0~\��F\��K`U;\�\�\����%�_��?lZ����wyl��\��u��3tɥE:� \�\�]�\�\�Oaش�ě�#�d��-��\��n73�d���=u�3\��ڴa\�z\�%�u�\�\�\�`b\�\���v��&\�^\�@*е\�uh�F�Rc�\�h`��\�D$\�\�N��\�`-pws�5\�d���!� D�,i:�p�W1�\�<\��}�G�db\�\�O��i\0`\�m\�ÆM롛����?\�a���|BFg^��5��ۊ�,�>}�\�\";\�M�z���\�\�\�\�\�0Ȯ��\ZJ�sJ\��e;ڤ4~_\\�\�\�j\�\�PUEE(#7Xv\�0��6\�\�v�of\�\';*���W\�g�h\�\�^:��F�y�\'7��\�3��\�\�b��Ҿ�tx\�\�=�W*Pri�+\n\n�/��OA\�\�\�6�\�c\r�\�l����;\��\��)-��1�\�\��3�d��X28���\"�<���\��\n�<�h�\��^�4\�.`P\�\0Q���\�5\���k\�\\\�P$�I\�}�{y\��\���a�s\�\�p\��\�\�˰i=5�\�\�zWK�X2�K�\�\�{\�]�\�(濸Fw<4u��M\�\�ڂny��qV���d\�돷h��^���\�\�\�J�˾W�\\ڣ`\�\�\n����\"k����;�өs����\�Sw½\�\�\�\�\�\�w\�\�E��d\�\�7�p\�\�F\\\�KGW�B��\\=i�ƞV�*ؼ�nDV����u�J��\�_��\��\�#\n\��ۊGl\���\�\Z��\�\�n�id\'���A����陣�$�be�^/6~~�j�n-���*:3\ZMr\�E}�\�\�;����\�\� �4ң\��;<�WT\�E�\�z�\���\�\�\�LAy�L3���\�\�\�\�\�\��&��z�0y\�Z\�uhˮ\���f\�\��Ji=�����i�{\�\�ۿ,Hډ\�\�밶�}\�\� J�yU\��Ē�ɉ%�g�q\�ȟk}��U(�\�?\ny\��\��󼣇�\�C�\�}�s\�m)aMi�\��\Z\�1\�\�W�#\�^;\��\�=\�f8ǔ��{\n٦8\�9?\�\�T��@���\�y��xY���,�N�\0�o\07 oE\�q�S)/�\r��,��C֗�!\"\�NZ^\�6��U�)@&�\�<��LF!k�\�M�\�\�\�\�<���\��\��fd�ط�k�~�	\��\�^4,<\�w(�\�\\\�\�Pg4��\�ؖ¾/��,Ç8���T!{g�\n&�_�S���Ņ.\\�p�s��88p\�3\�\�*J��\�	K־_�l.\�A���z\�\�T\�\��J��SV\�}���\�޾�$>�\�7/o\�\Z:E�]�\�5�ZJ{PrV�\�No!��\�b_n,{�i�\�Nğ\�~\���\�\�\��)�!Z���|h\�:�\��}��_:��\�׮;�V�m~\0�\�k��L���_k��)�)��\�A��IӋ��]UQNle���5U��9�D\�\�\\��㽛\�l;��u��߮�V�É`mL\��\�\�\�n>�\�ՖM�%�9L�m�yxkaOb�Q\�p�s\�,;m�c�$J�e��i\�\�\�b\'�B	\�(E\�ׄ�+\� \�%/�4W.,�S[���(U�g�\�<�f}�/x\�\��\�\�,��P-�U�;fC�HN�\�\�VM��Π\�\�_Q\�\�G�J\�34U�$5�o�;����٭\�\� Vc�\�Af\�:}m<nM���y�\�\�\�\���O;��iiX\�1��Fp8\�\\�J\�E�J\�H+�@\�-\�h\�1����\�\�>\��\�\�/<Z}�V\���=MS^O1\�^?�}:�Q^��c���U\�A[\Z �\�]e\Zg�Z�}\�:\��U�/R��eK�Ye\Zxr�X\�$W_��\�ߒ\n|\��PQ�*�\�>[�+e\�\��&[�4\�\�I�&���\�׼o��:X\�Ya\�*<<�X\0F�OV\n\�cv7�f���\"Vc��\�\0c\��pM0\�3:�I)H>\�\�TS[`\ZꨭƱ��`Pd�:�W\\\�\�{\��Ib}s#�\�\�ԽΠg�}�	\��&����7 o�;u9�@��\�}T���L\�2�0�My\�-�\Zp\����L�J�4C\�.X|u[h\r�O���Nȧ{��\�6ή�\�\��Q�:\�\�а�;稀k�)4�5^��|�p�\"P�\�\�\�4z@���ϴ���u\�)�q�s	bht����k��;?\�\�Qȧ���\��u���lg\�̎���\�8\�=�\�=�|\�y6�\�\�D\�s�H/ �Bj�\� �t\Z8�Q�Ӂ{��\�J�\�8k�\�SW\0V�\�.\�`d\�i�v5b�q&p�C�n���I\�e�1V6���C�\�\�p�D�\�\'�;�\�o�ob]�|�z7�\�\�_ �\�\'�|�����\�ۑ��\�N\�\��)\Z\����\�\�\�Mi!]Ne�u��\��\�\�\�k>�\�Cf�#���O��ȧ\�G#\�~\�\"X᤭�q�\�\�D�u\�|)p�S�B`�$\���|�\�\�~.\\�p\�.\\�p\�.�	\�\�<0\��ˊf��\�}GL�mP�ʊ�נ{��n��\�-\��d&>���%���X2�`g\�O�>���*�2�\��O*�������]\�Kk^b�\��\�?�Ŵn-.����$�(�\�\Z=�ռ:byMl\�m�`cEe��g=�ÔD\�^U[�\0k������:b=�\���\�Ԁ\�\��[�V\�i��o&է�h\�HU�\��Oee8�ǿq�ҝ\�}�\n���<(���6��-k�\�\�\'>��&}�W\�e��`�\�ݾ:nݭ�9iw���4k�\�m��y���\�Uן?��+j=\�\�n9$�Ь��\�}׏\�\�Y*\Z�Fʍ�a\�z�\�\�\�E\r\�\�|���hqS\�\�Z\��9p���=�����?�\�\'�O$l��`��k�1f\�\�>�\�\�\��֡\�\�&ּ+VX9��+�bzm�\�r˃C{k}U`\�\�ìG��y���qh��>7ͣ�][+ߜff�oO�x+�l��m[d�e\�7�;�\�+-vоn�\�pĕ=�\�INL\�c�/ȗ\� �\�\�k\0qܱnq\��p�O~WBlC���\�3G��\����w�\�Kbc�de�x2a��\�*ö599jkc\�\�\�G�U}\�\�?{\�\'-\�e�\'��o\Z0��&��X,��X�~b���l��\�\r���U\�=;5��y��o\n��	d�[ygAW����cA6T�8}�\�\��XKk�T\�	\�Q�ϬY��z\���`��z�~��::�7hR\�Q\��\�\'w4�j%s��y�\�\�\�q*V�\n^z��\�q��<�����>Z�\'\�\�Yb\�(�\�_^սz��\n\��É\��CQ\�1��W�\�\ni\� m̬��7vśx�\�\�\�\n%\�Qm\�\0����Tꑝ�@�\�-\�W\�l-�<�&G�BqU�=|A~�]\�+d�\�Ɠ?#�V\�$˟o\��\�@\���*���}\�= �\�S�\\�.\�R\�җ�B�C\�oM2eH7�\�\�P\n\�`�`\�\�Îl��۪Lu�@�g�z\�{�u����3��:��I�oGbj{\�<�)hKc�`(\r\\f\�\�>�\�C�\\\��g5\�_r�-\�?\�	e�z�\�-�-/���)\�!��\�n��\�$�\�\�x��Jy�R��e�p�\�l��\��?V`��C�Zk\�{\���Ċ}]s�\'7\��uJ\�H�j3h��q	�|UivEe�H,!F;�Q�~F뙻T\�AA���]gz;嚹\�r^\�7�\�b~_��.)\'\�|B9\�-��� Q\0Kw\�3у�XJ=�TjF�R3*�\�/LSt\�\�	\��\�U���\�9=�:\��\��/�=�\�q�\�\'+�@ gW\�9(�U�\�ӋL4�\�\�\�\�~X\�u\0\�Po8��;1��7k\�M�\�ߺ��>\�\�\�w%��}Vs�+\�?)\�\��s\�\��+���^R��W�h�[�\\ObJ�1\�\�\�=R\��n:���ɇK\�S�w\�\�\�w\�S��i^�mM�0\�z`&b\�Q\n\�A��D\�<\�\�!ym-`o+��\Z#�s��H��߷�nw f0=�|\�~	lQ�\�֜��>�:�Okk\�w&�N\�!\�K�\"�4�k\�U��K�XO�@Òˋ\"]�Xk�\�.M\�ڛ�{\�\�\�1k\�ˑW\� �5œh\��g�\�_\�J�\�P\�ķ\�U��I[�\�_���\\\�\����Xw5�?\�9����\��n\�`�\���\��;�L\�gG�Dle: ��g�#W\�\�`��N��\���.�\�N���8�ߍp�s\�G\�s��7\"\��E�̏s��\�y��hT�:$\�O=�;����\�.�5�`!\�h\� &i[\"\�?�\�i�[\���s�1\�u\�1��-D�0 v��A8\��&\��\�9ގ�\�\�8M\�!\�8\�\�\�$\�V�;9�\'���\�iċ\�Ng]���+:!�1\0\�(��9�\��P!\"#��\�=�7bG�D�v*\�x\�!\�\�NgG��z<�\�\0\�U>\�\��`b[�1��El\��\'\"��D��\n�Ź24\����%�\�\�4j�\�c �tz�\'\"��v*���;\�c#�)ҫՈ�e5�/��Ӑ\�Nh�!4\�O�!y2���ȣ8����␵��\�Ng�F�\�1�s�a:˩�>E�\�jɇoӎiIdӲ\�>]q���u#\"\�nu�����!jB_��s���aݫ�\"C+\�!X/\Z�b�Y\�\�\�7qh�\�\���\'��F��_@�jD58(Cogd�\�7p2D\�r\�\�\�\�HCОር�`DD���\�\�\'�Ĳ��Cɵ�\�Af�\�9\�\�)S;����~O\�[\'\�\�{�tD����\�0\�!r��\�A�2�=\�\�%�.\\�p\�.\\�p\�.\\�p\�.\\�p\�\��A�\�\�\�\�\�҉\�;ؾ#3��|H\�׷\��\�X.�\�ߜLj��`\�G[�G+�3cu���X����]\�\�1#?\�q����\�\��*f^C)\�TV�sN�u\��v;\�_�{�Z�\�֞�5��6~R,�\�\�\�\\n�d�����/\\\�:\0�1\�}\�5�˵XSD�����㙩�j\��kے\�\�o\�\�O+�ږ}_(��\�=Zc��v\������\�߽L6�-I9L��|\��\�`\�\�D�t\�\�w9ϳ.\�\\��\��h�늊�\�P(\�\�\Zx$�ïv������@Fj`QU8r0B)�zMcU²�i\�p`|m$�\"�=��ֳ\0�\��N^SdVmԓ�7\�?\�\�\��\�\�zyŌ�<n�\�\�5��תu��u\0 +U\�e��\�4\�\Z)�m\'��\�H�9b\��\�\"��\�\��I:�}yl\�+?\�Qk�ֿ^�\�\0ܾ�$>��K\�F�h,�[S3l{�G�*W�wT�߻\�\�\�kgpk\��ۊ:�6뛴\�[�x\�\�au�c\n�O4\���cF��\��pZ²?Elx�h��\�O�c\�\�\��m\�B��\�Z?��\�`\�Y��O�^3ζ�\�&R\n\�kg%�Z\\2�7�Ao�R\�6�&\�֨X\�\Z�$*m��\�6*�͜ɟ�6�\��>�\�K\��\�\�uݣ�\��P�ĶuX�\�o�\�\�\�ǿZ��Ç\rJ$�oj��CO�\�Ȭ\�g�4\'v���<V�N����F��k�V�j�ʚ�	\�\�\�ϲ��$�dFV\�oS\�\�l�)Ʉ5\"\ZM\�\�bIÒ\�\��ͤ�اw��\�J]\�\�M���(�,�\�P&\n������?}\�N��k\�$>|tef2i?\\W?3\ZM�\0�t&_�\�ue,jn��s��dub\�ss\"e[ʭ��^�\�\�\�Zs�c#a\�?(�{�*\�\�f��6Ɋ(\��\r�\�Nx�tk\"\Z\\WS�\�h�^S��R\�4��X23IP\�O\�A%�e��{��jͯmKpk7q޻#�\�\�M���9ɲ�u��\�ݶu(G�X��U�\��l6���\�th�5\�X��\��K��rc\�\�Dܾ��6�������Q�r�oJ`\�%�Aҁt\�\��\�>���j��\��KG�<6�\n��8V]|{ݒ:α���D\�T����zM�\�U\�$>{��\Z�o&ȼ~\�v�=5��6\�\�e�vĥ��\�/�,�,��xܺ$\ZMvI$l��h!S\�7(>T�\�\��A�\�xܚR�%\�y\�\��4Xuq�\�4\�\'�K\�\�\�ࣰ\�\�H?\�뉎�ƪ��?�\�ů�q�\�\�pX\'\�\�`DQ\n�\�^�^�Q˦&�\�������\�ܽ\�#Jݿ�=h\�2\���\�\�di��,K_�[C�\�DJ\"ac\�()\�ae�Q\Z��\�I��\�)�\�7+��\�X�q�Pb�\�ʛ��\�O\�\�(g)f׭\'�\�BR:\�h�j\��F[\Z���\�:n��vͣ�~�ש�\�!\�.c\�%\\�\�psӗ�\�PL\�6gY�]�$Sc�$�e���R\�zw\�dօ�I\r�\���\Z�H\�/\�[t�\�t�J�)�B\�	t�;b�\�\�M�m�\\�Ŵ@q\�|��\�߫1\�.c\�\�(�\���2�W��\�\ZN\�6Gڶ]�YF4�$����B\�q��\�\�G��6*�>y�m\�\�f���@lV\��$��\nVjkU�^�Pw\�}�\�\�\��\�1\\\�\�Op\�\'?�b���D]�r�\�Q^��ڌ\��cN\�\�i\�\�IM�C껎��U�2FZ6f�W���e\�Qk	�=X��>������Z�\��X{\\\�\���\�_���X����\�����|�\�u6�iZǰ�\��A\�T \��\�a\�V(u\�o�\�X����Ȳ;a\�\�7�\�?\n�i`�M��\�50��\�k��ʼZ6�\�N;-H�\�\�P)\�t�D�����\�\�\�\�Ǖzt���vk?��\�+���%e�A*\��x0�\r\�d�k�lq�\�2\�_���[��oG�UՊ+/\�\�\�S�D�\Z�U^O�\�5\0�(�{3\'\�7J=�ǘ\�e��Z\�j&6.��\�3N�4rP\�:��\�����%#��\���\�zJ~�6|>���)��\�&u\�m�\�Z80�\�\�������\�����d�`�=\0a\�3�\�\�JMo��`c��u\0�\�\�{\�e\�\�\��R���&�ޒV��\��\�Y�:\�z�+6m2\���\�Gy\�Z�\"P�\�\�\�LAy\�yfN\���\�uv�n؏1y\��yo[Wm1(	<��`\�_MS\�й8k룓>\�\�\�Fn.�	�g\��k����I��:8�����t\�)�-\�!��zh�,:�\�)����X\�\�pk?\�y\�`�\�Ү\�b�\�gJ��H�9✢�75|\�\�OM�ׄޤ��>�_�\�\���PN�\�t��\�ӋO�{\�T��b�#\�Yu\���=��?�vn]e\�?\�\�ȍ\�\n�:\�t>��\������4�2�\�\�\�\0�g�\�n�\�w�Z�]\�\�?\���0���z�|��\���A\��԰��VzSSO6zMcl�\���R*Uk\�\�H�\���j��)ҐhiHǵ�(\'�\�\�\�ǞE�W`�a�\n�\n�s}u\�:\�I`K�e?\�+LX�ԺhlQm$Z[�U�\�Z~\�o\�:eW��D\��H��!�($�\� $`B6\�8�rp$���Hg5]V\"��NC$�\�&�S�8+�!�m*��Bw�f\��:휀�\�\�nC�S�[��\�3�\�H���N�\�wh�6��gN�\�(	���g 1_ʁ�	�ݷ[E[;\������Ѱ�P4�Xzx\ra�\\D�\�\�\�\0�\"ql\�aǸ0�m�6d��t\�\�Fi�;\�\�u�\�\�N[\�\��C��?shQIs\�4�\�y~.v\�IDB\�\�\�׏DH��X]\�\"9W\"z\�\\$~�}Չc�\�H��\�0�0m\��\�4�\��tM^9\�\�Y�}�NH���Fײ�PX\�8�K�un�\�K��\�\na�7i��r\���\�H��!ћ��c\�a��F\�$,\�\�N$�\�\�JA�2\r@�\�\\�8\�\�\�\\�!�o�9uS�d\�\�\���)-\�N[\��`$؉F���MhK��� ��N��@0�\�?��Kv\'\"�r�xCW:��F��k�p^��g�C�	�d�a��\�tp�݃t\�H$�\�γ�K��|�\�އ0�h\�a�\�z\"��$�٩��x�\�\�+$D\�l$n[_��\��xX\n�D\�Y�0�P��>E��ۑi�y\r�\�\�&\�\�s�N#q�\Zթ>F]a�\���ߍdP/~�\�b��\�_��2o\�6�\�}d����D�\�\\\�H���Np\r\"-.D���B\�p:�a��ϗ &O3\���s\�\�4\�%�.�\��F�N�!l�	�\�I7\�yvg�2\�\�<;a�\0\�lu�8\�\�mHH�;)v�s�\'�^�\"a�&8e��i\�ϹBk>\r�2%��iv\'�C*�.���`\���x~	\��\�װ+\�f0\��}���K�\�x+2JA\�w\n\�ې�VD���D�\\����Ȕ\�a�W�\�b��H��8\�@�E�\��!#} �\"\�f\'\�&���H�\�\\`�S\�uN�v\�\�iȴ�男\0\�M$�\�ί�ӱG!STgdJ\�H+2�\�cq\� \�B��\�#LX�\��\�iW\'d`<�H\�C�\�^W\"�Ъ�F�H�B�I�p\�,a�eoO\�L\�W4?ըV�)ZϷ\����7wowV��\�w(\�&��M\�\�F��\�\�\�@ԃ�\�� ��6�V���=\����擑�m����\�4�\�i\r\�\�_\�J]: zԪ�䕇H\�CI\����&y\�&\� \�~򚢥��p��\���L�\�ѷ��\�u\�oާ �\�\�ݎG\�B�\���2�ia6��,�0ԡHH\�\02\�V 2X\�Q�\�-w�_\�\�Y5jd\n�(č}D�N��*\�\"�X\Zϸ\�)\�봥Q�?p�\r\"�@�v�\�ׄoO\���� П ��[\�>�0ʇ\�Jk\"\�|\�j\�mD�\�G�l\�q1D\�DD��r��ѻ�At���\�0�W�hx\�A�y<\�\�q\'�\�#\�\��m�\��\�3ש[�W\�\�+�E�.T\�\�w\�`�Xݐ�^\�\�Z6\�@�B\"�)@%\�\\/CVD��\�f)���w\�@V�5\�y\�4�H�\�z	e\"у�#�\�:�S�\�K�sm�s���W!R2�0^\�=ڷ\��SG&\�p\�u\�\�;�\�\'.\\�p\�.\\�p\�.\\�p\��v\����\��\�}r\0\0\08tEXtComment\0Processed By eBay with ImageMagick, z1.1.0. ||B1���\�\0\0\0%tEXtdate:create\02019-01-15T03:50:34-07:00ܳ\�\0\0\0%tEXtdate:modify\02019-01-15T03:50:34-07:00r�f\0\0\0\0IEND�B`�','863262852V','NIC','Janaka Rathnayaka','716539575','Janaka Rathnayaka','Developer',4,'144','LK-1','LK-11','00000','20712','Aluth Ambewela Adikarigama','0716539575','ucscjanaka@gmail.com','Test By janaka','ACT','single','2019-09-26 07:40:33','2019-09-11 05:56:36',NULL,'EPIC');
/*!40000 ALTER TABLE `merchantcustomer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  9:01:26
