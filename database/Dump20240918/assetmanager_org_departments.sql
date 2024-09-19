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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-18 19:10:03
