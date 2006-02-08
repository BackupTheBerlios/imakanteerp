# MySQL-Front 3.2  (Build 10.26)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;

/*!40101 SET NAMES utf8 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;

# Host: localhost    Database: mida
# ------------------------------------------------------
# Server version 5.0.18-nt

/*!40101 SET NAMES cp1251 */;

#
# Table structure for table n_baccount
#

DROP TABLE IF EXISTS `n_baccount`;
CREATE TABLE `n_baccount` (
  `id_nbc` int(11) NOT NULL default '0',
  `id_n_group` int(11) unsigned default NULL,
  `code_nbc` varchar(10) default NULL COMMENT 'cod na bankata',
  `name_nbc` varchar(45) default NULL COMMENT 'ime na bankata',
  `account_nbc` varchar(20) default NULL COMMENT 'Bankova smetka',
  `address_nbc` varchar(100) default NULL,
  `vid_account_nbc` tinyint(3) unsigned default '1',
  PRIMARY KEY  (`id_nbc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


/*!40101 SET NAMES utf8 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
