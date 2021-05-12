-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: AGUARIOFABIAN
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `id_libro` int(4) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `creador` varchar(20) NOT NULL,
  `año` int(4) NOT NULL,
  `editorial` varchar(20) DEFAULT NULL,
  `lugar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'La muerte del comend','Haruki Murakami',2018,'Tusquets Mexico','Mexico'),(2,'Crimen y castigo','Fiodor Dostoievski',1866,'Alianza','Mexico'),(3,'El Principito','Antoine De Saint-Exu',1943,'Advanced Marketing','Mexico'),(4,'El amor en tiempos d','Gabriel Garcia Marqu',2015,'Diana Mexico','Mexico'),(5,'Pedro Paramo','Juan Rulfo',2005,'Rm','Mexico');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica`
--

DROP TABLE IF EXISTS `musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musica` (
  `id_cancion` int(4) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `creador` varchar(20) NOT NULL,
  `año` int(4) NOT NULL,
  `album` varchar(20) NOT NULL DEFAULT 'The Wall',
  PRIMARY KEY (`id_cancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica`
--

LOCK TABLES `musica` WRITE;
/*!40000 ALTER TABLE `musica` DISABLE KEYS */;
INSERT INTO `musica` VALUES (1,'Wild Thing','The Troggs',1966,'From Nowhere'),(2,'Something In The Way','Nirvana',1991,'Nevermind'),(3,'Afterlife','Arcade Fire',2013,'Reflektor'),(4,'Fugaz','Panteon Rococo',2019,'Infiernos'),(5,'Kilometros','Los Caligaris',2007,'No Es Lo Que Parece');
/*!40000 ALTER TABLE `musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peli`
--

DROP TABLE IF EXISTS `peli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peli` (
  `id_peli` int(4) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `creador` varchar(20) DEFAULT NULL,
  `año` int(4) DEFAULT NULL,
  `actor` varchar(20) DEFAULT NULL,
  `clasificacion` enum('AA','A','B','B15','C') DEFAULT 'A',
  PRIMARY KEY (`id_peli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peli`
--

LOCK TABLES `peli` WRITE;
/*!40000 ALTER TABLE `peli` DISABLE KEYS */;
/*!40000 ALTER TABLE `peli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videojuegos`
--

DROP TABLE IF EXISTS `videojuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videojuegos` (
  `id_videojuego` int(4) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `creador` varchar(20) NOT NULL,
  `año` int(4) NOT NULL,
  `protagonista` varchar(20) DEFAULT 'Sans',
  PRIMARY KEY (`id_videojuego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videojuegos`
--

LOCK TABLES `videojuegos` WRITE;
/*!40000 ALTER TABLE `videojuegos` DISABLE KEYS */;
INSERT INTO `videojuegos` VALUES (1,'The Last Of Us','PlayStation Studios',2020,'Joel'),(2,'Pacman','Toru Iwatani',1984,'Pac-Man'),(3,'Tetris','Aleksei Leonidovich',1984,'T'),(4,'Super Mario Bros','Kioto',1985,'Mario'),(5,'Portal','Valv3',2007,'chell');
/*!40000 ALTER TABLE `videojuegos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-12  3:02:06
