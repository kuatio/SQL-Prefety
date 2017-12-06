-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 18.220.192.155    Database: prefy
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `restaurante_califacionusuariorestaurante`
--

DROP TABLE IF EXISTS `restaurante_califacionusuariorestaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurante_califacionusuariorestaurante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calificacion` int(11) NOT NULL,
  `comensal_id` int(11) NOT NULL,
  `restaurante_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurante_califaci_comensal_id_8cca4f0b_fk_usuario_c` (`comensal_id`),
  KEY `restaurante_califaci_restaurante_id_6d616abd_fk_restauran` (`restaurante_id`),
  CONSTRAINT `restaurante_califaci_comensal_id_8cca4f0b_fk_usuario_c` FOREIGN KEY (`comensal_id`) REFERENCES `usuario_comensal` (`id`),
  CONSTRAINT `restaurante_califaci_restaurante_id_6d616abd_fk_restauran` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante_restaurante` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-06  1:52:56
