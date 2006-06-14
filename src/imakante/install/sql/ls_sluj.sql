# MySQL-Front 3.2  (Build 13.39)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES cp1251 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: katsarov.net:3307    Database: mida
# ------------------------------------------------------
# Server version 5.0.18-standard

USE `mida`;

#
# Table structure for table ls_sluj
#

DROP TABLE IF EXISTS `ls_sluj`;
CREATE TABLE `ls_sluj` (
  `Id` int(11) NOT NULL auto_increment,
  `name_firm` varchar(60) default NULL,
  `dan_nom` varchar(11) default NULL,
  `bul` varchar(13) default NULL,
  `address` varchar(100) default NULL,
  `nam_boss` varchar(60) default NULL,
  `nam_acc` varchar(70) default NULL,
  `nkid` varchar(5) default NULL,
  `telefon` varchar(30) default NULL,
  `data_reg_dds` varchar(20) default NULL,
  `data_c` varchar(20) default NULL,
  `nm` varchar(30) default NULL,
  `postcode` varchar(30) default NULL,
  `email` varchar(30) default NULL,
  `web` varchar(60) default NULL,
  `boss_egn` varchar(11) default NULL,
  `boss_nlk` varchar(15) default NULL,
  `bankR` varchar(80) default NULL,
  `ibanR` varchar(40) default NULL,
  `bicR` varchar(20) default NULL,
  `bankD` varchar(80) default NULL,
  `ibanD` varchar(40) default NULL,
  `bicD` varchar(20) default NULL,
  `valr` varchar(11) default NULL,
  `vald` varchar(11) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
