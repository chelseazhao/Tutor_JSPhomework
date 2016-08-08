-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: manage
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `Num` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Uno` int(10) unsigned DEFAULT NULL,
  `RUno` int(10) unsigned DEFAULT NULL,
  `RUname` varchar(30) DEFAULT NULL,
  `Umessage` varchar(200) DEFAULT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Num`),
  KEY `FK_Uno` (`Uno`),
  KEY `FK_RUno` (`RUno`),
  CONSTRAINT `FK_RUno` FOREIGN KEY (`RUno`) REFERENCES `user` (`Uno`),
  CONSTRAINT `FK_Uno` FOREIGN KEY (`Uno`) REFERENCES `user` (`Uno`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (2,14,1,'admin','hello','2015-11-19 11:27:36'),(4,1,14,'王传雯','thank you!','2015-11-19 15:19:28'),(5,1,14,'王传雯','thank you!','2015-11-20 10:52:37'),(12,14,17,'李明','a','2016-01-12 11:04:13'),(13,17,14,'王传雯','ok','2016-01-12 11:04:38');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mystudent`
--

DROP TABLE IF EXISTS `mystudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mystudent` (
  `Num` int(10) NOT NULL AUTO_INCREMENT,
  `Uno` int(10) unsigned DEFAULT NULL,
  `Sno` int(10) unsigned DEFAULT NULL,
  `Sname` varchar(30) DEFAULT NULL,
  `SSex` char(2) DEFAULT NULL,
  `Ssubject` varchar(30) DEFAULT NULL,
  `Sdegree` varchar(10) DEFAULT NULL,
  `Uname` varchar(30) DEFAULT NULL,
  `Usex` char(2) DEFAULT NULL,
  `Usubject` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mystudent`
--

LOCK TABLES `mystudent` WRITE;
/*!40000 ALTER TABLE `mystudent` DISABLE KEYS */;
INSERT INTO `mystudent` VALUES (1,14,17,'李明','m','数学','初中','王传雯','f','数学');
/*!40000 ALTER TABLE `mystudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `Num` int(11) NOT NULL AUTO_INCREMENT,
  `Osno` int(11) DEFAULT NULL,
  `Otno` int(11) DEFAULT NULL,
  `Omoney` decimal(10,2) DEFAULT NULL,
  `Ostatus` varchar(2) DEFAULT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,17,14,500.00,'T','2016-01-12 16:34:40');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Uno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Uemail` varchar(50) DEFAULT NULL,
  `Upassword` varchar(20) DEFAULT NULL,
  `Uname` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Usex` char(2) DEFAULT NULL,
  `Uage` varchar(5) DEFAULT NULL,
  `Uid` varchar(20) DEFAULT NULL,
  `Uregion` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Uphoto` varchar(100) DEFAULT NULL,
  `Uschool` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Umajor` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Usubject` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Usalary` varchar(15) DEFAULT NULL,
  `Uintro` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Utype` char(3) DEFAULT NULL,
  `uphone` varchar(20) DEFAULT NULL,
  `udegree` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Uno`),
  UNIQUE KEY `Uemail` (`Uemail`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@163.com','12345',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'zhaoan@163.com','12345','Zhao An','f','20','111111111111111111','bj',NULL,'RUC','Computer','math','100','good','t','88888888888','xs'),(14,'wangchuanwen@126.com','12345','王传雯','f','20','333333333333333333','北京','1448014987289chuanwen.jpg','中国人民大学','数学','数学','110-130','啊','t','66666666666','学士'),(15,'zhang@163.com','12345','张一','m','23','000000000000000000','河北',NULL,'河北大学','中文','语文','70-90','细心','t','22222222222','硕士'),(16,'zhangxin@163.com','12345','张馨','f','20','777777777777777777','山东',NULL,'山东大学','理论物理学','物理','130-150','非帅勿扰','t','99999999999','硕士'),(17,'student@qq.com','12345','李明','m','13','100000000000000000','北京',NULL,'null','null','物理','null','null','s','13333333333','初中'),(19,'wangdandan@qq.com','12345','王丹丹','f','20','77777777777777777','河南',NULL,'中国人民大学','计算机科学与技术','化学','130-150','喜欢教学，有经验','t','33233333333','学士'),(20,'wujing@163.com','12345','吴婧','f','20','1222223333343','北京','1451284001979908fa0ec08fa513d458f97c93d6d55fbb2fbd984.jpg','中国人民大学','历史','历史','110-130','认真','t','66666666','学士');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-13 18:43:15
