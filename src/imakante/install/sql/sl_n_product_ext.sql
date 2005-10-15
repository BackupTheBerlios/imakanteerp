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
# Table structure for table sl_n_product_ext
#

CREATE TABLE `sl_n_product_ext` (
  `Id` int(11) NOT NULL auto_increment,
  `id_prod_pri` int(11) default NULL,
  `id_dost` int(11) default NULL COMMENT 'id na dostavchika',
  `tsena_dost` decimal(10,4) default NULL COMMENT 'Dostavna tsena bez dds za razf',
  `tsena_prod1` decimal(10,4) default NULL COMMENT 'prodajna tsena 1 za razf',
  `tsena_prod2` decimal(10,4) default NULL COMMENT 'prodajna tsena 2 za razf',
  `tsena_prod3` decimal(10,4) default NULL COMMENT 'prodajna tsena 3 za razf',
  `tsena_promo` decimal(10,4) default NULL COMMENT 'promocionalna tsena',
  `razf1` decimal(6,4) default NULL COMMENT 'razfasovka 1',
  `razf2` decimal(6,4) default NULL COMMENT 'razfasofka 2',
  `razf_name` varchar(10) default NULL COMMENT 'ime na razfasofka osnovana',
  `razf1_name` varchar(10) default NULL COMMENT 'ime na razfasofka 1',
  `razf2_name` int(11) default NULL COMMENT 'ime na razfasofka 2',
  `date_dost` date default NULL COMMENT 'data na dostavka',
  `date_dognost` date default NULL COMMENT 'posleden den na godnost',
  `date_promotsia` date default NULL COMMENT 'posleden den na promotsia',
  `sertifikat` varchar(15) default NULL COMMENT 'sertifikat',
  `partida` varchar(11) default NULL COMMENT 'partiden nomer',
  `DDS` tinyint(1) default NULL COMMENT 'dds da ili ne(0/1)',
  `max_proc` decimal(3,2) default NULL COMMENT 'maksimalen procent na otstapka ot tsena_prod1',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='razshirenio parametri na produkta';

/*!40101 SET NAMES utf8 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
