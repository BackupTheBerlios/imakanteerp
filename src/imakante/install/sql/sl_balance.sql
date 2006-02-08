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
# Table structure for table sl_balance
#

DROP TABLE IF EXISTS `sl_balance`;
CREATE TABLE `sl_balance` (
  `id_b` int(11) unsigned zerofill NOT NULL auto_increment,
  `level` tinyint(3) unsigned zerofill NOT NULL default '000',
  `type` tinyint(3) unsigned zerofill default '000',
  `id_user` int(11) unsigned zerofill NOT NULL default '00000000000',
  `id_casa` int(11) unsigned zerofill default '00000000000',
  `id_baccount` int(11) unsigned zerofill default '00000000000',
  `data_pay` date default NULL,
  `id_contragent` int(11) unsigned zerofill default '00000000000',
  `id_person` int(11) unsigned zerofill default '00000000000',
  `id_valuta` int(11) unsigned zerofill default '00000000000',
  `id_kurs` int(11) unsigned zerofill default '00000000000',
  `value_val` decimal(10,4) default NULL,
  `value_pv` decimal(10,5) default NULL,
  `comments_` varchar(250) default NULL,
  PRIMARY KEY  (`id_b`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


/*!40101 SET NAMES utf8 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
