# MySQL-Front 3.2  (Build 6.14)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'utf8' */;

# Host: localhost    Database: mida
# ------------------------------------------------------
# Server version 4.1.10a-nt-max

DROP DATABASE IF EXISTS `mida`;
CREATE DATABASE `mida` /*!40100 DEFAULT CHARACTER SET cp1251 */;
USE `mida`;
/*!40101 SET NAMES cp1251 */;


#
# Table structure for table ls_users_rights
#

CREATE TABLE `ls_users_rights` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `id_user` int(4) default NULL COMMENT 'id user from user_master',
  `sastav` tinyint(1) default NULL COMMENT 'right to use form sastav',
  `vedom` tinyint(1) default NULL COMMENT 'right to use vedomost',
  `fishove` tinyint(1) default NULL COMMENT 'right to use fishove',
  `newmonth` tinyint(1) default NULL COMMENT 'right to create new month',
  `vedoma` tinyint(1) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*!40101 SET NAMES utf8 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
