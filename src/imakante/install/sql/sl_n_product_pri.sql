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
# Table structure for table sl_n_product_pri
#

CREATE TABLE `sl_n_product_pri` (
  `Id` int(11) NOT NULL auto_increment,
  `nomer` varchar(8) default NULL COMMENT 'nomer na produkta',
  `id_cat` varchar(5) default NULL COMMENT 'id kategoria produkt',
  `name` varchar(30) default NULL COMMENT 'Ime na produkta',
  `name_f` varchar(30) default NULL COMMENT 'ime za faktura',
  `name_s` varchar(11) default NULL COMMENT 'kratko ime',
  `nomer_eq` varchar(8) default NULL COMMENT 'nomer za saotvetstvie',
  `code_s1` varchar(15) default NULL COMMENT 'dopalnitelen kod',
  `code_s2` varchar(15) default NULL COMMENT 'dopalnitelen kod 2',
  `НовоПоле` varchar(15) default 'barcode' COMMENT 'barkod na produkta',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='Osnovni harakteristiki na produktite';

/*!40101 SET NAMES utf8 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
