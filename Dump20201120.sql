CREATE DATABASE  IF NOT EXISTS `rasp_web` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rasp_web`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: rasp_web
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
-- Table structure for table `datosth`
--

DROP TABLE IF EXISTS `datosth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datosth` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Idsensor` int DEFAULT NULL,
  `Temperatura` decimal(10,0) DEFAULT NULL,
  `Humedad` decimal(10,0) DEFAULT NULL,
  `Tiempo` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Id_idx` (`Idsensor`),
  CONSTRAINT `idsensor` FOREIGN KEY (`Idsensor`) REFERENCES `sensor` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15621 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosth`
--

LOCK TABLES `datosth` WRITE;
/*!40000 ALTER TABLE `datosth` DISABLE KEYS */;
INSERT INTO `datosth` VALUES (15401,1,9,39,'2020-11-19 17:03:48'),(15402,1,11,40,'2020-11-19 17:03:49'),(15403,1,9,41,'2020-11-19 17:12:08'),(15404,1,10,41,'2020-11-19 17:12:09'),(15405,1,10,40,'2020-11-19 17:20:29'),(15406,1,9,39,'2020-11-19 17:20:29'),(15407,1,10,38,'2020-11-19 17:28:49'),(15408,1,10,39,'2020-11-19 17:28:49'),(15409,1,11,40,'2020-11-19 17:37:09'),(15410,1,10,40,'2020-11-19 17:37:10'),(15411,1,10,38,'2020-11-19 17:45:29'),(15412,1,10,39,'2020-11-19 17:45:30'),(15413,1,10,40,'2020-11-19 17:53:50'),(15414,1,9,41,'2020-11-19 17:53:50'),(15415,1,9,39,'2020-11-19 18:02:10'),(15416,1,10,40,'2020-11-19 18:02:10'),(15417,1,10,38,'2020-11-19 18:10:30'),(15418,1,10,39,'2020-11-19 18:10:31'),(15419,1,8,39,'2020-11-19 19:04:51'),(15420,1,11,41,'2020-11-19 19:04:52'),(15421,1,10,40,'2020-11-19 19:13:12'),(15422,1,10,39,'2020-11-19 19:13:12'),(15423,1,8,40,'2020-11-19 19:21:32'),(15424,1,10,39,'2020-11-19 19:21:33'),(15425,1,9,38,'2020-11-19 19:29:52'),(15426,1,9,40,'2020-11-19 19:29:53'),(15427,1,8,39,'2020-11-19 19:38:12'),(15428,1,10,38,'2020-11-19 19:38:13'),(15429,1,9,40,'2020-11-19 19:46:33'),(15430,1,9,39,'2020-11-19 19:46:34'),(15431,1,9,40,'2020-11-19 19:54:53'),(15432,1,9,38,'2020-11-19 19:54:54'),(15433,1,8,38,'2020-11-19 20:03:13'),(15434,1,9,39,'2020-11-19 20:03:14'),(15435,1,8,38,'2020-11-19 20:11:34'),(15436,1,9,39,'2020-11-19 20:11:35'),(15437,1,9,38,'2020-11-19 20:19:54'),(15438,1,9,39,'2020-11-19 20:19:55'),(15439,1,10,40,'2020-11-19 20:28:14'),(15440,1,10,39,'2020-11-19 20:28:15'),(15441,1,10,40,'2020-11-19 20:36:35'),(15442,1,8,39,'2020-11-19 20:36:35'),(15443,1,10,38,'2020-11-19 20:44:55'),(15444,1,8,39,'2020-11-19 20:44:56'),(15445,1,9,39,'2020-11-19 20:53:15'),(15446,1,10,40,'2020-11-19 20:53:16'),(15447,1,10,40,'2020-11-19 21:01:35'),(15448,1,9,40,'2020-11-19 21:01:36'),(15449,1,8,39,'2020-11-19 21:09:57'),(15450,1,9,39,'2020-11-19 21:09:57'),(15451,1,10,39,'2020-11-19 21:18:17'),(15452,1,9,39,'2020-11-19 21:18:17'),(15453,1,9,40,'2020-11-19 21:26:38'),(15454,1,9,39,'2020-11-19 21:26:38'),(15455,1,10,40,'2020-11-19 21:34:58'),(15456,1,10,38,'2020-11-19 21:34:58'),(15457,1,9,40,'2020-11-19 21:43:18'),(15458,1,10,39,'2020-11-19 21:43:18'),(15459,1,9,40,'2020-11-19 21:51:39'),(15460,1,9,38,'2020-11-19 21:51:39'),(15461,1,10,40,'2020-11-19 21:59:59'),(15462,1,9,39,'2020-11-19 21:59:59'),(15463,1,9,40,'2020-11-19 22:08:22'),(15464,1,10,38,'2020-11-19 22:08:23'),(15465,1,9,39,'2020-11-19 22:16:42'),(15466,1,9,39,'2020-11-19 22:16:43'),(15467,1,10,39,'2020-11-19 22:25:02'),(15468,1,9,40,'2020-11-19 22:25:03'),(15469,1,10,40,'2020-11-19 22:33:22'),(15470,1,9,40,'2020-11-19 22:33:24'),(15471,1,11,38,'2020-11-19 22:41:43'),(15472,1,9,40,'2020-11-19 22:41:44'),(15473,1,9,41,'2020-11-19 22:50:03'),(15474,1,7,39,'2020-11-19 22:50:04'),(15475,1,9,40,'2020-11-19 22:58:23'),(15476,1,11,40,'2020-11-19 22:58:24'),(15477,1,9,39,'2020-11-19 23:06:43'),(15478,1,9,40,'2020-11-19 23:06:45'),(15479,1,12,40,'2020-11-19 23:15:04'),(15480,1,9,39,'2020-11-19 23:15:05'),(15481,1,10,40,'2020-11-19 23:23:24'),(15482,1,8,39,'2020-11-19 23:23:25'),(15483,1,9,40,'2020-11-19 23:31:44'),(15484,1,10,39,'2020-11-19 23:31:45'),(15485,1,9,40,'2020-11-19 23:40:05'),(15486,1,8,40,'2020-11-19 23:40:05'),(15487,1,10,38,'2020-11-19 23:48:25'),(15488,1,10,39,'2020-11-19 23:48:26'),(15489,1,8,38,'2020-11-19 23:56:45'),(15490,1,10,40,'2020-11-19 23:56:46'),(15491,1,9,39,'2020-11-20 00:05:06'),(15492,1,9,40,'2020-11-20 00:05:06'),(15493,1,9,39,'2020-11-20 00:13:26'),(15494,1,9,39,'2020-11-20 00:13:27'),(15495,1,9,40,'2020-11-20 00:21:46'),(15496,1,9,39,'2020-11-20 00:21:47'),(15497,1,9,39,'2020-11-20 00:30:06'),(15498,1,10,40,'2020-11-20 00:30:07'),(15499,1,10,40,'2020-11-20 00:38:27'),(15500,1,9,38,'2020-11-20 00:38:27'),(15501,1,9,40,'2020-11-20 00:46:49'),(15502,1,9,40,'2020-11-20 00:46:49'),(15503,1,10,39,'2020-11-20 00:55:09'),(15504,1,10,40,'2020-11-20 00:55:09'),(15505,1,9,39,'2020-11-20 01:48:36'),(15506,1,9,40,'2020-11-20 01:48:36'),(15507,1,9,40,'2020-11-20 01:56:59'),(15508,1,9,39,'2020-11-20 01:56:59'),(15509,1,9,39,'2020-11-20 02:05:21'),(15510,1,9,37,'2020-11-20 02:05:21'),(15511,1,9,39,'2020-11-20 02:13:42'),(15512,1,9,39,'2020-11-20 02:13:42'),(15513,1,10,39,'2020-11-20 02:22:03'),(15514,1,9,39,'2020-11-20 02:22:04'),(15515,1,9,40,'2020-11-20 02:30:23'),(15516,1,10,41,'2020-11-20 02:30:24'),(15517,1,9,39,'2020-11-20 02:38:44'),(15518,1,9,38,'2020-11-20 02:38:44'),(15519,1,9,39,'2020-11-20 02:47:06'),(15520,1,9,39,'2020-11-20 02:47:06'),(15521,1,10,39,'2020-11-20 02:55:26'),(15522,1,10,40,'2020-11-20 02:55:27'),(15523,1,9,39,'2020-11-20 03:03:47'),(15524,1,9,40,'2020-11-20 03:03:47'),(15525,1,9,40,'2020-11-20 03:12:07'),(15526,1,9,38,'2020-11-20 03:12:07'),(15527,1,9,40,'2020-11-20 03:20:27'),(15528,1,9,40,'2020-11-20 03:20:28'),(15529,1,10,39,'2020-11-20 03:28:48'),(15530,1,10,39,'2020-11-20 03:28:48'),(15531,1,9,40,'2020-11-20 03:37:08'),(15532,1,10,40,'2020-11-20 03:37:08'),(15533,1,9,39,'2020-11-20 03:45:28'),(15534,1,10,40,'2020-11-20 03:45:28'),(15535,1,9,39,'2020-11-20 03:53:48'),(15536,1,10,40,'2020-11-20 03:53:49'),(15537,1,10,40,'2020-11-20 04:02:09'),(15538,1,10,39,'2020-11-20 04:02:09'),(15539,1,8,41,'2020-11-20 04:10:29'),(15540,1,9,40,'2020-11-20 04:10:29'),(15541,1,10,39,'2020-11-20 04:18:49'),(15542,1,10,39,'2020-11-20 04:18:49'),(15543,1,9,40,'2020-11-20 04:27:09'),(15544,1,8,38,'2020-11-20 04:27:10'),(15545,1,8,39,'2020-11-20 04:35:29'),(15546,1,11,40,'2020-11-20 04:35:30'),(15547,1,9,40,'2020-11-20 04:43:50'),(15548,1,8,38,'2020-11-20 04:43:51'),(15549,1,9,39,'2020-11-20 04:52:10'),(15550,1,9,39,'2020-11-20 04:52:11'),(15551,1,10,39,'2020-11-20 05:00:30'),(15552,1,10,39,'2020-11-20 05:00:31'),(15553,1,9,39,'2020-11-20 05:08:50'),(15554,1,10,40,'2020-11-20 05:08:52'),(15555,1,10,40,'2020-11-20 05:17:11'),(15556,1,10,39,'2020-11-20 05:17:12'),(15557,1,9,38,'2020-11-20 05:25:31'),(15558,1,8,38,'2020-11-20 05:25:32'),(15559,1,10,39,'2020-11-20 05:33:51'),(15560,1,9,39,'2020-11-20 05:33:53'),(15561,1,10,40,'2020-11-20 05:42:12'),(15562,1,10,38,'2020-11-20 05:42:13'),(15563,1,10,39,'2020-11-20 05:50:32'),(15564,1,10,41,'2020-11-20 05:50:33'),(15565,1,9,39,'2020-11-20 05:58:52'),(15566,1,11,40,'2020-11-20 05:58:53'),(15567,1,9,39,'2020-11-20 06:07:13'),(15568,1,9,39,'2020-11-20 06:07:14'),(15569,1,7,39,'2020-11-20 06:15:33'),(15570,1,9,40,'2020-11-20 06:15:34'),(15571,1,9,39,'2020-11-20 06:23:53'),(15572,1,11,39,'2020-11-20 06:23:54'),(15573,1,9,38,'2020-11-20 06:32:13'),(15574,1,9,39,'2020-11-20 06:32:14'),(15575,1,9,38,'2020-11-20 06:40:33'),(15576,1,9,38,'2020-11-20 06:40:35'),(15577,1,8,40,'2020-11-20 06:48:54'),(15578,1,11,39,'2020-11-20 06:48:55'),(15579,1,8,40,'2020-11-20 06:57:14'),(15580,1,9,40,'2020-11-20 06:57:15'),(15581,1,10,40,'2020-11-20 07:05:34'),(15582,1,11,40,'2020-11-20 07:05:35'),(15583,1,11,41,'2020-11-20 07:13:55'),(15584,1,9,38,'2020-11-20 07:13:56'),(15585,1,10,39,'2020-11-20 07:22:15'),(15586,1,10,39,'2020-11-20 07:22:16'),(15587,1,10,39,'2020-11-20 07:30:35'),(15588,1,8,38,'2020-11-20 07:30:36'),(15589,1,10,39,'2020-11-20 07:38:55'),(15590,1,10,40,'2020-11-20 07:38:56'),(15591,1,8,41,'2020-11-20 07:47:16'),(15592,1,10,39,'2020-11-20 07:47:17'),(15593,1,9,38,'2020-11-20 07:55:36'),(15594,1,10,40,'2020-11-20 07:55:37'),(15595,1,9,39,'2020-11-20 08:03:56'),(15596,1,9,39,'2020-11-20 08:03:57'),(15597,1,11,39,'2020-11-20 08:12:16'),(15598,1,10,41,'2020-11-20 08:12:17'),(15599,1,9,39,'2020-11-20 08:20:38'),(15600,1,9,40,'2020-11-20 08:20:38'),(15601,1,9,39,'2020-11-20 08:28:58'),(15602,1,10,39,'2020-11-20 08:28:59'),(15603,1,9,40,'2020-11-20 08:37:19'),(15604,1,10,39,'2020-11-20 08:37:19'),(15605,1,9,39,'2020-11-20 08:45:39'),(15606,1,10,38,'2020-11-20 08:45:39'),(15607,1,10,39,'2020-11-20 08:53:59'),(15608,1,11,40,'2020-11-20 08:53:59'),(15609,1,9,39,'2020-11-20 09:02:20'),(15610,1,10,39,'2020-11-20 09:02:20'),(15611,1,10,39,'2020-11-20 09:10:45'),(15612,1,8,40,'2020-11-20 09:10:45'),(15613,1,9,38,'2020-11-20 09:19:07'),(15614,1,10,40,'2020-11-20 09:19:07'),(15615,1,9,39,'2020-11-20 09:27:27'),(15616,1,9,38,'2020-11-20 09:27:27'),(15617,1,9,41,'2020-11-20 09:35:47'),(15618,1,8,39,'2020-11-20 09:35:47'),(15619,1,9,39,'2020-11-20 09:44:08'),(15620,1,10,40,'2020-11-20 09:44:08');
/*!40000 ALTER TABLE `datosth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor`
--

DROP TABLE IF EXISTS `sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Tipo` int NOT NULL,
  `Pin` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor`
--

LOCK TABLES `sensor` WRITE;
/*!40000 ALTER TABLE `sensor` DISABLE KEYS */;
INSERT INTO `sensor` VALUES (1,'sensor',1,1),(2,'sensor',1,0),(3,'sensor',1,3),(4,'sensor',1,4),(5,'sensor',1,5),(6,'sensor',1,6),(7,'sensor',1,7);
/*!40000 ALTER TABLE `sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Users_Id` int NOT NULL AUTO_INCREMENT,
  `Users_Name` varchar(255) NOT NULL,
  `Users_Correo` varchar(255) NOT NULL,
  `password_b` blob,
  PRIMARY KEY (`Users_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (22,'hola','a@hot.com',_binary 'cff7797e1a351cba671be16135974318310969be14e17388bded564bc8bad0d0'),(23,'hola','g@hotmail.com',_binary 'cff7797e1a351cba671be16135974318310969be14e17388bded564bc8bad0d0'),(24,'holi','el@hot.com',_binary '$2b$12$jg75j4Y4djRYGkDy0ob7OOaMbz7Xw9KdkHVKsh2lRbTQsx/dX8AiO'),(25,'pendejo','pendejo@hot.com',_binary '$2b$12$4DKvjTVJ4uz1PIZDhDWmeevMevlvDXGnDV.5.Tc8/hV6v1/V6EMtW');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rasp_web'
--

--
-- Dumping routines for database 'rasp_web'
--
/*!50003 DROP PROCEDURE IF EXISTS `promedio_24h` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `promedio_24h`()
BEGIN
	DECLARE x INT DEFAULT 0;
    SET SQL_SAFE_UPDATES = 0;
	CREATE TEMPORARY TABLE tempth (Idsensor INT, Temperatura decimal, Humedad decimal, Hora datetime);
    agregarloop: LOOP
		SET x = x + 1;
		INSERT INTO tempth SELECT Idsensor, AVG(Temperatura) as temperatura_p, AVG(Humedad) as humedad_p, (now() - interval x hour) as Hora 
			FROM (
			SELECT * 
			FROM rasp_web.datosth 
			where tiempo > now() - interval x hour and tiempo < now() - interval x-1 hour) as S1 
		order by Idsensor;
        IF x >= 24 THEN
			LEAVE agregarloop;
        END IF;
    END LOOP agregarloop;
    SELECT * FROM tempth WHERE Idsensor IS NOT NULL;
    DROP TEMPORARY TABLE tempth;
	DELETE FROM rasp_web.datosth WHERE Tiempo < (now() - interval 1 day);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20  9:45:17