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
# Table structure for table n_group
#

DROP TABLE IF EXISTS `n_group`;
CREATE TABLE `n_group` (
  `id_n_group` int(10) unsigned zerofill NOT NULL auto_increment,
  `nom_n_group` int(10) unsigned NOT NULL default '0',
  `cod_n_group` varchar(45) NOT NULL,
  `name_n_group` varchar(45) NOT NULL,
  `id_al` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_n_group`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_group
#

INSERT INTO `n_group` VALUES (1,0,'1','IME',1);
INSERT INTO `n_group` VALUES (2,2,'','',0);
INSERT INTO `n_group` VALUES (3,0,'','',0);
INSERT INTO `n_group` VALUES (4,0,'','',0);
INSERT INTO `n_group` VALUES (5,5,'1','Централни каси',1);
INSERT INTO `n_group` VALUES (6,5,'2','Разносни каси',1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
