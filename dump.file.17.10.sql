-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: groupproject
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `absence`
--

USE groupproject

DROP TABLE IF EXISTS `absence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `absence` (
  `absence_id` bigint NOT NULL AUTO_INCREMENT,
  `is_excused` tinyint NOT NULL,
  `half_or_full` tinyint NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_of_absence` date NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`absence_id`),
  KEY `FKlgpyjtylm8d0pocl7xo1k4thc` (`student_id`),
  CONSTRAINT `FKlgpyjtylm8d0pocl7xo1k4thc` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `absence_chk_1` CHECK ((`is_excused` between 0 and 1)),
  CONSTRAINT `absence_chk_2` CHECK ((`half_or_full` between 0 and 1))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absence`
--

LOCK TABLES `absence` WRITE;
/*!40000 ALTER TABLE `absence` DISABLE KEYS */;
INSERT INTO `absence` VALUES (1,1,1,'2024-09-16 00:00:00','2024-09-16',1),(2,0,0,'2024-09-16 00:00:00','2024-09-16',2),(4,0,0,'2024-09-16 22:02:56','2024-09-16',11),(5,0,1,'2024-09-17 12:04:25','2024-09-16',11),(6,0,1,'2024-09-19 13:13:46','2024-09-16',11);
/*!40000 ALTER TABLE `absence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `UK_hawikyhwwfvbnog5byokutpff` (`user_id`),
  CONSTRAINT `FK8ahhk8vqegfrt6pd1p9i03aej` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,9),(2,10),(3,276),(5,281),(12,285),(14,293);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `grade_id` bigint NOT NULL AUTO_INCREMENT,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_of_grade` date NOT NULL,
  `grade` decimal(38,2) NOT NULL,
  `type_of_grade` tinyint NOT NULL,
  `student_id` bigint NOT NULL,
  `subject_id` bigint NOT NULL,
  `term_id` bigint NOT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `FK5secqnjjwgh9wxk4h1xwgj1n0` (`student_id`),
  KEY `FKhhw6hbmiyabjlm1jghr00m5d8` (`subject_id`),
  KEY `FK2i3vcadhsyyq3lb4i0if4skv9` (`term_id`),
  CONSTRAINT `FK2i3vcadhsyyq3lb4i0if4skv9` FOREIGN KEY (`term_id`) REFERENCES `term` (`term_id`),
  CONSTRAINT `FK5secqnjjwgh9wxk4h1xwgj1n0` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `FKhhw6hbmiyabjlm1jghr00m5d8` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  CONSTRAINT `grade_chk_1` CHECK ((`type_of_grade` between 0 and 2))
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,'2024-10-13 17:59:33','2024-10-10',5.00,0,2,1,3),(2,'2024-10-13 18:02:31','2024-09-20',6.00,0,3,1,3),(3,'2024-10-13 18:02:31','2024-09-21',4.00,0,4,1,3),(4,'2024-10-13 18:02:31','2024-09-21',3.00,0,1,1,3),(5,'2024-10-13 18:02:31','2024-09-21',2.00,0,5,1,3),(6,'2024-10-13 18:02:31','2024-09-21',5.00,0,6,1,3),(7,'2024-10-13 18:02:31','2024-09-21',6.00,0,7,1,3),(8,'2024-10-13 18:02:31','2024-09-21',5.00,0,8,1,3),(9,'2024-10-13 18:02:31','2024-09-21',3.00,0,9,1,3),(10,'2024-10-13 18:02:31','2024-09-21',6.00,0,10,1,3),(11,'2024-10-13 18:02:31','2024-09-21',3.00,0,11,1,3),(12,'2024-10-13 18:02:31','2024-09-21',6.00,0,12,1,3),(13,'2024-10-13 18:04:05','2024-09-21',6.00,0,13,1,3),(14,'2024-10-13 18:04:05','2024-09-21',6.00,0,14,1,3),(15,'2024-10-13 18:04:05','2024-09-21',5.00,0,15,1,3),(16,'2024-10-13 18:04:05','2024-09-21',3.00,0,16,1,3),(17,'2024-10-13 18:04:05','2024-09-21',2.00,0,17,1,3),(18,'2024-10-13 18:04:05','2024-09-21',4.00,0,18,1,3),(19,'2024-10-13 18:04:05','2024-09-21',5.00,0,19,1,3),(20,'2024-10-13 18:04:05','2024-09-21',6.00,0,20,1,3),(21,'2024-10-13 18:04:05','2024-09-21',6.00,0,21,1,3),(30,'2024-10-13 18:05:43','2024-09-21',6.00,0,22,1,3),(31,'2024-10-13 18:05:43','2024-09-21',5.00,0,23,1,3),(32,'2024-10-13 18:05:43','2024-09-21',4.00,0,24,1,3),(33,'2024-10-13 18:05:43','2024-09-21',6.00,0,25,1,3),(34,'2024-10-13 18:05:43','2024-09-21',5.00,0,26,1,3),(35,'2024-10-13 18:05:43','2024-09-21',5.00,0,27,1,3),(36,'2024-10-13 18:05:43','2024-09-21',4.00,0,28,1,3),(37,'2024-10-13 18:05:43','2024-09-21',6.00,0,29,1,3),(38,'2024-10-13 18:05:43','2024-09-21',6.00,0,30,1,3),(39,'2024-10-13 18:07:21','2024-09-21',6.00,0,31,1,3),(40,'2024-10-13 18:07:21','2024-09-21',5.00,0,32,1,3),(41,'2024-10-13 18:07:21','2024-09-21',6.00,0,33,1,3),(42,'2024-10-13 18:07:21','2024-09-21',5.00,0,34,1,3),(43,'2024-10-13 18:07:21','2024-09-21',5.00,0,35,1,3),(44,'2024-10-13 18:07:21','2024-09-21',6.00,0,36,1,3),(45,'2024-10-13 18:07:21','2024-09-21',4.00,0,37,1,3),(46,'2024-10-13 18:07:21','2024-09-21',2.00,0,38,1,3),(47,'2024-10-13 18:07:21','2024-09-21',6.00,0,39,1,3),(48,'2024-10-13 18:07:21','2024-09-21',6.00,0,40,1,3),(49,'2024-10-13 18:07:21','2024-09-21',6.00,0,41,1,3),(50,'2024-10-13 18:08:53','2024-09-21',5.00,0,42,1,3),(51,'2024-10-13 18:08:53','2024-09-21',4.00,0,43,1,3),(52,'2024-10-13 18:08:53','2024-09-21',5.00,0,44,1,3),(53,'2024-10-13 18:08:53','2024-09-21',5.00,0,45,1,3),(54,'2024-10-13 18:08:53','2024-09-21',6.00,0,46,1,3),(55,'2024-10-13 18:08:53','2024-09-21',2.00,0,47,1,3),(56,'2024-10-13 18:08:53','2024-09-21',3.00,0,48,1,3),(57,'2024-10-13 18:08:53','2024-09-21',4.00,0,49,1,3),(58,'2024-10-13 18:08:53','2024-09-21',5.00,0,50,1,3),(59,'2024-10-13 18:08:53','2024-09-21',6.00,0,51,1,3),(60,'2024-10-13 18:08:53','2024-09-21',5.00,0,52,1,3),(61,'2024-10-13 18:10:38','2024-09-21',6.00,0,53,1,3),(62,'2024-10-13 18:10:38','2024-09-21',5.00,0,54,1,3),(63,'2024-10-13 18:10:38','2024-09-21',5.00,0,55,1,3),(64,'2024-10-13 18:10:38','2024-09-21',4.00,0,56,1,3),(65,'2024-10-13 18:10:38','2024-09-21',6.00,0,57,1,3),(66,'2024-10-13 18:10:38','2024-09-21',6.00,0,58,1,3),(67,'2024-10-13 18:10:38','2024-09-21',6.00,0,59,1,3),(68,'2024-10-13 18:10:38','2024-09-21',5.00,0,60,1,3),(69,'2024-10-13 18:10:38','2024-09-21',5.00,0,61,1,3),(70,'2024-10-13 18:10:38','2024-09-21',6.00,0,62,1,3),(71,'2024-10-13 18:10:38','2024-09-21',6.00,0,63,1,3),(102,'2024-10-13 18:13:04','2024-09-21',6.00,0,64,1,3),(103,'2024-10-13 18:13:04','2024-09-21',6.00,0,65,1,3),(104,'2024-10-13 18:13:04','2024-09-21',6.00,0,66,1,3),(105,'2024-10-13 18:13:04','2024-09-21',5.00,0,67,1,3),(106,'2024-10-13 18:13:04','2024-09-21',5.00,0,68,1,3),(107,'2024-10-13 18:13:04','2024-09-21',2.00,0,69,1,3),(108,'2024-10-13 18:13:04','2024-09-21',3.00,0,70,1,3),(109,'2024-10-13 18:13:04','2024-09-21',4.00,0,71,1,3),(110,'2024-10-13 18:13:04','2024-09-21',4.00,0,72,1,3),(111,'2024-10-13 18:13:04','2024-09-21',5.00,0,73,1,3),(112,'2024-10-13 18:13:04','2024-09-21',5.00,0,74,1,3),(113,'2024-10-13 18:13:04','2024-09-21',5.00,0,75,1,3),(114,'2024-10-13 18:13:04','2024-09-21',5.00,0,76,1,3),(115,'2024-10-13 18:13:04','2024-09-21',6.00,0,77,1,3),(116,'2024-10-13 18:13:04','2024-09-21',6.00,0,78,1,3),(117,'2024-10-13 18:13:04','2024-09-21',6.00,0,79,1,3);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headmaster`
--

DROP TABLE IF EXISTS `headmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `headmaster` (
  `headmaster_id` bigint NOT NULL AUTO_INCREMENT,
  `school_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`headmaster_id`),
  UNIQUE KEY `UK_q98165rkm2njyi1nkm4exdw57` (`school_id`),
  UNIQUE KEY `UK_1yc5a0b2spidod9aj5ulx0hm` (`user_id`),
  CONSTRAINT `FK6mabcgpp4s03bui19tr175x5n` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKr7cojr5m03pwe65do5haqqycr` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headmaster`
--

