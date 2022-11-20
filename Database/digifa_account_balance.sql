-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: digifa
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `account_balance`
--

DROP TABLE IF EXISTS `account_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_balance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `User_id` int NOT NULL,
  `debit_amount` int DEFAULT NULL,
  `credit_amount` int DEFAULT NULL,
  `Total_amount` int DEFAULT NULL,
  `ArrivalDate` datetime DEFAULT NULL,
  `Beneficary_Account` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `User_id` (`User_id`),
  CONSTRAINT `account_balance_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `register` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_balance`
--

LOCK TABLES `account_balance` WRITE;
/*!40000 ALTER TABLE `account_balance` DISABLE KEYS */;
INSERT INTO `account_balance` VALUES (1,1,0,1000,1000,'2021-11-22 00:52:49','2','from bhanu'),(2,2,1000,3000,2000,NULL,'1','to bhanu'),(3,1,0,5000,6000,'2021-11-22 00:52:49','null','cash deposit'),(4,17,0,1000,1000,'2021-11-22 00:52:49','null','cash deposit'),(5,3,1,1,1,'2021-12-26 19:52:38','32568808','Initial Amount'),(6,3,0,500,501,'2021-12-26 22:32:39','Transfer amount of Rs.500from17to3',NULL),(7,17,500,0,500,'2021-12-26 22:32:39','Transfer amount of Rs.500from17to3',NULL),(8,3,0,100,101,'2021-12-26 22:45:53','17','Transfer amount of Rs.100from17to3'),(9,17,100,0,400,'2021-12-26 22:45:53','3','Transfer amount of Rs.100from17to3'),(10,2,0,100,2100,'2022-01-02 23:48:55','17','Transfer amount of Rs.100from17to2'),(11,17,100,0,300,'2022-01-02 23:48:55','2','Transfer amount of Rs.100from17to2'),(12,3,0,5,5,'2022-01-03 23:29:49',NULL,'Initial Amount'),(13,18,0,5,5,'2022-01-05 01:31:26',NULL,'Initial Amount'),(14,3,0,1,2,'2022-01-05 01:36:15','18','Transfer amount of Rs.1from18to3'),(15,18,1,0,4,'2022-01-05 01:36:15','3','Transfer amount of Rs.1from18to3'),(16,22,0,1000,1000,'2022-01-05 09:40:34',NULL,'Initial Amount'),(17,22,0,1000,1000,'2022-01-05 09:42:21',NULL,'Initial Amount'),(18,17,0,900,1900,'2022-01-05 09:47:18','22','Transfer amount of Rs.900from22to17'),(19,22,900,0,100,'2022-01-05 09:47:18','17','Transfer amount of Rs.900from22to17');
/*!40000 ALTER TABLE `account_balance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-20 10:58:14
