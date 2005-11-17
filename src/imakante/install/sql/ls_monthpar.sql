# MySQL-Front 3.2  (Build 7.19)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'cp1250' */;

# Host: localhost:3307    Database: mida
# ------------------------------------------------------
# Server version 5.0.13-rc-nt

DROP DATABASE IF EXISTS `mida`;
CREATE DATABASE `mida` /*!40100 DEFAULT CHARACTER SET cp1251 */;
USE `mida`;

/*!40101 SET NAMES cp1251 */;

#
# Table structure for table ls_monthpar
#

CREATE TABLE `ls_monthpar` (
  `id` int(11) NOT NULL auto_increment,
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT '??????? ??????',
  `pmonth` tinyint(4) default NULL,
  `pyear` int(11) default NULL,
  `seq` varchar(40) default NULL,
  `dni5` tinyint(4) default NULL,
  `dni6` tinyint(4) default NULL,
  `ktu` decimal(3,2) NOT NULL default '0.60' COMMENT 'ktu',
  `min_rab_zaplata` decimal(10,2) NOT NULL default '0.00' COMMENT 'minimalna rabotna zaplata',
  `max_os_prag` decimal(10,2) NOT NULL default '0.00' COMMENT 'maksimalen osig. prag',
  `pensii1_sl` decimal(10,4) default '8.7000',
  `pensii1_rb` decimal(10,4) default '20.3000',
  `pensii2_sl` decimal(10,4) default '7.8000',
  `pensii2_rb` decimal(10,4) default '18.3000',
  `fozm_sl` decimal(10,2) default '0.90',
  `fozm_rb` decimal(10,4) default '2.1000',
  `fbzr_sl` decimal(10,4) default '1.0500',
  `fbzr_rb` decimal(10,4) default '2.4500',
  `ppf` decimal(10,4) default '0.0000',
  `upf_sl` decimal(10,4) default '0.9000',
  `upf_rb` decimal(10,4) default '2.1000',
  `fgvrs` decimal(10,4) default '0.5000',
  `zo_sl` decimal(10,4) default '1.8000',
  `zo_rb` decimal(10,4) default '4.2000',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*!40101 SET NAMES cp1250 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
