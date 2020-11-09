-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local_job_app
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Offers`
--

DROP TABLE IF EXISTS `Offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Offers` (
  `idOffers` int(11) NOT NULL,
  `offerDate` varchar(45) DEFAULT NULL,
  `OfferType` enum('Trial','Temporary','Permanent') DEFAULT NULL,
  `idEmployee` int(11) DEFAULT NULL,
  `Account_idAccount` int(11) DEFAULT NULL,
  `idPosts` int(11) DEFAULT NULL,
  PRIMARY KEY (`idOffers`),
  KEY `idEmployee` (`idEmployee`),
  KEY `Account_idAccount` (`Account_idAccount`,`idPosts`),
  CONSTRAINT `offers_ibfk_1` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idemployee`),
  CONSTRAINT `offers_ibfk_2` FOREIGN KEY (`Account_idAccount`, `idPosts`) REFERENCES `applications` (`account_idaccount`, `posts_idposts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Offers`
--

LOCK TABLES `Offers` WRITE;
/*!40000 ALTER TABLE `Offers` DISABLE KEYS */;
INSERT INTO `Offers` VALUES (1,'06/01/18','Trial',4,2,6),(2,'06/01/18','Temporary',4,2,6),(3,'06/01/18','Trial',4,2,6),(4,'06/01/18','Permanent',2,3,8),(5,'06/01/18','Trial',2,2,8),(6,'07/01/18','Temporary',5,8,6),(7,'07/01/18','Temporary',5,8,13),(8,'08/01/18','Trial',4,8,6),(9,'09/01/18','Temporary',4,3,12),(10,'010/01/18','Permanent',4,3,9);
/*!40000 ALTER TABLE `Offers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-14 23:44:02
