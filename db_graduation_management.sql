-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: db_graduation_management
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `t_announcement`
--

DROP TABLE IF EXISTS `t_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告表',
  `context` varchar(300) DEFAULT NULL,
  `inputMan` varchar(20) DEFAULT NULL,
  `lastModifyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_announcement`
--

LOCK TABLES `t_announcement` WRITE;
/*!40000 ALTER TABLE `t_announcement` DISABLE KEYS */;
INSERT INTO `t_announcement` VALUES (2,'测试公告1','admin','2020-01-10 14:35:15'),(3,'测试公告2','admin','2020-01-25 14:35:19'),(11,'admin 公告！！','admin','2020-02-17 15:01:09'),(23,'这是一条公告--管理员','admin','2020-03-17 20:53:06'),(24,'测试公告3','admin','2020-02-27 08:51:33');
/*!40000 ALTER TABLE `t_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_department`
--

DROP TABLE IF EXISTS `t_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '院系表，id为主键',
  `departmentName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_department`
--

LOCK TABLES `t_department` WRITE;
/*!40000 ALTER TABLE `t_department` DISABLE KEYS */;
INSERT INTO `t_department` VALUES (25,'机电工程学院'),(26,'机械工程学院'),(27,'材料科学与工程学院'),(28,'化学工程与技术学院'),(29,'信息与通讯工程学院'),(30,'仪器与电子学院'),(31,'大数据学院（计算机科学与技术学院）'),(32,'理学院'),(33,'经济与管理学院'),(34,'人文社会科学院'),(35,'体育学院'),(36,'艺术学院'),(37,'软件学院'),(38,'环境与安全学院'),(39,'电气与控制工程学院'),(40,'能源动力工程学院'),(41,'研究生院'),(42,'国际教育学院'),(43,'继续教育学院'),(44,'国防教育学院'),(45,'朔州校区'),(46,'信息商务学院');
/*!40000 ALTER TABLE `t_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doubt`
--

DROP TABLE IF EXISTS `t_doubt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doubt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) DEFAULT NULL,
  `studentDoubt` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doubt`
--

LOCK TABLES `t_doubt` WRITE;
/*!40000 ALTER TABLE `t_doubt` DISABLE KEYS */;
INSERT INTO `t_doubt` VALUES (1,9,'buzhidao',NULL),(3,16,'444','666');
/*!40000 ALTER TABLE `t_doubt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_enclosure`
--

DROP TABLE IF EXISTS `t_enclosure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_enclosure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) NOT NULL,
  `thesisText` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_enclosure`
--

LOCK TABLES `t_enclosure` WRITE;
/*!40000 ALTER TABLE `t_enclosure` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_enclosure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_interim_report`
--

DROP TABLE IF EXISTS `t_interim_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_interim_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) NOT NULL,
  `thesisText` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_interim_report`
--

LOCK TABLES `t_interim_report` WRITE;
/*!40000 ALTER TABLE `t_interim_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_interim_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_major`
--

DROP TABLE IF EXISTS `t_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业表，id为主键',
  `majorName` varchar(30) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL COMMENT '关联院系',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `departmentId` (`departmentId`) USING BTREE,
  CONSTRAINT `t_major_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `t_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_major`
--

LOCK TABLES `t_major` WRITE;
/*!40000 ALTER TABLE `t_major` DISABLE KEYS */;
INSERT INTO `t_major` VALUES (1,'现代火炮工程于技术',25),(2,'自主武器工程于技术',25),(3,'现代导弹工程于技术',25),(4,'机械工程专业',26),(5,'机械设计制造及其自动化专业',26),(6,'过程装配与控制工程专业',26),(7,'高分子材料与工程',27),(8,'金属材料及特种成型技术',27),(9,'化学工程与工艺专业',28),(10,'制药工程专业',28),(11,'图像处理与信息反演',29),(12,'智能信息处理',29),(13,'仪器科学与技术学科',30),(14,'电子科学与技术学科',30),(15,'大数据技术',31),(16,'计算机科学与技术',31),(17,'软件工程',31);
/*!40000 ALTER TABLE `t_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_project_source`
--

DROP TABLE IF EXISTS `t_project_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_project_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目源码表',
  `studentId` int(11) NOT NULL,
  `projectScore` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_project_source_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_project_source`
--

LOCK TABLES `t_project_source` WRITE;
/*!40000 ALTER TABLE `t_project_source` DISABLE KEYS */;
INSERT INTO `t_project_source` VALUES (1,9,'90','项目源码'),(2,15,'90','项目源码');
/*!40000 ALTER TABLE `t_project_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_student`
--

DROP TABLE IF EXISTS `t_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentNo` varchar(20) DEFAULT NULL,
  `studentName` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `majorId` int(11) NOT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `inputMan` varchar(20) DEFAULT NULL,
  `lastModifyTime` datetime DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `majorId` (`majorId`) USING BTREE,
  CONSTRAINT `t_student_ibfk_2` FOREIGN KEY (`majorId`) REFERENCES `t_major` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student`
--

LOCK TABLES `t_student` WRITE;
/*!40000 ALTER TABLE `t_student` DISABLE KEYS */;
INSERT INTO `t_student` VALUES (9,'0416001','张三','男',16,'大四','admin','2020-03-31 11:11:58','17800001000'),(15,'0416002','李四','女',17,'大四','admin','2020-01-11 13:45:41','17888882888'),(16,'0416003','王五','男',16,'大四','admin','2020-01-14 14:25:59','12300000000'),(17,'0416004','萨达','男',10,'大四','admin','2020-01-12 10:43:35','17300000000');
/*!40000 ALTER TABLE `t_student` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `db_graduation_management` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_studentNo_to_user` AFTER INSERT ON `t_student` FOR EACH ROW BEGIN
INSERT INTO t_user VALUES(null,NEW.studentNo,'123456',1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `db_graduation_management` CHARACTER SET utf8 COLLATE utf8_general_ci ;
ALTER DATABASE `db_graduation_management` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_studentNo_to_user` AFTER DELETE ON `t_student` FOR EACH ROW BEGIN
DELETE FROM t_user WHERE userNo=OLD.studentNo;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `db_graduation_management` CHARACTER SET utf8 COLLATE utf8_general_ci ;

--
-- Table structure for table `t_student_opening_report_task_book`
--

DROP TABLE IF EXISTS `t_student_opening_report_task_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_student_opening_report_task_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生提交开题报告和任务书',
  `studentId` int(11) NOT NULL,
  `studentOpeningResport` varchar(100) DEFAULT NULL,
  `studentTaskBook` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `completion` int(1) DEFAULT NULL COMMENT '1-未通过  2-通过',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_student_opening_report_task_book_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student_opening_report_task_book`
--

LOCK TABLES `t_student_opening_report_task_book` WRITE;
/*!40000 ALTER TABLE `t_student_opening_report_task_book` DISABLE KEYS */;
INSERT INTO `t_student_opening_report_task_book` VALUES (4,9,'','E:\\BSM\\admin\\test\\red.jpg',NULL,1),(9,16,'E:\\BSM\\student\\16\\王豫-毕业设计-中期汇报表.docx',NULL,NULL,2);
/*!40000 ALTER TABLE `t_student_opening_report_task_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_student_progress`
--

DROP TABLE IF EXISTS `t_student_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_student_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生进度通知填写表',
  `progressId` int(11) NOT NULL,
  `context` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `progressId` (`progressId`) USING BTREE,
  CONSTRAINT `t_student_progress_ibfk_2` FOREIGN KEY (`progressId`) REFERENCES `t_teacher_progress_notification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student_progress`
--

LOCK TABLES `t_student_progress` WRITE;
/*!40000 ALTER TABLE `t_student_progress` DISABLE KEYS */;
INSERT INTO `t_student_progress` VALUES (1,3,'学生进度通知填写表');
/*!40000 ALTER TABLE `t_student_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_student_score`
--

DROP TABLE IF EXISTS `t_student_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_student_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生论文成绩表',
  `studentId` int(11) NOT NULL,
  `thesisResult` int(11) DEFAULT NULL,
  `inputMan` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_student_score_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student_score`
--

LOCK TABLES `t_student_score` WRITE;
/*!40000 ALTER TABLE `t_student_score` DISABLE KEYS */;
INSERT INTO `t_student_score` VALUES (2,9,95,'t_02'),(3,9,95,'t_02');
/*!40000 ALTER TABLE `t_student_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_system_code`
--

DROP TABLE IF EXISTS `t_system_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_system_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) NOT NULL,
  `thesisText` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_system_code`
--

LOCK TABLES `t_system_code` WRITE;
/*!40000 ALTER TABLE `t_system_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_system_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_teacher`
--

DROP TABLE IF EXISTS `t_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacherNo` varchar(20) DEFAULT NULL,
  `teacherName` varchar(20) DEFAULT NULL,
  `departmentId` int(11) NOT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `inputMan` varchar(20) DEFAULT NULL,
  `lastModifyTime` datetime DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `departmentId` (`departmentId`) USING BTREE,
  CONSTRAINT `t_teacher_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `t_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_teacher`
--

LOCK TABLES `t_teacher` WRITE;
/*!40000 ALTER TABLE `t_teacher` DISABLE KEYS */;
INSERT INTO `t_teacher` VALUES (4,'t_01','teacher1',46,'?','admin','2020-04-24 15:33:37','123321'),(11,'t_1002','王海',41,'男','admin','2019-04-11 09:55:45','12300001000'),(12,'t_1003','张珊',32,'女','admin','2019-04-17 20:50:42','1560293019');
/*!40000 ALTER TABLE `t_teacher` ENABLE KEYS */;
UNLOCK TABLES;
ALTER DATABASE `db_graduation_management` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_teacherNo_to_user` AFTER INSERT ON `t_teacher` FOR EACH ROW BEGIN
INSERT INTO t_user VALUES(null,NEW.teacherNo,'6666',2);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `db_graduation_management` CHARACTER SET utf8 COLLATE utf8_general_ci ;
ALTER DATABASE `db_graduation_management` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = gbk */ ;
/*!50003 SET character_set_results = gbk */ ;
/*!50003 SET collation_connection  = gbk_chinese_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_teacher_to_user` AFTER DELETE ON `t_teacher` FOR EACH ROW BEGIN 
 DELETE FROM t_user WHERE userNo=OLD.teacherNo;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `db_graduation_management` CHARACTER SET utf8 COLLATE utf8_general_ci ;

