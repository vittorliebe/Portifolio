-- MySQLShell dump 2.0.1  Distrib Ver 8.0.43 for Win64 on x86_64 - for MySQL 8.0.43 (MySQL Community Server (GPL)), for Win64 (x86_64)
--
-- Host: localhost    Database: geniushub    Table: solucao
-- ------------------------------------------------------
-- Server version	8.0.43

--
-- Table structure for table `solucao`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `solucao` (
  `id_solucao` int NOT NULL AUTO_INCREMENT,
  `id_desafio` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `resolucao` varchar(10000) DEFAULT NULL,
  `data_termino` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_solucao`),
  KEY `fk_solucao_desafio` (`id_desafio`),
  KEY `fk_solucao_categoria` (`id_categoria`),
  KEY `fk_solucao_usuario` (`id_usuario`),
  CONSTRAINT `fk_solucao_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_solucao_desafio` FOREIGN KEY (`id_desafio`) REFERENCES `desafio` (`id_desafio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_solucao_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
