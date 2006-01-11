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

INSERT INTO `n_oblast` VALUES (1,'�����������',1);
INSERT INTO `n_oblast` VALUES (2,'������',1);
INSERT INTO `n_oblast` VALUES (3,'�����',1);
INSERT INTO `n_oblast` VALUES (4,'������ �������',1);
INSERT INTO `n_oblast` VALUES (5,'�����',1);
INSERT INTO `n_oblast` VALUES (6,'�����',1);
INSERT INTO `n_oblast` VALUES (7,'�������',1);
INSERT INTO `n_oblast` VALUES (8,'������',1);
INSERT INTO `n_oblast` VALUES (9,'��������',1);
INSERT INTO `n_oblast` VALUES (10,'���������',1);
INSERT INTO `n_oblast` VALUES (11,'�����',1);
INSERT INTO `n_oblast` VALUES (12,'�������',1);
INSERT INTO `n_oblast` VALUES (13,'���������',1);
INSERT INTO `n_oblast` VALUES (14,'������',1);
INSERT INTO `n_oblast` VALUES (15,'������',1);
INSERT INTO `n_oblast` VALUES (16,'�������',1);
INSERT INTO `n_oblast` VALUES (17,'�������',1);
INSERT INTO `n_oblast` VALUES (18,'����',1);
INSERT INTO `n_oblast` VALUES (19,'��������',1);
INSERT INTO `n_oblast` VALUES (20,'������',1);
INSERT INTO `n_oblast` VALUES (21,'������',1);
INSERT INTO `n_oblast` VALUES (22,'�����',1);
INSERT INTO `n_oblast` VALUES (23,'�����-����',1);
INSERT INTO `n_oblast` VALUES (24,'����� ������',1);
INSERT INTO `n_oblast` VALUES (25,'���������',1);
INSERT INTO `n_oblast` VALUES (26,'�������',1);
INSERT INTO `n_oblast` VALUES (27,'�����',1);
INSERT INTO `n_oblast` VALUES (28,'�����',1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
