-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: db_mectoca.vpshost2348.mysql.dbaas.com.br    Database: db_mectoca
-- ------------------------------------------------------
-- Server version	5.7.17-13-log

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
-- Table structure for table `CenarioCompra`
--

DROP TABLE IF EXISTS `CenarioCompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CenarioCompra` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ListaCompraConfigId` int(11) NOT NULL,
  `Descricao` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `DtaSugestao` datetime NOT NULL,
  `DtaFinalizacao` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CenarioCompra`
--

LOCK TABLES `CenarioCompra` WRITE;
/*!40000 ALTER TABLE `CenarioCompra` DISABLE KEYS */;
INSERT INTO `CenarioCompra` VALUES (1,2,'BEBIDAS','2020-08-06 08:09:10',NULL),(2,3,'ARROZ','2020-08-16 14:27:51',NULL),(3,10,'GERAL CHOCK','2019-07-31 16:31:19',NULL),(4,82,'SENDAS','2019-09-25 16:44:38',NULL),(5,227,'COMPRAS COSMETICOS','2019-11-08 15:15:17',NULL);
/*!40000 ALTER TABLE `CenarioCompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CenarioCompraProduto`
--

DROP TABLE IF EXISTS `CenarioCompraProduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CenarioCompraProduto` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ListaCompraConfigId` int(11) NOT NULL,
  `IdProduto` int(11) NOT NULL,
  `Descricao` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Embalagem` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `MedVendMes` double NOT NULL,
  `EstoqueDisp` int(11) NOT NULL,
  `PendReceb` int(11) NOT NULL,
  `PendExped` int(11) NOT NULL,
  `DiasEstoque` int(11) NOT NULL,
  `CustoMedio` double NOT NULL,
  `QtdUltCompra` int(11) NOT NULL,
  `CustoUltCompra` double NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_CenarioCompraProduto` (`ListaCompraConfigId`),
  CONSTRAINT `fk_CenarioCompraProduto` FOREIGN KEY (`ListaCompraConfigId`) REFERENCES `CenarioCompra` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CenarioCompraProduto`
--

LOCK TABLES `CenarioCompraProduto` WRITE;
/*!40000 ALTER TABLE `CenarioCompraProduto` DISABLE KEYS */;
INSERT INTO `CenarioCompraProduto` VALUES (1,2,45,'Lápis','1 UN',9.66,4,0,0,13,3.98,20,4.1),(2,2,122,'Borracha','6 FD',1.49,5,0,0,4,0.25,20,3.4),(3,2,324,'Caneta Bic','24 CX',0.9,9,0,2,6,0.15,30,5.5),(4,2,645,'Agenda','1 UN',15.9,12,0,4,15,7.96,20,4),(5,2,7897,'Papel A4','1 UN',10.9,20,0,0,4,6.54,15,3.5),(6,3,213,'Caderno','1 UN',8.45,6,0,0,78,4.78,23,4.8),(7,3,456,'Estojo','1 UN',10.89,10,0,0,5,8.89,20,4.8),(8,3,1223,'Grafite','5 CX',4.98,9,0,2,6,3.45,100,2.89),(9,1,600545,'ALCOOL TUPI 70','1 UN',5.66,5,0,0,11,3.58,10,4),(10,1,598123,'AMENDOIM ELMA CHIPS OVINHO 80G','1 UN',9.66,4,0,0,13,3.98,20,4.1),(11,1,598128,'AMENDOIM ELMA CHIPS S/PELE 100G','1 UN',10.89,10,0,0,5,8.89,20,4.8),(12,1,600548,'AMENDOIM YOKI 150G TIPO JAPONES','1 UN',4.98,9,0,2,6,3.45,100,2.89),(13,1,600760,'ANA MARIA 80G BAUNILHA','1 UN',8.45,6,0,0,78,4.78,23,4.8),(14,2,600552,'BALA FINI 100G GELATINAS AMORA','1 UN',10.89,10,0,0,5,8.89,20,4.8),(15,2,598130,'BALA FINI 100G GELATINAS BEIJOS MORANGO','1 UN',8.45,6,0,0,78,4.78,23,4.8),(16,2,600553,'BALA FINI 100G GELATINAS DENTADURAS','1 UN',15.9,12,0,4,15,7.96,20,4),(17,2,600555,'BALA FINI 100G GELATINAS MINHOCAS CITRIC','1 UN',10.89,10,0,0,5,8.89,20,4.8),(18,2,600853,'CUP NOODLES NISSIN 68G BOLONHESA CREM','1 UN',4.98,9,0,2,6,3.45,100,2.89),(19,2,600821,'DESODORANTE DOVE AER 100ML INVISIBLI DRY','1 UN',8.45,6,0,0,78,4.78,23,4.8),(20,2,600820,'DESODORANTE REXONA AER 105ML MEN ACTIVE','1 UN',9.66,4,0,0,13,3.98,20,4.1),(21,2,598390,'DORITOS ELMA CHIPS 55G','1 UN',15.9,12,0,4,15,7.96,20,4),(22,2,597973,'DUNHILL BLUE BLEND BOX','1 UN',8.45,6,0,0,78,4.78,23,4.8),(23,2,600829,'ENXAG BUCAL LISTERINE 236ML WHITEN','1 UN',9.66,4,0,0,13,3.98,20,4.1),(24,2,600833,'ES.DEN.ORAL-B CLASSIC MACIA 40','1 UN',15.9,12,0,4,15,7.96,20,4),(25,2,600663,'ESPUMA DE BARBEAR NIVEA 193G','1 UN',8.45,6,0,0,78,4.78,23,4.8),(26,2,598585,'SORVETE M&M’S KIBON CORNETTO CARTUCHO 62G','1 UN',9.66,4,0,0,13,3.98,20,4.1),(27,2,601310,'STIKSY ELMA CHIPS 100G','1 UN',15.9,12,0,4,15,7.96,20,4),(28,2,601139,'SUCO DEL VALLE + 335ML MARACUJA','1 UN',9.66,4,0,0,13,3.98,20,4.1),(29,2,599047,'MASSA PIPE BOLONHESA 310G','1 UN',9.66,4,0,0,13,3.98,20,4.1),(30,2,599097,'MATTE LEAO LIMAO PET 450ML','1 UN',8.45,6,0,0,78,4.78,23,4.8),(31,2,599098,'MATTE LEAO NATURAL PET 450ML','1 UN',9.66,4,0,0,13,3.98,20,4.1),(32,2,601075,'MOLHO FUGINI 300G SCH 4 QJOS','1 UN',8.45,6,0,0,78,4.78,23,4.8),(33,2,600811,'TRIDENT 8G TUTTI FRUTTI','1 UN',9.66,4,0,0,13,3.98,20,4.1),(34,2,599449,'VINHO QPA VERDE BRANCO','1 UN',8.45,6,0,0,78,4.78,23,4.8),(35,2,599453,'VINHO QPA VERDE ROSE','1 UN',15.9,12,0,4,15,7.96,20,4),(36,2,599469,'VINHO SEMBLANTE CABERNET SAUVIGNON','1 UN',9.66,4,0,0,13,3.98,20,4.1),(37,2,599479,'VINHO SEMBLANTE CARMENERE','1 UN',8.45,6,0,0,78,4.78,23,4.8),(38,3,600545,'ALCOOL TUPI 70','1 UN',5.66,5,0,0,11,3.58,10,4),(39,3,598123,'AMENDOIM ELMA CHIPS OVINHO 80G','1 UN',9.66,4,0,0,13,3.98,20,4.1),(40,3,598128,'AMENDOIM ELMA CHIPS S/PELE 100G','1 UN',10.89,10,0,0,5,8.89,20,4.8),(41,3,600548,'AMENDOIM YOKI 150G TIPO JAPONES','1 UN',4.98,9,0,2,6,3.45,100,2.89),(42,3,600760,'ANA MARIA 80G BAUNILHA','1 UN',8.45,6,0,0,78,4.78,23,4.8),(43,3,600759,'ANA MARIA 80G CHOCOLATE','1 UN',9.66,4,0,0,13,3.98,20,4.1),(44,3,600757,'ANA MARIA 80G GOTAS DE CHOC','1 UN',10.89,10,0,0,5,8.89,20,4.8),(45,3,600662,'APARELHO PRESTOBARBA ULTRA GRIP MOVEL','1 UN',9.66,4,0,0,13,3.98,20,4.1),(46,3,600552,'BALA FINI 100G GELATINAS AMORA','1 UN',10.89,10,0,0,5,8.89,20,4.8),(47,3,598130,'BALA FINI 100G GELATINAS BEIJOS MORANGO','1 UN',8.45,6,0,0,78,4.78,23,4.8),(48,3,600553,'BALA FINI 100G GELATINAS DENTADURAS','1 UN',15.9,12,0,4,15,7.96,20,4),(49,3,600555,'BALA FINI 100G GELATINAS MINHOCAS CITRIC','1 UN',10.89,10,0,0,5,8.89,20,4.8),(50,3,600853,'CUP NOODLES NISSIN 68G BOLONHESA CREM','1 UN',4.98,9,0,2,6,3.45,100,2.89),(51,3,600821,'DESODORANTE DOVE AER 100ML INVISIBLI DRY','1 UN',8.45,6,0,0,78,4.78,23,4.8),(52,3,600820,'DESODORANTE REXONA AER 105ML MEN ACTIVE','1 UN',9.66,4,0,0,13,3.98,20,4.1),(53,3,598390,'DORITOS ELMA CHIPS 55G','1 UN',15.9,12,0,4,15,7.96,20,4),(54,3,597973,'DUNHILL BLUE BLEND BOX','1 UN',8.45,6,0,0,78,4.78,23,4.8),(55,3,600829,'ENXAG BUCAL LISTERINE 236ML WHITEN','1 UN',9.66,4,0,0,13,3.98,20,4.1),(56,3,600833,'ES.DEN.ORAL-B CLASSIC MACIA 40','1 UN',15.9,12,0,4,15,7.96,20,4),(57,3,600663,'ESPUMA DE BARBEAR NIVEA 193G','1 UN',8.45,6,0,0,78,4.78,23,4.8),(58,3,598585,'SORVETE M&M’S KIBON CORNETTO CARTUCHO 62G','1 UN',9.66,4,0,0,13,3.98,20,4.1),(59,3,601310,'STIKSY ELMA CHIPS 100G','1 UN',15.9,12,0,4,15,7.96,20,4),(60,3,601139,'SUCO DEL VALLE + 335ML MARACUJA','1 UN',9.66,4,0,0,13,3.98,20,4.1),(61,3,599047,'MASSA PIPE BOLONHESA 310G','1 UN',9.66,4,0,0,13,3.98,20,4.1),(62,3,599097,'MATTE LEAO LIMAO PET 450ML','1 UN',8.45,6,0,0,78,4.78,23,4.8),(63,3,599098,'MATTE LEAO NATURAL PET 450ML','1 UN',9.66,4,0,0,13,3.98,20,4.1),(64,3,601075,'MOLHO FUGINI 300G SCH 4 QJOS','1 UN',8.45,6,0,0,78,4.78,23,4.8),(65,3,600811,'TRIDENT 8G TUTTI FRUTTI','1 UN',9.66,4,0,0,13,3.98,20,4.1),(66,3,599449,'VINHO QPA VERDE BRANCO','1 UN',8.45,6,0,0,78,4.78,23,4.8),(67,3,599453,'VINHO QPA VERDE ROSE','1 UN',15.9,12,0,4,15,7.96,20,4),(68,3,599469,'VINHO SEMBLANTE CABERNET SAUVIGNON','1 UN',9.66,4,0,0,13,3.98,20,4.1),(69,3,599479,'VINHO SEMBLANTE CARMENERE','1 UN',8.45,6,0,0,78,4.78,23,4.8);
/*!40000 ALTER TABLE `CenarioCompraProduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HistoricoCompra`
--

DROP TABLE IF EXISTS `HistoricoCompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HistoricoCompra` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdEmpresa` int(11) NOT NULL,
  `Empresa` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `DtaRecebido` datetime NOT NULL,
  `IdProduto` int(11) NOT NULL,
  `Produto` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `NroNF` int(11) NOT NULL,
  `Operacao` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Fornecedor` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Qtd` int(11) NOT NULL,
  `Embalagem` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `VlrEmbalagem` double NOT NULL,
  `VlrBruto` double NOT NULL,
  `VlrBrutoEmbalagem` double NOT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HistoricoCompra`
--

LOCK TABLES `HistoricoCompra` WRITE;
/*!40000 ALTER TABLE `HistoricoCompra` DISABLE KEYS */;
INSERT INTO `HistoricoCompra` VALUES (1,1,'1-LOJA','2020-05-01 00:00:00',45,'LÁPIS',545765,'COMPRA','FORNECEDOR 1',10,'1 UN',9.66,10.45,10.46,100.56),(2,1,'1-LOJA','2020-05-06 00:00:00',45,'LÁPIS',545769,'BONIFICAÇÃO','FORNECEDOR 1',20,'1 UN',8.75,9.22,10.35,298.24),(3,1,'1-LOJA','2019-10-01 00:00:00',45,'LÁPIS',6878,'COMPRA','FORNECEDOR 2',54,'1 UN',10.87,8.45,7.74,1325.8),(4,1,'1-LOJA','2019-10-04 00:00:00',122,'BORRACHA',545765,'COMPRA','FORNECEDOR 1',32,'1 UN',45.89,50.47,52.41,547.98),(5,1,'1-LOJA','2018-03-01 00:00:00',122,'BORRACHA',1487,'COMPRA','FORNECEDOR 2',14,'1 UN',50.97,49.98,56.98,3689),(6,1,'1-LOJA','2019-06-12 00:00:00',122,'BORRACHA',35879,'COMPRA','FORNECEDOR 3',87,'1 UN',60.98,70.25,72.65,985.41),(7,1,'1-LOJA','2018-03-01 00:00:00',213,'CADERNO',7896,'COMPRA','FORNECEDOR 2',31,'1 UN',19.56,20.81,25.3,122.98),(8,1,'1-LOJA','2019-10-25 00:00:00',213,'CADERNO',12378,'BONIFICAÇÃO','FORNECEDOR 3',93,'1 UN',20.32,28.36,28.63,4571.63),(9,1,'1-LOJA','2020-09-05 00:00:00',600545,'ALCOOL TUPI 70',45669,'COMPRA','FORNECEDOR1',75,'1 UN',12.35,32.57,35.89,7855.98),(10,1,'1-LOJA','2020-09-05 00:00:00',598123,'AMENDOIM ELMA CHIPS OVINHO 80G',78978,'COMPRA','FORNECEDOR1',45,'1 UN',56.35,65.57,78.89,6456.78),(11,1,'1-LOJA','2020-09-05 00:00:00',598128,'AMENDOIM ELMA CHIPS S/PELE 100G',45645,'COMPRA','FORNECEDOR1',23,'1 UN',8.35,10.57,12.89,5656.65),(12,1,'1-LOJA','2020-09-05 00:00:00',600548,'AMENDOIM YOKI 150G TIPO JAPONES',12345,'COMPRA','FORNECEDOR1',65,'1 UN',20.35,32.57,35.89,2331.45),(13,1,'1-LOJA','2020-09-05 00:00:00',600760,'ANA MARIA 80G BAUNILHA',45664,'COMPRA','FORNECEDOR1',45,'1 UN',32.35,32.57,35.89,4564.65),(14,1,'1-LOJA','2020-09-05 00:00:00',600759,'ANA MARIA 80G CHOCOLATE',78768,'COMPRA','FORNECEDOR1',87,'1 UN',85.35,32.57,35.89,1232.64),(15,1,'1-LOJA','2020-09-05 00:00:00',600757,'ANA MARIA 80G GOTAS DE CHOC',46456,'COMPRA','FORNECEDOR1',98,'1 UN',45.35,32.57,35.89,3123.23),(16,1,'1-LOJA','2020-09-05 00:00:00',600662,'APARELHO PRESTOBARBA ULTRA GRIP MOVEL',65456,'COMPRA','FORNECEDOR1',98,'1 UN',65.35,32.57,35.89,6456.65),(17,1,'1-LOJA','2020-09-05 00:00:00',600552,'BALA FINI 100G GELATINAS AMORA',98779,'COMPRA','FORNECEDOR1',55,'1 UN',45.35,56.57,35.89,1332.45),(18,1,'1-LOJA','2020-09-05 00:00:00',598130,'BALA FINI 100G GELATINAS BEIJOS MORANGO',56465,'COMPRA','FORNECEDOR1',23,'1 UN',23.35,32.57,35.89,1232.85),(19,1,'1-LOJA','2020-09-05 00:00:00',600553,'BALA FINI 100G GELATINAS DENTADURAS',36589,'COMPRA','FORNECEDOR1',23,'1 UN',21.35,32.57,35.89,5647.45),(20,1,'1-LOJA','2020-09-05 00:00:00',600555,'BALA FINI 100G GELATINAS MINHOCAS CITRIC',56497,'COMPRA','FORNECEDOR1',12,'1 UN',32.35,32.57,35.89,6456.45),(21,1,'1-LOJA','2020-09-05 00:00:00',600853,'CUP NOODLES NISSIN 68G BOLONHESA CREM',12347,'COMPRA','FORNECEDOR1',23,'1 UN',41.35,32.57,35.89,1233.63),(22,1,'1-LOJA','2020-09-05 00:00:00',600821,'DESODORANTE DOVE AER 100ML INVISIBLI DRY',56474,'COMPRA','FORNECEDOR1',78,'1 UN',23.35,32.57,35.89,2315.45),(23,1,'1-LOJA','2020-09-05 00:00:00',600820,'DESODORANTE REXONA AER 105ML MEN ACTIVE',13197,'COMPRA','FORNECEDOR1',45,'1 UN',45.35,58.57,35.89,6325.25),(24,1,'1-LOJA','2020-09-05 00:00:00',598390,'DORITOS ELMA CHIPS 55G',56478,'COMPRA','FORNECEDOR1',12,'1 UN',32.35,39.57,42.89,4521.87),(25,1,'1-LOJA','2020-09-05 00:00:00',597973,'DUNHILL BLUE BLEND BOX',97565,'COMPRA','FORNECEDOR1',64,'1 UN',12.35,22.57,26.89,4533.44),(26,1,'1-LOJA','2020-09-05 00:00:00',600829,'ENXAG BUCAL LISTERINE 236ML WHITEN',13467,'COMPRA','FORNECEDOR1',56,'1 UN',12.35,32.57,35.89,2424.14),(27,1,'1-LOJA','2020-09-05 00:00:00',600833,'ES.DEN.ORAL-B CLASSIC MACIA 40',45679,'COMPRA','FORNECEDOR1',87,'1 UN',32.35,32.57,35.89,7451.23),(28,1,'1-LOJA','2020-09-05 00:00:00',600663,'ESPUMA DE BARBEAR NIVEA 193G',65498,'COMPRA','FORNECEDOR1',56,'1 UN',12.35,32.57,35.89,5236.12),(29,1,'1-LOJA','2020-09-05 00:00:00',598585,'SORVETE M&M’S KIBON CORNETTO CARTUCHO 62G',13211,'COMPRA','FORNECEDOR1',65,'1 UN',20.35,32.57,35.89,3652.12),(30,1,'1-LOJA','2020-09-05 00:00:00',601310,'STIKSY ELMA CHIPS 100G',56456,'COMPRA','FORNECEDOR1',12,'1 UN',20.35,89.57,35.89,4525.1),(31,1,'1-LOJA','2020-09-05 00:00:00',601139,'SUCO DEL VALLE + 335ML MARACUJA',32547,'COMPRA','FORNECEDOR1',32,'1 UN',78.35,32.57,35.89,458.74),(32,1,'1-LOJA','2020-09-05 00:00:00',599047,'MASSA PIPE BOLONHESA 310G',69587,'COMPRA','FORNECEDOR1',65,'1 UN',32.35,32.57,35.89,412.69),(33,1,'1-LOJA','2020-09-05 00:00:00',599097,'MATTE LEAO LIMAO PET 450ML',12456,'COMPRA','FORNECEDOR1',45,'1 UN',9.35,13.57,23.89,7458.58),(34,1,'1-LOJA','2020-09-05 00:00:00',599098,'MATTE LEAO NATURAL PET 450ML',32569,'COMPRA','FORNECEDOR1',12,'1 UN',45.35,58.57,69.89,4125.96),(35,1,'1-LOJA','2020-09-05 00:00:00',601075,'MOLHO FUGINI 300G SCH 4 QJOS',56986,'COMPRA','FORNECEDOR1',56,'1 UN',32.35,32.57,35.89,6528.54),(36,1,'1-LOJA','2020-09-05 00:00:00',600811,'TRIDENT 8G TUTTI FRUTTI',54698,'COMPRA','FORNECEDOR1',12,'1 UN',14.35,32.57,35.89,4125.1),(37,1,'1-LOJA','2020-09-05 00:00:00',599449,'VINHO QPA VERDE BRANCO',56986,'COMPRA','FORNECEDOR1',32,'1 UN',32.35,41.57,46.89,236.25),(38,1,'1-LOJA','2020-09-05 00:00:00',599453,'VINHO QPA VERDE ROSE',52365,'COMPRA','FORNECEDOR1',12,'1 UN',12.35,18.57,27.89,4102.14),(39,1,'1-LOJA','2020-09-05 00:00:00',599469,'VINHO SEMBLANTE CABERNET SAUVIGNON',52365,'COMPRA','FORNECEDOR1',42,'1 UN',32.35,32.57,35.89,1035.56),(40,1,'1-LOJA','2020-09-05 00:00:00',599479,'VINHO SEMBLANTE CARMENERE',45874,'COMPRA','FORNECEDOR1',32,'1 UN',12.35,14.57,18.89,7420.85);
/*!40000 ALTER TABLE `HistoricoCompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Operacao`
--

DROP TABLE IF EXISTS `Operacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Operacao` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Operacao`
--

LOCK TABLES `Operacao` WRITE;
/*!40000 ALTER TABLE `Operacao` DISABLE KEYS */;
INSERT INTO `Operacao` VALUES (1,'COMPRA'),(2,'VENDA');
/*!40000 ALTER TABLE `Operacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoa`
--

DROP TABLE IF EXISTS `Pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pessoa` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NomeRazao` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa`
--

LOCK TABLES `Pessoa` WRITE;
/*!40000 ALTER TABLE `Pessoa` DISABLE KEYS */;
INSERT INTO `Pessoa` VALUES (1,'FORNECEDOR 1'),(2,'FORNECEDOR 2'),(3,'FORNECEDOR 3'),(4,'FORNECEDOR 4');
/*!40000 ALTER TABLE `Pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProdFornecedor`
--

DROP TABLE IF EXISTS `ProdFornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProdFornecedor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProdutoId` int(11) NOT NULL,
  `PessoaId` int(11) NOT NULL,
  `PadraoEmbCompra` double NOT NULL,
  `IndFornecPrincipal` varchar(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_ProdFornecedor_1` (`ProdutoId`),
  KEY `fk_ProdFornecedor_2` (`PessoaId`),
  CONSTRAINT `fk_ProdFornecedor_1` FOREIGN KEY (`ProdutoId`) REFERENCES `Produto` (`Id`),
  CONSTRAINT `fk_ProdFornecedor_2` FOREIGN KEY (`PessoaId`) REFERENCES `Pessoa` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProdFornecedor`
--

LOCK TABLES `ProdFornecedor` WRITE;
/*!40000 ALTER TABLE `ProdFornecedor` DISABLE KEYS */;
INSERT INTO `ProdFornecedor` VALUES (1,45,1,18,'S'),(2,45,2,10,'N'),(3,122,3,35,'S'),(4,122,4,35,'N'),(5,324,4,25,'S'),(6,324,1,10,'N'),(7,324,2,5,'N'),(8,645,1,40,'S'),(9,7897,2,22,'S'),(10,7897,3,12,'N'),(11,213,4,15,'S'),(12,213,2,5,'N'),(13,456,4,60,'S'),(14,456,1,20,'N'),(15,1223,3,80,'S'),(16,600545,2,18,'S'),(17,600545,4,12,'N'),(18,600545,1,20,'N'),(19,598123,2,10,'S'),(20,598123,3,30,'N'),(21,598128,4,22,'S'),(22,600548,1,21,'S'),(23,600548,2,18,'N'),(24,600760,1,15,'S'),(25,600760,2,22,'N'),(26,600760,3,25,'N'),(27,600759,4,30,'S'),(28,600759,1,20,'N'),(29,600757,2,10,'S'),(30,600757,3,15,'N'),(31,600662,3,18,'S'),(32,600552,1,16,'S'),(33,600552,2,25,'N'),(34,600552,3,20,'N'),(35,598130,4,15,'S'),(36,598130,1,30,'N'),(37,600553,2,22,'S'),(38,600553,3,20,'N'),(39,600555,4,21,'S'),(40,600555,1,22,'N'),(41,600555,3,19,'N'),(42,600853,1,20,'S'),(43,600853,2,30,'N'),(44,600821,4,20,'S'),(45,600820,1,20,'S'),(46,600820,2,20,'N'),(47,598390,3,22,'S'),(48,598390,4,25,'N'),(49,598390,2,20,'N'),(50,597973,1,15,'S'),(51,597973,3,18,'N'),(52,600829,1,20,'S'),(53,600829,4,20,'N'),(54,600829,2,22,'N'),(55,600833,4,30,'S'),(56,600833,1,35,'N'),(57,600663,3,40,'S'),(58,598585,1,22,'S'),(59,598585,2,30,'N'),(60,598585,4,30,'N'),(61,601310,2,10,'S'),(62,601310,1,10,'N'),(63,601139,1,20,'S'),(64,601139,4,22,'N'),(65,599047,3,20,'S'),(66,599047,1,20,'N'),(67,599047,2,20,'N'),(68,599097,4,30,'S'),(69,599097,2,30,'N'),(70,599098,3,30,'S'),(71,599098,1,30,'N'),(72,599098,2,30,'N'),(73,599098,4,30,'N'),(74,601075,1,20,'S'),(75,601075,2,20,'N'),(76,600811,1,20,'S'),(77,600811,4,20,'N'),(78,600811,2,20,'N'),(79,599449,1,10,'S'),(80,599449,2,10,'N'),(81,599453,3,20,'S'),(82,599453,4,20,'N'),(83,599469,1,15,'S'),(84,599479,2,20,'S'),(85,599479,1,20,'N'),(86,599479,4,20,'N'),(87,599479,3,20,'N');
/*!40000 ALTER TABLE `ProdFornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produto`
--

DROP TABLE IF EXISTS `Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=601311 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto`
--

LOCK TABLES `Produto` WRITE;
/*!40000 ALTER TABLE `Produto` DISABLE KEYS */;
INSERT INTO `Produto` VALUES (45,'Lápis'),(122,'Borracha'),(213,'Caderno'),(324,'Caneta Bic'),(456,'Estojo'),(645,'Agenda'),(1223,'Grafite'),(7897,'Papel A4'),(597973,'DUNHILL BLUE BLEND BOX'),(598123,'AMENDOIM ELMA CHIPS OVINHO 80G'),(598128,'AMENDOIM ELMA CHIPS S/PELE 100G'),(598130,'BALA FINI 100G GELATINAS BEIJOS MORANGO'),(598390,'DORITOS ELMA CHIPS 55G'),(598585,'SORVETE M&M’S KIBON CORNETTO CARTUCHO 62G'),(599047,'MASSA PIPE BOLONHESA 310G'),(599097,'MATTE LEAO LIMAO PET 450ML'),(599098,'MATTE LEAO NATURAL PET 450ML'),(599449,'VINHO QPA VERDE BRANCO'),(599453,'VINHO QPA VERDE ROSE'),(599469,'VINHO SEMBLANTE CABERNET SAUVIGNON'),(599479,'VINHO SEMBLANTE CARMENERE'),(600545,'ALCOOL TUPI 70'),(600548,'AMENDOIM YOKI 150G TIPO JAPONES'),(600552,'BALA FINI 100G GELATINAS AMORA'),(600553,'BALA FINI 100G GELATINAS DENTADURAS'),(600555,'BALA FINI 100G GELATINAS MINHOCAS CITRIC'),(600662,'APARELHO PRESTOBARBA ULTRA GRIP MOVEL'),(600663,'ESPUMA DE BARBEAR NIVEA 193G'),(600757,'ANA MARIA 80G GOTAS DE CHOC'),(600759,'ANA MARIA 80G CHOCOLATE'),(600760,'ANA MARIA 80G BAUNILHA'),(600811,'TRIDENT 8G TUTTI FRUTTI'),(600820,'DESODORANTE REXONA AER 105ML MEN ACTIVE'),(600821,'DESODORANTE DOVE AER 100ML INVISIBLI DRY'),(600829,'ENXAG BUCAL LISTERINE 236ML WHITEN'),(600833,'ES.DEN.ORAL-B CLASSIC MACIA 40'),(600853,'CUP NOODLES NISSIN 68G BOLONHESA CREM'),(601075,'MOLHO FUGINI 300G SCH 4 QJOS'),(601139,'SUCO DEL VALLE + 335ML MARACUJA'),(601310,'STIKSY ELMA CHIPS 100G');
/*!40000 ALTER TABLE `Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProdutoOperacao`
--

DROP TABLE IF EXISTS `ProdutoOperacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProdutoOperacao` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProdutoId` int(11) NOT NULL,
  `OperacaoId` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Valor` double NOT NULL,
  `DataHoraOperacao` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_ProdutoOperacao_1` (`ProdutoId`),
  KEY `fk_ProdutoOperacao_2` (`OperacaoId`),
  CONSTRAINT `fk_ProdutoOperacao_1` FOREIGN KEY (`ProdutoId`) REFERENCES `Produto` (`Id`),
  CONSTRAINT `fk_ProdutoOperacao_2` FOREIGN KEY (`OperacaoId`) REFERENCES `Operacao` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProdutoOperacao`
--

LOCK TABLES `ProdutoOperacao` WRITE;
/*!40000 ALTER TABLE `ProdutoOperacao` DISABLE KEYS */;
INSERT INTO `ProdutoOperacao` VALUES (1,600545,1,20,18,'2020-09-01 10:00:00'),(2,600545,1,40,12,'2020-08-01 10:00:00'),(3,600545,1,10,20,'2020-07-01 10:00:00'),(4,598123,1,20,10,'2020-09-01 10:00:00'),(5,598123,1,30,30,'2019-08-01 10:00:00'),(6,598128,1,40,22,'2017-07-01 10:00:00'),(7,600548,1,10,21,'2018-10-01 10:00:00'),(8,600548,1,20,18,'2017-12-01 10:00:00'),(9,600760,1,10,15,'2020-01-01 10:00:00'),(10,600760,1,20,22,'2016-03-01 10:00:00'),(11,600760,1,30,25,'2017-07-01 10:00:00'),(12,600759,1,40,30,'2015-06-01 10:00:00'),(13,600759,1,10,20,'2018-07-01 10:00:00'),(14,600757,1,20,10,'2019-08-01 10:00:00'),(15,600757,1,30,15,'2020-04-01 10:00:00'),(16,600662,1,30,18,'2017-05-01 10:00:00'),(17,600552,1,10,16,'2016-06-01 10:00:00'),(18,600552,1,20,25,'2018-11-01 10:00:00'),(19,600552,1,30,20,'2019-10-01 10:00:00'),(20,598130,1,40,15,'2020-02-01 10:00:00'),(21,598130,1,10,30,'2018-09-01 10:00:00'),(22,600553,1,20,22,'2017-08-01 10:00:00'),(23,600553,1,30,20,'2016-07-01 10:00:00'),(24,600555,1,40,21,'2015-09-01 10:00:00'),(25,600555,1,10,22,'2019-08-01 10:00:00'),(26,600555,1,30,19,'2018-01-01 10:00:00'),(27,600853,1,10,20,'2020-03-01 10:00:00'),(28,600853,1,20,30,'2016-10-01 10:00:00'),(29,600821,1,40,20,'2017-12-01 10:00:00'),(30,600820,1,10,20,'2015-01-01 10:00:00'),(31,600820,1,20,20,'2016-10-01 10:00:00'),(32,598390,1,30,22,'2020-08-01 10:00:00'),(33,598390,1,40,25,'2018-05-01 10:00:00'),(34,598390,1,20,20,'2019-06-01 10:00:00'),(35,597973,1,10,15,'2019-07-01 10:00:00'),(36,597973,1,30,18,'2018-09-01 10:00:00'),(37,600829,1,10,20,'2020-12-01 10:00:00'),(38,600829,1,40,20,'2019-10-01 10:00:00'),(39,600829,1,20,22,'2017-11-01 10:00:00'),(40,600833,1,40,30,'2020-06-01 10:00:00'),(41,600833,1,10,35,'2019-04-01 10:00:00'),(42,600663,1,30,40,'2018-03-01 10:00:00'),(43,598585,1,10,22,'2017-08-01 10:00:00'),(44,598585,1,20,30,'2017-01-01 10:00:00'),(45,598585,1,40,30,'2016-01-01 10:00:00'),(46,601310,1,20,10,'2018-02-01 10:00:00'),(47,601310,1,10,10,'2020-03-01 10:00:00'),(48,601139,1,10,20,'2018-04-01 10:00:00'),(49,601139,1,40,22,'2019-05-01 10:00:00'),(50,599047,1,30,20,'2017-09-01 10:00:00'),(51,599047,1,10,20,'2019-11-01 10:00:00'),(52,599047,1,20,20,'2018-12-01 10:00:00'),(53,599097,1,40,30,'2019-10-01 10:00:00'),(54,599097,1,20,30,'2017-09-01 10:00:00'),(55,599098,1,30,30,'2019-10-01 10:00:00'),(56,599098,1,10,30,'2018-08-01 10:00:00'),(57,599098,1,20,30,'2019-03-01 10:00:00'),(58,599098,1,40,30,'2020-01-01 10:00:00'),(59,601075,1,10,20,'2017-05-01 10:00:00'),(60,601075,1,20,20,'2019-03-01 10:00:00'),(61,600811,1,10,20,'2020-04-01 10:00:00'),(62,600811,1,40,20,'2016-02-01 10:00:00'),(63,600811,1,20,20,'2020-03-01 10:00:00'),(64,599449,1,10,10,'2019-05-01 10:00:00'),(65,599449,1,20,10,'2017-08-01 10:00:00'),(66,599453,1,30,20,'2016-03-01 10:00:00'),(67,599453,1,40,20,'2015-04-01 10:00:00'),(68,599469,1,10,15,'2018-05-01 10:00:00'),(69,599479,1,20,20,'2019-09-01 10:00:00'),(70,599479,1,10,20,'2020-08-01 10:00:00'),(71,599479,1,40,20,'2016-04-01 10:00:00'),(72,599479,1,30,20,'2017-07-01 10:00:00'),(73,600545,2,30,20,'2020-09-01 10:00:00'),(74,600545,2,22,35,'2020-08-01 10:00:00'),(75,600545,2,15,15,'2020-07-01 10:00:00'),(76,598123,2,35,15,'2020-09-01 10:00:00'),(77,598123,2,20,35,'2019-08-01 10:00:00'),(78,598128,2,40,35,'2017-07-01 10:00:00'),(79,600548,2,30,22,'2018-10-01 10:00:00'),(80,600548,2,15,19,'2017-12-01 10:00:00'),(81,600760,2,16,16,'2020-01-01 10:00:00'),(82,600760,2,18,23,'2016-03-01 10:00:00'),(83,600760,2,25,18,'2017-07-01 10:00:00'),(84,600759,2,16,35,'2015-06-01 10:00:00'),(85,600759,2,17,21,'2018-07-01 10:00:00'),(86,600757,2,22,18,'2019-08-01 10:00:00'),(87,600757,2,65,19,'2020-04-01 10:00:00'),(88,600662,2,8,25,'2017-05-01 10:00:00'),(89,600552,2,48,19,'2016-06-01 10:00:00'),(90,600552,2,22,29,'2018-11-01 10:00:00'),(91,600552,2,13,24,'2019-10-01 10:00:00'),(92,598130,2,35,19,'2020-02-01 10:00:00'),(93,598130,2,8,38,'2018-09-01 10:00:00'),(94,600553,2,19,27,'2017-08-01 10:00:00'),(95,600553,2,22,23,'2016-07-01 10:00:00'),(96,600555,2,13,25,'2015-09-01 10:00:00'),(97,600555,2,20,19,'2019-08-01 10:00:00'),(98,600555,2,25,25,'2018-01-01 10:00:00'),(99,600853,2,13,13,'2020-03-01 10:00:00'),(100,600853,2,12,40,'2016-10-01 10:00:00'),(101,600821,2,33,23,'2017-12-01 10:00:00'),(102,600820,2,15,35,'2015-01-01 10:00:00'),(103,600820,2,16,23,'2016-10-01 10:00:00'),(104,598390,2,8,27,'2020-08-01 10:00:00'),(105,598390,2,42,28,'2018-05-01 10:00:00'),(106,598390,2,13,25,'2019-06-01 10:00:00'),(107,597973,2,25,18,'2019-07-01 10:00:00'),(108,597973,2,13,19,'2018-09-01 10:00:00'),(109,600829,2,32,25,'2020-12-01 10:00:00'),(110,600829,2,12,22,'2019-10-01 10:00:00'),(111,600829,2,24,27,'2017-11-01 10:00:00'),(112,600833,2,35,35,'2020-06-01 10:00:00'),(113,600833,2,16,39,'2019-04-01 10:00:00'),(114,600663,2,22,42,'2018-03-01 10:00:00'),(115,598585,2,13,23,'2017-08-01 10:00:00'),(116,598585,2,25,34,'2017-01-01 10:00:00'),(117,598585,2,38,32,'2016-01-01 10:00:00'),(118,601310,2,13,13,'2018-02-01 10:00:00'),(119,601310,2,15,14,'2020-03-01 10:00:00'),(120,601139,2,22,28,'2018-04-01 10:00:00'),(121,601139,2,38,29,'2019-05-01 10:00:00'),(122,599047,2,35,25,'2017-09-01 10:00:00'),(123,599047,2,18,25,'2019-11-01 10:00:00'),(124,599047,2,28,21,'2018-12-01 10:00:00'),(125,599097,2,31,39,'2019-10-01 10:00:00'),(126,599097,2,18,38,'2017-09-01 10:00:00'),(127,599098,2,54,37,'2019-10-01 10:00:00'),(128,599098,2,14,36,'2018-08-01 10:00:00'),(129,599098,2,41,35,'2019-03-01 10:00:00'),(130,599098,2,98,34,'2020-01-01 10:00:00'),(131,601075,2,18,23,'2017-05-01 10:00:00'),(132,601075,2,45,22,'2019-03-01 10:00:00'),(133,600811,2,8,21,'2020-04-01 10:00:00'),(134,600811,2,42,29,'2016-02-01 10:00:00'),(135,600811,2,26,25,'2020-03-01 10:00:00'),(136,599449,2,17,12,'2019-05-01 10:00:00'),(137,599449,2,12,16,'2017-08-01 10:00:00'),(138,599453,2,33,22,'2016-03-01 10:00:00'),(139,599453,2,18,29,'2015-04-01 10:00:00'),(140,599469,2,18,18,'2018-05-01 10:00:00'),(141,599479,2,41,23,'2019-09-01 10:00:00'),(142,599479,2,8,28,'2020-08-01 10:00:00'),(143,599479,2,56,29,'2016-04-01 10:00:00'),(144,599479,2,22,25,'2017-07-01 10:00:00'),(145,600545,1,20,15,'2020-09-05 10:00:00'),(146,598123,1,23,15,'2020-09-05 10:00:00'),(147,598128,1,10,15,'2020-09-05 10:00:00'),(148,600548,1,35,15,'2020-09-05 10:00:00'),(149,600760,1,30,15,'2020-09-05 10:00:00'),(150,600759,1,22,15,'2020-09-05 10:00:00'),(151,600757,1,23,15,'2020-09-05 10:00:00'),(152,600662,1,15,15,'2020-09-05 10:00:00'),(153,600552,1,18,15,'2020-09-05 10:00:00'),(154,598130,1,85,15,'2020-09-05 10:00:00'),(155,600553,1,45,15,'2020-09-05 10:00:00'),(156,600555,1,65,15,'2020-09-05 10:00:00'),(157,600853,1,14,15,'2020-09-05 10:00:00'),(158,600821,1,20,15,'2020-09-05 10:00:00'),(159,600820,1,36,15,'2020-09-05 10:00:00'),(160,598390,1,74,15,'2020-09-05 10:00:00'),(161,597973,1,47,15,'2020-09-05 10:00:00'),(162,600829,1,20,15,'2020-09-05 10:00:00'),(163,600833,1,63,15,'2020-09-05 10:00:00'),(164,600663,1,35,15,'2020-09-05 10:00:00'),(165,598585,1,41,15,'2020-09-05 10:00:00'),(166,601310,1,32,15,'2020-09-05 10:00:00'),(167,601139,1,78,15,'2020-09-05 10:00:00'),(168,599047,1,12,15,'2020-09-05 10:00:00'),(169,599097,1,58,15,'2020-09-05 10:00:00'),(170,599098,1,38,15,'2020-09-05 10:00:00'),(171,601075,1,51,15,'2020-09-05 10:00:00'),(172,600811,1,23,15,'2020-09-05 10:00:00'),(173,599449,1,47,15,'2020-09-05 10:00:00'),(174,599453,1,41,15,'2020-09-05 10:00:00'),(175,599469,1,30,15,'2020-09-05 10:00:00'),(176,599479,1,78,15,'2020-09-05 10:00:00'),(177,600545,2,18,21,'2020-09-05 10:00:00'),(178,598123,2,20,21,'2020-09-05 10:00:00'),(179,598128,2,12,21,'2020-09-05 10:00:00'),(180,600548,2,41,21,'2020-09-05 10:00:00'),(181,600760,2,28,21,'2020-09-05 10:00:00'),(182,600759,2,21,21,'2020-09-05 10:00:00'),(183,600757,2,19,21,'2020-09-05 10:00:00'),(184,600662,2,8,21,'2020-09-05 10:00:00'),(185,600552,2,9,21,'2020-09-05 10:00:00'),(186,598130,2,68,21,'2020-09-05 10:00:00'),(187,600553,2,35,21,'2020-09-05 10:00:00'),(188,600555,2,59,21,'2020-09-05 10:00:00'),(189,600853,2,9,21,'2020-09-05 10:00:00'),(190,600821,2,25,21,'2020-09-05 10:00:00'),(191,600820,2,34,21,'2020-09-05 10:00:00'),(192,598390,2,71,21,'2020-09-05 10:00:00'),(193,597973,2,40,21,'2020-09-05 10:00:00'),(194,600829,2,10,21,'2020-09-05 10:00:00'),(195,600833,2,49,21,'2020-09-05 10:00:00'),(196,600663,2,39,21,'2020-09-05 10:00:00'),(197,598585,2,40,21,'2020-09-05 10:00:00'),(198,601310,2,27,21,'2020-09-05 10:00:00'),(199,601139,2,56,21,'2020-09-05 10:00:00'),(200,599047,2,5,21,'2020-09-05 10:00:00'),(201,599097,2,22,21,'2020-09-05 10:00:00'),(202,599098,2,26,21,'2020-09-05 10:00:00'),(203,601075,2,6,21,'2020-09-05 10:00:00'),(204,600811,2,22,21,'2020-09-05 10:00:00'),(205,599449,2,69,21,'2020-09-05 10:00:00'),(206,599453,2,40,21,'2020-09-05 10:00:00'),(207,599469,2,25,21,'2020-09-05 10:00:00'),(208,599479,2,65,21,'2020-09-05 10:00:00');
/*!40000 ALTER TABLE `ProdutoOperacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-27  0:27:50