LOCK TABLES `headmaster` WRITE;
/*!40000 ALTER TABLE `headmaster` DISABLE KEYS */;
INSERT INTO `headmaster` VALUES (1,5,15),(2,1,16),(3,2,17),(4,3,18),(5,4,19),(10,6,20);
/*!40000 ALTER TABLE `headmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klass`
--

DROP TABLE IF EXISTS `klass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klass` (
  `class_id` bigint NOT NULL AUTO_INCREMENT,
  `class_name` varchar(30) NOT NULL,
  `school_id` bigint NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `FK4cd92v419ckcm950a72sltaqi` (`school_id`),
  CONSTRAINT `FK4cd92v419ckcm950a72sltaqi` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klass`
--

LOCK TABLES `klass` WRITE;
/*!40000 ALTER TABLE `klass` DISABLE KEYS */;
INSERT INTO `klass` VALUES (1,'1А',1),(2,'1Б',1),(3,'2А',1),(4,'2Б',1),(7,'2А',2),(11,'8А',3),(14,'8А',4),(16,'8А',5),(20,'5А',6),(25,'10A',2);
/*!40000 ALTER TABLE `klass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klass_has_term`
--

DROP TABLE IF EXISTS `klass_has_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klass_has_term` (
  `klass_id` bigint NOT NULL,
  `term_id` bigint NOT NULL,
  PRIMARY KEY (`klass_id`,`term_id`),
  KEY `FK7utj4cfmr207s87drkj709g7j` (`term_id`),
  CONSTRAINT `FK7utj4cfmr207s87drkj709g7j` FOREIGN KEY (`term_id`) REFERENCES `term` (`term_id`),
  CONSTRAINT `FKka7n73yrlqej6klibcou4bw07` FOREIGN KEY (`klass_id`) REFERENCES `klass` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klass_has_term`
--

LOCK TABLES `klass_has_term` WRITE;
/*!40000 ALTER TABLE `klass_has_term` DISABLE KEYS */;
INSERT INTO `klass_has_term` VALUES (1,3),(2,3),(3,3),(4,3),(7,3),(11,3),(14,3),(16,3),(20,3),(25,3),(1,4),(2,4),(3,4),(4,4),(7,4),(11,4),(14,4),(16,4),(20,4),(25,4);
/*!40000 ALTER TABLE `klass_has_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `parent_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`parent_id`),
  UNIQUE KEY `UK_2er3k7pagjgspesr4bn7a2aa3` (`user_id`),
  CONSTRAINT `FKl4w905h1321m2ide56ov5efb0` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES (1,151),(2,152),(3,153),(4,154),(5,155),(6,156),(7,157),(8,158),(9,159),(10,160),(11,178),(12,179),(13,180),(14,181),(15,182),(16,183),(17,184),(18,185),(19,186),(20,187),(21,198),(22,199),(23,200),(24,201),(25,202),(26,203),(27,204),(28,205),(29,206),(30,207),(31,208),(32,209),(33,210),(34,211),(35,212),(36,213),(37,214),(38,215),(39,216),(40,217),(41,218),(42,219),(43,220),(44,221),(45,222),(46,223),(47,224),(48,225),(49,226),(50,227),(61,228),(62,229),(63,230),(64,231),(65,232),(66,233),(67,234),(68,235),(69,236),(70,237),(71,247),(72,248),(73,249),(74,250),(75,251),(76,252),(77,253),(78,254),(79,255),(81,256);
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_student`
--

DROP TABLE IF EXISTS `parent_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_student` (
  `parent_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`parent_id`,`student_id`),
  KEY `FK3h9b41twcc107v5me9pvdswaw` (`student_id`),
  CONSTRAINT `FK3h9b41twcc107v5me9pvdswaw` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `FKgf58e0fmkymwetklxvjxrbt6n` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_student`
--

LOCK TABLES `parent_student` WRITE;
/*!40000 ALTER TABLE `parent_student` DISABLE KEYS */;
INSERT INTO `parent_student` VALUES (1,1),(1,2),(2,3),(3,4),(4,5),(5,6),(6,6),(7,7),(7,8),(8,9),(9,10),(10,10),(11,11),(12,12),(12,13),(13,14),(14,15),(15,16),(16,17),(17,17),(18,18),(18,19),(18,20),(19,21),(19,22),(20,23),(20,24),(21,25),(21,26),(22,27),(23,28),(23,29),(23,30),(24,31),(25,32),(26,33),(26,34),(27,35),(28,36),(29,37),(30,38),(31,39),(32,40),(33,41),(34,42),(35,43),(36,44),(36,45),(37,46),(37,47),(37,48),(38,49),(39,50),(40,50),(71,51),(72,51),(73,52),(74,53),(75,53),(76,54),(77,55),(78,56),(79,57),(41,59),(42,60),(43,61),(44,62),(45,63),(46,64),(47,65),(48,66),(49,67),(50,68),(61,69),(62,70),(63,71),(64,72),(65,73),(66,74),(67,75),(68,76),(69,77),(70,78);
/*!40000 ALTER TABLE `parent_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualification` (
  `subject_id` bigint NOT NULL,
  `teacher_id` bigint NOT NULL,
  PRIMARY KEY (`subject_id`,`teacher_id`),
  KEY `FK2xwee6xhrmbhyqe5sc4y3xtt2` (`teacher_id`),
  CONSTRAINT `FK2xwee6xhrmbhyqe5sc4y3xtt2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  CONSTRAINT `FKb1rn1y0ebk54qy5yg94j5kppb` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
INSERT INTO `qualification` VALUES (1,1),(2,1),(3,1),(10,1),(12,1),(13,1),(1,2),(2,2),(3,2),(10,2),(12,2),(13,2),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(17,4),(1,7),(2,7),(3,7),(5,7),(6,7),(2,8),(7,8),(14,8),(15,8),(16,8),(17,8),(8,9),(9,9),(10,9),(11,9),(12,9),(2,10),(14,10),(15,10),(16,10),(18,10),(18,11),(19,11),(24,11),(18,12),(19,12),(1,13),(2,13),(3,13),(4,13),(5,13),(8,13),(13,13),(7,14),(8,14),(9,14),(18,15),(19,15),(20,15),(1,17),(2,17),(3,17),(4,17),(1,18),(5,18),(6,18),(7,18),(10,19),(15,19),(16,19),(8,20),(9,20),(11,21),(13,21),(17,21),(15,22),(16,22),(1,23),(2,23),(3,23),(1,24),(10,24),(13,24),(8,25),(9,25),(13,25),(14,26),(15,26),(16,26),(18,26),(20,26),(1,27),(2,27),(3,27),(4,27),(5,27),(1,28),(13,28),(2,29),(14,29),(15,29),(16,29),(5,30),(6,30),(25,31),(3,35),(4,35),(5,35),(6,35),(3,36),(4,36),(1,39),(3,39),(4,39),(5,39),(6,39);
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `authority` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_TEACHER'),(3,'ROLE_STUDENT'),(4,'ROLE_HEADMASTER'),(5,'ROLE_USER'),(6,'ROLE_PARENT');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` bigint NOT NULL AUTO_INCREMENT,
  `day_of_the_week` varchar(15) NOT NULL,
  `number_of_period` varchar(1) NOT NULL,
  `klass_id` bigint NOT NULL,
  `subject_id` bigint NOT NULL,
  `term_id` bigint NOT NULL,
  `teacher_id` bigint NOT NULL,
  PRIMARY KEY (`schedule_id`),
  FOREIGN KEY (`term_id`) REFERENCES `term`(`term_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`subject_id`) REFERENCES `subject`(`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`teacher_id`) REFERENCES `teacher`(`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (`klass_id`) REFERENCES `klass`(`class_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (3,'Понеделник','1',1,1,3,1),(4,'Понеделник','2',1,2,3,NULL),(5,'Понеделник','3',1,2,3,NULL),(6,'Понеделник','4',1,3,3,NULL),(7,'Понеделник','5',1,4,3,NULL),(8,'Понеделник','6',1,5,3,NULL),(9,'Вторник','1',1,6,3,NULL),(10,'Вторник','2',1,7,3,NULL),(11,'Вторник','3',1,8,3,NULL),(12,'Вторник','4',1,10,3,NULL),(13,'Вторник','5',1,11,3,NULL),(35,'Сряда','1',1,4,3,NULL),(36,'Сряда','2',1,5,3,NULL),(37,'Сряда','3',1,5,3,NULL),(38,'Сряда','4',1,7,3,NULL),(39,'Сряда','5',1,8,3,NULL),(40,'Четвъртък','1',1,11,3,NULL),(41,'Четвъртък','2',1,12,3,NULL),(42,'Четвъртък','3',1,1,3,NULL),(43,'Четвъртък','4',1,2,3,NULL),(44,'Четвъртък','5',1,2,3,NULL),(45,'Петък','1',1,3,3,NULL),(46,'Петък','2',1,14,3,NULL),(47,'Петък','3',1,10,3,NULL),(48,'Петък','4',1,2,3,NULL),(49,'Петък','5',1,2,3,NULL),(50,'Понеделник','1',2,4,3,NULL),(51,'Понеделник','2',2,5,3,NULL),(52,'Понеделник','3',2,5,3,NULL),(53,'Понеделник','4',2,1,3,NULL),(54,'Понеделник','5',2,1,3,NULL),(55,'Понеделник','6',2,2,3,NULL),(56,'Вторник','1',2,10,3,NULL),(57,'Вторник','2',2,10,3,NULL),(58,'Вторник','3',2,11,3,NULL),(59,'Вторник','4',2,14,3,NULL),(60,'Вторник','5',2,9,3,NULL),(61,'Сряда','1',2,1,3,NULL),(62,'Сряда','2',2,5,3,NULL),(63,'Сряда','3',2,8,3,NULL),(64,'Сряда','4',2,10,3,NULL),(65,'Четвъртък','1',2,10,3,NULL),(66,'Четвъртък','2',2,9,3,NULL),(67,'Четвъртък','3',2,8,3,NULL),(68,'Четвъртък','4',2,3,3,NULL),(69,'Четвъртък','5',2,3,3,NULL),(70,'Петък','1',2,16,3,NULL),(71,'Петък','2',2,10,3,NULL),(72,'Петък','3',2,11,3,NULL),(73,'Петък','4',2,12,3,NULL),(74,'Понеделник','1',3,2,3,NULL),(75,'Понеделник','2',3,3,3,NULL),(76,'Понеделник','3',3,16,3,NULL),(77,'Понеделник','4',3,6,3,NULL),(78,'Понеделник','5',3,3,3,NULL),(79,'Вторник','1',3,9,3,NULL),(80,'Вторник','2',3,7,3,NULL),(81,'Вторник','3',3,6,3,NULL),(82,'Вторник','4',3,2,3,NULL),(83,'Сряда','1',3,2,3,NULL),(84,'Сряда','2',3,1,3,NULL),(85,'Сряда','3',3,3,3,NULL),(86,'Сряда','4',3,5,3,NULL),(87,'Сряда','5',3,1,3,NULL),(88,'Сряда','6',3,1,3,NULL),(89,'Четвъртък','1',3,12,3,NULL),(90,'Четвъртък','2',3,17,3,NULL),(91,'Четвъртък','3',3,11,3,NULL),(92,'Четвъртък','4',3,12,3,NULL),(93,'Петък','1',3,7,3,NULL),(94,'Петък','2',3,5,3,NULL),(95,'Петък','3',3,3,3,NULL),(96,'Понеделник','1',4,3,3,NULL);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school` (
  `school_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(150) NOT NULL,
  `school_name` varchar(30) NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'гр. Бургас, ул. Транспортна 35','ОУ \"Антон Страшимиров\"'),(2,'гр. София, ул. Симеоново 4','СОУ \"Христо Смирненски\"'),(3,'гр. Стара Загора ул. Морска 82','ТГ \"Княз Симеон Търновски\"'),(4,'гр. Бургас, ул. Михаил Лермонтов 1','Търговска гимназия Бургас'),(5,'гр. Бургас, Зорница','НЕГ \"Гьоте\"'),(6,'гр. Черноморец, ул. Дружба 4','ОУ \"Христо Ботев\"'),(8,'гр. Бургас, ул. Разделителна 1','ПГАЕ \'Гео Милев\''),(10,'1234 Example Street','ПГПАЕ Гео Милев');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools_have_admins`
--

DROP TABLE IF EXISTS `schools_have_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools_have_admins` (
  `school_id` bigint NOT NULL,
  `admin_id` bigint NOT NULL,
  PRIMARY KEY (`school_id`,`admin_id`),
  KEY `FKex7uctd1bkm6h9relnyjxu2mq` (`admin_id`),
  CONSTRAINT `FKe7xdmg5vxdgupbx3a28xwfu3t` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`),
  CONSTRAINT `FKex7uctd1bkm6h9relnyjxu2mq` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools_have_admins`
--

LOCK TABLES `schools_have_admins` WRITE;
/*!40000 ALTER TABLE `schools_have_admins` DISABLE KEYS */;
INSERT INTO `schools_have_admins` VALUES (1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(8,5),(10,5);
/*!40000 ALTER TABLE `schools_have_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools_have_teachers`
--

DROP TABLE IF EXISTS `schools_have_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools_have_teachers` (
  `teacher_id` bigint NOT NULL,
  `school_id` bigint NOT NULL,
  PRIMARY KEY (`teacher_id`,`school_id`),
  KEY `FK7s1b8qcc6j1swpfvsq4vt2p2n` (`school_id`),
  CONSTRAINT `FK7s1b8qcc6j1swpfvsq4vt2p2n` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`),
  CONSTRAINT `FKjxffiqun9xwmqkua60pv657lh` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools_have_teachers`
--

LOCK TABLES `schools_have_teachers` WRITE;
/*!40000 ALTER TABLE `schools_have_teachers` DISABLE KEYS */;
INSERT INTO `schools_have_teachers` VALUES (1,1),(3,1),(4,1),(5,1),(6,1),(35,1),(36,1),(39,1),(2,2),(4,2),(5,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,3),(13,3),(14,3),(15,3),(16,3),(17,4),(18,4),(19,4),(20,4),(21,4),(22,4),(23,5),(24,5),(25,5),(26,5),(27,5),(28,5),(29,5),(30,5),(28,6),(29,6),(30,6),(31,6);
/*!40000 ALTER TABLE `schools_have_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` bigint NOT NULL AUTO_INCREMENT,
  `klass_id` bigint NOT NULL,
  `school_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `UK_bkix9btnoi1n917ll7bplkvg5` (`user_id`),
  KEY `FK2twy3nmyrws1drxbetx7d5dpp` (`klass_id`),
  KEY `FK1vm0oqhk9viil6eocn49rj1l9` (`school_id`),
  CONSTRAINT `FK1vm0oqhk9viil6eocn49rj1l9` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`),
  CONSTRAINT `FK2twy3nmyrws1drxbetx7d5dpp` FOREIGN KEY (`klass_id`) REFERENCES `klass` (`class_id`),
  CONSTRAINT `FKk5m148xqefonqw7bgnpm0snwj` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,1,1,1),(2,1,1,2),(3,1,1,3),(4,1,1,8),(5,20,6,11),(6,20,6,12),(7,2,1,70),(8,2,1,71),(9,2,1,72),(10,2,1,73),(11,2,1,74),(12,2,1,75),(13,2,1,76),(14,2,1,77),(15,3,1,78),(16,3,1,79),(17,3,1,80),(18,3,1,81),(19,3,1,82),(20,3,1,83),(21,4,1,84),(22,4,1,85),(23,4,1,86),(24,4,1,87),(25,4,1,88),(26,4,1,89),(27,4,1,90),(28,4,1,91),(29,7,2,92),(30,7,2,93),(31,7,2,94),(32,7,2,95),(33,7,2,96),(34,7,2,97),(35,7,2,98),(36,7,2,99),(37,7,2,100),(38,7,2,101),(39,11,3,102),(40,11,3,103),(41,11,3,104),(42,11,3,105),(43,11,3,106),(44,11,3,107),(45,11,3,108),(46,11,3,109),(47,11,3,110),(48,11,3,111),(49,14,4,121),(50,14,4,122),(51,14,4,123),(52,14,4,124),(53,14,4,125),(54,14,4,126),(55,14,4,127),(56,14,4,128),(57,14,4,129),(58,14,4,130),(59,16,5,131),(60,16,5,132),(61,16,5,133),(62,16,5,134),(63,16,5,135),(64,16,5,136),(65,16,5,137),(66,16,5,138),(67,16,5,139),(68,16,5,140),(69,20,6,141),(70,20,6,142),(71,20,6,143),(72,20,6,144),(73,20,6,145),(74,20,6,146),(75,20,6,147),(76,20,6,148),(77,20,6,149),(78,20,6,150),(79,4,4,283);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `subject_id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'Български език и литература'),(2,'Математика'),(3,'Човекът и природата'),(4,'Човекът и обществото'),(5,'История'),(6,'География'),(7,'Химия'),(8,'Биология'),(9,'Физика'),(10,'Изобразително изкуство'),(11,'Физическо възпитание и спорт'),(12,'Технологии и предприемачество'),(13,'Час на класа'),(14,'Компютърно моделиране'),(15,'Информационни технологии'),(16,'Информатика'),(17,'Музика'),(18,'Английски език'),(19,'Руски език'),(20,'Немски език'),(21,'Италиански език'),(22,'Испански език'),(23,'Френски език'),(24,'Китайски език'),(25,'Корейски език'),(26,'Японски език');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `UK_i5wqs2ds2vpmfpbcdxi9m2jvr` (`user_id`),
  CONSTRAINT `FKpb6g6pahj1mr2ijg92r7m1xlh` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (36,NULL),(1,4),(2,5),(3,6),(4,7),(5,13),(6,14),(7,21),(8,23),(9,24),(10,25),(11,26),(12,27),(13,30),(14,31),(15,32),(16,33),(17,34),(18,35),(19,36),(20,39),(21,40),(22,266),(23,267),(24,268),(25,269),(26,270),(27,271),(28,272),(29,273),(30,274),(31,275),(35,293),(39,294);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term`
--

DROP TABLE IF EXISTS `term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `term` (
  `term_id` bigint NOT NULL AUTO_INCREMENT,
  `term_type` tinyint DEFAULT NULL,
  PRIMARY KEY (`term_id`),
  CONSTRAINT `term_chk_1` CHECK ((`term_type` between 0 and 1))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term`
--

LOCK TABLES `term` WRITE;
/*!40000 ALTER TABLE `term` DISABLE KEYS */;
INSERT INTO `term` VALUES (3,0),(4,1);
/*!40000 ALTER TABLE `term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `account_non_expired` bit(1) NOT NULL DEFAULT b'1',
  `account_non_locked` bit(1) NOT NULL DEFAULT b'1',
  `address` varchar(150) NOT NULL,
  `birth_date` date NOT NULL,
  `credentials_non_expired` bit(1) NOT NULL DEFAULT b'1',
  `egn` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL DEFAULT b'1',
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `egn_UNIQUE` (`egn`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,_binary '',_binary '','гр. Бургас, Славейков 57','2002-07-05',_binary '','0240050717','kiwinsses@gmail.com',_binary '','Мартина','Пачелиева','MartinaP','0889452526','st.kiwinsses'),(2,_binary '',_binary '','гр. София, ул. Майор Томпсън 17','2002-04-06',_binary '','0204061948','krisi_nikilova@gmail.com',_binary '','Кристия ','Николова','$2a$12$6g3E8XA0DRniT9HgD2w6Fu1LRb6uRTJxcfq5Mdjv3jhA0fbk70B8i','0886529189','st.krisksksk'),(3,_binary '',_binary '','гр. София, ул. Опълченска 32','2002-08-18',_binary '','0248189465','anton_pantov@gmail.com',_binary '','Антон','Пантов','$2a$12$GOJPplfe9iHfc96Iz87.EevHSnCznmuTUoNEXmZuW05j6blbZCreO','0896381922','st.santonekupon'),(4,_binary '',_binary '','гр. Бургас, Славейков бл. 165','1970-07-26',_binary '','7007260519','anka_vasileva@abv.bg',_binary '','Ани','Василева','$2a$12$DKGEWRkbu7gbk4.ZX6fXp.oPkElaEYcmllRlWPE.2IsXY7IYsZb/S','0876534692','tch.ani.vasileva'),(5,_binary '',_binary '','гр. Бургас, Изгрев, бл. 10','1975-05-10',_binary '','7505102319','dimitur_djungurov@abv.bg',_binary '','Димитър','Джунгуров','$2a$12$iw4LF/PpCmvcD20IsmsiLOhQdMoHvIq97Gdkup/gtDeoKv1S3PCkO','0882318192','tch.dimitar.jungurov'),(6,_binary '',_binary '','гр. Бургас, Меден Рудник бл. 97','1982-08-19',_binary '','8208193213','katya_holy_slavova@abv.bg',_binary '','Катя','Славова','$2a$12$Gx6bKf8.O2TBL0Rioao7SedZC3HMtBqC/OkjMOC.WTJ8R8kt/RuOS','0896872869','tch.katya.slavova'),(7,_binary '',_binary '','гр. Бургас, Зорница, бл. 15','1978-05-19',_binary '','7805192365','hadji_katya_oncheva@abv.bg',_binary '','Катя','Ончева','$2a$12$x50ravLA2O9x8wtm1lft9e7WLRp9J56Xs8Pn5ecsouERWjV2WHTP6','0871914681','tch.katyq.oncheva'),(8,_binary '',_binary '','гр. Бургас, Славейков, бл. 13','2002-02-10',_binary '','0202102353','hrisi_ev@gmail.com',_binary '','Хриси','Евтимова','$2a$12$kx5yU/uHbSvYDprxc3yEn.uX6X3JEm2.PwRmuXQ7wXiL98YQ67Xj.','0885524252','st.hrisi.ev'),(9,_binary '',_binary '','гр. Варна, ул. Ропотамо 41','1991-04-10',_binary '','9104103467','niki_tenev@yahoo.com',_binary '','Николай ','Тенев','admin.niki','0887217431','admin1.niki'),(10,_binary '',_binary '','гр. Силистра, ул. Сен Тропе 5','1992-06-28',_binary '','9206280537','polaroids@yahoo.com',_binary '','Мария','Пачелиева','admin.mimsi','0883572180','admin2.mimi'),(11,_binary '',_binary '','гр. Черноморец, ул. Албатрос 3','2006-12-30',_binary '','0612305423','katina.p@gmail.com',_binary '','Катина','Парашкова','$2a$12$/nluxHQ7RGL9NqFIlyrWiugFKCeWkuUslcn0rXqV6rfKnqdrlehXK','0873518392','st.katiqkoparti'),(12,_binary '',_binary '','гр. Черноморец, ул. Феникс 14','2007-11-04',_binary '','0711042411','kalina_ench@gmail.com',_binary '','Калина','Енчева','$2a$12$Dc55WttjGuBVOA1/ANSzUu0eSw6nL3VNPJFY6GF40Do4DP1BtnU0W','0872141476','st.kalinka.ench'),(13,_binary '',_binary '','гр. Черноморец, ул. Морска 7','1985-03-13',_binary '','8503139423','rosa_kostova@abv.bg',_binary '','Роза','Костова','$2a$12$G5JdzGcb70tlfmOeDw2wheHeuqE567Vbh4jQ3HIQn5jk3NaRl7DIS','0882393181','tch.rosa.kostova'),(14,_binary '',_binary '','гр. Черноморец, ул. Синдикат 24','1970-06-18',_binary '','7006183295','mariya_kiryqkova@abv.bg',_binary '','Мария','Кирякова','$2a$12$3fV48k8iWwayXW/vmKzJ2uz4/TMdsEvuLKPQuCh7ntfc7TDlZV5ki','0892458124','tch.mariya.kiryqkova'),(15,_binary '',_binary '','гр. Бургас, ул. Кирил и Методий 8','1965-12-26',_binary '','6512260793','veselina_radeva@abv.bg',_binary '','Веселина','Радева','$2a$12$ZoAT.a2oXBM0fPvoNOXbTOUit/irlnU6hE6GXF21NIooE5R/SqfNG','0882718104','hm.veselina.radeva'),(16,_binary '',_binary '','гр. Бургас, ул. Транспортна ','1971-03-05',_binary '','7103052495','dani_hristova@abv.bg',_binary '','Даниела','Христова','$2a$12$1T.awRPB86aj0wOBjz7mDu99pVa3p1dC2nKB.Y2/ycWPLeRy4QMRm','0893827193','hm.daniela.hristova'),(17,_binary '',_binary '','гр. София, ул. Симеоново 47','1985-06-30',_binary '','8506302394','a_ngl@abv.bg',_binary '','Ани','Ангелова','$2a$12$lWfNpR2N4lz8bzKKEh1Avu4RR7JEyXDE5N589Se66OwZLNBM.hRvy','0893782143','hm.ani.angelova'),(18,_binary '',_binary '','гр. Стара Загора, ул. Стефан Стамболов 20','1976-11-23',_binary '','7611234034','venci_stoikov76@abv.bg',_binary '','Венци','Стойков','$2a$12$oGUM3cGWlDc2RNk6rXnvhu8kCnyYovBj0KYV7tD1VGBR5YrzRbgUi','0887529321','hm.venci.stoikov'),(19,_binary '',_binary '','гр. Бургас, Меден Рудник бл.38','1988-07-09',_binary '','8807093223','martin_turg@abv.bg',_binary '','Мартин','Търговски','$2a$12$RZ/gkySK7c83HYY7dTk1CeUD1T0soxQyqatHpN6XarRoAKQFiGMWi','0892314718','hm.martin.turgovski'),(20,_binary '',_binary '','гр. Черноморец, ул. Семестриална 15','1991-05-30',_binary '','9105302413','iordanka_nikolova@abv.bg',_binary '','Йорданка','Николова','$2a$12$gy4ebDxpwCf/NP8qiJ0JtOOesV0RBufLBRASpyfY49WSW1qAZmlG.','0885340231','hm.iordanka.nikolova'),(21,_binary '',_binary '','гр. Бургас, ул. Разделителна 14','1985-08-19',_binary '','8508194355','irinka_chakurova@abv.bg',_binary '','Иринка','Чакъърова','$2a$12$UGdWvFc.SuZ45I9SVtWDmeQNJ1ZeLyLSvqp6iMnLQpFMcq3Jtj6/O','0884354123','tch.irinka.chakurova'),(23,_binary '',_binary '','гр. Бургас, ул. Христо Ботев 45','1965-06-29',_binary '','6506293454','vanko_geografiqta@abv.bg',_binary '','Иван','Стоилов','$2a$12$HzmuOicVvBT7yw.2kZSIl.azFgjuuQgz7c86S/r.tSXl/nQv4DiOS','0884722314','tch.ivan.stoilov'),(24,_binary '',_binary '','гр. Бургас, ул. Мария Луиза','1989-02-18',_binary '','8902182343','radostina_todorova@abv.bg',_binary '','Радостина','Тодорова','$2a$12$cyyZRpAQaJTHdxse7lVYXuQXRsfICmbGzMv.u.K7ZJ8404QvOSQJq','0872322132','tch.radost.todorova'),(25,_binary '',_binary '','гр.  Бургас, ул. Дрин 20','1986-10-20',_binary '','8610204365','vanya_kiten@abv.bg',_binary '','Ваня','Китенова','$2a$12$ZzVpR8fxx0aLlJiveUzK4O0cV4W1l4l51o7pqwZhlk0u64OYvjOTC','0893258312','tch.vanya.kitenova'),(26,_binary '',_binary '','гр. Бургас, ул. София 1','1950-12-01',_binary '','5012015644','adelina_radevka@abv.bg',_binary '','Аделина','Радева','$2a$12$STT4sHsAFMFENGzHuPZ2J.3RRCMOD1Zb6FhG1S7yflxUn3.ii9hNa','0884732382','tch.adelina.radeva'),(27,_binary '',_binary '','гр. Бургас, ул. Македония 60','1977-05-29',_binary '','7705295465','topka_petrova@abv.bg',_binary '','Тонка','Петрова','$2a$12$Pr2xSoEt10ByprUk1pftz.Uz025ZZ7SjE/7qZiHFgeKMNjqIGMING','0884372331','tch.tonka.petrova'),(30,_binary '',_binary '','гр. София, ул. Цар Симеон 70','1969-04-03',_binary '','6904032453','hristotodor@abv.bg',_binary '','Христо','Тодоров','$2a$12$1Ei4a9teEacSqBt9iQAWZ.5..tURkuE6Iv.auhpRhhtSrFholatR2','0893713142','tch.hristo.todorov'),(31,_binary '',_binary '','гр. София, ул. Иван Асен 17','1988-06-22',_binary '','8806224465','kristiqna_vslv@abv.bg',_binary '','Кристияна','Василева','$2a$12$7fxXwVgX7h/jwCVUewedEuMa7XXXXm9nEex9fxgavoYIZnIW6Ogkq','0892314356','tch.kristiqna.vasil'),(32,_binary '',_binary '','гр. София, ул. Васил Левски 3','1999-09-19',_binary '','9909192334','angel_bql@abv.bg',_binary '','Ангел','Белорешки','$2a$12$TDX6hr/8x3dYDk.gaNLWO.m1QQq3dvV2N5o.jHHEWuObPXUbEil7S','0893712134','tch.angel.beloreshki'),(33,_binary '',_binary '','гр. София, ул. Ивайло 9','1989-08-18',_binary '','8908182355','danito_ruseva@abv.bg',_binary '','Даниела','Русева','$2a$12$JswDsJnKs7yR8KN3Uzdp2u9qYWvqq2HkyGwwGUpgG6TZ4VHvzJdW.','0882371329','tch.daniela.ruseva'),(34,_binary '',_binary '','гр. Стара Загора, ул. Кристал 2','1998-03-18',_binary '','9803183291','deni_vasileva@abv.bg',_binary '','Деница','Василева','$2a$12$elHRIP0vxgnjgUy9xEe5DOFcM7ZdZvkCd4.6aIhEUzqB21tvxBxT.','0893275721','tch.daniela.vasileva'),(35,_binary '',_binary '','гр. Стара Загора, ул. 6-ти септември 6','1983-03-18',_binary '','8303183254','svetla_ndlchv@abv.bg',_binary '','Светла','Неделчева','$2a$12$dV6g8XdsBNX67cjnqrx1besUpp/xo2YDdm2KtOsJtdyMEo4CfnR2e','0872636261','tch.svetla.nedelchv'),(36,_binary '',_binary '','гр. Стара Загора, ул. Китен 5','1970-08-19',_binary '','7008192311','todko_madj@abv.bg',_binary '','Тодор','Маджаров','$2a$12$AMXWkXGoVacOUH65FvYMuulege0j43q/29fmjTcQWSA7Bht2n8OaW','0882717617','tch.todor.madjarov'),(39,_binary '',_binary '','гр. Стара Загора, ул. Васил Априлов 7','1978-07-18',_binary '','7807182732','hristo_ganev@abv.bg',_binary '','Христо','Ганев','$2a$12$8IeKkKvHZgMSrfB.6tCIMuIA/oTPXw/xOxWPWMT6d/CilBJd.qSnG','0838371833','tch.hristo.ganev'),(40,_binary '',_binary '','гр. Стара Загора, ул. Военна 22','1997-09-15',_binary '','9709152354','gegi_tdrv@abv.bg',_binary '','Гергана','Тодорова','$2a$12$8.JxziITjk7oXveuCdMoMu30dcwZ20PRE/NMEXl3Sylf4Xpfaicoq','0882938471','tch.gerg.todorova'),(69,_binary '',_binary '','гр. Бургас, ул. Нямам Идеи 1','2017-08-01',_binary '','1708019320','zaiko_baiko@gmail.com',_binary '','Елисавета','Зайкова','$2a$12$trUFeCLVvTx7r1LhW3lDeerSRw4m6kzQHtMJIfkOlcEPmCidLRKZe','0889372738','st.elisaveta.zaikova'),(70,_binary '',_binary '','гр. Бургас, ул. Нямам Идеи 1','2017-08-02',_binary '','1708029321','valko_chekiqta@gmail.com',_binary '','Валери','Чекиев','$2a$12$Qc5rRu9hO8kBbBkS3K2l6eg8W1gBmQoaWE0rY.zQ3nbJMZKZRWaCW','0882626377','st.valeri.chekiev'),(71,_binary '',_binary '','гр. Бургас, ул. Улична Лампа 2','2017-08-04',_binary '','1708044315','levi_desni_aslan@gmaail.com',_binary '','Вели','Аслан','$2a$12$6k54SETyLXtVNA/OdHV.JeAgWOiIRvPKx06hylB9XDyPMUI7YcxdO','0881737131','st.veli.aslan'),(72,_binary '',_binary '','гр. Бургас, ул. Конус 3','2017-09-01',_binary '','1709013433','deila_georgiika@gmail.com',_binary '','Диляна','Георгиева','$2a$12$U2n9uF6.Exkk/C5xVUvkYOvcDEJUpJmlQjwMrS3lKBibTHKGgPxBi','0989487272','st.dilqna.geoergieva'),(73,_binary '',_binary '','гр. Бургас, ул. Строителна 4','2017-02-02',_binary '','1702029843','krisko_beats@gmail.com',_binary '','Кристиян','Бийтов','$2a$12$1jahJS/sGrKmc7CxIuJfG.EscXxrgRTrGBYWKDlYzfMNOt6sw3PgO','0883727312','st.kristiyan.biitov'),(74,_binary '',_binary '','гр. Бургас, ул. Черноморка 23','2017-09-09',_binary '','1709093452','skibidi_toilet@gmail.com',_binary '','Майкъл','Тодоров','$2a$12$k35kBWzp7VSZ1bkkT6uit.citxNlSU6tI5Cx2HUwgl3xGPUncfznC','0893272727','st.michael.todorov'),(75,_binary '',_binary '','гр. Бургас, ул. Знаме 30','2018-08-08',_binary '','1808084736','rizzlerrr@gmail.com',_binary '','Симеон','Величков','$2a$12$Q1ocdnCXufswxAiMM.nnEO9O5hs/D13GxU0d7JkWCNs2iUWdnAzFe','0882737233','st.simeon.velichkov'),(76,_binary '',_binary '','гр. Бургас, ул. Крепост 1','2018-09-09',_binary '','1809094732','gen_alpha_slang@gmail.vom',_binary '','Робърт','Христов','$2a$12$XQgXOlN9lZRwEPJulppXA.ioCXRYltlKGafrY/zdwrPPbDJ7pt0Wq','0837372732','st.robert.hristov'),(77,_binary '',_binary '','гр. Бургас, ул Цар Симеон 5','2017-07-07',_binary '','1707070384','sephora_g1rll@gmail.com',_binary '','Санам','Челикли','$2a$12$IRMcXSXdfXJItlsaPObS0ezq5QphWdWAm6SbFgTDdxETmrAJwTPyy','0893727722','st.sanam.chelikli'),(78,_binary '',_binary '','гр. Бургас, ул. Стефанов 4','2016-01-01',_binary '','1601012244','maria_elephant@gmail.com',_binary '','Мария','Слонова','$2a$12$KjbJP25b1.9KxWwHsesqr.drM6QuZIEHGMueGtkkeHRK86XLatnbe','0882377312','st.mariaslovona'),(79,_binary '',_binary '','гр, Бургас, ул. Красно Село 10','2016-02-02',_binary '','1602022434','steph_mota@gmail.com',_binary '','Стафани','Мореева','$2a$12$vFBeDnv0m1717aZVoAtE4uvyEHkF6SUxvXkpsp4Mj5jFkUttpa8g2','0883737228','st.stephanie.moreeva'),(80,_binary '',_binary '','гр. Бургас, ул. Костинброд 2','2016-03-03',_binary '','1603035765','veliz_stoiko@gmail.com',_binary '','Велизар','Стойков','$2a$12$LEa0.xKg2RkFJBhqi4dDculSmAjJJQHMuwDJG2Ik4PHf2LPHilvSW','0891638524','st.velizar.stoikov'),(81,_binary '',_binary '','гр. Бургас, ул. Строителна 10','2016-06-06',_binary '','1606063243','boian_bie@gmail.com',_binary '','Боян','Аспарухов','$2a$12$JdzX9vIw/BMw8WkvwkWLK.xggAz4aES5xaaYTfoLjFOwo6Hf63E5O','0882237173','st.boian.asparuhov'),(82,_binary '',_binary '','гр. Бургас, ул. Черноморка 2','2016-05-05',_binary '','1605059283','skibidi_stoian@gmail.com',_binary '','Стоян','Маринов','$2a$12$IOXIcoza7aE3IbFhlI01U.xsoMCUGfGg0ZfVbucIptRTUHaUCxfvK','0892381313','st.stoian.marinov'),(83,_binary '',_binary '','гр. Бургас, ул. Улична Лампа 4','2016-04-04',_binary '','1604044828','valko_malko@gmail.com',_binary '','Валентин','Чолаков','$2a$12$HuoUv6V9hScqxQiKVOPrYeLYpSalQ4E80nyQ5Q.B3FL2oWnQgov2S','0882121211','st.valentin.cholakov'),(84,_binary '',_binary '','гр. Бургас, ул. Стефанов 4','2016-07-07',_binary '','1607073468','stefan_g@gmail.com',_binary '','Стефан','Георгиев','$2a$12$WlGcyiDWUvUeQC1xwEnzhuNeYF423zp.vm3xIO61kO7kKuDMlzuf2','0848939422','st.stephan.georgiev'),(85,_binary '',_binary '','гр, Бургас, ул. Красно Село 10','2016-08-08',_binary '','1608085643','svet_valko@gmail.com',_binary '','Светлин','Валкова','$2a$12$o/kjI9YFRtsugIciLP0/s.a6g62BGhR2wfYpVE8OOcbEtPIuFlAaq','0894374232','st.svetlin.balkov'),(86,_binary '',_binary '','гр. Бургас, ул. Знаме 30','2016-09-09',_binary '','1609094533','zerin_ahamat@gmail.com',_binary '','Зерин','Ахматова','$2a$12$hJ9t1hUcDuzv1xCOrPnQSeIvk/TZice0aVAuwLzQODwwW.P4tAAJK','0884343424','st.zerin.ahmatova'),(87,_binary '',_binary '','гр. Бургас, ул. Костинброд 2','2016-10-10',_binary '','1601010365','koceto0@gmail.com',_binary '','Костадин','Илиев','$2a$12$tMBefdiBDvR.tGLTUjxbpOns0NuYbJp6aS7n6MpGSwooWVl3Jwy.e','0889272658','st.kostadin.iliev'),(88,_binary '',_binary '','гр. Бургас, ул. Ветрен 34','2016-01-02',_binary '','1601025454','emi_bademi@gmail.com',_binary '','Ема','Неделчева','$2a$12$X2jWBeVAx2E7lza8sZMb3ufNDP.mtdCA7jCTvUXgRz04Dc6wlsk8S','0884948234','st.ema.nedelcheva'),(89,_binary '',_binary '','гр. Бургас, ул. Асен Златарски 3','2016-01-03',_binary '','1601034352','izi_pizi@gmail.com',_binary '','Изабел','Янакиева','$2a$12$55Isxwm29.IOrns7h.aPuOvAX6mZNoaoHzfsm0DeFk7giOZ/yix7m','0884903423','st.izabel.yanakieva'),(90,_binary '',_binary '','гр. Бургас, кв. Славейков, бл 20','2016-01-04',_binary '','1601043543','andi_pandi@gmail.com',_binary '','Анреа','Николова','$2a$12$Om.O8fAtugc5na3Qx5flkOtkSREPnuo4X4cn3IF2vxZFfLe.BT4hm','0883920303','st.andrea.nikolova'),(91,_binary '',_binary '','гр. Бургас, кв. Зорница, бл.1','2016-01-05',_binary '','1601056059','radost_smile@gmail.com',_binary '','Радост','Костова','$2a$12$HyqJyuvMvhCVq2xUq6JSMOG6bOgO1f8JX6LJwCWsKF2ZdI2dJVaTm','0899382323','st.radost.kostova'),(92,_binary '',_binary '','гр. Бургас, ул. „Александър Батенберг“ 10 ','2016-03-15',_binary '','1603151234','ivan.ivanov@example.com',_binary '','Иван','Иванов','$2a$12$55hW9y0IBnsZWw.WfUEx5eQHVrhmBMC3go4ol.3MU.7XQ/PGAvBOC','0882731613','st.ivan.ivanov'),(93,_binary '',_binary '','гр. Бургас, ул. „Цар Симеон“ 15','2016-07-22',_binary '','1607222345','maria.petrova@example.com',_binary '','Мария','Петрова','$2a$12$cWhJafDFxfo1GW4zuHcYUOi6axatBGQpolJCDQcPR/3LAG4hmmpoG','0889623541','st.maria.petrova'),(94,_binary '',_binary '','гр. Бургас, ул. „Васил Левски“ 5','2016-01-05',_binary '','1601053456','georgi.georgiev@example.com',_binary '','Георги','Георгиев','$2a$12$6AZuAJ7HlULqjBREsH4MgutQupOyzvLupyaqDHV/pMnfAECtBRPOu','0892717221','st.georgi.georgiev'),(95,_binary '',_binary '','гр. Бургас, ул. „Христо Ботев“ 12','2016-09-18',_binary '','1609184567','elena.nikolaeva@example.com',_binary '','Елена','Николаева','$2a$12$KnPD7z3v/xDnaa.MPZ9KY.sYcaWAP7AcLYLDkySvZz4e9W4E4jXxi','0886523514','st.elena.nikolaeva'),(96,_binary '',_binary '','гр. Бургас, ул. „Александър Малинов“ 8','2016-04-11',_binary '','1604115678','nikolay.dimitrov@example.com',_binary '','Николай','Димитров','$2a$12$EOvfIVFG3hMXLAiv56PHbOaoFkuq52R9wmUU1e.xbFmTUXh9w/Bkm','0886421593','st.nikoly.dimitrov'),(97,_binary '',_binary '','гр. Бургас, ул. „Славянска“ 3','2016-06-25',_binary '','1606256789','desislava.ivanova@example.com',_binary '','Десислава','Иванова','$2a$2a$12$9weGDwJaab2LYyYYXOusyOP431HIKxFaX3LveQnPlk5csErNzk6M6','0886534889','st.desislava.ivanova'),(98,_binary '',_binary '','гр. Бургас,  ул. „Гладстон“ 6','2016-11-03',_binary '','1611037890','petar.vasilev@example.com',_binary '','Петър','Василев','$2a$12$bUMkWz1.5p7Wc9/2z9jJDOXaqmHO99zi6bR7YbXwia3J62mBRGLyi','0886523175','st.petar.vasilev'),(99,_binary '',_binary '','гр. Бургас, ул. „Княз Борис I“ 18','2016-05-14',_binary '','1605148901','katerina.doneva@example.com',_binary '','Катерина','Донева','$2a$12$5q77JowonJBOQo5PZNnd4OBak96agoxv9vwV6ftgb.CEPo6NRESk.','0881253255','st.katerina.doneva'),(100,_binary '',_binary '','гр. Бургас, ул. „Генерал Гурко“ 11','2016-08-07',_binary '','1608079012','borislav.stoykov@example.com',_binary '','Борислав','Стойков','$2a$12$35B.1JQUCTi9TRZC2AA93eb8b2p6/ZvfzkLfdf5y7aLn8Nqit4wee','0889236712','st.borislav.stoykov'),(101,_binary '',_binary '','гр. Бургас,  ул. „Богориди“ 9','2016-12-30',_binary '','1612300123','vanya.stefanova@example.com',_binary '','Ваня','Стефанова','$2a$12$5seNzrQz1TdYoBx49DpjFevSHi689MoWY9if382zLPtCVCCzFLP7q','0889613551','st.vanya.stefanova'),(102,_binary '',_binary '','гр. Стара Загора, ул. „Генерал Столетов“ 20','2010-02-12',_binary '','1002121234','alexander.petrov@example.com',_binary '','Александър','Петров','$2a$12$7EWoUWA7.BuA1ecf0m3di.5/QPuDby1GKj.y9W2P9n6JeM0LvVXZu','0886451252','st.aleksander.stef'),(103,_binary '',_binary '','гр. Стара Загора, ул. „Цар Симеон Велики“ 18','2010-05-29',_binary '','1005292345','viktoria.stoyanova@example.com',_binary '','Виктория','Стоянова','$2a$12$F7AgejS9AP9p9L8QiFFBoegbxOQOMIyWydGntYbl2azCgBQGahIOi','0889212335','st.vik.stoyanova'),(104,_binary '',_binary '','гр. Стара Загора, ул. „Свети Княз Борис“ 7','2010-08-03',_binary '','1008033456','dimitar.ivanov@example.com',_binary '','Димитар','Иванов','$2a$12$pxkKQFH9lUX5A49zA7za9eNOlIMXjeKai.1n0tRgIPq4/.E7q9INu','0892223541','st.dimitar.ivanov'),(105,_binary '',_binary '','гр. Стара Загора, ул. „Митрополит Методи Кусев“ 25','2010-10-17',_binary '','1010174567','ani.georgieva@example.com',_binary '','Ани','Георгиева','$2a$12$.Mw3eW/SHhhakiLKpn2eDOHftLRIu9CgO/Uvd3Ku0qTXdpZ2BGH92','0889732611','st.ani.georgieva'),(106,_binary '',_binary '','гр. Стара Загора, ул. „Христо Ботев“ 3','2010-03-06',_binary '','1003065678','kristiyan.dimitrov@example.com',_binary '','Кристиян','Димитров','$2a$12$Rf.BZX5AkjfO/zi29OPsWu6JZpGqSmjD6C2M9zU6afd6b/lo2wvbW','0886317556','st.kris.dimitrov'),(107,_binary '',_binary '','гр. Стара Загора, ул. „Васил Левски“ 9','2010-06-21',_binary '','1006216789','emilia.nikolaeva@example.com',_binary '','Емилия','Николаева','$2a$12$.3lNl.4yFGx6a6maYnA4sej1nhCgUST4udTMybY9yW4PJg3tVlvRq','0886421329','st.emilia.nikolaeva'),(108,_binary '',_binary '','гр. Стара Загора, ул. „Свети Княз Борис“ 14','2010-11-10',_binary '','1011107890','pavel.simeonov@example.com',_binary '','Павел','Симеонов','$2a$12$oItPw4NosE90oQyBKKXRG.VtguGpMP7sx1BRAOI9UBEb8Glh0MohO','0886459122','st.pavel.simeonov'),(109,_binary '',_binary '','гр. Стара Загора, ул. „Генерал Столетов“ 6','2010-04-04',_binary '','1004048901','milena.ivanova@example.com',_binary '','Милена','Иванова','$2a$12$S6A68Udfr/LSxi3uYfPVT.UyvYihCHv/683Q1pj/eJWUIFWNQl1nO','0886311325','st.milena.ivanova'),(110,_binary '',_binary '','гр. Стара Загора, ул. „Митрополит Методи Кусев“ 11','2010-09-19',_binary '','1009199012','stefan.georgiev@example.com',_binary '','Стефан','Георгиев','$2a$12$xtYVZ5a2Qxl9VdAYxlQmAeLMTmMdWJvmmZ3FN9fuWl6hyoyja4Qdi','0881213691','st.stafen.georgiev'),(111,_binary '',_binary '','гр. Стара Загора, ул. „Генерал Столетов“ 2','2010-12-28',_binary '','1012280123','tsvetelina.doneva@example.com',_binary '','Цветелина','Донева','$2a$12$JEUPvNTY3Ufczr5NaczbEurFYhhbbVCJJtDAmRHe8hIbBYlS/Yur.','0883154522','st.tsv.doneva'),(121,_binary '',_binary '','гр. Бургас, ул. „Гладстон“ 14','2010-03-05',_binary '','1003151234','borislav.petrov@example.com',_binary '','Борислав','Петров','$2a$12$Y6oPp/RWQCzafMNN4phaN.hRQ.MiRmxPx20BLQYxE1lnn6cm6vbgG','0886522513','st.borislav.etrov'),(122,_binary '',_binary '','гр. Бургас, ул. „Цар Симеон I“ 22','2010-06-07',_binary '','1006072345','elitsa.ivanova@example.com',_binary '','Елица','Иванова','$2a$12$inD4NRXn6y76WZ/Z3xFyy.JoxHdH170WRTQN31sIip6uCL4iwy0PC','0886532332','st.elitsa.ivanova'),(123,_binary '',_binary '','гр. Бургас, ул. „Александър Батенберг“ 8','2010-09-20',_binary '','1009203456','georgi.stoyanov@example.com',_binary '','Георги','Стоянов','$2a$12$xzjjt/Bvbpwj2J/Ykp3PE.nSjBJMwdC1e0eXedpX7ZitMB7Ugam9e','0889642141','st.georgi.stoyanov'),(124,_binary '',_binary '','гр. Бургас, ул. „Христо Ботев“ 17','2010-12-11',_binary '','1012114567','maria.georgieva@example.com',_binary '','Мария','Георгиева','$2a$12$nYLXlwlxjxc73D7smid9wuNgn.sPocVZrIxus6OzcxraYfBkXGBR2','0886279125','st.maria.georgieva'),(125,_binary '',_binary '','гр. Бургас, ул. „Александър Малинов“ 3','2010-04-03',_binary '','1004035678','ivan.dimitrov@example.com',_binary '','Иван','Димитров','$2a$12$yY1KJk04ODXjx4wjO7d46eINsCuiGhaIWQu6ri/HQ/sovmsp8qQW6','0886147236','st.ivan.dimitrov'),(126,_binary '',_binary '','гр. Бургас, ул. „Славянска“ 16','2010-07-05',_binary '','1007256789','viktoria.nikolova@example.com',_binary '','Виктория','Николова','$2a$12$awx1KTNC6iA8GIxdg1zkVui/5pwinCuovpesfvw1jEXeyv5XHSlwu','0892147623','st.viktoria.nikolova'),(127,_binary '',_binary '','гр. Бургас, ул. „Генерал Гурко“ 19','2010-08-30',_binary '','1008307890','kaloyan.simeonov@example.com',_binary '','Калоян','Симеонов','$2a$12$WFOSQ5A5zw9oRZXZq0TYpefxRgqFrSiom9IIGpHFBE6XKfiNPoCwK','0880512305','st.kaloyan.simeonov'),(128,_binary '',_binary '','гр. Бургас, ул. „Княз Борис I“ 11','2010-11-12',_binary '','1011128901','petya.petrova@example.com',_binary '','Петя','Петрова','$2a$12$oLzOyMChmz6FfppBvuDbAexv3Uo.GLMztJIZ0sPA8Vnp6v2yI6Bl2','0899623021','st.petya.petrova'),(129,_binary '',_binary '','гр. Бургас, ул. „Александър Батенберг“ 4','2010-01-07',_binary '','1001079012','nikolay.ivanov@example.com',_binary '','Николай','Иванов','$2a$12$JI6zIhwm0xU4knc6Yo4o2eC/NAkekRqqmXMqkcT0QitpD8YYAu3ey','0885230545','st.nikolay.ivano'),(130,_binary '',_binary '','гр. Бургас, ул. „Богориди“ 13','2010-02-28',_binary '','1002280123','elena.doneva@example.com',_binary '','Елена','Донева','$2a$12$1dyIhMGwPtMr/GJevJWD1OPC/3h9d7n4612EiVbFLZiko5J0VMuuS','0888510694','st.elena.doneva'),(131,_binary '',_binary '','гр. Бургас, л. „Александър Малинов“ 10','2010-01-22',_binary '','1001221234','alexander.ivanov@example.com',_binary '','Александър','Иванов','$2a$12$KYcNj3aPOauccckA/WgVoetxdsPAGXpe7Y5lsuxDUZwSa96LCjNB2','0886621476','st.alexander.ivanov'),(132,_binary '',_binary '','гр. Бургас, ул. „Цар Симеон I“ 5','2010-02-15',_binary '','1002152345','viktoria.petrova@example.com',_binary '','Виктория','Петрова','$2a$12$V12IFyV2GHAt21mlNqN3X.fCWAxWguzpfQRL0Mw03He6C0NxCQo/O','0895201235','st.viktoria.petrova'),(133,_binary '',_binary '','гр. Бургас, ул. „Генерал Столетов“ 3','2010-03-18',_binary '','1003183456','georgi.dimitrov@example.com',_binary '','Георги','Димитров','$2a$12$MJoDkHV53d3.Nn4HqJdbeeuj8K.V8XgPer/d/SU8P/tp/ukydwVvW','0890065321','st.gerogi.dimitrov'),(134,_binary '',_binary '','гр. Бургас, ул. „Александър Батенберг“ 7','2010-04-25',_binary '','1004254567','maria.stoyanov@example.com',_binary '','Мария','Стоянова','$2a$12$q..2XjFIQH4j4jl.JlC.w.hGmo.L7tDHtEoXE2yqzp3QuvlGW7o1.','0886530951','st.maria.stoyanova'),(135,_binary '',_binary '','гр. Бургас, ул. „Христо Ботев“ 12','2010-05-30',_binary '','1005305678','ivan.georgievv@example.com',_binary '','Иван','Георгиев','$2a$12$FI7Ppz64FJF/DH/IXWhrauUZTfhUthxq0EsRna13P1/f7/ojEbVBe','0885126681','st.ivan.georgev'),(136,_binary '',_binary '','гр. Бургас, ул. „Митрополит Борис“ 19','2010-07-21',_binary '','1006136789','elena.petrova@example.com',_binary '','Елена','Петрова','$2a$12$D7oFQiWqS7S0s/3/52OT2.nm0i2V4SVw/cap01r9okCwn.mWQXv0G','0881754194','st.elena.petrov'),(137,_binary '',_binary '','гр. Бургас, ул. „Генерал Гурко“ 6','2010-07-21',_binary '','1007217890','nikolay.nikolo@example.com',_binary '','Николай','Николов','$2a$12$ZY1jDgeolVRAQtzR2g6j/.L5G2jgaBCmE3OUFBveL4MPko15lMJda','0886232471','st.nikolay.nikol'),(138,_binary '',_binary '','гр. Бургас, ул. „Княз Борис I“ 18','2010-08-02',_binary '','1008028901','petya.dimitrov@example.com',_binary '','Петя','Димитрова','$2a$12$k1Azr0UpoDhuOkaA3Npfa.UIEkoWOKyGzcdkmh7fv50uavbHrDR/C','0888774545','st.petya.dimitrov'),(139,_binary '',_binary '','гр. Бургас, ул. „Гладстон“ 9','2010-09-14',_binary '','1009149012','stefan.ivan@example.com',_binary '','Стефан','Иванов','$2a$12$MkUegmbhF/Jbbzo/4d3CHeAQ7DvTN66VpOxZ76fOg92I3o8vqS9Ke','0552329599','st.stefan.ivanov'),(140,_binary '',_binary '','гр. Бургас, ул. „Богориди“ 21, 8000','2010-10-28',_binary '','1010280123','diana.georgieva@example.com',_binary '','Диана','Георгиева','$2a$12$tgwwazIeO0C1.knbuKE6xezZOrUUTDZXmKfSxoalO0BN11ZylYAAi','0889523227','st.diana.georgieva'),(141,_binary '',_binary '','гр. Черноморец, ул. „Александър Малинов“ 10','2012-01-22',_binary '','1201221234','alexandra.ivanova@example.com',_binary '','Александра','Иванова','$2a$12$P2E836I5AaGTbIZoy6Fgce93Hnghp7.6wFe8A1x3e.E40N8aRhgrW','0886547923','st.alexandra.ivanova'),(142,_binary '',_binary '','гр.Черноморец, ул. „Цар Симеон I“ 5','2012-02-15',_binary '','1202152345','viktor.petrov@example.com',_binary '','Виктор','Петров','$2a$12$EjKbtVhe23VgZ1DEwsNEUeumYP/hlJWqBcg.pD2/kBOmbrFii2QoC','0886239471','st.viktor.petrov'),(143,_binary '',_binary '','гр.Черноморец, ул. „Генерал Столетов“ 3','2012-03-18',_binary '','1203183456','georgi.dimitrov1@example.com',_binary '','Георги','Димитров','$2a$12$KlgjuCdOAOhCAL9pnl663O.MLNi5vS1GoBvXDaKXiDxeklozr8Dxm','0883954752','st.georgi.dimitrov'),(144,_binary '',_binary '','гр. Черноморец, ул. „Александър Батенберг“ 7','2012-04-25',_binary '','1204254567','maria.stoyanova@example.com',_binary '','Мария','Стоянова','$2a$12$7dFyO2QysMymAmTWvO1yF.ukF0UEMUHBYx/Sxp2J64Z99vL5WrO4.','0889623247','st.maria.stoyanov'),(145,_binary '',_binary '','гр. Черноморец, ул. „Христо Ботев“ 12','2012-05-30',_binary '','1205305678','ivan.georgiev@example.com',_binary '','Иван','Георгиев','$2a$12$ybvuzZRtHfb.F2438mVsMO4huzXuRDLpMKqgBXqyidW7BWaDK4piC','0896532578','st.ivan.georgiev'),(146,_binary '',_binary '','гр. Черноморец, ул. „Митрополит Борис“ 19','2012-06-13',_binary '','1206136789','elena.petrov@example.com',_binary '','Елена','Петрова','$2a$12$07rIxC9sUzY.QNLOZnPxTessDRS/92x4DzCbIeEXi3hUiBOhBbkUe','0893215554','st.elena.petrova'),(147,_binary '',_binary '','гр. Черноморец, ул. „Генерал Гурко“ 6','2012-07-21',_binary '','1207217890','nikolay.nikolov@example.com',_binary '','Николай','Николов','$2a$12$zhAqA.yWaj0BwelrEFFZPuhn4ZTJwJ5iVRNDqGfa3vhktNo5.JjiS','0899623223','st.nikolay.nikolov'),(148,_binary '',_binary '','гр. Черноморец, ул. „Княз Борис I“ 18','2012-08-02',_binary '','1208028901','petya.dimitrova@example.com',_binary '','Петя','Димитрова','$2a$12$A.nVCic1XW0uOuuULnUxt.xpQnN1ZlY2twzY83D4J.hFzh8hWuyLW','0888658621','st.petya.dimitrova'),(149,_binary '',_binary '','гр. Черноморец, ул. „Гладстон“ 9','2012-09-14',_binary '','1209149012','stefan.ivanov@example.com',_binary '','Стефан','Иванов','$2a$12$218QFFrKLKulHrhP5jax2e3E0yKWiIyI2tG4iI9.WusrX5j6QL2ga','0863274112','st.stefan.ivan'),(150,_binary '',_binary '','гр. Черноморец, ул. „Богориди“ 21','2012-10-28',_binary '','1210280123','diana.georgieva1@example.com',_binary '','Диана','Георгиева','$2a$12$lp0sWjvsMEsHSlS8onQsy.zLXox28voBnJYz5opiXhNbrB39lwxB2','0889532347','st.diana.georgiev'),(151,_binary '',_binary '','гр. Бургас, ул. „Александър Малинов“ 10','1975-01-22',_binary '','7501221234','krasimir.stefanov@example.com',_binary '','Красимир','Стефанов','$2a$12$5H5ZPUkMBcbLL5c.fnO6muiJjIFtHxvS73eJh7YE67EQEDNzxeUbe','0889532541','p.krasimir.stefanov'),(152,_binary '',_binary '','гр. Бургас, ул. „Цар Симеон I“ 5','1968-02-15',_binary '','6802152345','elica.georgieva@example.com',_binary '','Елица','Георгиева','$2a$12$Oz01WQq5.17rTTAs.oXAmeXRfC.91oGs1YLHgJQ1AxNH.TqCKwMhG','0864232644','p.elica.georgieva'),(153,_binary '',_binary '','гр. Бургас, ул. „Генерал Столетов“ 3','1980-03-18',_binary '','8003183456','yordan.dimitrov@example.com',_binary '','Йордан','Димитров','$2a$12$9KiuGbqzZgS097.wKAcEEekNvtNCVOYf5H9nly8cFG13e4tVc20Uy','0889532054','p.yordan.dimitrov'),(154,_binary '',_binary '','гр. Бургас, ул. „Александър Батенберг“ 7','1985-04-25',_binary '','8504254567','radostina.petrova@example.com',_binary '','Радостина','Петрова','$2a$12$SS292VxSbD/w2765XlFU3uZChkdriOWjvpHHBawpE3C8IBuXeH.v6','0889231455','p.radostina.petrova'),(155,_binary '',_binary '','гр. Бургас, ул. „Христо Ботев“ 12','1970-05-30',_binary '','1970-05-30','valeri.ivanov@example.com',_binary '','Валери','Иванов','$2a$12$ynws97QsruPdyMk9fJVrTO8PX/x6XlQCXVJ1Gl5GcWeYC9g2Rhgie','0889562320','p.valeri.ivanov'),(156,_binary '',_binary '','гр. Бургас, ул. „Митрополит Борис“ 19','1965-06-13',_binary '','6506136789','silvia.dimitrova@example.com',_binary '','Силвия','Димитрова','$2a$12$RpUTiA8RHouQcbbv826av.ROSX2GYoR2fx3VImb7c5iB9vgf.cF5W','0889533216','p.silvia.dimitrova'),(157,_binary '',_binary '','гр. Бургас, ул. „Генерал Гурко“ 6','1990-07-21',_binary '','9007217890','tihomir.nikolov@example.com',_binary '','Тихомир','Николов','$2a$12$meU8USWqahFr5.GlV42r4u1774rSHL/2Ugi3WFNlChTQhIvRqLee2','0889532147','p.tihomir.nikolov'),(158,_binary '',_binary '','гр. Бургас, ул. „Княз Борис I“ 18','1972-08-02',_binary '','7208028901','liliyana.petkov@example.com',_binary '','Лилияна','Петкова','$2a$12$XFunGCeT0eCQGmUC34ZRVepRhU87xXbjJIWnQNCiqD3WlrD4FuYIm','0886321547','p.liliyana.perkova'),(159,_binary '',_binary '','гр. Бургас, ул. „Гладстон“ 9','1982-09-14',_binary '','8209149012','plamen.vasilev@example.com',_binary '','Плавен','Василев','$2a$12$TSaWzT.YhRWVwCygMeL9.evnCH3rB3pKJrccgG2ddZjHyiLodYJQy','0886221146','p.plamen.vasilev'),(160,_binary '',_binary '','гр. Бургас, ул. „Богориди“ 21','1989-10-28',_binary '','8910280123','gergana.ivanova@example.com',_binary '','Гергана','Иванова','$2a$12$Qp6cQwnrFDVSAvdBeIuRf.J4ZFDzLtrUmzEXoGuVcvkV/TA0A7i9K','0887538105','p.gergana.ivanova'),(178,_binary '',_binary '','гр. Бургас, ул. „Копривщица“ 11,','1979-08-22',_binary '','7908220011','iliyana.todorova@example.com',_binary '','Илияна','Тодорова','$2a$12$y8ocT.gfj.hsp.qzv7qwxuzKyRHu8bHwhze6Z5dL5E3z0M97n3Qva','0886547899','p.iliyana.georgieva'),(179,_binary '',_binary '','гр. Бургас, ул. „Шипка“ 4,','1969-11-19',_binary '','6911191122','yordanka.georgieva@example.com',_binary '','Йорданка','Георгиева','$2a$12$F9CbweME3j2f20zFFKA02.ss.eKA0nq4aQTdlXXvRxmelRPvcfHiW','0896317451','p.yordanka.grgva'),(180,_binary '',_binary '','гр. Бургас, ул. „Бачо Киро“ 20','1971-12-05',_binary '','7112052233','ivaylo.stefanov@example.com',_binary '','Ивайло','Стефнов','$2a$12$6DJMxKs2dX0WsooB2EEyrux4fOVTC3jZIBvbmKGkWqVrM/6r1ElTG','0885471395','p.ivailo.stefanov'),(181,_binary '',_binary '','гр. Бургас, ул. „Славянска“ 15','1978-01-11',_binary '','7801113344','yoana.todorova@example.com',_binary '','Йоана','Тодорова','$2a$12$YPz9Qf.Kwt3rDRLM7wWoNuq0nnL01Kxx0U94XH312Iwd15d/XQCxe','0889653224','p.yoana.todorova'),(182,_binary '',_binary '','гр. Бургас, ул. „Гладстон“ 6','1984-02-26',_binary '','8402264455','lyubomir.kostadinov@example.com',_binary '','Любомир','Костадинов','$2a$12$XEqU.OVClgVFboZbOceUWe4QiQ9rfRWiz4gf8EnycMq02RQKFUZYW','0899756314','p.lyubomir.kostdv'),(183,_binary '',_binary '','гр. Бургас, ул. „Цариградска“ 17','1983-03-07',_binary '','8303075566','galina.dimitrova@gmail.com',_binary '','Галина','Димитрова','$2a$12$vjciKjW/SzDCFEg3Nh7Uk.TgCOvoXJJ3mbVlWaE9zs0ZQTTMxserG','0889671523','p.galina.dimitrov'),(184,_binary '',_binary '','гр. Бургас, ул. „Левски“ 23','1991-04-13',_binary '','9104136677','veselin.vasilev@example.com',_binary '','Веселин','Василев','$2a$12$dprsvORNUJLXmf2q5R5ZMeRXQzZVBKUsjsyMv1sfUBQWqPMSCBUhK','0889671542','p.veselin.vasilev'),(185,_binary '',_binary '','гр. Бургас, ул. „Опълченска“ 3','1986-05-02',_binary '','8605027788','stanimir.nikolov@example.com',_binary '','Станимир','Николов','$2a$12$68U/Td3ko20QH4w.31ZEcOGIeuFjCNA0QMj50JXJowzlq9gK/YIwy','0881369762','p.stanimir.nikolov'),(186,_binary '',_binary '','гр. Бургас, ул. „Генерал Гурко“ 14','1967-06-17',_binary '','6706178899','aneliya.kostova@example.com',_binary '','Анелия','Костова','$2a$12$QCR7mrJb61ubhECXewp.uefXIrOAuPt2i4NCRDj/ZQMXDgl1PcTai','0885412741','p.anelia.kostova'),(187,_binary '',_binary '','гр. Бургас, ул. „Богориди“ 8','1974-07-05',_binary '','7407059900','lazar.popov@example.com',_binary '','Лазар','Попов','$2a$12$t/aJRbrVgm3iY4ZtleWKCeFsUb85ZERRmFm1sCdio0Al9VnccWAFO','0886234922','p.lazar.popov'),(198,_binary '',_binary '','гр. Бургас,  ул. „Александър Стамболийски“ 18','1970-09-14',_binary '','7009141234','angelina.petrova@example.com',_binary '','Ангелина','Петрова','$2a$12$.yrdxQZwVYvzlBtQoO92nuWFDIcY9hw/1CwRVjagzIMF0ZTK4LNUe','0886521453','p.angelina.petrova'),(199,_binary '',_binary '','гр. Бургас, ул. „Стефан Стамболов“ 10','1969-02-03',_binary '','6902032345','borislav.ivanov@example.com',_binary '','Борислав','Иванов','$2a$12$pEeOT36F3Amg0IsiH0lb/eCmV8MCexRrRtL4WBFc2QqIR8Z5EQ9b2','0889532514','p.borislav.ivanov'),(200,_binary '',_binary '','гр. Бургас, ул. „Хан Крум“ 22','1982-11-07',_binary '','8211073456','viktoria.georgieva@example.com',_binary '','Виктория','Георгиева','$2a$12$nPFTWaykylNp.Jmwwy915OuVHdDTF9eLyT16vCgSuijZfcFok3kHC','0895132561','p.viktoria.georgieva'),(201,_binary '',_binary '','гр. Бургас, ул. „Шейново“ 3','1975-03-15',_binary '','7503154567','georgi.todorov@example.com',_binary '','Георги','Тодоров','$2a$12$0RzWMTsBjf20U7hBU6/FLOnUHsNCZYNkQ7.l0XtzA71hIIgGz6iSy','0896647236','p.georgi.todorov'),(202,_binary '',_binary '','гр. Бургас, ул. „Георги Кирков“ 19','1968-06-12',_binary '','6806125678','desislava.dimitrova@example.com',_binary '','Десислава','Димитрова','$2a$12$zLNbYYKayhE/uFHazByOOeQdLOWMTo8uSz0CAjrosTUbCTS.jkQy2','0089647433','p.desislava.todorova'),(203,_binary '',_binary '','гр. Бургас, „Цар Освободител“ 5','1979-01-30',_binary '','7901306789','emil.ivanov@example.com',_binary '','Емил','Иванов','$2a$12$qjzi4S5znKqfD7fOfytJsuB1br0tcDREzBTO3yITBlgWqRZUlAQGq','0896247421','p.emil.ivanov'),(204,_binary '',_binary '','гр. Бургас, ул. „Раковски“ 8','1983-04-26',_binary '','8304267890','zivka.nikolaeva@example.com',_binary '','Живка','Николаева','$2a$12$PRQAlYAeGDR0vndt6UTnCOT2/kn0hSAuZSN/VCWK4scVwKFOuPsze','0866741529','p.jivka.nikolaeva'),(205,_binary '',_binary '','гр. Бургас, ул. „Цар Калоян“ 14','1967-07-18',_binary '','6707188901','zahari.petrov@example.com',_binary '','Захари','Петров','$2a$12$Sh41FRTQKU3ocdeuhBuWeepFP8pbKgmIjJN6idOn/lmdz2jEb9Jay','0896231447','p.zahari.petrov'),(206,_binary '',_binary '','гр. Бургас, ул. „Сан Стефано“ 16','1976-12-05',_binary '','7612059012','ivanka.stefanova@example.com',_binary '','Иванка','Стефанова','$2a$12$gunzhnDpsFEaWETr0n4MYObNr.H7FwxoGWl/4ENKtfssstTkEHFqG','0895321478','p.ivanka.stefanova'),(207,_binary '',_binary '','гр. Бургас, ул. „Княз Александър Батенберг“ 9','1981-10-09',_binary '','8110090123','kaloyan.georgiev@example.com',_binary '','Калоян','Георгиев','$2a$12$qbw7h865K3b1Hc3.noWn6uqv.CMy8gYGvjDMOQNp7Jyhqi.tOWIXi','0883669944','p.kaloyan.gerogiev'),(208,_binary '',_binary '','гр. Стара Загора, ул. „Богориди“ 12','1984-08-22',_binary '','8408221234','lidia.todorova@example.com',_binary '','Лидия','Тодорова','$2a$12$v7Zt6PNG07jKzJsRPqKJHOpEXK7ZIRFq1Pcp9WhMX6YHYY78/vyQe','0895512666','p.lidiya.todorova'),(209,_binary '',_binary '','гр. Стара Загора, ул. „Васил Левски“ 7','1972-02-16',_binary '','7202162345','martin.ivanov@example.com',_binary '','Мартин','Иванов','$2a$12$LWJWMSMwk914eq5x6S0O8eoRshZ3C5DoiTiz.abozC1tLBlzwsTlG','0892366421','p.martin.ivanov'),(210,_binary '',_binary '','гр. Стара Загора, ул. „Александър Стамболийски“ 2','1973-11-03',_binary '','7311033456','nina.georgieva@example.com',_binary '','Нина','Георгиева','$2a$12$9sY3vcERd3fU.F7AsfyEhOUEwPR9FIorqzjniQjhym/mr75wouPK.','0893215445','p.nina.georgieva'),(211,_binary '',_binary '','гр. Стара Загора, ул. „Иван Вазов“ 20','1965-05-09',_binary '','6505094567','ognyan.dimitrov@example.com',_binary '','Огнян','Димитров','$2a$12$WY2WPLdmnri51YwTnPpLS.wfKMrecY64EFNh7hnaW3e6UjrYejbE.','0862147348','p.ognyan.dimitrov'),(212,_binary '',_binary '','гр. Стара Загора, ул. „Гурко“ 11','1985-06-28',_binary '','8506285678','pavlina.nikolaeva@example.com',_binary '','Павлина','Николаева','$2a$12$NP9Wd7KsijPyXy.SoBq8w.rqUIKVoo80BcTWRjrlzHmYDraJQbvfi','0892332415','p.pavlina.nikolaeva'),(213,_binary '',_binary '','гр. Стара Загора, ул. „Бачо Киро“ 6','1974-07-17',_binary '','7407176789','radoslav.ivanov@example.com',_binary '','Радослав','Иванов','$2a$12$rrqGeS/C72PveHp.5Gwb3.gLf9reb5jCZBjUI63u3WjMdpBWbcpVC','0893423341','p.radoslav.ivanov'),(214,_binary '',_binary '','гр. Стара Загора, ул. „Александър Батенберг“ 13','1988-09-04',_binary '','8809047890','svetlana.georgieva@example.com',_binary '','Светлана','Георгиева','$2a$12$TJJ4cUCAloFdzKz9BDH0LOk1kzSoFQzH7wzVsLSAHWzux2aVI79/W','0892124580','p.svetlana.georgieva'),(215,_binary '',_binary '','гр. Бургас, ул. „Шипка“ 5','1977-03-24',_binary '','7703248901','todor.petr@example.com',_binary '','Тодор','Петров','$2a$12$v/YVSTTe8ZbHzksQGagRmeMab3VvM.zVK0wYgxn80Pq4F3Vjw6zj.','0883234643','p.todor.petrov'),(216,_binary '',_binary '','гр. Бургас, ул. „Георги Бенковски“ 4','1966-04-11',_binary '','6604119012','ulyana.ivanova@example.com',_binary '','Улияна','Иванова','$2a$12$V5613cVP36.KTpVD8xgi8O97NW814mp.brlPUSiRX/QXDDemo7y66','0893452257','p.uliyana.ivanova'),(217,_binary '',_binary '','гр. Бургас, ул. „Алеко Константинов“ 23','1971-01-19',_binary '','7101190123','filip.stefanov@example.com',_binary '','Филип','Стефанов','$2a$12$etdff8e4YVwCDKOZLl9pBuAVkzfkXsgN9fYxNpABGHk3YHq5L6Xra','0886351166','p.filip.stefanov'),(218,_binary '',_binary '','гр. Бургас, ул. „Братя Миладинови“ 17','1971-02-11',_binary '','7102111234','alexandar.stoyanov@example.com',_binary '','Александър','Стоянов','$2a$12$2TU4lq2YQBvTaINof2Ahvu6tFLvr4mwb2AzMXlrSrE0Lu6Ahb4lIS','0886313412','p.aleks.stoyanov'),(219,_binary '',_binary '','гр. Бургас, ул. „Васил Левски“ 19','1984-05-15',_binary '','8405152345','boyan.georgiev@example.com',_binary '','Боян','Георгиев','$2a$12$SLuPrZhzRocTg4BJPLb7k.3xgdloSqlpdu8sgDZ8O25xWEYRC0oUi','0886223774','p.boyan.georgiev'),(220,_binary '',_binary '','гр. Бургас, ул. „Христо Ботев“ 6','1969-08-23',_binary '','6908233456','vasil.nikolov@example.com',_binary '','Васил','Николов','$2a$12$2CYuPciHZqmGa71QbU5nEuYAyAOgrO5sujUxUjgpBOAyO07e3NceO','0886143113','p.vasil.nikolov'),(221,_binary '',_binary '','гр. Бургас, ул. „Петко Каравелов“ 9','1981-12-19',_binary '','8112194567','gergana.petrova@example.com',_binary '','Гергана','Петрова','$2a$12$G444.HSm5X6NvUFrNG0LsuFadMyxnYwsbHBgAzjzNEuACvPye6f6.','0894233224','p.gergana.petrova'),(222,_binary '',_binary '','гр. Бургас, ул. „Одрин“ 8','1976-11-27',_binary '','7611275678','daniela.ivanova@example.com',_binary '','Даниела','Иванова','$2a$12$uuTDFbAYNOV80yaLQvzD2uPMQawAXD17R1M3vGuCQy7.d/ecCx/ua','0893556771','p.daniela.ivanova'),(223,_binary '',_binary '','гр. Бургас,ул. „Княз Борис I“ 14','1982-04-12',_binary '','8204126789','elena.dimitrova@example.com',_binary '','Елена','Димитрова','$2a$12$d3tnMIMSnonCELxz77EgPeDAHSJG1cCpTAW28tIYONb1oaJSYyWGK','0888622454','p.elena.dimitrova'),(224,_binary '',_binary '','гр. Бургас, ул. „Шипка“ 21','1968-09-30',_binary '','6809307890','zhivko.todorov@example.com',_binary '','Живко','Тодоров','$2a$12$2QuArgsVfgLrHOOtH0ATLO6KgWkea6sA5/xXz00g.f/XCSRziXaB2','0886632221','p.jivko.todorov'),(225,_binary '',_binary '','гр. Бургас, ул. „Гладстон“ 5','1973-02-18',_binary '','7302188901','zlatina.ivanova@example.com',_binary '','Златина','Иванова','$2a$12$7PsZ/.Ib.Vd6JWvmIXXY2uxAHah3tjaKogmZclGIYIHdjt3.3csc.','0889422320','p.zlatina.ivanova'),(226,_binary '',_binary '','гр. Бургас, ул. „Раковска“ 12','1980-07-09',_binary '','8007099012','ivo.georgiev@example.com',_binary '','Иво','Георгиев','$2a$12$/cvxftyT/IcvRAOEyheDeO/vjnOO1TyqturHkAgfpMSCSak8YNUMu','0893522323','p.ivo.georgiev'),(227,_binary '',_binary '','гр. Бургас, ул. „Цар Симеон“ 23','1967-11-03',_binary '','6711030123','yordanka.stoyanova@example.com',_binary '','Йорданка','Стоянова','$2a$12$O/dFQytmWQOIk/XhIJGJB.t.d1s6vLdKRcnAH/gU.K7/uboJ9w51e','0889373530','p.yordanka.stoyanova'),(228,_binary '',_binary '','гр. Черноморец, ул. „Гурко“ 3','1975-06-07',_binary '','7506071234','konstantin.ivanov@example.com',_binary '','Константин','Иванов','$2a$12$5oMdsI4IubjM.8P4phfhX.AORv7TLttyU04E.2nKYzIFRa6Dpkpyu','0888651243','p.konstantin.ivanov'),(229,_binary '',_binary '','гр. Черноморец, ул. „Шейново“ 22','1983-05-13',_binary '','8305132345','lilyana.petrova@example.com',_binary '','Лиляна','Петрова','$2a$12$0fLrg6QPp8tehoMFKX6afeQEXYUsLVbZ9Ebf1JEgoAHP6gEsKqTLu','0889962531','p.lilyana.petrova'),(230,_binary '',_binary '','гр. Черноморец, ул. „Княз Александър Батенберг“ 6','1978-01-26',_binary '','6603144567','maria.georgiev@example.com',_binary '','Мария','Георгиева','$2a$12$8DOUeMQL8FHCYBnVjMMf.eYKITdWefSZAajZwOOxP703fwXJLzAcK','0882467251','p.maria.georgieva'),(231,_binary '',_binary '','гр. Черноморец, ул. „Георги Кирков“ 15','1966-03-14',_binary '','7208245678','nikolay.todorov@example.com',_binary '','Николай','Тодоров','$2a$12$Eck4.YswwhWnN0xJJGX8iOg0xI0WrHZOdPD.eb2/R6EXGm/qOQIOW','0889662333','p.pavel.nikolo'),(232,_binary '',_binary '','гр. Черноморец, ул. „Цар Калоян“ 2','1972-08-24',_binary '','8512026789','ognyana.dimitrova@example.com',_binary '','Огняна','Димитрова','$2a$12$YTXhME1cl59EPovbTPkNd.eBuNYmfxzY.dW0Biz5uMlamDmwucDKa','0883622567','p.radoslava.ivanova'),(233,_binary '',_binary '','гр. Черноморец, ул. „Богориди“ 18','1985-12-02',_binary '','7910187890','pavel.nikolov@example.com',_binary '','Павел','Николов','$2a$12$h0ZnD7v5mivR377Vd9Q0qO06xsZM4/jnf21TeUz0UyOjJ/zAXd9LG','0888632674','p.pavel.nikolov'),(234,_binary '',_binary '','гр. Черноморец, ул. „Васил Левски“ 20','1979-10-18',_binary '','6811078901','radoslava.ivanova@example.com',_binary '','Радослава','Иванова','$2a$12$Tm4wGDa10r.LD3ykU4uRF.dHtUz6yYOCTXiB/LXphECKUIjpXIYHe','0886327290','p.radoslava.ivanov'),(235,_binary '',_binary '','гр. Черноморец, ул. „Цар Освободител“ 11','1968-11-07',_binary '','6811078900','stanislav.georgiev@example.com',_binary '','Станислав','Георгиев','$2a$12$LYlCw2AkKyLvzGNHRp0b1ObJv9YFnK.MTdJZXLrCJjprhyxlslxky','0884655255','p.stanislav.georgiev'),(236,_binary '',_binary '','гр. Черноморец, ул. „Александър Стамболийски“ 25','1970-07-29',_binary '','7007299012','tatyana.petrova@example.com',_binary '','Татяна','Петрова','$2a$12$3xt/ogkSG.aEPvqg5gMEB.QHw.9v4UpWY3Fj/8AneVszHW2UY086O','0896454323','p.tatyana.petrova'),(237,_binary '',_binary '','гр. Черноморец, ул. „Цар Симеон“ 9','1974-02-05',_binary '','7402050123','hristo.ivanov@example.com',_binary '','Христо','Иванов','$2a$12$lmJKH8O3XDUX6H34rUowxe5jlxVp0M/LWEt2kZiwOoL755G/dlE7q','0899553431','p.hristo.ivanov'),(247,_binary '',_binary '','гр. Бургас, ул. „Гурко“ 14','1973-11-23',_binary '','7311234567','antonia.ivanova@example.com',_binary '','Антония','Иванова','$2a$12$5ObYCr2duvgwEF.b6ZGzGOpHu8bM6QVcXy68rdVttG2BJeu3LblkK','0885632149','p.antonia.ivanova'),(248,_binary '',_binary '','гр. Бургас, ул. „Одрин“ 19','1987-09-30',_binary '','8709305678','borislava.georgieva@example.com',_binary '','Борислава','Георгиева','$2a$12$X9C1Bg9uALbvjtSI7xSIo.XpsCEIdjxxdGEEIi2fNl3HmPa0m8CS6','0885471296','p.borislv.georgieva'),(249,_binary '',_binary '','гр. Бургас, ул. „Шипка“ 3','1980-04-18',_binary '','8004186789','veselin.petrov@example.com',_binary '','Веселин','Петров','$2a$12$2jR9GNVjId2m.jruMMU6jOFxTpZVavFNn4Ib/rS0F6Nt..aEqfqBy','0899622147','p.veselin.petrov'),(250,_binary '',_binary '','гр. Бургас, ул. „Братя Миладинови“ 10','1976-01-27',_binary '','7601277890','galina.dimitrova@example.com',_binary '','Галина','Димитрова','$2a$12$sYiqDpJX5Infi/.2LGPgbOGe72rlfYuNSR8TkZvu40PTLJozwPz1.','0886336893','p.galina.dimitrova'),(251,_binary '',_binary '','гр. Бургас, ул. „Петко Каравелов“ 15','1983-07-12',_binary '','8307128901','daniel.nikolov@example.com',_binary '','Даниел','Николов','$2a$12$8JM1vLtss.81.X2YbkYyGONfs3HrqXy4me1iOxYTnwGFvJIri98a.','0892217988','p.daniel.nikolov'),(252,_binary '',_binary '','гр. Бургас, ул. „Цар Симеон“ 4','1969-05-05',_binary '','6905059012','emil.stoyanov@example.com',_binary '','Емил','Стоянов','$2a$12$MNovAtAmXIFW2Xpk03Jq4e.vVASCdOXw757eeViRHJhWqOdaE.Ccq','0826517431','p.emil.stoyanov'),(253,_binary '',_binary '','гр. Бургас, ул. „Христо Ботев“ 9','1981-12-19',_binary '','8112190123','jana.georgiev@example.com',_binary '','Жана','Георгиева','$2a$12$DakWHpdfmkEGPDpvgzgCQ.iMjYKMDwxj.vyG3Sni4QUm0tUgDmsbe','0892325505','p.jana.georgieva'),(254,_binary '',_binary '','гр. Бургас, ул. „Васил Левски“ 22','1974-06-08',_binary '','7406081234','jana.georgieva@example.com',_binary '','Здравко','Иванов','$2a$12$XgKNjHBhWEtT14MIF3YXFu68KcWSfQB/dz2WU3HQpAb9bkwBe7Zza','0889251157','p.zdravko.ivanov'),(255,_binary '',_binary '','гр. Бургас, ул. „Раковска“ 11','1985-10-22',_binary '\0','8510222345','ivanka.petrova@example.com',_binary '','Иванка','Петрова','$2a$12$5J95RVmku/j6YXs3FpszR.2/4DlEz/o0ZBfrOrxO2TpEXMfWanABq','0889123514','p.ivanka.petrova'),(256,_binary '',_binary '','гр. Бургас, ул. „Гладстон“ 6','1979-03-17',_binary '','7903173456','kaloyan.todorov@example.com',_binary '','Калоян','Тодоров','$2a$12$.y4pBGoIJwmRaVFacLnuu.T2A0paTspT2o.hmNhLkrvNX6EiePJD6','0882925535','p.kaloyan.todorov'),(266,_binary '',_binary '','гр. Бургас, ул. „Васил Левски“ 7','1980-08-15',_binary '','8008151234','lachezar.ivanov@example.com',_binary '','Лъчезар','Иванов','$2a$12$dR51dj52lULjxX.tY0o3B..2gcQr.MHdRfmd77ryrWUVUY/Z0TxYC','0896526853','tch.lach.ivanov'),(267,_binary '',_binary '','гр. Бургас, ул. „Одрин“ 2','1974-02-09',_binary '','7402092345','mariana.petrova@example.com',_binary '','Мариана','Петрова','$2a$12$7DwAcYpfMWlD/TDn4EGGrup78zVRp6wSn9np6Av6C77RD7GNq7v96','0862412554','tch.mariana.petr'),(268,_binary '',_binary '','гр. Бургас, ул. „Шипка“ 12','1976-11-11',_binary '','7611113456','nikolay.georgiev@example.com',_binary '','Николай','Георгиев','$2a$12$PI5rs970xCvCO1xYXnPGJ.c346EABgHMc2LY1rrmgrr1wQbV4QjuG','0886612541','tch.nikolai.georg'),(269,_binary '',_binary '','гр. Бургас, ул. „Гурко“ 5','1983-05-28',_binary '','8305284567','ognyan.stoyanov@example.com',_binary '','Огнян','Стоянов','$2a$12$OruDeK5Aw69vs1Cq3mvBy.x58BLrp7C0msEcVwtxVAhriPX1lkgMq','0896421568','tch.ognyan.soyan'),(270,_binary '',_binary '','гр. Бургас, ул. „Цар Симеон“ 21','1985-10-14',_binary '','8510145678','pavlina.dimitrova@example.com',_binary '','Павлина','Димитрова','$2a$12$awwpU5YVltxbqXhECSCuTO5xddcCKOImoJ0l06YeV4dAXfzSj//jW','0885452269','tch.pavle.dimitrova'),(271,_binary '',_binary '','гр. Бургас, ул. „Петко Каравелов“ 8','1978-06-25',_binary '','7806256789','rumen.nikolov@example.com',_binary '','Румен','Николов','$2a$12$cMdegF.OqD3AL2WKSTn4S.4x4RDM.1AgUmvQIOwUGdNQPrXcTpE.S','0888555145','tch.rumen.nikolov'),(272,_binary '',_binary '','гр. Бургас, ул. „Цар Калоян“ 10','1979-03-03',_binary '','7903037890','stefka.ivanova@example.com',_binary '','Стефка','Иванова','$2a$12$.VQjlL.9cbNE4aR3JXFb8uy..E1qf7XUzwleuXWkfU2r6a7gagKBm','0885422235','tch.stefka.ivanova'),(273,_binary '',_binary '','гр. Бургас, ул. „Раковска“ 17','1972-12-17',_binary '','7212178901','todor.petrov@example.com',_binary '','Тодор','Петров','$2a$12$QcnLhZDzRXvTjX/iRju1VOGvI6oqPPbDTedpNImhAudwAx4ShdrWC','0888999965','tch.todor.petrov'),(274,_binary '',_binary '','гр. Бургас, ул. „Гладстон“ 19','1975-09-01',_binary '','7509019012','ulyana.georgieva@example.com',_binary '','Улияна','Георгиева','$2a$12$S1BMO8YGx6qrR.plzFVVHujbxNeKwpsdGyWSSU3cxCZ46Mjtu56Qm','0835708643','tch.uliyana.georg'),(275,_binary '',_binary '','гр. Бургас, ул. \"Индустриална\" 2','1981-01-06',_binary '','8101060123','filip.dimitrov@example.com',_binary '','Филип','Димитров','$2a$12$AWD.pnzxfJ5FGSI37BuUCuZPoAPC5e2J5km3Wg3Zq75Z6lRIcpuT6','0884657332','tch.philip.dimitrov'),(276,_binary '',_binary '','гр. Бургас, кв. СЛавейков, бл. 3','1999-06-08',_binary '','9906050213','kris_admin@gmail.com',_binary '','Крис','Админов','$2a$12$deiAuoSkxpIuuWHZHV29OeLYhkkBnrLsse9uRfIFDLweNhZbtZUpK','0882694157','user1'),(281,_binary '',_binary '','гр. Бургас, кв. СЛавейков, бл. 3','1999-06-08',_binary '','9906050211','kris_adminn@gmail.com',_binary '','Криси','Админова','$2a$12$deiAuoSkxpIuuWHZHV29OeLYhkkBnrLsse9uRfIFDLweNhZbtZUpK','0882694156','user2'),(282,_binary '',_binary '','гр. Бургас, ул. Шазам 2','2001-02-10',_binary '','0136952102','tch.dog@example.com',_binary '','Kitty','Cat','$2a$12$lRNPxqD98WHeoulCF.WYXugbzHtj7fv0.u2A3MVfMtKVBr4AuF9/m','0886217596','caat'),(283,_binary '',_binary '','гр. Созопол, ул. \"Крайморска\" 16','2006-05-16',_binary '','0605167821','george_st@gmail.com',_binary '','Георги','Студентов','$2a$12$NjnhwxktmRgHdASuXPD4a.aIHZ7gaB9rRfYf2241GzpUSiNcsoStW','0886425367','st.georgestudent'),(284,_binary '',_binary '','гр. Бургас, ул. Булаир 2','2007-05-10',_binary '','0705108143','emi_bademm@gmail.com',_binary '','Ема','Неделчева','$2a$12$OfskhgaBzOyVHLIFWzyM6.72HYA6GFY2c8yXzyPPLXDjHljlyDote','0886217531','st.em.test.test'),(285,_binary '',_binary '','гр. Пловдив, ул. Централна 7','1999-10-15',_binary '','9910157521','adm_adminov@gmail.com',_binary '','Марти','Партиева','$2a$12$c.rhlNB6lAgjj5GVo2aRPOt0EBRgWsedDplcnV6STfPm4SONIf9AK','0886147593','admin.marty'),(288,_binary '',_binary '','123 Main St, Springfield','1990-01-01',_binary '','1234567890','john.doe@example.com',_binary '','John','Doe','$2a$10$siiqgxc1iMGXCrtSdGvcaufRbPuNGUoEEgnjGzTzEwqLXgGLUVMfq','1234567890','johh'),(290,_binary '',_binary '','LA, Espresso Town 1','1999-01-01',_binary '','9935182574','sabrina.car@example.com',_binary '','Sabrina','Carpenter','$2a$10$urfPUGtrchMpv6zKWFT56ukGI0t/I4RCSWQozr2f5a5dYiX7YKgj6','1234567899','sabrina'),(291,_binary '',_binary '','Бургас, ул. Христо Ботев, бл. 30','2001-05-18',_binary '','0145182574','olivia.add@example.com',_binary '','Olivia','Rodrigo','$2a$10$skMSPLXP7hySYGWOXxCmTOqo/nRlWzxOmoD7FujEqMe2NbtOMneT6','0883468291','admin.olive'),(293,_binary '',_binary '','Бургас, ул. Иван Вазов, бл. 13','1989-05-18',_binary '','0145180574','taylor.add@example.com',_binary '','Тейлър','Суифт','$2a$10$.JwDuro0OYN6D0lE1r3rdOQyppkwz7mZpAEFwVuRaOsYwJAvyfuua','0899468291','admin.taylor'),(294,_binary '',_binary '','LA, JB Town 1','2002-02-26',_binary '','0202430832','kamivasjb@gmail.com',_binary '','Kamelia','Vasileva','$2a$10$FiCM74Zdrsdho4HqNjqMc.1hv8HxzySrJpYpV1vZujFWkQeX6EthC','1234567239','dolly_mermaid');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (9,1),(10,1),(276,1),(281,1),(285,1),(288,1),(4,2),(5,2),(6,2),(7,2),(13,2),(14,2),(21,2),(23,2),(24,2),(25,2),(26,2),(27,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(39,2),(40,2),(266,2),(267,2),(268,2),(269,2),(270,2),(271,2),(272,2),(273,2),(274,2),(275,2),(293,2),(294,2),(1,3),(2,3),(3,3),(8,3),(11,3),(12,3),(70,3),(71,3),(72,3),(73,3),(74,3),(75,3),(76,3),(77,3),(78,3),(79,3),(80,3),(81,3),(82,3),(83,3),(84,3),(85,3),(86,3),(87,3),(88,3),(89,3),(90,3),(91,3),(92,3),(93,3),(94,3),(95,3),(96,3),(97,3),(98,3),(99,3),(100,3),(101,3),(102,3),(103,3),(104,3),(105,3),(106,3),(107,3),(108,3),(109,3),(110,3),(111,3),(121,3),(122,3),(123,3),(124,3),(125,3),(126,3),(127,3),(128,3),(129,3),(130,3),(131,3),(132,3),(133,3),(134,3),(135,3),(136,3),(137,3),(138,3),(139,3),(140,3),(141,3),(142,3),(143,3),(144,3),(145,3),(146,3),(147,3),(148,3),(149,3),(150,3),(283,3),(284,3),(290,3),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(288,5),(151,6),(152,6),(153,6),(154,6),(155,6),(156,6),(157,6),(158,6),(159,6),(160,6),(178,6),(179,6),(180,6),(181,6),(182,6),(183,6),(184,6),(185,6),(186,6),(187,6),(198,6),(199,6),(200,6),(201,6),(202,6),(203,6),(204,6),(205,6),(206,6),(207,6),(208,6),(209,6),(210,6),(211,6),(212,6),(213,6),(214,6),(215,6),(216,6),(217,6),(218,6),(219,6),(220,6),(221,6),(222,6),(223,6),(224,6),(225,6),(226,6),(227,6),(228,6),(229,6),(230,6),(231,6),(232,6),(233,6),(234,6),(235,6),(236,6),(237,6),(247,6),(248,6),(249,6),(250,6),(251,6),(252,6),(253,6),(254,6),(255,6),(256,6);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 10:44:34
