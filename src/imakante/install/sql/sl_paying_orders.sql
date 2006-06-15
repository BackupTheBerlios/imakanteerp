# MySQL-Front 3.2  (Build 13.39)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: mida
# ------------------------------------------------------
# Server version 5.0.22-community-nt

USE `mida`;

/*!40101 SET NAMES cp1251 */;

#
# Table structure for table sl_paying_orders
#

CREATE TABLE `sl_paying_orders` (
  `id_spo` int(11) NOT NULL auto_increment,
  `id_spt` int(11) NOT NULL default '0',
  `id_nbc` int(11) NOT NULL default '0' COMMENT 'danni na nareditel',
  `id_contragent` int(11) NOT NULL default '0' COMMENT 'danni na polu4atel',
  `amount` decimal(12,3) NOT NULL default '0.000',
  `instant` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `osnovanie` varchar(60) default NULL,
  `comment_spo` varchar(60) default NULL,
  PRIMARY KEY  (`id_spo`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


/*!40101 SET NAMES utf8 */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
