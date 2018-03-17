-- MySQL dump 10.13  Distrib 5.5.58, for Linux (x86_64)
--
-- Host: localhost    Database: chat
-- ------------------------------------------------------
-- Server version	5.5.58

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
-- Table structure for table `ad_admin`
--

DROP TABLE IF EXISTS `ad_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员姓名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `lastip` varchar(16) DEFAULT '' COMMENT '上次登录',
  `curentip` varchar(16) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(20) DEFAULT NULL,
  `addtime` int(8) NOT NULL,
  `group_id` int(8) DEFAULT NULL COMMENT '分组ID',
  `lastlogin` int(8) DEFAULT NULL,
  `currentlogin` int(8) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '是否禁用该帐号',
  `isonline` int(1) NOT NULL DEFAULT '0' COMMENT '1已登录在线，0不登录在线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_admin`
--

LOCK TABLES `ad_admin` WRITE;
/*!40000 ALTER TABLE `ad_admin` DISABLE KEYS */;
INSERT INTO `ad_admin` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','10.28.0.59','10.28.0.59',NULL,NULL,NULL,11111111,NULL,1517296029,1517296045,1,1);
/*!40000 ALTER TABLE `ad_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_log`
--

DROP TABLE IF EXISTS `ad_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_log` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `admin_id` int(4) NOT NULL COMMENT '管理员id',
  `operation` varchar(255) NOT NULL COMMENT '操作标注',
  `ip` varchar(15) NOT NULL COMMENT '操作ip',
  `time` int(8) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_log`
--

LOCK TABLES `ad_log` WRITE;
/*!40000 ALTER TABLE `ad_log` DISABLE KEYS */;
INSERT INTO `ad_log` VALUES (19,1,'登录成功！','10.28.0.60',1516082223),(20,1,'登录成功！','10.28.0.60',1516082240),(21,1,'登录成功！','10.28.0.60',1516082399),(22,1,'登录成功！','10.28.0.60',1516082453),(23,1,'登录成功！','10.28.0.60',1516086332),(24,1,'登录成功！','10.28.0.60',1516086341),(25,1,'登录成功！','10.28.0.60',1516086345),(26,1,'登录成功！','10.28.0.60',1516086614),(27,1,'登录成功！','10.28.0.60',1516086627),(28,1,'登录成功！','10.28.0.60',1516086710),(29,1,'登录成功！','10.28.0.60',1516087329),(30,1,'登录成功！','10.28.0.60',1516087810),(31,1,'登录成功！','10.28.0.60',1516087854),(32,1,'登录成功！','10.28.0.60',1516087859),(33,1,'登录成功！','10.28.0.60',1516087890),(34,1,'登录成功！','10.28.0.60',1516087895),(35,1,'登录成功！','10.28.0.60',1516087913),(36,1,'登录成功！','10.28.0.60',1516087942),(37,1,'登录成功！','10.28.0.60',1516087948),(38,1,'登录成功！','10.28.0.60',1516087953),(39,1,'登录成功！','10.28.0.60',1516088009),(40,1,'登录成功！','10.28.0.60',1516088032),(41,1,'登录成功！','10.28.0.60',1516088059),(42,1,'登录成功！','10.28.0.60',1516088124),(43,1,'登录成功！','10.28.0.60',1516088137),(44,1,'登录成功！','10.28.0.60',1516088159),(45,1,'登录成功！','10.28.0.60',1516088181),(46,1,'登录成功！','10.28.0.60',1516088187),(47,1,'登录成功！','10.28.0.60',1516088216),(48,1,'登录成功！','10.28.0.60',1516088258),(49,1,'登录成功！','10.28.0.60',1516088275),(50,1,'登录成功！','10.28.0.60',1516088380),(51,1,'登录成功！','10.28.0.60',1516088397),(52,1,'登录成功！','10.28.0.60',1516088458),(53,1,'登录成功！','10.28.0.60',1516090511),(54,1,'登录成功！','10.28.0.60',1516090532),(55,1,'登录成功！','10.28.0.60',1516090552),(56,1,'登录成功！','10.28.0.60',1516090979),(57,1,'登录成功！','10.28.0.60',1516090996),(58,1,'登录成功！','10.28.0.60',1516091290),(59,1,'登录成功！','10.28.0.60',1516091364),(60,1,'登录成功！','10.28.0.62',1516343084),(61,1,'登录成功！','10.28.0.62',1516343221),(62,1,'登录成功！','10.28.0.62',1516343273),(63,1,'已退出登录！','10.28.0.62',1516343275),(64,1,'登录成功！','10.28.0.62',1516343791),(65,1,'已退出登录！','10.28.0.62',1516343793),(66,1,'登录成功！','10.28.0.62',1516343979),(67,1,'已退出登录！','10.28.0.62',1516344078),(68,1,'登录成功！','10.28.0.62',1516344087),(69,1,'登录成功！','10.28.0.59',1516850872),(70,1,'已退出登录！','10.28.0.59',1516851479),(71,1,'登录成功！','10.28.0.59',1516863824),(72,1,'已退出登录！','10.28.0.59',1516929772),(73,1,'登录成功！','10.28.0.59',1516931455),(74,1,'已退出登录！','10.28.0.59',1516931523),(75,1,'登录成功！','10.28.0.59',1516931526),(76,1,'已退出登录！','10.28.0.59',1516931542),(77,1,'登录成功！','10.28.0.59',1516932161),(78,1,'已退出登录！','10.28.0.59',1516932171),(79,1,'登录成功！','10.28.0.59',1516932174),(80,1,'已退出登录！','10.28.0.59',1516932177),(81,1,'登录成功！','10.28.0.59',1516932180),(82,1,'登录成功！','10.28.0.59',1517041845),(83,1,'已退出登录！','10.28.0.59',1517041930),(84,1,'登录成功！','10.28.0.59',1517041933),(85,1,'已退出登录！','10.28.0.59',1517041937),(86,1,'登录成功！','10.28.0.59',1517042178),(87,1,'登录成功！','10.28.0.59',1517186339),(88,1,'登录成功！','10.28.0.59',1517295740),(89,1,'登录成功！','10.28.0.59',1517295920),(90,1,'登录成功！','10.28.0.59',1517296029),(91,1,'登录成功！','10.28.0.59',1517296045);
/*!40000 ALTER TABLE `ad_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_swp`
--

DROP TABLE IF EXISTS `ad_swp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_swp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  `client_id` varchar(20) NOT NULL COMMENT '连接id',
  `type` varchar(60) NOT NULL COMMENT '要调用的方法名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础数据推送消息队列';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_swp`
--

LOCK TABLES `ad_swp` WRITE;
/*!40000 ALTER TABLE `ad_swp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_swp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-12  9:18:10
