-- MySQL dump 10.10
--
-- Host: localhost    Database: ddd_dev
-- ------------------------------------------------------
-- Server version	5.0.27-debug

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
-- Table structure for table `admin_glossary_terms`
--

DROP TABLE IF EXISTS `admin_glossary_terms`;
CREATE TABLE `admin_glossary_terms` (
  `id` int(11) NOT NULL auto_increment,
  `term` varchar(255) default NULL,
  `definition` text,
  `position` int(11) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `common` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_glossary_terms`
--

LOCK TABLES `admin_glossary_terms` WRITE;
/*!40000 ALTER TABLE `admin_glossary_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_glossary_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pages`
--

DROP TABLE IF EXISTS `cms_pages`;
CREATE TABLE `cms_pages` (
  `id` int(11) NOT NULL auto_increment,
  `reference_string` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `sub_title` text,
  `sub_title_url` varchar(255) default NULL,
  `body` text,
  `meta_keyword` text,
  `meta_description` text,
  `position` int(11) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `path` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_pages`
--

LOCK TABLES `cms_pages` WRITE;
/*!40000 ALTER TABLE `cms_pages` DISABLE KEYS */;
INSERT INTO `cms_pages` VALUES (4,'Public: Home','Web Application design and development for projects of all size. ','h2. \"Specialization in integration of open-source technologies with enterprise systems. (Enterprise Development)\":/enterprise','','','','',1,0,'2009-04-15 20:23:34','2009-04-16 04:46:21','home'),(5,'Public: My Process','The Process','','','','','',2,0,'2009-04-15 20:25:49','2009-04-16 02:41:58','process'),(6,'Public: Free Consultation','Web design and development free consultation!','Nothing is free. Except sales pitches... \r\nBut seriously, we should start with a meeting so you can tell me what you want. ','','A free, one-hour, initial consultation is given, to all perspective clients. This is best done face-to-face. The goal of the consultation is to document the project objectives and determine an appropriate course of action. \r\n\r\nMy written follow write-up will contain:\r\n# An outline of my understanding of your initial requirements\r\n# A guess at the total scope of the project\r\n# A break down of the steps that will be needed to complete the project, \r\n# Recommendations for each step\r\n\r\n\r\nThe outline portion of the write-up will serve as a starting point for the discovery phase.\r\n\r\nTo schedule a consultation please contact me at any time.','','',1,5,'2009-04-15 20:26:59','2009-04-16 02:42:29','free_consultation'),(7,'Public: Discovery','The Discovery Phase','h2. \"Walking on water and developing software from a specification are easy if both are frozen.\" - Edward V Berard\r\nIt  will never be easy, but a discovery phase makes it possible.  ','','The goal of the discovery phase is for both client and developer to clearly understand the functional requirements of the site, and to document these requirements. The deliverable, at the end of the discovery phase, is a document, or set of documents, comprehensive enough for any professional development team to give a quote. \r\n\r\nThe deliverable often includes, but is not limited to:\r\n# A text outline (often a MS Word document) of the pages and functionality of the site\r\n# Wireframes that illustrate the User interfaces\r\n# An ER Diagram that provides a recommendation for the database architecture.\r\n\r\nRequirements will always change after development begins. A good discovery phase will keep these changes to a manageable minimum that does not compromise the budget or time-line.\r\n\r\nFor small sites, the entire discovery process may take only 1 or 2 hours.  For complex, or innovative web-applications, the  discovery phase can run 20 to 40 hours or more. \r\n\r\nThe discovery process begins during the initial, free consultation as the client explains the basic requirements of the site. My write-up of the first meeting will contain a guess at the total scope of the project, recommendations, and some starter questions. \r\n\r\nThe subsequent sessions consist of question and answer type dialog, in which I lead the client through an exploration of a fictitious userâ€™s activity on the site. Through this dialog, the technical requirements and the best possible solution, organization, and presentation of the clientâ€™s vision are discovered.','','',2,5,'2009-04-15 20:37:33','2009-04-16 04:43:35','discovery'),(8,'Public: Design','Design','','','','','',3,5,'2009-04-15 20:55:36','2009-04-16 02:43:00','design'),(9,'Public: Development','Development','','','','','',4,5,'2009-04-15 20:56:42','2009-04-16 02:43:13','development'),(10,'Public: Quality Assurance','QA','Quality Assurance... testing.','','','','',5,5,'2009-04-15 20:58:04','2009-04-16 02:43:24','quality_assurance'),(11,'Public: Enterprise','Enterprise Integration','','','','','',3,0,'2009-04-15 20:59:18','2009-04-16 02:43:35','enterprise'),(12,'Public: Pcgi','PCGI','','','','','',4,0,'2009-04-15 21:00:06','2009-04-16 02:43:48','pcgi'),(13,'Projects: Index','What types of projects does ddd do?','I specialize in enterprise stuff, but I also do e-commerce, community sites, internal data-management tools, and all sorts of personal content management systems (CMS) and online portfolios.','','As a programmer, most of my jobs are developing software for the web. Those of you seeking high-concept visual design and branding, you are still in the right place. I have a large pool of extremely talented, professional, graphic-designers and artists with whom I collaborate regularly. \r\n\r\nFor a list of my current designers and links to their work please contact me directly.','','',5,0,'2009-04-16 01:00:52','2009-04-16 01:07:52','projects'),(14,'Public: Bio','Bio &amp; Resume','','','','','',6,0,'2009-04-16 01:36:25','2009-04-16 02:44:11','bio'),(15,'Glossary Terms: Index','What is involved in building a web site?','h2. To complete a professional web site, a number of steps are required. Familiarity with the parts will make the process more enjoyable. Below is a list of every term i can think of that a web site owner should know. ','','%(required)*% indicates a requirement common to *_every_* web site. Start (and stop?) with the %(required)*%\'s, if you are new to the game. \r\n\r\nAs your loyal developer, I will shield you from the worst of the techie stuff, but a little effort towards understanding the process will save you time, money, and sanity.','','',7,0,'2009-04-16 02:47:43','2009-04-16 05:02:21','glossary');
/*!40000 ALTER TABLE `cms_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_values`
--

DROP TABLE IF EXISTS `config_values`;
CREATE TABLE `config_values` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  `position` int(11) default NULL,
  `sys_var` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_values`
--

LOCK TABLES `config_values` WRITE;
/*!40000 ALTER TABLE `config_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glossary_terms`
--

DROP TABLE IF EXISTS `glossary_terms`;
CREATE TABLE `glossary_terms` (
  `id` int(11) NOT NULL auto_increment,
  `term` varchar(255) default NULL,
  `definition` text,
  `position` int(11) default NULL,
  `parent_id` int(11) default NULL,
  `common` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `glossary_terms`
--

LOCK TABLES `glossary_terms` WRITE;
/*!40000 ALTER TABLE `glossary_terms` DISABLE KEYS */;
INSERT INTO `glossary_terms` VALUES (3,'Hosting','Every web site needs hosting. A host is a company who will rent you space on one of their computers, where your web site will live.\r\n\r\nTheoretically, you could host your web site on your laptop but realistically, it would be a pain-in-the-you-know-what. Also, your laptop would have to be on 24/7 and open to the public so people would have access to your site. In addition to managing those requirements, hosting companies take care of a lot of other stuff like updating security, installing necessarily software, and keeping backups of your files. \r\n\r\nA good host should have an easy-to-read website that details their various plans and lists the services that are included.\r\n\r\nQuality hosting can cost as little as $3 per month and scales indefinitely from there. high-traffic web sites can require multiple computers and a dedicated staff just for upkeep of the hosting environment.',1,0,1,'2009-04-16 03:34:30','2009-04-16 03:34:30'),(4,'Domain Name','Whateveryouwant.com is an example of a domain name. This is the â€œweb addressâ€ of your website. You can get any domain name you want but there are restrictions.  Characters are limited to letters, numbers and underscores (no spaces), and it must be unique to its suffix (.com, .org, .net, .info, are a few common ones). \r\n\r\nYour domain name must be â€œrentedâ€ from a domain registrar. Godaddy.com is one of the most common registrar, but there are many others. Pricing varies from $3 to $30 per year. Some hosting companies include the domain registration service. This is convenient, but should not be a factor in choosing a host.',2,0,1,'2009-04-16 03:36:05','2009-04-16 03:36:22'),(5,'HTML / CSS','Very important',3,0,1,'2009-04-16 03:36:59','2009-04-16 05:29:38'),(6,'Graphic Design / Branding','Design',4,0,1,'2009-04-16 03:45:52','2009-04-16 05:29:38'),(8,'Information Architecture (IA)','Information Architecture (IA)',6,0,0,'2009-04-16 03:46:31','2009-04-16 03:46:31'),(10,'Planing / Discovery','Planing / Discovery',5,0,0,'2009-04-16 05:29:56','2009-04-16 05:52:27'),(11,'Wireframes','Wireframes',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(12,'Proto-site','Proto-site',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(13,'Use Cases','Use Cases',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(14,'Developments Framework','Developments Framework',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(15,'Web Services','Web Services',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(16,'Javascript / AJAX','Javascript / AJAX',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(17,'Flash','Flash',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(18,'Client-Side / Server-Side','Client-Side / Server-Side',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(19,'Front-End / Back-End','Front-End / Back-End',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(20,'Development','Development',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(21,'User Interface (UI)','User Interface (UI)',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(22,'Web 2.0','Web 2.0',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(23,'Project Managment','Project Managment',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(24,'LAMP','LAMP',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(25,'Operating System: UNIX, LYNIX, *NIX, Windows, Mac OSX','Operating System: UNIX, LYNIX, *NIX, Windows, Mac OSX',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(26,'Databases: MySQL, Sqlite, Postgres, DB2, Orical, SQLServer, AS 400','Databases: MySQL, Sqlite, Postgres, DB2, Orical, SQLServer, AS 400',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22'),(27,'Programing languages: PHP, Java, Ruby On Rails, C++, Python, Per','Programing languages: PHP, Java, Ruby On Rails, C++, Python, Per',5,NULL,NULL,'2009-04-16 05:36:22','2009-04-16 05:36:22');
/*!40000 ALTER TABLE `glossary_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL auto_increment,
  `issued` int(11) default NULL,
  `lifetime` int(11) default NULL,
  `handle` varchar(255) default NULL,
  `assoc_type` varchar(255) default NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `open_id_authentication_associations`
--

LOCK TABLES `open_id_authentication_associations` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL auto_increment,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) default NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `open_id_authentication_nonces`
--

LOCK TABLES `open_id_authentication_nonces` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_nonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_nonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `teaser` text,
  `description` text,
  `photo_file_name` varchar(255) default NULL,
  `photo_content_type` varchar(255) default NULL,
  `photo_file_size` int(11) default NULL,
  `position` int(11) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `featured` tinyint(1) default NULL,
  `featured_on` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (9,'ZXONEX','http://www.zxonex.com','_ZXONEX is a politically-focused online-community monotized by the sale of advertising space._\r\n\r\n\r\nZXONEX is a Ruby On Rails application. Primary development was done on Rails 2.3.2. It is hosted on a VPS with a Mongrel cluster proxied by Apache. Database is MySQL.\r\n\r\nThe client side is valid XHTML 1.0 Strict and CSS 2.1. jQuery is used for the dom-scripting and AJAX.','ZXONEX began as a code review for Adam, who found me on Craigslist. After the review, it was clear that ZXONEX had been afflicted by, the very common, bad-developer-syndrom. We decided to start from scratch. Adam and I spent our discovery phase translating his innovative vision of a politically-focused online-community into a functional specification and development plan.\r\n\r\nSome of ZXONEXâ€™s feature highlights include a fast and granular search engine powered by Thinking-Sphinx and YouTube-like video uploading and encoding.','zxonex.gif','image/gif',23043,NULL,0,1,'2009-04-15 21:10:42','2009-04-15 18:19:01','2009-04-15 21:10:42'),(10,'Credit Desk','http://www.creditdesk.org','_Creditdesk is an online tool for reporting your own, good credit activity. After submitting activity, such as payment of a monthly bill, data is reviewed and verified by an accredited [credit agency]. Credit reports are made available to approved, credit-lending institutions._\r\n\r\n_Credit Desk users pay a monthly charge lenders pay a fee for the generation of reports. All funds are collected on site through an online payment gateway._','The Credit Desk project began as a code-review for Yoshi and Jake. The site had been partially built but had run into trouble becuase the chosen technologies were deficient and unable to realize the full functional requirments.\r\n\r\nYoshi and Jake agreed to begin a formal discovery phase, even though they had arleady spent time and money documenting the needs of the site. Almost imidieatley, a clear picture of the siteâ€™s functionlaity and interfaces came into being, and we were able to identify and resolve many development issues before coding began.\r\n\r\nDevelopment of the Credit Desk application continues as we optomize this inovative and timley online resource. ','creditdesk.gif','image/gif',4379,2,0,0,'2009-04-15 21:11:10','2009-04-15 18:47:53','2009-04-15 21:11:10');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'superuser');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE `roles_users` (
  `role_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  KEY `index_roles_users_on_role_id` (`role_id`),
  KEY `index_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20090315040906'),('20090315040910'),('20090315040917'),('20090315040921'),('20090315040925'),('20090316223229'),('20090415045342'),('20090415163500'),('20090415192508'),('20090415192715'),('20090416025139'),('20090416025456'),('20090416034133');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL auto_increment,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'37902b8ea54fd3e4323cc13db2e09f44','BAh7CDoQX2NzcmZfdG9rZW4iMXBGWkdNK0JEc3RPVnBkeFl4UnFQUEg1UzhV\nMW4xUDZYU09yNVZOOHRhQW89IgpmbGFzaElDOidBY3Rpb25Db250cm9sbGVy\nOjpGbGFzaDo6Rmxhc2hIYXNoewY6C25vdGljZSImUHJvamVjdCB3YXMgc3Vj\nY2Vzc2Z1bGx5IHVwZGF0ZWQuBjoKQHVzZWR7BjsHVDoMdXNlcl9pZGkH\n','2009-04-15 17:30:08','2009-04-15 21:11:10'),(2,'e4eb8c65d3f279223422f0ebbcb34702','BAh7CDoQX2NzcmZfdG9rZW4iMXB1WXBzTHpFeG1iaERDT3M0REdoTk1ocFhW\nUU1WZVo4VVdCOEQxTENZcHM9Ogx1c2VyX2lkaQciCmZsYXNoSUM6J0FjdGlv\nbkNvbnRyb2xsZXI6OkZsYXNoOjpGbGFzaEhhc2h7BjoLbm90aWNlIitHbG9z\nc2FyeVRlcm0gd2FzIHN1Y2Nlc3NmdWxseSB1cGRhdGVkLgY6CkB1c2VkewY7\nCFQ=\n','2009-04-15 22:30:51','2009-04-16 05:52:27');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
CREATE TABLE `slugs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `sluggable_id` int(11) default NULL,
  `sequence` int(11) NOT NULL default '1',
  `sluggable_type` varchar(40) default NULL,
  `scope` varchar(40) default NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_slugs_on_name_and_sluggable_type_and_scope_and_sequence` (`name`,`sluggable_type`,`scope`,`sequence`),
  KEY `index_slugs_on_sluggable_id` (`sluggable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'html-css',5,1,'GlossaryTerm',NULL,'2009-04-16 03:44:05'),(2,'hosting',3,1,'GlossaryTerm',NULL,'2009-04-16 03:44:57'),(3,'domain-name',4,1,'GlossaryTerm',NULL,'2009-04-16 03:44:57'),(4,'graphic-design-branding',6,1,'GlossaryTerm',NULL,'2009-04-16 03:45:52'),(6,'information-architecture-ia',8,1,'GlossaryTerm',NULL,'2009-04-16 03:46:31'),(8,'planing',10,1,'GlossaryTerm',NULL,'2009-04-16 05:29:56'),(9,'wireframes',11,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(10,'proto-site',12,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(11,'use-cases',13,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(12,'developments-framework',14,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(13,'web-services',15,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(14,'javascript-ajax',16,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(15,'flash',17,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(16,'client-side-server-side',18,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(17,'front-end-back-end',19,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(18,'development',20,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(19,'user-interface-ui',21,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(20,'web-2-0',22,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(21,'project-managment',23,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(22,'lamp',24,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(23,'operating-system-unix-lynix-nix-windows-mac-osx',25,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(24,'databases-mysql-sqlite-postgres-db2-orical-sqlserver-as-400',26,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(25,'programing-languages-php-java-ruby-on-rails-c-python-per',27,1,'GlossaryTerm',NULL,'2009-04-16 05:36:22'),(26,'planing-discovery',10,1,'GlossaryTerm',NULL,'2009-04-16 05:52:27');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL auto_increment,
  `tag_id` int(11) default NULL,
  `taggable_id` int(11) default NULL,
  `taggable_type` varchar(255) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_taggings_on_tag_id_and_taggable_type` (`tag_id`,`taggable_type`),
  KEY `index_taggings_on_user_id_and_tag_id_and_taggable_type` (`user_id`,`tag_id`,`taggable_type`),
  KEY `index_taggings_on_taggable_id_and_taggable_type` (`taggable_id`,`taggable_type`),
  KEY `index_taggings_on_user_id_and_taggable_id_and_taggable_type` (`user_id`,`taggable_id`,`taggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `taggings_count` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `index_tags_on_name` (`name`),
  KEY `index_tags_on_taggings_count` (`taggings_count`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(40) default NULL,
  `name` varchar(100) default '',
  `email` varchar(100) default NULL,
  `crypted_password` varchar(40) default NULL,
  `salt` varchar(40) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(40) default NULL,
  `remember_token_expires_at` datetime default NULL,
  `activation_code` varchar(40) default NULL,
  `activated_at` datetime default NULL,
  `state` varchar(255) default 'passive',
  `deleted_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,NULL,'','info@dinshawdesign.com','6b2dad0cdbdfb4a60dfafac1a81c44420f41a465','d7d1155713ac9762e78ce1aa83371baf53799cdd','2009-04-15 17:55:45','2009-04-15 17:55:57',NULL,NULL,NULL,'2009-04-15 17:55:57','active',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-04-16  6:30:57
