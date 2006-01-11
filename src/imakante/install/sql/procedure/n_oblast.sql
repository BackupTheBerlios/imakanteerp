# MySQL-Front 3.2  (Build 10.2)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;

/*!40101 SET NAMES cp1251 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;

# Host: localhost:3307    Database: mida
# ------------------------------------------------------
# Server version 5.0.16-nt

#
# Table structure for table n_oblast
#

DROP TABLE IF EXISTS `n_oblast`;
CREATE TABLE `n_oblast` (
  `id_n_oblast` int(11) NOT NULL default '0',
  `name_n_oblast` varchar(20) default NULL,
  `id_n_country` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`id_n_oblast`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_oblast
#

INSERT INTO `n_oblast` VALUES (1,'акюцнебцпюд',1);
INSERT INTO `n_oblast` VALUES (2,'аспцюя',1);
INSERT INTO `n_oblast` VALUES (3,'бюпмю',1);
INSERT INTO `n_oblast` VALUES (4,'бекхйн рзпмнбн',1);
INSERT INTO `n_oblast` VALUES (5,'бхдхм',1);
INSERT INTO `n_oblast` VALUES (6,'бпюжю',1);
INSERT INTO `n_oblast` VALUES (7,'цюапнбн',1);
INSERT INTO `n_oblast` VALUES (8,'днапхв',1);
INSERT INTO `n_oblast` VALUES (9,'йзпдфюкх',1);
INSERT INTO `n_oblast` VALUES (10,'йчяремдхк',1);
INSERT INTO `n_oblast` VALUES (11,'кнбев',1);
INSERT INTO `n_oblast` VALUES (12,'лнмрюмю',1);
INSERT INTO `n_oblast` VALUES (13,'оюгюпдфхй',1);
INSERT INTO `n_oblast` VALUES (14,'оепмхй',1);
INSERT INTO `n_oblast` VALUES (15,'окебем',1);
INSERT INTO `n_oblast` VALUES (16,'окнбдхб',1);
INSERT INTO `n_oblast` VALUES (17,'пюгцпюд',1);
INSERT INTO `n_oblast` VALUES (18,'псяе',1);
INSERT INTO `n_oblast` VALUES (19,'яхкхярпю',1);
INSERT INTO `n_oblast` VALUES (20,'якхбем',1);
INSERT INTO `n_oblast` VALUES (21,'ялнкъм',1);
INSERT INTO `n_oblast` VALUES (22,'янтхъ',1);
INSERT INTO `n_oblast` VALUES (23,'янтхъ-цпюд',1);
INSERT INTO `n_oblast` VALUES (24,'ярюпю гюцнпю',1);
INSERT INTO `n_oblast` VALUES (25,'рзпцнбхые',1);
INSERT INTO `n_oblast` VALUES (26,'уюяйнбн',1);
INSERT INTO `n_oblast` VALUES (27,'ьслем',1);
INSERT INTO `n_oblast` VALUES (28,'ъланк',1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
