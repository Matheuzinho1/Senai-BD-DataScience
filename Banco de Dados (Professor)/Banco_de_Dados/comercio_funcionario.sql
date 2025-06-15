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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome_funcionario` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nome completo do funcionário',
  `nome_social` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nome social do funcionário (caso aplicável)',
  `data_nascimento` date NOT NULL COMMENT 'Data de nascimento do funcionário',
  `data_admissao` date NOT NULL COMMENT 'Data de admissão do funcionário',
  `cargo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cargo ocupado pelo funcionário',
  `ativo` tinyint(1) DEFAULT '1' COMMENT 'Indica se o funcionário está ativo',
  PRIMARY KEY (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tabela de funcionários da empresa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Vitor Gabriel Gonçalves',NULL,'1986-04-22','2018-03-08','financeiro',1),(2,'Sra. Larissa das Neves','Pietra Costa','1977-08-26','2012-04-07','vendas',1),(3,'Anthony Gabriel da Paz',NULL,'1982-08-21','2001-06-26','expedição',1),(4,'Bento Costa',NULL,'1968-01-08','2008-02-22','atendimento',1),(5,'Lavínia Farias',NULL,'1960-10-14','2009-06-06','financeiro',1),(6,'Yasmin Vieira',NULL,'1987-06-01','2012-09-03','financeiro',1),(7,'Dr. Nathan Nogueira','Bruna da Luz','1986-11-23','2007-03-07','compras',1),(8,'Maria Eduarda Mendes','Maria Fernanda da Costa','1971-03-20','2013-12-13','financeiro',1),(9,'Srta. Catarina Mendonça',NULL,'1967-07-14','2018-09-10','expedição',1),(10,'Dr. Augusto da Mata',NULL,'1989-09-18','2016-09-26','vendas',1),(11,'Francisco Oliveira',NULL,'1972-12-01','1994-10-20','vendas',1),(12,'Sra. Ana Luiza Martins',NULL,'1982-01-19','2006-04-05','expedição',1),(13,'Ana Luiza Freitas',NULL,'1990-01-27','2021-09-02','atendimento',1),(14,'Sofia Brito',NULL,'1989-10-01','2013-08-09','expedição',1),(15,'Heloísa Cirino',NULL,'1978-01-21','2007-11-07','vendas',1),(16,'Davi Carvalho',NULL,'1969-12-26','2007-04-07','vendas',1),(17,'Juliana Caldeira','Brayan Campos','1966-04-03','1998-03-22','compras',1),(18,'Rhavi Monteiro',NULL,'1977-08-06','2022-01-08','vendas',1),(19,'Luiz Otávio Aparecida','Bella Rezende','1985-02-22','2022-07-16','financeiro',1),(20,'Nina Ribeiro',NULL,'1991-04-17','2021-12-02','expedição',1),(21,'Fernanda Barbosa',NULL,'1984-04-24','2012-07-29','atendimento',1),(22,'Erick da Conceição',NULL,'1994-07-17','2024-11-20','vendas',1),(23,'Theodoro Cirino',NULL,'1994-11-16','2014-07-26','expedição',1),(24,'Henry Gabriel Barros','Allana Jesus','1976-06-26','2001-09-15','financeiro',1),(25,'Davi Luiz Pastor',NULL,'1985-01-05','2003-06-01','vendas',1),(26,'Enzo Novaes',NULL,'1961-09-20','2015-10-06','vendas',1),(27,'Sr. Yan Novaes','Ana Lívia da Paz','1992-07-22','2021-03-09','financeiro',1),(28,'Bella Cardoso',NULL,'1961-02-15','1997-05-06','compras',1),(29,'Davi Lucca Peixoto','Laura Pinto','1967-09-26','2012-05-16','atendimento',1),(30,'Dra. Emanuella Moura',NULL,'1963-05-25','2003-03-04','financeiro',1),(31,'Arthur Gabriel da Conceição','Ryan Peixoto','1962-05-20','1987-07-09','compras',1),(32,'Bruno Barros',NULL,'1964-03-11','2021-03-22','expedição',1),(33,'Anthony Aparecida',NULL,'1966-11-02','1989-12-05','expedição',1),(34,'Cecilia Castro',NULL,'1970-10-21','2018-11-30','financeiro',1),(35,'Larissa Nascimento',NULL,'1980-12-29','2022-10-11','financeiro',1),(36,'Antônio Duarte',NULL,'1986-07-29','2017-03-03','atendimento',1),(37,'Isabela da Paz',NULL,'1962-12-21','2012-02-18','expedição',1),(38,'Felipe Fernandes',NULL,'1975-11-15','2001-11-02','compras',1),(39,'Breno Cassiano',NULL,'1960-12-25','1981-03-31','compras',1),(40,'Ana Vitória Dias',NULL,'1979-01-05','2006-11-01','vendas',1),(41,'Igor Cunha',NULL,'1981-09-12','2003-05-14','expedição',1),(42,'Yago Macedo',NULL,'1983-06-20','2013-04-05','financeiro',1),(43,'Guilherme da Mata','Srta. Maria Eduarda Melo','1964-03-30','1991-07-07','financeiro',1),(44,'Caleb Vieira',NULL,'1994-04-10','2014-08-04','expedição',1),(45,'Thiago Sousa',NULL,'1971-05-23','1989-07-13','compras',1),(46,'Maria Alice Machado',NULL,'1981-04-11','2011-01-01','expedição',1),(47,'Srta. Luiza da Rocha','Antony da Rocha','1989-03-04','2013-06-19','financeiro',1),(48,'Henry Rocha',NULL,'1988-05-11','2019-01-17','compras',1),(49,'Dra. Sarah Novais',NULL,'1995-12-03','2020-08-08','atendimento',1),(50,'João Lucas Ferreira','Heitor da Conceição','1967-02-02','2019-05-21','vendas',1),(51,'Laura Santos',NULL,'1995-06-27','2016-02-02','vendas',1),(52,'Isabel Caldeira','Sra. Ana Liz Cassiano','1984-03-22','2003-12-29','atendimento',1),(53,'Manuela da Mota',NULL,'1982-03-14','2001-11-20','financeiro',1),(54,'Kevin Moreira','Clarice Martins','1987-08-03','2011-05-27','vendas',1),(55,'Asafe Costela',NULL,'1987-05-21','2016-04-16','atendimento',1),(56,'Davi Pimenta','Sra. Kamilly Costela','1966-02-25','1999-08-25','compras',1),(57,'Aylla Lopes',NULL,'1979-10-18','2018-11-14','atendimento',1),(58,'Helena Pastor',NULL,'1980-05-13','2007-09-22','atendimento',1),(59,'Melina da Paz',NULL,'1962-07-02','1986-01-24','vendas',1),(60,'Vitor Sales',NULL,'1978-04-02','2024-02-18','compras',1),(61,'Antonella da Rocha',NULL,'1974-10-31','1996-10-29','financeiro',1),(62,'Rhavi Sá',NULL,'1965-05-08','1992-07-31','vendas',1),(63,'Dr. Benício Souza',NULL,'1963-08-02','1993-12-17','vendas',1),(64,'Sr. Alexandre Pacheco','Luiz Otávio Pacheco','1964-07-19','1983-05-31','compras',1),(65,'Mariah Fernandes',NULL,'1987-01-26','2018-09-08','financeiro',1),(66,'Davi Lucca Peixoto',NULL,'1982-03-23','2006-10-22','atendimento',1),(67,'Dr. Rafael Freitas',NULL,'1985-08-26','2011-12-23','financeiro',1),(68,'Nina Pacheco',NULL,'1975-11-01','2019-03-15','vendas',1),(69,'Sr. Matheus Sampaio',NULL,'1977-03-10','2010-01-05','atendimento',1),(70,'Vicente Almeida',NULL,'1968-02-05','2006-05-09','vendas',1),(71,'Dr. Benjamin Macedo',NULL,'1985-08-18','2014-07-08','atendimento',1),(72,'Ayla Barbosa',NULL,'1992-01-04','2021-04-05','financeiro',1),(73,'Natália Freitas','José Miguel Sousa','1977-12-22','2010-04-14','compras',1),(74,'Raul Gonçalves',NULL,'1967-06-13','2004-12-16','atendimento',1),(75,'João Novais','Rhavi Costela','1995-08-20','2014-09-17','atendimento',1),(76,'Raul Almeida',NULL,'1995-06-04','2017-12-02','vendas',1),(77,'Dr. Ryan Nunes',NULL,'1978-01-12','2024-05-01','expedição',1),(78,'Sr. Vicente Siqueira',NULL,'1981-04-16','2023-12-02','atendimento',1),(79,'Sra. Rafaela Viana','Dra. Ana Júlia Câmara','1980-02-28','2004-07-16','expedição',1),(80,'Danilo Câmara','Marcelo Rocha','1990-03-22','2012-11-23','expedição',1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17  8:39:24
