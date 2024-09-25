-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 10.2.1.22    Database: assetmanager
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.28-MariaDB

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
-- Dumping data for table `asset_events`
--

LOCK TABLES `asset_events` WRITE;
/*!40000 ALTER TABLE `asset_events` DISABLE KEYS */;
INSERT INTO `asset_events` VALUES (1,'AE-1',1,'2024-09-25','2024-09-25',1,NULL,0,NULL,'2024-09-25 07:19:32','2024-09-25 07:19:32',1,1),(2,'AE-2',2,'2024-09-25',NULL,1,1,1,NULL,'2024-09-25 07:19:32','2024-09-25 07:19:32',1,1),(3,'AE-3',1,'2024-09-25','2024-09-25',2,NULL,0,NULL,'2024-09-25 07:20:53','2024-09-25 07:20:53',1,1),(4,'AE-4',2,'2024-09-25',NULL,2,1,1,NULL,'2024-09-25 07:20:53','2024-09-25 07:20:53',1,1),(5,'AE-5',1,'2024-09-25','2024-09-25',3,NULL,0,NULL,'2024-09-25 07:21:29','2024-09-25 07:21:29',1,1),(6,'AE-6',2,'2024-09-25',NULL,3,1,1,NULL,'2024-09-25 07:21:29','2024-09-25 07:21:29',1,1),(7,'AE-7',1,'2024-09-25','2024-09-25',4,NULL,0,NULL,'2024-09-25 07:21:56','2024-09-25 07:21:56',1,1),(8,'AE-8',2,'2024-09-25',NULL,4,1,1,NULL,'2024-09-25 07:21:56','2024-09-25 07:21:56',1,1),(9,'AE-9',1,'2024-09-25','2024-09-25',5,NULL,0,NULL,'2024-09-25 07:22:18','2024-09-25 07:22:18',1,1),(10,'AE-10',2,'2024-09-25',NULL,5,1,1,NULL,'2024-09-25 07:22:18','2024-09-25 07:22:18',1,1),(11,'AE-11',1,'2024-09-25','2024-09-25',6,NULL,0,NULL,'2024-09-25 07:22:49','2024-09-25 07:22:49',1,1),(12,'AE-12',2,'2024-09-25',NULL,6,1,1,NULL,'2024-09-25 07:22:49','2024-09-25 07:22:49',1,1),(13,'AE-13',1,'2024-09-25','2024-09-25',7,NULL,0,NULL,'2024-09-25 07:23:54','2024-09-25 07:23:54',1,1),(14,'AE-14',2,'2024-09-25',NULL,7,1,1,NULL,'2024-09-25 07:23:54','2024-09-25 07:23:54',1,1);
/*!40000 ALTER TABLE `asset_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,1,1,2,'DPK000001',1,'ProBook 440 G9','5CD2385PSM',NULL,NULL,NULL,NULL,1,1,2,1,2,'2024-01-01',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,1,1,2,'DPK000002',1,'EliteBook 830 G5','5CG92274KB',NULL,NULL,NULL,NULL,1,1,3,1,2,'2024-01-01',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(3,1,1,2,'DPK000003',1,'ProBook 440 G9','5CD2385PR7',NULL,NULL,NULL,NULL,1,1,3,1,2,'2024-01-01',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(4,1,1,2,'DPK000004',1,'ProBook 440 G9','5CD335875D',NULL,NULL,NULL,NULL,1,1,3,1,2,'2024-01-01',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(5,1,1,2,'DPK000005',5,'ThinkPad L14 Gen1','PF2HV80X',NULL,NULL,NULL,NULL,1,1,3,1,2,'2024-01-01',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(6,1,1,2,'DPK000006',1,'ProBook 440 G6','5CD932BFBB',NULL,NULL,NULL,NULL,1,1,3,1,2,'2024-01-01',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(7,1,1,2,'DPK000007',1,'EliteBook 830 G5','5CG922733Y',NULL,NULL,NULL,NULL,1,1,3,1,2,'2024-01-01',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('dcbbea33aa650245d3858400fa900349','i:1;',1727228728),('dcbbea33aa650245d3858400fa900349:timer','i:1727228728;',1727228728);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_asset_categories`
--

LOCK TABLES `cat_asset_categories` WRITE;
/*!40000 ALTER TABLE `cat_asset_categories` DISABLE KEYS */;
INSERT INTO `cat_asset_categories` VALUES (1,'Hardware',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,'Software',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_asset_event_types`
--

LOCK TABLES `cat_asset_event_types` WRITE;
/*!40000 ALTER TABLE `cat_asset_event_types` DISABLE KEYS */;
INSERT INTO `cat_asset_event_types` VALUES (1,'Alta en inventario','2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,'Asignacion a usuario','2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(3,'Recepcion','2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(4,'Baja de inventario','2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(5,'Mantenimiento preventivo','2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(6,'Mantenimiento correctivo','2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_asset_manufacturers`
--

LOCK TABLES `cat_asset_manufacturers` WRITE;
/*!40000 ALTER TABLE `cat_asset_manufacturers` DISABLE KEYS */;
INSERT INTO `cat_asset_manufacturers` VALUES (1,'HP',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,'Apple',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(3,'Xiaomi',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(4,'Samsunf',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(5,'Lenovo',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(6,'Zebra',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(7,'Sophos',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(8,'ZTE',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_asset_statuses`
--

LOCK TABLES `cat_asset_statuses` WRITE;
/*!40000 ALTER TABLE `cat_asset_statuses` DISABLE KEYS */;
INSERT INTO `cat_asset_statuses` VALUES (1,'Disponible',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,'Asignado',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_asset_subtypes`
--

LOCK TABLES `cat_asset_subtypes` WRITE;
/*!40000 ALTER TABLE `cat_asset_subtypes` DISABLE KEYS */;
INSERT INTO `cat_asset_subtypes` VALUES (1,'Desktop',1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,'Laptop',1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(3,'Mac',1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(4,'NUC',1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(5,'AiO',1,'','2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(6,'Matriz de puntos',2,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(7,'Laser',2,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(8,'Etiquetas',2,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(9,'Inyeccion de tinta',2,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cat_asset_types`
--

LOCK TABLES `cat_asset_types` WRITE;
/*!40000 ALTER TABLE `cat_asset_types` DISABLE KEYS */;
INSERT INTO `cat_asset_types` VALUES (1,'Equipo de computo',1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,'Impresora',1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(3,'Handheld',1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(4,'Tableta',1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(5,'Telefono celular',1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `cat_asset_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `maintenance_frequencies`
--

LOCK TABLES `maintenance_frequencies` WRITE;
/*!40000 ALTER TABLE `maintenance_frequencies` DISABLE KEYS */;
INSERT INTO `maintenance_frequencies` VALUES (1,2,4,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,5,8,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(3,9,12,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `maintenance_frequencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (121,'0001_01_01_000000_create_users_table',1),(122,'0001_01_01_000001_create_cache_table',1),(123,'0001_01_01_000002_create_jobs_table',1),(124,'2024_09_13_170157_add_two_factor_columns_to_users_table',1),(125,'2024_09_13_170355_add_initials_to_users_table',1),(126,'2024_09_13_170852_create_permission_tables',1),(127,'2024_09_18_204721_create_org_departments_table',1),(128,'2024_09_18_214343_create_org_locations_table',1),(129,'2024_09_18_222700_create_org_employees_table',1),(130,'2024_09_18_231811_create_cat_asset_categories_table',1),(131,'2024_09_18_231818_create_cat_asset_types_table',1),(132,'2024_09_18_231824_create_cat_asset_subtypes_table',1),(133,'2024_09_18_232753_create_cat_asset_manufacturers_table',1),(134,'2024_09_18_233111_create_cat_asset_statuses_table',1),(135,'2024_09_18_233434_create_maintenance_frequencies_table',1),(136,'2024_09_18_234101_create_assets_table',1),(137,'2024_09_24_161201_create_cat_asset_event_types',1),(138,'2024_09_24_161720_create_asset_events',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `org_departments`
--

LOCK TABLES `org_departments` WRITE;
/*!40000 ALTER TABLE `org_departments` DISABLE KEYS */;
INSERT INTO `org_departments` VALUES (1,'SD','Sin Departamento',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,'A11001','Direccion General',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(3,'A12001','Contabilidad',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(4,'A13001','Recursos Humanos',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(5,'A14001','Sistemas',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(6,'A15001','Credito y Cobranza',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(7,'A17001','Direccion General',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(8,'A17002','Direccion General 2',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(9,'A17003','Direccion General 3',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(10,'A19001','Seguridad e Higiene',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(11,'A20001','Planeacion y Desarrollo',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(12,'D14001','Logistica',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(13,'D15001','Surtido y Abastecimiento',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(14,'D16001','Empaque y Embarques',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(15,'D17001','Devoluciones',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(16,'D18001','Control de Inventarios',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(17,'DA1104','Logistica',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(18,'DA1109','Surtido y Abastecimiento',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(19,'DA1110','Empaque y Embarques',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(20,'DA1111','Devoluciones',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(21,'K11001','Marketing',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(22,'M11001','Direccion MAY-DET',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(23,'M11002','Venta Mayoreo',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(24,'M21001','Venta Mayoreo Norte',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(25,'M22001','Venta Mayoreo Local',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(26,'M23001','Venta Mayoreo Centro',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(27,'M24001','Venta Mayoreo Pacifico',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(28,'N11001','Venta Detalle',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(29,'N12001','Venta Detalle Norte',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(30,'N13001','Venta Detalle Sur',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(31,'N14001','Venta Detalle Bajio 1',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(32,'N15001','Venta Detalle Bajio 2',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(33,'P11001','Direccion de Operaciones',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(34,'P11008','Gerencia de Produccion',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(35,'P21001','Planificacion',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(36,'P21010','Planificacion Estrategica',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(37,'P22001','Preprensa',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(38,'P22010','Ingenieria Producto',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(39,'P26001','Planta Amistad',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(40,'P27001','Calidad',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(41,'P30001','Mejora Continua',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(42,'P41001','Impresion',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(43,'P42001','Barniz UV',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(44,'P43003','Suaje',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(45,'P44001','Pegado',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(46,'P45001','Preensamble',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(47,'P46001','Ensamble',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(48,'P47001','Cabeteado',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(49,'P47005','Formado Asa',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(50,'P48001','Mantenimiento',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(51,'P49001','Flexografia',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(52,'P50001','Corte',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(53,'P50003','Corte Cuadernos',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(54,'P51001','Transferencia Interplanta',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(55,'P63001','Embarques',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(56,'P64004','Serigrafia',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(57,'P65001','Hojeado',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(58,'P66001','Rollos',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(59,'P67001','Engargolado',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(60,'P68001','Abastecimiento',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(61,'P69001','Pasta Dura',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(62,'P70001','Costura',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(63,'P71001','Polipropileno',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(64,'P72001','Cuadernos Manuales',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(65,'P73001','Doblez',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(66,'P74001','Cuadernos Cosidos',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(67,'P75001','Combinado',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(68,'P76001','Moldeado',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(69,'P77001','Rayado',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(70,'P78001','Estampado',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(71,'P81001','Laminado',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(72,'VA3001','Gerencia Venta Detalle',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(73,'VA3101','Venta Detalle Norte',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(74,'VA3201','Venta Detalle Sur',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(75,'VA3301','Venta Detalle Bajio 1',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(76,'VA3401','Venta Detalle Bajio 2',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(77,'VA4101','Tienda Mesones',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(78,'VA4201','Tienda Aguilitas',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(79,'W11001','Direccion AS-EXP-IND',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(80,'W12001','Direccion Comercial',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(81,'W21001','Venta AS',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(82,'W22001','Promotoria Fija',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(83,'W23001','Promotoria Eventual',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(84,'X11001','Venta Exportacion',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1),(85,'Y11001','Venta Industrial 2',NULL,'2024-08-13 05:00:00','2024-08-13 05:00:00',1,1);
/*!40000 ALTER TABLE `org_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `org_employees`
--

LOCK TABLES `org_employees` WRITE;
/*!40000 ALTER TABLE `org_employees` DISABLE KEYS */;
INSERT INTO `org_employees` VALUES (1,'SU','Sin Usuario',NULL,1,NULL,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,'10752','Edgar Rene Jimenez Duardo','edgar.jimenez@cisacv.com.mx',5,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(3,'10754','Jonathan Lennart Cruz Garcia','jonathan.cruz@cisacv.com.mx',5,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(4,'10755','Victor Juan Aguilar Cruz','victor.aguilar@cisacv.com.mx',5,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(5,'10757','Monica Asuncion Terova Chavez','monica.terova@cisacv.com.mx',5,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(6,'15167','Sandra Luz Dominguez Trejo','sandra.dominguez@cisacv.com.mx',5,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(7,'17773','Oscar Cuevas Castro','oscar.cuevas@cisacv.com.mx',5,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(8,'18091','Yael Trejo Garcia','yael.trejo@cisacv.com.mx',5,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(9,'12042','Angel Alfonso Perez Perez','alfonso.perez@cisacv.com.mx',2,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(10,'267','Dora Maria Vega Gomez','dvega@cisacv.com.mx',2,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(11,'10792','Nadia Danilia Hernandez Alanis','nadia.hernandez@cisacv.com.mx',2,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(12,'15757','Diana Itzel Herrera Lopez','diana.herrera@dipak.com.mx',2,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(13,'16793','Dulce Monserrat Gonzalez Gonzalez','dulce.gonzalez@dipak.com.mx',2,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(14,'16845','Mario Lopez Gamez','mario.lopez@cisacv.com.mx',2,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(15,'16860','Ivonne Lozada Cortes','ivonne.lozada@cisacv.com.mx',2,1,1,NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `org_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `org_locations`
--

LOCK TABLES `org_locations` WRITE;
/*!40000 ALTER TABLE `org_locations` DISABLE KEYS */;
INSERT INTO `org_locations` VALUES (1,'Torre Norte','U',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(2,'Site Torre Norte','A',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(3,'Oficina Torre Norte','A',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(4,'Tultitlan I','U',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1),(5,'Site Tultitlan I','A',NULL,'2024-01-01 06:00:00','2024-01-01 06:00:00',1,1);
/*!40000 ALTER TABLE `org_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('Dn1G67guj0KGVDtPCwpMqMZBVXWXjATrQoZFt6Jw',1,'172.18.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNTBzUTR3ZEV1Q3lWdVFsY3RkVzY0NDR2Z0U4d3Z2NU12UDEwN1hUYyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vbG9jYWxob3N0L2Fzc2V0cy9jb21wdXRlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=',1727231417);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jonathan Lennart Cruz Garcia','jonathan.cruz@cisacv.com.mx','2024-09-25 01:38:19','$2y$12$vqIu1B6mpsf4Qn0O0bFDcOH/JNsZdfsebf5t2qwRSBQvUVgblx82C',NULL,NULL,NULL,'TuxPBdsjpA','2024-09-25 01:38:19','2024-09-25 01:38:19','JC');
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

-- Dump completed on 2024-09-24 20:32:59
