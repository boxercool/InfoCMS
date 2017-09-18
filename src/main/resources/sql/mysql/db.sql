CREATE DATABASE  IF NOT EXISTS `sample123456` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sample123456`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: sample123456
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(45) default NULL,
  `thumbnailFilename` varchar(45) default NULL,
  `newFilename` varchar(45) default NULL,
  `contentType` varchar(45) default NULL,
  `size_` int(11) default NULL,
  `thumbnailSize` int(11) default NULL,
  `dateCreated` timestamp NULL default NULL,
  `lastUpdated` timestamp NULL default NULL,
  `url` varchar(45) default NULL,
  `thumbnailUrl` varchar(45) default NULL,
  `deleteUrl` varchar(45) default NULL,
  `deleteType` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfol`
--

DROP TABLE IF EXISTS `portfol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfol` (
  `id` int(11) NOT NULL auto_increment,
  `websiteid` int(11) NOT NULL,
  `headername` varchar(45) default NULL,
  `imagename` varchar(45) default NULL,
  `imagepath` varchar(45) default NULL,
  `imagelink` varchar(45) default NULL,
  `imagesubheadinglink` varchar(45) default NULL,
  `pageid` int(11) default NULL,
  `templateid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfol`
--

LOCK TABLES `portfol` WRITE;
/*!40000 ALTER TABLE `portfol` DISABLE KEYS */;
INSERT INTO `portfol` VALUES (22,127,'shanakr','shankar','Tulips.jpg','shankar','shankar',4,1),(23,127,'SELVA','SELVA','Tulips.jpg','SELVA','SELVA',7,1);
/*!40000 ALTER TABLE `portfol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_attachment`
--

DROP TABLE IF EXISTS `sys_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_attachment` (
  `id` int(11) NOT NULL auto_increment,
  `fileName` varchar(45) default NULL,
  `filePath` varchar(45) default NULL,
  `rid` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_attachment`
--

LOCK TABLES `sys_attachment` WRITE;
/*!40000 ALTER TABLE `sys_attachment` DISABLE KEYS */;
INSERT INTO `sys_attachment` VALUES (23,'vsdfg','jhsdjk','jdhjk'),(24,'gireesh','jsdhfuk','kmg'),(28,'shankar','jfk','jhcj'),(30,'xdfgdf','dfgsd','dfsdf'),(31,'qw','fbdfhmbsdm','dfjdfjkh'),(32,'dfg','sdfg','dfgg'),(33,'sdfgsdf','dfdg','dffgg'),(34,'super','super','suoer');
/*!40000 ALTER TABLE `sys_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_page`
--

DROP TABLE IF EXISTS `sys_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_page` (
  `id` int(11) NOT NULL auto_increment,
  `pagename` varchar(45) default NULL,
  `websiteid` int(11) default NULL,
  `type` int(11) default NULL,
  `url` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_page`
--

LOCK TABLES `sys_page` WRITE;
/*!40000 ALTER TABLE `sys_page` DISABLE KEYS */;
INSERT INTO `sys_page` VALUES (4,'home',127,0,'/web/iamtop/home'),(7,'contact us',127,0,'/web/iamtop/contact us'),(8,'progress',127,0,'/web/iamtop/progress'),(9,'selva',127,0,'/web/iamtop/selva'),(10,'ck',128,0,'/web/infotop/ck'),(12,'home',129,0,'/web/medioctor/home'),(13,'home',130,0,'/web/ats/home');
/*!40000 ALTER TABLE `sys_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_site`
--

DROP TABLE IF EXISTS `sys_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_site` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `login` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `sitetitle` varchar(45) default NULL,
  `sitedomain` varchar(45) default NULL,
  `Protocol` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_site`
--

LOCK TABLES `sys_site` WRITE;
/*!40000 ALTER TABLE `sys_site` DISABLE KEYS */;
INSERT INTO `sys_site` VALUES (127,'spring','spring@gmail.com','admin','password','iamtop','Domain.com',NULL),(128,'user','user@gmail.com','user','user','infotop','www.infotop.com','http://'),(129,'user','user@gmail.com','user','user','medioctor','www.medioctor.com','http://'),(130,'user','user@email.com','user','user','ats','www.ats.com','http://'),(131,'ssdd','girija.rayachur1@gmail.com','sdsd','user','fff','dsdsdsds','http://'),(132,'ravi','pc.ravi@gmail.com','12','metwa','ttt','uuu','http://'),(133,'lucky','lucky@ymail.com','lu','luv','fff','dsdsdsds','http://'),(134,'','','','','','','http://'),(135,'','','','','','','http://'),(136,'','','','','','','http://'),(137,'','','','','','','http://'),(138,'','','','','','','http://'),(139,'','','','','','','http://'),(140,'','','','','','','http://'),(141,'','','','','','','http://'),(142,'','','','','','','http://'),(143,'','','','','','','http://'),(144,'','','','','','','http://'),(145,'','','','','','','http://'),(146,'','','','','','','http://'),(147,'','','','','','','http://'),(148,'','','','','','','http://'),(149,'','','','','','','http://'),(150,'','','','','','','http://'),(151,'','','','','','','http://'),(152,'','','','','','','http://'),(153,'','','','','','','http://'),(154,'','','','','','','http://');
/*!40000 ALTER TABLE `sys_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,'Portfolio'),(5,'Site1');
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL auto_increment,
  `loginName` varchar(45) NOT NULL,
  `name` varchar(45) default NULL,
  `plainPassword` varchar(45) default NULL,
  `password` varchar(45) NOT NULL,
  `salt` varchar(155) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (2,'user',NULL,NULL,'33cc1ed437d6896e740911b8e89d92bbd96c8e8b','973f76ed6c000ee4'),(3,'user1',NULL,NULL,'ab96b2c9906d79f36ac87db11d9d2b3ee6da4100','b9eb99135d1b4a33'),(4,'user2',NULL,NULL,'8c1b824404e89fcafcd0622e43499c0e53b933ae','15a0db6105c0517d'),(5,'admin',NULL,NULL,'783a3de9185ef70892318595715317cf752ace9f','277f70be77c9a158'),(6,'admin1',NULL,NULL,'8e665fe77c768d53648aa2bf6a79f32f861332ff','814779e1e94bab22'),(7,'admin2',NULL,NULL,'94dd599e4934bb5a83e3cf3e127b4db06412970a','d6ba05dd35dd4851'),(8,'shankar',NULL,NULL,'e7e994c9727e4e525cb21627183299d419bd8025','10729802ebc0c9fa');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-08 10:18:07