--
-- Table structure for table `t_teacher_opening_report_task_book`
--

DROP TABLE IF EXISTS `t_teacher_opening_report_task_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_teacher_opening_report_task_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师发布任务书和开题报告',
  `teacherId` int(11) NOT NULL,
  `openingReport` varchar(100) DEFAULT NULL,
  `taskBook` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `thesisTitleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `teacherId` (`teacherId`) USING BTREE,
  KEY `thesisTitleId` (`thesisTitleId`) USING BTREE,
  CONSTRAINT `t_teacher_opening_report_task_book_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `t_teacher` (`id`),
  CONSTRAINT `t_teacher_opening_report_task_book_ibfk_2` FOREIGN KEY (`thesisTitleId`) REFERENCES `t_thesis_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_teacher_opening_report_task_book`
--

LOCK TABLES `t_teacher_opening_report_task_book` WRITE;
/*!40000 ALTER TABLE `t_teacher_opening_report_task_book` DISABLE KEYS */;
INSERT INTO `t_teacher_opening_report_task_book` VALUES (23,4,'E:\\BSM\\admin\\red.jpg','E:\\BSM\\admin\\test\\test_??.docx',NULL,4),(24,11,'E:\\BSM\\teacher\\11\\2\\课题1的开题报告.docx','E:\\BSM\\teacher\\11\\2\\课题1的任务书 .docx',NULL,2),(25,4,NULL,'E:\\BSM\\admin\\test\\test_??.docx','????id=4????',4);
/*!40000 ALTER TABLE `t_teacher_opening_report_task_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_teacher_progress_notification`
--

DROP TABLE IF EXISTS `t_teacher_progress_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_teacher_progress_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '进度通知表，教师填写',
  `context` varchar(1000) DEFAULT NULL,
  `inputMan` varchar(20) DEFAULT NULL,
  `inputTime` datetime DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `state` int(1) DEFAULT NULL COMMENT '0--初始化  1---未完成  2---已完成',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  KEY `teacherId` (`teacherId`) USING BTREE,
  CONSTRAINT `t_teacher_progress_notification_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`),
  CONSTRAINT `t_teacher_progress_notification_ibfk_2` FOREIGN KEY (`teacherId`) REFERENCES `t_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_teacher_progress_notification`
