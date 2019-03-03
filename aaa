-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.33-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema aaa_academy
--

CREATE DATABASE IF NOT EXISTS aaa_academy;
USE aaa_academy;

--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `_id` int(10) unsigned NOT NULL auto_increment,
  `english_name` varchar(45) NOT NULL,
  `hindi_name` varchar(45) default NULL,
  `logo` varchar(45) default NULL,
  PRIMARY KEY  (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`_id`,`english_name`,`hindi_name`,`logo`) VALUES 
 (1,'Aptitude',NULL,NULL),
 (2,'Reasoning',NULL,NULL),
 (3,'Aptitude','',NULL),
 (4,'English','',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `_id` int(10) unsigned NOT NULL auto_increment,
  `question_id` int(10) unsigned NOT NULL,
  `english_text` varchar(45) NOT NULL,
  `hindi_text` varchar(45) NOT NULL,
  PRIMARY KEY  (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` (`_id`,`question_id`,`english_text`,`hindi_text`) VALUES 
 (1,5,'8',''),
 (2,5,'9',''),
 (3,5,'10',''),
 (4,5,'11',''),
 (5,6,'8',''),
 (6,6,'9',''),
 (7,6,'10',''),
 (8,6,'11',''),
 (9,7,'cdfr','cdf'),
 (10,7,'dcfr',''),
 (11,7,'dcfr',''),
 (12,7,'cdfr',''),
 (13,8,'cdfec',''),
 (14,8,'cdfedc',''),
 (15,9,'cdfec',''),
 (16,9,'cdfedc',''),
 (17,10,'He IS Fine ',''),
 (18,10,'He May Be Fine ',''),
 (19,11,'vfrdcv',''),
 (20,11,'vdfrv',''),
 (21,12,'dcfe',''),
 (22,12,'fdedc',''),
 (23,13,'sde',''),
 (24,13,'cde',''),
 (25,13,'cdf',''),
 (26,14,'vfgrv',''),
 (27,14,'vfgrv','');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;


--
-- Definition of table `pdf_files`
--

DROP TABLE IF EXISTS `pdf_files`;
CREATE TABLE `pdf_files` (
  `_id` int(10) unsigned NOT NULL auto_increment,
  `sub_category_id` int(10) unsigned NOT NULL,
  `english_name` varchar(45) default NULL,
  `hindi_name` varchar(45) default NULL,
  `filename` varchar(45) NOT NULL,
  PRIMARY KEY  (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf_files`
--

/*!40000 ALTER TABLE `pdf_files` DISABLE KEYS */;
INSERT INTO `pdf_files` (`_id`,`sub_category_id`,`english_name`,`hindi_name`,`filename`) VALUES 
 (1,1,'undefined','undefined','c9cab7376afbaf6ddbe93bdd8222ea8d'),
 (2,1,'undefined','undefined','0f94ed102b6de6bcf833a0d5d11535b6'),
 (3,1,'undefined','undefined','50da7dc2b7208dc490c462c7ad0e31d3'),
 (4,1,'undefined','undefined','f1e51f6a45afba12c74f8efa848feca2'),
 (5,1,'undefined','undefined','4009011063725826b1e1a7336ff98c11'),
 (6,2,'undefined','undefined','c7f4d0778a7c0d28e24466c3a74b3b06'),
 (7,9,'undefined','undefined','b205c4eb06ed3f11b7e6e20c7589650a');
/*!40000 ALTER TABLE `pdf_files` ENABLE KEYS */;


--
-- Definition of table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `_id` int(10) unsigned NOT NULL auto_increment,
  `sub_category_id` int(10) unsigned NOT NULL,
  `english_text` varchar(500) NOT NULL,
  `hindi_text` varchar(500) default NULL,
  `correct_option_index` int(10) unsigned NOT NULL,
  `pic` varchar(45) default NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY  (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`_id`,`sub_category_id`,`english_text`,`hindi_text`,`correct_option_index`,`pic`,`type`) VALUES 
 (1,3,'dxcfr','fdcrv',3,NULL,''),
 (2,3,'If the value of x is 4. The Value of x+4 is ','',1,NULL,''),
 (3,3,'If the value of x is 4. The Value of x+4 is ','',1,NULL,''),
 (4,3,'If the value of x is 4. The Value of x+4 is ','',1,NULL,''),
 (5,3,'If the value of x is 4. The Value of x+4 is ','',1,NULL,''),
 (6,3,'If the value of x is 4. The Value of x+4 is ','',1,NULL,''),
 (7,3,'scef','scedf',2,'4ac7efd35888edb54740183141f5d517',''),
 (8,2,'sadfsdc','',1,'d6fc52dc2059375402f35b8f37202f4f',''),
 (9,2,'sadfsdc','',1,'9ad92d646e3f671d0f0a0380615008be',''),
 (10,3,'How Are He IS ??','',1,'8fbfe1017afac3324c78659c6999ae9d',''),
 (11,1,'dvfdfv','',1,'06fc5beeff55a6227c6ce3c2b9d3e58d',''),
 (12,2,'dfe','',1,'ba0c743afb222c5c0788946ff924b20e',''),
 (13,2,'sdeedsx','',2,NULL,''),
 (14,1,'dvggfv','',1,'ec963dcf3dd133da34c910ceba15476a','');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


--
-- Definition of table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE `sub_category` (
  `_id` int(10) unsigned NOT NULL auto_increment,
  `category_id` int(10) unsigned NOT NULL,
  `english_name` varchar(45) NOT NULL,
  `hindi_name` varchar(45) default NULL,
  `logo` varchar(500) default NULL,
  PRIMARY KEY  (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
INSERT INTO `sub_category` (`_id`,`category_id`,`english_name`,`hindi_name`,`logo`) VALUES 
 (1,1,'Time And Work',NULL,'https://static.vecteezy.com/system/resources/previews/000/107/783/original/free-time-to-work-vector-illustration.jpg'),
 (2,1,'Profit And Loss',NULL,'https://static.vecteezy.com/system/resources/previews/000/107/783/original/free-time-to-work-vector-illustration.jpg'),
 (3,1,'Number And System',NULL,'https://static.vecteezy.com/system/resources/previews/000/107/783/original/free-time-to-work-vector-illustration.jpg'),
 (4,2,'Syllogism',NULL,'https://static.vecteezy.com/system/resources/previews/000/107/783/original/free-time-to-work-vector-illustration.jpg'),
 (5,1,'Time And Work ','',NULL),
 (6,1,'Mixture And Aligations','',NULL);
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;


--
-- Definition of table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `_id` int(10) unsigned NOT NULL auto_increment,
  `english_title` varchar(1000) NOT NULL,
  `hindi_title` varchar(1000) default NULL,
  `cancel_allowed_time_in_minutes` varchar(45) default NULL,
  `test_online_duration_in_hours` varchar(45) NOT NULL,
  `online_status` varchar(45) default NULL,
  `test_commence_date` varchar(45) NOT NULL,
  `test_commence_time` varchar(45) NOT NULL,
  `test_allowed_time_in_seconds` varchar(45) NOT NULL,
  `test_online_no_of_days` varchar(45) NOT NULL,
  PRIMARY KEY  (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;


--
-- Definition of table `test_options`
--

DROP TABLE IF EXISTS `test_options`;
CREATE TABLE `test_options` (
  `_id` int(10) unsigned NOT NULL auto_increment,
  `test_question_id` varchar(45) NOT NULL,
  `english_text` varchar(45) NOT NULL,
  `hindi_text` varchar(45) NOT NULL,
  PRIMARY KEY  (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_options`
--

/*!40000 ALTER TABLE `test_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_options` ENABLE KEYS */;


--
-- Definition of table `test_questions`
--

DROP TABLE IF EXISTS `test_questions`;
CREATE TABLE `test_questions` (
  `_id` int(10) unsigned NOT NULL auto_increment,
  `test_id` int(10) unsigned NOT NULL,
  `correct_option_index` varchar(45) NOT NULL,
  `english_text` varchar(500) NOT NULL,
  `hindi_text` varchar(500) NOT NULL,
  `pic` varchar(45) default NULL,
  PRIMARY KEY  (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_questions`
--

/*!40000 ALTER TABLE `test_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_questions` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
