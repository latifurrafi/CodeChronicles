-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: pharmacy
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'tanvir','12345678');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `medicine_id` int DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'Metformin',1,'Hello','Hi',1,5,'2024-12-11'),(2,2,'Hydrocodone',1,'1','1',4,48,'2024-12-11'),(3,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(4,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(5,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(6,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(7,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(8,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(9,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(10,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(11,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(12,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(13,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(14,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(15,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(16,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(17,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(18,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(19,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(20,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(21,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(22,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(23,3,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(24,4,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(25,5,'Hydrocodone',1,'1','1',1,12,'2024-12-11'),(26,6,'Hydrocodone',1,'1','1',1,12,'2024-12-11');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info`
--

LOCK TABLES `customer_info` WRITE;
/*!40000 ALTER TABLE `customer_info` DISABLE KEYS */;
INSERT INTO `customer_info` VALUES (1,1,5,'2024-12-11'),(2,2,48,'2024-12-11'),(3,3,252,'2024-12-11'),(4,4,12,'2024-12-11'),(5,5,12,'2024-12-11'),(6,6,12,'2024-12-11');
/*!40000 ALTER TABLE `customer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine_id` int NOT NULL,
  `brand` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `price` double NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (5,1,'1','1','Hydrocodone','Available',12,'2024-12-11'),(6,2,'2','2','Hydrocodone','Available',2,'2024-12-11');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11 15:26:17