--

LOCK TABLES `t_teacher_progress_notification` WRITE;
/*!40000 ALTER TABLE `t_teacher_progress_notification` DISABLE KEYS */;
INSERT INTO `t_teacher_progress_notification` VALUES (3,'完成第一阶段的任务：开题报告的书写。','李欣','2020-02-26 09:47:49',9,4,2),(4,'完成第一阶段的任务：开题报告的书写。','李欣','2020-02-27 10:20:08',15,4,2),(5,'??????','t_one','2020-04-24 15:33:37',9,4,0);
/*!40000 ALTER TABLE `t_teacher_progress_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_thesis_description`
--

DROP TABLE IF EXISTS `t_thesis_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_thesis_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '论文具体描述',
  `thesisId` int(11) NOT NULL,
  `thesisDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `thesisId` (`thesisId`) USING BTREE,
  CONSTRAINT `t_thesis_description_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_thesis_description`
--

LOCK TABLES `t_thesis_description` WRITE;
/*!40000 ALTER TABLE `t_thesis_description` DISABLE KEYS */;
INSERT INTO `t_thesis_description` VALUES (1,2,'论文具体描述'),(2,8,'论文具体描述');
/*!40000 ALTER TABLE `t_thesis_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_thesis_information`
--

DROP TABLE IF EXISTS `t_thesis_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_thesis_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ѧ���ύ��ҵ���ı�',
  `studentId` int(11) NOT NULL,
  `thesisText` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_thesis_information_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_thesis_information`
--

LOCK TABLES `t_thesis_information` WRITE;
/*!40000 ALTER TABLE `t_thesis_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_thesis_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_thesis_paper`
--

DROP TABLE IF EXISTS `t_thesis_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_thesis_paper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) DEFAULT NULL,
  `paperInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_thesis_paper_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_thesis_paper`
--

LOCK TABLES `t_thesis_paper` WRITE;
/*!40000 ALTER TABLE `t_thesis_paper` DISABLE KEYS */;
INSERT INTO `t_thesis_paper` VALUES (1,9,'信息'),(2,9,'E:\\BSM\\teacher\\4\\3');
/*!40000 ALTER TABLE `t_thesis_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_thesis_title`
--

DROP TABLE IF EXISTS `t_thesis_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_thesis_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师提交课题',
  `thesisName` varchar(30) DEFAULT NULL,
  `teacherId` int(11) NOT NULL,
  `submitTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '课题未审核-1 已审核通过-2 不通过-3',
  `inputMan` varchar(20) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `teacherId` (`teacherId`) USING BTREE,
  CONSTRAINT `t_thesis_title_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `t_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_thesis_title`
--

LOCK TABLES `t_thesis_title` WRITE;
/*!40000 ALTER TABLE `t_thesis_title` DISABLE KEYS */;
INSERT INTO `t_thesis_title` VALUES (2,'课题1',11,'2020-04-11 10:14:34',2,'王海','这是课题1的描述'),(3,'??22',4,'2020-04-24 15:33:37',0,'t_one','????2???....'),(4,'课题3',4,'2020-04-12 12:11:28',2,'李欣','新的描述信息'),(8,'课题4',4,'2020-04-12 12:11:55',3,'李欣','这是课题4的描述'),(9,'课题5',4,'2020-04-12 12:12:16',2,'李欣','这是课题5的描述'),(10,'课题6',11,'2020-04-12 12:13:01',2,'王海','这是课题6的描述'),(11,'课题7',11,'2020-04-12 12:13:21',2,'王海','这是课题7的描述'),(13,'课题10',4,'2020-04-17 21:06:50',2,'李欣','这是课题10的描述');
/*!40000 ALTER TABLE `t_thesis_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_topic`
--

DROP TABLE IF EXISTS `t_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选题信息表',
  `thesisId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `selectTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `thesisId` (`thesisId`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_topic_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`),
  CONSTRAINT `t_topic_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_topic`
--

LOCK TABLES `t_topic` WRITE;
/*!40000 ALTER TABLE `t_topic` DISABLE KEYS */;
INSERT INTO `t_topic` VALUES (49,4,17,'2020-04-23 16:42:41'),(50,9,15,'2020-04-23 17:11:43'),(51,2,16,'2020-04-26 13:33:24'),(52,4,9,'2020-04-24 15:33:37');
/*!40000 ALTER TABLE `t_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_topic_fast`
--

DROP TABLE IF EXISTS `t_topic_fast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_topic_fast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thesisId` int(11) NOT NULL,
  `studentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `thesisId` (`thesisId`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE,
  CONSTRAINT `t_topic_fast_ibfk_1` FOREIGN KEY (`thesisId`) REFERENCES `t_thesis_title` (`id`),
  CONSTRAINT `t_topic_fast_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_topic_fast`
--

LOCK TABLES `t_topic_fast` WRITE;
/*!40000 ALTER TABLE `t_topic_fast` DISABLE KEYS */;
INSERT INTO `t_topic_fast` VALUES (1,2,9),(2,3,15);
/*!40000 ALTER TABLE `t_topic_fast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_translation`
--

DROP TABLE IF EXISTS `t_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) NOT NULL,
  `thesisText` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_translation`
--

LOCK TABLES `t_translation` WRITE;
/*!40000 ALTER TABLE `t_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userNo` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `permission` int(2) DEFAULT NULL COMMENT '学生权限-1 教师权限-2 管理员权限-3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (15,'admin','111111',3),(16,'t_1001','111111',2),(17,'0416003','111111',1),(18,'0416001','111111',1),(19,'t_1002','111111',2),(20,'0416002','123456',1),(22,'0416004','123456',1),(23,'t_1003','111111',2);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29 12:00:39
