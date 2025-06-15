-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: comercio
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nome da categoria',
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Descrição da categoria',
  `ativa` tinyint(1) DEFAULT '1' COMMENT 'Indica se a categoria está ativa',
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabela de categorias de produtos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Vestuário 1','Categoria de produtos do tipo Vestuário',1),(2,'Vestuário 2','Categoria de produtos do tipo Vestuário',1),(3,'Vestuário 3','Categoria de produtos do tipo Vestuário',1),(4,'Vestuário 4','Categoria de produtos do tipo Vestuário',1),(5,'Vestuário 5','Categoria de produtos do tipo Vestuário',1),(6,'Eletrodomésticos 1','Categoria de produtos do tipo Eletrodomésticos',1),(7,'Eletrodomésticos 2','Categoria de produtos do tipo Eletrodomésticos',1),(8,'Eletrodomésticos 3','Categoria de produtos do tipo Eletrodomésticos',1),(9,'Eletrodomésticos 4','Categoria de produtos do tipo Eletrodomésticos',1),(10,'Eletrodomésticos 5','Categoria de produtos do tipo Eletrodomésticos',1),(11,'Informática 1','Categoria de produtos do tipo Informática',1),(12,'Informática 2','Categoria de produtos do tipo Informática',1),(13,'Informática 3','Categoria de produtos do tipo Informática',1),(14,'Informática 4','Categoria de produtos do tipo Informática',1),(15,'Informática 5','Categoria de produtos do tipo Informática',1),(16,'Celulares 1','Categoria de produtos do tipo Celulares',1),(17,'Celulares 2','Categoria de produtos do tipo Celulares',1),(18,'Celulares 3','Categoria de produtos do tipo Celulares',1),(19,'Celulares 4','Categoria de produtos do tipo Celulares',1),(20,'Celulares 5','Categoria de produtos do tipo Celulares',1);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17  8:39:26
