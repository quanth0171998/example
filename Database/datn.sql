-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: datn
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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `code` varchar(100) NOT NULL,
  `description` text,
  `name` varchar(200) NOT NULL,
  `status` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `address` text,
  `code` varchar(11) NOT NULL,
  `description` text,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `status` tinyint NOT NULL,
  `ward_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mkwx1x9mthieapj92cpxq5msc` (`code`),
  KEY `FK68npu6esowr8nhytqh8euu76q` (`ward_code`),
  CONSTRAINT `FK68npu6esowr8nhytqh8euu76q` FOREIGN KEY (`ward_code`) REFERENCES `wards` (`code_ward`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depots`
--

DROP TABLE IF EXISTS `depots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depots` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `ward_code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6m24mia1m0uvfbu8xstdvto69` (`code`),
  KEY `FKfphoted3b8kk0g9j634l3bgu4` (`user_id`),
  KEY `FKo1gktffuvgm3xm6ys7usukr0f` (`ward_code`),
  CONSTRAINT `FKfphoted3b8kk0g9j634l3bgu4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKo1gktffuvgm3xm6ys7usukr0f` FOREIGN KEY (`ward_code`) REFERENCES `wards` (`code_ward`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depots`
--

LOCK TABLES `depots` WRITE;
/*!40000 ALTER TABLE `depots` DISABLE KEYS */;
/*!40000 ALTER TABLE `depots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts` (
  `code_district` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `code_province` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code_district`),
  KEY `FK910sp17paidb95hb4m35t6tic` (`code_province`),
  CONSTRAINT `FK910sp17paidb95hb4m35t6tic` FOREIGN KEY (`code_province`) REFERENCES `provinces` (`code_province`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_depot`
--

DROP TABLE IF EXISTS `export_depot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export_depot` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKw7bvv7cx2sjox0o3aekqnsst` (`user_id`),
  CONSTRAINT `FKw7bvv7cx2sjox0o3aekqnsst` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_depot`
--

LOCK TABLES `export_depot` WRITE;
/*!40000 ALTER TABLE `export_depot` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_depot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_depot_detail`
--

DROP TABLE IF EXISTS `export_depot_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export_depot_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `id_export_depot` bigint DEFAULT NULL,
  `id_product` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdoxtvewmkhll6qdj20iqhhump` (`id_export_depot`),
  KEY `FKdt6p2ngjiayyi2ehb94845y9q` (`id_product`),
  CONSTRAINT `FKdoxtvewmkhll6qdj20iqhhump` FOREIGN KEY (`id_export_depot`) REFERENCES `export_depot` (`id`),
  CONSTRAINT `FKdt6p2ngjiayyi2ehb94845y9q` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_depot_detail`
--

LOCK TABLES `export_depot_detail` WRITE;
/*!40000 ALTER TABLE `export_depot_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_depot_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expried`
--

DROP TABLE IF EXISTS `expried`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expried` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `expried_date` datetime(6) DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj9sdpq3d611h6nowtk4yf3tr6` (`product_id`),
  CONSTRAINT `FKj9sdpq3d611h6nowtk4yf3tr6` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expried`
--

LOCK TABLES `expried` WRITE;
/*!40000 ALTER TABLE `expried` DISABLE KEYS */;
/*!40000 ALTER TABLE `expried` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_card_detail_status_histories`
--

DROP TABLE IF EXISTS `maintenance_card_detail_status_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_card_detail_status_histories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `status` tinyint DEFAULT NULL,
  `maintenance_card_detail_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa0vo6x9s1q004w2u4u7twnbnh` (`maintenance_card_detail_id`),
  CONSTRAINT `FKa0vo6x9s1q004w2u4u7twnbnh` FOREIGN KEY (`maintenance_card_detail_id`) REFERENCES `maintenance_card_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_card_detail_status_histories`
--

LOCK TABLES `maintenance_card_detail_status_histories` WRITE;
/*!40000 ALTER TABLE `maintenance_card_detail_status_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_card_detail_status_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_card_details`
--

DROP TABLE IF EXISTS `maintenance_card_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_card_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `is_delete` tinyint DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `maintenance_card_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKltfy9uxrksrsi715snt5im003` (`maintenance_card_id`),
  KEY `FKtcv9qddcw0g9uh9glauqmx086` (`product_id`),
  CONSTRAINT `FKltfy9uxrksrsi715snt5im003` FOREIGN KEY (`maintenance_card_id`) REFERENCES `maintenance_cards` (`id`),
  CONSTRAINT `FKtcv9qddcw0g9uh9glauqmx086` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_card_details`
--

LOCK TABLES `maintenance_card_details` WRITE;
/*!40000 ALTER TABLE `maintenance_card_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_card_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_cards`
--

DROP TABLE IF EXISTS `maintenance_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_cards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `code` varchar(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `description` text,
  `model` varchar(50) DEFAULT NULL,
  `pay_status` tinyint DEFAULT NULL,
  `plates_number` varchar(11) NOT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `return_date` datetime(6) DEFAULT NULL,
  `work_status` tinyint DEFAULT NULL,
  `coordinator_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `repairman_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3cxgdipyjj0p1xn3mp0w8rv5k` (`code`),
  KEY `FKt9nu9ud6q9628t2cfpf59jnk` (`coordinator_id`),
  KEY `FK7fn6rlkv7bo1om3138c9em4x4` (`customer_id`),
  KEY `FKepsg4aik7y9k80jv85b1usm1o` (`repairman_id`),
  CONSTRAINT `FK7fn6rlkv7bo1om3138c9em4x4` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `FKepsg4aik7y9k80jv85b1usm1o` FOREIGN KEY (`repairman_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKt9nu9ud6q9628t2cfpf59jnk` FOREIGN KEY (`coordinator_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_cards`
--

LOCK TABLES `maintenance_cards` WRITE;
/*!40000 ALTER TABLE `maintenance_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_histories`
--

DROP TABLE IF EXISTS `payment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_histories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `money` decimal(19,2) NOT NULL,
  `maintenance_card_id` bigint DEFAULT NULL,
  `payment_method_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq57p8srbys6oul8x8yfffewng` (`maintenance_card_id`),
  KEY `FKd957n3tttp9w4dqq06xmvj669` (`payment_method_id`),
  CONSTRAINT `FKd957n3tttp9w4dqq06xmvj669` FOREIGN KEY (`payment_method_id`) REFERENCES `payments` (`id`),
  CONSTRAINT `FKq57p8srbys6oul8x8yfffewng` FOREIGN KEY (`maintenance_card_id`) REFERENCES `maintenance_cards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_histories`
--

LOCK TABLES `payment_histories` WRITE;
/*!40000 ALTER TABLE `payment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_elfv0qxw40m1pawvfi9yx79qn` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `code` varchar(11) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `price_per_unit` decimal(19,2) DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `status` tinyint NOT NULL,
  `type` tinyint DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `depot_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_57ivhy5aj3qfmdvl6vxdfjs4p` (`code`),
  UNIQUE KEY `UK_o61fmio5yukmmiqgnxf8pnavn` (`name`),
  KEY `FKa3a4mpsfdf4d2y6r8ra3sc8mv` (`brand_id`),
  KEY `FKj5jtrivpm5exab3y0j7uk87ys` (`depot_id`),
  CONSTRAINT `FKa3a4mpsfdf4d2y6r8ra3sc8mv` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  CONSTRAINT `FKj5jtrivpm5exab3y0j7uk87ys` FOREIGN KEY (`depot_id`) REFERENCES `depots` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinces` (
  `code_province` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code_province`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt_depot`
--

DROP TABLE IF EXISTS `receipt_depot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt_depot` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  `depoter` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKin208w5nu4mhqpbu8slae0q2v` (`supplier_id`),
  KEY `FK84phncpgmh47wus1pgmd12pdv` (`depoter`),
  CONSTRAINT `FK84phncpgmh47wus1pgmd12pdv` FOREIGN KEY (`depoter`) REFERENCES `users` (`id`),
  CONSTRAINT `FKin208w5nu4mhqpbu8slae0q2v` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt_depot`
--

LOCK TABLES `receipt_depot` WRITE;
/*!40000 ALTER TABLE `receipt_depot` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt_depot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt_depot_detail`
--

DROP TABLE IF EXISTS `receipt_depot_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt_depot_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `id_product` bigint DEFAULT NULL,
  `id_receipt_depot` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4qj0qats3wvox7ues9qu5glmw` (`id_product`),
  KEY `FKu0k5ikxji253aao4nvb9h3ah` (`id_receipt_depot`),
  CONSTRAINT `FK4qj0qats3wvox7ues9qu5glmw` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  CONSTRAINT `FKu0k5ikxji253aao4nvb9h3ah` FOREIGN KEY (`id_receipt_depot`) REFERENCES `receipt_depot` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt_depot_detail`
--

LOCK TABLES `receipt_depot_detail` WRITE;
/*!40000 ALTER TABLE `receipt_depot_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt_depot_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `desciption` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg03bldv86pfuboqfefx48p6u3` (`user_id`),
  CONSTRAINT `FKg03bldv86pfuboqfefx48p6u3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_detail`
--

DROP TABLE IF EXISTS `request_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `quantity` bigint DEFAULT NULL,
  `id_product` bigint DEFAULT NULL,
  `id_request` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhu7w0i65b31e5gdgf9kv02dnl` (`id_product`),
  KEY `FKa5si2lccg6mlsrgjy3apy0sos` (`id_request`),
  CONSTRAINT `FKa5si2lccg6mlsrgjy3apy0sos` FOREIGN KEY (`id_request`) REFERENCES `request` (`id`),
  CONSTRAINT `FKhu7w0i65b31e5gdgf9kv02dnl` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_detail`
--

LOCK TABLES `request_detail` WRITE;
/*!40000 ALTER TABLE `request_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKg7qiwwu4vpciysmeeyme9gg1d` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `address` text,
  `code` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `role` tinyint DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_71vrxovabe8x9tom8xwefi3e7` (`code`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wards`
--

DROP TABLE IF EXISTS `wards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wards` (
  `code_ward` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `code_district` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code_ward`),
  KEY `FK3ghgaj7p54l698irtsohw4p51` (`code_district`),
  CONSTRAINT `FK3ghgaj7p54l698irtsohw4p51` FOREIGN KEY (`code_district`) REFERENCES `districts` (`code_district`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wards`
--

LOCK TABLES `wards` WRITE;
/*!40000 ALTER TABLE `wards` DISABLE KEYS */;
/*!40000 ALTER TABLE `wards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 18:30:09
