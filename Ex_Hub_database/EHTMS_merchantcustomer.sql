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
INSERT INTO `merchantcustomer` VALUES (17,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0þ\0\0\0\Æ\0\0\0\ÅaÍ£\0\0\0\ÉPLTE\0&\0\'$\'\0*ÿÿÿ%\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0+\0\0\0\0	\0\0\0\n!\r\"\0\0\045@ñòó\0&¤¤©\ç\éë“bfnsv\0\0\"¯´µ\Ú\Ü\ÞJKT–\Ñ\Ó\ÕnouTV_€‡\Î\Î\Ï\0\n$18F¥¥ª>?J¿\Ã\Ç,\'\'4%.= 0\\dk$4@EROW`xˆGPZWWd?>M„POXtuy*™šžhin#-=mt€»¾¾\Çbkw\0\0IDATxœí‰v¢\Ê†A¤‹IDÃ¤h€Á˜s;	9\íû?Ô­!\Z\ç˜>‚\Öß«‘I\ßþw\í*@A`aaaaaaaaaaaaaaaaaaaaaaaaaa*\nŠ$\Ñô\ÜGòŸŠÚªs\Ù_\×vô+Á~ø‹\rÁ¡\è\ÉüÅ…\àôƒ¿‹1\ëø.9›©\×u‘ü‡€\ï\nÂ¹ÿ$Y8\Z}sÎñ=oüþsƒ|K\ßg_À¹YŽ×©ô\Õ\æ?¾\Ê8\Ýú*óÿü—\0œ›\êPýüj\0\Î\Íu˜~~%\0\ç&;D?\ëý\n~ø¾Zü¿:ü?Ÿú«ü\ç\æÛ­¿_þ¿\ä}Eøÿ|%øO\Ã\'\ä?7\å6\æ=ñD\îyg¹ùOôþ—\Ë\ïÙ¥\Zøß¢\'[æ¸³oŸ2óŸX÷D\Ë‡â—‘ÿÄª/iý½ø%¶ÿDú\Ö#M\ï\Ç//ÿ±ôõ‘Òœ¦[ûº¾Oþs\Ó~\ÕQ\æ#\àfs_ iú\ß\Ãñ\Ë\Æ}}ƒ„\âO\Û¼»\âø›\à\ëMAƒø/“úÁø\å\â?\Üüø¼\é\é\ç\Öø¥´ÿPüðuJD\æ\Ó\æ\r*‚•³Ÿ:~3;\ë\"zz\ØZtU³ÿ4|}’\ÒÓƒj\ã\Ó{R²Vñ÷ lü™¿¿õB_þú\æføfô—ñu†eö\à‚ð\ëBþ\Ä×¥\'?ð\åƒðKÃ¿k\æ\×\ë@\Ëñ‡7\â}„f,n7ÿe\â?‚¬¤m©Y!ü}ô\Ô.úÏ¦Oÿ±3\Îdw\ë¯þNó—ð‹,h\Ô+„¿§Û£v\Ò\Ã\äÿ‚¯9l¶¡\"üû{ý]ô_Ý·\ëy\ïø;\Ýo¶8k…¾ôb\ã^þs“§:Àým}~<j+‰?’–¶\î¸\íQ%ü­\Þ\ßóë½›\Öò\æ*¹¿\Ëü-’žW¬§@­l¯þ7+_S½xZ_\É>ü2ð\"Ž¿t÷6øº\ÏEà¯šž\Ó\×\×F;žtø›G¼“‡\ÏfŸ\ÏEò\áøDUðW\Ý\Ï\Ìo.\Ñ\ÛOy\Ço5\Öñ·}l\ÙðwÜ Y÷^o™\0.¯€.S]÷Áo\Êù©=\èÔ™\ÅY.m¶®D9½)\Ô\ë-±p«¯\áomRe\Ã?|\Ð\×l\ä¼ô\Òø\ZXô\n\Í\ÛÚ‡_™Ê¿\Öñ\éO9½›–ú<ùÇ‹~Of\Ïé—‰¿”ú¨£mE\éK²\ÊGq¨0xµ³\íW•r››?\ÉÚº¸\Çt’.2Fºä·ªr\Â>›wó‰°È†¬\ì/†¼\\v8*r\Ês$~qa·™™¯\ß/\0‹AŸdu¯þü“üŽÖ¸“­{«Ýž\ÞBñ\é3;/u—(÷\Ã\çóAN]\Ðl-JWœ\î\é7I”0“\Ë\Äÿlú<\êsú\ì«\rHÍ¦\Þ\à\Zz½2øG]\ç\çò\Ë[=\è~“.–\Ö\Ïõ«s›\çûü>`xPŒÿ¦\ícðKE\È\íý\â2G‘ü´7KŠó>W\\£\ßq¶[Aü\\‹QÍª\æMô\ä~Á¯ÿ»¬\ß\Øùa¥\Ä?Œ_š¥OÀÚ™nŠ¿/÷Ë‚œý‚½\ß–6\Üªù‡\à§7ú2L]N>\á\íA\ç¦ù¿Yµ¯6÷Õ®&{3›{ý¾g·`\í\×^\ïK—ûG­Qoq\0‘\Ñ\×ó~¯÷\å3ÿÐ¯ônrúX\ïKŒÿÝ¯4‡¾Lø\'~£ûúš¿ŽO}9\Þ\Õ\0 Z¿\Ü\ê›\Å\Ònð\Ò\â¯ò\r*¼´`•·(H(\0º´¸Ÿ7\Év\'\Í\0=Ý±\r8ôf°ðM2`\à´xª¬ô+­Ÿ\0Æ¸\åIp#\Ûž˜Œ\êÉŽ$ô¸®ñ(&\Ï\ZR?šfW6e[\Ñ=m‡\î¸ßƒ\æó$gi	\"zÆ”³\å#}òR¤i¶gÛ‘\é{p¾¯õo\ÓÇ”¸D\ÓL†\àKú\ìº°\ã¤\Ñô=\Ú\ÎÀ\à9Šc¢±0ÙžÒ–c7ƒ„ö\0UVó—ñYC‹H”\ÒIuGš}@¢\ÓgA?²#@Ivd§+X— =\r\Ú@\Ï/[\Ó‘\á\Óh‡Ÿl˜´m\Ò\ZC”6÷‰%þ\ÎX{X<’F‰=\íQ€­!Òž’\âM\ÍL´{¾¸\Z\Êˆÿ&™ƒ1=`Hª}K[Ï´Á¦ø0# \Ã\'ºH0-q\êKøÀþ|Y¶4š£0m“ˆú\à^K\à{¯õ\Ä\ÌýôB·\Çhgz\n\ÒGy!¾\áÒ´yŸ\áÃ¤2Yjü‚x}F_\àsö]ƒ\î\ßdû_-!ûƒ\Èðf¹`@÷}\Ãxªtˆ=ú¹‹ðôÍ§dÏ’Q²”™¾À‡…Í’Q‹–‘š÷\0À@ó §bs€h‘ö\Òe†Ú€‡ef=\Ï\n]T3\Z\Ú\Ú÷tR|6Mù_Nñ©R\ã\çü\ãi}*’aK°´þ\Ø\ÖPPRû}P‡P\Û/~³f8AÀ£„\ÏQˆß’Süˆ\Û\å6Ÿ(øõv\ÏFý¾ºxÉ€óÑ”¥\È\î£6ƒ¬‚«\Í\Zi*Ü¶™!=\Ê\Ü%\è9\ì\Úø!\ì`\ç7`\ì\æt\"¤4\Ðô²\Ó\é¯s€\ãD1ë±€•¥.\ê²\'\\­\Ä\Ôp–…\àŒ\Ø*Æ´m‘C£&VlQp>\ÝUæ¸¬\á¤ò\Ó/Uÿtø—ô‰|´¾sD¿$\ês|_¬*y\Ã\ÏTä¡¤G¤ø\Ûø\ÛL6%\Ò)j\îz+mô\Ý.bc\Ò\r$ZC0|¯\Ît¿Ð—w¼·¢MüT\ëùlý\í\é\ì2¾^\Ú$q‹¦$÷\ç\rò`ùõŒ\Ö\Ïf¿\Ðô±»B_	\ï‰Í¿Z¦‡ƒÛ ~¹’\ËCV!\áÉ®y‹:3P!3?\á\Ù\\\×L\àYó\çA‡³\Ó\'b™¾\"\Þù\Û/\æ/8\èý\åƒ!™\Ù\0ž\Åv\r\Ämð\Óa—l¸=H+$3\Ø2\àl\×Nõ\nz´†OÁ\Ýfw÷qƒ\Ð~–M‚Ò§O(»™\Ùv\ì\í\ç–9¹/?NHý\î	›\Éð3ù+\ä=µž\0­¥¢\×&\Ñ( %7“\ÕD\è\Ûd{Qÿ\àž9=U-\ï‘6ð-ª²ô?ø3Í•¤\'~þ\'\Ê\Ï\Ís¬¨“°ü	•\Ãÿþ_¦¸x¤P}øµ¿\ËòMø\Ê\â3\0—D}\ÕQ\è‡GZ#\Ú‚\r;žû\ØB°¾a\ÛO\\÷¤Cºnz\â\Ø\0œûhÿŠ®=\ÓU\Ã\çºZðe]1:\Öiúu\Õ\"jW-Œ\Í\Âø×¬_QÐ¤Xý9WSºµZw\ééž\ÆplÿøŠz§Ô”0§~W~\à¼\Æy/Þ 8wŠFJ\í”ã¿º\\M\0\'\Öj,\'ª®\\E¾Æ² ò\Æ}¥7	tkŠ€\í°\à¾©^žü\Ò(ª1\n’N\Ç’\ØÅ½\àüNb\Z\0Uò\ìQ8;\Âû\Üya8þ\ß?\æ\ÝYµGe\Å\0–)6¬¨¡05¶\ÛžSX¡&4oùN9>—„RÀ1\Ã£ºÀbAO\Ç \Ò,:\Îk#G“l#T½\Ía\ï\Î\í}\ãQ‰G\\·\Æ6D…\çžõ?€¢ð0?GïUº\r…º]~tg*†\ã¸Î‡¾ÀÄ®92\ÌQú\Ô\è½%þ[Ð“á‚«&œ\'=	¶ý€vlu\ä\rû@cú\rœº?ü0\Â\á¨\ã¿w\æð}h\âž\êø©ß‹G|\ÍGa\èÿó\ÚI†V¨ZnrW\Äh\Èy¯–\Ê$y•+:>\É\ný\á[\ÖY\îÇ‰Ä„FOT@¸‰Om\0Æ¦D\à\rµ÷s{\Å\'\Éh>w\Ø\n“au\\ÃªYSÃºK¢\Z\Ô0\Ño?@\0\Ü7U\r¤ž©&£\ØRc¸>›}J\Ïú\ã\Zo©\ê?¯½ø•Ÿ‹ÁH·)ö\ÜDSOµ­ \æ\ãÄ´Cß–\Ïý)1ðÕžùf˜$o¿\ßJ\Ëø°†\Ö\Ûpdøf\à~$o£À•\Ã\È\ï™C\ÃðÝ¡a…®õj¦}ª_¹û-(ï†¡r¡\ëó¡#ûF\Ü0ù\Ú\È5\îx\îM}ƒQÀ0Q\ßb\à– \ì+ñ¯ªb\×\â\'U‰a\ßÌ¨J(*N\Ì\Â\Õ\Îû\Ê\Çñ]\ìðª¿Ž\Þñ.\ä\ÔX\ßy‡¯9\Â\âS>G}\n‹þ³°û\çxTUyAAU”\ç\àkW`Ù„¯,ŸJM8?}:2ƒG	ÿ)‹4\É\Ö\å\Ë\é&8\ß.V¤{,\êð ÷š…ñ¯YWŽÿ\ÍZÝž\ØŽ\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0–\0\0\0q\0\0@GjN\0\0\0gAMA\0\0±üa\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0tIME\ã2\"QQ¦\0\0!\ÐIDATx\Ú\íyx\Õù\Ç?g\æÞ›{“›$d{!T@¢²TE+ ‚\"Z—ZÅºUmµú«¶Š¶®Uk-JU\ÜP­K\ë\ÚZT°BADe‘M–$d»û9¿?\Þ		1	\Â\Úù>\Ï}\æ\ÎÌ™³¼\ç=\ïyÏœy\ß\\´†ÓŽR0\î\æ\âYõ×Œ]\ÍdØ´\Ë/9þ¨b\ËÖŸl\Õg³eK\Ýü’K{l\0P»’Ñ˜\ëû\ÕTW\Çì§žÛ¸‘E± #ûf 2ŸW»œY=\Ë~¼,iúx;V{òž\ë\Õ\æfx,™zÚ†añÒº\îmy¾	Œ€Ï®™p|«©.mr>\è\íü\È9^i\ß)¢\Éÿ€ñ-\0YÀJ\àG@ðs °ˆ4Î¬µ\è¤\0~\àÀF\çüK`U;\Ð\Ê\ÅÁ‡‰%ƒ_©ÿ?lZõõÿwylž÷\Þ€u‰²3tÉ¥E:¿ \í\Õ]®\Í\ëOaØ´úÄ›þ#¼d¼¶-­“\å“õn73¼d¼Ž­=u÷3\ÒúÚ´a\Óz\è‰%ƒu¢\ìŒ\Ý\Ï`b\É\àÿ´vÿµ&\ç^\à@*Ðµ\Ñuh¶FõRcð\àh`±“\ÑD$\Õ\ãN¤÷\ë€`-pws™5\ÆdÀ¿À!À Dô,i:¹p±W1ö\Æ<\í¶}ƒGdb\É\àOµþi\0`\Âm\ÅÃ†Më¡›«”§½?\ã…a¬û°|BFg^ûú5ö„ÛŠ«,·>}û\Â\";\ÐMz–ÿ°\È\ç›\Ã\Ç\Þ0È®®Š\ZJÁsJ\Ëýe;Ú¤4~_\\ú\Ú\áj\Í\ÂPUEE(#7Xv\ç0¢›6\ã\ëv±of\Ö\';*õ‡ûW\Óg÷h\Å\ê^:þ—FŠy—\'7À¨\ã—3ÿ¹\Î\Äb¼Ò¾ôtx\î\Í=³W*Pri+\n\n‚/öýOA\Ù\ê\Í6À\Üc\r¥\îlŸ©­¦;\Ç\ãÀ)-¤ý1¢\Â\Þœ3±d°žX28¶«¦\"”<™ˆ®\Þþ\n¼<hñ\éˆö^4\à.`P\Ô\0Q –†\é5\á¯žk\ê\\\èP$™I\Ç}œ{y\Îñ‡\Îý§a¦s\ì\Ðp\áÂ…­\à\ïË°i=5¾\Ö\îzWK˜X2øK \×\Ë{\ë¯]ü\Ò(æ¿¸Fw<4u¥¡M\ï\ÖÚ‚ny¹ýqVºúd\àë·h­õ^»ø‹\Ò\î\ÑJýË¾W”\\Ú£`\Ý\Ö\n˜¢õ™\"k­ºñ·ÿ;ŠÓ©sðø£®\éSwÂ½\Å\Û\ë\Ò\î\Ýw\Ä\åE—§d\ë¹\Ó7¾p\Æ\ÒF\\\ÙKGWžBŠ™\\=iòÆžV…*Ø¼¹nDV–Ÿ²u•J‘þ\Ï_¬°\ëó\Ø#\n\à„ÛŠGl\Þú·\Ö\Z¥¸\é¸\Ãn»id\'¬ºþA¯¡¾«é™£¬$«beþ^/6~~j¥n-¾ ª*:3\ZMr\ßE}–\Ä\Ì;‡øšû\Ð\É €4Ò£\Ôõ;<·WT\åE‹\Çzú\Þ€™\æ\Å\ÌLAyŒL3û™š\æ\Ò\ï•\Ñ\×\Ïð&¼©z§0y\ÊZ\â¥uhË®\Öúñf\Ó\ïñJi=“À ùi¼{\Ü\ØÛ¿,HÚ‰\Ó\ãë°¶½}\ç\Þ J‹yU\ïÀÄ’ÁÉ‰%ƒgq\äÈŸk}¥ŸU(£\Ð?\ny\ëü\éƒþó¼£‡·\ÚC»\Ó}¦s\êm)aMiô\ïÀ\Z\à1\å\×W‡#\ï^;\áø\ï=\Èf8Ç”¤{\nÙ¦8\Ê9?\è\ëT´©@þð²\Êyª­xYóœ,«Nº\0§o\07 oE\ëqS)/\rœ‹,¿ŽCÖ—!\"\èNZ^\Ì6‹úUð)@&²\è<˜œLF!kÀ\áMž\í\Þ\è˜\ï<ŸŠ°\Èý\Îñfd½Ø·­kŒ~À	\Èû\à^4,<\Ïw(š\â\\\ë\âPg4²²\îØ–Â¾/£…,Ã‡8‡ðˆT!{gƒ\n&_šSñ½ö‚Å….\\¸pñ¿s÷³88p\á3\Ã\É*J½ª\Ç	KÖ¾_•l.\ÍA©z\Ä\àT\Û\æ÷J±¢SV\Ö}ýýý\ÓÞ¾ú$>ú\ë7/o\Ý\Z:E™]ø\Ç5‹ZJ{PrV¿\ÂNo!Œ\Åb_n,{·iš\ßNÄŸ\é½~\éû¥\Ö\Ö\Æû)ƒ!Z³¸µ|h\Î:ú\æ¹}‚›_:ûó\í×®;ùV–m~\0¥\Æk­ÿL» _k«½)¾)ô§\ÔAûõIÓ‹ýñ˜]UQNle»ð¡5U—¿9‚D\Ô\Ì\\ñùã½›\Öl;¨ˆuöŸß®ŒV‡Ã‰`mL\Ýÿ\å\Ì\ãn>ó¨\ÏÕ–M‘%¹9LµmþyxkaOb¥Q\ìp’s\Þ,;mó¦šc±$J©eùùi\ë\ê\êb\'†B	\Ô(E\áÂ‡×„š+\ï€ \Ö%/4W.,ŸS[Ÿ¨µ(UŠgü\Ù<ˆf}†/x\Û\êõ\á\ß,ÿóP-’U²Í¾fC”HN€\â\ÂVM”€Î \Ç\Ý_Q\Ø\ÕG¼J\á34U‘$5µo™;þ«—Ù­\Õ\ã€ Vcü\ä‰Af\Å:}m<nM¯­y“\É\í\í\ÓÁ OÍ¾¬ùiiX\Õ1¬ºFp8\Ê\\ŠJ\ÉEþJ\ìH+œ@\Ç-\Ðh\å1ú¼úõ\Î\Ê>\àˆ\Õ\×/<Z}ñV\Å­¹=MS^O1\â^?«}:øQ^•úc”ž‡U\ãA[\Z ‰\â]e\Zg¼Zý}\Ë:\à‰U­/R‘¥eK‘Ye\ZxrýX\Þ$W_´…\ßß’\n|\ÓÀPQ”*ð\ä>[³+e\Ä\Òú&[±4\ì\ÉIñ£&„û \Ô×¼oþ:X\áYa\æ*<<ýX\0FšOV\n\Êcv7³f¯ûŸ\"Vcœø\à\0c\ëòpM0\è3:÷I)H>\Ë\ÞTS[`\Zê¨­Æ±ü³`Pd«:ÁW\\\â\É{\îˆÿIb}s#¾\Í\ØÔ½Î g¦}º	\à&óþ²¯7 o˜;u9Á@Ÿ™\ï}T±«ùL\Ä2€0òMy\à- \Zp\Ôúœ•L»JÁ4C\ç.X|u[h\rÀOˆNÈ§{‡³\ã6Î® \Û\èüQ :\ç\çÐ°ó;ç¨€k€)4ÿ5^ƒ|ÿpð\"PŠ\ì\Ô\Ü4z@—›Ï´ý·u\ß)Žqˆs	bht²¯¥œkõð;?\Ù\ÝQÈ§‡õ\Ížuˆœ†lg\ÝÌŽ½ú\æ8\Ï=€\ì»=‰|\Üy6ò\í\åD\às‡H/ ŸBj‡\Ø ût\Z8¬QþÓ{€—\ÛJŒ\Ö8k¨\ÓSW\0V•\È.\Ò`d\×i²v5b‡q&p»CˆnÀ‡ˆI\Øeˆ1V6²ù¦C„\Æ\ßp¯D¸\á\'À;ˆ\Åo€ob]ƒ|€z7°\Â\é˜_ ª\Â\'|§®õû…\ÝÛ‘•À\ÇN\ç¿\å÷)\Z\ïºûš¹\ß\Ü\ÐMi!]Ne´uø·\Úó\Í\È\Æk>²\ëCf #õÀO‘È§\ÊG#\æ~\ç\"Xá¤­ÿqò\ê†\ì«D†u\ç|)p²SÿB`ó¾$\âþ†|ö\â\Ç~.\\¸p\áÂ….\\¸p\áÂ….ö	\Æ\Ý<0\ëðËŠf´–\Æ}GL¸mP·ÊŠð× {µ–n¯ª\î-\Üþd&>ø¤‰%ƒŸžX2¸`g\éOš>¨¨º*º2·\ÊúO*ü¶µ´±–¬]\ßKk^bÀ\âû\Î?³Å´n-.¨«‰$¼(¦\Ì\Z=¿Õ¼:byMl\àm `cEe³ûg=üÃ”D\Â^U[ó\0kòú§¼³¼:b=ú\Îü²\ÌÔ€\ß\çñ¼[·V\æiý±o&Õ§¹h\ÎHU³\ÙþOee8 Ç¿qùÒ\æ}À\nø“þ<(­¶´6úþ-k¬\Æ\×\'>¸¨&}­W\Ée«õ`«\âÝ¾:nÝ­õ9iw¬«4kõ\ï¶m”yªóð\ÔU×Ÿ?–­+j=\ë\×n9$ÿÐ¬µ³\Ç}×\Ý\ËY*\ZFÊªa\Ózü\ß\è\éE\r\í\Ð|¨µŽhqS\ä\éZ\äû9p°=¬­žü÷?¯\î\'®O$l€š`¦÷k1f\Ñ\Ë>ÿ\â\ã\ÍñªÖ¡\Í\ê€&Ö¼+VX9¹+”bzm©\ÞrËƒC{k}U`\Ý\æ…Ã¬GŒŠyø©‚qh¶>7Í£ÿ][+ßœffúoOñx+¶l½½m[d e\Ù7ö;¹\Ó+-vÐ¾nô\ÎpÄ•=º\ÛINL\Ëc/È—\Ê ü\Ö\Õk\0qÜ±nq\åòŠŠpÿO~WBlC´Žò\Õ3G””\Òüö”w¿\îKbc’de”x2aŸð\Ä*Ã¶599jkc\Ä\ã\ÛGñU}\Æ\Ü?{\Ü\'-\Öe¿\'Ào\Z0´¶&þ¯X,™ŠXð~b˜üžlþ‘\ï\rš±¨U\Þ=;5ððy½ˆo\n­	dÂ˜±[ygAW¢›¶¢cA6T…8}ö\Ò\ÓýXKk¶T\Ç	\ìQ¥Ï¬Y°³z\Ä˜ü`±¯z«~¶¦::©7hR\ÞQ\Ûó\â\'w4­j%sü—yò\Î\Ä\Óq*Võ\n^zûû\Ìq¹–<©’›>Z©\'\Þ\ßYb\Ì(\È_^Õ½z³ž\n\Å…Ã‰\í÷CQ\Ø1›¹W÷\Æ\ni\â›Â mÌ¬”¿7vÅ›xò\â\è¤\Æ\n%\ÐQm\Ù\0óƒºŒTê‘–@«\×-\ÍW\ïl-´<&G‡BqUÿ=|A~¯]\×+d’\ØÆ“?#½V\å$ËŸo\êö\ã@\Ïô‘*ø¬ý}\Ê= ‰\ÕSÿ\\¬.\ãR\ËÒ—‡BñC\ÖoM2eH7Œ\É\ÇP\n\å‹`§`\×\ÎÃŽl·ŒÛªLu¥@g•z\à{—uÀ«§¿3‚§:¦Iñ˜oGbj{\ë<™)hKc½`(\r\\f\æ\æ>¬\ÔC»\\\Æ«g5\Å_r·-\Ï?\ê	e½z¹\ä’-”-/‘¬Š)\à!«¢\ân­û\ß$–\Ö\çx°õJy²Rðñe¦pý\ìµl«¨\ãö?V`‡õCñZk\Û{\Åÿ“ÄŠ}]s¡\'7\à÷uJ\ÃHój3h–¹q	Ÿ|UivEeœH,!F;•Qò¶~Fë™»T\ÎAA¬”¾]gz;åš¹\Ýr^\Ã7ð\êb~_œŒ.)\'\ã|B9\î´-óý° Q\0Kw\é3Ñƒ‚XJ=˜TjF¥R3*ô\ë/LSt\Î\É	\Üõ\ÚUŸ¿®\Ä9=:\Òÿ\Èñ/œ=·\æq·\×\'+£@ gW\Ê9(ˆU\ÑÓ‹L4÷\ç\ä¤\Î\î~X\îu\0\ÊPo8·³;1û7k\ÏMý\áßº¥ô>\Ä\Ý\Ëw%ÿö}Vs¨+\Ó?)\ì\áÿs\×\âü+ü±¬^R•úWh¢[€\\ObJý1\Ù\æ‚\Ù=R\çõn:ýˆùÉ‡K\ëS’w\Þ\Ñ\Ãw\ëSöƒi^´mMø0\Äz`&b\ÝQ\n\ÄA«‰D\ß<\ï\è!ym-`o+û\Z#¥s›H˜‘ß·¡nw f0=|\Î~	lQ°\ÖÖœ«µ>¶:¬Okk\åw&³N\Ö!\áKº\"ù4„k\ÚU¼ŒKXOœ@Ã’Ë‹\"]Xk˜\È.M\çÚ›À{\Í\ä\Ù1k\ÉË‘W\Ê œ5Å“h\Þ–gš\Æ_\ÚJ¬\ÖP\ï³Ä·\ßUˆ™I[\Ê_…˜˜\\\à\äû”ó¿žXw5ú?\Ç9…˜°´\âòn\ä¥`½\Çý‘\á÷;öL\àgG­Dle: ¶g²#W\æ\Ò`„”Nƒ“\Äúó.ˆ\íNý½…8†ßp—s\ÌG\ìs†‡7\"\ÃòE§Ìs¾—\Îy±«hT§:$\èO=ñ;¿¥Á\å.£5¹`!\æh\× &i[\"\Õ?»\Æiü[\Èø¥sÿ1\Äu\å1ˆ-DŒ0 v‚¿A8\æô&\åÿ\Ê9ÞŽ˜\ë\å8M\æ!\Ü8\Ö\é¼\Ä$\ïV„;9ù\'ô©\ÇiÄ‹\å—Ng]Ž˜¶+:!œ1\0\á(€¿9•\ëôP!\"#²œ\Þ=ø7bGøDv*\Ýx\Ä!\à\ÑNgG³»z<Š\Æ\0\ÙU>\Ã\É÷`b[¸1¼¬El\Ë›\'\"öŒD…˜\nüÅ¹24\ãô¶¥%½\Ã\ï4j£\Óc œtz¦\'\"ô¿v*°øø;\Éc#ð)Ò«Õˆe5ð/ ¿Ó\ÏNhŠ!4\ÉO!y2¹¼‚È£8°Á¹ÿâµ·“\çNgõF¸\î1§sa:Ë©ó>E½\ÌjÉ‡oÓŽiIdÓ²\æ>]q´§žu#\"\ËnuŽ½œ†§!jB_¤‡sô‘aÝ«¦\"C+\ß!X/\Z¬b³Y\Ø\É\É7qh»\×\Þö¶\'±žFŒ¶_@ùjD58(Cogd˜\Õ7p2D\Ïr\Î\È\Ð\ÜHCÐžáˆ­ó`DD‚Ž\Ì\Ò\'ˆÄ²€ÿCÉµˆ\ÏAf¯\Ã9\Ñ\Ù)S;¿¸“¾~O\ë[\'\í©\È{¨tDöüñ\Û0\Ò!r“\ÇAõ2 =\Ð\æ%Š.\\¸p\áÂ….\\¸p\áÂ….\\¸p\áÂ….\\¸p\á\â ÀAª\Ï\Å\î\á\îÒ‰\Ä;Ø¾#3úœ|H\íŠ×·\ì²Š\ËX.¶\ã·ßœLj¶¯`\ÅG[¦G+“3cuú¿X²öƒª]\Î\ë 1#?\Øqÿù“ù\ê\Ûõ*f^C)\ÃTV¢sNžu\Óóv;\ï_¼{¬Zý\ÑÖžñ¸5£®6~R,–\Å\ï\Ì\\nûdúŽ¾£¾/\\\Æ:\0ð³1\Ã}\å5‘ËµXSD¯ŽýÀã™©üj\Ö‹kÛ’\ï\åo\Í\ÚO+»Ú–}_(”˜\Ç=Zc¤v\à—ÿœ¾¦\Íß½L6†-I9L•|\Æþ\Â`\ç\ÕD˜t\í„\ãw9Ï³.\Î\\³ \â±hòëŠŠð\ÄP(\î\Ñ\Zx$Ã¯v‡©Àýú€@Fj`QU8r0B)–zMcUÂ²‡i\Íp`|m$ô\"°=‚³Ö³\0¥\ÎùN^SdVmÔ“ª7\é?\Ö\Ö\Æò£\Ñ\ízyÅŒ´<nû\à\Ö5‰×ªu¸Œu\0 +U\Ûe¦±\Ò4\Ì\Z)¶m\'¼­\áH­9b\Ùò\Ê\"­ø\Ü\ÚöI:–}yl\Õ+?\ÖQkšÖ¿^¦\Ô\0Ü¾ú$>³¶K\ÕFýh,–[S3l{»G¬*W¤wT³ß»\é›\ï\åkgpk\à˜ÛŠ:†6ë›´\æ[¥x\É\Èauÿc\n“O4\ãŸø‚cF—®\ßöpZÂ²?ElxŠh°û\ëOªc\à\ã\Øúm\ëB°\ÑZ?µ\á`\åY«Ož^3Î¶ô\Ì&R\n\àkg%µZ\\2º7¹Ao¨R\Ú6‡&\âÖ¨X\Ü\Z$*m­¯\ë6*øÍœÉŸ¯6º\Êû>À\ÍK\Æñ\é\ÜuÝ£‘\äó¡P¼Ä¶uXŒ\âo˜\Ý\Í\ÐÇ¿ZÀ™Ã‡\rJ$“oj±®CO§\áÈ¬\Þgÿ4\'vÁ¯ò<V¦N’¬Š‚Fõ§k—VþjñÊš¼	\ëš\ê\ê˜Ï²¶¤$ðdFV\ÊoS\Þ\Ãl›)É„5\"\ZM\æ\ÄbIÃ’\È\í•ÀÍ¤óØ§w­‰\íJ]\Æ\ÚMœÿÁ(¶,ý\ÖP&\n…–—¡Ÿ?}\ÉNŸ»k\Ó$>|tef2i?\\W?3\ZMš\0‡t&_š\Òue,jn¶ùsôºdub\Õss\"e[Ê­…ó^‹\Ö\å\æZs€c#a\è?({ž*\Ä\Úf “6ÉŠ(\Úñ\rð\ÙNx¶tk\"\Z\\WSŽ\ëh¼^Sƒ¾R\Ó4‚±X23IP\ïO\ÒA%ðe¨û{Ÿ˜jÍ¯mKpk7qÞ»#ø\ê\ÝM”˜9É²ôu‰„\ÕÝ¶u(G±X¦ÿUŠ\åþl6ø³¨\îth¡5\ëX™ö\ÎýK‰§rc\ä\ìDÜ¾§¶6š³±žº¢ˆQƒrˆoJ`\Õ% AÒt\Ê\çŽ\ß>£¦°j›­\îùKGŽ<6«\n¬š8V]|{Ý’:Î±¯‡D\ÓT¤¦úðzM¢\ÑU\Ñ$>{¯£\Z™o&È¼~\ÇvŠ=5ö£6\Ó\Åe¬vÄ¥¯¥\Ö/ª,°,ûüxÜº$\ZMvI$l¥õh!S\Ú7(>Tð–\á\á³¹A…\æ®xÜšRº%\ây\ï¦\ä¥±4Xuq¬\Ú4\Ê\'K\Ç\É\èà£°\Ð\ÄH?\åë‰Ž­Æªš…?–\äÅ¯¶qñ\Ë\ë˜pX\'\Æ\È`DQ\n¹\Ù^‚^¥QË¦&”\ä›õ‰ª®½\êÜ½\ç#JÝ¿¾=h\á2\Ö‚¬\Â\Ödi›“,K_[C£\ÑDJ\"ac\ï()\êaeQ\ZúŠ\ÃIÿ\Þ)\Ö7+¬À\ÖXµq¬Pb÷\ÆÊ›…‘\ÖO\Ç\é(g)f×­\'¹\éBR:\æh†j\ä¢´F[\Z°±\ã:n¡“vÍ£~™×©”\Ù!\Ú.c\í%\\ô\ÂpsÓ—µ\ÝPL\Ð6gY–]‰$Sc±$–e£›ðšR\×zw\ÍdÖ…I\r°\Âƒ…\Z¦H\å/\Ä[tº\æt²J¿)·B\â	t´;b¡\Ú\ÖMýmƒ\\ùÅ´@q\Î|¥ž\Ôß«1\ß.c\í\Ì(\Äò¬2W»…\Ñ\ZN\Ó6GÚ¶]‹YF4š$™´©ŸB\Ãq…‘\â\çG³™6*‡>y”m\Ù\è¸fž®@lV\Åó$·½\nVjkU¨^ÁPw\æ}¡\Ô\ã\íò\îª1\\\Æ\ÚOp\Ý\'?¢b­¥¬D]°r\îQ^«ÚŒ\ÊöcN\ï\Úi\ê\ÓIMó¢Cê»Ž«”U‹2FZ6fšW¦º˜e\ÛQk	–=X…¡>ó—‘¬†žZ©\ëöX{\\\Æ\Ú¡õ\Å_”ŽXö½ˆ¼\ïô“ò©|ù\Âu6©iZÇ°µ\ÜóA\ÊT \Ýþ\Üa\æV(u\Ïoƒ\ËXû´¾‹È²;a\ë\Ç7…\Ò?\n”i`øMŒ€\å50\ä¾k·òÊ¼Z6ü\â²N;-H¤\Ú\ÉP)\ÌtŸDžœª€\ë\Ì\Ü\ÌÇ•ztºvk?‚\Õ+²ªö%e¨A*\àÁx0¼\r\Ýd¦k¶lqý\ì2\Þ_±‰þ[³ñoGˆUÕŠ+/\Í\à\äS‚Dª\ZòU^O¶\å5\0’(õ{3\'\ë7J=²Ç˜\Ëe¬ýZ\ßj&6.û‰\á3NÁ4rP\Ê:¦\Âôó©þ%#®ü\×ø\åzJ~¦6|>“ŒÂ”…)ó½ó\Ô&u\âm’\ÚZ80°\ê\Þû²‰”«ž\Ô÷±¡ðd§`ø=\0a\ã3»\ç\ËJMo·•`c¸Œu\0 \×\Ï{\äe\Û\Ì\Æ†RÁ ¯&ðÞ’V¤²\îö\äYý:\âz´+6m2\Æ´®\ÈGy\äZÂœ©\"P†\ß\Ä\ÌLAy\ÍyfN\á¥þ\Þuv¿nØ1y\î¾yo[Wm1(	<‰´`\Ê_MS\ÝÐ¹8kë£“>\ä\â\ãFn.¯	½g\ë«k§Žö¸I‡¯:8¡²’òôt\ß)¯-\ê½!º¬zh²,:À\Ó)„€ñX\Ú\îpk?\Åy\ï`ù\ÜÒ®\ÚbŽ\ÏgJúžHñ™¿9âœ¢75|\çž\îOM–×„Þ¤Á£>€_‹\ß\àPN\ÜtŸ­\ÔÓ‹Oø{\îT¸Ÿbü#\ÅYu\Ã÷ú=þª?°vn]e\è?\È\çÈ\á\nó:\ät>®¨\Ûñ“üº‚‡4Œ2”\â\ã\Ì\0¯g¦\æn½\ïwöZý]\Æ\Ú?\Ñ‰À0˜‹¸zñ|®€\ã§ÿA\äýÔ°ñûVzSSO6zMclŠ\×ûµR*Uk\Ï\ËH\ßó··÷jþŒ)ÒhiHÇµ¤(\'\Þ\Î\ÏÇžEðW`ða§\nñ\ns}u\ç:\àI`Ke?\å¤+LXöÔºhlQm$Z[U¬\ÝZ~\æo\Ï:eWû»D\Ý˜Hð„!À($ô\Æ $`B6\à8örp$ŽÁóHg5]V\"Á°NC$À\à&÷S8+!m*¨Bwf\Êó:íœ€¼\Ü\ÌnCS€[œò\Ö3€\ÉH˜€…N\ïwhþ6ð gNŸÂŽ\ï(	§¢œg 1_Êµ	«Ý·[E[;\Ûœ‡Œ¿Ñ°²P4„Xzx\ra¸\\D”\ï­\Ö\å\0÷\"ql\îaÇ¸0ÀmÀ6d´t\Ò\ÊFi†;\í»»\Ñu¿\æ\ßN[\ê\ÛûC„?shQIs\ß4¸\Èy~.v\êIDB\Þ\ç\Ð×DH±X]\×\"9W\"z\Ô\\$~Ž}Õ‰cŒ\êH¤³\Ç0¡0m\Ûþ\Ú4ô\ê‡tM^9\ë¹\ïY¥}‹NH”“üF×²PX\Ï8÷K‚un”\ÆKóš\Ú\na”7iˆ°r\Ò™À\ÕH±Ÿ!Ñ›š‹c\Øa¨´F\×$,\Ö\íN$ò\Ô\ÆJA‚2\r@¦\Õ\\‡8\í\í\â\\ó!¡oº9uSˆd\ë\é\Ðò„)-\à¿N[\êÿ`$Ø‰F”ø¹MhK£òú žN¾ù@0\Ñ?¸‰Kv\'\"±r‘xCW:÷®Fôœkp^ýœg•Cˆ	ˆd¹a‚»\Âtp®Ýƒt\à©H$š\áÎ³€K‘‘|¢\ÜÞ‡0ùh\àa§\Óz\"£ú$ŒÙ©´¬x¦\é\åœ+$D\Ðl$n[_§Œ\Ã¦xX\nŽD\ÆY‹0ÀP„¡>E¦µÛ‘iµy\r\ï\Ð&\ê\Ôs—N#q²\ZÕ©>F]aº\Ûø®ßdP/~€\èb›\È_½÷2o\ì6œ\ï}d£‚½ŽDœ\ê\\\ï€HˆÁˆNp\r\"-.D¦–£B\Îp:ªa€Ï— &O3\Åõ¤s\ç\Ð4\ë%§.\å÷F„N£!lš	ü\ÚI7\Ðyvgø2\Å\ê<;a¾\0\ÂluÀ8\ç\ÚmHH¥;)v«sþ\'§^¯\"a“&8eÿ‰i\ÕÏ¹Bk>\rÀ2%½”iv\'¢C*‡.³€`\åƒx~	\à\ê»×°+\Þf0\Éù}…ˆýK\Ñx+2JA\Äw\n\ÂÛ¸VD÷˜‰D…\\‡Œ¢ñÈ”\ÚaªW\Ïbž‚HšŸ8\é@ñEˆ\Äñ!#}Â ÷\"\âf\'\í&§Œ¡H´\Û\\`ð®S\×uNv\Ö\æiÈ´˜ç”·\0\ÑM$À\ÙÎ¯·Ó±G!STgdJ\êŒH+2 \êcq\å \êB„±\æ#LXŒ\Ä¼\ÌiW\'d`<‰H\ÉC\Ø^W\"Ðª€FŠHóB„Ip\èŸ,a½eoO\ìL\éW4?Õ¨V®)ZÏ·\éý–þ7wowV¿Š\Öw(\Ì&ù›M\Ú\ÔF“´\Í\Õ\Í@Ôƒ–\Êô ·¹6µV—½Š=\é«­»æ“‘©m…“‡¹\é4¼\Ëi\r\Ã\Ñ_\ÕJ]: zÔªä•‡H\ÕCI\Ò‘„‘&y\ë&\ç \Ó~òš¢¥´´pž¤\å´L‡\ÍÑ·¥º\ìu\ìoÞ§ \×\ÑÝŽG\ÊB˜\í¤³2ia6òþ,Œ0Ô¡HH\í\02\ÅV 2X\ã”Q¯\Ã-wò_\â\ä·Y5jd\n(Ä}D™N²ý*\Ñ\"ºX\ZÏ¸\Æ)\Ûë´¥Q°?pò\r\"±@óv®\Ý×„oO\ìýŠ‘ ÐŸ úÁ[\È>ˆ0Ê‡\ÈJk\"\Ù|\Èj\êmD÷\ËG˜l\Òq1D\ÂDDúõržûÑ»¾At’•ˆ\Ä0‘W«hx\æA˜y<\Â\äq\'ÿ\Í#\á\Ôÿm„\áˆ\î3×©[¢W\Ù\È+‘Eˆ.T\ì\äw\Ð`”XÝ‘^\×\èZ6\Â@ˆB\"Âˆ”)@%\ê\\/CVDý‘\Õf)²úªw\Ï@V‰5\Îy\Â4…Hô\àz	e\"Ñƒ»#º\Ë:„S‘\ÅKŠsmsÿ„ñW!R2‰0^\ä=Ú·\Îó…SG&\Ïp\Êu\á\â;°\ã»\'.\\¸p\áÂ….\\¸p\áÂ….\\¸p\áÂ…‹v\Âÿˆ \Èý\Ò}r\0\0\08tEXtComment\0Processed By eBay with ImageMagick, z1.1.0. ||B1À‹ú\Å\0\0\0%tEXtdate:create\02019-01-15T03:50:34-07:00Ü³\Ú\0\0\0%tEXtdate:modify\02019-01-15T03:50:34-07:00rf\0\0\0\0IEND®B`‚','863262852V','NIC','Janaka Rathnayaka','716539575','Janaka Rathnayaka','Developer',4,'144','LK-1','LK-11','00000','20712','Aluth Ambewela Adikarigama','0716539575','ucscjanaka@gmail.com','Test By janaka','ACT','single','2019-09-26 07:40:33','2019-09-11 05:56:36',NULL,'EPIC');
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
