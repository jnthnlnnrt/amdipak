-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: assetmanager
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `type_id` bigint unsigned NOT NULL,
  `subtype_id` bigint unsigned DEFAULT NULL,
  `asset_tag` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_id` bigint unsigned NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imei` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mac_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipmi_address` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint unsigned NOT NULL,
  `employee_id` bigint unsigned NOT NULL,
  `location_id` bigint unsigned NOT NULL,
  `maintenance_frequency` bigint unsigned NOT NULL,
  `last_maintenance` date NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assets_asset_tag_unique` (`asset_tag`),
  KEY `assets_category_id_foreign` (`category_id`),
  KEY `assets_type_id_foreign` (`type_id`),
  KEY `assets_subtype_id_foreign` (`subtype_id`),
  KEY `assets_manufacturer_id_foreign` (`manufacturer_id`),
  KEY `assets_status_id_foreign` (`status_id`),
  KEY `assets_employee_id_foreign` (`employee_id`),
  KEY `assets_location_id_foreign` (`location_id`),
  KEY `assets_maintenance_frequency_foreign` (`maintenance_frequency`),
  KEY `assets_created_by_foreign` (`created_by`),
  KEY `assets_updated_by_foreign` (`updated_by`),
  CONSTRAINT `assets_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `cat_asset_categories` (`id`),
  CONSTRAINT `assets_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `assets_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `org_employees` (`id`),
  CONSTRAINT `assets_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `org_locations` (`id`),
  CONSTRAINT `assets_maintenance_frequency_foreign` FOREIGN KEY (`maintenance_frequency`) REFERENCES `maintenance_frequencies` (`id`),
  CONSTRAINT `assets_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `cat_asset_manufacturers` (`id`),
  CONSTRAINT `assets_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `cat_asset_statuses` (`id`),
  CONSTRAINT `assets_subtype_id_foreign` FOREIGN KEY (`subtype_id`) REFERENCES `cat_asset_subtypes` (`id`),
  CONSTRAINT `assets_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `cat_asset_types` (`id`),
  CONSTRAINT `assets_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,1,1,2,'DPK000001',1,'ProBook 440 G9','5CD2385PSM',NULL,NULL,NULL,NULL,1,1,1,1,'2024-01-01',NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('22f8d5c52216cc9eaa1ad5b7341b78c2','i:1;',1726623485),('22f8d5c52216cc9eaa1ad5b7341b78c2:timer','i:1726623485;',1726623485),('78d9fb4aa3b544610978715e64efde24','i:1;',1726623344),('78d9fb4aa3b544610978715e64efde24:timer','i:1726623344;',1726623344),('9862bf17a523f35d66509b78945afe72','i:1;',1726623755),('9862bf17a523f35d66509b78945afe72:timer','i:1726623755;',1726623755),('bbknb@lej.com|172.18.0.1','i:1;',1726623344),('bbknb@lej.com|172.18.0.1:timer','i:1726623344;',1726623344),('dcbbea33aa650245d3858400fa900349','i:1;',1726703912),('dcbbea33aa650245d3858400fa900349:timer','i:1726703912;',1726703912),('jxkdks@lfor.com|172.18.0.1','i:1;',1726623755),('jxkdks@lfor.com|172.18.0.1:timer','i:1726623755;',1726623755),('nkll@lbfo.com|172.18.0.1','i:1;',1726623485),('nkll@lbfo.com|172.18.0.1:timer','i:1726623485;',1726623485);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_asset_categories`
--

DROP TABLE IF EXISTS `cat_asset_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_asset_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_asset_categories_name_unique` (`name`),
  KEY `cat_asset_categories_created_by_foreign` (`created_by`),
  KEY `cat_asset_categories_updated_by_foreign` (`updated_by`),
  CONSTRAINT `cat_asset_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `cat_asset_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_asset_categories`
--

