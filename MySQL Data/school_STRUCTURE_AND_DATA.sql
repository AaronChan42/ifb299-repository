-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (139,'Can add log entry',47,'add_logentry'),(140,'Can change log entry',47,'change_logentry'),(141,'Can delete log entry',47,'delete_logentry'),(142,'Can add permission',48,'add_permission'),(143,'Can change permission',48,'change_permission'),(144,'Can delete permission',48,'delete_permission'),(145,'Can add group',49,'add_group'),(146,'Can change group',49,'change_group'),(147,'Can delete group',49,'delete_group'),(148,'Can add user',50,'add_user'),(149,'Can change user',50,'change_user'),(150,'Can delete user',50,'delete_user'),(151,'Can add content type',51,'add_contenttype'),(152,'Can change content type',51,'change_contenttype'),(153,'Can delete content type',51,'delete_contenttype'),(154,'Can add session',52,'add_session'),(155,'Can change session',52,'change_session'),(156,'Can delete session',52,'delete_session'),(157,'Can add lesson',53,'add_lesson'),(158,'Can change lesson',53,'change_lesson'),(159,'Can delete lesson',53,'delete_lesson'),(160,'Can add parent',54,'add_parent'),(161,'Can change parent',54,'change_parent'),(162,'Can delete parent',54,'delete_parent'),(163,'Can add parent phone',55,'add_parentphone'),(164,'Can change parent phone',55,'change_parentphone'),(165,'Can delete parent phone',55,'delete_parentphone'),(166,'Can add student',56,'add_student'),(167,'Can change student',56,'change_student'),(168,'Can delete student',56,'delete_student'),(169,'Can add student phone',57,'add_studentphone'),(170,'Can change student phone',57,'change_studentphone'),(171,'Can delete student phone',57,'delete_studentphone'),(172,'Can add teacher',58,'add_teacher'),(173,'Can change teacher',58,'change_teacher'),(174,'Can delete teacher',58,'delete_teacher'),(175,'Can add teacher instrument',59,'add_teacherinstrument'),(176,'Can change teacher instrument',59,'change_teacherinstrument'),(177,'Can delete teacher instrument',59,'delete_teacherinstrument'),(178,'Can add teacher language',60,'add_teacherlanguage'),(179,'Can change teacher language',60,'change_teacherlanguage'),(180,'Can delete teacher language',60,'delete_teacherlanguage'),(181,'Can add teacher phone',61,'add_teacherphone'),(182,'Can change teacher phone',61,'change_teacherphone'),(183,'Can delete teacher phone',61,'delete_teacherphone'),(184,'Can add teacher qualification',62,'add_teacherqualification'),(185,'Can change teacher qualification',62,'change_teacherqualification'),(186,'Can delete teacher qualification',62,'delete_teacherqualification'),(187,'Can add message',63,'add_message'),(188,'Can change message',63,'change_message'),(189,'Can delete message',63,'delete_message'),(190,'Can add applicant',64,'add_applicant'),(191,'Can change applicant',64,'change_applicant'),(192,'Can delete applicant',64,'delete_applicant'),(193,'Can add instrument',65,'add_instrument'),(194,'Can change instrument',65,'change_instrument'),(195,'Can delete instrument',65,'delete_instrument'),(196,'Can add feedback',66,'add_feedback'),(197,'Can change feedback',66,'change_feedback'),(198,'Can delete feedback',66,'delete_feedback'),(199,'Can add instrument request',67,'add_instrumentrequest'),(200,'Can change instrument request',67,'change_instrumentrequest'),(201,'Can delete instrument request',67,'delete_instrumentrequest'),(202,'Can add booking request',68,'add_bookingrequest'),(203,'Can change booking request',68,'change_bookingrequest'),(204,'Can delete booking request',68,'delete_bookingrequest'),(205,'Can add song',69,'add_song'),(206,'Can change song',69,'change_song'),(207,'Can delete song',69,'delete_song');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$h96cXWAPkg1r$xlLaGXTqhNddDXMK0HPpmgiMofgSmmL4JlnaSaUAYOQ=','2018-05-23 08:14:13.766144',1,'admin','','','admin@example.com',1,1,'2018-05-16 07:47:27.395571'),(2,'pbkdf2_sha256$100000$BoPCKdYMzo0H$wzxY22EUIGWUQ0ni6QLm3RGTlxcC7hvU7j+sKvpSGkQ=','2018-05-22 11:07:12.018747',0,'student','','','',0,1,'2018-05-16 07:48:31.292222'),(3,'pbkdf2_sha256$100000$tfJMt4rCHQNa$6ne5s0L9V+UAgpwdTq6GRfwwRx47/zJyHCJHECB9z9U=','2018-05-23 07:35:38.709889',0,'teacher','','','',1,1,'2018-05-16 07:48:42.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-05-16 07:48:31.394321','2','student',1,'[{\"added\": {}}]',50,1),(2,'2018-05-16 07:48:42.303841','3','teacher',1,'[{\"added\": {}}]',50,1),(3,'2018-05-16 07:48:52.648442','3','teacher',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',50,1),(4,'2018-05-17 07:49:23.281936','1','John - Smith',1,'[{\"added\": {}}]',58,1),(5,'2018-05-17 07:56:43.646624','1','1 MON - 09:00:00',1,'[{\"added\": {}}]',53,1),(6,'2018-05-17 08:05:33.484961','1','None 1 MON - 09:00:00 REQUEST P',3,'',68,1),(7,'2018-05-18 01:39:38.820033','1','Chinese (Mandarin)',1,'[{\"added\": {}}]',60,1),(8,'2018-05-18 01:44:15.930372','1','Chinese (Mandarin)',3,'',60,1),(9,'2018-05-18 01:44:23.609213','2','English',1,'[{\"added\": {}}]',60,1),(10,'2018-05-18 01:44:36.827790','3','Chinese (Mandarin)',1,'[{\"added\": {}}]',60,1),(11,'2018-05-18 09:17:42.088826','1','Stu - McStudent',1,'[{\"added\": {}}]',56,1),(12,'2018-05-18 09:22:57.217332','1','1 MON - 09:00:00',2,'[{\"changed\": {\"fields\": [\"students\"]}}]',53,1),(13,'2018-05-18 09:24:58.240858','2','Jim - Beam',1,'[{\"added\": {}}]',56,1),(14,'2018-05-18 09:25:13.766628','1','1 MON - 09:00:00',2,'[{\"changed\": {\"fields\": [\"students\"]}}]',53,1),(15,'2018-05-22 11:06:44.545066','1','Guitar',1,'[{\"added\": {}}]',65,1),(16,'2018-05-23 07:34:55.732209','1','1 MON - 09:00:00',2,'[{\"changed\": {\"fields\": [\"type\"]}}]',53,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (47,'admin','logentry'),(49,'auth','group'),(48,'auth','permission'),(50,'auth','user'),(51,'contenttypes','contenttype'),(64,'home','applicant'),(53,'home','lesson'),(63,'home','message'),(54,'home','parent'),(55,'home','parentphone'),(56,'home','student'),(57,'home','studentphone'),(58,'home','teacher'),(59,'home','teacherinstrument'),(60,'home','teacherlanguage'),(61,'home','teacherphone'),(62,'home','teacherqualification'),(52,'sessions','session'),(68,'student','bookingrequest'),(66,'student','feedback'),(65,'student','instrument'),(67,'student','instrumentrequest'),(69,'teacher','song');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-05-16 07:34:26.591065'),(2,'auth','0001_initial','2018-05-16 07:34:27.209534'),(3,'admin','0001_initial','2018-05-16 07:34:27.335170'),(4,'admin','0002_logentry_remove_auto_add','2018-05-16 07:34:27.346180'),(5,'contenttypes','0002_remove_content_type_name','2018-05-16 07:34:27.428320'),(6,'auth','0002_alter_permission_name_max_length','2018-05-16 07:34:27.498329'),(7,'auth','0003_alter_user_email_max_length','2018-05-16 07:34:27.557073'),(8,'auth','0004_alter_user_username_opts','2018-05-16 07:34:27.567885'),(9,'auth','0005_alter_user_last_login_null','2018-05-16 07:34:27.612358'),(10,'auth','0006_require_contenttypes_0002','2018-05-16 07:34:27.616407'),(11,'auth','0007_alter_validators_add_error_messages','2018-05-16 07:34:27.626416'),(12,'auth','0008_alter_user_username_max_length','2018-05-16 07:34:27.729926'),(13,'auth','0009_alter_user_last_name_max_length','2018-05-16 07:34:27.783604'),(14,'home','0001_initial','2018-05-16 07:34:28.824126'),(15,'home','0002_auto_20180328_2046','2018-05-16 07:34:28.922831'),(16,'home','0003_message','2018-05-16 07:34:28.979055'),(17,'home','0004_auto_20180426_2119','2018-05-16 07:34:29.042738'),(18,'home','0005_remove_teacher_studentfeedback','2018-05-16 07:34:29.091244'),(19,'home','0006_applicant','2018-05-16 07:34:29.119283'),(20,'home','0007_auto_20180511_2236','2018-05-16 07:34:29.304793'),(21,'sessions','0001_initial','2018-05-16 07:34:29.345817'),(22,'student','0001_initial','2018-05-16 07:34:29.430819'),(23,'student','0002_feedback','2018-05-16 07:34:29.510764'),(24,'student','0003_auto_20180429_1758','2018-05-16 07:34:29.526628'),(25,'student','0004_auto_20180511_2236','2018-05-16 07:34:29.758557'),(26,'student','0005_auto_20180511_2236','2018-05-16 07:34:29.773571'),(27,'student','0006_auto_20180511_2325','2018-05-16 07:34:29.917975'),(28,'teacher','0001_initial','2018-05-16 07:34:29.944813'),(29,'student','0007_auto_20180516_1744','2018-05-16 07:44:55.572727'),(30,'student','0008_auto_20180517_1723','2018-05-17 07:24:16.566204'),(31,'home','0008_auto_20180517_1746','2018-05-17 07:46:28.500196'),(32,'home','0009_auto_20180517_1753','2018-05-17 07:53:15.314610'),(33,'student','0009_auto_20180517_1753','2018-05-17 07:53:15.329589'),(34,'home','0010_auto_20180517_1756','2018-05-17 07:56:11.707729'),(35,'student','0010_auto_20180517_1756','2018-05-17 07:56:11.741752'),(36,'student','0011_auto_20180517_1759','2018-05-17 07:59:25.725027'),(37,'student','0012_auto_20180517_1807','2018-05-17 08:07:42.533240'),(38,'student','0013_auto_20180517_1820','2018-05-17 08:20:04.615659'),(39,'student','0014_auto_20180518_1136','2018-05-18 01:36:24.861727'),(40,'student','0015_auto_20180518_1143','2018-05-18 01:43:06.640683'),(41,'home','0011_auto_20180522_2105','2018-05-22 11:05:06.520816'),(42,'student','0016_auto_20180522_2105','2018-05-22 11:05:06.659818'),(43,'home','0012_lesson_type','2018-05-23 07:34:11.374569'),(44,'student','0017_auto_20180523_1227','2018-05-23 07:34:11.402573');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_applicant`
--

DROP TABLE IF EXISTS `home_applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_applicant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `contract` varchar(100) NOT NULL,
  `resume` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_applicant`
--

LOCK TABLES `home_applicant` WRITE;
/*!40000 ALTER TABLE `home_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_lesson`
--

DROP TABLE IF EXISTS `home_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duration` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `day` varchar(3) DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `home_lesson_teacher_id_1bd34550_fk_home_teacher_id` (`teacher_id`),
  CONSTRAINT `home_lesson_teacher_id_1bd34550_fk_home_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `home_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_lesson`
--

LOCK TABLES `home_lesson` WRITE;
/*!40000 ALTER TABLE `home_lesson` DISABLE KEYS */;
INSERT INTO `home_lesson` VALUES (1,30,1,'MON','09:00:00.000000','Piano lesson');
/*!40000 ALTER TABLE `home_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_lesson_students`
--

DROP TABLE IF EXISTS `home_lesson_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_lesson_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `home_lesson_students_lesson_id_student_id_6a960c2b_uniq` (`lesson_id`,`student_id`),
  KEY `home_lesson_students_student_id_ebc2762e_fk_home_student_id` (`student_id`),
  CONSTRAINT `home_lesson_students_lesson_id_3fda81c1_fk_home_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `home_lesson` (`id`),
  CONSTRAINT `home_lesson_students_student_id_ebc2762e_fk_home_student_id` FOREIGN KEY (`student_id`) REFERENCES `home_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_lesson_students`
--

LOCK TABLES `home_lesson_students` WRITE;
/*!40000 ALTER TABLE `home_lesson_students` DISABLE KEYS */;
INSERT INTO `home_lesson_students` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `home_lesson_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_message`
--

DROP TABLE IF EXISTS `home_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `messageContent` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_message`
--

LOCK TABLES `home_message` WRITE;
/*!40000 ALTER TABLE `home_message` DISABLE KEYS */;
INSERT INTO `home_message` VALUES (1,'John','Smith','john@gmail.com','0450453434','This is to test MySQL connection.'),(2,'Test','Last','test@gmail.com','0412345678','This is a test message.'),(3,'Test','Last','test@gmail.com','0412345678','This is a test message.');
/*!40000 ALTER TABLE `home_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_parent`
--

DROP TABLE IF EXISTS `home_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_parent`
--

LOCK TABLES `home_parent` WRITE;
/*!40000 ALTER TABLE `home_parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_parent_students`
--

DROP TABLE IF EXISTS `home_parent_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_parent_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `home_parent_students_parent_id_student_id_0ab8133b_uniq` (`parent_id`,`student_id`),
  KEY `home_parent_students_student_id_34636be1_fk_home_student_id` (`student_id`),
  CONSTRAINT `home_parent_students_parent_id_b4c59076_fk_home_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `home_parent` (`id`),
  CONSTRAINT `home_parent_students_student_id_34636be1_fk_home_student_id` FOREIGN KEY (`student_id`) REFERENCES `home_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_parent_students`
--

LOCK TABLES `home_parent_students` WRITE;
/*!40000 ALTER TABLE `home_parent_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_parent_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_parentphone`
--

DROP TABLE IF EXISTS `home_parentphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_parentphone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNumber` varchar(10) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_parentphone_parent_id_2ae8d545_fk_home_parent_id` (`parent_id`),
  CONSTRAINT `home_parentphone_parent_id_2ae8d545_fk_home_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `home_parent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_parentphone`
--

LOCK TABLES `home_parentphone` WRITE;
/*!40000 ALTER TABLE `home_parentphone` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_parentphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_student`
--

DROP TABLE IF EXISTS `home_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `DoB` date NOT NULL,
  `address` longtext NOT NULL,
  `facebookID` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `home_student_teacher_id_aeb3b377_fk_home_teacher_id` (`teacher_id`),
  CONSTRAINT `home_student_teacher_id_aeb3b377_fk_home_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `home_teacher` (`id`),
  CONSTRAINT `home_student_user_id_285c387f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_student`
--

LOCK TABLES `home_student` WRITE;
/*!40000 ALTER TABLE `home_student` DISABLE KEYS */;
INSERT INTO `home_student` VALUES (1,'Stu','McStudent','M','2008-05-18','90 Test St, Brisbane QLD',44,1,2),(2,'Jim','Beam','F','1999-05-18','30 Beer Rd, Ipswich QLD',99,1,NULL);
/*!40000 ALTER TABLE `home_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_studentphone`
--

DROP TABLE IF EXISTS `home_studentphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_studentphone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNumber` varchar(10) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_studentphone_student_id_889a8aab_fk_home_student_id` (`student_id`),
  CONSTRAINT `home_studentphone_student_id_889a8aab_fk_home_student_id` FOREIGN KEY (`student_id`) REFERENCES `home_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_studentphone`
--

LOCK TABLES `home_studentphone` WRITE;
/*!40000 ALTER TABLE `home_studentphone` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_studentphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_teacher`
--

DROP TABLE IF EXISTS `home_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(75) NOT NULL,
  `DoB` date NOT NULL,
  `facebookID` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `home_teacher_user_id_017134d7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_teacher`
--

LOCK TABLES `home_teacher` WRITE;
/*!40000 ALTER TABLE `home_teacher` DISABLE KEYS */;
INSERT INTO `home_teacher` VALUES (1,'John','Smith','M','johnny@gmail.com','1988-05-17',5,3);
/*!40000 ALTER TABLE `home_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_teacherinstrument`
--

DROP TABLE IF EXISTS `home_teacherinstrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_teacherinstrument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instrumentPlayed` varchar(50) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_teacherinstrument_teacher_id_0820dbb2_fk_home_teacher_id` (`teacher_id`),
  CONSTRAINT `home_teacherinstrument_teacher_id_0820dbb2_fk_home_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `home_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_teacherinstrument`
--

LOCK TABLES `home_teacherinstrument` WRITE;
/*!40000 ALTER TABLE `home_teacherinstrument` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_teacherinstrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_teacherlanguage`
--

DROP TABLE IF EXISTS `home_teacherlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_teacherlanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `languageSpoken` varchar(50) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_teacherlanguage_teacher_id_1bd713af_fk_home_teacher_id` (`teacher_id`),
  CONSTRAINT `home_teacherlanguage_teacher_id_1bd713af_fk_home_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `home_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_teacherlanguage`
--

LOCK TABLES `home_teacherlanguage` WRITE;
/*!40000 ALTER TABLE `home_teacherlanguage` DISABLE KEYS */;
INSERT INTO `home_teacherlanguage` VALUES (2,'English',1),(3,'Chinese (Mandarin)',1);
/*!40000 ALTER TABLE `home_teacherlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_teacherphone`
--

DROP TABLE IF EXISTS `home_teacherphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_teacherphone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNumber` varchar(10) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_teacherphone_teacher_id_1f7fbaca_fk_home_teacher_id` (`teacher_id`),
  CONSTRAINT `home_teacherphone_teacher_id_1f7fbaca_fk_home_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `home_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_teacherphone`
--

LOCK TABLES `home_teacherphone` WRITE;
/*!40000 ALTER TABLE `home_teacherphone` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_teacherphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_teacherqualification`
--

DROP TABLE IF EXISTS `home_teacherqualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_teacherqualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qualification` varchar(50) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_teacherqualification_teacher_id_0949a96d_fk_home_teacher_id` (`teacher_id`),
  CONSTRAINT `home_teacherqualification_teacher_id_0949a96d_fk_home_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `home_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_teacherqualification`
--

LOCK TABLES `home_teacherqualification` WRITE;
/*!40000 ALTER TABLE `home_teacherqualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_teacherqualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_bookingrequest`
--

DROP TABLE IF EXISTS `student_bookingrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_bookingrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` varchar(8) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `user` varchar(40) NOT NULL,
  `prefLang` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_bookingrequest_lesson_id_790ba72c_fk_home_lesson_id` (`lesson_id`),
  CONSTRAINT `student_bookingrequest_lesson_id_790ba72c_fk_home_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `home_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_bookingrequest`
--

LOCK TABLES `student_bookingrequest` WRITE;
/*!40000 ALTER TABLE `student_bookingrequest` DISABLE KEYS */;
INSERT INTO `student_bookingrequest` VALUES (2,'P',1,'student','English'),(3,'P',1,'student','English'),(4,'P',1,'student','Chinese (Mandarin)'),(5,'P',1,'student','Chinese (Mandarin)');
/*!40000 ALTER TABLE `student_bookingrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_feedback`
--

DROP TABLE IF EXISTS `student_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentFeedback` longtext,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_feedback_teacher_id_f9a9d6ac_fk_home_teacher_id` (`teacher_id`),
  CONSTRAINT `student_feedback_teacher_id_f9a9d6ac_fk_home_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `home_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_feedback`
--

LOCK TABLES `student_feedback` WRITE;
/*!40000 ALTER TABLE `student_feedback` DISABLE KEYS */;
INSERT INTO `student_feedback` VALUES (1,'This teacher is not nice.',1),(2,'This teacher is not nice.',1);
/*!40000 ALTER TABLE `student_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_instrument`
--

DROP TABLE IF EXISTS `student_instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_instrument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instrument_name` varchar(50) NOT NULL,
  `costofHire` int(11) NOT NULL,
  `purchaseCost` int(11) NOT NULL,
  `condition` varchar(1) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_instrument_student_id_5afb62ae_fk_home_student_id` (`student_id`),
  CONSTRAINT `student_instrument_student_id_5afb62ae_fk_home_student_id` FOREIGN KEY (`student_id`) REFERENCES `home_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_instrument`
--

LOCK TABLES `student_instrument` WRITE;
/*!40000 ALTER TABLE `student_instrument` DISABLE KEYS */;
INSERT INTO `student_instrument` VALUES (1,'Guitar',50,200,'N',NULL);
/*!40000 ALTER TABLE `student_instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_instrumentrequest`
--

DROP TABLE IF EXISTS `student_instrumentrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_instrumentrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hire` varchar(4) NOT NULL,
  `approval` varchar(8) NOT NULL,
  `instrument_id` int(11) NOT NULL,
  `user` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_instrumentre_instrument_id_97fad842_fk_student_i` (`instrument_id`),
  CONSTRAINT `student_instrumentre_instrument_id_97fad842_fk_student_i` FOREIGN KEY (`instrument_id`) REFERENCES `student_instrument` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_instrumentrequest`
--

LOCK TABLES `student_instrumentrequest` WRITE;
/*!40000 ALTER TABLE `student_instrumentrequest` DISABLE KEYS */;
INSERT INTO `student_instrumentrequest` VALUES (1,'Hire','P',1,'student'),(2,'Hire','P',1,'student');
/*!40000 ALTER TABLE `student_instrumentrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_song`
--

DROP TABLE IF EXISTS `teacher_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_title` varchar(250) NOT NULL,
  `song_file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_song`
--

LOCK TABLES `teacher_song` WRITE;
/*!40000 ALTER TABLE `teacher_song` DISABLE KEYS */;
INSERT INTO `teacher_song` VALUES (1,'Royalty Free Song','Valesco_-_Cloud_9_Royalty_Free_Music.mp3');
/*!40000 ALTER TABLE `teacher_song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-23 21:00:37
