-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB-0ubuntu0.16.04.1

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
-- Table structure for table `_acumuladoestandar`
--

DROP TABLE IF EXISTS `_acumuladoestandar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_acumuladoestandar` (
  `id_acumuladoestandar` bigint(20) NOT NULL AUTO_INCREMENT,
  `nota` float NOT NULL,
  `alumno_idalumno` int(11) NOT NULL,
  `materia_idmateria` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  `tipoestandar_idtipoestandar` int(11) NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  `equivalente` float NOT NULL,
  PRIMARY KEY (`id_acumuladoestandar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_acumuladoestandar`
--

LOCK TABLES `_acumuladoestandar` WRITE;
/*!40000 ALTER TABLE `_acumuladoestandar` DISABLE KEYS */;
/*!40000 ALTER TABLE `_acumuladoestandar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_acumuladofallas`
--

DROP TABLE IF EXISTS `_acumuladofallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_acumuladofallas` (
  `id_acumuladofallas` bigint(20) NOT NULL AUTO_INCREMENT,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  `materia_idmateria` int(11) NOT NULL,
  `alumno_idalumno` int(11) NOT NULL,
  `numerohoras` int(11) NOT NULL,
  PRIMARY KEY (`id_acumuladofallas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_acumuladofallas`
--

LOCK TABLES `_acumuladofallas` WRITE;
/*!40000 ALTER TABLE `_acumuladofallas` DISABLE KEYS */;
/*!40000 ALTER TABLE `_acumuladofallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `idalumno` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `estado` varchar(10) NOT NULL,
  `persona_idpersona` bigint(20) NOT NULL,
  PRIMARY KEY (`idalumno`),
  KEY `fk_alumno_persona1_idx` (`persona_idpersona`),
  CONSTRAINT `fk_alumno_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'170k01','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',1),(2,'170T01','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',2),(3,'170T02','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',3),(4,'170T03','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',4),(5,'170T04','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',5),(6,'170T05','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',6),(7,'170101','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',7),(8,'170102','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',8),(9,'170103','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',9),(10,'170104','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',10),(11,'170105','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',11),(12,'170106','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',12),(13,'170107','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',13),(14,'170108','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',14),(15,'170109','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',15),(16,'170110','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',16),(17,'170111','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',17),(18,'170112','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',18),(19,'170113','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',19),(20,'170114','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',20),(21,'170201','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',21),(22,'170202','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',22),(23,'170203','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',23),(24,'170204','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',24),(25,'170205','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',25),(26,'170206','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',26),(27,'170207','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',27),(28,'170208','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',28),(29,'170209','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',29),(30,'170210','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',30),(31,'170211','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',31),(32,'170212','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',32),(33,'170213','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',33),(34,'170214','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',34),(35,'170301','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',35),(36,'170302','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',36),(37,'170303','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',37),(38,'170304','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',38),(39,'170305','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',39),(40,'170306','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',40),(41,'170307','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',41),(42,'170308','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',42),(43,'170309','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',43),(44,'170310','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',44),(45,'170311','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',45),(46,'170312','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',46),(47,'170313','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',47),(48,'170314','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',48),(49,'170401','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',49),(50,'170402','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',50),(51,'170403','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',51),(52,'170404','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',52),(53,'170405','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',53),(54,'170406','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',54),(55,'170407','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',55),(56,'170408','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',56),(57,'170408','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',57),(58,'170409','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',58),(59,'170410','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',59),(60,'170411','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',60),(61,'170412','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',61),(62,'170413','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',62),(63,'170414','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',63),(64,'170415','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',64),(65,'170501','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',65),(66,'170502','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',66),(67,'170503','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',67),(68,'170504','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',68),(69,'170505','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',69),(70,'170506','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',70),(71,'170507','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',71),(72,'170508','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',72),(73,'170509','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',73),(74,'170510','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',74),(75,'170511','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',75),(76,'170512','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',76),(77,'170513','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',77),(78,'170601','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',78),(79,'170602','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',79),(80,'170603','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',80),(81,'170604','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',81),(82,'170605','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',82),(83,'170606','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',83),(84,'170607','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',84),(85,'170608','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',85),(86,'170609','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',86),(87,'170610','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',87),(88,'170701','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',88),(89,'170702','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',89),(90,'170703','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',90),(91,'170704','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',91),(92,'170705','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',92),(93,'170706','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',93),(94,'170707','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',94),(95,'170708','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',95),(96,'170709','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',96),(97,'170710','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',97),(98,'170711','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',98),(99,'170801','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',99),(100,'170802','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',100),(101,'170803','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',101),(102,'170804','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',102),(103,'170805','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',103),(104,'170806','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',104),(105,'170807','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',105),(106,'170808','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',106),(107,'170809','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',107),(108,'170901','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',108),(109,'170902','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',109),(110,'170903','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',110),(111,'170904','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',111),(112,'170905','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',112),(113,'170906','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',113),(114,'170907','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',114),(115,'170908','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',115),(116,'170909','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',116),(117,'170910','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',117),(118,'170911','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',118),(119,'170912','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',119),(120,'170913','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',120),(121,'170914','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',121),(122,'170915','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',122),(123,'171001','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',123),(124,'171002','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',124),(125,'171003','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',125),(126,'171004','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',126),(127,'171005','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',127),(128,'171006','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',128),(129,'171007','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',129),(130,'171008','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',130),(131,'171009','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',131),(132,'171010','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',132),(133,'171011','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',133),(134,'171012','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',134),(135,'171013','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',135),(136,'171014','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',136),(137,'171101','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',137),(138,'171102','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',138),(139,'171105','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',139),(140,'171107','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',140),(141,'171108','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',141),(142,'171109','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',142),(143,'171110','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',143),(144,'171111','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',144),(145,'171112','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',145),(146,'171113','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',146),(147,'171114','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',147),(148,'171115','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',148),(149,'171116','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',149),(150,'171117','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',150),(151,'171118','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','activo',151);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno_curso`
--

DROP TABLE IF EXISTS `alumno_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno_curso` (
  `idalumno_curso` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigolista` int(11) DEFAULT NULL,
  `ordenlista` int(11) DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `estado` varchar(10) NOT NULL,
  `alumno_idalumno` bigint(20) NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  PRIMARY KEY (`idalumno_curso`),
  KEY `fk_alumno_curso_alumno1_idx` (`alumno_idalumno`),
  KEY `fk_alumno_curso_curso1_idx` (`curso_idcurso`),
  CONSTRAINT `fk_alumno_curso_alumno1` FOREIGN KEY (`alumno_idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alumno_curso_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_curso`
--

LOCK TABLES `alumno_curso` WRITE;
/*!40000 ALTER TABLE `alumno_curso` DISABLE KEYS */;
INSERT INTO `alumno_curso` VALUES (1,1,1,'','activo',1,2),(2,1,1,'','activo',2,3),(3,2,2,'','activo',3,3),(4,3,3,'','activo',4,3),(5,4,4,'','activo',5,3),(6,5,5,'','activo',6,3),(7,1,1,'','activo',7,4),(8,2,2,'','activo',8,4),(9,3,3,'','activo',9,4),(10,4,4,'','activo',10,4),(11,5,5,'','activo',11,4),(12,6,6,'','activo',12,4),(13,7,7,'','activo',13,4),(14,8,8,'','activo',14,4),(15,9,9,'','activo',15,4),(16,10,10,'','activo',16,4),(17,11,11,'','activo',17,4),(18,12,12,'','activo',18,4),(19,13,13,'','activo',19,4),(20,14,14,'','activo',20,4),(21,1,1,'','activo',21,5),(22,2,2,'','activo',22,5),(23,3,3,'','activo',23,5),(24,4,4,'','activo',24,5),(25,5,5,'','activo',25,5),(26,6,6,'','activo',26,5),(27,7,7,'','activo',27,5),(28,8,8,'','activo',28,5),(29,9,9,'','activo',29,5),(30,10,10,'','activo',30,5),(31,11,11,'','activo',31,5),(32,12,12,'','activo',32,5),(33,13,13,'','activo',33,5),(34,14,14,'','activo',34,5),(35,1,1,'','activo',35,6),(36,2,2,'','activo',36,6),(37,3,3,'','activo',37,6),(38,4,4,'','activo',38,6),(39,5,5,'','activo',39,6),(40,6,6,'','activo',40,6),(41,7,7,'','activo',41,6),(42,8,8,'','activo',42,6),(43,9,9,'','activo',43,6),(44,10,10,'','activo',44,6),(45,11,11,'','activo',45,6),(46,12,12,'','activo',46,6),(47,13,13,'','activo',47,6),(48,14,14,'','activo',48,6),(49,1,1,'','activo',49,7),(50,2,2,'','activo',50,7),(51,3,3,'','activo',51,7),(52,4,4,'','activo',52,7),(53,5,5,'','activo',53,7),(54,6,6,'','activo',54,7),(55,7,7,'','activo',55,7),(56,8,8,'','activo',56,7),(57,8,8,'','activo',57,7),(58,9,9,'','activo',58,7),(59,10,10,'','activo',59,7),(60,11,11,'','activo',60,7),(61,12,12,'','activo',61,7),(62,13,13,'','activo',62,7),(63,14,14,'','activo',63,7),(64,15,15,'','activo',64,7),(65,1,1,'','activo',65,8),(66,2,2,'','activo',66,8),(67,3,3,'','activo',67,8),(68,4,4,'','activo',68,8),(69,5,5,'','activo',69,8),(70,6,6,'','activo',70,8),(71,7,7,'','activo',71,8),(72,8,8,'','activo',72,8),(73,9,9,'','activo',73,8),(74,10,10,'','activo',74,8),(75,11,11,'','activo',75,8),(76,12,12,'','activo',76,8),(77,13,13,'','activo',77,8),(78,1,1,'','activo',78,9),(79,2,2,'','activo',79,9),(80,3,3,'','activo',80,9),(81,4,4,'','activo',81,9),(82,5,5,'','activo',82,9),(83,6,6,'','activo',83,9),(84,7,7,'','activo',84,9),(85,8,8,'','activo',85,9),(86,9,9,'','activo',86,9),(87,10,10,'','activo',87,9),(88,1,1,'','activo',88,10),(89,2,2,'','activo',89,10),(90,3,3,'','activo',90,10),(91,4,4,'','activo',91,10),(92,5,5,'','activo',92,10),(93,6,6,'','activo',93,10),(94,7,7,'','activo',94,10),(95,8,8,'','activo',95,10),(96,9,9,'','activo',96,10),(97,10,10,'','activo',97,10),(98,11,11,'','activo',98,10),(99,1,1,'','activo',99,11),(100,2,2,'','activo',100,11),(101,3,3,'','activo',101,11),(102,4,4,'','activo',102,11),(103,5,5,'','activo',103,11),(104,6,6,'','activo',104,11),(105,7,7,'','activo',105,11),(106,8,8,'','activo',106,11),(107,9,9,'','activo',107,11),(108,1,1,'','activo',108,12),(109,2,2,'','activo',109,12),(110,3,3,'','activo',110,12),(111,4,4,'','activo',111,12),(112,5,5,'','activo',112,12),(113,6,6,'','activo',113,12),(114,7,7,'','activo',114,12),(115,8,8,'','activo',115,12),(116,9,9,'','activo',116,12),(117,10,10,'','activo',117,12),(118,11,11,'','activo',118,12),(119,12,12,'','activo',119,12),(120,13,13,'','activo',120,12),(121,14,14,'','activo',121,12),(122,15,15,'','activo',122,12),(123,1,1,'','activo',123,13),(124,2,2,'','activo',124,13),(125,3,3,'','activo',125,13),(126,4,4,'','activo',126,13),(127,5,5,'','activo',127,13),(128,6,6,'','activo',128,13),(129,7,7,'','activo',129,13),(130,8,8,'','activo',130,13),(131,9,9,'','activo',131,13),(132,10,10,'','activo',132,13),(133,11,11,'','activo',133,13),(134,12,12,'','activo',134,13),(135,13,13,'','activo',135,13),(136,14,14,'','activo',136,13),(137,1,1,'','activo',137,14),(138,2,2,'','activo',138,14),(139,5,5,'','activo',139,14),(140,7,7,'','activo',140,14),(141,8,8,'','activo',141,14),(142,9,9,'','activo',142,14),(143,10,10,'','activo',143,14),(144,11,11,'','activo',144,14),(145,12,12,'','activo',145,14),(146,13,13,'','activo',146,14),(147,14,14,'','activo',147,14),(148,15,15,'','activo',148,14),(149,16,16,'','activo',149,14),(150,17,17,'','activo',150,14),(151,18,18,'','activo',151,14);
/*!40000 ALTER TABLE `alumno_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anioescolar`
--

DROP TABLE IF EXISTS `anioescolar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anioescolar` (
  `idanioescolar` int(11) NOT NULL AUTO_INCREMENT,
  `anio` int(11) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `institucion_idinstitucion` int(11) NOT NULL,
  PRIMARY KEY (`idanioescolar`),
  KEY `fk_anioescolar_institucion1_idx` (`institucion_idinstitucion`),
  CONSTRAINT `fk_anioescolar_institucion1` FOREIGN KEY (`institucion_idinstitucion`) REFERENCES `institucion` (`idinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anioescolar`
--

LOCK TABLES `anioescolar` WRITE;
/*!40000 ALTER TABLE `anioescolar` DISABLE KEYS */;
INSERT INTO `anioescolar` VALUES (1,2017,'activo',1);
/*!40000 ALTER TABLE `anioescolar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archivoimportado`
--

DROP TABLE IF EXISTS `archivoimportado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archivoimportado` (
  `idarchivoimportado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) DEFAULT NULL,
  `path` varchar(512) NOT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  `materia_idmateria` int(11) NOT NULL,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  PRIMARY KEY (`idarchivoimportado`),
  KEY `fk_archivoimportado_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_archivoimportado_curso1_idx` (`curso_idcurso`),
  KEY `fk_archivoimportado_materia1_idx` (`materia_idmateria`),
  KEY `fk_archivoimportado_anioescolar1_idx` (`anioescolar_idanioescolar`),
  KEY `fk_archivoimportado_periodo1_idx` (`periodo_idperiodo`),
  CONSTRAINT `fk_archivoimportado_anioescolar1` FOREIGN KEY (`anioescolar_idanioescolar`) REFERENCES `anioescolar` (`idanioescolar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_archivoimportado_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_archivoimportado_materia1` FOREIGN KEY (`materia_idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_archivoimportado_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_archivoimportado_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archivoimportado`
--

LOCK TABLES `archivoimportado` WRITE;
/*!40000 ALTER TABLE `archivoimportado` DISABLE KEYS */;
/*!40000 ALTER TABLE `archivoimportado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `idarea` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idarea`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'CIENCIAS NATURALES Y ED. AMBIENTAL',1),(2,'MATEMATICAS',1),(3,'CIENCIAS SOCIALES',1),(4,'HUMANIDADES LENGUA CASTELLANA E INGLES',1),(5,'EDUCACION RELIGIOSA Y MORAL',1),(6,'ED. FISICA RECREACIÓN Y DEPORTES',1),(7,'EDUCACIÓN ARTISTICA Y CULTURAL',1),(8,'TECNOLOGIA E INFORMATICA',1),(9,'GESTION EMPRESARIAL',1),(10,'CONVIVENCIA',1);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canalmensaje`
--

DROP TABLE IF EXISTS `canalmensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canalmensaje` (
  `idcanalmensaje` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `parametros` varchar(512) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idcanalmensaje`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canalmensaje`
--

LOCK TABLES `canalmensaje` WRITE;
/*!40000 ALTER TABLE `canalmensaje` DISABLE KEYS */;
INSERT INTO `canalmensaje` VALUES (1,'SMS','',1),(2,'Tablero','',1);
/*!40000 ALTER TABLE `canalmensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `idciudad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `departamento_iddepartamento` int(11) NOT NULL,
  PRIMARY KEY (`idciudad`),
  KEY `fk_ciudad_departamento1_idx` (`departamento_iddepartamento`),
  CONSTRAINT `fk_ciudad_departamento1` FOREIGN KEY (`departamento_iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'La Mesa',1),(2,'Cachipay',1),(3,'Anapoima',1),(4,'Apulo',1),(5,'Tena',1),(6,'El Colegio',1);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  `grado_idgrado` int(11) NOT NULL,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  PRIMARY KEY (`idcurso`),
  KEY `fk_curso_grado1_idx` (`grado_idgrado`),
  KEY `fk_curso_anioescolar1_idx` (`anioescolar_idanioescolar`),
  CONSTRAINT `fk_curso_anioescolar1` FOREIGN KEY (`anioescolar_idanioescolar`) REFERENCES `anioescolar` (`idanioescolar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curso_grado1` FOREIGN KEY (`grado_idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Prekínder',NULL,0,1,1),(2,'Kínder',NULL,1,2,1),(3,'Transición',NULL,1,3,1),(4,'Primero',NULL,1,4,1),(5,'Segundo',NULL,1,5,1),(6,'Tercero',NULL,1,6,1),(7,'Cuarto',NULL,1,7,1),(8,'Quinto',NULL,1,8,1),(9,'Sexto',NULL,1,9,1),(10,'Séptimo',NULL,1,10,1),(11,'Octavo',NULL,1,11,1),(12,'Noveno',NULL,1,12,1),(13,'Décimo',NULL,1,13,1),(14,'Undecimo',NULL,1,14,1);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `pais_idpais` int(11) NOT NULL,
  PRIMARY KEY (`iddepartamento`),
  KEY `fk_departamento_pais_idx` (`pais_idpais`),
  CONSTRAINT `fk_departamento_pais` FOREIGN KEY (`pais_idpais`) REFERENCES `pais` (`idpais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Cundinamarca',1);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eps`
--

DROP TABLE IF EXISTS `eps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eps` (
  `ideps` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`ideps`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eps`
--

LOCK TABLES `eps` WRITE;
/*!40000 ALTER TABLE `eps` DISABLE KEYS */;
INSERT INTO `eps` VALUES (1,'No Definido'),(23,'COLMEDICA ENTIDAD PROMOTORA DE SALUD S.A.'),(24,'CAJA DE COMPENSACION FAMILIAR COMPENSAR'),(25,'COMFENALCO VALLE'),(26,'SALUD COLPATRIA S.A.'),(27,'CAFESALUD EPS'),(28,'CRUZBLANCA S.A.'),(29,'E.P.S. FAMISANAR LTDA. CAFAM COLSUBSIDIO'),(30,'E.P.S. SANITAS S.A.'),(31,'SALUDCOLOMBIA EPS S.A.'),(32,'SALUDCOOP EPS'),(33,'SALUDVIDA S.A. EPS'),(34,'SERVICIO OCCIDENTAL DE SALUD S.A. S.O.S.'),(35,'SOLIDARIA DE SALUD SOLSALUD S.A.'),(36,'COOMEVA EPS S.A.'),(37,'INSTITUTO DE SEGUROS SOCIALES'),(38,'CAPRECOM'),(39,'SALUD TOTAL S.A. EPS ARS'),(40,'CAJA DE COMPENSACION FAMILIAR COMFENALCO ANTIOQUIA'),(41,'COMPAÑIA SURAMERICANA DE SERVICIOS DE SALUD S.A. SUSALUD'),(42,'HUMANA VIVIR S.A. EPS'),(43,'REDSALUD ATENCION HUMANA EPS S.A.');
/*!40000 ALTER TABLE `eps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluacion`
--

DROP TABLE IF EXISTS `evaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluacion` (
  `idevaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fechaevaluacion` date NOT NULL,
  `porcentaje` float NOT NULL,
  `detalle` text,
  `hash` varchar(256) DEFAULT NULL,
  `estado` varchar(10) NOT NULL,
  `tipoestandar_idtipoestandar` int(11) NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  `tipoevaluacion_idtipoevaluacion` int(11) NOT NULL,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  `materia_idmateria` int(11) NOT NULL,
  `profesor_idprofesor` int(11) NOT NULL,
  PRIMARY KEY (`idevaluacion`),
  KEY `fk_evaluacion_tipoestandar1_idx` (`tipoestandar_idtipoestandar`),
  KEY `fk_evaluacion_curso1_idx` (`curso_idcurso`),
  KEY `fk_evaluacion_periodo1_idx` (`periodo_idperiodo`),
  KEY `fk_evaluacion_tipoevaluacion1_idx` (`tipoevaluacion_idtipoevaluacion`),
  KEY `fk_evaluacion_anioescolar1_idx` (`anioescolar_idanioescolar`),
  KEY `fk_evaluacion_materia1_idx` (`materia_idmateria`),
  KEY `fk_evaluacion_profesor1_idx` (`profesor_idprofesor`),
  CONSTRAINT `fk_evaluacion_anioescolar1` FOREIGN KEY (`anioescolar_idanioescolar`) REFERENCES `anioescolar` (`idanioescolar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluacion_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluacion_materia1` FOREIGN KEY (`materia_idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluacion_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluacion_profesor1` FOREIGN KEY (`profesor_idprofesor`) REFERENCES `profesor` (`idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluacion_tipoestandar1` FOREIGN KEY (`tipoestandar_idtipoestandar`) REFERENCES `tipoestandar` (`idtipoestandar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluacion_tipoevaluacion1` FOREIGN KEY (`tipoevaluacion_idtipoevaluacion`) REFERENCES `tipoevaluacion` (`idtipoevaluacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluacion`
--

LOCK TABLES `evaluacion` WRITE;
/*!40000 ALTER TABLE `evaluacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluaciondetalle`
--

DROP TABLE IF EXISTS `evaluaciondetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluaciondetalle` (
  `idevaluaciondetalle` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nota` float NOT NULL,
  `letra` varchar(10) DEFAULT NULL,
  `observaciones` text,
  `estado` varchar(10) NOT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `evaluacion_idevaluacion` int(11) NOT NULL,
  `alumno_idalumno` bigint(20) NOT NULL,
  PRIMARY KEY (`idevaluaciondetalle`),
  KEY `fk_evaluaciondetalle_evaluacion1_idx` (`evaluacion_idevaluacion`),
  KEY `fk_evaluaciondetalle_alumno1_idx` (`alumno_idalumno`),
  CONSTRAINT `fk_evaluaciondetalle_alumno1` FOREIGN KEY (`alumno_idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluaciondetalle_evaluacion1` FOREIGN KEY (`evaluacion_idevaluacion`) REFERENCES `evaluacion` (`idevaluacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluaciondetalle`
--

LOCK TABLES `evaluaciondetalle` WRITE;
/*!40000 ALTER TABLE `evaluaciondetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluaciondetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fallas`
--

DROP TABLE IF EXISTS `fallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fallas` (
  `idfallas` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `numerohoras` int(11) NOT NULL,
  `observaciones` text,
  `estado` varchar(10) NOT NULL,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  `materia_idmateria` int(11) NOT NULL,
  `alumno_idalumno` bigint(20) NOT NULL,
  `profesor_curso_idprofesor_curso` int(11) NOT NULL,
  PRIMARY KEY (`idfallas`),
  KEY `fk_fallas_anioescolar1_idx` (`anioescolar_idanioescolar`),
  KEY `fk_fallas_periodo1_idx` (`periodo_idperiodo`),
  KEY `fk_fallas_curso1_idx` (`curso_idcurso`),
  KEY `fk_fallas_materia1_idx` (`materia_idmateria`),
  KEY `fk_fallas_alumno1_idx` (`alumno_idalumno`),
  KEY `fk_fallas_profesor_curso1_idx` (`profesor_curso_idprofesor_curso`),
  CONSTRAINT `fk_fallas_alumno1` FOREIGN KEY (`alumno_idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fallas_anioescolar1` FOREIGN KEY (`anioescolar_idanioescolar`) REFERENCES `anioescolar` (`idanioescolar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fallas_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fallas_materia1` FOREIGN KEY (`materia_idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fallas_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fallas_profesor_curso1` FOREIGN KEY (`profesor_curso_idprofesor_curso`) REFERENCES `profesor_curso` (`idprofesor_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallas`
--

LOCK TABLES `fallas` WRITE;
/*!40000 ALTER TABLE `fallas` DISABLE KEYS */;
/*!40000 ALTER TABLE `fallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familiar`
--

DROP TABLE IF EXISTS `familiar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familiar` (
  `idfamiliar` int(11) NOT NULL AUTO_INCREMENT,
  `persona_idpersona` bigint(20) NOT NULL,
  PRIMARY KEY (`idfamiliar`),
  KEY `fk_familiar_persona1_idx` (`persona_idpersona`),
  CONSTRAINT `fk_familiar_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familiar`
--

LOCK TABLES `familiar` WRITE;
/*!40000 ALTER TABLE `familiar` DISABLE KEYS */;
/*!40000 ALTER TABLE `familiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familiar_alumno`
--

DROP TABLE IF EXISTS `familiar_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familiar_alumno` (
  `idfamiliar_alumno` int(11) NOT NULL AUTO_INCREMENT,
  `acudiente` tinyint(1) NOT NULL,
  `familiar_idfamiliar` int(11) NOT NULL,
  `alumno_idalumno` bigint(20) NOT NULL,
  `tipofamiliar_idtipofamiliar` int(11) NOT NULL,
  PRIMARY KEY (`idfamiliar_alumno`),
  KEY `fk_familiar_alumno_familiar1_idx` (`familiar_idfamiliar`),
  KEY `fk_familiar_alumno_alumno1_idx` (`alumno_idalumno`),
  KEY `fk_familiar_alumno_tipofamiliar1_idx` (`tipofamiliar_idtipofamiliar`),
  CONSTRAINT `fk_familiar_alumno_alumno1` FOREIGN KEY (`alumno_idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_familiar_alumno_familiar1` FOREIGN KEY (`familiar_idfamiliar`) REFERENCES `familiar` (`idfamiliar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_familiar_alumno_tipofamiliar1` FOREIGN KEY (`tipofamiliar_idtipofamiliar`) REFERENCES `tipofamiliar` (`idtipofamiliar`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familiar_alumno`
--

LOCK TABLES `familiar_alumno` WRITE;
/*!40000 ALTER TABLE `familiar_alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `familiar_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familiar_usuario`
--

DROP TABLE IF EXISTS `familiar_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familiar_usuario` (
  `idfamiliar_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `familiar_idfamiliar` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idfamiliar_usuario`),
  KEY `fk_familiar_usuario_familiar1_idx` (`familiar_idfamiliar`),
  KEY `fk_familiar_usuario_usuario1_idx` (`usuario_idusuario`),
  CONSTRAINT `fk_familiar_usuario_familiar1` FOREIGN KEY (`familiar_idfamiliar`) REFERENCES `familiar` (`idfamiliar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_familiar_usuario_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familiar_usuario`
--

LOCK TABLES `familiar_usuario` WRITE;
/*!40000 ALTER TABLE `familiar_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `familiar_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'No Definido'),(2,'Femenino'),(3,'Masculino');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grado` (
  `idgrado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `institucion_idinstitucion` int(11) NOT NULL,
  PRIMARY KEY (`idgrado`),
  KEY `fk_grado_institucion1_idx` (`institucion_idinstitucion`),
  CONSTRAINT `fk_grado_institucion1` FOREIGN KEY (`institucion_idinstitucion`) REFERENCES `institucion` (`idinstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'Prekínder',0,1),(2,'Kínder',1,1),(3,'Transición',1,1),(4,'Primero',1,1),(5,'Segundo',1,1),(6,'Tercero',1,1),(7,'Cuarto',1,1),(8,'Quinto',1,1),(9,'Sexto',1,1),(10,'Septimo',1,1),(11,'Octavo',1,1),(12,'Noveno',1,1),(13,'Decimo',1,1),(14,'Undecimo',1,1);
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupomodulo`
--

DROP TABLE IF EXISTS `grupomodulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupomodulo` (
  `idgrupomodulo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `icono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgrupomodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupomodulo`
--

LOCK TABLES `grupomodulo` WRITE;
/*!40000 ALTER TABLE `grupomodulo` DISABLE KEYS */;
INSERT INTO `grupomodulo` VALUES (1,'Configuración','fa fa-coffee'),(2,'Administración','fa fa-coffee'),(3,'Cursos','fa fa-coffee'),(4,'Alumnos','fa fa-coffee'),(5,'Acudientes','fa fa-coffee');
/*!40000 ALTER TABLE `grupomodulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupomodulo_modulosistema`
--

DROP TABLE IF EXISTS `grupomodulo_modulosistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupomodulo_modulosistema` (
  `idgrupomodulo_modulosistema` int(11) NOT NULL AUTO_INCREMENT,
  `grupomodulo_idgrupomodulo` int(11) NOT NULL,
  `modulosistema_idmodulosistema` int(11) NOT NULL,
  PRIMARY KEY (`idgrupomodulo_modulosistema`),
  KEY `fk_grupomodulo_modulosistema_grupomodulo1_idx` (`grupomodulo_idgrupomodulo`),
  KEY `fk_grupomodulo_modulosistema_modulosistema1_idx` (`modulosistema_idmodulosistema`),
  CONSTRAINT `fk_grupomodulo_modulosistema_grupomodulo1` FOREIGN KEY (`grupomodulo_idgrupomodulo`) REFERENCES `grupomodulo` (`idgrupomodulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupomodulo_modulosistema_modulosistema1` FOREIGN KEY (`modulosistema_idmodulosistema`) REFERENCES `modulosistema` (`idmodulosistema`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupomodulo_modulosistema`
--

LOCK TABLES `grupomodulo_modulosistema` WRITE;
/*!40000 ALTER TABLE `grupomodulo_modulosistema` DISABLE KEYS */;
INSERT INTO `grupomodulo_modulosistema` VALUES (1,1,1),(2,3,2),(3,2,3),(4,3,6),(5,3,5),(6,3,14),(7,2,18),(8,5,13),(9,2,12);
/*!40000 ALTER TABLE `grupomodulo_modulosistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gruposanguineo`
--

DROP TABLE IF EXISTS `gruposanguineo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gruposanguineo` (
  `idgruposanguineo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(5) NOT NULL,
  PRIMARY KEY (`idgruposanguineo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruposanguineo`
--

LOCK TABLES `gruposanguineo` WRITE;
/*!40000 ALTER TABLE `gruposanguineo` DISABLE KEYS */;
INSERT INTO `gruposanguineo` VALUES (1,'?'),(2,'A'),(3,'B'),(4,'AB'),(5,'O');
/*!40000 ALTER TABLE `gruposanguineo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informe_alumno`
--

DROP TABLE IF EXISTS `informe_alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informe_alumno` (
  `idinforme_alumno` bigint(20) NOT NULL AUTO_INCREMENT,
  `promedio` decimal(4,3) DEFAULT NULL,
  `promediocurso` decimal(4,3) DEFAULT NULL,
  `puestocurso` int(11) DEFAULT NULL,
  `puestogrado` int(11) DEFAULT NULL,
  `puestocolegio` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hash` varchar(45) DEFAULT NULL,
  `estado` varchar(10) NOT NULL,
  `observaciones` text,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  `alumno_idalumno` bigint(20) NOT NULL,
  `profesor_idprofesor` int(11) NOT NULL,
  `informeacademico_idinformeacademico` int(11) NOT NULL,
  PRIMARY KEY (`idinforme_alumno`),
  KEY `fk_informe_alumno_anioescolar1_idx` (`anioescolar_idanioescolar`),
  KEY `fk_informe_alumno_periodo1_idx` (`periodo_idperiodo`),
  KEY `fk_informe_alumno_curso1_idx` (`curso_idcurso`),
  KEY `fk_informe_alumno_alumno1_idx` (`alumno_idalumno`),
  KEY `fk_informe_alumno_profesor1_idx` (`profesor_idprofesor`),
  KEY `fk_informe_alumno_informeacademico1_idx` (`informeacademico_idinformeacademico`),
  CONSTRAINT `fk_informe_alumno_alumno1` FOREIGN KEY (`alumno_idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_anioescolar1` FOREIGN KEY (`anioescolar_idanioescolar`) REFERENCES `anioescolar` (`idanioescolar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_informeacademico1` FOREIGN KEY (`informeacademico_idinformeacademico`) REFERENCES `informeacademico` (`idinformeacademico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_profesor1` FOREIGN KEY (`profesor_idprofesor`) REFERENCES `profesor` (`idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informe_alumno`
--

LOCK TABLES `informe_alumno` WRITE;
/*!40000 ALTER TABLE `informe_alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `informe_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informe_alumno_detalle`
--

DROP TABLE IF EXISTS `informe_alumno_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informe_alumno_detalle` (
  `idinforme_alumno_detalle` bigint(20) NOT NULL AUTO_INCREMENT,
  `nota` decimal(3,2) NOT NULL,
  `letra` varchar(10) DEFAULT NULL,
  `fallas` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `materia_idmateria` int(11) NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  `alumno_idalumno` bigint(20) NOT NULL,
  PRIMARY KEY (`idinforme_alumno_detalle`),
  KEY `fk_informe_alumno_detalle_materia1_idx` (`materia_idmateria`),
  KEY `fk_informe_alumno_detalle_curso1_idx` (`curso_idcurso`),
  KEY `fk_informe_alumno_detalle_periodo1_idx` (`periodo_idperiodo`),
  KEY `fk_informe_alumno_detalle_anioescolar1_idx` (`anioescolar_idanioescolar`),
  KEY `fk_informe_alumno_detalle_alumno1_idx` (`alumno_idalumno`),
  CONSTRAINT `fk_informe_alumno_detalle_alumno1` FOREIGN KEY (`alumno_idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_detalle_anioescolar1` FOREIGN KEY (`anioescolar_idanioescolar`) REFERENCES `anioescolar` (`idanioescolar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_detalle_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_detalle_materia1` FOREIGN KEY (`materia_idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_detalle_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informe_alumno_detalle`
--

LOCK TABLES `informe_alumno_detalle` WRITE;
/*!40000 ALTER TABLE `informe_alumno_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `informe_alumno_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informeacademico`
--

DROP TABLE IF EXISTS `informeacademico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informeacademico` (
  `idinformeacademico` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fechalimite` date DEFAULT NULL,
  `observacioneshidden` text,
  `observacionesshow` text,
  `estado` varchar(10) NOT NULL,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  PRIMARY KEY (`idinformeacademico`),
  KEY `fk_informeacademico_anioescolar1_idx` (`anioescolar_idanioescolar`),
  KEY `fk_informeacademico_periodo1_idx` (`periodo_idperiodo`),
  CONSTRAINT `fk_informeacademico_anioescolar1` FOREIGN KEY (`anioescolar_idanioescolar`) REFERENCES `anioescolar` (`idanioescolar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_informeacademico_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informeacademico`
--

LOCK TABLES `informeacademico` WRITE;
/*!40000 ALTER TABLE `informeacademico` DISABLE KEYS */;
INSERT INTO `informeacademico` VALUES (1,NULL,'2017-04-28 21:58:59',NULL,'2017-04-28',NULL,NULL,'cerrado',1,1),(2,NULL,NULL,NULL,'2017-07-21',NULL,NULL,'cerrado',1,2),(3,NULL,NULL,NULL,'2017-10-01',NULL,NULL,'activo',1,3);
/*!40000 ALTER TABLE `informeacademico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucion`
--

DROP TABLE IF EXISTS `institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucion` (
  `idinstitucion` int(11) NOT NULL AUTO_INCREMENT,
  `nit` varchar(16) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `logo` varchar(45) NOT NULL,
  `direccion` varchar(128) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `paginaweb` varchar(128) DEFAULT NULL,
  `detalles` text,
  `ciudad_idciudad` int(11) NOT NULL,
  PRIMARY KEY (`idinstitucion`),
  KEY `fk_institucion_ciudad1_idx` (`ciudad_idciudad`),
  CONSTRAINT `fk_institucion_ciudad1` FOREIGN KEY (`ciudad_idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucion`
--

LOCK TABLES `institucion` WRITE;
/*!40000 ALTER TABLE `institucion` DISABLE KEYS */;
INSERT INTO `institucion` VALUES (1,'123456','COLEGIO PARROQUIAL INTEGRADO SANTA CRUZ','img/logo.jpg','call 2 3 4','2223332','correoprueba@lainstitucion.com','google.com','{\"resolucionl1\":\"Resoluci\\u00f3n de Aprobaci\\u00f3n No 001157 de 24-08\\/00; 002878\\/ 05\",\"resolucionl2\":\"009310 de Nov.6 de 2007 y 009029 de diciembre 22de 2008\",\"nit\":\"0000000-00\",\"logo2\":\"img\\/logo.png\"}',2);
/*!40000 ALTER TABLE `institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `idlog` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` int(11) NOT NULL,
  `tabla` varchar(45) NOT NULL,
  `accion` char(1) NOT NULL,
  `detalle` text NOT NULL,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `horassemana` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `area_idarea` int(11) NOT NULL,
  `grado_idgrado` int(11) NOT NULL,
  PRIMARY KEY (`idmateria`),
  KEY `fk_materia_area1_idx` (`area_idarea`),
  KEY `fk_materia_grado1_idx` (`grado_idgrado`),
  CONSTRAINT `fk_materia_area1` FOREIGN KEY (`area_idarea`) REFERENCES `area` (`idarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_materia_grado1` FOREIGN KEY (`grado_idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Pre Matematicas',6,1,2,2),(2,'Pre Escritura',6,1,4,2),(3,'Pre Ciencias',3,1,1,2),(4,'Pre Sociales',3,1,3,2),(5,'Ingles',3,1,4,2),(6,'Educacion Fisica',1,1,6,2),(7,'Etica',1,1,5,2),(8,'Religion',1,1,5,2),(9,'Artisitica',1,1,7,2),(10,'Pre Matematicas',6,1,2,3),(11,'Pre Escritura',6,1,4,3),(12,'Pre Ciencias',3,1,1,3),(13,'Pre Sociales',3,1,3,3),(14,'Ingles',3,1,4,3),(15,'Educacion Fisica',1,1,6,3),(16,'Etica',1,1,5,3),(17,'Religion',1,1,5,3),(18,'Artisitica',1,1,7,3),(19,'Informatica',1,1,8,3),(20,'Español',6,1,4,4),(21,'Matematicas',6,1,2,4),(22,'Ciencias Naturales',4,1,1,4),(23,'Ciencias Sociales',3,1,3,4),(24,'Catedra de paz',1,1,5,4),(25,'Educacion Fisica',2,1,6,4),(26,'Religion',1,1,5,4),(27,'Etica y Valores',1,1,5,4),(28,'Artisitica',2,1,7,4),(29,'Ingles',5,1,4,4),(30,'Tecnologia E informatica',3,1,8,4),(31,'Matematicas',6,1,2,5),(32,'Español',6,1,4,5),(33,'Sociales',3,1,3,5),(34,'Ciencias Naturales',4,1,1,5),(35,'Educacion Fisica',2,1,6,5),(36,'Artistica',2,1,7,5),(37,'Religion',1,1,5,5),(38,'Etica',1,1,5,5),(39,'Catedra de paz',1,1,5,5),(40,'Ingles',5,1,4,5),(41,'Tecnologia E informatica',3,1,8,5),(42,'Ciencias Naturales',4,1,1,6),(43,'Ciencias Sociales',3,1,3,6),(44,'Catedra de paz',1,1,5,6),(45,'Etica y Valores',1,1,5,6),(46,'Artisitica',2,1,1,6),(47,'Ingles',5,1,4,6),(48,'Español',6,1,4,6),(49,'Matematicas',6,1,2,6),(50,'Educacion Fisica',2,1,6,6),(51,'Tecnologia E informatica',3,1,8,6),(52,'Religion',1,1,5,6),(53,'Español',5,1,4,7),(54,'Ciencias Naturales',4,1,1,7),(55,'Ciencias Sociales',3,1,3,7),(56,'Catedra de paz',1,1,5,7),(57,'Etica y Valores',1,1,5,7),(58,'Ingles',5,1,4,7),(59,'Matematicas',6,1,2,7),(60,'Educacion Fisica',2,1,6,7),(61,'Artistica',2,1,7,7),(62,'Tecnologia E informatica',3,1,8,7),(63,'Religion',1,1,5,7),(64,'Religion',1,1,5,8),(65,'Etica',1,1,5,8),(66,'Ciencias Naturales',4,1,1,8),(67,'Ingles',5,1,4,8),(68,'Matematicas',6,1,2,8),(69,'Educacion Fisica',2,1,6,8),(70,'Artistica',2,1,7,8),(71,'Ciencias Sociales',3,1,3,8),(72,'Catedra de paz',1,1,5,8),(73,'Español',5,1,4,8),(74,'Tecnologia E informatica',3,1,8,8),(75,'Matematicas',6,1,2,9),(76,'Quimica',1,1,1,9),(77,'Biologia',4,1,1,9),(78,'Educacion Fisica',2,1,6,9),(79,'Artistica',2,1,7,9),(80,'Ciencias Sociales',2,1,3,9),(81,'Catedra de paz',1,1,5,9),(82,'Etica y Valores',1,1,5,9),(83,'Español',5,1,4,9),(84,'Ingles',5,1,4,9),(85,'Religion',1,1,5,9),(86,'Tecnologia E informatica',3,1,8,9),(87,'Matematicas',6,1,2,10),(88,'Quimica',1,1,1,10),(89,'Biologia',4,1,1,10),(90,'Educacion Fisica',2,1,6,10),(91,'Artistica',2,1,7,10),(92,'Ciencias Sociales',2,1,3,10),(93,'Catedra de paz',1,1,5,10),(94,'Etica y Valores',1,1,5,10),(95,'Español',5,1,4,10),(96,'Ingles',5,1,4,10),(97,'Tecnologia E informatica',3,1,8,10),(98,'Religion',1,1,5,10),(99,'Artisitica',2,1,7,11),(100,'Quimica',1,1,1,11),(101,'Biologia',4,1,1,11),(102,'Educacion Fisica',2,1,6,11),(103,'Ciencias Sociales',2,1,3,11),(104,'Catedra de paz',1,1,5,11),(105,'Etica y Valores',1,1,5,11),(106,'Español',5,1,4,11),(107,'Ingles',5,1,4,11),(108,'Algebra',6,1,2,11),(109,'Religion',1,1,5,11),(110,'Tecnologia E informatica',3,1,8,11),(111,'Artisitica',2,1,7,12),(112,'Quimica',1,1,1,12),(113,'Biologia',4,1,1,12),(114,'Educacion Fisica',2,1,6,12),(115,'Ciencias Sociales',2,1,3,12),(116,'Catedra de paz',1,1,5,12),(117,'Etica y Valores',1,1,5,12),(118,'Español',5,1,4,12),(119,'Ingles',5,1,4,12),(120,'Matematicas',6,1,2,12),(121,'Religion',1,1,5,12),(122,'Tecnologia E informatica',2,1,8,12),(123,'Quimica',5,1,1,13),(124,'Educacion Fisica',2,1,6,13),(125,'Artistica',2,1,7,13),(126,'Filosofia',1,1,4,13),(127,'Catedra de paz',1,1,5,13),(128,'Ciencias Sociales',3,1,3,13),(129,'Español',3,1,4,13),(130,'Ingles',4,1,4,13),(131,'Trigonometria',4,1,2,13),(132,'Fisica',4,1,2,13),(133,'Religion',1,1,5,13),(134,'Etica y Valores',1,1,5,13),(135,'Emprendimiento',1,1,9,13),(136,'Tecnologia E informatica',2,1,8,13),(137,'Quimica',4,1,1,14),(138,'Educacion Fisica',1,1,6,14),(139,'Artistica',1,1,7,14),(140,'Filosofia',1,1,4,14),(141,'Catedra de paz',1,1,5,14),(142,'Ciencias Sociales',3,1,3,14),(143,'Español',3,1,4,14),(144,'Ingles',4,1,4,14),(145,'Calculo',5,1,2,14),(146,'Fisica',4,1,2,14),(147,'Religion',1,1,5,14),(148,'Etica y Valores',1,1,5,14),(149,'Emprendimiento',1,1,9,14),(150,'Tecnologia E informatica',2,1,8,14);
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje` (
  `idmensaje` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asunto` varchar(128) DEFAULT NULL,
  `mensaje` text,
  `fechaenvio` date DEFAULT NULL,
  `fechavencimiento` date DEFAULT NULL,
  `profesores` tinyint(1) DEFAULT NULL,
  `acudientes` tinyint(1) DEFAULT NULL,
  `acudientesdetalle` text,
  `numerosadicionales` text,
  `emailsadicionales` text,
  `estado` varchar(10) DEFAULT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `tipomensaje_idtipomensaje` int(11) NOT NULL,
  PRIMARY KEY (`idmensaje`),
  KEY `fk_mensaje_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_mensaje_tipomensaje1_idx` (`tipomensaje_idtipomensaje`),
  CONSTRAINT `fk_mensaje_tipomensaje1` FOREIGN KEY (`tipomensaje_idtipomensaje`) REFERENCES `tipomensaje` (`idtipomensaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mensaje_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje_canalmensaje`
--

DROP TABLE IF EXISTS `mensaje_canalmensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje_canalmensaje` (
  `idmensaje_canalmensaje` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado` varchar(10) NOT NULL,
  `mensaje_idmensaje` bigint(20) NOT NULL,
  `canalmensaje_idcanalmensaje` int(11) NOT NULL,
  PRIMARY KEY (`idmensaje_canalmensaje`),
  KEY `fk_mensaje_canalmensaje_mensaje1_idx` (`mensaje_idmensaje`),
  KEY `fk_mensaje_canalmensaje_canalmensaje1_idx` (`canalmensaje_idcanalmensaje`),
  CONSTRAINT `fk_mensaje_canalmensaje_canalmensaje1` FOREIGN KEY (`canalmensaje_idcanalmensaje`) REFERENCES `canalmensaje` (`idcanalmensaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mensaje_canalmensaje_mensaje1` FOREIGN KEY (`mensaje_idmensaje`) REFERENCES `mensaje` (`idmensaje`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_canalmensaje`
--

LOCK TABLES `mensaje_canalmensaje` WRITE;
/*!40000 ALTER TABLE `mensaje_canalmensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje_canalmensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje_sms`
--

DROP TABLE IF EXISTS `mensaje_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje_sms` (
  `idmensaje_sms` bigint(20) NOT NULL AUTO_INCREMENT,
  `fechaenvio` timestamp NULL DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `MessageId` varchar(128) DEFAULT NULL,
  `statusCode` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `mensaje_idmensaje` bigint(20) NOT NULL,
  PRIMARY KEY (`idmensaje_sms`),
  KEY `fk_mensaje_sms_mensaje1_idx` (`mensaje_idmensaje`),
  CONSTRAINT `fk_mensaje_sms_mensaje1` FOREIGN KEY (`mensaje_idmensaje`) REFERENCES `mensaje` (`idmensaje`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_sms`
--

LOCK TABLES `mensaje_sms` WRITE;
/*!40000 ALTER TABLE `mensaje_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje_usuario`
--

DROP TABLE IF EXISTS `mensaje_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje_usuario` (
  `idmensaje_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado` varchar(10) DEFAULT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `mensaje_idmensaje` bigint(20) NOT NULL,
  PRIMARY KEY (`idmensaje_usuario`),
  KEY `fk_mensaje_usuario_mensaje1_idx` (`mensaje_idmensaje`),
  KEY `fk_mensaje_usuario_usuario1_idx` (`usuario_idusuario`),
  CONSTRAINT `fk_mensaje_usuario_mensaje1` FOREIGN KEY (`mensaje_idmensaje`) REFERENCES `mensaje` (`idmensaje`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mensaje_usuario_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje_usuario`
--

LOCK TABLES `mensaje_usuario` WRITE;
/*!40000 ALTER TABLE `mensaje_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulosistema`
--

DROP TABLE IF EXISTS `modulosistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulosistema` (
  `idmodulosistema` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `path` varchar(45) NOT NULL,
  `icono` varchar(45) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idmodulosistema`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulosistema`
--

LOCK TABLES `modulosistema` WRITE;
/*!40000 ALTER TABLE `modulosistema` DISABLE KEYS */;
INSERT INTO `modulosistema` VALUES (1,'Usuarios','usuario','fa fa-coffee',1),(2,'Listado de Cursos','curso','fa fa-coffee',1),(3,'Cierre de Periodo','informeacademico','fa fa-coffee',1),(4,'Cuenta de Usuario','cuentausuario','fa fa-coffee',1),(5,'Planillas','planillanotas','fa fa-coffee',1),(6,'Evaluaciones','evaluacion','fa fa-coffee',1),(7,'Evaluacion Curso','evaluacioncurso','fa fa-coffee',1),(8,'Notas Finales','notasfinalesperiodo','fa fa-coffee',1),(9,'Notas Finales Periodo Curso','notasfinalesperiodocurso','fa fa-coffee',1),(10,'Planilla Puesto Curso','planillapuestocurso','fa fa-coffee',1),(11,'Nueva Evaluacion','nuevaevaluacion','fa fa-coffee',1),(12,'Alumnos','alumno','fa fa-coffee',1),(13,'Desk Acudiente','acudiente','fa fa-coffee',1),(14,'Control de Asistencia','fallas','fa fa-coffee',1),(15,'Detalle de Fallas','detallefallas','fa fa-coffee',1),(16,'Nueva Falla','crearfalla','fa fa-coffee',1),(17,'Administradores','administrador','fa fa-coffee',1),(18,'Mensajes','mensaje','fa fa-coffee',1),(19,'Procesar Mensajes Tablero','procesarmensajestablero','fa fa-coffee',1),(20,'Buscar Usuario','buscarusuario','fa fa-coffee',1);
/*!40000 ALTER TABLE `modulosistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `idpais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Colombia');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametros`
--

DROP TABLE IF EXISTS `parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametros` (
  `idparametros` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(45) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`idparametros`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros`
--

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
INSERT INTO `parametros` VALUES (1,'idanioescolar','1'),(2,'idperiodo','3'),(3,'notaminima','2'),(4,'notamaxima','5'),(5,'generadorPdf','http:/enter4cloud.com'),(6,'notaaprovatoria','3.5'),(7,'estadosistema','activo'),(8,'periodos','[{\"idperiodo\":\"1\"},{\"idperiodo\":\"2\"},{\"idperiodo\":\"3\"},{\"idperiodo\":\"4\"}]');
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodo` (
  `idperiodo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  PRIMARY KEY (`idperiodo`),
  KEY `fk_periodo_anioescolar1_idx` (`anioescolar_idanioescolar`),
  CONSTRAINT `fk_periodo_anioescolar1` FOREIGN KEY (`anioescolar_idanioescolar`) REFERENCES `anioescolar` (`idanioescolar`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES (1,'Primer Periodo','2017-02-01','2017-04-08',1),(2,'Segundo Periodo','2017-05-01','2017-06-23',1),(3,'Tercer Periodo','2017-07-02','2017-09-01',1),(4,'Cuarto Periodo','2017-09-02','2017-11-01',1);
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(128) NOT NULL,
  `apellidos` varchar(128) NOT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `numerodocumento` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `fotografia` varchar(256) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `direccion` varchar(512) DEFAULT NULL,
  `observaciones` text,
  `genero_idgenero` int(11) NOT NULL DEFAULT '1',
  `ciudad_nacimiento_idciudad` int(11) NOT NULL DEFAULT '1',
  `tipodocumento_idtipodocumento` int(11) NOT NULL DEFAULT '1',
  `ciudad_documento_idciudad` int(11) NOT NULL DEFAULT '1',
  `gruposanguineo_idgruposanguineo` int(11) NOT NULL DEFAULT '1',
  `rh_idrh` int(11) NOT NULL DEFAULT '1',
  `eps_ideps` int(11) NOT NULL DEFAULT '1',
  `ciudad_residencia_idciudad` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `fk_persona_tipodocumento1_idx` (`tipodocumento_idtipodocumento`),
  KEY `fk_persona_ciudad1_idx` (`ciudad_nacimiento_idciudad`),
  KEY `fk_persona_ciudad2_idx` (`ciudad_documento_idciudad`),
  KEY `fk_persona_genero1_idx` (`genero_idgenero`),
  KEY `fk_persona_gruposanguineo1_idx` (`gruposanguineo_idgruposanguineo`),
  KEY `fk_persona_eps1_idx` (`eps_ideps`),
  KEY `fk_persona_rh1_idx` (`rh_idrh`),
  KEY `fk_persona_ciudad3_idx` (`ciudad_residencia_idciudad`),
  CONSTRAINT `fk_persona_ciudad1` FOREIGN KEY (`ciudad_nacimiento_idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_ciudad2` FOREIGN KEY (`ciudad_documento_idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_ciudad3` FOREIGN KEY (`ciudad_residencia_idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_eps1` FOREIGN KEY (`eps_ideps`) REFERENCES `eps` (`ideps`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_genero1` FOREIGN KEY (`genero_idgenero`) REFERENCES `genero` (`idgenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_gruposanguineo1` FOREIGN KEY (`gruposanguineo_idgruposanguineo`) REFERENCES `gruposanguineo` (`idgruposanguineo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_rh1` FOREIGN KEY (`rh_idrh`) REFERENCES `rh` (`idrh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_tipodocumento1` FOREIGN KEY (`tipodocumento_idtipodocumento`) REFERENCES `tipodocumento` (`idtipodocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Molina Quintero','Daccir Sebastian','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(2,'Arellano Pico ','Sarahi Sofia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(3,'Maestre Gonzalez','Nicolas','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(4,'Sandoval Velez ','Rafael','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(5,'Soto Garcia ','Samuel','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(6,'Londoño Echavarria','Juan Manuel','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(7,'Baron Remolina ','Maria Isabella','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(8,'Bernal Navarrete ','Martin','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(9,'Cardona Corredor ','Mariana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(10,'Caviedes Carrasquilla ','Maria Paula','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(11,'Forero Quesada ','Juan Jose','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(12,'Guzman Nieto ','Gabriela','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(13,'Luna Forero ','Juan Martin','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(14,'Navarro Martinez ','Martin Camilo','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(15,'Ovalle Ovalle ','Alejandro Aristides','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(16,'Ramirez Rey ','Sara Sophia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(17,'Rendon Rios','Simon','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(18,'Rojas Mendoza ','Miguel Antonio','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(19,'Sanchez Muñoz ','Maria Lucia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(20,'Vasquez Barreto ','Cristian Adolfo','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(21,'Arbelaez Aldana ','Leneth Samuel','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(22,'Baron Acero ','Miguel Angel','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(23,'Bobadilla Paez ','Isabel Sofia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(24,'Borja Ospina ','Miguel Andres','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(25,'Cardona Corredor ','Santiago','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(26,'Chavez Campos ','Samuel','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(27,'Dussan Obando ','Gabriela','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(28,'Dussan Obando ','Isabella','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(29,'Hernandez  Becerra ','Laura Natalia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(30,'Lara Gomez','Thomas','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(31,'Nieto Ordoñez ','Luis Miguel','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(32,'Ospina Cardona ','Magda Juliana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(33,'Rodriguez Herrera ','Pablo','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(34,'Vivas Rojas ','Santiago','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(35,'Arias Niño ','Daniel Felipe','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(36,'Botero Tovar ','Ramon Stiven','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(37,'Cardenas Arenas ','Gabriel antiago','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(38,'Castillo Olarte ','Sara Juanita','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(39,'Espinel Lopez ','Julian Alejandro','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(40,'Gomez Ardila ','Matias','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(41,'Gomez Vela ','David Santiago','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(42,'Guzman Guarin ','Javier Giovani','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(43,'Manrique Maestre ','David Alejandro','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(44,'Montejo Vivas ','Nicolas Andres','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(45,'Rico Beltran ','Luna Sofia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(46,'Sanchez Suarez ','Mariana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(47,'Tellez Bernal ','Allison Daian','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(48,'Urdinola Lopez ','Juan Diego','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(49,'Arevalo Montenegro ','Kevin mateo','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(50,'Arevalo Montenegro','Santiago Andres','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(51,'Baron Velandia ','Valentina','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(52,'Barrera Espinel ','Sofia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(53,'Bernal Sandoval ','Ana Maria','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(54,'Casallas Salazar ','Sara Michell','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(55,'Gonzalez Niño ','Juan Diego','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(56,'Guzman Suarez ','Valery Natalia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(57,'Jaimes Salcedo ','Zara Daniela','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(58,'Lamy Neira ','Camila','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(59,'Olea Gonzalez ','Daniela Giselle','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(60,'Ortiz Giraldo ','Danna Briyith','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(61,'Querubin Murcia ','Valentina','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(62,'Sanchez Muñoz ','Josae Luis','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(63,'Sierra Arciniegas ','Paula Sofia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(64,'Zapata Urrego','Isabella','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(65,'Africano Osorio ','Daniel Felipe','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(66,'Avila Aguirre ','Laura Camila','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(67,'Buchhorn Martinez ','Susana Helene','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(68,'Castro Hernandez ','Daniela Gabriela','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(69,'Corzo Camargo','Valery Alejandra','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(70,'Lamy Neira ','Samuel','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(71,'Leiva Guzman ','Johann Smith','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(72,'Morales Lopez ','Mariana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(73,'Pachon Castro ','James Leonardo','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(74,'Peña Plazas ','Oscar Samuel','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(75,'Ramirez Cortes ','Alejandra','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(76,'Torres Martinez ','Sharick Juliana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(77,'Vega Ladino','Maira Lizeth','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(78,'Arellano Pico ','Carolayn Juliana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(79,'Bernal Sandoval','Juan Jose','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(80,'Castro Lopez ','Lizandro Stiven','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(81,'Gonzalez Villamizar','Mariana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(82,'Jimenez Quijano ','Maria Paula','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(83,'Lara Castañeda ','Lina Maria','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(84,'Maestre Gonzalez ','Juan Francisco','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(85,'Parra Arenas ','Juanita','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(86,'Saravia Tovar ','Juan Manuel','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(87,'Vega Florez ','Sofia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(88,'Ardila Sanchez ','Julian Camilo','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(89,'Casteñeda Calderon ','Wendy Julieth','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(90,'Correa Caviedes','Jhonnatan David','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(91,'Cruz Buitrago ','Juan David','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(92,'Diaz Rodriguez ','Ana Gabriela','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(93,'Gomez Acero ','Lina Sofia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(94,'Lamy Neira ','Isabella','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(95,'Muñoz Lizarazo ','Angela Patricia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(96,'Piñeros Nieves ','Nicole Vanesa','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(97,'Ramirez Lopez ','Shirly Constanza','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(98,'Rico Beltran','Beltran Susan','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(99,'Castillo Olarte ','Cristian Felipe','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(100,'Celeita Rosas','Carlos Eduardo','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(101,'Leiva Guzman ','Daniela Fernanda','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(102,'Leiva Guzman ','Hillary','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(103,'Quintero Acero ','Santiago','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(104,'Rivera Mora ','Paula Alejandra','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(105,'Valero Ussa ','Natalia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(106,'Villamarin Rozo ','Diego Alejandro','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(107,'Zambrano Pupo ','Juan Sebastian','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(108,'Acero Parra ','Maria Alejandra','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(109,'Alfonso Arcila ','Jennifer Camila','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(110,'Beltran Vanegas ','Nikol','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(111,'Casallas Salazar ','Juliana Valentina','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(112,'Fernandez Mora ','Nicolas','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(113,'Forero Gonzalez ','Luis Felipe','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(114,'Forero Navarrete','Ambar Estefania','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(115,'Garcia Sabio ','Daniel Felipe','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(116,'Gomez Gomez','Gabriela ','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(117,'Guzman Villamil ','Valentina','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(118,'Lozano Barbosa ','Daniela Disney','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(119,'Martinez Guzman ','Nikol Liseth','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(120,'Mora Bernal ','Santiago','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(121,'Pacheco Guzman ','Paula Geraldine','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(122,'Perez Rodriguez ','Natalie Sophie','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(123,'Ariza Calderon ','Jean Paul','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(124,'Beltran Vanegas ','Luisa Fernanda','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(125,'Cuevas Cabrera ','Yohana Nataly','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(126,'Ferreira Arias ','Andres Felipe','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(127,'Guzman Guarin ','Kelly Juliana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(128,'Lara Gomez ','Daniel Stiven','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(129,'Ovalle Gordillo  ','Juan Sebastian','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(130,'Pachon Castro ','Yamid Amaury','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(131,'Paez Cruz ','Juan David','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(132,'Pulido Rojas','Angie Michel','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(133,'Roa Bustamante ','Sara Juliana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(134,'Russi Jimenez ','Natalia Sofia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(135,'Suarez Leal ','Sara','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(136,'Vargas Pizon ','Liz Gabriela','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(137,'Arias Sanchez ','Juliana del Pilar','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(138,'Caviedes Arevalo ','Kevin Felipe','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(139,'Gomez Gomez ','Francisco Javier','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(140,'Gomez Rodriguez ','Laura Alejandra','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(141,'Gutierrez Urrego ','maria fernanda','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(142,'Ladino Perez','Nicolas','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(143,'Martinez Guzman ','Anlly Tatiana','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(144,'Peña Plazas ','Laura Natalia','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(145,'Pinto Suarez ','Diana Valentina','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(146,'Ramirez Lopez ','Laura Nataly','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(147,'Sanchez Suarez ','Juan David','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(148,'Segura  Salom','Santiago','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(149,'Silva Hernandez ','Nicolas Andres','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(150,'Tarquino Triana ','Maria Fernanda','0000-00-00','','','','','','','',2,1,1,1,1,1,1,1),(151,'Zapata Urrego','Manuela','0000-00-00','','','','','','','',3,1,1,1,1,1,1,1),(152,'Maribel','Laguna Arevalo',NULL,'0','0','0',NULL,'maribel.laguna@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(153,'Clara Ines','Castaño Valencia',NULL,'0','0','0',NULL,'clara.castano@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(154,'Becsy Marleny','Amador Gambino',NULL,'0','0','0',NULL,'becsy.amador@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(155,'Leidy Tatiana','Tovar Garcia',NULL,'0','0','0',NULL,'leidy.tovar@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(156,'Arlidia','Ospina Lizcano',NULL,'0','0','0',NULL,'arlidia.ospina@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(157,'Esperanza','Gallo Osorio',NULL,'0','0','0',NULL,'esperanza.gallo@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(158,'Magda Edith','Arevalo Rueda',NULL,'0','0','0',NULL,'magda.arevalo@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(159,'Jose Alavaro','Mosquera Mosquera',NULL,'0','0','0',NULL,'jose.mosquera@liceocampestrelamesa.edu.co',NULL,NULL,3,1,2,1,1,1,1,1),(160,'Yulie Andrea','Jimenez Peña',NULL,'0','0','0',NULL,'yulie.jimenez@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(161,'Michel Esteban','Galeano Coy',NULL,'0','0','0',NULL,'michel.galeano@liceocampestrelamesa.edu.co',NULL,NULL,3,1,2,1,1,1,1,1),(162,'Lina Maria','Molina Pulido',NULL,'0','0','0',NULL,'lina.molina@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(163,'Paulo Cesar','Ladino',NULL,'0','0','0',NULL,'paulo.ladino@liceocampestrelamesa.edu.co',NULL,NULL,3,1,2,1,1,1,1,1),(164,'Julio Eduardo','Campos Murcia',NULL,'0','0','0',NULL,'julio.campos@liceocampestrelamesa.edu.co',NULL,NULL,3,1,2,1,1,1,1,1),(165,'Laura Lucia','Gonzalez',NULL,'0','0','0',NULL,'laura.gonzalez@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1),(166,'Carlos Alberto','Vargas',NULL,'0','0','0',NULL,'carlos.vargas@liceocampestrelamesa.edu.co',NULL,NULL,3,1,2,1,1,1,1,1),(167,'Jose Ruben','Ortiz Medina',NULL,'0','0','0',NULL,'ingjbenortm@gmail.com',NULL,NULL,3,1,2,1,1,1,1,1),(168,'Hohora Evelin','Herrera de Nova',NULL,'0','0','0',NULL,'hohora.herrera@liceocampestrelamesa.edu.co',NULL,NULL,2,1,2,1,1,1,1,1);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `idprofesor` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) NOT NULL,
  `persona_idpersona` bigint(20) NOT NULL,
  PRIMARY KEY (`idprofesor`),
  KEY `fk_profesor_persona1_idx` (`persona_idpersona`),
  CONSTRAINT `fk_profesor_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (3,1,152),(4,1,153),(5,1,154),(6,1,155),(7,1,156),(8,1,157),(9,1,158),(10,1,159),(11,1,160),(12,1,161),(13,1,162),(14,1,163),(15,1,164),(16,1,165),(17,1,166),(18,1,167),(19,1,168);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_area`
--

DROP TABLE IF EXISTS `profesor_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor_area` (
  `idprofesor_area` int(11) NOT NULL AUTO_INCREMENT,
  `profesor_idprofesor` int(11) NOT NULL,
  `area_idarea` int(11) NOT NULL,
  PRIMARY KEY (`idprofesor_area`),
  KEY `fk_profesor_area_profesor1_idx` (`profesor_idprofesor`),
  KEY `fk_profesor_area_area1_idx` (`area_idarea`),
  CONSTRAINT `fk_profesor_area_area1` FOREIGN KEY (`area_idarea`) REFERENCES `area` (`idarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_profesor_area_profesor1` FOREIGN KEY (`profesor_idprofesor`) REFERENCES `profesor` (`idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_area`
--

LOCK TABLES `profesor_area` WRITE;
/*!40000 ALTER TABLE `profesor_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesor_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_curso`
--

DROP TABLE IF EXISTS `profesor_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor_curso` (
  `idprofesor_curso` int(11) NOT NULL AUTO_INCREMENT,
  `director` tinyint(1) NOT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `profesor_idprofesor` int(11) NOT NULL,
  `curso_idcurso` int(11) NOT NULL,
  `materia_idmateria` int(11) NOT NULL,
  PRIMARY KEY (`idprofesor_curso`),
  KEY `fk_profesor_curso_profesor1_idx` (`profesor_idprofesor`),
  KEY `fk_profesor_curso_curso1_idx` (`curso_idcurso`),
  KEY `fk_profesor_curso_materia1_idx` (`materia_idmateria`),
  CONSTRAINT `fk_profesor_curso_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_profesor_curso_materia1` FOREIGN KEY (`materia_idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_profesor_curso_profesor1` FOREIGN KEY (`profesor_idprofesor`) REFERENCES `profesor` (`idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_curso`
--

LOCK TABLES `profesor_curso` WRITE;
/*!40000 ALTER TABLE `profesor_curso` DISABLE KEYS */;
INSERT INTO `profesor_curso` VALUES (1,1,'',4,2,1),(2,1,'',4,2,2),(3,1,'',4,2,3),(4,1,'',4,2,4),(5,1,'',4,2,5),(6,1,'',4,2,6),(7,1,'',4,2,7),(8,1,'',4,2,8),(9,1,'',4,2,9),(10,1,'',3,3,10),(11,1,'',3,3,11),(12,1,'',3,3,12),(13,1,'',3,3,13),(14,1,'',3,3,14),(15,1,'',3,3,15),(16,1,'',3,3,16),(17,1,'',3,3,17),(18,1,'',3,3,18),(19,0,'',18,3,19),(20,1,'',5,4,20),(21,1,'',5,4,21),(22,1,'',5,4,22),(23,1,'',5,4,23),(24,1,'',5,4,24),(25,1,'',5,4,25),(26,1,'',5,4,26),(27,1,'',5,4,27),(28,0,'',6,4,28),(29,0,'',8,4,29),(30,0,'',18,4,30),(31,1,'',6,5,31),(32,1,'',6,5,32),(33,1,'',6,5,33),(34,1,'',6,5,34),(35,1,'',6,5,35),(36,1,'',6,5,36),(37,1,'',6,5,37),(38,1,'',6,5,38),(39,1,'',6,5,39),(40,0,'',8,5,40),(41,0,'',18,5,41),(42,1,'',7,6,42),(43,1,'',7,6,43),(44,1,'',7,6,44),(45,1,'',7,6,45),(46,1,'',7,6,46),(47,0,'',8,6,47),(48,0,'',8,6,48),(49,0,'',9,6,49),(50,0,'',11,6,50),(51,0,'',18,6,51),(52,0,'',19,6,52),(53,0,'',5,7,53),(54,0,'',7,7,54),(55,0,'',7,7,55),(56,0,'',7,7,56),(57,0,'',7,7,57),(58,1,'',8,7,58),(59,0,'',9,7,59),(60,0,'',11,7,60),(61,0,'',11,7,61),(62,0,'',18,7,62),(63,0,'',19,7,63),(64,0,'',5,8,64),(65,0,'',6,8,65),(66,0,'',7,8,66),(67,0,'',8,8,67),(68,1,'',9,8,68),(69,0,'',11,8,69),(70,0,'',11,8,70),(71,0,'',12,8,71),(72,0,'',12,8,72),(73,0,'',13,8,73),(74,0,'',18,8,74),(75,0,'',9,9,75),(76,1,'',10,9,76),(77,1,'',10,9,77),(78,0,'',11,9,78),(79,0,'',11,9,79),(80,0,'',12,9,80),(81,0,'',12,9,81),(82,0,'',12,9,82),(83,0,'',13,9,83),(84,0,'',14,9,84),(85,0,'',16,9,85),(86,0,'',18,9,86),(87,0,'',9,10,87),(88,0,'',10,10,88),(89,0,'',10,10,89),(90,1,'',11,10,90),(91,1,'',11,10,91),(92,0,'',12,10,92),(93,0,'',12,10,93),(94,0,'',12,10,94),(95,0,'',13,10,95),(96,0,'',14,10,96),(97,0,'',18,10,97),(98,0,'',19,10,98),(99,0,'',7,11,99),(100,0,'',10,11,100),(101,0,'',10,11,101),(102,0,'',11,11,102),(103,1,'',12,11,103),(104,1,'',12,11,104),(105,1,'',12,11,105),(106,0,'',13,11,106),(107,0,'',14,11,107),(108,0,'',15,11,108),(109,0,'',16,11,109),(110,0,'',18,11,110),(111,0,'',7,12,111),(112,0,'',10,12,112),(113,0,'',10,12,113),(114,0,'',11,12,114),(115,0,'',12,12,115),(116,0,'',12,12,116),(117,0,'',12,12,117),(118,1,'',13,12,118),(119,0,'',14,12,119),(120,0,'',15,12,120),(121,0,'',16,12,121),(122,0,'',18,12,122),(123,0,'',10,13,123),(124,0,'',11,13,124),(125,0,'',11,13,125),(126,0,'',12,13,126),(127,0,'',12,13,127),(128,0,'',12,13,128),(129,0,'',13,13,129),(130,1,'',14,13,130),(131,0,'',15,13,131),(132,0,'',15,13,132),(133,0,'',16,13,133),(134,0,'',16,13,134),(135,0,'',17,13,135),(136,0,'',18,13,136),(137,0,'',10,14,137),(138,0,'',11,14,138),(139,0,'',11,14,139),(140,0,'',12,14,140),(141,0,'',12,14,141),(142,0,'',12,14,142),(143,0,'',13,14,143),(144,0,'',14,14,144),(145,1,'',15,14,145),(146,1,'',15,14,146),(147,0,'',16,14,147),(148,0,'',16,14,148),(149,0,'',17,14,149),(150,0,'',18,14,150);
/*!40000 ALTER TABLE `profesor_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor_usuario`
--

DROP TABLE IF EXISTS `profesor_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor_usuario` (
  `idprofesor_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` int(11) NOT NULL,
  `profesor_idprofesor` int(11) NOT NULL,
  PRIMARY KEY (`idprofesor_usuario`),
  KEY `fk_profesor_usuario_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_profesor_usuario_profesor1_idx` (`profesor_idprofesor`),
  CONSTRAINT `fk_profesor_usuario_profesor1` FOREIGN KEY (`profesor_idprofesor`) REFERENCES `profesor` (`idprofesor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_profesor_usuario_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor_usuario`
--

LOCK TABLES `profesor_usuario` WRITE;
/*!40000 ALTER TABLE `profesor_usuario` DISABLE KEYS */;
INSERT INTO `profesor_usuario` VALUES (1,3,3),(2,4,4),(3,5,5),(4,6,6),(5,7,7),(6,8,8),(7,9,9),(8,10,10),(9,11,11),(10,12,12),(11,13,13),(12,14,14),(13,15,15),(14,16,16),(15,17,17),(16,18,18),(17,19,19);
/*!40000 ALTER TABLE `profesor_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh`
--

DROP TABLE IF EXISTS `rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rh` (
  `idrh` int(11) NOT NULL AUTO_INCREMENT,
  `factorrh` varchar(1) NOT NULL,
  PRIMARY KEY (`idrh`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
INSERT INTO `rh` VALUES (1,'+'),(2,'-');
/*!40000 ALTER TABLE `rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodocumento` (
  `idtipodocumento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipodocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
INSERT INTO `tipodocumento` VALUES (1,'No Definido'),(2,'Cedula de Ciudadanía'),(3,'Cedula de Extranjería'),(4,'Tarjeta de Identidad'),(5,'Registro Civil'),(6,'Otro');
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoestandar`
--

DROP TABLE IF EXISTS `tipoestandar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoestandar` (
  `idtipoestandar` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `porcentaje` float NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `anioescolar_idanioescolar` int(11) NOT NULL,
  `grado_idgrado` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  PRIMARY KEY (`idtipoestandar`),
  KEY `fk_tipoestandar_anioescolar1_idx` (`anioescolar_idanioescolar`),
  KEY `fk_tipoestandar_grado1_idx` (`grado_idgrado`),
  KEY `fk_tipoestandar_periodo1_idx` (`periodo_idperiodo`),
  CONSTRAINT `fk_tipoestandar_anioescolar1` FOREIGN KEY (`anioescolar_idanioescolar`) REFERENCES `anioescolar` (`idanioescolar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoestandar_grado1` FOREIGN KEY (`grado_idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipoestandar_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoestandar`
--

LOCK TABLES `tipoestandar` WRITE;
/*!40000 ALTER TABLE `tipoestandar` DISABLE KEYS */;
INSERT INTO `tipoestandar` VALUES (4,'Cognitivo',0.5,1,1,1,1),(5,'Procedimental',0.4,1,1,1,1),(6,'Actitudinal',0.1,1,1,1,1),(10,'Cognitivo',0.5,1,1,1,2),(11,'Procedimental',0.4,1,1,1,2),(12,'Actitudinal',0.1,1,1,1,2),(16,'Cognitivo',0.5,1,1,1,3),(17,'Procedimental',0.4,1,1,1,3),(18,'Actitudinal',0.1,1,1,1,3),(22,'Cognitivo',0.5,1,1,1,4),(23,'Procedimental',0.4,1,1,1,4),(24,'Actitudinal',0.1,1,1,1,4),(29,'Cognitivo',0.5,1,1,2,1),(30,'Procedimental',0.4,1,1,2,1),(31,'Actitudinal',0.1,1,1,2,1),(35,'Cognitivo',0.5,1,1,2,2),(36,'Procedimental',0.4,1,1,2,2),(37,'Actitudinal',0.1,1,1,2,2),(41,'Cognitivo',0.5,1,1,2,3),(42,'Procedimental',0.4,1,1,2,3),(43,'Actitudinal',0.1,1,1,2,3),(47,'Cognitivo',0.5,1,1,2,4),(48,'Procedimental',0.4,1,1,2,4),(49,'Actitudinal',0.1,1,1,2,4),(54,'Cognitivo',0.5,1,1,3,1),(55,'Procedimental',0.4,1,1,3,1),(56,'Actitudinal',0.1,1,1,3,1),(60,'Cognitivo',0.5,1,1,3,2),(61,'Procedimental',0.4,1,1,3,2),(62,'Actitudinal',0.1,1,1,3,2),(66,'Cognitivo',0.5,1,1,3,3),(67,'Procedimental',0.4,1,1,3,3),(68,'Actitudinal',0.1,1,1,3,3),(72,'Cognitivo',0.5,1,1,3,4),(73,'Procedimental',0.4,1,1,3,4),(74,'Actitudinal',0.1,1,1,3,4),(79,'Cognitivo',0.5,1,1,4,1),(80,'Procedimental',0.4,1,1,4,1),(81,'Actitudinal',0.1,1,1,4,1),(85,'Cognitivo',0.5,1,1,4,2),(86,'Procedimental',0.4,1,1,4,2),(87,'Actitudinal',0.1,1,1,4,2),(91,'Cognitivo',0.5,1,1,4,3),(92,'Procedimental',0.4,1,1,4,3),(93,'Actitudinal',0.1,1,1,4,3),(97,'Cognitivo',0.5,1,1,4,4),(98,'Procedimental',0.4,1,1,4,4),(99,'Actitudinal',0.1,1,1,4,4),(104,'Cognitivo',0.5,1,1,5,1),(105,'Procedimental',0.4,1,1,5,1),(106,'Actitudinal',0.1,1,1,5,1),(110,'Cognitivo',0.5,1,1,5,2),(111,'Procedimental',0.4,1,1,5,2),(112,'Actitudinal',0.1,1,1,5,2),(116,'Cognitivo',0.5,1,1,5,3),(117,'Procedimental',0.4,1,1,5,3),(118,'Actitudinal',0.1,1,1,5,3),(122,'Cognitivo',0.5,1,1,5,4),(123,'Procedimental',0.4,1,1,5,4),(124,'Actitudinal',0.1,1,1,5,4),(129,'Cognitivo',0.5,1,1,6,1),(130,'Procedimental',0.4,1,1,6,1),(131,'Actitudinal',0.1,1,1,6,1),(135,'Cognitivo',0.5,1,1,6,2),(136,'Procedimental',0.4,1,1,6,2),(137,'Actitudinal',0.1,1,1,6,2),(141,'Cognitivo',0.5,1,1,6,3),(142,'Procedimental',0.4,1,1,6,3),(143,'Actitudinal',0.1,1,1,6,3),(147,'Cognitivo',0.5,1,1,6,4),(148,'Procedimental',0.4,1,1,6,4),(149,'Actitudinal',0.1,1,1,6,4),(154,'Cognitivo',0.5,1,1,7,1),(155,'Procedimental',0.4,1,1,7,1),(156,'Actitudinal',0.1,1,1,7,1),(160,'Cognitivo',0.5,1,1,7,2),(161,'Procedimental',0.4,1,1,7,2),(162,'Actitudinal',0.1,1,1,7,2),(166,'Cognitivo',0.5,1,1,7,3),(167,'Procedimental',0.4,1,1,7,3),(168,'Actitudinal',0.1,1,1,7,3),(172,'Cognitivo',0.5,1,1,7,4),(173,'Procedimental',0.4,1,1,7,4),(174,'Actitudinal',0.1,1,1,7,4),(179,'Cognitivo',0.5,1,1,8,1),(180,'Procedimental',0.4,1,1,8,1),(181,'Actitudinal',0.1,1,1,8,1),(185,'Cognitivo',0.5,1,1,8,2),(186,'Procedimental',0.4,1,1,8,2),(187,'Actitudinal',0.1,1,1,8,2),(191,'Cognitivo',0.5,1,1,8,3),(192,'Procedimental',0.4,1,1,8,3),(193,'Actitudinal',0.1,1,1,8,3),(197,'Cognitivo',0.5,1,1,8,4),(198,'Procedimental',0.4,1,1,8,4),(199,'Actitudinal',0.1,1,1,8,4),(204,'Cognitivo',0.5,1,1,9,1),(205,'Procedimental',0.4,1,1,9,1),(206,'Actitudinal',0.1,1,1,9,1),(210,'Cognitivo',0.5,1,1,9,2),(211,'Procedimental',0.4,1,1,9,2),(212,'Actitudinal',0.1,1,1,9,2),(216,'Cognitivo',0.5,1,1,9,3),(217,'Procedimental',0.4,1,1,9,3),(218,'Actitudinal',0.1,1,1,9,3),(222,'Cognitivo',0.5,1,1,9,4),(223,'Procedimental',0.4,1,1,9,4),(224,'Actitudinal',0.1,1,1,9,4),(229,'Cognitivo',0.5,1,1,10,1),(230,'Procedimental',0.4,1,1,10,1),(231,'Actitudinal',0.1,1,1,10,1),(235,'Cognitivo',0.5,1,1,10,2),(236,'Procedimental',0.4,1,1,10,2),(237,'Actitudinal',0.1,1,1,10,2),(241,'Cognitivo',0.5,1,1,10,3),(242,'Procedimental',0.4,1,1,10,3),(243,'Actitudinal',0.1,1,1,10,3),(247,'Cognitivo',0.5,1,1,10,4),(248,'Procedimental',0.4,1,1,10,4),(249,'Actitudinal',0.1,1,1,10,4),(254,'Cognitivo',0.5,1,1,11,1),(255,'Procedimental',0.4,1,1,11,1),(256,'Actitudinal',0.1,1,1,11,1),(260,'Cognitivo',0.5,1,1,11,2),(261,'Procedimental',0.4,1,1,11,2),(262,'Actitudinal',0.1,1,1,11,2),(266,'Cognitivo',0.5,1,1,11,3),(267,'Procedimental',0.4,1,1,11,3),(268,'Actitudinal',0.1,1,1,11,3),(272,'Cognitivo',0.5,1,1,11,4),(273,'Procedimental',0.4,1,1,11,4),(274,'Actitudinal',0.1,1,1,11,4),(279,'Cognitivo',0.5,1,1,12,1),(280,'Procedimental',0.4,1,1,12,1),(281,'Actitudinal',0.1,1,1,12,1),(285,'Cognitivo',0.5,1,1,12,2),(286,'Procedimental',0.4,1,1,12,2),(287,'Actitudinal',0.1,1,1,12,2),(291,'Cognitivo',0.5,1,1,12,3),(292,'Procedimental',0.4,1,1,12,3),(293,'Actitudinal',0.1,1,1,12,3),(297,'Cognitivo',0.5,1,1,12,4),(298,'Procedimental',0.4,1,1,12,4),(299,'Actitudinal',0.1,1,1,12,4),(304,'Cognitivo',0.5,1,1,13,1),(305,'Procedimental',0.4,1,1,13,1),(306,'Actitudinal',0.1,1,1,13,1),(310,'Cognitivo',0.5,1,1,13,2),(311,'Procedimental',0.4,1,1,13,2),(312,'Actitudinal',0.1,1,1,13,2),(316,'Cognitivo',0.5,1,1,13,3),(317,'Procedimental',0.4,1,1,13,3),(318,'Actitudinal',0.1,1,1,13,3),(322,'Cognitivo',0.5,1,1,13,4),(323,'Procedimental',0.4,1,1,13,4),(324,'Actitudinal',0.1,1,1,13,4),(329,'Cognitivo',0.5,1,1,14,1),(330,'Procedimental',0.4,1,1,14,1),(331,'Actitudinal',0.1,1,1,14,1),(335,'Cognitivo',0.5,1,1,14,2),(336,'Procedimental',0.4,1,1,14,2),(337,'Actitudinal',0.1,1,1,14,2),(341,'Cognitivo',0.5,1,1,14,3),(342,'Procedimental',0.4,1,1,14,3),(343,'Actitudinal',0.1,1,1,14,3),(347,'Cognitivo',0.5,1,1,14,4),(348,'Procedimental',0.4,1,1,14,4),(349,'Actitudinal',0.1,1,1,14,4);
/*!40000 ALTER TABLE `tipoestandar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoevaluacion`
--

DROP TABLE IF EXISTS `tipoevaluacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoevaluacion` (
  `idtipoevaluacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipoevaluacion`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoevaluacion`
--

LOCK TABLES `tipoevaluacion` WRITE;
/*!40000 ALTER TABLE `tipoevaluacion` DISABLE KEYS */;
INSERT INTO `tipoevaluacion` VALUES (1,'Martes de prueba'),(3,'Quiz'),(4,'Examen'),(5,'Trabajo independiente'),(6,'Exposición'),(8,'Ensayo'),(9,'Manualidad'),(10,'Produción Artística'),(11,'Sustentación'),(12,'Evaluación Oral'),(13,'Prueba Atlética'),(14,'Practicas de laboratorio'),(16,'Taller en Clase'),(18,'Evaluación Final de Periodo'),(20,'Actitud frente a la Asignatura');
/*!40000 ALTER TABLE `tipoevaluacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipofamiliar`
--

DROP TABLE IF EXISTS `tipofamiliar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipofamiliar` (
  `idtipofamiliar` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipofamiliar`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipofamiliar`
--

LOCK TABLES `tipofamiliar` WRITE;
/*!40000 ALTER TABLE `tipofamiliar` DISABLE KEYS */;
INSERT INTO `tipofamiliar` VALUES (1,'Padre'),(2,'Madre'),(3,'Abuelo(a)'),(4,'Hermano(a)');
/*!40000 ALTER TABLE `tipofamiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomensaje`
--

DROP TABLE IF EXISTS `tipomensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipomensaje` (
  `idtipomensaje` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipomensaje`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomensaje`
--

LOCK TABLES `tipomensaje` WRITE;
/*!40000 ALTER TABLE `tipomensaje` DISABLE KEYS */;
INSERT INTO `tipomensaje` VALUES (1,'Comunicado','default'),(2,'Felicitacion','success'),(3,'Oportunidad','warning'),(4,'Inconformidad','danger');
/*!40000 ALTER TABLE `tipomensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario` (
  `idtipousuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipousuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'root'),(2,'administrador'),(3,'profesor'),(4,'acudiente');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario_modulosistema`
--

DROP TABLE IF EXISTS `tipousuario_modulosistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario_modulosistema` (
  `idtipousuario_modulosistema` int(11) NOT NULL AUTO_INCREMENT,
  `tipousuario_idtipousuario` int(11) NOT NULL,
  `modulosistema_idmodulosistema` int(11) NOT NULL,
  `index` tinyint(1) DEFAULT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `store` tinyint(1) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `edit` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `destroy` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idtipousuario_modulosistema`),
  KEY `fk_tipousuario_modulosistema_tipousuario1_idx` (`tipousuario_idtipousuario`),
  KEY `fk_tipousuario_modulosistema_modulosistema1_idx` (`modulosistema_idmodulosistema`),
  CONSTRAINT `fk_tipousuario_modulosistema_modulosistema1` FOREIGN KEY (`modulosistema_idmodulosistema`) REFERENCES `modulosistema` (`idmodulosistema`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipousuario_modulosistema_tipousuario1` FOREIGN KEY (`tipousuario_idtipousuario`) REFERENCES `tipousuario` (`idtipousuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario_modulosistema`
--

LOCK TABLES `tipousuario_modulosistema` WRITE;
/*!40000 ALTER TABLE `tipousuario_modulosistema` DISABLE KEYS */;
INSERT INTO `tipousuario_modulosistema` VALUES (1,1,1,1,1,1,1,1,1,1),(4,2,3,1,1,1,1,1,1,1),(5,1,3,1,1,1,1,1,1,1),(6,3,6,1,1,1,1,1,1,1),(7,1,6,1,1,1,1,1,1,1),(8,3,4,1,1,1,1,1,1,1),(9,2,4,1,1,1,1,1,1,1),(10,1,4,1,1,1,1,1,1,1),(11,2,6,1,1,1,1,1,1,1),(12,1,3,1,1,1,1,1,1,1),(13,2,3,1,1,1,1,1,1,1),(14,3,7,1,1,1,1,1,1,1),(15,2,7,1,1,1,1,1,1,1),(16,3,5,1,1,1,1,1,1,1),(17,2,5,1,1,1,1,1,1,1),(18,1,5,1,1,1,1,1,1,1),(19,3,10,1,1,1,1,1,1,1),(20,2,10,1,1,1,1,1,1,1),(21,1,10,1,1,1,1,1,1,1),(22,1,7,1,1,1,1,1,1,1),(23,2,1,1,1,1,1,1,1,1),(24,1,13,1,1,1,1,1,1,1),(25,1,14,1,1,1,1,1,1,1),(26,2,14,1,1,1,1,1,1,1),(27,3,14,1,1,1,1,1,1,1),(28,3,15,1,1,1,1,1,1,1),(29,2,15,1,1,1,1,1,1,1),(30,1,15,1,1,1,1,1,1,1),(31,3,16,1,1,1,1,1,1,1),(32,2,16,1,1,1,1,1,1,1),(33,1,16,1,1,1,1,1,1,1),(34,1,17,1,1,1,1,1,1,1),(35,2,17,1,1,1,1,1,1,1),(36,1,18,1,1,1,1,1,1,1),(37,2,18,1,1,1,1,1,1,1),(38,4,4,1,1,1,1,1,1,1),(41,1,20,1,1,1,1,1,1,1),(42,2,20,1,1,1,1,1,1,1),(43,4,13,1,1,1,1,1,1,1),(44,2,13,1,1,1,1,1,1,1),(45,2,12,1,1,1,1,1,1,1),(46,1,12,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `tipousuario_modulosistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nombres` varchar(128) DEFAULT NULL,
  `apellidos` varchar(128) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `intentos` int(11) NOT NULL,
  `hash` varchar(256) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'2017-04-10 21:54:38','2017-07-25 21:39:42',NULL,'Oscar Mauricio','Borja N','adsofmelk@gmail.com','$2y$10$S.iS7xZ37T6W0kWd8A6g1OImyjzXUnxeWi4YKVOHKGv3PkMn3AQY.',0,'$2y$10$VKKqTKMqY8u/vcQYe5qeB.SUiPS3z600EGv1JzkoiUiInSywklBiC','1CQwY8iU2KwcmbzJI4vqCiWDCpXwmGenhVljR2VkoUKeDUpYmZK4YErk6tDe','activo'),(3,'2017-07-20 21:15:42','2017-07-20 21:15:42',NULL,'Maribel','Laguna Arevalo','maribel.laguna@liceocampestrelamesa.edu.co','$2y$10$pyvh53NZVK0KdO6w664syejI7EPy9U6IApOOkehpoHNEQetIrLUCC',0,'$2y$10$ovbAGMxOQewc9XRqEITsnus4/e/u5bvilpuQY6mxB1TGrEUjM3MSu',NULL,'activo'),(4,'2017-07-20 21:19:53','2017-07-20 21:19:53',NULL,'Clara Ines','Castaño Valencia','clara.castano@liceocampestrelamesa.edu.co','$2y$10$Wh6I.toPqcc6ZIs2cD5VzOYIxrSJ4CYKXGox4WXPqPTF1zTCXDQWe',0,'$2y$10$FXIjpUJHuADEMwD6HmcW6erp2MNFQ/IF1CBWJNlyjxihL0UaMzOSe',NULL,'activo'),(5,'2017-07-20 21:21:42','2017-07-20 21:21:42',NULL,'Becsy Marleny','Amador Gambino','becsy.amador@liceocampestrelamesa.edu.co','$2y$10$5e5YJGck2/PoxxtfAPzzc.e4Fzyw3DK3csSnKzZKAjalDt0oDaf3O',0,'$2y$10$TYBMYLHh.LkHoHCyvB7De.oRj26RuQbzZ2.eAu6BXx/WkP0picmm.',NULL,'activo'),(6,'2017-07-20 21:23:44','2017-07-20 21:23:44',NULL,'Leidy Tatiana','Tovar Garcia','leidy.tovar@liceocampestrelamesa.edu.co','$2y$10$4Oht357aI9OCNJAj3Og8YuBEOazj0Dm2sCFU6yIGvX7sDI0KoHb8y',0,'$2y$10$q09gLHcPyU6TiY05x6EdNOn9V5TVjyaKOU2dF33iz8EadED4GPQ0S',NULL,'activo'),(7,'2017-07-20 21:24:46','2017-07-20 21:24:46',NULL,'Arlidia','Ospina Lizcano','arlidia.ospina@liceocampestrelamesa.edu.co','$2y$10$0a9AKZ3ksCy1CsQpiYj0R.KaP34YRinoNATgioeMbOaFMXYUxnXc6',0,'$2y$10$oNhQcWT9brWs.1KUZXdF2O080/mgxX3jaB3awup24vOEwFvxBysMu','1O0qHttPAgipdvVEWMJn5cvJMEmE1x3hJEoMYQd5E50oGCKDA0TxJDcGLQQd','activo'),(8,'2017-07-20 21:26:06','2017-07-20 21:26:06',NULL,'Esperanza','Gallo Osorio','esperanza.gallo@liceocampestrelamesa.edu.co','$2y$10$mJK5n7GeCUATM/Zqepr2Q.ePx6N94sqDjyzNpWvGKsahJrPDTGBw2',0,'$2y$10$kU5uqJcPOwa4DxoV7eEf6.8XKZHD6CoqqbyKRUDIUduCHRv7Cxl7K',NULL,'activo'),(9,'2017-07-20 21:27:18','2017-07-20 21:27:18',NULL,'Magda Edith','Arevalo Rueda','magda.arevalo@liceocampestrelamesa.edu.co','$2y$10$CZkoyDEUo1QygZNsCDlhXuBOnn2vMAc9ej54oCVuMRjdAL7f/XKHi',0,'$2y$10$ykmgJ2T8VISIRZrbKMRMyuK0lKoUJV61k0U.NzW2Rs7mOM.V/HQ/i',NULL,'activo'),(10,'2017-07-20 21:28:32','2017-07-20 21:28:32',NULL,'Jose Alavaro','Mosquera Mosquera','jose.mosquera@liceocampestrelamesa.edu.co','$2y$10$jMWmZx.E9M164wMvnhZ2A.dM.kBEZLikUmtaoe8KdWYkjUMRCJpAC',0,'$2y$10$Iwlvrjs5Yws7vJlsr4RE8.8xgaD8N3samdm.0LhgPhwpcTk3CKp6y',NULL,'activo'),(11,'2017-07-20 21:29:32','2017-07-20 21:29:32',NULL,'Yulie Andrea','Jimenez Peña','yulie.jimenez@liceocampestrelamesa.edu.co','$2y$10$.Uk8RPpU6VR9sjZV6hcN8u501NNv7O61nsM3mfBK8KLjtrBdbdv82',0,'$2y$10$pLiZAbQre92pUgUsIwot6ekc45SSIKatcpHKs5AKxXY6B0ZXTJXv2',NULL,'activo'),(12,'2017-07-20 21:30:47','2017-07-20 21:30:47',NULL,'Michel Esteban','Galeano Coy','michel.galeano@liceocampestrelamesa.edu.co','$2y$10$W.Txr9oa4/LtXzN/TPy8D.CoA6RwczEYGWSVf5TTvXNICOZ2.EkGW',0,'$2y$10$HxjNRqU9iA4.iHA8SLGxEuTY57fSK1N9N97Hb8xUBeC1zWtPDoEaa',NULL,'activo'),(13,'2017-07-20 21:32:12','2017-07-20 21:32:12',NULL,'Lina Maria','Molina Pulido','lina.molina@liceocampestrelamesa.edu.co','$2y$10$MPVVt2YXebR0amL3nq7rN.59UldtXw/gqkFLfDu.Eo/dcyEzyc61K',0,'$2y$10$ftvy8o6Fte1IC0lRDBHxvur36VHJQ3JbCYS/Aj2G2s2Chj2oKwB1a',NULL,'activo'),(14,'2017-07-20 21:33:23','2017-07-20 21:33:23',NULL,'Paulo Cesar','Ladino','paulo.ladino@liceocampestrelamesa.edu.co','$2y$10$ENSh6PkoUN6jhDZeKQdHe.0c0yC9cyJv/9lX7DwIBDbm1AMC8yq5e',0,'$2y$10$sRPr51x/ECRXumRv4nMQ7eu0ZeHjNtqG2iEicc1ZKfMjPFi/MtekK',NULL,'activo'),(15,'2017-07-20 21:34:28','2017-07-20 21:34:28',NULL,'Julio Eduardo','Campos Murcia','julio.campos@liceocampestrelamesa.edu.co','$2y$10$mhFqVyoskInv.TyVozhWpeCG9vywzV2SWDWwxALb3ysSPzNCS.AA6',0,'$2y$10$mAnIY5AH97F7fXchvba0YuGt59QlGM4nXdL2zvCdzM2cUilSRxBg6',NULL,'activo'),(16,'2017-07-20 21:35:36','2017-07-20 21:35:36',NULL,'Laura Lucia','Gonzalez','laura.gonzalez@liceocampestrelamesa.edu.co','$2y$10$RdwVQLC0DsUwiM2Nd3tb3O85n/ahoKQNtszaKDtObkB1Ttd3vYea6',0,'$2y$10$ATwZsnDMU2q0oBcuuCgw4.D2aXItPMAG8wNN5FW1m0RSKI4w.092e',NULL,'activo'),(17,'2017-07-20 21:39:17','2017-07-20 21:39:17',NULL,'Carlos Alberto','Vargas','carlos.vargas@liceocampestrelamesa.edu.co','$2y$10$4ifTSFXVn1kfc4ja7JS5A.9Mmygsc6A7PHwCGukoM9/89tme9ZQb6',0,'$2y$10$/aJk0TgeSorZzjvaUZHwmu/.Rb3hAfzXlE/pmnyK/R4OZiDHelOF.',NULL,'activo'),(18,'2017-07-20 21:41:35','2017-07-20 21:41:35',NULL,'Jose Ruben','Ortiz Medina','ingjbenortm@gmail.com','$2y$10$rtPcfLXeWpTcpGasBHA8RunKguYhJsbHVjnVh3wKt00a3f2lOJXKm',0,'$2y$10$8VyHcZpnuE2Cb/ZlnH/tA.IX61I8L.folZ7zCC2uaXaAmdugjxhMW',NULL,'activo'),(19,'2017-07-20 21:44:40','2017-07-20 21:44:40',NULL,'Hohora Evelin','Herrera de Nova','hohora.herrera@liceocampestrelamesa.edu.co','$2y$10$H52Z1SlCpMom.qIfQv0lXuYJkkvhFMlivMTesg12NDJcUO/95.cau',0,'$2y$10$cqwB3780nr3XAO2YBNEZSe9bL7AMbGON8m0afap6YLsxIlOjS4sue',NULL,'activo');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_persona`
--

DROP TABLE IF EXISTS `usuario_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_persona` (
  `idusuario_persona` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` int(11) NOT NULL,
  `persona_idpersona` bigint(20) NOT NULL,
  PRIMARY KEY (`idusuario_persona`),
  KEY `fk_usuario_persona_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_usuario_persona_persona1_idx` (`persona_idpersona`),
  CONSTRAINT `fk_usuario_persona_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_persona_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_persona`
--

LOCK TABLES `usuario_persona` WRITE;
/*!40000 ALTER TABLE `usuario_persona` DISABLE KEYS */;
INSERT INTO `usuario_persona` VALUES (1,3,152),(2,4,153),(3,5,154),(4,6,155),(5,7,156),(6,8,157),(7,9,158),(8,10,159),(9,11,160),(10,12,161),(11,13,162),(12,14,163),(13,15,164),(14,16,165),(15,17,166),(16,18,167),(17,19,168);
/*!40000 ALTER TABLE `usuario_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_tipousuario`
--

DROP TABLE IF EXISTS `usuario_tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_tipousuario` (
  `idusuario_tipousuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` int(11) NOT NULL,
  `tipousuario_idtipousuario` int(11) NOT NULL,
  PRIMARY KEY (`idusuario_tipousuario`),
  KEY `fk_usuario_tipousuario_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_usuario_tipousuario_tipousuario1_idx` (`tipousuario_idtipousuario`),
  CONSTRAINT `fk_usuario_tipousuario_tipousuario1` FOREIGN KEY (`tipousuario_idtipousuario`) REFERENCES `tipousuario` (`idtipousuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_tipousuario_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_tipousuario`
--

LOCK TABLES `usuario_tipousuario` WRITE;
/*!40000 ALTER TABLE `usuario_tipousuario` DISABLE KEYS */;
INSERT INTO `usuario_tipousuario` VALUES (801,1,1),(802,1,4),(804,3,3),(805,4,3),(806,5,3),(807,6,3),(808,7,3),(809,8,3),(810,9,3),(811,10,3),(812,11,3),(813,12,3),(814,13,3),(815,14,3),(816,15,3),(817,16,3),(818,17,3),(819,18,1),(820,18,2),(821,18,3),(822,19,3);
/*!40000 ALTER TABLE `usuario_tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_acudientealumno`
--

DROP TABLE IF EXISTS `view_acudientealumno`;
/*!50001 DROP VIEW IF EXISTS `view_acudientealumno`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_acudientealumno` (
  `idfamiliar` tinyint NOT NULL,
  `tipofamiliar_idtipofamiliar` tinyint NOT NULL,
  `usuario_idusuario` tinyint NOT NULL,
  `acudiente` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL,
  `codigo` tinyint NOT NULL,
  `estadoalumno` tinyint NOT NULL,
  `nombrecurso` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `estadocurso` tinyint NOT NULL,
  `nombretipodocumento` tinyint NOT NULL,
  `idpersona` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `fechanacimiento` tinyint NOT NULL,
  `numerodocumento` tinyint NOT NULL,
  `telefono` tinyint NOT NULL,
  `celular` tinyint NOT NULL,
  `fotografia` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `direccion` tinyint NOT NULL,
  `observaciones` tinyint NOT NULL,
  `genero_idgenero` tinyint NOT NULL,
  `ciudad_nacimiento_idciudad` tinyint NOT NULL,
  `tipodocumento_idtipodocumento` tinyint NOT NULL,
  `ciudad_documento_idciudad` tinyint NOT NULL,
  `gruposanguineo_idgruposanguineo` tinyint NOT NULL,
  `rh_idrh` tinyint NOT NULL,
  `eps_ideps` tinyint NOT NULL,
  `ciudad_residencia_idciudad` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_acudientealumnopersona`
--

DROP TABLE IF EXISTS `view_acudientealumnopersona`;
/*!50001 DROP VIEW IF EXISTS `view_acudientealumnopersona`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_acudientealumnopersona` (
  `alumno_idalumno` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `familiar_idfamiliar` tinyint NOT NULL,
  `estadoalumnocurso` tinyint NOT NULL,
  `idpersona` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `fechanacimiento` tinyint NOT NULL,
  `numerodocumento` tinyint NOT NULL,
  `telefono` tinyint NOT NULL,
  `celular` tinyint NOT NULL,
  `fotografia` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `direccion` tinyint NOT NULL,
  `observaciones` tinyint NOT NULL,
  `genero_idgenero` tinyint NOT NULL,
  `ciudad_nacimiento_idciudad` tinyint NOT NULL,
  `tipodocumento_idtipodocumento` tinyint NOT NULL,
  `ciudad_documento_idciudad` tinyint NOT NULL,
  `gruposanguineo_idgruposanguineo` tinyint NOT NULL,
  `rh_idrh` tinyint NOT NULL,
  `eps_ideps` tinyint NOT NULL,
  `ciudad_residencia_idciudad` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_acudientealumnousuario`
--

DROP TABLE IF EXISTS `view_acudientealumnousuario`;
/*!50001 DROP VIEW IF EXISTS `view_acudientealumnousuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_acudientealumnousuario` (
  `alumno_idalumno` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `familiar_idfamiliar` tinyint NOT NULL,
  `usuario_idusuario` tinyint NOT NULL,
  `estadoalumnocurso` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_acudienteusuariopersona`
--

DROP TABLE IF EXISTS `view_acudienteusuariopersona`;
/*!50001 DROP VIEW IF EXISTS `view_acudienteusuariopersona`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_acudienteusuariopersona` (
  `familiar_idfamiliar` tinyint NOT NULL,
  `usuario_idusuario` tinyint NOT NULL,
  `idpersona` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `fechanacimiento` tinyint NOT NULL,
  `numerodocumento` tinyint NOT NULL,
  `telefono` tinyint NOT NULL,
  `celular` tinyint NOT NULL,
  `fotografia` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `direccion` tinyint NOT NULL,
  `observaciones` tinyint NOT NULL,
  `genero_idgenero` tinyint NOT NULL,
  `ciudad_nacimiento_idciudad` tinyint NOT NULL,
  `tipodocumento_idtipodocumento` tinyint NOT NULL,
  `ciudad_documento_idciudad` tinyint NOT NULL,
  `gruposanguineo_idgruposanguineo` tinyint NOT NULL,
  `rh_idrh` tinyint NOT NULL,
  `eps_ideps` tinyint NOT NULL,
  `ciudad_residencia_idciudad` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_acumuladofallas`
--

DROP TABLE IF EXISTS `view_acumuladofallas`;
/*!50001 DROP VIEW IF EXISTS `view_acumuladofallas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_acumuladofallas` (
  `anioescolar_idanioescolar` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `profesor_curso_idprofesor_curso` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL,
  `cantidad` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_acumuladomateriaestandaralumno`
--

DROP TABLE IF EXISTS `view_acumuladomateriaestandaralumno`;
/*!50001 DROP VIEW IF EXISTS `view_acumuladomateriaestandaralumno`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_acumuladomateriaestandaralumno` (
  `alumno_idalumno` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `tipoestandar_idtipoestandar` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `anioescolar_idanioescolar` tinyint NOT NULL,
  `nota_estandar_materia` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_alumnoinformacionpersonal`
--

DROP TABLE IF EXISTS `view_alumnoinformacionpersonal`;
/*!50001 DROP VIEW IF EXISTS `view_alumnoinformacionpersonal`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_alumnoinformacionpersonal` (
  `idalumno` tinyint NOT NULL,
  `codigo` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `persona_idpersona` tinyint NOT NULL,
  `idpersona` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `fechanacimiento` tinyint NOT NULL,
  `numerodocumento` tinyint NOT NULL,
  `telefono` tinyint NOT NULL,
  `celular` tinyint NOT NULL,
  `fotografia` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `direccion` tinyint NOT NULL,
  `observaciones` tinyint NOT NULL,
  `genero_idgenero` tinyint NOT NULL,
  `ciudad_nacimiento_idciudad` tinyint NOT NULL,
  `tipodocumento_idtipodocumento` tinyint NOT NULL,
  `ciudad_documento_idciudad` tinyint NOT NULL,
  `gruposanguineo_idgruposanguineo` tinyint NOT NULL,
  `rh_idrh` tinyint NOT NULL,
  `eps_ideps` tinyint NOT NULL,
  `ciudad_residencia_idciudad` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_alumnoscurso`
--

DROP TABLE IF EXISTS `view_alumnoscurso`;
/*!50001 DROP VIEW IF EXISTS `view_alumnoscurso`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_alumnoscurso` (
  `idalumno_curso` tinyint NOT NULL,
  `codigolista` tinyint NOT NULL,
  `ordenlista` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `codigo` tinyint NOT NULL,
  `estadoalumno` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_alumnosprofesorcurso`
--

DROP TABLE IF EXISTS `view_alumnosprofesorcurso`;
/*!50001 DROP VIEW IF EXISTS `view_alumnosprofesorcurso`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_alumnosprofesorcurso` (
  `profesor_idprofesor` tinyint NOT NULL,
  `director` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `idalumno_curso` tinyint NOT NULL,
  `codigolista` tinyint NOT NULL,
  `ordenlista` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_directorcurso`
--

DROP TABLE IF EXISTS `view_directorcurso`;
/*!50001 DROP VIEW IF EXISTS `view_directorcurso`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_directorcurso` (
  `profesor_idprofesor` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `celular` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_evaluaciondetalle`
--

DROP TABLE IF EXISTS `view_evaluaciondetalle`;
/*!50001 DROP VIEW IF EXISTS `view_evaluaciondetalle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_evaluaciondetalle` (
  `anioescolar_idanioescolar` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `fechaevaluacion` tinyint NOT NULL,
  `detalleevaluacion` tinyint NOT NULL,
  `nombretipoevaluacion` tinyint NOT NULL,
  `idevaluaciondetalle` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `nota` tinyint NOT NULL,
  `letra` tinyint NOT NULL,
  `observaciones` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `evaluacion_idevaluacion` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_evaluaciondetallealumno`
--

DROP TABLE IF EXISTS `view_evaluaciondetallealumno`;
/*!50001 DROP VIEW IF EXISTS `view_evaluaciondetallealumno`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_evaluaciondetallealumno` (
  `anioescolar_idanioescolar` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `idtipoestandar` tinyint NOT NULL,
  `nombretipoestandar` tinyint NOT NULL,
  `porcentaje` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL,
  `evaluacion_idevaluacion` tinyint NOT NULL,
  `nota` tinyint NOT NULL,
  `letra` tinyint NOT NULL,
  `observaciones` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `estadoalumno` tinyint NOT NULL,
  `persona_idpersona` tinyint NOT NULL,
  `codigolista` tinyint NOT NULL,
  `ordenlista` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_evaluaciondetallealumnopersona`
--

DROP TABLE IF EXISTS `view_evaluaciondetallealumnopersona`;
/*!50001 DROP VIEW IF EXISTS `view_evaluaciondetallealumnopersona`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_evaluaciondetallealumnopersona` (
  `idevaluaciondetalle` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `nota` tinyint NOT NULL,
  `letra` tinyint NOT NULL,
  `observaciones` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `evaluacion_idevaluacion` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL,
  `estadoalumno` tinyint NOT NULL,
  `persona_idpersona` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `codigolista` tinyint NOT NULL,
  `ordenlista` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_evaluacionestandartipocurmat`
--

DROP TABLE IF EXISTS `view_evaluacionestandartipocurmat`;
/*!50001 DROP VIEW IF EXISTS `view_evaluacionestandartipocurmat`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_evaluacionestandartipocurmat` (
  `idevaluacion` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `fechaevaluacion` tinyint NOT NULL,
  `porcentaje` tinyint NOT NULL,
  `detalle` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `tipoestandar_idtipoestandar` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `tipoevaluacion_idtipoevaluacion` tinyint NOT NULL,
  `anioescolar_idanioescolar` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `profesor_idprofesor` tinyint NOT NULL,
  `nombrecurso` tinyint NOT NULL,
  `nombremateria` tinyint NOT NULL,
  `nombretipoestandar` tinyint NOT NULL,
  `porcentajetipoestandar` tinyint NOT NULL,
  `nombretipoevaluacion` tinyint NOT NULL,
  `nombreperiodo` tinyint NOT NULL,
  `idprofesor_curso` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_informealumnodatosalumno`
--

DROP TABLE IF EXISTS `view_informealumnodatosalumno`;
/*!50001 DROP VIEW IF EXISTS `view_informealumnodatosalumno`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_informealumnodatosalumno` (
  `idinforme_alumno` tinyint NOT NULL,
  `promedio` tinyint NOT NULL,
  `promediocurso` tinyint NOT NULL,
  `puestocurso` tinyint NOT NULL,
  `puestogrado` tinyint NOT NULL,
  `puestocolegio` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `observaciones` tinyint NOT NULL,
  `anioescolar_idanioescolar` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL,
  `profesor_idprofesor` tinyint NOT NULL,
  `informeacademico_idinformeacademico` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `estadoalumno` tinyint NOT NULL,
  `codigolista` tinyint NOT NULL,
  `ordenlista` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_informealumnodetalle`
--

DROP TABLE IF EXISTS `view_informealumnodetalle`;
/*!50001 DROP VIEW IF EXISTS `view_informealumnodetalle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_informealumnodetalle` (
  `idinforme_alumno_detalle` tinyint NOT NULL,
  `nota` tinyint NOT NULL,
  `letra` tinyint NOT NULL,
  `fallas` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `anioescolar_idanioescolar` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL,
  `codigolista` tinyint NOT NULL,
  `ordenlista` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `nombremateria` tinyint NOT NULL,
  `nombrecurso` tinyint NOT NULL,
  `nombreperiodo` tinyint NOT NULL,
  `anio` tinyint NOT NULL,
  `estadoalumno` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_materiasinformesentregados`
--

DROP TABLE IF EXISTS `view_materiasinformesentregados`;
/*!50001 DROP VIEW IF EXISTS `view_materiasinformesentregados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_materiasinformesentregados` (
  `materia_idmateria` tinyint NOT NULL,
  `nombre` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `anioescolar_idanioescolar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_materiasinformesfaltantes`
--

DROP TABLE IF EXISTS `view_materiasinformesfaltantes`;
/*!50001 DROP VIEW IF EXISTS `view_materiasinformesfaltantes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_materiasinformesfaltantes` (
  `materia_idmateria` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `nombre` tinyint NOT NULL,
  `anioescolar_idanioescolar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_mensajecanalmensaje`
--

DROP TABLE IF EXISTS `view_mensajecanalmensaje`;
/*!50001 DROP VIEW IF EXISTS `view_mensajecanalmensaje`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_mensajecanalmensaje` (
  `idmensaje_canalmensaje` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `mensaje_idmensaje` tinyint NOT NULL,
  `canalmensaje_idcanalmensaje` tinyint NOT NULL,
  `nombre` tinyint NOT NULL,
  `parametros` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_mensajetipomensaje`
--

DROP TABLE IF EXISTS `view_mensajetipomensaje`;
/*!50001 DROP VIEW IF EXISTS `view_mensajetipomensaje`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_mensajetipomensaje` (
  `idmensaje` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `asunto` tinyint NOT NULL,
  `mensaje` tinyint NOT NULL,
  `fechaenvio` tinyint NOT NULL,
  `fechavencimiento` tinyint NOT NULL,
  `profesores` tinyint NOT NULL,
  `acudientes` tinyint NOT NULL,
  `acudientesdetalle` tinyint NOT NULL,
  `numerosadicionales` tinyint NOT NULL,
  `emailsadicionales` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `usuario_idusuario` tinyint NOT NULL,
  `tipomensaje_idtipomensaje` tinyint NOT NULL,
  `nombretipomensaje` tinyint NOT NULL,
  `class` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_modulousuario`
--

DROP TABLE IF EXISTS `view_modulousuario`;
/*!50001 DROP VIEW IF EXISTS `view_modulousuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_modulousuario` (
  `usuario_idusuario` tinyint NOT NULL,
  `tipousuario_idtipousuario` tinyint NOT NULL,
  `nombretipousuario` tinyint NOT NULL,
  `nombremodulo` tinyint NOT NULL,
  `path` tinyint NOT NULL,
  `iconomodulo` tinyint NOT NULL,
  `estadomodulo` tinyint NOT NULL,
  `idgrupomodulo` tinyint NOT NULL,
  `nombregrupomodulo` tinyint NOT NULL,
  `iconogrupo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_permisomodulousuario`
--

DROP TABLE IF EXISTS `view_permisomodulousuario`;
/*!50001 DROP VIEW IF EXISTS `view_permisomodulousuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_permisomodulousuario` (
  `idusuario` tinyint NOT NULL,
  `idtipousuario` tinyint NOT NULL,
  `idmodulosistema` tinyint NOT NULL,
  `index` tinyint NOT NULL,
  `create` tinyint NOT NULL,
  `store` tinyint NOT NULL,
  `show` tinyint NOT NULL,
  `edit` tinyint NOT NULL,
  `update` tinyint NOT NULL,
  `destroy` tinyint NOT NULL,
  `path` tinyint NOT NULL,
  `nombre` tinyint NOT NULL,
  `estado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_profesorcurso`
--

DROP TABLE IF EXISTS `view_profesorcurso`;
/*!50001 DROP VIEW IF EXISTS `view_profesorcurso`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_profesorcurso` (
  `idprofesor_curso` tinyint NOT NULL,
  `director` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `profesor_idprofesor` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `idcurso` tinyint NOT NULL,
  `nombre` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `grado_idgrado` tinyint NOT NULL,
  `anioescolar_idanioescolar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_profesorcurso2`
--

DROP TABLE IF EXISTS `view_profesorcurso2`;
/*!50001 DROP VIEW IF EXISTS `view_profesorcurso2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_profesorcurso2` (
  `profesor_idprofesor` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `nombrecurso` tinyint NOT NULL,
  `estadocurso` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_profesorcursoinformes`
--

DROP TABLE IF EXISTS `view_profesorcursoinformes`;
/*!50001 DROP VIEW IF EXISTS `view_profesorcursoinformes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_profesorcursoinformes` (
  `idprofesor_curso` tinyint NOT NULL,
  `director` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `profesor_idprofesor` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `numeroinformes` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_profesorcursomateria`
--

DROP TABLE IF EXISTS `view_profesorcursomateria`;
/*!50001 DROP VIEW IF EXISTS `view_profesorcursomateria`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_profesorcursomateria` (
  `idprofesor_curso` tinyint NOT NULL,
  `director` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `profesor_idprofesor` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `nombrecurso` tinyint NOT NULL,
  `grado_idgrado` tinyint NOT NULL,
  `estadocurso` tinyint NOT NULL,
  `nombremateria` tinyint NOT NULL,
  `estadomateria` tinyint NOT NULL,
  `horassemana` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_profesorcursomateriapersona`
--

DROP TABLE IF EXISTS `view_profesorcursomateriapersona`;
/*!50001 DROP VIEW IF EXISTS `view_profesorcursomateriapersona`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_profesorcursomateriapersona` (
  `idprofesor_curso` tinyint NOT NULL,
  `profesor_idprofesor` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `grado_idgrado` tinyint NOT NULL,
  `nombrecurso` tinyint NOT NULL,
  `materia_idmateria` tinyint NOT NULL,
  `nombremateria` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_profesorinformacionpersonal`
--

DROP TABLE IF EXISTS `view_profesorinformacionpersonal`;
/*!50001 DROP VIEW IF EXISTS `view_profesorinformacionpersonal`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_profesorinformacionpersonal` (
  `idprofesor` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `persona_idpersona` tinyint NOT NULL,
  `idpersona` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `fechanacimiento` tinyint NOT NULL,
  `numerodocumento` tinyint NOT NULL,
  `telefono` tinyint NOT NULL,
  `celular` tinyint NOT NULL,
  `fotografia` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `direccion` tinyint NOT NULL,
  `observaciones` tinyint NOT NULL,
  `genero_idgenero` tinyint NOT NULL,
  `ciudad_nacimiento_idciudad` tinyint NOT NULL,
  `tipodocumento_idtipodocumento` tinyint NOT NULL,
  `ciudad_documento_idciudad` tinyint NOT NULL,
  `gruposanguineo_idgruposanguineo` tinyint NOT NULL,
  `rh_idrh` tinyint NOT NULL,
  `eps_ideps` tinyint NOT NULL,
  `ciudad_residencia_idciudad` tinyint NOT NULL,
  `idprofesor_usuario` tinyint NOT NULL,
  `usuario_idusuario` tinyint NOT NULL,
  `profesor_idprofesor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_promedioalumno`
--

DROP TABLE IF EXISTS `view_promedioalumno`;
/*!50001 DROP VIEW IF EXISTS `view_promedioalumno`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_promedioalumno` (
  `anioescolar_idanioescolar` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `alumno_idalumno` tinyint NOT NULL,
  `promedio` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_promediocurso`
--

DROP TABLE IF EXISTS `view_promediocurso`;
/*!50001 DROP VIEW IF EXISTS `view_promediocurso`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_promediocurso` (
  `anioescolar_idanioescolar` tinyint NOT NULL,
  `periodo_idperiodo` tinyint NOT NULL,
  `curso_idcurso` tinyint NOT NULL,
  `promedio` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_tipousuariousuario`
--

DROP TABLE IF EXISTS `view_tipousuariousuario`;
/*!50001 DROP VIEW IF EXISTS `view_tipousuariousuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_tipousuariousuario` (
  `idusuario_tipousuario` tinyint NOT NULL,
  `usuario_idusuario` tinyint NOT NULL,
  `tipousuario_idtipousuario` tinyint NOT NULL,
  `estado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_usuariotipousuario`
--

DROP TABLE IF EXISTS `view_usuariotipousuario`;
/*!50001 DROP VIEW IF EXISTS `view_usuariotipousuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_usuariotipousuario` (
  `idusuario` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `apellidos` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `password` tinyint NOT NULL,
  `intentos` tinyint NOT NULL,
  `hash` tinyint NOT NULL,
  `remember_token` tinyint NOT NULL,
  `estado` tinyint NOT NULL,
  `idtipousuario` tinyint NOT NULL,
  `nombre` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_acudientealumno`
--

/*!50001 DROP TABLE IF EXISTS `view_acudientealumno`*/;
/*!50001 DROP VIEW IF EXISTS `view_acudientealumno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_acudientealumno` AS select `fam`.`idfamiliar` AS `idfamiliar`,`falu`.`tipofamiliar_idtipofamiliar` AS `tipofamiliar_idtipofamiliar`,`fusr`.`usuario_idusuario` AS `usuario_idusuario`,`falu`.`acudiente` AS `acudiente`,`falu`.`alumno_idalumno` AS `alumno_idalumno`,`alu`.`codigo` AS `codigo`,`alu`.`estado` AS `estadoalumno`,`cur`.`nombre` AS `nombrecurso`,`acur`.`curso_idcurso` AS `curso_idcurso`,`acur`.`estado` AS `estadocurso`,`tdoc`.`nombre` AS `nombretipodocumento`,`per`.`idpersona` AS `idpersona`,`per`.`nombres` AS `nombres`,`per`.`apellidos` AS `apellidos`,`per`.`fechanacimiento` AS `fechanacimiento`,`per`.`numerodocumento` AS `numerodocumento`,`per`.`telefono` AS `telefono`,`per`.`celular` AS `celular`,`per`.`fotografia` AS `fotografia`,`per`.`email` AS `email`,`per`.`direccion` AS `direccion`,`per`.`observaciones` AS `observaciones`,`per`.`genero_idgenero` AS `genero_idgenero`,`per`.`ciudad_nacimiento_idciudad` AS `ciudad_nacimiento_idciudad`,`per`.`tipodocumento_idtipodocumento` AS `tipodocumento_idtipodocumento`,`per`.`ciudad_documento_idciudad` AS `ciudad_documento_idciudad`,`per`.`gruposanguineo_idgruposanguineo` AS `gruposanguineo_idgruposanguineo`,`per`.`rh_idrh` AS `rh_idrh`,`per`.`eps_ideps` AS `eps_ideps`,`per`.`ciudad_residencia_idciudad` AS `ciudad_residencia_idciudad` from (((((((`familiar` `fam` join `familiar_usuario` `fusr` on((`fam`.`idfamiliar` = `fusr`.`familiar_idfamiliar`))) join `familiar_alumno` `falu` on((`falu`.`familiar_idfamiliar` = `fam`.`idfamiliar`))) join `alumno` `alu` on((`alu`.`idalumno` = `falu`.`alumno_idalumno`))) join `persona` `per` on((`per`.`idpersona` = `alu`.`persona_idpersona`))) join `alumno_curso` `acur` on((`acur`.`alumno_idalumno` = `alu`.`idalumno`))) join `curso` `cur` on((`cur`.`idcurso` = `acur`.`curso_idcurso`))) join `tipodocumento` `tdoc` on((`tdoc`.`idtipodocumento` = `per`.`tipodocumento_idtipodocumento`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_acudientealumnopersona`
--

/*!50001 DROP TABLE IF EXISTS `view_acudientealumnopersona`*/;
/*!50001 DROP VIEW IF EXISTS `view_acudientealumnopersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_acudientealumnopersona` AS select `alcur`.`alumno_idalumno` AS `alumno_idalumno`,`alcur`.`curso_idcurso` AS `curso_idcurso`,`falu`.`familiar_idfamiliar` AS `familiar_idfamiliar`,`alcur`.`estado` AS `estadoalumnocurso`,`per`.`idpersona` AS `idpersona`,`per`.`nombres` AS `nombres`,`per`.`apellidos` AS `apellidos`,`per`.`fechanacimiento` AS `fechanacimiento`,`per`.`numerodocumento` AS `numerodocumento`,`per`.`telefono` AS `telefono`,`per`.`celular` AS `celular`,`per`.`fotografia` AS `fotografia`,`per`.`email` AS `email`,`per`.`direccion` AS `direccion`,`per`.`observaciones` AS `observaciones`,`per`.`genero_idgenero` AS `genero_idgenero`,`per`.`ciudad_nacimiento_idciudad` AS `ciudad_nacimiento_idciudad`,`per`.`tipodocumento_idtipodocumento` AS `tipodocumento_idtipodocumento`,`per`.`ciudad_documento_idciudad` AS `ciudad_documento_idciudad`,`per`.`gruposanguineo_idgruposanguineo` AS `gruposanguineo_idgruposanguineo`,`per`.`rh_idrh` AS `rh_idrh`,`per`.`eps_ideps` AS `eps_ideps`,`per`.`ciudad_residencia_idciudad` AS `ciudad_residencia_idciudad` from (((`alumno_curso` `alcur` join `familiar_alumno` `falu` on((`falu`.`alumno_idalumno` = `alcur`.`alumno_idalumno`))) join `familiar` `fam` on((`fam`.`idfamiliar` = `falu`.`familiar_idfamiliar`))) join `persona` `per` on((`per`.`idpersona` = `fam`.`persona_idpersona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_acudientealumnousuario`
--

/*!50001 DROP TABLE IF EXISTS `view_acudientealumnousuario`*/;
/*!50001 DROP VIEW IF EXISTS `view_acudientealumnousuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_acudientealumnousuario` AS select `alcur`.`alumno_idalumno` AS `alumno_idalumno`,`alcur`.`curso_idcurso` AS `curso_idcurso`,`falu`.`familiar_idfamiliar` AS `familiar_idfamiliar`,`faus`.`usuario_idusuario` AS `usuario_idusuario`,`alcur`.`estado` AS `estadoalumnocurso` from ((`alumno_curso` `alcur` join `familiar_alumno` `falu` on((`falu`.`alumno_idalumno` = `alcur`.`alumno_idalumno`))) join `familiar_usuario` `faus` on((`faus`.`familiar_idfamiliar` = `falu`.`familiar_idfamiliar`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_acudienteusuariopersona`
--

/*!50001 DROP TABLE IF EXISTS `view_acudienteusuariopersona`*/;
/*!50001 DROP VIEW IF EXISTS `view_acudienteusuariopersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_acudienteusuariopersona` AS select `fu`.`familiar_idfamiliar` AS `familiar_idfamiliar`,`fu`.`usuario_idusuario` AS `usuario_idusuario`,`pe`.`idpersona` AS `idpersona`,`pe`.`nombres` AS `nombres`,`pe`.`apellidos` AS `apellidos`,`pe`.`fechanacimiento` AS `fechanacimiento`,`pe`.`numerodocumento` AS `numerodocumento`,`pe`.`telefono` AS `telefono`,`pe`.`celular` AS `celular`,`pe`.`fotografia` AS `fotografia`,`pe`.`email` AS `email`,`pe`.`direccion` AS `direccion`,`pe`.`observaciones` AS `observaciones`,`pe`.`genero_idgenero` AS `genero_idgenero`,`pe`.`ciudad_nacimiento_idciudad` AS `ciudad_nacimiento_idciudad`,`pe`.`tipodocumento_idtipodocumento` AS `tipodocumento_idtipodocumento`,`pe`.`ciudad_documento_idciudad` AS `ciudad_documento_idciudad`,`pe`.`gruposanguineo_idgruposanguineo` AS `gruposanguineo_idgruposanguineo`,`pe`.`rh_idrh` AS `rh_idrh`,`pe`.`eps_ideps` AS `eps_ideps`,`pe`.`ciudad_residencia_idciudad` AS `ciudad_residencia_idciudad` from ((`familiar_usuario` `fu` join `familiar` `fa` on((`fa`.`idfamiliar` = `fu`.`familiar_idfamiliar`))) join `persona` `pe` on((`pe`.`idpersona` = `fa`.`persona_idpersona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_acumuladofallas`
--

/*!50001 DROP TABLE IF EXISTS `view_acumuladofallas`*/;
/*!50001 DROP VIEW IF EXISTS `view_acumuladofallas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_acumuladofallas` AS select `f`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar`,`f`.`periodo_idperiodo` AS `periodo_idperiodo`,`f`.`curso_idcurso` AS `curso_idcurso`,`f`.`materia_idmateria` AS `materia_idmateria`,`f`.`profesor_curso_idprofesor_curso` AS `profesor_curso_idprofesor_curso`,`f`.`alumno_idalumno` AS `alumno_idalumno`,sum(`f`.`numerohoras`) AS `cantidad` from `fallas` `f` where isnull(`f`.`deleted_at`) group by `f`.`anioescolar_idanioescolar`,`f`.`periodo_idperiodo`,`f`.`curso_idcurso`,`f`.`materia_idmateria`,`f`.`profesor_curso_idprofesor_curso`,`f`.`alumno_idalumno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_acumuladomateriaestandaralumno`
--

/*!50001 DROP TABLE IF EXISTS `view_acumuladomateriaestandaralumno`*/;
/*!50001 DROP VIEW IF EXISTS `view_acumuladomateriaestandaralumno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_acumuladomateriaestandaralumno` AS select `ed`.`alumno_idalumno` AS `alumno_idalumno`,`e`.`curso_idcurso` AS `curso_idcurso`,`e`.`materia_idmateria` AS `materia_idmateria`,`e`.`tipoestandar_idtipoestandar` AS `tipoestandar_idtipoestandar`,`e`.`periodo_idperiodo` AS `periodo_idperiodo`,`e`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar`,(avg(`ed`.`nota`) * `te`.`porcentaje`) AS `nota_estandar_materia` from ((`evaluacion` `e` join `evaluaciondetalle` `ed` on((`ed`.`evaluacion_idevaluacion` = `e`.`idevaluacion`))) join `tipoestandar` `te` on((`te`.`idtipoestandar` = `e`.`tipoestandar_idtipoestandar`))) where ((`e`.`estado` = 'activo') and (`ed`.`estado` = `e`.`estado`) and (`ed`.`alumno_idalumno` = 1)) group by `ed`.`alumno_idalumno`,`e`.`curso_idcurso`,`e`.`materia_idmateria`,`e`.`tipoestandar_idtipoestandar`,`e`.`periodo_idperiodo`,`e`.`anioescolar_idanioescolar` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_alumnoinformacionpersonal`
--

/*!50001 DROP TABLE IF EXISTS `view_alumnoinformacionpersonal`*/;
/*!50001 DROP VIEW IF EXISTS `view_alumnoinformacionpersonal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_alumnoinformacionpersonal` AS select `alu`.`idalumno` AS `idalumno`,`alu`.`codigo` AS `codigo`,`alu`.`created_at` AS `created_at`,`alu`.`updated_at` AS `updated_at`,`alu`.`deleted_at` AS `deleted_at`,`alu`.`estado` AS `estado`,`alu`.`persona_idpersona` AS `persona_idpersona`,`per`.`idpersona` AS `idpersona`,`per`.`nombres` AS `nombres`,`per`.`apellidos` AS `apellidos`,`per`.`fechanacimiento` AS `fechanacimiento`,`per`.`numerodocumento` AS `numerodocumento`,`per`.`telefono` AS `telefono`,`per`.`celular` AS `celular`,`per`.`fotografia` AS `fotografia`,`per`.`email` AS `email`,`per`.`direccion` AS `direccion`,`per`.`observaciones` AS `observaciones`,`per`.`genero_idgenero` AS `genero_idgenero`,`per`.`ciudad_nacimiento_idciudad` AS `ciudad_nacimiento_idciudad`,`per`.`tipodocumento_idtipodocumento` AS `tipodocumento_idtipodocumento`,`per`.`ciudad_documento_idciudad` AS `ciudad_documento_idciudad`,`per`.`gruposanguineo_idgruposanguineo` AS `gruposanguineo_idgruposanguineo`,`per`.`rh_idrh` AS `rh_idrh`,`per`.`eps_ideps` AS `eps_ideps`,`per`.`ciudad_residencia_idciudad` AS `ciudad_residencia_idciudad` from (`alumno` `alu` join `persona` `per` on((`per`.`idpersona` = `alu`.`persona_idpersona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_alumnoscurso`
--

/*!50001 DROP TABLE IF EXISTS `view_alumnoscurso`*/;
/*!50001 DROP VIEW IF EXISTS `view_alumnoscurso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_alumnoscurso` AS select `ac`.`idalumno_curso` AS `idalumno_curso`,`ac`.`codigolista` AS `codigolista`,`ac`.`ordenlista` AS `ordenlista`,`ac`.`hash` AS `hash`,`ac`.`estado` AS `estado`,`ac`.`alumno_idalumno` AS `alumno_idalumno`,`ac`.`curso_idcurso` AS `curso_idcurso`,`a`.`codigo` AS `codigo`,`a`.`estado` AS `estadoalumno`,`p`.`nombres` AS `nombres`,`p`.`apellidos` AS `apellidos` from ((`persona` `p` join `alumno` `a` on((`a`.`persona_idpersona` = `p`.`idpersona`))) join `alumno_curso` `ac` on((`ac`.`alumno_idalumno` = `a`.`idalumno`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_alumnosprofesorcurso`
--

/*!50001 DROP TABLE IF EXISTS `view_alumnosprofesorcurso`*/;
/*!50001 DROP VIEW IF EXISTS `view_alumnosprofesorcurso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_alumnosprofesorcurso` AS select distinct `pc`.`profesor_idprofesor` AS `profesor_idprofesor`,`pc`.`director` AS `director`,`pc`.`curso_idcurso` AS `curso_idcurso`,`ac`.`idalumno_curso` AS `idalumno_curso`,`ac`.`codigolista` AS `codigolista`,`ac`.`ordenlista` AS `ordenlista`,`ac`.`estado` AS `estado`,`ac`.`alumno_idalumno` AS `alumno_idalumno`,`p`.`nombres` AS `nombres`,`p`.`apellidos` AS `apellidos` from (((`profesor_curso` `pc` join `alumno_curso` `ac` on((`ac`.`curso_idcurso` = `pc`.`curso_idcurso`))) join `alumno` `a` on((`a`.`idalumno` = `ac`.`alumno_idalumno`))) join `persona` `p` on((`p`.`idpersona` = `a`.`persona_idpersona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_directorcurso`
--

/*!50001 DROP TABLE IF EXISTS `view_directorcurso`*/;
/*!50001 DROP VIEW IF EXISTS `view_directorcurso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_directorcurso` AS select distinct `pcu`.`profesor_idprofesor` AS `profesor_idprofesor`,`pcu`.`curso_idcurso` AS `curso_idcurso`,`per`.`nombres` AS `nombres`,`per`.`apellidos` AS `apellidos`,`per`.`email` AS `email`,`per`.`celular` AS `celular` from ((`profesor_curso` `pcu` join `profesor` `pro` on((`pro`.`idprofesor` = `pcu`.`profesor_idprofesor`))) join `persona` `per` on((`per`.`idpersona` = `pro`.`persona_idpersona`))) where (`pcu`.`director` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_evaluaciondetalle`
--

/*!50001 DROP TABLE IF EXISTS `view_evaluaciondetalle`*/;
/*!50001 DROP VIEW IF EXISTS `view_evaluaciondetalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_evaluaciondetalle` AS select `ev`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar`,`ev`.`periodo_idperiodo` AS `periodo_idperiodo`,`ev`.`curso_idcurso` AS `curso_idcurso`,`ev`.`materia_idmateria` AS `materia_idmateria`,`ev`.`fechaevaluacion` AS `fechaevaluacion`,`ev`.`detalle` AS `detalleevaluacion`,`tipo`.`nombre` AS `nombretipoevaluacion`,`evdet`.`idevaluaciondetalle` AS `idevaluaciondetalle`,`evdet`.`created_at` AS `created_at`,`evdet`.`updated_at` AS `updated_at`,`evdet`.`deleted_at` AS `deleted_at`,`evdet`.`nota` AS `nota`,`evdet`.`letra` AS `letra`,`evdet`.`observaciones` AS `observaciones`,`evdet`.`estado` AS `estado`,`evdet`.`hash` AS `hash`,`evdet`.`evaluacion_idevaluacion` AS `evaluacion_idevaluacion`,`evdet`.`alumno_idalumno` AS `alumno_idalumno` from ((`evaluaciondetalle` `evdet` join `evaluacion` `ev` on((`ev`.`idevaluacion` = `evdet`.`evaluacion_idevaluacion`))) join `tipoevaluacion` `tipo` on((`tipo`.`idtipoevaluacion` = `ev`.`tipoevaluacion_idtipoevaluacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_evaluaciondetallealumno`
--

/*!50001 DROP TABLE IF EXISTS `view_evaluaciondetallealumno`*/;
/*!50001 DROP VIEW IF EXISTS `view_evaluaciondetallealumno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_evaluaciondetallealumno` AS select `ev`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar`,`ev`.`periodo_idperiodo` AS `periodo_idperiodo`,`ev`.`curso_idcurso` AS `curso_idcurso`,`ev`.`materia_idmateria` AS `materia_idmateria`,`te`.`idtipoestandar` AS `idtipoestandar`,`te`.`nombre` AS `nombretipoestandar`,`te`.`porcentaje` AS `porcentaje`,`eva`.`alumno_idalumno` AS `alumno_idalumno`,`eva`.`evaluacion_idevaluacion` AS `evaluacion_idevaluacion`,`eva`.`nota` AS `nota`,`eva`.`letra` AS `letra`,`eva`.`observaciones` AS `observaciones`,`eva`.`estado` AS `estado`,`alu`.`estado` AS `estadoalumno`,`alu`.`persona_idpersona` AS `persona_idpersona`,`alcu`.`codigolista` AS `codigolista`,`alcu`.`ordenlista` AS `ordenlista` from ((((`evaluaciondetalle` `eva` join `alumno` `alu` on((`eva`.`alumno_idalumno` = `alu`.`idalumno`))) join `alumno_curso` `alcu` on((`alcu`.`alumno_idalumno` = `alu`.`idalumno`))) join `evaluacion` `ev` on((`ev`.`idevaluacion` = `eva`.`evaluacion_idevaluacion`))) join `tipoestandar` `te` on((`te`.`idtipoestandar` = `ev`.`tipoestandar_idtipoestandar`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_evaluaciondetallealumnopersona`
--

/*!50001 DROP TABLE IF EXISTS `view_evaluaciondetallealumnopersona`*/;
/*!50001 DROP VIEW IF EXISTS `view_evaluaciondetallealumnopersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_evaluaciondetallealumnopersona` AS select `eva`.`idevaluaciondetalle` AS `idevaluaciondetalle`,`eva`.`created_at` AS `created_at`,`eva`.`updated_at` AS `updated_at`,`eva`.`deleted_at` AS `deleted_at`,`eva`.`nota` AS `nota`,`eva`.`letra` AS `letra`,`eva`.`observaciones` AS `observaciones`,`eva`.`estado` AS `estado`,`eva`.`hash` AS `hash`,`eva`.`evaluacion_idevaluacion` AS `evaluacion_idevaluacion`,`eva`.`alumno_idalumno` AS `alumno_idalumno`,`alu`.`estado` AS `estadoalumno`,`alu`.`persona_idpersona` AS `persona_idpersona`,`per`.`nombres` AS `nombres`,`per`.`apellidos` AS `apellidos`,`alcu`.`codigolista` AS `codigolista`,`alcu`.`ordenlista` AS `ordenlista` from (((`evaluaciondetalle` `eva` join `alumno` `alu` on((`eva`.`alumno_idalumno` = `alu`.`idalumno`))) join `persona` `per` on((`per`.`idpersona` = `alu`.`persona_idpersona`))) join `alumno_curso` `alcu` on((`alcu`.`alumno_idalumno` = `alu`.`idalumno`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_evaluacionestandartipocurmat`
--

/*!50001 DROP TABLE IF EXISTS `view_evaluacionestandartipocurmat`*/;
/*!50001 DROP VIEW IF EXISTS `view_evaluacionestandartipocurmat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_evaluacionestandartipocurmat` AS select `eva`.`idevaluacion` AS `idevaluacion`,`eva`.`created_at` AS `created_at`,`eva`.`updated_at` AS `updated_at`,`eva`.`deleted_at` AS `deleted_at`,`eva`.`fechaevaluacion` AS `fechaevaluacion`,`eva`.`porcentaje` AS `porcentaje`,`eva`.`detalle` AS `detalle`,`eva`.`hash` AS `hash`,`eva`.`estado` AS `estado`,`eva`.`tipoestandar_idtipoestandar` AS `tipoestandar_idtipoestandar`,`eva`.`curso_idcurso` AS `curso_idcurso`,`eva`.`periodo_idperiodo` AS `periodo_idperiodo`,`eva`.`tipoevaluacion_idtipoevaluacion` AS `tipoevaluacion_idtipoevaluacion`,`eva`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar`,`eva`.`materia_idmateria` AS `materia_idmateria`,`eva`.`profesor_idprofesor` AS `profesor_idprofesor`,`c`.`nombre` AS `nombrecurso`,`m`.`nombre` AS `nombremateria`,`est`.`nombre` AS `nombretipoestandar`,`est`.`porcentaje` AS `porcentajetipoestandar`,`tipoev`.`nombre` AS `nombretipoevaluacion`,`per`.`nombre` AS `nombreperiodo`,`pc`.`idprofesor_curso` AS `idprofesor_curso` from ((((((`evaluacion` `eva` join `curso` `c` on((`c`.`idcurso` = `eva`.`curso_idcurso`))) join `materia` `m` on((`m`.`idmateria` = `eva`.`materia_idmateria`))) join `tipoestandar` `est` on((`est`.`idtipoestandar` = `eva`.`tipoestandar_idtipoestandar`))) join `tipoevaluacion` `tipoev` on((`tipoev`.`idtipoevaluacion` = `eva`.`tipoevaluacion_idtipoevaluacion`))) join `periodo` `per` on((`per`.`idperiodo` = `eva`.`periodo_idperiodo`))) join `profesor_curso` `pc` on(((`pc`.`curso_idcurso` = `c`.`idcurso`) and (`pc`.`profesor_idprofesor` = `eva`.`profesor_idprofesor`) and (`pc`.`materia_idmateria` = `eva`.`materia_idmateria`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_informealumnodatosalumno`
--

/*!50001 DROP TABLE IF EXISTS `view_informealumnodatosalumno`*/;
/*!50001 DROP VIEW IF EXISTS `view_informealumnodatosalumno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_informealumnodatosalumno` AS select distinct `ia`.`idinforme_alumno` AS `idinforme_alumno`,`ia`.`promedio` AS `promedio`,`ia`.`promediocurso` AS `promediocurso`,`ia`.`puestocurso` AS `puestocurso`,`ia`.`puestogrado` AS `puestogrado`,`ia`.`puestocolegio` AS `puestocolegio`,`ia`.`created_at` AS `created_at`,`ia`.`updated_at` AS `updated_at`,`ia`.`deleted_at` AS `deleted_at`,`ia`.`hash` AS `hash`,`ia`.`estado` AS `estado`,`ia`.`observaciones` AS `observaciones`,`ia`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar`,`ia`.`periodo_idperiodo` AS `periodo_idperiodo`,`ia`.`curso_idcurso` AS `curso_idcurso`,`ia`.`alumno_idalumno` AS `alumno_idalumno`,`ia`.`profesor_idprofesor` AS `profesor_idprofesor`,`ia`.`informeacademico_idinformeacademico` AS `informeacademico_idinformeacademico`,`per`.`nombres` AS `nombres`,`per`.`apellidos` AS `apellidos`,`alu`.`estado` AS `estadoalumno`,`acu`.`codigolista` AS `codigolista`,`acu`.`ordenlista` AS `ordenlista` from (((`informe_alumno` `ia` join `alumno` `alu` on((`alu`.`idalumno` = `ia`.`alumno_idalumno`))) join `alumno_curso` `acu` on(((`acu`.`alumno_idalumno` = `alu`.`idalumno`) and (`acu`.`curso_idcurso` = `ia`.`curso_idcurso`)))) join `persona` `per` on((`alu`.`persona_idpersona` = `per`.`idpersona`))) where (`ia`.`deleted_at` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_informealumnodetalle`
--

/*!50001 DROP TABLE IF EXISTS `view_informealumnodetalle`*/;
/*!50001 DROP VIEW IF EXISTS `view_informealumnodetalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_informealumnodetalle` AS select `iad`.`idinforme_alumno_detalle` AS `idinforme_alumno_detalle`,`iad`.`nota` AS `nota`,`iad`.`letra` AS `letra`,`iad`.`fallas` AS `fallas`,`iad`.`created_at` AS `created_at`,`iad`.`updated_at` AS `updated_at`,`iad`.`deleted_at` AS `deleted_at`,`iad`.`estado` AS `estado`,`iad`.`hash` AS `hash`,`iad`.`materia_idmateria` AS `materia_idmateria`,`iad`.`curso_idcurso` AS `curso_idcurso`,`iad`.`periodo_idperiodo` AS `periodo_idperiodo`,`iad`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar`,`iad`.`alumno_idalumno` AS `alumno_idalumno`,`acu`.`codigolista` AS `codigolista`,`acu`.`ordenlista` AS `ordenlista`,`p`.`nombres` AS `nombres`,`p`.`apellidos` AS `apellidos`,`m`.`nombre` AS `nombremateria`,`c`.`nombre` AS `nombrecurso`,`per`.`nombre` AS `nombreperiodo`,`an`.`anio` AS `anio`,`a`.`estado` AS `estadoalumno` from (((((((`informe_alumno_detalle` `iad` join `alumno` `a` on((`iad`.`alumno_idalumno` = `a`.`idalumno`))) join `alumno_curso` `acu` on(((`acu`.`alumno_idalumno` = `iad`.`alumno_idalumno`) and (`acu`.`curso_idcurso` = `iad`.`curso_idcurso`)))) join `persona` `p` on((`p`.`idpersona` = `a`.`persona_idpersona`))) join `materia` `m` on((`iad`.`materia_idmateria` = `m`.`idmateria`))) join `curso` `c` on((`iad`.`curso_idcurso` = `c`.`idcurso`))) join `periodo` `per` on((`iad`.`periodo_idperiodo` = `per`.`idperiodo`))) join `anioescolar` `an` on((`iad`.`anioescolar_idanioescolar` = `an`.`idanioescolar`))) order by `iad`.`anioescolar_idanioescolar`,`iad`.`curso_idcurso`,`iad`.`alumno_idalumno`,`iad`.`materia_idmateria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_materiasinformesentregados`
--

/*!50001 DROP TABLE IF EXISTS `view_materiasinformesentregados`*/;
/*!50001 DROP VIEW IF EXISTS `view_materiasinformesentregados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_materiasinformesentregados` AS select distinct `informe_alumno_detalle`.`materia_idmateria` AS `materia_idmateria`,`materia`.`nombre` AS `nombre`,`informe_alumno_detalle`.`curso_idcurso` AS `curso_idcurso`,`informe_alumno_detalle`.`periodo_idperiodo` AS `periodo_idperiodo`,`informe_alumno_detalle`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar` from (`informe_alumno_detalle` join `materia` on((`materia`.`idmateria` = `informe_alumno_detalle`.`materia_idmateria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_materiasinformesfaltantes`
--

/*!50001 DROP TABLE IF EXISTS `view_materiasinformesfaltantes`*/;
/*!50001 DROP VIEW IF EXISTS `view_materiasinformesfaltantes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_materiasinformesfaltantes` AS select `pc`.`materia_idmateria` AS `materia_idmateria`,`pc`.`curso_idcurso` AS `curso_idcurso`,`m`.`nombre` AS `nombre`,`c`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar` from ((`profesor_curso` `pc` join `curso` `c` on((`c`.`idcurso` = `pc`.`curso_idcurso`))) join `materia` `m` on((`m`.`idmateria` = `pc`.`materia_idmateria`))) where (not(`m`.`idmateria` in (select distinct `informe_alumno_detalle`.`materia_idmateria` from (`informe_alumno_detalle` join `materia` on((`materia`.`idmateria` = `informe_alumno_detalle`.`materia_idmateria`)))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_mensajecanalmensaje`
--

/*!50001 DROP TABLE IF EXISTS `view_mensajecanalmensaje`*/;
/*!50001 DROP VIEW IF EXISTS `view_mensajecanalmensaje`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_mensajecanalmensaje` AS select `cm`.`idmensaje_canalmensaje` AS `idmensaje_canalmensaje`,`cm`.`estado` AS `estado`,`cm`.`mensaje_idmensaje` AS `mensaje_idmensaje`,`cm`.`canalmensaje_idcanalmensaje` AS `canalmensaje_idcanalmensaje`,`c`.`nombre` AS `nombre`,`c`.`parametros` AS `parametros` from (`mensaje_canalmensaje` `cm` join `canalmensaje` `c` on((`c`.`idcanalmensaje` = `cm`.`canalmensaje_idcanalmensaje`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_mensajetipomensaje`
--

/*!50001 DROP TABLE IF EXISTS `view_mensajetipomensaje`*/;
/*!50001 DROP VIEW IF EXISTS `view_mensajetipomensaje`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_mensajetipomensaje` AS select `me`.`idmensaje` AS `idmensaje`,`me`.`created_at` AS `created_at`,`me`.`updated_at` AS `updated_at`,`me`.`deleted_at` AS `deleted_at`,`me`.`asunto` AS `asunto`,`me`.`mensaje` AS `mensaje`,`me`.`fechaenvio` AS `fechaenvio`,`me`.`fechavencimiento` AS `fechavencimiento`,`me`.`profesores` AS `profesores`,`me`.`acudientes` AS `acudientes`,`me`.`acudientesdetalle` AS `acudientesdetalle`,`me`.`numerosadicionales` AS `numerosadicionales`,`me`.`emailsadicionales` AS `emailsadicionales`,`me`.`estado` AS `estado`,`me`.`usuario_idusuario` AS `usuario_idusuario`,`me`.`tipomensaje_idtipomensaje` AS `tipomensaje_idtipomensaje`,`tm`.`nombre` AS `nombretipomensaje`,`tm`.`class` AS `class` from (`mensaje` `me` join `tipomensaje` `tm` on((`me`.`tipomensaje_idtipomensaje` = `tm`.`idtipomensaje`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_modulousuario`
--

/*!50001 DROP TABLE IF EXISTS `view_modulousuario`*/;
/*!50001 DROP VIEW IF EXISTS `view_modulousuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_modulousuario` AS select distinct `ut`.`usuario_idusuario` AS `usuario_idusuario`,`ut`.`tipousuario_idtipousuario` AS `tipousuario_idtipousuario`,`t`.`nombre` AS `nombretipousuario`,`ms`.`nombre` AS `nombremodulo`,`ms`.`path` AS `path`,`ms`.`icono` AS `iconomodulo`,`ms`.`estado` AS `estadomodulo`,`gm`.`idgrupomodulo` AS `idgrupomodulo`,`gm`.`nombre` AS `nombregrupomodulo`,`gm`.`icono` AS `iconogrupo` from (((((`usuario_tipousuario` `ut` join `tipousuario` `t` on((`t`.`idtipousuario` = `ut`.`tipousuario_idtipousuario`))) join `tipousuario_modulosistema` `tm` on((`tm`.`tipousuario_idtipousuario` = `ut`.`tipousuario_idtipousuario`))) join `modulosistema` `ms` on((`ms`.`idmodulosistema` = `tm`.`modulosistema_idmodulosistema`))) join `grupomodulo_modulosistema` `gr_mo` on((`gr_mo`.`modulosistema_idmodulosistema` = `ms`.`idmodulosistema`))) join `grupomodulo` `gm` on((`gm`.`idgrupomodulo` = `gr_mo`.`grupomodulo_idgrupomodulo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_permisomodulousuario`
--

/*!50001 DROP TABLE IF EXISTS `view_permisomodulousuario`*/;
/*!50001 DROP VIEW IF EXISTS `view_permisomodulousuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_permisomodulousuario` AS select `ut`.`usuario_idusuario` AS `idusuario`,`ut`.`tipousuario_idtipousuario` AS `idtipousuario`,`tm`.`modulosistema_idmodulosistema` AS `idmodulosistema`,`tm`.`index` AS `index`,`tm`.`create` AS `create`,`tm`.`store` AS `store`,`tm`.`show` AS `show`,`tm`.`edit` AS `edit`,`tm`.`update` AS `update`,`tm`.`destroy` AS `destroy`,`m`.`path` AS `path`,`m`.`nombre` AS `nombre`,`m`.`estado` AS `estado` from ((`usuario_tipousuario` `ut` join `tipousuario_modulosistema` `tm` on((`tm`.`tipousuario_idtipousuario` = `ut`.`tipousuario_idtipousuario`))) join `modulosistema` `m` on((`m`.`idmodulosistema` = `tm`.`modulosistema_idmodulosistema`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_profesorcurso`
--

/*!50001 DROP TABLE IF EXISTS `view_profesorcurso`*/;
/*!50001 DROP VIEW IF EXISTS `view_profesorcurso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_profesorcurso` AS select `pc`.`idprofesor_curso` AS `idprofesor_curso`,`pc`.`director` AS `director`,`pc`.`hash` AS `hash`,`pc`.`profesor_idprofesor` AS `profesor_idprofesor`,`pc`.`curso_idcurso` AS `curso_idcurso`,`pc`.`materia_idmateria` AS `materia_idmateria`,`c`.`idcurso` AS `idcurso`,`c`.`nombre` AS `nombre`,`c`.`estado` AS `estado`,`c`.`grado_idgrado` AS `grado_idgrado`,`c`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar` from (`profesor_curso` `pc` join `curso` `c` on((`pc`.`curso_idcurso` = `c`.`idcurso`))) order by `pc`.`profesor_idprofesor`,`pc`.`curso_idcurso`,`pc`.`materia_idmateria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_profesorcurso2`
--

/*!50001 DROP TABLE IF EXISTS `view_profesorcurso2`*/;
/*!50001 DROP VIEW IF EXISTS `view_profesorcurso2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_profesorcurso2` AS select distinct `pc`.`profesor_idprofesor` AS `profesor_idprofesor`,`pc`.`curso_idcurso` AS `curso_idcurso`,`c`.`nombre` AS `nombrecurso`,`c`.`estado` AS `estadocurso` from (`profesor_curso` `pc` join `curso` `c` on((`c`.`idcurso` = `pc`.`curso_idcurso`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_profesorcursoinformes`
--

/*!50001 DROP TABLE IF EXISTS `view_profesorcursoinformes`*/;
/*!50001 DROP VIEW IF EXISTS `view_profesorcursoinformes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_profesorcursoinformes` AS select `pc`.`idprofesor_curso` AS `idprofesor_curso`,`pc`.`director` AS `director`,`pc`.`hash` AS `hash`,`pc`.`profesor_idprofesor` AS `profesor_idprofesor`,`pc`.`curso_idcurso` AS `curso_idcurso`,`pc`.`materia_idmateria` AS `materia_idmateria`,count(`iad`.`idinforme_alumno_detalle`) AS `numeroinformes` from (`profesor_curso` `pc` left join `informe_alumno_detalle` `iad` on(((`iad`.`curso_idcurso` = `pc`.`curso_idcurso`) and (`iad`.`materia_idmateria` = `pc`.`materia_idmateria`)))) group by `pc`.`idprofesor_curso`,`pc`.`director`,`pc`.`profesor_idprofesor`,`pc`.`curso_idcurso`,`pc`.`materia_idmateria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_profesorcursomateria`
--

/*!50001 DROP TABLE IF EXISTS `view_profesorcursomateria`*/;
/*!50001 DROP VIEW IF EXISTS `view_profesorcursomateria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_profesorcursomateria` AS select distinct `pc`.`idprofesor_curso` AS `idprofesor_curso`,`pc`.`director` AS `director`,`pc`.`hash` AS `hash`,`pc`.`profesor_idprofesor` AS `profesor_idprofesor`,`pc`.`curso_idcurso` AS `curso_idcurso`,`pc`.`materia_idmateria` AS `materia_idmateria`,`c`.`nombre` AS `nombrecurso`,`c`.`grado_idgrado` AS `grado_idgrado`,`c`.`estado` AS `estadocurso`,`m`.`nombre` AS `nombremateria`,`m`.`estado` AS `estadomateria`,`m`.`horassemana` AS `horassemana` from ((`profesor_curso` `pc` join `curso` `c` on((`c`.`idcurso` = `pc`.`curso_idcurso`))) join `materia` `m` on((`m`.`idmateria` = `pc`.`materia_idmateria`))) order by `m`.`nombre`,`pc`.`curso_idcurso`,`pc`.`materia_idmateria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_profesorcursomateriapersona`
--

/*!50001 DROP TABLE IF EXISTS `view_profesorcursomateriapersona`*/;
/*!50001 DROP VIEW IF EXISTS `view_profesorcursomateriapersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_profesorcursomateriapersona` AS select `pc`.`idprofesor_curso` AS `idprofesor_curso`,`pc`.`profesor_idprofesor` AS `profesor_idprofesor`,`per`.`nombres` AS `nombres`,`per`.`apellidos` AS `apellidos`,`pc`.`curso_idcurso` AS `curso_idcurso`,`cu`.`grado_idgrado` AS `grado_idgrado`,`cu`.`nombre` AS `nombrecurso`,`pc`.`materia_idmateria` AS `materia_idmateria`,`ma`.`nombre` AS `nombremateria` from ((((`profesor_curso` `pc` join `profesor` `p` on((`p`.`idprofesor` = `pc`.`profesor_idprofesor`))) join `persona` `per` on((`p`.`persona_idpersona` = `per`.`idpersona`))) join `curso` `cu` on((`cu`.`idcurso` = `pc`.`curso_idcurso`))) join `materia` `ma` on((`ma`.`idmateria` = `pc`.`materia_idmateria`))) order by `pc`.`profesor_idprofesor`,`pc`.`curso_idcurso`,`pc`.`materia_idmateria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_profesorinformacionpersonal`
--

/*!50001 DROP TABLE IF EXISTS `view_profesorinformacionpersonal`*/;
/*!50001 DROP VIEW IF EXISTS `view_profesorinformacionpersonal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_profesorinformacionpersonal` AS select `pro`.`idprofesor` AS `idprofesor`,`pro`.`estado` AS `estado`,`pro`.`persona_idpersona` AS `persona_idpersona`,`per`.`idpersona` AS `idpersona`,`per`.`nombres` AS `nombres`,`per`.`apellidos` AS `apellidos`,`per`.`fechanacimiento` AS `fechanacimiento`,`per`.`numerodocumento` AS `numerodocumento`,`per`.`telefono` AS `telefono`,`per`.`celular` AS `celular`,`per`.`fotografia` AS `fotografia`,`per`.`email` AS `email`,`per`.`direccion` AS `direccion`,`per`.`observaciones` AS `observaciones`,`per`.`genero_idgenero` AS `genero_idgenero`,`per`.`ciudad_nacimiento_idciudad` AS `ciudad_nacimiento_idciudad`,`per`.`tipodocumento_idtipodocumento` AS `tipodocumento_idtipodocumento`,`per`.`ciudad_documento_idciudad` AS `ciudad_documento_idciudad`,`per`.`gruposanguineo_idgruposanguineo` AS `gruposanguineo_idgruposanguineo`,`per`.`rh_idrh` AS `rh_idrh`,`per`.`eps_ideps` AS `eps_ideps`,`per`.`ciudad_residencia_idciudad` AS `ciudad_residencia_idciudad`,`pu`.`idprofesor_usuario` AS `idprofesor_usuario`,`pu`.`usuario_idusuario` AS `usuario_idusuario`,`pu`.`profesor_idprofesor` AS `profesor_idprofesor` from ((`profesor` `pro` join `persona` `per` on((`per`.`idpersona` = `pro`.`persona_idpersona`))) join `profesor_usuario` `pu` on((`pu`.`profesor_idprofesor` = `pro`.`idprofesor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_promedioalumno`
--

/*!50001 DROP TABLE IF EXISTS `view_promedioalumno`*/;
/*!50001 DROP VIEW IF EXISTS `view_promedioalumno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_promedioalumno` AS select `informe_alumno_detalle`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar`,`informe_alumno_detalle`.`periodo_idperiodo` AS `periodo_idperiodo`,`informe_alumno_detalle`.`curso_idcurso` AS `curso_idcurso`,`informe_alumno_detalle`.`alumno_idalumno` AS `alumno_idalumno`,avg(`informe_alumno_detalle`.`nota`) AS `promedio` from `informe_alumno_detalle` where (not(`informe_alumno_detalle`.`materia_idmateria` in (select distinct `m`.`idmateria` from `materia` `m` where (`m`.`area_idarea` = 10)))) group by `informe_alumno_detalle`.`anioescolar_idanioescolar`,`informe_alumno_detalle`.`periodo_idperiodo`,`informe_alumno_detalle`.`curso_idcurso`,`informe_alumno_detalle`.`alumno_idalumno` order by avg(`informe_alumno_detalle`.`nota`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_promediocurso`
--

/*!50001 DROP TABLE IF EXISTS `view_promediocurso`*/;
/*!50001 DROP VIEW IF EXISTS `view_promediocurso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_promediocurso` AS select `informe_alumno_detalle`.`anioescolar_idanioescolar` AS `anioescolar_idanioescolar`,`informe_alumno_detalle`.`periodo_idperiodo` AS `periodo_idperiodo`,`informe_alumno_detalle`.`curso_idcurso` AS `curso_idcurso`,avg(`informe_alumno_detalle`.`nota`) AS `promedio` from `informe_alumno_detalle` where (not(`informe_alumno_detalle`.`materia_idmateria` in (select distinct `m`.`idmateria` from `materia` `m` where (`m`.`area_idarea` = 10)))) group by `informe_alumno_detalle`.`anioescolar_idanioescolar`,`informe_alumno_detalle`.`periodo_idperiodo`,`informe_alumno_detalle`.`curso_idcurso` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_tipousuariousuario`
--

/*!50001 DROP TABLE IF EXISTS `view_tipousuariousuario`*/;
/*!50001 DROP VIEW IF EXISTS `view_tipousuariousuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tipousuariousuario` AS select `ut`.`idusuario_tipousuario` AS `idusuario_tipousuario`,`ut`.`usuario_idusuario` AS `usuario_idusuario`,`ut`.`tipousuario_idtipousuario` AS `tipousuario_idtipousuario`,`u`.`estado` AS `estado` from (`usuario_tipousuario` `ut` join `usuario` `u` on((`ut`.`usuario_idusuario` = `u`.`idusuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_usuariotipousuario`
--

/*!50001 DROP TABLE IF EXISTS `view_usuariotipousuario`*/;
/*!50001 DROP VIEW IF EXISTS `view_usuariotipousuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_usuariotipousuario` AS select `u`.`idusuario` AS `idusuario`,`u`.`created_at` AS `created_at`,`u`.`updated_at` AS `updated_at`,`u`.`deleted_at` AS `deleted_at`,`u`.`nombres` AS `nombres`,`u`.`apellidos` AS `apellidos`,`u`.`email` AS `email`,`u`.`password` AS `password`,`u`.`intentos` AS `intentos`,`u`.`hash` AS `hash`,`u`.`remember_token` AS `remember_token`,`u`.`estado` AS `estado`,`t`.`idtipousuario` AS `idtipousuario`,`t`.`nombre` AS `nombre` from ((`usuario` `u` join `usuario_tipousuario` `tu` on((`tu`.`usuario_idusuario` = `u`.`idusuario`))) join `tipousuario` `t` on((`t`.`idtipousuario` = `tu`.`tipousuario_idtipousuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-25 17:18:16