LOCK TABLES `cat_asset_categories` WRITE;
/*!40000 ALTER TABLE `cat_asset_categories` DISABLE KEYS */;
INSERT INTO `cat_asset_categories` VALUES (1,'Hardware',NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_asset_manufacturers`
--

DROP TABLE IF EXISTS `cat_asset_manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_asset_manufacturers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_asset_manufacturers_name_unique` (`name`),
  KEY `cat_asset_manufacturers_created_by_foreign` (`created_by`),
  KEY `cat_asset_manufacturers_updated_by_foreign` (`updated_by`),
  CONSTRAINT `cat_asset_manufacturers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `cat_asset_manufacturers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_asset_manufacturers`
--

LOCK TABLES `cat_asset_manufacturers` WRITE;
/*!40000 ALTER TABLE `cat_asset_manufacturers` DISABLE KEYS */;
INSERT INTO `cat_asset_manufacturers` VALUES (1,'HP',NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_asset_statuses`
--

DROP TABLE IF EXISTS `cat_asset_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_asset_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_asset_statuses_name_unique` (`name`),
  KEY `cat_asset_statuses_created_by_foreign` (`created_by`),
  KEY `cat_asset_statuses_updated_by_foreign` (`updated_by`),
  CONSTRAINT `cat_asset_statuses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `cat_asset_statuses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_asset_statuses`
--

LOCK TABLES `cat_asset_statuses` WRITE;
/*!40000 ALTER TABLE `cat_asset_statuses` DISABLE KEYS */;
INSERT INTO `cat_asset_statuses` VALUES (1,'Disponible',NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(2,'Asignado',NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_asset_subtypes`
--

DROP TABLE IF EXISTS `cat_asset_subtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_asset_subtypes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint unsigned NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_asset_subtypes_name_unique` (`name`),
  KEY `cat_asset_subtypes_type_id_foreign` (`type_id`),
  KEY `cat_asset_subtypes_created_by_foreign` (`created_by`),
  KEY `cat_asset_subtypes_updated_by_foreign` (`updated_by`),
  CONSTRAINT `cat_asset_subtypes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `cat_asset_subtypes_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `cat_asset_types` (`id`),
  CONSTRAINT `cat_asset_subtypes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_asset_subtypes`
--

LOCK TABLES `cat_asset_subtypes` WRITE;
/*!40000 ALTER TABLE `cat_asset_subtypes` DISABLE KEYS */;
INSERT INTO `cat_asset_subtypes` VALUES (1,'Desktop',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(2,'Laptop',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(3,'Mac',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(4,'NUC',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(5,'AiO',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_asset_types`
--

DROP TABLE IF EXISTS `cat_asset_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_asset_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_asset_types_name_unique` (`name`),
  KEY `cat_asset_types_category_id_foreign` (`category_id`),
  KEY `cat_asset_types_created_by_foreign` (`created_by`),
  KEY `cat_asset_types_updated_by_foreign` (`updated_by`),
  CONSTRAINT `cat_asset_types_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `cat_asset_categories` (`id`),
  CONSTRAINT `cat_asset_types_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `cat_asset_types_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_asset_types`
--

LOCK TABLES `cat_asset_types` WRITE;
/*!40000 ALTER TABLE `cat_asset_types` DISABLE KEYS */;
INSERT INTO `cat_asset_types` VALUES (1,'Equipo de computo',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(2,'Impresora',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(3,'Biometrico',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(4,'Handheld',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(5,'Tableta',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(6,'Telefono celular',1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_frequencies`
--

DROP TABLE IF EXISTS `maintenance_frequencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_frequencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lower_limit` int NOT NULL,
  `upper_limit` int NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `maintenance_frequencies_created_by_foreign` (`created_by`),
  KEY `maintenance_frequencies_updated_by_foreign` (`updated_by`),
  CONSTRAINT `maintenance_frequencies_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `maintenance_frequencies_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_frequencies`
--

LOCK TABLES `maintenance_frequencies` WRITE;
/*!40000 ALTER TABLE `maintenance_frequencies` DISABLE KEYS */;
INSERT INTO `maintenance_frequencies` VALUES (1,1,4,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(2,5,8,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1),(3,9,12,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1);
/*!40000 ALTER TABLE `maintenance_frequencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_09_13_170157_add_two_factor_columns_to_users_table',1),(5,'2024_09_13_170355_add_initials_to_users_table',2),(30,'2024_09_13_170852_create_permission_tables',3),(31,'2024_09_18_204721_create_org_departments_table',3),(32,'2024_09_18_214343_create_org_locations_table',3),(33,'2024_09_18_222700_create_org_employees_table',3),(34,'2024_09_18_231811_create_cat_asset_categories_table',4),(35,'2024_09_18_231818_create_cat_asset_types_table',4),(36,'2024_09_18_231824_create_cat_asset_subtypes_table',4),(37,'2024_09_18_232753_create_cat_asset_manufacturers_table',5),(38,'2024_09_18_233111_create_cat_asset_statuses_table',5),(39,'2024_09_18_233434_create_maintenance_frequencies_table',5),(44,'2024_09_18_214324_create_org_facilities_table',6),(45,'2024_09_18_214335_create_org_wharehouses_table',6),(46,'2024_09_18_234101_create_assets_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_departments`
--

DROP TABLE IF EXISTS `org_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `internal_id` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_departments_internal_id_unique` (`internal_id`),
  KEY `org_departments_created_by_foreign` (`created_by`),
  KEY `org_departments_updated_by_foreign` (`updated_by`),
  CONSTRAINT `org_departments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `org_departments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_departments`
--

LOCK TABLES `org_departments` WRITE;
/*!40000 ALTER TABLE `org_departments` DISABLE KEYS */;
INSERT INTO `org_departments` VALUES (1,'A11001','Direccion General',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(2,'A12001','Contabilidad',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(3,'A13001','Recursos Humanos',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(4,'A14001','Sistemas',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(5,'A15001','Credito y Cobranza',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(6,'A17001','Direccion General',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(7,'A17002','Direccion General 2',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(8,'A17003','Direccion General 3',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(9,'A19001','Seguridad e Higiene',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(10,'A20001','Planeacion y Desarrollo',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(11,'D14001','Logistica',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(12,'D15001','Surtido y Abastecimiento',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(13,'D16001','Empaque y Embarques',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(14,'D17001','Devoluciones',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(15,'D18001','Control de Inventarios',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(16,'DA1104','Logistica',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(17,'DA1109','Surtido y Abastecimiento',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(18,'DA1110','Empaque y Embarques',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(19,'DA1111','Devoluciones',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(20,'K11001','Marketing',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(21,'M11001','Direccion MAY-DET',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(22,'M11002','Venta Mayoreo',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(23,'M21001','Venta Mayoreo Norte',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(24,'M22001','Venta Mayoreo Local',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(25,'M23001','Venta Mayoreo Centro',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(26,'M24001','Venta Mayoreo Pacifico',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(27,'N11001','Venta Detalle',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(28,'N12001','Venta Detalle Norte',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(29,'N13001','Venta Detalle Sur',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(30,'N14001','Venta Detalle Bajio 1',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(31,'N15001','Venta Detalle Bajio 2',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(32,'P11001','Direccion de Operaciones',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(33,'P11008','Gerencia de Produccion',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(34,'P21001','Planificacion',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(35,'P21010','Planificacion Estrategica',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(36,'P22001','Preprensa',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(37,'P22010','Ingenieria Producto',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(38,'P26001','Planta Amistad',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(39,'P27001','Calidad',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(40,'P30001','Mejora Continua',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(41,'P41001','Impresion',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(42,'P42001','Barniz UV',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(43,'P43003','Suaje',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(44,'P44001','Pegado',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(45,'P45001','Preensamble',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(46,'P46001','Ensamble',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(47,'P47001','Cabeteado',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(48,'P47005','Formado Asa',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(49,'P48001','Mantenimiento',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(50,'P49001','Flexografia',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(51,'P50001','Corte',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(52,'P50003','Corte Cuadernos',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(53,'P51001','Transferencia Interplanta',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(54,'P63001','Embarques',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(55,'P64004','Serigrafia',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(56,'P65001','Hojeado',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(57,'P66001','Rollos',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(58,'P67001','Engargolado',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(59,'P68001','Abastecimiento',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(60,'P69001','Pasta Dura',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(61,'P70001','Costura',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(62,'P71001','Polipropileno',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(63,'P72001','Cuadernos Manuales',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(64,'P73001','Doblez',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(65,'P74001','Cuadernos Cosidos',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(66,'P75001','Combinado',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(67,'P76001','Moldeado',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(68,'P77001','Rayado',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(69,'P78001','Estampado',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(70,'P81001','Laminado',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(71,'VA3001','Gerencia Venta Detalle',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(72,'VA3101','Venta Detalle Norte',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(73,'VA3201','Venta Detalle Sur',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(74,'VA3301','Venta Detalle Bajio 1',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(75,'VA3401','Venta Detalle Bajio 2',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(76,'VA4101','Tienda Mesones',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(77,'VA4201','Tienda Aguilitas',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(78,'W11001','Direccion AS-EXP-IND',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(79,'W12001','Direccion Comercial',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(80,'W21001','Venta AS',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(81,'W22001','Promotoria Fija',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(82,'W23001','Promotoria Eventual',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(83,'X11001','Venta Exportacion',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1),(84,'Y11001','Venta Industrial 2',NULL,'2024-08-13 00:00:00','2024-08-13 00:00:00',1,1);
/*!40000 ALTER TABLE `org_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_employees`
--

DROP TABLE IF EXISTS `org_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `internal_id` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` bigint unsigned NOT NULL,
  `location_id` bigint unsigned NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_employees_internal_id_unique` (`internal_id`),
  KEY `org_employees_department_id_foreign` (`department_id`),
  KEY `org_employees_location_id_foreign` (`location_id`),
  KEY `org_employees_created_by_foreign` (`created_by`),
  KEY `org_employees_updated_by_foreign` (`updated_by`),
  CONSTRAINT `org_employees_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `org_employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `org_departments` (`id`),
  CONSTRAINT `org_employees_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `org_locations` (`id`),
  CONSTRAINT `org_employees_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_employees`
--

LOCK TABLES `org_employees` WRITE;
/*!40000 ALTER TABLE `org_employees` DISABLE KEYS */;
INSERT INTO `org_employees` VALUES (1,'10754','Jonathan Lennart Cruz Garcia',4,1,NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1);
/*!40000 ALTER TABLE `org_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_facilities`
--

DROP TABLE IF EXISTS `org_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_facilities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_facilities`
--

LOCK TABLES `org_facilities` WRITE;
/*!40000 ALTER TABLE `org_facilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_locations`
--

DROP TABLE IF EXISTS `org_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `org_locations_created_by_foreign` (`created_by`),
  KEY `org_locations_updated_by_foreign` (`updated_by`),
  CONSTRAINT `org_locations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `org_locations_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_locations`
--

LOCK TABLES `org_locations` WRITE;
/*!40000 ALTER TABLE `org_locations` DISABLE KEYS */;
INSERT INTO `org_locations` VALUES (1,'Torre Norte','U',NULL,'2024-01-01 00:00:00','2024-01-01 00:00:00',1,1);
/*!40000 ALTER TABLE `org_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_wharehouses`
--

DROP TABLE IF EXISTS `org_wharehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_wharehouses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_wharehouses`
--

LOCK TABLES `org_wharehouses` WRITE;
/*!40000 ALTER TABLE `org_wharehouses` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_wharehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('ij2mJg4gQxy4Ayzx695gih35wQAdd6KtGvGwJVVS',1,'172.18.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ0tSS254bUNBdGFhTk5KQkJWUnppZ29xR3E3ZjdRTUxpQ1dyTGxtSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvYXNzZXRzL2NvbXB1dGVycyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1726708114),('L97bikZoifBgeAbWrVmwTPyXgu2ZwF1ahqfRmmzS',1,'172.18.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYUlnNVFkOW9ZY0p0WVJqVlNGUnRaenozTVV1NDZtRWU1dGU5a0hpTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMC4zLjMuMTc0L29yZ2FuaXphdGlvbi9kZXBhcnRtZW50cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1726695647),('v1QOiA3e2IoHRO28J0fVzPavJQw9Cl5SLr6U8fj0',1,'172.18.0.1','Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQnlINmtoR0ttSldRYW1lVjBGd05wYzRBcEpMUDRwNHNzZzFjYmpLMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMC4zLjMuMTc0L2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1726681102),('VTzkCgaW9ICM9tjfQGq9hGtAuqP30H5JCSECuLZQ',1,'172.18.0.1','Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNE12UUdFVHR2OHJUNktUTDhKN0xYOUg4QVBRZGxEbWFPb1p0WFY2USI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMC4zLjMuMTc0L2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1726703852);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `initials` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jonathan Lennart Cruz Garcia','jonathan.cruz@cisacv.com.mx','2024-09-18 01:44:45','$2y$12$0/iVdePSFUIn234FJgKPfu0dwhPeehtEXLjX7KD/5/Vr4rtbih1Gm',NULL,NULL,NULL,'d8XfXlGuPS36Zpd7ZfoAzpwVIa2525o6FUo2eelpq1hMzQVCDVodw87Xbzn5','2024-09-18 01:44:45','2024-09-18 01:44:45','JC');
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

-- Dump completed on 2024-09-18 19:10:40
