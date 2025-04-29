CREATE DATABASE  IF NOT EXISTS `kargotakipsistemidb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kargotakipsistemidb`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: kargotakipsistemidb
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `alici`
--

DROP TABLE IF EXISTS `alici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alici` (
  `AliciID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) DEFAULT NULL,
  `Soyad` varchar(50) DEFAULT NULL,
  `Adres` varchar(255) DEFAULT NULL,
  `TelNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`AliciID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alici`
--

LOCK TABLES `alici` WRITE;
/*!40000 ALTER TABLE `alici` DISABLE KEYS */;
INSERT INTO `alici` VALUES (1,'Kerem','Ak','Trabzon','05551234568'),(2,'Zehra','Bulut','Samsun','05559876544'),(3,'Hakan','Aslan','Erzurum','05557654322'),(4,'Leyla','Kara','Van','05558765433'),(5,'Yusuf','Deniz','Gaziantep','05552345679'),(6,'Mehmet','Demir','İstanbul, Beşiktaş','05007654321'),(7,'Ayşe','Çetin','İzmir, Karşıyaka','05008765432'),(8,'Fatma','Yıldız','Antalya, Muratpaşa','05009876543'),(9,'Hasan','Özcan','Bursa, Nilüfer','05010987654'),(11,'Kaan','Ak','Kayseri','052455129641520'),(18,'Muhammet','Aksu','Esenyurt / İstanbul','05497775322'),(19,'Semra','Arat','New York / Amerika','+17038976047'),(22,'Fettah','Taşçı','Muğla','05319316131'),(23,'Duygu','Küçükçelik','Abdurrahman Gazi Kız Yurdu / Erzurum','05457889931'),(24,'Ülker','Ersan','Refahiye / Erzincan','05388800081'),(25,'Burcu','Ak','Cumhuriyet Mah. Sadık Sok. Millet Apartmanı Kat 3 / İstanbul','05487436978'),(34,'Merve','Bayrak','ETÜ Lojmanları / Erzurum','05316543212'),(35,'Alperen ','Özbek','Selçuklu / Konya','05663967866'),(36,'Habip','Kesepara','Köprübaşı / Trabzon','056136619861'),(37,'Nisa ','Ersan','Arslanbey Taç Yaprak','05388800065'),(38,'Yusuf','Yücel','Sorgun / Yozgat','054766981235'),(39,'Mira','Beylice','Altınkoy / İstanbul','05489623698'),(40,'Betül','Argın','Hamburg / Almanya','05463214567'),(41,'Emre','Ak','Lyon / Fransa','+332532324585'),(42,'asdsad','asdsad','asdsad','asdsad'),(45,'0','0','0','0'),(46,'0','0','0','0'),(47,'Ayşe','Yılmaz','İstanbul, Türkiye','05444444444'),(48,'Ömer Can','Tangüner','Kullar / Kocaeli','05447892569');
/*!40000 ALTER TABLE `alici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonderici`
--

DROP TABLE IF EXISTS `gonderici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gonderici` (
  `GondericiID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) DEFAULT NULL,
  `Soyad` varchar(50) DEFAULT NULL,
  `Adres` varchar(255) DEFAULT NULL,
  `TelNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`GondericiID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonderici`
--

LOCK TABLES `gonderici` WRITE;
/*!40000 ALTER TABLE `gonderici` DISABLE KEYS */;
INSERT INTO `gonderici` VALUES (1,'Ahmet','Kaya','İstanbul','05551234567'),(2,'Elif','Yılmaz','Ankara','05559876543'),(3,'Mehmet','Demir','İzmir','05557654321'),(4,'Ayşe','Çelik','Antalya','05558765432'),(5,'Fatma','Öztürk','Bursa','05552345678'),(6,'Ahmet','Yılmaz','Ankara, Çankaya','05001234567'),(7,'Mehmet','Kaya','İstanbul, Kadıköy','05002345678'),(8,'Ayşe','Demir','İzmir, Bornova','05003456789'),(9,'Fatma','Çelik','Antalya, Konyaaltı','05004567890'),(10,'Hasan','Şahin','Bursa, Osmangazi','05005678901'),(16,'Özgür ','Karakaş','Kadıköy / İstanbul','05458857415'),(17,'Özcan','Ersan','asdsadasdasd','05363967715'),(18,'Ahmet','Savaş','Urfa / Suruç','05316319831'),(19,'Arda','Ak','Melikgazi / Kayseri','05352990586'),(22,'İbrahim Sinan ','Akbulut','Hatay ','05489316488'),(23,'Emirhan','Çelen','İbrahim Erkek Öğrenci Yurdu / Erzurum','05453985766'),(24,'Uğur','Ersan','Arslanbey Taç Yaprak / Kocaeli','05322037901'),(25,'Musta','Yılmaz','Mimar Sinan Bahçelievler Mah. İlkbal Sok. Lale Apartmanı Kat 8 / Kayseri','05531737171'),(34,'Ömer Faruk','Yıldırım','Şehri İstanbul Evleri / Erzurum','05489994587'),(35,'İlhan','Kemaloğlu','Terminal Caddesi / Erzurum','05667951236'),(36,'Ali ','Yedibela','Yenişehir / Erzurum','052525259825'),(37,'Uğur ','Ersan','Turgut Mah. Atlas Sok. No : 9','05322037901'),(38,'Abdullah','Yuvacı','Sivas Merkez','05476549812'),(39,'Yaman','Koper','Tozludere / İstanbul','05476694587'),(40,'Merve','Yıldırım','Sussex University Computer Engineering Department / England','05483339688'),(41,'Ali','Ödemiş','Felahiye / Kayseri','05329954521'),(42,'asdasd','adasdsad','asdsad','asdsada'),(45,'0','0','0','0'),(46,'0','0','0','0'),(47,'Ali','Veli','Ankara, Türkiye','05555555555'),(48,'Nail','Kahraman','Uzuntarla Kartepe / Kocaeli','05459996369');
/*!40000 ALTER TABLE `gonderici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `il`
--

DROP TABLE IF EXISTS `il`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `il` (
  `il_id` int NOT NULL AUTO_INCREMENT,
  `il_adi` varchar(50) NOT NULL,
  PRIMARY KEY (`il_id`),
  UNIQUE KEY `il_adi` (`il_adi`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `il`
--

LOCK TABLES `il` WRITE;
/*!40000 ALTER TABLE `il` DISABLE KEYS */;
INSERT INTO `il` VALUES (1,'Adana'),(2,'Adıyaman'),(3,'Afyonkarahisar'),(4,'Ağrı'),(5,'Aksaray'),(6,'Amasya'),(7,'Ankara'),(8,'Antalya'),(9,'Ardahan'),(10,'Artvin'),(11,'Aydın'),(12,'Balıkesir'),(13,'Bartın'),(14,'Batman'),(15,'Bayburt'),(16,'Bilecik'),(17,'Bingöl'),(18,'Bitlis'),(19,'Bolu'),(20,'Burdur'),(21,'Bursa'),(22,'Çanakkale'),(23,'Çankırı'),(24,'Çorum'),(25,'Denizli'),(26,'Diyarbakır'),(27,'Düzce'),(28,'Edirne'),(29,'Elazığ'),(30,'Erzincan'),(31,'Erzurum'),(32,'Eskişehir'),(33,'Gaziantep'),(34,'Giresun'),(35,'Gümüşhane'),(36,'Hakkâri'),(37,'Hatay'),(38,'Iğdır'),(39,'Isparta'),(40,'İstanbul'),(41,'İzmir'),(42,'Kahramanmaraş'),(43,'Karabük'),(44,'Karaman'),(45,'Kars'),(46,'Kastamonu'),(47,'Kayseri'),(51,'Kilis'),(48,'Kırıkkale'),(49,'Kırklareli'),(50,'Kırşehir'),(52,'Kocaeli'),(53,'Konya'),(54,'Kütahya'),(55,'Malatya'),(56,'Manisa'),(57,'Mardin'),(58,'Mersin'),(59,'Muğla'),(60,'Muş'),(61,'Nevşehir'),(62,'Niğde'),(63,'Ordu'),(64,'Osmaniye'),(65,'Rize'),(66,'Sakarya'),(67,'Samsun'),(68,'Şanlıurfa'),(69,'Siirt'),(70,'Sinop'),(71,'Sivas'),(72,'Şırnak'),(73,'Tekirdağ'),(74,'Tokat'),(75,'Trabzon'),(76,'Tunceli'),(77,'Uşak'),(78,'Van'),(79,'Yalova'),(80,'Yozgat'),(81,'Zonguldak');
/*!40000 ALTER TABLE `il` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilce`
--

DROP TABLE IF EXISTS `ilce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilce` (
  `ilce_id` int NOT NULL AUTO_INCREMENT,
  `ilce_adi` varchar(50) NOT NULL,
  `il_id` int NOT NULL,
  PRIMARY KEY (`ilce_id`),
  KEY `il_id` (`il_id`),
  CONSTRAINT `ilce_ibfk_1` FOREIGN KEY (`il_id`) REFERENCES `il` (`il_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=958 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilce`
--

LOCK TABLES `ilce` WRITE;
/*!40000 ALTER TABLE `ilce` DISABLE KEYS */;
INSERT INTO `ilce` VALUES (1,'Seyhan',1),(2,'Yüreğir',1),(3,'Çukurova',1),(4,'Sarıçam',1),(5,'Ceyhan',1),(6,'Kozan',1),(7,'İmamoğlu',1),(8,'Karataş',1),(9,'Feke',1),(10,'Aladağ',1),(11,'Tufanbeyli',1),(12,'Pozantı',1),(13,'Saimbeyli',1),(14,'Merkez',2),(15,'Kahta',2),(16,'Besni',2),(17,'Gölbaşı',2),(18,'Gerger',2),(19,'Samsat',2),(20,'Çelikhan',2),(21,'Sincik',2),(22,'Tut',2),(23,'Merkez',3),(24,'Sandıklı',3),(25,'Bolvadin',3),(26,'Dinar',3),(27,'Emirdağ',3),(28,'İscehisar',3),(29,'Şuhut',3),(30,'Sinanpaşa',3),(31,'Çay',3),(32,'Sultandağı',3),(33,'Başmakçı',3),(34,'Bayat',3),(35,'Çobanlar',3),(36,'Dazkırı',3),(37,'Hocalar',3),(38,'Kızılören',3),(39,'Merkez',4),(40,'Patnos',4),(41,'Doğubayazıt',4),(42,'Eleşkirt',4),(43,'Diyadin',4),(44,'Taşlıçay',4),(45,'Hamur',4),(46,'Tutak',4),(47,'Merkez',5),(48,'Eskil',5),(49,'Güzelyurt',5),(50,'Ortaköy',5),(51,'Sarıyahşi',5),(52,'Ağaçören',5),(53,'Gülağaç',5),(54,'Merkez',6),(55,'Merzifon',6),(56,'Suluova',6),(57,'Taşova',6),(58,'Gümüşhacıköy',6),(59,'Hamamözü',6),(60,'Altındağ',7),(61,'Ayaş',7),(62,'Bala',7),(63,'Beypazarı',7),(64,'Çamlıdere',7),(65,'Çankaya',7),(66,'Çubuk',7),(67,'Elmadağ',7),(68,'Etimesgut',7),(69,'Evren',7),(70,'Gölbaşı',7),(71,'Güdül',7),(72,'Haymana',7),(73,'Kalecik',7),(74,'Kahramankazan',7),(75,'Keçiören',7),(76,'Kızılcahamam',7),(77,'Mamak',7),(78,'Nallıhan',7),(79,'Polatlı',7),(80,'Pursaklar',7),(81,'Sincan',7),(82,'Şereflikoçhisar',7),(83,'Yenimahalle',7),(84,'Akseki',8),(85,'Aksu',8),(86,'Alanya',8),(87,'Demre',8),(88,'Döşemealtı',8),(89,'Elmalı',8),(90,'Finike',8),(91,'Gazipaşa',8),(92,'Gündoğmuş',8),(93,'İbradı',8),(94,'Kaş',8),(95,'Kemer',8),(96,'Kepez',8),(97,'Konyaaltı',8),(98,'Korkuteli',8),(99,'Kumluca',8),(100,'Manavgat',8),(101,'Muratpaşa',8),(102,'Serik',8),(103,'Çıldır',9),(104,'Damal',9),(105,'Göle',9),(106,'Hanak',9),(107,'Merkez',9),(108,'Posof',9),(109,'Ardanuç',10),(110,'Arhavi',10),(111,'Borçka',10),(112,'Hopa',10),(113,'Kemalpaşa',10),(114,'Merkez',10),(115,'Murgul',10),(116,'Şavşat',10),(117,'Yusufeli',10),(118,'Bozdoğan',11),(119,'Buharkent',11),(120,'Çine',11),(121,'Didim',11),(122,'Efeler',11),(123,'Germencik',11),(124,'İncirliova',11),(125,'Karacasu',11),(126,'Karpuzlu',11),(127,'Koçarlı',11),(128,'Köşk',11),(129,'Kuşadası',11),(130,'Nazilli',11),(131,'Söke',11),(132,'Sultanhisar',11),(133,'Yenipazar',11),(134,'Altıeylül',12),(135,'Ayvalık',12),(136,'Balya',12),(137,'Bandırma',12),(138,'Bigadiç',12),(139,'Burhaniye',12),(140,'Dursunbey',12),(141,'Edremit',12),(142,'Erdek',12),(143,'Gömeç',12),(144,'Gönen',12),(145,'Havran',12),(146,'İvrindi',12),(147,'Karesi',12),(148,'Kepsut',12),(149,'Manyas',12),(150,'Marmara',12),(151,'Savaştepe',12),(152,'Sındırgı',12),(153,'Susurluk',12),(154,'Amasra',13),(155,'Kurucaşile',13),(156,'Merkez',13),(157,'Ulus',13),(158,'Beşiri',14),(159,'Gercüş',14),(160,'Hasankeyf',14),(161,'Kozluk',14),(162,'Merkez',14),(163,'Sason',14),(164,'Aydıntepe',15),(165,'Demirözü',15),(166,'Merkez',15),(167,'Bozüyük',16),(168,'Gölpazarı',16),(169,'İnhisar',16),(170,'Merkez',16),(171,'Osmaneli',16),(172,'Pazaryeri',16),(173,'Söğüt',16),(174,'Yenipazar',16),(175,'Adaklı',17),(176,'Genç',17),(177,'Karlıova',17),(178,'Kiğı',17),(179,'Merkez',17),(180,'Solhan',17),(181,'Yayladere',17),(182,'Yedisu',17),(183,'Adilcevaz',18),(184,'Ahlat',18),(185,'Güroymak',18),(186,'Hizan',18),(187,'Merkez',18),(188,'Mutki',18),(189,'Tatvan',18),(190,'Dörtdivan',19),(191,'Gerede',19),(192,'Göynük',19),(193,'Kıbrıscık',19),(194,'Mengen',19),(195,'Merkez',19),(196,'Mudurnu',19),(197,'Seben',19),(198,'Yeniçağa',19),(199,'Ağlasun',20),(200,'Altınyayla',20),(201,'Bucak',20),(202,'Çavdır',20),(203,'Çeltikçi',20),(204,'Gölhisar',20),(205,'Karamanlı',20),(206,'Kemer',20),(207,'Merkez',20),(208,'Tefenni',20),(209,'Yeşilova',20),(210,'Büyükorhan',21),(211,'Gemlik',21),(212,'Gürsu',21),(213,'Harmancık',21),(214,'İnegöl',21),(215,'İznik',21),(216,'Karacabey',21),(217,'Keles',21),(218,'Kestel',21),(219,'Mudanya',21),(220,'Mustafakemalpaşa',21),(221,'Nilüfer',21),(222,'Orhaneli',21),(223,'Orhangazi',21),(224,'Osmangazi',21),(225,'Yenişehir',21),(226,'Yıldırım',21),(227,'Ayvacık',22),(228,'Bayramiç',22),(229,'Biga',22),(230,'Bozcaada',22),(231,'Çan',22),(232,'Eceabat',22),(233,'Ezine',22),(234,'Gelibolu',22),(235,'Gökçeada',22),(236,'Lapseki',22),(237,'Merkez',22),(238,'Yenice',22),(239,'Atkaracalar',23),(240,'Bayramören',23),(241,'Çerkeş',23),(242,'Eldivan',23),(243,'Ilgaz',23),(244,'Kızılırmak',23),(245,'Korgun',23),(246,'Kurşunlu',23),(247,'Merkez',23),(248,'Orta',23),(249,'Şabanözü',23),(250,'Yapraklı',23),(251,'Alaca',24),(252,'Bayat',24),(253,'Boğazkale',24),(254,'Dodurga',24),(255,'İskilip',24),(256,'Kargı',24),(257,'Laçin',24),(258,'Mecitözü',24),(259,'Merkez',24),(260,'Oğuzlar',24),(261,'Ortaköy',24),(262,'Osmancık',24),(263,'Sungurlu',24),(264,'Uğurludağ',24),(265,'Acıpayam',25),(266,'Babadağ',25),(267,'Baklan',25),(268,'Bekilli',25),(269,'Beyağaç',25),(270,'Bozkurt',25),(271,'Buldan',25),(272,'Çal',25),(273,'Çameli',25),(274,'Çardak',25),(275,'Çivril',25),(276,'Güney',25),(277,'Honaz',25),(278,'Kale',25),(279,'Merkezefendi',25),(280,'Pamukkale',25),(281,'Sarayköy',25),(282,'Serinhisar',25),(283,'Tavas',25),(284,'Bağlar',26),(285,'Bismil',26),(286,'Çermik',26),(287,'Çınar',26),(288,'Çüngüş',26),(289,'Dicle',26),(290,'Eğil',26),(291,'Ergani',26),(292,'Hani',26),(293,'Hazro',26),(294,'Kayapınar',26),(295,'Kocaköy',26),(296,'Kulp',26),(297,'Lice',26),(298,'Silvan',26),(299,'Sur',26),(300,'Yenişehir',26),(301,'Akçakoca',27),(302,'Cumayeri',27),(303,'Çilimli',27),(304,'Gölyaka',27),(305,'Gümüşova',27),(306,'Kaynaşlı',27),(307,'Merkez',27),(308,'Yığılca',27),(309,'Enez',28),(310,'Havsa',28),(311,'İpsala',28),(312,'Keşan',28),(313,'Lalapaşa',28),(314,'Meriç',28),(315,'Merkez',28),(316,'Süloğlu',28),(317,'Uzunköprü',28),(318,'Ağın',29),(319,'Alacakaya',29),(320,'Arıcak',29),(321,'Baskil',29),(322,'Karakoçan',29),(323,'Keban',29),(324,'Kovancılar',29),(325,'Maden',29),(326,'Merkez',29),(327,'Palu',29),(328,'Sivrice',29),(329,'Çayırlı',30),(330,'İliç',30),(331,'Kemah',30),(332,'Kemaliye',30),(333,'Merkez',30),(334,'Otlukbeli',30),(335,'Refahiye',30),(336,'Tercan',30),(337,'Üzümlü',30),(338,'Aşkale',31),(339,'Aziziye',31),(340,'Çat',31),(341,'Hınıs',31),(342,'Horasan',31),(343,'İspir',31),(344,'Karaçoban',31),(345,'Karayazı',31),(346,'Köprüköy',31),(347,'Narman',31),(348,'Oltu',31),(349,'Olur',31),(350,'Palandöken',31),(351,'Pasinler',31),(352,'Pazaryolu',31),(353,'Şenkaya',31),(354,'Tekman',31),(355,'Tortum',31),(356,'Uzundere',31),(357,'Yakutiye',31),(358,'Alpu',32),(359,'Beylikova',32),(360,'Çifteler',32),(361,'Günyüzü',32),(362,'Han',32),(363,'İnönü',32),(364,'Mahmudiye',32),(365,'Mihalgazi',32),(366,'Mihalıççık',32),(367,'Odunpazarı',32),(368,'Sarıcakaya',32),(369,'Seyitgazi',32),(370,'Sivrihisar',32),(371,'Tepebaşı',32),(372,'Araban',33),(373,'İslahiye',33),(374,'Karkamış',33),(375,'Nizip',33),(376,'Nurdağı',33),(377,'Oğuzeli',33),(378,'Şahinbey',33),(379,'Şehitkamil',33),(380,'Yavuzeli',33),(381,'Alucra',34),(382,'Bulancak',34),(383,'Çamoluk',34),(384,'Çanakçı',34),(385,'Dereli',34),(386,'Doğankent',34),(387,'Espiye',34),(388,'Eynesil',34),(389,'Görele',34),(390,'Güce',34),(391,'Keşap',34),(392,'Merkez',34),(393,'Piraziz',34),(394,'Şebinkarahisar',34),(395,'Tirebolu',34),(396,'Yağlıdere',34),(397,'Kelkit',35),(398,'Köse',35),(399,'Kürtün',35),(400,'Merkez',35),(401,'Şiran',35),(402,'Torul',35),(403,'Çukurca',36),(404,'Derecik',36),(405,'Merkez',36),(406,'Şemdinli',36),(407,'Yüksekova',36),(408,'Altınözü',37),(409,'Antakya',37),(410,'Arsuz',37),(411,'Belen',37),(412,'Defne',37),(413,'Dörtyol',37),(414,'Erzin',37),(415,'Hassa',37),(416,'İskenderun',37),(417,'Kırıkhan',37),(418,'Kumlu',37),(419,'Payas',37),(420,'Reyhanlı',37),(421,'Samandağ',37),(422,'Yayladağı',37),(423,'Aralık',38),(424,'Karakoyunlu',38),(425,'Merkez',38),(426,'Tuzluca',38),(427,'Aksu',39),(428,'Atabey',39),(429,'Eğirdir',39),(430,'Gelendost',39),(431,'Gönen',39),(432,'Keçiborlu',39),(433,'Merkez',39),(434,'Senirkent',39),(435,'Sütçüler',39),(436,'Şarkikaraağaç',39),(437,'Uluborlu',39),(438,'Yenişarbademli',39),(439,'Adalar',40),(440,'Arnavutköy',40),(441,'Ataşehir',40),(442,'Avcılar',40),(443,'Bağcılar',40),(444,'Bahçelievler',40),(445,'Bakırköy',40),(446,'Başakşehir',40),(447,'Bayrampaşa',40),(448,'Beşiktaş',40),(449,'Beykoz',40),(450,'Beylikdüzü',40),(451,'Beyoğlu',40),(452,'Büyükçekmece',40),(453,'Çatalca',40),(454,'Çekmeköy',40),(455,'Esenler',40),(456,'Esenyurt',40),(457,'Eyüpsultan',40),(458,'Fatih',40),(459,'Gaziosmanpaşa',40),(460,'Güngören',40),(461,'Kadıköy',40),(462,'Kağıthane',40),(463,'Kartal',40),(464,'Küçükçekmece',40),(465,'Maltepe',40),(466,'Pendik',40),(467,'Sancaktepe',40),(468,'Sarıyer',40),(469,'Silivri',40),(470,'Sultanbeyli',40),(471,'Sultangazi',40),(472,'Şile',40),(473,'Şişli',40),(474,'Tuzla',40),(475,'Ümraniye',40),(476,'Üsküdar',40),(477,'Zeytinburnu',40),(478,'Aliağa',41),(479,'Balçova',41),(480,'Bayındır',41),(481,'Bayraklı',41),(482,'Bergama',41),(483,'Beydağ',41),(484,'Bornova',41),(485,'Buca',41),(486,'Çeşme',41),(487,'Çiğli',41),(488,'Dikili',41),(489,'Foça',41),(490,'Gaziemir',41),(491,'Güzelbahçe',41),(492,'Karabağlar',41),(493,'Karaburun',41),(494,'Karşıyaka',41),(495,'Kemalpaşa',41),(496,'Kınık',41),(497,'Kiraz',41),(498,'Konak',41),(499,'Menderes',41),(500,'Menemen',41),(501,'Narlıdere',41),(502,'Ödemiş',41),(503,'Seferihisar',41),(504,'Selçuk',41),(505,'Tire',41),(506,'Torbalı',41),(507,'Urla',41),(508,'Afşin',42),(509,'Andırın',42),(510,'Çağlayancerit',42),(511,'Dulkadiroğlu',42),(512,'Ekinözü',42),(513,'Elbistan',42),(514,'Göksun',42),(515,'Nurhak',42),(516,'Onikişubat',42),(517,'Pazarcık',42),(518,'Türkoğlu',42),(519,'Eflani',43),(520,'Eskipazar',43),(521,'Merkez',43),(522,'Ovacık',43),(523,'Safranbolu',43),(524,'Yenice',43),(525,'Ayrancı',44),(526,'Başyayla',44),(527,'Ermenek',44),(528,'Kazımkarabekir',44),(529,'Merkez',44),(530,'Sarıveliler',44),(531,'Akyaka',45),(532,'Arpaçay',45),(533,'Digor',45),(534,'Kağızman',45),(535,'Merkez',45),(536,'Sarıkamış',45),(537,'Selim',45),(538,'Susuz',45),(539,'Abana',46),(540,'Ağlı',46),(541,'Araç',46),(542,'Azdavay',46),(543,'Bozkurt',46),(544,'Cide',46),(545,'Çatalzeytin',46),(546,'Daday',46),(547,'Devrekani',46),(548,'Doğanyurt',46),(549,'Hanönü',46),(550,'İhsangazi',46),(551,'İnebolu',46),(552,'Küre',46),(553,'Merkez',46),(554,'Pınarbaşı',46),(555,'Şenpazar',46),(556,'Taşköprü',46),(557,'Tosya',46),(558,'Akkışla',47),(559,'Bünyan',47),(560,'Develi',47),(561,'Felahiye',47),(562,'Hacılar',47),(563,'İncesu',47),(564,'Kocasinan',47),(565,'Melikgazi',47),(566,'Özvatan',47),(567,'Pınarbaşı',47),(568,'Sarıoğlan',47),(569,'Sarız',47),(570,'Talas',47),(571,'Tomarza',47),(572,'Yahyalı',47),(573,'Yeşilhisar',47),(574,'Bahşili',48),(575,'Balışeyh',48),(576,'Çelebi',48),(577,'Delice',48),(578,'Karakeçili',48),(579,'Keskin',48),(580,'Merkez',48),(581,'Sulakyurt',48),(582,'Yahşihan',48),(583,'Babaeski',49),(584,'Demirköy',49),(585,'Kofçaz',49),(586,'Lüleburgaz',49),(587,'Merkez',49),(588,'Pehlivanköy',49),(589,'Pınarhisar',49),(590,'Vize',49),(591,'Akçakent',50),(592,'Akpınar',50),(593,'Boztepe',50),(594,'Çiçekdağı',50),(595,'Kaman',50),(596,'Merkez',50),(597,'Mucur',50),(598,'Elbeyli',51),(599,'Merkez',51),(600,'Musabeyli',51),(601,'Polateli',51),(602,'Başiskele',52),(603,'Çayırova',52),(604,'Darıca',52),(605,'Derince',52),(606,'Dilovası',52),(607,'Gebze',52),(608,'Gölcük',52),(609,'İzmit',52),(610,'Kandıra',52),(611,'Karamürsel',52),(612,'Kartepe',52),(613,'Körfez',52),(614,'Ahırlı',53),(615,'Akören',53),(616,'Akşehir',53),(617,'Altınekin',53),(618,'Beyşehir',53),(619,'Bozkır',53),(620,'Cihanbeyli',53),(621,'Çeltik',53),(622,'Derbent',53),(623,'Derebucak',53),(624,'Doğanhisar',53),(625,'Emirgazi',53),(626,'Ereğli',53),(627,'Güneysınır',53),(628,'Hadim',53),(629,'Halkapınar',53),(630,'Hüyük',53),(631,'Ilgın',53),(632,'Kadınhanı',53),(633,'Karapınar',53),(634,'Karatay',53),(635,'Kulu',53),(636,'Meram',53),(637,'Sarayönü',53),(638,'Selçuklu',53),(639,'Seydişehir',53),(640,'Taşkent',53),(641,'Tuzlukçu',53),(642,'Yalıhüyük',53),(643,'Yunak',53),(644,'Altıntaş',54),(645,'Aslanapa',54),(646,'Çavdarhisar',54),(647,'Domaniç',54),(648,'Dumlupınar',54),(649,'Emet',54),(650,'Gediz',54),(651,'Hisarcık',54),(652,'Merkez',54),(653,'Pazarlar',54),(654,'Şaphane',54),(655,'Simav',54),(656,'Tavşanlı',54),(657,'Akçadağ',55),(658,'Arapgir',55),(659,'Arguvan',55),(660,'Battalgazi',55),(661,'Darende',55),(662,'Doğanşehir',55),(663,'Doğanyol',55),(664,'Hekimhan',55),(665,'Kale',55),(666,'Kuluncak',55),(667,'Pütürge',55),(668,'Yazıhan',55),(669,'Yeşilyurt',55),(670,'Ahmetli',56),(671,'Akhisar',56),(672,'Alaşehir',56),(673,'Demirci',56),(674,'Gölmarmara',56),(675,'Gördes',56),(676,'Kırkağaç',56),(677,'Köprübaşı',56),(678,'Kula',56),(679,'Salihli',56),(680,'Sarıgöl',56),(681,'Saruhanlı',56),(682,'Selendi',56),(683,'Soma',56),(684,'Şehzadeler',56),(685,'Turgutlu',56),(686,'Yunusemre',56),(687,'Artuklu',57),(688,'Dargeçit',57),(689,'Derik',57),(690,'Kızıltepe',57),(691,'Mazıdağı',57),(692,'Midyat',57),(693,'Nusaybin',57),(694,'Ömerli',57),(695,'Savur',57),(696,'Yeşilli',57),(697,'Akdeniz',58),(698,'Anamur',58),(699,'Aydıncık',58),(700,'Bozyazı',58),(701,'Çamlıyayla',58),(702,'Erdemli',58),(703,'Gülnar',58),(704,'Mezitli',58),(705,'Mut',58),(706,'Silifke',58),(707,'Tarsus',58),(708,'Toroslar',58),(709,'Yenişehir',58),(710,'Bodrum',59),(711,'Dalaman',59),(712,'Datça',59),(713,'Fethiye',59),(714,'Kavaklıdere',59),(715,'Köyceğiz',59),(716,'Marmaris',59),(717,'Menteşe',59),(718,'Milas',59),(719,'Ortaca',59),(720,'Seydikemer',59),(721,'Ula',59),(722,'Yatağan',59),(723,'Bulanık',60),(724,'Hasköy',60),(725,'Korkut',60),(726,'Malazgirt',60),(727,'Merkez',60),(728,'Varto',60),(729,'Avanos',61),(730,'Derinkuyu',61),(731,'Gülşehir',61),(732,'Hacıbektaş',61),(733,'Kozaklı',61),(734,'Merkez',61),(735,'Ürgüp',61),(736,'Acıgöl',61),(737,'Altunhisar',62),(738,'Bor',62),(739,'Çamardı',62),(740,'Merkez',62),(741,'Ulukışla',62),(742,'Çiftlik',62),(743,'Akkuş',63),(744,'Altınordu',63),(745,'Aybastı',63),(746,'Çamaş',63),(747,'Çatalpınar',63),(748,'Çaybaşı',63),(749,'Fatsa',63),(750,'Gölköy',63),(751,'Gülyalı',63),(752,'Gürgentepe',63),(753,'İkizce',63),(754,'Kabadüz',63),(755,'Kabataş',63),(756,'Korgan',63),(757,'Kumru',63),(758,'Mesudiye',63),(759,'Perşembe',63),(760,'Ulubey',63),(761,'Ünye',63),(762,'Bahçe',64),(763,'Düziçi',64),(764,'Hasanbeyli',64),(765,'Kadirli',64),(766,'Merkez',64),(767,'Sumbas',64),(768,'Toprakkale',64),(769,'Ardeşen',65),(770,'Çamlıhemşin',65),(771,'Çayeli',65),(772,'Derepazarı',65),(773,'Fındıklı',65),(774,'Güneysu',65),(775,'Hemşin',65),(776,'İkizdere',65),(777,'İyidere',65),(778,'Kalkandere',65),(779,'Merkez',65),(780,'Pazar',65),(781,'Adapazarı',66),(782,'Akyazı',66),(783,'Arifiye',66),(784,'Erenler',66),(785,'Ferizli',66),(786,'Geyve',66),(787,'Hendek',66),(788,'Karapürçek',66),(789,'Karasu',66),(790,'Kaynarca',66),(791,'Kocaali',66),(792,'Pamukova',66),(793,'Sapanca',66),(794,'Serdivan',66),(795,'Söğütlü',66),(796,'Taraklı',66),(797,'Alaçam',67),(798,'Asarcık',67),(799,'Atakum',67),(800,'Ayvacık',67),(801,'Bafra',67),(802,'Canik',67),(803,'Çarşamba',67),(804,'Havza',67),(805,'İlkadım',67),(806,'Kavak',67),(807,'Ladik',67),(808,'Salıpazarı',67),(809,'Tekkeköy',67),(810,'Terme',67),(811,'Vezirköprü',67),(812,'Yakakent',67),(813,'Baykan',69),(814,'Eruh',69),(815,'Kurtalan',69),(816,'Pervari',69),(817,'Şirvan',69),(818,'Tillo',69),(819,'Merkez',69),(820,'Ayancık',70),(821,'Boyabat',70),(822,'Dikmen',70),(823,'Durağan',70),(824,'Erfelek',70),(825,'Gerze',70),(826,'Merkez',70),(827,'Saraydüzü',70),(828,'Türkeli',70),(829,'Akıncılar',71),(830,'Altınyayla',71),(831,'Divriği',71),(832,'Doğanşar',71),(833,'Gemerek',71),(834,'Gölova',71),(835,'Hafik',71),(836,'İmranlı',71),(837,'Kangal',71),(838,'Koyulhisar',71),(839,'Merkez',71),(840,'Suşehri',71),(841,'Şarkışla',71),(842,'Ulaş',71),(843,'Yıldızeli',71),(844,'Zara',71),(845,'Akçakale',68),(846,'Birecik',68),(847,'Bozova',68),(848,'Ceylanpınar',68),(849,'Eyyübiye',68),(850,'Halfeti',68),(851,'Haliliye',68),(852,'Harran',68),(853,'Hilvan',68),(854,'Karaköprü',68),(855,'Siverek',68),(856,'Suruç',68),(857,'Viranşehir',68),(858,'Beytüşşebap',72),(859,'Cizre',72),(860,'Güçlükonak',72),(861,'İdil',72),(862,'Silopi',72),(863,'Uludere',72),(864,'Merkez',72),(865,'Çerkezköy',73),(866,'Çorlu',73),(867,'Ergene',73),(868,'Hayrabolu',73),(869,'Kapaklı',73),(870,'Malkara',73),(871,'Muratlı',73),(872,'Saray',73),(873,'Süleymanpaşa',73),(874,'Şarköy',73),(875,'Almus',74),(876,'Artova',74),(877,'Başçiftlik',74),(878,'Erbaa',74),(879,'Merkez',74),(880,'Niksar',74),(881,'Pazar',74),(882,'Reşadiye',74),(883,'Sulusaray',74),(884,'Turhal',74),(885,'Yeşilyurt',74),(886,'Zile',74),(887,'Akçaabat',75),(888,'Araklı',75),(889,'Arsin',75),(890,'Beşikdüzü',75),(891,'Çarşıbaşı',75),(892,'Çaykara',75),(893,'Dernekpazarı',75),(894,'Düzköy',75),(895,'Hayrat',75),(896,'Köprübaşı',75),(897,'Maçka',75),(898,'Of',75),(899,'Ortahisar',75),(900,'Sürmene',75),(901,'Şalpazarı',75),(902,'Tonya',75),(903,'Vakfıkebir',75),(904,'Yomra',75),(905,'Çemişgezek',76),(906,'Hozat',76),(907,'Mazgirt',76),(908,'Nazımiye',76),(909,'Ovacık',76),(910,'Pertek',76),(911,'Pülümür',76),(912,'Merkez',76),(913,'Banaz',77),(914,'Eşme',77),(915,'Karahallı',77),(916,'Merkez',77),(917,'Sivaslı',77),(918,'Ulubey',77),(919,'Bahçesaray',78),(920,'Başkale',78),(921,'Çaldıran',78),(922,'Çatak',78),(923,'Edremit',78),(924,'Erciş',78),(925,'Gevaş',78),(926,'Gürpınar',78),(927,'İpekyolu',78),(928,'Muradiye',78),(929,'Özalp',78),(930,'Saray',78),(931,'Tuşba',78),(932,'Altınova',79),(933,'Armutlu',79),(934,'Çınarcık',79),(935,'Çiftlikköy',79),(936,'Merkez',79),(937,'Termal',79),(938,'Akdağmadeni',80),(939,'Aydıncık',80),(940,'Boğazlıyan',80),(941,'Çandır',80),(942,'Çayıralan',80),(943,'Çekerek',80),(944,'Kadışehri',80),(945,'Merkez',80),(946,'Saraykent',80),(947,'Sarıkaya',80),(948,'Sorgun',80),(949,'Şefaatli',80),(950,'Yenifakılı',80),(951,'Yerköy',80),(952,'Alaplı',81),(953,'Çaycuma',81),(954,'Devrek',81),(955,'Ereğli',81),(956,'Gökçebey',81),(957,'Merkez',81);
/*!40000 ALTER TABLE `ilce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kargo`
--

DROP TABLE IF EXISTS `kargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kargo` (
  `kargoID` int NOT NULL AUTO_INCREMENT,
  `KargoAgirligi` float NOT NULL,
  `GonderimTarihi` date NOT NULL,
  `TeslimTarihi` date DEFAULT NULL,
  `kargoTakipNo` varchar(50) NOT NULL,
  `KargoTuru` enum('YI','YD') NOT NULL DEFAULT 'YI',
  `KargoSirketiID` int DEFAULT NULL,
  `GondericiID` int DEFAULT NULL,
  `AliciID` int DEFAULT NULL,
  `KargoIl` varchar(50) DEFAULT NULL,
  `KargoIlce` varchar(50) DEFAULT NULL,
  `PostaKodu` varchar(10) DEFAULT NULL,
  `Adres` text,
  `ödemeTutarı` decimal(10,2) DEFAULT NULL,
  `KargoCalisaniID` int DEFAULT NULL,
  `KargoIlID` int DEFAULT NULL,
  `KargoIlceID` int DEFAULT NULL,
  `DurumID` int DEFAULT NULL,
  PRIMARY KEY (`kargoID`),
  UNIQUE KEY `kargoTakipNo` (`kargoTakipNo`),
  KEY `fk_gonderici` (`GondericiID`),
  KEY `fk_alici` (`AliciID`),
  KEY `fk_Kargo_KargoSirketi` (`KargoSirketiID`),
  KEY `FK_KargoCalisani` (`KargoCalisaniID`),
  KEY `FK_Il` (`KargoIlID`),
  KEY `FK_Ilce` (`KargoIlceID`),
  KEY `FK_Kargo_Durum` (`DurumID`),
  CONSTRAINT `fk_alici` FOREIGN KEY (`AliciID`) REFERENCES `alici` (`AliciID`),
  CONSTRAINT `fk_gonderici` FOREIGN KEY (`GondericiID`) REFERENCES `gonderici` (`GondericiID`),
  CONSTRAINT `FK_Il` FOREIGN KEY (`KargoIlID`) REFERENCES `il` (`il_id`),
  CONSTRAINT `FK_Ilce` FOREIGN KEY (`KargoIlceID`) REFERENCES `ilce` (`ilce_id`),
  CONSTRAINT `fk_Kargo_KargoSirketi` FOREIGN KEY (`KargoSirketiID`) REFERENCES `kargosirketi` (`KargoSirketiID`),
  CONSTRAINT `FK_KargoCalisani` FOREIGN KEY (`KargoCalisaniID`) REFERENCES `kargocalisani` (`KargoCalisaniID`),
  CONSTRAINT `Ctr_KargoAgirligi` CHECK ((`KargoAgirligi` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kargo`
--

LOCK TABLES `kargo` WRITE;
/*!40000 ALTER TABLE `kargo` DISABLE KEYS */;
INSERT INTO `kargo` VALUES (77,6,'2025-01-01','2025-01-05','YIMNG2215','YI',1,34,34,'Erzurum','Yakutiye','25100','ETÜ Lojmanları / Erzurum',600.00,4,31,357,2),(81,5,'2025-01-03','2025-01-17','YIMNG2626','YI',1,38,38,'Yozgat','Sorgun','58100','Sorgun / Yozgat',500.00,9,80,948,2),(83,4,'2025-01-02','2025-01-18','YDFDX6864','YD',4,40,40,'Almanya','Hamburg','SE1','Hamburg / Almanya',800.00,5,3,14,3),(84,3.2,'2025-01-01','2025-01-17','YDUPS3755','YD',3,41,41,'Fransa','Lyon','38025','Lyon / Fransa',640.00,12,4,18,2),(87,2.5,'2025-01-01','2025-01-02','YIMNG2287','YI',1,48,48,'Kocaeli','Kartepe','41100','Kullar / Kocaeli',250.00,10,52,612,3);
/*!40000 ALTER TABLE `kargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kargocalisani`
--

DROP TABLE IF EXISTS `kargocalisani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kargocalisani` (
  `KargoCalisaniID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) NOT NULL,
  `Soyad` varchar(50) NOT NULL,
  `TamAd` varchar(100) GENERATED ALWAYS AS (concat(`Ad`,_utf8mb4' ',`Soyad`)) STORED,
  PRIMARY KEY (`KargoCalisaniID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kargocalisani`
--

LOCK TABLES `kargocalisani` WRITE;
/*!40000 ALTER TABLE `kargocalisani` DISABLE KEYS */;
INSERT INTO `kargocalisani` (`KargoCalisaniID`, `Ad`, `Soyad`) VALUES (1,'Ahmet','Yılmaz'),(2,'Mehmet','Kara'),(3,'Ayşe','Demir'),(4,'Fatma','Çelik'),(5,'Ali','Aksoy'),(6,'Elif','Yıldız'),(7,'Hüseyin','Özkan'),(8,'Zeynep','Koç'),(9,'Mustafa','Şahin'),(10,'Emine','Turan'),(12,'Ahmet','Yılmaz'),(13,'Mehmet','Kara'),(14,'Yusuf','Yücel'),(15,'Hazar','Çakmak');
/*!40000 ALTER TABLE `kargocalisani` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `kargodetayı`
--

DROP TABLE IF EXISTS `kargodetayı`;
/*!50001 DROP VIEW IF EXISTS `kargodetayı`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kargodetayı` AS SELECT 
 1 AS `KargoID`,
 1 AS `KargoTakipNo`,
 1 AS `KargoTuru`,
 1 AS `KargoAgirligi`,
 1 AS `GonderimTarihi`,
 1 AS `TeslimTarihi`,
 1 AS `Gonderici`,
 1 AS `Alici`,
 1 AS `KargoIl`,
 1 AS `KargoIlce`,
 1 AS `Adres`,
 1 AS `PostaKodu`,
 1 AS `ödemeTutarı`,
 1 AS `KargoDurumu`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `kargodurumu`
--

DROP TABLE IF EXISTS `kargodurumu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kargodurumu` (
  `kargoTakipNo` varchar(50) NOT NULL,
  `DurumID` int NOT NULL,
  `Durum` varchar(50) NOT NULL,
  `GuncellemeZamani` datetime NOT NULL,
  PRIMARY KEY (`kargoTakipNo`),
  CONSTRAINT `fk_kargodurumu_kargoTakipNo` FOREIGN KEY (`kargoTakipNo`) REFERENCES `kargo` (`kargoTakipNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kargodurumu`
--

LOCK TABLES `kargodurumu` WRITE;
/*!40000 ALTER TABLE `kargodurumu` DISABLE KEYS */;
INSERT INTO `kargodurumu` VALUES ('YDFDX6864',3,'Kargo Teslim Edildi','2025-01-01 16:11:17'),('YDUPS3755',2,'Kargo Yolda','2025-01-01 19:18:45'),('YIMNG2215',2,'Kargo Yolda','2025-01-01 16:03:55'),('YIMNG2287',3,'Kargo Teslim Edildi','2025-01-01 19:15:00'),('YIMNG2626',2,'Kargo Yolda','2025-01-01 15:58:00');
/*!40000 ALTER TABLE `kargodurumu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kargolog`
--

DROP TABLE IF EXISTS `kargolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kargolog` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `LogText` text NOT NULL,
  `LogTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kargolog`
--

LOCK TABLES `kargolog` WRITE;
/*!40000 ALTER TABLE `kargolog` DISABLE KEYS */;
INSERT INTO `kargolog` VALUES (1,'[2025-01-01 | 16.11] YDFDX6864 Takip No\'lu kargo Güncellendi. Detaylar : Gönderici : [Merve Yıldırım] Alıcı : [Betül Argın] ---> [Hamburg / Almanya] Telefon Numarası [05463214567]','2025-01-01 16:11:17'),(2,'[2025-01-01 | 16.11] YIARAS5032 Takip No\'lu kargo Güncellendi. Detaylar : Gönderici : [Yaman Koper] Alıcı : [Mira Beylice] ---> [Altınkoy / İstanbul] Telefon Numarası [05489623698]','2025-01-01 16:11:45'),(3,'[2025-01-01 | 16.14] YIARAS5032 Takip No\'lu kargo Silindi. Detaylar : Gönderici : [Yaman Koper] Alıcı : [Mira Beylice] ---> [Altınkoy / İstanbul] Telefon Numarası [05489623698]','2025-01-01 16:14:34'),(4,'[2025-01-01 | 16.19] YDUPS3755 Takip No\'lu kargo Güncellendi. Detaylar : Gönderici : [Ali Ödemiş] Alıcı : [Emre Ak] ---> [Lyon / Fransa] Telefon Numarası [+332532324585]','2025-01-01 16:19:10'),(5,'[2025-01-01 | 16.34] YIMNG9494 Takip No\'lu kargo Eklendi. Detaylar : Gönderici : [asdasd adasdsad] Alıcı : [asdsad asdsad] ---> [asdsad] Telefon Numarası [asdsad]','2025-01-01 16:34:59'),(6,'[2025-01-01 | 16.35] YIMNG9494 Takip No\'lu kargo Silindi. Detaylar : Gönderici : [asdasd adasdsad] Alıcı : [asdsad asdsad] ---> [asdsad] Telefon Numarası [asdsad]','2025-01-01 16:35:09'),(7,'[2025-01-01 | 19.06] YDUPS3755 Takip No\'lu kargo Güncellendi. Detaylar : Gönderici : [Ali Ödemiş] Alıcı : [Emre Ak] ---> [Lyon / Fransa] Telefon Numarası [+332532324585]','2025-01-01 19:06:04'),(8,'[2025-01-01 | 19.07] YIMNG2287 Takip No\'lu kargo Eklendi. Detaylar : Gönderici : [Nail Kahraman] Alıcı : [Ömer Can Tangüner] ---> [Kullar / Kocaeli] Telefon Numarası [05447892569]','2025-01-01 19:07:39'),(9,'[2025-01-01 | 19.12] YIARAS8259 Takip No\'lu kargo Silindi. Detaylar : Gönderici : [Ali  Yedibela] Alıcı : [Habip Kesepara] ---> [Köprübaşı / Trabzon] Telefon Numarası [056136619861]','2025-01-01 19:12:11'),(10,'[2025-01-01 | 19.15] YIMNG2287 Takip No\'lu kargo Güncellendi. Detaylar : Gönderici : [Nail Kahraman] Alıcı : [Ömer Can Tangüner] ---> [Kullar / Kocaeli] Telefon Numarası [05447892569]','2025-01-01 19:15:00'),(11,'[2025-01-01 | 19.18] YDUPS3755 Takip No\'lu kargo Güncellendi. Detaylar : Gönderici : [Ali Ödemiş] Alıcı : [Emre Ak] ---> [Lyon / Fransa] Telefon Numarası [+332532324585]','2025-01-01 19:18:45');
/*!40000 ALTER TABLE `kargolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kargosirketi`
--

DROP TABLE IF EXISTS `kargosirketi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kargosirketi` (
  `KargoSirketiID` int NOT NULL AUTO_INCREMENT,
  `SirketAdi` varchar(50) NOT NULL,
  `SirketKodu` varchar(10) NOT NULL,
  `Turu` enum('YI','YD') NOT NULL,
  PRIMARY KEY (`KargoSirketiID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kargosirketi`
--

LOCK TABLES `kargosirketi` WRITE;
/*!40000 ALTER TABLE `kargosirketi` DISABLE KEYS */;
INSERT INTO `kargosirketi` VALUES (1,'MNG Kargo','MNG','YI'),(2,'Aras Kargo','ARAS','YI'),(3,'UPS','UPS','YD'),(4,'FedEx','FDX','YD');
/*!40000 ALTER TABLE `kargosirketi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yurtdisikargo`
--

DROP TABLE IF EXISTS `yurtdisikargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yurtdisikargo` (
  `kargoSirketiID` int NOT NULL,
  `kargoSirketiAdi` varchar(50) NOT NULL,
  PRIMARY KEY (`kargoSirketiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yurtdisikargo`
--

LOCK TABLES `yurtdisikargo` WRITE;
/*!40000 ALTER TABLE `yurtdisikargo` DISABLE KEYS */;
INSERT INTO `yurtdisikargo` VALUES (3,'UPS'),(4,'FedEx');
/*!40000 ALTER TABLE `yurtdisikargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yurtdisisehirler`
--

DROP TABLE IF EXISTS `yurtdisisehirler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yurtdisisehirler` (
  `yurtdisiSehirID` int NOT NULL AUTO_INCREMENT,
  `yurtdisiSehirAdi` varchar(100) DEFAULT NULL,
  `yurtdisiUlkeID` int DEFAULT NULL,
  PRIMARY KEY (`yurtdisiSehirID`),
  KEY `yurtdisiUlkeID` (`yurtdisiUlkeID`),
  CONSTRAINT `yurtdisisehirler_ibfk_1` FOREIGN KEY (`yurtdisiUlkeID`) REFERENCES `yurtdisiulkeler` (`yurtdisiUlkeID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yurtdisisehirler`
--

LOCK TABLES `yurtdisisehirler` WRITE;
/*!40000 ALTER TABLE `yurtdisisehirler` DISABLE KEYS */;
INSERT INTO `yurtdisisehirler` VALUES (1,'New York',1),(2,'Los Angeles',1),(3,'Chicago',1),(4,'Houston',1),(5,'Miami',1),(6,'Toronto',2),(7,'Vancouver',2),(8,'Montreal',2),(9,'Ottawa',2),(10,'Calgary',2),(11,'Berlin',3),(12,'Münih',3),(13,'Frankfurt',3),(14,'Hamburg',3),(15,'Köln',3),(16,'Paris',4),(17,'Marsilya',4),(18,'Lyon',4),(19,'Toulouse',4),(20,'Nice',4),(21,'Londra',5),(22,'Manchester',5),(23,'Birmingham',5),(24,'Glasgow',5),(25,'Liverpool',5),(26,'Roma',6),(27,'Milano',6),(28,'Napoli',6),(29,'Torino',6),(30,'Floransa',6),(31,'Tokyo',7),(32,'Osaka',7),(33,'Kyoto',7),(34,'Yokohama',7),(35,'Nagoya',7),(36,'Mumbai',8),(37,'Delhi',8),(38,'Bangalore',8),(39,'Hyderabad',8),(40,'Chennai',8),(41,'Sidney',9),(42,'Melbourne',9),(43,'Brisbane',9),(44,'Perth',9),(45,'Adelaide',9),(46,'Pekin',10),(47,'Şanghay',10),(48,'Guangzhou',10),(49,'Shenzhen',10),(50,'Chengdu',10);
/*!40000 ALTER TABLE `yurtdisisehirler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yurtdisiulkeler`
--

DROP TABLE IF EXISTS `yurtdisiulkeler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yurtdisiulkeler` (
  `yurtdisiUlkeID` int NOT NULL AUTO_INCREMENT,
  `yurtdisiUlkeAdi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`yurtdisiUlkeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yurtdisiulkeler`
--

LOCK TABLES `yurtdisiulkeler` WRITE;
/*!40000 ALTER TABLE `yurtdisiulkeler` DISABLE KEYS */;
INSERT INTO `yurtdisiulkeler` VALUES (1,'Amerika Birleşik Devletleri'),(2,'Kanada'),(3,'Almanya'),(4,'Fransa'),(5,'Birleşik Krallık'),(6,'İtalya'),(7,'Japonya'),(8,'Hindistan'),(9,'Avustralya'),(10,'Çin');
/*!40000 ALTER TABLE `yurtdisiulkeler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yurticikargo`
--

DROP TABLE IF EXISTS `yurticikargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yurticikargo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kargoSirketiID` int NOT NULL,
  `kargoSirketiAdi` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yurticikargo`
--

LOCK TABLES `yurticikargo` WRITE;
/*!40000 ALTER TABLE `yurticikargo` DISABLE KEYS */;
INSERT INTO `yurticikargo` VALUES (1,1,'MNG Kargo'),(2,2,'Aras Kargo');
/*!40000 ALTER TABLE `yurticikargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `kargodetayı`
--

/*!50001 DROP VIEW IF EXISTS `kargodetayı`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kargodetayı` AS select distinct `k`.`kargoID` AS `KargoID`,`k`.`kargoTakipNo` AS `KargoTakipNo`,`k`.`KargoTuru` AS `KargoTuru`,`k`.`KargoAgirligi` AS `KargoAgirligi`,`k`.`GonderimTarihi` AS `GonderimTarihi`,`k`.`TeslimTarihi` AS `TeslimTarihi`,concat(`g`.`Ad`,' ',`g`.`Soyad`) AS `Gonderici`,concat(`a`.`Ad`,' ',`a`.`Soyad`) AS `Alici`,coalesce(`il`.`il_adi`,`k`.`KargoIl`) AS `KargoIl`,coalesce(`ilce`.`ilce_adi`,`k`.`KargoIlce`) AS `KargoIlce`,`k`.`Adres` AS `Adres`,`k`.`PostaKodu` AS `PostaKodu`,`k`.`ödemeTutarı` AS `ödemeTutarı`,`d`.`Durum` AS `KargoDurumu` from (((((`kargo` `k` left join `gonderici` `g` on((`k`.`GondericiID` = `g`.`GondericiID`))) left join `alici` `a` on((`k`.`AliciID` = `a`.`AliciID`))) left join `kargodurumu` `d` on((`k`.`DurumID` = `d`.`DurumID`))) left join `il` on((`k`.`KargoIl` = `il`.`il_id`))) left join `ilce` on((`k`.`KargoIlce` = `ilce`.`ilce_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-01 19:43:00
