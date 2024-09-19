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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-18 19:10:05
