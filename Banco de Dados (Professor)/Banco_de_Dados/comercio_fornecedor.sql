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
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id_fornecedor` int NOT NULL AUTO_INCREMENT,
  `nome_fornecedor` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Razão social do fornecedor',
  `nome_fantasia` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nome fantasia do fornecedor',
  `data_cadastro` date DEFAULT NULL COMMENT 'Data do cadastro do fornecedor',
  `ativo` tinyint(1) DEFAULT '1' COMMENT 'Indica se o fornecedor está ativo',
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabela de fornecedores do sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Castro Pereira Ltda.',NULL,'2019-07-06',1),(2,'Costela','Marques','2024-05-21',1),(3,'Correia',NULL,'2024-12-19',1),(4,'Alves','da Rocha','2020-10-06',1),(5,'Carvalho Nogueira Ltda.',NULL,'2015-11-17',1),(6,'Viana','da Paz Carvalho S/A','2024-04-01',1),(7,'Sá e Filhos',NULL,'2016-11-29',1),(8,'Cardoso e Filhos','Pacheco','2022-11-10',1),(9,'Rodrigues',NULL,'2016-12-14',1),(10,'Vieira','Caldeira','2020-08-15',1),(11,'Pastor S.A.',NULL,'2015-12-06',1),(12,'Moura','Rios Pastor Ltda.','2021-07-11',1),(13,'Moura e Filhos',NULL,'2020-09-09',1),(14,'Fernandes','da Paz Camargo - EI','2016-01-29',1),(15,'Abreu Ltda.',NULL,'2024-01-17',1),(16,'Fernandes S.A.','Teixeira','2019-04-11',1),(17,'Lopes S.A.',NULL,'2022-04-03',1),(18,'Novaes S.A.','Ferreira Mendonça - ME','2023-01-12',1),(19,'Ramos Ramos - EI',NULL,'2023-12-23',1),(20,'Nunes S.A.','Alves','2024-08-27',1),(21,'Peixoto - ME',NULL,'2017-05-05',1),(22,'Duarte da Cruz - EI','da Costa','2023-06-09',1),(23,'Campos',NULL,'2019-11-03',1),(24,'Andrade','Sá e Filhos','2016-08-04',1),(25,'Pimenta',NULL,'2021-09-03',1),(26,'Montenegro','Casa Grande Peixoto Ltda.','2021-02-03',1),(27,'Silveira S/A',NULL,'2017-05-10',1),(28,'Barbosa Leão S/A','Nascimento','2020-11-02',1),(29,'Viana Ramos S/A',NULL,'2021-11-27',1),(30,'Melo','Pires','2016-02-24',1),(31,'Novais',NULL,'2019-08-11',1),(32,'Pinto','Dias','2022-03-26',1),(33,'Rios',NULL,'2016-04-24',1),(34,'Costa','da Conceição S.A.','2016-04-01',1),(35,'Freitas',NULL,'2024-07-18',1),(36,'Lopes','Santos','2020-08-17',1),(37,'Mendonça',NULL,'2015-11-27',1),(38,'Machado - ME','Camargo Ltda.','2024-10-29',1),(39,'Moraes',NULL,'2019-02-17',1),(40,'Barbosa','Viana Ltda.','2023-10-28',1),(41,'Viana e Filhos',NULL,'2017-06-05',1),(42,'Castro Castro - ME','Cirino','2019-09-16',1),(43,'Fonseca Mendes Ltda.',NULL,'2015-05-28',1),(44,'Sousa Correia S/A','Brito','2017-01-03',1),(45,'Moreira S.A.',NULL,'2016-11-26',1),(46,'Azevedo Ltda.','Aragão e Filhos','2020-12-01',1),(47,'Macedo - EI',NULL,'2015-09-22',1),(48,'Santos','Montenegro da Costa - ME','2017-01-10',1),(49,'Teixeira',NULL,'2023-10-20',1),(50,'da Costa das Neves S.A.','Melo Ltda.','2021-04-18',1),(51,'Cirino',NULL,'2021-12-21',1),(52,'Nunes S.A.','Montenegro','2021-04-14',1),(53,'Nascimento',NULL,'2016-08-27',1),(54,'Sales','Moreira','2017-11-21',1),(55,'da Cunha - EI',NULL,'2019-05-18',1),(56,'Mendes','da Cunha Ltda.','2016-02-22',1),(57,'Gomes',NULL,'2024-11-23',1),(58,'Campos','Martins','2019-01-14',1),(59,'Câmara',NULL,'2024-03-26',1),(60,'da Rosa','da Luz','2017-01-14',1),(61,'Rodrigues da Mota Ltda.',NULL,'2019-09-07',1),(62,'Câmara','Lopes S/A','2022-08-08',1),(63,'Novaes Ramos Ltda.',NULL,'2019-01-29',1),(64,'Andrade S.A.','Nogueira','2020-01-17',1),(65,'da Mota S.A.',NULL,'2015-07-09',1),(66,'Barbosa Santos - EI','Novaes S/A','2018-10-12',1),(67,'Aragão Albuquerque - ME',NULL,'2015-05-17',1),(68,'Pacheco - EI','da Luz','2020-12-23',1),(69,'Casa Grande',NULL,'2021-05-08',1),(70,'Teixeira','Novaes','2021-03-05',1),(71,'da Rocha',NULL,'2023-06-04',1),(72,'Costa','Camargo - EI','2019-09-18',1),(73,'Alves Ramos S.A.',NULL,'2018-07-31',1),(74,'Abreu','Cassiano','2018-11-30',1),(75,'Viana',NULL,'2020-07-09',1),(76,'Cirino','Teixeira','2024-10-14',1),(77,'Barbosa',NULL,'2025-02-18',1),(78,'Abreu S.A.','Vieira Ltda.','2021-07-14',1),(79,'Novais',NULL,'2021-06-04',1),(80,'Brito','Andrade Peixoto e Filhos','2021-01-21',1),(81,'da Rocha',NULL,'2020-03-14',1),(82,'Montenegro Novais - EI','Peixoto','2015-10-28',1),(83,'Melo - ME',NULL,'2024-12-24',1),(84,'Pereira','Vargas Marques e Filhos','2015-06-26',1),(85,'Cunha - ME',NULL,'2018-12-08',1),(86,'Costela','Sales Rocha e Filhos','2018-05-20',1),(87,'da Paz',NULL,'2020-12-23',1),(88,'Pacheco','Cavalcante','2019-05-24',1),(89,'Montenegro',NULL,'2017-12-18',1),(90,'Pastor','Mendonça','2020-11-24',1),(91,'Santos Oliveira S.A.',NULL,'2017-02-16',1),(92,'da Costa','Silveira','2017-11-16',1),(93,'Farias S/A',NULL,'2015-07-22',1),(94,'Alves - ME','Pinto Câmara - ME','2018-03-30',1),(95,'Montenegro',NULL,'2022-04-06',1),(96,'da Paz','Sampaio','2016-07-01',1),(97,'Oliveira - EI',NULL,'2015-10-06',1),(98,'da Mota','Novais - EI','2024-08-25',1),(99,'Sales Siqueira S.A.',NULL,'2019-05-19',1),(100,'Mendes','Barbosa Ramos S/A','2017-12-08',1);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
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
