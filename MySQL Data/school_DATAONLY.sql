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
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (139,'Can add log entry',47,'add_logentry'),(140,'Can change log entry',47,'change_logentry'),(141,'Can delete log entry',47,'delete_logentry'),(142,'Can add permission',48,'add_permission'),(143,'Can change permission',48,'change_permission'),(144,'Can delete permission',48,'delete_permission'),(145,'Can add group',49,'add_group'),(146,'Can change group',49,'change_group'),(147,'Can delete group',49,'delete_group'),(148,'Can add user',50,'add_user'),(149,'Can change user',50,'change_user'),(150,'Can delete user',50,'delete_user'),(151,'Can add content type',51,'add_contenttype'),(152,'Can change content type',51,'change_contenttype'),(153,'Can delete content type',51,'delete_contenttype'),(154,'Can add session',52,'add_session'),(155,'Can change session',52,'change_session'),(156,'Can delete session',52,'delete_session'),(157,'Can add lesson',53,'add_lesson'),(158,'Can change lesson',53,'change_lesson'),(159,'Can delete lesson',53,'delete_lesson'),(160,'Can add parent',54,'add_parent'),(161,'Can change parent',54,'change_parent'),(162,'Can delete parent',54,'delete_parent'),(163,'Can add parent phone',55,'add_parentphone'),(164,'Can change parent phone',55,'change_parentphone'),(165,'Can delete parent phone',55,'delete_parentphone'),(166,'Can add student',56,'add_student'),(167,'Can change student',56,'change_student'),(168,'Can delete student',56,'delete_student'),(169,'Can add student phone',57,'add_studentphone'),(170,'Can change student phone',57,'change_studentphone'),(171,'Can delete student phone',57,'delete_studentphone'),(172,'Can add teacher',58,'add_teacher'),(173,'Can change teacher',58,'change_teacher'),(174,'Can delete teacher',58,'delete_teacher'),(175,'Can add teacher instrument',59,'add_teacherinstrument'),(176,'Can change teacher instrument',59,'change_teacherinstrument'),(177,'Can delete teacher instrument',59,'delete_teacherinstrument'),(178,'Can add teacher language',60,'add_teacherlanguage'),(179,'Can change teacher language',60,'change_teacherlanguage'),(180,'Can delete teacher language',60,'delete_teacherlanguage'),(181,'Can add teacher phone',61,'add_teacherphone'),(182,'Can change teacher phone',61,'change_teacherphone'),(183,'Can delete teacher phone',61,'delete_teacherphone'),(184,'Can add teacher qualification',62,'add_teacherqualification'),(185,'Can change teacher qualification',62,'change_teacherqualification'),(186,'Can delete teacher qualification',62,'delete_teacherqualification'),(187,'Can add message',63,'add_message'),(188,'Can change message',63,'change_message'),(189,'Can delete message',63,'delete_message'),(190,'Can add applicant',64,'add_applicant'),(191,'Can change applicant',64,'change_applicant'),(192,'Can delete applicant',64,'delete_applicant'),(193,'Can add instrument',65,'add_instrument'),(194,'Can change instrument',65,'change_instrument'),(195,'Can delete instrument',65,'delete_instrument'),(196,'Can add feedback',66,'add_feedback'),(197,'Can change feedback',66,'change_feedback'),(198,'Can delete feedback',66,'delete_feedback'),(199,'Can add instrument request',67,'add_instrumentrequest'),(200,'Can change instrument request',67,'change_instrumentrequest'),(201,'Can delete instrument request',67,'delete_instrumentrequest'),(202,'Can add booking request',68,'add_bookingrequest'),(203,'Can change booking request',68,'change_bookingrequest'),(204,'Can delete booking request',68,'delete_bookingrequest'),(205,'Can add song',69,'add_song'),(206,'Can change song',69,'change_song'),(207,'Can delete song',69,'delete_song');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$h96cXWAPkg1r$xlLaGXTqhNddDXMK0HPpmgiMofgSmmL4JlnaSaUAYOQ=','2018-05-23 08:14:13.766144',1,'admin','','','admin@example.com',1,1,'2018-05-16 07:47:27.395571'),(2,'pbkdf2_sha256$100000$BoPCKdYMzo0H$wzxY22EUIGWUQ0ni6QLm3RGTlxcC7hvU7j+sKvpSGkQ=','2018-05-22 11:07:12.018747',0,'student','','','',0,1,'2018-05-16 07:48:31.292222'),(3,'pbkdf2_sha256$100000$tfJMt4rCHQNa$6ne5s0L9V+UAgpwdTq6GRfwwRx47/zJyHCJHECB9z9U=','2018-05-23 07:35:38.709889',0,'teacher','','','',1,1,'2018-05-16 07:48:42.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-05-16 07:48:31.394321','2','student',1,'[{\"added\": {}}]',50,1),(2,'2018-05-16 07:48:42.303841','3','teacher',1,'[{\"added\": {}}]',50,1),(3,'2018-05-16 07:48:52.648442','3','teacher',2,'[{\"changed\": {\"fields\": [\"is_staff\"]}}]',50,1),(4,'2018-05-17 07:49:23.281936','1','John - Smith',1,'[{\"added\": {}}]',58,1),(5,'2018-05-17 07:56:43.646624','1','1 MON - 09:00:00',1,'[{\"added\": {}}]',53,1),(6,'2018-05-17 08:05:33.484961','1','None 1 MON - 09:00:00 REQUEST P',3,'',68,1),(7,'2018-05-18 01:39:38.820033','1','Chinese (Mandarin)',1,'[{\"added\": {}}]',60,1),(8,'2018-05-18 01:44:15.930372','1','Chinese (Mandarin)',3,'',60,1),(9,'2018-05-18 01:44:23.609213','2','English',1,'[{\"added\": {}}]',60,1),(10,'2018-05-18 01:44:36.827790','3','Chinese (Mandarin)',1,'[{\"added\": {}}]',60,1),(11,'2018-05-18 09:17:42.088826','1','Stu - McStudent',1,'[{\"added\": {}}]',56,1),(12,'2018-05-18 09:22:57.217332','1','1 MON - 09:00:00',2,'[{\"changed\": {\"fields\": [\"students\"]}}]',53,1),(13,'2018-05-18 09:24:58.240858','2','Jim - Beam',1,'[{\"added\": {}}]',56,1),(14,'2018-05-18 09:25:13.766628','1','1 MON - 09:00:00',2,'[{\"changed\": {\"fields\": [\"students\"]}}]',53,1),(15,'2018-05-22 11:06:44.545066','1','Guitar',1,'[{\"added\": {}}]',65,1),(16,'2018-05-23 07:34:55.732209','1','1 MON - 09:00:00',2,'[{\"changed\": {\"fields\": [\"type\"]}}]',53,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (47,'admin','logentry'),(49,'auth','group'),(48,'auth','permission'),(50,'auth','user'),(51,'contenttypes','contenttype'),(64,'home','applicant'),(53,'home','lesson'),(63,'home','message'),(54,'home','parent'),(55,'home','parentphone'),(56,'home','student'),(57,'home','studentphone'),(58,'home','teacher'),(59,'home','teacherinstrument'),(60,'home','teacherlanguage'),(61,'home','teacherphone'),(62,'home','teacherqualification'),(52,'sessions','session'),(68,'student','bookingrequest'),(66,'student','feedback'),(65,'student','instrument'),(67,'student','instrumentrequest'),(69,'teacher','song');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-05-16 07:34:26.591065'),(2,'auth','0001_initial','2018-05-16 07:34:27.209534'),(3,'admin','0001_initial','2018-05-16 07:34:27.335170'),(4,'admin','0002_logentry_remove_auto_add','2018-05-16 07:34:27.346180'),(5,'contenttypes','0002_remove_content_type_name','2018-05-16 07:34:27.428320'),(6,'auth','0002_alter_permission_name_max_length','2018-05-16 07:34:27.498329'),(7,'auth','0003_alter_user_email_max_length','2018-05-16 07:34:27.557073'),(8,'auth','0004_alter_user_username_opts','2018-05-16 07:34:27.567885'),(9,'auth','0005_alter_user_last_login_null','2018-05-16 07:34:27.612358'),(10,'auth','0006_require_contenttypes_0002','2018-05-16 07:34:27.616407'),(11,'auth','0007_alter_validators_add_error_messages','2018-05-16 07:34:27.626416'),(12,'auth','0008_alter_user_username_max_length','2018-05-16 07:34:27.729926'),(13,'auth','0009_alter_user_last_name_max_length','2018-05-16 07:34:27.783604'),(14,'home','0001_initial','2018-05-16 07:34:28.824126'),(15,'home','0002_auto_20180328_2046','2018-05-16 07:34:28.922831'),(16,'home','0003_message','2018-05-16 07:34:28.979055'),(17,'home','0004_auto_20180426_2119','2018-05-16 07:34:29.042738'),(18,'home','0005_remove_teacher_studentfeedback','2018-05-16 07:34:29.091244'),(19,'home','0006_applicant','2018-05-16 07:34:29.119283'),(20,'home','0007_auto_20180511_2236','2018-05-16 07:34:29.304793'),(21,'sessions','0001_initial','2018-05-16 07:34:29.345817'),(22,'student','0001_initial','2018-05-16 07:34:29.430819'),(23,'student','0002_feedback','2018-05-16 07:34:29.510764'),(24,'student','0003_auto_20180429_1758','2018-05-16 07:34:29.526628'),(25,'student','0004_auto_20180511_2236','2018-05-16 07:34:29.758557'),(26,'student','0005_auto_20180511_2236','2018-05-16 07:34:29.773571'),(27,'student','0006_auto_20180511_2325','2018-05-16 07:34:29.917975'),(28,'teacher','0001_initial','2018-05-16 07:34:29.944813'),(29,'student','0007_auto_20180516_1744','2018-05-16 07:44:55.572727'),(30,'student','0008_auto_20180517_1723','2018-05-17 07:24:16.566204'),(31,'home','0008_auto_20180517_1746','2018-05-17 07:46:28.500196'),(32,'home','0009_auto_20180517_1753','2018-05-17 07:53:15.314610'),(33,'student','0009_auto_20180517_1753','2018-05-17 07:53:15.329589'),(34,'home','0010_auto_20180517_1756','2018-05-17 07:56:11.707729'),(35,'student','0010_auto_20180517_1756','2018-05-17 07:56:11.741752'),(36,'student','0011_auto_20180517_1759','2018-05-17 07:59:25.725027'),(37,'student','0012_auto_20180517_1807','2018-05-17 08:07:42.533240'),(38,'student','0013_auto_20180517_1820','2018-05-17 08:20:04.615659'),(39,'student','0014_auto_20180518_1136','2018-05-18 01:36:24.861727'),(40,'student','0015_auto_20180518_1143','2018-05-18 01:43:06.640683'),(41,'home','0011_auto_20180522_2105','2018-05-22 11:05:06.520816'),(42,'student','0016_auto_20180522_2105','2018-05-22 11:05:06.659818'),(43,'home','0012_lesson_type','2018-05-23 07:34:11.374569'),(44,'student','0017_auto_20180523_1227','2018-05-23 07:34:11.402573');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_applicant`
--

LOCK TABLES `home_applicant` WRITE;
/*!40000 ALTER TABLE `home_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_lesson`
--

LOCK TABLES `home_lesson` WRITE;
/*!40000 ALTER TABLE `home_lesson` DISABLE KEYS */;
INSERT INTO `home_lesson` VALUES (1,30,1,'MON','09:00:00.000000','Piano lesson');
/*!40000 ALTER TABLE `home_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_lesson_students`
--

LOCK TABLES `home_lesson_students` WRITE;
/*!40000 ALTER TABLE `home_lesson_students` DISABLE KEYS */;
INSERT INTO `home_lesson_students` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `home_lesson_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_message`
--

LOCK TABLES `home_message` WRITE;
/*!40000 ALTER TABLE `home_message` DISABLE KEYS */;
INSERT INTO `home_message` VALUES (1,'John','Smith','john@gmail.com','0450453434','This is to test MySQL connection.'),(2,'Test','Last','test@gmail.com','0412345678','This is a test message.'),(3,'Test','Last','test@gmail.com','0412345678','This is a test message.');
/*!40000 ALTER TABLE `home_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_parent`
--

LOCK TABLES `home_parent` WRITE;
/*!40000 ALTER TABLE `home_parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_parent_students`
--

LOCK TABLES `home_parent_students` WRITE;
/*!40000 ALTER TABLE `home_parent_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_parent_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_parentphone`
--

LOCK TABLES `home_parentphone` WRITE;
/*!40000 ALTER TABLE `home_parentphone` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_parentphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_student`
--

LOCK TABLES `home_student` WRITE;
/*!40000 ALTER TABLE `home_student` DISABLE KEYS */;
INSERT INTO `home_student` VALUES (1,'Stu','McStudent','M','2008-05-18','90 Test St, Brisbane QLD',44,1,2),(2,'Jim','Beam','F','1999-05-18','30 Beer Rd, Ipswich QLD',99,1,NULL);
/*!40000 ALTER TABLE `home_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_studentphone`
--

LOCK TABLES `home_studentphone` WRITE;
/*!40000 ALTER TABLE `home_studentphone` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_studentphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_teacher`
--

LOCK TABLES `home_teacher` WRITE;
/*!40000 ALTER TABLE `home_teacher` DISABLE KEYS */;
INSERT INTO `home_teacher` VALUES (1,'John','Smith','M','johnny@gmail.com','1988-05-17',5,3);
/*!40000 ALTER TABLE `home_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_teacherinstrument`
--

LOCK TABLES `home_teacherinstrument` WRITE;
/*!40000 ALTER TABLE `home_teacherinstrument` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_teacherinstrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_teacherlanguage`
--

LOCK TABLES `home_teacherlanguage` WRITE;
/*!40000 ALTER TABLE `home_teacherlanguage` DISABLE KEYS */;
INSERT INTO `home_teacherlanguage` VALUES (2,'English',1),(3,'Chinese (Mandarin)',1);
/*!40000 ALTER TABLE `home_teacherlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_teacherphone`
--

LOCK TABLES `home_teacherphone` WRITE;
/*!40000 ALTER TABLE `home_teacherphone` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_teacherphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `home_teacherqualification`
--

LOCK TABLES `home_teacherqualification` WRITE;
/*!40000 ALTER TABLE `home_teacherqualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_teacherqualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `student_bookingrequest`
--

LOCK TABLES `student_bookingrequest` WRITE;
/*!40000 ALTER TABLE `student_bookingrequest` DISABLE KEYS */;
INSERT INTO `student_bookingrequest` VALUES (2,'P',1,'student','English'),(3,'P',1,'student','English'),(4,'P',1,'student','Chinese (Mandarin)'),(5,'P',1,'student','Chinese (Mandarin)');
/*!40000 ALTER TABLE `student_bookingrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `student_feedback`
--

LOCK TABLES `student_feedback` WRITE;
/*!40000 ALTER TABLE `student_feedback` DISABLE KEYS */;
INSERT INTO `student_feedback` VALUES (1,'This teacher is not nice.',1),(2,'This teacher is not nice.',1);
/*!40000 ALTER TABLE `student_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `student_instrument`
--

LOCK TABLES `student_instrument` WRITE;
/*!40000 ALTER TABLE `student_instrument` DISABLE KEYS */;
INSERT INTO `student_instrument` VALUES (1,'Guitar',50,200,'N',NULL);
/*!40000 ALTER TABLE `student_instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `student_instrumentrequest`
--

LOCK TABLES `student_instrumentrequest` WRITE;
/*!40000 ALTER TABLE `student_instrumentrequest` DISABLE KEYS */;
INSERT INTO `student_instrumentrequest` VALUES (1,'Hire','P',1,'student'),(2,'Hire','P',1,'student');
/*!40000 ALTER TABLE `student_instrumentrequest` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2018-05-23 21:00:05
