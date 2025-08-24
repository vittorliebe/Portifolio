-- MySQLShell dump 2.0.1  Distrib Ver 8.0.43 for Win64 on x86_64 - for MySQL 8.0.43 (MySQL Community Server (GPL)), for Win64 (x86_64)
--
-- Host: localhost    Database: geniushub    Table: feedback
-- ------------------------------------------------------
-- Server version	8.0.43

--
-- Table structure for table `feedback`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id_feedback` int NOT NULL AUTO_INCREMENT,
  `id_solucao` int DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  `comentario` varchar(1000) DEFAULT NULL,
  `data_feedback` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `nota` int DEFAULT NULL,
  PRIMARY KEY (`id_feedback`),
  KEY `fk_feedback_solucao` (`id_solucao`),
  KEY `fk_feedback_empresa` (`id_empresa`),
  CONSTRAINT `fk_feedback_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_feedback_solucao` FOREIGN KEY (`id_solucao`) REFERENCES `solucao` (`id_solucao`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
