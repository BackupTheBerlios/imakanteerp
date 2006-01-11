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
# Table structure for table n_country
#

DROP TABLE IF EXISTS `n_country`;
CREATE TABLE `n_country` (
  `id_n_country` smallint(6) NOT NULL auto_increment,
  `code_n_country` char(1) NOT NULL,
  `name_n_country` varchar(20) default NULL,
  PRIMARY KEY  (`id_n_country`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_country
#

INSERT INTO `n_country` VALUES (1,'1','България');
INSERT INTO `n_country` VALUES (2,'2','Russia');
INSERT INTO `n_country` VALUES (3,'3','USA');
INSERT INTO `n_country` VALUES (4,'4','');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
