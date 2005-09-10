# MySQL-Front 3.2  (Build 6.14)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'utf8' */;

# Host: localhost    Database: mida
# ------------------------------------------------------
# Server version 4.1.10a-nt-max
/*!40101 SET NAMES cp1251 */;


#
# Table structure for table natc_clasifikator_deinosti
#

DROP TABLE IF EXISTS `natc_clasifikator_deinosti`;
CREATE TABLE `natc_clasifikator_deinosti` (
  `id` int(11) NOT NULL auto_increment,
  `nkid` varchar(6) default NULL,
  `name` varchar(50) default NULL,
  `n1` decimal(6,2) unsigned NOT NULL default '0.00',
  `n2` decimal(6,2) unsigned NOT NULL default '0.00',
  `n3` decimal(6,2) unsigned NOT NULL default '0.00',
  `n4` decimal(6,2) unsigned NOT NULL default '0.00',
  `n5` decimal(6,2) unsigned NOT NULL default '0.00',
  `n6` decimal(6,2) unsigned NOT NULL default '0.00',
  `n7` decimal(6,2) unsigned NOT NULL default '0.00',
  `n8` decimal(6,2) unsigned NOT NULL default '0.00',
  `n9` decimal(6,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*!40101 SET NAMES utf8 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
