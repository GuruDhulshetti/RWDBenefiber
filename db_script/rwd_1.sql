CREATE DATABASE  IF NOT EXISTS `rwd_1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `rwd_1`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: rwd_1
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `img_tbl`
--

DROP TABLE IF EXISTS `img_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `img_tbl` (
  `IMG_ID` int(3) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(3) NOT NULL,
  `PAGE_ID` int(5) NOT NULL,
  `IMG_TYPE` varchar(10) NOT NULL,
  `LARGE_IMG_PATH` varchar(200) NOT NULL,
  `SMALL_IMG_PATH` varchar(200) DEFAULT NULL,
  `IMG_TITLE` varchar(150) DEFAULT NULL,
  `IMG_LINK` varchar(100) DEFAULT NULL,
  `DIV_ID` int(3) DEFAULT '0',
  PRIMARY KEY (`IMG_ID`),
  KEY `SITE_ID_FK_idx` (`SITE_ID`),
  KEY `PAGE_ID_IMG_FK_idx` (`PAGE_ID`),
  KEY `PAGE_ID_idx` (`PAGE_ID`),
  CONSTRAINT `PAGE_ID_IMG_FK` FOREIGN KEY (`PAGE_ID`) REFERENCES `page_tbl` (`PAGE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SITE_ID_IMG_FK` FOREIGN KEY (`SITE_ID`) REFERENCES `site_tbl` (`SITE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img_tbl`
--

LOCK TABLES `img_tbl` WRITE;
/*!40000 ALTER TABLE `img_tbl` DISABLE KEYS */;
INSERT INTO `img_tbl` VALUES (1,1,1,'SLD','foundation/Images/Large/Slider-Image.jpg','foundation/Images/Small/Slider-Image.jpg',NULL,NULL,0),(2,1,1,'SLD','foundation/Images/Large/video.jpg','foundation/Images/Small/video.jpg',NULL,NULL,0),(3,1,1,'SLD','foundation/Images/Large/fbslide.jpg','foundation/Images/Small/fbslide.jpg',NULL,NULL,0),(4,1,1,'BOX','foundation/Images/Large/benefiber-img.png','foundation/Images/Small/benefiber-img.png','Benefiber® Powder','products/powder',1),(5,1,1,'BOX','foundation/Images/Large/discount-img.png','foundation/Images/Small/discount-img.png','Save $3.00 on next purchase','faq',2),(6,1,1,'BOX','foundation/Images/Large/locator-img.png','foundation/Images/Small/locator-img.png','Find Benefiber® Near You','products/locator',3),(7,1,1,'BOX','foundation/Images/Large/faq-img.png','foundation/Images/Small/faq-img.png','FAQs','faq',4),(8,1,1,'BLT','foundation/Images/Large/home1.jpg','foundation/Images/Smal/home1.jpg','Fiber-Rich Diet','fiber-rich-diet?page_id=5.2',0),(9,1,1,'BLT','foundation/Images/Large/Recipes.jpg','foundation/Images/Small/Recipes.jpg','Recipes','recipes',0),(10,1,1,'BLT','foundation/Images/Large/home3.jpg','foundation/Images/Small/home3.jpg','Test Your Fiber IQ','fiber-iq?page_id=5.3',0),(11,1,1,'BLT','foundation/Images/Large/Facebook.jpg','foundation/Images/Small/Facebook.jpg','Join us on Facebook','http://www.facebook.com/Benefiber',0),(14,1,6,'RCPSLD1','foundation/Images/Large/recipes-s1.jpg','foundation/Images/Small/recipes-s1.jpg','Irish Oatmeal With Strawberries And Vanilla',NULL,0),(15,1,6,'RCPSLD2','foundation/Images/Large/recipes-s2.jpg','foundation/Images/Small/recipes-s2.jpg','Blueberry Muffin',NULL,0),(16,1,6,'RCPSLD3','foundation/Images/Large/recipes-s3.jpg','foundation/Images/Small/recipes-s3.jpg','Buttermilk Buckwheat Pancakes',NULL,0),(17,1,6,'RCPSLD4','foundation/Images/Large/recipes-s4.jpg','foundation/Images/Small/recipes-s4.jpg','Strawberry, Almond Yogurt Smoothie',NULL,0),(18,1,6,'RCPSLD5','foundation/Images/Large/recipes-s5.jpg','foundation/Images/Small/recipes-s5.jpg','Whole Wheat English Muffin With Peanut Butter And Banana',NULL,0),(19,1,6,'RCPSLD6','foundation/Images/Large/recipes-s6.jpg','foundation/Images/Small/recipes-s6.jpg','Celery Stick With Salty Almond Butter',NULL,0),(23,1,6,'BOX','foundation/Images/Large/recipe1.jpg','foundation/Images/Small/recipe1.jpg','Irish Oatmeal With Strawberries And Vanilla',NULL,0),(24,1,6,'BOX','foundation/Images/Large/recipe2.jpg','foundation/Images/Small/recipe1.jpg','Blueberry Muffin',NULL,0),(25,1,6,'BOX','foundation/Images/Large/recipe3.jpg','foundation/Images/Small/recipe1.jpg','Buttermilk Buckwheat Pancakes',NULL,0),(26,1,6,'BOX','foundation/Images/Large/recipe4.jpg','foundation/Images/Small/recipe1.jpg','',NULL,0),(27,1,6,'BOX','foundation/Images/Large/recipe5.jpg','foundation/Images/Small/recipe1.jpg','Whole Wheat English Muffin With Peanut Butter And Banana',NULL,0),(28,1,6,'BOX','foundation/Images/Large/recipe6.jpg','foundation/Images/Small/recipe1.jpg','Celery Stick With Salty Almond Butter',NULL,0),(35,1,5,'SLD','foundation/Images/Large/fiber-slider.jpg','foundation/Images/Small/fiber-slider.jpg','',NULL,0),(36,1,5,'SLD','foundation/Images/Large/IQimage.jpg','foundation/Images/Small/fiber-slider.jpg',NULL,NULL,0),(43,1,6,'SLD','foundation/Images/Large/recipes-s1.jpg','foundation/Images/Small/recipes-s1.jpg',NULL,NULL,0),(44,1,6,'SLD','foundation/Images/Large/recipes-s2.jpg','foundation/Images/Small/recipes-s2.jpg',NULL,NULL,0),(45,1,6,'SLD','foundation/Images/Large/recipes-s3.jpg','foundation/Images/Small/recipes-s3.jpg',NULL,NULL,0),(46,1,6,'SLD','foundation/Images/Large/recipes-s4.jpg','foundation/Images/Small/recipes-s4.jpg',NULL,NULL,0),(47,1,6,'SLD','foundation/Images/Large/recipes-s5.jpg','foundation/Images/Small/recipes-s5.jpg',NULL,NULL,0),(48,1,6,'SLD','foundation/Images/Large/recipes-s6.jpg','foundation/Images/Small/recipes-s6.jpg',NULL,NULL,0),(49,1,5,'BLT','foundation/Images/Large/Fiber-Iq.jpg','foundation/Images/Small/Fiber-Iq.jpg','Test Fiber IQ',NULL,0),(50,1,5,'BLT','foundation/Images/Large/Fiber-Rich-Diet.jpg','foundation/Images/Small/Fiber-Rich-Diet.jpg','Fiber-Rich Diet',NULL,0),(52,1,5,'FBRSLD1','foundation/Images/Large/fiber-slider.jpg','foundation/Images/Small/fiber-slider.jpg','',NULL,1),(53,1,5,'FBRSLD2','foundation/Images/Large/IQimage.jpg','foundation/Images/Small/fiber-slider.jpg',NULL,NULL,2),(54,1,3,'BLT','foundation/Images/Large/Grit-Free-Powder.jpg','foundation/Images/Small/Grit-Free-Powder.jpg','Grit-Free Powder','products/powder',0),(55,1,3,'BLT','foundation/Images/Large/Save-on-purchase.jpg','foundation/Images/Small/Save-on-purchase.jpg','Save $3.00 on Next Purchase',NULL,0);
/*!40000 ALTER TABLE `img_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_tbl`
--

DROP TABLE IF EXISTS `page_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_tbl` (
  `PAGE_ID` int(5) NOT NULL,
  `PAGE_NAME` varchar(15) NOT NULL,
  `SITE_ID` int(3) DEFAULT NULL,
  PRIMARY KEY (`PAGE_ID`),
  KEY `SITE_ID_idx` (`SITE_ID`),
  CONSTRAINT `SITE_ID` FOREIGN KEY (`SITE_ID`) REFERENCES `site_tbl` (`SITE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_tbl`
--

LOCK TABLES `page_tbl` WRITE;
/*!40000 ALTER TABLE `page_tbl` DISABLE KEYS */;
INSERT INTO `page_tbl` VALUES (1,'HOME',1),(2,'LOCATOR',1),(3,'PRODUCTS',1),(4,'POWDER',1),(5,'HEALTH',1),(6,'RECIPES',1),(7,'FAQ',1),(8,'HEALTH_DIET',1),(9,'HEALTH_IQ',1),(10,'RECIPES_SAYS',1),(11,'RECIPES_IRISH',1),(12,'RECIPES_MUFFIN',1),(13,'RECIPES_BBK',1),(14,'RECIPES_WHEAT',1),(15,'RECIPES_CELERY',1);
/*!40000 ALTER TABLE `page_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_tbl`
--

DROP TABLE IF EXISTS `site_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_tbl` (
  `SITE_ID` int(3) NOT NULL,
  `SITE_NAME` varchar(20) NOT NULL,
  PRIMARY KEY (`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_tbl`
--

LOCK TABLES `site_tbl` WRITE;
/*!40000 ALTER TABLE `site_tbl` DISABLE KEYS */;
INSERT INTO `site_tbl` VALUES (1,'BENEFIBER'),(2,'EXCEDRIN');
/*!40000 ALTER TABLE `site_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_page_tbl`
--

DROP TABLE IF EXISTS `sub_page_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_page_tbl` (
  `SUB_PAGE_ID` int(2) NOT NULL,
  `SITE_ID` int(3) NOT NULL,
  `PAGE_ID` int(5) NOT NULL,
  `SUB_PAGE_TXT` varchar(100) NOT NULL,
  PRIMARY KEY (`SUB_PAGE_ID`),
  KEY `SITE_ID_SUB_PAGE_FK_idx` (`SITE_ID`),
  KEY `PAGE_ID_SUB_PAGE_FK_idx` (`PAGE_ID`),
  CONSTRAINT `PAGE_ID_SUB_PAGE_FK` FOREIGN KEY (`PAGE_ID`) REFERENCES `page_tbl` (`PAGE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SITE_ID_SUB_PAGE_FK` FOREIGN KEY (`SITE_ID`) REFERENCES `site_tbl` (`SITE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_page_tbl`
--

LOCK TABLES `sub_page_tbl` WRITE;
/*!40000 ALTER TABLE `sub_page_tbl` DISABLE KEYS */;
INSERT INTO `sub_page_tbl` VALUES (0,1,1,'GOOD'),(1,1,6,'Irish Oatmeal with Strawberries & Vanilla'),(2,1,6,'Blueberry Muffin'),(3,1,6,'Buttermilk Buckwheat Pancakes'),(4,1,6,'Whole Wheat English Muffin with Peanut Butter & Banana'),(5,1,6,'Strawberry, Almond Yogurt Smoothie'),(6,1,6,'Celery Stick with Salty Almond Butter'),(7,1,5,'Fiber-Rich Diet'),(8,1,5,'Test Your FIber IQ'),(9,1,5,'Fiber & Your Health Home'),(10,1,6,'Recipes Home');
/*!40000 ALTER TABLE `sub_page_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_tbl`
--

DROP TABLE IF EXISTS `text_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text_tbl` (
  `TEXT_ID` int(5) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(3) NOT NULL,
  `PAGE_ID` int(5) NOT NULL,
  `SUB_PAGE_ID` int(2) NOT NULL DEFAULT '0',
  `TEXT_HEADER` varchar(45) DEFAULT NULL,
  `TEXT_STRING` varchar(1000) NOT NULL,
  `TEXT_TYPE` varchar(50) DEFAULT NULL,
  `TEXT_LINK` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TEXT_ID`),
  KEY `SITE_ID_TXT_FK_idx` (`SITE_ID`),
  KEY `PAGE_ID_TXT_FK_idx` (`PAGE_ID`),
  KEY `PAGE_ID_TXT_FK_idx1` (`PAGE_ID`),
  KEY `PAGE_ID_TXT_FK_idx2` (`PAGE_ID`),
  KEY `SUB_PAGE_ID_TXT_FK_idx` (`SUB_PAGE_ID`),
  KEY `SUB_PAGE_ID_TXT_FK_idx1` (`SUB_PAGE_ID`),
  CONSTRAINT `PAGE_ID_TXT_FK` FOREIGN KEY (`PAGE_ID`) REFERENCES `page_tbl` (`PAGE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SITE_ID_TXT_FK` FOREIGN KEY (`SITE_ID`) REFERENCES `site_tbl` (`SITE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SUB_PAGE_ID_TXT_FK` FOREIGN KEY (`SUB_PAGE_ID`) REFERENCES `sub_page_tbl` (`SUB_PAGE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_tbl`
--

LOCK TABLES `text_tbl` WRITE;
/*!40000 ALTER TABLE `text_tbl` DISABLE KEYS */;
INSERT INTO `text_tbl` VALUES (1,1,1,0,NULL,'Benefiber®','HDR',NULL),(2,1,1,0,NULL,'Clear, Taste-Free Fiber and Completely Dissolvable','TTL',NULL),(3,1,1,0,NULL,'You\'ll only know that you\'re taking fiber by the way good digestive health makes you look and feel great!','DTL',NULL),(4,1,6,0,NULL,'Recipes','HDR',NULL),(5,1,6,0,NULL,'Benefiber® allows you the flexibility to take your fiber anyway you choose. Benefiber® is great for cooking too. Simply add Benefiber® powder to any beverage+ or soft food.','DTL',NULL),(6,1,6,1,NULL,'Irish Oatmeal with Strawberries & Vanilla','STP',NULL),(7,1,6,2,NULL,'Blueberry Muffin','STP',NULL),(8,1,6,3,NULL,'Buttermilk Buckwheat Pancakes','STP',NULL),(9,1,6,4,NULL,'Whole Wheat English Muffin with Peanut Butter & Banana','STP',NULL),(10,1,6,5,NULL,'Strawberry, Almond Yogurt Smoothie','STP',NULL),(11,1,6,6,NULL,'You may also be interested in:','STP_HDR',NULL),(12,1,5,0,NULL,'Save $3.00 on Next Purchase','STP',NULL),(13,1,5,0,NULL,'Find Benefiber near you','STP',NULL),(14,1,5,1,NULL,'Fiber-Rich Diet','HDR',NULL),(15,1,5,1,NULL,'The Academy of Nutrition and Dietetics recommends a healthy, fiber-rich diet, which includes a fiber intake of 20-35 grams daily from plant foods. Fiber is important for a healthy digestive system*.','DTL',NULL),(16,1,5,2,NULL,'Test Your Fiber IQ','HDR',NULL),(17,1,5,2,NULL,'Dietary Fiber is important for maintaining healthy digestive system.* However, on average, Americans consume less than half the recommended daily amount of fiber in their diet.','DTL',NULL),(18,1,6,7,NULL,'Celery Stick with Salty Almond Butter','STP',NULL),(19,1,6,1,'Ingredients','Ingredients 123','TAB_HDR',''),(20,1,6,1,'Instructions','Instructions 456','TAB_HDR',''),(21,1,6,1,'Information','Information 789','TAB_HDR',''),(22,1,3,0,NULL,'Benefiber®','HDR',NULL),(23,1,3,0,NULL,'The Clear Choice','TTL',NULL),(24,1,3,0,NULL,'Benefiber® allows you to choose how you want to take your fiber, offering a variety of easy options that fit your lifestyle. It is even great for cooking. Look to Benefiber® for a complete line of fiber products.','DTL',NULL),(27,1,5,0,NULL,'Fiber & Your Health','HDR',NULL),(28,1,5,0,NULL,'Fiber is important for the health of digestive system*','TTL',NULL),(29,1,5,0,NULL,'*This statement has not been evaluated by the Food and Drug Administration.','DTL',NULL),(30,1,5,0,NULL,'This product is not intended to diagnose, treat, cure or prevent any disease.','DTL',NULL);
/*!40000 ALTER TABLE `text_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-17 12:32:05
