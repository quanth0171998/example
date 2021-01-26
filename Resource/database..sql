-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: graduate
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  `content` text,
  `create_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(2,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(3,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(4,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(5,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(6,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(7,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(8,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(9,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(10,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(11,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(12,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(13,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(14,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(15,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(16,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(17,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(18,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000'),(19,1,1,'như đầu buồi','2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Hà Nội');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_job_detail`
--

DROP TABLE IF EXISTS `city_job_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_job_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_city` bigint NOT NULL,
  `id_job` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `upadte_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_city_idx` (`id_city`),
  KEY `fk_job_idx` (`id_job`),
  CONSTRAINT `fk_city` FOREIGN KEY (`id_city`) REFERENCES `city` (`id`),
  CONSTRAINT `fk_job` FOREIGN KEY (`id_job`) REFERENCES `job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_job_detail`
--

LOCK TABLES `city_job_detail` WRITE;
/*!40000 ALTER TABLE `city_job_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_job_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `create_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `comment_ibfk_1_idx` (`user_id`),
  KEY `comment_ibfk_2` (`post_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `answer` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotion_answer`
--

DROP TABLE IF EXISTS `emotion_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emotion_answer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  `likes` bigint NOT NULL,
  `dislike` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `emotion_answer_ibfk_2` (`answer_id`),
  KEY `post_id` (`post_id`),
  KEY `emotion_answer_ibfk_1_idx` (`user_id`),
  CONSTRAINT `emotion_answer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `emotion_answer_ibfk_2` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`),
  CONSTRAINT `emotion_answer_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `answer` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotion_answer`
--

LOCK TABLES `emotion_answer` WRITE;
/*!40000 ALTER TABLE `emotion_answer` DISABLE KEYS */;
INSERT INTO `emotion_answer` VALUES (1,1,1,1,1,0);
/*!40000 ALTER TABLE `emotion_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotion_comment`
--

DROP TABLE IF EXISTS `emotion_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emotion_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  `comment_id` bigint NOT NULL,
  `likes` bigint NOT NULL,
  `dislike` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `emotion_comment_ibfk_2` (`post_id`),
  KEY `comment_id` (`comment_id`),
  KEY `emotion_comment_ibfk_1_idx` (`user_id`),
  CONSTRAINT `emotion_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `emotion_comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `comment` (`post_id`),
  CONSTRAINT `emotion_comment_ibfk_3` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotion_comment`
--

LOCK TABLES `emotion_comment` WRITE;
/*!40000 ALTER TABLE `emotion_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `emotion_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emotion_post`
--

DROP TABLE IF EXISTS `emotion_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emotion_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `likes` bigint NOT NULL,
  `dislike` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `emotion_post_ibfk_1` (`user_id`),
  KEY `emotion_post_ibfk_2` (`post_id`),
  CONSTRAINT `emotion_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `post` (`user_id`),
  CONSTRAINT `emotion_post_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emotion_post`
--

LOCK TABLES `emotion_post` WRITE;
/*!40000 ALTER TABLE `emotion_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `emotion_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `duedate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `name_company` varchar(255) DEFAULT NULL,
  `gross_salary` double(15,2) DEFAULT NULL,
  `create_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `address` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tag_detail`
--

DROP TABLE IF EXISTS `job_tag_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_tag_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tag_id` bigint NOT NULL,
  `job_id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tag_idx` (`tag_id`),
  KEY `fk_job_idx` (`job_id`),
  CONSTRAINT `fk_job_job_detail` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  CONSTRAINT `fk_tag_job_detail` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tag_detail`
--

LOCK TABLES `job_tag_detail` WRITE;
/*!40000 ALTER TABLE `job_tag_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_tag_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `short_description` varchar(1000) DEFAULT NULL,
  `content` text,
  `view` bigint DEFAULT '0',
  `anwser` bigint DEFAULT '0',
  `create_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `user_id` bigint NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_categorry_idx` (`category_id`),
  CONSTRAINT `post_categorry` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(2,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(3,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(4,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(5,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(6,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(7,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(8,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(9,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(10,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(11,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(12,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(13,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(14,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(15,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(16,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(17,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(18,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(19,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(20,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(21,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(22,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(23,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(25,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(26,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(27,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(28,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(29,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(30,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(31,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(32,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL),(33,'BV01','Gay','Gay','Gay',111,1111,'2020-09-08 17:00:00.000000','2020-09-08 17:00:00.000000',1,NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `view` bigint NOT NULL DEFAULT '0',
  `create_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_post_detail`
--

DROP TABLE IF EXISTS `tag_post_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_post_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_post` bigint NOT NULL,
  `id_tag` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_idx` (`id_post`),
  KEY `fk_tag_idx` (`id_tag`),
  CONSTRAINT `fk_post` FOREIGN KEY (`id_post`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_tag` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_post_detail`
--

LOCK TABLES `tag_post_detail` WRITE;
/*!40000 ALTER TABLE `tag_post_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_post_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `user_role` bigint NOT NULL,
  `city_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `user_role` (`user_role`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `user_role` (`role_id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'DAO','daotrqph918232','123',_binary '',1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'ROLE_ADMIN');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tag`
--

DROP TABLE IF EXISTS `user_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_tag_idx` (`tag_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_tag` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tag`
--

LOCK TABLES `user_tag` WRITE;
/*!40000 ALTER TABLE `user_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-04 23:10:33
