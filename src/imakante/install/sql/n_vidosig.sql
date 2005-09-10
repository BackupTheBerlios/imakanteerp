# MySQL-Front 3.2  (Build 7.2)
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'utf8' */;


# Host: localhost    Database: mida
# ------------------------------------------------------
# Server version 4.1.10a-nt

USE `mida`;


/*!40101 SET NAMES cp1251 */;

#
# Table structure for table n_vidosig
#

DROP TABLE IF EXISTS `n_vidosig`;
CREATE TABLE `n_vidosig` (
  `id` int(6) NOT NULL auto_increment,
  `cod_os` char(2) default NULL,
  `name_os` varchar(80) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_vidosig
#
INSERT INTO `n_vidosig` VALUES (1,'01','За работници и служители, осигурени за всички социални рискове');
INSERT INTO `n_vidosig` VALUES (2,'02','За работници работещи при условия на първа категория труд');
INSERT INTO `n_vidosig` VALUES (3,'03','За работници работещи при условия на втора категория труд');
INSERT INTO `n_vidosig` VALUES (4,'04','За работещи по втори или допълнителен трудов договор');
INSERT INTO `n_vidosig` VALUES (5,'05','За държавни служители');
INSERT INTO `n_vidosig` VALUES (6,'06','За кадрови военно служещи по ЗОВС, ЗМВР и НСС');
INSERT INTO `n_vidosig` VALUES (7,'07','За следователи по Закона на Съдебната власт');
INSERT INTO `n_vidosig` VALUES (8,'08','За лица с учителски трудов стаж');
INSERT INTO `n_vidosig` VALUES (9,'08','?? ??????? ?? ??????????, ?????????? ?????????????? ?? ?????? ??? ??????? ????');
INSERT INTO `n_vidosig` VALUES (10,'10','За изпълнители по договори за управление и контрол на търговски дружества');
INSERT INTO `n_vidosig` VALUES (11,'','');

/*!40101 SET NAMES utf8 */;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
