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
# Table structure for table ls_mod
#

DROP TABLE IF EXISTS `ls_mod`;
CREATE TABLE `ls_mod` (
  `id` int(11) NOT NULL auto_increment,
  `pmonth` tinyint(3) unsigned zerofill NOT NULL default '000',
  `pyear` int(5) unsigned zerofill NOT NULL default '00000',
  `id_modifikator` int(5) unsigned zerofill NOT NULL default '00000',
  `start_day` date default NULL,
  `end_day` date default NULL,
  `days` tinyint(3) unsigned zerofill NOT NULL default '000',
  `sum` decimal(6,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_mod
#

/*!40101 SET NAMES utf8 */;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
