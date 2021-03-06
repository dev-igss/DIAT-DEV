CREATE DATABASE  IF NOT EXISTS `diat` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;
USE `diat`;
-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: diat
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

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
-- Table structure for table `bitacoras`
--

DROP TABLE IF EXISTS `bitacoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacoras` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacoras`
--

LOCK TABLES `bitacoras` WRITE;
/*!40000 ALTER TABLE `bitacoras` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet_request_details`
--

DROP TABLE IF EXISTS `diet_request_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diet_request_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `iddiet_request` int(11) NOT NULL,
  `iddiet` int(11) NOT NULL,
  `bed_number` int(11) DEFAULT NULL,
  `type_pack` int(11) DEFAULT NULL,
  `type_diet_1` int(11) DEFAULT NULL,
  `type_diet_hiposodicas` int(11) DEFAULT NULL,
  `type_diet_renal` int(11) DEFAULT NULL,
  `specify` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet_request_details`
--

LOCK TABLES `diet_request_details` WRITE;
/*!40000 ALTER TABLE `diet_request_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `diet_request_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet_requests`
--

DROP TABLE IF EXISTS `diet_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diet_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idjourney` int(11) NOT NULL,
  `idapplicant` int(11) NOT NULL,
  `idapplicant_service` int(11) NOT NULL,
  `total_diets` int(11) NOT NULL,
  `diets_served` int(11) NOT NULL,
  `iduser_served` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet_requests`
--

LOCK TABLES `diet_requests` WRITE;
/*!40000 ALTER TABLE `diet_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `diet_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet_requests_out_time`
--

DROP TABLE IF EXISTS `diet_requests_out_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diet_requests_out_time` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idjourney` int(11) NOT NULL,
  `idapplicant` int(11) NOT NULL,
  `amount_diets` int(11) NOT NULL,
  `time_available` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet_requests_out_time`
--

LOCK TABLES `diet_requests_out_time` WRITE;
/*!40000 ALTER TABLE `diet_requests_out_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `diet_requests_out_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diets`
--

DROP TABLE IF EXISTS `diets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npo` int(11) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diets`
--

LOCK TABLES `diets` WRITE;
/*!40000 ALTER TABLE `diets` DISABLE KEYS */;
INSERT INTO `diets` VALUES (1,'LIQUIDAS CLAROS',0,NULL,'2021-11-25 19:17:21','2021-11-25 19:17:21'),(2,'LIQUIDAS COMPLEMENTOS',0,NULL,'2021-11-25 19:17:25','2021-11-25 19:17:25'),(3,'BLANDA',0,NULL,'2021-11-25 19:17:30','2021-11-25 19:17:30'),(4,'PAPILLA (LICUADA/PUR??)',0,NULL,'2021-11-25 19:17:35','2021-11-25 19:17:35'),(5,'PICADA',0,NULL,'2021-11-25 19:17:39','2021-11-25 19:17:39'),(6,'HIPOGRASA',0,NULL,'2021-11-25 19:17:43','2021-11-25 19:17:43'),(7,'HIPOS??DICA',0,NULL,'2021-11-25 19:17:47','2021-11-25 19:17:47'),(8,'DIABETICA 1,500 CALOR??AS',0,NULL,'2021-11-25 19:17:52','2021-11-25 19:17:52'),(9,'DIABETICA 1,800 CALOR??AS',0,NULL,'2021-11-25 19:17:55','2021-11-25 19:17:55'),(10,'DIABETICA 2,000 CALOR??AS',0,NULL,'2021-11-25 19:18:00','2021-11-25 19:18:00'),(11,'DIABETICA 2,200 CALOR??AS',0,NULL,'2021-11-25 19:18:04','2021-11-25 19:18:04'),(12,'LIBRE',0,NULL,'2021-11-25 19:18:08','2021-11-25 19:18:08'),(13,'PEDIATRICAS 06 A 09 MESES (PAPILLA)',0,NULL,'2021-11-25 19:18:12','2021-11-25 19:18:12'),(14,'PEDIATRICAS 09 A 12 MESES (PICADA)',0,NULL,'2021-11-25 19:18:16','2021-11-25 19:18:16'),(15,'PEDIATRICAS 01 A 07 A??OS (LIBRE)',0,NULL,'2021-11-25 19:18:20','2021-11-25 19:18:20'),(16,'DIETAS CALCULADAS POR NUTRICI??N',0,NULL,'2021-11-25 19:18:26','2021-11-25 19:18:26'),(17,'OTRAS (ESPECIFICAR)',0,NULL,'2021-11-25 19:18:39','2021-11-25 19:18:39'),(18,'NPO',1,NULL,'2021-11-25 19:18:42','2021-11-25 19:18:42'),(19,'DIABETICA/HIPOSODICA',0,NULL,'2022-06-20 14:28:51','2022-06-20 14:28:51'),(20,'RENAL',0,NULL,'2022-06-20 14:28:55','2022-06-20 14:28:55'),(21,'BAJA EN PURINAS',0,NULL,'2022-06-20 14:29:06','2022-06-20 14:29:06'),(22,'BAJA EN FOSFORO',0,NULL,'2022-06-20 14:29:20','2022-06-20 14:29:20'),(23,'BAJA EN POTASIO',0,NULL,'2022-06-20 14:29:27','2022-06-20 14:29:27'),(24,'CELIACA',0,NULL,'2022-06-20 14:29:36','2022-06-20 14:29:36'),(25,'CONTROLADA EN ACIDO URICO',0,NULL,'2022-06-20 14:29:49','2022-06-20 14:29:49'),(26,'ALTA EN POTASIO',0,NULL,'2022-07-07 03:59:21','2022-07-07 03:59:21'),(27,'SIN LACTEOS',0,NULL,'2022-07-07 03:59:31','2022-07-07 03:59:31');
/*!40000 ALTER TABLE `diets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journeys`
--

DROP TABLE IF EXISTS `journeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journeys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journeys`
--

LOCK TABLES `journeys` WRITE;
/*!40000 ALTER TABLE `journeys` DISABLE KEYS */;
INSERT INTO `journeys` VALUES (1,'Desayuno','08:00:00','12:00:00',NULL,'2021-11-23 18:08:02','2021-11-23 18:08:02'),(2,'Almuerzo','14:00:00','16:00:00',NULL,'2021-11-23 18:14:48','2021-11-23 18:14:48'),(3,'Cena','18:00:00','23:00:00',NULL,'2021-11-23 18:15:11','2021-11-23 18:31:46');
/*!40000 ALTER TABLE `journeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_01_21_172808_create_users_table',1),(2,'2021_01_22_015600_create_municipalities_table',1),(3,'2021_01_22_030940_create_units_table',1),(4,'2021_01_22_161101_create_services_table',1),(5,'2021_01_23_035513_create_bitacoras_table',1),(6,'2021_11_23_112413_create_journeys_table',1),(7,'2021_11_23_124337_create_diets_table',1),(8,'2021_11_24_101006_create_diet_requests_table',1),(9,'2021_11_24_120057_create_diet_request_details_table',1),(10,'2022_06_27_151918_add_fields_to_diet_request_details_table',2),(14,'2022_07_08_095457_create_diet_requests_out_time_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipalities`
--

DROP TABLE IF EXISTS `municipalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipalities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipalities`
--

LOCK TABLES `municipalities` WRITE;
/*!40000 ALTER TABLE `municipalities` DISABLE KEYS */;
INSERT INTO `municipalities` VALUES (1,'0101','Guatemala','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'0102','Santa Catarina Pinula','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'0103','San Jos?? Pinula','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'0104','San Jos?? del Golfo','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'0105','Palencia','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'0106','Chinautla','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'0107','San Pedro Ayampuc','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'0108','Mixco','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'0109','San Pedro Sacatep??quez','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'0110','San Juan Sacatep??quez','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'0111','San Raymundo','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'0112','Chuarrancho','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'0113','Fraijanes','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'0114','Amatitl??n','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'0115','Villa Nueva','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'0116','Villa Canales','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'0117','Petapa','Guatemala','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'0201','Guastatoya','El Progreso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'0202','Moraz??n','El Progreso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'0203','San Agust??n Acasaguastl??n','El Progreso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'0204','San Crist??bal Acasaguastl??n','El Progreso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'0205','El J??caro','El Progreso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'0206','Sansare','El Progreso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'0207','Sanarate','El Progreso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'0208','San Antonio la Paz','El Progreso','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'0301','Antigua Guatemala','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'0302','Jocotenango','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'0303','Pastores','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'0304','Sumpango','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'0305','Santo Domingo Xenacoj','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'0306','Santiago Sacatep??quez','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'0307','San Bartolom?? Milpas Altas','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'0308','San Lucas Sacatep??quez','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'0309','Santa Luc??a Milpas Altas','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'0310','Magdalena Milpas Altas','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'0311','Santa Mar??a de Jes??s','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'0312','Ciudad Vieja','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'0313','San Miguel Due??as','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'0314','Alotenango','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'0315','San Antonio Aguas Calientes','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'0316','Santa Catarina Barahona','Sacatep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'0401','Chimaltenango','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'0402','San Jos?? Poaquil','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'0403','San Mart??n Jilotepeque','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'0404','Comalapa','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'0405','Santa Apolonia','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'0406','Tecp??n Guatemala','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'0407','Patz??n','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'0408','Pochuta','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'0409','Patzic??a','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'0410','Santa Cruz Balany??','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'0411','Acatenango','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'0412','Yepocapa','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'0413','San Andr??s Itzapa','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'0414','Parramos','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'0415','Zaragoza','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'0416','El Tejar','Chimaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'0501','Escuintla','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'0502','Santa Luc??a Cotzumalguapa','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'0503','La Democracia','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'0504','Siquinal??','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'0505','Masagua','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'0506','Tiquisate','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'0507','La Gomera','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'0508','Guanagazapa','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'0509','San Jos??','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'0510','Iztapa','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'0511','Pal??n','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'0512','San Vicente Pacaya','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'0513','Nueva Concepci??n','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'0514','Sipacate','Escuintla','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'0601','Cuilapa','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'0602','Barberena','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'0603','Santa Rosa de Lima','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'0604','Casillas','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'0605','San Rafael las Flores','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'0606','Oratorio','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'0607','San Juan Tecuaco','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'0608','Chiquimulilla','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'0609','Taxisco','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'0610','Santa Mar??a Ixhuat??n','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'0611','Guazacap??n','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'0612','Santa Cruz Naranjo','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'0613','Pueblo Nuevo Vi??as','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'0614','Nueva Santa Rosa','Santa Rosa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'0701','Solol??','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'0702','San Jos?? Chacay??','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'0703','Santa Mar??a Visitaci??n','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'0704','Santa Luc??a Utatl??n','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'0705','Nahual??','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'0706','Santa Catarina Ixtahuac??n','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'0707','Santa Clara la Laguna','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'0708','Concepci??n','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'0709','San Andr??s Semetabaj','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'0710','Panajachel','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'0711','Santa Catarina Palop??','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'0712','San Antonio Palop??','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'0713','San Lucas Tolim??n','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'0714','Santa Cruz la Laguna','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'0715','San Pablo la Laguna','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'0716','San Marcos la Laguna','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'0717','San Juan la Laguna','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'0718','San Pedro la Laguna','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'0719','Santiago Atitl??n','Solol??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'0801','Totonicap??n','Totonicap??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'0802','San Crist??bal Totonicap??n','Totonicap??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'0803','San Francisco el Alto','Totonicap??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'0804','San Andr??s Xecul','Totonicap??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'0805','Momostenango','Totonicap??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'0806','Santa Mar??a Chiquimula','Totonicap??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'0807','Santa Luc??a la Reforma','Totonicap??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'0808','San Bartolo','Totonicap??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'0901','Quetzaltenango','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'0902','Salcaj??','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'0903','Olintepeque','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'0904','San Carlos Sija','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'0905','Sibilia','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'0906','Cabric??n','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'0907','Cajol??','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'0908','San Miguel Siguil??','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'0909','Ostuncalco','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'0910','San Mateo','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'0911','Concepci??n Chiquirichapa','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'0912','San Mart??n Sacatep??quez','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'0913','Almolonga','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'0914','Cantel','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'0915','Huit??n','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'0916','Zunil','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'0917','Colomba','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'0918','San Francisco la Uni??n','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'0919','El Palmar','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'0920','Coatepeque','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'0921','G??nova','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'0922','Flores Costa Cuca','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'0923','La Esperanza','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'0924','Palestina de los Altos','Quetzaltenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'1001','Mazatenango','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'1002','Cuyotenango','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'1003','San Francisco Zapotitl??n','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'1004','San Bernardino','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'1005','San Jos?? el Idolo','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'1006','Santo Domingo Suchitep??quez','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'1007','San Lorenzo','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'1008','Samayac','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'1009','San Pablo Jocopilas','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'1010','San Antonio Suchitep??quez','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'1011','San Miguel Pan??n','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'1012','San Gabriel','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'1013','Chicacao','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'1014','Patulul','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'1015','Santa B??rbara','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'1016','San Juan Bautista','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'1017','Santo Tom??s la Uni??n','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'1018','Zunilito','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'1019','Pueblo Nuevo','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'1020','R??o Bravo','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'1021','San Jos?? La M??quina','Suchitep??quez','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'1101','Retalhuleu','Retalhuleu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'1102','San Sebasti??n','Retalhuleu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'1103','Santa Cruz Mulu??','Retalhuleu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'1104','San Mart??n Zapotitl??n','Retalhuleu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'1105','San Felipe','Retalhuleu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'1106','San Andr??s Villa Seca','Retalhuleu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'1107','Champerico','Retalhuleu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,'1108','Nuevo San Carlos','Retalhuleu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,'1109','El Asintal','Retalhuleu','0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,'1201','San Marcos','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,'1202','San Pedro Sacatep??quez','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,'1203','San Antonio Sacatep??quez','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,'1204','Comitancillo','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,'1205','San Miguel Ixtahuac??n','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,'1206','Concepci??n Tutuapa','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(173,'1207','Tacan??','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,'1208','Sibinal','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,'1209','Tajumulco','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,'1210','Tejutla','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,'1211','San Rafael Pi?? de la Cuesta','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,'1212','Nuevo Progreso','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,'1213','El Tumbador','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,'1214','El Rodeo','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,'1215','Malacat??n','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,'1216','Catarina','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,'1217','Ayutla','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(184,'1218','Oc??s','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,'1219','San Pablo','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,'1220','El Quetzal','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(187,'1221','La Reforma','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(188,'1222','Pajapita','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,'1223','Ixchigu??n','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(190,'1224','San Jos?? Ojeten??n','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,'1225','San Crist??bal Cucho','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,'1226','Sipacapa','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(193,'1227','Esquipulas Palo Gordo','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,'1228','R??o Blanco','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,'1229','San Lorenzo','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,'1230','La Blanca','San Marcos','0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,'1301','Huehuetenango','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,'1302','Chiantla','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,'1303','Malacatancito','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,'1304','Cuilco','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,'1305','Nent??n','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(202,'1306','San Pedro Necta','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(203,'1307','Jacaltenango','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(204,'1308','Soloma','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(205,'1309','Ixtahuac??n','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,'1310','Santa B??rbara','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(207,'1311','La Libertad','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(208,'1312','La Democracia','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(209,'1313','San Miguel Acat??n','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(210,'1314','San Rafael la Independencia','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(211,'1315','Todos Santos Cuchumat??n','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(212,'1316','San Juan Atit??n','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(213,'1317','Santa Eulalia','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(214,'1318','San Mateo Ixtat??n','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(215,'1319','Colotenango','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(216,'1320','San Sebasti??n Huehuetenango','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(217,'1321','Tectit??n','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(218,'1322','Concepci??n Huista','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(219,'1323','San Juan Ixcoy','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(220,'1324','San Antonio Huista','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(221,'1325','San Sebasti??n Coat??n','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,'1326','Barillas','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,'1327','Aguacat??n','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,'1328','San Rafael Petzal','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(225,'1329','San Gaspar Ixchil','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(226,'1330','Santiago Chimaltenango','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,'1331','Santa Ana Huista','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(228,'1332','Uni??n Cantinil','Huehuetenango','0000-00-00 00:00:00','0000-00-00 00:00:00'),(229,'1401','Santa Cruz del Quich??','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(230,'1402','Chich??','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(231,'1403','Chinique','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(232,'1404','Zacualpa','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(233,'1405','Chajul','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(234,'1406','Chichicastenango','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(235,'1407','Patzit??','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(236,'1408','San Antonio Ilotenango','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(237,'1409','San Pedro Jocopilas','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(238,'1410','Cun??n','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(239,'1411','San Juan Cotzal','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(240,'1412','Joyabaj','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(241,'1413','Nebaj','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(242,'1414','San Andr??s Sajcabaj??','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(243,'1415','Uspant??n','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(244,'1416','Sacapulas','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(245,'1417','San Bartolom?? Jocotenango','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(246,'1418','Canill??','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(247,'1419','Chicam??n','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(248,'1420','Ixc??n','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(249,'1421','Pachalum','Quich??','0000-00-00 00:00:00','0000-00-00 00:00:00'),(250,'1501','Salam??','Baja Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(251,'1502','San Miguel Chicaj','Baja Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(252,'1503','Rabinal','Baja Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(253,'1504','Cubulco','Baja Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(254,'1505','Granados','Baja Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(255,'1506','El Chol','Baja Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(256,'1507','San Jer??nimo','Baja Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(257,'1508','Purulh??','Baja Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(258,'1601','Cob??n','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(259,'1602','Santa Cruz Verapaz','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(260,'1603','San Crist??bal Verapaz','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(261,'1604','Tactic','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(262,'1605','Tamah??','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(263,'1606','Tucur??','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(264,'1607','Panz??s','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(265,'1608','Senah??','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(266,'1609','San Pedro Carch??','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(267,'1610','San Juan Chamelco','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(268,'1611','Lanqu??n','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(269,'1612','Cahab??n','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(270,'1613','Chisec','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(271,'1614','Chahal','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(272,'1615','Fray Bartolom?? de las Casas','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(273,'1616','Santa Catalina la Tinta','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(274,'1617','Raxruh??','Alta Verapaz','0000-00-00 00:00:00','0000-00-00 00:00:00'),(275,'1701','Flores','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(276,'1702','San Jos??','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(277,'1703','San Benito','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(278,'1704','San Andr??s','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(279,'1705','La Libertad','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(280,'1706','San Francisco','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(281,'1707','Santa Ana','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(282,'1708','Dolores','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(283,'1709','San Luis','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(284,'1710','Sayaxch??','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(285,'1711','Melchor de Mencos','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(286,'1712','Popt??n','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(287,'1713','Las Cruces','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(288,'1714','El Chal','Pet??n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(289,'1801','Puerto Barrios','Izabal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(290,'1802','Livingston','Izabal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(291,'1803','El Estor','Izabal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(292,'1804','Morales','Izabal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(293,'1805','Los Amates','Izabal','0000-00-00 00:00:00','0000-00-00 00:00:00'),(294,'1901','Zacapa','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(295,'1902','Estanzuela','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(296,'1903','R??o Hondo','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(297,'1904','Gual??n','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(298,'1905','Teculut??n','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(299,'1906','Usumatl??n','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(300,'1907','Caba??as','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(301,'1908','San Diego','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(302,'1909','La Uni??n','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(303,'1910','Huit??','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(304,'1911','San Jorge','Zacapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(305,'2001','Chiquimula','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(306,'2002','San Jos?? La Arada','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(307,'2003','San Juan Ermita','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(308,'2004','Jocot??n','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(309,'2005','Camot??n','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(310,'2006','Olopa','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(311,'2007','Esquipulas','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(312,'2008','Concepci??n Las Minas','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(313,'2009','Quetzaltepeque','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(314,'2010','San Jacinto','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(315,'2011','Ipala','Chiquimula','0000-00-00 00:00:00','0000-00-00 00:00:00'),(316,'2101','Jalapa','Jalapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(317,'2102','San Pedro Pinula','Jalapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(318,'2103','San Luis Jilotepeque','Jalapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(319,'2104','San Manuel Chaparr??n','Jalapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(320,'2105','San Carlos Alzatate','Jalapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(321,'2106','Monjas','Jalapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(322,'2107','Mataquescuintla','Jalapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(323,'2201','Jutiapa','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(324,'2202','El Progreso','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(325,'2203','Santa Catarina Mita','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(326,'2204','Agua Blanca','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(327,'2205','Asunci??n Mita','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(328,'2206','Yupiltepeque','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(329,'2207','Atescatempa','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(330,'2208','Jerez','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(331,'2209','El Adelanto','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(332,'2210','Zapotitl??n','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(333,'2211','Comapa','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(334,'2212','Jalpatagua','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(335,'2213','Conguaco','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(336,'2214','Moyuta','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(337,'2215','Pasaco','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(338,'2216','San Jos?? Acatempa','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(339,'2217','Quesada','Jutiapa','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `municipalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Hospitalizaci??n',0,0,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Consulta Externa',0,0,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Emergencia',0,0,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Servicio de Apoyo ',0,0,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Hosp - Covid 19',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Hosp - Medi-interna hombres',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Hosp - Medi-interna mujeres',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Hosp - Sala de quemados',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Hosp - Cirug??a hombres',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Hosp - Cirug??a mujeres',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Hosp - Cirug??a pedi??trica',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Hosp - Ginecolog??a',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Hosp - Alto riesgo-obst??trico',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Hosp - Post parto',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Hosp - Aislamiento ginecol??gico',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Hosp - Pediatr??a general',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Hosp - Neonatolog??a alto riesgo',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Hosp - Neonatolog??a bajo riesgo',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Hosp - Trauma-orto hombres',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Hosp - Trauma-orto mujeres',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Hosp - Trauma-orto pedi??trica',1,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Cons - medicina gral',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'Cons - enfermedad com??n',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Cons -  recetas de apoyo',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Cons -  medicina interna',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Cons -  cardiolog??a adultos',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Cons -  neumolog??a adultos',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Cons -  reumatologia adultos',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Cons -  neurolog??a adultos',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Cons -  nefrolo-adultos',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'Cons -  nefrolo-pedi??trica',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Cons -  derma-adultos',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'Cons -  geriatr??a',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Cons -  evaluaci??n preoperatoria',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Cons -  cirug??a general',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Cons -  coloproctolog??a',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Cons -  otorrinolaringolog??a',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Cons -  obstetr??cia',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Cons -  ginecolog??a',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Cons -  neonatolog??a',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Cons -  neumo-pedi??trica',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Cons -  neuro-pedi??trica',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Cons -  ciru-pedi??trica',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'Cons -  pediatr??a',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Cons -  alergo-pedi??trica',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'Cons -  trauma-orto general',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Cons -  cirug??a de mano',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Cons -  cirug??a oral y maxilofacial',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Cons -  oftalmolog??a',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Cons -  psiquiatr??a',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Cons -  med f??sica-rehabilitaci??n',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Cons -  odonto-general',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'Cons -  psicolog??a',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'Cons -  nutrici??n',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'Vacunas',2,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'Emer - general',3,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'Emer - pedi??trica',3,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'Emer - ginecobstetricia',3,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'Emer - trauma',3,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'Emer - cirug??a',3,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'Emer - observaci??n adultos',3,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'Emer - Covid 19',3,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'Servicio a unidades (externas)',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'Hospital de d??a general',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'Cuid intens pedi??trico',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'Cuid intens adultos',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'Cuid intens neonatolog??a',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'Cuid intens Covid 19',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'Cuid interm adultos',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'Recuperaci??n (labor y partos)',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'Electrocardiograma',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'Quir??fano general',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'Quir??fano ces??reas',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'Anestesia cirug-gral',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'Laboratorio cl??nico',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'Radiolog??a',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'Ultrasonido general',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'Laboratorio patol??gico',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'Farmacia',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'Unidosis',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'Labor y partos',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'Nutrici??n y diet??tica',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'Lactario',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'Alimentaci??n parenteral',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'Mamograf??a',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'Densitometr??a',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'Fisioterapia',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'Terapia respiratoria',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'Banco de sangre',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'Hemodi??lisis intrahospitalaria',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'Procedimientos generales',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'Curaciones ',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'Hipod??rmia general',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'Signos vitales',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'Roper??a y costurer??a',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'Lavander??a',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'Trabajo social',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'Docencia',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'Central equipo general',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'Mantenimiento',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'Ambulancia',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'Transporte',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'Inform??tica',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'Direcci??n administraci??n',4,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipality_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'090301','Hospital General de Quetzaltenango',113,NULL,'2022-06-01 14:59:33','2022-06-01 14:59:33');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ibm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `idunit` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_ibm_unique` (`ibm`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Daniel','Velasquez','37732','$2y$10$0zfZ2x2r4TwbTZ4CNTSQ6u/l8KUDBAw65WTg3EYgD/W/6l2T7ye3C','{\"dashboard\":\"true\",\"dashboard_small_stats\":\"true\",\"units\":\"true\",\"unit_add\":\"true\",\"unit_edit\":\"true\",\"unit_delete\":\"true\",\"unit_search\":\"true\",\"diets\":\"true\",\"diet_add\":\"true\",\"diet_edit\":\"true\",\"diet_delete\":\"true\",\"serviceg_list\":\"true\",\"serviceg_add\":\"true\",\"serviceg_edit\":\"true\",\"service_list\":\"true\",\"service_add\":\"true\",\"service_edit\":\"true\",\"journeys\":\"true\",\"journey_add\":\"true\",\"journey_edit\":\"true\",\"journey_delete\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"diet_request_print\":\"true\",\"diet_request_print_journey\":\"true\",\"diet_request_served\":\"true\",\"diet_request_delete\":\"true\",\"reports\":\"true\",\"report_informatica\":\"true\",\"report_user\":\"true\",\"report_bitacora\":\"true\",\"bitacoras\":\"true\",\"user_list\":\"true\",\"user_add\":\"true\",\"user_edit\":\"true\",\"user_search\":\"true\",\"user_banned\":\"true\",\"user_delete\":\"true\",\"user_reset_password\":\"true\",\"user_permissions\":\"true\",\"user_requests_out\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',0,NULL,1,'JQgR5YEYXXUEdfzfxDVX0Rjbv4lhYm0C9fKdmDlcWlDBMFxndCxTBNuPvEMQ',NULL,NULL,'2022-07-08 15:18:01'),(2,'Alimentacion','Prueba','377321','$2y$10$TxGJCDENull1t1PX3ufpmuo2JGDkgXNH4iC.YzBy10cpVF14wZu.6','{\"dashboard\":\"true\",\"diets\":\"true\",\"serviceg_list\":\"true\",\"service_list\":\"true\",\"journeys\":\"true\",\"diet_requests\":\"true\",\"diet_request_view\":\"true\",\"diet_request_print\":\"true\",\"diet_request_served\":\"true\",\"diet_request_delete\":\"true\",\"user_list\":\"true\",\"user_requests_out\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',4,1,1,'5rmKYmPunghc5vWi34FUtCbQidt07mmf16tyugfK3vRcMb9kM41O9LblybFg',NULL,'2022-07-07 17:49:30','2022-07-08 22:27:46'),(3,'Enfermeria','Prueba','377322','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,'H0rcCJOgc5JC2aTXl9AYYCYbztkuW8xtT1eq3EKbcVmCs1hAouDcDUCHFBwJ',NULL,'2022-07-07 17:49:42','2022-07-08 15:19:10'),(4,'Administrador','Prueba','377323','$2y$10$1SIFHg1lU3RTUfXPIHhZO.5Cnqy8UnXo1Ar72WbcjpsYJhEFOJzYC','{\"dashboard\":\"true\",\"units\":\"true\",\"unit_add\":\"true\",\"unit_edit\":\"true\",\"unit_delete\":\"true\",\"unit_search\":\"true\",\"diets\":\"true\",\"diet_add\":\"true\",\"diet_edit\":\"true\",\"diet_delete\":\"true\",\"serviceg_list\":\"true\",\"serviceg_add\":\"true\",\"serviceg_edit\":\"true\",\"service_list\":\"true\",\"service_add\":\"true\",\"service_edit\":\"true\",\"journeys\":\"true\",\"journey_add\":\"true\",\"journey_edit\":\"true\",\"journey_delete\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"diet_request_print\":\"true\",\"diet_request_print_journey\":\"true\",\"diet_request_served\":\"true\",\"diet_request_delete\":\"true\",\"reports\":\"true\",\"report_informatica\":\"true\",\"report_user\":\"true\",\"report_bitacora\":\"true\",\"bitacoras\":\"true\",\"user_list\":\"true\",\"user_add\":\"true\",\"user_edit\":\"true\",\"user_search\":\"true\",\"user_banned\":\"true\",\"user_delete\":\"true\",\"user_reset_password\":\"true\",\"user_permissions\":\"true\",\"user_requests_out\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',3,1,1,'tdUlGaeoT3dwckAErUihKwItlXoT3QTmfvtVMtU7ymn1Xz9vecvrngGIBgjQ',NULL,'2022-07-08 00:33:18','2022-07-08 15:19:00'),(5,'Flor ','Huinac','39106','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(6,'Eluvia','Escobar','30711','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,'zu04DsxoFXXXFBWVDejEb8YIwWJH2OeVRJ8Q9TLOIFjmHyCy21k5glS16lb8',NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(7,'Gabriela','Muralles','38273','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(8,'Ana','Lucas','38470','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(9,'Fide','Moran','37789','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(10,'Heydi','Poncio','39246','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(11,'Arcadia','Sac','37714','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(12,'Hilda ','Alvarez','37818','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(13,'Lucy','Colop','31001','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(14,'Urias','Barrios','36942','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(15,'Silvia','Cayax','37769','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(16,'Sergio','Cux','38237','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(17,'Jose','Ochoa','37867','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(18,'Ingrid','Tzic','38253','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(19,'Pedro','Ventura','39310','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(20,'Pedro','Lopez','37764','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(21,'Cristian','Mazariegos','38044','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(22,'Mayra','Ramirez','36294','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(23,'Eugenia','Sam','39751','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(24,'Gustavo','Mejia','39328','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(25,'Eillen','Hernandez','39251','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,'3cLK7y8lHQtF1A1LfKCCHyB0isy2hXd5UttUJak5yjmz3aDhgltIghkVxaCx',NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00'),(26,'Emilia','Macario','39702','$2y$10$hBooemJbKXuiml.OU8S0XeIvyLRd.HYueLajcmC22JcbIq8ujIq8K','{\"dashboard\":\"true\",\"diets\":\"true\",\"diet_requests\":\"true\",\"diet_request_add\":\"true\",\"diet_request_view\":\"true\",\"user_info\":\"true\",\"user_change_password\":\"true\"}',5,1,1,NULL,NULL,'2022-07-08 21:30:00','2022-07-08 21:30:00');
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

-- Dump completed on 2022-07-11 12:15:43
