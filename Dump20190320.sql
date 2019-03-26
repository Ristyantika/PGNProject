-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: gagas360
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `datacater`
--

DROP TABLE IF EXISTS `datacater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacater` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPRS` int(11) DEFAULT NULL,
  `IdGTM` int(11) DEFAULT NULL,
  `IdHT` int(11) DEFAULT NULL,
  `Waktu` datetime DEFAULT NULL,
  `VBase` double DEFAULT NULL,
  `Vturbin` double DEFAULT NULL,
  `Flow` double DEFAULT NULL,
  `Temp` double DEFAULT NULL,
  `PressureOutlet` double DEFAULT NULL,
  `PressureGTM` double DEFAULT NULL,
  `TempGTM` double DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacater`
--

LOCK TABLES `datacater` WRITE;
/*!40000 ALTER TABLE `datacater` DISABLE KEYS */;
INSERT INTO `datacater` VALUES (1,1,1,1,'2019-02-28 15:19:00',12,23,34,45,56.12,12.2,67,1,'2019-02-28 08:18:09','2019-02-28 08:18:09',1),(2,2,1,1,'2019-02-28 13:45:00',12,23,34,45,56,56,78,1,'2019-02-28 08:19:23','2019-02-28 08:19:23',1);
/*!40000 ALTER TABLE `datacater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datagtm`
--

DROP TABLE IF EXISTS `datagtm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datagtm` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdDataMs` int(11) DEFAULT NULL,
  `IdGTM` int(11) DEFAULT NULL,
  `IdHT` int(11) DEFAULT NULL,
  `IdDriver` int(11) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `IdMS` int(11) DEFAULT NULL,
  `IdPRS` int(11) DEFAULT NULL,
  `Jarak` double DEFAULT NULL,
  `JarakTempuh` double DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datagtm`
--

LOCK TABLES `datagtm` WRITE;
/*!40000 ALTER TABLE `datagtm` DISABLE KEYS */;
INSERT INTO `datagtm` VALUES (2,2,2,1,1,'2019-03-14 02:30:00',1,1,120,11,4,1,'2019-03-14 09:43:23','2019-03-14 10:07:25',1),(4,2,2,1,1,'2019-03-14 03:30:00',1,1,120,11,5,1,'2019-03-14 09:43:23','2019-03-14 12:36:50',1),(5,2,2,1,1,'2019-03-14 04:30:00',1,1,120,11,8,1,'2019-03-14 09:43:23','2019-03-14 12:36:56',1),(6,2,2,1,1,'2019-03-14 05:30:00',1,1,120,11,2,1,'2019-03-14 09:43:23','2019-03-14 12:37:22',1),(7,3,1,3,1,'2019-03-18 12:30:00',2,2,100,8,4,1,'2019-03-18 06:23:13','2019-03-18 06:23:13',1),(8,4,2,2,1,'2019-03-18 04:30:00',1,3,20,45,4,1,'2019-03-18 10:32:48','2019-03-19 19:12:51',1),(9,NULL,2,2,1,'2019-03-20 04:55:00',1,3,0,0,5,1,'2019-03-19 19:19:46','2019-03-19 19:19:46',1),(10,NULL,2,3,1,'2019-03-21 17:55:00',1,3,230,9,8,1,'2019-03-19 19:22:17','2019-03-19 19:22:17',1);
/*!40000 ALTER TABLE `datagtm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datams`
--

DROP TABLE IF EXISTS `datams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datams` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdMS` int(11) DEFAULT NULL,
  `IdGTM` int(11) DEFAULT NULL,
  `IdHT` int(11) DEFAULT NULL,
  `IdDriver` int(11) DEFAULT NULL,
  `Tanggalmasuk` date DEFAULT NULL,
  `DO` varchar(255) DEFAULT NULL,
  `GHV` double DEFAULT NULL,
  `PressureAwal` double DEFAULT NULL,
  `PressureAkhir` double DEFAULT NULL,
  `Volume` double DEFAULT NULL,
  `Status` int(11) DEFAULT '10',
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datams`
--

LOCK TABLES `datams` WRITE;
/*!40000 ALTER TABLE `datams` DISABLE KEYS */;
INSERT INTO `datams` VALUES (2,1,2,1,1,'2019-03-14','No/TGL/Bulan/01',12,12.5,500,1200,11,1,'2019-03-14 09:43:23','2019-03-18 04:16:38',1),(3,2,1,3,1,'2019-03-18','No/TGL/Bulan/02',14,120,1200,12.5,10,1,'2019-03-18 06:23:13','2019-03-18 06:23:13',1),(4,1,2,2,1,'2019-03-18','No/TGL/Bulan/03',12,13,1200,120,11,1,'2019-03-18 10:32:48','2019-03-19 19:19:46',1);
/*!40000 ALTER TABLE `datams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatarget`
--

DROP TABLE IF EXISTS `datatarget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatarget` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `JenisTarget` enum('Nominasi','Target(RKAP)') DEFAULT NULL,
  `Nilai` double DEFAULT NULL,
  `TanggalTarget` varchar(10) DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatarget`
--

LOCK TABLES `datatarget` WRITE;
/*!40000 ALTER TABLE `datatarget` DISABLE KEYS */;
INSERT INTO `datatarget` VALUES (1,'Nominasi',12.2,'2019-02',1,'2019-03-05 07:35:30','2019-03-05 07:35:30',1),(2,'Target(RKAP)',12,'2019',1,'2019-03-05 07:39:48','2019-03-05 07:39:48',1);
/*!40000 ALTER TABLE `datatarget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detaildatams`
--

DROP TABLE IF EXISTS `detaildatams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detaildatams` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdDataMs` int(11) DEFAULT NULL,
  `IdPRS` int(11) DEFAULT NULL,
  `Jarak` double DEFAULT NULL,
  `JarakTempuh` double DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detaildatams`
--

LOCK TABLES `detaildatams` WRITE;
/*!40000 ALTER TABLE `detaildatams` DISABLE KEYS */;
INSERT INTO `detaildatams` VALUES (2,2,1,120,4,11,1,'2019-03-14 09:43:23','2019-03-18 04:16:45',1),(3,3,2,100,8,10,1,'2019-03-18 06:23:13','2019-03-18 06:23:13',1),(4,4,3,20,45,11,1,'2019-03-18 10:32:48','2019-03-19 19:19:46',1);
/*!40000 ALTER TABLE `detaildatams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `Married` enum('Menikah','Lajang','Janda','Duda') DEFAULT NULL,
  `NickName` varchar(250) DEFAULT NULL,
  `CellPhone` varchar(20) DEFAULT NULL,
  `Religion` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Administrator','Lajang','Admin','0','Islam','Staff',1,'2018-07-04 11:28:24','2018-07-04 11:29:41',1),(2,'Maimunnajib','Menikah','Najib','0','Islam','Kontrak',4,'2018-07-04 11:50:52','2018-07-04 11:50:52',1),(3,'najib','Menikah','Maimun','0921323','Islam','Staff',1,'2019-02-21 07:21:47','2019-02-21 07:43:14',0),(5,'Admin','Menikah','Tsas','0921323','Islam','Staff',1,'2019-02-21 07:43:51','2019-02-21 07:50:05',0);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrydatameter`
--

DROP TABLE IF EXISTS `entrydatameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrydatameter` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPelanggan` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Volume` double DEFAULT NULL,
  `Nominasi` double DEFAULT NULL,
  `Target` double DEFAULT NULL,
  `Actived` int(11) DEFAULT '1',
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UserEntry` int(11) DEFAULT NULL,
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrydatameter`
--

LOCK TABLES `entrydatameter` WRITE;
/*!40000 ALTER TABLE `entrydatameter` DISABLE KEYS */;
INSERT INTO `entrydatameter` VALUES (1,NULL,NULL,NULL,NULL,NULL,0,'2019-02-25 07:12:43','2019-02-25 07:12:43',1),(2,6,'2019-02-01',732,100,101,1,'2019-02-25 07:38:08','2019-02-25 07:38:08',1),(3,6,'2019-02-02',0,100,100,1,'2019-02-25 09:49:37','2019-02-25 09:49:37',1),(4,6,'2019-02-03',0,100,100,1,'2019-02-25 09:50:01','2019-02-25 09:50:01',1),(5,6,'2019-02-04',1044,100,100,1,'2019-02-25 09:50:24','2019-02-25 09:50:24',1),(6,6,'2019-02-05',531,100,100,1,'2019-02-25 09:50:36','2019-02-25 09:50:36',1),(7,6,'2019-02-06',531,100,100,1,'2019-02-25 09:50:51','2019-02-25 09:50:51',1),(8,6,'2019-02-07',531,100,100,1,'2019-02-25 09:51:12','2019-02-25 09:51:12',1),(9,6,'2019-02-08',531,100,100,1,'2019-02-25 09:51:29','2019-02-25 09:51:29',1),(10,6,'2019-02-09',0,100,100,1,'2019-02-25 09:51:49','2019-02-25 09:51:49',1),(11,1,'2019-02-10',0,100,100,1,'2019-02-25 09:52:06','2019-02-25 09:52:06',1),(12,1,'2019-02-11',531,100,100,1,'2019-02-25 09:52:38','2019-02-25 09:52:38',1),(13,6,'2019-02-12',410.25,100,100,1,'2019-02-25 09:52:53','2019-02-25 09:52:53',1),(14,6,'2019-02-13',410.25,100,100,1,'2019-02-25 09:54:07','2019-02-25 09:54:07',1),(15,6,'2019-02-14',410.25,100,100,1,'2019-02-25 09:54:19','2019-02-25 09:54:19',1),(16,6,'2019-02-15',410.25,100,100,1,'2019-02-25 09:54:41','2019-02-25 09:54:41',1);
/*!40000 ALTER TABLE `entrydatameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdModule` int(11) NOT NULL,
  `Description` text,
  `Action` enum('INSERT','UPDATE','DELETE','') NOT NULL DEFAULT 'INSERT',
  `UserEntry` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,10,'{\"_method\":\"PATCH\",\"_token\":\"6gW7LKwW6Jsq4JyLKhL5Z5L70QGVgEZLQwlE29yU\",\"Organisation\":\"Staff Admin\",\"JobDisk\":\"<p>Administrasi<\\/p>\",\"Remarks\":null}','UPDATE',1,'2019-02-21 01:48:48','2019-02-21 01:48:48'),(2,10,'{\"_token\":\"6gW7LKwW6Jsq4JyLKhL5Z5L70QGVgEZLQwlE29yU\",\"Organisation\":\"Cater\",\"JobDisk\":\"<p>Pencatat Stand Meter<\\/p>\",\"Remarks\":null}','INSERT',1,'2019-02-21 01:49:34','2019-02-21 01:49:34'),(3,4,'{\"_method\":\"PATCH\",\"_token\":\"6gW7LKwW6Jsq4JyLKhL5Z5L70QGVgEZLQwlE29yU\",\"IdEmploye\":\"2\",\"UserName\":\"najib\",\"Password\":\"Pgn12345\",\"TypeUser\":\"1\"}','UPDATE',1,'2019-02-21 01:49:54','2019-02-21 01:49:54'),(4,3,'{\"_method\":\"PATCH\",\"_token\":\"6gW7LKwW6Jsq4JyLKhL5Z5L70QGVgEZLQwlE29yU\",\"Name\":\"admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\'}\",\"{\'id\':\'27\',\'action\':\'employee.index\'}\",\"{\'id\':\'27\',\'action\':\'employee.create\'}\",\"{\'id\':\'27\',\'action\':\'employee.edit\'}\",\"{\'id\':\'27\',\'action\':\'employee.delete\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.index\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.create\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.edit\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.delete\'}\"]}','UPDATE',1,'2019-02-21 01:51:11','2019-02-21 01:51:11'),(5,3,'{\"_method\":\"PATCH\",\"_token\":\"6gW7LKwW6Jsq4JyLKhL5Z5L70QGVgEZLQwlE29yU\",\"Name\":\"Administrator Program\",\"Description\":\"Administrators\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'16\'}\",\"{\'id\':\'1\',\'action\':\'province.index\'}\",\"{\'id\':\'1\',\'action\':\'province.create\'}\",\"{\'id\':\'1\',\'action\':\'province.edit\'}\",\"{\'id\':\'1\',\'action\':\'province.delete\'}\",\"{\'id\':\'2\',\'action\':\'kokab.index\'}\",\"{\'id\':\'2\',\'action\':\'kokab.create\'}\",\"{\'id\':\'2\',\'action\':\'kokab.edit\'}\",\"{\'id\':\'2\',\'action\':\'kokab.delete\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\'}\",\"{\'id\':\'27\',\'action\':\'employee.index\'}\",\"{\'id\':\'27\',\'action\':\'employee.create\'}\",\"{\'id\':\'27\',\'action\':\'employee.edit\'}\",\"{\'id\':\'27\',\'action\':\'employee.delete\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.index\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.create\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.edit\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.delete\'}\",\"{\'id\':\'14\'}\",\"{\'id\':\'23\',\'action\':\'master-module.index\'}\",\"{\'id\':\'23\',\'action\':\'master-module.create\'}\",\"{\'id\':\'23\',\'action\':\'master-module.edit\'}\",\"{\'id\':\'23\',\'action\':\'master-module.delete\'}\",\"{\'id\':\'25\',\'action\':\'history-table.index\'}\",\"{\'id\':\'25\',\'action\':\'history-table.create\'}\",\"{\'id\':\'25\',\'action\':\'history-table.edit\'}\",\"{\'id\':\'25\',\'action\':\'history-table.delete\'}\"]}','UPDATE',1,'2019-02-21 01:51:37','2019-02-21 01:51:37'),(6,3,'{\"_method\":\"PATCH\",\"_token\":\"6gW7LKwW6Jsq4JyLKhL5Z5L70QGVgEZLQwlE29yU\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\'}\",\"{\'id\':\'27\',\'action\':\'employee.index\'}\",\"{\'id\':\'27\',\'action\':\'employee.create\'}\",\"{\'id\':\'27\',\'action\':\'employee.edit\'}\",\"{\'id\':\'27\',\'action\':\'employee.delete\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.index\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.create\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.edit\'}\",\"{\'id\':\'10\',\'action\':\'ogn-units.delete\'}\"]}','UPDATE',1,'2019-02-21 01:51:47','2019-02-21 01:51:47'),(7,4,'{\"_method\":\"PATCH\",\"_token\":\"6gW7LKwW6Jsq4JyLKhL5Z5L70QGVgEZLQwlE29yU\",\"IdEmploye\":\"1\",\"UserName\":\"admin\",\"Password\":\"admin\",\"TypeUser\":\"2\"}','UPDATE',1,'2019-02-21 01:51:56','2019-02-21 01:51:56'),(8,4,'{\"_token\":\"6gW7LKwW6Jsq4JyLKhL5Z5L70QGVgEZLQwlE29yU\",\"UserName\":\"Imun\",\"Password\":\"imun\",\"TypeUser\":\"1\",\"Name\":\"najib\",\"NickName\":\"Maimun\",\"Married\":\"Menikah\",\"CellPhone\":\"0921323\",\"Religion\":\"Islam\",\"Status\":\"Staff\"}','INSERT',1,'2019-02-21 07:21:47','2019-02-21 07:21:47'),(9,9,'\"3\"','DELETE',1,'2019-02-21 07:41:20','2019-02-21 07:41:20'),(10,4,'\"3\"','DELETE',1,'2019-02-21 07:41:20','2019-02-21 07:41:20'),(11,4,'{\"_token\":\"6gW7LKwW6Jsq4JyLKhL5Z5L70QGVgEZLQwlE29yU\",\"UserName\":\"imun\",\"Password\":\"imun\",\"TypeUser\":\"1\",\"Name\":\"Admin\",\"NickName\":\"Tsas\",\"Married\":\"Menikah\",\"CellPhone\":\"0921323\",\"Religion\":\"Islam\",\"Status\":\"Staff\"}','INSERT',1,'2019-02-21 07:43:51','2019-02-21 07:43:51'),(12,9,'\"4\"','DELETE',1,'2019-02-21 07:45:55','2019-02-21 07:45:55'),(13,4,'\"4\"','DELETE',1,'2019-02-21 07:45:55','2019-02-21 07:45:55'),(14,9,'\"4\"','DELETE',1,'2019-02-21 07:46:07','2019-02-21 07:46:07'),(15,4,'\"4\"','DELETE',1,'2019-02-21 07:46:07','2019-02-21 07:46:07'),(16,9,'\"4\"','DELETE',1,'2019-02-21 07:46:44','2019-02-21 07:46:44'),(17,4,'\"4\"','DELETE',1,'2019-02-21 07:46:44','2019-02-21 07:46:44'),(18,9,'\"4\"','DELETE',1,'2019-02-21 07:49:48','2019-02-21 07:49:48'),(19,4,'\"4\"','DELETE',1,'2019-02-21 07:49:48','2019-02-21 07:49:48'),(20,9,'\"4\"','DELETE',1,'2019-02-21 07:50:05','2019-02-21 07:50:05'),(21,4,'\"4\"','DELETE',1,'2019-02-21 07:50:05','2019-02-21 07:50:05'),(22,3,'{\"_method\":\"PATCH\",\"_token\":\"BouQO6dCEFfZhsGRC7qePlXt8mJNTdHA6swHdjLt\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.delete\'}\"]}','UPDATE',1,'2019-02-25 04:15:58','2019-02-25 04:15:58'),(23,3,'{\"_method\":\"PATCH\",\"_token\":\"BouQO6dCEFfZhsGRC7qePlXt8mJNTdHA6swHdjLt\",\"Name\":\"Administrator Program\",\"Description\":\"Administrators\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'16\'}\",\"{\'id\':\'1\',\'action\':\'province.index\'}\",\"{\'id\':\'1\',\'action\':\'province.create\'}\",\"{\'id\':\'1\',\'action\':\'province.edit\'}\",\"{\'id\':\'1\',\'action\':\'province.delete\'}\",\"{\'id\':\'2\',\'action\':\'kokab.index\'}\",\"{\'id\':\'2\',\'action\':\'kokab.create\'}\",\"{\'id\':\'2\',\'action\':\'kokab.edit\'}\",\"{\'id\':\'2\',\'action\':\'kokab.delete\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'14\'}\",\"{\'id\':\'23\',\'action\':\'master-module.index\'}\",\"{\'id\':\'23\',\'action\':\'master-module.create\'}\",\"{\'id\':\'23\',\'action\':\'master-module.edit\'}\",\"{\'id\':\'23\',\'action\':\'master-module.delete\'}\",\"{\'id\':\'25\',\'action\':\'history-table.index\'}\",\"{\'id\':\'25\',\'action\':\'history-table.create\'}\",\"{\'id\':\'25\',\'action\':\'history-table.edit\'}\",\"{\'id\':\'25\',\'action\':\'history-table.delete\'}\"]}','UPDATE',1,'2019-02-25 04:16:21','2019-02-25 04:16:21'),(24,3,'{\"_method\":\"PATCH\",\"_token\":\"JUmygleoubUkCtViU5LH9T5nFIqJjfXUbSSYzf8c\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'26\',\'action\':\'entry-data-meter.delete\'}\"]}','UPDATE',1,'2019-02-25 04:19:10','2019-02-25 04:19:10'),(25,3,'{\"_method\":\"PATCH\",\"_token\":\"iAZdRzDc4uXlxdiWFgDCTIljTjNAUHp18oUNfV88\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\"]}','UPDATE',1,'2019-02-25 04:19:57','2019-02-25 04:19:57'),(26,1,'{\"_token\":\"NFb8neD2D488YNSe0tVo1LajoUjzPK22SEL2AUvf\",\"NamaPelanggan\":\"PT. Angakasa Pura\",\"NilaiKontrak\":\"1200\",\"Description\":null}','INSERT',1,'2019-02-25 05:16:34','2019-02-25 05:16:34'),(27,1,'{\"_method\":\"PATCH\",\"_token\":\"NFb8neD2D488YNSe0tVo1LajoUjzPK22SEL2AUvf\",\"NamaPelanggan\":\"PT. Angakasa Pura\",\"NilaiKontrak\":\"1200\",\"Description\":null}','UPDATE',1,'2019-02-25 05:24:28','2019-02-25 05:24:28'),(28,1,'{\"_method\":\"PATCH\",\"_token\":\"NFb8neD2D488YNSe0tVo1LajoUjzPK22SEL2AUvf\",\"NamaPelanggan\":\"PT. Angakasa Pura\",\"NilaiKontrak\":\"1200\",\"Description\":null}','UPDATE',1,'2019-02-25 05:24:33','2019-02-25 05:24:33'),(29,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. Angakasa Pura\",\"Tanggal\":\"2019-02-25\",\"Volume\":\"1200\",\"Nominasi\":\"1200\",\"Target\":\"12.2635376\"}','INSERT',1,'2019-02-25 07:12:43','2019-02-25 07:12:43'),(30,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. Angakasa Pura\",\"Tanggal\":\"2019-02-25\",\"Volume\":\"12\",\"Nominasi\":\"21\",\"Target\":\"12.12\"}','INSERT',1,'2019-02-25 07:31:33','2019-02-25 07:31:33'),(31,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. Angakasa Pura\",\"Tanggal\":\"2019-02-25\",\"Volume\":\"1233\",\"Nominasi\":\"2323\",\"Target\":\"237.0129\"}','INSERT',1,'2019-02-25 07:38:08','2019-02-25 07:38:08'),(32,1,'\"1\"','DELETE',1,'2019-02-25 07:52:18','2019-02-25 07:52:18'),(33,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. Angakasa Pura\",\"Tanggal\":\"2019-02-25\",\"Volume\":\"12.11\",\"Nominasi\":\"12.4546657568\",\"Target\":\"237.0129\"}','UPDATE',1,'2019-02-25 07:52:37','2019-02-25 07:52:37'),(34,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":null,\"Tanggal\":\"2019-02-25\",\"Volume\":\"12.12134\",\"Nominasi\":\"12.22323\",\"Target\":\"237.0129\"}','UPDATE',1,'2019-02-25 07:57:20','2019-02-25 07:57:20'),(35,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. Angakasa Pura\",\"Tanggal\":\"2019-02-25\",\"Volume\":\"12.12134\",\"Nominasi\":\"12.22323\",\"Target\":\"237.0129\"}','UPDATE',1,'2019-02-25 07:57:26','2019-02-25 07:57:26'),(36,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. Semarang\",\"NilaiKontrak\":\"0\",\"Description\":null}','INSERT',1,'2019-02-25 08:49:49','2019-02-25 08:49:49'),(37,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT GAGAS\",\"NilaiKontrak\":\"0\",\"Description\":null}','INSERT',1,'2019-02-25 08:49:58','2019-02-25 08:49:58'),(38,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"3\",\"Tanggal\":\"2019-02-25\",\"Volume\":\"12.12134\",\"Nominasi\":\"12.22323\",\"Target\":\"237.0129\"}','UPDATE',1,'2019-02-25 08:55:03','2019-02-25 08:55:03'),(39,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. Angakasa Pura\",\"NilaiKontrak\":\"0\",\"Description\":null}','UPDATE',1,'2019-02-25 09:19:31','2019-02-25 09:19:31'),(40,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"DARAT CV\",\"NilaiKontrak\":\"0\",\"Description\":null}','UPDATE',1,'2019-02-25 09:34:36','2019-02-25 09:34:36'),(41,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"CV DARAT II\",\"NilaiKontrak\":\"0\",\"Description\":null}','UPDATE',1,'2019-02-25 09:34:48','2019-02-25 09:34:48'),(42,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT INDOFOOD CBP SUKSES MAMKMUR TBK FOOD INGREDIENTS DIVISION\",\"NilaiKontrak\":\"0\",\"Description\":null}','UPDATE',1,'2019-02-25 09:35:24','2019-02-25 09:35:24'),(43,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. AQUAFARM NUSANTARA\",\"NilaiKontrak\":null,\"Description\":null}','INSERT',1,'2019-02-25 09:35:48','2019-02-25 09:35:48'),(44,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. AQUAFARM NUSANTARA\",\"NilaiKontrak\":\"0\",\"Description\":null}','UPDATE',1,'2019-02-25 09:36:03','2019-02-25 09:36:03'),(45,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"CV DARAT II\",\"NilaiKontrak\":\"012\",\"Description\":null}','UPDATE',1,'2019-02-25 09:39:26','2019-02-25 09:39:26'),(46,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"CV DARAT II\",\"NilaiKontrak\":\"0\",\"Description\":null}','UPDATE',1,'2019-02-25 09:43:51','2019-02-25 09:43:51'),(47,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"PT. KENKYO FOODS TECH INDUSTRY\",\"NilaiKontrak\":null,\"Description\":null}','INSERT',1,'2019-02-25 09:44:23','2019-02-25 09:44:23'),(48,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"CARGIL INDONESIA\",\"NilaiKontrak\":\"0\",\"Description\":null}','INSERT',1,'2019-02-25 09:48:02','2019-02-25 09:48:02'),(49,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-01\",\"Volume\":\"732\",\"Nominasi\":\"100\",\"Target\":\"101\"}','UPDATE',1,'2019-02-25 09:49:16','2019-02-25 09:49:16'),(50,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-02\",\"Volume\":\"0\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:49:37','2019-02-25 09:49:37'),(51,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-03\",\"Volume\":\"1044\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:50:01','2019-02-25 09:50:01'),(52,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"1\",\"Tanggal\":\"2019-02-03\",\"Volume\":\"0\",\"Nominasi\":\"100\",\"Target\":\"100\"}','UPDATE',1,'2019-02-25 09:50:08','2019-02-25 09:50:08'),(53,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-04\",\"Volume\":\"1044\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:50:23','2019-02-25 09:50:23'),(54,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-05\",\"Volume\":\"531\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:50:36','2019-02-25 09:50:36'),(55,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-06\",\"Volume\":\"531\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:50:51','2019-02-25 09:50:51'),(56,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-03\",\"Volume\":\"0\",\"Nominasi\":\"100\",\"Target\":\"100\"}','UPDATE',1,'2019-02-25 09:50:56','2019-02-25 09:50:56'),(57,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-07\",\"Volume\":\"531\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:51:12','2019-02-25 09:51:12'),(58,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-08\",\"Volume\":\"531\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:51:29','2019-02-25 09:51:29'),(59,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-09\",\"Volume\":\"0\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:51:49','2019-02-25 09:51:49'),(60,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-10\",\"Volume\":\"531\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:52:06','2019-02-25 09:52:06'),(61,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-11\",\"Volume\":\"410.25\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:52:38','2019-02-25 09:52:38'),(62,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-12\",\"Volume\":\"410.25\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:52:53','2019-02-25 09:52:53'),(63,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"1\",\"Tanggal\":\"2019-02-10\",\"Volume\":\"0\",\"Nominasi\":\"100\",\"Target\":\"100\"}','UPDATE',1,'2019-02-25 09:53:39','2019-02-25 09:53:39'),(64,1,'{\"_method\":\"PATCH\",\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"1\",\"Tanggal\":\"2019-02-11\",\"Volume\":\"531\",\"Nominasi\":\"100\",\"Target\":\"100\"}','UPDATE',1,'2019-02-25 09:53:50','2019-02-25 09:53:50'),(65,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-13\",\"Volume\":\"410.25\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:54:07','2019-02-25 09:54:07'),(66,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-14\",\"Volume\":\"410.25\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:54:19','2019-02-25 09:54:19'),(67,1,'{\"_token\":\"vCNiKyCYJbs50ioZQYGDgAJhHNBwBDAKanLOAroJ\",\"NamaPelanggan\":\"6\",\"Tanggal\":\"2019-02-15\",\"Volume\":\"410.25\",\"Nominasi\":\"100\",\"Target\":\"100\"}','INSERT',1,'2019-02-25 09:54:41','2019-02-25 09:54:41'),(68,3,'{\"_method\":\"PATCH\",\"_token\":\"e0NIgCxYC4tpLVBayi90zB0cOwaQISWVtp4cZp8m\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'28\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.delete\'}\"]}','UPDATE',1,'2019-02-25 23:40:22','2019-02-25 23:40:22'),(69,3,'{\"_method\":\"PATCH\",\"_token\":\"lcM5ZszW30rP8dA61H7P3PXxdDYqW6VjS34D2FWZ\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.delete\'}\"]}','UPDATE',1,'2019-02-25 23:41:21','2019-02-25 23:41:21'),(70,3,'{\"_method\":\"PATCH\",\"_token\":\"lcM5ZszW30rP8dA61H7P3PXxdDYqW6VjS34D2FWZ\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'31\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.delete\'}\"]}','UPDATE',1,'2019-02-25 23:41:28','2019-02-25 23:41:28'),(71,3,'{\"_method\":\"PATCH\",\"_token\":\"UYnwf0CispvwYsF6e1RlkcbwHEzS9i8QZXVp2NjP\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'31\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.index\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.create\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.delete\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'30\',\'action\':\'entry-data-meter.delete\'}\"]}','UPDATE',1,'2019-02-25 23:42:25','2019-02-25 23:42:25'),(72,1,'{\"_token\":\"T9yk5eAT7Wvcc1QWZ64HHnifyanfcKUTRWibefsg\",\"NoGTM\":\"GTM01\",\"LWC\":\"17760\",\"KapasitasGTM\":\"40\"}','INSERT',1,'2019-02-25 23:44:05','2019-02-25 23:44:05'),(73,1,'{\"_method\":\"PATCH\",\"_token\":\"T9yk5eAT7Wvcc1QWZ64HHnifyanfcKUTRWibefsg\",\"NoGTM\":\"GTM01\",\"LWC\":\"17760\",\"KapasitasGTM\":\"20\"}','UPDATE',1,'2019-02-25 23:49:33','2019-02-25 23:49:33'),(74,3,'{\"_method\":\"PATCH\",\"_token\":\"T9yk5eAT7Wvcc1QWZ64HHnifyanfcKUTRWibefsg\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'31\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.index\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.create\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.delete\'}\",\"{\'id\':\'30\',\'action\':\'master-ht.index\'}\",\"{\'id\':\'30\',\'action\':\'master-ht.create\'}\",\"{\'id\':\'30\',\'action\':\'master-ht.edit\'}\",\"{\'id\':\'30\',\'action\':\'master-ht.delete\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.index\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.create\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.edit\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.delete\'}\",\"{\'id\':\'33\',\'action\':\'master-ms.index\'}\",\"{\'id\':\'33\',\'action\':\'master-ms.create\'}\",\"{\'id\':\'33\',\'action\':\'master-ms.edit\'}\",\"{\'id\':\'33\',\'action\':\'master-ms.delete\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.index\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.create\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.edit\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.delete\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.index\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.create\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.edit\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.delete\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.index\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.create\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.edit\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.delete\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.index\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.create\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.edit\'}\"]}','UPDATE',1,'2019-02-26 00:02:29','2019-02-26 00:02:29'),(75,3,'{\"_method\":\"PATCH\",\"_token\":\"F0uOoTNKEMr0tnEpVSuLQjy3bxWTpFzBORXcCSoy\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'31\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.index\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.create\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.delete\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.index\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.create\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.edit\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.delete\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.index\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.create\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.edit\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.delete\'}\",\"{\'id\':\'33\',\'action\':\'master-ms.index\'}\",\"{\'id\':\'33\',\'action\':\'master-ms.create\'}\",\"{\'id\':\'33\',\'action\':\'master-ms.edit\'}\",\"{\'id\':\'33\',\'action\':\'master-ms.delete\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.index\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.create\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.edit\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.delete\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.index\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.create\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.edit\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.delete\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.index\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.create\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.edit\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.delete\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.index\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.create\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.edit\'}\"]}','UPDATE',1,'2019-02-26 00:08:47','2019-02-26 00:08:47'),(76,1,'{\"_token\":\"uSfu1FGcfBmHgJIlpwP7RazhIG9mdLYW2CgGsmif\",\"NoHT\":\"HT01\",\"PlatNo\":\"M 43 L\"}','INSERT',1,'2019-02-26 00:11:14','2019-02-26 00:11:14'),(77,1,'{\"_method\":\"PATCH\",\"_token\":\"uSfu1FGcfBmHgJIlpwP7RazhIG9mdLYW2CgGsmif\",\"NoHT\":\"HT001\",\"PlatNo\":\"M 43 L\"}','UPDATE',1,'2019-02-26 00:11:22','2019-02-26 00:11:22'),(78,1,'{\"_token\":\"uSfu1FGcfBmHgJIlpwP7RazhIG9mdLYW2CgGsmif\",\"NamaPRS\":\"PRS Tambak Aji\",\"Kapasitas\":\"200\"}','INSERT',1,'2019-02-26 00:25:19','2019-02-26 00:25:19'),(79,3,'{\"_method\":\"PATCH\",\"_token\":\"uSfu1FGcfBmHgJIlpwP7RazhIG9mdLYW2CgGsmif\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'31\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.index\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.create\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.delete\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.index\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.create\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.edit\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.delete\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.index\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.create\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.edit\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.delete\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.index\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.create\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.edit\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.delete\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.index\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.create\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.edit\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.delete\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.index\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.create\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.edit\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.delete\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.index\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.create\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.edit\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.delete\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.index\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.create\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.edit\'}\"]}','UPDATE',1,'2019-02-26 01:57:34','2019-02-26 01:57:34'),(80,1,'{\"_token\":\"xOnCKk4Coxkwjob98CigGuXNcxp7eU6QYC52WJhD\",\"NamaMS\":\"SPBG Ngagel\",\"KapasitasMS\":\"2000\"}','INSERT',1,'2019-02-26 01:58:14','2019-02-26 01:58:14'),(81,1,'{\"_method\":\"PATCH\",\"_token\":\"xOnCKk4Coxkwjob98CigGuXNcxp7eU6QYC52WJhD\",\"NamaMS\":\"SPBG Ngagel\",\"KapasitasMS\":\"2000.23\"}','UPDATE',1,'2019-02-26 02:25:55','2019-02-26 02:25:55'),(82,1,'{\"_method\":\"PATCH\",\"_token\":\"xOnCKk4Coxkwjob98CigGuXNcxp7eU6QYC52WJhD\",\"NamaMS\":\"SPBG Ngagel\",\"KapasitasMS\":\"2002\"}','UPDATE',1,'2019-02-26 02:30:12','2019-02-26 02:30:12'),(83,1,'{\"_method\":\"PATCH\",\"_token\":\"xOnCKk4Coxkwjob98CigGuXNcxp7eU6QYC52WJhD\",\"NamaMS\":\"SPBG Ngagel\",\"KapasitasMS\":\"20.23\"}','UPDATE',1,'2019-02-26 02:31:58','2019-02-26 02:31:58'),(84,1,'{\"_method\":\"PATCH\",\"_token\":\"xOnCKk4Coxkwjob98CigGuXNcxp7eU6QYC52WJhD\",\"NamaMS\":\"SPBG Ngagel\",\"KapasitasMS\":\"20.45\"}','UPDATE',1,'2019-02-26 02:34:05','2019-02-26 02:34:05'),(85,1,'{\"_method\":\"PATCH\",\"_token\":\"xOnCKk4Coxkwjob98CigGuXNcxp7eU6QYC52WJhD\",\"NamaMS\":\"SPBG Ngagel\",\"KapasitasMS\":\"2000.45\"}','UPDATE',1,'2019-02-26 02:34:13','2019-02-26 02:34:13'),(86,1,'{\"_token\":\"xOnCKk4Coxkwjob98CigGuXNcxp7eU6QYC52WJhD\",\"NamaDriver\":\"Suwito\",\"NoKTP\":\"1423199902\",\"NoHP\":\"0821229191\"}','INSERT',1,'2019-02-26 02:52:45','2019-02-26 02:52:45'),(87,1,'{\"_token\":\"xOnCKk4Coxkwjob98CigGuXNcxp7eU6QYC52WJhD\",\"IdPRS\":\"1\",\"IdMS\":\"1\",\"Jarak\":\"200\",\"WaktuNormal\":\"00:12\",\"WaktuSedang\":\"00:12\",\"WaktuPadat\":\"00:23\"}','INSERT',1,'2019-02-26 03:24:36','2019-02-26 03:24:36'),(88,1,'{\"_token\":\"FnBeP001JdxzSC3jWOU4KSShET2xZtoRr3Qvotko\",\"IdGTM\":\"1\",\"IdHT\":\"1\",\"IdDriver\":\"1\",\"IdLokasiPRS\":\"1\",\"waktu\":\"2019-02-26T00:12\",\"Status\":\"1\"}','INSERT',1,'2019-02-26 07:04:11','2019-02-26 07:04:11'),(89,1,'{\"_method\":\"PATCH\",\"_token\":\"FnBeP001JdxzSC3jWOU4KSShET2xZtoRr3Qvotko\",\"IdGTM\":\"1\",\"IdHT\":\"1\",\"IdDriver\":\"1\",\"IdLokasiPRS\":\"1\",\"waktu\":\"2019-02-26T12:12\",\"Status\":\"1\"}','UPDATE',1,'2019-02-26 08:34:03','2019-02-26 08:34:03'),(90,1,'{\"_method\":\"PATCH\",\"_token\":\"FnBeP001JdxzSC3jWOU4KSShET2xZtoRr3Qvotko\",\"IdGTM\":\"1\",\"IdHT\":\"1\",\"IdDriver\":\"1\",\"IdLokasiPRS\":\"1\",\"Waktu\":\"2019-02-26T12:12\",\"Status\":\"1\"}','UPDATE',1,'2019-02-26 08:35:38','2019-02-26 08:35:38'),(91,1,'{\"_token\":\"wFqpPrsjjAzp3q301fuJouE9F6LirID5f8k0XYRL\",\"NamaPRS\":\"PRS Surabaya\",\"Kapasitas\":\"200\"}','INSERT',1,'2019-02-27 02:50:54','2019-02-27 02:50:54'),(92,1,'{\"_method\":\"PATCH\",\"_token\":\"wFqpPrsjjAzp3q301fuJouE9F6LirID5f8k0XYRL\",\"IdPRS\":\"2\",\"IdMS\":\"1\",\"Jarak\":\"200\",\"WaktuNormal\":\"2\",\"WaktuSedang\":\"3.5\",\"WaktuPadat\":\"6.2\"}','UPDATE',1,'2019-02-27 02:51:03','2019-02-27 02:51:03'),(93,1,'{\"_token\":\"teqHGToXDGQgLiBn0Xsb1nkUEaj16VydxhlsWeyV\",\"waktu\":\"28\\/02\\/2019 10:30\",\"IdPRS\":\"2\",\"IdHT\":\"1\",\"IdGTM\":\"1\",\"VBase\":\"12\",\"Vturbin\":\"21\",\"Flow\":\"223\",\"Temp\":\"345\",\"Pressure\":\"121\",\"TempGTM\":\"12\"}','INSERT',1,'2019-02-28 08:13:53','2019-02-28 08:13:53'),(94,1,'{\"_token\":\"teqHGToXDGQgLiBn0Xsb1nkUEaj16VydxhlsWeyV\",\"waktu\":\"28\\/02\\/2019 10:55\",\"IdPRS\":\"1\",\"IdHT\":\"1\",\"IdGTM\":\"1\",\"VBase\":\"23\",\"Vturbin\":\"12\",\"Flow\":\"12\",\"Temp\":\"34\",\"Pressure\":\"23\",\"TempGTM\":\"324\"}','INSERT',1,'2019-02-28 08:15:24','2019-02-28 08:15:24'),(95,1,'{\"_token\":\"teqHGToXDGQgLiBn0Xsb1nkUEaj16VydxhlsWeyV\",\"waktu\":\"2019\\/02\\/28 18:55\",\"IdPRS\":\"2\",\"IdHT\":\"1\",\"IdGTM\":\"1\",\"VBase\":\"12\",\"Vturbin\":\"23\",\"Flow\":\"34\",\"Temp\":\"45\",\"Pressure\":\"56\",\"TempGTM\":\"67\"}','INSERT',1,'2019-02-28 08:18:09','2019-02-28 08:18:09'),(96,1,'{\"_token\":\"teqHGToXDGQgLiBn0Xsb1nkUEaj16VydxhlsWeyV\",\"Waktu\":\"2019\\/02\\/28 13:45\",\"IdPRS\":\"2\",\"IdHT\":\"1\",\"IdGTM\":\"1\",\"VBase\":\"12\",\"Vturbin\":\"23\",\"Flow\":\"34\",\"Temp\":\"45\",\"Pressure\":\"56\",\"TempGTM\":\"78\"}','INSERT',1,'2019-02-28 08:19:23','2019-02-28 08:19:23'),(97,1,'{\"_method\":\"PATCH\",\"_token\":\"teqHGToXDGQgLiBn0Xsb1nkUEaj16VydxhlsWeyV\",\"Waktu\":\"2019\\/02\\/28 15:19\",\"IdPRS\":\"1\",\"IdHT\":\"1\",\"IdGTM\":\"1\",\"VBase\":\"12\",\"Vturbin\":\"23\",\"Flow\":\"34\",\"Temp\":\"45\",\"Pressure\":\"56\",\"TempGTM\":\"67\"}','UPDATE',1,'2019-02-28 08:21:05','2019-02-28 08:21:05'),(98,1,'{\"_method\":\"PATCH\",\"_token\":\"teqHGToXDGQgLiBn0Xsb1nkUEaj16VydxhlsWeyV\",\"NamaPRS\":\"PRS Tambak Aji\",\"Kapasitas\":\"200.12\"}','UPDATE',1,'2019-02-28 08:24:37','2019-02-28 08:24:37'),(99,1,'{\"_method\":\"PATCH\",\"_token\":\"teqHGToXDGQgLiBn0Xsb1nkUEaj16VydxhlsWeyV\",\"Waktu\":\"2019\\/02\\/28 15:19\",\"IdPRS\":\"1\",\"IdHT\":\"1\",\"IdGTM\":\"1\",\"VBase\":\"12\",\"Vturbin\":\"23\",\"Flow\":\"34\",\"Temp\":\"45\",\"Pressure\":\"56.12\",\"TempGTM\":\"67\"}','UPDATE',1,'2019-02-28 08:26:03','2019-02-28 08:26:03'),(100,1,'{\"_method\":\"PATCH\",\"_token\":\"1NT1DFIaT98TpDz3RXwC1IuQQfUz22aGbagPcXPk\",\"Waktu\":\"2019\\/02\\/28 15:19\",\"IdPRS\":\"1\",\"IdHT\":\"1\",\"IdGTM\":\"1\",\"VBase\":\"12\",\"Vturbin\":\"23\",\"Flow\":\"34\",\"Temp\":\"45\",\"PressureOutlet\":\"56.12\",\"PressureGTM\":\"12.2\",\"TempGTM\":\"67\"}','UPDATE',1,'2019-03-01 00:24:37','2019-03-01 00:24:37'),(101,1,'{\"_method\":\"PATCH\",\"_token\":\"1NT1DFIaT98TpDz3RXwC1IuQQfUz22aGbagPcXPk\",\"Waktu\":\"2019\\/02\\/28 13:45\",\"IdPRS\":\"2\",\"IdHT\":\"1\",\"IdGTM\":\"1\",\"VBase\":\"12\",\"Vturbin\":\"23\",\"Flow\":\"34\",\"Temp\":\"45\",\"PressureOutlet\":\"56\",\"PressureGTM\":\"56.0\",\"TempGTM\":\"78\"}','UPDATE',1,'2019-03-01 00:24:51','2019-03-01 00:24:51'),(102,3,'{\"_method\":\"PATCH\",\"_token\":\"1NT1DFIaT98TpDz3RXwC1IuQQfUz22aGbagPcXPk\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'31\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.index\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.create\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.delete\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.index\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.create\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.edit\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.delete\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.index\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.create\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.edit\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.delete\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.index\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.create\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.edit\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.delete\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.index\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.create\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.edit\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.delete\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.index\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.create\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.edit\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.delete\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.index\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.create\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.edit\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.delete\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.index\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.create\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.edit\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.delete\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.index\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.create\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.edit\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.delete\'}\"]}','UPDATE',1,'2019-03-01 01:03:56','2019-03-01 01:03:56'),(103,1,'{\"_token\":\"Q8RvDIFhXi7BncvbEhOtratmRcrZDZiXgBPbPQUC\",\"IdGTM\":\"1\",\"IdHT\":\"1\",\"Tanggalmasuk\":\"2019\\/03\\/21\",\"DO\":\"No\\/TGL\\/Bulan\\/01\",\"GHV\":\"12.20\",\"PressureAwal\":\"23.2\",\"PressureAkhir\":\"30\",\"Volume\":\"35.5\"}','INSERT',1,'2019-03-01 01:06:58','2019-03-01 01:06:58'),(104,1,'{\"_token\":\"Q8RvDIFhXi7BncvbEhOtratmRcrZDZiXgBPbPQUC\",\"IdGTM\":\"1\",\"IdHT\":\"1\",\"Tanggalmasuk\":\"2019\\/03\\/28\",\"DO\":\"No\\/TGL\\/Bulan\\/01\",\"GHV\":\"12.2\",\"PressureAwal\":\"30.2\",\"PressureAkhir\":\"25.1\",\"Volume\":\"50\"}','INSERT',1,'2019-03-01 01:28:41','2019-03-01 01:28:41'),(105,1,'{\"_token\":\"Q8RvDIFhXi7BncvbEhOtratmRcrZDZiXgBPbPQUC\",\"IdGTM\":\"1\",\"IdHT\":\"1\",\"TanggalMasuk\":\"2019\\/03\\/15\",\"DO\":\"No\\/TGL\\/Bulan\\/01\",\"GHV\":\"12.3\",\"PressureAwal\":\"12.3\",\"PressureAkhir\":\"12\",\"Volume\":\"12\"}','INSERT',1,'2019-03-01 01:29:17','2019-03-01 01:29:17'),(106,1,'{\"_token\":\"Q8RvDIFhXi7BncvbEhOtratmRcrZDZiXgBPbPQUC\",\"IdGTM\":\"1\",\"IdHT\":\"1\",\"Tanggalmasuk\":\"2019\\/03\\/08\",\"DO\":\"No\\/TGL\\/Bulan\\/01\",\"GHV\":\"12\",\"PressureAwal\":\"23.67\",\"PressureAkhir\":\"15.11\",\"Volume\":\"30\"}','INSERT',1,'2019-03-01 01:52:43','2019-03-01 01:52:43'),(107,3,'{\"_method\":\"PATCH\",\"_token\":\"gUyphY7JMFAXBdb8ppoR8TzS4Cqdk3tfIb3H3pbH\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'39\',\'action\':\'data-target.index\'}\",\"{\'id\':\'39\',\'action\':\'data-target.create\'}\",\"{\'id\':\'39\',\'action\':\'data-target.edit\'}\",\"{\'id\':\'39\',\'action\':\'data-target.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'31\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.index\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.create\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.delete\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.index\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.create\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.edit\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.delete\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.index\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.create\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.edit\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.delete\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.index\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.create\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.edit\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.delete\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.index\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.create\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.edit\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.delete\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.index\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.create\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.edit\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.delete\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.index\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.create\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.edit\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.delete\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.index\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.create\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.edit\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.delete\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.index\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.create\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.edit\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.delete\'}\"]}','UPDATE',1,'2019-03-05 06:24:04','2019-03-05 06:24:04'),(108,1,'{\"_token\":\"QPBmA5z6jCugvDEZzr0ZU4Nf6aAOqw7fNRZU5ist\",\"JenisTarget\":\"Nominasi\",\"Nilai\":\"12.2\",\"TanggalTarget\":\"2019\\/12\"}','INSERT',1,'2019-03-05 07:35:30','2019-03-05 07:35:30'),(109,1,'{\"_token\":\"QPBmA5z6jCugvDEZzr0ZU4Nf6aAOqw7fNRZU5ist\",\"JenisTarget\":\"Target(RKAP)\",\"Nilai\":\"12\",\"TanggalTarget\":\"2019\"}','INSERT',1,'2019-03-05 07:39:48','2019-03-05 07:39:48'),(110,1,'{\"_method\":\"PATCH\",\"_token\":\"QPBmA5z6jCugvDEZzr0ZU4Nf6aAOqw7fNRZU5ist\",\"JenisTarget\":\"Nominasi\",\"Nilai\":\"12.2\",\"TanggalTarget\":\"2019\\/02\"}','UPDATE',1,'2019-03-05 07:41:14','2019-03-05 07:41:14'),(111,1,'{\"_method\":\"PATCH\",\"_token\":\"QPBmA5z6jCugvDEZzr0ZU4Nf6aAOqw7fNRZU5ist\",\"JenisTarget\":\"Nominasi\",\"Nilai\":\"12.2\",\"TanggalTarget\":\"2019-02\"}','UPDATE',1,'2019-03-05 07:41:48','2019-03-05 07:41:48'),(112,1,'{\"_method\":\"PATCH\",\"_token\":\"QPBmA5z6jCugvDEZzr0ZU4Nf6aAOqw7fNRZU5ist\",\"JenisTarget\":\"Target(RKAP)\",\"Nilai\":\"12\",\"TanggalTarget\":\"2019\"}','UPDATE',1,'2019-03-05 07:41:58','2019-03-05 07:41:58'),(113,1,'{\"_token\":\"Olh9aFRkZC9gbOGcXHAEAOMKwUsIcO9T32ecnPiR\",\"NoHT\":\"HT02\",\"PlatNo\":\"L 20 T\"}','INSERT',1,'2019-03-11 07:01:07','2019-03-11 07:01:07'),(114,3,'{\"_method\":\"PATCH\",\"_token\":\"hfwFeTJRriwevzfttcx4pgtbFReEcCx0PLle1VkR\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'39\',\'action\':\'data-target.index\'}\",\"{\'id\':\'39\',\'action\':\'data-target.create\'}\",\"{\'id\':\'39\',\'action\':\'data-target.edit\'}\",\"{\'id\':\'39\',\'action\':\'data-target.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'31\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.index\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.create\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.delete\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.index\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.create\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.edit\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.delete\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.index\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.create\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.edit\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.delete\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.index\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.create\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.edit\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.delete\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.index\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.create\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.edit\'}\",\"{\'id\':\'34\',\'action\':\'master-lokasi-pelanggan.delete\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.index\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.create\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.edit\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.delete\'}\",\"{\'id\':\'40\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.index\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.create\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.edit\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.delete\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.index\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.create\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.edit\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.delete\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.index\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.create\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.edit\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.delete\'}\"]}','UPDATE',1,'2019-03-11 14:24:23','2019-03-11 14:24:23'),(115,1,'{\"_method\":\"PATCH\",\"_token\":\"MOerq3qfTNGit3MD1lBOxT8WCM4nFb5bFBhE3YWX\",\"Source\":null,\"IdGTM\":\"1\",\"IdHT\":\"2\",\"IdDriver\":\"1\",\"IdLokasiPRS\":\"1\",\"Waktu\":\"2019\\/02\\/26 12:12\",\"Status\":\"1\"}','UPDATE',1,'2019-03-11 15:14:19','2019-03-11 15:14:19'),(116,1,'\"1\"','DELETE',1,'2019-03-11 15:19:04','2019-03-11 15:19:04'),(117,1,'{\"_method\":\"PATCH\",\"_token\":\"MOerq3qfTNGit3MD1lBOxT8WCM4nFb5bFBhE3YWX\",\"NoHT\":\"HT020\",\"PlatNo\":\"L 20 T\"}','UPDATE',1,'2019-03-11 15:25:49','2019-03-11 15:25:49'),(118,1,'{\"_method\":\"PATCH\",\"_token\":\"MOerq3qfTNGit3MD1lBOxT8WCM4nFb5bFBhE3YWX\",\"NoHT\":\"HT002\",\"PlatNo\":\"L 20 T\"}','UPDATE',1,'2019-03-11 15:25:56','2019-03-11 15:25:56'),(119,1,'{\"_method\":\"PATCH\",\"_token\":\"MOerq3qfTNGit3MD1lBOxT8WCM4nFb5bFBhE3YWX\",\"NoHT\":\"HT002\",\"PlatNo\":\"L 20 A\"}','UPDATE',1,'2019-03-11 15:50:12','2019-03-11 15:50:12'),(120,1,'{\"_method\":\"PATCH\",\"_token\":\"tkhmyleLlJExHUldg48unefLXQnq6LWu8lynEqZR\",\"IdMS\":\"1\",\"Tanggalmasuk\":\"2019\\/03\\/12\",\"DO\":\"No\\/TGL\\/Bulan\\/01\",\"IdGTM\":\"1\",\"IdHT\":\"1\",\"GHV\":\"12\",\"PressureAwal\":\"12\",\"PressureAkhir\":\"12\",\"Volume\":\"12\",\"detId\":[\"1\",\"2\"],\"IdPRS\":[\"2\",\"2\"]}','UPDATE',1,'2019-03-11 17:34:44','2019-03-11 17:34:44'),(121,1,'\"2\"','DELETE',1,'2019-03-11 18:25:57','2019-03-11 18:25:57'),(122,1,'\"2\"','DELETE',1,'2019-03-11 18:28:27','2019-03-11 18:28:27'),(123,1,'\"2\"','DELETE',1,'2019-03-11 18:28:30','2019-03-11 18:28:30'),(124,1,'\"2\"','DELETE',1,'2019-03-11 18:28:41','2019-03-11 18:28:41'),(125,1,'\"2\"','DELETE',1,'2019-03-11 18:29:18','2019-03-11 18:29:18'),(126,1,'\"1\"','DELETE',1,'2019-03-11 19:22:26','2019-03-11 19:22:26'),(127,3,'{\"_method\":\"PATCH\",\"_token\":\"APqpxt40VB9d1dPNtO4cP9eb3GIimAtK1sd29Iw6\",\"Name\":\"Admin\",\"Description\":\"View\\/Add\\/Update\",\"UserAccess\":[\"{\'id\':\'15\'}\",\"{\'id\':\'17\'}\",\"{\'id\':\'3\',\'action\':\'type-user.index\'}\",\"{\'id\':\'3\',\'action\':\'type-user.create\'}\",\"{\'id\':\'3\',\'action\':\'type-user.edit\'}\",\"{\'id\':\'3\',\'action\':\'type-user.delete\'}\",\"{\'id\':\'4\',\'action\':\'users.index\'}\",\"{\'id\':\'4\',\'action\':\'users.create\'}\",\"{\'id\':\'4\',\'action\':\'users.edit\'}\",\"{\'id\':\'4\',\'action\':\'users.delete\'}\",\"{\'id\':\'9\',\'action\':\'employee.index\'}\",\"{\'id\':\'9\',\'action\':\'employee.create\'}\",\"{\'id\':\'9\',\'action\':\'employee.edit\'}\",\"{\'id\':\'9\',\'action\':\'employee.delete\'}\",\"{\'id\':\'26\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.index\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.create\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.edit\'}\",\"{\'id\':\'27\',\'action\':\'master-pelanggan.delete\'}\",\"{\'id\':\'39\',\'action\':\'data-target.index\'}\",\"{\'id\':\'39\',\'action\':\'data-target.create\'}\",\"{\'id\':\'39\',\'action\':\'data-target.edit\'}\",\"{\'id\':\'39\',\'action\':\'data-target.delete\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.index\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.create\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.edit\'}\",\"{\'id\':\'28\',\'action\':\'entry-data-meter.delete\'}\",\"{\'id\':\'31\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.index\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.create\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.edit\'}\",\"{\'id\':\'29\',\'action\':\'master-gtm.delete\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.index\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.create\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.edit\'}\",\"{\'id\':\'30\',\'action\':\'master-head-truck.delete\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.index\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.create\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.edit\'}\",\"{\'id\':\'32\',\'action\':\'master-prs.delete\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.index\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.create\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.edit\'}\",\"{\'id\':\'33\',\'action\':\'master-mother-station.delete\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.index\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.create\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.edit\'}\",\"{\'id\':\'35\',\'action\':\'master-driver.delete\'}\",\"{\'id\':\'40\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.index\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.create\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.edit\'}\",\"{\'id\':\'38\',\'action\':\'data-ms.delete\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.index\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.create\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.edit\'}\",\"{\'id\':\'36\',\'action\':\'data-gtm.delete\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.index\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.create\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.edit\'}\",\"{\'id\':\'37\',\'action\':\'data-cater.delete\'}\"]}','UPDATE',1,'2019-03-14 04:31:00','2019-03-14 04:31:00'),(128,1,'{\"_token\":\"kKq5VNXBt3yDXhhPtwloOjFeV9Rsm0dTZWEu6Kyz\",\"NoGTM\":\"GTM02\",\"LWC\":\"17761\",\"KapasitasGTM\":\"10\"}','INSERT',1,'2019-03-14 08:49:34','2019-03-14 08:49:34'),(129,1,'{\"_token\":\"kKq5VNXBt3yDXhhPtwloOjFeV9Rsm0dTZWEu6Kyz\",\"NoGTM\":\"GTM03\",\"LWC\":\"17725\",\"KapasitasGTM\":\"20\"}','INSERT',1,'2019-03-14 08:50:20','2019-03-14 08:50:20'),(130,1,'{\"_token\":\"kKq5VNXBt3yDXhhPtwloOjFeV9Rsm0dTZWEu6Kyz\",\"NoHT\":\"HT003\",\"PlatNo\":\"B 43 L\"}','INSERT',1,'2019-03-14 08:50:45','2019-03-14 08:50:45'),(131,1,'{\"_token\":\"kKq5VNXBt3yDXhhPtwloOjFeV9Rsm0dTZWEu6Kyz\",\"NamaPRS\":\"PRS IndoFood\",\"Kapasitas\":\"1000\"}','INSERT',1,'2019-03-14 08:51:03','2019-03-14 08:51:03'),(132,1,'{\"_method\":\"PATCH\",\"_token\":\"kKq5VNXBt3yDXhhPtwloOjFeV9Rsm0dTZWEu6Kyz\",\"NamaPRS\":\"PRS IndoFood\",\"Kapasitas\":\"100\"}','UPDATE',1,'2019-03-14 08:51:09','2019-03-14 08:51:09'),(133,1,'{\"_token\":\"kKq5VNXBt3yDXhhPtwloOjFeV9Rsm0dTZWEu6Kyz\",\"NamaMS\":\"SPBG Purwakarta\",\"KapasitasMS\":\"1000\"}','INSERT',1,'2019-03-14 08:51:23','2019-03-14 08:51:23'),(134,1,'{\"_token\":\"kKq5VNXBt3yDXhhPtwloOjFeV9Rsm0dTZWEu6Kyz\",\"NamaDriver\":\"Sujiwo\",\"NoKTP\":\"1256456542\",\"NoHP\":\"07743284\"}','INSERT',1,'2019-03-14 08:55:15','2019-03-14 08:55:15'),(135,1,'{\"_token\":\"kKq5VNXBt3yDXhhPtwloOjFeV9Rsm0dTZWEu6Kyz\",\"NamaDriver\":\"Suniwo\",\"NoKTP\":\"3298463287\",\"NoHP\":\"23876274\"}','INSERT',1,'2019-03-14 08:55:26','2019-03-14 08:55:26');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterdriver`
--

DROP TABLE IF EXISTS `masterdriver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterdriver` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NamaDriver` varchar(255) DEFAULT NULL,
  `NoKTP` varchar(255) DEFAULT NULL,
  `NoHP` varchar(255) DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterdriver`
--

LOCK TABLES `masterdriver` WRITE;
/*!40000 ALTER TABLE `masterdriver` DISABLE KEYS */;
INSERT INTO `masterdriver` VALUES (1,'Suwito','1423199902','0821229191',1,'2019-02-26 02:52:45','2019-02-26 02:52:45',1),(2,'Sujiwo','1256456542','07743284',1,'2019-03-14 08:55:15','2019-03-14 08:55:15',1),(3,'Suniwo','3298463287','23876274',1,'2019-03-14 08:55:26','2019-03-14 08:55:26',1);
/*!40000 ALTER TABLE `masterdriver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mastergtm`
--

DROP TABLE IF EXISTS `mastergtm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mastergtm` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NoGTM` varchar(255) DEFAULT NULL,
  `LWC` double DEFAULT NULL,
  `KapasitasGTM` double DEFAULT NULL,
  `Status` int(11) DEFAULT '9',
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mastergtm`
--

LOCK TABLES `mastergtm` WRITE;
/*!40000 ALTER TABLE `mastergtm` DISABLE KEYS */;
INSERT INTO `mastergtm` VALUES (1,'GTM01',17760,20,4,1,'2019-02-25 23:44:05','2019-03-12 18:10:50',1),(2,'GTM02',17761,10,9,1,'2019-03-14 08:49:34','2019-03-14 08:49:34',1),(3,'GTM03',17725,20,9,1,'2019-03-14 08:50:20','2019-03-14 08:50:20',1);
/*!40000 ALTER TABLE `mastergtm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterheadtruck`
--

DROP TABLE IF EXISTS `masterheadtruck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterheadtruck` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NoHT` varchar(255) DEFAULT NULL,
  `PlatNo` varchar(255) DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterheadtruck`
--

LOCK TABLES `masterheadtruck` WRITE;
/*!40000 ALTER TABLE `masterheadtruck` DISABLE KEYS */;
INSERT INTO `masterheadtruck` VALUES (1,'HT001','M 43 L',1,'2019-02-26 00:11:14','2019-02-26 00:11:14',1),(2,'HT002','L 20 A',1,'2019-03-11 07:01:08','2019-03-11 15:50:13',1),(3,'HT003','B 43 L',1,'2019-03-14 08:50:45','2019-03-14 08:50:45',1);
/*!40000 ALTER TABLE `masterheadtruck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterlokasipelanggan`
--

DROP TABLE IF EXISTS `masterlokasipelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterlokasipelanggan` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPRS` int(11) DEFAULT NULL,
  `IdMS` int(11) DEFAULT NULL,
  `Jarak` double DEFAULT NULL,
  `WaktuNormal` double DEFAULT NULL,
  `WaktuSedang` double DEFAULT NULL,
  `WaktuPadat` double DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterlokasipelanggan`
--

LOCK TABLES `masterlokasipelanggan` WRITE;
/*!40000 ALTER TABLE `masterlokasipelanggan` DISABLE KEYS */;
INSERT INTO `masterlokasipelanggan` VALUES (1,2,1,200,2,3.5,6.2,1,'2019-02-26 03:24:36','2019-02-26 03:24:36',1);
/*!40000 ALTER TABLE `masterlokasipelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mastermotherstation`
--

DROP TABLE IF EXISTS `mastermotherstation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mastermotherstation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NamaMS` varchar(255) DEFAULT NULL,
  `KapasitasMS` double DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mastermotherstation`
--

LOCK TABLES `mastermotherstation` WRITE;
/*!40000 ALTER TABLE `mastermotherstation` DISABLE KEYS */;
INSERT INTO `mastermotherstation` VALUES (1,'SPBG Ngagel',2000.45,1,'2019-02-26 01:58:15','2019-02-26 01:58:15',1),(2,'SPBG Purwakarta',1000,1,'2019-03-14 08:51:23','2019-03-14 08:51:23',1);
/*!40000 ALTER TABLE `mastermotherstation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterpelanggan`
--

DROP TABLE IF EXISTS `masterpelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterpelanggan` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdPelanggan` varchar(25) DEFAULT NULL,
  `NamaPelanggan` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `NilaiKontrak` double DEFAULT '0',
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterpelanggan`
--

LOCK TABLES `masterpelanggan` WRITE;
/*!40000 ALTER TABLE `masterpelanggan` DISABLE KEYS */;
INSERT INTO `masterpelanggan` VALUES (1,NULL,'DARAT CV',NULL,0,1,'2019-02-25 05:16:34','2019-02-25 05:16:34',1),(2,NULL,'CV DARAT II',NULL,0,1,'2019-02-25 08:49:49','2019-02-25 08:49:49',1),(3,NULL,'PT INDOFOOD CBP SUKSES MAMKMUR TBK FOOD INGREDIENTS DIVISION',NULL,0,1,'2019-02-25 08:49:58','2019-02-25 08:49:58',1),(4,NULL,'PT. AQUAFARM NUSANTARA',NULL,0,1,'2019-02-25 09:35:48','2019-02-25 09:35:48',1),(5,NULL,'PT. KENKYO FOODS TECH INDUSTRY',NULL,NULL,1,'2019-02-25 09:44:23','2019-02-25 09:44:23',1),(6,NULL,'CARGIL INDONESIA',NULL,0,1,'2019-02-25 09:48:02','2019-02-25 09:48:02',1);
/*!40000 ALTER TABLE `masterpelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterprs`
--

DROP TABLE IF EXISTS `masterprs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterprs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPRS` varchar(255) DEFAULT NULL,
  `Kapasitas` int(11) DEFAULT NULL,
  `UserEntry` int(11) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) DEFAULT '1',
  KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterprs`
--

LOCK TABLES `masterprs` WRITE;
/*!40000 ALTER TABLE `masterprs` DISABLE KEYS */;
INSERT INTO `masterprs` VALUES (1,'PRS Tambak Aji',200,1,'2019-02-26 00:25:19','2019-02-26 00:25:19',1),(2,'PRS Surabaya',200,1,'2019-02-27 02:50:54','2019-02-27 02:50:54',1),(3,'PRS IndoFood',100,1,'2019-03-14 08:51:03','2019-03-14 08:51:09',1);
/*!40000 ALTER TABLE `masterprs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterstatus`
--

DROP TABLE IF EXISTS `masterstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterstatus` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NamaStatus` varchar(250) DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) NOT NULL DEFAULT '1',
  `UserEntry` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterstatus`
--

LOCK TABLES `masterstatus` WRITE;
/*!40000 ALTER TABLE `masterstatus` DISABLE KEYS */;
INSERT INTO `masterstatus` VALUES (1,'IN M/S - StandBy','2019-03-11 19:36:27','2019-03-11 19:40:05',1,0),(2,'IN M/S -> Antri','2019-03-11 19:36:43','2019-03-11 20:01:23',1,0),(3,'IN M/S - Connect','2019-03-11 19:37:19','2019-03-11 20:01:22',1,0),(4,'Out MS -> Menuju PRS\r\n','2019-03-11 19:38:06','2019-03-11 20:01:06',1,0),(5,'IN PRS - Standby','2019-03-11 19:38:13','2019-03-11 20:00:53',1,0),(6,'IN PRS - Connect','2019-03-11 19:39:04','2019-03-11 20:00:46',1,0),(7,'Out PRS -> Menuju PRS','2019-03-11 19:39:26','2019-03-14 03:00:13',1,0),(8,'Out PRS -> Menuju Mother Station','2019-03-11 19:42:53','2019-03-14 03:00:11',1,0),(9,'Menunggu','2019-03-11 19:42:58','2019-03-12 18:13:09',1,0),(10,'Open','2019-03-12 18:12:42','2019-03-12 18:13:12',1,0),(11,'Closed','2019-03-12 18:13:15','2019-03-12 18:13:15',1,0);
/*!40000 ALTER TABLE `masterstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Parent` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(250) DEFAULT NULL,
  `Description` text,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UserEntry` int(11) NOT NULL,
  `Actived` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,16,'Provinsi','Master Provinsi','2017-11-15 07:15:13','2017-12-20 03:58:48',1,1),(2,16,'Kabupaten','Master Kabupaten','2017-11-15 07:15:59','2017-12-20 03:50:01',1,1),(3,17,'Type User','Master Type User','2017-11-15 07:17:05','2017-12-20 03:50:07',1,1),(4,17,'User','Master User','2017-11-15 07:24:18','2017-12-20 03:50:08',1,1),(9,17,'Karyawan','Master Karyawan','2017-12-07 14:31:30','2019-02-25 04:05:32',1,1),(14,0,'Master Module','Master Module','2017-12-20 03:27:41','2017-12-20 03:47:59',1,1),(15,0,'Master Data','Master Data','2017-12-20 03:47:26','2017-12-20 03:48:00',1,1),(16,15,'Lokasi','Master Lokasi','2017-12-20 03:47:41','2017-12-20 03:49:51',1,1),(17,15,'User','Master User','2017-12-20 03:47:53','2017-12-20 03:49:53',1,1),(23,14,'Module','Menyimpan Data Module','2017-12-28 14:32:59','2018-07-04 11:24:08',4,1),(25,14,'History Data',NULL,'2019-02-25 04:07:41','2019-02-25 04:07:41',0,1);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_user`
--

DROP TABLE IF EXISTS `type_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` text,
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Actived` int(11) NOT NULL DEFAULT '1',
  `UserEntry` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_user`
--

LOCK TABLES `type_user` WRITE;
/*!40000 ALTER TABLE `type_user` DISABLE KEYS */;
INSERT INTO `type_user` VALUES (1,'Administrator Program','Administrators','2018-07-04 11:13:05','2019-02-21 01:51:36',1,1),(2,'Admin','View/Add/Update','2018-07-04 11:51:38','2019-02-21 01:51:47',1,4);
/*!40000 ALTER TABLE `type_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_access`
--

DROP TABLE IF EXISTS `user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_access` (
  `IdTypeUser` int(11) NOT NULL,
  `IdModule` int(11) NOT NULL,
  `Action` text,
  PRIMARY KEY (`IdTypeUser`,`IdModule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access`
--

LOCK TABLES `user_access` WRITE;
/*!40000 ALTER TABLE `user_access` DISABLE KEYS */;
INSERT INTO `user_access` VALUES (1,1,'[\"province.delete\",\"province.edit\",\"province.create\",\"province.index\",\"province.show\"]'),(1,2,'[\"kokab.delete\",\"kokab.edit\",\"kokab.create\",\"kokab.index\",\"kokab.show\"]'),(1,3,'[\"type-user.delete\",\"type-user.edit\",\"type-user.create\",\"type-user.index\",\"type-user.show\"]'),(1,4,'[\"users.delete\",\"users.edit\",\"users.create\",\"users.index\",\"users.show\"]'),(1,9,'[\"employee.delete\",\"employee.edit\",\"employee.create\",\"employee.index\",\"employee.show\"]'),(1,14,NULL),(1,15,NULL),(1,16,NULL),(1,17,NULL),(1,23,'[\"master-module.delete\",\"master-module.edit\",\"master-module.create\",\"master-module.index\",\"master-module.show\"]'),(1,25,'[\"history-table.delete\",\"history-table.edit\",\"history-table.create\",\"history-table.index\",\"history-table.show\"]'),(1,26,'[\"entry-data-meter.delete\",\"entry-data-meter.edit\",\"entry-data-meter.create\",\"entry-data-meter.index\",\"entry-data-meter.show\"]'),(1,27,'[\"master-pelanggan.delete\",\"master-pelanggan.edit\",\"master-pelanggan.create\",\"master-pelanggan.index\",\"master-pelanggan.show\"]'),(2,3,'[\"type-user.delete\",\"type-user.edit\",\"type-user.create\",\"type-user.index\",\"type-user.show\"]'),(2,4,'[\"users.delete\",\"users.edit\",\"users.create\",\"users.index\",\"users.show\"]'),(2,9,'[\"employee.delete\",\"employee.edit\",\"employee.create\",\"employee.index\",\"employee.show\"]'),(2,15,NULL),(2,17,NULL),(2,26,NULL),(2,27,'[\"master-pelanggan.delete\",\"master-pelanggan.edit\",\"master-pelanggan.create\",\"master-pelanggan.index\",\"master-pelanggan.show\"]'),(2,28,'[\"entry-data-meter.delete\",\"entry-data-meter.edit\",\"entry-data-meter.create\",\"entry-data-meter.index\",\"entry-data-meter.show\"]'),(2,29,'[\"master-gtm.delete\",\"master-gtm.edit\",\"master-gtm.create\",\"master-gtm.index\",\"master-gtm.show\"]'),(2,30,'[\"master-head-truck.delete\",\"master-head-truck.edit\",\"master-head-truck.create\",\"master-head-truck.index\",\"master-head-truck.show\"]'),(2,31,NULL),(2,32,'[\"master-prs.delete\",\"master-prs.edit\",\"master-prs.create\",\"master-prs.index\",\"master-prs.show\"]'),(2,33,'[\"master-mother-station.delete\",\"master-mother-station.edit\",\"master-mother-station.create\",\"master-mother-station.index\",\"master-mother-station.show\"]'),(2,35,'[\"master-driver.delete\",\"master-driver.edit\",\"master-driver.create\",\"master-driver.index\",\"master-driver.show\"]'),(2,36,'[\"data-gtm.delete\",\"data-gtm.edit\",\"data-gtm.create\",\"data-gtm.index\",\"data-gtm.show\"]'),(2,37,'[\"data-cater.delete\",\"data-cater.edit\",\"data-cater.create\",\"data-cater.index\",\"data-cater.show\"]'),(2,38,'[\"data-ms.delete\",\"data-ms.edit\",\"data-ms.create\",\"data-ms.index\",\"data-ms.show\"]'),(2,39,'[\"data-target.delete\",\"data-target.edit\",\"data-target.create\",\"data-target.index\",\"data-target.show\"]'),(2,40,NULL);
/*!40000 ALTER TABLE `user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdEmploye` int(11) NOT NULL,
  `UserName` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` text COLLATE utf8mb4_unicode_ci,
  `Remember_Token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TypeUser` int(11) NOT NULL DEFAULT '0',
  `ApiToken` text COLLATE utf8mb4_unicode_ci,
  `Actived` int(11) NOT NULL DEFAULT '1',
  `CreateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdateAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UserEntry` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','eyJpdiI6Ilg0VWdjemFLN0xDXC9kSkpjSkZpeW5RPT0iLCJ2YWx1ZSI6IjRpMWhzR2M3Y0FpalRkZnJJRjJSWFE9PSIsIm1hYyI6IjQ5MzNhMTExZDNiNDQwYzU4ZmQxMWQ5MmQwZTU3OTVjYWFkMmZkYjg3ZmFhODI1MTkyMmI0ZTU1MzEyMDdlYTgifQ==',NULL,2,NULL,1,'2019-02-21 01:51:56','2019-02-21 01:51:56',1),(2,2,'najib','eyJpdiI6IkJIMDJnRWxkWWJyUVZVcEVmQ3N6VFE9PSIsInZhbHVlIjoiR1wvVmhPTDRzSGNYWVwvQytTWDc1RzRnPT0iLCJtYWMiOiI5MjdmMzM2N2JhN2FjMjgxNTcyYmIyOWYxYTI4YjNmM2NhY2M1YmI0Yjk3NGYyYmRjZjZjNWZiY2I3MTBiYmQyIn0=',NULL,1,NULL,1,'2019-02-21 01:49:54','2019-02-21 01:49:54',4),(3,3,'Imun','eyJpdiI6IjVkUU1uM3FBWXRxU1RZM05tM1RZV0E9PSIsInZhbHVlIjoicElITHpzZ2UrYUdZNkpJNWZcLzlCUXc9PSIsIm1hYyI6IjFjOWUxZDYxODQxMzkzMGNhMzYwZmU5ZTlmYTljZWYwYjI0ZTJkNGQ2YTNkYThhNzRlZDgzYzViMmEwYWMwN2MifQ==',NULL,1,NULL,0,'2019-02-21 07:43:19','2019-02-21 07:43:19',1),(4,5,'imun','eyJpdiI6InJTcWxTMjNIVzMyZFVzSWxKUElQN0E9PSIsInZhbHVlIjoiSGttZFwvakJLcFl0YUQrSTRZaUZmeEE9PSIsIm1hYyI6IjNlZDEzN2FhZjc5YzkwNDI5YTJiMDA0ZDdhNzYwYWJmNGExMWQwYjdjMTk3ZmZhMTA0NGQ4OTY0ZDEyNThlOTIifQ==',NULL,1,NULL,0,'2019-02-21 07:50:05','2019-02-21 07:50:05',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-20  3:33:06
