# MySQL-Front 3.2  (Build 10.2)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;

/*!40101 SET NAMES cp1251 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;

# Host: localhost:3307    Database: mida
# ------------------------------------------------------
# Server version 5.0.16-nt

DROP DATABASE IF EXISTS `mida`;
CREATE DATABASE `mida` /*!40100 DEFAULT CHARACTER SET cp1251 */;
USE `mida`;

#
# Table structure for table anlevel
#

CREATE TABLE `anlevel` (
  `id_al` int(10) unsigned NOT NULL auto_increment,
  `cod_al` varchar(45) NOT NULL,
  `name_al` varchar(45) NOT NULL,
  PRIMARY KEY  (`id_al`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table anlevel
#

INSERT INTO `anlevel` VALUES (1,'1','OB');


#
# Table structure for table log_ls_init_worker
#

CREATE TABLE `log_ls_init_worker` (
  `id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) default NULL,
  `id_user` int(11) default NULL,
  `date_init` date default NULL,
  `time_init` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table log_ls_init_worker
#



#
# Table structure for table log_ls_osig
#

CREATE TABLE `log_ls_osig` (
  `id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) default NULL,
  `id_period` int(11) default NULL,
  `old_val` decimal(10,2) default NULL,
  `new_val` decimal(10,2) default NULL,
  `id_user` int(11) default NULL,
  `date_change` date default NULL,
  `time_change` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table log_ls_osig
#



#
# Table structure for table log_ls_salary
#

CREATE TABLE `log_ls_salary` (
  `id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) default NULL,
  `id_period` int(11) default NULL,
  `old_val` decimal(10,2) default NULL,
  `new_val` decimal(10,2) default NULL,
  `id_user` int(11) default NULL,
  `date_change` date default NULL,
  `time_change` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='trace salary change';

#
# Dumping data for table log_ls_salary
#



#
# Table structure for table log_user_in
#

CREATE TABLE `log_user_in` (
  `id` int(11) NOT NULL auto_increment,
  `id_user` int(11) default NULL,
  `ip_mashine` int(11) default NULL,
  `date_log` date default NULL,
  `time_log` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table log_user_in
#



#
# Table structure for table ls_addresses
#

CREATE TABLE `ls_addresses` (
  `idls_addresses` int(11) NOT NULL auto_increment,
  `address` varchar(70) default NULL,
  `telefon` varchar(20) default NULL,
  `mobilen` varchar(15) default NULL,
  `email` varchar(30) default NULL,
  `id_rab` int(11) NOT NULL default '0',
  `id_nasm` int(11) NOT NULL default '0',
  PRIMARY KEY  (`idls_addresses`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_addresses
#

INSERT INTO `ls_addresses` VALUES (1,'','','','',6,4000);
INSERT INTO `ls_addresses` VALUES (2,'sdsdfsdf','sdfsdfds','sdfsd','sdfdsfs',7,2060);
INSERT INTO `ls_addresses` VALUES (3,'СК. цпд 39, ЕР. 7, ЮО. 17','260258','0885286309','dani_mscool@yahoo.com',8,4000);
INSERT INTO `ls_addresses` VALUES (4,'','','','',9,2751);
INSERT INTO `ls_addresses` VALUES (5,'','','','',10,6560);
INSERT INTO `ls_addresses` VALUES (6,'','','','',11,4000);
INSERT INTO `ls_addresses` VALUES (7,'','','','',12,4000);
INSERT INTO `ls_addresses` VALUES (8,'','','','',13,4000);
INSERT INTO `ls_addresses` VALUES (9,'','','','',14,4000);
INSERT INTO `ls_addresses` VALUES (10,'','','','',15,4000);
INSERT INTO `ls_addresses` VALUES (11,'','','','',16,4000);
INSERT INTO `ls_addresses` VALUES (12,'','','','',17,4000);
INSERT INTO `ls_addresses` VALUES (13,'','','','',18,4000);
INSERT INTO `ls_addresses` VALUES (14,'','','','',19,4000);
INSERT INTO `ls_addresses` VALUES (15,'','','','',20,4000);
INSERT INTO `ls_addresses` VALUES (16,'tyuityuyti','','','',10,3688);
INSERT INTO `ls_addresses` VALUES (17,'','','','',22,3688);
INSERT INTO `ls_addresses` VALUES (18,'','','','',23,3684);
INSERT INTO `ls_addresses` VALUES (19,'','','','',24,2159);
INSERT INTO `ls_addresses` VALUES (20,'','','','',25,3688);
INSERT INTO `ls_addresses` VALUES (21,'','','','',26,3688);
INSERT INTO `ls_addresses` VALUES (22,'','','','',27,3688);
INSERT INTO `ls_addresses` VALUES (23,'','','','',28,3688);
INSERT INTO `ls_addresses` VALUES (24,'','','','',29,3688);
INSERT INTO `ls_addresses` VALUES (25,'','','','',30,1870);
INSERT INTO `ls_addresses` VALUES (26,'','','','',31,3746);
INSERT INTO `ls_addresses` VALUES (27,'','','','',32,3688);
INSERT INTO `ls_addresses` VALUES (28,'','','','',33,3688);
INSERT INTO `ls_addresses` VALUES (29,'','','','',34,3688);
INSERT INTO `ls_addresses` VALUES (30,'','','','',35,3688);
INSERT INTO `ls_addresses` VALUES (31,'','','','',36,3688);
INSERT INTO `ls_addresses` VALUES (32,'','','','',37,3688);
INSERT INTO `ls_addresses` VALUES (33,'','','','',38,3688);
INSERT INTO `ls_addresses` VALUES (34,'','','','',39,3688);
INSERT INTO `ls_addresses` VALUES (35,'','','','',40,3688);
INSERT INTO `ls_addresses` VALUES (36,'','','','',41,3688);
INSERT INTO `ls_addresses` VALUES (37,'','','','',42,3688);


#
# Table structure for table ls_boln_impl
#

CREATE TABLE `ls_boln_impl` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0',
  `id_boln` smallint(6) default NULL COMMENT 'п·я┌ я?п╟п╠п╩п╬п╫п╟',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmoth+pyear',
  `id_per_otn` int(11) default NULL COMMENT 'п÷я─п╦ я│я┌п╬я─п╫п╦я─п╟п╫п╣',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT 'п²п╟я┤п╟п╩п╫п╟ п╢п╟я┌п╟',
  `n_o_days` tinyint(3) NOT NULL default '0' COMMENT 'п▒я─п╬п╧ п╢п╫п╦ п╠п╬п╩п╫п╦я┤п╫п╦',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_boln_impl
#



#
# Table structure for table ls_bolnichni
#

CREATE TABLE `ls_bolnichni` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '0' COMMENT 'п?п╪п╣ п╫п╟ п╡п╦п╢п╟ п╠п╬п╩п╫п╦я┤п╣п╫',
  `cod` varchar(6) NOT NULL default '' COMMENT 'п▓я┼я┌я─п╣я?п╣п╫ п╨п╬п╢ п╥п╟ п╡п╦п╢п╟ п╠п╬п╩п╫п╦я┤п╣п╫',
  `procent` decimal(3,2) unsigned NOT NULL default '0.00' COMMENT 'п÷я─п╬я├п╣п╫я┌ п╫п╟ п╠п╬п╩п╫п╦я┤п╫п╦я▐',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_bolnichni
#



#
# Table structure for table ls_dates
#

CREATE TABLE `ls_dates` (
  `idls_dates` int(11) NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0',
  `b_date` date default NULL,
  `data_izd_LK` date default NULL,
  `data_naznach` date default NULL,
  `data_postypwane` date default NULL,
  `data_napuskane` date default NULL,
  `posl_den_w_osig` date default NULL,
  `srok_dogov` date default NULL,
  PRIMARY KEY  (`idls_dates`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_dates
#

INSERT INTO `ls_dates` VALUES (1,7,'1974-01-23','0000-00-00','0000-00-00','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (2,8,'1985-03-15','2004-08-13','2004-03-01','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (3,9,'1974-01-23','0000-00-00','0000-00-00','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (4,10,'1974-01-23','0000-00-00','0000-00-00','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (5,11,'1974-01-23','0000-00-00','2005-02-23','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (6,12,'1974-01-23','0000-00-00','2005-09-06','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (7,13,'1974-01-23','0000-00-00','2005-09-06','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (8,14,'1974-01-23','0000-00-00','2005-09-06','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (9,15,'1974-01-23','0000-00-00','2005-09-03','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (10,16,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (11,17,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (12,18,'1974-01-23','0000-00-00','2005-08-09','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (13,19,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (14,20,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (15,10,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (16,22,'1974-01-23','0000-00-00','2005-08-09','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (17,23,'1974-01-23','0000-00-00','2005-08-11','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (18,24,'1974-01-23','0000-00-00','2005-08-12','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (19,25,'1974-01-23','0000-00-00','2005-08-11','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (20,26,'1974-01-23','0000-00-00','2005-08-02','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (21,27,'1974-01-23','0000-00-00','2005-08-06','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (22,28,'1974-01-23','0000-00-00','2005-08-07','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (23,29,'1974-01-23','0000-00-00','2005-08-11','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (24,30,'1974-01-23','0000-00-00','2005-08-02','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (25,31,'1985-03-15','0000-00-00','2005-11-13','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (26,32,'1974-01-23','0000-00-00','2005-08-01','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (27,33,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (28,34,'1974-01-23','0000-00-00','2005-08-01','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (29,35,'1974-01-23','0000-00-00','2005-08-01','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (30,36,'1974-01-23','0000-00-00','2005-09-02','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (31,37,'1974-01-23','0000-00-00','2005-08-05','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (32,38,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (33,39,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (34,40,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (35,41,'1974-01-23','0000-00-00','2005-08-08','0000-00-00',NULL,NULL,'0000-00-00');
INSERT INTO `ls_dates` VALUES (36,42,'1974-01-23','0000-00-00','2005-08-01','0000-00-00',NULL,NULL,'0000-00-00');


#
# Table structure for table ls_dlajnosti
#

CREATE TABLE `ls_dlajnosti` (
  `id` int(11) NOT NULL auto_increment,
  `nomer` tinyint(4) default NULL,
  `namedlaj` varchar(50) default NULL,
  `id_ncl` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_dlajnosti
#



#
# Table structure for table ls_dobavki
#

CREATE TABLE `ls_dobavki` (
  `id` int(11) NOT NULL default '0',
  `cod` int(6) default NULL COMMENT 'kod na modifikator',
  `name` varchar(50) default NULL,
  `in-level` tinyint(3) default NULL COMMENT 'nivo na wkliuchwane na sumi',
  `out-level` tinyint(3) default NULL COMMENT 'nivo na izkliuchvane na sumata',
  `co` tinyint(4) default NULL,
  `shifar` int(11) default NULL,
  `dod` tinyint(4) default NULL,
  `zro` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_dobavki
#



#
# Table structure for table ls_dod
#

CREATE TABLE `ls_dod` (
  `Id` int(11) NOT NULL auto_increment,
  `datep` date default NULL,
  `doh` float default NULL,
  `sum` float default NULL,
  `prct` float default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_dod
#

INSERT INTO `ls_dod` VALUES (1,'2005-01-01',150,10,22);
INSERT INTO `ls_dod` VALUES (2,'2005-01-01',200,18,23.5);
INSERT INTO `ls_dod` VALUES (3,'2005-01-01',300,38,26.5);


#
# Table structure for table ls_main
#

CREATE TABLE `ls_main` (
  `Id` int(11) NOT NULL auto_increment,
  `nomer` int(11) default NULL,
  `first` varchar(20) default NULL,
  `second` varchar(20) default NULL,
  `family` varchar(30) default NULL,
  `egn` varchar(10) default NULL,
  `gender` varchar(4) default NULL,
  `nomer_LK` varchar(9) default NULL,
  `nomer_dogowor` varchar(10) default NULL,
  `osnowanie_dog` varchar(4) default NULL,
  `d_st` int(11) default NULL,
  `m_st` int(11) default NULL,
  `g_st` int(11) default NULL,
  `kateg_rabotnik` varchar(4) default NULL,
  `fam_status` varchar(7) default NULL,
  `children` int(11) default NULL,
  `trudosposobnost` int(11) NOT NULL default '0',
  `belejki` varchar(250) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_main
#

INSERT INTO `ls_main` VALUES (1,22,'пЮДНЯКЮБ','бЕЯЕКХМНБ','дПЮЦХИЯЙХ','7401234649','лЗФ','543645',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (2,123,'sdffa','swerwqerer','qwerqwer','7401234649','лЗФ','122431234',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (3,656,'errtwertew','wertwer','wertwertewr','7401234649','лЗФ','6546',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (4,455,'dsfgds','sdfgdsf','sdfgsd','7401234649','лЗФ','65465',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (5,225,'sdfgsdf','dsfde','as','7401234649','лЗФ','6465466',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (6,25,'ЕДЕЕП','ЕПРЕПР','ЮЕПРЕПЮ','','лЗФ','',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (7,12,'addasd','sardawdf','sadfsadf','7401234649','лЗФ','1312',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (8,13,'дЮМХЕКЮ','иНПДЮМНБЮ','оНОНБЮ','8503154656','фЕМЮ','144260608',NULL,'2212',2,3,5,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (9,456,'erwtgertw','wertwe','ewrtw','7401234649','лЗФ','345',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (21,23,'wear','wqerqw','qwrtterqeeteeee','7401234649','лЗФ','',NULL,'',1,1,1,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (22,2311,'EQW','asdf','sdf','7401234649','лЗФ','',NULL,'',5,10,15,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (23,657,'fgvn','fgh','fgh','7401234649','лЗФ','',NULL,'',4,4,4,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (24,5788,'te5at','et yaet','dfgd','7401234649','лЗФ','',NULL,'',8,8,8,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (25,324,'adsfdsf','sdfasdf','sdfasd','7401234649','лЗФ','',NULL,'',4,4,4,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (26,344,'sdf','asdf','safd','7401234649','лЗФ','',NULL,'',5,5,5,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (27,555,'RTERer','dfgdf','dfgdfg','7401234649','лЗФ','',NULL,'',1,1,1,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (28,234,'sadf','asdf','asdf','7401234649','лЗФ','',NULL,'',1,1,1,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (29,658,'dsdfdfs','dffgdf','dfdfs','7401234649','лЗФ','',NULL,'',1,1,1,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (30,568,'dqwe','werqwerqwer','qwerqwerq','7401234649','лЗФ','',NULL,'',5,5,5,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (31,555,'asdfwef','sdafasd','sdfsdaf','8503154656','фЕМЮ','',NULL,'',5,5,5,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (32,1222,'fhdf','fdgdf','dfg','7401234649','лЗФ','',NULL,'',4,4,4,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (33,7899,'dfhfgh','sfhfgh','sfghfghfg','7401234649','лЗФ','',NULL,'',5,5,5,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (34,458,'dsdsf','sdfzsdf','sfsd','7401234649','лЗФ','',NULL,'',5,5,5,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (35,465,'jh','hjk','ghj','7401234649','лЗФ','',NULL,'',1,1,10,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (36,12,'dsfa','sadfas','sdfsdf','7401234649','лЗФ','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (37,22,'asd','asdas','asd','7401234649','лЗФ','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (38,345,'sdf','asdf','asdf','7401234649','лЗФ','',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (39,78,'khbjk','kkjnk','njk','7401234649','лЗФ','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (40,2332,'asda','asdasd','asdsad','7401234649','лЗФ','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (41,87,'asd','asdas','asdsa','7401234649','лЗФ','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (42,78,'asda','asdas','dasdasd','7401234649','лЗФ','',NULL,'',0,0,0,'01',NULL,NULL,0,'');


#
# Table structure for table ls_monthpar
#

CREATE TABLE `ls_monthpar` (
  `id` int(11) NOT NULL auto_increment,
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT 'п═п╟п╠п╬я┌п╣п╫ п©п╣я─п╦п╬п╢',
  `pmonth` tinyint(4) default NULL,
  `pyear` int(11) default NULL,
  `seq` varchar(40) default NULL,
  `dni5` tinyint(4) default NULL,
  `dni6` tinyint(4) default NULL,
  `ktu` decimal(3,2) NOT NULL default '0.60' COMMENT 'ktu',
  `min_rab_zaplata` decimal(10,2) NOT NULL default '0.00' COMMENT 'minimalna rabotna zaplata',
  `max_os_prag` decimal(10,2) NOT NULL default '0.00' COMMENT 'maksimalen osig. prag',
  `p_pensii1` decimal(4,2) unsigned default '0.00' COMMENT 'procent pensii',
  `p_pensii2` decimal(4,2) unsigned default NULL,
  `p_ozmp` decimal(3,2) NOT NULL default '0.00' COMMENT 'fond oz i majchinstvo',
  `p_zo` decimal(3,2) NOT NULL default '0.00' COMMENT 'proc zdravno',
  `p_bezr` decimal(3,2) NOT NULL default '0.00' COMMENT 'proc bezrabotitsa',
  `p_upf` decimal(3,2) NOT NULL default '0.00' COMMENT 'procent_upf',
  `p_tzpb` decimal(3,2) unsigned default NULL,
  `p_gvrs` decimal(3,2) unsigned default NULL,
  `coef` tinyint(3) NOT NULL default '3' COMMENT 'otnoshenie rabotodatel/rabotnik',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_monthpar
#

INSERT INTO `ls_monthpar` VALUES (11,1,5,2005,'0111110011111001011100000000000',NULL,NULL,0.6,120,1300,29,26,3,6,3.5,3,0.4,0.5,3);
INSERT INTO `ls_monthpar` VALUES (12,2,8,2005,'0111110011111001011100000000000',NULL,NULL,0.6,150,1300,29,26,3,6,3.5,3,0.4,0.5,3);


#
# Table structure for table ls_n_person
#

CREATE TABLE `ls_n_person` (
  `id` int(10) unsigned zerofill NOT NULL auto_increment,
  `egn` varchar(10) NOT NULL default '',
  `nlk` varchar(9) NOT NULL default '',
  `name` varchar(45) NOT NULL default '',
  `coment` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_n_person
#

INSERT INTO `ls_n_person` VALUES (1,'7401234649','6546','Radoslav','');


#
# Table structure for table ls_otdeli
#

CREATE TABLE `ls_otdeli` (
  `Id` int(11) unsigned NOT NULL auto_increment,
  `nomer` tinyint(4) default NULL,
  `nameotdel` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_otdeli
#



#
# Table structure for table ls_otp_impl
#

CREATE TABLE `ls_otp_impl` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0' COMMENT 'п░п╨я┌я┐п╟п╩п╣п╫ я─п╟п╠п╬я┌п╫п╦п╨',
  `id_otp` smallint(6) NOT NULL default '0' COMMENT 'п·я┌ я?п╟п╠п╩п╬п╫п╟',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmonth+pyear',
  `id_per_otn` smallint(6) default NULL COMMENT 'п÷п╣я─п╦п╬п╢ п╥п╟ я│я┌я─п╬п╫п╦я─п╟п╫п╣',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT 'п²п╟я┤п╟п╩п╫п╟ п╢п╟я┌п╟',
  `n_o_days` tinyint(3) unsigned NOT NULL default '0' COMMENT 'п▒я─п╬п╧ п╢п╫п╦ п╬я┌п©я┐я│п╨ п╡ п╪п╣я│п╣я├п╟',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='п?п╥я┤п╦я│п╩п╣п╫п╦ п╠п╬п╩п╫п╦я;

#
# Dumping data for table ls_otp_impl
#



#
# Table structure for table ls_otpusk
#

CREATE TABLE `ls_otpusk` (
  `id` smallint(4) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '' COMMENT 'п?п╪п╣ п╫п╟ п╬я┌п©я┐я│п╨',
  `cod` varchar(6) NOT NULL default '' COMMENT 'п п╬п╢ п╫п╟ п╡п╦п╢п╟ п╬я┌п©я┐я│п╨',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_otpusk
#



#
# Table structure for table ls_pic
#

CREATE TABLE `ls_pic` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rabotnik` int(11) default NULL,
  `pic` blob,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_pic
#



#
# Table structure for table ls_result
#

CREATE TABLE `ls_result` (
  `id` int(11) NOT NULL auto_increment,
  `state` tinyint(2) unsigned NOT NULL default '1' COMMENT 'п▓я│п╦я┤п╨п╦ п╥п╟п©п╦я│п╦ пЁп╣п╫п╣я─п╦я─п╟п╫п╦ п╡ (0=п╦п╥п╡я┼п╫) п©я─п╦п╩п╬п╤п╣п╫п╦п╣я┌п╬',
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT 'п═п╟п╠п╬я┌п╣п╫ п©п╣я─п╦п╬п╢',
  `idrab` int(11) default NULL,
  `id_dlaj` int(11) default NULL,
  `id_otdel` int(11) default NULL,
  `cat_rab` char(2) default NULL,
  `m_rab` tinyint(3) default NULL COMMENT 'mesetsi obsho rabota',
  `y_rab` tinyint(3) default NULL COMMENT 'godini obsho rabota',
  `h_dogovor_day` tinyint(3) default NULL,
  `day_used` tinyint(3) default NULL,
  `avans` decimal(10,2) NOT NULL default '0.00',
  `zaplata` decimal(10,2) NOT NULL default '0.00' COMMENT 'nivo 1 - osnovna zaplata',
  `sum_kt` decimal(6,2) default '0.00' COMMENT 'nivo 2 - suma doplacane po kt',
  `sum_otpuska` decimal(6,2) default '0.00' COMMENT 'nivo 3 - suma otpuska',
  `sum_bol_rab` decimal(6,2) default '0.00' COMMENT 'nivo 4 - suma bolnichni ot rabotodatel',
  `sum_bol_noi` decimal(6,2) default '0.00' COMMENT 'nivo 5 - suma bol noi',
  `sum_oz_m` decimal(6,2) default '0.00' COMMENT 'nivo 6 - suma fon oz i mai',
  `sum_pensii` decimal(6,2) default '0.00' COMMENT 'nivo 7 - suma pensii',
  `sum_zoo` decimal(6,2) default '0.00' COMMENT 'nivo 8 suma zdravno osig',
  `sum_bzr` decimal(6,2) default '0.00' COMMENT 'nivo 9 - suma fond bezrabotitsa',
  `sum_upf` decimal(6,2) default '0.00' COMMENT 'nivo 10 - suma upf',
  `sum_dobl_zoso` decimal(6,2) default '0.00' COMMENT 'nivo 20 - drugi sumi za oblagane s  dod ne podlejashi na obl',
  `sum_oblagane_dod` decimal(10,2) default '0.00' COMMENT 'nivo 30 - suma za oblagane',
  `sum_dod` decimal(6,2) default '0.00' COMMENT 'suma _dod',
  `sum_end` decimal(10,2) default NULL COMMENT 'nivo 99 - suma za poluchavane',
  `sum_osig_dohod` decimal(10,2) default '0.00' COMMENT 'suma v/u koiato she se nachisl os.',
  `sum_obl_dohod` decimal(10,2) default '0.00' COMMENT 'suma za oblagane na DOD',
  `sum_min_os` decimal(6,2) default '0.00' COMMENT 'suma min osig dohod',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_result
#

INSERT INTO `ls_result` VALUES (1,8,2005,1,1,NULL,'01',1,1,8,22,100,500,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0);
INSERT INTO `ls_result` VALUES (2,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,445,8.39,0,0,0,1.12,0,0,0,0,0,0,-342.67,-1250.41,444,-1593.09,0);
INSERT INTO `ls_result` VALUES (3,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,600,14.14,0,0,0,1.12,0,0,0,0,0,0,-314.62,-1150.93,600,-1465.55,0);
INSERT INTO `ls_result` VALUES (4,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,688,16.21,0,0,0,3,0,0,0,0,0,0,-1014.36,-3631.84,400,-4646.21,0);
INSERT INTO `ls_result` VALUES (5,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,500,23.57,0,0,0,0.75,0,0,0,0,0,0,-186.75,-697.57,100,-884.32,0);
INSERT INTO `ls_result` VALUES (6,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,1000,0,0,0,0,1.5,0,0,0,0,0,0,-391.67,-1424.11,200,-1815.78,0);
INSERT INTO `ls_result` VALUES (7,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,1000,0,0,0,0,2.25,0,0,0,0,0,0,-677.83,-2438.69,300,-3116.53,0);
INSERT INTO `ls_result` VALUES (8,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,1000,0,0,0,0,1.5,0,0,0,0,0,0,-391.67,-1424.11,200,-1815.78,0);
INSERT INTO `ls_result` VALUES (9,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,1000,0,0,0,0,5.89,0,0,0,0,0,0,-2067.78,-7366.68,300,-9434.46,0);
INSERT INTO `ls_result` VALUES (10,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,1000,0,0,0,0,5.89,0,0,0,0,0,0,-2067.78,-7366.68,200,-9434.46,0);
INSERT INTO `ls_result` VALUES (11,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,1000,0,0,0,0,13.75,8.64,0,3.92,7.07,0,0,-2073.83,-7388.13,200,-9461.96,0);
INSERT INTO `ls_result` VALUES (12,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,11,0,1000,0,0,0,0,13.75,8.64,0,3.92,7.07,0,0,0,746.82,200,746.82,0);


#
# Table structure for table ls_sluj
#

CREATE TABLE `ls_sluj` (
  `Id` int(11) NOT NULL default '0',
  `name_firm` varchar(60) default NULL,
  `dan_nom` varchar(11) default NULL,
  `bul` varchar(11) default NULL,
  `address` varchar(100) default NULL,
  `nam_boss` varchar(60) default NULL,
  `nam_acc` varchar(70) default NULL,
  `nkid` varchar(5) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_sluj
#



#
# Table structure for table ls_vid_osiguren
#

CREATE TABLE `ls_vid_osiguren` (
  `Id` int(11) NOT NULL auto_increment,
  `kod` char(1) default NULL,
  `opisanie` varchar(64) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_vid_osiguren
#



#
# Table structure for table n_casa
#

CREATE TABLE `n_casa` (
  `id_n_casa` int(10) NOT NULL auto_increment,
  `id_n_group` int(10) unsigned zerofill NOT NULL default '0000000000',
  `code_n_casa` int(11) unsigned NOT NULL default '0',
  `name_n_casa` varchar(40) collate cp1251_bulgarian_ci default NULL,
  `comments_n_casa` varchar(250) collate cp1251_bulgarian_ci default NULL,
  PRIMARY KEY  (`id_n_casa`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_bulgarian_ci COMMENT='kasi';

#
# Dumping data for table n_casa
#

INSERT INTO `n_casa` VALUES (1,5,1,'Kasa sklad tsentralen 4','Hi all');
INSERT INTO `n_casa` VALUES (2,5,2,'Kasa rezervi sklad 457','64566666666666666666666666666666666666666666666666666666666666666666666666666666666666666');
INSERT INTO `n_casa` VALUES (3,5,51,'Asdsdf',';O;;;NN  K;;;;;L KMK');
INSERT INTO `n_casa` VALUES (5,6,51,'sds ad sDA DAS DSAD ADAS','');


#
# Table structure for table n_contragent
#

CREATE TABLE `n_contragent` (
  `id_contragent` int(11) NOT NULL auto_increment,
  `code_contragent` int(11) NOT NULL default '0',
  `name_n_contragent` varchar(45) NOT NULL,
  `bul_n_contragent` varchar(13) NOT NULL,
  `dan_n_contragent` varchar(11) NOT NULL,
  `address_n_contragent` varchar(35) NOT NULL,
  `id_nm` int(10) unsigned NOT NULL default '0',
  `tel_contragent` varchar(12) NOT NULL,
  `fax_contragent` varchar(12) NOT NULL,
  `email_contragent` varchar(20) NOT NULL,
  `web_contragent` varchar(20) NOT NULL,
  `id_mol` int(10) unsigned NOT NULL default '0',
  `id_oso` int(10) unsigned NOT NULL default '0',
  `flag_n_contragent` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_contragent`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='kontragenti';

#
# Dumping data for table n_contragent
#

INSERT INTO `n_contragent` VALUES (1,1,'TIMI OOD','114556686','','',3,'','','','',1,1,0);


#
# Table structure for table n_country
#

CREATE TABLE `n_country` (
  `id_n_country` int(6) NOT NULL auto_increment,
  `code_n_country` char(1) NOT NULL,
  `name_n_country` varchar(20) default NULL,
  PRIMARY KEY  (`id_n_country`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_country
#

INSERT INTO `n_country` VALUES (1,'1','аЗКЦЮПХЪ');
INSERT INTO `n_country` VALUES (2,'2','Russia');
INSERT INTO `n_country` VALUES (3,'3','USA');
INSERT INTO `n_country` VALUES (4,'4','');


#
# Table structure for table n_group
#

CREATE TABLE `n_group` (
  `id_n_group` int(10) unsigned zerofill NOT NULL auto_increment,
  `nom_n_group` int(10) unsigned NOT NULL default '0',
  `cod_n_group` varchar(45) NOT NULL,
  `name_n_group` varchar(45) NOT NULL,
  `id_al` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_n_group`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='vsichki vidove grupi';

#
# Dumping data for table n_group
#

INSERT INTO `n_group` VALUES (1,0,'1','IME',1);
INSERT INTO `n_group` VALUES (2,2,'','',0);
INSERT INTO `n_group` VALUES (3,0,'','',0);
INSERT INTO `n_group` VALUES (4,0,'','',0);
INSERT INTO `n_group` VALUES (5,5,'1','жЕМРПЮКМХ ЙЮЯХ',1);
INSERT INTO `n_group` VALUES (6,5,'2','пЮГМНЯМХ ЙЮЯХ',1);


#
# Table structure for table n_money
#

CREATE TABLE `n_money` (
  `id_n_money` int(11) NOT NULL auto_increment,
  `cod_n_money` varchar(11) default NULL,
  `cod_lat_n_money` varchar(11) default NULL,
  `name_n_money` varchar(30) default NULL,
  `comment_n_money` varchar(100) default NULL,
  PRIMARY KEY  (`id_n_money`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='opisanie na valutite';

#
# Dumping data for table n_money
#

INSERT INTO `n_money` VALUES (1,'','','',NULL);
INSERT INTO `n_money` VALUES (2,'КБ','BGL','кЕБ',NULL);
INSERT INTO `n_money` VALUES (3,'$','USD','ы. дНКЮП',NULL);


#
# Table structure for table n_nm
#

CREATE TABLE `n_nm` (
  `id_n_nm` int(11) NOT NULL default '0',
  `postcode_n_nm` int(6) default NULL,
  `name_n_nm` varchar(20) default NULL,
  `id_n_oblast` tinyint(3) default NULL,
  PRIMARY KEY  (`id_n_nm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='naseleni mesta';

#
# Dumping data for table n_nm
#

INSERT INTO `n_nm` VALUES (1,4645,'юакюмхжю',14);
INSERT INTO `n_nm` VALUES (2,5574,'юакюмхжю',12);
INSERT INTO `n_nm` VALUES (3,2932,'юакюмхжю',1);
INSERT INTO `n_nm` VALUES (4,9407,'юапхр',9);
INSERT INTO `n_nm` VALUES (5,6797,'юбпюлнбн',10);
INSERT INTO `n_nm` VALUES (6,2795,'юбпюлнбн',1);
INSERT INTO `n_nm` VALUES (7,9135,'юбпем',3);
INSERT INTO `n_nm` VALUES (8,6930,'юбпем',10);
INSERT INTO `n_nm` VALUES (9,5431,'юцюрнбн',8);
INSERT INTO `n_nm` VALUES (10,5350,'юглюмхре',8);
INSERT INTO `n_nm` VALUES (11,7538,'юиделхп',20);
INSERT INTO `n_nm` VALUES (12,6639,'юипнбн',10);
INSERT INTO `n_nm` VALUES (13,8500,'юирня',2);
INSERT INTO `n_nm` VALUES (14,4483,'юйюмдфхебн',14);
INSERT INTO `n_nm` VALUES (15,3727,'юйюжхебн',6);
INSERT INTO `n_nm` VALUES (16,9154,'юйяюйнбн',3);
INSERT INTO `n_nm` VALUES (17,4984,'юкюлнбжх',22);
INSERT INTO `n_nm` VALUES (18,6850,'юкаюмжх',10);
INSERT INTO `n_nm` VALUES (19,9620,'юкаемю',9);
INSERT INTO `n_nm` VALUES (20,7752,'юкбюмнбн',26);
INSERT INTO `n_nm` VALUES (21,2222,'юкднлхпнбжх',23);
INSERT INTO `n_nm` VALUES (22,4411,'юкейн йнмярюмрхмнбн',14);
INSERT INTO `n_nm` VALUES (23,7555,'юкейнбн',20);
INSERT INTO `n_nm` VALUES (24,5288,'юкейнбн',5);
INSERT INTO `n_nm` VALUES (25,9404,'юкейяюмдпхъ',9);
INSERT INTO `n_nm` VALUES (26,4656,'юкейяюмдпнбю',14);
INSERT INTO `n_nm` VALUES (27,5560,'юкейяюмдпнбн',12);
INSERT INTO `n_nm` VALUES (28,6154,'юкейяюмдпнбн',25);
INSERT INTO `n_nm` VALUES (29,8211,'юкейяюмдпнбн',2);
INSERT INTO `n_nm` VALUES (30,5289,'юкейяюмдпнбн',5);
INSERT INTO `n_nm` VALUES (31,9829,'юкейяюмдпнбн',28);
INSERT INTO `n_nm` VALUES (32,8653,'юкейяюмдпнбн',29);
INSERT INTO `n_nm` VALUES (33,7761,'юкейяюмдпнбн',26);
INSERT INTO `n_nm` VALUES (34,6351,'юкейяюмдпнбн',27);
INSERT INTO `n_nm` VALUES (35,9565,'юкейяюмдзп ярюланкх',9);
INSERT INTO `n_nm` VALUES (36,4621,'юкемдюпнбю',14);
INSERT INTO `n_nm` VALUES (37,4787,'юкхцнбяйю',22);
INSERT INTO `n_nm` VALUES (38,2019,'юкхмн',23);
INSERT INTO `n_nm` VALUES (39,3251,'юкрхлхп',7);
INSERT INTO `n_nm` VALUES (40,7570,'юктюрюп',20);
INSERT INTO `n_nm` VALUES (41,9496,'юкжей',9);
INSERT INTO `n_nm` VALUES (42,6373,'юмцек бнибндю',27);
INSERT INTO `n_nm` VALUES (43,9483,'юмцекюпхи',9);
INSERT INTO `n_nm` VALUES (44,5342,'юмцекнб',8);
INSERT INTO `n_nm` VALUES (45,2085,'юмцекнб днк',23);
INSERT INTO `n_nm` VALUES (46,4331,'юмебн',17);
INSERT INTO `n_nm` VALUES (47,3776,'юмрхлнбн',6);
INSERT INTO `n_nm` VALUES (48,7628,'юмрхлнбн',20);
INSERT INTO `n_nm` VALUES (49,2089,'юмрнм',23);
INSERT INTO `n_nm` VALUES (50,7970,'юмрнмнбн',26);
INSERT INTO `n_nm` VALUES (51,5094,'юокюжх',5);
INSERT INTO `n_nm` VALUES (52,2128,'юопхкнбн',23);
INSERT INTO `n_nm` VALUES (53,6281,'юопхкнбн',25);
INSERT INTO `n_nm` VALUES (54,7864,'юопхкнбн',26);
INSERT INTO `n_nm` VALUES (55,5641,'юопхкжх',12);
INSERT INTO `n_nm` VALUES (56,4445,'юопхкжх',14);
INSERT INTO `n_nm` VALUES (57,5029,'юпаюмюях',5);
INSERT INTO `n_nm` VALUES (58,4790,'юпдю',22);
INSERT INTO `n_nm` VALUES (59,6750,'юпдхмн',10);
INSERT INTO `n_nm` VALUES (60,2386,'юпгюм',15);
INSERT INTO `n_nm` VALUES (61,9246,'юпйнбмю',3);
INSERT INTO `n_nm` VALUES (62,5347,'юплемхре',8);
INSERT INTO `n_nm` VALUES (63,5363,'юплъмйнбжх',8);
INSERT INTO `n_nm` VALUES (64,6069,'юпмюсрхрн',25);
INSERT INTO `n_nm` VALUES (65,4922,'юпоюдфхй',22);
INSERT INTO `n_nm` VALUES (66,3770,'юпвюп',6);
INSERT INTO `n_nm` VALUES (67,6149,'юяем',25);
INSERT INTO `n_nm` VALUES (68,5738,'юяем',12);
INSERT INTO `n_nm` VALUES (69,4230,'юяемнбцпюд',17);
INSERT INTO `n_nm` VALUES (70,8933,'юяемнбеж',21);
INSERT INTO `n_nm` VALUES (71,5957,'юяемнбн',16);
INSERT INTO `n_nm` VALUES (72,5159,'юяемнбн',5);
INSERT INTO `n_nm` VALUES (73,8667,'юяемнбн',29);
INSERT INTO `n_nm` VALUES (74,5913,'юяемнбжх',16);
INSERT INTO `n_nm` VALUES (75,9260,'юяоюпсунбн',3);
INSERT INTO `n_nm` VALUES (76,8485,'юяоюпсунбн',2);
INSERT INTO `n_nm` VALUES (77,5914,'юяоюпсунбн',16);
INSERT INTO `n_nm` VALUES (78,3661,'юяоюпсунбн',13);
INSERT INTO `n_nm` VALUES (79,8140,'юрхъ',2);
INSERT INTO `n_nm` VALUES (80,8683,'юрнкнбн',29);
INSERT INTO `n_nm` VALUES (81,6821,'юсярю',10);
INSERT INTO `n_nm` VALUES (82,8217,'юуекни',2);
INSERT INTO `n_nm` VALUES (83,4128,'юулюрнбн',17);
INSERT INTO `n_nm` VALUES (84,6761,'юупъмяйн',10);
INSERT INTO `n_nm` VALUES (85,8280,'юурнонк',2);
INSERT INTO `n_nm` VALUES (86,5632,'аюаю ярюмю',12);
INSERT INTO `n_nm` VALUES (87,7861,'аюаю рнмйю',26);
INSERT INTO `n_nm` VALUES (88,4156,'аюаей',17);
INSERT INTO `n_nm` VALUES (89,2683,'аюахмн',11);
INSERT INTO `n_nm` VALUES (90,2668,'аюахмяйю пейю',11);
INSERT INTO `n_nm` VALUES (91,5726,'аюахмжх',12);
INSERT INTO `n_nm` VALUES (92,2365,'аюахжю',15);
INSERT INTO `n_nm` VALUES (93,4774,'аюакнм',22);
INSERT INTO `n_nm` VALUES (94,7068,'аюанбн',19);
INSERT INTO `n_nm` VALUES (95,7573,'аюасй',20);
INSERT INTO `n_nm` VALUES (96,2784,'аюаъй',1);
INSERT INTO `n_nm` VALUES (97,5094,'аюцюкебжх',5);
INSERT INTO `n_nm` VALUES (98,6749,'аюцпю',10);
INSERT INTO `n_nm` VALUES (99,2530,'аюцпемжх',11);
INSERT INTO `n_nm` VALUES (100,6944,'аюцпхкжх',10);
INSERT INTO `n_nm` VALUES (101,6819,'аюцпъмйю',10);
INSERT INTO `n_nm` VALUES (102,5093,'аюдебжх',5);
INSERT INTO `n_nm` VALUES (103,2676,'аюдхмн',11);
INSERT INTO `n_nm` VALUES (104,5441,'аюебю кхбюдю',8);
INSERT INTO `n_nm` VALUES (105,5304,'аюебжх',8);
INSERT INTO `n_nm` VALUES (106,5087,'аюебжх',5);
INSERT INTO `n_nm` VALUES (107,5095,'аюфдюпх',5);
INSERT INTO `n_nm` VALUES (108,5861,'аюийюк',16);
INSERT INTO `n_nm` VALUES (109,2427,'аюийюкяйн',15);
INSERT INTO `n_nm` VALUES (110,9767,'аюийнбн',28);
INSERT INTO `n_nm` VALUES (111,2133,'аюикнбн',23);
INSERT INTO `n_nm` VALUES (112,6771,'аюивебн',10);
INSERT INTO `n_nm` VALUES (113,6698,'аюйюкхре',10);
INSERT INTO `n_nm` VALUES (114,2295,'аюйэнбн',23);
INSERT INTO `n_nm` VALUES (115,6816,'аюкюаюмнбн',10);
INSERT INTO `n_nm` VALUES (116,5615,'аюкюаюмяйю',12);
INSERT INTO `n_nm` VALUES (117,8471,'аюкюаюмвебн',2);
INSERT INTO `n_nm` VALUES (118,5370,'аюкюкеъ',8);
INSERT INTO `n_nm` VALUES (119,5301,'аюкюмхре',8);
INSERT INTO `n_nm` VALUES (120,2680,'аюкюмнбн',11);
INSERT INTO `n_nm` VALUES (121,5064,'аюкбюм',5);
INSERT INTO `n_nm` VALUES (122,5388,'аюкбюмжхре',8);
INSERT INTO `n_nm` VALUES (123,2948,'аюкдебн',1);
INSERT INTO `n_nm` VALUES (124,3797,'аюкеи',6);
INSERT INTO `n_nm` VALUES (125,9485,'аюкхй',9);
INSERT INTO `n_nm` VALUES (126,5343,'аюкхмнбжх',8);
INSERT INTO `n_nm` VALUES (127,6363,'аюкйюм',27);
INSERT INTO `n_nm` VALUES (128,4245,'аюкйюм люуюкю',17);
INSERT INTO `n_nm` VALUES (129,5634,'аюкйюмеж',12);
INSERT INTO `n_nm` VALUES (130,7265,'аюкйюмяйх',18);
INSERT INTO `n_nm` VALUES (131,9549,'аюкйюмжх',9);
INSERT INTO `n_nm` VALUES (132,5162,'аюкйюмжх',5);
INSERT INTO `n_nm` VALUES (133,5081,'аюксжх',5);
INSERT INTO `n_nm` VALUES (134,9600,'аюквхй',9);
INSERT INTO `n_nm` VALUES (135,1217,'аюкью',23);
INSERT INTO `n_nm` VALUES (136,2060,'аюкэнбжх',23);
INSERT INTO `n_nm` VALUES (137,3529,'аюкчбхжю',13);
INSERT INTO `n_nm` VALUES (138,5370,'аюмюпх',8);
INSERT INTO `n_nm` VALUES (139,5351,'аюмцеижх',8);
INSERT INTO `n_nm` VALUES (140,8125,'аюмебн',2);
INSERT INTO `n_nm` VALUES (141,7167,'аюмхяйю',19);
INSERT INTO `n_nm` VALUES (142,4940,'аюмхре',22);
INSERT INTO `n_nm` VALUES (143,3077,'аюмхжю',7);
INSERT INTO `n_nm` VALUES (144,2905,'аюмхвюм',1);
INSERT INTO `n_nm` VALUES (145,2388,'аюмхые',15);
INSERT INTO `n_nm` VALUES (146,7997,'аюмйнбеж',26);
INSERT INTO `n_nm` VALUES (147,5300,'аюмйнбжх',8);
INSERT INTO `n_nm` VALUES (148,1320,'аюмйъ',23);
INSERT INTO `n_nm` VALUES (149,2466,'аюмйъ',15);
INSERT INTO `n_nm` VALUES (150,9144,'аюмнбн',3);
INSERT INTO `n_nm` VALUES (151,2770,'аюмяйн',1);
INSERT INTO `n_nm` VALUES (152,2060,'аюмвнбжх',23);
INSERT INTO `n_nm` VALUES (153,4360,'аюмъ',17);
INSERT INTO `n_nm` VALUES (154,8239,'аюмъ',2);
INSERT INTO `n_nm` VALUES (155,8914,'аюмъ',21);
INSERT INTO `n_nm` VALUES (156,4523,'аюмъ',14);
INSERT INTO `n_nm` VALUES (157,2778,'аюмъ',1);
INSERT INTO `n_nm` VALUES (158,2634,'аюпюйнбн',11);
INSERT INTO `n_nm` VALUES (159,6910,'аюпюжх',10);
INSERT INTO `n_nm` VALUES (160,4830,'аюпсрхм',22);
INSERT INTO `n_nm` VALUES (161,7071,'аюяюпанбн',19);
INSERT INTO `n_nm` VALUES (162,2883,'аюяйюкжх',1);
INSERT INTO `n_nm` VALUES (163,8218,'аюрю',2);
INSERT INTO `n_nm` VALUES (164,4580,'аюрюй',14);
INSERT INTO `n_nm` VALUES (165,5228,'аюрюй',5);
INSERT INTO `n_nm` VALUES (166,2340,'аюрюмнбжх',15);
INSERT INTO `n_nm` VALUES (167,7172,'аюрхм',19);
INSERT INTO `n_nm` VALUES (168,7169,'аюрхьмхжю',19);
INSERT INTO `n_nm` VALUES (169,9364,'аюрнбн',9);
INSERT INTO `n_nm` VALUES (170,5470,'аюрньебн',8);
INSERT INTO `n_nm` VALUES (171,2295,'аюрскхъ',23);
INSERT INTO `n_nm` VALUES (172,5764,'аюрскжх',12);
INSERT INTO `n_nm` VALUES (173,3068,'аюспеме',7);
INSERT INTO `n_nm` VALUES (174,2219,'аюуюкхм',23);
INSERT INTO `n_nm` VALUES (175,5567,'аюунбхжю',12);
INSERT INTO `n_nm` VALUES (176,5367,'аюупежх',8);
INSERT INTO `n_nm` VALUES (177,5948,'аюжнбю люуюкю',16);
INSERT INTO `n_nm` VALUES (178,2769,'аювебн',1);
INSERT INTO `n_nm` VALUES (179,4251,'аювйнбн',17);
INSERT INTO `n_nm` VALUES (180,6777,'аюьебн',10);
INSERT INTO `n_nm` VALUES (181,7619,'аюыхмн',20);
INSERT INTO `n_nm` VALUES (182,6669,'аюыхмн',10);
INSERT INTO `n_nm` VALUES (183,6068,'аюыхмн',25);
INSERT INTO `n_nm` VALUES (184,7745,'аюъвебн',26);
INSERT INTO `n_nm` VALUES (185,9381,'адхмжх',9);
INSERT INTO `n_nm` VALUES (186,5084,'аеапнбн',5);
INSERT INTO `n_nm` VALUES (187,5872,'аецкеф',16);
INSERT INTO `n_nm` VALUES (188,4166,'аецнбн',17);
INSERT INTO `n_nm` VALUES (189,2395,'аецсмнбжх',15);
INSERT INTO `n_nm` VALUES (190,4359,'аецсмжх',17);
INSERT INTO `n_nm` VALUES (191,4817,'аедем',22);
INSERT INTO `n_nm` VALUES (192,9924,'аедфеме',28);
INSERT INTO `n_nm` VALUES (193,6716,'аедпнбн',10);
INSERT INTO `n_nm` VALUES (194,9567,'аефюмнбн',9);
INSERT INTO `n_nm` VALUES (195,5792,'аефюмнбн',12);
INSERT INTO `n_nm` VALUES (196,9637,'аегбндхжю',9);
INSERT INTO `n_nm` VALUES (197,6718,'аегбндмн',10);
INSERT INTO `n_nm` VALUES (198,2236,'аегдем',23);
INSERT INTO `n_nm` VALUES (199,3454,'аегдемхжю',13);
INSERT INTO `n_nm` VALUES (200,9480,'аеглеп',9);
INSERT INTO `n_nm` VALUES (201,8637,'аеглеп',29);
INSERT INTO `n_nm` VALUES (202,5094,'аеийнбжх',5);
INSERT INTO `n_nm` VALUES (203,5673,'аейкелерн',12);
INSERT INTO `n_nm` VALUES (204,5300,'аейпххре',8);
INSERT INTO `n_nm` VALUES (205,2793,'аек йюлем',1);
INSERT INTO `n_nm` VALUES (206,3965,'аекю',6);
INSERT INTO `n_nm` VALUES (207,3731,'аекю пюдю',6);
INSERT INTO `n_nm` VALUES (208,2881,'аекюяхжю',1);
INSERT INTO `n_nm` VALUES (209,4124,'аекюыхжю',17);
INSERT INTO `n_nm` VALUES (210,9690,'аекцсм',9);
INSERT INTO `n_nm` VALUES (211,4738,'аекеб днк',22);
INSERT INTO `n_nm` VALUES (212,2800,'аекебеувебн',1);
INSERT INTO `n_nm` VALUES (213,8345,'аекебпем',2);
INSERT INTO `n_nm` VALUES (214,2085,'аекецю',23);
INSERT INTO `n_nm` VALUES (215,5930,'аекеме',16);
INSERT INTO `n_nm` VALUES (216,5783,'аекемжх',12);
INSERT INTO `n_nm` VALUES (217,3441,'аекх апец',13);
INSERT INTO `n_nm` VALUES (218,3447,'аекх апнд',13);
INSERT INTO `n_nm` VALUES (219,6262,'аекх апъц',25);
INSERT INTO `n_nm` VALUES (220,6702,'аекх бхп',10);
INSERT INTO `n_nm` VALUES (221,6590,'аекх днк',27);
INSERT INTO `n_nm` VALUES (222,3040,'аекх хгбнп',7);
INSERT INTO `n_nm` VALUES (223,2011,'аекх хяйзп',23);
INSERT INTO `n_nm` VALUES (224,7293,'аекх кнл',18);
INSERT INTO `n_nm` VALUES (225,5662,'аекх нязл',12);
INSERT INTO `n_nm` VALUES (226,6689,'аекх окюяр',10);
INSERT INTO `n_nm` VALUES (227,8316,'аекхкю',2);
INSERT INTO `n_nm` VALUES (228,3462,'аекхлек',13);
INSERT INTO `n_nm` VALUES (229,7432,'аекхмжх',18);
INSERT INTO `n_nm` VALUES (230,2780,'аекхжю',1);
INSERT INTO `n_nm` VALUES (231,2062,'аекхжю',23);
INSERT INTO `n_nm` VALUES (232,4242,'аекхжю',17);
INSERT INTO `n_nm` VALUES (233,6557,'аекхжю',27);
INSERT INTO `n_nm` VALUES (234,5363,'аекхжю',8);
INSERT INTO `n_nm` VALUES (235,7648,'аекхжю',20);
INSERT INTO `n_nm` VALUES (236,5628,'аекхь',12);
INSERT INTO `n_nm` VALUES (237,2709,'аекн онке',1);
INSERT INTO `n_nm` VALUES (238,3961,'аекн онке',6);
INSERT INTO `n_nm` VALUES (239,7321,'аекнбеж',18);
INSERT INTO `n_nm` VALUES (240,4182,'аекнбхжю',17);
INSERT INTO `n_nm` VALUES (241,4470,'аекнбн',14);
INSERT INTO `n_nm` VALUES (242,9230,'аекнцпюдеж',3);
INSERT INTO `n_nm` VALUES (243,3900,'аекнцпюдвхй',6);
INSERT INTO `n_nm` VALUES (244,8219,'аекнднк',2);
INSERT INTO `n_nm` VALUES (245,4130,'аекнгел',17);
INSERT INTO `n_nm` VALUES (246,9801,'аекнйнохрнбн',28);
INSERT INTO `n_nm` VALUES (247,7917,'аекнлнпжх',26);
INSERT INTO `n_nm` VALUES (248,5340,'аекнлзфхре',8);
INSERT INTO `n_nm` VALUES (249,6588,'аекнонкжх',27);
INSERT INTO `n_nm` VALUES (250,6584,'аекнонкъме',27);
INSERT INTO `n_nm` VALUES (251,2132,'аекноножх',23);
INSERT INTO `n_nm` VALUES (252,9178,'аекнякюб',3);
INSERT INTO `n_nm` VALUES (253,3499,'аекнрхмжх',13);
INSERT INTO `n_nm` VALUES (254,7138,'аекжнб',19);
INSERT INTO `n_nm` VALUES (255,5035,'аеквебжх',5);
INSERT INTO `n_nm` VALUES (256,2025,'аеквхм',23);
INSERT INTO `n_nm` VALUES (257,2024,'аеквхмяйх аюмх',23);
INSERT INTO `n_nm` VALUES (258,2824,'аекэнбн',1);
INSERT INTO `n_nm` VALUES (259,5031,'аекъйнбеж',5);
INSERT INTO `n_nm` VALUES (260,7134,'аекъмнбн',19);
INSERT INTO `n_nm` VALUES (261,9133,'аемйнбяйх',3);
INSERT INTO `n_nm` VALUES (262,9380,'аемйнбяйх',9);
INSERT INTO `n_nm` VALUES (263,6865,'аемйнбяйх',10);
INSERT INTO `n_nm` VALUES (264,4201,'аемйнбяйх',17);
INSERT INTO `n_nm` VALUES (265,2076,'аемйнбяйх',23);
INSERT INTO `n_nm` VALUES (266,6055,'аемйнбяйх',25);
INSERT INTO `n_nm` VALUES (267,2488,'аепюимжх',15);
INSERT INTO `n_nm` VALUES (268,2212,'аепемде',23);
INSERT INTO `n_nm` VALUES (269,2435,'аепемде',15);
INSERT INTO `n_nm` VALUES (270,2212,'аепемде хгбнп',23);
INSERT INTO `n_nm` VALUES (271,5438,'аепхебн',8);
INSERT INTO `n_nm` VALUES (272,3500,'аепйнбхжю',13);
INSERT INTO `n_nm` VALUES (273,7857,'аепйнбяйх',26);
INSERT INTO `n_nm` VALUES (274,5093,'аепйнбжх',5);
INSERT INTO `n_nm` VALUES (275,8448,'аепнмнбн',2);
INSERT INTO `n_nm` VALUES (276,2587,'аепяхм',11);
INSERT INTO `n_nm` VALUES (277,2934,'аеякем',1);
INSERT INTO `n_nm` VALUES (278,6698,'аеямспйю',10);
INSERT INTO `n_nm` VALUES (279,5849,'ахбнкюпе',16);
INSERT INTO `n_nm` VALUES (280,6837,'ахбнкъме',10);
INSERT INTO `n_nm` VALUES (281,5035,'ахфнбжх',5);
INSERT INTO `n_nm` VALUES (282,5350,'ахфнбжх',8);
INSERT INTO `n_nm` VALUES (283,8885,'ахйнбн',21);
INSERT INTO `n_nm` VALUES (284,2383,'ахкхмжх',15);
INSERT INTO `n_nm` VALUES (285,8551,'ахкйю',2);
INSERT INTO `n_nm` VALUES (286,5370,'ахкйхмх',8);
INSERT INTO `n_nm` VALUES (287,9691,'ахкн',9);
INSERT INTO `n_nm` VALUES (288,8846,'ахкн',21);
INSERT INTO `n_nm` VALUES (289,4789,'ахкъмяйю',22);
INSERT INTO `n_nm` VALUES (290,8855,'ахмйня',21);
INSERT INTO `n_nm` VALUES (291,4650,'ахпйнбю',14);
INSERT INTO `n_nm` VALUES (292,6470,'ахяеп',27);
INSERT INTO `n_nm` VALUES (293,7334,'ахяепжх',18);
INSERT INTO `n_nm` VALUES (294,7557,'ахярпю',20);
INSERT INTO `n_nm` VALUES (295,7777,'ахярпю',26);
INSERT INTO `n_nm` VALUES (296,7121,'ахярпемжх',19);
INSERT INTO `n_nm` VALUES (297,9412,'ахярпеж',9);
INSERT INTO `n_nm` VALUES (298,8334,'ахярпеж',2);
INSERT INTO `n_nm` VALUES (299,3527,'ахярпхкхжю',13);
INSERT INTO `n_nm` VALUES (300,2724,'ахярпхжю',1);
INSERT INTO `n_nm` VALUES (301,2644,'ахярпхжю',11);
INSERT INTO `n_nm` VALUES (302,1444,'ахярпхжю',23);
INSERT INTO `n_nm` VALUES (303,6769,'ахярпнцкед',10);
INSERT INTO `n_nm` VALUES (304,3488,'акюцнбн',13);
INSERT INTO `n_nm` VALUES (305,9812,'акюцнбн',28);
INSERT INTO `n_nm` VALUES (306,2700,'акюцнебцпюд',1);
INSERT INTO `n_nm` VALUES (307,7275,'акюцнебн',18);
INSERT INTO `n_nm` VALUES (308,5178,'акюцнебн',5);
INSERT INTO `n_nm` VALUES (309,6955,'акюцсм',10);
INSERT INTO `n_nm` VALUES (310,2678,'акюфхебн',11);
INSERT INTO `n_nm` VALUES (311,2548,'акюреж',11);
INSERT INTO `n_nm` VALUES (312,8878,'акюреж',21);
INSERT INTO `n_nm` VALUES (313,2441,'акюреьмхжю',15);
INSERT INTO `n_nm` VALUES (314,2617,'акюрхмн',11);
INSERT INTO `n_nm` VALUES (315,4537,'акюрмхжю',14);
INSERT INTO `n_nm` VALUES (316,2657,'акюрн',11);
INSERT INTO `n_nm` VALUES (317,2941,'акюряйю',1);
INSERT INTO `n_nm` VALUES (318,6742,'акемхйю',10);
INSERT INTO `n_nm` VALUES (319,8365,'акхгмюй',2);
INSERT INTO `n_nm` VALUES (320,9132,'акхгмюжх',3);
INSERT INTO `n_nm` VALUES (321,9787,'акхгмюжх',28);
INSERT INTO `n_nm` VALUES (322,8896,'акхгмеж',21);
INSERT INTO `n_nm` VALUES (323,9240,'акзяйнбн',3);
INSERT INTO `n_nm` VALUES (324,5078,'акзяйнбжх',5);
INSERT INTO `n_nm` VALUES (325,5453,'анюгзр',8);
INSERT INTO `n_nm` VALUES (326,5300,'анаебжх',8);
INSERT INTO `n_nm` VALUES (327,2567,'анаеьхмн',11);
INSERT INTO `n_nm` VALUES (328,2670,'ананб днк',11);
INSERT INTO `n_nm` VALUES (329,9616,'ананбеж',9);
INSERT INTO `n_nm` VALUES (330,2454,'ананпюжх',15);
INSERT INTO `n_nm` VALUES (331,2660,'ананьебн',11);
INSERT INTO `n_nm` VALUES (332,2270,'анб',23);
INSERT INTO `n_nm` VALUES (333,5421,'анцюрнбн',8);
INSERT INTO `n_nm` VALUES (334,9348,'анцдюм',9);
INSERT INTO `n_nm` VALUES (335,4343,'анцдюм',17);
INSERT INTO `n_nm` VALUES (336,4115,'анцдюмхжю',17);
INSERT INTO `n_nm` VALUES (337,2116,'анцдюмкхъ',23);
INSERT INTO `n_nm` VALUES (338,2341,'анцдюмнб днк',15);
INSERT INTO `n_nm` VALUES (339,8948,'анцдюмнбн',21);
INSERT INTO `n_nm` VALUES (340,8337,'анцдюмнбн',2);
INSERT INTO `n_nm` VALUES (341,2060,'анцдюмнбжх',23);
INSERT INTO `n_nm` VALUES (342,5084,'анцдюмяйн',5);
INSERT INTO `n_nm` VALUES (343,7611,'анцдюмжх',20);
INSERT INTO `n_nm` VALUES (344,7449,'анцдюмжх',18);
INSERT INTO `n_nm` VALUES (345,5301,'анцдюмвнбжх',8);
INSERT INTO `n_nm` VALUES (346,2467,'анцнхмю',15);
INSERT INTO `n_nm` VALUES (347,2931,'анцнкхм',1);
INSERT INTO `n_nm` VALUES (348,6460,'анцнлхк',27);
INSERT INTO `n_nm` VALUES (349,6065,'анцнлхкнбн',25);
INSERT INTO `n_nm` VALUES (350,7458,'анцнлхкжх',18);
INSERT INTO `n_nm` VALUES (351,7997,'анцнлнкяйн',26);
INSERT INTO `n_nm` VALUES (352,7542,'анцнпнбн',20);
INSERT INTO `n_nm` VALUES (353,8687,'анцнпнбн',29);
INSERT INTO `n_nm` VALUES (354,2509,'анцнякнб',11);
INSERT INTO `n_nm` VALUES (355,4855,'анцсребн',22);
INSERT INTO `n_nm` VALUES (356,2235,'анцэнбжх',23);
INSERT INTO `n_nm` VALUES (357,3128,'андемеж',7);
INSERT INTO `n_nm` VALUES (358,6446,'андпнбн',27);
INSERT INTO `n_nm` VALUES (359,2086,'андър',23);
INSERT INTO `n_nm` VALUES (360,4964,'анебн',22);
INSERT INTO `n_nm` VALUES (361,2066,'анепхжю',23);
INSERT INTO `n_nm` VALUES (362,6744,'анфюй',10);
INSERT INTO `n_nm` VALUES (363,9475,'анфюм',9);
INSERT INTO `n_nm` VALUES (364,9677,'анфюмнбн',9);
INSERT INTO `n_nm` VALUES (365,2811,'анфднбн',1);
INSERT INTO `n_nm` VALUES (366,8844,'анфебжх',21);
INSERT INTO `n_nm` VALUES (367,2157,'анфемхжю',23);
INSERT INTO `n_nm` VALUES (368,5349,'анфемжхре',8);
INSERT INTO `n_nm` VALUES (369,7089,'анфхвем',19);
INSERT INTO `n_nm` VALUES (370,9656,'анфспеж',9);
INSERT INTO `n_nm` VALUES (371,5848,'анфспхжю',16);
INSERT INTO `n_nm` VALUES (372,2227,'анфспхые',23);
INSERT INTO `n_nm` VALUES (373,7765,'анфспйю',26);
INSERT INTO `n_nm` VALUES (374,5926,'анфспксй',16);
INSERT INTO `n_nm` VALUES (375,9874,'анфспнбн',28);
INSERT INTO `n_nm` VALUES (376,9368,'анфспнбн',9);
INSERT INTO `n_nm` VALUES (377,7335,'анфспнбн',18);
INSERT INTO `n_nm` VALUES (378,6704,'анфспжх',10);
INSERT INTO `n_nm` VALUES (379,8872,'ангюдфхх',21);
INSERT INTO `n_nm` VALUES (380,9273,'ангбекхияйн',3);
INSERT INTO `n_nm` VALUES (381,6269,'ангдсцюмнбн',25);
INSERT INTO `n_nm` VALUES (382,4654,'ангэнбю',14);
INSERT INTO `n_nm` VALUES (383,7683,'анхк',20);
INSERT INTO `n_nm` VALUES (384,2181,'анийнбеж',23);
INSERT INTO `n_nm` VALUES (385,4103,'анийнбн',17);
INSERT INTO `n_nm` VALUES (386,5080,'анийнбжх',5);
INSERT INTO `n_nm` VALUES (387,6958,'анимхй',10);
INSERT INTO `n_nm` VALUES (388,3840,'анимхжю',6);
INSERT INTO `n_nm` VALUES (389,6730,'анимн',10);
INSERT INTO `n_nm` VALUES (390,5307,'анимнбжх',8);
INSERT INTO `n_nm` VALUES (391,5050,'анивебх йнкхах',5);
INSERT INTO `n_nm` VALUES (392,5309,'аниверю',8);
INSERT INTO `n_nm` VALUES (393,3430,'анивхмнбжх',13);
INSERT INTO `n_nm` VALUES (394,5038,'анивнбжх',5);
INSERT INTO `n_nm` VALUES (395,3517,'анйхкнбжх',13);
INSERT INTO `n_nm` VALUES (396,5340,'анкрюрю',8);
INSERT INTO `n_nm` VALUES (397,4132,'анкъпхмн',17);
INSERT INTO `n_nm` VALUES (398,8720,'анкъпнбн',29);
INSERT INTO `n_nm` VALUES (399,6474,'анкъпяйх хгбнп',27);
INSERT INTO `n_nm` VALUES (400,8631,'анкъпяйн',29);
INSERT INTO `n_nm` VALUES (401,9124,'анкъпжх',3);
INSERT INTO `n_nm` VALUES (402,6681,'анкъпжх',10);
INSERT INTO `n_nm` VALUES (403,4114,'анкъпжх',17);
INSERT INTO `n_nm` VALUES (404,9472,'анмебн',9);
INSERT INTO `n_nm` VALUES (405,4233,'анп',17);
INSERT INTO `n_nm` VALUES (406,4144,'анпеж',17);
INSERT INTO `n_nm` VALUES (407,4961,'анпхе',22);
INSERT INTO `n_nm` VALUES (408,2064,'анпхйю',23);
INSERT INTO `n_nm` VALUES (409,4926,'анпхйю',22);
INSERT INTO `n_nm` VALUES (410,5335,'анпхйх',8);
INSERT INTO `n_nm` VALUES (411,4762,'анпхйнбн',22);
INSERT INTO `n_nm` VALUES (412,3838,'анпхкнбеж',6);
INSERT INTO `n_nm` VALUES (413,6046,'анпхкнбн',25);
INSERT INTO `n_nm` VALUES (414,5672,'анпхлю',12);
INSERT INTO `n_nm` VALUES (415,4464,'анпхлевйнбн',14);
INSERT INTO `n_nm` VALUES (416,4824,'анпхмн',22);
INSERT INTO `n_nm` VALUES (417,4905,'анпхмнбн',22);
INSERT INTO `n_nm` VALUES (418,8999,'анпхмжх',21);
INSERT INTO `n_nm` VALUES (419,5889,'анпхякюб',16);
INSERT INTO `n_nm` VALUES (420,6478,'анпхякюбжх',27);
INSERT INTO `n_nm` VALUES (421,8731,'анпхянбн',29);
INSERT INTO `n_nm` VALUES (422,7064,'анпхянбн',19);
INSERT INTO `n_nm` VALUES (423,2407,'анпмюпебн',15);
INSERT INTO `n_nm` VALUES (424,8898,'анпнб днк',21);
INSERT INTO `n_nm` VALUES (425,3240,'анпнбюм',7);
INSERT INTO `n_nm` VALUES (426,2626,'анпнбеж',11);
INSERT INTO `n_nm` VALUES (427,2010,'анпнбеж',23);
INSERT INTO `n_nm` VALUES (428,4923,'анпнбхмю',22);
INSERT INTO `n_nm` VALUES (429,6790,'анпнбхжю',10);
INSERT INTO `n_nm` VALUES (430,3955,'анпнбхжю',6);
INSERT INTO `n_nm` VALUES (431,2884,'анпнбхвеме',1);
INSERT INTO `n_nm` VALUES (432,7174,'анпнбн',19);
INSERT INTO `n_nm` VALUES (433,2904,'анпнбн',1);
INSERT INTO `n_nm` VALUES (434,4243,'анпнбн',17);
INSERT INTO `n_nm` VALUES (435,6070,'анпнбн',25);
INSERT INTO `n_nm` VALUES (436,6698,'анпнбяйн',10);
INSERT INTO `n_nm` VALUES (437,3528,'анпнбжх',13);
INSERT INTO `n_nm` VALUES (438,5333,'анпяйнрн',8);
INSERT INTO `n_nm` VALUES (439,6187,'анпсыхжю',25);
INSERT INTO `n_nm` VALUES (440,9752,'анпжх',28);
INSERT INTO `n_nm` VALUES (441,9255,'анпъмю',3);
INSERT INTO `n_nm` VALUES (442,5084,'аняебжх',5);
INSERT INTO `n_nm` VALUES (443,6697,'аняхкхжю',10);
INSERT INTO `n_nm` VALUES (444,4945,'аняхкйнбн',22);
INSERT INTO `n_nm` VALUES (445,8446,'аняхкйнбн',2);
INSERT INTO `n_nm` VALUES (446,7128,'аняхкйнбжх',19);
INSERT INTO `n_nm` VALUES (447,7533,'анямю',20);
INSERT INTO `n_nm` VALUES (448,2345,'анямей',15);
INSERT INTO `n_nm` VALUES (449,7914,'анярюм',26);
INSERT INTO `n_nm` VALUES (450,3952,'анярюмхре',6);
INSERT INTO `n_nm` VALUES (451,6716,'анярюмжх',10);
INSERT INTO `n_nm` VALUES (452,4745,'анярхмю',22);
INSERT INTO `n_nm` VALUES (453,2140,'анребцпюд',23);
INSERT INTO `n_nm` VALUES (454,9159,'анребн',3);
INSERT INTO `n_nm` VALUES (455,3746,'анребн',6);
INSERT INTO `n_nm` VALUES (456,3634,'анребн',13);
INSERT INTO `n_nm` VALUES (457,8638,'анребн',29);
INSERT INTO `n_nm` VALUES (458,3353,'анребн',7);
INSERT INTO `n_nm` VALUES (459,7125,'анрпнб',19);
INSERT INTO `n_nm` VALUES (460,3046,'анрсмъ',7);
INSERT INTO `n_nm` VALUES (461,6589,'анрспве',27);
INSERT INTO `n_nm` VALUES (462,2483,'анунбю',15);
INSERT INTO `n_nm` VALUES (463,5891,'анунр',16);
INSERT INTO `n_nm` VALUES (464,5035,'анвйнбжх',5);
INSERT INTO `n_nm` VALUES (465,4481,'аньскъ',14);
INSERT INTO `n_nm` VALUES (466,8640,'анъдфхй',29);
INSERT INTO `n_nm` VALUES (467,9771,'анъм',28);
INSERT INTO `n_nm` VALUES (468,6374,'анъм анребн',27);
INSERT INTO `n_nm` VALUES (469,9147,'анъмю',3);
INSERT INTO `n_nm` VALUES (470,3832,'анъмнбн',6);
INSERT INTO `n_nm` VALUES (471,8730,'анъмнбн',29);
INSERT INTO `n_nm` VALUES (472,5041,'анъмнбжх',5);
INSERT INTO `n_nm` VALUES (473,4246,'анъмжх',17);
INSERT INTO `n_nm` VALUES (474,7568,'апюдбюпх',20);
INSERT INTO `n_nm` VALUES (475,7855,'апюймхжю',26);
INSERT INTO `n_nm` VALUES (476,2251,'апюйэнбжх',23);
INSERT INTO `n_nm` VALUES (477,4109,'апюмхонке',17);
INSERT INTO `n_nm` VALUES (478,6463,'апюмхжю',27);
INSERT INTO `n_nm` VALUES (479,9967,'апюмхвебн',28);
INSERT INTO `n_nm` VALUES (480,9361,'апюмхые',9);
INSERT INTO `n_nm` VALUES (481,5041,'апюмйнбжх',5);
INSERT INTO `n_nm` VALUES (482,3824,'апюмйнбжх',6);
INSERT INTO `n_nm` VALUES (483,8983,'апюрюм',21);
INSERT INTO `n_nm` VALUES (484,4412,'апюрюмхжю',14);
INSERT INTO `n_nm` VALUES (485,8111,'апюрнбн',2);
INSERT INTO `n_nm` VALUES (486,7764,'апюрнбн',26);
INSERT INTO `n_nm` VALUES (487,2222,'апюрсьйнбн',23);
INSERT INTO `n_nm` VALUES (488,6250,'апюръ дюяйюкнбх',25);
INSERT INTO `n_nm` VALUES (489,6057,'апюръ йсмвебх',25);
INSERT INTO `n_nm` VALUES (490,4579,'апюжхцнбн',14);
INSERT INTO `n_nm` VALUES (491,5862,'апецюпе',16);
INSERT INTO `n_nm` VALUES (492,3790,'апецнбн',6);
INSERT INTO `n_nm` VALUES (493,2750,'апефюмх',1);
INSERT INTO `n_nm` VALUES (494,5360,'апефмхжхре',8);
INSERT INTO `n_nm` VALUES (495,4959,'апегю',22);
INSERT INTO `n_nm` VALUES (496,4849,'апеге',22);
INSERT INTO `n_nm` VALUES (497,2278,'апеге',23);
INSERT INTO `n_nm` VALUES (498,6792,'апегем',10);
INSERT INTO `n_nm` VALUES (499,2360,'апегмхй',15);
INSERT INTO `n_nm` VALUES (500,2972,'апегмхжю',1);
INSERT INTO `n_nm` VALUES (501,2385,'апегмхьйх хгбнп',15);
INSERT INTO `n_nm` VALUES (502,2292,'апегнбднк',23);
INSERT INTO `n_nm` VALUES (503,4160,'апегнбн',17);
INSERT INTO `n_nm` VALUES (504,5083,'апегнбн',5);
INSERT INTO `n_nm` VALUES (505,5721,'апегнбн',12);
INSERT INTO `n_nm` VALUES (506,3260,'апемхжю',7);
INSERT INTO `n_nm` VALUES (507,7649,'апемхжю',20);
INSERT INTO `n_nm` VALUES (508,5971,'апеяр',16);
INSERT INTO `n_nm` VALUES (509,2558,'апеяр',11);
INSERT INTO `n_nm` VALUES (510,9290,'апеярюй',3);
INSERT INTO `n_nm` VALUES (511,2072,'апеярюйю',23);
INSERT INTO `n_nm` VALUES (512,5992,'апеяре',16);
INSERT INTO `n_nm` VALUES (513,4107,'апеярмхй',17);
INSERT INTO `n_nm` VALUES (514,9484,'апеярмхжю',9);
INSERT INTO `n_nm` VALUES (515,5761,'апеярмхжю',12);
INSERT INTO `n_nm` VALUES (516,6194,'апеярнбю',25);
INSERT INTO `n_nm` VALUES (517,7331,'апеярнбеме',18);
INSERT INTO `n_nm` VALUES (518,5884,'апеярнбеж',16);
INSERT INTO `n_nm` VALUES (519,7177,'апеярнбхжю',19);
INSERT INTO `n_nm` VALUES (520,4224,'апеярнбхжю',17);
INSERT INTO `n_nm` VALUES (521,5551,'апеярнбн',12);
INSERT INTO `n_nm` VALUES (522,2735,'апеярнбн',1);
INSERT INTO `n_nm` VALUES (523,6442,'апнд',27);
INSERT INTO `n_nm` VALUES (524,8282,'апндхкнбн',2);
INSERT INTO `n_nm` VALUES (525,6737,'апнь',10);
INSERT INTO `n_nm` VALUES (526,3680,'апсяюпжх',13);
INSERT INTO `n_nm` VALUES (527,6488,'апсяебжх',27);
INSERT INTO `n_nm` VALUES (528,2185,'апсяем',23);
INSERT INTO `n_nm` VALUES (529,3126,'апсяем',7);
INSERT INTO `n_nm` VALUES (530,6595,'апсяхмн',27);
INSERT INTO `n_nm` VALUES (531,2372,'апсямхй',15);
INSERT INTO `n_nm` VALUES (532,5342,'апзмежхре',8);
INSERT INTO `n_nm` VALUES (533,5081,'апзвйнбжх',5);
INSERT INTO `n_nm` VALUES (534,7069,'апзькем',19);
INSERT INTO `n_nm` VALUES (535,8357,'апзькъм',2);
INSERT INTO `n_nm` VALUES (536,5844,'апзькъмхжю',16);
INSERT INTO `n_nm` VALUES (537,4821,'апзыем',22);
INSERT INTO `n_nm` VALUES (538,6929,'апъцнбеж',10);
INSERT INTO `n_nm` VALUES (539,5152,'апъцнбхжю',5);
INSERT INTO `n_nm` VALUES (540,4294,'апъцнбн',17);
INSERT INTO `n_nm` VALUES (541,6355,'апъцнбн',27);
INSERT INTO `n_nm` VALUES (542,6434,'апъяр',27);
INSERT INTO `n_nm` VALUES (543,8113,'апъярнбеж',2);
INSERT INTO `n_nm` VALUES (544,9647,'апъярнбн',9);
INSERT INTO `n_nm` VALUES (545,6345,'апъярнбн',27);
INSERT INTO `n_nm` VALUES (546,8935,'апъярнбн',21);
INSERT INTO `n_nm` VALUES (547,6582,'асахмн',27);
INSERT INTO `n_nm` VALUES (548,2844,'асдхкжх',1);
INSERT INTO `n_nm` VALUES (549,6159,'асгнбцпюд',25);
INSERT INTO `n_nm` VALUES (550,2060,'асгъйнбжх',23);
INSERT INTO `n_nm` VALUES (551,9756,'асимнбхжю',28);
INSERT INTO `n_nm` VALUES (552,4812,'асимнбн',22);
INSERT INTO `n_nm` VALUES (553,7753,'асимнбн',18);
INSERT INTO `n_nm` VALUES (554,5097,'асимнбжх',5);
INSERT INTO `n_nm` VALUES (555,6966,'асй',10);
INSERT INTO `n_nm` VALUES (556,7996,'асйюй',26);
INSERT INTO `n_nm` VALUES (557,4763,'асйюрю',22);
INSERT INTO `n_nm` VALUES (558,4782,'асйюжхре',22);
INSERT INTO `n_nm` VALUES (559,4935,'асйнбю онкъмю',22);
INSERT INTO `n_nm` VALUES (560,3678,'асйнбеж',13);
INSERT INTO `n_nm` VALUES (561,3242,'асйнбеж',7);
INSERT INTO `n_nm` VALUES (562,5063,'асйнбеж',5);
INSERT INTO `n_nm` VALUES (563,3762,'асйнбеж',6);
INSERT INTO `n_nm` VALUES (564,2293,'асйнбеж',23);
INSERT INTO `n_nm` VALUES (565,5839,'асйнбкзй',16);
INSERT INTO `n_nm` VALUES (566,2915,'асйнбн',1);
INSERT INTO `n_nm` VALUES (567,4930,'асйнбн',22);
INSERT INTO `n_nm` VALUES (568,4295,'асйнбн',17);
INSERT INTO `n_nm` VALUES (569,2253,'асйнпнбжх',23);
INSERT INTO `n_nm` VALUES (570,9115,'аскюхп',3);
INSERT INTO `n_nm` VALUES (571,2539,'асмнбн',11);
INSERT INTO `n_nm` VALUES (572,2074,'асмнбн',23);
INSERT INTO `n_nm` VALUES (573,2792,'асмжебн',1);
INSERT INTO `n_nm` VALUES (574,2628,'аспюмнбн',11);
INSERT INTO `n_nm` VALUES (575,8000,'аспцюя',2);
INSERT INTO `n_nm` VALUES (576,8124,'аспцюяйх лхм. аюмх',2);
INSERT INTO `n_nm` VALUES (577,4998,'аспебн',22);
INSERT INTO `n_nm` VALUES (578,5375,'аспъ',8);
INSERT INTO `n_nm` VALUES (579,2486,'асяхмжх',15);
INSERT INTO `n_nm` VALUES (580,1520,'асялюмжх',23);
INSERT INTO `n_nm` VALUES (581,3326,'асрюм',7);
INSERT INTO `n_nm` VALUES (582,5232,'асрнбн',5);
INSERT INTO `n_nm` VALUES (583,4652,'асрпебю',14);
INSERT INTO `n_nm` VALUES (584,2473,'асрпнхмжх',15);
INSERT INTO `n_nm` VALUES (585,1830,'асунбн',23);
INSERT INTO `n_nm` VALUES (586,7757,'асунбжх',26);
INSERT INTO `n_nm` VALUES (587,2236,'асвхм опнунд',23);
INSERT INTO `n_nm` VALUES (588,2742,'асвхмн',1);
INSERT INTO `n_nm` VALUES (589,5380,'асвсйнбжх',8);
INSERT INTO `n_nm` VALUES (590,6058,'аздеые',25);
INSERT INTO `n_nm` VALUES (591,3635,'азгнбеж',13);
INSERT INTO `n_nm` VALUES (592,7168,'азгнбеж',19);
INSERT INTO `n_nm` VALUES (593,2555,'азгнбхжю',11);
INSERT INTO `n_nm` VALUES (594,7077,'азгзм',19);
INSERT INTO `n_nm` VALUES (595,7944,'азкцюпюмнбн',26);
INSERT INTO `n_nm` VALUES (596,9660,'азкцюпебн',9);
INSERT INTO `n_nm` VALUES (597,5923,'азкцюпеме',16);
INSERT INTO `n_nm` VALUES (598,5583,'азкцюпеме',12);
INSERT INTO `n_nm` VALUES (599,6274,'азкцюпеме',25);
INSERT INTO `n_nm` VALUES (600,5441,'азкцюпх',8);
INSERT INTO `n_nm` VALUES (601,8274,'азкцюпх',2);
INSERT INTO `n_nm` VALUES (602,6460,'азкцюпхм',27);
INSERT INTO `n_nm` VALUES (603,7544,'азкцюпйю',20);
INSERT INTO `n_nm` VALUES (604,8110,'азкцюпнбн',2);
INSERT INTO `n_nm` VALUES (605,6569,'азкцюпяйю онкъмю',27);
INSERT INTO `n_nm` VALUES (606,5733,'азкцюпяйх хгбнп',12);
INSERT INTO `n_nm` VALUES (607,5284,'азкцюпяйн якхбнбн',5);
INSERT INTO `n_nm` VALUES (608,2746,'азкцюпвебн',1);
INSERT INTO `n_nm` VALUES (609,6186,'азмгюперн',25);
INSERT INTO `n_nm` VALUES (610,9117,'азпдюпебн',3);
INSERT INTO `n_nm` VALUES (611,5360,'азпдюпхре',8);
INSERT INTO `n_nm` VALUES (612,3259,'азпдюпяйх цепюм',7);
INSERT INTO `n_nm` VALUES (613,5365,'азпдемх',8);
INSERT INTO `n_nm` VALUES (614,2060,'азпдн',23);
INSERT INTO `n_nm` VALUES (615,7448,'азпднйбю',18);
INSERT INTO `n_nm` VALUES (616,6710,'азпгю пейю',10);
INSERT INTO `n_nm` VALUES (617,6884,'азпгеъ',10);
INSERT INTO `n_nm` VALUES (618,3359,'азпгхмю',7);
INSERT INTO `n_nm` VALUES (619,9274,'азпгхжю',3);
INSERT INTO `n_nm` VALUES (620,3520,'азпгхъ',13);
INSERT INTO `n_nm` VALUES (621,5877,'азпйюв',16);
INSERT INTO `n_nm` VALUES (622,3245,'азпйювебн',7);
INSERT INTO `n_nm` VALUES (623,2222,'азпкнфмхжю',23);
INSERT INTO `n_nm` VALUES (624,2255,'азпкъ',23);
INSERT INTO `n_nm` VALUES (625,4965,'азпвебн',22);
INSERT INTO `n_nm` VALUES (626,4527,'азрю',14);
INSERT INTO `n_nm` VALUES (627,4587,'аъцю',14);
INSERT INTO `n_nm` VALUES (628,9824,'аък апъц',28);
INSERT INTO `n_nm` VALUES (629,6770,'аък хгбнп',10);
INSERT INTO `n_nm` VALUES (630,6073,'аък хгбнп',25);
INSERT INTO `n_nm` VALUES (631,8961,'аък йкюдемеж',21);
INSERT INTO `n_nm` VALUES (632,6377,'аък йкюдемеж',27);
INSERT INTO `n_nm` VALUES (633,9101,'аъкю',3);
INSERT INTO `n_nm` VALUES (634,7100,'аъкю',19);
INSERT INTO `n_nm` VALUES (635,8850,'аъкю',21);
INSERT INTO `n_nm` VALUES (636,5932,'аъкю бндю',16);
INSERT INTO `n_nm` VALUES (637,8361,'аъкю бндю',2);
INSERT INTO `n_nm` VALUES (638,8892,'аъкю оюкюмйю',21);
INSERT INTO `n_nm` VALUES (639,6662,'аъкю онкъмю',10);
INSERT INTO `n_nm` VALUES (640,9882,'аъкю пейю',28);
INSERT INTO `n_nm` VALUES (641,4285,'аъкю пейю',17);
INSERT INTO `n_nm` VALUES (642,4966,'аъкю пейю',22);
INSERT INTO `n_nm` VALUES (643,5237,'аъкю пейю',5);
INSERT INTO `n_nm` VALUES (644,3200,'аъкю якюрхмю',7);
INSERT INTO `n_nm` VALUES (645,5220,'аъкю вепйбю',5);
INSERT INTO `n_nm` VALUES (646,6590,'аъкцпюдеж',27);
INSERT INTO `n_nm` VALUES (647,6656,'аъкйю',10);
INSERT INTO `n_nm` VALUES (648,5344,'аъкйнбн',8);
INSERT INTO `n_nm` VALUES (649,5084,'аъкйнбжх',5);
INSERT INTO `n_nm` VALUES (650,6054,'аъкн онке',25);
INSERT INTO `n_nm` VALUES (651,7422,'бюгнбн',18);
INSERT INTO `n_nm` VALUES (652,2060,'бюйюпек',23);
INSERT INTO `n_nm` VALUES (653,9672,'бюйкхмн',9);
INSERT INTO `n_nm` VALUES (654,2957,'бюйкхмнбн',1);
INSERT INTO `n_nm` VALUES (655,2590,'бюйяебн',11);
INSERT INTO `n_nm` VALUES (656,5462,'бюкебжх',8);
INSERT INTO `n_nm` VALUES (657,5099,'бюкерн',5);
INSERT INTO `n_nm` VALUES (658,5911,'бюпюмю',16);
INSERT INTO `n_nm` VALUES (659,4492,'бюпбюпю',14);
INSERT INTO `n_nm` VALUES (660,8278,'бюпбюпю',2);
INSERT INTO `n_nm` VALUES (661,5281,'бюпдхл',5);
INSERT INTO `n_nm` VALUES (662,7780,'бюпдсм',26);
INSERT INTO `n_nm` VALUES (663,9000,'бюпмю',3);
INSERT INTO `n_nm` VALUES (664,7638,'бюпмемжх',20);
INSERT INTO `n_nm` VALUES (665,6536,'бюпмхй',27);
INSERT INTO `n_nm` VALUES (666,8338,'бюпнбмхй',2);
INSERT INTO `n_nm` VALUES (667,9814,'бюяхк дпслеб',28);
INSERT INTO `n_nm` VALUES (668,7571,'бюяхк кебяйх',20);
INSERT INTO `n_nm` VALUES (669,4363,'бюяхк кебяйх',17);
INSERT INTO `n_nm` VALUES (670,6068,'бюяхк кебяйх',25);
INSERT INTO `n_nm` VALUES (671,7749,'бюяхк кебяйх',26);
INSERT INTO `n_nm` VALUES (672,9543,'бюяхкебн',9);
INSERT INTO `n_nm` VALUES (673,5576,'бюяхкйнбяйю люуюкю',12);
INSERT INTO `n_nm` VALUES (674,3658,'бюяхкнбжх',13);
INSERT INTO `n_nm` VALUES (675,2205,'бюяхкнбжх',23);
INSERT INTO `n_nm` VALUES (676,5723,'бюяхкэнбн',12);
INSERT INTO `n_nm` VALUES (677,6556,'бюяйнбн',27);
INSERT INTO `n_nm` VALUES (678,4364,'бедпюпе',17);
INSERT INTO `n_nm` VALUES (679,9355,'бедпхмю',9);
INSERT INTO `n_nm` VALUES (680,8447,'бедпнбн',2);
INSERT INTO `n_nm` VALUES (681,8457,'бегемйнбн',2);
INSERT INTO `n_nm` VALUES (682,9941,'бейхкяйх',28);
INSERT INTO `n_nm` VALUES (683,5351,'бекемжх',8);
INSERT INTO `n_nm` VALUES (684,6727,'бекеьюмх',10);
INSERT INTO `n_nm` VALUES (685,8271,'бекхйю',2);
INSERT INTO `n_nm` VALUES (686,6431,'бекхйюм',27);
INSERT INTO `n_nm` VALUES (687,6845,'бекхйдемве',10);
INSERT INTO `n_nm` VALUES (688,7916,'бекхйдемве',26);
INSERT INTO `n_nm` VALUES (689,9850,'бекхйх опеякюб',28);
INSERT INTO `n_nm` VALUES (690,5000,'бекхйн рзпмнбн',5);
INSERT INTO `n_nm` VALUES (691,9547,'бекхйнбн',9);
INSERT INTO `n_nm` VALUES (692,6282,'бекхйнбн',25);
INSERT INTO `n_nm` VALUES (693,7964,'бекхйнбжх',26);
INSERT INTO `n_nm` VALUES (694,4600,'бекхмцпюд',14);
INSERT INTO `n_nm` VALUES (695,9793,'бекхмн',28);
INSERT INTO `n_nm` VALUES (696,2476,'бекхмнбн',15);
INSERT INTO `n_nm` VALUES (697,8458,'бекхякюб',2);
INSERT INTO `n_nm` VALUES (698,7941,'бекхвйю',26);
INSERT INTO `n_nm` VALUES (699,9263,'бекхвйнбн',3);
INSERT INTO `n_nm` VALUES (700,4413,'бекхвйнбн',14);
INSERT INTO `n_nm` VALUES (701,5365,'бекйнбн',8);
INSERT INTO `n_nm` VALUES (702,2375,'бекйнбжх',15);
INSERT INTO `n_nm` VALUES (703,5343,'бекйнбжх',8);
INSERT INTO `n_nm` VALUES (704,5097,'бекйнбжх',5);
INSERT INTO `n_nm` VALUES (705,5643,'беквебн',12);
INSERT INTO `n_nm` VALUES (706,5032,'беквебн',5);
INSERT INTO `n_nm` VALUES (707,5367,'беквнбжх',8);
INSERT INTO `n_nm` VALUES (708,7985,'бекэнбн',26);
INSERT INTO `n_nm` VALUES (709,5070,'бекчбжх',5);
INSERT INTO `n_nm` VALUES (710,2849,'бекчыеж',1);
INSERT INTO `n_nm` VALUES (711,9119,'бемекхм',3);
INSERT INTO `n_nm` VALUES (712,9751,'бемеж',28);
INSERT INTO `n_nm` VALUES (713,8473,'бемеж',2);
INSERT INTO `n_nm` VALUES (714,6078,'бемеж',25);
INSERT INTO `n_nm` VALUES (715,2066,'бемйнбеж',23);
INSERT INTO `n_nm` VALUES (716,9219,'бемвюм',3);
INSERT INTO `n_nm` VALUES (717,6244,'бепем',25);
INSERT INTO `n_nm` VALUES (718,7957,'бепемжх',26);
INSERT INTO `n_nm` VALUES (719,2063,'бепхмяйн',23);
INSERT INTO `n_nm` VALUES (720,6710,'бепяйн',10);
INSERT INTO `n_nm` VALUES (721,7327,'беяекеж',18);
INSERT INTO `n_nm` VALUES (722,7942,'беяекеж',26);
INSERT INTO `n_nm` VALUES (723,8145,'беяекхе',2);
INSERT INTO `n_nm` VALUES (724,5094,'беяекхмю',5);
INSERT INTO `n_nm` VALUES (725,7289,'беяекхмю',18);
INSERT INTO `n_nm` VALUES (726,9828,'беяекхмнбн',28);
INSERT INTO `n_nm` VALUES (727,8632,'беяекхмнбн',29);
INSERT INTO `n_nm` VALUES (728,3053,'беякеж',7);
INSERT INTO `n_nm` VALUES (729,7080,'бернбн',19);
INSERT INTO `n_nm` VALUES (730,8127,'берпем',2);
INSERT INTO `n_nm` VALUES (731,6175,'берпем',25);
INSERT INTO `n_nm` VALUES (732,2579,'берпем',11);
INSERT INTO `n_nm` VALUES (733,4480,'берпем',14);
INSERT INTO `n_nm` VALUES (734,7588,'берпем',20);
INSERT INTO `n_nm` VALUES (735,4493,'берпем днк',14);
INSERT INTO `n_nm` VALUES (736,9220,'берпхмн',3);
INSERT INTO `n_nm` VALUES (737,5066,'берпхмжх',5);
INSERT INTO `n_nm` VALUES (738,9809,'берпхые',28);
INSERT INTO `n_nm` VALUES (739,5300,'берпнбн',8);
INSERT INTO `n_nm` VALUES (740,6591,'берпсьйю',27);
INSERT INTO `n_nm` VALUES (741,4924,'беурхмн',22);
INSERT INTO `n_nm` VALUES (742,9822,'беурнбн',28);
INSERT INTO `n_nm` VALUES (743,3918,'беыхжю',6);
INSERT INTO `n_nm` VALUES (744,6156,'бхдем',25);
INSERT INTO `n_nm` VALUES (745,3700,'бхдхм',6);
INSERT INTO `n_nm` VALUES (746,8671,'бхдхмжх',29);
INSERT INTO `n_nm` VALUES (747,3478,'бхдкхжю',13);
INSERT INTO `n_nm` VALUES (748,9668,'бхдмн',9);
INSERT INTO `n_nm` VALUES (749,2495,'бхдпюп',15);
INSERT INTO `n_nm` VALUES (750,2166,'бхдпюпе',23);
INSERT INTO `n_nm` VALUES (751,2364,'бхдпхжю',15);
INSERT INTO `n_nm` VALUES (752,4748,'бхебн',22);
INSERT INTO `n_nm` VALUES (753,8369,'бхгхжю',2);
INSERT INTO `n_nm` VALUES (754,5035,'бхкюпе',5);
INSERT INTO `n_nm` VALUES (755,3773,'бхмюпнбн',6);
INSERT INTO `n_nm` VALUES (756,6238,'бхмюпнбн',25);
INSERT INTO `n_nm` VALUES (757,8118,'бхмюпяйн',2);
INSERT INTO `n_nm` VALUES (758,6375,'бхмебн',27);
INSERT INTO `n_nm` VALUES (759,4284,'бхмхжю',17);
INSERT INTO `n_nm` VALUES (760,3482,'бхмхые',13);
INSERT INTO `n_nm` VALUES (761,5171,'бхмнцпюд',5);
INSERT INTO `n_nm` VALUES (762,4487,'бхмнцпюдеж',14);
INSERT INTO `n_nm` VALUES (763,2822,'бхмнцпюдх',1);
INSERT INTO `n_nm` VALUES (764,3455,'бхпнбе',13);
INSERT INTO `n_nm` VALUES (765,3057,'бхпнбяйн',7);
INSERT INTO `n_nm` VALUES (766,6591,'бхя',27);
INSERT INTO `n_nm` VALUES (767,2358,'бхяйъп',15);
INSERT INTO `n_nm` VALUES (768,7955,'бхянй',26);
INSERT INTO `n_nm` VALUES (769,6744,'бхянйю',10);
INSERT INTO `n_nm` VALUES (770,2665,'бхянйю лнцхкю',11);
INSERT INTO `n_nm` VALUES (771,6678,'бхянйю онкъмю',10);
INSERT INTO `n_nm` VALUES (772,9765,'бхянйю онкъмю',28);
INSERT INTO `n_nm` VALUES (773,4921,'бхянйхре',22);
INSERT INTO `n_nm` VALUES (774,5098,'бхянйнбжх',5);
INSERT INTO `n_nm` VALUES (775,2354,'бхрюмнбжх',15);
INSERT INTO `n_nm` VALUES (776,4975,'бхрхмю',22);
INSERT INTO `n_nm` VALUES (777,2800,'бхупем',1);
INSERT INTO `n_nm` VALUES (778,9563,'бхвебн',9);
INSERT INTO `n_nm` VALUES (779,2213,'бхьюм',23);
INSERT INTO `n_nm` VALUES (780,6646,'бхьецпюд',10);
INSERT INTO `n_nm` VALUES (781,2895,'бхькеме',1);
INSERT INTO `n_nm` VALUES (782,8562,'бхьмю',2);
INSERT INTO `n_nm` VALUES (783,4939,'бхьмебн',22);
INSERT INTO `n_nm` VALUES (784,5239,'бхьнбцпюд',5);
INSERT INTO `n_nm` VALUES (785,1641,'бкюдюъ',23);
INSERT INTO `n_nm` VALUES (786,2411,'бкюдхлхп',15);
INSERT INTO `n_nm` VALUES (787,3440,'бкюдхлхпнбн',13);
INSERT INTO `n_nm` VALUES (788,9379,'бкюдхлхпнбн',9);
INSERT INTO `n_nm` VALUES (789,6545,'бкюдхлхпнбн',27);
INSERT INTO `n_nm` VALUES (790,7440,'бкюдхлхпнбжх',18);
INSERT INTO `n_nm` VALUES (791,5563,'бкюдхмъ',12);
INSERT INTO `n_nm` VALUES (792,5179,'бкюдхякюб',5);
INSERT INTO `n_nm` VALUES (793,2215,'бкюдхякюбжх',23);
INSERT INTO `n_nm` VALUES (794,3748,'бкюдхвемжх',6);
INSERT INTO `n_nm` VALUES (795,2299,'бкюдн рпхвйнб',23);
INSERT INTO `n_nm` VALUES (796,5365,'бкюднбжх',8);
INSERT INTO `n_nm` VALUES (797,5344,'бкюивнбжх',8);
INSERT INTO `n_nm` VALUES (798,5367,'бкюяюрхкх',8);
INSERT INTO `n_nm` VALUES (799,3041,'бкюяюрхжю',7);
INSERT INTO `n_nm` VALUES (800,2841,'бкюух',1);
INSERT INTO `n_nm` VALUES (801,4724,'бкюунбн',22);
INSERT INTO `n_nm` VALUES (802,5349,'бкюунбжх',8);
INSERT INTO `n_nm` VALUES (803,4713,'бндюрю',22);
INSERT INTO `n_nm` VALUES (804,6709,'бндюв',10);
INSERT INTO `n_nm` VALUES (805,8750,'бндем',29);
INSERT INTO `n_nm` VALUES (806,6412,'бндем',27);
INSERT INTO `n_nm` VALUES (807,4289,'бндем',17);
INSERT INTO `n_nm` VALUES (808,8693,'бндемхвюме',29);
INSERT INTO `n_nm` VALUES (809,6051,'бндемхвюпнбн',25);
INSERT INTO `n_nm` VALUES (810,6852,'бндемхвюпяйн',10);
INSERT INTO `n_nm` VALUES (811,6382,'бндемжх',27);
INSERT INTO `n_nm` VALUES (812,9141,'бндхжю',3);
INSERT INTO `n_nm` VALUES (813,7851,'бндхжю',26);
INSERT INTO `n_nm` VALUES (814,3831,'бндмю',6);
INSERT INTO `n_nm` VALUES (815,4826,'бндмх оюд',22);
INSERT INTO `n_nm` VALUES (816,7657,'бндмн',20);
INSERT INTO `n_nm` VALUES (817,5166,'бндмн',5);
INSERT INTO `n_nm` VALUES (818,3924,'бндмъмжх',6);
INSERT INTO `n_nm` VALUES (819,9495,'бндмъмжх',9);
INSERT INTO `n_nm` VALUES (820,5061,'бнднкеи',5);
INSERT INTO `n_nm` VALUES (821,6716,'бнфднбн',10);
INSERT INTO `n_nm` VALUES (822,4203,'бнхяхк',17);
INSERT INTO `n_nm` VALUES (823,9958,'бнибндю',28);
INSERT INTO `n_nm` VALUES (824,6381,'бнибндемеж',27);
INSERT INTO `n_nm` VALUES (825,9292,'бнибндхмн',3);
INSERT INTO `n_nm` VALUES (826,4135,'бнибндхмнбн',17);
INSERT INTO `n_nm` VALUES (827,3332,'бнибнднбн',7);
INSERT INTO `n_nm` VALUES (828,6353,'бнибнднбн',27);
INSERT INTO `n_nm` VALUES (829,4967,'бнийнбю кзйю',22);
INSERT INTO `n_nm` VALUES (830,5045,'бнимефю',5);
INSERT INTO `n_nm` VALUES (831,8661,'бнимхйю',29);
INSERT INTO `n_nm` VALUES (832,9473,'бнимхйнбн',9);
INSERT INTO `n_nm` VALUES (833,3734,'бнимхжю',6);
INSERT INTO `n_nm` VALUES (834,3481,'бнимхжх',13);
INSERT INTO `n_nm` VALUES (835,5350,'бнимхжхре',8);
INSERT INTO `n_nm` VALUES (836,5458,'бнимхьйю',8);
INSERT INTO `n_nm` VALUES (837,7551,'бнимнбн',20);
INSERT INTO `n_nm` VALUES (838,6698,'бнимнбн',10);
INSERT INTO `n_nm` VALUES (839,4347,'бнимъцнбн',17);
INSERT INTO `n_nm` VALUES (840,1223,'бнимъцнбжх',23);
INSERT INTO `n_nm` VALUES (841,7670,'бнйхк',20);
INSERT INTO `n_nm` VALUES (842,2886,'бнкмн',1);
INSERT INTO `n_nm` VALUES (843,6231,'бнкнбюпнбн',25);
INSERT INTO `n_nm` VALUES (844,6633,'бнкнбюпжх',10);
INSERT INTO `n_nm` VALUES (845,7175,'бнкнбн',19);
INSERT INTO `n_nm` VALUES (846,1346,'бнксъй',23);
INSERT INTO `n_nm` VALUES (847,5035,'бнмеыю бндю',5);
INSERT INTO `n_nm` VALUES (848,5660,'бпюаебн',12);
INSERT INTO `n_nm` VALUES (849,5307,'бпюажхре',8);
INSERT INTO `n_nm` VALUES (850,2470,'бпюавю',15);
INSERT INTO `n_nm` VALUES (851,2834,'бпюйсонбхжю',1);
INSERT INTO `n_nm` VALUES (852,4649,'бпюмемжх',14);
INSERT INTO `n_nm` VALUES (853,7940,'бпюмх йнм',26);
INSERT INTO `n_nm` VALUES (854,5347,'бпюмхкнбжх',8);
INSERT INTO `n_nm` VALUES (855,9663,'бпюмхмн',9);
INSERT INTO `n_nm` VALUES (856,4906,'бпюмхмжх',22);
INSERT INTO `n_nm` VALUES (857,6912,'бпюмяйн',10);
INSERT INTO `n_nm` VALUES (858,2830,'бпюмъ',1);
INSERT INTO `n_nm` VALUES (859,2445,'бпюмъ яремю',15);
INSERT INTO `n_nm` VALUES (860,3248,'бпюмъй',7);
INSERT INTO `n_nm` VALUES (861,4234,'бпюрю',17);
INSERT INTO `n_nm` VALUES (862,9382,'бпюрюпхре',9);
INSERT INTO `n_nm` VALUES (863,8109,'бпюрхжю',2);
INSERT INTO `n_nm` VALUES (864,2059,'бпюржю',23);
INSERT INTO `n_nm` VALUES (865,2575,'бпюржю',11);
INSERT INTO `n_nm` VALUES (866,3000,'бпюжю',7);
INSERT INTO `n_nm` VALUES (867,9345,'бпювюмжх',9);
INSERT INTO `n_nm` VALUES (868,2151,'бпювеь',23);
INSERT INTO `n_nm` VALUES (869,6832,'бпекн',10);
INSERT INTO `n_nm` VALUES (870,8560,'бпеянбн',2);
INSERT INTO `n_nm` VALUES (871,3779,'бпзб',6);
INSERT INTO `n_nm` VALUES (872,2254,'бпздкнбжх',23);
INSERT INTO `n_nm` VALUES (873,4622,'бяелхпжх',14);
INSERT INTO `n_nm` VALUES (874,2485,'бсйюм',15);
INSERT INTO `n_nm` VALUES (875,2661,'бсйнбн',11);
INSERT INTO `n_nm` VALUES (876,5953,'бзаек',16);
INSERT INTO `n_nm` VALUES (877,6313,'бзцкюпнбн',27);
INSERT INTO `n_nm` VALUES (878,5041,'бзцкебжх',5);
INSERT INTO `n_nm` VALUES (879,9157,'бзцкем',3);
INSERT INTO `n_nm` VALUES (880,8851,'бзцкем',21);
INSERT INTO `n_nm` VALUES (881,6710,'бзгек',10);
INSERT INTO `n_nm` VALUES (882,7643,'бзкйюм',20);
INSERT INTO `n_nm` VALUES (883,5349,'бзкйнб днк',8);
INSERT INTO `n_nm` VALUES (884,6850,'бзкйнбхв',10);
INSERT INTO `n_nm` VALUES (885,2807,'бзкйнбн',1);
INSERT INTO `n_nm` VALUES (886,5365,'бзкйнбжх',8);
INSERT INTO `n_nm` VALUES (887,2930,'бзкйняек',1);
INSERT INTO `n_nm` VALUES (888,9963,'бзкмюпх',28);
INSERT INTO `n_nm` VALUES (889,8748,'бзквю онкъмю',29);
INSERT INTO `n_nm` VALUES (890,4775,'бзквюм',22);
INSERT INTO `n_nm` VALUES (891,4947,'бзквюм днк',22);
INSERT INTO `n_nm` VALUES (892,6893,'бзквюмйю',10);
INSERT INTO `n_nm` VALUES (893,8341,'бзквюмнбн',2);
INSERT INTO `n_nm` VALUES (894,6553,'бзкве онке',27);
INSERT INTO `n_nm` VALUES (895,3650,'бзкведпзл',13);
INSERT INTO `n_nm` VALUES (896,3851,'бзквей',6);
INSERT INTO `n_nm` VALUES (897,9280,'бзквх днк',3);
INSERT INTO `n_nm` VALUES (898,8723,'бзквх хгбнп',29);
INSERT INTO `n_nm` VALUES (899,8443,'бзквхм',2);
INSERT INTO `n_nm` VALUES (900,5890,'бзквхрпзм',16);
INSERT INTO `n_nm` VALUES (901,5081,'бзквнбжх',5);
INSERT INTO `n_nm` VALUES (902,5086,'бзквнбжх',5);
INSERT INTO `n_nm` VALUES (903,3939,'бзпаю',6);
INSERT INTO `n_nm` VALUES (904,4920,'бзпаю',22);
INSERT INTO `n_nm` VALUES (905,2405,'бзпаю',15);
INSERT INTO `n_nm` VALUES (906,9781,'бзпаюй',28);
INSERT INTO `n_nm` VALUES (907,4145,'бзпаем',17);
INSERT INTO `n_nm` VALUES (908,6873,'бзпаем',10);
INSERT INTO `n_nm` VALUES (909,6745,'бзпаемжх',10);
INSERT INTO `n_nm` VALUES (910,3147,'бзпаеьмхжю',7);
INSERT INTO `n_nm` VALUES (911,4921,'бзпахмю',22);
INSERT INTO `n_nm` VALUES (912,7674,'бзпахмн',20);
INSERT INTO `n_nm` VALUES (913,3264,'бзпахжю',7);
INSERT INTO `n_nm` VALUES (914,9870,'бзпахжю',28);
INSERT INTO `n_nm` VALUES (915,5128,'бзпахжю',5);
INSERT INTO `n_nm` VALUES (916,6445,'бзпахжю',27);
INSERT INTO `n_nm` VALUES (917,5845,'бзпахжю',16);
INSERT INTO `n_nm` VALUES (918,2248,'бзпамхжю',23);
INSERT INTO `n_nm` VALUES (919,5233,'бзпанбйю',5);
INSERT INTO `n_nm` VALUES (920,4710,'бзпанбн',22);
INSERT INTO `n_nm` VALUES (921,6488,'бзпанбн',27);
INSERT INTO `n_nm` VALUES (922,3951,'бзпанбн',6);
INSERT INTO `n_nm` VALUES (923,3948,'бзпанбвеж',6);
INSERT INTO `n_nm` VALUES (924,9943,'бзпаъме',28);
INSERT INTO `n_nm` VALUES (925,4907,'бзпцнб днк',22);
INSERT INTO `n_nm` VALUES (926,5081,'бзпгхкйнбжх',5);
INSERT INTO `n_nm` VALUES (927,5191,'бзпгскхжю',5);
INSERT INTO `n_nm` VALUES (928,6873,'бзпкх днк',10);
INSERT INTO `n_nm` VALUES (929,4989,'бзпкх днк',22);
INSERT INTO `n_nm` VALUES (930,2085,'бзпкхмю',23);
INSERT INTO `n_nm` VALUES (931,5050,'бзпкхмйю',5);
INSERT INTO `n_nm` VALUES (932,4983,'бзпкхмн',22);
INSERT INTO `n_nm` VALUES (933,8999,'бзпкхые',21);
INSERT INTO `n_nm` VALUES (934,3752,'бзпрно',6);
INSERT INTO `n_nm` VALUES (935,2786,'бзпуюпх',1);
INSERT INTO `n_nm` VALUES (936,6814,'бзпуюпх',10);
INSERT INTO `n_nm` VALUES (937,3540,'бзпьеж',13);
INSERT INTO `n_nm` VALUES (938,8157,'бзпьхкн',2);
INSERT INTO `n_nm` VALUES (939,3265,'цюаюпе',7);
INSERT INTO `n_nm` VALUES (940,6162,'цюаюпебн',25);
INSERT INTO `n_nm` VALUES (941,2215,'цюаеп',23);
INSERT INTO `n_nm` VALUES (942,9419,'цюаеп',9);
INSERT INTO `n_nm` VALUES (943,6482,'цюаепнбн',27);
INSERT INTO `n_nm` VALUES (944,8212,'цюаепнбн',2);
INSERT INTO `n_nm` VALUES (945,2112,'цюапю',23);
INSERT INTO `n_nm` VALUES (946,5097,'цюапюйю',5);
INSERT INTO `n_nm` VALUES (947,2898,'цюапеме',1);
INSERT INTO `n_nm` VALUES (948,2557,'цюапеьебжх',11);
INSERT INTO `n_nm` VALUES (949,4921,'цюапхмю',22);
INSERT INTO `n_nm` VALUES (950,9779,'цюапхжю',28);
INSERT INTO `n_nm` VALUES (951,4795,'цюапхжю',22);
INSERT INTO `n_nm` VALUES (952,2392,'цюапнб днк',15);
INSERT INTO `n_nm` VALUES (953,4467,'цюапнбхжю',14);
INSERT INTO `n_nm` VALUES (954,3453,'цюапнбмхжю',13);
INSERT INTO `n_nm` VALUES (955,2277,'цюапнбмхжю',23);
INSERT INTO `n_nm` VALUES (956,2747,'цюапнбн',1);
INSERT INTO `n_nm` VALUES (957,5300,'цюапнбн',8);
INSERT INTO `n_nm` VALUES (958,6691,'цюапнбн',10);
INSERT INTO `n_nm` VALUES (959,5051,'цюапнбжх',5);
INSERT INTO `n_nm` VALUES (960,8158,'цюазп',2);
INSERT INTO `n_nm` VALUES (961,9227,'цюазпмхжю',3);
INSERT INTO `n_nm` VALUES (962,5619,'цюазпяйн',12);
INSERT INTO `n_nm` VALUES (963,8854,'цюбпюхкнбн',21);
INSERT INTO `n_nm` VALUES (964,3469,'цюбпхк цемнбн',13);
INSERT INTO `n_nm` VALUES (965,3525,'цюцюмхжю',13);
INSERT INTO `n_nm` VALUES (966,7831,'цюцнбн',26);
INSERT INTO `n_nm` VALUES (967,5367,'цюидюпх',8);
INSERT INTO `n_nm` VALUES (968,5300,'цюийхмх',8);
INSERT INTO `n_nm` VALUES (969,2114,'цюирюмебн',23);
INSERT INTO `n_nm` VALUES (970,2924,'цюирюмхмнбн',1);
INSERT INTO `n_nm` VALUES (971,5345,'цюирюмхре',8);
INSERT INTO `n_nm` VALUES (972,3753,'цюирюмжх',6);
INSERT INTO `n_nm` VALUES (973,5731,'цюкюрю',12);
INSERT INTO `n_nm` VALUES (974,3071,'цюкюрхм',7);
INSERT INTO `n_nm` VALUES (975,3250,'цюкхве',7);
INSERT INTO `n_nm` VALUES (976,4934,'цюкхые',22);
INSERT INTO `n_nm` VALUES (977,3342,'цюкнбн',7);
INSERT INTO `n_nm` VALUES (978,5084,'цюмеб днк',5);
INSERT INTO `n_nm` VALUES (979,5397,'цюмвнбеж',8);
INSERT INTO `n_nm` VALUES (980,2271,'цюпю анб',23);
INSERT INTO `n_nm` VALUES (981,7101,'цюпю аъкю',19);
INSERT INTO `n_nm` VALUES (982,5120,'цюпю цнпмю нпъунбхж',5);
INSERT INTO `n_nm` VALUES (983,2109,'цюпю екхм оекхм',23);
INSERT INTO `n_nm` VALUES (984,8432,'цюпю гюбер',2);
INSERT INTO `n_nm` VALUES (985,5364,'цюпю йпзяреж',8);
INSERT INTO `n_nm` VALUES (986,2272,'цюпю кюйюрмхй',23);
INSERT INTO `n_nm` VALUES (987,3940,'цюпю нпеьеж',6);
INSERT INTO `n_nm` VALUES (988,4410,'цюпю оюгюпдфхй',14);
INSERT INTO `n_nm` VALUES (989,6880,'цюпю ондйнбю',10);
INSERT INTO `n_nm` VALUES (990,6517,'цюпю ябхкемцпюд',27);
INSERT INTO `n_nm` VALUES (991,7272,'цюпю яемнбн',19);
INSERT INTO `n_nm` VALUES (992,6489,'цюпю яхленмнбцпюд',27);
INSERT INTO `n_nm` VALUES (993,7737,'цюпю рзпцнбхые',26);
INSERT INTO `n_nm` VALUES (994,9780,'цюпю ухрпхмн',28);
INSERT INTO `n_nm` VALUES (995,3163,'цюпю вепеохь',7);
INSERT INTO `n_nm` VALUES (996,8604,'цюпю ъланк',29);
INSERT INTO `n_nm` VALUES (997,5345,'цюпбюм',8);
INSERT INTO `n_nm` VALUES (998,7589,'цюпбюм',20);
INSERT INTO `n_nm` VALUES (999,6349,'цюпбюмнбн',27);
INSERT INTO `n_nm` VALUES (1000,5041,'цюьебжх',5);
INSERT INTO `n_nm` VALUES (1001,2882,'цецю',1);
INSERT INTO `n_nm` VALUES (1002,4710,'цекю',22);
INSERT INTO `n_nm` VALUES (1003,4444,'цекелемнбн',14);
INSERT INTO `n_nm` VALUES (1004,6856,'цемепюк цеьебн',10);
INSERT INTO `n_nm` VALUES (1005,8670,'цемепюк хмгнбн',29);
INSERT INTO `n_nm` VALUES (1006,9150,'цемепюк йюмрюпдфхеб',3);
INSERT INTO `n_nm` VALUES (1007,9142,'цемепюк йхяекнбн',3);
INSERT INTO `n_nm` VALUES (1008,9295,'цемепюк йнкебн',3);
INSERT INTO `n_nm` VALUES (1009,9373,'цемепюк йнкебн',9);
INSERT INTO `n_nm` VALUES (1010,3732,'цемепюк люпхмнбн',6);
INSERT INTO `n_nm` VALUES (1011,2873,'цемепюк рнднпнб',1);
INSERT INTO `n_nm` VALUES (1012,9500,'цемепюк рньебн',9);
INSERT INTO `n_nm` VALUES (1013,8625,'цемепюк рньебн',29);
INSERT INTO `n_nm` VALUES (1014,6523,'цемепюкнбн',27);
INSERT INTO `n_nm` VALUES (1015,6635,'цемнбн',10);
INSERT INTO `n_nm` VALUES (1016,5307,'цемнбжх',8);
INSERT INTO `n_nm` VALUES (1017,5301,'цемвнбжх',8);
INSERT INTO `n_nm` VALUES (1018,5350,'цемвнбжх',8);
INSERT INTO `n_nm` VALUES (1019,5397,'цемъ',8);
INSERT INTO `n_nm` VALUES (1020,3470,'ценпцх дюлъмнбн',13);
INSERT INTO `n_nm` VALUES (1021,6559,'ценпцх днапебн',27);
INSERT INTO `n_nm` VALUES (1022,8869,'цепцебеж',21);
INSERT INTO `n_nm` VALUES (1023,5345,'цепцхмх',8);
INSERT INTO `n_nm` VALUES (1024,1186,'цеплюм',23);
INSERT INTO `n_nm` VALUES (1025,7219,'цежнбн',18);
INSERT INTO `n_nm` VALUES (1026,5370,'цеью',8);
INSERT INTO `n_nm` VALUES (1027,9393,'цеьюмнбн',9);
INSERT INTO `n_nm` VALUES (1028,5970,'цхцем',16);
INSERT INTO `n_nm` VALUES (1029,2393,'цхцхмжх',15);
INSERT INTO `n_nm` VALUES (1030,2250,'цхмжх',23);
INSERT INTO `n_nm` VALUES (1031,2546,'цхпвебжх',11);
INSERT INTO `n_nm` VALUES (1032,6215,'цхрю',25);
INSERT INTO `n_nm` VALUES (1033,5985,'цкюбю',16);
INSERT INTO `n_nm` VALUES (1034,6295,'цкюбюм',25);
INSERT INTO `n_nm` VALUES (1035,7543,'цкюбюм',20);
INSERT INTO `n_nm` VALUES (1036,3468,'цкюбюмнбжх',13);
INSERT INTO `n_nm` VALUES (1037,2480,'цкюбюмнбжх',15);
INSERT INTO `n_nm` VALUES (1038,9499,'цкюбюмжх',9);
INSERT INTO `n_nm` VALUES (1039,4171,'цкюбюрюп',17);
INSERT INTO `n_nm` VALUES (1040,6738,'цкюбюрюпжх',10);
INSERT INTO `n_nm` VALUES (1041,3045,'цкюбюжх',7);
INSERT INTO `n_nm` VALUES (1042,7630,'цкюбхмхжю',20);
INSERT INTO `n_nm` VALUES (1043,4409,'цкюбхмхжю',14);
INSERT INTO `n_nm` VALUES (1044,7986,'цкюьюрюи',26);
INSERT INTO `n_nm` VALUES (1045,5345,'цкедюжх',8);
INSERT INTO `n_nm` VALUES (1046,6263,'цкедювебн',25);
INSERT INTO `n_nm` VALUES (1047,6362,'цкедйю',27);
INSERT INTO `n_nm` VALUES (1048,7879,'цкнцхмйю',26);
INSERT INTO `n_nm` VALUES (1049,4948,'цкнцхмн',22);
INSERT INTO `n_nm` VALUES (1050,5080,'цкнцнбеж',5);
INSERT INTO `n_nm` VALUES (1051,2463,'цкнцнбхжю',15);
INSERT INTO `n_nm` VALUES (1052,5724,'цкнцнбн',12);
INSERT INTO `n_nm` VALUES (1053,7294,'цкндфебн',19);
INSERT INTO `n_nm` VALUES (1054,3327,'цкнфеме',7);
INSERT INTO `n_nm` VALUES (1055,5740,'цкнфеме',12);
INSERT INTO `n_nm` VALUES (1056,6572,'цкслнбн',27);
INSERT INTO `n_nm` VALUES (1057,8429,'цкслве',2);
INSERT INTO `n_nm` VALUES (1058,5363,'цксрмхжхре',8);
INSERT INTO `n_nm` VALUES (1059,8866,'цкстхьебн',21);
INSERT INTO `n_nm` VALUES (1060,6647,'цксуюп',10);
INSERT INTO `n_nm` VALUES (1061,5370,'цксьйю',8);
INSERT INTO `n_nm` VALUES (1062,8879,'цксьмхй',21);
INSERT INTO `n_nm` VALUES (1063,6590,'цмегдюпе',27);
INSERT INTO `n_nm` VALUES (1064,6675,'цмъгднбн',10);
INSERT INTO `n_nm` VALUES (1065,4453,'цнбедюпе',14);
INSERT INTO `n_nm` VALUES (1066,2020,'цнбедюпжх',23);
INSERT INTO `n_nm` VALUES (1067,3474,'цнбефдю',13);
INSERT INTO `n_nm` VALUES (1068,2240,'цндев',23);
INSERT INTO `n_nm` VALUES (1069,2938,'цндеьебн',1);
INSERT INTO `n_nm` VALUES (1070,2768,'цндкебн',1);
INSERT INTO `n_nm` VALUES (1071,2366,'цнг',15);
INSERT INTO `n_nm` VALUES (1072,4791,'цнгдебхжю',22);
INSERT INTO `n_nm` VALUES (1073,5392,'цнгдеийю',8);
INSERT INTO `n_nm` VALUES (1074,2036,'цнкюй',23);
INSERT INTO `n_nm` VALUES (1075,2800,'цнкел жюкхл',1);
INSERT INTO `n_nm` VALUES (1076,2113,'цнкелю пюйнбхжю',23);
INSERT INTO `n_nm` VALUES (1077,2667,'цнкелю тсвю',11);
INSERT INTO `n_nm` VALUES (1078,5070,'цнкелюмх',5);
INSERT INTO `n_nm` VALUES (1079,5054,'цнкелюмхре',5);
INSERT INTO `n_nm` VALUES (1080,3839,'цнкелюмнбн',6);
INSERT INTO `n_nm` VALUES (1081,6358,'цнкелюмжх',27);
INSERT INTO `n_nm` VALUES (1082,5370,'цнкелх азкцюпемх',8);
INSERT INTO `n_nm` VALUES (1083,5365,'цнкелх ярюмвнбжх',8);
INSERT INTO `n_nm` VALUES (1084,3063,'цнкелн аюахмн',7);
INSERT INTO `n_nm` VALUES (1085,2348,'цнкелн асвхмн',15);
INSERT INTO `n_nm` VALUES (1086,2204,'цнкелн люкнбн',23);
INSERT INTO `n_nm` VALUES (1087,2635,'цнкелн яекн',11);
INSERT INTO `n_nm` VALUES (1088,5573,'цнкеж',12);
INSERT INTO `n_nm` VALUES (1089,2254,'цнкеь',23);
INSERT INTO `n_nm` VALUES (1090,7547,'цнкеь',20);
INSERT INTO `n_nm` VALUES (1091,2818,'цнкеьнбн',1);
INSERT INTO `n_nm` VALUES (1092,9114,'цнкхжю',3);
INSERT INTO `n_nm` VALUES (1093,6793,'цнкнапюд',10);
INSERT INTO `n_nm` VALUES (1094,6386,'цнкнапюднбн',27);
INSERT INTO `n_nm` VALUES (1095,2690,'цнкъл бзпанбмхй',11);
INSERT INTO `n_nm` VALUES (1096,6932,'цнкъл дебеяхк',10);
INSERT INTO `n_nm` VALUES (1097,8757,'цнкъл депбемр',29);
INSERT INTO `n_nm` VALUES (1098,6245,'цнкъл днк',25);
INSERT INTO `n_nm` VALUES (1099,7459,'цнкъл хгбнп',18);
INSERT INTO `n_nm` VALUES (1100,6395,'цнкъл хгбнп',27);
INSERT INTO `n_nm` VALUES (1101,5741,'цнкъл хгбнп',12);
INSERT INTO `n_nm` VALUES (1102,8624,'цнкъл люмюярхп',29);
INSERT INTO `n_nm` VALUES (1103,7444,'цнкъл онпнбеж',18);
INSERT INTO `n_nm` VALUES (1104,4193,'цнкъл вюпдюй',17);
INSERT INTO `n_nm` VALUES (1105,6744,'цнкълю аюпю',10);
INSERT INTO `n_nm` VALUES (1106,5753,'цнкълю апеярмхжю',12);
INSERT INTO `n_nm` VALUES (1107,7452,'цнкълю бндю',18);
INSERT INTO `n_nm` VALUES (1108,6476,'цнкълю днкхмю',27);
INSERT INTO `n_nm` VALUES (1109,5670,'цнкълю фекъгмю',12);
INSERT INTO `n_nm` VALUES (1110,6940,'цнкълю вхмйю',10);
INSERT INTO `n_nm` VALUES (1111,6424,'цнкълн юяемнбн',27);
INSERT INTO `n_nm` VALUES (1112,4473,'цнкълн аекнбн',14);
INSERT INTO `n_nm` VALUES (1113,8329,'цнкълн асйнбн',2);
INSERT INTO `n_nm` VALUES (1114,7065,'цнкълн бпюмнбн',19);
INSERT INTO `n_nm` VALUES (1115,7848,'цнкълн цпюдхые',26);
INSERT INTO `n_nm` VALUES (1116,7960,'цнкълн днкъме',26);
INSERT INTO `n_nm` VALUES (1117,6146,'цнкълн дпъмнбн',25);
INSERT INTO `n_nm` VALUES (1118,6925,'цнкълн йюлемъме',10);
INSERT INTO `n_nm` VALUES (1119,8729,'цнкълн йпсьебн',29);
INSERT INTO `n_nm` VALUES (1120,7789,'цнкълн мнбн',18);
INSERT INTO `n_nm` VALUES (1121,3058,'цнкълн оеыеме',7);
INSERT INTO `n_nm` VALUES (1122,7778,'цнкълн янйнкнбн',26);
INSERT INTO `n_nm` VALUES (1123,5743,'цнкълн сяне',12);
INSERT INTO `n_nm` VALUES (1124,7924,'цнкълн жзпйбхые',26);
INSERT INTO `n_nm` VALUES (1125,8863,'цнкълн внвнбемх',21);
INSERT INTO `n_nm` VALUES (1126,2231,'цнкъмнбжх',23);
INSERT INTO `n_nm` VALUES (1127,3772,'цнлнрюпжх',6);
INSERT INTO `n_nm` VALUES (1128,5552,'цнпюм',12);
INSERT INTO `n_nm` VALUES (1129,5035,'цнпюмнбжх',5);
INSERT INTO `n_nm` VALUES (1130,2565,'цнпюмнбжх',11);
INSERT INTO `n_nm` VALUES (1131,2834,'цнпеле',1);
INSERT INTO `n_nm` VALUES (1132,5050,'цнпем емебеж',5);
INSERT INTO `n_nm` VALUES (1133,9100,'цнпем вхткхй',3);
INSERT INTO `n_nm` VALUES (1134,9101,'цнпхжю',3);
INSERT INTO `n_nm` VALUES (1135,9558,'цнпхжю',9);
INSERT INTO `n_nm` VALUES (1136,8225,'цнпхжю',2);
INSERT INTO `n_nm` VALUES (1137,7854,'цнпхжю',26);
INSERT INTO `n_nm` VALUES (1138,9688,'цнпхвюме',9);
INSERT INTO `n_nm` VALUES (1139,7337,'цнпхвебн',18);
INSERT INTO `n_nm` VALUES (1140,4788,'цнпмю юпдю',22);
INSERT INTO `n_nm` VALUES (1141,3544,'цнпмю аекю певйю',13);
INSERT INTO `n_nm` VALUES (1142,3155,'цнпмю аеьнбхжю',7);
INSERT INTO `n_nm` VALUES (1143,4657,'цнпмю ахпйнбю',14);
INSERT INTO `n_nm` VALUES (1144,2842,'цнпмю апегмхжю',1);
INSERT INTO `n_nm` VALUES (1145,2575,'цнпмю апеярмхжю',11);
INSERT INTO `n_nm` VALUES (1146,2046,'цнпмю бюяхкхжю',23);
INSERT INTO `n_nm` VALUES (1147,3484,'цнпмю бепемхжю',13);
INSERT INTO `n_nm` VALUES (1148,2439,'цнпмю бпюавю',15);
INSERT INTO `n_nm` VALUES (1149,2459,'цнпмю цкнцнбхжю',15);
INSERT INTO `n_nm` VALUES (1150,2535,'цнпмю цпюыхжю',11);
INSERT INTO `n_nm` VALUES (1151,2419,'цнпмю дхйюмъ',15);
INSERT INTO `n_nm` VALUES (1152,4648,'цнпмю дзаебю',14);
INSERT INTO `n_nm` VALUES (1153,7969,'цнпмю гкюрхжю',26);
INSERT INTO `n_nm` VALUES (1154,7865,'цнпмю йюадю',26);
INSERT INTO `n_nm` VALUES (1155,3463,'цнпмю йнбювхжю',13);
INSERT INTO `n_nm` VALUES (1156,2687,'цнпмю йнгмхжю',11);
INSERT INTO `n_nm` VALUES (1157,3154,'цнпмю йпелемю',7);
INSERT INTO `n_nm` VALUES (1158,6685,'цнпмю йпеоняр',10);
INSERT INTO `n_nm` VALUES (1159,2827,'цнпмю йпсьхжю',1);
INSERT INTO `n_nm` VALUES (1160,6952,'цнпмю йскю',10);
INSERT INTO `n_nm` VALUES (1161,5227,'цнпмю кхомхжю',5);
INSERT INTO `n_nm` VALUES (1162,3458,'цнпмю ксйю',13);
INSERT INTO `n_nm` VALUES (1163,2131,'цнпмю люкхмю',23);
INSERT INTO `n_nm` VALUES (1164,4196,'цнпмю люуюкю',17);
INSERT INTO `n_nm` VALUES (1165,2491,'цнпмю лекмю',15);
INSERT INTO `n_nm` VALUES (1166,5869,'цнпмю лхрпнонкхъ',16);
INSERT INTO `n_nm` VALUES (1167,5100,'цнпмю нпъунбхжю',5);
INSERT INTO `n_nm` VALUES (1168,2836,'цнпмю пхамхжю',1);
INSERT INTO `n_nm` VALUES (1169,5448,'цнпмю пняхжю',8);
INSERT INTO `n_nm` VALUES (1170,2399,'цнпмю яейхпмю',15);
INSERT INTO `n_nm` VALUES (1171,5294,'цнпмю ярсдемю',5);
INSERT INTO `n_nm` VALUES (1172,2811,'цнпмю ясьхжю',1);
INSERT INTO `n_nm` VALUES (1173,5089,'цнпмю уюдфхияйю',5);
INSERT INTO `n_nm` VALUES (1174,7913,'цнпмю усаюбйю',26);
INSERT INTO `n_nm` VALUES (1175,1806,'цнпмх анцпнб',23);
INSERT INTO `n_nm` VALUES (1176,3343,'цнпмх бюдхм',7);
INSERT INTO `n_nm` VALUES (1177,5380,'цнпмх бзпохыю',8);
INSERT INTO `n_nm` VALUES (1178,6485,'цнпмх цкюбюмюй',27);
INSERT INTO `n_nm` VALUES (1179,5367,'цнпмх дюлъмнбжх',8);
INSERT INTO `n_nm` VALUES (1180,4368,'цнпмх днлкъм',17);
INSERT INTO `n_nm` VALUES (1181,5380,'цнпмх дпюцнивю',8);
INSERT INTO `n_nm` VALUES (1182,5880,'цнпмх дзамхй',16);
INSERT INTO `n_nm` VALUES (1183,2557,'цнпмх йнпхрем',11);
INSERT INTO `n_nm` VALUES (1184,5096,'цнпмх йпюи',5);
INSERT INTO `n_nm` VALUES (1185,3960,'цнпмх кнл',6);
INSERT INTO `n_nm` VALUES (1186,5360,'цнпмх люпемжх',8);
INSERT INTO `n_nm` VALUES (1187,2027,'цнпмх нйнк',23);
INSERT INTO `n_nm` VALUES (1188,5360,'цнпмх пюдйнбжх',8);
INSERT INTO `n_nm` VALUES (1189,2371,'цнпмх пнлюмжх',15);
INSERT INTO `n_nm` VALUES (1190,5098,'цнпмх рюмвебжх',5);
INSERT INTO `n_nm` VALUES (1191,3632,'цнпмх жхазп',13);
INSERT INTO `n_nm` VALUES (1192,5360,'цнпмх жнмебжх',8);
INSERT INTO `n_nm` VALUES (1193,6954,'цнпмх чпсжх',10);
INSERT INTO `n_nm` VALUES (1194,5991,'цнпмхй',16);
INSERT INTO `n_nm` VALUES (1195,7173,'цнпмн юакюмнбн',19);
INSERT INTO `n_nm` VALUES (1196,8883,'цнпмн юкейяюмдпнбн',21);
INSERT INTO `n_nm` VALUES (1197,6219,'цнпмн аекнбн',25);
INSERT INTO `n_nm` VALUES (1198,6053,'цнпмн анребн',25);
INSERT INTO `n_nm` VALUES (1199,6388,'цнпмн бнибндхмн',27);
INSERT INTO `n_nm` VALUES (1200,4456,'цнпмн бзпьхкн',14);
INSERT INTO `n_nm` VALUES (1201,2797,'цнпмн дпюцкхые',1);
INSERT INTO `n_nm` VALUES (1202,2963,'цнпмн дпъмнбн',1);
INSERT INTO `n_nm` VALUES (1203,6181,'цнпмн хгбнпнбн',25);
INSERT INTO `n_nm` VALUES (1204,2138,'цнпмн йюлюпжх',23);
INSERT INTO `n_nm` VALUES (1205,2556,'цнпмн йнахке',11);
INSERT INTO `n_nm` VALUES (1206,7927,'цнпмн йнгюпебн',26);
INSERT INTO `n_nm` VALUES (1207,2783,'цнпмн йпюхые',1);
INSERT INTO `n_nm` VALUES (1208,6871,'цнпмн йзохмнбн',10);
INSERT INTO `n_nm` VALUES (1209,6585,'цнпмн ксйнбн',27);
INSERT INTO `n_nm` VALUES (1210,7939,'цнпмн мнбйнбн',26);
INSERT INTO `n_nm` VALUES (1211,6225,'цнпмн мнбн яекн',25);
INSERT INTO `n_nm` VALUES (1212,3547,'цнпмн нгхпнбн',13);
INSERT INTO `n_nm` VALUES (1213,2756,'цнпмн няемнбн',1);
INSERT INTO `n_nm` VALUES (1214,5549,'цнпмн оюбкхйеме',12);
INSERT INTO `n_nm` VALUES (1215,3052,'цнпмн оеыеме',7);
INSERT INTO `n_nm` VALUES (1216,6486,'цнпмн онке',27);
INSERT INTO `n_nm` VALUES (1217,6780,'цнпмн опюунбн',10);
INSERT INTO `n_nm` VALUES (1218,2213,'цнпмн яекн',23);
INSERT INTO `n_nm` VALUES (1219,2824,'цнпмн яоюмвебн',1);
INSERT INTO `n_nm` VALUES (1220,6151,'цнпмн язупюме',25);
INSERT INTO `n_nm` VALUES (1221,5614,'цнпмн рпюое',12);
INSERT INTO `n_nm` VALUES (1222,2561,'цнпмн симн',11);
INSERT INTO `n_nm` VALUES (1223,2727,'цнпмн узпянбн',1);
INSERT INTO `n_nm` VALUES (1224,3487,'цнпмн жепнбеме',13);
INSERT INTO `n_nm` VALUES (1225,6165,'цнпмн вепйнбхые',25);
INSERT INTO `n_nm` VALUES (1226,8343,'цнпмн ъазкйнбн',2);
INSERT INTO `n_nm` VALUES (1227,5304,'цнпмнбю лнцхкю',8);
INSERT INTO `n_nm` VALUES (1228,6574,'цнпмняекжх',27);
INSERT INTO `n_nm` VALUES (1229,4253,'цнпмнякюб',17);
INSERT INTO `n_nm` VALUES (1230,5748,'цнпмнрн яекн',12);
INSERT INTO `n_nm` VALUES (1231,4776,'цнпнбн',22);
INSERT INTO `n_nm` VALUES (1232,8469,'цнпнбн',2);
INSERT INTO `n_nm` VALUES (1233,7288,'цнпнжбер',18);
INSERT INTO `n_nm` VALUES (1234,2496,'цнпнвебжх',15);
INSERT INTO `n_nm` VALUES (1235,5083,'цнпяйю',5);
INSERT INTO `n_nm` VALUES (1236,8721,'цнпяйю онкъмю',29);
INSERT INTO `n_nm` VALUES (1237,5132,'цнпяйх цнпем рпзлае',5);
INSERT INTO `n_nm` VALUES (1238,5131,'цнпяйх днкем рпзлае',5);
INSERT INTO `n_nm` VALUES (1239,6420,'цнпяйх хгбнп',27);
INSERT INTO `n_nm` VALUES (1240,6864,'цнпяйх хгбнп',10);
INSERT INTO `n_nm` VALUES (1241,5167,'цнпяйх яемнбеж',5);
INSERT INTO `n_nm` VALUES (1242,6590,'цнпяйн',27);
INSERT INTO `n_nm` VALUES (1243,7847,'цнпяйн юакюмнбн',26);
INSERT INTO `n_nm` VALUES (1244,6800,'цнпяйн дчкебн',10);
INSERT INTO `n_nm` VALUES (1245,5238,'цнпяйн йюксцепнбн',5);
INSERT INTO `n_nm` VALUES (1246,5235,'цнпяйн йнянбн',5);
INSERT INTO `n_nm` VALUES (1247,5075,'цнпяйн мнбн яекн',5);
INSERT INTO `n_nm` VALUES (1248,5088,'цнпяйн охяюпебн',5);
INSERT INTO `n_nm` VALUES (1249,7947,'цнпяйн яекн',26);
INSERT INTO `n_nm` VALUES (1250,5557,'цнпяйн якхбнбн',12);
INSERT INTO `n_nm` VALUES (1251,5888,'цнпрюкнбн',16);
INSERT INTO `n_nm` VALUES (1252,9689,'цнпсм',9);
INSERT INTO `n_nm` VALUES (1253,2191,'цнпсмюйю',23);
INSERT INTO `n_nm` VALUES (1254,5722,'цнпсмэнбн',12);
INSERT INTO `n_nm` VALUES (1255,2882,'цнпвебн',1);
INSERT INTO `n_nm` VALUES (1256,5367,'цнпъмх',8);
INSERT INTO `n_nm` VALUES (1257,9107,'цняондхмнбн',3);
INSERT INTO `n_nm` VALUES (1258,7561,'цняондхмнбн',20);
INSERT INTO `n_nm` VALUES (1259,2914,'цняондхмжх',1);
INSERT INTO `n_nm` VALUES (1260,5390,'цнярхкхжю',8);
INSERT INTO `n_nm` VALUES (1261,5864,'цнярхкъ',16);
INSERT INTO `n_nm` VALUES (1262,5543,'цнярхмъ',12);
INSERT INTO `n_nm` VALUES (1263,2773,'цнярсм',1);
INSERT INTO `n_nm` VALUES (1264,2900,'цнже деквеб',1);
INSERT INTO `n_nm` VALUES (1265,2755,'цпюдебн',1);
INSERT INTO `n_nm` VALUES (1266,5732,'цпюдефмхжю',12);
INSERT INTO `n_nm` VALUES (1267,3780,'цпюдеж',6);
INSERT INTO `n_nm` VALUES (1268,2239,'цпюдеж',23);
INSERT INTO `n_nm` VALUES (1269,8990,'цпюдеж',21);
INSERT INTO `n_nm` VALUES (1270,3074,'цпюдеьмхжю',7);
INSERT INTO `n_nm` VALUES (1271,5879,'цпюдхмю',16);
INSERT INTO `n_nm` VALUES (1272,7239,'цпюдхмю',18);
INSERT INTO `n_nm` VALUES (1273,4290,'цпюдхмю',17);
INSERT INTO `n_nm` VALUES (1274,9243,'цпюдхмюпнбн',3);
INSERT INTO `n_nm` VALUES (1275,9552,'цпюдхмх',9);
INSERT INTO `n_nm` VALUES (1276,7964,'цпюдхмйю',26);
INSERT INTO `n_nm` VALUES (1277,5910,'цпюдхые',16);
INSERT INTO `n_nm` VALUES (1278,5435,'цпюдхые',8);
INSERT INTO `n_nm` VALUES (1279,9803,'цпюдхые',28);
INSERT INTO `n_nm` VALUES (1280,5439,'цпюдмхжю',8);
INSERT INTO `n_nm` VALUES (1281,9498,'цпюдмхжю',9);
INSERT INTO `n_nm` VALUES (1282,8852,'цпюдяйн',21);
INSERT INTO `n_nm` VALUES (1283,3835,'цпюдяйнбяйх йнкхах',6);
INSERT INTO `n_nm` VALUES (1284,4749,'цпюдзр',22);
INSERT INTO `n_nm` VALUES (1285,3830,'цпюлюдю',6);
INSERT INTO `n_nm` VALUES (1286,2679,'цпюлюде',11);
INSERT INTO `n_nm` VALUES (1287,4968,'цпюлюде',22);
INSERT INTO `n_nm` VALUES (1288,2574,'цпюлюдфюмн',11);
INSERT INTO `n_nm` VALUES (1289,8370,'цпюлюрхйнбн',2);
INSERT INTO `n_nm` VALUES (1290,5099,'цпюлюрхжх',5);
INSERT INTO `n_nm` VALUES (1291,6252,'цпюмхр',25);
INSERT INTO `n_nm` VALUES (1292,8333,'цпюмхреж',2);
INSERT INTO `n_nm` VALUES (1293,3914,'цпюмхрнбн',6);
INSERT INTO `n_nm` VALUES (1294,8740,'цпюмхрнбн',29);
INSERT INTO `n_nm` VALUES (1295,2589,'цпюмхжю',11);
INSERT INTO `n_nm` VALUES (1296,3934,'цпюмхвюй',6);
INSERT INTO `n_nm` VALUES (1297,8347,'цпюмхвюп',2);
INSERT INTO `n_nm` VALUES (1298,9669,'цпюмхвюп',9);
INSERT INTO `n_nm` VALUES (1299,4198,'цпют хцмюрхебн',17);
INSERT INTO `n_nm` VALUES (1300,8938,'цпютхрнбн',21);
INSERT INTO `n_nm` VALUES (1301,4618,'цпюьебн',14);
INSERT INTO `n_nm` VALUES (1302,4714,'цпюыхжю',22);
INSERT INTO `n_nm` VALUES (1303,7960,'цпеебжх',26);
INSERT INTO `n_nm` VALUES (1304,5841,'цпхбхжю',16);
INSERT INTO `n_nm` VALUES (1305,6965,'цпхбйю',10);
INSERT INTO `n_nm` VALUES (1306,6890,'цпхбъй',10);
INSERT INTO `n_nm` VALUES (1307,2108,'цпхцнпебн',23);
INSERT INTO `n_nm` VALUES (1308,8464,'цпнгдем',2);
INSERT INTO `n_nm` VALUES (1309,9106,'цпнгдэнбн',3);
INSERT INTO `n_nm` VALUES (1310,2062,'цпнгдэнбжх',23);
INSERT INTO `n_nm` VALUES (1311,3444,'цпнльхм',13);
INSERT INTO `n_nm` VALUES (1312,4815,'цпнунрмн',22);
INSERT INTO `n_nm` VALUES (1313,6809,'цпсебн',10);
INSERT INTO `n_nm` VALUES (1314,5300,'цпзакебжх',8);
INSERT INTO `n_nm` VALUES (1315,2213,'цпзкяйю оюдхмю',23);
INSERT INTO `n_nm` VALUES (1316,7669,'цпзмвюпнбн',20);
INSERT INTO `n_nm` VALUES (1317,2255,'цсаеь',23);
INSERT INTO `n_nm` VALUES (1318,2274,'цсахякюб',23);
INSERT INTO `n_nm` VALUES (1319,6590,'цсцсрйю',27);
INSERT INTO `n_nm` VALUES (1320,4792,'цсдебхжю',22);
INSERT INTO `n_nm` VALUES (1321,6943,'цскхийю',10);
INSERT INTO `n_nm` VALUES (1322,6926,'цскхъ',10);
INSERT INTO `n_nm` VALUES (1323,5960,'цскъмжх',16);
INSERT INTO `n_nm` VALUES (1324,5654,'цслнымхй',12);
INSERT INTO `n_nm` VALUES (1325,2567,'цспаюмнбжх',11);
INSERT INTO `n_nm` VALUES (1326,6830,'цспцскхжю',10);
INSERT INTO `n_nm` VALUES (1327,2223,'цспцскър',23);
INSERT INTO `n_nm` VALUES (1328,9644,'цспйнбн',9);
INSERT INTO `n_nm` VALUES (1329,2145,'цспйнбн',23);
INSERT INTO `n_nm` VALUES (1330,6199,'цспйнбн',25);
INSERT INTO `n_nm` VALUES (1331,2226,'цсплюгнбн',23);
INSERT INTO `n_nm` VALUES (1332,9969,'цсякю',28);
INSERT INTO `n_nm` VALUES (1333,9479,'цсякюп',9);
INSERT INTO `n_nm` VALUES (1334,2045,'цсжюк',23);
INSERT INTO `n_nm` VALUES (1335,5333,'цзаеме',8);
INSERT INTO `n_nm` VALUES (1336,8220,'цзкзаеж',2);
INSERT INTO `n_nm` VALUES (1337,6366,'цзкзаеж',27);
INSERT INTO `n_nm` VALUES (1338,8642,'цзкзахмжх',29);
INSERT INTO `n_nm` VALUES (1339,2426,'цзкзамхй',15);
INSERT INTO `n_nm` VALUES (1340,4938,'цзкзанбн',22);
INSERT INTO `n_nm` VALUES (1341,2789,'цзкзанбн',1);
INSERT INTO `n_nm` VALUES (1342,6280,'цзкзанбн',25);
INSERT INTO `n_nm` VALUES (1343,4125,'цзкзанбн',17);
INSERT INTO `n_nm` VALUES (1344,2223,'цзкзанбжх',23);
INSERT INTO `n_nm` VALUES (1345,3785,'цзлгнбн',6);
INSERT INTO `n_nm` VALUES (1346,2550,'цзпахмн',11);
INSERT INTO `n_nm` VALUES (1347,6760,'цзпахые',10);
INSERT INTO `n_nm` VALUES (1348,5087,'цзпдебжх',5);
INSERT INTO `n_nm` VALUES (1349,2381,'цзпкн',15);
INSERT INTO `n_nm` VALUES (1350,2568,'цзпкъмн',11);
INSERT INTO `n_nm` VALUES (1351,2960,'цзплем',1);
INSERT INTO `n_nm` VALUES (1352,4991,'цзпмюрх',22);
INSERT INTO `n_nm` VALUES (1353,5370,'цзпмъ',8);
INSERT INTO `n_nm` VALUES (1354,7844,'цзпвхмнбн',26);
INSERT INTO `n_nm` VALUES (1355,6651,'цзяйнбн',10);
INSERT INTO `n_nm` VALUES (1356,4811,'цэнбпем',22);
INSERT INTO `n_nm` VALUES (1357,2570,'цчеьебн',11);
INSERT INTO `n_nm` VALUES (1358,8249,'цчкэнбжю',2);
INSERT INTO `n_nm` VALUES (1359,2875,'цчпцебн',1);
INSERT INTO `n_nm` VALUES (1360,3932,'цчпцхв',6);
INSERT INTO `n_nm` VALUES (1361,5083,'дюбепх',5);
INSERT INTO `n_nm` VALUES (1362,4944,'дюбхдйнбн',22);
INSERT INTO `n_nm` VALUES (1363,7563,'дюбхднбн',20);
INSERT INTO `n_nm` VALUES (1364,7758,'дюбхднбн',26);
INSERT INTO `n_nm` VALUES (1365,2779,'дюцнмнбн',1);
INSERT INTO `n_nm` VALUES (1366,5365,'дюебжх',8);
INSERT INTO `n_nm` VALUES (1367,5084,'дюимнбжх',5);
INSERT INTO `n_nm` VALUES (1368,2813,'дюлъмхжю',1);
INSERT INTO `n_nm` VALUES (1369,5437,'дюлъмнбн',8);
INSERT INTO `n_nm` VALUES (1370,6943,'дюмюхкнбн',10);
INSERT INTO `n_nm` VALUES (1371,6261,'дюяйюк юрюмюянбн',25);
INSERT INTO `n_nm` VALUES (1372,6707,'дюяйюкнбн',10);
INSERT INTO `n_nm` VALUES (1373,7150,'дбе лнцхкх',19);
INSERT INTO `n_nm` VALUES (1374,4949,'дбе рнонкх',22);
INSERT INTO `n_nm` VALUES (1375,2541,'дбнпхые',11);
INSERT INTO `n_nm` VALUES (1376,6193,'дбнпхые',25);
INSERT INTO `n_nm` VALUES (1377,5307,'деаек дък',8);
INSERT INTO `n_nm` VALUES (1378,5030,'деаекеж',5);
INSERT INTO `n_nm` VALUES (1379,2416,'деаекх кюй',15);
INSERT INTO `n_nm` VALUES (1380,5084,'деаекх пзр',5);
INSERT INTO `n_nm` VALUES (1381,8314,'деаекр',2);
INSERT INTO `n_nm` VALUES (1382,5435,'деаекжнбн',8);
INSERT INTO `n_nm` VALUES (1383,4946,'деаекъмнбн',22);
INSERT INTO `n_nm` VALUES (1384,5657,'деамебн',12);
INSERT INTO `n_nm` VALUES (1385,5958,'деанбн',16);
INSERT INTO `n_nm` VALUES (1386,2748,'деанвхжю',1);
INSERT INTO `n_nm` VALUES (1387,2961,'деапем',1);
INSERT INTO `n_nm` VALUES (1388,9353,'деапеме',9);
INSERT INTO `n_nm` VALUES (1389,2803,'деапеме',1);
INSERT INTO `n_nm` VALUES (1390,4414,'деапзыхжю',14);
INSERT INTO `n_nm` VALUES (1391,3065,'дебеме',7);
INSERT INTO `n_nm` VALUES (1392,5995,'дебемжх',16);
INSERT INTO `n_nm` VALUES (1393,6934,'дебеяхкхжю',10);
INSERT INTO `n_nm` VALUES (1394,6933,'дебеяхкнбн',10);
INSERT INTO `n_nm` VALUES (1395,8480,'деберюй',2);
INSERT INTO `n_nm` VALUES (1396,5555,'деберюйх',12);
INSERT INTO `n_nm` VALUES (1397,5050,'деберюжхре',5);
INSERT INTO `n_nm` VALUES (1398,8474,'деберхмжх',2);
INSERT INTO `n_nm` VALUES (1399,4800,'дебхм',22);
INSERT INTO `n_nm` VALUES (1400,7972,'дебхмн',26);
INSERT INTO `n_nm` VALUES (1401,6833,'дебхмжх',10);
INSERT INTO `n_nm` VALUES (1402,9160,'дебмъ',3);
INSERT INTO `n_nm` VALUES (1403,4106,'дедебн',17);
INSERT INTO `n_nm` VALUES (1404,6861,'дедеж',10);
INSERT INTO `n_nm` VALUES (1405,5089,'дедхмю',5);
INSERT INTO `n_nm` VALUES (1406,5089,'дедхмжх',5);
INSERT INTO `n_nm` VALUES (1407,5935,'дейнб',16);
INSERT INTO `n_nm` VALUES (1408,2728,'декбхмн',1);
INSERT INTO `n_nm` VALUES (1409,6896,'декбхмн',10);
INSERT INTO `n_nm` VALUES (1410,3795,'декеимю',6);
INSERT INTO `n_nm` VALUES (1411,5084,'декнбю люуюкю',5);
INSERT INTO `n_nm` VALUES (1412,2917,'деквебн',1);
INSERT INTO `n_nm` VALUES (1413,7427,'деквебн',18);
INSERT INTO `n_nm` VALUES (1414,2225,'декъм',23);
INSERT INTO `n_nm` VALUES (1415,2652,'декъм',11);
INSERT INTO `n_nm` VALUES (1416,5292,'декъмнбжх',5);
INSERT INTO `n_nm` VALUES (1417,8726,'деммхжю',29);
INSERT INTO `n_nm` VALUES (1418,9772,'деммхжю',28);
INSERT INTO `n_nm` VALUES (1419,5377,'демвебжх',8);
INSERT INTO `n_nm` VALUES (1420,6539,'депбхьйю лнцхкю',27);
INSERT INTO `n_nm` VALUES (1421,5780,'деплюмжх',12);
INSERT INTO `n_nm` VALUES (1422,9111,'дерекхмю',3);
INSERT INTO `n_nm` VALUES (1423,8483,'дерекхмю',2);
INSERT INTO `n_nm` VALUES (1424,5041,'девйнбжх',5);
INSERT INTO `n_nm` VALUES (1425,2060,'дфюлсгнбжх',23);
INSERT INTO `n_nm` VALUES (1426,6908,'дфюмйю',10);
INSERT INTO `n_nm` VALUES (1427,6850,'дфеаек',10);
INSERT INTO `n_nm` VALUES (1428,6824,'дфекеояйн',10);
INSERT INTO `n_nm` VALUES (1429,2648,'дфеплюм',11);
INSERT INTO `n_nm` VALUES (1430,6872,'дфепнбн',10);
INSERT INTO `n_nm` VALUES (1431,2812,'дфхцспнбн',1);
INSERT INTO `n_nm` VALUES (1432,2085,'дфхкъяйнбхжю',23);
INSERT INTO `n_nm` VALUES (1433,8691,'дфхмнр',29);
INSERT INTO `n_nm` VALUES (1434,2483,'дфхмвнбжх',15);
INSERT INTO `n_nm` VALUES (1435,5645,'дфнйюпх',12);
INSERT INTO `n_nm` VALUES (1436,5146,'дфскчмхжю',5);
INSERT INTO `n_nm` VALUES (1437,7137,'дфскчмхжю',19);
INSERT INTO `n_nm` VALUES (1438,5343,'дфслпххре',8);
INSERT INTO `n_nm` VALUES (1439,2085,'дфсмнбхре йньюпх',23);
INSERT INTO `n_nm` VALUES (1440,4241,'дфспйнбн',17);
INSERT INTO `n_nm` VALUES (1441,2163,'дфспнбн',23);
INSERT INTO `n_nm` VALUES (1442,5380,'дфспнбжх',8);
INSERT INTO `n_nm` VALUES (1443,6772,'дхюлюмднбн',10);
INSERT INTO `n_nm` VALUES (1444,9811,'дхахв',28);
INSERT INTO `n_nm` VALUES (1445,3492,'дхбю якюрхмю',13);
INSERT INTO `n_nm` VALUES (1446,5345,'дхбежх',8);
INSERT INTO `n_nm` VALUES (1447,2457,'дхбкъ',15);
INSERT INTO `n_nm` VALUES (1448,2350,'дхбнрхмн',15);
INSERT INTO `n_nm` VALUES (1449,5727,'дхбвнбнрн',12);
INSERT INTO `n_nm` VALUES (1450,4994,'дхлюмнбн',22);
INSERT INTO `n_nm` VALUES (1451,5363,'дхлхебжх',8);
INSERT INTO `n_nm` VALUES (1452,6259,'дхлхрпхебн',25);
INSERT INTO `n_nm` VALUES (1453,6400,'дхлхрпнбцпюд',27);
INSERT INTO `n_nm` VALUES (1454,5050,'дхлхрпнбжх',5);
INSERT INTO `n_nm` VALUES (1455,6518,'дхлхрпнбве',27);
INSERT INTO `n_nm` VALUES (1456,3750,'дхлнбн',6);
INSERT INTO `n_nm` VALUES (1457,4757,'дхлнбн',22);
INSERT INTO `n_nm` VALUES (1458,5035,'дхлнбжх',5);
INSERT INTO `n_nm` VALUES (1459,6192,'дхлнбжх',25);
INSERT INTO `n_nm` VALUES (1460,5234,'дхлвю',5);
INSERT INTO `n_nm` VALUES (1461,8159,'дхлвебн',2);
INSERT INTO `n_nm` VALUES (1462,6340,'дхмебн',27);
INSERT INTO `n_nm` VALUES (1463,4149,'дхмй',17);
INSERT INTO `n_nm` VALUES (1464,4458,'дхмйюрю',14);
INSERT INTO `n_nm` VALUES (1465,3783,'дхмйнбхжю',6);
INSERT INTO `n_nm` VALUES (1466,3921,'дхмйнбн',6);
INSERT INTO `n_nm` VALUES (1467,6268,'дхмъ',25);
INSERT INTO `n_nm` VALUES (1468,4927,'дхпюкн',22);
INSERT INTO `n_nm` VALUES (1469,5886,'дхяебхжю',16);
INSERT INTO `n_nm` VALUES (1470,5441,'дхялюмхжю',8);
INSERT INTO `n_nm` VALUES (1471,7625,'дхвебн',20);
INSERT INTO `n_nm` VALUES (1472,5059,'дхвхм',5);
INSERT INTO `n_nm` VALUES (1473,6432,'дкзцмебн',27);
INSERT INTO `n_nm` VALUES (1474,5392,'дкзцмъ',8);
INSERT INTO `n_nm` VALUES (1475,7997,'дкзфйю онкъмю',26);
INSERT INTO `n_nm` VALUES (1476,9789,'дкзфйн',28);
INSERT INTO `n_nm` VALUES (1477,2582,'дкзувебн - яюакъп',11);
INSERT INTO `n_nm` VALUES (1478,6947,'днанпяйн',10);
INSERT INTO `n_nm` VALUES (1479,8580,'днапю онкъмю',2);
INSERT INTO `n_nm` VALUES (1480,2279,'днапюбхжю',23);
INSERT INTO `n_nm` VALUES (1481,4259,'днапюкзй',17);
INSERT INTO `n_nm` VALUES (1482,4917,'днапебю вепеью',22);
INSERT INTO `n_nm` VALUES (1483,9399,'днапебн',9);
INSERT INTO `n_nm` VALUES (1484,5095,'днапебжх',5);
INSERT INTO `n_nm` VALUES (1485,5365,'днапебжх',8);
INSERT INTO `n_nm` VALUES (1486,5762,'днапебжх',12);
INSERT INTO `n_nm` VALUES (1487,5380,'днапемхре',8);
INSERT INTO `n_nm` VALUES (1488,9782,'днапх бнимхйнбн',28);
INSERT INTO `n_nm` VALUES (1489,9128,'днапх днк',3);
INSERT INTO `n_nm` VALUES (1490,3667,'днапх днк',13);
INSERT INTO `n_nm` VALUES (1491,4292,'днапх днк',17);
INSERT INTO `n_nm` VALUES (1492,2559,'днапх днк',11);
INSERT INTO `n_nm` VALUES (1493,5149,'днапх дък',5);
INSERT INTO `n_nm` VALUES (1494,2838,'днапх кюйх',1);
INSERT INTO `n_nm` VALUES (1495,9402,'днапхм',9);
INSERT INTO `n_nm` VALUES (1496,9216,'днапхмю',3);
INSERT INTO `n_nm` VALUES (1497,2777,'днапхмхые',1);
INSERT INTO `n_nm` VALUES (1498,8477,'днапхмнбн',2);
INSERT INTO `n_nm` VALUES (1499,6670,'днапхмнбн',10);
INSERT INTO `n_nm` VALUES (1500,6857,'днапхмжх',10);
INSERT INTO `n_nm` VALUES (1501,6437,'днапхв',27);
INSERT INTO `n_nm` VALUES (1502,9300,'днапхв',9);
INSERT INTO `n_nm` VALUES (1503,8724,'днапхв',29);
INSERT INTO `n_nm` VALUES (1504,4405,'днапнбмхжю',14);
INSERT INTO `n_nm` VALUES (1505,2662,'днапнбн',11);
INSERT INTO `n_nm` VALUES (1506,9145,'днапнцкед',3);
INSERT INTO `n_nm` VALUES (1507,5658,'днапндюм',12);
INSERT INTO `n_nm` VALUES (1508,3253,'днапнкебн',7);
INSERT INTO `n_nm` VALUES (1509,8552,'днапнлхп',2);
INSERT INTO `n_nm` VALUES (1510,5430,'днапнлхпйю',8);
INSERT INTO `n_nm` VALUES (1511,6861,'днапнлхпжх',10);
INSERT INTO `n_nm` VALUES (1512,9281,'днапнокндмн',3);
INSERT INTO `n_nm` VALUES (1513,6560,'днапняекеж',27);
INSERT INTO `n_nm` VALUES (1514,1247,'днапнякюбжх',23);
INSERT INTO `n_nm` VALUES (1515,4256,'днапнярюм',17);
INSERT INTO `n_nm` VALUES (1516,2919,'днапнрхмн',1);
INSERT INTO `n_nm` VALUES (1517,7990,'днапнрхжю',26);
INSERT INTO `n_nm` VALUES (1518,7531,'днапнрхжю',20);
INSERT INTO `n_nm` VALUES (1519,9282,'днапнрхв',3);
INSERT INTO `n_nm` VALUES (1520,7548,'днапсдфюмйю',20);
INSERT INTO `n_nm` VALUES (1521,3069,'днапсью',7);
INSERT INTO `n_nm` VALUES (1522,2799,'дназпяйн',1);
INSERT INTO `n_nm` VALUES (1523,2289,'дназпвхм',23);
INSERT INTO `n_nm` VALUES (1524,2115,'днцюмнбн',23);
INSERT INTO `n_nm` VALUES (1525,2547,'днфдебхжю',11);
INSERT INTO `n_nm` VALUES (1526,5035,'днимнбжх',5);
INSERT INTO `n_nm` VALUES (1527,6799,'днипюмжх',10);
INSERT INTO `n_nm` VALUES (1528,9961,'днипюмжх',28);
INSERT INTO `n_nm` VALUES (1529,5550,'днипемжх',12);
INSERT INTO `n_nm` VALUES (1530,2734,'днйюрхвебн',1);
INSERT INTO `n_nm` VALUES (1531,3449,'днйрнп иняхтнбн',13);
INSERT INTO `n_nm` VALUES (1532,2497,'днйэнбжх',15);
INSERT INTO `n_nm` VALUES (1533,4985,'днкем',22);
INSERT INTO `n_nm` VALUES (1534,2968,'днкем',1);
INSERT INTO `n_nm` VALUES (1535,5050,'днкем емебеж',5);
INSERT INTO `n_nm` VALUES (1536,2887,'днкеме',1);
INSERT INTO `n_nm` VALUES (1537,2811,'днкемх',1);
INSERT INTO `n_nm` VALUES (1538,7682,'днкеж',20);
INSERT INTO `n_nm` VALUES (1539,7858,'днкеж',26);
INSERT INTO `n_nm` VALUES (1540,4921,'днкхе',22);
INSERT INTO `n_nm` VALUES (1541,9358,'днкхмю',9);
INSERT INTO `n_nm` VALUES (1542,9947,'днкхмю',28);
INSERT INTO `n_nm` VALUES (1543,2637,'днкхярнбн',11);
INSERT INTO `n_nm` VALUES (1544,9152,'днкхые',3);
INSERT INTO `n_nm` VALUES (1545,6663,'днкхые',10);
INSERT INTO `n_nm` VALUES (1546,2040,'днкмю аюмъ',23);
INSERT INTO `n_nm` VALUES (1547,3545,'днкмю аекю певйю',13);
INSERT INTO `n_nm` VALUES (1548,3143,'днкмю аеьнбхжю',7);
INSERT INTO `n_nm` VALUES (1549,2034,'днкмю бюяхкхжю',23);
INSERT INTO `n_nm` VALUES (1550,3485,'днкмю бепемхжю',13);
INSERT INTO `n_nm` VALUES (1551,2458,'днкмю бпюавю',15);
INSERT INTO `n_nm` VALUES (1552,2843,'днкмю цпюдеьмхжю',1);
INSERT INTO `n_nm` VALUES (1553,2536,'днкмю цпюыхжю',11);
INSERT INTO `n_nm` VALUES (1554,2420,'днкмю дхйюмъ',15);
INSERT INTO `n_nm` VALUES (1555,4655,'днкмю дзаебю',14);
INSERT INTO `n_nm` VALUES (1556,7968,'днкмю гкюрхжю',26);
INSERT INTO `n_nm` VALUES (1557,7867,'днкмю йюадю',26);
INSERT INTO `n_nm` VALUES (1558,2658,'днкмю йнгмхжю',11);
INSERT INTO `n_nm` VALUES (1559,3153,'днкмю йпелемю',7);
INSERT INTO `n_nm` VALUES (1560,6686,'днкмю йпеоняр',10);
INSERT INTO `n_nm` VALUES (1561,2888,'днкмю йпсьхжю',1);
INSERT INTO `n_nm` VALUES (1562,6953,'днкмю йскю',10);
INSERT INTO `n_nm` VALUES (1563,5199,'днкмю кхомхжю',5);
INSERT INTO `n_nm` VALUES (1564,2107,'днкмю люкхмю',23);
INSERT INTO `n_nm` VALUES (1565,5659,'днкмю люпцюрхмю',12);
INSERT INTO `n_nm` VALUES (1566,4200,'днкмю люуюкю',17);
INSERT INTO `n_nm` VALUES (1567,2490,'днкмю лекмю',15);
INSERT INTO `n_nm` VALUES (1568,5855,'днкмю лхрпнонкхъ',16);
INSERT INTO `n_nm` VALUES (1569,2213,'днкмю мебкъ',23);
INSERT INTO `n_nm` VALUES (1570,5130,'днкмю нпъунбхжю',5);
INSERT INTO `n_nm` VALUES (1571,2892,'днкмю пхамхжю',1);
INSERT INTO `n_nm` VALUES (1572,3452,'днкмю пхйяю',13);
INSERT INTO `n_nm` VALUES (1573,2397,'днкмю яейхпмю',15);
INSERT INTO `n_nm` VALUES (1574,7123,'днкмю ярсдемю',19);
INSERT INTO `n_nm` VALUES (1575,7931,'днкмю усаюбйю',26);
INSERT INTO `n_nm` VALUES (1576,1855,'днкмх анцпнб',23);
INSERT INTO `n_nm` VALUES (1577,3782,'днкмх аньмъй',6);
INSERT INTO `n_nm` VALUES (1578,3344,'днкмх бюдхм',7);
INSERT INTO `n_nm` VALUES (1579,5969,'днкмх бхр',16);
INSERT INTO `n_nm` VALUES (1580,5380,'днкмх бзпохыю',8);
INSERT INTO `n_nm` VALUES (1581,6483,'днкмх цкюбюмюй',27);
INSERT INTO `n_nm` VALUES (1582,5036,'днкмх дюлъмнбжх',5);
INSERT INTO `n_nm` VALUES (1583,5380,'днкмх дпюцнивю',8);
INSERT INTO `n_nm` VALUES (1584,5870,'днкмх дзамхй',16);
INSERT INTO `n_nm` VALUES (1585,2558,'днкмх йнпхрем',11);
INSERT INTO `n_nm` VALUES (1586,3958,'днкмх кнл',6);
INSERT INTO `n_nm` VALUES (1587,5867,'днкмх ксйнбхр',16);
INSERT INTO `n_nm` VALUES (1588,5360,'днкмх люпемжх',8);
INSERT INTO `n_nm` VALUES (1589,5084,'днкмх люпъм',5);
INSERT INTO `n_nm` VALUES (1590,2028,'днкмх нйнк',23);
INSERT INTO `n_nm` VALUES (1591,1165,'днкмх оюяюпек',23);
INSERT INTO `n_nm` VALUES (1592,5360,'днкмх пюдйнбжх',8);
INSERT INTO `n_nm` VALUES (1593,2413,'днкмх пюйнбеж',15);
INSERT INTO `n_nm` VALUES (1594,2367,'днкмх пнлюмжх',15);
INSERT INTO `n_nm` VALUES (1595,5097,'днкмх рюмвебжх',5);
INSERT INTO `n_nm` VALUES (1596,5350,'днкмх рнлвебжх',8);
INSERT INTO `n_nm` VALUES (1597,3642,'днкмх жхазп',13);
INSERT INTO `n_nm` VALUES (1598,9120,'днкмх вхткхй',3);
INSERT INTO `n_nm` VALUES (1599,6954,'днкмх чпсжх',10);
INSERT INTO `n_nm` VALUES (1600,7053,'днкмн юакюмнбн',19);
INSERT INTO `n_nm` VALUES (1601,6422,'днкмн аекебн',27);
INSERT INTO `n_nm` VALUES (1602,3437,'днкмн аекнрхмжх',13);
INSERT INTO `n_nm` VALUES (1603,6393,'днкмн анребн',27);
INSERT INTO `n_nm` VALUES (1604,6389,'днкмн бнибндхмн',27);
INSERT INTO `n_nm` VALUES (1605,4446,'днкмн бзпьхкн',14);
INSERT INTO `n_nm` VALUES (1606,6358,'днкмн цнкелюмжх',27);
INSERT INTO `n_nm` VALUES (1607,2798,'днкмн дпюцкхые',1);
INSERT INTO `n_nm` VALUES (1608,2944,'днкмн дпъмнбн',1);
INSERT INTO `n_nm` VALUES (1609,6183,'днкмн хгбнпнбн',25);
INSERT INTO `n_nm` VALUES (1610,2137,'днкмн йюлюпжх',23);
INSERT INTO `n_nm` VALUES (1611,2556,'днкмн йнахке',11);
INSERT INTO `n_nm` VALUES (1612,7926,'днкмн йнгюпебн',26);
INSERT INTO `n_nm` VALUES (1613,6870,'днкмн йзохмнбн',10);
INSERT INTO `n_nm` VALUES (1614,4535,'днкмн кебяйх',14);
INSERT INTO `n_nm` VALUES (1615,3605,'днкмн кхмебн',13);
INSERT INTO `n_nm` VALUES (1616,6586,'днкмн ксйнбн',27);
INSERT INTO `n_nm` VALUES (1617,7938,'днкмн мнбйнбн',26);
INSERT INTO `n_nm` VALUES (1618,6226,'днкмн мнбн яекн',25);
INSERT INTO `n_nm` VALUES (1619,2212,'днкмн мнбн яекн',23);
INSERT INTO `n_nm` VALUES (1620,3538,'днкмн нгхпнбн',13);
INSERT INTO `n_nm` VALUES (1621,2757,'днкмн няемнбн',1);
INSERT INTO `n_nm` VALUES (1622,6382,'днкмн онке',27);
INSERT INTO `n_nm` VALUES (1623,6779,'днкмн опюунбн',10);
INSERT INTO `n_nm` VALUES (1624,7624,'днкмн пъунбн',20);
INSERT INTO `n_nm` VALUES (1625,6161,'днкмн яюупюме',25);
INSERT INTO `n_nm` VALUES (1626,2567,'днкмн яекн',11);
INSERT INTO `n_nm` VALUES (1627,2869,'днкмн яоюмвебн',1);
INSERT INTO `n_nm` VALUES (1628,6455,'днкмн яздхебн',27);
INSERT INTO `n_nm` VALUES (1629,2560,'днкмн симн',11);
INSERT INTO `n_nm` VALUES (1630,3639,'днкмн жепнбеме',13);
INSERT INTO `n_nm` VALUES (1631,6381,'днкмн вепйнбхые',27);
INSERT INTO `n_nm` VALUES (1632,5090,'днкмн ьхбювебн',5);
INSERT INTO `n_nm` VALUES (1633,8342,'днкмн ъазкйнбн',2);
INSERT INTO `n_nm` VALUES (1634,6573,'днкмняекжх',27);
INSERT INTO `n_nm` VALUES (1635,4254,'днкмнякюб',17);
INSERT INTO `n_nm` VALUES (1636,6887,'днлхые',10);
INSERT INTO `n_nm` VALUES (1637,4357,'днлкъм',17);
INSERT INTO `n_nm` VALUES (1638,3659,'днмдсйнб',13);
INSERT INTO `n_nm` VALUES (1639,5342,'днмхмн',8);
INSERT INTO `n_nm` VALUES (1640,5360,'днмйхмн',8);
INSERT INTO `n_nm` VALUES (1641,5081,'днмйнбжх',5);
INSERT INTO `n_nm` VALUES (1642,9354,'днмвебн',9);
INSERT INTO `n_nm` VALUES (1643,5351,'днмвнбжх',8);
INSERT INTO `n_nm` VALUES (1644,4641,'днпйнбн',14);
INSERT INTO `n_nm` VALUES (1645,6472,'дняхреебн',27);
INSERT INTO `n_nm` VALUES (1646,4831,'дняоюр',22);
INSERT INTO `n_nm` VALUES (1647,2012,'дняоеи',23);
INSERT INTO `n_nm` VALUES (1648,5380,'днвю',8);
INSERT INTO `n_nm` VALUES (1649,6577,'дпюахьмю',27);
INSERT INTO `n_nm` VALUES (1650,5524,'дпюцюмю',12);
INSERT INTO `n_nm` VALUES (1651,3534,'дпюцюмхжю',13);
INSERT INTO `n_nm` VALUES (1652,7773,'дпюцюмнбеж',26);
INSERT INTO `n_nm` VALUES (1653,8114,'дпюцюмнбн',2);
INSERT INTO `n_nm` VALUES (1654,5137,'дпюцюмнбн',5);
INSERT INTO `n_nm` VALUES (1655,9349,'дпюцюмнбн',9);
INSERT INTO `n_nm` VALUES (1656,6714,'дпюцюмнбн',10);
INSERT INTO `n_nm` VALUES (1657,5332,'дпюцюмнбжх',8);
INSERT INTO `n_nm` VALUES (1658,5094,'дпюцюмнбжх',5);
INSERT INTO `n_nm` VALUES (1659,5081,'дпюцюмняйнбжх',5);
INSERT INTO `n_nm` VALUES (1660,8489,'дпюцюмжх',2);
INSERT INTO `n_nm` VALUES (1661,5335,'дпюцюмверюрю',8);
INSERT INTO `n_nm` VALUES (1662,5952,'дпюцюь бнибндю',16);
INSERT INTO `n_nm` VALUES (1663,5332,'дпюцхебжх',8);
INSERT INTO `n_nm` VALUES (1664,5145,'дпюцхфебн',5);
INSERT INTO `n_nm` VALUES (1665,5094,'дпюцхижх',5);
INSERT INTO `n_nm` VALUES (1666,4642,'дпюцхмнбн',14);
INSERT INTO `n_nm` VALUES (1667,2351,'дпюцхвебн',15);
INSERT INTO `n_nm` VALUES (1668,5097,'дпюцмебжх',5);
INSERT INTO `n_nm` VALUES (1669,5360,'дпюцмебжх',8);
INSERT INTO `n_nm` VALUES (1670,2237,'дпюцнбхыхжю',23);
INSERT INTO `n_nm` VALUES (1671,2564,'дпюцнбхыхжю',11);
INSERT INTO `n_nm` VALUES (1672,8437,'дпюцнбн',2);
INSERT INTO `n_nm` VALUES (1673,2625,'дпюцндюм',11);
INSERT INTO `n_nm` VALUES (1674,8888,'дпюцндюмнбн',21);
INSERT INTO `n_nm` VALUES (1675,9860,'дпюцнебн',28);
INSERT INTO `n_nm` VALUES (1676,2208,'дпюцнхк',23);
INSERT INTO `n_nm` VALUES (1677,5751,'дпюцнхжю',12);
INSERT INTO `n_nm` VALUES (1678,4293,'дпюцнимнбн',17);
INSERT INTO `n_nm` VALUES (1679,2554,'дпюцнивхмжх',11);
INSERT INTO `n_nm` VALUES (1680,2210,'дпюцнлюм',23);
INSERT INTO `n_nm` VALUES (1681,5343,'дпюцнлюмх',8);
INSERT INTO `n_nm` VALUES (1682,4184,'дпюцнлхп',17);
INSERT INTO `n_nm` VALUES (1683,2428,'дпюцнлхпнбн',15);
INSERT INTO `n_nm` VALUES (1684,5285,'дпюцнлхпнбн',5);
INSERT INTO `n_nm` VALUES (1685,7419,'дпюцнлзф',18);
INSERT INTO `n_nm` VALUES (1686,4406,'дпюцнп',14);
INSERT INTO `n_nm` VALUES (1687,2916,'дпюцнярхм',1);
INSERT INTO `n_nm` VALUES (1688,2218,'дпюцнрхмжх',23);
INSERT INTO `n_nm` VALUES (1689,2875,'дпюцсь',1);
INSERT INTO `n_nm` VALUES (1690,2008,'дпюцсьхмнбн',23);
INSERT INTO `n_nm` VALUES (1691,8634,'дпюфебн',29);
INSERT INTO `n_nm` VALUES (1692,3929,'дпюфхмжх',6);
INSERT INTO `n_nm` VALUES (1693,8324,'дпюйю',2);
INSERT INTO `n_nm` VALUES (1694,2829,'дпюйюрю',1);
INSERT INTO `n_nm` VALUES (1695,7782,'дпюктю',18);
INSERT INTO `n_nm` VALUES (1696,8651,'дпюлю',29);
INSERT INTO `n_nm` VALUES (1697,4164,'дпюмцнбн',17);
INSERT INTO `n_nm` VALUES (1698,6860,'дпюмцнбн',10);
INSERT INTO `n_nm` VALUES (1699,2859,'дпюмцнбн',1);
INSERT INTO `n_nm` VALUES (1700,5363,'дпюмдюпхре',8);
INSERT INTO `n_nm` VALUES (1701,8319,'дпювебн',2);
INSERT INTO `n_nm` VALUES (1702,3267,'дпюьюм',7);
INSERT INTO `n_nm` VALUES (1703,5648,'дпюьйнбю онкъмю',12);
INSERT INTO `n_nm` VALUES (1704,2213,'дпеюрхм',23);
INSERT INTO `n_nm` VALUES (1705,2430,'дпем',15);
INSERT INTO `n_nm` VALUES (1706,2739,'дпемйнбн',1);
INSERT INTO `n_nm` VALUES (1707,5562,'дпемнб',12);
INSERT INTO `n_nm` VALUES (1708,3920,'дпемнбеж',6);
INSERT INTO `n_nm` VALUES (1709,2895,'дпемнбхжю',1);
INSERT INTO `n_nm` VALUES (1710,2236,'дпемнбн',23);
INSERT INTO `n_nm` VALUES (1711,2876,'дпемнбн',1);
INSERT INTO `n_nm` VALUES (1712,5095,'дпемрю',5);
INSERT INTO `n_nm` VALUES (1713,9788,'дпемжх',28);
INSERT INTO `n_nm` VALUES (1714,7834,'дпхмнбн',26);
INSERT INTO `n_nm` VALUES (1715,6477,'дпховебн',27);
INSERT INTO `n_nm` VALUES (1716,9641,'дпнокю',9);
INSERT INTO `n_nm` VALUES (1717,8563,'дпнокю',2);
INSERT INTO `n_nm` VALUES (1718,2410,'дпсцюм',15);
INSERT INTO `n_nm` VALUES (1719,3730,'дпсфаю',6);
INSERT INTO `n_nm` VALUES (1720,2281,'дпсфебн',23);
INSERT INTO `n_nm` VALUES (1721,6885,'дпсфхмжх',10);
INSERT INTO `n_nm` VALUES (1722,9815,'дпслебн',28);
INSERT INTO `n_nm` VALUES (1723,2596,'дпслнуюп',11);
INSERT INTO `n_nm` VALUES (1724,6820,'дпслве',10);
INSERT INTO `n_nm` VALUES (1725,2238,'дпзлью',23);
INSERT INTO `n_nm` VALUES (1726,9173,'дпзмдюп',3);
INSERT INTO `n_nm` VALUES (1727,4941,'дпъмйю',22);
INSERT INTO `n_nm` VALUES (1728,8524,'дпъмйнбеж',2);
INSERT INTO `n_nm` VALUES (1729,6865,'дпъмнбю цкюбю',10);
INSERT INTO `n_nm` VALUES (1730,7122,'дпъмнбеж',19);
INSERT INTO `n_nm` VALUES (1731,9392,'дпъмнбеж',9);
INSERT INTO `n_nm` VALUES (1732,7268,'дпъмнбеж',18);
INSERT INTO `n_nm` VALUES (1733,4856,'дпъмнбеж',22);
INSERT INTO `n_nm` VALUES (1734,5370,'дпъмнбн',8);
INSERT INTO `n_nm` VALUES (1735,4241,'дпъмнбн',17);
INSERT INTO `n_nm` VALUES (1736,6493,'дпъмнбн',27);
INSERT INTO `n_nm` VALUES (1737,8652,'дпъмнбн',29);
INSERT INTO `n_nm` VALUES (1738,5618,'дпъмяйю',12);
INSERT INTO `n_nm` VALUES (1739,5462,'дпъмзр',8);
INSERT INTO `n_nm` VALUES (1740,4174,'дсбюмкхх',17);
INSERT INTO `n_nm` VALUES (1741,6562,'дсцюмнбн',27);
INSERT INTO `n_nm` VALUES (1742,5094,'дсйнбжх',5);
INSERT INTO `n_nm` VALUES (1743,7650,'дскнбн',20);
INSERT INTO `n_nm` VALUES (1744,5345,'дслмхжх',8);
INSERT INTO `n_nm` VALUES (1745,7623,'дсмюбеж',20);
INSERT INTO `n_nm` VALUES (1746,5041,'дсмюбжх',5);
INSERT INTO `n_nm` VALUES (1747,3740,'дсмюбжх',6);
INSERT INTO `n_nm` VALUES (1748,6145,'дсмюбжх',25);
INSERT INTO `n_nm` VALUES (1749,4723,'дсмебн',22);
INSERT INTO `n_nm` VALUES (1750,4990,'дсмъ',22);
INSERT INTO `n_nm` VALUES (1751,2600,'дсомхжю',11);
INSERT INTO `n_nm` VALUES (1752,9670,'дспюмйскюй',9);
INSERT INTO `n_nm` VALUES (1753,5089,'дспнбжх',5);
INSERT INTO `n_nm` VALUES (1754,5380,'дспвю',8);
INSERT INTO `n_nm` VALUES (1755,7435,'дсунбеж',18);
INSERT INTO `n_nm` VALUES (1756,2083,'дсьюмжх',23);
INSERT INTO `n_nm` VALUES (1757,5455,'дсьебн',8);
INSERT INTO `n_nm` VALUES (1758,5455,'дсьебяйх йнкхах',8);
INSERT INTO `n_nm` VALUES (1759,6846,'дсьхмйнбн',10);
INSERT INTO `n_nm` VALUES (1760,2398,'дсьхмжх',15);
INSERT INTO `n_nm` VALUES (1761,6714,'дсьйю',10);
INSERT INTO `n_nm` VALUES (1762,5787,'дзаем',12);
INSERT INTO `n_nm` VALUES (1763,4349,'дзаеме',17);
INSERT INTO `n_nm` VALUES (1764,8213,'дзамхй',2);
INSERT INTO `n_nm` VALUES (1765,2940,'дзамхжю',1);
INSERT INTO `n_nm` VALUES (1766,8996,'дзанбю',21);
INSERT INTO `n_nm` VALUES (1767,4969,'дзанбю',22);
INSERT INTO `n_nm` VALUES (1768,3674,'дзанбю люуюкю',13);
INSERT INTO `n_nm` VALUES (1769,5973,'дзанбюм',16);
INSERT INTO `n_nm` VALUES (1770,6554,'дзанбеж',27);
INSERT INTO `n_nm` VALUES (1771,9551,'дзанбхй',9);
INSERT INTO `n_nm` VALUES (1772,8449,'дзанбхжю',2);
INSERT INTO `n_nm` VALUES (1773,8736,'дзанбн',29);
INSERT INTO `n_nm` VALUES (1774,6178,'дзанбн',25);
INSERT INTO `n_nm` VALUES (1775,9638,'дзапюбю',9);
INSERT INTO `n_nm` VALUES (1776,2723,'дзапюбю',1);
INSERT INTO `n_nm` VALUES (1777,5546,'дзапюбю',12);
INSERT INTO `n_nm` VALUES (1778,5765,'дзапюбюрю',12);
INSERT INTO `n_nm` VALUES (1779,9126,'дзапюбхмн',3);
INSERT INTO `n_nm` VALUES (1780,4472,'дзапюбхре',14);
INSERT INTO `n_nm` VALUES (1781,7997,'дзапюбхжю',26);
INSERT INTO `n_nm` VALUES (1782,3916,'дзапюбйю',6);
INSERT INTO `n_nm` VALUES (1783,6642,'дзфдхмн',10);
INSERT INTO `n_nm` VALUES (1784,6917,'дзфднбмхй',10);
INSERT INTO `n_nm` VALUES (1785,6747,'дзфднбмхжю',10);
INSERT INTO `n_nm` VALUES (1786,5668,'дзканй днк',12);
INSERT INTO `n_nm` VALUES (1787,4280,'дзканй хгбнп',17);
INSERT INTO `n_nm` VALUES (1788,6060,'дзканйх',25);
INSERT INTO `n_nm` VALUES (1789,5745,'дзкцю кхбюдю',12);
INSERT INTO `n_nm` VALUES (1790,2492,'дзкцю ксйю',15);
INSERT INTO `n_nm` VALUES (1791,7742,'дзкцюв',26);
INSERT INTO `n_nm` VALUES (1792,3475,'дзкцх дек',13);
INSERT INTO `n_nm` VALUES (1793,5088,'дзкцх опхоей',5);
INSERT INTO `n_nm` VALUES (1794,3756,'дзкцн онке',6);
INSERT INTO `n_nm` VALUES (1795,4195,'дзкцн онке',17);
INSERT INTO `n_nm` VALUES (1796,3638,'дзкцндекжх',13);
INSERT INTO `n_nm` VALUES (1797,9250,'дзкцнонк',3);
INSERT INTO `n_nm` VALUES (1798,6637,'дзмцнбн',10);
INSERT INTO `n_nm` VALUES (1799,5350,'дзпбюпх',8);
INSERT INTO `n_nm` VALUES (1800,6217,'дзпфюбю',25);
INSERT INTO `n_nm` VALUES (1801,6188,'дзпфюбем',25);
INSERT INTO `n_nm` VALUES (1802,3747,'дзпфюмхжю',6);
INSERT INTO `n_nm` VALUES (1803,5070,'дзпкебжх',5);
INSERT INTO `n_nm` VALUES (1804,3129,'дзплюмжх',7);
INSERT INTO `n_nm` VALUES (1805,5363,'дзяйюпхре',8);
INSERT INTO `n_nm` VALUES (1806,5223,'дзяйнр',5);
INSERT INTO `n_nm` VALUES (1807,8561,'дзяйнрмю',2);
INSERT INTO `n_nm` VALUES (1808,8330,'дчкебн',2);
INSERT INTO `n_nm` VALUES (1809,4529,'дчкебн',14);
INSERT INTO `n_nm` VALUES (1810,9108,'дчкхмн',3);
INSERT INTO `n_nm` VALUES (1811,6876,'дчкхжю',10);
INSERT INTO `n_nm` VALUES (1812,8571,'дчкъ',2);
INSERT INTO `n_nm` VALUES (1813,8918,'дъднбн',21);
INSERT INTO `n_nm` VALUES (1814,6705,'дъднбяйн',10);
INSERT INTO `n_nm` VALUES (1815,6764,'дъднбжх',10);
INSERT INTO `n_nm` VALUES (1816,2651,'дъйнбн',11);
INSERT INTO `n_nm` VALUES (1817,5454,'дъкзй',8);
INSERT INTO `n_nm` VALUES (1818,7270,'дъмйнбн',18);
INSERT INTO `n_nm` VALUES (1819,5965,'ебкнцхебн',16);
INSERT INTO `n_nm` VALUES (1820,8363,'ебпемегнбн',2);
INSERT INTO `n_nm` VALUES (1821,6931,'ецпей',10);
INSERT INTO `n_nm` VALUES (1822,2429,'ецзкмхжю',15);
INSERT INTO `n_nm` VALUES (1823,9792,'едхмюйнбжх',28);
INSERT INTO `n_nm` VALUES (1824,6173,'едпебн',25);
INSERT INTO `n_nm` VALUES (1825,2464,'егдхлхпжх',15);
INSERT INTO `n_nm` VALUES (1826,2846,'егепеж',1);
INSERT INTO `n_nm` VALUES (1827,9687,'егепеж',9);
INSERT INTO `n_nm` VALUES (1828,8919,'егепн',21);
INSERT INTO `n_nm` VALUES (1829,9168,'егепнбн',3);
INSERT INTO `n_nm` VALUES (1830,4288,'егепнбн',17);
INSERT INTO `n_nm` VALUES (1831,5309,'егепнрн',8);
INSERT INTO `n_nm` VALUES (1832,7274,'егепве',18);
INSERT INTO `n_nm` VALUES (1833,8490,'ейгюпу юмрхлнбн',2);
INSERT INTO `n_nm` VALUES (1834,7171,'ейгюпу иняхт',19);
INSERT INTO `n_nm` VALUES (1835,5070,'екемю',5);
INSERT INTO `n_nm` VALUES (1836,6399,'екемю',27);
INSERT INTO `n_nm` VALUES (1837,6047,'екемхмн',25);
INSERT INTO `n_nm` VALUES (1838,4990,'екемйю',22);
INSERT INTO `n_nm` VALUES (1839,2275,'екемнб днк',23);
INSERT INTO `n_nm` VALUES (1840,2726,'екемнбн',1);
INSERT INTO `n_nm` VALUES (1841,8943,'екемнбн',21);
INSERT INTO `n_nm` VALUES (1842,7837,'екемнбн',26);
INSERT INTO `n_nm` VALUES (1843,4731,'екемяйю',22);
INSERT INTO `n_nm` VALUES (1844,5388,'екемжхре',8);
INSERT INTO `n_nm` VALUES (1845,2782,'екеьмхжю',1);
INSERT INTO `n_nm` VALUES (1846,2125,'екеьмхжю',23);
INSERT INTO `n_nm` VALUES (1847,2100,'екхм оекхм',23);
INSERT INTO `n_nm` VALUES (1848,3160,'екхяеимю',7);
INSERT INTO `n_nm` VALUES (1849,2159,'екнбднк',23);
INSERT INTO `n_nm` VALUES (1850,2434,'екнбднк',15);
INSERT INTO `n_nm` VALUES (1851,3471,'екнбхжю',13);
INSERT INTO `n_nm` VALUES (1852,2489,'екнбхжю',15);
INSERT INTO `n_nm` VALUES (1853,4970,'екунбеж',22);
INSERT INTO `n_nm` VALUES (1854,8700,'екунбн',29);
INSERT INTO `n_nm` VALUES (1855,6174,'екунбн',25);
INSERT INTO `n_nm` VALUES (1856,6064,'екунбн',25);
INSERT INTO `n_nm` VALUES (1857,4538,'екьхжю',14);
INSERT INTO `n_nm` VALUES (1858,4783,'екэнбн',22);
INSERT INTO `n_nm` VALUES (1859,5065,'елем',5);
INSERT INTO `n_nm` VALUES (1860,8252,'елнмю',2);
INSERT INTO `n_nm` VALUES (1861,5469,'емеб пзр',8);
INSERT INTO `n_nm` VALUES (1862,9389,'емебн',9);
INSERT INTO `n_nm` VALUES (1863,9919,'емебн',28);
INSERT INTO `n_nm` VALUES (1864,6142,'емхмю',25);
INSERT INTO `n_nm` VALUES (1865,3261,'емхжю',7);
INSERT INTO `n_nm` VALUES (1866,6735,'емвеж',10);
INSERT INTO `n_nm` VALUES (1867,5360,'емвнбжх',8);
INSERT INTO `n_nm` VALUES (1868,6788,'емэнбве',10);
INSERT INTO `n_nm` VALUES (1869,3431,'епдем',13);
INSERT INTO `n_nm` VALUES (1870,2585,'епелхъ',11);
INSERT INTO `n_nm` VALUES (1871,4997,'еплю пейю',22);
INSERT INTO `n_nm` VALUES (1872,6865,'епнбере',10);
INSERT INTO `n_nm` VALUES (1873,2486,'епск',15);
INSERT INTO `n_nm` VALUES (1874,8459,'еяем',2);
INSERT INTO `n_nm` VALUES (1875,9289,'еяемхжю',3);
INSERT INTO `n_nm` VALUES (1876,2180,'ерпнонке',23);
INSERT INTO `n_nm` VALUES (1877,9422,'етпеирнп аюйюкнбн',9);
INSERT INTO `n_nm` VALUES (1878,6476,'етпел',27);
INSERT INTO `n_nm` VALUES (1879,2442,'фюакъмн',15);
INSERT INTO `n_nm` VALUES (1880,2545,'фюанйпзр',11);
INSERT INTO `n_nm` VALUES (1881,9492,'фецкюпжх',9);
INSERT INTO `n_nm` VALUES (1882,3738,'фецкхжю',6);
INSERT INTO `n_nm` VALUES (1883,2423,'федмю',15);
INSERT INTO `n_nm` VALUES (1884,6594,'фекегюпх',27);
INSERT INTO `n_nm` VALUES (1885,7948,'фекегюпх',26);
INSERT INTO `n_nm` VALUES (1886,5164,'фекегюпжх',5);
INSERT INTO `n_nm` VALUES (1887,6595,'фекегхмн',27);
INSERT INTO `n_nm` VALUES (1888,3461,'фекегмю',13);
INSERT INTO `n_nm` VALUES (1889,8488,'фекегмхй',2);
INSERT INTO `n_nm` VALUES (1890,6711,'фекегмхй',10);
INSERT INTO `n_nm` VALUES (1891,1475,'фекегмхжю',23);
INSERT INTO `n_nm` VALUES (1892,2732,'фекегмхжю',1);
INSERT INTO `n_nm` VALUES (1893,2267,'фекем',23);
INSERT INTO `n_nm` VALUES (1894,9826,'фекзд',28);
INSERT INTO `n_nm` VALUES (1895,6855,'фекзднбн',10);
INSERT INTO `n_nm` VALUES (1896,8860,'фекч бнибндю',21);
INSERT INTO `n_nm` VALUES (1897,1837,'фекъбю',23);
INSERT INTO `n_nm` VALUES (1898,7455,'фекъгйнбеж',18);
INSERT INTO `n_nm` VALUES (1899,4136,'фекъгмн',17);
INSERT INTO `n_nm` VALUES (1900,8106,'фекъгнбн',2);
INSERT INTO `n_nm` VALUES (1901,6693,'фемдю',10);
INSERT INTO `n_nm` VALUES (1902,2567,'фепюбхмн',11);
INSERT INTO `n_nm` VALUES (1903,5621,'фепюбхжю',12);
INSERT INTO `n_nm` VALUES (1904,8988,'фепюбмю',21);
INSERT INTO `n_nm` VALUES (1905,6190,'фепцнбеж',25);
INSERT INTO `n_nm` VALUES (1906,5964,'фепмнб',16);
INSERT INTO `n_nm` VALUES (1907,5344,'фхбйн',8);
INSERT INTO `n_nm` VALUES (1908,2065,'фхбйнбн',23);
INSERT INTO `n_nm` VALUES (1909,9794,'фхбйнбн',28);
INSERT INTO `n_nm` VALUES (1910,5622,'фхднб днк',12);
INSERT INTO `n_nm` VALUES (1911,2956,'фхфебн',1);
INSERT INTO `n_nm` VALUES (1912,2573,'фхкемжх',11);
INSERT INTO `n_nm` VALUES (1913,9929,'фхкхмн',28);
INSERT INTO `n_nm` VALUES (1914,6654,'фхмгхтнбн',10);
INSERT INTO `n_nm` VALUES (1915,6636,'фхрюпмхй',10);
INSERT INTO `n_nm` VALUES (1916,9555,'фхрем',9);
INSERT INTO `n_nm` VALUES (1917,1211,'фхрем',23);
INSERT INTO `n_nm` VALUES (1918,9424,'фхрмхжю',9);
INSERT INTO `n_nm` VALUES (1919,4172,'фхрмхжю',17);
INSERT INTO `n_nm` VALUES (1920,9278,'фхрмхжю',3);
INSERT INTO `n_nm` VALUES (1921,6708,'фхрмхжю',10);
INSERT INTO `n_nm` VALUES (1922,8475,'фхрнябър',2);
INSERT INTO `n_nm` VALUES (1923,2432,'фхрсью',15);
INSERT INTO `n_nm` VALUES (1924,4827,'фпеаебн',22);
INSERT INTO `n_nm` VALUES (1925,8733,'фпеахмн',29);
INSERT INTO `n_nm` VALUES (1926,4585,'фпеахвйн',14);
INSERT INTO `n_nm` VALUES (1927,8894,'фзкр апъц',21);
INSERT INTO `n_nm` VALUES (1928,4298,'фзкр йюлзй',17);
INSERT INTO `n_nm` VALUES (1929,5335,'фзкреь',8);
INSERT INTO `n_nm` VALUES (1930,6368,'фзкрх апъц',27);
INSERT INTO `n_nm` VALUES (1931,6846,'фзкрх пхд',10);
INSERT INTO `n_nm` VALUES (1932,6842,'фзкрхйю',10);
INSERT INTO `n_nm` VALUES (1933,6195,'фзкрноно',25);
INSERT INTO `n_nm` VALUES (1934,6789,'фзкрсью',10);
INSERT INTO `n_nm` VALUES (1935,2469,'гюаек',15);
INSERT INTO `n_nm` VALUES (1936,8367,'гюаепмнбн',2);
INSERT INTO `n_nm` VALUES (1937,4872,'гюазпдн',22);
INSERT INTO `n_nm` VALUES (1938,2374,'гюбюкю',15);
INSERT INTO `n_nm` VALUES (1939,7330,'гюбер',18);
INSERT INTO `n_nm` VALUES (1940,7881,'гюбермн',26);
INSERT INTO `n_nm` VALUES (1941,2288,'гюбхднбжх',23);
INSERT INTO `n_nm` VALUES (1942,8633,'гюбни',29);
INSERT INTO `n_nm` VALUES (1943,6063,'гюцнпе',25);
INSERT INTO `n_nm` VALUES (1944,9966,'гюцнпхве',28);
INSERT INTO `n_nm` VALUES (1945,6865,'гюцнпяйх',10);
INSERT INTO `n_nm` VALUES (1946,6817,'гюцнпяйн',10);
INSERT INTO `n_nm` VALUES (1947,9413,'гюцнпжх',9);
INSERT INTO `n_nm` VALUES (1948,8939,'гюцнпжх',21);
INSERT INTO `n_nm` VALUES (1949,8321,'гюцнпжх',2);
INSERT INTO `n_nm` VALUES (1950,4950,'гюцпюфдем',22);
INSERT INTO `n_nm` VALUES (1951,5974,'гюцпюфдем',16);
INSERT INTO `n_nm` VALUES (1952,7317,'гюдпсцю',18);
INSERT INTO `n_nm` VALUES (1953,4710,'гюебхре',22);
INSERT INTO `n_nm` VALUES (1954,8564,'гюхлвебн',2);
INSERT INTO `n_nm` VALUES (1955,8557,'гюивюп',2);
INSERT INTO `n_nm` VALUES (1956,8843,'гюивюпх',21);
INSERT INTO `n_nm` VALUES (1957,6749,'гюивхмн',10);
INSERT INTO `n_nm` VALUES (1958,9918,'гюивхмн нпеье',28);
INSERT INTO `n_nm` VALUES (1959,2085,'гюлсунбн',23);
INSERT INTO `n_nm` VALUES (1960,3644,'гюлтхп',13);
INSERT INTO `n_nm` VALUES (1961,3530,'гюлтхпнбн',13);
INSERT INTO `n_nm` VALUES (1962,2875,'гюмнцю',1);
INSERT INTO `n_nm` VALUES (1963,2283,'гюмнце',23);
INSERT INTO `n_nm` VALUES (1964,7832,'гюпюебн',26);
INSERT INTO `n_nm` VALUES (1965,7689,'гюпхжю',20);
INSERT INTO `n_nm` VALUES (1966,7552,'гюпмхй',20);
INSERT INTO `n_nm` VALUES (1967,2284,'гюяеке',23);
INSERT INTO `n_nm` VALUES (1968,9141,'гюялъмн',3);
INSERT INTO `n_nm` VALUES (1969,7610,'гютхпнбн',20);
INSERT INTO `n_nm` VALUES (1970,7842,'гюуюпх ярнъмнбн',26);
INSERT INTO `n_nm` VALUES (1971,9671,'гюуюпх ярнъмнбн',9);
INSERT INTO `n_nm` VALUES (1972,5397,'гюъ',8);
INSERT INTO `n_nm` VALUES (1973,9791,'гбецнп',28);
INSERT INTO `n_nm` VALUES (1974,7878,'гбегдю',26);
INSERT INTO `n_nm` VALUES (1975,8572,'гбегдю',2);
INSERT INTO `n_nm` VALUES (1976,6820,'гбегдек',10);
INSERT INTO `n_nm` VALUES (1977,6653,'гбегдекхмю',10);
INSERT INTO `n_nm` VALUES (1978,6658,'гбегдем',10);
INSERT INTO `n_nm` VALUES (1979,8360,'гбегдеж',2);
INSERT INTO `n_nm` VALUES (1980,9103,'гбегдхжю',3);
INSERT INTO `n_nm` VALUES (1981,7945,'гбегдхжю',26);
INSERT INTO `n_nm` VALUES (1982,7644,'гбемхлхп',20);
INSERT INTO `n_nm` VALUES (1983,3170,'гбепхмн',7);
INSERT INTO `n_nm` VALUES (1984,6668,'гбхмхжю',10);
INSERT INTO `n_nm` VALUES (1985,6920,'гбзмюпйю',10);
INSERT INTO `n_nm` VALUES (1986,7333,'гбзмюпжх',18);
INSERT INTO `n_nm` VALUES (1987,9142,'гбзмеж',3);
INSERT INTO `n_nm` VALUES (1988,6732,'гбзмхйю',10);
INSERT INTO `n_nm` VALUES (1989,4415,'гбзмхвебн',14);
INSERT INTO `n_nm` VALUES (1990,6744,'гбзмве',10);
INSERT INTO `n_nm` VALUES (1991,5897,'гцюкебн',16);
INSERT INTO `n_nm` VALUES (1992,3042,'гцнпхцпюд',7);
INSERT INTO `n_nm` VALUES (1993,2592,'гцспнбн',11);
INSERT INTO `n_nm` VALUES (1994,9137,'гдпюбеж',3);
INSERT INTO `n_nm` VALUES (1995,6435,'гдпюбеж',27);
INSERT INTO `n_nm` VALUES (1996,4241,'гдпюбеж',17);
INSERT INTO `n_nm` VALUES (1997,7437,'гдпюбеж',18);
INSERT INTO `n_nm` VALUES (1998,7769,'гдпюбеж',26);
INSERT INTO `n_nm` VALUES (1999,5344,'гдпюбйнбеж',8);
INSERT INTO `n_nm` VALUES (2000,6861,'гдпюбвеж',10);
INSERT INTO `n_nm` VALUES (2001,7641,'геахк',20);
INSERT INTO `n_nm` VALUES (2002,7954,'гекемю лнпюбю',26);
INSERT INTO `n_nm` VALUES (2003,2745,'гекемднк',1);
INSERT INTO `n_nm` VALUES (2004,2478,'гекемхцпюд',15);
INSERT INTO `n_nm` VALUES (2005,5099,'гекемхй',5);
INSERT INTO `n_nm` VALUES (2006,5351,'гекемхйю',8);
INSERT INTO `n_nm` VALUES (2007,4155,'гекемхйнбн',17);
INSERT INTO `n_nm` VALUES (2008,6740,'гекемхйнбн',10);
INSERT INTO `n_nm` VALUES (2009,5304,'гекемн дзпбн',8);
INSERT INTO `n_nm` VALUES (2010,2440,'гелем',15);
INSERT INTO `n_nm` VALUES (2011,9411,'гелемжх',9);
INSERT INTO `n_nm` VALUES (2012,6266,'гелкем',25);
INSERT INTO `n_nm` VALUES (2013,8517,'герэнбн',2);
INSERT INTO `n_nm` VALUES (2014,6220,'герэнбн',25);
INSERT INTO `n_nm` VALUES (2015,8160,'гхдюпнбн',2);
INSERT INTO `n_nm` VALUES (2016,2356,'гхдюпжх',15);
INSERT INTO `n_nm` VALUES (2017,2282,'гхлебхжю',23);
INSERT INTO `n_nm` VALUES (2018,8428,'гхлем',2);
INSERT INTO `n_nm` VALUES (2019,6627,'гхлгекем',10);
INSERT INTO `n_nm` VALUES (2020,9421,'гхлмхжю',9);
INSERT INTO `n_nm` VALUES (2021,6177,'гхлмхжю',25);
INSERT INTO `n_nm` VALUES (2022,8690,'гхлмхжю',29);
INSERT INTO `n_nm` VALUES (2023,6396,'гхлнбхмю',27);
INSERT INTO `n_nm` VALUES (2024,6965,'гхлнпмхжю',10);
INSERT INTO `n_nm` VALUES (2025,9880,'гкюрюп',28);
INSERT INTO `n_nm` VALUES (2026,8641,'гкюрюпх',29);
INSERT INTO `n_nm` VALUES (2027,2783,'гкюрюпхжю',1);
INSERT INTO `n_nm` VALUES (2028,5090,'гкюрюпхжю',5);
INSERT INTO `n_nm` VALUES (2029,5345,'гкюребжх',8);
INSERT INTO `n_nm` VALUES (2030,8875,'гкюрх бнибндю',21);
INSERT INTO `n_nm` VALUES (2031,9218,'гкюрхмю',3);
INSERT INTO `n_nm` VALUES (2032,8746,'гкюрхмхжю',29);
INSERT INTO `n_nm` VALUES (2033,6197,'гкюрхпзр',25);
INSERT INTO `n_nm` VALUES (2034,4212,'гкюрхрпюо',17);
INSERT INTO `n_nm` VALUES (2035,2080,'гкюрхжю',23);
INSERT INTO `n_nm` VALUES (2036,3630,'гкюрхъ',13);
INSERT INTO `n_nm` VALUES (2037,9385,'гкюрхъ',9);
INSERT INTO `n_nm` VALUES (2038,6221,'гкюрмю кхбюдю',25);
INSERT INTO `n_nm` VALUES (2039,9944,'гкюрмю мхбю',28);
INSERT INTO `n_nm` VALUES (2040,5760,'гкюрмю оюмецю',12);
INSERT INTO `n_nm` VALUES (2041,9007,'гкюрмх оъязжх',3);
INSERT INTO `n_nm` VALUES (2042,4264,'гкюрнбпзу',17);
INSERT INTO `n_nm` VALUES (2043,4980,'гкюрнцпюд',22);
INSERT INTO `n_nm` VALUES (2044,7694,'гкюрнйкюя',20);
INSERT INTO `n_nm` VALUES (2045,6915,'гкюрнкхяр',10);
INSERT INTO `n_nm` VALUES (2046,2830,'гкюрнкхяр',1);
INSERT INTO `n_nm` VALUES (2047,6421,'гкюрнонке',27);
INSERT INTO `n_nm` VALUES (2048,4162,'гкюрняек',17);
INSERT INTO `n_nm` VALUES (2049,6484,'гкюрнсярнбн',27);
INSERT INTO `n_nm` VALUES (2050,2225,'гкюрсью',23);
INSERT INTO `n_nm` VALUES (2051,3161,'гкхднк',7);
INSERT INTO `n_nm` VALUES (2052,2558,'гкнцнь',11);
INSERT INTO `n_nm` VALUES (2053,2009,'гкнйсвеме',23);
INSERT INTO `n_nm` VALUES (2054,4491,'гкнйсвеме',14);
INSERT INTO `n_nm` VALUES (2055,9643,'глеебн',9);
INSERT INTO `n_nm` VALUES (2056,4834,'глехжю',22);
INSERT INTO `n_nm` VALUES (2057,7945,'глеимн',26);
INSERT INTO `n_nm` VALUES (2058,6059,'глеэнбн',25);
INSERT INTO `n_nm` VALUES (2059,4777,'глхебн',22);
INSERT INTO `n_nm` VALUES (2060,6272,'гмюлемняеж',25);
INSERT INTO `n_nm` VALUES (2061,9553,'гнцпют',9);
INSERT INTO `n_nm` VALUES (2062,2882,'гнивеме',1);
INSERT INTO `n_nm` VALUES (2063,5737,'гнпемхьйх днк',12);
INSERT INTO `n_nm` VALUES (2064,9156,'гнпмхжю',3);
INSERT INTO `n_nm` VALUES (2065,6650,'гнпмхжю',10);
INSERT INTO `n_nm` VALUES (2066,2821,'гнпмхжю',1);
INSERT INTO `n_nm` VALUES (2067,8313,'гнпмхжю',2);
INSERT INTO `n_nm` VALUES (2068,6367,'гнпмхжю',27);
INSERT INTO `n_nm` VALUES (2069,4857,'гнпмхжю',22);
INSERT INTO `n_nm` VALUES (2070,9491,'гзпмебн',9);
INSERT INTO `n_nm` VALUES (2071,4407,'хбюикн',14);
INSERT INTO `n_nm` VALUES (2072,6570,'хбюикнбцпюд',27);
INSERT INTO `n_nm` VALUES (2073,4206,'хбюм бюгнбн',17);
INSERT INTO `n_nm` VALUES (2074,5363,'хбюм дхлнб',8);
INSERT INTO `n_nm` VALUES (2075,7342,'хбюм ьхьлюмнбн',18);
INSERT INTO `n_nm` VALUES (2076,5084,'хбюмхбюмнбжх',5);
INSERT INTO `n_nm` VALUES (2077,5300,'хбюмхкх',8);
INSERT INTO `n_nm` VALUES (2078,5340,'хбюмйнбжх',8);
INSERT INTO `n_nm` VALUES (2079,9865,'хбюмнбн',28);
INSERT INTO `n_nm` VALUES (2080,7088,'хбюмнбн',19);
INSERT INTO `n_nm` VALUES (2081,2875,'хбюмнбн',1);
INSERT INTO `n_nm` VALUES (2082,4918,'хбюмнбн',22);
INSERT INTO `n_nm` VALUES (2083,6465,'хбюмнбн',27);
INSERT INTO `n_nm` VALUES (2084,5035,'хбюмнбжх',5);
INSERT INTO `n_nm` VALUES (2085,3739,'хбюмнбжх',6);
INSERT INTO `n_nm` VALUES (2086,2562,'хбюмнбжх',11);
INSERT INTO `n_nm` VALUES (2087,9810,'хбюмяйх',28);
INSERT INTO `n_nm` VALUES (2088,6628,'хбюмжх',10);
INSERT INTO `n_nm` VALUES (2089,5194,'хбюмвю',5);
INSERT INTO `n_nm` VALUES (2090,7859,'хбюмвю',26);
INSERT INTO `n_nm` VALUES (2091,5623,'хбюмьмхжю',12);
INSERT INTO `n_nm` VALUES (2092,1393,'хбюмъме',23);
INSERT INTO `n_nm` VALUES (2093,4334,'хцюмнбн',17);
INSERT INTO `n_nm` VALUES (2094,8745,'хцкхйю',29);
INSERT INTO `n_nm` VALUES (2095,5343,'хцкхйю',8);
INSERT INTO `n_nm` VALUES (2096,9797,'хцкхйю',28);
INSERT INTO `n_nm` VALUES (2097,9143,'хцмюрхебн',3);
INSERT INTO `n_nm` VALUES (2098,3167,'хцмюрхжю',7);
INSERT INTO `n_nm` VALUES (2099,3631,'хцмюрнбн',13);
INSERT INTO `n_nm` VALUES (2100,5370,'хцмюрнбжх',8);
INSERT INTO `n_nm` VALUES (2101,5098,'хцмюрнбжх',5);
INSERT INTO `n_nm` VALUES (2102,2848,'хцпюкхые',1);
INSERT INTO `n_nm` VALUES (2103,5422,'хдхкебн',8);
INSERT INTO `n_nm` VALUES (2104,4269,'хгаецкхх',17);
INSERT INTO `n_nm` VALUES (2105,9959,'хгаск',28);
INSERT INTO `n_nm` VALUES (2106,3742,'хгбнп',6);
INSERT INTO `n_nm` VALUES (2107,2415,'хгбнп',15);
INSERT INTO `n_nm` VALUES (2108,4116,'хгбнп',17);
INSERT INTO `n_nm` VALUES (2109,2219,'хгбнп',23);
INSERT INTO `n_nm` VALUES (2110,8153,'хгбнп',2);
INSERT INTO `n_nm` VALUES (2111,3821,'хгбнп люуюкю',6);
INSERT INTO `n_nm` VALUES (2112,8116,'хгбнпхые',2);
INSERT INTO `n_nm` VALUES (2113,9297,'хгбнпмхй',3);
INSERT INTO `n_nm` VALUES (2114,7950,'хгбнпнбн',26);
INSERT INTO `n_nm` VALUES (2115,4235,'хгбнпнбн',17);
INSERT INTO `n_nm` VALUES (2116,9538,'хгбнпнбн',9);
INSERT INTO `n_nm` VALUES (2117,6461,'хгбнпнбн',27);
INSERT INTO `n_nm` VALUES (2118,6242,'хгбнпнбн',25);
INSERT INTO `n_nm` VALUES (2119,9154,'хгбнпяйн',3);
INSERT INTO `n_nm` VALUES (2120,5536,'хгбнпве',12);
INSERT INTO `n_nm` VALUES (2121,2711,'хгцпеб',1);
INSERT INTO `n_nm` VALUES (2122,9754,'хгцпеб',28);
INSERT INTO `n_nm` VALUES (2123,8717,'хгцпеб',29);
INSERT INTO `n_nm` VALUES (2124,5924,'хгцпеб',16);
INSERT INTO `n_nm` VALUES (2125,4990,'хгцпеб',22);
INSERT INTO `n_nm` VALUES (2126,8847,'хгцпеб',21);
INSERT INTO `n_nm` VALUES (2127,9176,'хгцпеб',3);
INSERT INTO `n_nm` VALUES (2128,8273,'хгцпеб',2);
INSERT INTO `n_nm` VALUES (2129,5335,'хгрнвмхй',8);
INSERT INTO `n_nm` VALUES (2130,5082,'хкюйнб пзр',5);
INSERT INTO `n_nm` VALUES (2131,5045,'хкебжх',5);
INSERT INTO `n_nm` VALUES (2132,7948,'хкхимн',26);
INSERT INTO `n_nm` VALUES (2133,6845,'хкхияйн',10);
INSERT INTO `n_nm` VALUES (2134,2072,'хкхмдем',23);
INSERT INTO `n_nm` VALUES (2135,2929,'хкхмдем',1);
INSERT INTO `n_nm` VALUES (2136,2833,'хкхмдемжх',1);
INSERT INTO `n_nm` VALUES (2137,6745,'хкхмхжю',10);
INSERT INTO `n_nm` VALUES (2138,5093,'хкхчбжх',5);
INSERT INTO `n_nm` VALUES (2139,2581,'хкхъ',11);
INSERT INTO `n_nm` VALUES (2140,9813,'хкхъ акзяйнбн',28);
INSERT INTO `n_nm` VALUES (2141,9877,'хлпемвебн',28);
INSERT INTO `n_nm` VALUES (2142,8149,'хмдфе бнибндю',2);
INSERT INTO `n_nm` VALUES (2143,3763,'хмнбн',6);
INSERT INTO `n_nm` VALUES (2144,9666,'хпевей',9);
INSERT INTO `n_nm` VALUES (2145,8697,'хпевейнбн',29);
INSERT INTO `n_nm` VALUES (2146,5367,'хпхмежх',8);
INSERT INTO `n_nm` VALUES (2147,7532,'хпмхй',20);
INSERT INTO `n_nm` VALUES (2148,6781,'хяйпю',10);
INSERT INTO `n_nm` VALUES (2149,5380,'хяйпю',8);
INSERT INTO `n_nm` VALUES (2150,8481,'хяйпю',2);
INSERT INTO `n_nm` VALUES (2151,4297,'хяйпю',17);
INSERT INTO `n_nm` VALUES (2152,7580,'хяйпю',20);
INSERT INTO `n_nm` VALUES (2153,2290,'хяйпеж',23);
INSERT INTO `n_nm` VALUES (2154,2288,'хяйпеж - яюмюрнпхсл',23);
INSERT INTO `n_nm` VALUES (2155,6293,'хяйпхжю',25);
INSERT INTO `n_nm` VALUES (2156,9285,'хяйзп',3);
INSERT INTO `n_nm` VALUES (2157,5972,'хяйзп',16);
INSERT INTO `n_nm` VALUES (2158,5868,'хяйзп',16);
INSERT INTO `n_nm` VALUES (2159,7400,'хяоепху',18);
INSERT INTO `n_nm` VALUES (2160,4588,'хяоепхунбн',14);
INSERT INTO `n_nm` VALUES (2161,4767,'хяэнбжх',22);
INSERT INTO `n_nm` VALUES (2162,2050,'хурхлюм',23);
INSERT INTO `n_nm` VALUES (2163,8849,'хвепю',21);
INSERT INTO `n_nm` VALUES (2164,6551,'иепсяюкхлнбн',27);
INSERT INTO `n_nm` VALUES (2165,4219,'инюйхл цпсебн',17);
INSERT INTO `n_nm` VALUES (2166,9531,'инбйнбн',9);
INSERT INTO `n_nm` VALUES (2167,5360,'инбнбжх',8);
INSERT INTO `n_nm` VALUES (2168,5035,'инбвебжх',5);
INSERT INTO `n_nm` VALUES (2169,5553,'инцкюб',12);
INSERT INTO `n_nm` VALUES (2170,7450,'инмйнбн',18);
INSERT INTO `n_nm` VALUES (2171,6724,'инмвнбн',10);
INSERT INTO `n_nm` VALUES (2172,7569,'инпдюмнбн',20);
INSERT INTO `n_nm` VALUES (2173,8629,'йюахке',29);
INSERT INTO `n_nm` VALUES (2174,8210,'йюакеьйнбн',2);
INSERT INTO `n_nm` VALUES (2175,9488,'йюакеьйнбн',9);
INSERT INTO `n_nm` VALUES (2176,6703,'йюакеьйнбн',10);
INSERT INTO `n_nm` VALUES (2177,9650,'йюбюпмю',9);
INSERT INTO `n_nm` VALUES (2178,8143,'йюбюжхре',2);
INSERT INTO `n_nm` VALUES (2179,5163,'йюбкюй',5);
INSERT INTO `n_nm` VALUES (2180,2889,'йюбпюйхпнбн',1);
INSERT INTO `n_nm` VALUES (2181,4213,'йюдхебн',17);
INSERT INTO `n_nm` VALUES (2182,2593,'йюдпнбхжю',11);
INSERT INTO `n_nm` VALUES (2183,6590,'йюгюй',27);
INSERT INTO `n_nm` VALUES (2184,6062,'йюгюмйю',25);
INSERT INTO `n_nm` VALUES (2185,6100,'йюгюмкзй',25);
INSERT INTO `n_nm` VALUES (2186,6850,'йюгюжхре',10);
INSERT INTO `n_nm` VALUES (2187,5548,'йюгювебн',12);
INSERT INTO `n_nm` VALUES (2188,9125,'йюгюьйю пейю',3);
INSERT INTO `n_nm` VALUES (2189,9140,'йюгюьйн',3);
INSERT INTO `n_nm` VALUES (2190,7574,'йюгхлхп',20);
INSERT INTO `n_nm` VALUES (2191,1532,'йюгхвеме',23);
INSERT INTO `n_nm` VALUES (2192,7550,'йюимюпдфю',20);
INSERT INTO `n_nm` VALUES (2193,6927,'йюкюидфхебн',10);
INSERT INTO `n_nm` VALUES (2194,5096,'йюкюидфхх',5);
INSERT INTO `n_nm` VALUES (2195,5667,'йюкеижю',12);
INSERT INTO `n_nm` VALUES (2196,4147,'йюкейнбеж',17);
INSERT INTO `n_nm` VALUES (2197,3151,'йюкем',7);
INSERT INTO `n_nm` VALUES (2198,3829,'йюкемхй',6);
INSERT INTO `n_nm` VALUES (2199,5575,'йюкемхй',12);
INSERT INTO `n_nm` VALUES (2200,2253,'йюкемнбжх',23);
INSERT INTO `n_nm` VALUES (2201,2832,'йюкхлюмжх',1);
INSERT INTO `n_nm` VALUES (2202,9177,'йюкхлюмжх',3);
INSERT INTO `n_nm` VALUES (2203,3788,'йюкхмю',6);
INSERT INTO `n_nm` VALUES (2204,9544,'йюкхмю',9);
INSERT INTO `n_nm` VALUES (2205,6623,'йюкхмйю',10);
INSERT INTO `n_nm` VALUES (2206,9795,'йюкхмн',28);
INSERT INTO `n_nm` VALUES (2207,7539,'йюкхоерпнбн',20);
INSERT INTO `n_nm` VALUES (2208,6049,'йюкхрхмнбн',25);
INSERT INTO `n_nm` VALUES (2209,2431,'йюкхые',15);
INSERT INTO `n_nm` VALUES (2210,7960,'йюкмхые',26);
INSERT INTO `n_nm` VALUES (2211,8368,'йюкнбн',2);
INSERT INTO `n_nm` VALUES (2212,5388,'йюкнлем',8);
INSERT INTO `n_nm` VALUES (2213,2212,'йюкнрхмю',23);
INSERT INTO `n_nm` VALUES (2214,2444,'йюкнрхмжх',15);
INSERT INTO `n_nm` VALUES (2215,4370,'йюкнтеп',17);
INSERT INTO `n_nm` VALUES (2216,9288,'йюкнъм',3);
INSERT INTO `n_nm` VALUES (2217,6070,'йюкнъмнбеж',25);
INSERT INTO `n_nm` VALUES (2218,4173,'йюкнъмнбн',17);
INSERT INTO `n_nm` VALUES (2219,8881,'йюкнъмнбн',21);
INSERT INTO `n_nm` VALUES (2220,6675,'йюкнъмжх',10);
INSERT INTO `n_nm` VALUES (2221,7631,'йюксцепеме',20);
INSERT INTO `n_nm` VALUES (2222,4462,'йюксцепнбн',14);
INSERT INTO `n_nm` VALUES (2223,2169,'йюксцепнбн',23);
INSERT INTO `n_nm` VALUES (2224,6495,'йюксцепнбн',27);
INSERT INTO `n_nm` VALUES (2225,8677,'йюквебн',29);
INSERT INTO `n_nm` VALUES (2226,5616,'йюквебяйю',12);
INSERT INTO `n_nm` VALUES (2227,5340,'йюквнбжх',8);
INSERT INTO `n_nm` VALUES (2228,2215,'йюлаекебжх',23);
INSERT INTO `n_nm` VALUES (2229,7930,'йюласпнбн',26);
INSERT INTO `n_nm` VALUES (2230,9425,'йюлем',9);
INSERT INTO `n_nm` VALUES (2231,8882,'йюлем',21);
INSERT INTO `n_nm` VALUES (2232,5160,'йюлем',5);
INSERT INTO `n_nm` VALUES (2233,9661,'йюлем апъц',9);
INSERT INTO `n_nm` VALUES (2234,8728,'йюлем бпзу',29);
INSERT INTO `n_nm` VALUES (2235,9253,'йюлем дък',3);
INSERT INTO `n_nm` VALUES (2236,2878,'йюлемю',1);
INSERT INTO `n_nm` VALUES (2237,9102,'йюлемюп',3);
INSERT INTO `n_nm` VALUES (2238,7247,'йюлемюп',18);
INSERT INTO `n_nm` VALUES (2239,8215,'йюлемюп',2);
INSERT INTO `n_nm` VALUES (2240,5083,'йюлемюпх',5);
INSERT INTO `n_nm` VALUES (2241,6729,'йюлемюпжх',10);
INSERT INTO `n_nm` VALUES (2242,6800,'йюлемеж',10);
INSERT INTO `n_nm` VALUES (2243,5866,'йюлемеж',16);
INSERT INTO `n_nm` VALUES (2244,8655,'йюлемеж',29);
INSERT INTO `n_nm` VALUES (2245,2677,'йюлемхй',11);
INSERT INTO `n_nm` VALUES (2246,2072,'йюлемхжю',23);
INSERT INTO `n_nm` VALUES (2247,2828,'йюлемхжю',1);
INSERT INTO `n_nm` VALUES (2248,2572,'йюлемхвйю яйюйюбхжю',11);
INSERT INTO `n_nm` VALUES (2249,6918,'йюлемйю',10);
INSERT INTO `n_nm` VALUES (2250,8997,'йюлеммю',21);
INSERT INTO `n_nm` VALUES (2251,6546,'йюлеммю пейю',27);
INSERT INTO `n_nm` VALUES (2252,3479,'йюлеммю пхйяю',13);
INSERT INTO `n_nm` VALUES (2253,8120,'йюлемн',2);
INSERT INTO `n_nm` VALUES (2254,3150,'йюлемн онке',7);
INSERT INTO `n_nm` VALUES (2255,7295,'йюлемнбн',19);
INSERT INTO `n_nm` VALUES (2256,8928,'йюлемнбн',21);
INSERT INTO `n_nm` VALUES (2257,8455,'йюлемяйн',2);
INSERT INTO `n_nm` VALUES (2258,7565,'йюлемжх',20);
INSERT INTO `n_nm` VALUES (2259,8578,'йюлемъй',2);
INSERT INTO `n_nm` VALUES (2260,9783,'йюлемъй',28);
INSERT INTO `n_nm` VALUES (2261,6850,'йюлемъме',10);
INSERT INTO `n_nm` VALUES (2262,5333,'йюлеыхжю',8);
INSERT INTO `n_nm` VALUES (2263,6571,'йюлхкяйх днк',27);
INSERT INTO `n_nm` VALUES (2264,9130,'йюлвхъ',3);
INSERT INTO `n_nm` VALUES (2265,8434,'йюлвхъ',2);
INSERT INTO `n_nm` VALUES (2266,6937,'йюмдхкйю',10);
INSERT INTO `n_nm` VALUES (2267,4631,'йюмднбх',14);
INSERT INTO `n_nm` VALUES (2268,3843,'йюмхж',6);
INSERT INTO `n_nm` VALUES (2269,5094,'йюмрюпх',5);
INSERT INTO `n_nm` VALUES (2270,6695,'йюмъй',10);
INSERT INTO `n_nm` VALUES (2271,9960,'йюнкхмнбн',28);
INSERT INTO `n_nm` VALUES (2272,2872,'йюоюрнбн',1);
INSERT INTO `n_nm` VALUES (2273,6530,'йюохрюм юмдпеебн',27);
INSERT INTO `n_nm` VALUES (2274,4589,'йюохрюм дхлхрпхебн',14);
INSERT INTO `n_nm` VALUES (2275,9408,'йюохрюм дхлхрпнбн',9);
INSERT INTO `n_nm` VALUES (2276,9770,'йюохрюм оерйн',28);
INSERT INTO `n_nm` VALUES (2277,3768,'йюохрюмнбжх',6);
INSERT INTO `n_nm` VALUES (2278,7988,'йюохые',26);
INSERT INTO `n_nm` VALUES (2279,7453,'йюпю лхуюк',18);
INSERT INTO `n_nm` VALUES (2280,4484,'йюпюасмюп',14);
INSERT INTO `n_nm` VALUES (2281,4350,'йюпюбекнбн',17);
INSERT INTO `n_nm` VALUES (2282,9942,'йюпюбекнбн',28);
INSERT INTO `n_nm` VALUES (2283,8647,'йюпюбекнбн',29);
INSERT INTO `n_nm` VALUES (2284,8553,'йюпюбекэнбн',2);
INSERT INTO `n_nm` VALUES (2285,8543,'йюпюценпцхебн',2);
INSERT INTO `n_nm` VALUES (2286,4283,'йюпюдфюкнбн',17);
INSERT INTO `n_nm` VALUES (2287,4117,'йюпюдфнбн',17);
INSERT INTO `n_nm` VALUES (2288,5386,'йюпюхбюмжю',8);
INSERT INTO `n_nm` VALUES (2289,5095,'йюпюхбюмжх',5);
INSERT INTO `n_nm` VALUES (2290,5230,'йюпюхяем',5);
INSERT INTO `n_nm` VALUES (2291,5343,'йюпюкх',8);
INSERT INTO `n_nm` VALUES (2292,9299,'йюпюлюмхре',3);
INSERT INTO `n_nm` VALUES (2293,7130,'йюпюлюмнбн',19);
INSERT INTO `n_nm` VALUES (2294,6372,'йюпюлюмжх',27);
INSERT INTO `n_nm` VALUES (2295,5471,'йюпюлхвебяйю',8);
INSERT INTO `n_nm` VALUES (2296,6826,'йюпюлтхк',10);
INSERT INTO `n_nm` VALUES (2297,7163,'йюпюм бзпанбйю',19);
INSERT INTO `n_nm` VALUES (2298,8839,'йюпюмдхкю',21);
INSERT INTO `n_nm` VALUES (2299,5094,'йюпюмдхкх',5);
INSERT INTO `n_nm` VALUES (2300,8532,'йюпюмнбн',2);
INSERT INTO `n_nm` VALUES (2301,8934,'йюпюмнбн',21);
INSERT INTO `n_nm` VALUES (2302,5188,'йюпюмжх',5);
INSERT INTO `n_nm` VALUES (2303,9390,'йюпюоекхр',9);
INSERT INTO `n_nm` VALUES (2304,2118,'йюпюонкжх',23);
INSERT INTO `n_nm` VALUES (2305,3136,'йюпюь',7);
INSERT INTO `n_nm` VALUES (2306,3923,'йюпахмжх',6);
INSERT INTO `n_nm` VALUES (2307,9619,'йюпбсмю',9);
INSERT INTO `n_nm` VALUES (2308,9530,'йюпдюл',9);
INSERT INTO `n_nm` VALUES (2309,7830,'йюпдюл',26);
INSERT INTO `n_nm` VALUES (2310,2088,'йюпкхебн',23);
INSERT INTO `n_nm` VALUES (2311,4300,'йюпкнбн',17);
INSERT INTO `n_nm` VALUES (2312,6572,'йюпкнбяйн',27);
INSERT INTO `n_nm` VALUES (2313,5782,'йюпксйнбн',12);
INSERT INTO `n_nm` VALUES (2314,8400,'йюпмнаюр',2);
INSERT INTO `n_nm` VALUES (2315,4921,'йюяюояйн',22);
INSERT INTO `n_nm` VALUES (2316,2424,'йюяхкюц',15);
INSERT INTO `n_nm` VALUES (2317,6439,'йюямюйнбн',27);
INSERT INTO `n_nm` VALUES (2318,9930,'йюяохвюм',28);
INSERT INTO `n_nm` VALUES (2319,9931,'йюяохвюм-яекн',28);
INSERT INTO `n_nm` VALUES (2320,5472,'йюярек',8);
INSERT INTO `n_nm` VALUES (2321,5894,'йюрепхмю',16);
INSERT INTO `n_nm` VALUES (2322,5392,'йюрпюмдфхх',8);
INSERT INTO `n_nm` VALUES (2323,4739,'йюрпюмхжю',22);
INSERT INTO `n_nm` VALUES (2324,2537,'йюрпхые',11);
INSERT INTO `n_nm` VALUES (2325,5569,'йюрсмеж',12);
INSERT INTO `n_nm` VALUES (2326,4120,'йюрсмхжю',17);
INSERT INTO `n_nm` VALUES (2327,8991,'йюрсмхые',21);
INSERT INTO `n_nm` VALUES (2328,2830,'йюрсмжх',1);
INSERT INTO `n_nm` VALUES (2329,7160,'йюжекнбн',19);
INSERT INTO `n_nm` VALUES (2330,6907,'йювскйю',10);
INSERT INTO `n_nm` VALUES (2331,5351,'йюьемжх',8);
INSERT INTO `n_nm` VALUES (2332,2820,'йюьхмю',1);
INSERT INTO `n_nm` VALUES (2333,6863,'йюъкнаю',10);
INSERT INTO `n_nm` VALUES (2334,5388,'йепейю',8);
INSERT INTO `n_nm` VALUES (2335,5365,'йепемхре',8);
INSERT INTO `n_nm` VALUES (2336,8870,'йеплем',21);
INSERT INTO `n_nm` VALUES (2337,5161,'йеяюпебн',5);
INSERT INTO `n_nm` VALUES (2338,4828,'йеярем',22);
INSERT INTO `n_nm` VALUES (2339,7973,'йеяремнбн',26);
INSERT INTO `n_nm` VALUES (2340,5345,'йхебжх',8);
INSERT INTO `n_nm` VALUES (2341,5050,'йхкхтюпебн',5);
INSERT INTO `n_nm` VALUES (2342,8998,'йхохкнбн',21);
INSERT INTO `n_nm` VALUES (2343,9169,'йхопю',3);
INSERT INTO `n_nm` VALUES (2344,5094,'йхпебжх',5);
INSERT INTO `n_nm` VALUES (2345,3823,'йхпеебн',6);
INSERT INTO `n_nm` VALUES (2346,8741,'йхпхкнбн',29);
INSERT INTO `n_nm` VALUES (2347,6064,'йхпхкнбн',25);
INSERT INTO `n_nm` VALUES (2348,5539,'йхпйнбю люуюкю',12);
INSERT INTO `n_nm` VALUES (2349,6884,'йхпйнбн',10);
INSERT INTO `n_nm` VALUES (2350,8344,'йхпнбн',2);
INSERT INTO `n_nm` VALUES (2351,5521,'йхпвебн',12);
INSERT INTO `n_nm` VALUES (2352,3675,'йхяекебн',13);
INSERT INTO `n_nm` VALUES (2353,2556,'йхяекхжю',11);
INSERT INTO `n_nm` VALUES (2354,4765,'йхяекхвебн',22);
INSERT INTO `n_nm` VALUES (2355,5360,'йхяекйнбжх',8);
INSERT INTO `n_nm` VALUES (2356,5365,'йхяхижхре',8);
INSERT INTO `n_nm` VALUES (2357,5035,'йхяэнбжх',5);
INSERT INTO `n_nm` VALUES (2358,7430,'йхрюмвебн',18);
INSERT INTO `n_nm` VALUES (2359,9241,'йхрем',3);
INSERT INTO `n_nm` VALUES (2360,8284,'йхрем',2);
INSERT INTO `n_nm` VALUES (2361,7993,'йхрхмн',26);
INSERT INTO `n_nm` VALUES (2362,9127,'йхрйю',3);
INSERT INTO `n_nm` VALUES (2363,8558,'йхрйю',2);
INSERT INTO `n_nm` VALUES (2364,6868,'йхрмю',10);
INSERT INTO `n_nm` VALUES (2365,6791,'йхрмхжю',10);
INSERT INTO `n_nm` VALUES (2366,9151,'йхвебн',3);
INSERT INTO `n_nm` VALUES (2367,7243,'йхвемхжю',18);
INSERT INTO `n_nm` VALUES (2368,6395,'йкюдемеж',27);
INSERT INTO `n_nm` VALUES (2369,9816,'йкюдемеж',28);
INSERT INTO `n_nm` VALUES (2370,2895,'йкюдемжх',1);
INSERT INTO `n_nm` VALUES (2371,9497,'йкюдемжх',9);
INSERT INTO `n_nm` VALUES (2372,5046,'йкюдмх дък',5);
INSERT INTO `n_nm` VALUES (2373,2347,'йкюдмхжю',15);
INSERT INTO `n_nm` VALUES (2374,3758,'йкюднпса',6);
INSERT INTO `n_nm` VALUES (2375,2421,'йкемнбхй',15);
INSERT INTO `n_nm` VALUES (2376,2837,'йкеоюкнрн',1);
INSERT INTO `n_nm` VALUES (2377,8427,'йкхйюв',2);
INSERT INTO `n_nm` VALUES (2378,8442,'йкхлюь',2);
INSERT INTO `n_nm` VALUES (2379,9970,'йкхлемр',28);
INSERT INTO `n_nm` VALUES (2380,4348,'йкхлемр',17);
INSERT INTO `n_nm` VALUES (2381,9150,'йкхлемрнбн',3);
INSERT INTO `n_nm` VALUES (2382,5183,'йкхлемрнбн',5);
INSERT INTO `n_nm` VALUES (2383,1320,'йкхяспю',24);
INSERT INTO `n_nm` VALUES (2384,2738,'йкхяспю',1);
INSERT INTO `n_nm` VALUES (2385,4341,'йкхяспю',17);
INSERT INTO `n_nm` VALUES (2386,2026,'йкхяспю',23);
INSERT INTO `n_nm` VALUES (2387,3483,'йкхяспхжю',13);
INSERT INTO `n_nm` VALUES (2388,3543,'йкхяспяйх люмюярхп',13);
INSERT INTO `n_nm` VALUES (2389,6310,'йкнйнрмхжю',27);
INSERT INTO `n_nm` VALUES (2390,5035,'йкзьйю пейю',5);
INSERT INTO `n_nm` VALUES (2391,2899,'йкчв',1);
INSERT INTO `n_nm` VALUES (2392,5340,'йлернбжх',8);
INSERT INTO `n_nm` VALUES (2393,5343,'йлерверю',8);
INSERT INTO `n_nm` VALUES (2394,3230,'ймефю',7);
INSERT INTO `n_nm` VALUES (2395,6390,'ймхфнбмхй',27);
INSERT INTO `n_nm` VALUES (2396,3677,'ймъфебю люуюкю',13);
INSERT INTO `n_nm` VALUES (2397,6566,'ймъфебн',27);
INSERT INTO `n_nm` VALUES (2398,6077,'ймъфебяйн',25);
INSERT INTO `n_nm` VALUES (2399,6593,'йнахкхмн',27);
INSERT INTO `n_nm` VALUES (2400,3442,'йнахкъй',13);
INSERT INTO `n_nm` VALUES (2401,6734,'йнахкъме',10);
INSERT INTO `n_nm` VALUES (2402,6272,'йнбюв',25);
INSERT INTO `n_nm` VALUES (2403,7852,'йнбювебеж',26);
INSERT INTO `n_nm` VALUES (2404,2969,'йнбювебхжю',1);
INSERT INTO `n_nm` VALUES (2405,6264,'йнбювебн',25);
INSERT INTO `n_nm` VALUES (2406,2824,'йнбювебн',1);
INSERT INTO `n_nm` VALUES (2407,4477,'йнбювебн',14);
INSERT INTO `n_nm` VALUES (2408,2450,'йнбювебжх',15);
INSERT INTO `n_nm` VALUES (2409,2023,'йнбювебжх',23);
INSERT INTO `n_nm` VALUES (2410,8874,'йнбювхре',21);
INSERT INTO `n_nm` VALUES (2411,3643,'йнбювхжю',13);
INSERT INTO `n_nm` VALUES (2412,6913,'йнбхк',10);
INSERT INTO `n_nm` VALUES (2413,5241,'йнебжх',5);
INSERT INTO `n_nm` VALUES (2414,5365,'йнебжх',8);
INSERT INTO `n_nm` VALUES (2415,4813,'йнфюпх',22);
INSERT INTO `n_nm` VALUES (2416,2487,'йнфхмжх',15);
INSERT INTO `n_nm` VALUES (2417,5097,'йнфкчбжх',5);
INSERT INTO `n_nm` VALUES (2418,6957,'йнфсуюпжх',10);
INSERT INTO `n_nm` VALUES (2419,4248,'йнгюмнбн',17);
INSERT INTO `n_nm` VALUES (2420,5915,'йнгюп аекеме',16);
INSERT INTO `n_nm` VALUES (2421,8493,'йнгюпе',2);
INSERT INTO `n_nm` VALUES (2422,5148,'йнгюпебеж',5);
INSERT INTO `n_nm` VALUES (2423,6070,'йнгюпебеж',25);
INSERT INTO `n_nm` VALUES (2424,8674,'йнгюпебн',29);
INSERT INTO `n_nm` VALUES (2425,4983,'йнгюпйю',22);
INSERT INTO `n_nm` VALUES (2426,4584,'йнгюпяйн',14);
INSERT INTO `n_nm` VALUES (2427,5344,'йнгх пнц',8);
INSERT INTO `n_nm` VALUES (2428,8843,'йнгхм днк',21);
INSERT INTO `n_nm` VALUES (2429,6848,'йнгхжю',10);
INSERT INTO `n_nm` VALUES (2430,7833,'йнгхжю',26);
INSERT INTO `n_nm` VALUES (2431,8224,'йнгхвхмн',2);
INSERT INTO `n_nm` VALUES (2432,6865,'йнгкебн',10);
INSERT INTO `n_nm` VALUES (2433,6371,'йнгкеж',27);
INSERT INTO `n_nm` VALUES (2434,5290,'йнгкнбеж',5);
INSERT INTO `n_nm` VALUES (2435,3320,'йнгкндси',7);
INSERT INTO `n_nm` VALUES (2436,9387,'йнгкндсижх',9);
INSERT INTO `n_nm` VALUES (2437,7913,'йнглю опегбхреп',26);
INSERT INTO `n_nm` VALUES (2438,8255,'йнгмхжю',2);
INSERT INTO `n_nm` VALUES (2439,5080,'йнгъ пейю',5);
INSERT INTO `n_nm` VALUES (2440,7673,'йнгъй',20);
INSERT INTO `n_nm` VALUES (2441,5842,'йнхкнбжх',16);
INSERT INTO `n_nm` VALUES (2442,5986,'йнимюпе',16);
INSERT INTO `n_nm` VALUES (2443,5350,'йнивнбжх',8);
INSERT INTO `n_nm` VALUES (2444,1191,'йнйюкъме',23);
INSERT INTO `n_nm` VALUES (2445,6676,'йнйхве',10);
INSERT INTO `n_nm` VALUES (2446,4963,'йнйнпю',22);
INSERT INTO `n_nm` VALUES (2447,4725,'йнйнпйнбн',22);
INSERT INTO `n_nm` VALUES (2448,4971,'йнйнпжх',22);
INSERT INTO `n_nm` VALUES (2449,6733,'йнйньюме',10);
INSERT INTO `n_nm` VALUES (2450,5084,'йнкюпх',5);
INSERT INTO `n_nm` VALUES (2451,7613,'йнкюпнбн',20);
INSERT INTO `n_nm` VALUES (2452,2880,'йнкюпнбн',1);
INSERT INTO `n_nm` VALUES (2453,6271,'йнкюпнбн',25);
INSERT INTO `n_nm` VALUES (2454,6460,'йнкюпнбн',27);
INSERT INTO `n_nm` VALUES (2455,9481,'йнкюпжх',9);
INSERT INTO `n_nm` VALUES (2456,6050,'йнкемю',25);
INSERT INTO `n_nm` VALUES (2457,6376,'йнкеж',27);
INSERT INTO `n_nm` VALUES (2458,2838,'йнкхахре',1);
INSERT INTO `n_nm` VALUES (2459,5343,'йнкхьнбжх',8);
INSERT INTO `n_nm` VALUES (2460,7675,'йнкназп',20);
INSERT INTO `n_nm` VALUES (2461,5360,'йнкч цюмеб',8);
INSERT INTO `n_nm` VALUES (2462,6237,'йнкч люпхмнбн',25);
INSERT INTO `n_nm` VALUES (2463,3516,'йнлюпебн',13);
INSERT INTO `n_nm` VALUES (2464,3247,'йнлюпебн',7);
INSERT INTO `n_nm` VALUES (2465,5853,'йнлюпебн',16);
INSERT INTO `n_nm` VALUES (2466,9269,'йнлюпебн',3);
INSERT INTO `n_nm` VALUES (2467,3648,'йнлныхжю',13);
INSERT INTO `n_nm` VALUES (2468,9254,'йнлсмюпх',3);
INSERT INTO `n_nm` VALUES (2469,6690,'йнлсмхцю',10);
INSERT INTO `n_nm` VALUES (2470,2255,'йнлыхжю',23);
INSERT INTO `n_nm` VALUES (2471,7868,'йнмюй',26);
INSERT INTO `n_nm` VALUES (2472,9548,'йнмюпе',9);
INSERT INTO `n_nm` VALUES (2473,6189,'йнмюпе',25);
INSERT INTO `n_nm` VALUES (2474,2792,'йнмюпяйн',1);
INSERT INTO `n_nm` VALUES (2475,5364,'йнмюпяйнрн',8);
INSERT INTO `n_nm` VALUES (2476,6593,'йнмднбн',27);
INSERT INTO `n_nm` VALUES (2477,8275,'йнмднкнбн',2);
INSERT INTO `n_nm` VALUES (2478,2422,'йнмднтпеи',15);
INSERT INTO `n_nm` VALUES (2479,8623,'йнмебеж',29);
INSERT INTO `n_nm` VALUES (2480,9887,'йнмебн',28);
INSERT INTO `n_nm` VALUES (2481,7442,'йнмебн',18);
INSERT INTO `n_nm` VALUES (2482,6661,'йнмебн',10);
INSERT INTO `n_nm` VALUES (2483,6588,'йнммхжх',27);
INSERT INTO `n_nm` VALUES (2484,7995,'йнмно',26);
INSERT INTO `n_nm` VALUES (2485,2379,'йнмяйю',15);
INSERT INTO `n_nm` VALUES (2486,5080,'йнмярюмрхм',5);
INSERT INTO `n_nm` VALUES (2487,6267,'йнмярюмрхмнбеж',25);
INSERT INTO `n_nm` VALUES (2488,9180,'йнмярюмрхмнбн',3);
INSERT INTO `n_nm` VALUES (2489,8129,'йнмярюмрхмнбн',2);
INSERT INTO `n_nm` VALUES (2490,6494,'йнмярюмрхмнбн',27);
INSERT INTO `n_nm` VALUES (2491,6841,'йнмрхк',10);
INSERT INTO `n_nm` VALUES (2492,4268,'йнмсь',17);
INSERT INTO `n_nm` VALUES (2493,6370,'йнмсь',27);
INSERT INTO `n_nm` VALUES (2494,6828,'йнмве',10);
INSERT INTO `n_nm` VALUES (2495,9748,'йнмэнбеж',28);
INSERT INTO `n_nm` VALUES (2496,2085,'йнмэнбхжю',23);
INSERT INTO `n_nm` VALUES (2497,8920,'йнмэнбн',21);
INSERT INTO `n_nm` VALUES (2498,2540,'йнмъбн',11);
INSERT INTO `n_nm` VALUES (2499,2409,'йноюмхжю',15);
INSERT INTO `n_nm` VALUES (2500,3467,'йнохкнбжх',13);
INSERT INTO `n_nm` VALUES (2501,2543,'йнохкнбжх',11);
INSERT INTO `n_nm` VALUES (2502,6698,'йнохрмхй',10);
INSERT INTO `n_nm` VALUES (2503,7775,'йнопеж',26);
INSERT INTO `n_nm` VALUES (2504,2567,'йнопхбю',11);
INSERT INTO `n_nm` VALUES (2505,7120,'йнопхбеж',19);
INSERT INTO `n_nm` VALUES (2506,2921,'йнопхбкем',1);
INSERT INTO `n_nm` VALUES (2507,2077,'йнопхбыхжю',23);
INSERT INTO `n_nm` VALUES (2508,6137,'йнопхмйю',25);
INSERT INTO `n_nm` VALUES (2509,5342,'йновекххре',8);
INSERT INTO `n_nm` VALUES (2510,6392,'йнпем',27);
INSERT INTO `n_nm` VALUES (2511,4921,'йнпххре',22);
INSERT INTO `n_nm` VALUES (2512,4976,'йнпхрюрю',22);
INSERT INTO `n_nm` VALUES (2513,9403,'йнпхрем',9);
INSERT INTO `n_nm` VALUES (2514,5455,'йнпхърю',8);
INSERT INTO `n_nm` VALUES (2515,2688,'йнпйхмю',11);
INSERT INTO `n_nm` VALUES (2516,5433,'йнплъмяйн',8);
INSERT INTO `n_nm` VALUES (2517,2970,'йнпмхжю',1);
INSERT INTO `n_nm` VALUES (2518,8930,'йнпрем',21);
INSERT INTO `n_nm` VALUES (2519,6820,'йня',10);
INSERT INTO `n_nm` VALUES (2520,7612,'йняюпю',20);
INSERT INTO `n_nm` VALUES (2521,5392,'йняюпйю',8);
INSERT INTO `n_nm` VALUES (2522,2448,'йняювю',15);
INSERT INTO `n_nm` VALUES (2523,5095,'йняебжх',5);
INSERT INTO `n_nm` VALUES (2524,5380,'йняхкйю',8);
INSERT INTO `n_nm` VALUES (2525,8223,'йнянбеж',2);
INSERT INTO `n_nm` VALUES (2526,4240,'йнянбн',17);
INSERT INTO `n_nm` VALUES (2527,3794,'йнянбн',6);
INSERT INTO `n_nm` VALUES (2528,9974,'йнянбн',28);
INSERT INTO `n_nm` VALUES (2529,2557,'йнянбн',11);
INSERT INTO `n_nm` VALUES (2530,3833,'йнярю оепвебн',6);
INSERT INTO `n_nm` VALUES (2531,5301,'йнярюдхмхре',8);
INSERT INTO `n_nm` VALUES (2532,2060,'йнярюдхмйхмн',23);
INSERT INTO `n_nm` VALUES (2533,7273,'йнярюмдемеж',18);
INSERT INTO `n_nm` VALUES (2534,4644,'йнярюмднбн',14);
INSERT INTO `n_nm` VALUES (2535,5099,'йнярек',5);
INSERT INTO `n_nm` VALUES (2536,3047,'йнярекебн',7);
INSERT INTO `n_nm` VALUES (2537,8441,'йнярем',2);
INSERT INTO `n_nm` VALUES (2538,9806,'йняремю пейю',28);
INSERT INTO `n_nm` VALUES (2539,2030,'йняремеж',23);
INSERT INTO `n_nm` VALUES (2540,2042,'йняремеж - ЯЕКН',23);
INSERT INTO `n_nm` VALUES (2541,5343,'йняремйнбжх',8);
INSERT INTO `n_nm` VALUES (2542,3518,'йняремжх',13);
INSERT INTO `n_nm` VALUES (2543,8283,'йнярх',2);
INSERT INTO `n_nm` VALUES (2544,4205,'йнярхебн',17);
INSERT INTO `n_nm` VALUES (2545,6593,'йнярхкйнбн',27);
INSERT INTO `n_nm` VALUES (2546,2230,'йнярхмапнд',23);
INSERT INTO `n_nm` VALUES (2547,6743,'йнярхмн',10);
INSERT INTO `n_nm` VALUES (2548,3755,'йнярхвнбжх',6);
INSERT INTO `n_nm` VALUES (2549,6533,'йнярсп',27);
INSERT INTO `n_nm` VALUES (2550,6884,'йнярспхмн',10);
INSERT INTO `n_nm` VALUES (2551,2489,'йнярспхмжх',15);
INSERT INTO `n_nm` VALUES (2552,8970,'йнрек',21);
INSERT INTO `n_nm` VALUES (2553,3522,'йнремнбжх',13);
INSERT INTO `n_nm` VALUES (2554,6957,'йнркюпх',10);
INSERT INTO `n_nm` VALUES (2555,9374,'йнркемжх',9);
INSERT INTO `n_nm` VALUES (2556,5097,'йнрсжх',5);
INSERT INTO `n_nm` VALUES (2557,2955,'йнвюм',1);
INSERT INTO `n_nm` VALUES (2558,4999,'йнвюмх',22);
INSERT INTO `n_nm` VALUES (2559,4119,'йнвебн',17);
INSERT INTO `n_nm` VALUES (2560,2640,'йнвепхмнбн',11);
INSERT INTO `n_nm` VALUES (2561,9477,'йнвлюп',9);
INSERT INTO `n_nm` VALUES (2562,9862,'йнвнбн',28);
INSERT INTO `n_nm` VALUES (2563,3771,'йньюбю',6);
INSERT INTO `n_nm` VALUES (2564,2390,'йньюпебн',15);
INSERT INTO `n_nm` VALUES (2565,2453,'йньюпхре',15);
INSERT INTO `n_nm` VALUES (2566,8253,'йньюпхжю',2);
INSERT INTO `n_nm` VALUES (2567,7062,'йньюпмю',19);
INSERT INTO `n_nm` VALUES (2568,4778,'йньмхжю',22);
INSERT INTO `n_nm` VALUES (2569,7783,'йньмхвюпх',18);
INSERT INTO `n_nm` VALUES (2570,7087,'йньнб',19);
INSERT INTO `n_nm` VALUES (2571,6075,'йпюбхмн',25);
INSERT INTO `n_nm` VALUES (2572,3048,'йпюбндеп',7);
INSERT INTO `n_nm` VALUES (2573,9418,'йпюцсебн',9);
INSERT INTO `n_nm` VALUES (2574,2149,'йпюебн',23);
INSERT INTO `n_nm` VALUES (2575,2781,'йпюхые',1);
INSERT INTO `n_nm` VALUES (2576,9535,'йпюхые',9);
INSERT INTO `n_nm` VALUES (2577,9875,'йпюицнпжх',28);
INSERT INTO `n_nm` VALUES (2578,4900,'йпюимю',22);
INSERT INTO `n_nm` VALUES (2579,2649,'йпюимх днк',11);
INSERT INTO `n_nm` VALUES (2580,2633,'йпюимхжх',11);
INSERT INTO `n_nm` VALUES (2581,6739,'йпюимн яекн',10);
INSERT INTO `n_nm` VALUES (2582,8752,'йпюимнбн',29);
INSERT INTO `n_nm` VALUES (2583,7997,'йпюионке',26);
INSERT INTO `n_nm` VALUES (2584,9287,'йпюйпю',3);
INSERT INTO `n_nm` VALUES (2585,2349,'йпюкебднк',15);
INSERT INTO `n_nm` VALUES (2586,6362,'йпюкебн',27);
INSERT INTO `n_nm` VALUES (2587,7770,'йпюкебн',26);
INSERT INTO `n_nm` VALUES (2588,4452,'йпюкх люпйн',14);
INSERT INTO `n_nm` VALUES (2589,5429,'йпюлнкхм',8);
INSERT INTO `n_nm` VALUES (2590,6898,'йпюм',10);
INSERT INTO `n_nm` VALUES (2591,9649,'йпюмебн',9);
INSERT INTO `n_nm` VALUES (2592,7549,'йпюмнбн',20);
INSERT INTO `n_nm` VALUES (2593,3149,'йпюоеж',7);
INSERT INTO `n_nm` VALUES (2594,9674,'йпюоеж',9);
INSERT INTO `n_nm` VALUES (2595,3434,'йпюовеме',13);
INSERT INTO `n_nm` VALUES (2596,2370,'йпюяюбю',15);
INSERT INTO `n_nm` VALUES (2597,9534,'йпюяем',9);
INSERT INTO `n_nm` VALUES (2598,7075,'йпюяем',19);
INSERT INTO `n_nm` VALUES (2599,9935,'йпюяем днк',28);
INSERT INTO `n_nm` VALUES (2600,9258,'йпюяхлхп',3);
INSERT INTO `n_nm` VALUES (2601,6962,'йпюяхмн',10);
INSERT INTO `n_nm` VALUES (2602,5242,'йпюямн цпюдхые',5);
INSERT INTO `n_nm` VALUES (2603,4178,'йпюямнбн',17);
INSERT INTO `n_nm` VALUES (2604,7925,'йпюямняекжх',26);
INSERT INTO `n_nm` VALUES (2605,3964,'йпювхлхп',6);
INSERT INTO `n_nm` VALUES (2606,2771,'йпелем',1);
INSERT INTO `n_nm` VALUES (2607,6884,'йпелем',10);
INSERT INTO `n_nm` VALUES (2608,9639,'йпелемю',9);
INSERT INTO `n_nm` VALUES (2609,4755,'йпелеме',22);
INSERT INTO `n_nm` VALUES (2610,6822,'йпелемеж',10);
INSERT INTO `n_nm` VALUES (2611,2653,'йпелемхй',11);
INSERT INTO `n_nm` VALUES (2612,6410,'йпеоняр',27);
INSERT INTO `n_nm` VALUES (2613,7845,'йпеовю',26);
INSERT INTO `n_nm` VALUES (2614,5367,'йпеякчбжх',8);
INSERT INTO `n_nm` VALUES (2615,2840,'йпеямю',1);
INSERT INTO `n_nm` VALUES (2616,5961,'йперю',16);
INSERT INTO `n_nm` VALUES (2617,3127,'йперю',7);
INSERT INTO `n_nm` VALUES (2618,2951,'йпхаск',1);
INSERT INTO `n_nm` VALUES (2619,3669,'йпхбю аюпю',13);
INSERT INTO `n_nm` VALUES (2620,3328,'йпхбю аюпю',7);
INSERT INTO `n_nm` VALUES (2621,8936,'йпхбю йпсью',21);
INSERT INTO `n_nm` VALUES (2622,9938,'йпхбю пейю',28);
INSERT INTO `n_nm` VALUES (2623,1588,'йпхбхмю',23);
INSERT INTO `n_nm` VALUES (2624,5747,'йпхбхмю',12);
INSERT INTO `n_nm` VALUES (2625,7132,'йпхбхмю',19);
INSERT INTO `n_nm` VALUES (2626,9123,'йпхбхмх',3);
INSERT INTO `n_nm` VALUES (2627,7456,'йпхбхжю',18);
INSERT INTO `n_nm` VALUES (2628,7269,'йпхбмъ',19);
INSERT INTO `n_nm` VALUES (2629,9217,'йпхбмъ',3);
INSERT INTO `n_nm` VALUES (2630,6387,'йпхбн онке',27);
INSERT INTO `n_nm` VALUES (2631,3060,'йпхбнднк',7);
INSERT INTO `n_nm` VALUES (2632,2386,'йпхбнмня',15);
INSERT INTO `n_nm` VALUES (2633,6884,'йпхкюрхжю',10);
INSERT INTO `n_nm` VALUES (2634,5097,'йпхкчбжх',5);
INSERT INTO `n_nm` VALUES (2635,6671,'йпхм',10);
INSERT INTO `n_nm` VALUES (2636,4148,'йпхякнбн',17);
INSERT INTO `n_nm` VALUES (2637,4220,'йпхвхл',17);
INSERT INTO `n_nm` VALUES (2638,2871,'йпнлхднбн',1);
INSERT INTO `n_nm` VALUES (2639,7278,'йпнъв',18);
INSERT INTO `n_nm` VALUES (2640,6766,'йпнъвебн',10);
INSERT INTO `n_nm` VALUES (2641,6438,'йпсл',27);
INSERT INTO `n_nm` VALUES (2642,6900,'йпслнбцпюд',10);
INSERT INTO `n_nm` VALUES (2643,9149,'йпслнбн',3);
INSERT INTO `n_nm` VALUES (2644,2627,'йпслнбн',11);
INSERT INTO `n_nm` VALUES (2645,4112,'йпслнбн',17);
INSERT INTO `n_nm` VALUES (2646,8649,'йпслнбн',29);
INSERT INTO `n_nm` VALUES (2647,8487,'йпслнбн цпюдхые',2);
INSERT INTO `n_nm` VALUES (2648,5080,'йпслвебжх',5);
INSERT INTO `n_nm` VALUES (2649,9667,'йпсоем',9);
INSERT INTO `n_nm` VALUES (2650,2740,'йпсомхй',1);
INSERT INTO `n_nm` VALUES (2651,9121,'йпсью',3);
INSERT INTO `n_nm` VALUES (2652,2213,'йпсью',23);
INSERT INTO `n_nm` VALUES (2653,8877,'йпсьюпе',21);
INSERT INTO `n_nm` VALUES (2654,9410,'йпсьюпх',9);
INSERT INTO `n_nm` VALUES (2655,4919,'йпсьеб днк-ОПНЛ.Я.',22);
INSERT INTO `n_nm` VALUES (2656,8148,'йпсьебеж',2);
INSERT INTO `n_nm` VALUES (2657,2945,'йпсьебн',1);
INSERT INTO `n_nm` VALUES (2658,4291,'йпсьебн',17);
INSERT INTO `n_nm` VALUES (2659,5427,'йпсьебн',8);
INSERT INTO `n_nm` VALUES (2660,6744,'йпсьебяйю',10);
INSERT INTO `n_nm` VALUES (2661,5134,'йпсьерн',5);
INSERT INTO `n_nm` VALUES (2662,6743,'йпсьйю',10);
INSERT INTO `n_nm` VALUES (2663,5860,'йпсьнбеме',16);
INSERT INTO `n_nm` VALUES (2664,5881,'йпсьнбхжю',16);
INSERT INTO `n_nm` VALUES (2665,2060,'йпсьнбхжю',23);
INSERT INTO `n_nm` VALUES (2666,3349,'йпсьнбхжю',7);
INSERT INTO `n_nm` VALUES (2667,8482,'йпсьнбн',2);
INSERT INTO `n_nm` VALUES (2668,4241,'йпсьнбн',17);
INSERT INTO `n_nm` VALUES (2669,7962,'йпсьнкюй',26);
INSERT INTO `n_nm` VALUES (2670,5561,'йпсьсмю',12);
INSERT INTO `n_nm` VALUES (2671,5460,'йпзбемхй',8);
INSERT INTO `n_nm` VALUES (2672,5744,'йпзйнфюаеме',12);
INSERT INTO `n_nm` VALUES (2673,6140,'йпзм',25);
INSERT INTO `n_nm` VALUES (2674,2875,'йпзмдфхкхжю',1);
INSERT INTO `n_nm` VALUES (2675,5370,'йпзмвю',8);
INSERT INTO `n_nm` VALUES (2676,4647,'йпзярюбю',14);
INSERT INTO `n_nm` VALUES (2677,4741,'йпзярюрхжю',22);
INSERT INTO `n_nm` VALUES (2678,4177,'йпзяребхв',17);
INSERT INTO `n_nm` VALUES (2679,5350,'йпзяремъжхре',8);
INSERT INTO `n_nm` VALUES (2680,5364,'йпзяреж',8);
INSERT INTO `n_nm` VALUES (2681,2805,'йпзярхкжх',1);
INSERT INTO `n_nm` VALUES (2682,8121,'йпзярхмю',2);
INSERT INTO `n_nm` VALUES (2683,7786,'йпзьмн',18);
INSERT INTO `n_nm` VALUES (2684,8335,'йсаюдхм',2);
INSERT INTO `n_nm` VALUES (2685,7300,'йсапюр',18);
INSERT INTO `n_nm` VALUES (2686,1257,'йсапюрнбн',23);
INSERT INTO `n_nm` VALUES (2687,3798,'йсдекхм',6);
INSERT INTO `n_nm` VALUES (2688,2788,'йсгэнбн',1);
INSERT INTO `n_nm` VALUES (2689,4101,'йсйкем',17);
INSERT INTO `n_nm` VALUES (2690,5370,'йсйкъ',8);
INSERT INTO `n_nm` VALUES (2691,8673,'йсйнпебн',29);
INSERT INTO `n_nm` VALUES (2692,4710,'йсйсбхжю',22);
INSERT INTO `n_nm` VALUES (2693,6898,'йсйспъй',10);
INSERT INTO `n_nm` VALUES (2694,2882,'йсйспъужебн',1);
INSERT INTO `n_nm` VALUES (2695,3800,'йскю',6);
INSERT INTO `n_nm` VALUES (2696,2868,'йскюрю',1);
INSERT INTO `n_nm` VALUES (2697,5937,'йскхмю бндю',16);
INSERT INTO `n_nm` VALUES (2698,5380,'йслюмхре',8);
INSERT INTO `n_nm` VALUES (2699,9153,'йслюмнбн',3);
INSERT INTO `n_nm` VALUES (2700,4990,'йсмдебн',22);
INSERT INTO `n_nm` VALUES (2701,8646,'йсмебн',29);
INSERT INTO `n_nm` VALUES (2702,3140,'йсмхмн',7);
INSERT INTO `n_nm` VALUES (2703,4921,'йсоем',22);
INSERT INTO `n_nm` VALUES (2704,5463,'йсоем',8);
INSERT INTO `n_nm` VALUES (2705,6839,'йсожхре',10);
INSERT INTO `n_nm` VALUES (2706,3138,'йспмнбн',7);
INSERT INTO `n_nm` VALUES (2707,4369,'йспрнбн',17);
INSERT INTO `n_nm` VALUES (2708,4223,'йспрнбн йнмюпе',17);
INSERT INTO `n_nm` VALUES (2709,4752,'йсрекю',22);
INSERT INTO `n_nm` VALUES (2710,7558,'йсркнбхжю',20);
INSERT INTO `n_nm` VALUES (2711,3767,'йсрнбн',6);
INSERT INTO `n_nm` VALUES (2712,2567,'йсрсцепжх',11);
INSERT INTO `n_nm` VALUES (2713,5042,'йсжюпнбжх',5);
INSERT INTO `n_nm` VALUES (2714,5189,'йсжхмю',5);
INSERT INTO `n_nm` VALUES (2715,6697,'йсжнбн',10);
INSERT INTO `n_nm` VALUES (2716,4986,'йськю',22);
INSERT INTO `n_nm` VALUES (2717,6927,'йзйкхжю',10);
INSERT INTO `n_nm` VALUES (2718,5544,'йзйпхмю',12);
INSERT INTO `n_nm` VALUES (2719,9821,'йзкмнбн',28);
INSERT INTO `n_nm` VALUES (2720,6164,'йзмвебн',25);
INSERT INTO `n_nm` VALUES (2721,7997,'йзохмеж',26);
INSERT INTO `n_nm` VALUES (2722,5043,'йзохмнбн',5);
INSERT INTO `n_nm` VALUES (2723,9528,'йзохмнбн',9);
INSERT INTO `n_nm` VALUES (2724,7434,'йзохмнбжх',18);
INSERT INTO `n_nm` VALUES (2725,6600,'йзпдфюкх',10);
INSERT INTO `n_nm` VALUES (2726,2820,'йзпкюмнбн',1);
INSERT INTO `n_nm` VALUES (2727,2860,'йзпмюкнбн',1);
INSERT INTO `n_nm` VALUES (2728,4337,'йзпмюпе',17);
INSERT INTO `n_nm` VALUES (2729,5558,'йзпоювебн',12);
INSERT INTO `n_nm` VALUES (2730,2825,'йзпоекнбн',1);
INSERT INTO `n_nm` VALUES (2731,5380,'йзпрхозмъ',8);
INSERT INTO `n_nm` VALUES (2732,5883,'йзпрнфюаеме',16);
INSERT INTO `n_nm` VALUES (2733,6873,'йзпвнбяйн',10);
INSERT INTO `n_nm` VALUES (2734,2563,'йзпьюкебн',11);
INSERT INTO `n_nm` VALUES (2735,4832,'йзяюй',22);
INSERT INTO `n_nm` VALUES (2736,1276,'йзрхмю',23);
INSERT INTO `n_nm` VALUES (2737,5885,'йзьхм',16);
INSERT INTO `n_nm` VALUES (2738,2492,'йзьке',15);
INSERT INTO `n_nm` VALUES (2739,9888,'йэнклем',28);
INSERT INTO `n_nm` VALUES (2740,6728,'йэняебн',10);
INSERT INTO `n_nm` VALUES (2741,7951,'йэняебжх',26);
INSERT INTO `n_nm` VALUES (2742,9972,'йчкебвю',28);
INSERT INTO `n_nm` VALUES (2743,2500,'йчяремдхк',11);
INSERT INTO `n_nm` VALUES (2744,5035,'кюцепхре',5);
INSERT INTO `n_nm` VALUES (2745,3743,'кюцньебжх',6);
INSERT INTO `n_nm` VALUES (2746,2811,'кюдюпебн',1);
INSERT INTO `n_nm` VALUES (2747,3262,'кюгюпнбн',7);
INSERT INTO `n_nm` VALUES (2748,5097,'кюгюпжх',5);
INSERT INTO `n_nm` VALUES (2749,5656,'кюйюпебн',12);
INSERT INTO `n_nm` VALUES (2750,2273,'кюйюрмхй',23);
INSERT INTO `n_nm` VALUES (2751,6823,'кюке',10);
INSERT INTO `n_nm` VALUES (2752,8749,'кюкйнбн',29);
INSERT INTO `n_nm` VALUES (2753,6583,'кюласу',27);
INSERT INTO `n_nm` VALUES (2754,5876,'кюяйюп',16);
INSERT INTO `n_nm` VALUES (2755,2811,'кюяйюпебн',1);
INSERT INTO `n_nm` VALUES (2756,6767,'кюрхмйю',10);
INSERT INTO `n_nm` VALUES (2757,6859,'кеаед',10);
INSERT INTO `n_nm` VALUES (2758,2806,'кеамхжю',1);
INSERT INTO `n_nm` VALUES (2759,2494,'кебю пейю',15);
INSERT INTO `n_nm` VALUES (2760,6540,'кебйю',27);
INSERT INTO `n_nm` VALUES (2761,4743,'кебнвебн',22);
INSERT INTO `n_nm` VALUES (2762,5900,'кебяйх',16);
INSERT INTO `n_nm` VALUES (2763,4535,'кебяйх',14);
INSERT INTO `n_nm` VALUES (2764,9171,'кебяйх',3);
INSERT INTO `n_nm` VALUES (2765,2817,'кебсмнбн',1);
INSERT INTO `n_nm` VALUES (2766,5049,'кедемхй',5);
INSERT INTO `n_nm` VALUES (2767,3036,'кедемхйю',7);
INSERT INTO `n_nm` VALUES (2768,2588,'кекхмжх',11);
INSERT INTO `n_nm` VALUES (2769,6783,'кемхые',10);
INSERT INTO `n_nm` VALUES (2770,5967,'кемйнбн',16);
INSERT INTO `n_nm` VALUES (2771,4286,'кемнбн',17);
INSERT INTO `n_nm` VALUES (2772,6595,'кемяйн',27);
INSERT INTO `n_nm` VALUES (2773,5987,'кеохжю',16);
INSERT INTO `n_nm` VALUES (2774,5520,'кеяхдпем',12);
INSERT INTO `n_nm` VALUES (2775,5343,'кеяхвюпйю',8);
INSERT INTO `n_nm` VALUES (2776,5085,'кеяхве',5);
INSERT INTO `n_nm` VALUES (2777,5222,'кеяхвепх',5);
INSERT INTO `n_nm` VALUES (2778,4463,'кеяхвнбн',14);
INSERT INTO `n_nm` VALUES (2779,2567,'кеяйю',11);
INSERT INTO `n_nm` VALUES (2780,4928,'кеяйю',22);
INSERT INTO `n_nm` VALUES (2781,2268,'кеяйнбднк',23);
INSERT INTO `n_nm` VALUES (2782,3523,'кеяйнбеж',13);
INSERT INTO `n_nm` VALUES (2783,3341,'кеяйнбеж',7);
INSERT INTO `n_nm` VALUES (2784,2342,'кеяйнбеж',15);
INSERT INTO `n_nm` VALUES (2785,9428,'кеяйнбн',9);
INSERT INTO `n_nm` VALUES (2786,2119,'кеямнбн',23);
INSERT INTO `n_nm` VALUES (2787,8754,'кеянбн',29);
INSERT INTO `n_nm` VALUES (2788,3073,'кеяспю',7);
INSERT INTO `n_nm` VALUES (2789,2207,'кермхжю',23);
INSERT INTO `n_nm` VALUES (2790,5570,'кермхжю',12);
INSERT INTO `n_nm` VALUES (2791,6810,'кернбмхй',10);
INSERT INTO `n_nm` VALUES (2792,2816,'кеунбн',1);
INSERT INTO `n_nm` VALUES (2793,3445,'кеувебн',13);
INSERT INTO `n_nm` VALUES (2794,2749,'кеьйн',1);
INSERT INTO `n_nm` VALUES (2795,5624,'кеьйн опеянх',12);
INSERT INTO `n_nm` VALUES (2796,6466,'кеьмхйнбн',27);
INSERT INTO `n_nm` VALUES (2797,2481,'кеьмхйнбжх',15);
INSERT INTO `n_nm` VALUES (2798,5578,'кеьмхжю',12);
INSERT INTO `n_nm` VALUES (2799,2808,'кеьмхжю',1);
INSERT INTO `n_nm` VALUES (2800,4929,'кеыюй',22);
INSERT INTO `n_nm` VALUES (2801,6967,'кеыюпйю',10);
INSERT INTO `n_nm` VALUES (2802,2962,'кеыем',1);
INSERT INTO `n_nm` VALUES (2803,8656,'кеъпнбн',29);
INSERT INTO `n_nm` VALUES (2804,8107,'кхбюдю',2);
INSERT INTO `n_nm` VALUES (2805,4921,'кхбюде',22);
INSERT INTO `n_nm` VALUES (2806,3168,'кхй',7);
INSERT INTO `n_nm` VALUES (2807,4858,'кхкейнбн',22);
INSERT INTO `n_nm` VALUES (2808,4105,'кхкйнбн',17);
INSERT INTO `n_nm` VALUES (2809,7760,'кхкъй',26);
INSERT INTO `n_nm` VALUES (2810,2809,'кхкъмнбн',1);
INSERT INTO `n_nm` VALUES (2811,2597,'кхкъв',11);
INSERT INTO `n_nm` VALUES (2812,3051,'кхкъве',7);
INSERT INTO `n_nm` VALUES (2813,6936,'кхлеж',10);
INSERT INTO `n_nm` VALUES (2814,3489,'кхоем',13);
INSERT INTO `n_nm` VALUES (2815,4784,'кхоеж',22);
INSERT INTO `n_nm` VALUES (2816,2212,'кхохмжх',23);
INSERT INTO `n_nm` VALUES (2817,7242,'кхомхй',18);
INSERT INTO `n_nm` VALUES (2818,2158,'кхомхжю',23);
INSERT INTO `n_nm` VALUES (2819,3352,'кхомхжю',7);
INSERT INTO `n_nm` VALUES (2820,2547,'кхяеж',11);
INSERT INTO `n_nm` VALUES (2821,5568,'кхяеж',12);
INSERT INTO `n_nm` VALUES (2822,2023,'кхяеж',23);
INSERT INTO `n_nm` VALUES (2823,9951,'кхях бпзу',28);
INSERT INTO `n_nm` VALUES (2824,6645,'кхяхжхре',10);
INSERT INTO `n_nm` VALUES (2825,2743,'кхяхъ',1);
INSERT INTO `n_nm` VALUES (2826,6541,'кхянбн',27);
INSERT INTO `n_nm` VALUES (2827,7642,'кхяреж',20);
INSERT INTO `n_nm` VALUES (2828,8573,'кхяреж',2);
INSERT INTO `n_nm` VALUES (2829,2144,'кхрюйнбн',23);
INSERT INTO `n_nm` VALUES (2830,2433,'кнань',15);
INSERT INTO `n_nm` VALUES (2831,9869,'кнбеж',28);
INSERT INTO `n_nm` VALUES (2832,6070,'кнбеж',25);
INSERT INTO `n_nm` VALUES (2833,7741,'кнбеж',26);
INSERT INTO `n_nm` VALUES (2834,5500,'кнбев',12);
INSERT INTO `n_nm` VALUES (2835,5423,'кнбмхднк',8);
INSERT INTO `n_nm` VALUES (2836,7291,'кнбяйн',18);
INSERT INTO `n_nm` VALUES (2837,4908,'кнбжх',22);
INSERT INTO `n_nm` VALUES (2838,9430,'кнбвюмжх',9);
INSERT INTO `n_nm` VALUES (2839,2737,'кнцндюф',1);
INSERT INTO `n_nm` VALUES (2840,5345,'кнгю',8);
INSERT INTO `n_nm` VALUES (2841,8440,'кнгюпебн',2);
INSERT INTO `n_nm` VALUES (2842,9746,'кнгебн',28);
INSERT INTO `n_nm` VALUES (2843,6552,'кнгем',27);
INSERT INTO `n_nm` VALUES (2844,1151,'кнгем',23);
INSERT INTO `n_nm` VALUES (2845,4489,'кнгем',14);
INSERT INTO `n_nm` VALUES (2846,6062,'кнгем',25);
INSERT INTO `n_nm` VALUES (2847,5172,'кнгем',5);
INSERT INTO `n_nm` VALUES (2848,6894,'кнгемцпюджх',10);
INSERT INTO `n_nm` VALUES (2849,9414,'кнгемеж',9);
INSERT INTO `n_nm` VALUES (2850,8688,'кнгемеж',29);
INSERT INTO `n_nm` VALUES (2851,8277,'кнгемеж',2);
INSERT INTO `n_nm` VALUES (2852,2821,'кнгемхжю',1);
INSERT INTO `n_nm` VALUES (2853,5739,'кнгерн',12);
INSERT INTO `n_nm` VALUES (2854,5954,'кнгхжю',16);
INSERT INTO `n_nm` VALUES (2855,8466,'кнгхжю',2);
INSERT INTO `n_nm` VALUES (2856,9541,'кнгмхжю',9);
INSERT INTO `n_nm` VALUES (2857,7290,'кнгмхжю',18);
INSERT INTO `n_nm` VALUES (2858,2507,'кнгмн',11);
INSERT INTO `n_nm` VALUES (2859,2656,'кнйбюрю',11);
INSERT INTO `n_nm` VALUES (2860,1513,'кнйнпяйн',23);
INSERT INTO `n_nm` VALUES (2861,3600,'кнл',13);
INSERT INTO `n_nm` VALUES (2862,7135,'кнл вепйнбмю',19);
INSERT INTO `n_nm` VALUES (2863,5669,'кнлеж',12);
INSERT INTO `n_nm` VALUES (2864,9397,'кнлмхжю',9);
INSERT INTO `n_nm` VALUES (2865,2562,'кнлмхжю',11);
INSERT INTO `n_nm` VALUES (2866,2465,'кнлмхжю',15);
INSERT INTO `n_nm` VALUES (2867,7838,'кнлжх',26);
INSERT INTO `n_nm` VALUES (2868,9237,'кносьмю',3);
INSERT INTO `n_nm` VALUES (2869,2252,'кносьмъ',23);
INSERT INTO `n_nm` VALUES (2870,2193,'кноъм',23);
INSERT INTO `n_nm` VALUES (2871,7445,'ксднцнпжх',18);
INSERT INTO `n_nm` VALUES (2872,5770,'ксйнбхр',12);
INSERT INTO `n_nm` VALUES (2873,2296,'ксйнбн',23);
INSERT INTO `n_nm` VALUES (2874,6921,'кскхвйю',10);
INSERT INTO `n_nm` VALUES (2875,7439,'кзбхмн',18);
INSERT INTO `n_nm` VALUES (2876,6638,'кзбнбн',10);
INSERT INTO `n_nm` VALUES (2877,2182,'кзцю',23);
INSERT INTO `n_nm` VALUES (2878,2971,'кзфмхжю',1);
INSERT INTO `n_nm` VALUES (2879,8216,'кзйю',2);
INSERT INTO `n_nm` VALUES (2880,4726,'кзйю',22);
INSERT INTO `n_nm` VALUES (2881,4241,'кзйюбхжю',17);
INSERT INTO `n_nm` VALUES (2882,4241,'кзйх',17);
INSERT INTO `n_nm` VALUES (2883,2928,'кзйх',1);
INSERT INTO `n_nm` VALUES (2884,7534,'кчаем',20);
INSERT INTO `n_nm` VALUES (2885,4188,'кчаем',17);
INSERT INTO `n_nm` VALUES (2886,9148,'кчаем йюпюбекнбн',3);
INSERT INTO `n_nm` VALUES (2887,8949,'кчаемеж',21);
INSERT INTO `n_nm` VALUES (2888,8947,'кчаемнбю люуюкю',21);
INSERT INTO `n_nm` VALUES (2889,5955,'кчаемнбн',16);
INSERT INTO `n_nm` VALUES (2890,6267,'кчаемнбн',25);
INSERT INTO `n_nm` VALUES (2891,6342,'кчаемнбн',27);
INSERT INTO `n_nm` VALUES (2892,5176,'кчаемжх',5);
INSERT INTO `n_nm` VALUES (2893,6550,'кчахлеж',27);
INSERT INTO `n_nm` VALUES (2894,6796,'кчахмн',10);
INSERT INTO `n_nm` VALUES (2895,7980,'кчахвебн',26);
INSERT INTO `n_nm` VALUES (2896,7843,'кчакем',26);
INSERT INTO `n_nm` VALUES (2897,2061,'кчамхжю',23);
INSERT INTO `n_nm` VALUES (2898,2820,'кчанбхые',1);
INSERT INTO `n_nm` VALUES (2899,2811,'кчанбйю',1);
INSERT INTO `n_nm` VALUES (2900,4833,'кчавю',22);
INSERT INTO `n_nm` VALUES (2901,2352,'кчкхм',15);
INSERT INTO `n_nm` VALUES (2902,8685,'кчкхм',29);
INSERT INTO `n_nm` VALUES (2903,4785,'кчкйю',22);
INSERT INTO `n_nm` VALUES (2904,6050,'кчкъй',25);
INSERT INTO `n_nm` VALUES (2905,9525,'кчкъйнбн',9);
INSERT INTO `n_nm` VALUES (2906,6684,'кчкъйнбн',10);
INSERT INTO `n_nm` VALUES (2907,8570,'кчкъйнбн',2);
INSERT INTO `n_nm` VALUES (2908,5307,'кчкъжхре',8);
INSERT INTO `n_nm` VALUES (2909,3038,'кчрюдфхй',7);
INSERT INTO `n_nm` VALUES (2910,3159,'кчрхапнд',7);
INSERT INTO `n_nm` VALUES (2911,3165,'кчрхднк',7);
INSERT INTO `n_nm` VALUES (2912,2791,'кчрнбн',1);
INSERT INTO `n_nm` VALUES (2913,6198,'къбю пейю',25);
INSERT INTO `n_nm` VALUES (2914,2474,'къкхмжх',15);
INSERT INTO `n_nm` VALUES (2915,5140,'къяйнбеж',5);
INSERT INTO `n_nm` VALUES (2916,6397,'къяйнбеж',27);
INSERT INTO `n_nm` VALUES (2917,8518,'къяйнбн',2);
INSERT INTO `n_nm` VALUES (2918,4238,'къяйнбн',17);
INSERT INTO `n_nm` VALUES (2919,4818,'къяйнбн',22);
INSERT INTO `n_nm` VALUES (2920,6045,'къяйнбн',25);
INSERT INTO `n_nm` VALUES (2921,6667,'къяйнбн',10);
INSERT INTO `n_nm` VALUES (2922,9948,'кърмн',28);
INSERT INTO `n_nm` VALUES (2923,9617,'къунбн',9);
INSERT INTO `n_nm` VALUES (2924,4416,'къунбн',14);
INSERT INTO `n_nm` VALUES (2925,4710,'люцюпдфхжю',22);
INSERT INTO `n_nm` VALUES (2926,3448,'людюм',13);
INSERT INTO `n_nm` VALUES (2927,4900,'людюм',22);
INSERT INTO `n_nm` VALUES (2928,9971,'людюпю',28);
INSERT INTO `n_nm` VALUES (2929,2022,'людфюпе',23);
INSERT INTO `n_nm` VALUES (2930,6383,'людфюпх',27);
INSERT INTO `n_nm` VALUES (2931,6480,'людфюпнбн',27);
INSERT INTO `n_nm` VALUES (2932,6063,'людфепхрн',25);
INSERT INTO `n_nm` VALUES (2933,2549,'люгюпювебн',11);
INSERT INTO `n_nm` VALUES (2934,3777,'люинп сгсмнбн',6);
INSERT INTO `n_nm` VALUES (2935,5085,'люияйн',5);
INSERT INTO `n_nm` VALUES (2936,6675,'люиярнпнбн',10);
INSERT INTO `n_nm` VALUES (2937,6784,'люй',10);
INSERT INTO `n_nm` VALUES (2938,7750,'люйюпхнонкяйн',26);
INSERT INTO `n_nm` VALUES (2939,6640,'люйеднмжх',10);
INSERT INTO `n_nm` VALUES (2940,7785,'люйнбн',18);
INSERT INTO `n_nm` VALUES (2941,2124,'люйнжебн',23);
INSERT INTO `n_nm` VALUES (2942,3850,'люйпеь',6);
INSERT INTO `n_nm` VALUES (2943,2225,'люкю пюйнбхжю',23);
INSERT INTO `n_nm` VALUES (2944,2669,'люкю тсвю',11);
INSERT INTO `n_nm` VALUES (2945,2021,'люкю жзпйбю',23);
INSERT INTO `n_nm` VALUES (2946,6392,'люкебн',27);
INSERT INTO `n_nm` VALUES (2947,4891,'люкебн',22);
INSERT INTO `n_nm` VALUES (2948,8689,'люкемнбн',29);
INSERT INTO `n_nm` VALUES (2949,2691,'люкх бзпанбмхй',11);
INSERT INTO `n_nm` VALUES (2950,3749,'люкх дпемнбеж',6);
INSERT INTO `n_nm` VALUES (2951,9474,'люкх хгбнп',9);
INSERT INTO `n_nm` VALUES (2952,9559,'люкхмю',9);
INSERT INTO `n_nm` VALUES (2953,8327,'люкхмю',2);
INSERT INTO `n_nm` VALUES (2954,5335,'люкхмх',8);
INSERT INTO `n_nm` VALUES (2955,6593,'люкхмн',27);
INSERT INTO `n_nm` VALUES (2956,5582,'люкхмнбн',12);
INSERT INTO `n_nm` VALUES (2957,4742,'люкйю юпдю',22);
INSERT INTO `n_nm` VALUES (2958,6045,'люкйю бепеъ',25);
INSERT INTO `n_nm` VALUES (2959,5729,'люкйю фекъгмю',12);
INSERT INTO `n_nm` VALUES (2960,8519,'люкйю онкъмю',2);
INSERT INTO `n_nm` VALUES (2961,9386,'люкйю ялнкмхжю',9);
INSERT INTO `n_nm` VALUES (2962,7997,'люкйю вепйнбмю',26);
INSERT INTO `n_nm` VALUES (2963,6941,'люкйю вхмйю',10);
INSERT INTO `n_nm` VALUES (2964,5370,'люкйх азкцюпемх',8);
INSERT INTO `n_nm` VALUES (2965,6479,'люкйх бндем',27);
INSERT INTO `n_nm` VALUES (2966,5432,'люкйх бзпьеж',8);
INSERT INTO `n_nm` VALUES (2967,2184,'люкйх хяйзп',23);
INSERT INTO `n_nm` VALUES (2968,5365,'люкйх ярюмвнбжх',8);
INSERT INTO `n_nm` VALUES (2969,2800,'люкйх жюкхл',1);
INSERT INTO `n_nm` VALUES (2970,5028,'люкйх вхткхй',5);
INSERT INTO `n_nm` VALUES (2971,6425,'люкйн юяемнбн',27);
INSERT INTO `n_nm` VALUES (2972,6476,'люкйн апъцнбн',27);
INSERT INTO `n_nm` VALUES (2973,7067,'люкйн бпюмнбн',19);
INSERT INTO `n_nm` VALUES (2974,6558,'люкйн цпюдхые',27);
INSERT INTO `n_nm` VALUES (2975,6227,'люкйн дпъмнбн',25);
INSERT INTO `n_nm` VALUES (2976,6052,'люкйн йюдхебн',25);
INSERT INTO `n_nm` VALUES (2977,6927,'люкйн йюлемъме',10);
INSERT INTO `n_nm` VALUES (2978,8756,'люкйн йхпхкнбн',29);
INSERT INTO `n_nm` VALUES (2979,4951,'люкйн йпсьебн',22);
INSERT INTO `n_nm` VALUES (2980,6482,'люкйн ононбн',27);
INSERT INTO `n_nm` VALUES (2981,8981,'люкйн яекн',21);
INSERT INTO `n_nm` VALUES (2982,6228,'люкйн рпзмнбн',25);
INSERT INTO `n_nm` VALUES (2983,8350,'люкйн рзпмнбн',2);
INSERT INTO `n_nm` VALUES (2984,7923,'люкйн жзпйбхые',26);
INSERT INTO `n_nm` VALUES (2985,8857,'люкйн внвнбемх',21);
INSERT INTO `n_nm` VALUES (2986,8751,'люкйн ьюпйнбн',29);
INSERT INTO `n_nm` VALUES (2987,6898,'люкйнв',10);
INSERT INTO `n_nm` VALUES (2988,1362,'люкн асвхмн',23);
INSERT INTO `n_nm` VALUES (2989,4450,'люкн йнмюпе',14);
INSERT INTO `n_nm` VALUES (2990,4183,'люкн йпсьебн',17);
INSERT INTO `n_nm` VALUES (2991,2205,'люкн люкнбн',23);
INSERT INTO `n_nm` VALUES (2992,3078,'люкн оеыеме',7);
INSERT INTO `n_nm` VALUES (2993,2636,'люкн яекн',11);
INSERT INTO `n_nm` VALUES (2994,7978,'люкнцпюдеж',26);
INSERT INTO `n_nm` VALUES (2995,9871,'люкнлхп',28);
INSERT INTO `n_nm` VALUES (2996,8650,'люкнлхп',29);
INSERT INTO `n_nm` VALUES (2997,8737,'люкнлхпнбн',29);
INSERT INTO `n_nm` VALUES (2998,3255,'люкнпюд',7);
INSERT INTO `n_nm` VALUES (2999,5304,'люксью',8);
INSERT INTO `n_nm` VALUES (3000,5917,'люквхйю',16);
INSERT INTO `n_nm` VALUES (3001,5050,'люквнбжх',5);
INSERT INTO `n_nm` VALUES (3002,5367,'люквнбжх',8);
INSERT INTO `n_nm` VALUES (3003,6935,'люкзй дебеяхк',10);
INSERT INTO `n_nm` VALUES (3004,6394,'люкзй хгбнп',27);
INSERT INTO `n_nm` VALUES (3005,5734,'люкзй хгбнп',12);
INSERT INTO `n_nm` VALUES (3006,8742,'люкзй люмюярхп',29);
INSERT INTO `n_nm` VALUES (3007,7429,'люкзй онпнбеж',18);
INSERT INTO `n_nm` VALUES (3008,7620,'люкзй опеякюбеж',20);
INSERT INTO `n_nm` VALUES (3009,4194,'люкзй вюпдюй',17);
INSERT INTO `n_nm` VALUES (3010,8743,'люлюпвебн',29);
INSERT INTO `n_nm` VALUES (3011,2168,'люмюяекяйю пейю',23);
INSERT INTO `n_nm` VALUES (3012,4245,'люмюярхп',17);
INSERT INTO `n_nm` VALUES (3013,9224,'люмюярхп',3);
INSERT INTO `n_nm` VALUES (3014,6390,'люмюярхп',27);
INSERT INTO `n_nm` VALUES (3015,7856,'люмюярхпхжю',26);
INSERT INTO `n_nm` VALUES (3016,2288,'люмюярхпхые',23);
INSERT INTO `n_nm` VALUES (3017,3354,'люмюярхпхые',7);
INSERT INTO `n_nm` VALUES (3018,7285,'люмюярхпяйн',18);
INSERT INTO `n_nm` VALUES (3019,7292,'люмюярхпжх',18);
INSERT INTO `n_nm` VALUES (3020,6357,'люмдпю',27);
INSERT INTO `n_nm` VALUES (3021,6585,'люмдпхжю',27);
INSERT INTO `n_nm` VALUES (3022,5363,'люмебжх',8);
INSERT INTO `n_nm` VALUES (3023,4137,'люмнке',17);
INSERT INTO `n_nm` VALUES (3024,8453,'люмнкхв',2);
INSERT INTO `n_nm` VALUES (3025,6152,'люмнкнбн',25);
INSERT INTO `n_nm` VALUES (3026,4138,'люмнкяйн йнмюпе',17);
INSERT INTO `n_nm` VALUES (3027,5392,'люмнъ',8);
INSERT INTO `n_nm` VALUES (3028,7967,'люмсьебжх',26);
INSERT INTO `n_nm` VALUES (3029,6800,'люмвебн',10);
INSERT INTO `n_nm` VALUES (3030,5070,'люпютекжх',5);
INSERT INTO `n_nm` VALUES (3031,9745,'люпюь',28);
INSERT INTO `n_nm` VALUES (3032,5035,'люпцнбжх',5);
INSERT INTO `n_nm` VALUES (3033,2870,'люпхйнярхмнбн',1);
INSERT INTO `n_nm` VALUES (3034,8154,'люпхмйю',2);
INSERT INTO `n_nm` VALUES (3035,4365,'люпхмн онке',17);
INSERT INTO `n_nm` VALUES (3036,2867,'люпхмн онке',1);
INSERT INTO `n_nm` VALUES (3037,5097,'люпхмнбжх',5);
INSERT INTO `n_nm` VALUES (3038,5445,'люпхмнбжх',8);
INSERT INTO `n_nm` VALUES (3039,2044,'люпхжю',23);
INSERT INTO `n_nm` VALUES (3040,6247,'люпйнбн',25);
INSERT INTO `n_nm` VALUES (3041,9973,'люпйнбн',28);
INSERT INTO `n_nm` VALUES (3042,4108,'люпйнбн',17);
INSERT INTO `n_nm` VALUES (3043,3133,'люпйнбн пюбмхые',7);
INSERT INTO `n_nm` VALUES (3044,7058,'люпрем',19);
INSERT INTO `n_nm` VALUES (3045,6745,'люпрхмн',10);
INSERT INTO `n_nm` VALUES (3046,3459,'люпрхмнбн',13);
INSERT INTO `n_nm` VALUES (3047,2725,'люпскебн',1);
INSERT INTO `n_nm` VALUES (3048,5360,'люпсжейнбжх',8);
INSERT INTO `n_nm` VALUES (3049,2949,'люпвебн',1);
INSERT INTO `n_nm` VALUES (3050,7869,'люпвхмн',26);
INSERT INTO `n_nm` VALUES (3051,5084,'люпъм',5);
INSERT INTO `n_nm` VALUES (3052,5198,'люякюпебн',5);
INSERT INTO `n_nm` VALUES (3053,6388,'люякхмнбн',27);
INSERT INTO `n_nm` VALUES (3054,5351,'люреьнбжх',8);
INSERT INTO `n_nm` VALUES (3055,6535,'люрнвхмю',27);
INSERT INTO `n_nm` VALUES (3056,2849,'люуюкюрю',1);
INSERT INTO `n_nm` VALUES (3057,5081,'люуюкмхжх',5);
INSERT INTO `n_nm` VALUES (3058,6276,'люжю',25);
INSERT INTO `n_nm` VALUES (3059,5647,'лювйнбжх',12);
INSERT INTO `n_nm` VALUES (3060,8987,'ледбем',21);
INSERT INTO `n_nm` VALUES (3061,6865,'ледебжх',10);
INSERT INTO `n_nm` VALUES (3062,6598,'ледем асй',27);
INSERT INTO `n_nm` VALUES (3063,8639,'ледем йкюдемеж',29);
INSERT INTO `n_nm` VALUES (3064,4637,'ледемх онкъмх',14);
INSERT INTO `n_nm` VALUES (3065,3845,'ледеьебжх',6);
INSERT INTO `n_nm` VALUES (3066,3670,'ледйнбеж',13);
INSERT INTO `n_nm` VALUES (3067,6294,'ледмхйюпнбн',25);
INSERT INTO `n_nm` VALUES (3068,7319,'леднбеме',18);
INSERT INTO `n_nm` VALUES (3069,9238,'леднбеж',3);
INSERT INTO `n_nm` VALUES (3070,7863,'леднбхмю',26);
INSERT INTO `n_nm` VALUES (3071,3947,'леднбмхжю',6);
INSERT INTO `n_nm` VALUES (3072,6235,'леднбн',25);
INSERT INTO `n_nm` VALUES (3073,9388,'леднбн',9);
INSERT INTO `n_nm` VALUES (3074,8214,'леднбн',2);
INSERT INTO `n_nm` VALUES (3075,8644,'лефдю',29);
INSERT INTO `n_nm` VALUES (3076,7672,'лефдем',20);
INSERT INTO `n_nm` VALUES (3077,5343,'лефдемх',8);
INSERT INTO `n_nm` VALUES (3078,3100,'легдпю',7);
INSERT INTO `n_nm` VALUES (3079,3515,'легдпеъ',13);
INSERT INTO `n_nm` VALUES (3080,6521,'легей',27);
INSERT INTO `n_nm` VALUES (3081,2820,'лекмхй',1);
INSERT INTO `n_nm` VALUES (3082,8755,'лекмхжю',29);
INSERT INTO `n_nm` VALUES (3083,3472,'лекъме',13);
INSERT INTO `n_nm` VALUES (3084,9885,'лемцхьебн',28);
INSERT INTO `n_nm` VALUES (3085,2893,'лемднбн',1);
INSERT INTO `n_nm` VALUES (3086,4482,'лемемйэнбн',14);
INSERT INTO `n_nm` VALUES (3087,5147,'лепдюмъ',5);
INSERT INTO `n_nm` VALUES (3088,6430,'лепхвкепх',27);
INSERT INTO `n_nm` VALUES (3089,2772,'леярю',1);
INSERT INTO `n_nm` VALUES (3090,6938,'леркхйю',10);
INSERT INTO `n_nm` VALUES (3091,9291,'леркхвхмю',3);
INSERT INTO `n_nm` VALUES (3092,6873,'леркхвхмю',10);
INSERT INTO `n_nm` VALUES (3093,6890,'леркхвйю',10);
INSERT INTO `n_nm` VALUES (3094,9867,'лерндхебн',28);
INSERT INTO `n_nm` VALUES (3095,9375,'лерндхебн',9);
INSERT INTO `n_nm` VALUES (3096,2556,'лернухъ',11);
INSERT INTO `n_nm` VALUES (3097,7091,'левйю',19);
INSERT INTO `n_nm` VALUES (3098,5843,'левйю',16);
INSERT INTO `n_nm` VALUES (3099,8868,'левйюпебн',21);
INSERT INTO `n_nm` VALUES (3100,5307,'левйнбхжю',8);
INSERT INTO `n_nm` VALUES (3101,2060,'левйнбжх',23);
INSERT INTO `n_nm` VALUES (3102,2754,'левйск',1);
INSERT INTO `n_nm` VALUES (3103,7997,'левнбн',26);
INSERT INTO `n_nm` VALUES (3104,2353,'леыхжю',15);
INSERT INTO `n_nm` VALUES (3105,3330,'лхгхъ',7);
INSERT INTO `n_nm` VALUES (3106,5098,'лхийнбжх',5);
INSERT INTO `n_nm` VALUES (3107,5572,'лхйпе',12);
INSERT INTO `n_nm` VALUES (3108,2826,'лхйпебн',1);
INSERT INTO `n_nm` VALUES (3109,6660,'лхкюдхмнбн',10);
INSERT INTO `n_nm` VALUES (3110,9431,'лхкюдхмнбжх',9);
INSERT INTO `n_nm` VALUES (3111,7787,'лхкюдхмнбжх',18);
INSERT INTO `n_nm` VALUES (3112,8657,'лхкюдхмнбжх',29);
INSERT INTO `n_nm` VALUES (3113,9859,'лхкюмнбн',28);
INSERT INTO `n_nm` VALUES (3114,2280,'лхкюмнбн',23);
INSERT INTO `n_nm` VALUES (3115,4921,'лхке',22);
INSERT INTO `n_nm` VALUES (3116,4191,'лхкебн',17);
INSERT INTO `n_nm` VALUES (3117,5350,'лхкебжх',8);
INSERT INTO `n_nm` VALUES (3118,5627,'лхкемвю',12);
INSERT INTO `n_nm` VALUES (3119,7984,'лхкхмн',26);
INSERT INTO `n_nm` VALUES (3120,5968,'лхкйнбхжю',16);
INSERT INTO `n_nm` VALUES (3121,4779,'лхкйнбн',22);
INSERT INTO `n_nm` VALUES (3122,5345,'лхкйнбжх',8);
INSERT INTO `n_nm` VALUES (3123,2475,'лхкйэнбжх',15);
INSERT INTO `n_nm` VALUES (3124,2478,'лхкнякюбжх',15);
INSERT INTO `n_nm` VALUES (3125,3846,'лхквхмю кзйю',6);
INSERT INTO `n_nm` VALUES (3126,2220,'лхмю анкьебхй',23);
INSERT INTO `n_nm` VALUES (3127,5044,'лхмдъ',5);
INSERT INTO `n_nm` VALUES (3128,5083,'лхмебжх',5);
INSERT INTO `n_nm` VALUES (3129,6343,'лхмепюкмх аюмх',27);
INSERT INTO `n_nm` VALUES (3130,6665,'лхмгсуюп',10);
INSERT INTO `n_nm` VALUES (3131,9372,'лхмйнбн',9);
INSERT INTO `n_nm` VALUES (3132,5735,'лхпйнбеж',12);
INSERT INTO `n_nm` VALUES (3133,2086,'лхпйнбн',23);
INSERT INTO `n_nm` VALUES (3134,7751,'лхпнбеж',26);
INSERT INTO `n_nm` VALUES (3135,6255,'лхпнбн',25);
INSERT INTO `n_nm` VALUES (3136,5158,'лхпнбн',5);
INSERT INTO `n_nm` VALUES (3137,9921,'лхпнбжх',28);
INSERT INTO `n_nm` VALUES (3138,1289,'лхпнбъме',23);
INSERT INTO `n_nm` VALUES (3139,8119,'лхпнкчанбн',2);
INSERT INTO `n_nm` VALUES (3140,5094,'лхпвнбжх',5);
INSERT INTO `n_nm` VALUES (3141,4443,'лхпъмжх',14);
INSERT INTO `n_nm` VALUES (3142,2857,'лхрхмн',1);
INSERT INTO `n_nm` VALUES (3143,4909,'лхрнбяйю',22);
INSERT INTO `n_nm` VALUES (3144,3464,'лхрпнбжх',13);
INSERT INTO `n_nm` VALUES (3145,6051,'лхуюикнбн',25);
INSERT INTO `n_nm` VALUES (3146,3355,'лхуюикнбн',7);
INSERT INTO `n_nm` VALUES (3147,5347,'лхуюикнбжх',8);
INSERT INTO `n_nm` VALUES (3148,9284,'лхуюкхв',3);
INSERT INTO `n_nm` VALUES (3149,6537,'лхуюкхв',27);
INSERT INTO `n_nm` VALUES (3150,4820,'лхуюкйнбн',22);
INSERT INTO `n_nm` VALUES (3151,5248,'лхуюкжх',5);
INSERT INTO `n_nm` VALUES (3152,4361,'лхухкжх',17);
INSERT INTO `n_nm` VALUES (3153,2862,'лхумебн',1);
INSERT INTO `n_nm` VALUES (3154,5365,'лхунбжх',8);
INSERT INTO `n_nm` VALUES (3155,5343,'лхвйнбжх',8);
INSERT INTO `n_nm` VALUES (3156,6840,'лхьебяйн',10);
INSERT INTO `n_nm` VALUES (3157,5035,'лхьелнпйнб уюм',5);
INSERT INTO `n_nm` VALUES (3158,5767,'лхьйюпере',12);
INSERT INTO `n_nm` VALUES (3159,9228,'лкюдю цбюпдхъ',3);
INSERT INTO `n_nm` VALUES (3160,8364,'лкюдефйн',2);
INSERT INTO `n_nm` VALUES (3161,5428,'лкюдем',8);
INSERT INTO `n_nm` VALUES (3162,6531,'лкюдхмнбн',27);
INSERT INTO `n_nm` VALUES (3163,8886,'лкюднбн',21);
INSERT INTO `n_nm` VALUES (3164,2654,'лкюлнкнбн',11);
INSERT INTO `n_nm` VALUES (3165,8960,'лкейюпебн',21);
INSERT INTO `n_nm` VALUES (3166,5441,'лкевебн',8);
INSERT INTO `n_nm` VALUES (3167,6781,'лкевхмн',10);
INSERT INTO `n_nm` VALUES (3168,9932,'лнцхкю',28);
INSERT INTO `n_nm` VALUES (3169,6052,'лнцхкю',25);
INSERT INTO `n_nm` VALUES (3170,8627,'лнцхкю',29);
INSERT INTO `n_nm` VALUES (3171,7943,'лнцхкеж',26);
INSERT INTO `n_nm` VALUES (3172,7165,'лнцхкхмн',19);
INSERT INTO `n_nm` VALUES (3173,5350,'лнцхкхре',8);
INSERT INTO `n_nm` VALUES (3174,4761,'лнцхкхжю',22);
INSERT INTO `n_nm` VALUES (3175,9665,'лнцхкхые',9);
INSERT INTO `n_nm` VALUES (3176,6239,'лнцхкнбн',25);
INSERT INTO `n_nm` VALUES (3177,6867,'лнцхкъме',10);
INSERT INTO `n_nm` VALUES (3178,6840,'лндпем',10);
INSERT INTO `n_nm` VALUES (3179,8994,'лнйпем',21);
INSERT INTO `n_nm` VALUES (3180,9861,'лнйпеь',28);
INSERT INTO `n_nm` VALUES (3181,3647,'лнйпеь',13);
INSERT INTO `n_nm` VALUES (3182,4408,'лнйпхые',14);
INSERT INTO `n_nm` VALUES (3183,2035,'лнлхм опнунд',23);
INSERT INTO `n_nm` VALUES (3184,5067,'лнлхм яанп',5);
INSERT INTO `n_nm` VALUES (3185,4468,'лнлхмю йкхяспю',14);
INSERT INTO `n_nm` VALUES (3186,6838,'лнлхмю язкгю',10);
INSERT INTO `n_nm` VALUES (3187,8320,'лнлхмю жзпйбю',2);
INSERT INTO `n_nm` VALUES (3188,7706,'лнлхмн',26);
INSERT INTO `n_nm` VALUES (3189,6387,'лнлхмн',27);
INSERT INTO `n_nm` VALUES (3190,4143,'лнлхмн яекн',17);
INSERT INTO `n_nm` VALUES (3191,4118,'лнлхмяйн',17);
INSERT INTO `n_nm` VALUES (3192,6542,'лнлйнбн',27);
INSERT INTO `n_nm` VALUES (3193,6800,'лнлвхкцпюд',10);
INSERT INTO `n_nm` VALUES (3194,9221,'лнлвхкнбн',3);
INSERT INTO `n_nm` VALUES (3195,4750,'лнлвхкнбжх',22);
INSERT INTO `n_nm` VALUES (3196,3400,'лнмрюмю',13);
INSERT INTO `n_nm` VALUES (3197,5291,'лнпюбю',5);
INSERT INTO `n_nm` VALUES (3198,7974,'лнпюбхжю',26);
INSERT INTO `n_nm` VALUES (3199,3145,'лнпюбхжю',7);
INSERT INTO `n_nm` VALUES (3200,7992,'лнпюбйю',26);
INSERT INTO `n_nm` VALUES (3201,5304,'лнпнбежхре',8);
INSERT INTO `n_nm` VALUES (3202,7248,'лнпрюцнмнбн',18);
INSERT INTO `n_nm` VALUES (3203,6959,'лнпъмжх',10);
INSERT INTO `n_nm` VALUES (3204,4333,'лняйнбеж',17);
INSERT INTO `n_nm` VALUES (3205,6670,'лняр',10);
INSERT INTO `n_nm` VALUES (3206,9878,'лнярхв',28);
INSERT INTO `n_nm` VALUES (3207,4257,'лнярнбн',17);
INSERT INTO `n_nm` VALUES (3208,4978,'лнвспе',22);
INSERT INTO `n_nm` VALUES (3209,2729,'лныюмеж',1);
INSERT INTO `n_nm` VALUES (3210,2477,'лпюйермхжх',15);
INSERT INTO `n_nm` VALUES (3211,1261,'лпюлнп',23);
INSERT INTO `n_nm` VALUES (3212,6562,'лпюлнп',27);
INSERT INTO `n_nm` VALUES (3213,2487,'лпюлнп',15);
INSERT INTO `n_nm` VALUES (3214,3054,'лпюлнпем',7);
INSERT INTO `n_nm` VALUES (3215,5345,'лпюунпх',8);
INSERT INTO `n_nm` VALUES (3216,4362,'лпювемхй',17);
INSERT INTO `n_nm` VALUES (3217,6845,'лпефхвйн',10);
INSERT INTO `n_nm` VALUES (3218,8538,'лпефхвйн',2);
INSERT INTO `n_nm` VALUES (3219,5367,'лпзгежх',8);
INSERT INTO `n_nm` VALUES (3220,4716,'лсцкю',22);
INSERT INTO `n_nm` VALUES (3221,5333,'лсгцю',8);
INSERT INTO `n_nm` VALUES (3222,4249,'лскдюбю',17);
INSERT INTO `n_nm` VALUES (3223,6725,'лспцю',10);
INSERT INTO `n_nm` VALUES (3224,2247,'лспцюь',23);
INSERT INTO `n_nm` VALUES (3225,6679,'лспцнбн',10);
INSERT INTO `n_nm` VALUES (3226,2437,'лспемн',15);
INSERT INTO `n_nm` VALUES (3227,2623,'лспяюкебн',11);
INSERT INTO `n_nm` VALUES (3228,2382,'лспрхмжх',15);
INSERT INTO `n_nm` VALUES (3229,6284,'лсяювебн',25);
INSERT INTO `n_nm` VALUES (3230,2139,'лсяювебн',23);
INSERT INTO `n_nm` VALUES (3231,6774,'лсяебн',10);
INSERT INTO `n_nm` VALUES (3232,5963,'лсяекхебн',16);
INSERT INTO `n_nm` VALUES (3233,5247,'лсяхмю',5);
INSERT INTO `n_nm` VALUES (3234,2920,'лсянлхыю',1);
INSERT INTO `n_nm` VALUES (3235,6527,'лсярпюй',27);
INSERT INTO `n_nm` VALUES (3236,2061,'лсунбн',23);
INSERT INTO `n_nm` VALUES (3237,5370,'лсжъ',8);
INSERT INTO `n_nm` VALUES (3238,8523,'лзцкем',2);
INSERT INTO `n_nm` VALUES (3239,6865,'лзцкеме',10);
INSERT INTO `n_nm` VALUES (3240,6180,'лзцкхф',25);
INSERT INTO `n_nm` VALUES (3241,4910,'лзцкхыю',22);
INSERT INTO `n_nm` VALUES (3242,7323,'лздпебн',18);
INSERT INTO `n_nm` VALUES (3243,6292,'лздпеж',25);
INSERT INTO `n_nm` VALUES (3244,6674,'лздпеж',10);
INSERT INTO `n_nm` VALUES (3245,8444,'лздпхмн',2);
INSERT INTO `n_nm` VALUES (3246,6865,'лзфемжх',10);
INSERT INTO `n_nm` VALUES (3247,2655,'лзпбнднк',11);
INSERT INTO `n_nm` VALUES (3248,4996,'лзпгъм',22);
INSERT INTO `n_nm` VALUES (3249,5094,'лзпрбхмюрю',5);
INSERT INTO `n_nm` VALUES (3250,1696,'лзпвюебн',23);
INSERT INTO `n_nm` VALUES (3251,3443,'лзпвебн',13);
INSERT INTO `n_nm` VALUES (3252,8843,'лзязпкхх',21);
INSERT INTO `n_nm` VALUES (3253,4176,'лзремхжю',17);
INSERT INTO `n_nm` VALUES (3254,6497,'мюбзяем',27);
INSERT INTO `n_nm` VALUES (3255,7740,'мюдюпебн',26);
INSERT INTO `n_nm` VALUES (3256,4758,'мюдюпжх',22);
INSERT INTO `n_nm` VALUES (3257,6459,'мюдефдем',27);
INSERT INTO `n_nm` VALUES (3258,4185,'мюидем цепнбн',17);
INSERT INTO `n_nm` VALUES (3259,6224,'мюидемнбн',25);
INSERT INTO `n_nm` VALUES (3260,6800,'мюме',10);
INSERT INTO `n_nm` VALUES (3261,6830,'мюмнбхжю',10);
INSERT INTO `n_nm` VALUES (3262,5752,'мюмнбхжю',12);
INSERT INTO `n_nm` VALUES (3263,4239,'мюпевемяйх аюмх',17);
INSERT INTO `n_nm` VALUES (3264,2478,'мюяюкебжх',15);
INSERT INTO `n_nm` VALUES (3265,9962,'мюсл',28);
INSERT INTO `n_nm` VALUES (3266,8929,'мюсвеме',21);
INSERT INTO `n_nm` VALUES (3267,5055,'мюжнбжх',5);
INSERT INTO `n_nm` VALUES (3268,2213,'мювебн',23);
INSERT INTO `n_nm` VALUES (3269,6693,'меаеяйю',10);
INSERT INTO `n_nm` VALUES (3270,8431,'мебеярхмн',2);
INSERT INTO `n_nm` VALUES (3271,6722,'мебеярхмн',10);
INSERT INTO `n_nm` VALUES (3272,2595,'мебеярхмн',11);
INSERT INTO `n_nm` VALUES (3273,9229,'мебью',3);
INSERT INTO `n_nm` VALUES (3274,1222,'мецнбюм',23);
INSERT INTO `n_nm` VALUES (3275,3774,'мецнбюмнбжх',6);
INSERT INTO `n_nm` VALUES (3276,2417,'мецнбюмжх',15);
INSERT INTO `n_nm` VALUES (3277,2123,'мецсьебн',23);
INSERT INTO `n_nm` VALUES (3278,5231,'медюм',5);
INSERT INTO `n_nm` VALUES (3279,4187,'медекебн',17);
INSERT INTO `n_nm` VALUES (3280,4990,'медекхмн',22);
INSERT INTO `n_nm` VALUES (3281,2213,'медекхые',23);
INSERT INTO `n_nm` VALUES (3282,2594,'медекйнбю цпюыхжю',11);
INSERT INTO `n_nm` VALUES (3283,2477,'медекйнбн',15);
INSERT INTO `n_nm` VALUES (3284,7251,'меднйкюм',18);
INSERT INTO `n_nm` VALUES (3285,5070,'медъкйнбжх',5);
INSERT INTO `n_nm` VALUES (3286,5350,'медъкйнбжх',8);
INSERT INTO `n_nm` VALUES (3287,8684,'медъкяйн',29);
INSERT INTO `n_nm` VALUES (3288,9692,'меийнбн',9);
INSERT INTO `n_nm` VALUES (3289,8993,'меийнбн',21);
INSERT INTO `n_nm` VALUES (3290,2061,'меийэнбеж',23);
INSERT INTO `n_nm` VALUES (3291,5380,'меивнбжх',8);
INSERT INTO `n_nm` VALUES (3292,6797,'мемйнбн',10);
INSERT INTO `n_nm` VALUES (3293,9234,'мемнбн',3);
INSERT INTO `n_nm` VALUES (3294,5367,'мемнбжх',8);
INSERT INTO `n_nm` VALUES (3295,6831,'ментхр ангбекхебн',10);
INSERT INTO `n_nm` VALUES (3296,9223,'ментхр пхкяйх',3);
INSERT INTO `n_nm` VALUES (3297,2396,'меопюгмемжх',15);
INSERT INTO `n_nm` VALUES (3298,8230,'меяеазп',2);
INSERT INTO `n_nm` VALUES (3299,2213,'меякю',23);
INSERT INTO `n_nm` VALUES (3300,3039,'метекю',7);
INSERT INTO `n_nm` VALUES (3301,5097,'меьебжх',5);
INSERT INTO `n_nm` VALUES (3302,3241,'мхбъмхм',7);
INSERT INTO `n_nm` VALUES (3303,5365,'мхйювйнбжх',8);
INSERT INTO `n_nm` VALUES (3304,9955,'мхйнкю йнгкебн',28);
INSERT INTO `n_nm` VALUES (3305,9172,'мхйнкюебйю',3);
INSERT INTO `n_nm` VALUES (3306,6190,'мхйнкюебн',25);
INSERT INTO `n_nm` VALUES (3307,5874,'мхйнкюебн',16);
INSERT INTO `n_nm` VALUES (3308,2406,'мхйнкюебн',15);
INSERT INTO `n_nm` VALUES (3309,8873,'мхйнкюебн',21);
INSERT INTO `n_nm` VALUES (3310,5168,'мхйнкюебн',5);
INSERT INTO `n_nm` VALUES (3311,5351,'мхйнкюебн',8);
INSERT INTO `n_nm` VALUES (3312,2599,'мхйнкхвебжх',11);
INSERT INTO `n_nm` VALUES (3313,3429,'мхйнкнбн',13);
INSERT INTO `n_nm` VALUES (3314,7057,'мхйнкнбн',19);
INSERT INTO `n_nm` VALUES (3315,6364,'мхйнкнбн',27);
INSERT INTO `n_nm` VALUES (3316,5070,'мхйнкнбжх',5);
INSERT INTO `n_nm` VALUES (3317,5098,'мхйнквебжх',5);
INSERT INTO `n_nm` VALUES (3318,5345,'мхйнквнбжх',8);
INSERT INTO `n_nm` VALUES (3319,5940,'мхйнонк',16);
INSERT INTO `n_nm` VALUES (3320,2839,'мхйсдхм',1);
INSERT INTO `n_nm` VALUES (3321,5068,'мхйчо',5);
INSERT INTO `n_nm` VALUES (3322,8995,'мхяйю онкъмю',21);
INSERT INTO `n_nm` VALUES (3323,7079,'мхянбн',19);
INSERT INTO `n_nm` VALUES (3324,5097,'мхвнбжх',5);
INSERT INTO `n_nm` VALUES (3325,9883,'мнбю аъкю пейю',28);
INSERT INTO `n_nm` VALUES (3326,5169,'мнбю бзпанбйю',5);
INSERT INTO `n_nm` VALUES (3327,8900,'мнбю гюцнпю',21);
INSERT INTO `n_nm` VALUES (3328,9493,'мнбю йюлемю',9);
INSERT INTO `n_nm` VALUES (3329,6595,'мнбю кхбюдю',27);
INSERT INTO `n_nm` VALUES (3330,2925,'мнбю кнбвю',1);
INSERT INTO `n_nm` VALUES (3331,4581,'мнбю люуюкю',14);
INSERT INTO `n_nm` VALUES (3332,6191,'мнбю люуюкю',25);
INSERT INTO `n_nm` VALUES (3333,6330,'мнбю мюдефдю',27);
INSERT INTO `n_nm` VALUES (3334,7582,'мнбю онохмю',20);
INSERT INTO `n_nm` VALUES (3335,7645,'мнбю вепмю',20);
INSERT INTO `n_nm` VALUES (3336,9116,'мнбю ьхойю',3);
INSERT INTO `n_nm` VALUES (3337,9149,'мнбюйнбн',3);
INSERT INTO `n_nm` VALUES (3338,4262,'мнбюйнбн',17);
INSERT INTO `n_nm` VALUES (3339,5332,'мнбюйнбжх',8);
INSERT INTO `n_nm` VALUES (3340,8853,'мнбювебн',21);
INSERT INTO `n_nm` VALUES (3341,2147,'мнбювеме',23);
INSERT INTO `n_nm` VALUES (3342,5950,'мнбювеме',16);
INSERT INTO `n_nm` VALUES (3343,7133,'мнбцпюд',19);
INSERT INTO `n_nm` VALUES (3344,4265,'мнбх хгбнп',17);
INSERT INTO `n_nm` VALUES (3345,1280,'мнбх хяйзп',23);
INSERT INTO `n_nm` VALUES (3346,9900,'мнбх оюгюп',28);
INSERT INTO `n_nm` VALUES (3347,6710,'мнбх оюгюп',10);
INSERT INTO `n_nm` VALUES (3348,2110,'мнбх уюм',23);
INSERT INTO `n_nm` VALUES (3349,2531,'мнбх вхткхй',11);
INSERT INTO `n_nm` VALUES (3350,9356,'мнбн анребн',9);
INSERT INTO `n_nm` VALUES (3351,2212,'мнбн азпдн',23);
INSERT INTO `n_nm` VALUES (3352,5175,'мнбн цпюдхые',5);
INSERT INTO `n_nm` VALUES (3353,2814,'мнбн деквебн',1);
INSERT INTO `n_nm` VALUES (3354,4167,'мнбн фекегюпе',17);
INSERT INTO `n_nm` VALUES (3355,2874,'мнбн йнмнлкюдх',1);
INSERT INTO `n_nm` VALUES (3356,2923,'мнбн кеяйх',1);
INSERT INTO `n_nm` VALUES (3357,9113,'мнбн нпъунбн',3);
INSERT INTO `n_nm` VALUES (3358,8152,'мнбн оюмхвюпебн',2);
INSERT INTO `n_nm` VALUES (3359,5069,'мнбн яекн',5);
INSERT INTO `n_nm` VALUES (3360,2847,'мнбн яекн',1);
INSERT INTO `n_nm` VALUES (3361,2534,'мнбн яекн',11);
INSERT INTO `n_nm` VALUES (3362,3784,'мнбн яекн',6);
INSERT INTO `n_nm` VALUES (3363,7052,'мнбн яекн',19);
INSERT INTO `n_nm` VALUES (3364,2016,'мнбн яекн',23);
INSERT INTO `n_nm` VALUES (3365,4221,'мнбн яекн',17);
INSERT INTO `n_nm` VALUES (3366,6062,'мнбн яекн',25);
INSERT INTO `n_nm` VALUES (3367,2831,'мнбн ундфнбн',1);
INSERT INTO `n_nm` VALUES (3368,9825,'мнбн ъмйнбн',28);
INSERT INTO `n_nm` VALUES (3369,5088,'мнбнцнпжх',5);
INSERT INTO `n_nm` VALUES (3370,9807,'мнбняек',28);
INSERT INTO `n_nm` VALUES (3371,8958,'мнбняекеж',21);
INSERT INTO `n_nm` VALUES (3372,6697,'мнбняекхые',10);
INSERT INTO `n_nm` VALUES (3373,2689,'мнбняекъме',11);
INSERT INTO `n_nm` VALUES (3374,2394,'мнебжх',15);
INSERT INTO `n_nm` VALUES (3375,7615,'мнфюпебн',20);
INSERT INTO `n_nm` VALUES (3376,7441,'мнфюпнбн',18);
INSERT INTO `n_nm` VALUES (3377,5360,'мнфепхре',8);
INSERT INTO `n_nm` VALUES (3378,5360,'мняехре',8);
INSERT INTO `n_nm` VALUES (3379,6726,'мнвебн',10);
INSERT INTO `n_nm` VALUES (3380,5097,'мчьйнбжх',5);
INSERT INTO `n_nm` VALUES (3381,5195,'наедхмемхе',5);
INSERT INTO `n_nm` VALUES (3382,2738,'наек',1);
INSERT INTO `n_nm` VALUES (3383,8250,'нагнп',2);
INSERT INTO `n_nm` VALUES (3384,2776,'нахдхл',1);
INSERT INTO `n_nm` VALUES (3385,7920,'нахрек',26);
INSERT INTO `n_nm` VALUES (3386,6800,'нахвмхй',10);
INSERT INTO `n_nm` VALUES (3387,5922,'намнбю',16);
INSERT INTO `n_nm` VALUES (3388,9147,'нанпхые',3);
INSERT INTO `n_nm` VALUES (3389,4522,'нанпхые',14);
INSERT INTO `n_nm` VALUES (3390,7170,'наперемхй',19);
INSERT INTO `n_nm` VALUES (3391,9630,'напнвхые',9);
INSERT INTO `n_nm` VALUES (3392,6290,'напсвхые',25);
INSERT INTO `n_nm` VALUES (3393,7671,'нбем',20);
INSERT INTO `n_nm` VALUES (3394,5340,'нбныюпжх',8);
INSERT INTO `n_nm` VALUES (3395,5088,'нбнымю',5);
INSERT INTO `n_nm` VALUES (3396,6138,'нбнымхй',25);
INSERT INTO `n_nm` VALUES (3397,5295,'нбвю лнцхкю',5);
INSERT INTO `n_nm` VALUES (3398,9233,'нбвюцю',3);
INSERT INTO `n_nm` VALUES (3399,6922,'нбвюпх',10);
INSERT INTO `n_nm` VALUES (3400,9395,'нбвюпнбн',9);
INSERT INTO `n_nm` VALUES (3401,7747,'нбвюпнбн',26);
INSERT INTO `n_nm` VALUES (3402,6468,'нбвюпнбн',27);
INSERT INTO `n_nm` VALUES (3403,9805,'нбвюпнбн',28);
INSERT INTO `n_nm` VALUES (3404,2647,'нбвюпжх',11);
INSERT INTO `n_nm` VALUES (3405,6846,'нбвебн',10);
INSERT INTO `n_nm` VALUES (3406,4448,'нбвеонкжх',14);
INSERT INTO `n_nm` VALUES (3407,8660,'нбвх йкюдемеж',29);
INSERT INTO `n_nm` VALUES (3408,4972,'нцкед',22);
INSERT INTO `n_nm` VALUES (3409,8467,'нцмем',2);
INSERT INTO `n_nm` VALUES (3410,2947,'нцмъмнбн',1);
INSERT INTO `n_nm` VALUES (3411,2117,'нцмъмнбн',23);
INSERT INTO `n_nm` VALUES (3412,9423,'нцмъмнбн',9);
INSERT INTO `n_nm` VALUES (3413,4417,'нцмъмнбн',14);
INSERT INTO `n_nm` VALUES (3414,2297,'нцнъ',23);
INSERT INTO `n_nm` VALUES (3415,4990,'нцпюдмю',22);
INSERT INTO `n_nm` VALUES (3416,9529,'нцпюфдем',9);
INSERT INTO `n_nm` VALUES (3417,3679,'нднпнбжх',13);
INSERT INTO `n_nm` VALUES (3418,2408,'ндпюмхжю',15);
INSERT INTO `n_nm` VALUES (3419,9357,'ндпхмжх',9);
INSERT INTO `n_nm` VALUES (3420,6584,'ндпхмжх',27);
INSERT INTO `n_nm` VALUES (3421,5893,'ндзпме',16);
INSERT INTO `n_nm` VALUES (3422,9362,'ндзпжх',9);
INSERT INTO `n_nm` VALUES (3423,2373,'нгзпмнбжх',15);
INSERT INTO `n_nm` VALUES (3424,5350,'нйнкххре',8);
INSERT INTO `n_nm` VALUES (3425,8669,'нйно',29);
INSERT INTO `n_nm` VALUES (3426,7680,'нйнпь',20);
INSERT INTO `n_nm` VALUES (3427,8727,'нлюм',29);
INSERT INTO `n_nm` VALUES (3428,9949,'нлюпвебн',28);
INSERT INTO `n_nm` VALUES (3429,8921,'нлюпвебн',21);
INSERT INTO `n_nm` VALUES (3430,7900,'нлспрюц',26);
INSERT INTO `n_nm` VALUES (3431,9486,'нмнцсп',9);
INSERT INTO `n_nm` VALUES (3432,7840,'ноюйю',26);
INSERT INTO `n_nm` VALUES (3433,6078,'ноюм',25);
INSERT INTO `n_nm` VALUES (3434,9347,'ноюмеж',9);
INSERT INTO `n_nm` VALUES (3435,5851,'ноюмеж',16);
INSERT INTO `n_nm` VALUES (3436,2235,'нохжбер',23);
INSERT INTO `n_nm` VALUES (3437,2276,'нокермъ',23);
INSERT INTO `n_nm` VALUES (3438,6254,'нозквемеж',25);
INSERT INTO `n_nm` VALUES (3439,6641,'нозквемяйн',10);
INSERT INTO `n_nm` VALUES (3440,7977,'нпюв',26);
INSERT INTO `n_nm` VALUES (3441,5859,'нпеунбхжю',16);
INSERT INTO `n_nm` VALUES (3442,4877,'нпеунбн',22);
INSERT INTO `n_nm` VALUES (3443,5280,'нпеь',5);
INSERT INTO `n_nm` VALUES (3444,5749,'нпеью',12);
INSERT INTO `n_nm` VALUES (3445,9151,'нпеьюй',3);
INSERT INTO `n_nm` VALUES (3446,5630,'нпеьюй',12);
INSERT INTO `n_nm` VALUES (3447,6929,'нпеьюпх',10);
INSERT INTO `n_nm` VALUES (3448,2943,'нпеье',1);
INSERT INTO `n_nm` VALUES (3449,7684,'нпеьеме',20);
INSERT INTO `n_nm` VALUES (3450,5763,'нпеьеме',12);
INSERT INTO `n_nm` VALUES (3451,4255,'нпеьеж',17);
INSERT INTO `n_nm` VALUES (3452,3945,'нпеьеж',6);
INSERT INTO `n_nm` VALUES (3453,4727,'нпеьеж',22);
INSERT INTO `n_nm` VALUES (3454,6475,'нпеьеж',27);
INSERT INTO `n_nm` VALUES (3455,6579,'нпеьхмн',27);
INSERT INTO `n_nm` VALUES (3456,6561,'нпеьмхй',27);
INSERT INTO `n_nm` VALUES (3457,6655,'нпеьмхжю',10);
INSERT INTO `n_nm` VALUES (3458,8248,'нпхгюпе',2);
INSERT INTO `n_nm` VALUES (3459,4214,'нпхгюпе',17);
INSERT INTO `n_nm` VALUES (3460,8893,'нпхгюпх',21);
INSERT INTO `n_nm` VALUES (3461,6253,'нпхгнбн',25);
INSERT INTO `n_nm` VALUES (3462,8325,'нпкхмжх',2);
INSERT INTO `n_nm` VALUES (3463,6892,'нпкхжю',10);
INSERT INTO `n_nm` VALUES (3464,6545,'нпкнб днк',27);
INSERT INTO `n_nm` VALUES (3465,9359,'нпкнбю лнцхкю',9);
INSERT INTO `n_nm` VALUES (3466,5187,'нпкнбеж',5);
INSERT INTO `n_nm` VALUES (3467,8985,'нпкнбн',21);
INSERT INTO `n_nm` VALUES (3468,6354,'нпкнбн',27);
INSERT INTO `n_nm` VALUES (3469,5340,'нпкнбжх',8);
INSERT INTO `n_nm` VALUES (3470,9490,'нпкъй',9);
INSERT INTO `n_nm` VALUES (3471,5577,'нпкъме',12);
INSERT INTO `n_nm` VALUES (3472,3665,'нпянъ',13);
INSERT INTO `n_nm` VALUES (3473,2785,'нпжебн',1);
INSERT INTO `n_nm` VALUES (3474,4942,'нпъунбеж',22);
INSERT INTO `n_nm` VALUES (3475,6061,'нпъунбхжю',25);
INSERT INTO `n_nm` VALUES (3476,6555,'нпъунбн',27);
INSERT INTO `n_nm` VALUES (3477,3300,'нпъунбн',7);
INSERT INTO `n_nm` VALUES (3478,2186,'няекмю',23);
INSERT INTO `n_nm` VALUES (3479,3171,'няекмю',7);
INSERT INTO `n_nm` VALUES (3480,7634,'няем',20);
INSERT INTO `n_nm` VALUES (3481,3059,'няем',7);
INSERT INTO `n_nm` VALUES (3482,7746,'няем',26);
INSERT INTO `n_nm` VALUES (3483,5037,'няемюпхре',5);
INSERT INTO `n_nm` VALUES (3484,7267,'няемеж',18);
INSERT INTO `n_nm` VALUES (3485,9753,'няемнбеж',28);
INSERT INTO `n_nm` VALUES (3486,2291,'няемнбкюц',23);
INSERT INTO `n_nm` VALUES (3487,9155,'няемнбн',3);
INSERT INTO `n_nm` VALUES (3488,2774,'няемнбн',1);
INSERT INTO `n_nm` VALUES (3489,6153,'няеремнбн',25);
INSERT INTO `n_nm` VALUES (3490,2164,'няхйнбхжю',23);
INSERT INTO `n_nm` VALUES (3491,2965,'няхйнбн',1);
INSERT INTO `n_nm` VALUES (3492,4819,'няхйнбн',22);
INSERT INTO `n_nm` VALUES (3493,7862,'няхйнбн',26);
INSERT INTO `n_nm` VALUES (3494,2165,'няхйнбяйю кюйюбхжю',23);
INSERT INTO `n_nm` VALUES (3495,2953,'няхмю',1);
INSERT INTO `n_nm` VALUES (3496,6216,'някюпйю',25);
INSERT INTO `n_nm` VALUES (3497,3169,'някем йпхбнднк',7);
INSERT INTO `n_nm` VALUES (3498,9879,'нялюп',28);
INSERT INTO `n_nm` VALUES (3499,2121,'нянхжю',23);
INSERT INTO `n_nm` VALUES (3500,8983,'нярпю лнцхкю',21);
INSERT INTO `n_nm` VALUES (3501,6062,'нярпю лнцхкю',25);
INSERT INTO `n_nm` VALUES (3502,7743,'нярпеж',26);
INSERT INTO `n_nm` VALUES (3503,4732,'нярпх оюгкюй',22);
INSERT INTO `n_nm` VALUES (3504,7161,'нярпхжю',19);
INSERT INTO `n_nm` VALUES (3505,4859,'нярпхжю',22);
INSERT INTO `n_nm` VALUES (3506,3340,'нярпнб',7);
INSERT INTO `n_nm` VALUES (3507,6881,'нярпнбеж',10);
INSERT INTO `n_nm` VALUES (3508,6644,'нярпнбхжю',10);
INSERT INTO `n_nm` VALUES (3509,7326,'нярпнбн',18);
INSERT INTO `n_nm` VALUES (3510,7238,'нярпнбве',18);
INSERT INTO `n_nm` VALUES (3511,3757,'нярпнйюожх',6);
INSERT INTO `n_nm` VALUES (3512,6457,'нярзп йюлзй',27);
INSERT INTO `n_nm` VALUES (3513,4163,'нреж йхпхкнбн',17);
INSERT INTO `n_nm` VALUES (3514,4207,'нреж оюхяхебн',17);
INSERT INTO `n_nm` VALUES (3515,6624,'нукчбеж',10);
INSERT INTO `n_nm` VALUES (3516,3079,'нундем',7);
INSERT INTO `n_nm` VALUES (3517,3438,'нупхд',13);
INSERT INTO `n_nm` VALUES (3518,3162,'нвхмднк',7);
INSERT INTO `n_nm` VALUES (3519,2049,'нвсью',23);
INSERT INTO `n_nm` VALUES (3520,3937,'ньюме',6);
INSERT INTO `n_nm` VALUES (3521,5350,'ньюмхре',8);
INSERT INTO `n_nm` VALUES (3522,2847,'ныюбю',1);
INSERT INTO `n_nm` VALUES (3523,5197,'оюбек',5);
INSERT INTO `n_nm` VALUES (3524,6155,'оюбек аюмъ',25);
INSERT INTO `n_nm` VALUES (3525,4889,'оюбекяйн',22);
INSERT INTO `n_nm` VALUES (3526,5365,'оюбкебжх',8);
INSERT INTO `n_nm` VALUES (3527,5200,'оюбкхйемх',5);
INSERT INTO `n_nm` VALUES (3528,3044,'оюбнкве',7);
INSERT INTO `n_nm` VALUES (3529,2632,'оюдюкю',11);
INSERT INTO `n_nm` VALUES (3530,6960,'оюдюкн',10);
INSERT INTO `n_nm` VALUES (3531,2747,'оюдеь',1);
INSERT INTO `n_nm` VALUES (3532,9136,'оюдхмю',3);
INSERT INTO `n_nm` VALUES (3533,6771,'оюдхмю',10);
INSERT INTO `n_nm` VALUES (3534,7617,'оюдхмю',20);
INSERT INTO `n_nm` VALUES (3535,2438,'оюдхме',15);
INSERT INTO `n_nm` VALUES (3536,4400,'оюгюпдфхй',14);
INSERT INTO `n_nm` VALUES (3537,6829,'оюгюпжх',10);
INSERT INTO `n_nm` VALUES (3538,7681,'оюхяхебн',20);
INSERT INTO `n_nm` VALUES (3539,5173,'оюхяхи',5);
INSERT INTO `n_nm` VALUES (3540,7767,'оюидсьйн',26);
INSERT INTO `n_nm` VALUES (3541,7850,'оюкюлюпжю',26);
INSERT INTO `n_nm` VALUES (3542,2829,'оюкюр',1);
INSERT INTO `n_nm` VALUES (3543,2782,'оюкюрмхй',1);
INSERT INTO `n_nm` VALUES (3544,2681,'оюкюрнбн',11);
INSERT INTO `n_nm` VALUES (3545,8698,'оюкюсгнбн',29);
INSERT INTO `n_nm` VALUES (3546,3439,'оюкхкскю',13);
INSERT INTO `n_nm` VALUES (3547,5083,'оюкхжх',5);
INSERT INTO `n_nm` VALUES (3548,4459,'оюлхднбн',14);
INSERT INTO `n_nm` VALUES (3549,4870,'оюлонпнбн',22);
INSERT INTO `n_nm` VALUES (3550,9934,'оюлсйвхх',28);
INSERT INTO `n_nm` VALUES (3551,6058,'оюлсйвхх',25);
INSERT INTO `n_nm` VALUES (3552,4500,'оюмюцчпхые',14);
INSERT INTO `n_nm` VALUES (3553,4520,'оюмюцчпяйх йнкнмхх',14);
INSERT INTO `n_nm` VALUES (3554,9802,'оюмюинр бнкнбн',28);
INSERT INTO `n_nm` VALUES (3555,7929,'оюмюинр ухрнбн',26);
INSERT INTO `n_nm` VALUES (3556,8867,'оюмюпернбжх',21);
INSERT INTO `n_nm` VALUES (3557,8254,'оюмхжнбн',2);
INSERT INTO `n_nm` VALUES (3558,6172,'оюмхвепебн',25);
INSERT INTO `n_nm` VALUES (3559,4179,'оюмхвепх',17);
INSERT INTO `n_nm` VALUES (3560,7928,'оюмхвхмн',26);
INSERT INTO `n_nm` VALUES (3561,6723,'оюмхвйнбн',10);
INSERT INTO `n_nm` VALUES (3562,2060,'оюмнбжх',23);
INSERT INTO `n_nm` VALUES (3563,2685,'оюмвюпебн',11);
INSERT INTO `n_nm` VALUES (3564,1137,'оюмвюпебн',23);
INSERT INTO `n_nm` VALUES (3565,6657,'оюмвебн',10);
INSERT INTO `n_nm` VALUES (3566,6851,'оюопюр',10);
INSERT INTO `n_nm` VALUES (3567,5094,'оюопюркхбю',5);
INSERT INTO `n_nm` VALUES (3568,2474,'оюпюлсм',15);
INSERT INTO `n_nm` VALUES (3569,2926,'оюпхк',1);
INSERT INTO `n_nm` VALUES (3570,9245,'оюпрхгюмх',3);
INSERT INTO `n_nm` VALUES (3571,6218,'оюпрхгюмхм',25);
INSERT INTO `n_nm` VALUES (3572,5344,'оюпвнбжх',8);
INSERT INTO `n_nm` VALUES (3573,5224,'оюяйюкебеж',5);
INSERT INTO `n_nm` VALUES (3574,9370,'оюяйюкебн',9);
INSERT INTO `n_nm` VALUES (3575,6776,'оюяоюк',10);
INSERT INTO `n_nm` VALUES (3576,2631,'оюярпю',11);
INSERT INTO `n_nm` VALUES (3577,2659,'оюярсу',11);
INSERT INTO `n_nm` VALUES (3578,4418,'оюрюкемхжю',14);
INSERT INTO `n_nm` VALUES (3579,6710,'оюрхжю',10);
INSERT INTO `n_nm` VALUES (3580,5225,'оюрпеь',5);
INSERT INTO `n_nm` VALUES (3581,5631,'оюрпеьйн',12);
INSERT INTO `n_nm` VALUES (3582,4267,'оюрпхюпу ебрхлнбн',17);
INSERT INTO `n_nm` VALUES (3583,2069,'оюсмнбн',23);
INSERT INTO `n_nm` VALUES (3584,6969,'оюьхмжх',10);
INSERT INTO `n_nm` VALUES (3585,6572,'оюьйск',27);
INSERT INTO `n_nm` VALUES (3586,4632,'оюьнбх',14);
INSERT INTO `n_nm` VALUES (3587,6529,'оюьнбн',27);
INSERT INTO `n_nm` VALUES (3588,7771,'оебеж',26);
INSERT INTO `n_nm` VALUES (3589,4335,'оебжхре',17);
INSERT INTO `n_nm` VALUES (3590,5095,'оеийнбжх',5);
INSERT INTO `n_nm` VALUES (3591,5370,'оеимю',8);
INSERT INTO `n_nm` VALUES (3592,5345,'оеинбжх',8);
INSERT INTO `n_nm` VALUES (3593,7127,'оеивхмнбн',19);
INSERT INTO `n_nm` VALUES (3594,2582,'оекюрхйнбн',11);
INSERT INTO `n_nm` VALUES (3595,6593,'оекебсм',27);
INSERT INTO `n_nm` VALUES (3596,6948,'оекхм',10);
INSERT INTO `n_nm` VALUES (3597,5895,'оекхьюр',16);
INSERT INTO `n_nm` VALUES (3598,5333,'оемйнбжх',8);
INSERT INTO `n_nm` VALUES (3599,2499,'оемйэнбжх',15);
INSERT INTO `n_nm` VALUES (3600,6741,'оемэнбн',10);
INSERT INTO `n_nm` VALUES (3601,7158,'оеоекхмю',19);
INSERT INTO `n_nm` VALUES (3602,6643,'оеоекхые',10);
INSERT INTO `n_nm` VALUES (3603,3841,'оепхкнбеж',6);
INSERT INTO `n_nm` VALUES (3604,2300,'оепмхй',15);
INSERT INTO `n_nm` VALUES (3605,6673,'оепоепей',10);
INSERT INTO `n_nm` VALUES (3606,6949,'оепсмхйю',10);
INSERT INTO `n_nm` VALUES (3607,4225,'оепсыхжю',17);
INSERT INTO `n_nm` VALUES (3608,6798,'оеямнони',10);
INSERT INTO `n_nm` VALUES (3609,4208,'оеямнони',17);
INSERT INTO `n_nm` VALUES (3610,3519,'оеянвмхжю',13);
INSERT INTO `n_nm` VALUES (3611,7119,'оер йкюдемжх',19);
INSERT INTO `n_nm` VALUES (3612,9940,'оер лнцхкх',28);
INSERT INTO `n_nm` VALUES (3613,8953,'оер лнцхкх',21);
INSERT INTO `n_nm` VALUES (3614,6666,'оерекнбн',10);
INSERT INTO `n_nm` VALUES (3615,5184,'оерйн йюпюбекнбн',5);
INSERT INTO `n_nm` VALUES (3616,5434,'оерйн якюбеийнб',8);
INSERT INTO `n_nm` VALUES (3617,2111,'оерйнбн',23);
INSERT INTO `n_nm` VALUES (3618,4740,'оерйнбн',22);
INSERT INTO `n_nm` VALUES (3619,5370,'оерйнбжх',8);
INSERT INTO `n_nm` VALUES (3620,5084,'оерйнбжх',5);
INSERT INTO `n_nm` VALUES (3621,9521,'оеркеьйнбн',9);
INSERT INTO `n_nm` VALUES (3622,6634,'оеркхмн',10);
INSERT INTO `n_nm` VALUES (3623,5933,'оернйкюдемжх',16);
INSERT INTO `n_nm` VALUES (3624,5784,'оерпебеме',12);
INSERT INTO `n_nm` VALUES (3625,2936,'оерпекхй',1);
INSERT INTO `n_nm` VALUES (3626,7956,'оерпхмн',26);
INSERT INTO `n_nm` VALUES (3627,2085,'оерпхв',23);
INSERT INTO `n_nm` VALUES (3628,2850,'оерпхв',1);
INSERT INTO `n_nm` VALUES (3629,4911,'оерпнб днк',22);
INSERT INTO `n_nm` VALUES (3630,9225,'оерпнб днк',3);
INSERT INTO `n_nm` VALUES (3631,2815,'оерпнбн',1);
INSERT INTO `n_nm` VALUES (3632,6058,'оерпнбн',25);
INSERT INTO `n_nm` VALUES (3633,5347,'оерпнбжх',8);
INSERT INTO `n_nm` VALUES (3634,3521,'оерпнуюм',13);
INSERT INTO `n_nm` VALUES (3635,5878,'оерзпмхжю',16);
INSERT INTO `n_nm` VALUES (3636,2234,'оерзпв',23);
INSERT INTO `n_nm` VALUES (3637,5345,'оежнбжх',8);
INSERT INTO `n_nm` VALUES (3638,7428,'оевемхжю',18);
INSERT INTO `n_nm` VALUES (3639,4912,'оевхмяйн',22);
INSERT INTO `n_nm` VALUES (3640,3733,'оеьюйнбн',6);
INSERT INTO `n_nm` VALUES (3641,2443,'оеыепю',15);
INSERT INTO `n_nm` VALUES (3642,4550,'оеыепю',14);
INSERT INTO `n_nm` VALUES (3643,4754,'оеыепю',22);
INSERT INTO `n_nm` VALUES (3644,5788,'оеыепмю',12);
INSERT INTO `n_nm` VALUES (3645,8525,'оеыепяйн',2);
INSERT INTO `n_nm` VALUES (3646,2618,'охоепебн',11);
INSERT INTO `n_nm` VALUES (3647,2831,'охоепхжю',1);
INSERT INTO `n_nm` VALUES (3648,2508,'охоепйнб вхткхй',11);
INSERT INTO `n_nm` VALUES (3649,7129,'охоепйнбн',19);
INSERT INTO `n_nm` VALUES (3650,5035,'охпюлхдюрю',5);
INSERT INTO `n_nm` VALUES (3651,7090,'охпцнбн',19);
INSERT INTO `n_nm` VALUES (3652,2070,'охпдно',23);
INSERT INTO `n_nm` VALUES (3653,2823,'охпхм',1);
INSERT INTO `n_nm` VALUES (3654,7976,'охпхмеж',26);
INSERT INTO `n_nm` VALUES (3655,8528,'охпме',2);
INSERT INTO `n_nm` VALUES (3656,7081,'охяюмеж',19);
INSERT INTO `n_nm` VALUES (3657,4744,'охяюмхжю',22);
INSERT INTO `n_nm` VALUES (3658,5127,'охяюпебн',5);
INSERT INTO `n_nm` VALUES (3659,9927,'охяюпебн',28);
INSERT INTO `n_nm` VALUES (3660,9527,'охяюпнбн',9);
INSERT INTO `n_nm` VALUES (3661,5871,'охяюпнбн',16);
INSERT INTO `n_nm` VALUES (3662,8289,'охялемнбн',2);
INSERT INTO `n_nm` VALUES (3663,8942,'охрнбн',21);
INSERT INTO `n_nm` VALUES (3664,2218,'охьюме',23);
INSERT INTO `n_nm` VALUES (3665,3662,'охьспйю',13);
INSERT INTO `n_nm` VALUES (3666,4451,'охыхцнбн',14);
INSERT INTO `n_nm` VALUES (3667,6813,'охъбеж',10);
INSERT INTO `n_nm` VALUES (3668,6850,'окюгхые',10);
INSERT INTO `n_nm` VALUES (3669,5042,'окюйнбн',5);
INSERT INTO `n_nm` VALUES (3670,3781,'окюйсдеп',6);
INSERT INTO `n_nm` VALUES (3671,1475,'окюмю',24);
INSERT INTO `n_nm` VALUES (3672,6599,'окюмхмеж',27);
INSERT INTO `n_nm` VALUES (3673,2340,'окюмхмхжю',15);
INSERT INTO `n_nm` VALUES (3674,8565,'окюмхмхжю',2);
INSERT INTO `n_nm` VALUES (3675,6560,'окюмхмнбн',27);
INSERT INTO `n_nm` VALUES (3676,4940,'окюмхмяйн',22);
INSERT INTO `n_nm` VALUES (3677,4921,'окюмхмжх',22);
INSERT INTO `n_nm` VALUES (3678,5367,'окюмхмжх',8);
INSERT INTO `n_nm` VALUES (3679,9365,'окювхднк',9);
INSERT INTO `n_nm` VALUES (3680,5370,'окювйю',8);
INSERT INTO `n_nm` VALUES (3681,5360,'окювйнбжх',8);
INSERT INTO `n_nm` VALUES (3682,5800,'окебем',16);
INSERT INTO `n_nm` VALUES (3683,9522,'окемхлхп',9);
INSERT INTO `n_nm` VALUES (3684,2954,'океремю',1);
INSERT INTO `n_nm` VALUES (3685,3931,'океьхбеж',6);
INSERT INTO `n_nm` VALUES (3686,6800,'океьхмжх',10);
INSERT INTO `n_nm` VALUES (3687,9920,'окхяйю',28);
INSERT INTO `n_nm` VALUES (3688,4000,'окнбдхб',17);
INSERT INTO `n_nm` VALUES (3689,4979,'окнбдхбжх',22);
INSERT INTO `n_nm` VALUES (3690,6890,'окнбйю',10);
INSERT INTO `n_nm` VALUES (3691,6257,'окнднбхрнбн',25);
INSERT INTO `n_nm` VALUES (3692,6055,'окняйю лнцхкю',25);
INSERT INTO `n_nm` VALUES (3693,2810,'окняйх',1);
INSERT INTO `n_nm` VALUES (3694,2072,'окзгхые',23);
INSERT INTO `n_nm` VALUES (3695,7934,'окзярхмю',26);
INSERT INTO `n_nm` VALUES (3696,9372,'онаедю',9);
INSERT INTO `n_nm` VALUES (3697,5873,'онаедю',16);
INSERT INTO `n_nm` VALUES (3698,8679,'онаедю',29);
INSERT INTO `n_nm` VALUES (3699,4638,'онахр йюлзй',14);
INSERT INTO `n_nm` VALUES (3700,7262,'онахр йюлзй',18);
INSERT INTO `n_nm` VALUES (3701,2554,'онахр йюлзй',11);
INSERT INTO `n_nm` VALUES (3702,5365,'оназй',8);
INSERT INTO `n_nm` VALUES (3703,2218,'онбюкхпзф',23);
INSERT INTO `n_nm` VALUES (3704,6630,'онбер',10);
INSERT INTO `n_nm` VALUES (3705,7431,'ондюибю',18);
INSERT INTO `n_nm` VALUES (3706,4733,'ондбхя',22);
INSERT INTO `n_nm` VALUES (3707,8450,'ондбхя',2);
INSERT INTO `n_nm` VALUES (3708,6850,'ондбпзу',10);
INSERT INTO `n_nm` VALUES (3709,3852,'ондцнпE',6);
INSERT INTO `n_nm` VALUES (3710,8535,'ондцнпеж',2);
INSERT INTO `n_nm` VALUES (3711,2049,'ондцнпхе',23);
INSERT INTO `n_nm` VALUES (3712,7768,'ондцнпхжю',26);
INSERT INTO `n_nm` VALUES (3713,1221,'ондцслеп',23);
INSERT INTO `n_nm` VALUES (3714,5852,'ондел',16);
INSERT INTO `n_nm` VALUES (3715,6880,'ондйнбю',10);
INSERT INTO `n_nm` VALUES (3716,6312,'ондйпеою',27);
INSERT INTO `n_nm` VALUES (3717,7632,'ондкея',20);
INSERT INTO `n_nm` VALUES (3718,6945,'ондпслве',10);
INSERT INTO `n_nm` VALUES (3719,9391,'ондякнм',9);
INSERT INTO `n_nm` VALUES (3720,6057,'ондякнм',25);
INSERT INTO `n_nm` VALUES (3721,2229,'онфюпебн',23);
INSERT INTO `n_nm` VALUES (3722,7622,'онфюпебн',20);
INSERT INTO `n_nm` VALUES (3723,5041,'онфепмхй',5);
INSERT INTO `n_nm` VALUES (3724,4524,'онхапеме',14);
INSERT INTO `n_nm` VALUES (3725,3764,'онйпюимю',6);
INSERT INTO `n_nm` VALUES (3726,6575,'онйпнбюм',27);
INSERT INTO `n_nm` VALUES (3727,2708,'онйпнбмхй',1);
INSERT INTO `n_nm` VALUES (3728,2758,'онкемю',1);
INSERT INTO `n_nm` VALUES (3729,2804,'онкемхжю',1);
INSERT INTO `n_nm` VALUES (3730,2561,'онкерхмжх',11);
INSERT INTO `n_nm` VALUES (3731,3818,'онкерйнбжх',6);
INSERT INTO `n_nm` VALUES (3732,2751,'онкерн',1);
INSERT INTO `n_nm` VALUES (3733,5138,'онкхйпюхые',5);
INSERT INTO `n_nm` VALUES (3734,2060,'онкхнбжх',23);
INSERT INTO `n_nm` VALUES (3735,9401,'онкйнбмхй дъйнбн',9);
INSERT INTO `n_nm` VALUES (3736,6909,'онкйнбмхй фекъгнбн',10);
INSERT INTO `n_nm` VALUES (3737,9432,'онкйнбмхй хбюмнбн',9);
INSERT INTO `n_nm` VALUES (3738,7579,'онкйнбмхй кюлапхмнб',20);
INSERT INTO `n_nm` VALUES (3739,9471,'онкйнбмхй яюбнбн',9);
INSERT INTO `n_nm` VALUES (3740,9378,'онкйнбмхй ябеыюпнбн',9);
INSERT INTO `n_nm` VALUES (3741,4794,'онкйнбмхй яепютхлнб',22);
INSERT INTO `n_nm` VALUES (3742,7677,'онкйнбмхй рюякюйнбн',20);
INSERT INTO `n_nm` VALUES (3743,7553,'онкйнбмхй внкюйнбн',20);
INSERT INTO `n_nm` VALUES (3744,2551,'онкяйю яйюйюбхжю',11);
INSERT INTO `n_nm` VALUES (3745,6276,'онкяйх цпюдеж',25);
INSERT INTO `n_nm` VALUES (3746,8123,'онкяйх хгбнп',2);
INSERT INTO `n_nm` VALUES (3747,5193,'онкяйх яемнбеж',5);
INSERT INTO `n_nm` VALUES (3748,5180,'онкяйх рпзлаеь',5);
INSERT INTO `n_nm` VALUES (3749,7131,'онкяйн йнянбн',19);
INSERT INTO `n_nm` VALUES (3750,8937,'онкяйн оздюпебн',21);
INSERT INTO `n_nm` VALUES (3751,4977,'онкъмю',22);
INSERT INTO `n_nm` VALUES (3752,7584,'онкъмю',20);
INSERT INTO `n_nm` VALUES (3753,8654,'онкъмю',29);
INSERT INTO `n_nm` VALUES (3754,6847,'онкъмеж',10);
INSERT INTO `n_nm` VALUES (3755,8544,'онкъмнбн',2);
INSERT INTO `n_nm` VALUES (3756,6464,'онкъмнбн',27);
INSERT INTO `n_nm` VALUES (3757,2068,'онкъмжх',23);
INSERT INTO `n_nm` VALUES (3758,9239,'онкъжхре',3);
INSERT INTO `n_nm` VALUES (3759,3476,'онлефдхм',13);
INSERT INTO `n_nm` VALUES (3760,7164,'онлем',19);
INSERT INTO `n_nm` VALUES (3761,8200,'онлнпхе',2);
INSERT INTO `n_nm` VALUES (3762,7839,'онлныхжю',26);
INSERT INTO `n_nm` VALUES (3763,6297,'онлнымхй',25);
INSERT INTO `n_nm` VALUES (3764,2236,'онмнп',23);
INSERT INTO `n_nm` VALUES (3765,5343,'оноюпх',8);
INSERT INTO `n_nm` VALUES (3766,5365,'оноцепцебжх',8);
INSERT INTO `n_nm` VALUES (3767,9377,'оноцпхцнпнбн',9);
INSERT INTO `n_nm` VALUES (3768,9478,'оноцпсебн',9);
INSERT INTO `n_nm` VALUES (3769,7590,'онохмю',20);
INSERT INTO `n_nm` VALUES (3770,4528,'онохмжх',14);
INSERT INTO `n_nm` VALUES (3771,3244,'онохжю',7);
INSERT INTO `n_nm` VALUES (3772,7545,'онойпюкебн',20);
INSERT INTO `n_nm` VALUES (3773,6398,'ононбеж',27);
INSERT INTO `n_nm` VALUES (3774,4127,'ононбхжю',17);
INSERT INTO `n_nm` VALUES (3775,9101,'ононбхв',3);
INSERT INTO `n_nm` VALUES (3776,8735,'ононбн',29);
INSERT INTO `n_nm` VALUES (3777,7800,'ононбн',26);
INSERT INTO `n_nm` VALUES (3778,5035,'ононбжх',5);
INSERT INTO `n_nm` VALUES (3779,5345,'ононбжх',8);
INSERT INTO `n_nm` VALUES (3780,2060,'ононбжх',23);
INSERT INTO `n_nm` VALUES (3781,2014,'ононбъме',23);
INSERT INTO `n_nm` VALUES (3782,5365,'онопюийнбжх',8);
INSERT INTO `n_nm` VALUES (3783,4759,'онопекйю',22);
INSERT INTO `n_nm` VALUES (3784,7564,'онопсяюмнбн',20);
INSERT INTO `n_nm` VALUES (3785,5084,'онопсяебжх',5);
INSERT INTO `n_nm` VALUES (3786,5084,'онояйю',5);
INSERT INTO `n_nm` VALUES (3787,5466,'онояйю',8);
INSERT INTO `n_nm` VALUES (3788,6580,'онояйн',27);
INSERT INTO `n_nm` VALUES (3789,5898,'онпдхл',16);
INSERT INTO `n_nm` VALUES (3790,7218,'онпнхые',18);
INSERT INTO `n_nm` VALUES (3791,8221,'онпни',2);
INSERT INTO `n_nm` VALUES (3792,4281,'онпнимю',17);
INSERT INTO `n_nm` VALUES (3793,7952,'онпнимн',26);
INSERT INTO `n_nm` VALUES (3794,7658,'онпнимн',20);
INSERT INTO `n_nm` VALUES (3795,2639,'онпнлхмнбн',11);
INSERT INTO `n_nm` VALUES (3796,3432,'онпрхрнбжх',13);
INSERT INTO `n_nm` VALUES (3797,9409,'онпсвхй йзпдфхебн',9);
INSERT INTO `n_nm` VALUES (3798,9658,'онпсвхй всмвебн',9);
INSERT INTO `n_nm` VALUES (3799,7853,'оняюахмю',26);
INSERT INTO `n_nm` VALUES (3800,7567,'оняеб',20);
INSERT INTO `n_nm` VALUES (3801,6833,'онярмхй',10);
INSERT INTO `n_nm` VALUES (3802,5309,'онрнй',8);
INSERT INTO `n_nm` VALUES (3803,4768,'онрнйю',22);
INSERT INTO `n_nm` VALUES (3804,2127,'онрно',23);
INSERT INTO `n_nm` VALUES (3805,6963,'онрнвюпйю',10);
INSERT INTO `n_nm` VALUES (3806,6850,'онрнве',10);
INSERT INTO `n_nm` VALUES (3807,6960,'онрнвмхжю',10);
INSERT INTO `n_nm` VALUES (3808,2455,'онжзпмемжх',15);
INSERT INTO `n_nm` VALUES (3809,5125,'опюбдю',5);
INSERT INTO `n_nm` VALUES (3810,7690,'опюбдю',20);
INSERT INTO `n_nm` VALUES (3811,8695,'опюбдхмн',29);
INSERT INTO `n_nm` VALUES (3812,6765,'опюбднкча',10);
INSERT INTO `n_nm` VALUES (3813,9945,'опюбемжх',28);
INSERT INTO `n_nm` VALUES (3814,2161,'опюбеж',23);
INSERT INTO `n_nm` VALUES (3815,2170,'опюбеьйю кюйюбхжю',23);
INSERT INTO `n_nm` VALUES (3816,4191,'опюбхые',17);
INSERT INTO `n_nm` VALUES (3817,2894,'опюбн азпдн',1);
INSERT INTO `n_nm` VALUES (3818,6248,'опюбнякюб',25);
INSERT INTO `n_nm` VALUES (3819,4287,'опюбнякюбем',17);
INSERT INTO `n_nm` VALUES (3820,3917,'опюсфдю',6);
INSERT INTO `n_nm` VALUES (3821,5345,'опюуюкх',8);
INSERT INTO `n_nm` VALUES (3822,3457,'опебюкю',13);
INSERT INTO `n_nm` VALUES (3823,2571,'опейнкмхжю',11);
INSERT INTO `n_nm` VALUES (3824,2206,'опейпзяре',23);
INSERT INTO `n_nm` VALUES (3825,7325,'опекег',18);
INSERT INTO `n_nm` VALUES (3826,5545,'опекнл',12);
INSERT INTO `n_nm` VALUES (3827,5040,'опенапюфемяйх люмюя',5);
INSERT INTO `n_nm` VALUES (3828,8541,'опенапюфемжх',2);
INSERT INTO `n_nm` VALUES (3829,6862,'опеяейю',10);
INSERT INTO `n_nm` VALUES (3830,9558,'опеяекемжх',9);
INSERT INTO `n_nm` VALUES (3831,7772,'опеяекеж',26);
INSERT INTO `n_nm` VALUES (3832,9922,'опеяекйю',28);
INSERT INTO `n_nm` VALUES (3833,7762,'опеяхъм',26);
INSERT INTO `n_nm` VALUES (3834,6048,'опеякюбем',25);
INSERT INTO `n_nm` VALUES (3835,6454,'опеякюбеж',27);
INSERT INTO `n_nm` VALUES (3836,7635,'опеякюбжх',20);
INSERT INTO `n_nm` VALUES (3837,4987,'опеянйю',22);
INSERT INTO `n_nm` VALUES (3838,9635,'опеяою',9);
INSERT INTO `n_nm` VALUES (3839,2072,'опеяою',23);
INSERT INTO `n_nm` VALUES (3840,5350,'опеярни',8);
INSERT INTO `n_nm` VALUES (3841,7754,'опеяъй',18);
INSERT INTO `n_nm` VALUES (3842,5542,'опеяъйю',12);
INSERT INTO `n_nm` VALUES (3843,2452,'опхани',15);
INSERT INTO `n_nm` VALUES (3844,9352,'опхкео',9);
INSERT INTO `n_nm` VALUES (3845,8445,'опхкео',2);
INSERT INTO `n_nm` VALUES (3846,8290,'опхлнпяйн',2);
INSERT INTO `n_nm` VALUES (3847,9376,'опхлнпжх',9);
INSERT INTO `n_nm` VALUES (3848,9146,'опхоей',3);
INSERT INTO `n_nm` VALUES (3849,6858,'опхоей',10);
INSERT INTO `n_nm` VALUES (3850,8537,'опхоей',2);
INSERT INTO `n_nm` VALUES (3851,9524,'опхяюд',9);
INSERT INTO `n_nm` VALUES (3852,8161,'опхяюд',2);
INSERT INTO `n_nm` VALUES (3853,6564,'опхяюдеж',27);
INSERT INTO `n_nm` VALUES (3854,9131,'опхяекжх',3);
INSERT INTO `n_nm` VALUES (3855,8251,'опхяекжх',2);
INSERT INTO `n_nm` VALUES (3856,5033,'опхянбн',5);
INSERT INTO `n_nm` VALUES (3857,5766,'опхянерн',12);
INSERT INTO `n_nm` VALUES (3858,7969,'опхянимю',26);
INSERT INTO `n_nm` VALUES (3859,9965,'опхярне',28);
INSERT INTO `n_nm` VALUES (3860,7748,'опнасдю',26);
INSERT INTO `n_nm` VALUES (3861,9200,'опнбюдхъ',3);
INSERT INTO `n_nm` VALUES (3862,4871,'опнцкед',22);
INSERT INTO `n_nm` VALUES (3863,5045,'опндюмнбжх',5);
INSERT INTO `n_nm` VALUES (3864,5307,'опндюмнбжх',8);
INSERT INTO `n_nm` VALUES (3865,2007,'опндюмнбжх',23);
INSERT INTO `n_nm` VALUES (3866,2471,'опндюмвю',15);
INSERT INTO `n_nm` VALUES (3867,7739,'опнкюг',26);
INSERT INTO `n_nm` VALUES (3868,3913,'опнкюгмхжю',6);
INSERT INTO `n_nm` VALUES (3869,9685,'опнкег',9);
INSERT INTO `n_nm` VALUES (3870,2228,'опнкеью',23);
INSERT INTO `n_nm` VALUES (3871,4358,'опнкнл',17);
INSERT INTO `n_nm` VALUES (3872,6632,'опноюяр',10);
INSERT INTO `n_nm` VALUES (3873,7055,'опняемю',19);
INSERT INTO `n_nm` VALUES (3874,8548,'опняемхй',2);
INSERT INTO `n_nm` VALUES (3875,9175,'опняевем',3);
INSERT INTO `n_nm` VALUES (3876,7263,'опнярнпмн',19);
INSERT INTO `n_nm` VALUES (3877,3957,'опнрнонохмжх',6);
INSERT INTO `n_nm` VALUES (3878,9487,'опнтеянп гкюрюпяйх',9);
INSERT INTO `n_nm` VALUES (3879,7572,'опнтеянп хьхпйнбн',20);
INSERT INTO `n_nm` VALUES (3880,7668,'опнукюдю',20);
INSERT INTO `n_nm` VALUES (3881,8336,'опнунд',2);
INSERT INTO `n_nm` VALUES (3882,8944,'опнунпнбн',21);
INSERT INTO `n_nm` VALUES (3883,6062,'опъонпеж',25);
INSERT INTO `n_nm` VALUES (3884,6716,'опъонпеж',10);
INSERT INTO `n_nm` VALUES (3885,6811,'орхвюп',10);
INSERT INTO `n_nm` VALUES (3886,8998,'орхвюпх',21);
INSERT INTO `n_nm` VALUES (3887,7946,'орхвебн',26);
INSERT INTO `n_nm` VALUES (3888,3049,'осдпхъ',7);
INSERT INTO `n_nm` VALUES (3889,5062,'осьебн',5);
INSERT INTO `n_nm` VALUES (3890,8718,'овекю',29);
INSERT INTO `n_nm` VALUES (3891,6385,'овекюпх',27);
INSERT INTO `n_nm` VALUES (3892,9550,'овекюпнбн',9);
INSERT INTO `n_nm` VALUES (3893,6664,'овекюпнбн',10);
INSERT INTO `n_nm` VALUES (3894,2048,'овекхм',23);
INSERT INTO `n_nm` VALUES (3895,8456,'овекхм',2);
INSERT INTO `n_nm` VALUES (3896,7438,'овекхмю',18);
INSERT INTO `n_nm` VALUES (3897,9363,'овекхмн',9);
INSERT INTO `n_nm` VALUES (3898,6196,'овекхмнбн',25);
INSERT INTO `n_nm` VALUES (3899,5048,'овекхые',5);
INSERT INTO `n_nm` VALUES (3900,9427,'овекмхй',9);
INSERT INTO `n_nm` VALUES (3901,9118,'овекмхй',3);
INSERT INTO `n_nm` VALUES (3902,7987,'овекмн',26);
INSERT INTO `n_nm` VALUES (3903,6268,'оьемхвебн',25);
INSERT INTO `n_nm` VALUES (3904,8992,'оздюпебн',21);
INSERT INTO `n_nm` VALUES (3905,7959,'оздюпхмн',26);
INSERT INTO `n_nm` VALUES (3906,4158,'оздюпяйн',17);
INSERT INTO `n_nm` VALUES (3907,6746,'оздюпжх',10);
INSERT INTO `n_nm` VALUES (3908,8317,'озмвебн',2);
INSERT INTO `n_nm` VALUES (3909,7958,'озпбюм',26);
INSERT INTO `n_nm` VALUES (3910,4110,'озпбемеж',17);
INSERT INTO `n_nm` VALUES (3911,8694,'озпбемеж',29);
INSERT INTO `n_nm` VALUES (3912,6865,'озпбемжх',10);
INSERT INTO `n_nm` VALUES (3913,6882,'озпбхжю',10);
INSERT INTO `n_nm` VALUES (3914,2890,'озпбнлюи',1);
INSERT INTO `n_nm` VALUES (3915,4270,'озпбнлюи',17);
INSERT INTO `n_nm` VALUES (3916,5139,'озпбнлюижх',5);
INSERT INTO `n_nm` VALUES (3917,5365,'озпфхцпюу',8);
INSERT INTO `n_nm` VALUES (3918,3531,'озпкхвебн',13);
INSERT INTO `n_nm` VALUES (3919,5052,'озпнбжх',5);
INSERT INTO `n_nm` VALUES (3920,5307,'озпребжх',8);
INSERT INTO `n_nm` VALUES (3921,5380,'озпью',8);
INSERT INTO `n_nm` VALUES (3922,6075,'озярпем',25);
INSERT INTO `n_nm` VALUES (3923,6233,'озярпнбн',25);
INSERT INTO `n_nm` VALUES (3924,6519,'озярпнцнп',27);
INSERT INTO `n_nm` VALUES (3925,6597,'озярпннй',27);
INSERT INTO `n_nm` VALUES (3926,6379,'озрмхйнбн',27);
INSERT INTO `n_nm` VALUES (3927,6496,'оъязвебн',27);
INSERT INTO `n_nm` VALUES (3928,3938,'пюахью',6);
INSERT INTO `n_nm` VALUES (3929,6384,'пюанбн',27);
INSERT INTO `n_nm` VALUES (3930,3842,'пюапнбн',6);
INSERT INTO `n_nm` VALUES (3931,8146,'пюбюдхмнбн',2);
INSERT INTO `n_nm` VALUES (3932,8238,'пюбдю',2);
INSERT INTO `n_nm` VALUES (3933,6834,'пюбем',10);
INSERT INTO `n_nm` VALUES (3934,2249,'пюбмю',23);
INSERT INTO `n_nm` VALUES (3935,9235,'пюбмю',3);
INSERT INTO `n_nm` VALUES (3936,5742,'пюбмю',12);
INSERT INTO `n_nm` VALUES (3937,3473,'пюбмю',13);
INSERT INTO `n_nm` VALUES (3938,9124,'пюбмю цнпю',3);
INSERT INTO `n_nm` VALUES (3939,6526,'пюбмю цнпю',27);
INSERT INTO `n_nm` VALUES (3940,8151,'пюбмю цнпю',2);
INSERT INTO `n_nm` VALUES (3941,8117,'пюбмеж',2);
INSERT INTO `n_nm` VALUES (3942,9523,'пюбмеж',9);
INSERT INTO `n_nm` VALUES (3943,4931,'пюбмхк',22);
INSERT INTO `n_nm` VALUES (3944,4781,'пюбмхмюрю',22);
INSERT INTO `n_nm` VALUES (3945,4955,'пюбмхыю',22);
INSERT INTO `n_nm` VALUES (3946,2167,'пюбмхые',23);
INSERT INTO `n_nm` VALUES (3947,7296,'пюбмн',19);
INSERT INTO `n_nm` VALUES (3948,4913,'пюбмн мхбхые',22);
INSERT INTO `n_nm` VALUES (3949,2129,'пюбмн онке',23);
INSERT INTO `n_nm` VALUES (3950,7965,'пюбмн яекн',26);
INSERT INTO `n_nm` VALUES (3951,5089,'пюбмнбн',5);
INSERT INTO `n_nm` VALUES (3952,4582,'пюбмнцнп',14);
INSERT INTO `n_nm` VALUES (3953,9294,'пюдюм бнибндю',3);
INSERT INTO `n_nm` VALUES (3954,5185,'пюдюмнбн',5);
INSERT INTO `n_nm` VALUES (3955,5370,'пюдюмверн',8);
INSERT INTO `n_nm` VALUES (3956,9149,'пюдебн',3);
INSERT INTO `n_nm` VALUES (3957,8917,'пюдебн',21);
INSERT INTO `n_nm` VALUES (3958,5360,'пюдебжх',8);
INSERT INTO `n_nm` VALUES (3959,8959,'пюдежйх',21);
INSERT INTO `n_nm` VALUES (3960,2447,'пюдхань',15);
INSERT INTO `n_nm` VALUES (3961,6427,'пюдхебн',27);
INSERT INTO `n_nm` VALUES (3962,4590,'пюдхкнбн',14);
INSERT INTO `n_nm` VALUES (3963,7245,'пюдхмцпюд',18);
INSERT INTO `n_nm` VALUES (3964,8983,'пюдхмйю',21);
INSERT INTO `n_nm` VALUES (3965,5360,'пюдхмн',8);
INSERT INTO `n_nm` VALUES (3966,4202,'пюдхмнбн',17);
INSERT INTO `n_nm` VALUES (3967,5838,'пюдхьебн',16);
INSERT INTO `n_nm` VALUES (3968,9808,'пюдйн дхлхрпхебн',28);
INSERT INTO `n_nm` VALUES (3969,5041,'пюдйнбжх',5);
INSERT INTO `n_nm` VALUES (3970,2548,'пюдкнбжх',11);
INSERT INTO `n_nm` VALUES (3971,6260,'пюдмебн',25);
INSERT INTO `n_nm` VALUES (3972,5035,'пюдмебжх',5);
INSERT INTO `n_nm` VALUES (3973,3144,'пюднбеме',7);
INSERT INTO `n_nm` VALUES (3974,6564,'пюднбеж',27);
INSERT INTO `n_nm` VALUES (3975,2488,'пюднбн',15);
INSERT INTO `n_nm` VALUES (3976,5380,'пюднбжх',8);
INSERT INTO `n_nm` VALUES (3977,5084,'пюднбжх',5);
INSERT INTO `n_nm` VALUES (3978,5633,'пюднебяйнрн',12);
INSERT INTO `n_nm` VALUES (3979,5367,'пюднебжх',8);
INSERT INTO `n_nm` VALUES (3980,8323,'пюднимнбн',2);
INSERT INTO `n_nm` VALUES (3981,2400,'пюднлхп',15);
INSERT INTO `n_nm` VALUES (3982,5997,'пюднлхпжх',16);
INSERT INTO `n_nm` VALUES (3983,2148,'пюднрхмю',23);
INSERT INTO `n_nm` VALUES (3984,2043,'пюдсхк',23);
INSERT INTO `n_nm` VALUES (3985,2359,'пюдси',15);
INSERT INTO `n_nm` VALUES (3986,2222,'пюдскнбжх',23);
INSERT INTO `n_nm` VALUES (3987,6185,'пюдсмжх',25);
INSERT INTO `n_nm` VALUES (3988,6185,'пюдсмжх - яюмюрнпхс',25);
INSERT INTO `n_nm` VALUES (3989,5540,'пюдчбеме',12);
INSERT INTO `n_nm` VALUES (3990,5363,'пюебжх',8);
INSERT INTO `n_nm` VALUES (3991,2253,'пюганхые',23);
INSERT INTO `n_nm` VALUES (3992,8531,'пюганимю',2);
INSERT INTO `n_nm` VALUES (3993,7707,'пюганимю',26);
INSERT INTO `n_nm` VALUES (3994,9790,'пюгбхцнпнбн',28);
INSERT INTO `n_nm` VALUES (3995,3633,'пюгцпюд',13);
INSERT INTO `n_nm` VALUES (3996,7200,'пюгцпюд',18);
INSERT INTO `n_nm` VALUES (3997,7659,'пюгдек',20);
INSERT INTO `n_nm` VALUES (3998,8747,'пюгдек',29);
INSERT INTO `n_nm` VALUES (3999,9181,'пюгдекмю',3);
INSERT INTO `n_nm` VALUES (4000,6283,'пюгдекмю',25);
INSERT INTO `n_nm` VALUES (4001,7989,'пюгдекжх',26);
INSERT INTO `n_nm` VALUES (4002,2835,'пюгднк',1);
INSERT INTO `n_nm` VALUES (4003,2166,'пюгднкюрю',23);
INSERT INTO `n_nm` VALUES (4004,2162,'пюгкхб',23);
INSERT INTO `n_nm` VALUES (4005,2760,'пюгкнц',1);
INSERT INTO `n_nm` VALUES (4006,5089,'пюгяную',5);
INSERT INTO `n_nm` VALUES (4007,6525,'пюийнбю лнцхкю',27);
INSERT INTO `n_nm` VALUES (4008,5617,'пюийнбяйю',12);
INSERT INTO `n_nm` VALUES (4009,5039,'пюийнбжх',5);
INSERT INTO `n_nm` VALUES (4010,7421,'пюимхмн',18);
INSERT INTO `n_nm` VALUES (4011,6423,'пюимнбн',27);
INSERT INTO `n_nm` VALUES (4012,5347,'пюимнбжх',8);
INSERT INTO `n_nm` VALUES (4013,5094,'пюимнбжх',5);
INSERT INTO `n_nm` VALUES (4014,5363,'пюимсьйнбжх',8);
INSERT INTO `n_nm` VALUES (4015,2017,'пюинбн',23);
INSERT INTO `n_nm` VALUES (4016,3067,'пюйебн',7);
INSERT INTO `n_nm` VALUES (4017,2451,'пюйхкнбжх',15);
INSERT INTO `n_nm` VALUES (4018,2223,'пюйхрю',23);
INSERT INTO `n_nm` VALUES (4019,5998,'пюйхрю',16);
INSERT INTO `n_nm` VALUES (4020,2753,'пюйхрмю',1);
INSERT INTO `n_nm` VALUES (4021,3791,'пюйхрмхжю',6);
INSERT INTO `n_nm` VALUES (4022,6067,'пюйхрмхжю',25);
INSERT INTO `n_nm` VALUES (4023,4640,'пюйхрнбн',14);
INSERT INTO `n_nm` VALUES (4024,8547,'пюйкхмнбн',2);
INSERT INTO `n_nm` VALUES (4025,8439,'пюйкхжю',2);
INSERT INTO `n_nm` VALUES (4026,3820,'пюйнбхжю',6);
INSERT INTO `n_nm` VALUES (4027,2577,'пюйнбн',11);
INSERT INTO `n_nm` VALUES (4028,8884,'пюйнбн',21);
INSERT INTO `n_nm` VALUES (4029,9659,'пюйнбяйх',9);
INSERT INTO `n_nm` VALUES (4030,7264,'пюйнбяйх',18);
INSERT INTO `n_nm` VALUES (4031,4150,'пюйнбяйх',17);
INSERT INTO `n_nm` VALUES (4032,8257,'пюйнбяйнбн',2);
INSERT INTO `n_nm` VALUES (4033,5875,'пюкебн',16);
INSERT INTO `n_nm` VALUES (4034,5367,'пюкебжх',8);
INSERT INTO `n_nm` VALUES (4035,5098,'пюкхмнбжх',5);
INSERT INTO `n_nm` VALUES (4036,6820,'пюкхжю',10);
INSERT INTO `n_nm` VALUES (4037,7759,'пюкхжю',26);
INSERT INTO `n_nm` VALUES (4038,6965,'пюкхвебн',10);
INSERT INTO `n_nm` VALUES (4039,2569,'пюмемжх',11);
INSERT INTO `n_nm` VALUES (4040,6720,'пюмх кхяр',10);
INSERT INTO `n_nm` VALUES (4041,2484,'пюмх ксц',15);
INSERT INTO `n_nm` VALUES (4042,2357,'пюямхй',15);
INSERT INTO `n_nm` VALUES (4043,3660,'пюянбн',13);
INSERT INTO `n_nm` VALUES (4044,6865,'пюярмхй',10);
INSERT INTO `n_nm` VALUES (4045,5343,'пюунбжх',8);
INSERT INTO `n_nm` VALUES (4046,5345,'пювебжх',8);
INSERT INTO `n_nm` VALUES (4047,5350,'пювнбжх',8);
INSERT INTO `n_nm` VALUES (4048,5035,'пюьебжх',5);
INSERT INTO `n_nm` VALUES (4049,2578,'пюьйю цпюыхжю',11);
INSERT INTO `n_nm` VALUES (4050,2152,'пюьйнбн',23);
INSERT INTO `n_nm` VALUES (4051,5350,'пюьнбхре',8);
INSERT INTO `n_nm` VALUES (4052,3532,'пюьнбхжю',13);
INSERT INTO `n_nm` VALUES (4053,5093,'пючбжх',5);
INSERT INTO `n_nm` VALUES (4054,3935,'пюъмнбжх',6);
INSERT INTO `n_nm` VALUES (4055,2204,'пюъмнбжх',23);
INSERT INTO `n_nm` VALUES (4056,2446,'пюъмжх',15);
INSERT INTO `n_nm` VALUES (4057,5087,'пеапебжх',5);
INSERT INTO `n_nm` VALUES (4058,2384,'пеапн',15);
INSERT INTO `n_nm` VALUES (4059,2294,'пеапнбн',23);
INSERT INTO `n_nm` VALUES (4060,3158,'пеазпйнбн',7);
INSERT INTO `n_nm` VALUES (4061,5340,'педеьйнбжх',8);
INSERT INTO `n_nm` VALUES (4062,2269,'педхмю',23);
INSERT INTO `n_nm` VALUES (4063,2380,'пефюмжх',15);
INSERT INTO `n_nm` VALUES (4064,2562,'пефхмжх',11);
INSERT INTO `n_nm` VALUES (4065,5088,'пегюв',5);
INSERT INTO `n_nm` VALUES (4066,6649,'пегаюпжх',10);
INSERT INTO `n_nm` VALUES (4067,8281,'пегнбн',2);
INSERT INTO `n_nm` VALUES (4068,4734,'пейю',22);
INSERT INTO `n_nm` VALUES (4069,5088,'пейхвйю',5);
INSERT INTO `n_nm` VALUES (4070,2018,'пекэнбн',23);
INSERT INTO `n_nm` VALUES (4071,3954,'пеокъмю',6);
INSERT INTO `n_nm` VALUES (4072,5993,'пеяекеж',16);
INSERT INTO `n_nm` VALUES (4073,5060,'пеяем',5);
INSERT INTO `n_nm` VALUES (4074,2621,'пеяхкнбн',11);
INSERT INTO `n_nm` VALUES (4075,4793,'певюмх',22);
INSERT INTO `n_nm` VALUES (4076,8567,'певхжю',2);
INSERT INTO `n_nm` VALUES (4077,2483,'пеъмнбжх',15);
INSERT INTO `n_nm` VALUES (4078,2192,'пхаюпхжю',23);
INSERT INTO `n_nm` VALUES (4079,5720,'пхаюпхжю',12);
INSERT INTO `n_nm` VALUES (4080,6790,'пхаюпжх',10);
INSERT INTO `n_nm` VALUES (4081,5847,'пхаем',16);
INSERT INTO `n_nm` VALUES (4082,4952,'пхаем днк',22);
INSERT INTO `n_nm` VALUES (4083,6939,'пхахмн',10);
INSERT INTO `n_nm` VALUES (4084,2864,'пхамхй',1);
INSERT INTO `n_nm` VALUES (4085,4973,'пхамхжю',22);
INSERT INTO `n_nm` VALUES (4086,2967,'пхамнбн',1);
INSERT INTO `n_nm` VALUES (4087,6849,'пхдхмн',10);
INSERT INTO `n_nm` VALUES (4088,6742,'пхднбн',10);
INSERT INTO `n_nm` VALUES (4089,2630,'пхкю',11);
INSERT INTO `n_nm` VALUES (4090,2643,'пхкяйх люмюярхп',11);
INSERT INTO `n_nm` VALUES (4091,2710,'пхкжх',1);
INSERT INTO `n_nm` VALUES (4092,6274,'пхяхлюмнбн',25);
INSERT INTO `n_nm` VALUES (4093,5370,'пхръ',8);
INSERT INTO `n_nm` VALUES (4094,9830,'пхь',28);
INSERT INTO `n_nm` VALUES (4095,8664,'пнанбн',29);
INSERT INTO `n_nm` VALUES (4096,4736,'пнбхмю',22);
INSERT INTO `n_nm` VALUES (4097,6916,'пнцюв',10);
INSERT INTO `n_nm` VALUES (4098,9632,'пнцювебн',9);
INSERT INTO `n_nm` VALUES (4099,3962,'пнцкеж',6);
INSERT INTO `n_nm` VALUES (4100,6845,'пнцнгюпх',10);
INSERT INTO `n_nm` VALUES (4101,3360,'пнцнгем',7);
INSERT INTO `n_nm` VALUES (4102,9560,'пнцнгхмю',9);
INSERT INTO `n_nm` VALUES (4103,6469,'пнцнгхмнбн',27);
INSERT INTO `n_nm` VALUES (4104,6845,'пнцнгве',10);
INSERT INTO `n_nm` VALUES (4105,4140,'пнцнь',17);
INSERT INTO `n_nm` VALUES (4106,5447,'пнцскър',8);
INSERT INTO `n_nm` VALUES (4107,5092,'пндхмю',5);
INSERT INTO `n_nm` VALUES (4108,6356,'пнднох',27);
INSERT INTO `n_nm` VALUES (4109,6762,'пнднояйн',10);
INSERT INTO `n_nm` VALUES (4110,8539,'пнфдем',2);
INSERT INTO `n_nm` VALUES (4111,2820,'пнфем',1);
INSERT INTO `n_nm` VALUES (4112,8630,'пнгю',29);
INSERT INTO `n_nm` VALUES (4113,6596,'пнгхмн',27);
INSERT INTO `n_nm` VALUES (4114,4340,'пнгхмн',17);
INSERT INTO `n_nm` VALUES (4115,4154,'пнгнбеж',17);
INSERT INTO `n_nm` VALUES (4116,4583,'пнгнбн',14);
INSERT INTO `n_nm` VALUES (4117,6163,'пнгнбн',25);
INSERT INTO `n_nm` VALUES (4118,3130,'пнлюм',7);
INSERT INTO `n_nm` VALUES (4119,2254,'пнонр',23);
INSERT INTO `n_nm` VALUES (4120,9537,'пняем',9);
INSERT INTO `n_nm` VALUES (4121,4421,'пняем',14);
INSERT INTO `n_nm` VALUES (4122,8150,'пняем',2);
INSERT INTO `n_nm` VALUES (4123,9369,'пняемнбн',9);
INSERT INTO `n_nm` VALUES (4124,8318,'пняемнбн',2);
INSERT INTO `n_nm` VALUES (4125,7784,'пняхмю',18);
INSERT INTO `n_nm` VALUES (4126,7933,'пняхжю',26);
INSERT INTO `n_nm` VALUES (4127,9540,'пняхжю',9);
INSERT INTO `n_nm` VALUES (4128,5221,'пняхжю',5);
INSERT INTO `n_nm` VALUES (4129,5091,'пнямн',5);
INSERT INTO `n_nm` VALUES (4130,2225,'пнянлюм',23);
INSERT INTO `n_nm` VALUES (4131,4653,'пнукебю',14);
INSERT INTO `n_nm` VALUES (4132,9252,'пнъй',3);
INSERT INTO `n_nm` VALUES (4133,2343,'псдюпжх',15);
INSERT INTO `n_nm` VALUES (4134,6659,'псдхмю',10);
INSERT INTO `n_nm` VALUES (4135,8536,'псдхмю',2);
INSERT INTO `n_nm` VALUES (4136,8112,'псдмхй',2);
INSERT INTO `n_nm` VALUES (4137,9105,'псдмхй',3);
INSERT INTO `n_nm` VALUES (4138,4960,'псднгел',22);
INSERT INTO `n_nm` VALUES (4139,5367,'псебжх',8);
INSERT INTO `n_nm` VALUES (4140,4102,'псем',17);
INSERT INTO `n_nm` VALUES (4141,8540,'псем',2);
INSERT INTO `n_nm` VALUES (4142,7744,'псеж',26);
INSERT INTO `n_nm` VALUES (4143,3930,'псфхмжх',6);
INSERT INTO `n_nm` VALUES (4144,8722,'псфхжю',29);
INSERT INTO `n_nm` VALUES (4145,9954,'псфхжю',28);
INSERT INTO `n_nm` VALUES (4146,7692,'псимн',20);
INSERT INTO `n_nm` VALUES (4147,5304,'псивнбжх',8);
INSERT INTO `n_nm` VALUES (4148,6057,'пслюмъ',25);
INSERT INTO `n_nm` VALUES (4149,6453,'пслекхъ',27);
INSERT INTO `n_nm` VALUES (4150,5785,'пслъмжебн',12);
INSERT INTO `n_nm` VALUES (4151,5397,'псмъ',8);
INSERT INTO `n_nm` VALUES (4152,2863,'псохре',1);
INSERT INTO `n_nm` VALUES (4153,6251,'псойхре',25);
INSERT INTO `n_nm` VALUES (4154,3726,'псожх',6);
INSERT INTO `n_nm` VALUES (4155,5994,'псожх',16);
INSERT INTO `n_nm` VALUES (4156,8574,'псовю',2);
INSERT INTO `n_nm` VALUES (4157,6695,'псяюкхмю',10);
INSERT INTO `n_nm` VALUES (4158,6795,'псяюкяйн',10);
INSERT INTO `n_nm` VALUES (4159,5057,'псяюкъ',5);
INSERT INTO `n_nm` VALUES (4160,7000,'псяе',19);
INSERT INTO `n_nm` VALUES (4161,5380,'псяхмнбжх',8);
INSERT INTO `n_nm` VALUES (4162,3148,'псяйю аекю',7);
INSERT INTO `n_nm` VALUES (4163,5035,'псяйнбжх',5);
INSERT INTO `n_nm` VALUES (4164,8105,'псянйюярпн',2);
INSERT INTO `n_nm` VALUES (4165,4956,'псярюм',22);
INSERT INTO `n_nm` VALUES (4166,5079,'псунбжх',5);
INSERT INTO `n_nm` VALUES (4167,6928,'псвеи',10);
INSERT INTO `n_nm` VALUES (4168,2060,'пзфюмю',23);
INSERT INTO `n_nm` VALUES (4169,2389,'пзфдюбеж',15);
INSERT INTO `n_nm` VALUES (4170,2550,'пзфдюбхжю',11);
INSERT INTO `n_nm` VALUES (4171,2856,'пзфдюй',1);
INSERT INTO `n_nm` VALUES (4172,4169,'пзфебн',17);
INSERT INTO `n_nm` VALUES (4173,4170,'пзфебн йнмюпе',17);
INSERT INTO `n_nm` VALUES (4174,6171,'пзфемю',25);
INSERT INTO `n_nm` VALUES (4175,6456,'пзфемнбн',27);
INSERT INTO `n_nm` VALUES (4176,8530,'пзфхжю',2);
INSERT INTO `n_nm` VALUES (4177,2568,'пзянбн',11);
INSERT INTO `n_nm` VALUES (4178,6850,'пзр',10);
INSERT INTO `n_nm` VALUES (4179,7935,'пзркхмю',26);
INSERT INTO `n_nm` VALUES (4180,8842,'пзвемхжю',21);
INSERT INTO `n_nm` VALUES (4181,5345,'пъгйнбжх',8);
INSERT INTO `n_nm` VALUES (4182,7070,'пъунбн',19);
INSERT INTO `n_nm` VALUES (4183,5440,'пъунбжхре',8);
INSERT INTO `n_nm` VALUES (4184,9251,'яюбю',3);
INSERT INTO `n_nm` VALUES (4185,7318,'яюбхм',18);
INSERT INTO `n_nm` VALUES (4186,8643,'яюбхмн',29);
INSERT INTO `n_nm` VALUES (4187,2576,'яюбнияйх',11);
INSERT INTO `n_nm` VALUES (4188,7841,'яюдхмю',26);
INSERT INTO `n_nm` VALUES (4189,5896,'яюднбеж',16);
INSERT INTO `n_nm` VALUES (4190,2387,'яюднбхй',15);
INSERT INTO `n_nm` VALUES (4191,6815,'яюднбхжю',10);
INSERT INTO `n_nm` VALUES (4192,9139,'яюднбн',3);
INSERT INTO `n_nm` VALUES (4193,4122,'яюднбн',17);
INSERT INTO `n_nm` VALUES (4194,8463,'яюднбн',2);
INSERT INTO `n_nm` VALUES (4195,2922,'яюднбн',1);
INSERT INTO `n_nm` VALUES (4196,2576,'яюфдемхй',11);
INSERT INTO `n_nm` VALUES (4197,6568,'яюйюпжх',27);
INSERT INTO `n_nm` VALUES (4198,9817,'яюкюлюмнбн',28);
INSERT INTO `n_nm` VALUES (4199,5397,'яюкюясйю',8);
INSERT INTO `n_nm` VALUES (4200,3933,'яюкюь',6);
INSERT INTO `n_nm` VALUES (4201,6942,'яюлнбхкю',10);
INSERT INTO `n_nm` VALUES (4202,5040,'яюлнбндеме',5);
INSERT INTO `n_nm` VALUES (4203,6878,'яюлндхбю',10);
INSERT INTO `n_nm` VALUES (4204,6897,'яюлнйхрйю',10);
INSERT INTO `n_nm` VALUES (4205,2000,'яюлнйнб',23);
INSERT INTO `n_nm` VALUES (4206,2620,'яюлнпюмнбн',11);
INSERT INTO `n_nm` VALUES (4207,9101,'яюлнрхмн',3);
INSERT INTO `n_nm` VALUES (4208,5035,'яюляххре',5);
INSERT INTO `n_nm` VALUES (4209,7454,'яюлсхк',18);
INSERT INTO `n_nm` VALUES (4210,2895,'яюлсхкнбю йпеоняр',1);
INSERT INTO `n_nm` VALUES (4211,9384,'яюлсхкнбн',9);
INSERT INTO `n_nm` VALUES (4212,2879,'яюлсхкнбн',1);
INSERT INTO `n_nm` VALUES (4213,8865,'яюлсхкнбн',21);
INSERT INTO `n_nm` VALUES (4214,6051,'яюлсхкнбн',25);
INSERT INTO `n_nm` VALUES (4215,8484,'яюм яретюмн',2);
INSERT INTO `n_nm` VALUES (4216,5949,'яюмюдхмнбн',16);
INSERT INTO `n_nm` VALUES (4217,2800,'яюмдюмяйх',1);
INSERT INTO `n_nm` VALUES (4218,7059,'яюмдпнбн',19);
INSERT INTO `n_nm` VALUES (4219,2650,'яюоюпебю аюмъ',11);
INSERT INTO `n_nm` VALUES (4220,2645,'яюоюпебн',11);
INSERT INTO `n_nm` VALUES (4221,3333,'яюпюебн',7);
INSERT INTO `n_nm` VALUES (4222,8659,'яюпюмяйн',29);
INSERT INTO `n_nm` VALUES (4223,2120,'яюпюмжх',23);
INSERT INTO `n_nm` VALUES (4224,4447,'яюпюъ',14);
INSERT INTO `n_nm` VALUES (4225,2950,'яюрнбвю',1);
INSERT INTO `n_nm` VALUES (4226,6961,'яанп',10);
INSERT INTO `n_nm` VALUES (4227,4449,'яанп',14);
INSERT INTO `n_nm` VALUES (4228,6595,'яанпхмн',27);
INSERT INTO `n_nm` VALUES (4229,8899,'яанпхые',21);
INSERT INTO `n_nm` VALUES (4230,9006,'яб. йнмярюмрхм х ек',3);
INSERT INTO `n_nm` VALUES (4231,7082,'ябюкемхй',18);
INSERT INTO `n_nm` VALUES (4232,6675,'ябюраюпе',10);
INSERT INTO `n_nm` VALUES (4233,4304,'ябефем',17);
INSERT INTO `n_nm` VALUES (4234,4620,'яберю оерйю',14);
INSERT INTO `n_nm` VALUES (4235,8256,'яберх бкюя',2);
INSERT INTO `n_nm` VALUES (4236,8258,'яберх бкюя - яюмюрн',2);
INSERT INTO `n_nm` VALUES (4237,4577,'яберх йнмярюмрхм',14);
INSERT INTO `n_nm` VALUES (4238,9662,'яберх мхйнкю',9);
INSERT INTO `n_nm` VALUES (4239,6890,'яберкем',10);
INSERT INTO `n_nm` VALUES (4240,7877,'яберкем',26);
INSERT INTO `n_nm` VALUES (4241,6420,'яберкхмю',27);
INSERT INTO `n_nm` VALUES (4242,8322,'яберкхмю',2);
INSERT INTO `n_nm` VALUES (4243,6547,'яберкхмю',27);
INSERT INTO `n_nm` VALUES (4244,2449,'яберкъ',15);
INSERT INTO `n_nm` VALUES (4245,1252,'ябернбпювеме',23);
INSERT INTO `n_nm` VALUES (4246,7554,'ябернякюб',20);
INSERT INTO `n_nm` VALUES (4247,6378,'ябернякюб',27);
INSERT INTO `n_nm` VALUES (4248,5080,'ябернякюбжх',5);
INSERT INTO `n_nm` VALUES (4249,6768,'яберскйю',10);
INSERT INTO `n_nm` VALUES (4250,7423,'ябеыюпх',18);
INSERT INTO `n_nm` VALUES (4251,2266,'ябхдмъ',23);
INSERT INTO `n_nm` VALUES (4252,6500,'ябхкемцпюд',27);
INSERT INTO `n_nm` VALUES (4253,5300,'ябхмюпяйх днк',8);
INSERT INTO `n_nm` VALUES (4254,6578,'ябхпювх',27);
INSERT INTO `n_nm` VALUES (4255,6499,'ябхпйнбн',27);
INSERT INTO `n_nm` VALUES (4256,5367,'ябхпжх',8);
INSERT INTO `n_nm` VALUES (4257,7960,'ябхпвнбн',26);
INSERT INTO `n_nm` VALUES (4258,5250,'ябхынб',5);
INSERT INTO `n_nm` VALUES (4259,9398,'ябнандю',9);
INSERT INTO `n_nm` VALUES (4260,8103,'ябнандю',2);
INSERT INTO `n_nm` VALUES (4261,6800,'ябнандю',10);
INSERT INTO `n_nm` VALUES (4262,4532,'ябнандю',14);
INSERT INTO `n_nm` VALUES (4263,6230,'ябнандю',25);
INSERT INTO `n_nm` VALUES (4264,6278,'ябнандем',25);
INSERT INTO `n_nm` VALUES (4265,6706,'ябнандхмнбн',10);
INSERT INTO `n_nm` VALUES (4266,7997,'ябнандхжю',26);
INSERT INTO `n_nm` VALUES (4267,2260,'ябнце',23);
INSERT INTO `n_nm` VALUES (4268,2171,'ябнде',23);
INSERT INTO `n_nm` VALUES (4269,7332,'яебюп',18);
INSERT INTO `n_nm` VALUES (4270,6745,'яебдюкхмю',10);
INSERT INTO `n_nm` VALUES (4271,9405,'яебепмъй',9);
INSERT INTO `n_nm` VALUES (4272,9415,'яебепжх',9);
INSERT INTO `n_nm` VALUES (4273,5400,'яебкхебн',8);
INSERT INTO `n_nm` VALUES (4274,2834,'яедекеж',1);
INSERT INTO `n_nm` VALUES (4275,6827,'яедетве',10);
INSERT INTO `n_nm` VALUES (4276,8994,'яедкюпебн',21);
INSERT INTO `n_nm` VALUES (4277,6800,'яедкюпх',10);
INSERT INTO `n_nm` VALUES (4278,6789,'яедкюпЖх',10);
INSERT INTO `n_nm` VALUES (4279,6621,'яедкнбхмю',10);
INSERT INTO `n_nm` VALUES (4280,5300,'яедъмйнбжх',8);
INSERT INTO `n_nm` VALUES (4281,7282,'яеиднк',18);
INSERT INTO `n_nm` VALUES (4282,5344,'яеийнбжх',8);
INSERT INTO `n_nm` VALUES (4283,5041,'яеилемхре',5);
INSERT INTO `n_nm` VALUES (4284,6890,'яейхпйю',10);
INSERT INTO `n_nm` VALUES (4285,7665,'яейскнбн',20);
INSERT INTO `n_nm` VALUES (4286,3301,'яекюмнбжх',7);
INSERT INTO `n_nm` VALUES (4287,8862,'яекхлхмнбн',21);
INSERT INTO `n_nm` VALUES (4288,2744,'яекхые',1);
INSERT INTO `n_nm` VALUES (4289,5462,'яекхые',8);
INSERT INTO `n_nm` VALUES (4290,4735,'яекхые',22);
INSERT INTO `n_nm` VALUES (4291,2377,'яекхыем днк',15);
INSERT INTO `n_nm` VALUES (4292,6487,'яекяйю онкъмю',27);
INSERT INTO `n_nm` VALUES (4293,9655,'яекже',9);
INSERT INTO `n_nm` VALUES (4294,6184,'яекже',25);
INSERT INTO `n_nm` VALUES (4295,5655,'яекже',12);
INSERT INTO `n_nm` VALUES (4296,4129,'яекжх',17);
INSERT INTO `n_nm` VALUES (4297,4814,'яеквю',22);
INSERT INTO `n_nm` VALUES (4298,2060,'яекъмхм',23);
INSERT INTO `n_nm` VALUES (4299,7072,'яелепдфхебн',19);
INSERT INTO `n_nm` VALUES (4300,5340,'яелепдфххре',8);
INSERT INTO `n_nm` VALUES (4301,7970,'яелепжх',26);
INSERT INTO `n_nm` VALUES (4302,5035,'яелйнбжх',5);
INSERT INTO `n_nm` VALUES (4303,4474,'яелвхмнбн',14);
INSERT INTO `n_nm` VALUES (4304,5450,'яеммхй',8);
INSERT INTO `n_nm` VALUES (4305,7271,'яемнбн',19);
INSERT INTO `n_nm` VALUES (4306,6481,'яемнйкюя',27);
INSERT INTO `n_nm` VALUES (4307,9634,'яемнйня',9);
INSERT INTO `n_nm` VALUES (4308,2752,'яемнйня',1);
INSERT INTO `n_nm` VALUES (4309,6800,'яемже',10);
INSERT INTO `n_nm` VALUES (4310,4490,'яеорелбпх',14);
INSERT INTO `n_nm` VALUES (4311,3637,'яеорелбпхижх',13);
INSERT INTO `n_nm` VALUES (4312,3796,'яеорелбпхижх',6);
INSERT INTO `n_nm` VALUES (4313,9693,'яеорелбпхижх',9);
INSERT INTO `n_nm` VALUES (4314,7341,'яеякюб',18);
INSERT INTO `n_nm` VALUES (4315,4469,'яеярпхлн',14);
INSERT INTO `n_nm` VALUES (4316,2875,'яеярпхмн',1);
INSERT INTO `n_nm` VALUES (4317,6660,'яеярпхмяйн',10);
INSERT INTO `n_nm` VALUES (4318,5360,'яевем йюлзй',8);
INSERT INTO `n_nm` VALUES (4319,9923,'яевхые',28);
INSERT INTO `n_nm` VALUES (4320,6585,'яхб йкюдемеж',27);
INSERT INTO `n_nm` VALUES (4321,6522,'яхбю пейю',27);
INSERT INTO `n_nm` VALUES (4322,4780,'яхбхмн',22);
INSERT INTO `n_nm` VALUES (4323,8438,'яхцлем',2);
INSERT INTO `n_nm` VALUES (4324,6380,'яхкем',27);
INSERT INTO `n_nm` VALUES (4325,7500,'яхкхярпю',20);
INSERT INTO `n_nm` VALUES (4326,6490,'яхленмнбцпюд',27);
INSERT INTO `n_nm` VALUES (4327,4475,'яхленмнбеж',14);
INSERT INTO `n_nm` VALUES (4328,8665,'яхленмнбн',29);
INSERT INTO `n_nm` VALUES (4329,2730,'яхлхркх',1);
INSERT INTO `n_nm` VALUES (4330,3737,'яхмюцнбжх',6);
INSERT INTO `n_nm` VALUES (4331,6567,'яхмюонбн',27);
INSERT INTO `n_nm` VALUES (4332,9125,'яхмдек',3);
INSERT INTO `n_nm` VALUES (4333,6825,'яхмдекжх',10);
INSERT INTO `n_nm` VALUES (4334,8279,'яхмелнпеж',2);
INSERT INTO `n_nm` VALUES (4335,9950,'яхмх бхп',28);
INSERT INTO `n_nm` VALUES (4336,4236,'яхмх бпзу',17);
INSERT INTO `n_nm` VALUES (4337,8534,'яхмх пхд',2);
INSERT INTO `n_nm` VALUES (4338,6956,'яхмхцеп',10);
INSERT INTO `n_nm` VALUES (4339,4442,'яхмхрнбн',14);
INSERT INTO `n_nm` VALUES (4340,6785,'яхмвеж',10);
INSERT INTO `n_nm` VALUES (4341,3139,'яхмэн азпдн',7);
INSERT INTO `n_nm` VALUES (4342,8332,'яхмэн йюлеме',2);
INSERT INTO `n_nm` VALUES (4343,7287,'яхмъ бндю',18);
INSERT INTO `n_nm` VALUES (4344,6629,'яхоеи',10);
INSERT INTO `n_nm` VALUES (4345,3254,'яхпюйнбн',7);
INSERT INTO `n_nm` VALUES (4346,9564,'яхпюйнбн',9);
INSERT INTO `n_nm` VALUES (4347,6359,'яхпюйнбн',27);
INSERT INTO `n_nm` VALUES (4348,2450,'яхпхымхй',15);
INSERT INTO `n_nm` VALUES (4349,8744,'яхрнбн',29);
INSERT INTO `n_nm` VALUES (4350,4104,'яхрнбн',17);
INSERT INTO `n_nm` VALUES (4351,7583,'яхрнбн',20);
INSERT INTO `n_nm` VALUES (4352,7667,'яйюкю',20);
INSERT INTO `n_nm` VALUES (4353,8462,'яйюкю',2);
INSERT INTO `n_nm` VALUES (4354,6923,'яйюкюй',10);
INSERT INTO `n_nm` VALUES (4355,8575,'яйюкюй',2);
INSERT INTO `n_nm` VALUES (4356,6846,'яйюкхмю',10);
INSERT INTO `n_nm` VALUES (4357,8645,'яйюкхжю',29);
INSERT INTO `n_nm` VALUES (4358,6652,'яйюкхые',10);
INSERT INTO `n_nm` VALUES (4359,6748,'яйюкмю цкюбю',10);
INSERT INTO `n_nm` VALUES (4360,5386,'яйюкяйн',8);
INSERT INTO `n_nm` VALUES (4361,5644,'яйюмдюкнрн',12);
INSERT INTO `n_nm` VALUES (4362,2811,'яйкюбе',1);
INSERT INTO `n_nm` VALUES (4363,6429,'яйнаекебн',27);
INSERT INTO `n_nm` VALUES (4364,5508,'яйнаекебн',12);
INSERT INTO `n_nm` VALUES (4365,6148,'яйнаекебн',25);
INSERT INTO `n_nm` VALUES (4366,4227,'яйнаекебн',17);
INSERT INTO `n_nm` VALUES (4367,8871,'яйнаекебн',21);
INSERT INTO `n_nm` VALUES (4368,3946,'яйнлкъ',6);
INSERT INTO `n_nm` VALUES (4369,5350,'яйнпжхре',8);
INSERT INTO `n_nm` VALUES (4370,2143,'яйпюбемю',23);
INSERT INTO `n_nm` VALUES (4371,2964,'яйпеаюрмн',1);
INSERT INTO `n_nm` VALUES (4372,2663,'яйпхмн',11);
INSERT INTO `n_nm` VALUES (4373,2599,'яйпхмъмн',11);
INSERT INTO `n_nm` VALUES (4374,2897,'яйпзр',1);
INSERT INTO `n_nm` VALUES (4375,4134,'яйсрюпе',17);
INSERT INTO `n_nm` VALUES (4376,6720,'яйзпахмн',10);
INSERT INTO `n_nm` VALUES (4377,9366,'якюбеебн',9);
INSERT INTO `n_nm` VALUES (4378,6576,'якюбеебн',27);
INSERT INTO `n_nm` VALUES (4379,5391,'якюбеийнбн',8);
INSERT INTO `n_nm` VALUES (4380,8738,'якюбеийнбн',29);
INSERT INTO `n_nm` VALUES (4381,9247,'якюбеийнбн',3);
INSERT INTO `n_nm` VALUES (4382,4747,'якюбеимн',22);
INSERT INTO `n_nm` VALUES (4383,5858,'якюбнбхжю',16);
INSERT INTO `n_nm` VALUES (4384,4496,'якюбнбхжю',14);
INSERT INTO `n_nm` VALUES (4385,3451,'якюбнрхм',13);
INSERT INTO `n_nm` VALUES (4386,5522,'якюбыхжю',12);
INSERT INTO `n_nm` VALUES (4387,5565,'якюбъмх',12);
INSERT INTO `n_nm` VALUES (4388,6236,'якюбъмхм',25);
INSERT INTO `n_nm` VALUES (4389,5840,'якюбъмнбн',16);
INSERT INTO `n_nm` VALUES (4390,7860,'якюбъмнбн',26);
INSERT INTO `n_nm` VALUES (4391,6473,'якюбъмнбн',27);
INSERT INTO `n_nm` VALUES (4392,8460,'якюбъмжх',2);
INSERT INTO `n_nm` VALUES (4393,9257,'якюдйю бндю',3);
INSERT INTO `n_nm` VALUES (4394,6960,'якюдйндсл',10);
INSERT INTO `n_nm` VALUES (4395,6534,'якюдсм',27);
INSERT INTO `n_nm` VALUES (4396,6064,'якюдзй йкюдемеж',25);
INSERT INTO `n_nm` VALUES (4397,2369,'якюйнбжх',15);
INSERT INTO `n_nm` VALUES (4398,8663,'якюлхмн',29);
INSERT INTO `n_nm` VALUES (4399,3728,'якюмю аюпю',6);
INSERT INTO `n_nm` VALUES (4400,3769,'якюмнрпзм',6);
INSERT INTO `n_nm` VALUES (4401,3535,'якюрхмю',13);
INSERT INTO `n_nm` VALUES (4402,4342,'якюрхмю',17);
INSERT INTO `n_nm` VALUES (4403,5564,'якюрхмю',12);
INSERT INTO `n_nm` VALUES (4404,7585,'якюрхмю',20);
INSERT INTO `n_nm` VALUES (4405,5768,'якюрхмю',12);
INSERT INTO `n_nm` VALUES (4406,2642,'якюрхмн',11);
INSERT INTO `n_nm` VALUES (4407,2449,'якюрхмн',15);
INSERT INTO `n_nm` VALUES (4408,2937,'якюыем',1);
INSERT INTO `n_nm` VALUES (4409,9784,'якхбюй',28);
INSERT INTO `n_nm` VALUES (4410,6919,'якхбюпйю',10);
INSERT INTO `n_nm` VALUES (4411,8358,'якхбюпнбн',2);
INSERT INTO `n_nm` VALUES (4412,3668,'якхбюрю',13);
INSERT INTO `n_nm` VALUES (4413,5537,'якхбей',12);
INSERT INTO `n_nm` VALUES (4414,8800,'якхбем',21);
INSERT INTO `n_nm` VALUES (4415,8840,'якхбемяйх лхм. аюмх',21);
INSERT INTO `n_nm` VALUES (4416,9395,'якхбемжх',9);
INSERT INTO `n_nm` VALUES (4417,6176,'якхбхрн',25);
INSERT INTO `n_nm` VALUES (4418,4943,'якхбйю',22);
INSERT INTO `n_nm` VALUES (4419,2844,'якхбмхжю',1);
INSERT INTO `n_nm` VALUES (4420,2200,'якхбмхжю',23);
INSERT INTO `n_nm` VALUES (4421,7060,'якхбн онке',19);
INSERT INTO `n_nm` VALUES (4422,3664,'якхбнбхй',13);
INSERT INTO `n_nm` VALUES (4423,5157,'якхбнбхжю',5);
INSERT INTO `n_nm` VALUES (4424,3915,'якхбнбмхй',6);
INSERT INTO `n_nm` VALUES (4425,4710,'якхбнбн',22);
INSERT INTO `n_nm` VALUES (4426,8331,'якхбнбн',2);
INSERT INTO `n_nm` VALUES (4427,5367,'якхбнбн',8);
INSERT INTO `n_nm` VALUES (4428,2484,'якхьнбжх',15);
INSERT INTO `n_nm` VALUES (4429,2533,'якнйныхжю',11);
INSERT INTO `n_nm` VALUES (4430,5229,'якнлеп',5);
INSERT INTO `n_nm` VALUES (4431,8240,'якзмвеб апъц',2);
INSERT INTO `n_nm` VALUES (4432,9144,'якзмвебн',3);
INSERT INTO `n_nm` VALUES (4433,7963,'якзмвнбеж',26);
INSERT INTO `n_nm` VALUES (4434,6850,'якзмвнцкед',10);
INSERT INTO `n_nm` VALUES (4435,7577,'ялхкеж',20);
INSERT INTO `n_nm` VALUES (4436,4531,'ялхкеж',14);
INSERT INTO `n_nm` VALUES (4437,5333,'ялхкнбжх',8);
INSERT INTO `n_nm` VALUES (4438,4770,'ялхкъм',22);
INSERT INTO `n_nm` VALUES (4439,9679,'ялхм',9);
INSERT INTO `n_nm` VALUES (4440,3663,'ялхпмемяйх',13);
INSERT INTO `n_nm` VALUES (4441,7074,'ялхпмемяйх',19);
INSERT INTO `n_nm` VALUES (4442,6467,'ялхпмемжх',27);
INSERT INTO `n_nm` VALUES (4443,2456,'ялхпнб днк',15);
INSERT INTO `n_nm` VALUES (4444,2794,'ялнкебн',1);
INSERT INTO `n_nm` VALUES (4445,2583,'ялнкхвюмн',11);
INSERT INTO `n_nm` VALUES (4446,8491,'ялнкмхй',2);
INSERT INTO `n_nm` VALUES (4447,9383,'ялнкмхжю',9);
INSERT INTO `n_nm` VALUES (4448,2073,'ялнкяйн',23);
INSERT INTO `n_nm` VALUES (4449,2255,'ялнквю',23);
INSERT INTO `n_nm` VALUES (4450,4700,'ялнкъм',22);
INSERT INTO `n_nm` VALUES (4451,3450,'ялнкъмнбжх',13);
INSERT INTO `n_nm` VALUES (4452,5547,'ялнвюм',12);
INSERT INTO `n_nm` VALUES (4453,2641,'ялнвебн',11);
INSERT INTO `n_nm` VALUES (4454,9820,'ялъднбн',28);
INSERT INTO `n_nm` VALUES (4455,8568,'ямефю',2);
INSERT INTO `n_nm` VALUES (4456,9244,'ямефхмю',3);
INSERT INTO `n_nm` VALUES (4457,6741,'ямефхмйю',10);
INSERT INTO `n_nm` VALUES (4458,9557,'ямно',9);
INSERT INTO `n_nm` VALUES (4459,9533,'ямъцнбн',9);
INSERT INTO `n_nm` VALUES (4460,8579,'ямъцнбн',2);
INSERT INTO `n_nm` VALUES (4461,5283,'янбюрю',5);
INSERT INTO `n_nm` VALUES (4462,2547,'янбнкъмн',11);
INSERT INTO `n_nm` VALUES (4463,8130,'янгнонк',2);
INSERT INTO `n_nm` VALUES (4464,7621,'янйнк',20);
INSERT INTO `n_nm` VALUES (4465,8945,'янйнк',21);
INSERT INTO `n_nm` VALUES (4466,3258,'янйнкюпе',7);
INSERT INTO `n_nm` VALUES (4467,8984,'янйнкюпжх',21);
INSERT INTO `n_nm` VALUES (4468,6595,'янйнкемжх',27);
INSERT INTO `n_nm` VALUES (4469,8554,'янйнкеж',2);
INSERT INTO `n_nm` VALUES (4470,6812,'янйнкхмн',10);
INSERT INTO `n_nm` VALUES (4471,6694,'янйнкхре',10);
INSERT INTO `n_nm` VALUES (4472,4367,'янйнкхжю',17);
INSERT INTO `n_nm` VALUES (4473,9351,'янйнкмхй',9);
INSERT INTO `n_nm` VALUES (4474,9640,'янйнкнбн',9);
INSERT INTO `n_nm` VALUES (4475,5392,'янйнкнбн',8);
INSERT INTO `n_nm` VALUES (4476,8435,'янйнкнбн',2);
INSERT INTO `n_nm` VALUES (4477,5538,'янйнкнбн',12);
INSERT INTO `n_nm` VALUES (4478,4751,'янйнкнбжх',22);
INSERT INTO `n_nm` VALUES (4479,6648,'янйнкяйн',10);
INSERT INTO `n_nm` VALUES (4480,6688,'янйнкъме',10);
INSERT INTO `n_nm` VALUES (4481,5300,'янкюпх',8);
INSERT INTO `n_nm` VALUES (4482,4711,'янкхыю',22);
INSERT INTO `n_nm` VALUES (4483,6721,'янкхые',10);
INSERT INTO `n_nm` VALUES (4484,9122,'янкмхй',3);
INSERT INTO `n_nm` VALUES (4485,5959,'янлнбхр',16);
INSERT INTO `n_nm` VALUES (4486,2378,'янохжю',15);
INSERT INTO `n_nm` VALUES (4487,2664,'янонбн',11);
INSERT INTO `n_nm` VALUES (4488,4330,'янонр',17);
INSERT INTO `n_nm` VALUES (4489,5571,'янонр',12);
INSERT INTO `n_nm` VALUES (4490,4974,'янонрнр',22);
INSERT INTO `n_nm` VALUES (4491,8859,'янрхпъ',21);
INSERT INTO `n_nm` VALUES (4492,6850,'янтхижх',10);
INSERT INTO `n_nm` VALUES (4493,1000,'янтхъ',23);
INSERT INTO `n_nm` VALUES (4494,3348,'янтпнмхебн',7);
INSERT INTO `n_nm` VALUES (4495,5344,'яоюмжх',8);
INSERT INTO `n_nm` VALUES (4496,3546,'яоюмвебжх',13);
INSERT INTO `n_nm` VALUES (4497,9561,'яоюянбн',9);
INSERT INTO `n_nm` VALUES (4498,6249,'яоюянбн',25);
INSERT INTO `n_nm` VALUES (4499,5340,'яоюянбжх',8);
INSERT INTO `n_nm` VALUES (4500,2811,'яоюрнбн',1);
INSERT INTO `n_nm` VALUES (4501,6346,'яоюухебн',27);
INSERT INTO `n_nm` VALUES (4502,6799,'яонксйю',10);
INSERT INTO `n_nm` VALUES (4503,7541,'япюжхлхп',20);
INSERT INTO `n_nm` VALUES (4504,3847,'япюжхлхпнбн',6);
INSERT INTO `n_nm` VALUES (4505,4525,'япеапхмнбн',14);
INSERT INTO `n_nm` VALUES (4506,7587,'япеазпмю',20);
INSERT INTO `n_nm` VALUES (4507,4998,'япедеж',22);
INSERT INTO `n_nm` VALUES (4508,6066,'япедеж',25);
INSERT INTO `n_nm` VALUES (4509,8300,'япедеж',2);
INSERT INTO `n_nm` VALUES (4510,9546,'япедхмю',9);
INSERT INTO `n_nm` VALUES (4511,6738,'япедхмйю',10);
INSERT INTO `n_nm` VALUES (4512,7949,'япедхые',26);
INSERT INTO `n_nm` VALUES (4513,7560,'япедхые',20);
INSERT INTO `n_nm` VALUES (4514,2062,'япедхымю',23);
INSERT INTO `n_nm` VALUES (4515,9968,'япедйнбеж',28);
INSERT INTO `n_nm` VALUES (4516,2918,'япедмю',1);
INSERT INTO `n_nm` VALUES (4517,8581,'япедмю люуюкю',2);
INSERT INTO `n_nm` VALUES (4518,6717,'япедмебн',10);
INSERT INTO `n_nm` VALUES (4519,5093,'япедмх йнкхах',5);
INSERT INTO `n_nm` VALUES (4520,3137,'япедмх пзр',7);
INSERT INTO `n_nm` VALUES (4521,6241,'япедмн цпюдхые',25);
INSERT INTO `n_nm` VALUES (4522,9222,'япедмн яекн',3);
INSERT INTO `n_nm` VALUES (4523,5088,'япедмн яекн',5);
INSERT INTO `n_nm` VALUES (4524,6166,'япедмнцнпнбн',25);
INSERT INTO `n_nm` VALUES (4525,4954,'япедмнцнпжх',22);
INSERT INTO `n_nm` VALUES (4526,9798,'япедмъ',28);
INSERT INTO `n_nm` VALUES (4527,3959,'япеднцпхб',6);
INSERT INTO `n_nm` VALUES (4528,4798,'япеднй',22);
INSERT INTO `n_nm` VALUES (4529,8845,'япеднпей',21);
INSERT INTO `n_nm` VALUES (4530,2555,'япеднпей',11);
INSERT INTO `n_nm` VALUES (4531,7433,'япедняекжх',18);
INSERT INTO `n_nm` VALUES (4532,6693,'япедяйю',10);
INSERT INTO `n_nm` VALUES (4533,6890,'япедяйн',10);
INSERT INTO `n_nm` VALUES (4534,6565,'япел',27);
INSERT INTO `n_nm` VALUES (4535,6775,'япзмяйн',10);
INSERT INTO `n_nm` VALUES (4536,5863,'ярюбепжх',16);
INSERT INTO `n_nm` VALUES (4537,9673,'ярюебжх',9);
INSERT INTO `n_nm` VALUES (4538,5350,'ярюимнбжх',8);
INSERT INTO `n_nm` VALUES (4539,4931,'ярюивхм днк',22);
INSERT INTO `n_nm` VALUES (4540,2489,'ярюивнбжх',15);
INSERT INTO `n_nm` VALUES (4541,3963,'ярюйебжх',6);
INSERT INTO `n_nm` VALUES (4542,6433,'ярюкебн',27);
INSERT INTO `n_nm` VALUES (4543,3657,'ярюкхияйю люуюкю',13);
INSERT INTO `n_nm` VALUES (4544,4210,'ярюланкхияйх',17);
INSERT INTO `n_nm` VALUES (4545,6311,'ярюланкхияйх',27);
INSERT INTO `n_nm` VALUES (4546,2069,'ярюланкнбн',23);
INSERT INTO `n_nm` VALUES (4547,5249,'ярюланкнбн',5);
INSERT INTO `n_nm` VALUES (4548,7063,'ярюланкнбн',19);
INSERT INTO `n_nm` VALUES (4549,6362,'ярюланкнбн',27);
INSERT INTO `n_nm` VALUES (4550,9917,'ярюм',28);
INSERT INTO `n_nm` VALUES (4551,3641,'ярюмебн',13);
INSERT INTO `n_nm` VALUES (4552,7915,'ярюмеж',26);
INSERT INTO `n_nm` VALUES (4553,9952,'ярюмнбеж',28);
INSERT INTO `n_nm` VALUES (4554,5380,'ярюмвю',8);
INSERT INTO `n_nm` VALUES (4555,5367,'ярюмвнб уюм',8);
INSERT INTO `n_nm` VALUES (4556,2391,'ярюмэнбжх',15);
INSERT INTO `n_nm` VALUES (4557,9872,'ярюмъмжх',28);
INSERT INTO `n_nm` VALUES (4558,2254,'ярюмъмжх',23);
INSERT INTO `n_nm` VALUES (4559,6792,'ярюп вхрюй',10);
INSERT INTO `n_nm` VALUES (4560,6000,'ярюпю гюцнпю',25);
INSERT INTO `n_nm` VALUES (4561,2845,'ярюпю йпеямю',1);
INSERT INTO `n_nm` VALUES (4562,8841,'ярюпю пейю',21);
INSERT INTO `n_nm` VALUES (4563,8675,'ярюпю пейю',29);
INSERT INTO `n_nm` VALUES (4564,7999,'ярюпю певйю',26);
INSERT INTO `n_nm` VALUES (4565,6880,'ярюпеиьхмн',10);
INSERT INTO `n_nm` VALUES (4566,6964,'ярюпх вюк',10);
INSERT INTO `n_nm` VALUES (4567,5343,'ярюпхкйнбжх',8);
INSERT INTO `n_nm` VALUES (4568,6572,'ярюпхмяйн',27);
INSERT INTO `n_nm` VALUES (4569,4165,'ярюпн фекегюпе',17);
INSERT INTO `n_nm` VALUES (4570,6741,'ярюпн лъярн',10);
INSERT INTO `n_nm` VALUES (4571,9110,'ярюпн нпъунбн',3);
INSERT INTO `n_nm` VALUES (4572,7447,'ярюпн яекхые',18);
INSERT INTO `n_nm` VALUES (4573,3142,'ярюпн яекн',7);
INSERT INTO `n_nm` VALUES (4574,2412,'ярюпн яекн',15);
INSERT INTO `n_nm` VALUES (4575,8876,'ярюпн яекн',21);
INSERT INTO `n_nm` VALUES (4576,5671,'ярюпн яекн',12);
INSERT INTO `n_nm` VALUES (4577,7637,'ярюпн яекн',20);
INSERT INTO `n_nm` VALUES (4578,6877,'ярюпнбн',10);
INSERT INTO `n_nm` VALUES (4579,6062,'ярюпнгюцнпяйх аюмх',25);
INSERT INTO `n_nm` VALUES (4580,3822,'ярюпноюрхжю',6);
INSERT INTO `n_nm` VALUES (4581,4175,'ярюпняек',17);
INSERT INTO `n_nm` VALUES (4582,9226,'ярюпняекеж',3);
INSERT INTO `n_nm` VALUES (4583,5865,'ярюпняекжх',16);
INSERT INTO `n_nm` VALUES (4584,4987,'ярюпжебн',22);
INSERT INTO `n_nm` VALUES (4585,2861,'ярюпвебн',1);
INSERT INTO `n_nm` VALUES (4586,7963,'ярюпвхые',26);
INSERT INTO `n_nm` VALUES (4587,7960,'яребпей',26);
INSERT INTO `n_nm` VALUES (4588,5920,'ярефепнбн',16);
INSERT INTO `n_nm` VALUES (4589,2566,'яремяйн',11);
INSERT INTO `n_nm` VALUES (4590,9293,'яретюм йюпюдфю',3);
INSERT INTO `n_nm` VALUES (4591,7633,'яретюм йюпюдфю',20);
INSERT INTO `n_nm` VALUES (4592,9371,'яретюм йюпюдфю',9);
INSERT INTO `n_nm` VALUES (4593,8725,'яретюм йюпюдфнбн',29);
INSERT INTO `n_nm` VALUES (4594,5192,'яретюм ярюланкнбн',5);
INSERT INTO `n_nm` VALUES (4595,5335,'яретюмнбн',8);
INSERT INTO `n_nm` VALUES (4596,9360,'яретюмнбн',9);
INSERT INTO `n_nm` VALUES (4597,5581,'яретюмнбн',12);
INSERT INTO `n_nm` VALUES (4598,2414,'яретюмнбн',15);
INSERT INTO `n_nm` VALUES (4599,4712,'ярхйзк',22);
INSERT INTO `n_nm` VALUES (4600,2638,'ярна',11);
INSERT INTO `n_nm` VALUES (4601,4266,'ярнебн',17);
INSERT INTO `n_nm` VALUES (4602,5347,'ярнебжх',8);
INSERT INTO `n_nm` VALUES (4603,2800,'ярнфю',1);
INSERT INTO `n_nm` VALUES (4604,9350,'ярнфеп',9);
INSERT INTO `n_nm` VALUES (4605,8940,'ярнхк бнибндю',21);
INSERT INTO `n_nm` VALUES (4606,8359,'ярнхкнбн',2);
INSERT INTO `n_nm` VALUES (4607,4715,'ярнийхре',22);
INSERT INTO `n_nm` VALUES (4608,6341,'ярнийнбн',27);
INSERT INTO `n_nm` VALUES (4609,5301,'ярнийнбжх',8);
INSERT INTO `n_nm` VALUES (4610,7953,'ярнимнбн',26);
INSERT INTO `n_nm` VALUES (4611,5625,'ярнимнбяйнрн',12);
INSERT INTO `n_nm` VALUES (4612,5081,'ярнивебжх',5);
INSERT INTO `n_nm` VALUES (4613,5343,'ярнивнбжх',8);
INSERT INTO `n_nm` VALUES (4614,5462,'ярнйхре',8);
INSERT INTO `n_nm` VALUES (4615,4338,'ярнкернбн',17);
INSERT INTO `n_nm` VALUES (4616,6054,'ярнкернбн',25);
INSERT INTO `n_nm` VALUES (4617,2134,'ярнкмхй',23);
INSERT INTO `n_nm` VALUES (4618,5452,'ярнкзр',8);
INSERT INTO `n_nm` VALUES (4619,4822,'ярнлюмебн',22);
INSERT INTO `n_nm` VALUES (4620,5304,'ярнлюмежхре',8);
INSERT INTO `n_nm` VALUES (4621,6873,'ярнлюмжх',10);
INSERT INTO `n_nm` VALUES (4622,6243,'ярнъм гюхлнбн',25);
INSERT INTO `n_nm` VALUES (4623,9928,'ярнъм лхуюикнбяйх',28);
INSERT INTO `n_nm` VALUES (4624,6773,'ярнъмнбн',10);
INSERT INTO `n_nm` VALUES (4625,3539,'ярнъмнбн',13);
INSERT INTO `n_nm` VALUES (4626,5084,'ярнъмнбжх',5);
INSERT INTO `n_nm` VALUES (4627,3134,'ярнъмнбжх',7);
INSERT INTO `n_nm` VALUES (4628,2584,'ярпюдюкнбн',11);
INSERT INTO `n_nm` VALUES (4629,4726,'ярпюфю',22);
INSERT INTO `n_nm` VALUES (4630,7738,'ярпюфю',26);
INSERT INTO `n_nm` VALUES (4631,5365,'ярпюфюрю',8);
INSERT INTO `n_nm` VALUES (4632,6731,'ярпюфебжх',10);
INSERT INTO `n_nm` VALUES (4633,6954,'ярпюфеж',10);
INSERT INTO `n_nm` VALUES (4634,7217,'ярпюфеж',18);
INSERT INTO `n_nm` VALUES (4635,9615,'ярпюфхжю',9);
INSERT INTO `n_nm` VALUES (4636,5150,'ярпюфхжю',5);
INSERT INTO `n_nm` VALUES (4637,6710,'ярпюфмхжю',10);
INSERT INTO `n_nm` VALUES (4638,8680,'ярпюкдфю',29);
INSERT INTO `n_nm` VALUES (4639,8758,'ярпюмдфю',29);
INSERT INTO `n_nm` VALUES (4640,6929,'ярпюмдфебн',10);
INSERT INTO `n_nm` VALUES (4641,6428,'ярпюмяйн',27);
INSERT INTO `n_nm` VALUES (4642,9142,'ярпюухк',3);
INSERT INTO `n_nm` VALUES (4643,6660,'ярпюухк бнибндю',10);
INSERT INTO `n_nm` VALUES (4644,9774,'ярпюухкхжю',28);
INSERT INTO `n_nm` VALUES (4645,5190,'ярпюухкнбн',5);
INSERT INTO `n_nm` VALUES (4646,8222,'ярпюжхм',2);
INSERT INTO `n_nm` VALUES (4647,9179,'ярпюьхлхпнбн',3);
INSERT INTO `n_nm` VALUES (4648,4988,'ярпюьхлхп-ОПНЛ.Я.',22);
INSERT INTO `n_nm` VALUES (4649,2482,'ярпегхлхпнбжх',15);
INSERT INTO `n_nm` VALUES (4650,5133,'ярпекеж',5);
INSERT INTO `n_nm` VALUES (4651,6058,'ярпекеж',25);
INSERT INTO `n_nm` VALUES (4652,7562,'ярпекйнбн',20);
INSERT INTO `n_nm` VALUES (4653,4152,'ярпекжх',17);
INSERT INTO `n_nm` VALUES (4654,8995,'ярпекжх',21);
INSERT INTO `n_nm` VALUES (4655,4530,'ярпеквю',14);
INSERT INTO `n_nm` VALUES (4656,6683,'ярпелнбн',10);
INSERT INTO `n_nm` VALUES (4657,6680,'ярпелжх',10);
INSERT INTO `n_nm` VALUES (4658,6899,'ярпхфаю',10);
INSERT INTO `n_nm` VALUES (4659,4197,'ярпнебн',17);
INSERT INTO `n_nm` VALUES (4660,8732,'ярпнимн',29);
INSERT INTO `n_nm` VALUES (4661,7964,'ярпнимнбжх',26);
INSERT INTO `n_nm` VALUES (4662,5626,'ярпсцзр',12);
INSERT INTO `n_nm` VALUES (4663,3919,'ярпсхмднк',6);
INSERT INTO `n_nm` VALUES (4664,9804,'ярпсхмн',28);
INSERT INTO `n_nm` VALUES (4665,2806,'ярпслю',1);
INSERT INTO `n_nm` VALUES (4666,2895,'ярпслеьмхжю',1);
INSERT INTO `n_nm` VALUES (4667,2825,'ярпслъмх',1);
INSERT INTO `n_nm` VALUES (4668,3132,'ярпсоеж',7);
INSERT INTO `n_nm` VALUES (4669,8856,'ярпсоеж',21);
INSERT INTO `n_nm` VALUES (4670,8555,'ярпсъ',2);
INSERT INTO `n_nm` VALUES (4671,5365,'ярпзлжх',8);
INSERT INTO `n_nm` VALUES (4672,4142,'ярпълю',17);
INSERT INTO `n_nm` VALUES (4673,3490,'ярсаек',13);
INSERT INTO `n_nm` VALUES (4674,2488,'ярсдем хгбнп',15);
INSERT INTO `n_nm` VALUES (4675,6958,'ярсдем йкюдемеж',10);
INSERT INTO `n_nm` VALUES (4676,4932,'ярсдемю',22);
INSERT INTO `n_nm` VALUES (4677,2344,'ярсдемю',15);
INSERT INTO `n_nm` VALUES (4678,6538,'ярсдемю',27);
INSERT INTO `n_nm` VALUES (4679,7279,'ярсдемеж',18);
INSERT INTO `n_nm` VALUES (4680,4878,'ярсдемеж',22);
INSERT INTO `n_nm` VALUES (4681,9768,'ярсдемхжю',28);
INSERT INTO `n_nm` VALUES (4682,3480,'ярсдемн асве',13);
INSERT INTO `n_nm` VALUES (4683,2135,'ярзпцек',23);
INSERT INTO `n_nm` VALUES (4684,7124,'ярзплем',19);
INSERT INTO `n_nm` VALUES (4685,4957,'ярзпмхжю',22);
INSERT INTO `n_nm` VALUES (4686,9170,'ясбнпнбн',3);
INSERT INTO `n_nm` VALUES (4687,2820,'ясцюпебн',1);
INSERT INTO `n_nm` VALUES (4688,2062,'ясебжх',23);
INSERT INTO `n_nm` VALUES (4689,6062,'яскхжю',25);
INSERT INTO `n_nm` VALUES (4690,5094,'яскрюмх',5);
INSERT INTO `n_nm` VALUES (4691,3491,'яслеп',13);
INSERT INTO `n_nm` VALUES (4692,8470,'ясмцспкюпе',2);
INSERT INTO `n_nm` VALUES (4693,6352,'ясяюл',27);
INSERT INTO `n_nm` VALUES (4694,9881,'ясую пейю',28);
INSERT INTO `n_nm` VALUES (4695,5045,'ясую пейю',5);
INSERT INTO `n_nm` VALUES (4696,5988,'ясуюве',16);
INSERT INTO `n_nm` VALUES (4697,5240,'ясухмднк',5);
INSERT INTO `n_nm` VALUES (4698,6794,'ясунбн',10);
INSERT INTO `n_nm` VALUES (4699,7618,'ясунднк',20);
INSERT INTO `n_nm` VALUES (4700,8328,'ясунднк',2);
INSERT INTO `n_nm` VALUES (4701,4209,'ясунгел',17);
INSERT INTO `n_nm` VALUES (4702,5380,'ясункнебжх',8);
INSERT INTO `n_nm` VALUES (4703,2736,'ясунярпек',1);
INSERT INTO `n_nm` VALUES (4704,7324,'ясьебн',18);
INSERT INTO `n_nm` VALUES (4705,9868,'ясьхмю',28);
INSERT INTO `n_nm` VALUES (4706,2759,'ясьхжю',1);
INSERT INTO `n_nm` VALUES (4707,5177,'ясьхжю',5);
INSERT INTO `n_nm` VALUES (4708,2558,'ясьхжю',11);
INSERT INTO `n_nm` VALUES (4709,5099,'язайнбжх',5);
INSERT INTO `n_nm` VALUES (4710,5340,'язанрйнбжх',8);
INSERT INTO `n_nm` VALUES (4711,8941,'язапюмн',21);
INSERT INTO `n_nm` VALUES (4712,8522,'яздхебн',2);
INSERT INTO `n_nm` VALUES (4713,8923,'яздхебн',21);
INSERT INTO `n_nm` VALUES (4714,8915,'яздхияйн онке',21);
INSERT INTO `n_nm` VALUES (4715,6234,'язедхмемхе',25);
INSERT INTO `n_nm` VALUES (4716,8430,'язедхмемхе',2);
INSERT INTO `n_nm` VALUES (4717,4190,'язедхмемхе',17);
INSERT INTO `n_nm` VALUES (4718,7779,'язедхмемхе',26);
INSERT INTO `n_nm` VALUES (4719,6924,'язпмюй',10);
INSERT INTO `n_nm` VALUES (4720,6232,'язпмебеж',25);
INSERT INTO `n_nm` VALUES (4721,8479,'язпмебн',2);
INSERT INTO `n_nm` VALUES (4722,6268,'язпмебн',25);
INSERT INTO `n_nm` VALUES (4723,4146,'язпмецнп',17);
INSERT INTO `n_nm` VALUES (4724,5035,'язпмемжх',5);
INSERT INTO `n_nm` VALUES (4725,9482,'язпмеж',9);
INSERT INTO `n_nm` VALUES (4726,9562,'язпмхмн',9);
INSERT INTO `n_nm` VALUES (4727,4799,'язпмхмн',22);
INSERT INTO `n_nm` VALUES (4728,4633,'язпмхжю',14);
INSERT INTO `n_nm` VALUES (4729,6361,'язпмхжю',27);
INSERT INTO `n_nm` VALUES (4730,7578,'язпонбн',20);
INSERT INTO `n_nm` VALUES (4731,8896,'язпжебн',21);
INSERT INTO `n_nm` VALUES (4732,7647,'яъмнбн',20);
INSERT INTO `n_nm` VALUES (4733,5380,'яъпнбжх',8);
INSERT INTO `n_nm` VALUES (4734,6800,'яъпжх',10);
INSERT INTO `n_nm` VALUES (4735,2215,'рюаюм',23);
INSERT INTO `n_nm` VALUES (4736,7085,'рюаювйю',19);
INSERT INTO `n_nm` VALUES (4737,5461,'рюаюьйю',8);
INSERT INTO `n_nm` VALUES (4738,2538,'рюбюкхвебн',11);
INSERT INTO `n_nm` VALUES (4739,7983,'рюилхые',26);
INSERT INTO `n_nm` VALUES (4740,8658,'рюлюпхмн',29);
INSERT INTO `n_nm` VALUES (4741,6344,'рюрюпебн',27);
INSERT INTO `n_nm` VALUES (4742,4282,'рюрюпебн',17);
INSERT INTO `n_nm` VALUES (4743,5934,'рюрюпх',16);
INSERT INTO `n_nm` VALUES (4744,6670,'рюрйнбн',10);
INSERT INTO `n_nm` VALUES (4745,6835,'рюрск',10);
INSERT INTO `n_nm` VALUES (4746,7755,'рбзпдхмжх',18);
INSERT INTO `n_nm` VALUES (4747,8155,'рбзпдхжю',2);
INSERT INTO `n_nm` VALUES (4748,8890,'рбзпдхжю',21);
INSERT INTO `n_nm` VALUES (4749,9675,'рбзпдхжю',9);
INSERT INTO `n_nm` VALUES (4750,6370,'рейерн',27);
INSERT INTO `n_nm` VALUES (4751,9420,'рекепхц',9);
INSERT INTO `n_nm` VALUES (4752,5990,'рекхь',16);
INSERT INTO `n_nm` VALUES (4753,6850,'реквюпйю',10);
INSERT INTO `n_nm` VALUES (4754,6759,'релемсцю',10);
INSERT INTO `n_nm` VALUES (4755,5165,'релемсцю',5);
INSERT INTO `n_nm` VALUES (4756,8672,'ремебн',29);
INSERT INTO `n_nm` VALUES (4757,5554,'реоюбю',12);
INSERT INTO `n_nm` VALUES (4758,2935,'реокем',1);
INSERT INTO `n_nm` VALUES (4759,9450,'репбек',9);
INSERT INTO `n_nm` VALUES (4760,9769,'репбек',28);
INSERT INTO `n_nm` VALUES (4761,5035,'репгххре',5);
INSERT INTO `n_nm` VALUES (4762,8465,'репгхияйн',2);
INSERT INTO `n_nm` VALUES (4763,5665,'репгхияйн',12);
INSERT INTO `n_nm` VALUES (4764,7322,'репреп',18);
INSERT INTO `n_nm` VALUES (4765,5700,'реребем',12);
INSERT INTO `n_nm` VALUES (4766,7340,'рернбн',18);
INSERT INTO `n_nm` VALUES (4767,4810,'реьек',22);
INSERT INTO `n_nm` VALUES (4768,2927,'реьнбн',1);
INSERT INTO `n_nm` VALUES (4769,4729,'рхйюке',22);
INSERT INTO `n_nm` VALUES (4770,9785,'рхлюпебн',28);
INSERT INTO `n_nm` VALUES (4771,6955,'рхмръбю',10);
INSERT INTO `n_nm` VALUES (4772,3164,'рховемхжю',7);
INSERT INTO `n_nm` VALUES (4773,5070,'рхребжх',5);
INSERT INTO `n_nm` VALUES (4774,7997,'рхунбеж',26);
INSERT INTO `n_nm` VALUES (4775,6898,'рхунлхп',10);
INSERT INTO `n_nm` VALUES (4776,6279,'рхунлхпнбн',25);
INSERT INTO `n_nm` VALUES (4777,8980,'рхвю',21);
INSERT INTO `n_nm` VALUES (4778,2591,'рхьюмнбн',11);
INSERT INTO `n_nm` VALUES (4779,3055,'рхьебхжю',7);
INSERT INTO `n_nm` VALUES (4780,3787,'рхъмнбжх',6);
INSERT INTO `n_nm` VALUES (4781,3243,'ркювеме',7);
INSERT INTO `n_nm` VALUES (4782,9964,'рнднп хйнмнлнбн',28);
INSERT INTO `n_nm` VALUES (4783,5350,'рнднпежхре',8);
INSERT INTO `n_nm` VALUES (4784,5781,'рнднпхвеме',12);
INSERT INTO `n_nm` VALUES (4785,7425,'рнднпнбн',18);
INSERT INTO `n_nm` VALUES (4786,5887,'рнднпнбн',16);
INSERT INTO `n_nm` VALUES (4787,5045,'рнднпнбжх',5);
INSERT INTO `n_nm` VALUES (4788,5301,'рнднпнбжх',8);
INSERT INTO `n_nm` VALUES (4789,5343,'рнднпверю',8);
INSERT INTO `n_nm` VALUES (4790,5094,'рндчбжх',5);
INSERT INTO `n_nm` VALUES (4791,6965,'рнйювйю',10);
INSERT INTO `n_nm` VALUES (4792,3854,'рнкнбхжю',6);
INSERT INTO `n_nm` VALUES (4793,5080,'рнлаерн',5);
INSERT INTO `n_nm` VALUES (4794,2285,'рнлоязм',23);
INSERT INTO `n_nm` VALUES (4795,5365,'рнлвебжх',8);
INSERT INTO `n_nm` VALUES (4796,2875,'рнмяйн дюае',1);
INSERT INTO `n_nm` VALUES (4797,5736,'рнохкхыю',12);
INSERT INTO `n_nm` VALUES (4798,9654,'рнонкю',9);
INSERT INTO `n_nm` VALUES (4799,9140,'рнонкх',3);
INSERT INTO `n_nm` VALUES (4800,4454,'рнонкх днк',14);
INSERT INTO `n_nm` VALUES (4801,8549,'рнонкхжю',2);
INSERT INTO `n_nm` VALUES (4802,6968,'рнонкйю',10);
INSERT INTO `n_nm` VALUES (4803,2619,'рнонкмхжю',11);
INSERT INTO `n_nm` VALUES (4804,2858,'рнонкмхжю',1);
INSERT INTO `n_nm` VALUES (4805,6560,'рнонкнбцпюд',27);
INSERT INTO `n_nm` VALUES (4806,3828,'рнонкнбеж',6);
INSERT INTO `n_nm` VALUES (4807,3936,'рнонкнбеж',6);
INSERT INTO `n_nm` VALUES (4808,4260,'рнонкнбн',17);
INSERT INTO `n_nm` VALUES (4809,6452,'рнонкнбн',27);
INSERT INTO `n_nm` VALUES (4810,6728,'рнонквюме',10);
INSERT INTO `n_nm` VALUES (4811,8880,'рнонквюме',21);
INSERT INTO `n_nm` VALUES (4812,6277,'рнонкъме',25);
INSERT INTO `n_nm` VALUES (4813,5098,'рносгх',5);
INSERT INTO `n_nm` VALUES (4814,8986,'рносгнбн',21);
INSERT INTO `n_nm` VALUES (4815,7261,'рновхх',19);
INSERT INTO `n_nm` VALUES (4816,8582,'рновхияйн',2);
INSERT INTO `n_nm` VALUES (4817,5335,'рнпаюкзфхре',8);
INSERT INTO `n_nm` VALUES (4818,5790,'рнпня',12);
INSERT INTO `n_nm` VALUES (4819,5899,'рнркеаем',16);
INSERT INTO `n_nm` VALUES (4820,7316,'рнвхкюпх',18);
INSERT INTO `n_nm` VALUES (4821,3825,'рньебжх',6);
INSERT INTO `n_nm` VALUES (4822,4933,'рпюбе',22);
INSERT INTO `n_nm` VALUES (4823,9694,'рпюбмхй',9);
INSERT INTO `n_nm` VALUES (4824,3645,'рпюийнбн',13);
INSERT INTO `n_nm` VALUES (4825,6369,'рпюйхеж',27);
INSERT INTO `n_nm` VALUES (4826,8348,'рпюйхижх',2);
INSERT INTO `n_nm` VALUES (4827,6074,'рпюйхъ',25);
INSERT INTO `n_nm` VALUES (4828,5349,'рпюоеяйнбжх',8);
INSERT INTO `n_nm` VALUES (4829,7281,'рпюохые',18);
INSERT INTO `n_nm` VALUES (4830,8889,'рпюонйкнбн',21);
INSERT INTO `n_nm` VALUES (4831,4737,'рпеахые',22);
INSERT INTO `n_nm` VALUES (4832,2557,'рпейкъмн',11);
INSERT INTO `n_nm` VALUES (4833,9764,'рпел',28);
INSERT INTO `n_nm` VALUES (4834,7994,'рпеяйюбеж',26);
INSERT INTO `n_nm` VALUES (4835,3072,'рпх йкюдемжх',7);
INSERT INTO `n_nm` VALUES (4836,4263,'рпх лнцхкх',17);
INSERT INTO `n_nm` VALUES (4837,6682,'рпх лнцхкх',10);
INSERT INTO `n_nm` VALUES (4838,4222,'рпхбндхжх',17);
INSERT INTO `n_nm` VALUES (4839,9645,'рпхцнпжх',9);
INSERT INTO `n_nm` VALUES (4840,4825,'рпхцпюд',22);
INSERT INTO `n_nm` VALUES (4841,4141,'рпхкхярмхй',17);
INSERT INTO `n_nm` VALUES (4842,3435,'рпхтнмнбн',13);
INSERT INTO `n_nm` VALUES (4843,9864,'рпнхжю',28);
INSERT INTO `n_nm` VALUES (4844,2733,'рпняйнбн',1);
INSERT INTO `n_nm` VALUES (4845,6491,'рпнъм',27);
INSERT INTO `n_nm` VALUES (4846,5600,'рпнъм',12);
INSERT INTO `n_nm` VALUES (4847,8108,'рпнъмнбн',2);
INSERT INTO `n_nm` VALUES (4848,6270,'рпнъмнбн',25);
INSERT INTO `n_nm` VALUES (4849,4199,'рпсд',17);
INSERT INTO `n_nm` VALUES (4850,2160,'рпсднбеж',23);
INSERT INTO `n_nm` VALUES (4851,7283,'рпзаюв',18);
INSERT INTO `n_nm` VALUES (4852,2460,'рпзм',15);
INSERT INTO `n_nm` VALUES (4853,8550,'рпзмюй',2);
INSERT INTO `n_nm` VALUES (4854,5307,'рпзмхрн',8);
INSERT INTO `n_nm` VALUES (4855,9925,'рпзмхжю',28);
INSERT INTO `n_nm` VALUES (4856,8719,'рпзмйнбн',29);
INSERT INTO `n_nm` VALUES (4857,6266,'рпзмйнбн',25);
INSERT INTO `n_nm` VALUES (4858,5097,'рпзмйнбжх',5);
INSERT INTO `n_nm` VALUES (4859,5925,'рпзмвнбхжю',16);
INSERT INTO `n_nm` VALUES (4860,5857,'рпзяремхй',16);
INSERT INTO `n_nm` VALUES (4861,7092,'рпзяремхй',19);
INSERT INTO `n_nm` VALUES (4862,7835,'рпзярхйю',26);
INSERT INTO `n_nm` VALUES (4863,9134,'рпзярхйнбн',3);
INSERT INTO `n_nm` VALUES (4864,8128,'рпзярхйнбн',2);
INSERT INTO `n_nm` VALUES (4865,5350,'рпъбмю',8);
INSERT INTO `n_nm` VALUES (4866,2253,'рсдем',23);
INSERT INTO `n_nm` VALUES (4867,9633,'рсгкюрю',9);
INSERT INTO `n_nm` VALUES (4868,6170,'рскнбн',25);
INSERT INTO `n_nm` VALUES (4869,5464,'рслаюкнбн',8);
INSERT INTO `n_nm` VALUES (4870,5083,'рслаебжх',5);
INSERT INTO `n_nm` VALUES (4871,6157,'рспхъ',25);
INSERT INTO `n_nm` VALUES (4872,5388,'рспйхмвю',8);
INSERT INTO `n_nm` VALUES (4873,2468,'рспнйнбжх',15);
INSERT INTO `n_nm` VALUES (4874,4753,'рспъм',22);
INSERT INTO `n_nm` VALUES (4875,7600,'рсрпюйюм',20);
INSERT INTO `n_nm` VALUES (4876,9275,'рсрпюйюмжх',3);
INSERT INTO `n_nm` VALUES (4877,2939,'рсунбхыю',1);
INSERT INTO `n_nm` VALUES (4878,5892,'рсвемхжю',16);
INSERT INTO `n_nm` VALUES (4879,9884,'рсьнбхжю',28);
INSERT INTO `n_nm` VALUES (4880,6160,'рзфю',25);
INSERT INTO `n_nm` VALUES (4881,9953,'рзйюв',28);
INSERT INTO `n_nm` VALUES (4882,4983,'рзмйю аюпю',22);
INSERT INTO `n_nm` VALUES (4883,5084,'рзмйх пзр',5);
INSERT INTO `n_nm` VALUES (4884,8237,'рзмйнбн',2);
INSERT INTO `n_nm` VALUES (4885,6391,'рзмйнбн',27);
INSERT INTO `n_nm` VALUES (4886,4914,'рзмйнрн',22);
INSERT INTO `n_nm` VALUES (4887,7919,'рзовхкеынбн',26);
INSERT INTO `n_nm` VALUES (4888,7700,'рзпцнбхые',26);
INSERT INTO `n_nm` VALUES (4889,3953,'рзпцнбхые',6);
INSERT INTO `n_nm` VALUES (4890,5070,'рзпйюьемх',5);
INSERT INTO `n_nm` VALUES (4891,3252,'рзпмюбю',7);
INSERT INTO `n_nm` VALUES (4892,8699,'рзпмюбю',29);
INSERT INTO `n_nm` VALUES (4893,3249,'рзпмюй',7);
INSERT INTO `n_nm` VALUES (4894,5282,'рзпмеме',16);
INSERT INTO `n_nm` VALUES (4895,6158,'рзпмхвеме',25);
INSERT INTO `n_nm` VALUES (4896,2532,'рзпмнбкюц',11);
INSERT INTO `n_nm` VALUES (4897,7774,'рзпмнбжю',26);
INSERT INTO `n_nm` VALUES (4898,6843,'рзпмнбжх',10);
INSERT INTO `n_nm` VALUES (4899,7926,'рзпмнбжх',20);
INSERT INTO `n_nm` VALUES (4900,6763,'рзпмнякхбйю',10);
INSERT INTO `n_nm` VALUES (4901,3741,'рзпмъме',6);
INSERT INTO `n_nm` VALUES (4902,2586,'рзпяхмн',11);
INSERT INTO `n_nm` VALUES (4903,5423,'рзпунбн',8);
INSERT INTO `n_nm` VALUES (4904,4730,'рзпзм',22);
INSERT INTO `n_nm` VALUES (4905,9684,'рчкемнбн',9);
INSERT INTO `n_nm` VALUES (4906,4751,'рчпйлем',17);
INSERT INTO `n_nm` VALUES (4907,6850,'рчрчмве',10);
INSERT INTO `n_nm` VALUES (4908,9429,'ръмебн',9);
INSERT INTO `n_nm` VALUES (4909,6492,'ръмебн',27);
INSERT INTO `n_nm` VALUES (4910,7936,'сцкедмн',26);
INSERT INTO `n_nm` VALUES (4911,2418,'сцкъпжх',15);
INSERT INTO `n_nm` VALUES (4912,5465,'сцнпекеж',8);
INSERT INTO `n_nm` VALUES (4913,5082,'сцнпкъйнбжх',5);
INSERT INTO `n_nm` VALUES (4914,5580,'сцзпвхм',12);
INSERT INTO `n_nm` VALUES (4915,9554,'сгнбн',9);
INSERT INTO `n_nm` VALUES (4916,6350,'сгсмдфнбн',27);
INSERT INTO `n_nm` VALUES (4917,5343,'сгсмхре',8);
INSERT INTO `n_nm` VALUES (4918,4237,'сгсмнбн',17);
INSERT INTO `n_nm` VALUES (4919,5541,'слюпебжх',12);
INSERT INTO `n_nm` VALUES (4920,5365,'спбюрю',8);
INSERT INTO `n_nm` VALUES (4921,3064,'спнбеме',7);
INSERT INTO `n_nm` VALUES (4922,4936,'спсвебжх',22);
INSERT INTO `n_nm` VALUES (4923,2675,'сянийю',11);
INSERT INTO `n_nm` VALUES (4924,4228,'сярхмю',17);
INSERT INTO `n_nm` VALUES (4925,6563,'сярпел',27);
INSERT INTO `n_nm` VALUES (4926,6853,'сярпем',10);
INSERT INTO `n_nm` VALUES (4927,4769,'сукнбхжю',22);
INSERT INTO `n_nm` VALUES (4928,5035,'сьебжх',5);
INSERT INTO `n_nm` VALUES (4929,2557,'сьх',11);
INSERT INTO `n_nm` VALUES (4930,7244,'сьхмжх',18);
INSERT INTO `n_nm` VALUES (4931,4992,'тюапхйю - опнл. я.',22);
INSERT INTO `n_nm` VALUES (4932,8272,'тюгюмнбн',2);
INSERT INTO `n_nm` VALUES (4933,8340,'тюйхъ',2);
INSERT INTO `n_nm` VALUES (4934,4797,'тюрнбн',22);
INSERT INTO `n_nm` VALUES (4935,9394,'текдтеаек дъмйнбн',9);
INSERT INTO `n_nm` VALUES (4936,8982,'тхкюпернбн',21);
INSERT INTO `n_nm` VALUES (4937,2775,'тхкхонбн',1);
INSERT INTO `n_nm` VALUES (4938,6564,'тхкхонбн',27);
INSERT INTO `n_nm` VALUES (4939,2472,'тхкхонбжх',15);
INSERT INTO `n_nm` VALUES (4940,3778,'ткнпемрхм',6);
INSERT INTO `n_nm` VALUES (4941,4571,'тнрхмнбн',14);
INSERT INTO `n_nm` VALUES (4942,6873,'тнрхмнбн',10);
INSERT INTO `n_nm` VALUES (4943,2085,'тпюмрсмяйхре йньюпх',23);
INSERT INTO `n_nm` VALUES (4944,2682,'тпнкнь',11);
INSERT INTO `n_nm` VALUES (4945,3075,'тспем',7);
INSERT INTO `n_nm` VALUES (4946,2952,'тзпцнбн',1);
INSERT INTO `n_nm` VALUES (4947,5301,'тзпцнбжх',8);
INSERT INTO `n_nm` VALUES (4948,5365,'тзпебжх',8);
INSERT INTO `n_nm` VALUES (4949,5367,'тзпрсмх',8);
INSERT INTO `n_nm` VALUES (4950,6141,'уюдфх дхлхрпнбн',25);
INSERT INTO `n_nm` VALUES (4951,9657,'уюдфх дхлхрзп',9);
INSERT INTO `n_nm` VALUES (4952,5287,'уюдфхдхлхрпнбн',5);
INSERT INTO `n_nm` VALUES (4953,8635,'уюдфхдхлхрпнбн',29);
INSERT INTO `n_nm` VALUES (4954,2933,'уюдфхдхлнбн',1);
INSERT INTO `n_nm` VALUES (4955,4441,'уюдфхебн',14);
INSERT INTO `n_nm` VALUES (4956,8492,'уюдфххре',2);
INSERT INTO `n_nm` VALUES (4957,6875,'уюдфхияйн',10);
INSERT INTO `n_nm` VALUES (4958,3357,'уюипедхм',7);
INSERT INTO `n_nm` VALUES (4959,7997,'уюкбюдфхияйн',26);
INSERT INTO `n_nm` VALUES (4960,3837,'уюкнбяйх йнкхах',6);
INSERT INTO `n_nm` VALUES (4961,6055,'уюм юяоюпсунбн',25);
INSERT INTO `n_nm` VALUES (4962,9863,'уюм йпсл',28);
INSERT INTO `n_nm` VALUES (4963,8668,'уюмнбн',29);
INSERT INTO `n_nm` VALUES (4964,5340,'уюпювепхре',8);
INSERT INTO `n_nm` VALUES (4965,5093,'уюпбюкнбжх',5);
INSERT INTO `n_nm` VALUES (4966,6540,'уюплюмкх',27);
INSERT INTO `n_nm` VALUES (4967,6300,'уюяйнбн',27);
INSERT INTO `n_nm` VALUES (4968,4746,'уюянбхжю',22);
INSERT INTO `n_nm` VALUES (4969,4890,'убнимю',22);
INSERT INTO `n_nm` VALUES (4970,2942,'убняръме',1);
INSERT INTO `n_nm` VALUES (4971,2072,'убзпвхк',23);
INSERT INTO `n_nm` VALUES (4972,2211,'уепюйнбн',23);
INSERT INTO `n_nm` VALUES (4973,5451,'ухпебн',8);
INSERT INTO `n_nm` VALUES (4974,6914,'ухяюп',10);
INSERT INTO `n_nm` VALUES (4975,4180,'ухяюпъ',17);
INSERT INTO `n_nm` VALUES (4976,9494,'ухрнбн',9);
INSERT INTO `n_nm` VALUES (4977,5579,'укебеме',12);
INSERT INTO `n_nm` VALUES (4978,6568,'укъанбн',27);
INSERT INTO `n_nm` VALUES (4979,6745,'ундфнбжх',10);
INSERT INTO `n_nm` VALUES (4980,7054,'унрюмжю',19);
INSERT INTO `n_nm` VALUES (4981,5058,'унрмхжю',5);
INSERT INTO `n_nm` VALUES (4982,2821,'унрнбн',1);
INSERT INTO `n_nm` VALUES (4983,4111,'упюапхмн',17);
INSERT INTO `n_nm` VALUES (4984,9618,'упюапнбн',9);
INSERT INTO `n_nm` VALUES (4985,9242,'упюапнбн',3);
INSERT INTO `n_nm` VALUES (4986,2224,'упюазпяйн',23);
INSERT INTO `n_nm` VALUES (4987,2824,'упюямю',1);
INSERT INTO `n_nm` VALUES (4988,6929,'упюярнбн',10);
INSERT INTO `n_nm` VALUES (4989,6072,'упхярхъмнбн',25);
INSERT INTO `n_nm` VALUES (4990,4339,'упхярн дюмнбн',17);
INSERT INTO `n_nm` VALUES (4991,4231,'упхярн лхкебн',17);
INSERT INTO `n_nm` VALUES (4992,5070,'упхярнбжх',5);
INSERT INTO `n_nm` VALUES (4993,5365,'упхярнбжх',8);
INSERT INTO `n_nm` VALUES (4994,6050,'упхыемх',25);
INSERT INTO `n_nm` VALUES (4995,6782,'упнлхжю',10);
INSERT INTO `n_nm` VALUES (4996,3135,'усаюбеме',7);
INSERT INTO `n_nm` VALUES (4997,7457,'услю',18);
INSERT INTO `n_nm` VALUES (4998,6571,'усукю',27);
INSERT INTO `n_nm` VALUES (4999,5082,'узмебжх',5);
INSERT INTO `n_nm` VALUES (5000,3329,'узпкеж',7);
INSERT INTO `n_nm` VALUES (5001,9937,'узпянбн',28);
INSERT INTO `n_nm` VALUES (5002,7451,'узпянбн',18);
INSERT INTO `n_nm` VALUES (5003,2819,'узпянбн',1);
INSERT INTO `n_nm` VALUES (5004,3152,'жюйнмхжю',7);
INSERT INTO `n_nm` VALUES (5005,4218,'жюкюохжю',17);
INSERT INTO `n_nm` VALUES (5006,9957,'жюмх цхмвебн',28);
INSERT INTO `n_nm` VALUES (5007,2834,'жюоюпебн',1);
INSERT INTO `n_nm` VALUES (5008,7536,'жюп юяем',20);
INSERT INTO `n_nm` VALUES (5009,4422,'жюп юяем',14);
INSERT INTO `n_nm` VALUES (5010,7849,'жюп юяем',26);
INSERT INTO `n_nm` VALUES (5011,4126,'жюп йюкнъм',17);
INSERT INTO `n_nm` VALUES (5012,7280,'жюп йюкнъм',18);
INSERT INTO `n_nm` VALUES (5013,3827,'жюп оерпнбн',6);
INSERT INTO `n_nm` VALUES (5014,7640,'жюп яюлсхк',20);
INSERT INTO `n_nm` VALUES (5015,3745,'жюп яхленмнбн',6);
INSERT INTO `n_nm` VALUES (5016,3853,'жюп ьхьлюмнбн',6);
INSERT INTO `n_nm` VALUES (5017,4204,'жюпюжнбн',17);
INSERT INTO `n_nm` VALUES (5018,9747,'жюпеб апнд',28);
INSERT INTO `n_nm` VALUES (5019,7627,'жюпеб днк',20);
INSERT INTO `n_nm` VALUES (5020,5380,'жюпебю кхбюдю',8);
INSERT INTO `n_nm` VALUES (5021,6363,'жюпебю онкъмю',27);
INSERT INTO `n_nm` VALUES (5022,9367,'жюпебеж',9);
INSERT INTO `n_nm` VALUES (5023,6622,'жюпебеж',10);
INSERT INTO `n_nm` VALUES (5024,3141,'жюпебеж',7);
INSERT INTO `n_nm` VALUES (5025,5282,'жюпебеж',5);
INSERT INTO `n_nm` VALUES (5026,8260,'жюпебн',2);
INSERT INTO `n_nm` VALUES (5027,9129,'жюпебжх',3);
INSERT INTO `n_nm` VALUES (5028,7932,'жюпебжх',26);
INSERT INTO `n_nm` VALUES (5029,4192,'жюпхлхп',17);
INSERT INTO `n_nm` VALUES (5030,6893,'жюпхмн',10);
INSERT INTO `n_nm` VALUES (5031,2236,'жюпхвхмю',23);
INSERT INTO `n_nm` VALUES (5032,9614,'жюпхвхмн',9);
INSERT INTO `n_nm` VALUES (5033,5174,'жюпяйх хгбнп',5);
INSERT INTO `n_nm` VALUES (5034,2220,'жюжюпнбжх',23);
INSERT INTO `n_nm` VALUES (5035,4992,'жюжюпнбжх',22);
INSERT INTO `n_nm` VALUES (5036,5094,'жбейкчбжх',5);
INSERT INTO `n_nm` VALUES (5037,4630,'жберхмн',14);
INSERT INTO `n_nm` VALUES (5038,3542,'жберйнбю аюпю',13);
INSERT INTO `n_nm` VALUES (5039,7763,'жбермхжю',26);
INSERT INTO `n_nm` VALUES (5040,5340,'жбърйнбжх',8);
INSERT INTO `n_nm` VALUES (5041,6850,'жбърнбн',10);
INSERT INTO `n_nm` VALUES (5042,2479,'жецпхкнбжх',15);
INSERT INTO `n_nm` VALUES (5043,6223,'жекхмю',25);
INSERT INTO `n_nm` VALUES (5044,8916,'жемхмн',21);
INSERT INTO `n_nm` VALUES (5045,7575,'жемнбхв',20);
INSERT INTO `n_nm` VALUES (5046,7139,'жемнбн',19);
INSERT INTO `n_nm` VALUES (5047,6222,'жемнбн',25);
INSERT INTO `n_nm` VALUES (5048,5035,'жеоепюмхре',5);
INSERT INTO `n_nm` VALUES (5049,4189,'жеперекебн',17);
INSERT INTO `n_nm` VALUES (5050,2286,'жепежек',23);
INSERT INTO `n_nm` VALUES (5051,8472,'жепйнбяйх',2);
INSERT INTO `n_nm` VALUES (5052,5047,'жепнбю йнпхъ',5);
INSERT INTO `n_nm` VALUES (5053,7083,'жепнбеж',18);
INSERT INTO `n_nm` VALUES (5054,2567,'жепнбхжю',11);
INSERT INTO `n_nm` VALUES (5055,7922,'жепнбхые',26);
INSERT INTO `n_nm` VALUES (5056,2722,'жепнбн',1);
INSERT INTO `n_nm` VALUES (5057,4465,'жепнбн',14);
INSERT INTO `n_nm` VALUES (5058,2287,'жепнбн',23);
INSERT INTO `n_nm` VALUES (5059,2666,'жхйкнбн',11);
INSERT INTO `n_nm` VALUES (5060,4939,'жхпйю',22);
INSERT INTO `n_nm` VALUES (5061,9261,'жнмебн',3);
INSERT INTO `n_nm` VALUES (5062,2567,'жпеьмнбн',11);
INSERT INTO `n_nm` VALUES (5063,2205,'жпзйкебжх',23);
INSERT INTO `n_nm` VALUES (5064,4837,'жпзмвю',22);
INSERT INTO `n_nm` VALUES (5065,4419,'жпзмвю',14);
INSERT INTO `n_nm` VALUES (5066,2580,'жзпбюпхжю',11);
INSERT INTO `n_nm` VALUES (5067,2576,'жзпбемю ъазкйю',11);
INSERT INTO `n_nm` VALUES (5068,2567,'жзпбемднк',11);
INSERT INTO `n_nm` VALUES (5069,2542,'жзпбемъмн',11);
INSERT INTO `n_nm` VALUES (5070,2624,'жзпбхые',11);
INSERT INTO `n_nm` VALUES (5071,9631,'жзпйбю',9);
INSERT INTO `n_nm` VALUES (5072,6844,'жзпйбхжю',10);
INSERT INTO `n_nm` VALUES (5073,9939,'жзпйбхжю',28);
INSERT INTO `n_nm` VALUES (5074,4829,'вюбдюп',22);
INSERT INTO `n_nm` VALUES (5075,2084,'вюбдюп',23);
INSERT INTO `n_nm` VALUES (5076,5084,'вюбдюпжх',5);
INSERT INTO `n_nm` VALUES (5077,5559,'вюбдюпжх',12);
INSERT INTO `n_nm` VALUES (5078,5345,'вюбех',8);
INSERT INTO `n_nm` VALUES (5079,6890,'вюбйю',10);
INSERT INTO `n_nm` VALUES (5080,6820,'вюийю',10);
INSERT INTO `n_nm` VALUES (5081,9277,'вюийю',3);
INSERT INTO `n_nm` VALUES (5082,4476,'вюипю',14);
INSERT INTO `n_nm` VALUES (5083,6870,'вюйюкюпнбн',10);
INSERT INTO `n_nm` VALUES (5084,5099,'вюйюкх',5);
INSERT INTO `n_nm` VALUES (5085,5365,'вюйюкхре',8);
INSERT INTO `n_nm` VALUES (5086,6850,'вюйюкжх',10);
INSERT INTO `n_nm` VALUES (5087,6947,'вюк',10);
INSERT INTO `n_nm` VALUES (5088,4836,'вюкю',22);
INSERT INTO `n_nm` VALUES (5089,4123,'вюкзйнбх',17);
INSERT INTO `n_nm` VALUES (5090,4651,'вюлйнбю',14);
INSERT INTO `n_nm` VALUES (5091,4716,'вюлкю',22);
INSERT INTO `n_nm` VALUES (5092,8628,'вюпцюм',29);
INSERT INTO `n_nm` VALUES (5093,8692,'вюпдю',29);
INSERT INTO `n_nm` VALUES (5094,5309,'вюпйнбн',8);
INSERT INTO `n_nm` VALUES (5095,6744,'вецюмжх',10);
INSERT INTO `n_nm` VALUES (5096,2220,'вейюмеж',23);
INSERT INTO `n_nm` VALUES (5097,2577,'вейюмеж',11);
INSERT INTO `n_nm` VALUES (5098,7961,'вейюмжх',26);
INSERT INTO `n_nm` VALUES (5099,2122,'вейюмвебн',23);
INSERT INTO `n_nm` VALUES (5100,8678,'векмхй',29);
INSERT INTO `n_nm` VALUES (5101,3093,'векноей',7);
INSERT INTO `n_nm` VALUES (5102,2087,'векноев',23);
INSERT INTO `n_nm` VALUES (5103,9664,'векноевеме',9);
INSERT INTO `n_nm` VALUES (5104,3465,'векчярмхжю',13);
INSERT INTO `n_nm` VALUES (5105,3477,'велхь',13);
INSERT INTO `n_nm` VALUES (5106,4850,'веоекюпе',22);
INSERT INTO `n_nm` VALUES (5107,2436,'веохмн',15);
INSERT INTO `n_nm` VALUES (5108,1554,'веохмжх',23);
INSERT INTO `n_nm` VALUES (5109,4958,'веохмжх',22);
INSERT INTO `n_nm` VALUES (5110,4786,'веокерем',22);
INSERT INTO `n_nm` VALUES (5111,2212,'веозпкхмжх',23);
INSERT INTO `n_nm` VALUES (5112,4252,'вепбем',17);
INSERT INTO `n_nm` VALUES (5113,7084,'вепбем',19);
INSERT INTO `n_nm` VALUES (5114,2629,'вепбем апец',11);
INSERT INTO `n_nm` VALUES (5115,5980,'вепбем апъц',16);
INSERT INTO `n_nm` VALUES (5116,5293,'вепбемю',5);
INSERT INTO `n_nm` VALUES (5117,7051,'вепбемю бндю',19);
INSERT INTO `n_nm` VALUES (5118,5311,'вепбемю кнйбю',8);
INSERT INTO `n_nm` VALUES (5119,2408,'вепбемю лнцхкю',15);
INSERT INTO `n_nm` VALUES (5120,8896,'вепбемюйнбн',21);
INSERT INTO `n_nm` VALUES (5121,5070,'вепбемйнбжх',5);
INSERT INTO `n_nm` VALUES (5122,9298,'вепбемжх',3);
INSERT INTO `n_nm` VALUES (5123,6139,'вепцюмнбн',25);
INSERT INTO `n_nm` VALUES (5124,9799,'вепемвю',28);
INSERT INTO `n_nm` VALUES (5125,6462,'вепеонбн',27);
INSERT INTO `n_nm` VALUES (5126,8577,'вепеью',2);
INSERT INTO `n_nm` VALUES (5127,6672,'вепеьхжю',10);
INSERT INTO `n_nm` VALUES (5128,4771,'вепеьйхре',22);
INSERT INTO `n_nm` VALUES (5129,2824,'вепеьмхжю',1);
INSERT INTO `n_nm` VALUES (5130,3524,'вепеьнбхжю',13);
INSERT INTO `n_nm` VALUES (5131,2787,'вепеьнбн',1);
INSERT INTO `n_nm` VALUES (5132,7339,'вепеьнбн',18);
INSERT INTO `n_nm` VALUES (5133,4772,'вепеьнбн',22);
INSERT INTO `n_nm` VALUES (5134,4773,'вепеьнбяйю пейю',22);
INSERT INTO `n_nm` VALUES (5135,3533,'вепйюяйх',13);
INSERT INTO `n_nm` VALUES (5136,5951,'вепйнбхжю',16);
INSERT INTO `n_nm` VALUES (5137,2072,'вепйнбхые',23);
INSERT INTO `n_nm` VALUES (5138,7656,'вепйнбмю',20);
INSERT INTO `n_nm` VALUES (5139,9232,'вепйнбмю',3);
INSERT INTO `n_nm` VALUES (5140,7252,'вепйнбмю',18);
INSERT INTO `n_nm` VALUES (5141,7781,'вепйнбмю',26);
INSERT INTO `n_nm` VALUES (5142,8478,'вепйнбн',2);
INSERT INTO `n_nm` VALUES (5143,9773,'вепмю',28);
INSERT INTO `n_nm` VALUES (5144,9417,'вепмю',9);
INSERT INTO `n_nm` VALUES (5145,7966,'вепмю бндю',26);
INSERT INTO `n_nm` VALUES (5146,6258,'вепмю цнпю',25);
INSERT INTO `n_nm` VALUES (5147,2340,'вепмю цнпю',15);
INSERT INTO `n_nm` VALUES (5148,2789,'вепмю леярю',1);
INSERT INTO `n_nm` VALUES (5149,8527,'вепмю лнцхкю',2);
INSERT INTO `n_nm` VALUES (5150,6471,'вепмю лнцхкю',27);
INSERT INTO `n_nm` VALUES (5151,6692,'вепмю мхбю',10);
INSERT INTO `n_nm` VALUES (5152,6626,'вепмю яйюкю',10);
INSERT INTO `n_nm` VALUES (5153,6585,'вепмю вепйбю',27);
INSERT INTO `n_nm` VALUES (5154,9174,'вепмебн',3);
INSERT INTO `n_nm` VALUES (5155,5646,'вепмебнрн',12);
INSERT INTO `n_nm` VALUES (5156,5349,'вепмебжх',8);
INSERT INTO `n_nm` VALUES (5157,7973,'вепмх апъц',26);
INSERT INTO `n_nm` VALUES (5158,5725,'вепмх бхр',12);
INSERT INTO `n_nm` VALUES (5159,3649,'вепмх бпзу',13);
INSERT INTO `n_nm` VALUES (5160,8122,'вепмх бпзу',2);
INSERT INTO `n_nm` VALUES (5161,9827,'вепмх бпзу',28);
INSERT INTO `n_nm` VALUES (5162,5084,'вепмх дък',5);
INSERT INTO `n_nm` VALUES (5163,5620,'вепмх нязл',12);
INSERT INTO `n_nm` VALUES (5164,6598,'вепмх пхд',27);
INSERT INTO `n_nm` VALUES (5165,6778,'вепмхцнбн',10);
INSERT INTO `n_nm` VALUES (5166,7651,'вепмхй',20);
INSERT INTO `n_nm` VALUES (5167,8468,'вепмхжю',2);
INSERT INTO `n_nm` VALUES (5168,2741,'вепмхве',1);
INSERT INTO `n_nm` VALUES (5169,6954,'вепмхвебн',10);
INSERT INTO `n_nm` VALUES (5170,4181,'вепмхвебн',17);
INSERT INTO `n_nm` VALUES (5171,6581,'вепмхвхмн',27);
INSERT INTO `n_nm` VALUES (5172,3922,'вепмн онке',6);
INSERT INTO `n_nm` VALUES (5173,5365,'вепмнбпзу',8);
INSERT INTO `n_nm` VALUES (5174,9778,'вепмнцкюбжх',28);
INSERT INTO `n_nm` VALUES (5175,7614,'вепмнцнп',20);
INSERT INTO `n_nm` VALUES (5176,6411,'вепмнцнпнбн',27);
INSERT INTO `n_nm` VALUES (5177,4456,'вепмнцнпнбн',14);
INSERT INTO `n_nm` VALUES (5178,8545,'вепмнцпюд',2);
INSERT INTO `n_nm` VALUES (5179,6524,'вепмндза',27);
INSERT INTO `n_nm` VALUES (5180,8739,'вепмнгел',29);
INSERT INTO `n_nm` VALUES (5181,4168,'вепмнгелем',17);
INSERT INTO `n_nm` VALUES (5182,7921,'вепмнйюожх',26);
INSERT INTO `n_nm` VALUES (5183,7693,'вепмнкхй',20);
INSERT INTO `n_nm` VALUES (5184,8142,'вепмнлнпеж',2);
INSERT INTO `n_nm` VALUES (5185,9678,'вепмнлнпжх',9);
INSERT INTO `n_nm` VALUES (5186,9259,'вепмннй',3);
INSERT INTO `n_nm` VALUES (5187,6946,'вепмннйх',10);
INSERT INTO `n_nm` VALUES (5188,9873,'вепмннйнбн',28);
INSERT INTO `n_nm` VALUES (5189,9532,'вепмннйнбн',9);
INSERT INTO `n_nm` VALUES (5190,6701,'вепмннвеме',10);
INSERT INTO `n_nm` VALUES (5191,2067,'вепмэнбн',23);
INSERT INTO `n_nm` VALUES (5192,6670,'вепмэнбжх',10);
INSERT INTO `n_nm` VALUES (5193,9469,'веярхлемяйн',9);
INSERT INTO `n_nm` VALUES (5194,2598,'верхпжх',11);
INSERT INTO `n_nm` VALUES (5195,4241,'верпнйю',17);
INSERT INTO `n_nm` VALUES (5196,4159,'веукюпе',17);
INSERT INTO `n_nm` VALUES (5197,2556,'веькъмжх',11);
INSERT INTO `n_nm` VALUES (5198,5156,'веьлю',5);
INSERT INTO `n_nm` VALUES (5199,4121,'веьмецхпнбн',17);
INSERT INTO `n_nm` VALUES (5200,2236,'вхаюнбжх',23);
INSERT INTO `n_nm` VALUES (5201,6625,'вхкхй',10);
INSERT INTO `n_nm` VALUES (5202,7162,'вхкмнб',19);
INSERT INTO `n_nm` VALUES (5203,8858,'вхмрскнбн',21);
INSERT INTO `n_nm` VALUES (5204,3460,'вхопнбжх',13);
INSERT INTO `n_nm` VALUES (5205,3050,'вхпем',7);
INSERT INTO `n_nm` VALUES (5206,6200,'вхпоюм',25);
INSERT INTO `n_nm` VALUES (5207,5088,'вхярнбн',5);
INSERT INTO `n_nm` VALUES (5208,5300,'вхрюйнбжх',8);
INSERT INTO `n_nm` VALUES (5209,3912,'вхткхй',6);
INSERT INTO `n_nm` VALUES (5210,6677,'вхткхй',10);
INSERT INTO `n_nm` VALUES (5211,5661,'вхткхй',12);
INSERT INTO `n_nm` VALUES (5212,6869,'вхвебн',10);
INSERT INTO `n_nm` VALUES (5213,3819,'вхвхк',6);
INSERT INTO `n_nm` VALUES (5214,4161,'внаю',17);
INSERT INTO `n_nm` VALUES (5215,6836,'внаюмйю',10);
INSERT INTO `n_nm` VALUES (5216,4760,'внйлюмнбн',22);
INSERT INTO `n_nm` VALUES (5217,8887,'внйнаю',21);
INSERT INTO `n_nm` VALUES (5218,4636,'внкюйнбю',14);
INSERT INTO `n_nm` VALUES (5219,6800,'внлюйнбн',10);
INSERT INTO `n_nm` VALUES (5220,5989,'внлюйнбжх',16);
INSERT INTO `n_nm` VALUES (5221,6890,'внпаюдфхияйн',10);
INSERT INTO `n_nm` VALUES (5222,2215,'внпск',23);
INSERT INTO `n_nm` VALUES (5223,8461,'всапю',2);
INSERT INTO `n_nm` VALUES (5224,6786,'всапхйю',10);
INSERT INTO `n_nm` VALUES (5225,2562,'всдхмжх',11);
INSERT INTO `n_nm` VALUES (5226,7284,'всднлхп',18);
INSERT INTO `n_nm` VALUES (5227,2346,'всиоеркэнбн',15);
INSERT INTO `n_nm` VALUES (5228,8529,'всйюпйю',2);
INSERT INTO `n_nm` VALUES (5229,6560,'всйюпнбн',27);
INSERT INTO `n_nm` VALUES (5230,5088,'всйюрю',5);
INSERT INTO `n_nm` VALUES (5231,4245,'всйюрю',17);
INSERT INTO `n_nm` VALUES (5232,5304,'всйхкхре',8);
INSERT INTO `n_nm` VALUES (5233,2209,'всйнбегеп',23);
INSERT INTO `n_nm` VALUES (5234,7537,'всйнбеж',20);
INSERT INTO `n_nm` VALUES (5235,2425,'всйнбеж',15);
INSERT INTO `n_nm` VALUES (5236,5370,'всйнбн',8);
INSERT INTO `n_nm` VALUES (5237,6818,'всйнбн',10);
INSERT INTO `n_nm` VALUES (5238,6592,'всйспхре',27);
INSERT INTO `n_nm` VALUES (5239,3950,'всопеме',6);
INSERT INTO `n_nm` VALUES (5240,2126,'вспей',23);
INSERT INTO `n_nm` VALUES (5241,4226,'вспем',17);
INSERT INTO `n_nm` VALUES (5242,2885,'вспхкнбн',1);
INSERT INTO `n_nm` VALUES (5243,2891,'вспхвемх',1);
INSERT INTO `n_nm` VALUES (5244,4915,'вспйю',22);
INSERT INTO `n_nm` VALUES (5245,4823,'вспсйнбн',22);
INSERT INTO `n_nm` VALUES (5246,6572,'всвскхцю',27);
INSERT INTO `n_nm` VALUES (5247,2865,'всвскхцнбн',1);
INSERT INTO `n_nm` VALUES (5248,4796,'всвсп',22);
INSERT INTO `n_nm` VALUES (5249,9680,'ьюакю',9);
INSERT INTO `n_nm` VALUES (5250,6169,'ьюмнбн',25);
INSERT INTO `n_nm` VALUES (5251,5300,'ьюпюмх',8);
INSERT INTO `n_nm` VALUES (5252,4916,'ьюпемяйю',22);
INSERT INTO `n_nm` VALUES (5253,8753,'ьюпйнбн',29);
INSERT INTO `n_nm` VALUES (5254,2684,'ьюрпнбн',11);
INSERT INTO `n_nm` VALUES (5255,6144,'ьеимнбн',25);
INSERT INTO `n_nm` VALUES (5256,5027,'ьельебн',5);
INSERT INTO `n_nm` VALUES (5257,5034,'ьепелеръ',5);
INSERT INTO `n_nm` VALUES (5258,8897,'ьеьйхмцпюд',21);
INSERT INTO `n_nm` VALUES (5259,8559,'ьхбюпнбн',2);
INSERT INTO `n_nm` VALUES (5260,8895,'ьхбювебн',21);
INSERT INTO `n_nm` VALUES (5261,5094,'ьхкхбепх',5);
INSERT INTO `n_nm` VALUES (5262,5087,'ьхкйнбжх',5);
INSERT INTO `n_nm` VALUES (5263,3836,'ьхохйнбю люуюкю',6);
INSERT INTO `n_nm` VALUES (5264,6150,'ьхойю',25);
INSERT INTO `n_nm` VALUES (5265,2493,'ьхойнбхжю',15);
INSERT INTO `n_nm` VALUES (5266,5663,'ьхойнбн',12);
INSERT INTO `n_nm` VALUES (5267,6865,'ьхонй',10);
INSERT INTO `n_nm` VALUES (5268,3744,'ьхонр',6);
INSERT INTO `n_nm` VALUES (5269,2015,'ьхонвюме',23);
INSERT INTO `n_nm` VALUES (5270,2552,'ьхонвюмн',11);
INSERT INTO `n_nm` VALUES (5271,5344,'ьховемхре',8);
INSERT INTO `n_nm` VALUES (5272,4710,'ьхпнйю кзйю',22);
INSERT INTO `n_nm` VALUES (5273,6365,'ьхпнйю онкъмю',27);
INSERT INTO `n_nm` VALUES (5274,2013,'ьхпнйх днк',23);
INSERT INTO `n_nm` VALUES (5275,6650,'ьхпнйн онке',10);
INSERT INTO `n_nm` VALUES (5276,7159,'ьхпнйнбн',19);
INSERT INTO `n_nm` VALUES (5277,3834,'ьхьемжх',6);
INSERT INTO `n_nm` VALUES (5278,7971,'ьхьйнбхжю',26);
INSERT INTO `n_nm` VALUES (5279,2553,'ьхьйнбжх',11);
INSERT INTO `n_nm` VALUES (5280,6458,'ьхьлюмнбн',27);
INSERT INTO `n_nm` VALUES (5281,4133,'ьхьлюмжх',17);
INSERT INTO `n_nm` VALUES (5282,5962,'ьхъйнбн',16);
INSERT INTO `n_nm` VALUES (5283,9112,'ьйнпохкнбжх',3);
INSERT INTO `n_nm` VALUES (5284,5053,'ьндейнбжх',5);
INSERT INTO `n_nm` VALUES (5285,5459,'ьнохре',8);
INSERT INTO `n_nm` VALUES (5286,6883,'ьножх',10);
INSERT INTO `n_nm` VALUES (5287,5097,'ьсаежх',5);
INSERT INTO `n_nm` VALUES (5288,2252,'ьслю',23);
INSERT INTO `n_nm` VALUES (5289,5468,'ьслюрю',8);
INSERT INTO `n_nm` VALUES (5290,9700,'ьслем',28);
INSERT INTO `n_nm` VALUES (5291,7639,'ьслемжх',20);
INSERT INTO `n_nm` VALUES (5292,6888,'ьслмюрхжю',10);
INSERT INTO `n_nm` VALUES (5293,5380,'ьсьмъ',8);
INSERT INTO `n_nm` VALUES (5294,6842,'ыепмю',10);
INSERT INTO `n_nm` VALUES (5295,9283,'ыхояйн',3);
INSERT INTO `n_nm` VALUES (5296,6528,'ыхр',27);
INSERT INTO `n_nm` VALUES (5297,7078,'ыпзйкебн',19);
INSERT INTO `n_nm` VALUES (5298,4461,'ызпйнбн',14);
INSERT INTO `n_nm` VALUES (5299,5791,'зцкем',12);
INSERT INTO `n_nm` VALUES (5300,4241,'чцнбн',17);
INSERT INTO `n_nm` VALUES (5301,7061,'чдекмхй',19);
INSERT INTO `n_nm` VALUES (5302,6168,'чкхебн',25);
INSERT INTO `n_nm` VALUES (5303,9138,'чмюй',3);
INSERT INTO `n_nm` VALUES (5304,6800,'чмюжх',10);
INSERT INTO `n_nm` VALUES (5305,4420,'чмюжхре',14);
INSERT INTO `n_nm` VALUES (5306,4629,'чмднкю',14);
INSERT INTO `n_nm` VALUES (5307,9109,'чмеж',3);
INSERT INTO `n_nm` VALUES (5308,7338,'чоеп',18);
INSERT INTO `n_nm` VALUES (5309,2796,'чпсйнбн',1);
INSERT INTO `n_nm` VALUES (5310,2298,'ъакюмхжю',23);
INSERT INTO `n_nm` VALUES (5311,5750,'ъакюмхжю',12);
INSERT INTO `n_nm` VALUES (5312,8989,'ъакюмнбн',21);
INSERT INTO `n_nm` VALUES (5313,6787,'ъазкйнбеж',10);
INSERT INTO `n_nm` VALUES (5314,6440,'ъазкйнбн',27);
INSERT INTO `n_nm` VALUES (5315,2544,'ъазкйнбн',11);
INSERT INTO `n_nm` VALUES (5316,5350,'ъазкйнбжх',8);
INSERT INTO `n_nm` VALUES (5317,8542,'ъазквебн',2);
INSERT INTO `n_nm` VALUES (5318,6715,'ъазквемх',10);
INSERT INTO `n_nm` VALUES (5319,5350,'ъбнп',8);
INSERT INTO `n_nm` VALUES (5320,5334,'ъбнпеж',8);
INSERT INTO `n_nm` VALUES (5321,6179,'ъбнпеж',25);
INSERT INTO `n_nm` VALUES (5322,2896,'ъбнпмхжю',1);
INSERT INTO `n_nm` VALUES (5323,6696,'ъбнпнбн',10);
INSERT INTO `n_nm` VALUES (5324,6240,'ъбнпнбн',25);
INSERT INTO `n_nm` VALUES (5325,4258,'ъбпнбн',17);
INSERT INTO `n_nm` VALUES (5326,6865,'ъцмебн',10);
INSERT INTO `n_nm` VALUES (5327,9231,'ъцмхкн',3);
INSERT INTO `n_nm` VALUES (5328,6167,'ъцндю',25);
INSERT INTO `n_nm` VALUES (5329,4835,'ъцндхмю',22);
INSERT INTO `n_nm` VALUES (5330,3537,'ъцнднбн',13);
INSERT INTO `n_nm` VALUES (5331,4113,'ъцнднбн',17);
INSERT INTO `n_nm` VALUES (5332,6229,'ъгдюв',25);
INSERT INTO `n_nm` VALUES (5333,7991,'ъгнбеж',26);
INSERT INTO `n_nm` VALUES (5334,7443,'ъйхл цпсебн',18);
INSERT INTO `n_nm` VALUES (5335,3640,'ъйхлнбн',13);
INSERT INTO `n_nm` VALUES (5336,6870,'ъйнбхжю',10);
INSERT INTO `n_nm` VALUES (5337,2875,'ъйнбн',1);
INSERT INTO `n_nm` VALUES (5338,5081,'ъйнбжх',5);
INSERT INTO `n_nm` VALUES (5339,2790,'ъйнпсдю',1);
INSERT INTO `n_nm` VALUES (5340,2220,'ъканрхмю',23);
INSERT INTO `n_nm` VALUES (5341,5056,'ъкнбн',5);
INSERT INTO `n_nm` VALUES (5342,8600,'ъланк',29);
INSERT INTO `n_nm` VALUES (5343,6854,'ълхмн',10);
INSERT INTO `n_nm` VALUES (5344,2183,'ълмю',23);
INSERT INTO `n_nm` VALUES (5345,1805,'ъмю',23);
INSERT INTO `n_nm` VALUES (5346,6865,'ъмхмн',10);
INSERT INTO `n_nm` VALUES (5347,9823,'ъмйнбн',28);
INSERT INTO `n_nm` VALUES (5348,5345,'ъмйнбжх',8);
INSERT INTO `n_nm` VALUES (5349,2816,'ъмнбн',1);
INSERT INTO `n_nm` VALUES (5350,5135,'ъмрпю',5);
INSERT INTO `n_nm` VALUES (5351,5374,'ъмрпю',8);
INSERT INTO `n_nm` VALUES (5352,3949,'ъмэнбеж',6);
INSERT INTO `n_nm` VALUES (5353,2355,'ъпдфхкнбжх',15);
INSERT INTO `n_nm` VALUES (5354,7691,'ъпеахжю',20);
INSERT INTO `n_nm` VALUES (5355,6732,'ъпеахжю',10);
INSERT INTO `n_nm` VALUES (5356,9158,'ъпеахвмю',3);
INSERT INTO `n_nm` VALUES (5357,7998,'ъпеахвмн',26);
INSERT INTO `n_nm` VALUES (5358,2023,'ъпеайнбхжю',23);
INSERT INTO `n_nm` VALUES (5359,3799,'ъпкнбхжю',6);
INSERT INTO `n_nm` VALUES (5360,2029,'ъпкнбн',23);
INSERT INTO `n_nm` VALUES (5361,2481,'ъпкнбжх',15);
INSERT INTO `n_nm` VALUES (5362,2376,'ъпнякюбжх',15);
INSERT INTO `n_nm` VALUES (5363,3775,'ъяем',6);
INSERT INTO `n_nm` VALUES (5364,5850,'ъяем',16);
INSERT INTO `n_nm` VALUES (5365,5335,'ъяемхре',8);
INSERT INTO `n_nm` VALUES (5366,9777,'ъяемйнбн',28);
INSERT INTO `n_nm` VALUES (5367,7250,'ъяемнбеж',18);
INSERT INTO `n_nm` VALUES (5368,6147,'ъяемнбн',25);
INSERT INTO `n_nm` VALUES (5369,8569,'ъяемнбн',2);
INSERT INTO `n_nm` VALUES (5370,8147,'ъямю онкъмю',2);
INSERT INTO `n_nm` VALUES (5371,4139,'ъямн онке',17);
INSERT INTO `n_nm` VALUES (5372,7975,'ъярпеа',10);
INSERT INTO `n_nm` VALUES (5373,7975,'ъярпеахмн',26);
INSERT INTO `n_nm` VALUES (5374,7664,'ъярпеамю',20);
INSERT INTO `n_nm` VALUES (5375,6056,'ъярпеанбн',25);
INSERT INTO `n_nm` VALUES (5376,7073,'ъярпеанбн',19);
INSERT INTO `n_nm` VALUES (5377,2622,'ъухмнбн',11);


#
# Table structure for table n_oblast
#

CREATE TABLE `n_oblast` (
  `id_n_oblast` int(11) NOT NULL default '0',
  `name_n_oblast` varchar(20) default NULL,
  `id_n_country` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`id_n_oblast`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_oblast
#

INSERT INTO `n_oblast` VALUES (1,'акюцнебцпюд',1);
INSERT INTO `n_oblast` VALUES (2,'аспцюя',1);
INSERT INTO `n_oblast` VALUES (3,'бюпмю',1);
INSERT INTO `n_oblast` VALUES (4,'бекхйн рзпмнбн',1);
INSERT INTO `n_oblast` VALUES (5,'бхдхм',1);
INSERT INTO `n_oblast` VALUES (6,'бпюжю',1);
INSERT INTO `n_oblast` VALUES (7,'цюапнбн',1);
INSERT INTO `n_oblast` VALUES (8,'днапхв',1);
INSERT INTO `n_oblast` VALUES (9,'йзпдфюкх',1);
INSERT INTO `n_oblast` VALUES (10,'йчяремдхк',1);
INSERT INTO `n_oblast` VALUES (11,'кнбев',1);
INSERT INTO `n_oblast` VALUES (12,'лнмрюмю',1);
INSERT INTO `n_oblast` VALUES (13,'оюгюпдфхй',1);
INSERT INTO `n_oblast` VALUES (14,'оепмхй',1);
INSERT INTO `n_oblast` VALUES (15,'окебем',1);
INSERT INTO `n_oblast` VALUES (16,'окнбдхб',1);
INSERT INTO `n_oblast` VALUES (17,'пюгцпюд',1);
INSERT INTO `n_oblast` VALUES (18,'псяе',1);
INSERT INTO `n_oblast` VALUES (19,'яхкхярпю',1);
INSERT INTO `n_oblast` VALUES (20,'якхбем',1);
INSERT INTO `n_oblast` VALUES (21,'ялнкъм',1);
INSERT INTO `n_oblast` VALUES (22,'янтхъ',1);
INSERT INTO `n_oblast` VALUES (23,'янтхъ-цпюд',1);
INSERT INTO `n_oblast` VALUES (24,'ярюпю гюцнпю',1);
INSERT INTO `n_oblast` VALUES (25,'рзпцнбхые',1);
INSERT INTO `n_oblast` VALUES (26,'уюяйнбн',1);
INSERT INTO `n_oblast` VALUES (27,'ьслем',1);
INSERT INTO `n_oblast` VALUES (28,'ъланк',1);


#
# Table structure for table n_person
#

CREATE TABLE `n_person` (
  `id_person` int(11) NOT NULL default '0',
  `n_person` varchar(30) default NULL COMMENT 'sobstveno',
  `egn_n_person` int(11) NOT NULL default '0',
  `lkn_n_person` int(11) default NULL,
  PRIMARY KEY  (`id_person`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_person
#



#
# Table structure for table n_product_all_measure
#

CREATE TABLE `n_product_all_measure` (
  `id_pam` int(11) NOT NULL auto_increment,
  `name_pam` varchar(30) default NULL,
  `sname_pam` varchar(6) default NULL,
  PRIMARY KEY  (`id_pam`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_all_measure
#



#
# Table structure for table n_product_consigment
#

CREATE TABLE `n_product_consigment` (
  `id_pc` int(11) NOT NULL,
  `id_pm` int(11) NOT NULL,
  `parcel_pc` int(10) unsigned default NULL,
  `dateofexpire_pc` date default NULL,
  PRIMARY KEY  (`id_pc`),
  KEY `id_pm` (`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_consigment
#



#
# Table structure for table n_product_description
#

CREATE TABLE `n_product_description` (
  `id_pd` int(11) NOT NULL auto_increment,
  `m1_pd` int(12) default NULL,
  `v1_pd` int(11) default NULL,
  `m2_pd` int(12) default NULL,
  `v2_pd` int(11) default NULL,
  `m3_pd` int(12) default NULL,
  `v3_pd` int(11) default NULL,
  PRIMARY KEY  (`id_pd`),
  KEY `v1_pd` (`v1_pd`,`v2_pd`,`v3_pd`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_description
#



#
# Table structure for table n_product_fee
#

CREATE TABLE `n_product_fee` (
  `id_pf` int(11) NOT NULL auto_increment,
  `dds_pf` decimal(10,0) default NULL,
  `excise_pf` decimal(10,0) default NULL,
  `other_pf` decimal(10,0) default NULL,
  PRIMARY KEY  (`id_pf`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_fee
#



#
# Table structure for table n_product_main
#

CREATE TABLE `n_product_main` (
  `id_pm` int(11) unsigned NOT NULL auto_increment,
  `id_pd` int(11) unsigned NOT NULL default '0',
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `id_ppp` int(11) unsigned NOT NULL default '0',
  `id_pp` int(11) unsigned NOT NULL default '0',
  `id_pf` int(11) unsigned NOT NULL default '0',
  `name_pm` varchar(30) collate cp1251_bulgarian_ci NOT NULL,
  `fname_pm` varchar(30) collate cp1251_bulgarian_ci default NULL,
  `sname_pm` varchar(10) collate cp1251_bulgarian_ci default NULL,
  `cname_pm` varchar(10) collate cp1251_bulgarian_ci default NULL,
  `cod1_pm` varchar(20) collate cp1251_bulgarian_ci default NULL,
  `cod2_pm` varchar(20) collate cp1251_bulgarian_ci default NULL,
  `barcod_pm` bigint(15) default NULL,
  `max_pop_pm` decimal(4,2) default NULL,
  `expertsheet_pm` varchar(45) collate cp1251_bulgarian_ci default NULL,
  PRIMARY KEY  (`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_bulgarian_ci;

#
# Dumping data for table n_product_main
#



#
# Table structure for table n_product_price
#

CREATE TABLE `n_product_price` (
  `id_pp` int(11) NOT NULL auto_increment,
  `id_sl_curs` int(10) unsigned NOT NULL,
  `price1_pp` decimal(10,0) default NULL,
  `price2_pp` decimal(10,0) default NULL,
  `price3_pp` decimal(10,0) default NULL,
  PRIMARY KEY  (`id_pp`),
  KEY `n_product_price_FKIndex1` (`id_sl_curs`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_price
#



#
# Table structure for table n_product_promotion_price
#

CREATE TABLE `n_product_promotion_price` (
  `id_ppp` int(11) NOT NULL auto_increment,
  `price_ppp` decimal(10,0) default NULL,
  `datestart_ppp` date default NULL,
  `datestop_ppp` date default NULL,
  PRIMARY KEY  (`id_ppp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_promotion_price
#



#
# Table structure for table n_storage
#

CREATE TABLE `n_storage` (
  `id_n_storage` int(11) NOT NULL default '0',
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `code_n_storage` int(11) unsigned NOT NULL default '0',
  `name_n_storage` varchar(50) default NULL,
  `comments_n_storage` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_storage`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='skladove';

#
# Dumping data for table n_storage
#



#
# Table structure for table n_type_doc
#

CREATE TABLE `n_type_doc` (
  `id_ntd` int(11) NOT NULL auto_increment,
  `name_ntd` varchar(50) default NULL,
  `name_print_ntd` varchar(50) default NULL,
  PRIMARY KEY  (`id_ntd`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='tipove documenti';

#
# Dumping data for table n_type_doc
#



#
# Table structure for table natc_clasifikator_deinosti
#

CREATE TABLE `natc_clasifikator_deinosti` (
  `id_ncd` int(11) NOT NULL auto_increment,
  `pyear` int(5) unsigned default NULL,
  `nkid_ncd` varchar(6) default NULL,
  `name_ncd` varchar(50) default NULL,
  `n1_ncd` decimal(6,2) unsigned NOT NULL default '0.00',
  `n2_ncd` decimal(6,2) unsigned NOT NULL default '0.00',
  `n3_ncd` decimal(6,2) unsigned NOT NULL default '0.00',
  `n4_ncd` decimal(6,2) unsigned NOT NULL default '0.00',
  `n5_ncd` decimal(6,2) unsigned NOT NULL default '0.00',
  `n6_ncd` decimal(6,2) unsigned NOT NULL default '0.00',
  `n7_ncd` decimal(6,2) unsigned NOT NULL default '0.00',
  `n8_ncd` decimal(6,2) unsigned NOT NULL default '0.00',
  `n9_ncd` decimal(6,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`id_ncd`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table natc_clasifikator_deinosti
#

INSERT INTO `natc_clasifikator_deinosti` VALUES (319,NULL,'011','пЮЯРЕМХЕБЗДЯРБН',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (320,NULL,'0111','нРЦКЕФДЮМЕ МЮ ГЗПМЕМХ, ЙКСАЕМНОКНДМХ, РЕУМХВЕЯЙХ Х',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (321,NULL,'0112','нРЦКЕФДЮМЕ МЮ ГЕКЕМВСЖХ, ДХМХ Х ОЗОЕЬХ Х ДПСЦХ ЯОЕ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (322,NULL,'0113','нРЦКЕФДЮМЕ МЮ КНГНБХ, НБНЫМХ Х ДПСЦХ РПЮИМХ МЮЯЮФД',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (323,NULL,'012','фХБНРМНБЗДЯРБН',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (324,NULL,'0121','нРЦКЕФДЮМЕ МЮ ЕДЗП ПНЦЮР ДНАХРЗЙ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (325,NULL,'0122','нРЦКЕФДЮМЕ МЮ ДПЕАЕМ ПНЦЮР ДНАХРЗЙ, ЙНМЕ, ЛЮЦЮПЕРЮ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (326,NULL,'0123','нРЦКЕФДЮМЕ МЮ ЯБХМЕ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (327,NULL,'0124','нРЦКЕФДЮМЕ МЮ ДНЛЮЬМХ ОРХЖХ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (328,NULL,'0125','нРЦКЕФДЮМЕ МЮ ДПСЦХ ФХБНРМХ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (329,NULL,'013','йНЛАХМХПЮМН ПЮЯРЕМХЕБЗДМН-ФХБНРМНБЗДМН ЯРНОЮМЯРБН',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (330,NULL,'0130','йНЛАХМХПЮМН ПЮЯРЕМХЕБЗДМН-ФХБНРМНБЗДМН ЯРНОЮМЯРБН',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (331,NULL,'014','яЕКЯЙНЯРНОЮМЯЙХ СЯКСЦХ, АЕГ КЕВЕАМЮРЮ БЕРЕПХМЮПМЮ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (332,NULL,'0141','пЮЯРЕМХЕБЗДМХ СЯКСЦХ; НГЕКЕМЪБЮМЕ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (333,NULL,'0142','фХБНРМНБЗДМХ СЯКСЦХ, АЕГ КЕВЕАМЮРЮ БЕРЕПХМЮПМЮ ДЕИ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (334,NULL,'015','кНБ Х ПЮГБЗФДЮМЕ МЮ ДХБЕВ Х ЯБЗПГЮМХ Я РЪУ СЯКСЦХ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (335,NULL,'0150','кНБ Х ПЮГБЗФДЮМЕ МЮ ДХБЕВ Х ЯБЗПГЮМХ Я РЪУ СЯКСЦХ',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (336,NULL,'020','цНПЯЙН ЯРНОЮМЯРБН, ДЗПБНДНАХБ Х ЯБЗПГЮМХ Я РЪУ СЯК',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (337,NULL,'0201','цНПЯЙН ЯРНОЮМЯРБН Х ДЗПБНДНАХБ',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (338,NULL,'0202','сЯКСЦХ, ЯБЗПГЮМХ Я ЦНПЯЙНРН ЯРНОЮМЯРБН Х ДЗПБНДНАХ',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (339,NULL,'050','пХАМН ЯРНОЮМЯРБН Х ЯБЗПГЮМХ Я МЕЦН СЯКСЦХ',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (340,NULL,'0501','пХАНКНБ',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (341,NULL,'0502','пХАНБЗДЯРБН',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (342,NULL,'101','дНАХБ Х АПХЙЕРХПЮМЕ МЮ ЮМРПЮЖХРМХ Х ВЕПМХ БЗЦКХЫЮ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (343,NULL,'1010','дНАХБ Х АПХЙЕРХПЮМЕ МЮ ЮМРПЮЖХРМХ Х ВЕПМХ БЗЦКХЫЮ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (344,NULL,'102','дНАХБ Х АПХЙЕРХПЮМЕ МЮ ЙЮТЪБХ Х КХЦМХРМХ БЗЦКХЫЮ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (345,NULL,'1020','дНАХБ Х АПХЙЕРХПЮМЕ МЮ ЙЮТЪБХ Х КХЦМХРМХ БЗЦКХЫЮ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (346,NULL,'103','дНАХБ Х АПХЙЕРХПЮМЕ МЮ РНПТ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (347,NULL,'1030','дНАХБ Х АПХЙЕРХПЮМЕ МЮ РНПТ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (348,NULL,'111','дНАХБ МЮ ЯСПНБ МЕТР Х ОПХПНДЕМ ЦЮГ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (349,NULL,'1110','дНАХБ МЮ ЯСПНБ МЕТР Х ОПХПНДЕМ ЦЮГ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (350,NULL,'112','сЯКСЦХ, ЯБЗПГЮМХ Я ДНАХБЮ МЮ МЕТР Х ЦЮГ, АЕГ ОПНСВ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (351,NULL,'1120','сЯКСЦХ, ЯБЗПГЮМХ Я ДНАХБЮ МЮ МЕТР Х ЦЮГ, АЕГ ОПНСВ',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (352,NULL,'120','дНАХБ МЮ СПЮМНБХ Х РНПХЕБХ ПСДХ Х РЕУМХРЕ ЙНМЖЕМРП',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (353,NULL,'1200','дНАХБ МЮ СПЮМНБХ Х РНПХЕБХ ПСДХ Х РЕУМХРЕ ЙНМЖЕМРП',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (354,NULL,'131','дНАХБ МЮ ФЕКЕГМХ ПСДХ Х РЕУМХРЕ ЙНМЖЕМРПЮРХ',360,300,270,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (355,NULL,'1310','дНАХБ МЮ ФЕКЕГМХ ПСДХ Х РЕУМХРЕ ЙНМЖЕМРПЮРХ',360,300,270,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (356,NULL,'132','дНАХБ МЮ ПСДХ МЮ ЖБЕРМХ ЛЕРЮКХ Х РЕУМХРЕ ЙНМЖЕМРПЮ',360,300,270,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (357,NULL,'1320','дНАХБ МЮ ПСДХ МЮ ЖБЕРМХ ЛЕРЮКХ Х РЕУМХРЕ ЙНМЖЕМРПЮ',360,300,270,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (358,NULL,'141','дНАХБ МЮ ЯЙЮКМХ ЛЮРЕПХЮКХ',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (359,NULL,'1411','дНАХБ МЮ ЯРПНХРЕКМХ Х ДЕЙНПЮРХБМХ ЯЙЮКМХ ЛЮРЕПХЮКХ',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (360,NULL,'1412','дНАХБ МЮ БЮПНБХЙ, ЯСПНБ ЦХОЯ, ЙПЕДЮ Х ДНКНЛХР',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (361,NULL,'1413','дНАХБ МЮ ЬХЯРХ',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (362,NULL,'142','дНАХБ МЮ РПНЬЕМ ЙЮЛЗЙ, ВЮЙЗК, ОЪЯЗЙ Х ЦКХМЮ',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (363,NULL,'1421','дНАХБ МЮ РПНЬЕМ ЙЮЛЗЙ, ВЮЙЗК Х ОЪЯЗЙ',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (364,NULL,'1422','дНАХБ МЮ ЦКХМЮ Х ЙЮНКХМ',400,300,250,190,190,0,250,250,180);
INSERT INTO `natc_clasifikator_deinosti` VALUES (365,NULL,'143','дНАХБ МЮ ЛХМЕПЮКМХ ЯСПНБХМХ ГЮ УХЛХВЕЯЙНРН ОПНХГБН',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (366,NULL,'1430','дНАХБ МЮ ЛХМЕПЮКМХ ЯСПНБХМХ ГЮ УХЛХВЕЯЙНРН ОПНХГБН',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (367,NULL,'144','оПНХГБНДЯРБН МЮ ЯНК',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (368,NULL,'1440','оПНХГБНДЯРБН МЮ ЯНК',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (369,NULL,'145','дНАХБ МЮ ДПСЦХ МЕЛЕРЮКМХ ЛЮРЕПХЮКХ Х ЯСПНБХМХ, МЕЙ',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (370,NULL,'1450','дНАХБ МЮ ДПСЦХ МЕЛЕРЮКМХ ЛЮРЕПХЮКХ Х ЯСПНБХМХ, МЕЙ',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (371,NULL,'151','оПНХГБНДЯРБН, ОПЕПЮАНРЙЮ Х ЙНМЯЕПБХПЮМЕ МЮ ЛЕЯН Х',360,270,220,170,160,155,180,180,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (372,NULL,'1511','оПНХГБНДЯРБН МЮ ЛЕЯН, АЕГ ЛЕЯН НР ДНЛЮЬМХ ОРХЖХ',360,270,220,170,160,155,180,180,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (373,NULL,'1512','оПНХГБНДЯРБН МЮ ЛЕЯН НР ДНЛЮЬМХ ОРХЖХ Х НР ФХБНРМХ',360,270,220,170,160,155,180,180,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (374,NULL,'1513','оПНХГБНДЯРБН МЮ ЛЕЯМХ ОПНДСЙРХ',360,270,220,170,160,155,180,180,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (375,NULL,'152','оПЕПЮАНРЙЮ Х ЙНМЯЕПБХПЮМЕ МЮ ПХАЮ Х ДПСЦХ БНДМХ ФХ',380,280,230,170,160,160,180,190,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (376,NULL,'1520','оПЕПЮАНРЙЮ Х ЙНМЯЕПБХПЮМЕ МЮ ПХАЮ Х ДПСЦХ БНДМХ ФХ',380,280,230,170,160,160,180,190,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (377,NULL,'153','оПЕПЮАНРЙЮ Х ЙНМЯЕПБХПЮМЕ МЮ ОКНДНБЕ Х ГЕКЕМВСЖХ',350,275,220,160,153,0,160,185,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (378,NULL,'1531','оПЕПЮАНРЙЮ Х ЙНМЯЕПБХПЮМЕ МЮ ЙЮПРНТХ',350,275,220,160,153,0,160,185,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (379,NULL,'1532','оПНХГБНДЯРБН МЮ ОКНДНБХ Х ГЕКЕМВСЙНБХ ЯНЙНБЕ',350,275,220,160,153,0,160,185,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (380,NULL,'1533','оПЕПЮАНРЙЮ Х ЙНМЯЕПБХПЮМЕ МЮ ОКНДНБЕ Х ГЕКЕМВСЖХ,',350,275,220,160,153,0,160,185,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (381,NULL,'154','оПНХГБНДЯРБН МЮ ПЮЯРХРЕКМХ Х ФХБНРХМЯЙХ ЛЮЯКЮ Х ЛЮ',410,350,300,185,160,160,180,250,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (382,NULL,'1541','оПНХГБНДЯРБН МЮ ЯСПНБХ ЛЮЯКЮ Х ЛЮГМХМХ',410,350,300,185,160,160,180,250,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (383,NULL,'1542','оПНХГБНДЯРБН МЮ ПЮТХМХПЮМХ ЛЮЯКЮ Х ЛЮГМХМХ',410,350,300,185,160,160,180,250,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (384,NULL,'1543','оПНХГБНДЯРБН МЮ ЛЮПЦЮПХМ Х ДПСЦХ ОНДНАМХ УПЮМХРЕКМ',410,350,300,185,160,160,180,250,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (385,NULL,'155','оПНХГБНДЯРБН МЮ ЛКЪЙН Х ЛКЕВМХ ОПНДСЙРХ',400,310,250,175,155,0,170,190,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (386,NULL,'1551','оПНХГБНДЯРБН МЮ ЛКЪЙН Х ЛКЕВМХ ОПНДСЙРХ, АЕГ ЯКЮДН',400,310,250,175,155,0,170,190,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (387,NULL,'1552','оПНХГБНДЯРБН МЮ ЯКЮДНКЕД',400,310,250,175,155,0,170,190,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (388,NULL,'156','оПНХГБНДЯРБН МЮ ЛЕКМХВЮПЯЙХ ОПНДСЙРХ, МХЬЕЯРЕ Х МХ',420,300,280,180,180,0,195,205,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (389,NULL,'1561','оПНХГБНДЯРБН МЮ ЛЕКМХВЮПЯЙХ ОПНДСЙРХ',420,300,280,180,180,0,195,205,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (390,NULL,'1562','оПНХГБНДЯРБН МЮ МХЬЕЯРЕ Х МХЬЕЯРЕМХ ОПНДСЙРХ',420,300,280,180,180,0,195,205,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (391,NULL,'157','оПНХГБНДЯРБН МЮ ЦНРНБХ УПЮМХ ГЮ ФХБНРМХ',400,290,280,185,150,155,195,220,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (392,NULL,'1571','оПНХГБНДЯРБН МЮ ЦНРНБХ УПЮМХ ГЮ ЯЕКЯЙНЯРНОЮМЯЙХ ФХ',400,290,280,185,150,155,195,220,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (393,NULL,'1572','оПНХГБНДЯРБН МЮ ЦНРНБХ УПЮМХ ГЮ ДНЛЮЬМХ ЦЮКЕМХ ФХБ',400,290,280,185,150,155,195,220,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (394,NULL,'158','оПНХГБНДЯРБН МЮ УКЪА, УКЕАМХ ХГДЕКХЪ Х ДПСЦХ УПЮМХ',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (395,NULL,'1581','оПНХГБНДЯРБН МЮ УКЪА, УКЕАМХ ХГДЕКХЪ Х ОПЕЯМХ ЯКЮД',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (396,NULL,'1582','оПНХГБНДЯРБН МЮ ЯСУЮПХ, АХЯЙБХРХ Х ЯСУХ ЯКЮДЙЮПЯЙХ',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (397,NULL,'1583','оПНХГБНДЯРБН МЮ ГЮУЮП',410,310,300,200,155,155,200,230,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (398,NULL,'1584','оПНХГБНДЯРБН МЮ ЙЮЙЮН, ЬНЙНКЮДНБХ Х ГЮУЮПМХ ХГДЕКХ',410,310,300,200,155,155,200,230,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (399,NULL,'1585','оПНХГБНДЯРБН МЮ ЛЮЙЮПНМХ, ЧТЙЮ, ЙСЯ-ЙСЯ Х ОНДНАМХ',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (400,NULL,'1586','оПЕПЮАНРЙЮ МЮ ЙЮТЕ Х ВЮИ',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (401,NULL,'1587','оПНХГБНДЯРБН МЮ УПЮМХРЕКМХ ОНДОПЮБЙХ Х ЯНЯНБЕ',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (402,NULL,'1588','оПНХГБНДЯРБН МЮ УНЛНЦЕМХГХПЮМХ ЦНРНБХ УПЮМХ, БЙК.',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (403,NULL,'1589','оПНХГБНДЯРБН МЮ ДПСЦХ УПЮМХРЕКМХ ОПНДСЙРХ, МЕЙКЮЯХ',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (404,NULL,'159','оПНХГБНДЯРБН МЮ МЮОХРЙХ',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (405,NULL,'1591','оПНХГБНДЯРБН МЮ ЯОХПРМХ МЮОХРЙХ',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (406,NULL,'1592','оПНХГБНДЯРБН МЮ ЕРХКНБ ЮКЙНУНК НР ТЕПЛЕМРХПЮКХ ОПН',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (407,NULL,'1593','оПНХГБНДЯРБН МЮ БХМЮ НР ЦПНГДЕ',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (408,NULL,'1594','оПНХГБНДЯРБН МЮ ДПСЦХ ТЕПЛЕМРХПЮКХ МЮОХРЙХ, АЕГ РЕ',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (409,NULL,'1595','оПНХГБНДЯРБН МЮ ДПСЦХ МЕДЕЯРХКХПЮМХ ЮКЙНУНКМХ МЮОХ',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (410,NULL,'1596','оПНХГБНДЯРБН МЮ ОХБН',360,290,255,160,165,0,170,210,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (411,NULL,'1597','оПНХГБНДЯРБН МЮ ЛЮКЖ',360,290,255,160,165,0,170,210,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (412,NULL,'1598','оПНХГБНДЯРБН МЮ ЛХМЕПЮКМХ БНДХ Х АЕГЮКЙНУНКМХ МЮОХ',390,320,280,180,160,0,180,200,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (413,NULL,'160','оПНХГБНДЯРБН МЮ РЧРЧМЕБХ ХГДЕКХЪ',410,400,280,220,180,150,190,220,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (414,NULL,'1600','оПНХГБНДЯРБН МЮ РЧРЧМЕБХ ХГДЕКХЪ',410,400,280,220,180,150,190,220,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (415,NULL,'171','оНДЦНРНБЙЮ Х ОПЕДЕМЕ МЮ РЕЙЯРХКМХ БКЮЙМЮ Х ОПЕФДХ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (416,NULL,'1711','оНДЦНРНБЙЮ МЮ ОЮЛСЙ ГЮ ОПЕДЕМЕ Х ОПНХГБНДЯРБН МЮ О',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (417,NULL,'1712','оНДЦНРНБЙЮ МЮ ЫПЮИУЦЮПМЮ БЗКМЮ ГЮ ОПЕДЕМЕ Х ОПНХГБ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (418,NULL,'1713','оНДЦНРНБЙЮ МЮ ЙЮЛЦЮПМЮ БЗКМЮ ГЮ ОПЕДЕМЕ Х ОПНХГБНД',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (419,NULL,'1714','оНДЦНРНБЙЮ МЮ КЕМ ГЮ ОПЕДЕМЕ Х ОПНХГБНДЯРБН МЮ КЕМ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (420,NULL,'1715','хГРНВБЮМЕ МЮ ЕЯРЕЯРБЕМЮ ЙНОПХМЮ Х ОНДЦНРНБЙЮ МЮ ЯХ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (421,NULL,'1716','оПНХГБНДЯРБН МЮ ЬЕБМХ ЙНМЖХ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (422,NULL,'1717','оНДЦНРНБЙЮ МЮ ДПСЦХ БХДНБЕ ЕЯРЕЯРБЕМХ БКЮЙМЮ ГЮ ОП',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (423,NULL,'172','оПНХГБНДЯРБН МЮ РЗЙЮМХ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (424,NULL,'1721','оПНХГБНДЯРБН МЮ ОЮЛСВМХ Х РХО ОЮЛСВМХ РЗЙЮМХ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (425,NULL,'1722','оПНХГБНДЯРБН МЮ ЫПЮИУЦЮПМХ БЗКМЕМХ Х РХО БЗКМЕМХ Р',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (426,NULL,'1723','оПНХГБНДЯРБН МЮ ЙЮЛЦЮПМХ БЗКМЕМХ Х РХО БЗКМЕМХ РЗЙ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (427,NULL,'1724','оПНХГБНДЯРБН МЮ ЙНОПХМЕМХ Х РХО ЙНОПХМЕМХ РЗЙЮМХ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (428,NULL,'1725','оПНХГБНДЯРБН МЮ ДПСЦХ РЗЙЮМХ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (429,NULL,'173','нАКЮЦНПНДЪБЮМЕ МЮ ОПЕФДХ, РЗЙЮМХ Х НАКЕЙКН',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (430,NULL,'1730','нАКЮЦНПНДЪБЮМЕ МЮ ОПЕФДХ, РЗЙЮМХ Х НАКЕЙКН',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (431,NULL,'174','оПНХГБНДЯРБН МЮ ЙНМТЕЙЖХНМХПЮМХ РЕЙЯРХКМХ ХГДЕКХЪ,',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (432,NULL,'1740','оПНХГБНДЯРБН МЮ ЙНМТЕЙЖХНМХПЮМХ РЕЙЯРХКМХ ХГДЕКХЪ,',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (433,NULL,'175','оПНХГБНДЯРБН МЮ ДПСЦХ РЕЙЯРХКМХ ХГДЕКХЪ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (434,NULL,'1751','оПНХГБНДЯРБН МЮ ЙХКХЛХ Х РЕЙЯРХКМХ ОНДНБХ МЮЯРХКЙХ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (435,NULL,'1752','оПНХГБНДЯРБН МЮ ЙЮМЮОХ, БЗФЕРЮ, ЛПЕФХ Х ХГДЕКХЪ НР',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (436,NULL,'1753','оПНХГБНДЯРБН МЮ МЕРЗЙЮМХ РЕЙЯРХКМХ ХГДЕКХЪ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (437,NULL,'1754','оПНХГБНДЯРБН МЮ ДПСЦХ РЕЙЯРХКМХ ХГДЕКХЪ, МЕЙКЮЯХТХ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (438,NULL,'176','оПНХГБНДЯРБН МЮ ОКЕРЕМХ ОКЮРНБЕ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (439,NULL,'1760','оПНХГБНДЯРБН МЮ ОКЕРЕМХ ОКЮРНБЕ',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (440,NULL,'177','оПНХГБНДЯРБН МЮ РПХЙНРЮФМХ ХГДЕКХЪ',270,200,170,150,155,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (441,NULL,'1771','оПНХГБНДЯРБН МЮ ВНПЮОХ Х ВНПЮОНЦЮЫХ',270,200,170,150,155,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (442,NULL,'1772','оПНХГБНДЯРБН МЮ ЙКЮЯХВЕЯЙХ (ЛЮЬХММН ХКХ ПЗВМН ОКЕР',270,200,170,150,155,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (443,NULL,'181','оПНХГБНДЯРБН МЮ НАКЕЙКН НР НАПЮАНРЕМХ ЛЕЙХ ЙНФХ',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (444,NULL,'1810','оПНХГБНДЯРБН МЮ НАКЕЙКН НР НАПЮАНРЕМХ ЛЕЙХ ЙНФХ',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (445,NULL,'182','оПНХГБНДЯРБН МЮ ДПСЦН НАКЕЙКН Х ДНОЗКМЕМХЪ ГЮ НАКЕ',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (446,NULL,'1821','оПНХГБНДЯРБН МЮ ПЮАНРМН НАКЕЙКН',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (447,NULL,'1822','оПНХГБНДЯРБН МЮ ЦНПМН НАКЕЙКН, АЕГ ПЮАНРМН',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (448,NULL,'1823','оПНХГБНДЯРБН МЮ ПХГХ, АКСГХ Х ДПСЦН ДНКМН НАКЕЙКН',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (449,NULL,'1824','оПНХГБНДЯРБН МЮ ДПСЦН НАКЕЙКН Х ДНОЗКМЕМХЪ ГЮ НАКЕ',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (450,NULL,'183','нАПЮАНРЙЮ МЮ ЙНФСУЮПЯЙХ ЙНФХ Х ОПНХГБНДЯРБН МЮ ХГД',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (451,NULL,'1830','нАПЮАНРЙЮ МЮ ЙНФСУЮПЯЙХ ЙНФХ Х ОПНХГБНДЯРБН МЮ ХГД',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (452,NULL,'191','оПНХГБНДЯРБН МЮ НАПЮАНРЕМХ ЙНФХ АЕГ ЙНЯЗЛ',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (453,NULL,'1910','оПНХГБНДЯРБН МЮ НАПЮАНРЕМХ ЙНФХ АЕГ ЙНЯЗЛ',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (454,NULL,'192','оПНХГБНДЯРБН МЮ ЙСТЮПХ, ВЮМРХ Х ДПСЦХ ХГДЕКХЪ ГЮ О',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (455,NULL,'1920','оПНХГБНДЯРБН МЮ ЙСТЮПХ, ВЮМРХ Х ДПСЦХ ХГДЕКХЪ ГЮ О',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (456,NULL,'193','оПНХГБНДЯРБН МЮ НАСБЙХ',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (457,NULL,'1930','оПНХГБНДЯРБН МЮ НАСБЙХ',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (458,NULL,'201','пЮГЙПНЪБЮМЕ, ПЕМДНЯБЮМЕ Х ХЛОПЕЦМХПЮМЕ МЮ ДЗПБЕМ Л',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (459,NULL,'2010','пЮГЙПНЪБЪМЕ, ПЕМДНЯБЮМЕ Х ХЛОПЕЦМХПЮМЕ МЮ ДЗПБЕМ Л',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (460,NULL,'202','оПНХГБНДЯРБН МЮ ТСПМХП Х ДЗПБЕЯМХ ОКНВХ',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (461,NULL,'2020','оПНХГБНДЯРБН МЮ ТСПМХП Х ДЗПБЕЯМХ ОКНВХ',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (462,NULL,'203','оПНХГБНДЯРБН МЮ ДНЦПЮЛЮ, ЙНМЯРПСЙЖХХ Х ДЕРЮИКХ НР',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (463,NULL,'2030','оПНХГБНДЯРБН МЮ ДНЦПЮЛЮ, ЙНМЯРПСЙЖХХ Х ДЕРЮИКХ НР',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (464,NULL,'204','оПНХГБНДЯРБН МЮ ЮЛАЮКЮФ НР ДЗПБЕМ ЛЮРЕПХЮК',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (465,NULL,'2040','оПНХГБНДЯРБН МЮ ЮЛАЮКЮФ НР ДЗПБЕМ ЛЮРЕПХЮК',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (466,NULL,'205','оПНХГБНДЯРБН МЮ ДПСЦХ ХГДЕКХЪ НР ДЗПБЕМ ЛЮРЕПХЮК;',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (467,NULL,'2051','оПНХГБНДЯРБН МЮ ДПСЦХ ХГДЕКХЪ НР ДЗПБЕМ ЛЮРЕПХЮК',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (468,NULL,'2052','оПНХГБНДЯРБН МЮ ХГДЕКХЪ НР ЙНПЙ, ЯКЮЛЮ Х ЛЮРЕПХЮКХ',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (469,NULL,'211','оПНХГБНДЯРБН МЮ ДЗПБЕЯМЮ ЛЮЯЮ, УЮПРХЪ Х ЙЮПРНМ',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (470,NULL,'2111','оПНХГБНДЯРБН МЮ ДЗПБЕЯМЮ ЛЮЯЮ',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (471,NULL,'2112','оПНХГБНДЯРБН МЮ УЮПРХЪ Х ЙЮПРНМ',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (472,NULL,'212','оПНХГБНДЯРБН МЮ ХГДЕКХЪ НР УЮПРХЪ Х ЙЮПРНМ',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (473,NULL,'2121','оПНХГБНДЯРБН МЮ БЗКМННАПЮГЕМ ЙЮПРНМ Х НОЮЙНБЙХ НР',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (474,NULL,'2122','оПНХГБНДЯРБН МЮ ДНЛЮЙХМЯЙХ, ЯЮМХРЮПМН-УХЦХЕММХ Х Р',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (475,NULL,'2123','оПНХГБНДЯРБН МЮ ЙЮМЖЕКЮПЯЙХ ХГДЕКХЪ НР УЮПРХЪ Х ЙЮ',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (476,NULL,'2124','оПНХГБНДЯРБН МЮ РЮОЕРХ Х ОНДНАМХ ЯРЕММХ НАКХЖНБЙХ',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (477,NULL,'2125','оПНХГБНДЯРБН МЮ ДПСЦХ ХГДЕКХЪ НР УЮПРХЪ Х ЙЮПРНМ',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (478,NULL,'221','хГДЮРЕКЯЙЮ ДЕИМНЯР',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (479,NULL,'2211','хГДЮБЮМЕ МЮ ЙМХЦХ Х ДПСЦХ МЕОЕПХНДХВМХ ХГДЮМХЪ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (480,NULL,'2212','хГДЮБЮМЕ МЮ БЕЯРМХЖХ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (481,NULL,'2213','хГДЮБЮМЕ МЮ ЯОХЯЮМХЪ Х ДПСЦХ ОЕПХНДХВМХ ХГДЮМХЪ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (482,NULL,'2214','хГДЮБЮМЕ МЮ ГБСЙНГЮОХЯХ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (483,NULL,'2215','дПСЦЮ ХГДЮРЕКЯЙЮ ДЕИМНЯР',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (484,NULL,'222','оНКХЦПЮТХВЕЯЙЮ Х ДПСЦХ ДЕИМНЯРХ, ЯБЗПГЮМХ Я ОЕВЮРЮ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (485,NULL,'2221','оЕВЮРЮМЕ МЮ БЕЯРМХЖХ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (486,NULL,'2222','оЕВЮРЮМЕ МЮ ДПСЦХ ХГДЮМХЪ Х ОЕВЮРМХ ОПНДСЙРХ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (487,NULL,'2223','оНДБЗПГБЮМЕ МЮ ОЕВЮРМХ ХГДЮМХЪ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (488,NULL,'2224','оПЕДОЕВЮРМЮ ОНДЦНРНБЙЮ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (489,NULL,'2225','яОНЛЮЦЮРЕКМХ ДЕИМНЯРХ, ЯБЗПГЮМХ Я ОЕВЮРЮМЕРН',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (490,NULL,'223','бЗГОПНХГБЕФДЮМЕ МЮ ГЮОХЯЮМХ МНЯХРЕКХ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (491,NULL,'2231','бЗГОПНХГБЕФДЮМЕ МЮ ГБСЙНГЮОХЯХ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (492,NULL,'2232','бЗГОПНХГБЕФДЮМЕ МЮ БХДЕНГЮОХЯХ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (493,NULL,'2233','бЗГОПНХГБЕФДЮМЕ МЮ ЙНЛОЧРЗПМХ ГЮОХЯХ',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (494,NULL,'231','оПНХГБНДЯРБН МЮ ЙНЙЯ Х ОПНДСЙРХ МЮ ЙНЙЯСБЮМЕРН',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (495,NULL,'2310','оПНХГБНДЯРБН МЮ ЙНЙЯ Х ОПНДСЙРХ МЮ ЙНЙЯСБЮМЕРН',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (496,NULL,'232','оПНХГБНДЯРБН МЮ ПЮТХМХПЮМХ МЕТРНОПНДСЙРХ',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (497,NULL,'2320','оПНХГБНДЯРБН МЮ ПЮТХМХПЮМХ МЕТРНОПНДСЙРХ',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (498,NULL,'233','оПНХГБНДЯРБН Х ОПЕПЮАНРЙЮ МЮ ЪДПЕМН ЦНПХБН',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (499,NULL,'2330','оПНХГБНДЯРБН Х ОПЕПЮАНРЙЮ МЮ ЪДПЕМН ЦНПХБН',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (500,NULL,'241','оПНХГБНДЯРБН МЮ НЯМНБМХ УХЛХВМХ БЕЫЕЯРБЮ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (501,NULL,'2411','оПНХГБНДЯРБН МЮ ОПНЛХЬКЕМХ ЦЮГНБЕ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (502,NULL,'2412','оПНХГБНДЯРБН МЮ АЮЦПХКЮ Х ОХЦЛЕМРХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (503,NULL,'2413','оПНХГБНДЯРБН МЮ ДПСЦХ НЯМНБМХ МЕНПЦЮМХВМХ УХЛХВМХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (504,NULL,'2414','оПНХГБНДЯРБН МЮ ДПСЦХ НЯМНБМХ НПЦЮМХВМХ УХЛХВМХ БЕ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (505,NULL,'2415','оПНХГБНДЯРБН МЮ ЮГНРМХ ЯЗЕДХМЕМХЪ Х РНПНБЕ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (506,NULL,'2416','оПНХГБНДЯРБН МЮ ОНКХЛЕПХ Б ОЗПБХВМХ ТНПЛХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (507,NULL,'2417','оПНХГБНДЯРБН МЮ ЯХМРЕРХВЕМ ЙЮСВСЙ Б ОЗПБХВМХ ТНПЛХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (508,NULL,'242','оПНХГБНДЯРБН МЮ ОЕЯРХЖХДХ Х ДПСЦХ ЮЦПНУХЛХЙЮКХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (509,NULL,'2420','оПНХГБНДЯРБН МЮ ОЕЯРХЖХДХ Х ДПСЦХ ЮЦПНУХЛХЙЮКХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (510,NULL,'243','оПНХГБНДЯРБН МЮ АНХ, КЮЙНБЕ Х ОНДНАМХ ОПНДСЙРХ, ОЕ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (511,NULL,'2430','оПНХГБНДЯРБН МЮ АНХ, КЮЙНБЕ Х ОНДНАМХ ОПНДСЙРХ, ОЕ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (512,NULL,'244','оПНХГБНДЯРБН МЮ КЕЙЮПЯРБЕМХ БЕЫЕЯРБЮ Х ОПНДСЙРХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (513,NULL,'2441','оПНХГБНДЯРБН МЮ КЕЙЮПЯРБЕМХ БЕЫЕЯРБЮ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (514,NULL,'2442','оПНХГБНДЯРБН МЮ КЕЙЮПЯРБЕМХ ОПНДСЙРХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (515,NULL,'245','оПНХГБНДЯРБН МЮ ЯЮОСМ, ЛХЕЫХ, ОНВХЯРБЮЫХ Х ОНКХПЮЫ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (516,NULL,'2451','оПНХГБНДЯРБН МЮ ЯЮОСМ, ЛХЕЫХ, ОНВХЯРБЮЫХ Х ОНКХПЮЫ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (517,NULL,'2452','оПНХГБНДЯРБН МЮ ОЮПТЧЛХ Х РНЮКЕРМХ ОПНДСЙРХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (518,NULL,'246','оПНХГБНДЯРБН МЮ ДПСЦХ УХЛХВМХ ОПНДСЙРХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (519,NULL,'2461','оПНХГБНДЯРБН МЮ ЕЙЯОКНГХБХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (520,NULL,'2462','оПНХГБНДЯРБН МЮ КЕОХКЮ Х ФЕКЮРХМХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (521,NULL,'2463','оПНХГБНДЯРБН МЮ ЕРЕПХВМХ ЛЮЯКЮ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (522,NULL,'2464','оПНХГБНДЯРБН МЮ ТНРНЦПЮТЯЙХ УХЛХВМХ ЛЮРЕПХЮКХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (523,NULL,'2465','оПНХГБНДЯРБН МЮ ЦНРНБХ МЕГЮОХЯЮМХ МНЯХРЕКХ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (524,NULL,'2466','оПНХГБНДЯРБН МЮ ДПСЦХ УХЛХВМХ ОПНДСЙРХ, МЕЙКЮЯХТХЖ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (525,NULL,'247','оПНХГБНДЯРБН МЮ ХГЙСЯРБЕМХ Х ЯХМРЕРХВМХ БКЮЙМЮ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (526,NULL,'2470','оПНХГБНДЯРБН МЮ ХГЙСЯРБЕМХ Х ЯХМРЕРХВМХ БКЮЙМЮ',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (527,NULL,'251','оПНХГБНДЯРБН МЮ ХГДЕКХЪ НР ЙЮСВСЙ',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (528,NULL,'2511','оПНХГБНДЯРБН МЮ ЦСЛХ, БЗМЬМХ Х БЗРПЕЬМХ',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (529,NULL,'2512','пЕЦЕМЕПХПЮМЕ МЮ ОМЕБЛЮРХВМХ ЦСЛХ',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (530,NULL,'2513','оПНХГБНДЯРБН МЮ ДПСЦХ ХГДЕКХЪ НР ЙЮСВСЙ',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (531,NULL,'252','оПНХГБНДЯРБН МЮ ХГДЕКХЪ НР ОКЮЯРЛЮЯХ',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (532,NULL,'2521','оПНХГБНДЯРБН МЮ КХЯРНБЕ, ОКНВХ, РПЗАХ Х ОПНТХКХ НР',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (533,NULL,'2522','оПНХГБНДЯРБН МЮ НОЮЙНБЙХ НР ОКЮЯРЛЮЯХ',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (534,NULL,'2523','оПНХГБНДЯРБН МЮ ХГДЕКХЪ НР ОКЮЯРЛЮЯХ ГЮ ЯРПНХРЕКЯР',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (535,NULL,'2524','оПНХГБНДЯРБН МЮ ДПСЦХ ХГДЕКХЪ НР ОКЮЯРЛЮЯХ',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (536,NULL,'261','оПНХГБНДЯРБН МЮ ЯРЗЙКН Х ХГДЕКХЪ НР ЯРЗЙКН',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (537,NULL,'2611','оПНХГБНДЯРБН МЮ МЕНАПЮАНРЕМН ОКНЯЙН ЯРЗЙКН',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (538,NULL,'2612','тНПЛНБЮМЕ Х НАПЮАНРЙЮ МЮ ОКНЯЙН ЯРЗЙКН',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (539,NULL,'2613','оПНХГБНДЯРБН МЮ ЮЛАЮКЮФ Х ДНЛЮЙХМЯЙХ ХГДЕКХЪ НР ЯР',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (540,NULL,'2614','оПНХГБНДЯРБН МЮ ЯРЗЙКЕМХ БКЮЙМЮ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (541,NULL,'2615','оПНХГБНДЯРБН Х НАПЮАНРЙЮ МЮ ДПСЦХ ХГДЕКХЪ НР ЯРЗЙК',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (542,NULL,'262','оПНХГБНДЯРБН МЮ ЙЕПЮЛХВМХ ХГДЕКХЪ, АЕГ МЕНЦМЕСОНПМ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (543,NULL,'2621','оПНХГБНДЯРБН МЮ ДНЛЮЙХМЯЙХ Х ДЕЙНПЮРХБМХ ХГДЕКХЪ Н',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (544,NULL,'2622','оПНХГБНДЯРБН МЮ ЯЮМХРЮПМЮ ЙЕПЮЛХЙЮ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (545,NULL,'2623','оПНХГБНДЯРБН МЮ ЙЕПЮЛХВМХ ХГНКЮРНПХ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (546,NULL,'2624','оПНХГБНДЯРБН МЮ ДПСЦХ ЙЕПЮЛХВМХ ХГДЕКХЪ ГЮ РЕУМХВЕ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (547,NULL,'2625','оПНХГБНДЯРБН МЮ ДПСЦХ ЙЕПЮЛХВМХ ХГДЕКХЪ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (548,NULL,'2626','оПНХГБНДЯРБН МЮ НЦМЕСОНПМХ ЙЕПЮЛХВМХ ХГДЕКХЪ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (549,NULL,'263','оПНХГБНДЯРБН МЮ ЙЕПЮЛХВМХ ОКНВЙХ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (550,NULL,'2630','оПНХГБНДЯРБН МЮ ЙЕПЮЛХВМХ ОКНВЙХ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (551,NULL,'264','оПНХГБНДЯРБН МЮ РСУКХ, ЙЕПЕЛХДХ Х ДПСЦХ ЯРПНХРЕКМХ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (552,NULL,'2640','оПНХГБНДЯРБН МЮ РСУКХ, ЙЕПЕЛХДХ Х ДПСЦХ ЯРПНХРЕКМХ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (553,NULL,'265','оПНХГБНДЯРБН МЮ ЖХЛЕМР, БЮП Х ЦХОЯ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (554,NULL,'2651','оПНХГБНДЯРБН МЮ ЖХЛЕМР',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (555,NULL,'2652','оПНХГБНДЯРБН МЮ БЮП',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (556,NULL,'2653','оПНХГБНДЯРБН МЮ ЦХОЯ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (557,NULL,'266','оПНХГБНДЯРБН МЮ ХГДЕКХЪ НР АЕРНМ, ЦХОЯ Х ЖХЛЕМР',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (558,NULL,'2661','оПНХГБНДЯРБН МЮ ХГДЕКХЪ НР АЕРНМ ГЮ ЯРПНХРЕКЯРБНРН',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (559,NULL,'2662','оПНХГБНДЯРБН МЮ ХГДЕКХЪ НР ЦХОЯ ГЮ ЯРПНХРЕКЯРБНРН',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (560,NULL,'2663','оПНХГБНДЯРБН МЮ ЦНРНБХ АЕРНМНБХ ЯЛЕЯХ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (561,NULL,'2664','оПНХГБНДЯРБН МЮ УНПНЯЮМ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (562,NULL,'2665','оПНХГБНДЯРБН МЮ БКЮЙМЕЯРН-ЖХЛЕМРНБХ ХГДЕКХЪ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (563,NULL,'2666','оПНХГБНДЯРБН МЮ ДПСЦХ ХГДЕКХЪ НР АЕРНМ, ЦХОЯ Х ЖХЛ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (564,NULL,'267','пЪГЮМЕ, ОПНТХКХПЮМЕ Х НАПЮАНРБЮМЕ МЮ ЯРПНХРЕКМХ Х',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (565,NULL,'2670','пЪГЮМЕ, ОПНТХКХПЮМЕ Х НАПЮАНРБЮМЕ МЮ ЯРПНХРЕКМХ Х',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (566,NULL,'268','оПНХГБНДЯРБН МЮ ОПНДСЙРХ НР ДПСЦХ МЕЛЕРЮКМХ ЛХМЕПЮ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (567,NULL,'2681','оПНХГБНДЯРБН МЮ ЮАПЮГХБМХ ОПНДСЙРХ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (568,NULL,'2682','оПНХГБНДЯРБН МЮ ОПНДСЙРХ НР ДПСЦХ МЕЛЕРЮКМХ ЛХМЕПЮ',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (569,NULL,'271','оПНХГБНДЯРБН МЮ ВСЦСМ, ЯРНЛЮМЮ Х ТЕПНЯОКЮБХ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (570,NULL,'2710','оПНХГБНДЯРБН МЮ ВСЦСМ, ЯРНЛЮМЮ Х ТЕПНЯОКЮБХ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (571,NULL,'272','оПНХГБНДЯРБН МЮ РПЗАХ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (572,NULL,'2721','оПНХГБНДЯРБН МЮ ВСЦСМЕМХ РПЗАХ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (573,NULL,'2722','оПНХГБНДЯРБН МЮ ЯРНЛЮМЕМХ РПЗАХ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (574,NULL,'273','дПСЦЮ ОЗПБХВМЮ НАПЮАНРЙЮ МЮ ЯРНЛЮМЮ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (575,NULL,'2731','яРСДЕМН ХГРЕЦКЪМЕ МЮ ЯРНЛЮМЮ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (576,NULL,'2732','яРСДЕМН БЮКЖСБЮМe МЮ РЕЯМХ КЕМРХ НР ЯРНЛЮМЮ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (577,NULL,'2733','яРСДЕМН ТНПЛНБЮМЕ ХКХ ТЮКЖНБЮМЕ МЮ ЯРНЛЮМЮ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (578,NULL,'2734','хГРЕЦКЪМЕ МЮ РЕК',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (579,NULL,'274','оПНХГБНДЯРБН МЮ АКЮЦНПНДМХ Х ЖБЕРМХ ЛЕРЮКХ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (580,NULL,'2741','оПНХГБНДЯРБН МЮ АКЮЦНПНДМХ ЛЕРЮКХ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (581,NULL,'2742','оПНХГБНДЯРБН МЮ ЮКСЛХМХИ Х ЮКСЛХМХЕБХ ЯОКЮБХ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (582,NULL,'2743','оПНХГБНДЯРБН МЮ НКНБН, ЖХМЙ, ЙЮКЮИ Х РЕУМХРЕ ЯОКЮБ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (583,NULL,'2744','оПНХГБНДЯРБН МЮ ЛЕД Х ЛЕДМХ ЯОКЮБХ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (584,NULL,'2745','оПНХГБНДЯРБН МЮ ДПСЦХ ЖБЕРМХ ЛЕРЮКХ Х РЕУМХРЕ ЯОКЮ',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (585,NULL,'275','кЕЕМЕ МЮ ЛЕРЮКХ',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (586,NULL,'2751','кЕЕМЕ МЮ ВСЦСМ',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (587,NULL,'2752','кЕЕМЕ МЮ ЯРНЛЮМЮ',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (588,NULL,'2753','кЕЕМЕ МЮ КЕЙХ ЛЕРЮКХ',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (589,NULL,'2754','кЕЕМЕ МЮ ДПСЦХ ЖБЕРМХ Х АКЮЦНПНДМХ ЛЕРЮКХ',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (590,NULL,'281','оПНХГБНДЯРБН МЮ ЛЕРЮКМХ ХГДЕКХЪ ГЮ ЯРПНХРЕКЯРБНРН',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (591,NULL,'2811','оПНХГБНДЯРБН МЮ ЛЕРЮКМХ ЙНМЯРПСЙЖХХ Х ВЮЯРХ НР РЪУ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (592,NULL,'2812','оПНХГБНДЯРБН МЮ ЛЕРЮКМЮ ДНЦПЮЛЮ ГЮ ЯРПНХРЕКЯРБНРН',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (593,NULL,'282','оПНХГБНДЯРБН МЮ ЖХЯРЕПМХ, ПЕГЕПБНЮПХ Х ЙНМРЕИМЕПХ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (594,NULL,'2821','оПНХГБНДЯРБН МЮ ЖХЯРЕПМХ, ПЕГЕПБНЮПХ Х ЙНМРЕИМЕПХ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (595,NULL,'2822','оПНХГБНДЯРБН МЮ ЙНРКХ ГЮ НРНОКЕМХЕ Х ПЮДХЮРНПХ Я М',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (596,NULL,'283','оПНХГБНДЯРБН МЮ ОЮПМХ ЙНРКХ, АЕГ ЙНРКХ ГЮ НРНОКЕМХ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (597,NULL,'2830','оПНХГБНДЯРБН МЮ ОЮПМХ ЙНРКХ, АЕГ ЙНРКХ ГЮ НРНОКЕМХ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (598,NULL,'284','йНБЮМЕ, ОПЕЯНБЮМЕ, ЫЮЛОНБЮМЕ Х БЮКЖСБЮМЕ МЮ ЛЕРЮК;',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (599,NULL,'2840','йНБЮМЕ, ОПЕЯНБЮМЕ, ЫЮЛОНБЮМЕ Х БЮКЖСБЮМЕ МЮ ЛЕРЮК;',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (600,NULL,'285','дПСЦН ЛЕРЮКННАПЮАНРБЮМЕ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (601,NULL,'2851','оНБЗПУМНЯРМН НАПЮАНРБЮМЕ Х МЮМЮЯЪМЕ МЮ ОНЙПХРХЕ БЗ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (602,NULL,'2852','лЕУЮМХВМН НАПЮАНРБЮМЕ МЮ ЛЕРЮК',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (603,NULL,'286','оПНХГБНДЯРБН МЮ ЙСУМЕМЯЙХ ОПХАНПХ, ХМЯРПСЛЕМРХ Х Ф',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (604,NULL,'2861','оПНХГБНДЯРБН МЮ ЙСУМЕМЯЙХ ОПХАНПХ Х МНФЮПЯЙХ ХГДЕК',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (605,NULL,'2862','оПНХГБНДЯРБН МЮ ЯЕВХБЮ ГЮ ПЗВМЮ СОНРПЕАЮ Х ХМЯРПСЛ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (606,NULL,'2863','оПНХГБНДЯРБН МЮ ЯРПНХРЕКЕМ Х ЛЕАЕКЕМ НАЙНБ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (607,NULL,'287','оПНХГБНДЯРБН МЮ ДПСЦХ ЛЕРЮКМХ ХГДЕКХЪ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (608,NULL,'2871','оПНХГБНДЯРБН МЮ БЮПЕКХ Х ОНДНАМХ ЯЗДНБЕ НР ЯРНЛЮМЮ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (609,NULL,'2872','оПНХГБНДЯРБН МЮ КЕЙХ НОЮЙНБЙХ НР ЛЕРЮК',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (610,NULL,'2873','оПНХГБНДЯРБН МЮ ХГДЕКХЪ НР РЕК',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (611,NULL,'2874','оПНХГБНДЯРБН МЮ ЯЙПЕОХРЕКМХ ЕКЕЛЕМРХ, БЕПХЦХ Х ОПС',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (612,NULL,'2875','оПНХГБНДЯРБН МЮ ДПСЦХ ЛЕРЮКМХ ХГДЕКХЪ, МЕЙКЮЯХТХЖХ',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (613,NULL,'291','оПНХГБНДЯРБН МЮ ЛЮЬХМХ ГЮ ОПНХГБЕФДЮМЕ Х ХГОНКГБЮМ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (614,NULL,'2911','оПНХГБНДЯРБН МЮ РСПАХМХ Х ДБХЦЮРЕКХ, АЕГ ЮБХЮЖХНММ',350,250,230,160,150,150,200,200,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (615,NULL,'2912','оПНХГБНДЯРБН МЮ ОНЛОХ Х ЙНЛОПЕЯНПХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (616,NULL,'2913','оПНХГБНДЯРБН МЮ ЮПЛЮРСПМХ ХГДЕКХЪ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (617,NULL,'2914','оПНХГБНДЯРБН МЮ КЮЦЕПХ, ОПЕДЮБЙХ Х ЯЗЕДХМХРЕКХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (618,NULL,'292','оПНХГБНДЯРБН МЮ ЛЮЬХМХ Я НАЫН ОПЕДМЮГМЮВЕМХЕ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (619,NULL,'2921','оПНХГБНДЯРБН МЮ ОЕЫХ Х ЦНПЕКЙХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (620,NULL,'2922','оПНХГБНДЯРБН МЮ ОНДЕЛМН-РПЮМЯОНПРМХ ЛЮЬХМХ, БЙК. Ю',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (621,NULL,'2923','оПНХГБНДЯРБН МЮ ОПНЛХЬКЕМН УКЮДХКМН Х БЕМРХКЮЖХНММ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (622,NULL,'2924','оПНХГБНДЯРБН МЮ ДПСЦХ ЛЮЬХМХ Я НАЫН ОПЕДМЮГМЮВЕМХЕ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (623,NULL,'293','оПНХГБНДЯРБН МЮ ЛЮЬХМХ ГЮ ЯЕКЯЙНРН Х ЦНПЯЙНРН ЯРНО',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (624,NULL,'2931','оПНХГБНДЯРБН МЮ РПЮЙРНПХ ГЮ ЯЕКЯЙНРН Х ЦНПЯЙНРН ЯР',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (625,NULL,'2932','оПНХГБНДЯРБН МЮ ДПСЦХ ЛЮЬХМХ ГЮ ЯЕКЯЙНРН Х ЦНПЯЙНР',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (626,NULL,'294','оПНХГБНДЯРБН МЮ НАПЮАНРБЮЫХ ЛЮЬХМХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (627,NULL,'2941','оПНХГБНДЯРБН МЮ ОПЕМНЯХЛХ ПЗВМХ ХМЯРПСЛЕМРХ Я БЦПЮ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (628,NULL,'2942','оПНХГБНДЯРБН МЮ ЛЮЬХМХ ГЮ НАПЮАНРЙЮ МЮ ЛЕРЮК',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (629,NULL,'2943','оПНХГБНДЯРБН МЮ ДПСЦХ НАПЮАНРБЮЫХ ЛЮЬХМХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (630,NULL,'295','оПНХГБНДЯРБН МЮ ДПСЦХ ЛЮЬХМХ ЯЗЯ ЯОЕЖХЮКМН ОПЕДМЮГ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (631,NULL,'2951','оПНХГБНДЯРБН МЮ ЛЮЬХМХ Х НАНПСДБЮМЕ ГЮ ЛЕРЮКСПЦХЪР',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (632,NULL,'2952','оПНХГБНДЯРБН МЮ ЛЮЬХМХ ГЮ ДНАХБ Х ЯРПНХРЕКЯРБН',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (633,NULL,'2953','оПНХГБНДЯРБН МЮ ЛЮЬХМХ Х НАНПСДБЮМЕ ГЮ ОПЕПЮАНРЙЮ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (634,NULL,'2954','оПНХГБНДЯРБН МЮ ЛЮЬХМХ ГЮ РЕЙЯРХК, НАКЕЙКН, ЙНФХ Х',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (635,NULL,'2955','оПНХГБНДЯРБН МЮ ЛЮЬХМХ ГЮ ДЗПБЕЯМЮ ЛЮЯЮ, УЮПРХЪ, Й',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (636,NULL,'2956','оПНХГБНДЯРБН МЮ ДПСЦХ ЛЮЬХМХ ЯЗЯ ЯОЕЖХЮКМН ОПЕДМЮГ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (637,NULL,'296','оПНХГБНДЯРБН МЮ БЗНПЗФЕМХЕ Х АНЕОПХОЮЯХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (638,NULL,'2960','оПНХГБНДЯРБН МЮ БЗНПЗФЕМХЕ Х АНЕОПХОЮЯХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (639,NULL,'297','оПНХГБНДЯРБН МЮ ДНЛЮЙХМЯЙХ СПЕДХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (640,NULL,'2971','оПНХГБНДЯРБН МЮ ЕКЕЙРПХВЕЯЙХ ДНЛЮЙХМЯЙХ СПЕДХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (641,NULL,'2972','оПНХГБНДЯРБН МЮ МЕЕКЕЙРПХВЕЯЙХ ДНЛЮЙХМЯЙХ СПЕДХ',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (642,NULL,'300','оПНХГБНДЯРБН МЮ ЙЮМЖЕКЮПЯЙЮ Х ЕКЕЙРПНММНХГВХЯКХРЕК',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (643,NULL,'3001','оПНХГБНДЯРБН МЮ ЙЮМЖЕКЮПЯЙЮ РЕУМХЙЮ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (644,NULL,'3002','оПНХГБНДЯРБН МЮ ЕКЕЙРПНММНХГВХЯКХРЕКМЮ РЕУМХЙЮ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (645,NULL,'311','оПНХГБНДЯРБН МЮ ЕКЕЙРПНДБХЦЮРЕКХ, ЕКЕЙРПХВЕЯЙХ ЦЕМ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (646,NULL,'3110','оПНХГБНДЯРБН МЮ ЕКЕЙРПНДБХЦЮРЕКХ, ЕКЕЙРПХВЕЯЙХ ЦЕМ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (647,NULL,'312','оПНХГБНДЯРБН МЮ ЕКЕЙРПНПЮГОПЕДЕКХРЕКМХ Х ЙНМРПНКМХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (648,NULL,'3120','оПНХГБНДЯРБН МЮ ЕКЕЙРПНПЮГОПЕДЕКХРЕКМХ Х ЙНМРПНКМХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (649,NULL,'313','оПНХГБНДЯРБН МЮ ХГНКХПЮМХ ОПНБНДМХЖХ Х ЙЮАЕКХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (650,NULL,'3130','оПНХГБНДЯРБН МЮ ХГНКХПЮМХ ОПНБНДМХЖХ Х ЙЮАЕКХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (651,NULL,'314','оПНХГБНДЯРБН МЮ ЕКЕЙРПХВЕЯЙХ ЮЙСЛСКЮРНПХ, АЮРЕПХХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (652,NULL,'3140','оПНХГБНДЯРБН МЮ ЕКЕЙРПХВЕЯЙХ ЮЙСЛСКЮРНПХ, АЮРЕПХХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (653,NULL,'315','оПНХГБНДЯРБН МЮ НЯБЕРХРЕКХ Х КЮЛОХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (654,NULL,'3150','оПНХГБНДЯРБН МЮ НЯБЕРХРЕКХ Х КЮЛОХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (655,NULL,'316','оПНХГБНДЯРБН МЮ ЕКЕЙРПХВЕЯЙХ ЯЗНПЗФЕМХЪ, МЕЙКЮЯХТХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (656,NULL,'3161','оПНХГБНДЯРБН МЮ ЕКЕЙРПХВЕЯЙХ ЯЗНПЗФЕМХЪ ГЮ ДБХЦЮРЕ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (657,NULL,'3162','оПНХГБНДЯРБН МЮ ДПСЦХ ЕКЕЙРПХВЕЯЙХ ЯЗНПЗФЕМХЪ, МeЙ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (658,NULL,'321','оПНХГБНДЯРБН МЮ ЕКЕЙРПНММХ КЮЛОХ, РПЗАХ Х ДПСЦХ ЕК',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (659,NULL,'3210','оПНХГБНДЯРБН МЮ ЕКЕЙРПНММХ КЮЛОХ, РПЗАХ Х ДПСЦХ ЕК',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (660,NULL,'322','оПНХГБНДЯРБН МЮ ХГКЗВБЮЫЮ РЕКЕБХГХНММЮ Х ПЮДХНРЕУМ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (661,NULL,'3220','оПНХГБНДЯРБН МЮ ХГКЗВБЮЫЮ РЕКЕБХГХНММЮ Х ПЮДХНРЕУМ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (662,NULL,'323','оПНХГБНДЯРБН МЮ РЕКЕБХГХНММХ Х ПЮДХНОПХЕЛМХЖХ, ЮОЮ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (663,NULL,'3230','оПНХГБНДЯРБН МЮ РЕКЕБХГХНММХ Х ПЮДХНОПХЕЛМХЖХ, ЮОЮ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (664,NULL,'331','оПНХГБНДЯРБН МЮ ЛЕДХЖХМЯЙН Х УХПСПЦХВЕЯЙН НАНПСДБЮ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (665,NULL,'3310','оПНХГБНДЯРБН МЮ ЛЕДХЖХМЯЙН Х УХПСПЦХВЕЯЙН НАНПСДБЮ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (666,NULL,'332','оПНХГБНДЯРБН МЮ СПЕДХ Х ЮОЮПЮРХ ГЮ ХГЛЕПБЮМЕ, ОПНБ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (667,NULL,'3320','оПНХГБНДЯРБН МЮ СПЕДХ Х ЮОЮПЮРХ ГЮ ХГЛЕПБЮМЕ, ОПНБ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (668,NULL,'333','оПНХГБНДЯРБН МЮ НАНПСДБЮМЕ ГЮ ЙНМРПНК МЮ ОПНХГБНДЯ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (669,NULL,'3330','оПНХГБНДЯРБН МЮ НАНПСДБЮМЕ ГЮ ЙНМРПНК МЮ ОПНХГБНДЯ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (670,NULL,'334','оПНХГБНДЯРБН МЮ НОРХВМХ СПЕДХ Х ЕКЕЛЕМРХ Х ТНРНЦПЮ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (671,NULL,'3340','оПНХГБНДЯРБН МЮ НОРХВМХ СПЕДХ Х ЕКЕЛЕМРХ Х ТНРНЦПЮ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (672,NULL,'335','оПНХГБНДЯРБН МЮ ВЮЯНБМХЖХ Х ВЮЯНБМХЙНБХ ЛЕУЮМХГЛХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (673,NULL,'3350','оПНХГБНДЯРБН МЮ ВЮЯНБМХЖХ Х ВЮЯНБМХЙНБХ ЛЕУЮМХГЛХ',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (674,NULL,'341','оПНХГБНДЯРБН МЮ ЮБРНЛНАХКХ Х ДБХЦЮРЕКХ ГЮ ЛНРНПМХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (675,NULL,'3410','оПНХГБНДЯРБН МЮ ЮБРНЛНАХКХ Х ДБХЦЮРЕКХ ГЮ ЛНРНПМХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (676,NULL,'342','оПНХГБНДЯРБН МЮ ЙЮПНЯЕПХХ ГЮ ЮБРНЛНАХКХ; ОПНХГБНДЯ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (677,NULL,'3420','оПНХГБНДЯРБН МЮ ЙЮПНЯЕПХХ ГЮ ЮБРНЛНАХКХ; ОПНХГБНДЯ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (678,NULL,'343','оПНХГБНДЯРБН МЮ ВЮЯРХ Х ОПХМЮДКЕФМНЯРХ ГЮ ЮБРНЛНАХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (679,NULL,'3430','оПНХГБНДЯРБН МЮ ВЮЯРХ Х ОПХМЮДКЕФМНЯРХ ГЮ ЮБРНЛНАХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (680,NULL,'351','яРПНХРЕКЯРБН Х ПЕЛНМР МЮ ОКЮБЮРЕКМХ ЯЗДНБЕ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (681,NULL,'3511','яРПНХРЕКЯРБН Х ПЕЛНМР МЮ ОКЮБЮРЕКМХ ЯЗДНБЕ, АЕГ РЕ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (682,NULL,'3512','яРПНХРЕКЯРБН Х ПЕЛНМР МЮ ОКЮБЮРЕКМХ ЯЗДНБЕ ГЮ ПЮГБ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (683,NULL,'352','оПНХГБНДЯРБН МЮ КНЙНЛНРХБХ, ЛНРПХЯХ Х БЮЦНМХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (684,NULL,'3520','оПНХГБНДЯРБН МЮ КНЙНЛНРХБХ, ЛНРПХЯХ Х БЮЦНМХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (685,NULL,'353','оПНХГБНДЯРБН МЮ БЗГДСУНОКЮБЮРЕКМХ Х ЙНЯЛХВЕЯЙХ ЯПЕ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (686,NULL,'3530','оПНХГБНДЯРБН МЮ БЗГДСУНОКЮБЮРЕКМХ Х ЙНЯЛХВЕЯЙХ ЯПЕ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (687,NULL,'354','оПНХГБНДЯРБН МЮ ЛНРНЖХЙКЕРХ Х БЕКНЯХОЕДХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (688,NULL,'3541','оПНХГБНДЯРБН МЮ ЛНРНЖХЙКЕРХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (689,NULL,'3542','оПНХГБНДЯРБН МЮ БЕКНЯХОЕДХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (690,NULL,'3543','оПНХГБНДЯРБН МЮ ХМБЮКХДМХ ЙНКХВЙХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (691,NULL,'355','оПНХГБНДЯРБН МЮ ОПЕБНГМХ ЯПЕДЯРБЮ, МЕЙКЮЯХТХЖХПЮМХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (692,NULL,'3550','оПНХГБНДЯРБН МЮ ОПЕБНГМХ ЯПЕДЯРБЮ, МЕЙКЮЯХТХЖХПЮМХ',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (693,NULL,'361','оПНХГБНДЯРБН МЮ ЛЕАЕКХ',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (694,NULL,'3611','оПНХГБНДЯРБН МЮ ЯРНКНБЕ Х ЯЕДЮКЙХ',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (695,NULL,'3612','оПНХГБНДЯРБН МЮ ЙЮМЖЕКЮПЯЙХ Х РЗПЦНБЯЙХ ЛЕАЕКХ, АЕ',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (696,NULL,'3613','оПНХГБНДЯРБН МЮ ЙСУМЕМЯЙХ ЛЕАЕКХ, АЕГ ЯРНКНБЕ',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (697,NULL,'3614','оПНХГБНДЯРБН МЮ ДПСЦХ ЛЕАЕКХ, АЕГ ЯРНКНБЕ',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (698,NULL,'3615','оПНХГБНДЯРБН МЮ ЛЮРПЮЖХ Х ДЧЬЕЖХ',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (699,NULL,'362','оПНХГБНДЯРБН МЮ АХФСРЮ Х ОНДНАМХ ХГДЕКХЪ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (700,NULL,'3621','яЕВЕМЕ МЮ ЛНМЕРХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (701,NULL,'3622','оПНХГБНДЯРБН МЮ АХФСРЕПХИМХ Х ДПСЦХ ХГДЕКХЪ НР АКЮ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (702,NULL,'363','оПНХГБНДЯРБН МЮ ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (703,NULL,'3630','оПНХГБНДЯРБН МЮ ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (704,NULL,'364','оПНХГБНДЯРБН МЮ ЯОНПРМХ ЯРНЙХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (705,NULL,'3640','оПНХГБНДЯРБН МЮ ЯОНПРМХ ЯРНЙХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (706,NULL,'365','оПНХГБНДЯРБН МЮ ХЦПХ Х ДЕРЯЙХ ХЦПЮВЙХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (707,NULL,'3650','оПНХГБНДЯРБН МЮ ХЦПХ Х ДЕРЯЙХ ХЦПЮВЙХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (708,NULL,'366','пЮГМННАПЮГМХ ОПНХГБНДЯРБЮ, МЕЙКЮЯХТХЖХПЮМХ ДПСЦЮДЕ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (709,NULL,'3661','оПНХГБНДЯРБН МЮ АХФСРЮ ХЛХРЮЖХЪ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (710,NULL,'3662','оПНХГБНДЯРБН МЮ ЛЕРКХ Х ВЕРЙХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (711,NULL,'3663','дПСЦХ ПЮГМННАПЮГМХ ОПНХГБНДЯРБЮ, МЕЙКЮЯХТХЖХПЮМХ Д',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (712,NULL,'371','пЕЖХЙКХПЮМЕ МЮ ЛЕРЮКМХ НРОЮДЗЖХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (713,NULL,'3710','пЕЖХЙКХПЮМЕ МЮ ЛЕРЮКМХ НРОЮДЗЖХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (714,NULL,'372','пЕЖХЙКХПЮМЕ МЮ МЕЛЕРЮКМХ НРОЮДЗЖХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (715,NULL,'3720','пЕЖХЙКХПЮМЕ МЮ МЕЛЕРЮКМХ НРОЮДЗЖХ',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (716,NULL,'401','оПНХГБНДЯРБН, ОПЕМНЯ Х ПЮГОПЕДЕКЕМХЕ МЮ ЕКЕЙРПХВЕЯ',530,430,380,210,180,0,300,280,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (717,NULL,'4011','оПНХГБНДЯРБН МЮ ЕКЕЙРПХВЕЯЙЮ ЕМЕПЦХЪ',530,430,380,210,180,0,300,280,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (718,NULL,'4012','оПЕМНЯ МЮ ЕКЕЙРПХВЕЯЙЮ ЕМЕПЦХЪ',530,430,380,210,180,0,300,280,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (719,NULL,'4013','пЮГОПЕДЕКЕМХЕ Х РЗПЦНБХЪ МЮ ЕКЕЙРПХВЕЯЙЮ ЕМЕПЦХЪ',530,430,380,210,180,0,300,280,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (720,NULL,'402','оПНХГБНДЯРБН Х ПЮГОПЕДЕКЕМХЕ МЮ ЦЮГННАПЮГМХ ЦНПХБЮ',580,400,380,230,200,150,270,300,200);
INSERT INTO `natc_clasifikator_deinosti` VALUES (721,NULL,'4021','оПНХГБНДЯРБН МЮ ЦЮГННАПЮГМХ ЦНПХБЮ',580,400,380,230,200,150,270,300,200);
INSERT INTO `natc_clasifikator_deinosti` VALUES (722,NULL,'4022','пЮГОПЕДЕКЕМХЕ Х РЗПЦНБХЪ МЮ ЦЮГННАПЮГМХ ЦНПХБЮ',580,400,380,230,200,150,270,300,200);
INSERT INTO `natc_clasifikator_deinosti` VALUES (723,NULL,'403','оПНХГБНДЯРБН Х ПЮГОПЕДЕКЕМХЕ МЮ РНОКХММЮ ЕМЕПЦХЪ',510,350,330,170,170,0,230,260,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (724,NULL,'4030','оПНХГБНДЯРБН Х ПЮГОПЕДЕКЕМХЕ МЮ РНОКХММЮ ЕМЕПЦХЪ',510,350,330,170,170,0,230,260,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (725,NULL,'410','яЗАХПЮМЕ, ОПЕВХЯРБЮМЕ Х ПЮГОПЕДЕКЕМХЕ МЮ БНДЮ',405,365,325,190,180,0,255,190,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (726,NULL,'4100','яЗАХПЮМЕ, ОПЕВХЯРБЮМЕ Х ПЮГОПЕДЕКЕМХЕ МЮ БНДЮ',405,365,325,190,180,0,255,190,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (727,NULL,'451','оНДЦНРНБЙЮ МЮ ЯРПНХРЕКМЮРЮ ОКНЫЮДЙЮ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (728,NULL,'4511','яЗАЮПЪМЕ Х ПЮГВХЯРБЮМЕ МЮ ЯЦПЮДХ; ГЕЛМХ ПЮАНРХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (729,NULL,'4512','яНМДХПЮМЕ Х ОПНАХБЮМЕ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (730,NULL,'452','яРПНХРЕКЯРБН МЮ ЯЦПЮДХ Х ЯРПНХРЕКМХ ЯЗНПЗФЕМХЪ ХКХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (731,NULL,'4521','нАЫН ЯРПНХРЕКЯРБН МЮ ЯЦПЮДХ Х ЯРПНХРЕКМХ ЯЗНПЗФЕМХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (732,NULL,'4522','яРПНХРЕКЯРБН МЮ ОНЙПХБХ Х УХДПНХГНКЮЖХХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (733,NULL,'4523','яРПНХРЕКЯРБН МЮ ОЗРХЫЮ, ЯЮЛНКЕРМХ ОХЯРХ Х ЯОНПРМХ',405,330,330,205,150,150,240,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (734,NULL,'4524','яРПНХРЕКЯРБН МЮ УХДПНРЕУМХВЕЯЙХ ЯЗНПЗФЕМХЪ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (735,NULL,'4525','дПСЦХ ЯОЕЖХЮКХГХПЮМХ ЯРПНХРЕКМХ ДЕИМНЯРХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (736,NULL,'453','яРПНХРЕКЯРБН МЮ ХМЯРЮКЮЖХХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (737,NULL,'4531','яРПНХРЕКЯРБН МЮ ЕКЕЙРПХВЕЯЙХ ХМЯРЮКЮЖХХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (738,NULL,'4532','хГНКЮЖХНММХ ЯРПНХРЕКМХ ДЕИМНЯРХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (739,NULL,'4533','яРПНХРЕКЯРБН МЮ РПЗАНОПНБНДМХ ХМЯРЮКЮЖХХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (740,NULL,'4534','яРПНХРЕКЯРБН МЮ ДПСЦХ ХМЯРЮКЮЖХХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (741,NULL,'454','дНБЗПЬХРЕКМХ ЯРПНХРЕКМХ ДЕИМНЯРХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (742,NULL,'4541','оНКЮЦЮМЕ МЮ ЛЮГХКЙХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (743,NULL,'4542','лНМРЮФ МЮ ДНЦПЮЛЮ, ХМРЕПХНПМХ Х ДПСЦХ ГЮБЗПЬБЮЫХ Е',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (744,NULL,'4543','оНКЮЦЮМЕ МЮ ОНДНБХ МЮЯРХКЙХ Х ЯРЕММХ НАКХЖНБЙХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (745,NULL,'4544','аНЪДХЯБЮМЕ Х ЯРЗЙКНОНЯРЮБЪМЕ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (746,NULL,'4545','дПСЦХ ДНБЗПЬХРЕКМХ ЯРПНХРЕКМХ ДЕИМНЯРХ',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (747,NULL,'455','дЮБЮМЕ ОНД МЮЕЛ МЮ ЯРПНХРЕКМХ ЛЮЬХМХ Х НАНПСДБЮМЕ,',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (748,NULL,'4550','дЮБЮМЕ ОНД МЮЕЛ МЮ ЯРПНХРЕКМХ ЛЮЬХМХ Х НАНПСДБЮМЕ,',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (749,NULL,'501','рЗПЦНБХЪ Я ЮБРНЛНАХКХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (750,NULL,'5010','рЗПЦНБХЪ Я ЮБРНЛНАХКХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (751,NULL,'502','рЕУМХВЕЯЙН НАЯКСФБЮМЕ Х ПЕЛНМР МЮ ЮБРНЛНАХКХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (752,NULL,'5020','рЕУМХВЕЯЙН НАЯКСФБЮМЕ Х ПЕЛНМР МЮ ЮБРНЛНАХКХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (753,NULL,'503','рЗПЦНБХЪ Я ВЮЯРХ Х ОПХМЮДКЕФМНЯРХ ГЮ ЮБРНЛНАХКХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (754,NULL,'5030','рЗПЦНБХЪ Я ВЮЯРХ Х ОПХМЮДКЕФМНЯРХ ГЮ ЮБРНЛНАХКХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (755,NULL,'504','рЗПЦНБХЪ Я ЛНРНЖХЙКЕРХ, ВЮЯРХ Х ОПХМЮДКЕФМНЯРХ ГЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (756,NULL,'5040','рЗПЦНБХЪ Я ЛНРНЖХЙКЕРХ, ВЮЯРХ Х ОПХМЮДКЕФМНЯРХ ГЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (757,NULL,'505','рЗПЦНБХЪ МЮ ДПЕАМН Я ЮБРНЛНАХКМХ ЦНПХБЮ Х ЯЛЮГНВМХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (758,NULL,'5050','рЗПЦНБХЪ МЮ ДПЕАМН Я ЮБРНЛНАХКМХ ЦНПХБЮ Х ЯЛЮГНВМХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (759,NULL,'511','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН, АЕГ РЗПЦНБХЪ Я ЮБРНЛНАХК',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (760,NULL,'5111','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН ЯЗЯ ЯЕКЯЙНЯРНОЮМЯЙХ ЯСПНБ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (761,NULL,'5112','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН Я ЦНПХБЮ, ПСДХ, ЛЕРЮКХ Х',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (762,NULL,'5113','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН Я ДЗПБЕМ Х ЯРПНХРЕКЕМ ЛЮР',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (763,NULL,'5114','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН Я ЛЮЬХМХ, ОПНЛХЬКЕМН НАНП',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (764,NULL,'5115','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН Я ЛЕАЕКХ, ЯРНЙХ ГЮ ДНЛЮЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (765,NULL,'5116','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН Я РЕЙЯРХК, НАКЕЙКН, НАСБЙ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (766,NULL,'5117','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН Я УПЮМХРЕКМХ ОПНДСЙРХ, МЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (767,NULL,'5118','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН Я ДПСЦХ ЯОЕЖХТХВМХ ЯРНЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (768,NULL,'5119','рЗПЦНБЯЙН ОНЯПЕДМХВЕЯРБН Я ПЮГМННАПЮГМХ ЯРНЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (769,NULL,'512','TЗПЦНБХЪ МЮ ЕДПН ЯЗЯ ЯЕКЯЙНЯРНОЮМЯЙХ ЯСПНБХМХ Х ФХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (770,NULL,'5121','рЗПЦНБХЪ МЮ ЕДПН ЯЗЯ ГЗПМН, ЯЕЛЕМЮ, ТСПЮФХ Х ДПСЦХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (771,NULL,'5122','рЗПЦНБХЪ МЮ ЕДПН Я ЖБЕРЪ Х ПЮЯРЕМХЪ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (772,NULL,'5123','рЗПЦНБХЪ МЮ ЕДПН Я ФХБХ ФХБНРМХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (773,NULL,'5124','рЗПЦНБХЪ МЮ ЕДПН ЯЗЯ ЯСПНБХ Х НАПЮАНРЕМХ ЙНФХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (774,NULL,'5125','рЗПЦНБХЪ МЮ ЕДПН ЯЗЯ ЯСПНБ Х ОЗПБХВМН НАПЮАНРЕМ РЧ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (775,NULL,'513','рЗПЦНБХЪ МЮ ЕДПН Я УПЮМХРЕКМХ ОПНДСЙРХ, МЮОХРЙХ Х',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (776,NULL,'5131','рЗПЦНБХЪ МЮ ЕДПН Я ОПЕЯМХ ОКНДНБЕ Х ГЕКЕМВСЖХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (777,NULL,'5132','рЗПЦНБХЪ МЮ ЕДПН Я ЛЕЯН Х ЛЕЯМХ ОПНДСЙРХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (778,NULL,'5133','рЗПЦНБХЪ МЮ ЕДПН Я ЛКЪЙН, ЛКЕВМХ ОПНДСЙРХ, ЪИЖЮ, У',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (779,NULL,'5134','рЗПЦНБХЪ МЮ ЕДПН Я ЮКЙНУНКМХ Х ДПСЦХ МЮОХРЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (780,NULL,'5135','рЗПЦНБХЪ МЮ ЕДПН Я РЧРЧМЕБХ ХГДЕКХЪ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (781,NULL,'5136','рЗПЦНБХЪ МЮ ЕДПН ЯЗЯ ГЮУЮП, ГЮУЮПМХ ХГДЕКХЪ Х ЬНЙН',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (782,NULL,'5137','рЗПЦНБХЪ МЮ ЕДПН Я ЙЮТЕ, ВЮИ, ЙЮЙЮН Х ОНДОПЮБЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (783,NULL,'5138','TЗПЦНБХЪ МЮ ЕДПН Я ДПСЦХ УПЮМХРЕКМХ ОПНДСЙРХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (784,NULL,'5139','мЕЯОЕЖХЮКХГХПЮМЮ РЗПЦНБХЪ МЮ ЕДПН Я УПЮМХРЕКМХ ОПН',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (785,NULL,'514','рЗПЦНБХЪ МЮ ЕДПН ЯЗЯ ЯРНЙХ ГЮ ДНЛЮЙХМЯРБНРН',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (786,NULL,'5141','рЗПЦНБХЪ МЮ ЕДПН Я РЕЙЯРХК',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (787,NULL,'5142','рЗПЦНБХЪ МЮ ЕДПН Я НАКЕЙКН Х НАСБЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (788,NULL,'5143','рЗПЦНБХЪ МЮ ЕДПН Я ЕКЕЙРПХВЕЯЙХ ДНЛЮЙХМЯЙХ СПЕДХ Х',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (789,NULL,'5144','рЗПЦНБХЪ МЮ ЕДПН Я ОНПЖЕКЮМНБХ Х ЯРЗЙКЮПЯЙХ ХГДЕКХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (790,NULL,'5145','рЗПЦНБХЪ МЮ ЕДПН Я ОЮПТЧЛЕПХИМХ Х ЙНГЛЕРХВМХ ХГДЕК',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (791,NULL,'5146','рЗПЦНБХЪ МЮ ЕДПН Я ТЮПЛЮЖЕБРХВМХ, ЛЕДХЖХМЯЙХ Х НПР',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (792,NULL,'5147','рЗПЦНБХЪ МЮ ЕДПН Я ДПСЦХ ЯРНЙХ ГЮ ДНЛЮЙХМЯРБНРН',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (793,NULL,'515','рЗПЦНБХЪ МЮ ЕДПН Я МЕЯЕКЯЙНЯРНОЮМЯЙХ ЛЕФДХММХ ОПНД',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (794,NULL,'5151','рЗПЦНБХЪ МЮ ЕДПН Я РБЗПДХ, РЕВМХ Х ЦЮГННАПЮГМХ ЦНП',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (795,NULL,'5152','рЗПЦНБХЪ МЮ ЕДПН Я ЛЕРЮКМХ ПСДХ Х ЛЕРЮКХ Б ОЗПБХВМ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (796,NULL,'5153','рЗПЦНБХЪ МЮ ЕДПН Я ДЗПБЕМ ЛЮРЕПХЮК, ЛЮРЕПХЮКХ ГЮ Я',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (797,NULL,'5154','рЗПЦНБХЪ МЮ ЕДПН Я ФЕКЕГЮПХЪ, БНДНОПНБНДМН Х НРНОК',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (798,NULL,'5155','рЗПЦНБХЪ МЮ ЕДПН Я УХЛХВМХ ОПНДСЙРХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (799,NULL,'5156','рЗПЦНБХЪ МЮ ЕДПН Я ДПСЦХ МЕЯЕКЯЙНЯРНОЮМЯЙХ ЛЕФДХММ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (800,NULL,'5157','рЗПЦНБХЪ МЮ ЕДПН Я НРОЮДЗЖХ Х ЯЙПЮО',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (801,NULL,'518','рЗПЦНБХЪ МЮ ЕДПН Я ЛЮЬХМХ Х НАНПСДБЮМЕ Х ВЮЯРХ ГЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (802,NULL,'5181','рЗПЦНБХЪ МЮ ЕДПН Я НАПЮАНРБЮЫХ ЛЮЬХМХ Х ВЮЯРХ ГЮ Р',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (803,NULL,'5182','рЗПЦНБХЪ МЮ ЕДПН Я ЛЮЬХМХ Х НАНПСДБЮМЕ ГЮ ДНАХБЮ,',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (804,NULL,'5183','рЗПЦНБХЪ МЮ ЕДПН Я ЛЮЬХМХ ГЮ РЕЙЯРХК, НАКЕЙКН, ЙНФ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (805,NULL,'5184','рЗПЦНБХЪ МЮ ЕДПН Я ЕКЕЙРПНММНХГВХЯКХРЕКМЮ РЕУМХЙЮ,',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (806,NULL,'5185','рЗПЦНБХЪ МЮ ЕДПН Я ДПСЦЮ ЙЮМЖЕКЮПЯЙЮ РЕУМХЙЮ, ЙЮМЖ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (807,NULL,'5186','рЗПЦНБХЪ МЮ ЕДПН Я ДПСЦХ ЕКЕЙРПНММХ ЕКЕЛЕМРХ Х НАН',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (808,NULL,'5187','рЗПЦНБХЪ МЮ ЕДПН Я ДПСЦХ ЛЮЬХМХ Х НАНПСДБЮМЕ ГЮ ОП',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (809,NULL,'5188','рЗПЦНБХЪ МЮ ЕДПН Я РПЮЙРНПХ, ЛЮЬХМХ Х ХМБЕМРЮП ГЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (810,NULL,'519','дПСЦЮ РЗПЦНБХЪ МЮ ЕДПН',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (811,NULL,'5190','дПСЦЮ РЗПЦНБХЪ МЮ ЕДПН',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (812,NULL,'521','рЗПЦНБХЪ МЮ ДПЕАМН Б МЕЯОЕЖХЮКХГХПЮМХ ЛЮЦЮГХМХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (813,NULL,'5211','рЗПЦНБХЪ МЮ ДПЕАМН Б МЕЯОЕЖХЮКХГХПЮМХ ЛЮЦЮГХМХ ОПЕ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (814,NULL,'5212','рЗПЦНБХЪ МЮ ДПЕАМН Б МЕЯОЕЖХЮКХГХПЮМХ ЛЮЦЮГХМХ Я П',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (815,NULL,'522','рЗПЦНБХЪ МЮ ДПЕАМН Б ЯОЕЖХЮКХГХПЮМХ ЛЮЦЮГХМХ Я УПЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (816,NULL,'5221','рЗПЦНБХЪ МЮ ДПЕАМН Я ОПЕЯМХ ОКНДНБЕ Х ГЕКЕМВСЖХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (817,NULL,'5222','рЗПЦНБХЪ МЮ ДПЕАМН Я ЛЕЯН Х ЛЕЯМХ ОПНДСЙРХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (818,NULL,'5223','рЗПЦНБХЪ МЮ ДПЕАМН Я ПХАЮ, ПХАМХ ОПНДСЙРХ, ПЮЙННАП',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (819,NULL,'5224','рЗПЦНБХЪ МЮ ДПЕАМН Я УКЪА, УКЕАМХ, ГЮУЮПМХ Х ЯКЮДЙ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (820,NULL,'5225','рЗПЦНБХЪ МЮ ДПЕАМН Я ЮКЙНУНКМХ Х ДПСЦХ МЮОХРЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (821,NULL,'5226','рЗПЦНБХЪ МЮ ДПЕАМН Я РЧРЧМЕБХ ХГДЕКХЪ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (822,NULL,'5227','рЗПЦНБХЪ МЮ ДПЕАМН Б ЯОЕЖХЮКХГХПЮМХ ЛЮЦЮГХМХ Я ДПС',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (823,NULL,'523','рЗПЦНБХЪ МЮ ДПЕАМН Я ТЮПЛЮЖЕБРХВМХ Х ЛЕДХЖХМЯЙХ ЯР',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (824,NULL,'5231','рЗПЦНБХЪ МЮ ДПЕАМН Я ТЮПЛЮЖЕБРХВМХ ЯРНЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (825,NULL,'5232','рЗПЦНБХЪ МЮ ДПЕАМН Я ЛЕДХЖХМЯЙХ Х НПРНОЕДХВМХ ЯРНЙ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (826,NULL,'5233','рЗПЦНБХЪ МЮ ДПЕАМН Я ОЮПТЧЛЕПХИМХ, ЙНГЛЕРХВМХ ХГДЕ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (827,NULL,'524','рЗПЦНБХЪ МЮ ДПЕАМН Б ЯОЕЖХЮКХГХПЮМХ ЛЮЦЮГХМХ Я ДПС',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (828,NULL,'5241','рЗПЦНБХЪ МЮ ДПЕАМН Я РЕЙЯРХК',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (829,NULL,'5242','рЗПЦНБХЪ МЮ ДПЕАМН Я НАКЕЙКН',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (830,NULL,'5243','рЗПЦНБХЪ МЮ ДПЕАМН Я НАСБЙХ Х ЙНФЕМХ ХГДЕКХЪ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (831,NULL,'5244','рЗПЦНБХЪ МЮ ДПЕАМН Я ЛЕАЕКХ, НЯБЕРХРЕКХ Х ЯРНЙХ ГЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (832,NULL,'5245','рЗПЦНБХЪ МЮ ДПЕАМН Я ЕКЕЙРПХВЕЯЙХ ДНЛЮЙХМЯЙХ СПЕДХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (833,NULL,'5246','рЗПЦНБХЪ МЮ ДПЕАМН Я ФЕКЕГЮПХЪ, АНХ Х ОКНЯЙН ЯРЗЙК',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (834,NULL,'5247','рЗПЦНБХЪ МЮ ДПЕАМН Я ЙМХЦХ, БЕЯРМХЖХ Х ЙЮМЖЕКЮПЯЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (835,NULL,'5248','рЗПЦНБХЪ МЮ ДПЕАМН Б ЯОЕЖХЮКХГХПЮМХ ЛЮЦЮГХМХ Я ДПС',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (836,NULL,'525','рЗПЦНБХЪ МЮ ДПЕАМН Я СОНРПЕАЪБЮМХ ЯРНЙХ Б ЛЮЦЮГХМХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (837,NULL,'5250','рЗПЦНБХЪ МЮ ДПЕАМН Я СОНРПЕАЪБЮМХ ЯРНЙХ Б ЛЮЦЮГХМХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (838,NULL,'526','рЗПЦНБХЪ МЮ ДПЕАМН, ХГБЗПЬБЮМЮ ХГБЗМ ЛЮЦЮГХМХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (839,NULL,'5261','рЗПЦНБХЪ МЮ ДПЕАМН ВПЕГ ТХПЛХ, ХГОЗКМЪБЮЫХ ОНПЗВЙХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (840,NULL,'5262','рЗПЦНБХЪ МЮ ДПЕАМН МЮ НРЙПХРХ ЫЮМДНБЕ Х ОЮГЮПХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (841,NULL,'5263','рЗПЦНБХЪ МЮ ДПЕАМН ХГБЗМ ЛЮЦЮГХМХ, МЕЙКЮЯХТХЖХПЮМЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (842,NULL,'527','оНОПЮБЙЮ Х ПЕЛНМР МЮ КХВМХ БЕЫХ Х ЯРНЙХ ГЮ ДНЛЮЙХМ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (843,NULL,'5271','оНОПЮБЙЮ МЮ НАСБЙХ Х ХГДЕКХЪ НР ЙНФЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (844,NULL,'5272','пЕЛНМР МЮ ЕКЕЙРПХВЕЯЙХ ДНЛЮЙХМЯЙХ СПЕДХ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (845,NULL,'5273','оНОПЮБЙЮ МЮ ВЮЯНБМХЖХ Х АХФСРЮ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (846,NULL,'5274','оНОПЮБЙЮ Х ПЕЛНМР МЮ КХВМХ БЕЫХ Х ЯРНЙХ ГЮ ДНЛЮЙХМ',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (847,NULL,'551','уНРЕКХ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (848,NULL,'5510','уНРЕКХ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (849,NULL,'552','йЗЛОХМЦХ Х ДПСЦХ ЛЕЯРЮ ГЮ ЙПЮРЙНЯПНВМН МЮЯРЮМЪБЮМЕ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (850,NULL,'5521','рСПХЯРХВЕЯЙХ ЯОЮКМХ Х УХФХ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (851,NULL,'5522','йЗЛОХМЦХ, БЙК. ЛЕЯРЮ ГЮ ЙЮПЮБЮМХ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (852,NULL,'5523','дПСЦХ ЛЕЯРЮ ГЮ ЙПЮРЙНЯПНВМН МЮЯРЮМЪБЮМЕ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (853,NULL,'553','пЕЯРНПЮМРХ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (854,NULL,'5530','пЕЯРНПЮМРХ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (855,NULL,'554','оХРЕИМХ ГЮБЕДЕМХЪ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (856,NULL,'5540','оХРЕИМХ ГЮБЕДЕМХЪ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (857,NULL,'555','яРНКНБЕ Х ГЮБЕДЕМХЪ ГЮ ОПХЦНРБЪМЕ Х ДНЯРЮБЪМЕ МЮ У',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (858,NULL,'5551','яРНКНБЕ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (859,NULL,'5552','гЮБЕДЕМХЪ ГЮ ОПХЦНРБЪМЕ Х ДНЯРЮБЪМЕ МЮ УПЮМЮ',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (860,NULL,'601','фЕКЕГНОЗРЕМ РПЮМЯОНПР',310,280,220,150,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (861,NULL,'6010','фЕКЕГНОЗРЕМ РПЮМЯОНПР',310,280,220,150,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (862,NULL,'602','дПСЦ ЯСУНОЗРЕМ РПЮМЯОНПР, АЕГ РПЗАНОПНБНДЕМ',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (863,NULL,'6021','дПСЦ ЯСУНОЗРЕМ ОЗРМХВЕЯЙХ РПЮМЯОНПР ОН ПЮГОХЯЮМХЕ',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (864,NULL,'6022','рЮЙЯХЛЕРПНБ ОЗРМХВЕЯЙХ РПЮМЯОНПР',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (865,NULL,'6023','дПСЦ ЯСУНОЗРЕМ ОЗРМХВЕЯЙХ РПЮМЯОНПР АЕГ ПЮГОХЯЮМХЕ',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (866,NULL,'6024','рНБЮПЕМ ЮБРНЛНАХКЕМ РПЮМЯОНПР',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (867,NULL,'603','рПЗАНОПНБНДЕМ РПЮМЯОНПР',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (868,NULL,'6030','рПЗАНОПНБНДЕМ РПЮМЯОНПР',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (869,NULL,'611','лНПЯЙХ Х ЙПЮИАПЕФЕМ РПЮМЯОНПР',330,310,260,155,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (870,NULL,'6110','лНПЯЙХ Х ЙПЮИАПЕФЕМ РПЮМЯОНПР',330,310,260,155,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (871,NULL,'612','пЕВЕМ Х ДПСЦ РПЮМЯОНПР ОН БЗРПЕЬМХ БНДМХ ОЗРХЫЮ',330,310,260,155,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (872,NULL,'6120','пЕВЕМ Х ДПСЦ РПЮМЯОНПР ОН БЗРПЕЬМХ БНДМХ ОЗРХЫЮ',330,310,260,155,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (873,NULL,'621','бЗГДСЬЕМ РПЮМЯОНПР ОН ПЮГОХЯЮМХЕ',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (874,NULL,'6210','бЗГДСЬЕМ РПЮМЯОНПР ОН ПЮГОХЯЮМХЕ',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (875,NULL,'622','бЗГДСЬЕМ РПЮМЯОНПР АЕГ ПЮГОХЯЮМХЕ',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (876,NULL,'6220','бЗГДСЬЕМ РПЮМЯОНПР АЕГ ПЮГОХЯЮМХЕ',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (877,NULL,'623','йНЯЛХВЕЯЙХ РПЮМЯОНПР',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (878,NULL,'6230','йНЯЛХВЕЯЙХ РПЮМЯОНПР',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (879,NULL,'631','нАПЮАНРЙЮ Х ЯЙКЮДХПЮМЕ МЮ РНБЮПХ',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (880,NULL,'6311','нАПЮАНРЙЮ МЮ РНБЮПХ',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (881,NULL,'6312','яЙКЮДХПЮМЕ Х ЯЗУПЮМЪБЮМЕ МЮ РНБЮПХ',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (882,NULL,'632','дПСЦХ ЯОНЛЮЦЮРЕКМХ ДЕИМНЯРХ Б РПЮМЯОНПРЮ',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (883,NULL,'6321','дПСЦХ ЯОНЛЮЦЮРЕКМХ ДЕИМНЯРХ Б ЯСУНОЗРМХЪ РПЮМЯОНПР',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (884,NULL,'6322','дПСЦХ ЯОНЛЮЦЮРЕКМХ ДЕИМНЯРХ БЗБ БНДМХЪ РПЮМЯОНПР',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (885,NULL,'6323','дПСЦХ ЯОНЛЮЦЮРЕКМХ ДЕИМНЯРХ БЗБ БЗГДСЬМХЪ РПЮМЯОНП',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (886,NULL,'633','дЕИМНЯРХ МЮ РСПНОЕПЮРНПХ Х РСПХЯРХВЕЯЙХ ЮЦЕМЖХХ; Я',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (887,NULL,'6330','дЕИМНЯРХ МЮ РСПНОЕПЮРНПХ Х РСПХЯРХВЕЯЙХ ЮЦЕМЖХХ; Я',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (888,NULL,'634','дЕИМНЯРХ МЮ ЮЦЕМЖХХ, ЯБЗПГЮМХ Я ОПЕБНГ МЮ РНБЮПХ',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (889,NULL,'6340','дЕИМНЯРХ МЮ ЮЦЕМЖХХ, ЯБЗПГЮМХ Я ОПЕБНГ МЮ РНБЮПХ',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (890,NULL,'641','дЕИМНЯР МЮ МЮЖХНМЮКМЮРЮ ОНЫЮ, ЙСПХЕПЯЙЮ ДЕИМНЯР',230,215,195,160,160,0,185,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (891,NULL,'6411','дЕИМНЯР МЮ МЮЖХНМЮКМЮРЮ ОНЫЮ',230,215,195,160,160,0,185,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (892,NULL,'6412','йСПХЕПЯЙЮ ДЕИМНЯР, ПЮГКХВМЮ НР РЮГХ МЮ МЮЖХНМЮКМЮР',230,215,195,160,160,0,185,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (893,NULL,'642','дЮКЕЙНЯЗНАЫЕМХЪ',310,280,250,190,190,0,210,210,151);
INSERT INTO `natc_clasifikator_deinosti` VALUES (894,NULL,'6420','дЮКЕЙНЯЗНАЫЕМХЪ',310,280,250,190,190,0,210,210,151);
INSERT INTO `natc_clasifikator_deinosti` VALUES (895,NULL,'651','оЮПХВМН ОНЯПЕДМХВЕЯРБН',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (896,NULL,'6511','дЕИМНЯР МЮ ЖЕМРПЮКМЮРЮ АЮМЙЮ',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (897,NULL,'6512','дПСЦН ОЮПХВМН ОНЯПЕДМХВЕЯРБН',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (898,NULL,'652','дПСЦН ТХМЮМЯНБН ОНЯПЕДМХВЕЯРБН',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (899,NULL,'6521','тХМЮМЯНБ КХГХМЦ',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (900,NULL,'6522','дПСЦХ ТНПЛХ МЮ ОПЕДНЯРЮБЪМЕ МЮ ЙПЕДХР',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (901,NULL,'6523','дПСЦН ТХМЮМЯНБН ОНЯПЕДМХВЕЯРБН, МЕЙКЮЯХТХЖХПЮМН ДП',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (902,NULL,'660','гЮЯРПЮУНБЮРЕКМЮ ДЕИМНЯР Х ДЕИМНЯР МЮ ЯЮЛНЯРНЪРЕКМХ',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (903,NULL,'6601','фХБНРНГЮЯРПЮУНБЮМЕ',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (904,NULL,'6602','дЕИМНЯР МЮ ЯЮЛНЯРНЪРЕКМХ НЯХЦСПХРЕКМХ ТНМДНБЕ',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (905,NULL,'6603','дПСЦН ГЮЯРПЮУНБЮМЕ, АЕГ ФХБНРНГЮЯРПЮУНБЮМЕ',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (906,NULL,'671','яОНЛЮЦЮРЕКМХ ДЕИМНЯРХ ОН ТХМЮМЯНБН ОНЯПЕДМХВЕЯРБН,',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (907,NULL,'6711','сОПЮБКЕМХЕ МЮ ТХМЮМЯНБХ ОЮГЮПХ',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (908,NULL,'6712','аПНЙЕПЯЙХ ДЕИМНЯРХ Я ЖЕММХ ЙМХФЮ Х СОПЮБКЕМХЕ МЮ ⌠',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (909,NULL,'6713','яОНЛЮЦЮРЕКМХ ДЕИМНЯРХ ОН ТХМЮМЯНБН ОНЯПЕДМХВЕЯРБН,',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (910,NULL,'672','яОНЛЮЦЮРЕКМХ ДЕИМНЯРХ ОН ГЮЯРПЮУНБЮМЕ Х НЯХЦСПЪБЮМ',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (911,NULL,'6720','яОНЛЮЦЮРЕКМХ ДЕИМНЯРХ ОН ГЮЯРПЮУНБЮМЕ Х НЯХЦСПЪБЮМ',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (912,NULL,'701','оНДЦНРНБЙЮ ГЮ ОПНДЮФАЮ, ОНЙСОЙЮ Х ОПНДЮФАЮ МЮ ЯНАЯ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (913,NULL,'7011','оНДЦНРНБЙЮ ГЮ ОПНДЮФАЮ МЮ МЕДБХФХЛХ ХЛНРХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (914,NULL,'7012','оНЙСОЙЮ Х ОПНДЮФАЮ МЮ ЯНАЯРБЕМХ МЕДБХФХЛХ ХЛНРХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (915,NULL,'702','дЮБЮМЕ ОНД МЮЕЛ МЮ ЯНАЯРБЕМХ МЕДБХФХЛХ ХЛНРХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (916,NULL,'7020','дЮБЮМЕ ОНД МЮЕЛ МЮ ЯНАЯРБЕМХ МЕДБХФХЛХ ХЛНРХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (917,NULL,'703','оНЯПЕДМХВЕЯЙЮ ДЕИМНЯР ОН НОЕПЮЖХХ Я МЕДБХФХЛХ ХЛНР',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (918,NULL,'7031','оНЯПЕДМХВЕЯЙЮ ДЕИМНЯР МЮ ЮЦЕМЖХХ ГЮ МЕДБХФХЛХ ХЛНР',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (919,NULL,'7032','оНЯПЕДМХВЕЯЙЮ ДЕИМНЯР ОН СОПЮБКЕМХЕ МЮ МЕДБХФХЛХ Х',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (920,NULL,'711','дЮБЮМЕ ОНД МЮЕЛ МЮ КЕЙХ Х КЕЙНРНБЮПМХ ЮБРНЛНАХКХ,',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (921,NULL,'7110','дЮБЮМЕ ОНД МЮЕЛ МЮ КЕЙХ Х КЕЙНРНБЮПМХ ЮБРНЛНАХКХ,',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (922,NULL,'712','дЮБЮМЕ ОНД МЮЕЛ МЮ ДПСЦХ ОПЕБНГМХ ЯПЕДЯРБЮ, АЕГ БН',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (923,NULL,'7121','дЮБЮМЕ ОНД МЮЕЛ МЮ ДПСЦХ ЯПЕДЯРБЮ ГЮ ЯСУНОЗРЕМ РПЮ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (924,NULL,'7122','дЮБЮМЕ ОНД МЮЕЛ МЮ ЯПЕДЯРБЮ ГЮ БНДЕМ РПЮМЯОНПР, АЕ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (925,NULL,'7123','дЮБЮМЕ ОНД МЮЕЛ МЮ ЯПЕДЯРБЮ ГЮ БЗГДСЬЕМ РПЮМЯОНПР,',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (926,NULL,'713','дЮБЮМЕ ОНД МЮЕЛ МЮ ДПСЦХ ЛЮЬХМХ Х РЕУМХЙЮ, АЕГ НОЕ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (927,NULL,'7131','дЮБЮМЕ ОНД МЮЕЛ МЮ ЯЕКЯЙНЯРНОЮМЯЙХ ЛЮЬХМХ Х ХМБЕМР',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (928,NULL,'7132','дЮБЮМЕ ОНД МЮЕЛ МЮ ЯРПНХРЕКМХ ЛЮЬХМХ Х НАНПСДБЮМЕ,',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (929,NULL,'7133','дЮБЮМЕ ОНД МЮЕЛ МЮ ЙЮМЖЕКЮПЯЙЮ, ЯВЕРНБНДМЮ Х ЕКЕЙР',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (930,NULL,'7134','дЮБЮМЕ ОНД МЮЕЛ МЮ ДПСЦХ ЛЮЬХМХ Х РЕУМХЙЮ, АЕГ НОЕ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (931,NULL,'714','дЮБЮМЕ ОНД МЮЕЛ МЮ КХВМХ Х ДНЛЮЙХМЯЙХ БЕЫХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (932,NULL,'7140','дЮБЮМЕ ОНД МЮЕЛ МЮ КХВМХ Х ДНЛЮЙХМЯЙХ БЕЫХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (933,NULL,'721','йНМЯСКРЮЖХХ ОН УЮПДСЕП',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (934,NULL,'7210','йНМЯСКРЮЖХХ ОН УЮПДСЕП',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (935,NULL,'722','пЮГПЮАНРБЮМЕ МЮ ЯНТРСЕП',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (936,NULL,'7221','хГДЮБЮМЕ МЮ ЯРЮМДЮПРЕМ ЯНТРСЕП',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (937,NULL,'7222','дПСЦХ ДЕИМНЯРХ ОН ПЮГПЮАНРБЮМЕ МЮ ЯНТРСЕП',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (938,NULL,'723','нАПЮАНРЙЮ МЮ ДЮММХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (939,NULL,'7230','нАПЮАНРЙЮ МЮ ДЮММХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (940,NULL,'724','дЕИМНЯРХ, ЯБЗПГЮМХ Я АЮГХ НР ДЮММХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (941,NULL,'7240','дЕИМНЯРХ, ЯБЗПГЮМХ Я АЮГХ НР ДЮММХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (942,NULL,'725','оНДДЗПФЮМЕ Х ПЕЛНМР МЮ ЙЮМЖЕКЮПЯЙЮ, ЯВЕРНБНДМЮ Х Е',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (943,NULL,'7250','оНДДЗПФЮМЕ Х ПЕЛНМР МЮ ЙЮМЖЕКЮПЯЙЮ, ЯВЕРНБНДМЮ Х Е',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (944,NULL,'726','дПСЦХ ДЕИМНЯРХ Б НАКЮЯРРЮ МЮ ЙНЛОЧРЗПМХРЕ РЕУМНКНЦ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (945,NULL,'7260','дПСЦХ ДЕИМНЯРХ Б НАКЮЯРРЮ МЮ ЙНЛОЧРЗПМХРЕ РЕУМНКНЦ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (946,NULL,'731','мЮСВМНХГЯКЕДНБЮРЕКЯЙЮ Х ПЮГБНИМЮ ДЕИМНЯР Б НАКЮЯРР',281,202,180,169,150,150,157,157,157);
INSERT INTO `natc_clasifikator_deinosti` VALUES (947,NULL,'7310','мЮСВМНХГЯКЕДНБЮРЕКЯЙЮ Х ПЮГБНИМЮ ДЕИМНЯР Б НАКЮЯРР',281,202,180,169,150,150,157,157,157);
INSERT INTO `natc_clasifikator_deinosti` VALUES (948,NULL,'732','мЮСВМНХГЯКЕДНБЮРЕКЯЙЮ Х ПЮГБНИМЮ ДЕИМНЯР Б НАКЮЯРР',281,202,180,169,150,150,157,157,157);
INSERT INTO `natc_clasifikator_deinosti` VALUES (949,NULL,'7320','мЮСВМНХГЯКЕДНБЮРЕКЯЙЮ Х ПЮГБНИМЮ ДЕИМНЯР Б НАКЮЯРР',281,202,180,169,150,150,157,157,157);
INSERT INTO `natc_clasifikator_deinosti` VALUES (950,NULL,'741','чПХДХВЕЯЙХ, ЯВЕРНБНДМХ Х НДХРНПЯЙХ ДЕИМНЯРХ; ЙНМЯС',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (951,NULL,'7411','чПХДХВЕЯЙХ СЯКСЦХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (952,NULL,'7412','яВЕРНБНДМХ Х НДХРНПЯЙХ ДЕИМНЯРХ; ДЮМЗВМХ ЙНМЯСКРЮЖ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (953,NULL,'7413','оПНСВБЮМЕ МЮ ОЮГЮПХ Х ХГЯКЕДБЮМЕ МЮ НАЫЕЯРБЕМНРН Л',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (954,NULL,'7414','йНМЯСКРЮЖХХ ОН СОПЮБКЕМХЕ Х ЯРНОЮМЯЙЮ ДЕИМНЯР',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (955,NULL,'7415','сОПЮБКЕМХЕ МЮ УНКДХМЦНБХ ДПСФЕЯРБЮ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (956,NULL,'742','юПУХРЕЙРСПМХ Х ХМФЕМЕПМХ ДЕИМНЯРХ Х РЕУМХВЕЯЙХ ЙНМ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (957,NULL,'7420','юПУХРЕЙРСПМХ Х ХМФЕМЕПМХ ДЕИМНЯРХ Х РЕУМХВЕЯЙХ ЙНМ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (958,NULL,'743','дЕИМНЯРХ ОН РЕУМХВЕЯЙХ ХГОХРБЮМХЪ Х ЮМЮКХГХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (959,NULL,'7430','дЕИМНЯРХ ОН РЕУМХВЕЯЙХ ХГОХРБЮМХЪ Х ЮМЮКХГХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (960,NULL,'744','пЕЙКЮЛМЮ ДЕИМНЯР',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (961,NULL,'7440','пЕЙКЮЛМЮ ДЕИМНЯР',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (962,NULL,'745','оНЯПЕДМХВЕЯЙЮ ДЕИМНЯР ОН МЮАХПЮМЕ, МЮЯНВБЮМЕ Х ОПЕ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (963,NULL,'7450','оНЯПЕДМХВЕЯЙЮ ДЕИМНЯР ОН МЮАХПЮМЕ, МЮЯНВБЮМЕ Х ОПЕ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (964,NULL,'746','дЕРЕЙРХБЯЙЮ Х НУПЮМХРЕКМЮ ДЕИМНЯР',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (965,NULL,'7460','дЕРЕЙРХБЯЙЮ Х НУПЮМХРЕКМЮ ДЕИМНЯР',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (966,NULL,'747','оНВХЯРБЮМЕ МЮ ЯЦПЮДХ, ОПНЛХЬКЕМХ ХМЯРЮКЮЖХХ Х ОПЕБ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (967,NULL,'7470','оНВХЯРБЮМЕ МЮ ЯЦПЮДХ, ОПНЛХЬКЕМХ ХМЯРЮКЮЖХХ Х ОПЕБ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (968,NULL,'748','пЮГМННАПЮГМХ АХГМЕЯСЯКСЦХ, МЕЙКЮЯХТХЖХПЮМХ ДПСЦЮДЕ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (969,NULL,'7481','дЕИМНЯРХ Б НАКЮЯРРЮ МЮ ТНРНЦПЮТХЪРЮ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (970,NULL,'7482','оЮЙЕРХПЮМЕ МЮ ЯРНЙХ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (971,NULL,'7485','яЕЙПЕРЮПЯЙХ Х ОПЕБНДЮВЕЯЙХ ДЕИМНЯРХ; ПЮГЛМНФЮБЮМЕ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (972,NULL,'7486','дЕИМНЯРХ МЮ ЖЕМРПНБЕ ГЮ СЯКСЦХ ВПЕГ РЕКЕТНММХ НАЮФ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (973,NULL,'7487','дПСЦХ АХГМЕЯСЯКСЦХ, МЕЙКЮЯХТХЖХПЮМХ ДПСЦЮДЕ',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (974,NULL,'751','сОПЮБКЕМХЕ МЮ ДЗПФЮБЮРЮ Х СОПЮБКЕМХЕ МЮ ХЙНМНЛХВЕЯ',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (975,NULL,'7511','нАЫНТСМЙЖХНМЮКМН СОПЮБКЕМХЕ МЮ ДЗПФЮБЮРЮ МЮ ЖЕМРПЮ',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (976,NULL,'7512','дЗПФЮБМН СОПЮБКЕМХЕ Б НАКЮЯРРЮ МЮ ЯНЖХЮКМЮРЮ ОНКХР',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (977,NULL,'7513','дЗПФЮБМН СОПЮБКЕМХЕ Б НАКЮЯРРЮ МЮ ЯРНОЮМЯЙЮРЮ ДЕИМ',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (978,NULL,'7514','яОНЛЮЦЮРЕКМХ ДЕИМНЯРХ ГЮ ДЗПФЮБМНРН СОПЮБКЕМХЕ ЙЮР',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (979,NULL,'752','сЯКСЦХ МЮ ДЗПФЮБМНРН СОПЮБКЕМХЕ ГЮ НАЫЕЯРБНРН ЙЮРН',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (980,NULL,'7521','бЗМЬМХ ПЮАНРХ',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (981,NULL,'7522','дЕИМНЯРХ Б НАКЮЯРРЮ МЮ НРАПЮМЮРЮ',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (982,NULL,'7523','оПЮБНПЮГДЮБЮМЕ Х ЯЗДЕАМЮ ДЕИМНЯР',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (983,NULL,'7524','дЕИМНЯРХ ОН ГЮЫХРЮ МЮ МЮЖХНМЮКМЮРЮ ЯХЦСПМНЯР Х НОЮ',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (984,NULL,'7525','дЕИМНЯРХ ОН ОНФЮПМЮ Х ЮБЮПХИМЮ АЕГНОЮЯМНЯР',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (985,NULL,'753','гЮДЗКФХРЕКМН НАЫЕЯРБЕМН НЯХЦСПЪБЮМЕ',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (986,NULL,'7530','гЮДЗКФХРЕКМН НАЫЕЯРБЕМН НЯХЦСПЪБЮМЕ',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (987,NULL,'801','оПЕДСВХКХЫМН Х НЯМНБМН НАПЮГНБЮМХЕ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (988,NULL,'8010','оПЕДСВХКХЫМН Х НЯМНБМН НАПЮГНБЮМХЕ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (989,NULL,'802','яПЕДМН НАЫН Х ОПНТЕЯХНМЮКМН НАПЮГНБЮМХЕ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (990,NULL,'8021','яПЕДМН НАЫН НАПЮГНБЮМХЕ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (991,NULL,'8022','яПЕДМН ОПНТЕЯХНМЮКМН НАПЮГНБЮМХЕ Х НАСВЕМХЕ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (992,NULL,'803','бХЯЬЕ НАПЮГНБЮМХЕ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (993,NULL,'8030','бХЯЬЕ НАПЮГНБЮМХЕ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (994,NULL,'804','нАПЮГНБЮМХЕ ГЮ БЗГПЮЯРМХ Х ДПСЦЮ НАПЮГНБЮРЕКМЮ ДЕИ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (995,NULL,'8041','нАСВЕМХЕ ГЮ ОПХДНАХБЮМЕ МЮ ОПЮБНЯОНЯНАМНЯР ГЮ СОПЮ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (996,NULL,'8042','дПСЦН НАСВЕМХЕ ГЮ БЗГПЮЯРМХ Х ДПСЦЮ НАПЮГНБЮРЕКМЮ',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (997,NULL,'851','уСЛЮММН ГДПЮБЕНОЮГБЮМЕ',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (998,NULL,'8511','дЕИМНЯР МЮ КЕВЕАМХ ГЮБЕДЕМХЪ ГЮ АНКМХВМЮ ОНЛНЫ',400,300,200,150,150,0,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (999,NULL,'8512','дЕИМНЯР МЮ КЕВЕАМХ ГЮБЕДЕМХЪ ГЮ ХГБЗМАНКМХВМЮ КЕЙЮ',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1000,NULL,'8513','дЕИМНЯР МЮ КЕВЕАМХ ГЮБЕДЕМХЪ ГЮ ЯРНЛЮРНКНЦХВМЮ ОНЛ',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1001,NULL,'8514','дПСЦН УСЛЮММН ГДПЮБЕНОЮГБЮМЕ',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1002,NULL,'852','бЕРЕПХМЮПМЮ КЕВЕАМЮ ДЕИМНЯР',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1003,NULL,'8520','бЕРЕПХМЮПМЮ КЕВЕАМЮ ДЕИМНЯР',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1004,NULL,'853','яНЖХЮКМХ ДЕИМНЯРХ',159,153,153,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1005,NULL,'8531','дЕИМНЯР МЮ ГЮБЕДЕМХЪ ГЮ ЯНЖХЮКМХ СЯКСЦХ Я МЮЯРЮМЪБ',159,153,153,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1006,NULL,'8532','дЕИМНЯР МЮ ГЮБЕДЕМХЪ ГЮ ЯНЖХЮКМХ СЯКСЦХ АЕГ МЮЯРЮМ',159,153,153,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1007,NULL,'900','яЗАХПЮМЕ Х РПЕРХПЮМЕ МЮ НРОЮДЗЖХ, ОНВХЯРБЮМЕ Х БЗГ',330,200,195,150,150,150,175,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1008,NULL,'9001','яЗАХПЮМЕ Х РПЕРХПЮМЕ МЮ НРОЮДЗВМХ БНДХ',330,200,195,150,150,150,175,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1009,NULL,'9002','яЗАХПЮМЕ Х РПЕРХПЮМЕ МЮ ДПСЦХ НРОЮДЗЖХ',330,200,195,150,150,150,175,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1010,NULL,'9003','оНВХЯРБЮМЕ, БЗГЯРЮМНБЪБЮМЕ Х ОНДНАМХ ДЕИМНЯРХ',330,200,195,150,150,150,175,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1011,NULL,'911','дЕИМНЯРХ МЮ АХГМЕЯНПЦЮМХГЮЖХХ, НПЦЮМХГЮЖХХ МЮ ПЮАН',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1012,NULL,'9111','дЕИМНЯРХ МЮ АХГМЕЯНПЦЮМХГЮЖХХ Х НПЦЮМХГЮЖХХ МЮ ПЮА',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1013,NULL,'9112','дЕИМНЯРХ МЮ ОПНТЕЯХНМЮКМХ ЯЗЧГХ Х НПЦЮМХГЮЖХХ',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1014,NULL,'912','дЕИМНЯРХ МЮ ЯХМДХЙЮКМХ НПЦЮМХГЮЖХХ',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1015,NULL,'9120','дЕИМНЯРХ МЮ ЯХМДХЙЮКМХ НПЦЮМХГЮЖХХ',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1016,NULL,'913','дЕИМНЯРХ МЮ ПЕКХЦХНГМХ, ОНКХРХВЕЯЙХ Х ДПСЦХ НПЦЮМХ',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1017,NULL,'9131','дЕИМНЯРХ МЮ ПЕКХЦХНГМХ НПЦЮМХГЮЖХХ',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1018,NULL,'9132','дЕИМНЯРХ МЮ ОНКХРХВЕЯЙХ НПЦЮМХГЮЖХХ',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1019,NULL,'9133','дЕИМНЯРХ МЮ ДПСЦХ НПЦЮМХГЮЖХХ Я МЕЯРНОЮМЯЙЮ ЖЕК, М',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1020,NULL,'921','оПНХГБНДЯРБН, ПЮГОПНЯРПЮМЕМХЕ Х ОПНФЕЙРХПЮМЕ МЮ ЙХ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1021,NULL,'9211','оПНХГБНДЯРБН МЮ ЙХМН- Х БХДЕНТХКЛХ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1022,NULL,'9212','пЮГОПНЯРПЮМЕМХЕ МЮ ЙХМН- Х БХДЕНТХКЛХ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1023,NULL,'9213','оПНФЕЙРХПЮМЕ МЮ ТХКЛХ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1024,NULL,'922','пЮДХН- Х РЕКЕБХГХНММЮ ДЕИМНЯР',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1025,NULL,'9220','пЮДХН- Х РЕКЕБХГХНММЮ ДЕИМНЯР',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1026,NULL,'923','юПРХЯРХВМЮ, РБНПВЕЯЙЮ Х ПЮГБКЕЙЮРЕКМЮ ДЕИМНЯР',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1027,NULL,'9231','юПРХЯРХВМЮ Х РБНПВЕЯЙЮ ДЕИМНЯР',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1028,NULL,'9232','еЙЯОКНЮРЮЖХЪ МЮ РЕЮРПЮКМХ ЯЦПЮДХ, ЛСГХЙЮКМХ Х ЙНМЖ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1029,NULL,'9233','дЕИМНЯРХ МЮ ОЮМЮХПХ Х СБЕЯЕКХРЕКМХ ОЮПЙНБЕ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1030,NULL,'9234','дПСЦХ ПЮГБКЕЙЮРЕКМХ ДЕИМНЯРХ, МЕЙКЮЯХТХЖХПЮМХ ДПСЦ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1031,NULL,'924','дЕИМНЯРХ МЮ ХМТНПЛЮЖХНММХ ЮЦЕМЖХХ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1032,NULL,'9240','дЕИМНЯРХ МЮ ХМТНПЛЮЖХНММХ ЮЦЕМЖХХ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1033,NULL,'925','дЕИМНЯРХ МЮ АХАКХНРЕЙХ, ЮПУХБХ, ЛСГЕХ Х ЦЮКЕПХХ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1034,NULL,'9251','дЕИМНЯРХ МЮ АХАКХНРЕЙХ Х ЮПУХБХ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1035,NULL,'9252','дЕИМНЯРХ МЮ ЛСГЕХ Х ЦЮКЕПХХ; НОЮГБЮМЕ МЮ ОЮЛЕРМХЖХ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1036,NULL,'9253','оНДДЗПФЮМЕ Х ЕЙЯОКНЮРЮЖХЪ МЮ АНРЮМХВЕЯЙХ ЦПЮДХМХ,',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1037,NULL,'926','дЕИМНЯРХ Б НАКЮЯРРЮ МЮ ТХГХВЕЯЙЮРЮ ЙСКРСПЮ Х ЯОНПР',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1038,NULL,'9261','оНДДЗПФЮМЕ Х ЕЙЯОКНЮРЮЖХЪ МЮ ЯОНПРМХ НАЕЙРХ Х ЯЗНП',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1039,NULL,'9262','дПСЦХ ДЕИМНЯРХ Б НАКЮЯРРЮ МЮ ТХГХВЕЯЙЮРЮ ЙСКРСПЮ Х',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1040,NULL,'927','дПСЦХ ДЕИМНЯРХ, ЯБЗПГЮМХ ЯЗЯ ЯБНАНДМНРН БПЕЛЕ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1041,NULL,'9271','гЮКЮЦЮМХЪ Х УЮГЮПР',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1042,NULL,'9272','дПСЦХ ДЕИМНЯРХ, ЯБЗПГЮМХ ЯЗЯ ЯБНАНДМНРН БПЕЛЕ, МЕЙ',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1043,NULL,'930','дПСЦХ СЯКСЦХ ГЮ МЮЯЕКЕМХЕРН',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1044,NULL,'9301','оПЮМЕ Х УХЛХВЕЯЙН ВХЯРЕМЕ МЮ РЕЙЯРХКМХ Х ЙНФЕМХ ХГ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1045,NULL,'9302','аПЗЯМЮПН-ТПХГЭНПЯЙХ Х ЙНГЛЕРХВМХ СЯКСЦХ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1046,NULL,'9303','дЕИМНЯРХ, ЯБЗПГЮМХ Я ОНЦПЕАЕМХЪ ХКХ ЙПЕЛЮЖХЪ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1047,NULL,'9304','дЕИМНЯРХ ОН ОНДДЗПФЮМЕ МЮ ТХГХВЕЯЙНРН ЯЗЯРНЪМХЕ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1048,NULL,'9305','дПСЦХ СЯКСЦХ ГЮ МЮЯЕКЕМХЕРН, МЕЙКЮЯХТХЖХПЮМХ ДПСЦЮ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1049,NULL,'950','дЕИМНЯРХ МЮ ДНЛЮЙХМЯРБЮ ЙЮРН ПЮАНРНДЮРЕКХ МЮ ДНЛЮЬ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1050,NULL,'9500','дЕИМНЯРХ МЮ ДНЛЮЙХМЯРБЮ ЙЮРН ПЮАНРНДЮРЕКХ МЮ ДНЛЮЬ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1051,NULL,'960','мЕДХТЕПЕМЖХПЮМХ ДЕИМНЯРХ МЮ ДНЛЮЙХМЯРБЮ ЙЮРН ОПНХГ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1052,NULL,'9600','мЕДХТЕПЕМЖХПЮМХ ДЕИМНЯРХ МЮ ДНЛЮЙХМЯРБЮ ЙЮРН ОПНХГ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1053,NULL,'970','мЕДХТЕПЕМЖХПЮМХ ДЕИМНЯРХ МЮ ДНЛЮЙХМЯРБЮ ЙЮРН ОПНХГ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1054,NULL,'9700','мЕДХТЕПЕМЖХПЮМХ ДЕИМНЯРХ МЮ ДНЛЮЙХМЯРБЮ ЙЮРН ОПНХГ',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1055,NULL,'990','еЙЯРЕПХРНПХЮКМХ НПЦЮМХГЮЖХХ Х ЯКСФАХ',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1056,NULL,'9900','еЙЯРЕПХРНПХЮКМХ НПЦЮМХГЮЖХХ Х ЯКСФАХ',355,250,185,150,150,150,170,155,150);


#
# Table structure for table natc_clasifikator_prof
#

CREATE TABLE `natc_clasifikator_prof` (
  `id_ncp` int(11) NOT NULL auto_increment,
  `pyear` int(5) default NULL,
  `name_ncp` varchar(50) default NULL,
  `cod_ncp` int(11) default NULL,
  PRIMARY KEY  (`id_ncp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table natc_clasifikator_prof
#

INSERT INTO `natc_clasifikator_prof` VALUES (1,NULL,'юАНМЮРВХЙ',7249);
INSERT INTO `natc_clasifikator_prof` VALUES (2,NULL,'юБХНДХЯОЕВЕП',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3,NULL,'юБХНЛЕРЕПЕНКНЦ',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (4,NULL,'юБХНЛЕУЮМХЙ',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (5,NULL,'юБХНЛНРНПХЯР',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (6,NULL,'юБХНРЕУМХЙ',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (7,NULL,'юБРНАНЪДФХЪ',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (8,NULL,'юБРНЙКЮБВХЙ / ОПНХГБНДЯРБН МЮ ЙЮСВСЙНБХ ХГДЕКХЪ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (9,NULL,'юБРНЙКЮБВХЙ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (10,NULL,'юБРНЛНМРЭНП / ЮБРНЛНАХКЕМ РПЮМЯОНПР',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (11,NULL,'юБРНП МЮ ЦЕЦНБЕ, ДХЮКНГХ, ХДЕХ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (12,NULL,'юБРНРЕМЕЙЕДФХЪ / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (13,NULL,'юЦЕМР, ГЮЯРПЮУНБЙХ',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (14,NULL,'юЦЕМР, МЕДБХФХЛХ ХЛНРХ',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (15,NULL,'юЦЕМР, ПЕЙКЮЛЮ',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (16,NULL,'юЦЕМР, РПСДНБЮ АНПЯЮ',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (17,NULL,'юЦЕМР, РСПХГЗЛ',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (18,NULL,'юЦЕМР, ТНМДНБЮ АНПЯЮ',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (19,NULL,'юЦКНЛЕПЮРВХЙ / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (20,NULL,'юЦПЕЦЮРВХЙ',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (21,NULL,'юЦПЕЦЮРВХЙ / ДЗПБНДНАХБ',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (22,NULL,'юЦПНХЙНМНЛХЯР',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (23,NULL,'юЦПНХМФЕМЕП',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (24,NULL,'юЦПНМНЛ',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (25,NULL,'юЦПНМНЛ / ВЮЯРМЮ ОПЮЙРХЙЮ',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (26,NULL,'юЦПНМНЛ, ПЮЯРХРЕКМЮ ГЮЫХРЮ',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (27,NULL,'юЦПНРЕУМХЙ',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (28,NULL,'юДБНЙЮР',2421);
INSERT INTO `natc_clasifikator_prof` VALUES (29,NULL,'юДЛХМХЯРПЮРХБЕМ ЯЕЙПЕРЮП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (30,NULL,'юДЛХМХЯРПЮРХБЕМ ЯЕЙПЕРЮП / ЯЗД',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (31,NULL,'юДЛХМХЯРПЮРНП / ОЗРМХВЕЯЙЮ ЮЦЕМЖХЪ (АЧПН)',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (32,NULL,'юДЛХМХЯРПЮРНП / УНРЕК',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (33,NULL,'юДЛХМХЯРПЮРНП, АЮГЮ ДЮММХ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (34,NULL,'юДЛХМХЯРПЮРНП, БПЗВБЮМЕ МЮ ОПХГНБЙХ',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (35,NULL,'юДЛХМХЯРПЮРНП, ЙНЛОЧРЗПМЮ  ЛПЕФЮ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (36,NULL,'юЕПНДХМЮЛХЙ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (37,NULL,'юЙБЮЙСКРСПХЯР, ТЕПЛЕП',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (38,NULL,'юЙНЛОЮМЪРНП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (39,NULL,'юЙНПДЭНП',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (40,NULL,'юЙПЮРНТНПВХЙ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (41,NULL,'юЙПНАЮР',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (42,NULL,'юЙРЭНП',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (43,NULL,'юЙСЛСКЮРНПВХЙ / ЮБРНЯЕПБХГ',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (44,NULL,'юЙСЬЕПЙЮ',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (45,NULL,'юКСЛХМХГЮРНП, УХЛХВЕЯЙЮ НАПЮАНРЙЮ МЮ ОНБЗПУМНЯРХ',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (46,NULL,'юЛЮКЦЮЛВХЙ / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (47,NULL,'юЛАСКЮМРЕМ РЗПЦНБЕЖ',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (48,NULL,'юМЮКХГЮРНП МЮ ЕКЕЙРПНКХРХ / ЛЕРЮКСПЦХЪ',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (49,NULL,'юМЮКХГЮРНП, ДНЯХЕРЮ МЮ КХЬЕМХ НР ЯБНАНДЮ',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (50,NULL,'юМЮКХГЮРНП, КЮАНПЮМР',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (51,NULL,'юМЮКХГЮРНП-ПЕЦСКХПНБВХЙ, ЯСЬЕМЕ / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (52,NULL,'юМЮКХРХЙ ХМФЕМЕП, ДЮКЕЙНЯЗНАЫЕМХЪ',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (54,NULL,'юМЮКХРХЙ, ЕТЕЙРХБМНЯР МЮ РПСДЮ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (55,NULL,'юМЮКХРХЙ, ХЙНМНЛХЙЮ',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (56,NULL,'юМЮКХРХЙ, ЙНЛОЧРЗПМХ АЮГХ ДЮММХ',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (57,NULL,'юМЮКХРХЙ, ЙНЛОЧРЗПМХ ЛПЕФХ (ЙНЛСМХЙЮЖХХ)',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (58,NULL,'юМЮКХРХЙ, ЙНЛОЧРЗПМХ ЯХЯРЕЛХ',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (59,NULL,'юМЮКХРХЙ, ЛЕРЮКСПЦХВМХ ОПНЖЕЯХ',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (60,NULL,'юМЮКХРХЙ, ОПНСВБЮМЕ МЮ ОЮГЮПХ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (61,NULL,'юМЮКХРХЙ, ЯНТРСЕП / АЮГЮ ДЮММХ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (62,NULL,'юМЮКХРХЙ, РЮПХТХ, РЮЙЯХ',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (63,NULL,'юМЮКХРХЙ, ТХМЮМЯХ Х ЯВЕРНБНДЯРБН',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (65,NULL,'юМЕЯРЕГХНКНЦ, КЕЙЮП',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (66,NULL,'юМХЛЮРНП',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (67,NULL,'юМЙЕРЭНП',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (68,NULL,'юМРЕМН-ЛЮВРНБХ ЛНМРЮФМХЙ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (69,NULL,'юОЮПЮРВХЙ',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (70,NULL,'юОЮПЮРВХЙ, ЮАЯНПАЕП / УХЛХВЕЯЙХ ОПНЖЕЯХ',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (71,NULL,'юОЮПЮРВХЙ, ЮДЯНПАЕП / УХЛХВЕЯЙХ ОПНЖЕЯХ',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (72,NULL,'юОЮПЮРВХЙ, АЗПЙЮВЙЮ / УХЛХВМХ ОПНЖЕЯХ',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (73,NULL,'юОЮПЮРВХЙ, ДЕЯРХКЮРНП / УХЛХВЕЯЙХ ОПНЖЕЯХ',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (74,NULL,'юОЮПЮРВХЙ, ДЕТХАПЮРНПХ / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (75,NULL,'юОЮПЮРВХЙ, ХГОЮПХРЕК / УХЛХВМХ ОПНЖЕЯХ',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (78,NULL,'юОЮПЮРВХЙ, ЙКХЛЮРХВМХ ЯЗНПЗФЕМХЪ',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (79,NULL,'юОЮПЮРВХЙ, ЙНМДЕМГЮРНП / УХЛХВМХ ОПНЖЕЯХ',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (80,NULL,'юОЮПЮРВХЙ, ЙПХЯРЮКХГЮРНП / УХЛХВЕЯЙХ ОПНЖЕЯХ',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (83,NULL,'юОЮПЮРВХЙ, НАЕГБНДМЪБЮЫЮ ЛЮЬХМЮ / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (84,NULL,'юОЮПЮРВХЙ, НРНОКЕМХЕ',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (85,NULL,'юОЮПЮРВХЙ, НУКЮФДЮМЕ',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (86,NULL,'юОЮПЮРВХЙ, ОПЕЯЮ / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (87,NULL,'юОЮПЮРВХЙ, ОПЕВХЯРБЮРЕКМХ ЯЗНПЗФЕМХЪ',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (88,NULL,'юОЮПЮРВХЙ, ПЕЮЙРНП / УХЛХВЕЯЙХ ОПНЖЕЯХ',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (89,NULL,'юОЮПЮРВХЙ, ПЕДЙХ ЛЕРЮКХ / ЛЕРЮКСПЦХЪ',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (90,NULL,'юОЮПЮРВХЙ, ЯСЬХКМЮ / УХЛХВМХ ОПНЖЕЯХ',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (91,NULL,'юОЮПЮРВХЙ, ЯСЬХКМЮ ХМЯРЮКЮЖХЪ / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (92,NULL,'юОЮПЮРВХЙ, РНОКННАЛЕММХЙ / УХЛХВМХ ОПНЖЕЯХ',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (93,NULL,'юОЮПЮРВХЙ, ТХКРПХ / УХЛХВМХ ОПНЖЕЯХ',8153);
INSERT INTO `natc_clasifikator_prof` VALUES (94,NULL,'юОПЕРСПХЯР / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (95,NULL,'юОРЕЙЮП / ДПНЦЕПХЪ',3228);
INSERT INTO `natc_clasifikator_prof` VALUES (96,NULL,'юОРЕЙЮП, ТЮПЛЮЖЕБР / ЮОРЕЙЮ',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (97,NULL,'юПЮМФЭНП / ХГКНФАХ Х ОЮМЮХПХ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (98,NULL,'юПЮМФЭНП / РЗПЦНБЯЙХ НАЕЙРХ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (99,NULL,'юПЮМФЭНП, БЗРПЕЬМН НАГЮБЕФДЮМЕ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (100,NULL,'юПАХРЗП, ЯОНПРЕМ',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (101,NULL,'юПЛЮРСПХЯР / ЯРПНХРЕКЯРБН',7124);
INSERT INTO `natc_clasifikator_prof` VALUES (102,NULL,'юПЛЮРСПХЯР, КЕЪПЯЙХ ТНПЛХ Х ЯЗНПЗФЕМХЪ',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (104,NULL,'юПЛХПНБВХЙ / ЯРПНХРЕКЯРБН',7124);
INSERT INTO `natc_clasifikator_prof` VALUES (105,NULL,'юПРХЯР, АЮКЕРХЯР',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (106,NULL,'юПРХЯР, ДПЮЛЮРХВЕМ',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (107,NULL,'юПРХЯР, ЙНМЖЕПРХПЮЫ',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (108,NULL,'юПРХЯР, НПЙЕЯРПЮМР',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (109,NULL,'юПРХЯР, СВЕМХЙ Б ЖХПЙ',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (110,NULL,'юПРХЯРХВЕМ ЯЕЙПЕРЮП',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (111,NULL,'юПУЕНКНЦ',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (112,NULL,'юПУХБЮП',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (113,NULL,'юПУХБХЯР',2431);
INSERT INTO `natc_clasifikator_prof` VALUES (114,NULL,'юПУХЕОХЯЙНО',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (115,NULL,'юПУХРЕЙР',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (116,NULL,'юПУХРЕЙР, ДЕЙНПХ',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (117,NULL,'юПУХРЕЙР, ОКЮБЮРЕКМХ ЯЗДНБЕ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (118,NULL,'юПУХРЕЙР-ДХГЮИМЕП',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (119,NULL,'юЯЮМЯЭНПНОПХДПСФХРЕК, ОЗРМХЖХ',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (120,NULL,'юЯЮМЯЭНПНОПХДПСФХРЕК, РНБЮПН-ПЮГРНБЮПЮВ',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (121,NULL,'юЯХЯРЕМР / БХЯЬЕ СВХКХЫЕ',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (122,NULL,'юЯХЯРЕМР-НОЕПЮРНП',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (123,NULL,'юЯХЯРЕМР-НОЕПЮРНП МЮ ТНЙСЯЮ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (124,NULL,'юЯХЯРЕМР-ПЕФХЯЭНП',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (125,NULL,'юЯХЯРЕМР-ЯРНЛЮРНКНЦ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (126,NULL,'юЯОХПЮРНПВХЙ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (127,NULL,'юЯРПНКНЦ',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (128,NULL,'юЯРПНМНЛ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (129,NULL,'юЯРПНМНЛ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (130,NULL,'юЯРПНТХГХЙ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (134,NULL,'юСЙЖХНМЕП',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (135,NULL,'юТХМЭНП / ЛЕРЮКСПЦХЪ',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (136,NULL,'аЮБЮВЙЮ, ДНЛЮЬМЮ',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (137,NULL,'аЮЦЕПХЯР',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (139,NULL,'аЮЙРЕПХНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (140,NULL,'аЮЙРЕПХНКНЦ, БЕРЕПХМЮПЕМ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (141,NULL,'аЮЙРЕПХНКНЦ, ЙНМРПНК МЮ УПЮМХРЕКМХ ОПНДСЙРХ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (142,NULL,'аЮЙРЕПХНКНЦ, ЛЕДХЖХМЯЙХ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (143,NULL,'аЮЙРЕПХНКНЦ, ОНВБХ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (144,NULL,'аЮЙРЕПХНКНЦ, ОПНХГБНДЯРБЕМ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (145,NULL,'аЮЙРЕПХНКНЦ, ТЮПЛЮЖЕБРХВЕМ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (146,NULL,'аЮЙЗПДФХЪ',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (147,NULL,'аЮКЮМЯЭНП МЮ ПНРНПХ',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (148,NULL,'аЮКЮМЯЭНП-ЙНПЕЙРНП, ЮАПЮГХБХ',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (149,NULL,'аЮКЕРЕМ ОЕДЮЦНЦ',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (150,NULL,'аЮКЕРЕМ ПЕФХЯЭНП',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (151,NULL,'аЮКЕРЕМ ПЕОЕРХРНП',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (152,NULL,'аЮКЕРХЯР',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (153,NULL,'аЮКЕРЛЮИЯРНП',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (154,NULL,'аЮКХПНБЮВ-НОЮЙНБВХЙ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (155,NULL,'аЮКННРБЮПЪВ / ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (156,NULL,'аЮКЭНП-НОЮЙНБВХЙ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (157,NULL,'аЮМДЮФЭНП МЮ АНАХМХ, ЯЕЙЖХХ Х ПНРНПХ МЮ ЛЮЬХМХ',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (158,NULL,'аЮМЙНБ ЕЙЯОЕПР',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (159,NULL,'аЮМЖХЦЮП / ДЗПБННАПЮАНРБЮМЕ',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (160,NULL,'аЮПЛЮМ',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (161,NULL,'аЮПСЕКХЯР / ОПНХГБНДЯРБН МЮ ЙЮСВСЙНБХ ХГДЕКХЪ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (162,NULL,'аЮЯЕИМВХЙ / ЯНКНДНАХБ',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (163,NULL,'аЕКЮВ, ДЗПБЕМХ РПСОХ',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (164,NULL,'аЕКЮВ-ГЮПЕФДЮВ МЮ ПНКХ / ОНКХЦПЮТХЪ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (165,NULL,'аЕЛАЕПХЯР / ОПНХГБНДЯРБН МЮ ЙЮСВСЙНБХ ХГДЕКХЪ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (166,NULL,'аЕПЮВ / ПЮЯРЕМХЕБЗДЯРБН',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (167,NULL,'аЕРНМДФХЪ / ЯРПНХРЕКЯРБН',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (168,NULL,'аХАКХНЦПЮТ',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (169,NULL,'аХАКХНРЕЙЮП',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (170,NULL,'аХАКХНРЕЙЮП / СВХКХЫЕ',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (171,NULL,'аХАКХНРЕЙЮП / ВХРЮКХЫЕ',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (172,NULL,'аХАКХНРЕЙЮП-ПЕЦХЯРПЮРНП',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (173,NULL,'аХБНКНБЗД',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (174,NULL,'аХФСРЕП',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (175,NULL,'аХФСРЕП, ОКЕРЮВ МЮ ЯХМДФХПХ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (176,NULL,'аХКЕРНОПНДЮБЮВ',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (177,NULL,'аХКЙНАЕПЮВ',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (178,NULL,'аХКЙНОПНХГБНДХРЕК',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (179,NULL,'аХНЦПЮТ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (180,NULL,'аХНКЕВХРЕК',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (181,NULL,'аХНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (182,NULL,'аХНКНЦ, ЛНКЕЙСКЪПЕМ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (183,NULL,'аХНКНЦ, ЛНПЯЙХ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (184,NULL,'аХНКНЦ, МЮСВЕМ ПЮАНРМХЙ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (185,NULL,'аХНКНЦ, ОХРЕИМЮ БНДЮ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (186,NULL,'аХНКНЦ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3211);
INSERT INTO `natc_clasifikator_prof` VALUES (187,NULL,'аХНЛЕРПХЙ',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (188,NULL,'аХНРЕУМНКНЦ',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (189,NULL,'аХНТХГХЙ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (190,NULL,'аХНУХЛХЙ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (191,NULL,'аХЯЛСРВХЙ / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (192,NULL,'аКЮЯЭНП / ОПНХГБНДЯРБН МЮ ОКЮЯРЛЮЯНБХ ХГДЕКХЪ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (193,NULL,'аНАХМЭНП / ОПНХГБНДЯРБН МЮ ЕКЕЙРПХВЕЯЙХ ЛЮЬХМХ',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (194,NULL,'аНДХЦЮПД',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (195,NULL,'аНКМНЦКЕДЮВ / ГДПЮБМН ГЮБЕДЕМХЕ',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (196,NULL,'аНКМНЦКЕДЮВ, ДНЛЮЬЕМ',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (197,NULL,'аНЛАЮДФХЪ',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (198,NULL,'аНМРХПНБВХЙ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7417);
INSERT INTO `natc_clasifikator_prof` VALUES (199,NULL,'аНПЦБЕПЦХЯР / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (200,NULL,'аНПДЕМ ЯЗОПНБНДХРЕК / БЗГДСЬЕМ РПЮМЯОНПР',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (201,NULL,'аНПЯНБ ЮЦЕМР',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (202,NULL,'аНПЯНБ ОНЯПЕДМХЙ',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (203,NULL,'аНРЮМХЙ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (204,NULL,'аНРЮМХЙ, ЕЙНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (205,NULL,'аНРЮМХЙ, ЛХЙПНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (206,NULL,'аНРЮМХЙ, ОНВБЮ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (207,NULL,'аНРЮМХЙ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3211);
INSERT INTO `natc_clasifikator_prof` VALUES (208,NULL,'аНРЮМХЙ, РЮЙЯНМНЛХЯР',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (209,NULL,'аНРЮМХЙ, УХЯРНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (210,NULL,'аНЪДФХЪ / ЯРПНХРЕКЯРБН',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (211,NULL,'аНЪДФХЪ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (213,NULL,'аНЪДФХЪ, ЮМРЕММН-ЛЮВРНБХ ЯЗНПЗФЕМХЪ',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (214,NULL,'аНЪДФХЪ, ЛЕРЮКМХ ХГДЕКХЪ',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (215,NULL,'аНЪДФХЪ, ЛЕРЮКМХ ЙНМЯРПСЙЖХХ / ЯРПНХРЕКЯРБН',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (216,NULL,'аНЪДФХЪ, ЛЕРЮКМХ ВЮЯРХ',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (217,NULL,'аНЪДФХЪ, Я МХРПНЖЕКСНГМХ КЮЙНБЕ',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (218,NULL,'аНЪДФХЪ, Я НКНБМХ АНХ, НПЦЮМХВМХ ПЮГРБНПХРЕКХ',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (219,NULL,'аНЪДФХЪ, РПЮМЯОНПРМХ ЯПЕДЯРБЮ',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (220,NULL,'аПЕЦЮП / ДНАХБ МЮ ОЪЯЗЙ',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (221,NULL,'аПНДХПНБЮВ',7444);
INSERT INTO `natc_clasifikator_prof` VALUES (222,NULL,'аПНЙЕП, ГЮЯРПЮУНБЙХ',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (223,NULL,'аПНЙЕП, ЯРНЙХ',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (224,NULL,'аПНЙЕП, ЯРНЙНБЮ АНПЯЮ',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (225,NULL,'аПНЙЕП, ТНМДНБЮ АНПЯЮ',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (226,NULL,'аПНЙЕП, ЖЕММХ ЙМХФЮ',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (227,NULL,'аПНМГХПНБЮВ / ОНКХЦПЮТХЪ',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (228,NULL,'аПНЪВ',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (229,NULL,'аПЗЯМЮП',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (230,NULL,'аСАЮП',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (231,NULL,'аСЙБНКЕЪП / ОНКХЦПЮТХЪ',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (232,NULL,'аСКДНГЕПХЯР',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (233,NULL,'аСМЙЕПХЯР',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (234,NULL,'аСМЙЕПХЯР / УХЛХВМХ ОПНЖЕЯХ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (235,NULL,'аЗПДЮП, ПЕЛНМРХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (236,NULL,'аЗПДЮП, РЕЙЯРХКМХ ЛЮЬХМХ',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (237,NULL,'аЗВБЮП',7427);
INSERT INTO `natc_clasifikator_prof` VALUES (238,NULL,'аЧТЕРВХЙ',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (239,NULL,'бЮЦНМННОХЯБЮВ / ФО РПЮМЯОНПР',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (240,NULL,'бЮЙЯЮДФХЪ / АХРНБХ СЯКСЦХ МЮ СКХЖЮРЮ',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (242,NULL,'бЮЙССЛХЛОПЕЦМЮРНП',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (243,NULL,'бЮЙССЛХЯР / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (244,NULL,'бЮКСРЕМ ЙЮЯХЕП',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (245,NULL,'бЮКЖЮП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (246,NULL,'бЮКЖНКЕЪП / ОНКХЦПЮТХЪ',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (247,NULL,'бЮКЖЭНП, ЯЛЕЯХ ГЮ КЕОХКН',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (248,NULL,'бЮКЖЭНП-НОЕПЮРНП / ЛЕРЮКСПЦХЪ',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (250,NULL,'бЮПЮВ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (251,NULL,'бЮПЮВ, ЯЮОСМХ / ОПНХГБНДЯРБН МЮ ЛХЕЫХ ОПНДСЙРХ',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (252,NULL,'бЮПНЦЮЯЮВ / ДНАХБ МЮ ЯРПНХРЕКМХ ЛЮРЕПХЮКХ',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (254,NULL,'бЮРЛЮМ / ЦПЮДЯЙХ РПЮМЯОНПР',8313);
INSERT INTO `natc_clasifikator_prof` VALUES (255,NULL,'бДЕБЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (256,NULL,'бЕКНЯХОЕДХЯР',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (257,NULL,'бЕРЕПХМЮПЕМ КЕЙЮП',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (258,NULL,'бЕРЕПХМЮПЕМ КЕЙЮП (ДНЙРНП)',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (259,NULL,'бЕРЕПХМЮПЕМ КЕЙЮП, УХПСПЦ',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (260,NULL,'бЕРЕПХМЮПЕМ ТЕКДЬЕП',3227);
INSERT INTO `natc_clasifikator_prof` VALUES (261,NULL,'бЕЫНОЮГЮВ',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (262,NULL,'бГПХБЮВ / ДНАХБ',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (263,NULL,'бГПХБЮВ МЮ ЛЕРЮКМХ АКНЙНБЕ / ЛЕРЮКСПЦХЪ',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (264,NULL,'бХДЕН-ХМФЕМЕП',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (265,NULL,'бХДЕНЛНМРЮФХЯР',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (266,NULL,'бХЙЮПХИ',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (267,NULL,'бХПСЯНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (268,NULL,'бХЖЕОПЕГХДЕМР / ЯХМДХЙЮР',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (269,NULL,'бХЖЕОПЕГХДЕМР МЮ пЕОСАКХЙЮРЮ',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (270,NULL,'бКЮЦНХГЛЕПХРЕК',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (271,NULL,'бКЮДХЙЮ',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (272,NULL,'бНДЮВ, ЮБРНАСЯ',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (273,NULL,'бНДЮВ, БЕПХФЕМ РПЮЙРНП / ЯРПНХРЕКЯРБН',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (274,NULL,'бНДЮВ, ДПЕГХМЮ / ФО РПЮМЯОНПР',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (275,NULL,'бНДЮВ, ЕКЕЙРПНЙЮП',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (276,NULL,'бНДЮВ, ЙНКЕЯЕМ РПЮЙРНП / ЯЕКЯЙН ЯРНОЮМЯРБН',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (277,NULL,'бНДЮВ, КЕЙ ЮБРНЛНАХК',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (278,NULL,'бНДЮВ, КЕЙ ЮБРНЛНАХК РЮЙЯХ',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (279,NULL,'бНДЮВ, КЕЙНРНБЮПЕМ ЮБРНЛНАХК ДН 1,5 РНМЮ',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (280,NULL,'бНДЮВ, КНБЕМ РСПХГЗЛ',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (281,NULL,'бНДЮВ, ЛЮЬХМЮ ГЮ СРЗОЙБЮМЕ МЮ ЯМЪЦ',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (282,NULL,'бНДЮВ, ЛХЙПНАСЯ',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (283,NULL,'бНДЮВ, ЛНРНЙЮП',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (284,NULL,'бНДЮВ, ЛНРНЖХЙКЕР',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (285,NULL,'бНДЮВ, ОПЕБНГМН ЯПЕДЯРБН Я ОЕДЮКМН ГЮДБХФБЮМЕ',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (286,NULL,'бНДЮВ, ОПНАХБМН-ЬМЕЙНБХ ЛЮЬХМХ',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (288,NULL,'бНДЮВ, ПЗВМЮ ЙНКХВЙЮ (ЙНКХВЙЮП)',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (289,NULL,'бНДЮВ, ЯЮЛНЯБЮК',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (290,NULL,'бНДЮВ, ЯЮЛНУНДМХ ЛЮЬХМХ / ДЗПБНДНАХБ',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (291,NULL,'бНДЮВ, ЯЮЛНУНДМХ ЛЮЬХМХ / ЯЕКЯЙН ЯРНОЮМЯРБН',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (292,NULL,'бНДЮВ, ЯЮЛНУНДМХ ЛНРНПМХ ТПЕГХ',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (293,NULL,'бНДЮВ, ЯЕКЯЙНЯРНОЮМЯЙЮ ЛЮЬХМЮ',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (294,NULL,'бНДЮВ, ЯОЕЖХЮКХГХПЮМХ ЮБРНЛНАХКХ',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (295,NULL,'бНДЮВ, ЯОЕЖХЮКХГХПЮМХ ЛЮЬХМХ Б ПЮЯРЕМХЕБЗДЯРБНРН',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (296,NULL,'бНДЮВ, РНБЮПЕМ ЮБРНЛНАХК МЮД 1,5 РНМЮ',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (297,NULL,'бНДЮВ, РПЮМЯОНПРХПЮЫХ ЯПЕДЯРБЮ Я ФХБНРХМЯЙЮ ЯХКЮ',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (298,NULL,'бНДЮВ, РПХЙНКЙЮ',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (299,NULL,'бНДЮВ, РПНКЕИАСЯ',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (300,NULL,'бНДЮВ, РПЗАНХГНКЮЖХНММХ ОНВХЯРБЮЫХ ЛЮЬХМХ',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (301,NULL,'бНДЮВ, РПЗАНОНКЮЦЮЫХ ЛЮЬХМХ',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (302,NULL,'бНДЕЫ ОПЕДЮБЮМЕ / ПЮДХН Х РЕКЕБХГХЪ',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (303,NULL,'бНДНКЮГ',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (304,NULL,'бНДНКЕВХРЕК / ГДПЮБМН ГЮБЕДЕМХЕ',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (305,NULL,'бНДНОПНБНДВХЙ',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (306,NULL,'бНДНОПНБНДВХЙ-ЛЮГСРВХЙ, ЛЕРЮКСПЦХВМЮ ОЕЫ',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (307,NULL,'бНДНПЮГОПЕДЕКХРЕК,  ОНКХБЮВ / ПЮЯРЕМХЕБЗДЯРБНРН',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (308,NULL,'бНИМХЙ / аЗКЦЮПЯЙЮ ЮПЛХЪ (НРАПЮМЮ)',2);
INSERT INTO `natc_clasifikator_prof` VALUES (309,NULL,'бНЙЮКЕМ ОЕДЮЦНЦ',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (310,NULL,'бНЙЮКХЯР, ЙНМЖЕПРХПЮЫ',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (311,NULL,'бПЗГБЮВ МЮ РЕКЫЮМЦХ Х ОПСФХМХ, РЮОХЖЕП',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (312,NULL,'бРНПХ ЛЕУЮМХЙ / ОКЮБЮРЕКЕМ ЯЗД',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (313,NULL,'бСКЙЮМХГЮРНП / ОПНХГБНДЯРБН МЮ ЙЮСВСЙНБХ ХГДЕКХЪ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (314,NULL,'бСКЙЮМХГЮРНП МЮ РЮОХЖЕПЯЙХ ОКНЯЙНЯРХ, РЮОХЖЕП',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (315,NULL,'бСКЙЮМНКНЦ, ЦЕНТХГХЙ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (316,NULL,'бЗЦКХЫЮП, ДЗПБЕМХ БЗЦКХЫЮ',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (317,NULL,'бЗЦКХЫЮП-ЯЦСПЮДФХЪ / ЕМЕПЦЕРХЙЮ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (318,NULL,'бЗФЮП',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (327,NULL,'бЗГОХРЮРЕК - СВХРЕК Я ОНКСБХЯЬЕ НАПЮГНБЮМХЕ',3314);
INSERT INTO `natc_clasifikator_prof` VALUES (330,NULL,'бЗГОХРЮРЕК Я ОНКСБХЯЬЕ НАПЮГНБЮМХЕ / АНКМХЖЮ',3322);
INSERT INTO `natc_clasifikator_prof` VALUES (332,NULL,'бЗГОХРЮРЕК ЯЗЯ ЯПЕДМН ОЕДЮЦНЦХВЕЯЙН НАПЮГНБЮМХЕ',3322);
INSERT INTO `natc_clasifikator_prof` VALUES (334,NULL,'бЗГЯРЮМНБХРЕК-ЛЕРЮКХЙ',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (335,NULL,'бЗРПЕЬЕМ ЙНПЕЙРНП / ОНКХЦПЮТХЪ',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (336,NULL,'цЮДЮРЕК',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (337,NULL,'цЮГЦЕМЕПЮРНПВХЙ / ЙНЙЯНБН ОПНХГБНДЯРБН',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (338,NULL,'цЮГЦНКДЕПВХЙ / ЙНЙЯНБН ОПНХГБНДЯРБН',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (339,NULL,'цЮГХПНБВХЙ / ОПНХГБНДЯРБН МЮ АЕГЮКЙНУНКМХ МЮОХРЙХ',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (340,NULL,'цЮГНБВХЙ  / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (341,NULL,'цЮГНГЮБЮПВХЙ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (342,NULL,'цЮГНПЕГВХЙ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (343,NULL,'цЮГНЯОЮЯХРЕК / ДНАХБ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (344,NULL,'цЮКБЮМНОКЮЯРХЙ / ОНКХЦПЮТХЪ',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (345,NULL,'цЮКБЮМНРЕУМХЙ ОН УПНЛНБХ, НКНБМХ Х ЖХМЙНБХ БЮМХ',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (346,NULL,'цЮКБЮМНРЕУМХЙ, УХЛХВЕЯЙЮ НАПЮАНРЙЮ МЮ ОНБЗПУМНЯРХ',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (347,NULL,'цЮКХПНБЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (348,NULL,'цЮКРНБВХЙ / КЕЪПЯРБН',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (349,NULL,'цЮПДЕПНАХЕП, КХВМХ БЕЫХ МЮ БПЕЛЕММН ЯЗУПЮМЕМХЕ',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (350,NULL,'цЮПДЕПНАХЕП, ЯОНПРМЮ ЕЙХОХПНБЙЮ',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (351,NULL,'цЮПДЕПНАХЕП, ЯЖЕМХВЕМ',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (352,NULL,'цЮПНБ НОЕПЮРНП / ФО РПЮМЯОНПР',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (353,NULL,'цЮРЕПХЯР / ДЗПБННАПЮАНРБЮМЕ',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (354,NULL,'цЕМЕПЮКЕМ ДХПЕЙРНП / амр, амп',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (355,NULL,'цЕМЕПЮКЕМ ДХПЕЙРНП / ДПСФЕЯРБН ОН рЗПЦНБЯЙХЪ гЮЙНМ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (356,NULL,'цЕМЕПЮКЕМ ЙНМЯСК / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ (лбМп)',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (357,NULL,'цЕМЕПЮКЕМ ЯЕЙПЕРЮП / вЕПБЕМ ЙПЗЯР',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (359,NULL,'цЕМЕПЮКЕМ ЯЕЙПЕРЮП / ОНКХРХВЕЯЙЮ ОЮПРХЪ',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (360,NULL,'цЕМЕПЮКЕМ ЯЕЙПЕРЮП / ЯХМДХЙЮР',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (361,NULL,'цЕМЕПЮРНПВХЙ / ЙНЙЯНБН ОПНХГБНДЯРБН',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (362,NULL,'цЕМЕРХЙ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (363,NULL,'цЕМЕРХЙ, ФХБНРМХ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (364,NULL,'цЕМЕРХЙ, ПЮЯРЕМХЪ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (365,NULL,'цЕНЦПЮТ',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (366,NULL,'цЕНДЕГХЯР, ХМФЕМЕП',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (367,NULL,'цЕНКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (368,NULL,'цЕНКНЦ, ХМФЕМЕП / цлн',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (369,NULL,'цЕНКНЦ, ЛХЙПНОЮКЕНМРНКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (370,NULL,'цЕНКНЦ, ЛХМЕМ ХМФЕМЕП',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (371,NULL,'цЕНКНЦ, МЮСВЕМ ПЮАНРМХЙ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (372,NULL,'цЕНКНЦ, ОЮКЕНМРНКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (373,NULL,'цЕНКНЦ, ОЕРПНЦПЮТХЪ Х БСКЙЮМНКНЦХЪ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (374,NULL,'цЕНКНЦ, ЯРПЮРХЦПЮТ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (376,NULL,'цЕНКНЦ-РЕУМХЙ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (377,NULL,'цЕНЛЮЦМЕРХЯР, ЦЕНТХГХЙ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (378,NULL,'цЕНЛНПТНКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (379,NULL,'цЕНТХГХЙ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (380,NULL,'цЕНТХГХЙ, КЕДНКНЦ (ЦКЮЯХНКНЦ)',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (381,NULL,'цЕНТХГХЙ, МЮСВЕМ ПЮАНРМХЙ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (382,NULL,'цЕНТХГХЙ, НЙЕЮМНЦПЮТ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (383,NULL,'цЕНТХГХЙ, ОПХКНФМЮ ЦЕНТХГХЙЮ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (384,NULL,'цЕНТХГХЙ, УХДПНКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (385,NULL,'цЕНТХГХВЕМ НОЕПЮРНП / ЦЕНКНФЙХ ОПНСВБЮМХЪ',7115);
INSERT INTO `natc_clasifikator_prof` VALUES (386,NULL,'цХД, ОКЮМХМЯЙХ БНДЮВ',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (387,NULL,'цХКЧЬНП / ОНКХЦПЮТХЪ',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (388,NULL,'цХОЯЮДФХЪ / ЯРПНХРЕКЯРБН',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (389,NULL,'цКЮБЕМ ЮЦПНМНЛ',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (390,NULL,'цКЮБЕМ ЮЙРЧЕП',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (391,NULL,'цКЮБЕМ ЮПУХРЕЙР / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (392,NULL,'цКЮБЕМ ЮПУХРЕЙР / ОПНЕЙРЮМРЯЙЮ НПЦЮМХГЮЖХЪ',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (393,NULL,'цКЮБЕМ ЮЯХЯРЕМР / БХЯЬЕ СВХКХЫЕ',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (396,NULL,'цКЮБЕМ БЮКСРЕМ ЙЮЯХЕП',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (397,NULL,'цКЮБЕМ БЕРЕПХМЮПЕМ КЕЙЮП',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (398,NULL,'цКЮБЕМ ЦНРБЮВ',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (399,NULL,'цКЮБЕМ ДЕФСПЕМ, ЕКЕЙРПХВЕЯЙЮ ЖЕМРПЮКЮ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (400,NULL,'цКЮБЕМ ДХКЗП',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (401,NULL,'цКЮБЕМ ДХПЕЙРНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (403,NULL,'цКЮБЕМ ЕЙЯОЕПР / хМЯОЕЙЖХЪ КЕРЮРЕКМЮ ЕЙЯОКНЮРЮЖХЪ',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (404,NULL,'цКЮБЕМ ЕЙЯОЕПР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (405,NULL,'цКЮБЕМ ЕЙЯОЕПР / НАКЮЯРМЮ ЮДЛХМХЯРПЮЖХЪ',2473);
INSERT INTO `natc_clasifikator_prof` VALUES (406,NULL,'цКЮБЕМ ЕЙЯОЕПР / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (407,NULL,'цКЮБЕМ ЕЙЯОЕПР, ХМТНПЛЮЖХНММН НЯХЦСПЪБЮМЕ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (408,NULL,'цКЮБЕМ ЕМЕПЦЕРХЙ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (409,NULL,'цКЮБЕМ ГННРЕУМХЙ',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (410,NULL,'цКЮБЕМ ХЙНМНЛХЯР',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (411,NULL,'цКЮБЕМ ХМФЕМЕП',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (412,NULL,'цКЮБЕМ ХМФЕМЕП / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (413,NULL,'цКЮБЕМ ХМЯОЕЙРНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (414,NULL,'цКЮБЕМ ХМЯОЕЙРНП ОН РПСДЮ',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (415,NULL,'цКЮБЕМ ЙЮЛЕПХЕП / УНРЕК',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (416,NULL,'цКЮБЕМ ЙЮЯХЕП',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (417,NULL,'цКЮБЕМ ЙЮЯХЕП / ама',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (418,NULL,'цКЮБЕМ ЙЮЯХЕП, РЕКЕТНМН-РЕКЕЦПЮТЕМ',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (420,NULL,'цКЮБЕМ ЙНМЯРПСЙРНП (ДЕЯЕМЮРНП)',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (421,NULL,'цКЮБЕМ ЙННПДХМЮРНП / амр, амп',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (423,NULL,'цКЮБЕМ КЕЙЮП / ВЮЯРМЮ АНКМХЖЮ',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (424,NULL,'цКЮБЕМ КЕЯМХВЕИ',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (425,NULL,'цКЮБЕМ ЛЕУЮМХЙ / ОКЮБЮРЕКЕМ ЯЗД',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (426,NULL,'цКЮБЕМ ЛЕУЮМХЙ / ОПНХГБНДЯРБН',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (427,NULL,'цКЮБЕМ ЛХРМХВЕЯЙХ ХМЯОЕЙРНП',2478);
INSERT INTO `natc_clasifikator_prof` VALUES (428,NULL,'цКЮБЕМ МЮСВЕМ ЯЕЙПЕРЮП',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (429,NULL,'цКЮБЕМ НОЕПЮРНП, ПЕЮЙРНП Б юеж / ЕМЕПЦЕРХЙЮ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (431,NULL,'цКЮБЕМ ОХКНР / БЗГДСЬЕМ РПЮМЯОНПР',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (433,NULL,'цКЮБЕМ ОПНЕЙРЮМР / ОПНЕЙРЮМРЯЙЮ НПЦЮМХГЮЖХЪ',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (434,NULL,'цКЮБЕМ ОПНЙСПНП',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (437,NULL,'цКЮБЕМ ПЕДЮЙРНП',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (439,NULL,'цКЮБЕМ ЯЕЙПЕРЮП / лХМХЯРЕПЯЙХ ЯЗБЕР',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (440,NULL,'цКЮБЕМ ЯЕЙПЕРЮП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (441,NULL,'цКЮБЕМ ЯЕЙПЕРЮП / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (442,NULL,'цКЮБЕМ ЯЕЙПЕРЮП / ЯОНПРМЮ НПЦЮМХГЮЖХЪ',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (444,NULL,'цКЮБЕМ ЯОЕЖХЮКХЯР  / НАКЮЯРМЮ ЮДЛХМХЯРПЮЖХЪ',3443);
INSERT INTO `natc_clasifikator_prof` VALUES (445,NULL,'цКЮБЕМ ЯОЕЖХЮКХЯР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (446,NULL,'цКЮБЕМ ЯОЕЖХЮКХЯР / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',3444);
INSERT INTO `natc_clasifikator_prof` VALUES (447,NULL,'цКЮБЕМ ЯВЕРНБНДХРЕК',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (448,NULL,'цКЮБЕМ ЯВЕРНБНДХРЕК / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (449,NULL,'цКЮБЕМ ЯВЕРНБНДХРЕК / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (450,NULL,'цКЮБЕМ ЯВЕРНБНДХРЕК / СВХКХЫЕ МЮ АЧДФЕРМЮ ХГДПЗФЙЮ',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (451,NULL,'цКЮБЕМ ЯЗБЕРМХЙ / лХМХЯРЕПЯЙХ ЯЗБЕР',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (452,NULL,'цКЮБЕМ ЯЗДЕАЕМ ХМЯОЕЙРНП',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (453,NULL,'цКЮБЕМ РЕУМНКНЦ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (456,NULL,'цКЮБЕМ ТХМЮМЯНБ ПЕБХГНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (461,NULL,'цКЮБЕМ ЧПХЯЙНМЯСКР',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (462,NULL,'цКЮБЕМ ЧПХЯРЙНМЯСКР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (463,NULL,'цКЮБЕМ ЧПХЯРЙНМЯСКР / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (464,NULL,'цКЮБМЮ ЮЙСЬЕПЙЮ',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (465,NULL,'цКЮБМЮ ЛЕДХЖХМЯЙЮ ЯЕЯРПЮ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (466,NULL,'цКЮДЮВ МЮ ОПЕЯЮ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (467,NULL,'цКЮДЮВ МЮ ОПЕЯЮ / ЬХБЮЬЙН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (468,NULL,'цКЮДЮВ, НАКЕЙКН НР КХЖЕБХ ЛЕЙХ ЙНФХ',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (469,NULL,'цКЮДЮВ, ЬХБЮВ / ЬХБЮЬЙН ОПНХГБНДЯРБН',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (470,NULL,'цКЮГХПНБЮВ / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (472,NULL,'цКЮМЖЭНП, ЬЮОЙХ',7443);
INSERT INTO `natc_clasifikator_prof` VALUES (474,NULL,'цКЕДЮВ МЮ ДПЕЯХПЮМХ ФХБНРМХ',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (475,NULL,'цКЕДЮВ МЮ ФХБНРМХ, ЙКЮМХЖЮ',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (476,NULL,'цКЕДЮВ МЮ КЮАНПЮРНПМХ ФХБНРМХ',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (477,NULL,'цКЕДЮВ МЮ НРПНБМХ ГЛХХ',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (478,NULL,'цНБЕДНБЗД',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (479,NULL,'цНБНПХРЕК / ПЮДХН Х РЕКЕБХГХЪ',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (480,NULL,'цНБНПХРЕК / ПЮДХНСПЕДАЮ',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (481,NULL,'цНБНПХРЕК, БПЗГЙХ Я ЛЕДХХРЕ',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (482,NULL,'цНПЯЙХ МЮДГХПЮРЕК',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (483,NULL,'цНРБЮВ',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (484,NULL,'цНСКНБ ЛЮИЯРНП',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (485,NULL,'цПЮБЭНП / ОНКХЦПЮТХЪ',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (486,NULL,'цПЮБЭНП / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (487,NULL,'цПЮБЭНП / РЕЙЯРХКМН ОПНХГБНДЯРБН',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (488,NULL,'цПЮБЭНП, АХФСРЕПХЪ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (489,NULL,'цПЮБЭНП, ЛЕРЮК / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (490,NULL,'цПЮДХМЮП',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (491,NULL,'цПЮДХМЮП / НПЮМФЕПХЪ',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (492,NULL,'цПЮДХМЮП / ОЮПЙ',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (493,NULL,'цПЮДХПНБЮВ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (494,NULL,'цПЮМСКЭНП / УХЛХВМХ ОПНЖЕЯХ',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (495,NULL,'цПЮМСКЭНП МЮ НРОЮДЗВМХ ЛЮРЕПХЮКХ / УХЛХВМХ ОПНЖЕЯХ',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (496,NULL,'цПЮТНКНЦ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (497,NULL,'цПЕЯХПНБЮВ, ЛНРНПМХ ОПЕБНГМХ ЯПЕДЯРБЮ / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (498,NULL,'цПХЛЭНП, ЯЖЕМХВЕМ',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (499,NULL,'цПХЛЭНП-ОЕПСЙЕП',5143);
INSERT INTO `natc_clasifikator_prof` VALUES (500,NULL,'цПНАЮП, ОНЦПЕАЕМХЪ Х ОНДДЗПФЮМЕ МЮ ЦПНАМХЖХ',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (501,NULL,'цПСМДХПНБЮВ МЮ РПЗАХ / ЛЕРЮКСПЦХЪ',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (502,NULL,'цПСМДХПНБЮВ-АЮИЖБЮВ, ДЗПБННАПЮАНРБЮМЕ',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (503,NULL,'цПЗМВЮП',7324);
INSERT INTO `natc_clasifikator_prof` VALUES (504,NULL,'цСЛЮДФХЪ, ЛНРНПМХ ОПЕБНГМХ ЯПЕДЯРБЮ / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (505,NULL,'цЗАЮП',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (506,NULL,'дЮМЯХМЦ-ОЮПРМЭНП',5149);
INSERT INTO `natc_clasifikator_prof` VALUES (507,NULL,'дЮМЗВЕМ ЕЙЯОЕПР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (508,NULL,'дЮМЗВЕМ ХМЯОЕЙРНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (509,NULL,'дЮПЮЙВХЪ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8261);
INSERT INTO `natc_clasifikator_prof` VALUES (510,NULL,'дЕБХЮРНП / БНДeМ РПЮМЯОНПР',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (511,NULL,'дЕЦСЯРЮРНП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (512,NULL,'дЕГХМЯЕЙРНП, ПЮАНРМХЙ, ОНЯЮДЗВЕМ ЛЮРЕПХЮК',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (513,NULL,'дЕГХМЯЕЙРНП, ЯОЕЖХЮКХЯР',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (514,NULL,'дЕГХМТЕЙРНП, ПЮАНРМХЙ',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (515,NULL,'дЕГХМТЕЙРНП, ЯОЕЖХЮКХЯР',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (516,NULL,'дЕЙЮМ / БХЯЬЕ СВХКХЫЕ',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (517,NULL,'дЕЙНПЮРНП / ОНПЖЕКЮМНБН- ТЮЪМЯНБН ОПНХГБНДЯРБН',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (518,NULL,'дЕЙНПЮРНП, РЕЮРЗП',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (519,NULL,'дЕЙНПЮРНП-ПХЯСБЮВ, РЕЙЯРХК Х НАКЕЙКН',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (520,NULL,'дЕКНБНДХРЕК',4143);
INSERT INTO `natc_clasifikator_prof` VALUES (521,NULL,'дЕКНБНДХРЕК, ЙМХЦНУПЮМХКХЫЕ',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (522,NULL,'дЕЛНЦПЮТ',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (523,NULL,'дЕЛНМЯРПЮРНП МЮ ЯРНЙХ',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (524,NULL,'дЕЛНМРЮФМХЙ / ЯРПНХРЕКЯРБН',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (525,NULL,'дЕОНГХРНП-ЙНЛОКЕЙРНБВХЙ МЮ ЬПХТРНБЕ / ОНКХЦПЮТХЪ',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (526,NULL,'дЕОНЛЮИЯРНП / ФО РПЮМЯОНПР',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (527,NULL,'дЕПЮРХГЮРНП, ПЮАНРМХЙ / ГЗПМЕМХ ЯХКНГХ',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (528,NULL,'дЕПЮРХГЮРНП, ЯОЕЖХЮКХЯР',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (529,NULL,'дЕЯЕМЮРНП, РЕЙЯРХК Х НАКЕЙКН',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (530,NULL,'дЕЯРХКЮРНП / ОПНХГБНДЯРБН МЮ ЮКЙНУНК',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (531,NULL,'дЕРЕЦКЕДЮВ',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (532,NULL,'дЕРЕЙРХБ / ВЮЯРМЮ ОПЮЙРХЙЮ',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (533,NULL,'дЕРЯЙЮ СВХРЕКЙЮ',3321);
INSERT INTO `natc_clasifikator_prof` VALUES (534,NULL,'дЕТЕЙРНЯЙНОХЯР',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (535,NULL,'дФЮГНБ ОЕБЕЖ',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (536,NULL,'дХЮЦМНЯРХЙ, ЛНРНПМХ ОПЕБНГМХ ЯПЕДЯРБЮ / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (537,NULL,'дХБЕВНБЗД',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (538,NULL,'дХЕРНКНЦ - РЕПЮОЕБР',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (539,NULL,'дХГЮИМЕП, ЙЕПЮЛХВМХ ХГДЕКХЪ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (540,NULL,'дХГЮИМЕП, ЛЮЬХМЕМ ХМФЕМЕП',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (541,NULL,'дХГЮИМЕП, НАКЕЙКН Х ЮЙЯЕЯНЮПХ',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (542,NULL,'дХГЮИМЕП, ОПНХГБНДЯРБЕМХ ЯХЯРЕЛХ',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (543,NULL,'дХГЮИМЕП, ОПНЛХЬКЕМХ ХГДЕКХЪ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (544,NULL,'дХГЮИМЕП, УСДНФМХЙ',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (545,NULL,'дХГЮИМЕП-ЮПУХРЕЙР',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (546,NULL,'дХЙРНБЮВ-ЙНПХЦХПНБЮВ МЮ аПЮИКНБЮ ЮГАСЙЮ',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (547,NULL,'дХКЗП',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (548,NULL,'дХОКНЛЮР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ (лбМп)',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (549,NULL,'дХОКНЛЮРХВЕЯЙХ ЙСПХЕП',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (550,NULL,'дХОКНЛХПЮМ ЕЙЯОЕПР-ЯВЕРНБНДХРЕК',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (551,NULL,'дХПЕЙРНП / юЦЕМЖХЪ \"лХРМХЖХ\"',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (553,NULL,'дХПЕЙРНП / ДЕРЯЙЮ ЦПЮДХМЮ МЮ АЧДФЕРМЮ ХГДПЗФЙЮ',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (554,NULL,'дХПЕЙРНП / ДПСФЕЯРБН ОН рЗПЦНБЯЙХЪ гЮЙНМ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (557,NULL,'дХПЕЙРНП / ХГДЮРЕКЯРБН',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (560,NULL,'дХПЕЙРНП / ЙНМЯСКРЮРХБМН-ДХЮЦМНЯРХВЕМ ЖЕМРЗП',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (561,NULL,'дХПЕЙРНП / ЛСГЕИ МЮ АЧДФЕРМЮ ХГДПЗФЙЮ',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (562,NULL,'дХПЕЙРНП / НАКЮЯРМЮ ЮДЛХМХЯРПЮЖХЪ',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (563,NULL,'дХПЕЙРНП / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (565,NULL,'дХПЕЙРНП / ОЕВЮРМЮ АЮГЮ',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (566,NULL,'дХПЕЙРНП / ПЕЦХНМЮКМЮ ЛХРМХВЕЯЙЮ ДХПЕЙЖХЪ',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (567,NULL,'дХПЕЙРНП / ЯНЖХЮКМН СВЕАМН-ОПНТЕЯХНМЮКМН ГЮБЕДЕМХЕ',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (569,NULL,'дХПЕЙРНП / СВХКХЫЕ МЮ АЧДФЕРМЮ ХГДПЗФЙЮ',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (570,NULL,'дХПЕЙРНП / ВЮЯРМЮ АНКМХЖЮ',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (571,NULL,'дХПЕЙРНП / ВЮЯРМЮ ПЮДХНЯРЮМЖХЪ, РЕКЕБХГХЪ',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (572,NULL,'дХПЕЙРНП / ВЮЯРМН СВХКХЫЕ',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (574,NULL,'дХПЕЙРНП МЮ ТХКЛНБЮ Х РЕКЕБХГХНММЮ ОПНДСЙЖХЪ',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (575,NULL,'дХПЕЙРНП, бХй',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (576,NULL,'дХПЕЙРНП, мЮПНДМЮ АХАКХНРЕЙЮ',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (577,NULL,'дХПЕЙРНП, мЮЖХНМЮКМЮ ЯКЕДЯРБЕМЮ ЯКСФАЮ',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (578,NULL,'дХПЕЙРНП, БЗМЬМНРЗПЦНБЯЙЮ ЙЮМРНПЮ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (579,NULL,'дХПЕЙРНП, ЕЙЯОКНЮРЮЖХЪ / РПЮМЯОНПР',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (580,NULL,'дХПЕЙРНП, ГЮБЕДЕМХЕ / НАЫЕЯРБЕМН УПЮМЕМЕ',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (581,NULL,'дХПЕЙРНП, ХЙНМНЛХВЕЯЙЮ ОНКХРХЙЮ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (582,NULL,'дХПЕЙРНП, ЙНЛОКЕЙЯ ГЮ УПЮМЕМЕ',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (583,NULL,'дХПЕЙРНП, МЮСВЕМ ХМЯРХРСР',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (584,NULL,'дХПЕЙРНП, МЮСВМЮ КЮАНПЮРНПХЪ',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (585,NULL,'дХПЕЙРНП, НАКЮЯРЕМ ЖЕМРЗП ГЮ ЯНЖХЮКМХ ЦПХФХ',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (586,NULL,'дХПЕЙРНП, ОПНХГБНДЯРБЕМЮ ДЕИМНЯР',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (587,NULL,'дХПЕЙРНП, ПЕЛНМР МЮ РПЗАНОПНБНДХ',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (590,NULL,'дХПЕЙРНП, РЗПЦНБЯЙЮ ДЕИМНЯР',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (591,NULL,'дХПЕЙРНП, РЗПЦНБЯЙХ БЗОПНЯХ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (592,NULL,'дХПЕЙРНП, ТХМЮМЯНБЮ ДЕИМНЯР',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (593,NULL,'дХПЕЙРНП, ВХЯРНРЮ',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (594,NULL,'дХПХЦЕМР',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (595,NULL,'дХЯЙНБНДЕЫ',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (596,NULL,'дХЯОЕВЕП / ЮБРНЛНАХКЕМ РПЮМЯОНПР',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (597,NULL,'дХЯОЕВЕП / БНДeМ РПЮМЯОНПР',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (598,NULL,'дХЯОЕВЕП / БЗГДСЬeМ РПЮМЯОНПР',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (599,NULL,'дХЯОЕВЕП / ЦЮГНОПНБoД, МЕТРНОПНБНД',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (600,NULL,'дХЯОЕВЕП / ДЮКЕЙНЯЗНАЫЕМХЪ (ПЮИНМЕМ БЗГЕК - пбд)',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (601,NULL,'дХЯОЕВЕП / ФО ЦЮПЮ',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (602,NULL,'дХЯОЕВЕП / ФО РПЮМЯОНПР',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (603,NULL,'дХЯОЕВЕП / ОПНХГБНДЯРБo',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (605,NULL,'дНЦПЮЛЮДФХЪ',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (606,NULL,'дНГХЛЕРПХЯР, КЮАНПЮМР',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (607,NULL,'дНГХПНБЮВ / ОПНХГБНДЯРБН МЮ ЯРПНХРЕКМЮ ЙЕПЮЛХЙЮ',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (608,NULL,'дНГХПНБЮВ МЮ БЗЦКХЫЮ / ЙНЙЯНБН ОПНХГБНДЯРБН',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (609,NULL,'дНГХПНБВХЙ  / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (610,NULL,'дНГХПНБВХЙ / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (611,NULL,'дНГХПНБВХЙ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (612,NULL,'дНГХПНБВХЙ, ЮАПЮГХБХ',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (613,NULL,'дНЙЕП',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (614,NULL,'дНЙСЛЕМРЮКХЯР',2431);
INSERT INTO `natc_clasifikator_prof` VALUES (615,NULL,'дНЙСЛЕМРЮРНП, ТХМЮМЯНБ ЙНМРПНК',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (616,NULL,'дНЛЮЙХМ / ЮДЛХМХЯРПЮЖХЪ',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (617,NULL,'дНЛЮЙХМ, ЦЮПДЕПНАХЕП',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (619,NULL,'дНЛЮЙХМ, НПЦЮМХГЮРНП МЮ ОНВХБМН ДЕКН',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (620,NULL,'дНЛЮЙХМ, НЯМНБМХ ЯПЕДЯРБЮ',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (621,NULL,'дНЛЮЙХМ, ОПХЕЛВХЙ / ОПНХГБНДЯРБН',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (622,NULL,'дНЛЮЙХМ, ЯЙКЮД / ОПНХГБНДЯРБН',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (623,NULL,'дНЛЮЙХМ, ЯМЮАДХРЕК / РЗПЦНБХЪ, ОПНХГБНДЯРБН',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (624,NULL,'дНЛЮЙХМ, ЬНТЭНП',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (625,NULL,'дНЛЮЙХМ-ЙЮЯХЕП',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (626,NULL,'дНЛЮЬМЮ АЮБЮВЙЮ',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (627,NULL,'дНЛЮЬМЮ ОПХЯКСФМХЖЮ',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (628,NULL,'дНЛНСОПЮБХРЕК',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (629,NULL,'дНЯРЮБВХЙ МЮ РЕУМХВЕЯЙХ ГПЪК РЧРЧМ',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (630,NULL,'дНЖЕМР',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (631,NULL,'дНЪВ, ПЗВМН / ФХБНРМНБЗДЯРБН',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (632,NULL,'дНЪВ-НОЕПЮРНП',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (633,NULL,'дПЮЛЮРСПЦ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (634,NULL,'дПЕЯЭНП МЮ ФХБНРМХ',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (635,NULL,'дПНАХКВХЙ МЮ ЙНЛАХМХПЮМ ТСПЮФ',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (637,NULL,'дЗПБЮП / ДЗПБНДНАХБ',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (638,NULL,'дЗПБНДЕКЕЖ, ДЗПБЕМХ ЙНМЯРПСЙЖХХ / ЯРПНХРЕКЯРБН',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (639,NULL,'дЗПБНДЕКЕЖ, ЙПНЪВ',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (640,NULL,'дЗПБНДЕКЕЖ, ЛЮИЯРНП-ЛЕАЕКХЯР',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (641,NULL,'дЗПБНДЕКЕЖ, ЛНМРЮФ МЮ ДНЦПЮЛЮ',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (642,NULL,'дЗПБНДЕКЕЖ, ПЕЛНМР Х ОНДДЗПФЮМЕ МЮ ДНЦПЮЛЮ',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (643,NULL,'дЗПБНДЕКЕЖ, ПЕЛНМР Х ОНДДЗПФЮМЕ МЮ ЛЕАЕКХ',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (644,NULL,'дЗПБНДЕКЕЖ, ЯРПНХРЕКЕМ',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (645,NULL,'дЗПБНДЕКЕЖ, РЕЮРПЮКЕМ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (646,NULL,'дЗПБНДЕКЕЖ-ЙНТПЮФХЯР / ЯРПНХРЕКЯРБН',7122);
INSERT INTO `natc_clasifikator_prof` VALUES (647,NULL,'дЗПБНДЕКЕЖ-ОЮПЙЕРВХЪ / ЯРПНХРЕКЯРБН',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (648,NULL,'дЗПБНПЕГЮВ, ЮАПХУР / ДЗПБННАПЮАНРБЮМЕ',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (649,NULL,'дЗПБНПЕГЮВ, ДЗПБЮ ГЮ НЦПЕБ / ЯЕГНММХ АХРНБХ СЯКСЦХ',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (650,NULL,'дЗПБНПЕГАЮП',7425);
INSERT INTO `natc_clasifikator_prof` VALUES (651,NULL,'дЗПФЮБЕМ ЕЙЯОЕПР / оЮРЕМРМН БЕДНЛЯРБН',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (652,NULL,'дЗПФЮБЕМ ЕЙЯОЕПР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (653,NULL,'дЗПФЮБЕМ ХМЯОЕЙРНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (655,NULL,'дЗПФЮБЕМ ЯКСФХРЕК / лХМХЯРЕПЯРБН МЮ НРАПЮМЮРЮ (лн)',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (657,NULL,'дЗПФЮБЕМ ЯЗБЕРМХЙ',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (658,NULL,'дЗПФЮБЕМ ТХМЮМЯНБ ПЕБХГНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (659,NULL,'дЧЬЕЙВХЪ',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (660,NULL,'еЙНКНЦ, АХНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (661,NULL,'еЙОЕПР, БЗМЬМНРЗПЦНБЯЙХ НРМНЬЕМХЪ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (662,NULL,'еЙЯЙСПГНБНД  / РСПХЯРХВЕЯЙЮ ЮЦЕМЖХЪ (АЧПН)',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (663,NULL,'еЙЯЙСПГНБНД / ЛСГЕИ, УСДНФЕЯРБЕМЮ ЦЮКЕПХЪ',5116);
INSERT INTO `natc_clasifikator_prof` VALUES (664,NULL,'еЙЯЙСПГНБНД, ОЗРМХВЕЯЙХ ОПЕБНГХ',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (665,NULL,'еЙЯЙСПГНБНД, ПЮГЦКЕФДЮМЕ МЮ ГЮАЕКЕФХРЕКМНЯРХ',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (667,NULL,'еЙЯОЕДХРНП',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (668,NULL,'еЙЯОЕПХЛЕМРЮРНП МЮ ОКЮБЮРЕКМХ ЯЗДНБЕ',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (669,NULL,'еЙЯОЕПР / БПЗГЙХ Я НАЫЕЯРБЕМНЯРРЮ',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (670,NULL,'еЙЯОЕПР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (671,NULL,'еЙЯОЕПР / ХГКНФАХ Х ОЮМЮХПХ',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (673,NULL,'еЙЯОЕПР / РСПНОЕПЮРНП',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (674,NULL,'еЙЯОЕПР / ТХМЮМЯНБЮ ЙЗЫЮ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (675,NULL,'еЙЯОЕПР / ТНМДНБЮ АНПЯЮ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (676,NULL,'еЙЯОЕПР ОН РЧРЧМЮ',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (677,NULL,'еЙЯОЕПР, бХй',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (678,NULL,'еЙЯОЕПР, АЕГНОЮЯМНЯР МЮ РПСДЮ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (679,NULL,'еЙЯОЕПР, ДЮМЗВМХ ЙНМЯСКРЮЖХХ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (681,NULL,'еЙЯОЕПР, ГЮДЗКФХРЕКМН ЯНЖХЮКМН НЯХЦСПЪБЮМЕ',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (682,NULL,'еЙЯОЕПР, ГЮЯРПЮУНБЮРЕКМХ ОНКХЖХ',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (683,NULL,'еЙЯОЕПР, ГДПЮБЕНОЮГБЮМЕ',2229);
INSERT INTO `natc_clasifikator_prof` VALUES (684,NULL,'еЙЯОЕПР, ГДПЮБМН НЯХЦСПЪБЮМЕ',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (685,NULL,'еЙЯОЕПР, ХМБЕЯРХРНПЯЙХ ЙНМРПНК',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (686,NULL,'еЙЯОЕПР, ХМФЕМЕПХМЦ Х ЛЮПЙЕРХМЦ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (687,NULL,'еЙЯОЕПР, ХМТНПЛЮЖХНММХ РЕУМНКНЦХХ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (688,NULL,'еЙЯОЕПР, ЙНЛОЧРЗПХГЮЖХЪ МЮ СОПЮБКЕМХЕРН',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (689,NULL,'еЙЯОЕПР, ЙСКРСПМН-ЛЮЯНБЮ Х ЯОНПРМЮ ДЕИМНЯР',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (690,NULL,'еЙЯОЕПР, ЛЮЬХММЮ НАПЮАНРЙЮ МЮ ХМТНПЛЮЖХЪРЮ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (692,NULL,'еЙЯОЕПР, ЛЕФДСМЮПНДМН ЯЗРПСДМХВЕЯРБН',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (693,NULL,'еЙЯОЕПР, НПЦЮМХГЮЖХНММЮ ДЕИМНЯР',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (694,NULL,'еЙЯОЕПР, НПЦЮМХГЮЖХЪ Х ПЕФХЛ МЮ ПЮАНРЮ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (695,NULL,'еЙЯОЕПР, НТХЯ НТНПЛКЕМХЕ',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (696,NULL,'еЙЯОЕПР, ОНКХРХЙЮ МЮ ЖЕМХРЕ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (697,NULL,'еЙЯОЕПР, ОПЮБН',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (699,NULL,'еЙЯОЕПР, ЯМЮАДЪБЮМЕ, ОКЮЯЛЕМР',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (700,NULL,'еЙЯОЕПР, ЯНЖХЮКМХ ДЕИМНЯРХ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (701,NULL,'еЙЯОЕПР, ЯНЖХЮКМН ОНДОНЛЮЦЮМЕ Х НПХЕМРХПЮМЕ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (702,NULL,'еЙЯОЕПР, ЯНЖХЮКМН-АХРНБЮ Х ФХКХЫМЮ ОНКХРХЙЮ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (703,NULL,'еЙЯОЕПР, РЮЙЯХ Х РЮПХТХ',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (704,NULL,'еЙЯОЕПР, РЮПХТХПЮМЕ / РПЮМЯОНПР',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (706,NULL,'еЙЯОЕПР, РПСД Х ПЮАНРМЮ ГЮОКЮРЮ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (707,NULL,'еЙЯОЕПР, РПСДНБХ НРМНЬЕМХЪ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (708,NULL,'еЙЯОЕПР, СОПЮБКЕМХЕ МЮ ОПНДЮФАХРЕ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (709,NULL,'еЙЯОЕПР, ЖЕМХ Х РЮПХТХ',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (710,NULL,'еЙЯОЕПР, ВСФДНЕГХЙНБЮ ОНДЦНРНБЙЮ',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (713,NULL,'еЙЯРПЮЙРЭНП / УХЛХВМХ ОПНЖЕЯХ',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (715,NULL,'еЙЯРПСДЕПХЯР / ОПНХГБНДЯРБН МЮ ЙЮСВСЙНБХ ХГДЕКХЪ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (716,NULL,'еЙЯРПСДЕПХЯР / ОПНХГБНДЯРБН МЮ ОКЮЯРЛЮЯНБХ ХГДЕКХЪ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (717,NULL,'еК. КЮАНПЮМР',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (718,NULL,'еК. ЛНМРЭНП',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (719,NULL,'еКЕЙРПНЮБРНЛНМРЭНП',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (720,NULL,'еКЕЙРПНДВХЙ / ЛЕРЮКСПЦХЪ',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (721,NULL,'еКЕЙРПНЕПНГХЯР, УХЛХВЕЯЙЮ НАПЮАНРЙЮ МЮ ОНБЗПУМНЯРХ',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (722,NULL,'еКЕЙРПНФЕМХЯР',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (723,NULL,'еКЕЙРПНХМФЕМЕП',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (724,NULL,'еКЕЙРПНЙЮПХЯР',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (726,NULL,'еКЕЙРПНКХРВХЙ / ЛЕРЮКСПЦХЪ',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (727,NULL,'еКЕЙРПНЛЕУЮМХЙ  / ОКЮБЮРЕКЕМ ЯЗД',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (728,NULL,'еКЕЙРПНЛЕУЮМНЬКНЯЕП',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (729,NULL,'еКЕЙРПНЛНМРЮФМХЙ, ЕКЕЙРПНММХ РЕУМХВЕЯЙХ ЯХЯРЕЛХ',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (730,NULL,'еКЕЙРПНЛНМРЭНП, йхо Х ю',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (731,NULL,'еКЕЙРПНЛНМРЭНП, ЮБЮПХИМЮ ЦПСОЮ / ЕМЕПЦЕРХЙЮ',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (732,NULL,'еКЕЙРПНЛНМРЭНП, ЛЮЬХМХ Х ЯЗНПЗФЕМХЪ',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (736,NULL,'еКЕЙРПНЛНМРЭНП, РЕКЕЛЕУЮМХВМХ СОПЮБКЪБЮМХ ЯХЯРЕЛХ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (738,NULL,'еКЕЙРПНМХЙ (ЕКЕЙРПНМВХЙ)',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (739,NULL,'еКЕЙРПНРЕУМХЙ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (742,NULL,'еКРЕУМХЙ  / ОКЮБЮРЕКЕМ ЯЗД',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (743,NULL,'еЛЮИКЮРНП, УХЛХВЕЯЙЮ НАПЮАНРЙЮ МЮ ОНБЗПУМНЯРХ',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (744,NULL,'еЛАПХНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (745,NULL,'еМЕПЦЕРХЙ / ЕКЕЙРПН-КЮАНПЮРНПХЪ, орн',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (746,NULL,'еМЕПЦЕРХЙ, ХМФЕМЕП',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (747,NULL,'еМЕПЦЕРХЙ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (748,NULL,'еМЕПЦЕРХЙ, РЕУМХЙ / ЖЕУ, СВЮЯРЗЙ, ЯЛЪМЮ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (749,NULL,'еМРНЛНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (750,NULL,'еОХГННРНКНЦ',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (751,NULL,'еОХЯЙНО',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (752,NULL,'еПЦНМНЛ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (753,NULL,'еЯЕХЯР',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (754,NULL,'еЯРПЮДЕМ ОЕБЕЖ',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (755,NULL,'еРЮФЕМ НРЦНБНПМХЙ / УНРЕК',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (756,NULL,'еРХЙЕРХПНБЮВ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (757,NULL,'еРХЛНКНЦ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (758,NULL,'еРМНКНЦ',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (759,NULL,'еЖЕП МЮ ЙКХЬЕРЮ Х ЖХКХМДПХ / ОНКХЦПЮТХЪ',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (760,NULL,'фЕКЕГЮП, РЕЮРПЮКЕМ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (761,NULL,'фХБНРМНБЗД',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (762,NULL,'фХБНРМНБЗД, ДХБХ ФХБНРМХ ГЮ ЙНФХ / ТЕПЛЮ',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (763,NULL,'фХБНРМНБЗД, ДНЛЮЬМХ ФХБНРМХ ГЮ ЙНФХ',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (764,NULL,'фХБНРМНБЗД, ОКЕЛЕММХ ФХБНРМХ',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (765,NULL,'фО ОНЯПЕДМХЙ',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (766,NULL,'фСПМЮКХЯР',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (767,NULL,'фЗРБЮП',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (768,NULL,'гЮБЮКЖНБВХЙ / ОПНХГБНДЯРБН МЮ ЙНМДЕМГЮРНПХ',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (769,NULL,'гЮБЮПВХЙ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (771,NULL,'гЮБЮПВХЙ, ЦЮГНБН Х ЕКЕЙРПНДЗЦНБН ГЮБЮПЪБЮММЕ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (772,NULL,'гЮБЮПВХЙ, ЯОЕЖХЮКМХ ЛЕРНДХ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (773,NULL,'гЮБЕФДЮЫ  ДЕРЯЙХ ЪЯКХ МЮ АЧДФЕРМЮ ХГДПЗФЙЮ',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (775,NULL,'гЮБЕФДЮЫ ЮДЛХМХЯРПЮРХБЕМ НРДЕК',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (776,NULL,'гЮБЕФДЮЫ ЮДЛХМХЯРПЮРХБМЮ ЯКСФАЮ',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (777,NULL,'гЮБЕФДЮЫ ЮПУХБНУПЮМХКХЫЕ (ЙМХЦНУПЮМХКХЫЕ)',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (778,NULL,'гЮБЕФДЮЫ АЧПН ГЮ НАПЕДМХ СЯКСЦХ',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (779,NULL,'гЮБЕФДЮЫ ЙНПЮАМЮ ПЮДХНЯРЮМЖХЪ / БНДeМ РПЮМЯОНПР',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (780,NULL,'гЮБЕФДЮЫ ЙСКРСПМН-ЛЮЯНБЮ ПЮАНРЮ',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (781,NULL,'гЮБЕФДЮЫ КХВЕМ ЯЗЯРЮБ',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (782,NULL,'гЮБЕФДЮЫ ЛЮЬХМНРПЮЙРНПЕМ ОЮПЙ',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (783,NULL,'гЮБЕФДЮЫ ЛНПЯЙЮ ПЕЦХЯРПЮЖХЪ',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (784,NULL,'гЮБЕФДЮЫ МНРЮПХЮКМЮ ЯКСФАЮ',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (785,NULL,'гЮБЕФДЮЫ НАЯЕПБЮРНПХЪ',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (786,NULL,'гЮБЕФДЮЫ НАЫХМЯЙН ГДПЮБМН ГЮБЕДЕМХЕ',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (787,NULL,'гЮБЕФДЮЫ НОРХВЕМ ТХКХЮК',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (788,NULL,'гЮБЕФДЮЫ НРДЕК ЯОЕЖХЮКЕМ-цн',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (789,NULL,'гЮБЕФДЮЫ НУПЮМЮ МЮ НАЕЙРХ',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (790,NULL,'гЮБЕФДЮЫ ОПХЯРЮМ / БНДЕМ РПЮМЯОНПР',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (791,NULL,'гЮБЕФДЮЫ ПЕДЮЙЖХЪ',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (792,NULL,'гЮБЕФДЮЫ ЯЕЙРНП \"хЙНМНЛХЙЮ Х ЮМЮКХГХ\"',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (793,NULL,'гЮБЕФДЮЫ ЯХМНОРХВМЮ ЯРЮМЖХЪ',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (794,NULL,'гЮБЕФДЮЫ РЕУМХВЕЯЙЮ АЕГНОЮЯМНЯР',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (795,NULL,'гЮБЕФДЮЫ РЕУМХВЕЯЙЮ АЕГНОЮЯМНЯР Х НУПЮМЮ МЮ РПСДЮ',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (796,NULL,'гЮБЕФДЮЫ РЕУМХВЕЯЙЮ ЯКСФАЮ',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (797,NULL,'гЮБЕФДЮЫ РСПХЯРХВЕЯЙН АЧПН',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (798,NULL,'гЮБЕФДЮЫ СВЕАЕМ ЙЮАХМЕР, ПЮАНРХКМХЖЮ',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (799,NULL,'гЮЦНРБХРЕК / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (804,NULL,'гЮЙЮКВХЙ МЮ ЯРЗЙКН / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (805,NULL,'гЮЙСОВХЙ',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (807,NULL,'гЮКЕЯХРЕК',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (808,NULL,'гЮКХБЮВ / ОПНХГБНДЯРБН МЮ ЙНМДЕМГЮРНПМЮ ЛЮЯЮ',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (809,NULL,'гЮЛЕПБЮВ-НРВЕРМХЙ / ДНАХБ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',7116);
INSERT INTO `natc_clasifikator_prof` VALUES (810,NULL,'гЮЛЕЯРМХЙ-ЦЕМЕПЮКЕМ ДХПЕЙРНП / амр, амп',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (812,NULL,'гЮЛЕЯРМХЙ-ЦКЮБЕМ ОПНЙСПНП',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (813,NULL,'гЮЛЕЯРМХЙ-ЦКЮБЕМ ПЕДЮЙРНП',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (814,NULL,'гЮЛЕЯРМХЙ-ЦКЮБЕМ ЯВЕРНБНДХРЕК',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (816,NULL,'гЮЛЕЯРМХЙ-ДЕЙЮМ / БХЯЬЕ СВХКХЫЕ',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (817,NULL,'гЮЛЕЯРМХЙ-ДХПЕЙРНП / юЦЕМЖХЪ \"лХРМХЖХ\"',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (820,NULL,'гЮЛЕЯРМХЙ-ДХПЕЙРНП, мЮЖХНМЮКМЮ ЯКЕДЯРБЕМЮ ЯКСФАЮ',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (821,NULL,'гЮЛЕЯРМХЙ-ДХПЕЙРНП, ОПНХГБНДЯРБЕМЮ ДЕИМНЯР',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (823,NULL,'гЮЛЕЯРМХЙ-ЙЛЕР МЮ НАЫХМЮ',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (824,NULL,'гЮЛЕЯРМХЙ-ЛХМХЯРЗП',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (825,NULL,'гЮЛЕЯРМХЙ-ЛХМХЯРЗП-ОПЕДЯЕДЮРЕК',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (828,NULL,'гЮЛЕЯРМХЙ-МЮВЮКМХЙ, ЖЕУ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (829,NULL,'гЮЛЕЯРМХЙ-ОПЕДЯЕДЮРЕК / мЮПНДМН ЯЗАПЮМХЕ',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (830,NULL,'гЮЛЕЯРМХЙ-ОПЕДЯЕДЮРЕК / ЯОНПРЕМ ЙКСА',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (831,NULL,'гЮЛЕЯРМХЙ-ОПЕДЯЕДЮРЕК / ЯОНПРМЮ НПЦЮМХГЮЖХЪ',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (832,NULL,'гЮЛЕЯРМХЙ-ОПЕДЯЕДЮРЕК, бЗПУНБЕМ ЯЗД',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (834,NULL,'гЮЛЕЯРМХЙ-ОПЕДЯЕДЮРЕК, оЮРЕМРМН БЕДНЛЯРБН',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (835,NULL,'гЮЛЕЯРМХЙ-ОПЕДЯЕДЮРЕК, ЮДБНЙЮРЯЙЮ ЙНКЕЦХЪ',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (836,NULL,'гЮЛЕЯРМХЙ-ОПЕДЯЕДЮРЕК, ДЗПФЮБМЮ ЮЦЕМЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (837,NULL,'гЮЛЕЯРМХЙ-ОПНЙСПНП',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (838,NULL,'гЮЛЕЯРМХЙ-ПЕЙРНП / БХЯЬЕ СВХКХЫЕ',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (841,NULL,'гЮЛЕЯРМХЙ-СОПЮБХРЕК, ПЕЯРНПЮМР',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (842,NULL,'гЮМХРБЮВ / ЛЮЬХМНЯРПНЕМЕ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (843,NULL,'гЮОНИВХЙ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (844,NULL,'гЮОНИВХЙ МЮ ХЦКХ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (845,NULL,'гЮОПЕДЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (846,NULL,'гЮОПЕЯНБВХЙ МЮ ДЧГХ / ЛЕРЮКСПЦХЪ',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (847,NULL,'гЮПЕФДЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (848,NULL,'гЮПЕФДЮВ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (851,NULL,'гЮПЕФДЮВ МЮ ЯЗАХПЮВМЮ ЛЮЬХМЮ / ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (854,NULL,'гЮПЕФДЮВ, ЮАПЮГХБХ',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (859,NULL,'гЮПЕФДЮВ-ЯЗАХПЮВ, ОЕВЮРЮПЯЙЮ ЛЮЬХМЮ / ОНКХЦПЮТХЪ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (860,NULL,'гЮПЕФДЮВ-ЯЗАХПЮВ, ЯЦЗБЮВМЮ ЛЮЬХМЮ / ОНКХЦПЮТХЪ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (861,NULL,'гЮЯРПЮУНБЮРЕК',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (862,NULL,'гЮЯРПЮУНБЮРЕКЕМ ЮЦЕМР',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (863,NULL,'гЮЯРПЮУНБЮРЕКЕМ АПНЙЕП',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (864,NULL,'гЮРХКНБВХЙ / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (865,NULL,'гЮРНВБЮВ МЮ ХМЯРПСЛЕМРХ',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (866,NULL,'гЮРНВБЮВ, ДЮПЮЬЙХ ЦЮПМХРСПХ, РЕЙЯРХКМХ ЛЮЬХМХ',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (867,NULL,'гЮУЮПНБЮП, ГЮУЮПМЮ ЛЮЯЮ',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (868,NULL,'гЮВХЯРБЮВ МЮ ОПНЙЮРМЮ ОПНДСЙЖХЪ / ЛЕРЮКСПЦХЪ',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (869,NULL,'гБЕПНБЗД',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (870,NULL,'гБСЙННОЕПЮРНП',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (871,NULL,'гБСЙННОЕПЮРНП, ЯЛЕЯХРЕК МЮ ГБСЙНБЕ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (872,NULL,'гБСЙНПЕФХЯЭНП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (873,NULL,'гБСЙНРЕУМХЙ',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (874,NULL,'гДПЮБЕМ ЯОЕЖХЮКХЯР, ЕЙЯОЕПР',2229);
INSERT INTO `natc_clasifikator_prof` VALUES (875,NULL,'гЕКЕМВСЙНОПНХГБНДХРЕК',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (876,NULL,'гЕЛЕЙНОЮВ / ЯРПНХРЕКЯРБН',9313);
INSERT INTO `natc_clasifikator_prof` VALUES (877,NULL,'гЕЛЕЛЕП, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (878,NULL,'гЕЛЕЛЕП, ЯРПНХРЕКЕМ ХМФЕМЕП',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (879,NULL,'гЕЛЕСЯРПНХРЕК, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (880,NULL,'гХДЮП / ЯРПНХРЕКЯРБН',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (883,NULL,'гХДЮП, ЛНЯРНБХ ЯЗНПЗФЕМХЪ',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (884,NULL,'гХДЮПН-ЛЮГЮВ',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (885,NULL,'гННХМФЕМЕП',2213);
INSERT INTO `natc_clasifikator_prof` VALUES (886,NULL,'гННКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (887,NULL,'гННРЕУМХЙ',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (888,NULL,'гЗАНМЮПЕГБЮВ / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (889,NULL,'гЗАНРЕУМХЙ',3226);
INSERT INTO `natc_clasifikator_prof` VALUES (890,NULL,'гЗПМНОПНХГБНДХРЕК',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (891,NULL,'хЦСЛЕМ',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (892,NULL,'хГБНГБЮВ Я ФХБНРХМЯЙЮ РЪЦЮ / ДЗПБНДНАХБ',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (893,NULL,'хГЦНРБЮВ МЮ ТНПЛХ Х НРКХБЙХ / КЕЪПЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (896,NULL,'хГЦНРБХРЕК, АНХ Х КЮЙНБЕ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (898,NULL,'хГЦНРБХРЕК, БПЗГЙХ ГЮ НАСБЙХ',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (899,NULL,'хГЦНРБХРЕК, ЦПХЛ / ТЮПЛЮЖЕБРХВМН ОПНХГБНДЯРБН',8221);
INSERT INTO `natc_clasifikator_prof` VALUES (900,NULL,'хГЦНРБХРЕК, ДЮПЮФМХ ЦЮПМХРСПХ ГЮ РЕЙЯРХКМХ ЛЮЬХМХ',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (901,NULL,'хГЦНРБХРЕК, ЙНПЮАМХ НАЬХБЙХ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (902,NULL,'хГЦНРБХРЕК, ЙНПДНМХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (904,NULL,'хГЦНРБХРЕК, ЛЕРЮКЕМ ЮЛАЮКЮФ',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (906,NULL,'хГЦНРБХРЕК, НАПЮГЖХ - ЦЮКЮМРЕПХЪ',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (907,NULL,'хГЦНРБХРЕК, ОЮПТЧЛЕПХЪ Х ЙНГЛЕРХЙЮ',8221);
INSERT INTO `natc_clasifikator_prof` VALUES (911,NULL,'хГЦНРБХРЕК, ПЮГРБНПХ / УХЛХВМХ ОПНЖЕЯХ',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (912,NULL,'хГЦНРБХРЕК, ПЮГТЮЯНБВХЙ МЮ РСЬ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (913,NULL,'хГЦНРБХРЕК, ЯБПЗГЙХ, ЮАПЮГХБМХ Х ДХЮЛЮМРМХ ХГДЕКХЪ',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (914,NULL,'хГЦНРБХРЕК, ЯЛЕЯХ / УХЛХВМХ ОПНЖЕЯХ',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (915,NULL,'хГЦНРБХРЕК, ЯЛЕЯХ Х ПЮГРБНПХ ГЮ АНХ ГЮ ПХЯСБЮМЕ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (916,NULL,'хГЦНРБХРЕК, ЯРЗЙКНОКЮЯРХ',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (917,NULL,'хГЦНРБХРЕК, ЯРЗЙКНЬЮИАХ',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (918,NULL,'хГЦНРБХРЕК, РЮОХЖЕПЯЙЮ БКНФЙЮ, РЮОХЖЕП',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (919,NULL,'хГЦНРБХРЕК, РЕКЕМХ ХГДЕКХЪ / ЛЕРЮКСПЦХЪ',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (920,NULL,'хГЦНРБХРЕК, ТХПМХЯХ Х ЛЮЯКЕМ ОЮЯРЕК',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (921,NULL,'хГДЮРЕК',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (922,NULL,'хГДЮРЕК, БЕЯРМХЙ',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (923,NULL,'хГДЮРЕК, ЙМХЦХ',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (924,NULL,'хГДЮРЕК, ОЕПХНДХЙЮ',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (925,NULL,'хГДХПБЮВ МЮ ЮДПЕЯХ / ЯЗД',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (926,NULL,'хГЙНОВХЪ',9313);
INSERT INTO `natc_clasifikator_prof` VALUES (927,NULL,'хГЙСЯРБНБЕД',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (928,NULL,'хГЙЗПОБЮВ-ЦКЮДЮВ',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (929,NULL,'хГЛЕПБЮВ, ТЕПХРМХ Х ЛЮЦМХРМХ ХГДЕКХЪ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (930,NULL,'хГНКЮРНПВХЙ, РНОКХММЮ ХГНКЮЖХЪ / ЯРПНХРЕКЯРБН',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (931,NULL,'хГОХРЮРЕК',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (932,NULL,'хГОХРЮРЕК, ЛНРНПМХ ОПЕБНГМХ ЯПЕДЯРБЮ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (933,NULL,'хГОХРЮРЕК, УХДПЮБКХВМН МЮКЪЦЮМЕ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (934,NULL,'хГОЗКМХРЕК / ЮДЛХМХЯРПЮЖХЪ',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (935,NULL,'хГОЗКМХРЕК МЮ АЧДФЕРЮ',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (936,NULL,'хГОЗКМХРЕК МЮ ЛНДЕКХ / ЬХБЮЬЙН ОПНХГБНДЯРБН',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (937,NULL,'хГОЗКМХРЕК МЮ ЯОЕЖХЮКМХ ХГНКЮЖХХ / ЯРПНХРЕКЯРБН',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (938,NULL,'хГОЗКМХРЕК НАПЕДХ',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (939,NULL,'хГОЗКМХРЕК, ЛХЙПНТХКЛНБЮ РЕУМХЙЮ',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (942,NULL,'хГОЗКМХРЕК, УСДНФЕЯРБЕМН НТНПЛКЕМХЕ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (943,NULL,'хГОЗКМХРЕК, ЬНТЭНП / ЮДЛХМХЯРПЮЖХЪ',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (946,NULL,'хГОЗКМХРЕКЕМ ДХПЕЙРНП, ХГОЗКМХРЕКМЮ ДХПЕЙЖХЪ',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (948,NULL,'хГРЕЦКХБЮВ / ОПНХГБНДЯРБН МЮ ЯХМРЕРХВМХ БКЮЙМЮ',8158);
INSERT INTO `natc_clasifikator_prof` VALUES (949,NULL,'хГРЕЦКЪВ / ЛЕРЮКСПЦХЪ',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (950,NULL,'хГРЕЦКЪВ МЮ ФХЖЮ / РЕЙЯРХКМН ОПНХГБНДЯРБН',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (952,NULL,'хГВХЯКХРЕК',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (953,NULL,'хГВХЯКХРЕК-НОЕПЮРНП',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (954,NULL,'хЙНМНЛ / УНРЕК',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (955,NULL,'хЙНМНЛХЯР / УНРЕКХ Х ПЕЯРНПЮМРХ',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (956,NULL,'хЙНМНЛХЯР ОН ГЮЪБЙХ, ОНПЗВЙХ Х НРВЕР',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (957,NULL,'хЙНМНЛХЯР, ЮМЮКХРХЙ',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (958,NULL,'хЙНМНЛХЯР, ЙНМЯСКРЮМР',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (959,NULL,'хЙНМНЛХЯР, ЛЮЙПНХЙНМНЛХЙЮ',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (960,NULL,'хЙНМНЛХЯР, МЮСВЕМ ПЮАНРМХЙ',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (961,NULL,'хЙНМНЛХЯР, ОПНЦМНГХПЮМЕ Х ЯРНОЮМЯЙЮ ЕТЕЙРХБМНЯР',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (962,NULL,'хЙНМНЛХЯР, ЯРНЙНБЕД / БЗМЬМЮ РЗПЦНБХЪ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (963,NULL,'хЙНМНЛХЯР, ЯЗБЕРМХЙ',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (964,NULL,'хЙНМНЛХЯР, РПСД Х ПЮАНРМЮ ГЮОКЮРРЮ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (965,NULL,'хЙНМНЛХЯР, РЗПЦНБЯЙЮ ДЕИМНЯР',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (966,NULL,'хЙНМНЛХЯР, ЖЕМХ',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (967,NULL,'хКЧГХНМХЯР',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (968,NULL,'хКЧЯРПЮРНП, ЙМХЦХ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (969,NULL,'хЛЮЛ',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (970,NULL,'хЛОПЕЦМЮРНП / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (972,NULL,'хЛОПЕЯЮПХН',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (973,NULL,'хЛСМНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (974,NULL,'хМБЕМРЮПВХЙ',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (975,NULL,'хМБЕЯРХРНП',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (976,NULL,'хМФЕЙРЭНП / ЯНМДХПЮМЕ',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (977,NULL,'хМФЕМЕП РЕУМНКНЦ / ДЗПБННАПЮАНРБЮМЕ',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (978,NULL,'хМФЕМЕП РЕУМНКНЦ / ЙЕПЮЛХВМН ОПНХГБНДЯРБН',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (979,NULL,'хМФЕМЕП РЕУМНКНЦ / ЙНФЮПЯЙН Х НАСБМН ОПНХГБНДЯРБН',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (980,NULL,'хМФЕМЕП РЕУМНКНЦ / ОНКХЦПЮТХВЕЯЙН ОПНХГБНДЯРБН',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (981,NULL,'хМФЕМЕП РЕУМНКНЦ / ЯРПНХРЕКЯРБН',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (982,NULL,'хМФЕМЕП РЕУМНКНЦ / ЯРЗЙКНОПНХГБНДЯРБН',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (983,NULL,'хМФЕМЕП РЕУМНКНЦ / РЕЙЯРХКМН ОПНХГБНДЯРБН',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (984,NULL,'хМФЕМЕП РЕУМНКНЦ / ТЮПЛЮЖЕБРХВМН ОПНХГБНДЯРБН',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (985,NULL,'хМФЕМЕП РЕУМНКНЦ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (986,NULL,'хМФЕМЕП РЕУМНКНЦ / ЖХЛЕМРНБН ОПНХГБНДЯРБН',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (987,NULL,'хМФЕМЕП РЕУМНКНЦ / ЬХБЮЬЙН ОПНХГБНДЯРБН',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (988,NULL,'хМФЕМЕП РЕУМНКНЦ, НОЮЙНБЮМЕ МЮ ОПНДСЙЖХЪ',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (989,NULL,'хМФЕМЕП, ЮБРНЛЮРХГЮЖХЪ МЮ ОПНХГБНДЯРБНРН',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (990,NULL,'хМФЕМЕП, БНДНЯМЮАДЪБЮМЕ Х ЙЮМЮКХГЮЖХЪ',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (991,NULL,'хМФЕМЕП, ДЮКЕЙНЯЗНАЫЕМХЪ, РЕКЕБХГХЪ, ПЮДХН',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (992,NULL,'хМФЕМЕП, ДБХЦЮРЕКХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (993,NULL,'хМФЕМЕП, ЕКЕЙРПХВЕЯЙХ ЙНМРЮЙРМХ ЛПЕФХ',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (994,NULL,'хМФЕМЕП, ЕКЕЙРПХВЕЯЙХ ЛЮЬХМХ Х ЮОЮПЮРХ',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (995,NULL,'хМФЕМЕП, ЕКЕЙРПХВЕЯЙХ ОНДЯХЯРЕЛХ',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (996,NULL,'хМФЕМЕП, ЕКЕЙРПНЛЕУЮМХВМН НАНПСДБЮМЕ',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (997,NULL,'хМФЕМЕП, ЕКЕЙРПНМХЙ / ВЮЯРМЮ ОПЮЙРХЙЮ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (998,NULL,'хМФЕМЕП, ЕКЕЙРПНМХЙЮ Х ЮБРНЛЮРХЙЮ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (999,NULL,'хМФЕМЕП, ЕКЕЙРПНММХ ХМЯРПСЛЕМРХ Х ОПХАНПХ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1000,NULL,'хМФЕМЕП, ЕКЕЙРПННАГЮБЕФДЮМЕ',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1001,NULL,'хМФЕМЕП, ЕМЕПЦЕРХЙ',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1002,NULL,'хМФЕМЕП, ФО ЯРПНХРЕКЯРБН',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1003,NULL,'хМФЕМЕП, ХГЯКЕДБЮМЕ МЮ РПСДЮ',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1004,NULL,'хМФЕМЕП, ХМБЕЯРХРНПЯЙХ ЙНМРПНК',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (1005,NULL,'хМФЕМЕП, ХМДСЯРПХЮКМХ ЛЮЬХМХ Х ЯХЯРЕЛХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1006,NULL,'хМФЕМЕП, ХМЯРПСЛЕМРЮКМЮ ЕЙХОХПНБЙЮ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1008,NULL,'хМФЕМЕП, ЙНЛОЧРЗПМХ ОПХКНФЕМХЪ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1009,NULL,'хМФЕМЕП, ЙНЛОЧРЗПМХ ЯХЯРЕЛХ',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1010,NULL,'хМФЕМЕП, ЙНМЯРПСЙРНП, ЮСДХН-, БХДЕНРЕУМХЙЮ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1012,NULL,'хМФЕМЕП, ЙНМЯРПСЙРНП, ЯЮЛНКЕРНБНДЕЫХ ЯЗНПЗФЕМХЪ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1013,NULL,'хМФЕМЕП, ЙНМЯРПСЙРНП, ЯРПНХРЕКЯРБН',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1015,NULL,'хМФЕМЕП, ЙНПЮАМХ ЛЮЬХМХ Х ЛЕУЮМХГЛХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1016,NULL,'хМФЕМЕП, ЙНПЮАНЯРПНЕМЕ Х ЙНПЮАНПЕЛНМР',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1017,NULL,'хМФЕМЕП, ЙПХНЦЕМХЙ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1018,NULL,'хМФЕМЕП, ЛЮПЙЬЮИДЕП',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1020,NULL,'хМФЕМЕП, ЛЕРЮКСПЦ',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1021,NULL,'хМФЕМЕП, ЛЕУЮМХЙ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1022,NULL,'хМФЕМЕП, ЛХМЕМ',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1023,NULL,'хМФЕМЕП, ЛХММЮ ЕКЕЙРПНЛЕУЮМХЙЮ',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1024,NULL,'хМФЕМЕП, ЛХММХ ЛЮЬХМХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1025,NULL,'хМФЕМЕП, МНПЛХПНБВХЙ',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1026,NULL,'хМФЕМЕП, НАНЦЮРЪБЮМЕ  МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1027,NULL,'хМФЕМЕП, НОРХВМЮ ЮОЮПЮРСПЮ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1028,NULL,'хМФЕМЕП, НЯБЕРХРЕКМЮ РЕУМХЙЮ',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1029,NULL,'хМФЕМЕП, НТЕПРХ Х ЖЕМХ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1030,NULL,'хМФЕМЕП, НЖЕМЪБЮМЕ МЮ ХЛНРХ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1031,NULL,'хМФЕМЕП, НВХЯРБЮМЕ МЮ БНДЮ',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1032,NULL,'хМФЕМЕП, ОЮПМХ Х БНДНЦПЕИМХ ЙНРКХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1033,NULL,'хМФЕМЕП, ОЮРЕМРНБЕД',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1034,NULL,'хМФЕМЕП, ОНДДЗПФЮМЕ МЮ ехр',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1036,NULL,'хМФЕМЕП, ОПНЕЙРЮМР, ДЮКЕЙНЯЗНАЫЕМХЪ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1037,NULL,'хМФЕМЕП, ОПНХГБНДЯРБЕМЮ ЕТЕЙРХБМНЯР',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1038,NULL,'хМФЕМЕП, ОПНХГБНДЯРБЕМХ ЯХЯРЕЛХ Х ПНАНРХ',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1040,NULL,'хМФЕМЕП, ОПНЛХЬКЕМН Х ЦПЮФДЮМЯЙН ЯРПНХРЕКЯРБН',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1041,NULL,'хМФЕМЕП, ОЗРМН ЯРПНХРЕКЯРБН',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1042,NULL,'хМФЕМЕП, ПЮГБХРХЕ Х БМЕДПЪБЮМЕ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1044,NULL,'хМФЕМЕП, ПЕКЕИМЮ ГЮЫХРЮ',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1045,NULL,'хМФЕМЕП, ПНАНРХЙЮ',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1046,NULL,'хМФЕМЕП, ПСДМХВМЮ БЕМРХКЮЖХЪ Х ЮЕПНДХМЮЛХЙЮ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1047,NULL,'хМФЕМЕП, ЯЮЛНКЕРНБНДЕЫХ ЯЗНПЗФЕМХЪ',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (1048,NULL,'хМФЕМЕП, ЯЮЛНКЕРНЯРПНЕМЕ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1049,NULL,'хМФЕМЕП, ЯЮМХРЮПМН ЯРПНХРЕКЯРБН',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1050,NULL,'хМФЕМЕП, ЯЕКЯЙНЯРНОЮМЯЙН ЛЮЬХМНЯРПНЕМЕ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1051,NULL,'хМФЕМЕП, ЯЛЮГНВМХ ЯХЯРЕЛХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1052,NULL,'хМФЕМЕП, ЯНМДЮФМХ ЛЮЬХМХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1053,NULL,'хМФЕМЕП, ЯНТРСЕП',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1054,NULL,'хМФЕМЕП, ЯРПНХРЕКЕМ',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1055,NULL,'хМФЕМЕП, ЯРПНХРЕКЯРБН БЗБ БНДЮ',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1056,NULL,'хМФЕМЕП, РЕКЕЙНЛСМХЙЮЖХХ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1057,NULL,'хМФЕМЕП, РЕУМХВЕЯЙЮ АЕГНОЮЯМНЯР',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1058,NULL,'хМФЕМЕП, РСМЕКМН ЯРПНХРЕКЯРБН',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1059,NULL,'хМФЕМЕП, РСПАХМХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1060,NULL,'хМФЕМЕП, УЮПДСЕП',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1061,NULL,'хМФЕМЕП, УХДПЮБКХВМХ Х ОМЕБЛЮРХВМХ ЛЮЬХМХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1062,NULL,'хМФЕМЕП, УХДПНЕМЕПЦХИМН ЯРПНХРЕКЯРБН',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1063,NULL,'хМФЕМЕП, УХДПНКНЦ',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1064,NULL,'хМФЕМЕП, УХДПНЛЕКХНПЮРХБМН ЯРПНХРЕКЯРБН',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1065,NULL,'хМФЕМЕП, УХЛХВЕЯЙХ ОПНЖЕЯХ',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1066,NULL,'хМФЕМЕП-УХЛХЙ',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1067,NULL,'хМЙЮЯЮРНП, ЛНМЕРМХ РЕКЕТНММХ ЮОЮПЮРХ / арй',9155);
INSERT INTO `natc_clasifikator_prof` VALUES (1068,NULL,'хМЙЮЯЮРНП, МЕОКЮРЕМХ ЯЛЕРЙХ',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1071,NULL,'хМЙЮЯЮРНП, ОКЮЫЮМХЪ',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1072,NULL,'хМЙЮЯЮРНП-ЙЮЯХЕП, ЕКЕЙРПНЕМЕПЦХЪ',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1073,NULL,'хМЯОЕЙРНП / бХй',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (1074,NULL,'хМЯОЕЙРНП / АЮМЙЮ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1075,NULL,'хМЯОЕЙРНП / БЗГДСЬeМ РПЮМЯОНПР',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (1076,NULL,'хМЯОЕЙРНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (1077,NULL,'хМЯОЕЙРНП МЮ НПЙЕЯРЗП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1078,NULL,'хМЯОЕЙРНП МЮ УНП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1080,NULL,'хМЯОЕЙРНП ОН ЙЮДПХ',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (1081,NULL,'хМЯОЕЙРНП ОН ЙЮВЕЯРБНРН, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1082,NULL,'хМЯОЕЙРНП ОН РПСДЮ',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (1083,NULL,'хМЯОЕЙРНП ОН СВЕАМЮ ПЮАНРЮ / НАПЮГНБЮМХЕ',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (1084,NULL,'хМЯОЕЙРНП, БЮЦНМЕМ / ФО РПЮМЯОНПР',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1086,NULL,'хМЯОЕЙРНП, ЦПЮФДЮМЯЙЮ НРАПЮМЮ',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (1087,NULL,'хМЯОЕЙРНП, ЕКЕЙРПНГЮУПЮМБЮМЕ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (1088,NULL,'хМЯОЕЙРНП, ГДПЮБМН НЯХЦСПЪБЮМЕ',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1089,NULL,'хМЯОЕЙРНП, ЙНМРПНК МЮ ПЕЬЕМХЪРЮ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1090,NULL,'хМЯОЕЙРНП, КХЖЕМГХХ (ПЮГПЕЬЕМХЪ)',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1091,NULL,'хМЯОЕЙРНП, КХВЕМ ЯЗЯРЮБ',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (1092,NULL,'хМЯОЕЙРНП, КНЙНЛНРХБЕМ / ФО РПЮМЯОНПР',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1093,NULL,'хМЯОЕЙРНП, ЛХРМХВЕЯЙХ',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1095,NULL,'хМЯОЕЙРНП, НУПЮМЮ МЮ РПСДЮ',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1096,NULL,'хМЯОЕЙРНП, ОЕМЯХНММН ДЕКН',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1097,NULL,'хМЯОЕЙРНП, ОНФЮПМЮ АЕГНОЮЯМНЯР МЮ НАНПСДБЮМЕ',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (1098,NULL,'хМЯОЕЙРНП, ОПЕБНГМХ АПХЦЮДХ / ФО РПЮМЯОНПР',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1099,NULL,'хМЯОЕЙРНП, ОПНРХБНОНФЮПМЮ НУПЮМЮ / ЯЦПЮДЮ',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (1100,NULL,'хМЯОЕЙРНП, ОПНТЕЯХНМЮКМЮ ПЕУЮАХКХРЮЖХЪ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1101,NULL,'хМЯОЕЙРНП, ПЮАНРМЮ ЯХКЮ Х ОЕМЯХНМХПЮМЕ',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1102,NULL,'хМЯОЕЙРНП, ПЮАНРМЮ ЯПЕДЮ',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1103,NULL,'хМЯОЕЙРНП, ЯЮМХРЮПЕМ',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (1104,NULL,'хМЯОЕЙРНП, ЯНЖХЮКМН ОНДОНЛЮЦЮМЕ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1105,NULL,'хМЯОЕЙРНП, РЕУМХВЕЯЙЮ АЕГНОЮЯМНЯР',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1107,NULL,'хМЯОЕЙРНП, РЕУМХВЕЯЙХ ЙНМРПНК Х ЛЕРПНКНЦХЪ',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1108,NULL,'хМЯОЕЙРНП, РЕУМХВЕЯЙХ МЮДГНП',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1109,NULL,'хМЯОЕЙРНП, РПСДНБЮ АНПЯЮ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1110,NULL,'хМЯОЕЙРНП, РПСДНСЯРПНЪБЮМЕ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1111,NULL,'хМЯРПСЙРНП / БНДeМ РПЮМЯОНПР',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (1112,NULL,'хМЯРПСЙРНП / БЗГДСЬeМ РПЮМЯОНПР',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (1113,NULL,'хМЯРПСЙРНП / ФО РПЮМЯОНПР',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1114,NULL,'хМЯРПСЙРНП МЮ БНДЮВХ МЮ ЛНРНПМХ ОПЕБНГМХ ЯПЕДЯРБЮ',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1115,NULL,'хМЯРПСЙРНП ОН СОПЮБКЕМХЕ МЮ ОКЮБЮРЕКЕМ ЯЗД ДН 10 Р',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1116,NULL,'хМЯРПСЙРНП ОН СОПЮБКЕМХЕ МЮ ОКЮРМНУНД',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1117,NULL,'хМЯРПСЙРНП, ДХЕРХВМН УПЮМЕМЕ',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (1118,NULL,'хМЯРПСЙРНП, ЯОНПРЕМ',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (1119,NULL,'хМЯРПСЛЕМРЮКХЯР, ЯНКХЯР',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1121,NULL,'хМЯРПСЛЕМРЮКВХЙ, ЬКНЯЕП',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1122,NULL,'хМТНПЛЮРХЙ / ВЮЯРМЮ ОПЮЙРХЙЮ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1123,NULL,'хМТНПЛЮРНП - АХАКХНЦПЮТ',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1124,NULL,'хМТНПЛЮРНП / ЛСГЕИ, УСДНФЕЯРБЕМЮ ЦЮКЕПХЪ',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1125,NULL,'хМТНПЛЮРНП / РСПХЯРХВЕЯЙЮ ЮЦЕМЖХЪ',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1126,NULL,'хМТНПЛЮРНП, ОПХЕЛМЮ / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1127,NULL,'хМТНПЛЮРНП, ОПНОСЯЙХ / НАЫЕФХРХЕ',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1128,NULL,'хМТНПЛЮРНП, ОЗРСБЮМХЪ / БЗГДСЬЕМ РПЮМЯОНПР',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1129,NULL,'хМТНПЛЮРНП, ОЗРСБЮМХЪ / ФО РПЮМЯОНПР',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1130,NULL,'хМТНПЛЮРНП-ПЕЦХЯРПЮРНП / АНКМХВМН ГЮБЕДЕМХЕ',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1131,NULL,'хМТНПЛЮРНП-ПЕЦХЯРПЮРНП / ОНКХЙКХМХЙЮ',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1132,NULL,'хЯРНПХЙ',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (1133,NULL,'хЯРНПХЙ, МЮСВЕМ ПЮАНРМХЙ',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (1134,NULL,'хУРХНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1135,NULL,'йЮАЕКЕМ ЛСТЮДФХЪ / ЕМЕПЦЕРХЙЮ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1136,NULL,'йЮДПНБХ БНЕММНЯКСФЮЫ / бЗНПЗФЕМХ ЯХКХ',1);
INSERT INTO `natc_clasifikator_prof` VALUES (1137,NULL,'йЮДПНБХЙ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1138,NULL,'йЮКЮИДФХЪ',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1139,NULL,'йЮКЮМДПХЯР / ОПНХГБНДЯРБН МЮ ЙЮСВСЙНБХ ХГДЕКХЪ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (1140,NULL,'йЮКЮМДПХЯР / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (1141,NULL,'йЮКХАПНБВХЙ, ОПЕЖХГМХ ХМЯРПСЛЕМРХ',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1143,NULL,'йЮКХАПНБВХЙ, РЕКЕМХ ХГДЕКХЪ / ЛЕРЮКСПЦХЪ',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (1144,NULL,'йЮКХАПНБВХЙ, ЬЮАКНМХ НР ДЗПБН',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1145,NULL,'йЮКХЦПЮТ',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (1146,NULL,'йЮКЙСКЮМР',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (1147,NULL,'йЮКЙСКЮМР - ДНЛЮЙХМ, НАЫЕЯРБЕМН УПЮМЕМЕ',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (1148,NULL,'йЮКНБЮДЮВ',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1149,NULL,'йЮКНКЕВХРЕК',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1150,NULL,'йЮЛЕМЮП / ДНАХБ МЮ ЯЙЮКМХ ЛЮРЕПХЮКХ',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (1151,NULL,'йЮЛЕМН-ЛНМРЮФМХЙ / ЯРПНХРЕКЯРБН',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1152,NULL,'йЮЛЕМНДЕКЕЖ, ЯЙСКОРСПМХ ОПНХГБЕДЕМХЪ',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (1153,NULL,'йЮЛЕПХЕП, КХВЕМ',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (1154,NULL,'йЮЛЕПХЕП, УНРЕК',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (1155,NULL,'йЮЛЕПХЕПЙЮ',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (1156,NULL,'йЮМЮКДФХЪ',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1157,NULL,'йЮМЮКНЙНОЮРЕК-ЙЮМЮКНВХЯРЮВ, ЛЮЬХМХЯР',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1158,NULL,'йЮМРЮПДФХЪ / ЯЙКЮД',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (1159,NULL,'йЮМРЮПДФХЪ, НРВЕРМХЙ',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1160,NULL,'йЮМРНМЕП / ФО РПЮМЯОНПР',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (1161,NULL,'йЮОЕКЮМ',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (1162,NULL,'йЮОХРЮМ / ЙНПЮА',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1163,NULL,'йЮОХРЮМ / ОКЮБЮРЕКЕМ ЯЗД',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1164,NULL,'йЮОХРЮМ-ОХКНР / ОКЮБЮРЕКЕМ ЯЗД',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1165,NULL,'йЮПНРЮФЕМ ЕКЕЙРПНЛНМРЭНП / ЦЕНКНФЙХ ОПНСВБЮМХЪ',7115);
INSERT INTO `natc_clasifikator_prof` VALUES (1166,NULL,'йЮПРНЦПЮТ',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1167,NULL,'йЮПРНЦПЮТ-ВЕПРНФМХЙ',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1169,NULL,'йЮПРННТНПЛХРЕК МЮ ЯРЕММХ, ПЕКЕТМХ ЙЮПРХ Х ЦКНАСЯХ',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (1170,NULL,'йЮПРНРЕЙЮП',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1171,NULL,'йЮПСЖЮП',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (1172,NULL,'йЮЯХЕП (ЙЮКЙСКЮМР) / НАЫЕЯРБЕМН УПЮМЕМЕ (ЯРНК)',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1173,NULL,'йЮЯХЕП / АЕМГХМНЯРЮМЖХЪ',4219);
INSERT INTO `natc_clasifikator_prof` VALUES (1174,NULL,'йЮЯХЕП / ЙЮГХМН',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1175,NULL,'йЮЯХЕП / ЛЮЦЮГХМ',4212);
INSERT INTO `natc_clasifikator_prof` VALUES (1176,NULL,'йЮЯХЕП / ПЕЯРНПЮМР',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1177,NULL,'йЮЯХЕП МЮ ЦХЬЕ / АЮМЙЮ',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1178,NULL,'йЮЯХЕП МЮ ЦХЬЕ / ОНЫЮ',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1179,NULL,'йЮЯХЕП МЮ ЦХЬЕ ГЮ ГЮКЮЦЮМХЪ',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1180,NULL,'йЮЯХЕП МЮ ЦХЬЕ, РЕКЕТНМН-РЕКЕЦПЮТЕМ',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1181,NULL,'йЮЯХЕП, АХКЕРНОПНДЮБЮВ',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (1182,NULL,'йЮЯХЕП, ЦКЮБЕМ',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (1183,NULL,'йЮЯХЕП, ДЮМЗВМХ ОПХУНДХ',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (1184,NULL,'йЮЯХЕП, ГЮКНФМЮ ЙЗЫЮ',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (1185,NULL,'йЮЯХЕП, ХГОЗКМХРЕК МЮ АЧДФЕРЮ',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (1186,NULL,'йЮЯХЕП, ХМЙЮЯЮРНП (БНДЮ, РНОКНЕМЕПЦХЪ)',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1187,NULL,'йЮЯХЕП, ЛЮПЙХПНБВХЙ (ЙСБЕПРХ) / НАЫЕЯРБЕМН УПЮМЕМЕ',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1188,NULL,'йЮЯХЕП, НАЛЕМХРЕК МЮ БЮКСРЮ',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (1189,NULL,'йЮЯХЕП, ОПНДЮБЮВ МЮ АХКЕРХ',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (1190,NULL,'йЮЯХЕП, ЯВЕРНБНДЯРБН',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1191,NULL,'йЮЯХЕП, РЕКЕТНМН-РЕКЕЦПЮТМЮ ЕЙЯОКНЮРЮЖХЪ',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1192,NULL,'йЮЯХЕП-ДНЛЮЙХМ',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1193,NULL,'йЮЯХЕП-ЙЮКЙСКЮМР',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1194,NULL,'йЮЯХЕП-ЛЮЬХМНОХЯЕЖ',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1195,NULL,'йЮЯХЕП-ОКЮРЕЖ',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1196,NULL,'йЮЯХЕП-ЯЗРПСДМХЙ',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1198,NULL,'йЮРНДВХЙ / ЛЕРЮКСПЦХЪ',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1199,NULL,'йЮВЕЯРБЕМ ЙНМРПНКЭНП',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1201,NULL,'йБЮКХТХЖХПЮМ РЗЙЮВ',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (1202,NULL,'йБЕЯРНП / мЮПНДМН ЯЗАПЮМХЕ',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (1203,NULL,'йЕЯНМЕМ ЮОЮПЮРВХЙ',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1204,NULL,'йЕЯНМЕМ ПЮАНРМХЙ',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1205,NULL,'йХКХЛЮП',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (1206,NULL,'йХМЕГХРЕПЮОЕБР / ТХРМЕЯ ЖЕМРЗП',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1207,NULL,'йХМЕГХРЕПЮОЕБР, БХЯЬЕ НАПЮГНБЮМХЕ',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1208,NULL,'йХМЕГХРЕПЮОЕБР, ЙСПНПРНКНЦХЪ',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1209,NULL,'йХМЕГХРЕПЮОЕБР, ЯОНПР',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1210,NULL,'йХМНЛЕУЮМХЙ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1211,NULL,'йХМНПЮАНРМХЙ',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (1212,NULL,'йХЯКНПНДВХЙ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1213,NULL,'йКЮБХЮРСПХЯР МЮ ПЕКЕТМН-МЮАНПМЮ ЮГАСЙЮ',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1214,NULL,'йКЮБХЮРСПХЯР, МЮАНПМХ ЛЮЬХМХ / ОНКХЦПЮТХЪ',8251);
INSERT INTO `natc_clasifikator_prof` VALUES (1215,NULL,'йКХЛЮРНКНЦ',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (1216,NULL,'йКНСМ',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (1217,NULL,'йЛЕР, ЙЛЕРЯРБН',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1218,NULL,'йЛЕР, НАЫХМЮ',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1219,NULL,'йЛЕРЯЙХ МЮЛЕЯРМХЙ / НАЫХМЮ',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1220,NULL,'йМХЦНБЕД',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1221,NULL,'йМХЦНБЕГЕЖ / ОНКХЦПЮТХЪ',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1222,NULL,'йМХЦНБЕГЕЖ, ЛЮЬХМХЯР / ОНКХЦПЮТХЪ',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (1223,NULL,'йМХЦНБЕГЕЖ, ПЕГЮВ МЮ МНФ / ОНКХЦПЮТХЪ',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1224,NULL,'йМХЦНБЕГЕЖ-ОНДБЗПГБЮВ (аПЮИКНБЮ ЮГАСЙЮ)',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1225,NULL,'йМХЦНБНДХРЕК, БОХЯБЮМХЪ / ЯЗД',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1226,NULL,'йМХЦНБНДХРЕК, ЯВЕРНБНДЯРБН',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1227,NULL,'йМХФЮП',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (1228,NULL,'йНБЮВ',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1229,NULL,'йНБЮВ, ФЕКЕГЮП',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1230,NULL,'йНБЮВ, ТХМЮ АХФСРЕПХЪ Я ЙЮЛЗМХ Х ОЕПКХ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1231,NULL,'йНБВЕФМХЙ / АЮМЙЮ',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1232,NULL,'йНФЮП',7451);
INSERT INTO `natc_clasifikator_prof` VALUES (1234,NULL,'йНФСУЮП',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (1235,NULL,'йНГЛЕРХЙ',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (1236,NULL,'йНЙЯНЯНПРХПНБЮВ / ЙНЙЯНБН ОПНХГБНДЯРБН',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (1237,NULL,'йНКЮП',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (1238,NULL,'йНКАЮЯЮП  / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (1240,NULL,'йНКНМХЯР / ПЕДЮЙЖХЪ, ХГДЮРЕКЯРБН',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1241,NULL,'йНКНПХЯР / ОНКХЦПЮТХЪ',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (1242,NULL,'йНЛЮМДХП-ОХКНР / ЯЮЛНКЕР',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1243,NULL,'йНЛАЮИМЕП',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (1244,NULL,'йНЛЕМДЮМР, БЗНПЗФЕМЮ НУПЮМЮ',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (1245,NULL,'йНЛЕМРЮРНП',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1246,NULL,'йНЛЕМРЮРНП, МНБХМХ, ЯОНПР',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1247,NULL,'йНЛХМДФХЪ, ЯРНЛЮМНАЕРНММХ ОПНЛХЬКЕМХ ЙНЛХМХ',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (1248,NULL,'йНЛХМНВХЯРЮВ',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (1249,NULL,'йНЛХЯХНМЕП, ЙНПЮАХ',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (1250,NULL,'йНЛОЮМЭНМ',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (1251,NULL,'йНЛОЮМЭНМЙЮ-ОЮПРМЭНП / АХРНБХ СЯКСЦХ МЮ СКХЖЮРЮ',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (1252,NULL,'йНЛОЮСМДХПНБВХЙ / УХЛХВМХ ОПНЖЕЯХ',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1253,NULL,'йНЛОКЕЙЯЕМ СОПЮБХРЕК / НАЫЕЯРБЕМН УПЮМЕМЕ',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (1254,NULL,'йНЛОКЕЙРНБЮВ МЮ ЛЕАЕКЕМ НАЙНБ, ЛЕАЕКХЯР',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1255,NULL,'йНЛОКЕЙРНБЮВ-ГЮПЕФДЮВ / ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1256,NULL,'йНЛОКЕЙРНБЮВ-ГЮПЕФДЮВ / ЬХБЮЬЙН ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1257,NULL,'йНЛОКЕЙРНБВХЙ, ЮПУХБ (жрю)',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1258,NULL,'йНЛОКЕЙРНБВХЙ, ЯМЮАДХРЕК',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1259,NULL,'йНЛОНГХРНП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1260,NULL,'йНЛОПЕЯНПХЯР',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1261,NULL,'йНМБЕПРНПВХЙ / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (1262,NULL,'йНМДСЙРНП / БЗФЕМЮ КХМХЪ',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1263,NULL,'йНМДСЙРНП / ЦПЮДЯЙХ РПЮМЯОНПР',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1264,NULL,'йНМДСЙРНП / ФО РПЮМЯОНПР',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1265,NULL,'йНМДСЙРНП / ОЗРМХВЕЯЙХ ЛЕФДСЯЕКХЫЕМ РПЮМЯОНПР',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1266,NULL,'йНМДСЙРНП / ТЕПХАННР',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1267,NULL,'йНМЕБЗД',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (1268,NULL,'йНМЕЦКЕДЮВ',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (1269,NULL,'йНМЯЕПБЮРНП-ПЕЯРЮБПЮРНП, ЮПУХБМХ ТНМДНБЕ',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (1270,NULL,'йНМЯЕПБЮРНП-ПЕЯРЮБПЮРНП, ОЮЛЕРМХЖХ МЮ ЙСКРСПЮРЮ',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (1272,NULL,'йНМЯРХРСЖХНМЕМ ЯЗДХЪ / йНМЯРХРСЖХНМЕМ ЯЗД',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (1273,NULL,'йНМЯРПСЙРНП ЛЮЬХМЕМ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1274,NULL,'йНМЯРПСЙРНП МЮ ЛЮЬХММХ ВЮЯРХ Х ДЕРЮИКХ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1275,NULL,'йНМЯРПСЙРНП, ХМФЕМЕП, ЕКЕЙРПНМХЙЮ Х ЮБРНЛЮРХЙЮ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1276,NULL,'йНМЯРПСЙРНП, ЙЕПЮЛХВМХ ХГДЕКХЪ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1277,NULL,'йНМЯРПСЙРНП, ЙСЙКХ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1278,NULL,'йНМЯРПСЙРНП, ЛЮЬХМЕМ ХМФЕМЕП',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1279,NULL,'йНМЯРПСЙРНП, ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (1280,NULL,'йНМЯРПСЙРНП, НАКЕЙКН Х ЛНДЕКХ',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1281,NULL,'йНМЯРПСЙРНП, ОПНХГБНДЯРБЕМХ ЯХЯРЕЛХ Х ПНАНРХ',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1282,NULL,'йНМЯРПСЙРНП, ЯРПНХРЕКЕМ ХМФЕМЕП',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1283,NULL,'йНМЯСК / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ (лбМп)',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1284,NULL,'йНМЯСКРЮМР - КЕЙЮП, ГДПЮБМН НЯХЦСПЪБЮМЕ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1285,NULL,'йНМЯСКРЮМР, БПЗГЙХ Я ЛЕДХХРЕ',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1286,NULL,'йНМЯСКРЮМР, ДПЮЛЮРСПЦХВЕМ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1287,NULL,'йНМЯСКРЮМР, ЕТЕЙРХБМНЯР МЮ АХГМЕЯЮ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1288,NULL,'йНМЯСКРЮМР, ГЮЯРПЮУНБЮРЕКМХ ОНКХЖХ',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (1289,NULL,'йНМЯСКРЮМР, ХЙНМНЛХЙЮ',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (1290,NULL,'йНМЯСКРЮМР, ЙНЛОЧРЗПМХ ЯХЯРЕЛХ',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1292,NULL,'йНМЯСКРЮМР, ОПНСВБЮМЕ МЮ ОЮГЮПХ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1293,NULL,'йНМЯСКРЮМР, ПЕЙКЮЛЮ',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1294,NULL,'йНМЯСКРЮМР, ЯНТРСЕП',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1295,NULL,'йНМЯСКРЮМР, РЮПХТХ, РЮЙЯХ',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (1296,NULL,'йНМЯСКРЮМР, РПСДНБЮ ГЮЕРНЯР',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1297,NULL,'йНМЯСКРЮМР, РЗПЦНБЕ',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (1298,NULL,'йНМЯСКРЮМР, РЗПЦНБХЪ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1299,NULL,'йНМЯСКРЮМР, ТЮПЛЮЖЕБР',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (1300,NULL,'йНМЯСКРЮМР, ТХМЮМЯХ Х ЯВЕРНБНДЯРБН',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1301,NULL,'йНМЯСКРЮМР, УПЮМЕМЕ',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (1302,NULL,'йНМЯСКРЮМР-ОПНЦМНЯРХЙ',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (1303,NULL,'йНМРПЮЙРНБ ЛЕМХДФЗП',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1304,NULL,'йНМРПНКЕМ ЯОЕЖХЮКХЯР, ПЕГЕПБМХ ВЮЯРХ Х НАНПСДБЮМЕ',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1305,NULL,'йНМРПНКЭНП / ЦПЮДЯЙХ РПЮМЯОНПР',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1306,NULL,'йНМРПНКЭНП / ДПСФЕЯРБН ОН рг (еюд, еннд)',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (1307,NULL,'йНМРПНКЭНП / ЛЕРПН',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1308,NULL,'йНМРПНКЭНП Б цяя',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1309,NULL,'йНМРПНКЭНП МЮ ЛЮРЕПХЮКХ  / ЬХБЮЬЙН ОПНХГБНДЯРБН',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (1310,NULL,'йНМРПНКЭНП МЮ ЯРНЙННАНПНР',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1311,NULL,'йНМРПНКЭНП ОН ДБХФЕМХЕРН / ФО РПЮМЯОНПР',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1312,NULL,'йНМРПНКЭНП ОН ЙЮВЕЯРБН',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1315,NULL,'йНМРПНКЭНП, ЕЙНКНЦХЪ',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1316,NULL,'йНМРПНКЭНП, ЕЙЯОЕДХЖХЪ МЮ ОПНДСЙЖХЪРЮ',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1317,NULL,'йНМРПНКЭНП, ЙНДХПЮМЕ',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (1318,NULL,'йНМРПНКЭНП, МЮДГНПМХ ЯЗНПЗФЕМХЪ / ЕМЕПЦЕРХЙЮ',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1319,NULL,'йНМРПНКЭНП, НАКЕЙКН, ЬЕБМХ ХГДЕКХЪ',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (1320,NULL,'йНМРПНКЭНП, НАПЮАНРЙЮ МЮ ДЮММХ',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (1321,NULL,'йНМРПНКЭНП, ОНЫЕМЯЙХ / ЯЗНАЫЕМХЪ',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (1322,NULL,'йНМРПНКЭНП, ОПХУНДХ',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (1324,NULL,'йНМРПНКЭНП, ПНАНРХ',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (1325,NULL,'йНМРПНКЭНП, ЯНПРХПЮМЕ МЮ ДНЙСЛЕМРХ',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (1326,NULL,'йНМРПНКЭНП, РЕУМХВЕЯЙХ ЙНМРПНК',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1327,NULL,'йНМРПНКЭНП, УХЦХЕМЮ МЮ РПСДЮ',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1328,NULL,'йНМРСПХЯР',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1329,NULL,'йНМТЕДЕПЮКЕМ ЯЕЙПЕРЮП / ЯХМДХЙЮР',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (1330,NULL,'йНМТЕЙЖХНМЕП / ОПНХГБНДЯРБН МЮ ЙНФЕМЮ ЦЮКЮМРЕПХЪ',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (1331,NULL,'йНМТЕЙЖХНМЕП / РЕЙЯРХКМН ОПНХГБНДЯРБН',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1333,NULL,'йНМТЕЙЖХНМЕП МЮ ЛЮЬХМЮ / ОПНХГБНДЯРБН МЮ НАСБЙХ',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (1334,NULL,'йНМТЕЙЖХНМЕП, ДХПЕЙРМН ЙНОХПНБЮКМЮ УЮПРХЪ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1335,NULL,'йНМТЕЙЖХНМЕП, ЙНФЕМН НАКЕЙКН',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (1336,NULL,'йНМТЕЙЖХНМЕП, ЙСТЮПХ Х ВЮМРХ',7452);
INSERT INTO `natc_clasifikator_prof` VALUES (1337,NULL,'йНМТЕЙЖХНМЕП, КЕМРХ ГЮ ОХЬЕЫХ ЛЮЬХМХ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1338,NULL,'йНМТЕПЮМЯХЕ',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (1339,NULL,'йНМЖЕПРХПЮЫ ЮПРХЯР, ЯНКХЯР Х ЙЮЛЕПЕМ ХГОЗКМХРЕК',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1340,NULL,'йНМЖЕПРЛЮИЯРНП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1341,NULL,'йННПДХМЮРНП / ОПНХГБНДЯРБН',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (1342,NULL,'йННПДХМЮРНП / ОПНХГБНДЯРБН МЮ НОРХВМХ ХМЯРПСЛЕМРХ',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (1343,NULL,'йННПДХМЮРНП / ЯРПНХРЕКЯРБН',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (1344,NULL,'йННПДХМЮРНП / РЕКЕБХГХЪ Х ПЮДХН (амр)',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (1345,NULL,'йННПДХМЮРНП, БПЗГЙХ Я НАЫЕЯРБЕМНЯРРЮ',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1346,NULL,'йННПДХМЮРНП, ДЮКЕЙНЯЗНАЫЕМХЪ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (1347,NULL,'йННПДХМЮРНП, ДХЯРПХАСРНПЯЙЮ ЛПЕФЮ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1348,NULL,'йННПДХМЮРНП, ЙЮПХЕПМН ПЮГБХРХЕ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1349,NULL,'йННПДХМЮРНП, ЛЕФДСМЮПНДМХ ОПНЦПЮЛХ',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1350,NULL,'йННПДХМЮРНП, ПЕЙКЮЛЮ',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1351,NULL,'йННПДХМЮРНП, РСПНОЕПЮРНП',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1352,NULL,'йНОХПНБЮВ',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1353,NULL,'йНОХЯР, ТХКЛНБХ ЛЮРЕПХЮКХ',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (1354,NULL,'йНПЮАЕМ ЮЦЕМР',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (1355,NULL,'йНПЮАЕМ ЦКЮБЕМ ЦНРБЮВ',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1356,NULL,'йНПЮАЕМ ЦНРБЮВ',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1357,NULL,'йНПЮАЕМ ДНЛЮЙХМ / БНДЕМ РПЮМЯОНПР',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1359,NULL,'йНПЮАЕМ ЕКЕЙРПНМХЙ',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1360,NULL,'йНПЮАЕМ ЕКЕЙРПНРЕУМХЙ',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1361,NULL,'йНПЮАЕМ ХГЦНРБХРЕК, РПЗАМХ ХМЯРЮКЮЖХХ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1362,NULL,'йНПЮАЕМ ХГНКЮРНПВХЙ',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (1363,NULL,'йНПЮАЕМ ЙЮЛЕПХЕП / БНДЕМ РПЮМЯОНПР',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1364,NULL,'йНПЮАЕМ ЙНПЛВХЪ',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1365,NULL,'йНПЮАЕМ ЛЮЬХМХЯР',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1366,NULL,'йНПЮАЕМ ЛЕУЮМХЙ',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1367,NULL,'йНПЮАЕМ НЦМЪП',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (1368,NULL,'йНПЮАЕМ ОНЛОХЕП',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1369,NULL,'йНПЮАЕМ ПЮДХНРЕКЕЦПЮТХЯР',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1370,NULL,'йНПЮАЕМ ПЮДХНРЕКЕЦПЮТХЯР-ПЮДХНРЕКЕТНМХЯР',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1371,NULL,'йНПЮАЕМ ПЮГЙПНИВХЙ МЮ ЙЮАЕКХ / ЙНПЮАНЯРПНЕМЕ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1372,NULL,'йНПЮАЕМ ТНПЛНБВХЙ, ЯРЗЙКНОКЮЯРМХ ЙНМЯРПСЙЖХХ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1373,NULL,'йНПЮАЕМ УКЕАЮП',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1374,NULL,'йНПЮАНЛНДЕКХЯР',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1375,NULL,'йНПЕЙРНП / ПЕДЮЙЖХЪ, ХГДЮРЕКЯРБН',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1377,NULL,'йНПЕЙРНП, РЕКЕТНММХ СЯКСЦХ',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (1378,NULL,'йНПЕЙРНП-ЯРХКХЯР / ПЕДЮЙЖХЪ, ХГДЮРЕКЯРБН',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1379,NULL,'йНПЕОЕРХРНП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1380,NULL,'йНПЕЯОНМДЕМР / ПЮДХН, РЕКЕБХГХЪ, арю',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1381,NULL,'йНПЕЯОНМДЕМР-ОПЕБНДЮВ, ЯОЕЖХЮКХЯР',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (1382,NULL,'йНПМХПНБЮВ / ОНКХЦПЮТХЪ',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (1383,NULL,'йНПНАЕКЮВ / ДЗПБННАПЮАНРБЮМЕ',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (1384,NULL,'йНПОСЯМХЙ / ЙНПЮАНЯРПНЕМЕ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1385,NULL,'йНПОСЯМХЙ, ЙНПЮАМХ ЯРЗЙКНОКЮЯРНБХ ЙНМЯРПСЙЖХХ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1386,NULL,'йНРКНВХЯРЮВ / ЕМЕПЦЕРХЙЮ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1387,NULL,'йНРКЪП / ЛЮЬХМНЯРПНЕМЕ',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (1388,NULL,'йНТЮДФХЪ / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (1389,NULL,'йНТПЮФХЯР-АЕРНМДФХЪ, ОНДГЕЛЕМ (РСМЕКХ)',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (1390,NULL,'йПЮМХЯР',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1391,NULL,'йПЮМХЯР, ЛНЯРНБ ЙПЮМ',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1392,NULL,'йПЮМНБХЙ',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1393,NULL,'йПЕОЮВ / ДНАХБ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1394,NULL,'йПХЙЮРСПХЯР',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (1395,NULL,'йПХЛХМНКНЦ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1396,NULL,'йПХРХЙ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1397,NULL,'йПХРХЙ, ХГНАПЮГХРЕКМН ХГЙСЯРБН',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1398,NULL,'йПХРХЙ, КХРЕПЮРСПЮ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1399,NULL,'йПХРХЙ, ЛСГХЙЮ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1400,NULL,'йПХРХЙ, РЕЮРЗП',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1401,NULL,'йПХРХЙ, ТХКЛХ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1402,NULL,'йПНЪВ / ЬХБЮЬЙН ОПНХГБНДЯРБН',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (1403,NULL,'йПНЪВ МЮ ЙМХЦНБЕГЙХ ЛЮРЕПХЮКХ / ОНКХЦПЮТХЪ',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1404,NULL,'йПНЪВ, АЮМЖХЦЮП МЮ РПХЙНРЮФ / ЬХБЮЬЙН ОПНХГБНДЯРБН',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (1405,NULL,'йПНЪВ, ДЗПБНДЕКЕЖ',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (1406,NULL,'йПНЪВ, МЮЯРХКЮФ МЮ РПХЙНРЮФ / ЬХБЮЬЙН ОПНХГБНДЯРБН',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (1407,NULL,'йПНЪВ, НАСЫЮП',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1408,NULL,'йПНЪВ-ПЕГЮВ МЮ ЯРЗЙКН / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (1409,NULL,'йПСОХЕ',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1411,NULL,'йСЙКНЙНМЯРПСЙРНП',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1412,NULL,'йСПХЕП',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (1413,NULL,'йЧПЕ',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (1414,NULL,'кЮАНПЮМР / ОЮПНБЮ ЖЕМРПЮКЮ',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (1415,NULL,'кЮАНПЮМР / ОПНХГБНДЯРБН',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (1416,NULL,'кЮАНПЮМР, ЛЕДХЖХМЯЙХ',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (1417,NULL,'кЮАНПЮМР, ПЕМРЦЕМНБ',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (1419,NULL,'кЮЙХПНБЮВ-ЯХРНОЕВЮР МЮ ЯЙХ, ДЗПБНДЕКЕЖ',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (1420,NULL,'кЕДНКНЦ, ЦЕНТХГХЙ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (1421,NULL,'кЕЙЮП',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1422,NULL,'кЕЙЮП / уех',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1423,NULL,'кЕЙЮП БЕРЕПХМЮПЕМ',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (1424,NULL,'кЕЙЮП УСЛЮМЕМ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1425,NULL,'кЕЙЮП, ГЮБЕФДЮЫ НРДЕКЕМХЕ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1426,NULL,'кЕЙЮП, ЙКХМХВМЮ КЮАНПЮРНПХЪ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1427,NULL,'кЕЙЮП, ЛЕДХЖХМЯЙН ГЮЯРПЮУНБЮМЕ Х ЙНМЯСКРЮЖХХ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1428,NULL,'кЕЙЮП, НПДХМЮРНП',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1429,NULL,'кЕЙЮП, ТХГХНРЕПЮОЕБР',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1430,NULL,'кЕЙЮП, ВКЕМ МЮ рекй, жрекй',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1431,NULL,'кЕЙЯХЙНЦПЮТ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1432,NULL,'кЕЙРНП / БХЯЬЕ СВХКХЫЕ',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1433,NULL,'кЕОЮВ / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1434,NULL,'кЕОЮВ МЮ ЮТХЬХ, НАЪБХ, ХГБЕЯРХЪ',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (1436,NULL,'кЕОЮВ МЮ ДЕРЮИКХ (ЛЕРЮКМХ, ОКЮЯРЛЮЯНБХ)',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (1438,NULL,'кЕОХКНАЗПЙЮВ / ОПНХГБНДЯРБН МЮ ГЮКЕОБЮЫХ БЕЫЕЯРБЮ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1439,NULL,'кЕОХКНБЮП / ОНКХЦПЮТХЪ',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1440,NULL,'кЕОХКННАЛЮГБЮВ / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1441,NULL,'кЕОХКНОПХЦНРБХРЕК / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1442,NULL,'кЕОХКНОПХЦНРБХРЕК / ОНКХЦПЮТХЪ',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1443,NULL,'кЕЯМХВЕИ',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (1444,NULL,'кЕЯНБЗД, ЯОЕЖХЮКХЯР',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (1445,NULL,'кЕЯНГЮЫХРМХЙ',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (1446,NULL,'кЕЯНХМФЕМЕП',2214);
INSERT INTO `natc_clasifikator_prof` VALUES (1447,NULL,'кЕРЕЖ-АНПДЕМ ПЮДХЯР',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1448,NULL,'кЕРЕЖ-ХМФЕМЕП',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1449,NULL,'кЕРЕЖ-ЛЕУЮМХЙ',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1450,NULL,'кЕРЕЖ-ОХКНР',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1451,NULL,'кЕРЕЖ-ЫСПЛЮМ',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1452,NULL,'кЕВХРЕК ВПЕГ БЪПЮ',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (1453,NULL,'кЕВХРЕК, ЮКРЕПМЮРХБМХ ЛЕРНДХ',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1454,NULL,'кЕВХРЕК, АХНЕМЕПЦХЪ',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1455,NULL,'кЕЪП',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1456,NULL,'кЕЪП, ЮМНДХ / ЛЕРЮКСПЦХЪ',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1457,NULL,'кЕЪП, АКЮЦНПНДМХ ЛЕРЮКХ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1460,NULL,'кЕЪП-ТНПЛНБВХЙ МЮ ЯЙСКОРСПМХ ОПНХГБЕДЕМХЪ',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1461,NULL,'кХЙБХДЮРНП / ДПСФЕЯРБН ОН рЗПЦНБЯЙХЪ ГЮЙНМ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (1462,NULL,'кХМЦБХЯР',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1463,NULL,'кХМНРХОЕП / ОНКХЦПЮТХЪ',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1464,NULL,'кХРЕПЮРНП',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1465,NULL,'кХРЕПЮРСПЕМ ЯЗРПСДМХЙ',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (1466,NULL,'кНБЕМ МЮДГХПЮРЕК',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (1467,NULL,'кНБЕЖ',6154);
INSERT INTO `natc_clasifikator_prof` VALUES (1468,NULL,'кНЦНОЕД Я БХЯЬЕ НАПЮГНБЮМХЕ',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (1469,NULL,'кНЦНОЕД Я ОНКСБХЯЬЕ НАПЮГНБЮМХЕ',3333);
INSERT INTO `natc_clasifikator_prof` VALUES (1470,NULL,'кНДЙНЯРПНХРЕК НР ЯРЗЙКНОКЮЯРХ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1471,NULL,'кНГЮП',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (1472,NULL,'кНЙНЛНРХБЕМ ЛЮЬХМХЯР / ДНАХБ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',8314);
INSERT INTO `natc_clasifikator_prof` VALUES (1473,NULL,'кНЙНЛНРХБЕМ ЛЮЬХМХЯР / ФО РПЮМЯОНПР',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (1474,NULL,'кНЖЛЮМ / ОКЮБЮРЕКЕМ ЯЗД',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1475,NULL,'кСЦНКЕВХРЕК',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1476,NULL,'кЧРХЕП',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (1477,NULL,'лЮЦЮГХМЕП / ЯЙКЮД',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1478,NULL,'лЮГЮВ / ЯРПНХРЕКЯРБН',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (1479,NULL,'лЮИЙЮ, ДЕРЯЙН ЯЕКХЫЕ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1480,NULL,'лЮИЯРНП ЦНРБЮВ',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1481,NULL,'лЮИЯРНП ЦНРБЮВ-ЯКЮДЙЮП',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1482,NULL,'лЮИЯРНП ЙПНЪВ, ЬХБЮВ',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (1483,NULL,'лЮИЯРНП ЛНМРЭНП, ОНКХЦПЮТХВМХ ЛЮЬХМХ',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1484,NULL,'лЮИЯРНП НАСЫЮП',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1485,NULL,'лЮИЯРНП ОЕЙЮП, УКЪА Х ЯКЮДЙЮПЯЙХ ХГДЕКХЪ',7412);
INSERT INTO `natc_clasifikator_prof` VALUES (1486,NULL,'лЮИЯРНП ОНКХЦПЮТХЯР / ОНКХЦПЮТХЪ',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (1489,NULL,'лЮИЯРНП, АНГЮ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (1491,NULL,'лЮИЯРНП, МЕЙРЮПХ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (1493,NULL,'лЮИЯРНП-ЛЮЯКЮП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1494,NULL,'лЮИЯРНП-ЛХМЭНП',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1496,NULL,'лЮИЯРНП-ЛКЕЙЮП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1497,NULL,'лЮИЯРНП-ЛНМРЭНП, ЕКЕЙРПХВЕЯЙХ ЛЮЬХМХ Х ЮОЮПЮРХ',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (1498,NULL,'лЮИЯРНП-ЯХПЕМЮП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1499,NULL,'лЮИЯРНП-ТКНРХЕП / ДНАХБ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (1500,NULL,'лЮЙЕРХЯР',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1501,NULL,'лЮЙЕРЭНП / ОНКХЦПЮТХЪ',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1502,NULL,'лЮЛЮКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1503,NULL,'лЮМЕБПХЯР / ФО РПЮМЯОНПР',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (1504,NULL,'лЮМЕЙЕМ',5211);
INSERT INTO `natc_clasifikator_prof` VALUES (1505,NULL,'лЮМХЙЧПХЯР-ОЕДХЙЧПХЯР',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (1506,NULL,'лЮМХОСКЮМР (ЯРХТВХЪ) /  ЪИЖЕГЮЦНРБХРЕКМХ ЯЙКЮДНБЕ',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1507,NULL,'лЮМХОСКЮМР, АХКЙХ Х ЦЗАХ',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1508,NULL,'лЮМХОСКЮМР, ХГЦНРБЪМЕ МЮ АЮКХ / РЧРЧМ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1509,NULL,'лЮМХОСКЮМР, ЙНМДХЖХНМХПЮМ РЧРЧМ',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1510,NULL,'лЮМХОСКЮМР, КЕОЮВ МЮ ЙЮЬНМХ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (1512,NULL,'лЮМХОСКЮМР, ОНДПЕФДЮМЕ МЮ ДЕРЮИКХ / ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1514,NULL,'лЮМХОСКЮМР, РЕУМХВЕЯЙХ ГПЪК Х ХГЯСЬЕМ РЧРЧМ',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1515,NULL,'лЮПЙХПНБЮВ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (1516,NULL,'лЮПЙЬЮИДЕП, ХМФЕМЕП',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1517,NULL,'лЮПРЕМХВЮП',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (1518,NULL,'лЮЯЮФХЯР / ТХРМЕЯГЮКЮ',5143);
INSERT INTO `natc_clasifikator_prof` VALUES (1519,NULL,'лЮЯЮФХЯР, РЕПЮОЕБР',3252);
INSERT INTO `natc_clasifikator_prof` VALUES (1520,NULL,'лЮЯКЭНМВХЙ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1522,NULL,'лЮРЕЛЮРХЙ',2121);
INSERT INTO `natc_clasifikator_prof` VALUES (1523,NULL,'лЮРЕЛЮРХЙ, МЮСВЕМ ПЮАНРМХЙ',2121);
INSERT INTO `natc_clasifikator_prof` VALUES (1524,NULL,'лЮРЕЛЮРХЙ, ОПНЦПЮЛХЯР',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1526,NULL,'лЮРЕПХЮКВХЙ-ПЕЖЕОРЭНП / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (1528,NULL,'лЮРПХВЮП / ОНКХЦПЮТХЪ',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (1529,NULL,'лЮРПХВЮП, ХМЯРПСЛЕМРХ',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1530,NULL,'лЮРПХВЮП, ЙЮРНДМХ НЯМНБХ / ЛЕРЮКСПЦХЪ',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1531,NULL,'лЮВРНБХЙ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1532,NULL,'лЮЬХМЕМ АНЖЛЮМ',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1533,NULL,'лЮЬХМЕМ ХМФЕМЕП / ЛЕУЮМХВМН-ХМЯРПСЛЕМРЮКЕМ СВЮЯРЗЙ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1534,NULL,'лЮЬХМЕМ ХМФЕМЕП, ЙНМЯРПСЙРНП',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1535,NULL,'лЮЬХМЕМ ХМФЕМЕП, МНПЛХ Х МНПЛЮРХБХ',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1536,NULL,'лЮЬХМЕМ ХМФЕМЕП, ОПНЕЙРЮМР',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1538,NULL,'лЮЬХМХЯР / АЕРНМЕМ ЖЕМРЗП (АЕРНМНБ БЗГЕК)',8218);
INSERT INTO `natc_clasifikator_prof` VALUES (1539,NULL,'лЮЬХМХЯР / ДЗПБНДНАХБ',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (1540,NULL,'лЮЬХМХЯР / ОПНХГБНДЯРБН МЮ ЯКЮДНКЕД',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1541,NULL,'лЮЬХМХЯР,  ЯСУ ОЮЯРЕК Х ЛНДЕКХМ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1543,NULL,'лЮЬХМХЯР, ЮБРНАЮЦЕП',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1544,NULL,'лЮЬХМХЯР, ЮБРНБХЬЙЮ',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1545,NULL,'лЮЬХМХЯР, ЮБРНЦПЕИДЕП',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1547,NULL,'лЮЬХМХЯР, ЮЦПЮЦЮР ХКХ РЧРЧМНПЕГЮВМЮ ЛЮЬХМЮ',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1548,NULL,'лЮЬХМХЯР, ЮЦПЕЦЮР ГЮ РЧРЧМЕБХ АЮКХ',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1549,NULL,'лЮЬХМХЯР, АЮЦЕП',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1552,NULL,'лЮЬХМХЯР, АХВЕЫХ ЛЮЬХМХ / ЙЮЛЕМННАПЮАНРБЮМЕ',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1553,NULL,'лЮЬХМХЯР, АСКДНГЕП',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1554,NULL,'лЮЬХМХЯР, БЮКЪЙ',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1555,NULL,'лЮЬХМХЯР, БХАПНЯХРЮ / ОПНХГБНДЯРБН МЮ РНПНБЕ',8157);
INSERT INTO `natc_clasifikator_prof` VALUES (1556,NULL,'лЮЬХМХЯР, БЗФЕМЮ КХМХЪ',8338);
INSERT INTO `natc_clasifikator_prof` VALUES (1559,NULL,'лЮЬХМХЯР, ДПНАХКЙЮ ГЮ НРОЮДЗЖХ / ДЗПБННАПЮАНРБЮМЕ',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (1561,NULL,'лЮЬХМХЯР, ХГЙНОМХ ЛЮЬХМХ',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1562,NULL,'лЮЬХМХЯР, ХГКХБЮМЕ МЮ ОХКНРХ ОПХ ТСМДХПЮМЕ',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1563,NULL,'лЮЬХМХЯР, ХМЯРЮКЮЖХЪ ГЮ ДСМЮОПЕМ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1564,NULL,'лЮЬХМХЯР, ЙЮАЕКНОНКЮЦЮЫЮ ЛЮЬХМЮ',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1565,NULL,'лЮЬХМХЯР, ЙЮМЮКНЙНОЮРЕК-ЙЮМЮКНВХЯРЮВ',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1566,NULL,'лЮЬХМХЯР, ЙПЮМ',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1568,NULL,'лЮЬХМХЯР, КНЙНЛНРХБ / ФО РПЮМЯОНПР',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (1569,NULL,'лЮЬХМХЯР, ЛЕКМХЖХ Х ДПНАХКЙХ / УХЛХВМХ ОПНЖЕЯХ',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1572,NULL,'лЮЬХМХЯР, ЛКЕВМЮ ЛЮЬХМЮ',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1575,NULL,'лЮЬХМХЯР, НАПЮАНРЙЮ МЮ ЙЮЛЗМХ',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1576,NULL,'лЮЬХМХЯР, НАПЕГБЮЫХ ЛЮЬХМХ / ЙЮЛЕМННАПЮАНРБЮМЕ',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1577,NULL,'лЮЬХМХЯР, ОЮЙЕРН-ОНБДХЦЮЫХ ОКНВХ / ЯРПНХРЕКЯРБН',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1579,NULL,'лЮЬХМХЯР, ОЕВЮРЮП',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (1580,NULL,'лЮЬХМХЯР, ОНДБХФМЮ СЯРЮМНБЙЮ (лос) / ЯНМДХПЮМЕ',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (1581,NULL,'лЮЬХМХЯР, ОНДЕЛМН-РПЮМЯОНПРМХ ЯЗНПЗФЕМХЪ',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1582,NULL,'лЮЬХМХЯР, ОНКХПНБЗВМХ ЛЮЬХМХ  / ЙЮЛЕМННАПЮАНРБЮМЕ',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1583,NULL,'лЮЬХМХЯР, ОНПРЮКМХ Х ЙНГКНБХ ЙПЮМНБЕ',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1588,NULL,'лЮЬХМХЯР, ОЗКМЕМЕ Х ДНГХПНБЙЮ / УХЛХВМХ ОПНЖЕЯХ',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1589,NULL,'лЮЬХМХЯР, ОЗРМНЯРПНХРЕКМЮ ЛЮЬХМЮ (тюдпнлю Х ДП.)',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1590,NULL,'лЮЬХМХЯР, ПЮГТЮЯНБЗВМЮ ЛЮЬХМЮ ГЮ ЯХПЕМЕ',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1599,NULL,'лЮЬХМХЯР, ЯЙХ-КХТР',8338);
INSERT INTO `natc_clasifikator_prof` VALUES (1601,NULL,'лЮЬХМХЯР, РЮАКЕРХПЮЫЮ ЛЮЬХМЮ ГЮ ЮЙБЮПЕК',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1602,NULL,'лЮЬХМХЯР, РЕКТЕП',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1603,NULL,'лЮЬХМХЯР, РХЦЕКМЮ ЛЮЬХМЮ / КЕЪПЯРБН',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (1605,NULL,'лЮЬХМХЯР, РНМЦН-ОЗКМЮВМЮ ЛЮЬХМЮ',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (1606,NULL,'лЮЬХМХЯР, РПЮМЯОНПРМН-РЕУМНКНЦХВМХ ЛЮЬХМХ',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1611,NULL,'лЮЬХМХЯР, ЬКЧГ',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1612,NULL,'лЮЬХМНОХЯЕЖ',4112);
INSERT INTO `natc_clasifikator_prof` VALUES (1613,NULL,'лЮЬХМНОХЯЙЮ',4112);
INSERT INTO `natc_clasifikator_prof` VALUES (1614,NULL,'лЕАЕКХЯР',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1615,NULL,'лЕАЕКХЯР, ДЕТЕЙРННРЯРПЮМХРЕК',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1616,NULL,'лЕДХЖХМЯЙЮ ЯЕЯРПЮ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1617,NULL,'лЕДХЖХМЯЙЮ ЯЕЯРПЮ / ВЮЯРМЮ ОПЮЙРХЙЮ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1618,NULL,'лЕДХЖХМЯЙЮ ЯЕЯРПЮ, ЮМЕЯРЕГХНКНЦ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1619,NULL,'лЕДХЖХМЯЙЮ ЯЕЯРПЮ, ЛЮМХОСКЮЖХНММЮ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1620,NULL,'лЕДХЖХМЯЙЮ ЯЕЯРПЮ, ЯРНЛЮРНКНЦХЪ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1621,NULL,'лЕДХЖХМЯЙЮ ЯЕЯРПЮ, СВХКХЫМЮ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1622,NULL,'лЕДХЖХМЯЙЮ ЯЕЯРПЮ, УХПСПЦХЪ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1623,NULL,'лЕДХЖХМЯЙХ ЙНГЛЕРХЙ',3252);
INSERT INTO `natc_clasifikator_prof` VALUES (1624,NULL,'лЕДХЖХМЯЙХ ЙНМЯСКРЮМР',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1625,NULL,'лЕДХЖХМЯЙХ КЮАНПЮМР',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (1626,NULL,'лЕДХЖХМЯЙХ СОПЮБХРЕК / АЮКМЕНКНЦХВЕМ ЖЕМРЗП',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (1628,NULL,'лЕКМХВЮП / НАНЦЮРЪБЮМЕ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (1629,NULL,'лЕКМХВЮП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (1632,NULL,'лЕМХДФЗП',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1633,NULL,'лЕМХДФЗП, ЙЮГХМН',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1634,NULL,'лЕМХДФЗП, НЯМНБМХ СЯКСЦХ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1635,NULL,'лЕМХДФЗП, ОПНЦМНГХПЮМЕ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1636,NULL,'лЕМХДФЗП, ОПНДЮФАХ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1637,NULL,'лЕМХДФЗП, ПЮГПЮАНРЙХ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1638,NULL,'лЕМХДФЗП, ПЕЙКЮЛЮ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1640,NULL,'лЕЯНДНАХБМХЙ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (1641,NULL,'лЕРЮКХГЮРНП, УХЛХВЕЯЙЮ НАПЮАНРЙЮ МЮ ОНБЗПУМНЯРХ',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (1642,NULL,'лЕРЮВ - ЛХЪВ, ОЗРМХВЕЯЙЮ ЦЮПЮ / РПЮМЯОНПР',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1643,NULL,'лЕРЮВ, СКХЖЮ / ЙНЛСМЮКМН ЯРНОЮМЯРБН',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1644,NULL,'лЕРЕНПНКНЦ',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (1645,NULL,'лЕРЕНПНКНЦ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (1646,NULL,'лЕРЕНПНКНЦ-МЮАКЧДЮРЕК',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (1647,NULL,'лЕРНДХЯР / АХАКХНРЕЙЮ',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1648,NULL,'лЕРНДХЯР ОН НАСВЕМХЕ',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1649,NULL,'лЕРНДХЯР, КЕВЕАМЮ ТХГЙСКРСПЮ',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1650,NULL,'лЕРНДХЯР, НАСВЕМХЕ Я ОЕПЯНМЮКЕМ ЙНЛОЧРЗП (ой)',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1651,NULL,'лЕРНДХЯР, ОНДЦНРНБЙЮ ВСФДХ ЕГХЖХ / НАПЮГНБЮМХЕ',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1652,NULL,'лЕРНДХЯР, ЯОНПР',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (1653,NULL,'лЕРНДХЯР, СВЕАМХ ОПНЦПЮЛХ Х ЙСПЯНБЕ / НАПЮГНБЮМХЕ',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1654,NULL,'лЕРНДХЯР, ТХМЮМЯНБЮ ДЕИМНЯР',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1655,NULL,'лЕРПНКНЦ, БЕГМХ Х РЕЦКХКЙХ',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1656,NULL,'лЕРПНКНЦ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1657,NULL,'лЕУЮМХГЮРНП',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (1658,NULL,'лЕУЮМХЙ  / ОКЮБЮРЕКЕМ ЯЗД',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1659,NULL,'лЕУЮМХЙ / юрж',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (1660,NULL,'лЕУЮМХЙ, МНПЛХПНБВХЙ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1661,NULL,'лЕУЮМХЙ, ОНДДЗПФЮМЕ МЮ ПЮДХН-ЯЗНАЫХРЕКМЮ РЕУМХЙЮ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1662,NULL,'лЕУЮМХЙ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1663,NULL,'лЕУЮМХЙ, РЕУМХВЕЯЙЮ ЕЙЯОКНЮРЮЖХЪ МЮ КНЙНЛНРХБХ',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1664,NULL,'лЕУЮМХЙ-ЛНМРЭНП',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1665,NULL,'лЕУЮМНЬКНЯЕП',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1666,NULL,'лЕУЮМНЬКНЯЕП, ЛЮЬХМХ Х ЯЗНПЗФЕМХЪ',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1667,NULL,'лЕУЮРПНМХЙ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1668,NULL,'лХЙПНАХНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1669,NULL,'лХМЕМ ХМФЕМЕП',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1670,NULL,'лХМЕМ ПЮАНРМХЙ',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1671,NULL,'лХМЕМ ЯОЮЯХРЕК',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (1672,NULL,'лХМЕПЮКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (1673,NULL,'лХМЕПЮКВХЙ МЮ ЙНЛАХМХПЮМ ТСПЮФ',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (1674,NULL,'лХМХЯРЗП',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1675,NULL,'лХМХЯРЗП-ОПЕДЯЕДЮРЕК',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1676,NULL,'лХМЭНП',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1677,NULL,'лХЯХНМЕП',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1678,NULL,'лХРМХВЕЯЙХ ХМЯОЕЙРНП',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1679,NULL,'лХРМХВЕЯЙХ ОНЯПЕДМХЙ',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1680,NULL,'лХРПНОНКХР',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (1681,NULL,'лХЪВ, БХРПХМХ',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1682,NULL,'лХЪВ, ЛЕРЮКМХ ХГДЕКХЪ / ЛЮЬХМНЯРПНЕМЕ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1683,NULL,'лХЪВ, ЛНРНПМХ ОПЕБНГМХ ЯПЕДЯРБЮ / ЮБРНЯЕПБХГ',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1684,NULL,'лХЪВ, ОПНГНПЖХ',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1685,NULL,'лХЪВ, ЯЗДНБЕ Х ОПХАНПХ / НАЫЕЯРБЕМН УПЮМЕМЕ',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (1686,NULL,'лХЪВ, СКХЖЮ Б МЮЯЕКЕМХ ЛЕЯРЮ',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1687,NULL,'лКЮДЬХ ЕЙЯОЕПР / лХМХЯРЕПЯЙХ ЯЗБЕР, оПЕГХДЕМРЯРБН',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (1688,NULL,'лКЮДЬХ ЕЙЯОЕПР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1689,NULL,'лКЮДЬХ ХМЯОЕЙРНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1690,NULL,'лКЮДЬХ ОПНЙСПНП',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (1691,NULL,'лКЮДЬХ ЯВЕРНБНДХРЕК / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1692,NULL,'лКЮДЬХ ЯЗДХЪ',2422);
INSERT INTO `natc_clasifikator_prof` VALUES (1693,NULL,'лКЮДЬХ ЧПХЯРЙНМЯСКР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1694,NULL,'лКЕЙЮП, ЕЙЯОЕДХРНП',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1695,NULL,'лКЕЙНОПХЕЛВХЙ',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1696,NULL,'лНДЕКХЕП, АХФСРЕПХЪ Х ЯСБЕМХПХ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1697,NULL,'лНДЕКХЕП, ЙЮКЗОХ ГЮ НАСБЙХ / ОПНХГБНДЯРБН',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1698,NULL,'лНДЕКХЕП, ЛЕАЕКХ',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1699,NULL,'лНДЕКХЕП, ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (1700,NULL,'лНДЕКХЕП, МНБХ ХГДЕКХЪ НР ДЗПБН',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1701,NULL,'лНДЕКХЕП, НАКЕЙКН Х ЮЙЯЕЯНЮПХ',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1703,NULL,'лНДЕКХЕП-ЙНМЯРПСЙРНП, НАСБЙХ',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1704,NULL,'лНДЕКХЕП-ЙНМЯРПСЙРНП, РЕЙЯРХК, НАКЕЙКН, ЦЮКЮМРЕКХЪ',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1705,NULL,'лНДЕКХЯР / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (1706,NULL,'лНДЕКВХЙ / КЕЪПЯРБН',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1707,NULL,'лНДЕКВХЙ, КЕЪПЯЙХ ЛНДЕКХ НР ДЗПБЕЯХМЮ',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1708,NULL,'лНГЮИЙЮДФХЪ / ЯРПНХРЕКЯРБН',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1709,NULL,'лНМЮУ',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1710,NULL,'лНМЮУХМЪ',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1711,NULL,'лНМРЮФХЯР, ЙНОХЯР / ОНКХЦПЮТХЪ',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (1712,NULL,'лНМРЮФМХЙ / юрж',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1713,NULL,'лНМРЮФМХЙ, бХй',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1714,NULL,'лНМРЮФМХЙ, БЗМЬМХ БНДНОПНБНДМХ ЛПЕФХ',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1715,NULL,'лНМРЮФМХЙ, БЗМЬМХ НРНОКХРЕКМХ ЯХЯРЕЛХ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1717,NULL,'лНМРЮФМХЙ, ЙЮМЮКХГЮЖХНММХ РПЗАНОПНБНДМХ ХМЯРЮКЮЖХХ',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1718,NULL,'лНМРЮФМХЙ, ЙНПЮАМХ БЕМРХКЮЖХНММХ ЯХЯРЕЛХ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1719,NULL,'лНМРЮФМХЙ, КЕРЮРЕКМХ ЮОЮПЮРХ / ЛЮЬХМНЯРПНЕМЕ',7233);
INSERT INTO `natc_clasifikator_prof` VALUES (1720,NULL,'лНМРЮФМХЙ, ЛЕУЮМХВМХ ЙНЛОНМЕМРХ Б ХГДЕКХЕ',8281);
INSERT INTO `natc_clasifikator_prof` VALUES (1722,NULL,'лНМРЮФМХЙ, ОНД БНДЮ',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1723,NULL,'лНМРЮФМХЙ, ПЮДХНЯЗНПЗФЕМХЪ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1724,NULL,'лНМРЮФМХЙ, ПЮДХНЯЗНПЗФЕМХЪ - БХЯНЙНВЕЯРНРМХ СПЕДАХ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1725,NULL,'лНМРЮФМХЙ, ЯЕКЯЙНЯРНОЮМЯЙХ ЛЮЬХМХ / ЛЮЬХМНЯРПНЕМЕ',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1728,NULL,'лНМРЮФМХЙ, РЕКЕТНММХ Х РЕКЕЦПЮТМХ ЙЮАЕКХ Х КХМХХ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1729,NULL,'лНМРЮФМХЙ, РЕУМНКНЦХВМХ РПЗАНОПНБНДХ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1730,NULL,'лНМРЭНП / ЮБРНЛНАХКНЯРПНЕМЕ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1731,NULL,'лНМРЭНП МЮ лоя / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1732,NULL,'лНМРЭНП МЮ ЦСЛХ, ЛНРНПМХ ОПЕБНГМХ ЯПЕДЯРБЮ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1733,NULL,'лНМРЭНП, ЮБРНЛНАХКХ Х ЛНРНЖХЙКЕРХ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1734,NULL,'лНМРЭНП, ЮЯЮМЯЭНПХ',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1735,NULL,'лНМРЭНП, БЗФЕМХ КХМХХ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1736,NULL,'лНМРЭНП, БЗРПЕЬМН ПЮИНММХ ЯЗНАЫЕМХЪ / рбд',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1737,NULL,'лНМРЭНП, ЕКЕЙРПХВЕЯЙХ ЛЮЬХМХ Х ЮОЮПЮРХ',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (1738,NULL,'лНМРЭНП, ЕКЕЙРПХВЕЯЙХ ЛПЕФХ Х ЯХЯРЕЛХ',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (1739,NULL,'лНМРЭНП, ЕКЕЙРПНММЮ РЕУМХЙЮ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1740,NULL,'лНМРЭНП, ЕМЕПЦХИМХ ЯЗНПЗФЕМХЪ',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1741,NULL,'лНМРЭНП, ЙЮАЕКМЮ ЮПЛЮРСПЮ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1742,NULL,'лНМРЭНП, ЙЮКЙСКЮРНПХ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1743,NULL,'лНМРЭНП, ЙНРЕКМН НАНПСДБЮМЕ / ЕМЕПЦЕРХЙЮ',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1744,NULL,'лНМРЭНП, КХМЕИМН ЙЮАЕКМН ЯРНОЮМЯРБН',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1747,NULL,'лНМРЭНП, ЛЮЬХМХ Х ЯЗНПЗФЕМХЪ (МЕ \"ЬКНЯЕП\")',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1748,NULL,'лНМРЭНП, ЛХММХ ЛЮЬХМХ',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1749,NULL,'лНМРЭНП, НРНОКЕМХЕ / ЕМЕПЦЕРХЙЮ',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1750,NULL,'лНМРЭНП, ОЕВЮРЮПЯЙХ ЛЮЬХМХ',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1751,NULL,'лНМРЭНП, ОНДБХФЕМ ЯЗЯРЮБ / ФО РПЮМЯОНПР',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (1753,NULL,'лНМРЭНП, ОНДДЗПФЮМЕ МЮ ЮСДХН-БХГСЮКМЮ РЕУМХЙЮ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1755,NULL,'лНМРЭНП, ОНДДЗПФЮМЕ МЮ ХГЛЕПБЮРЕКМХ СПЕДХ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1756,NULL,'лНМРЭНП, ОНДДЗПФЮМЕ МЮ ОХЬЕЫХ ЛЮЬХМХ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1758,NULL,'лНМРЭНП, ОНДДЗПФЮМЕ МЮ РЕКЕТНММЮ ЖЕМРПЮКЮ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1761,NULL,'лНМРЭНП, ОПНХГБНДЯРБН МЮ ЮЙСЛСКЮРНПХ',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (1762,NULL,'лНМРЭНП, ОЗРМНЯРПНХРЕКМХ ЛЮЬХМХ',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1763,NULL,'лНМРЭНП, ПЕФХЛМХ МЮЯРПНИЙХ / ЕМЕПЦЕРХЙЮ',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1764,NULL,'лНМРЭНП, ПЕЛНМР Х ОНДДЗПФЮМЕ МЮ йхо Х ю',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1765,NULL,'лНМРЭНП, ЯЕКХЫМЮ РЕКЕТНММЮ ЛПЕФЮ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1766,NULL,'лНМРЭНП, ЯЕКЯЙНЯРНОЮМЯЙХ ЛЮЬХМХ',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1767,NULL,'лНМРЭНП, РЕФЙЮ ЛЕУЮМХГЮЖХЪ',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1768,NULL,'лНМРЭНП, РНОКНТХЙЮЖХЪ / ЕМЕПЦЕРХЙЮ',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1769,NULL,'лНМРЭНП, РПЮЙРНПХ',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1770,NULL,'лНМРЭНП, РСПАХММН НАНПСДБЮМЕ / ЕМЕПЦЕРХЙЮ',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1771,NULL,'лНМРЭНП-ХГЦНРБХРЕК, ЙНПЮАМЮ ЕКЕЙРПНМХЙЮ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1773,NULL,'лНМРЭНП-ЛЕУЮМНЬКНЯЕП',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1775,NULL,'лНМРЭНПХ, КЕРЮРЕКМХ ЮОЮПЮРХ',7233);
INSERT INTO `natc_clasifikator_prof` VALUES (1776,NULL,'лНПТНКНЦ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1777,NULL,'лНПЪЙ',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1778,NULL,'лНПЪЙ / бНЕММН ЛНПЯЙХ ТКНР (НРАПЮМЮ)',2);
INSERT INTO `natc_clasifikator_prof` VALUES (1779,NULL,'лНПЪЙ, ЛЮЬХММЮ ЙНЛЮМДЮ',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1780,NULL,'лНПЪЙ, ОЮКСАМЮ ЙНЛЮМДЮ',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1781,NULL,'лНЯРНБЮЙ',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (1782,NULL,'лНРНПХЯР, ЙНПЮАМХ ЯХКНБХ СПЕДАХ',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1783,NULL,'лНРНПХЯР, ЙСПХЕП',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1784,NULL,'лНРНПХЯР, ЛНПЪЙ',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1785,NULL,'лНРНПХЯР, ЛНРНПЕМ РПХНМ Х ЛХМХКЕАЕДЙЮ / ДЗПБНДНАХБ',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (1786,NULL,'лНРНЖХЙКЕРХЯР',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1787,NULL,'лНРНЖХЙКЕРХЯР, ПЮГМНЯМЮ РЗПЦНБХЪ',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1788,NULL,'лСГХЙЮКЕМ ЮПЮМФЭНП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1789,NULL,'лСГХЙЮКЕМ НТНПЛХРЕК',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1790,NULL,'лСГХЙЮКЕМ ОПНДСЖЕМР',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1791,NULL,'лСГХЙЮКЕМ ПЗЙНБНДХРЕК',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1793,NULL,'лСГХЙЮМР, ХМЯРПСЛЕМРХЯР',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1794,NULL,'лСГХЙЮМР, ОЕБЕЖ',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1795,NULL,'лСГХЙЮМР, ОЕБЕЖ /Я НЯМНБМН Х ОН-МХЯЙН НАПЮГНБЮМХЕ/',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (1796,NULL,'лСГХЙНБЕД',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1797,NULL,'лСГХЙНКНЦ',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1798,NULL,'лЗМЮВ',7431);
INSERT INTO `natc_clasifikator_prof` VALUES (1799,NULL,'лЧТРХЪ',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (1801,NULL,'мЮАНПЕМ БНЕММНЯКСФЮЫ / бЗНПЗФЕМХ ЯХКХ',2);
INSERT INTO `natc_clasifikator_prof` VALUES (1802,NULL,'мЮАНПВХЙ / ОНКХЦПЮТХЪ',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1803,NULL,'мЮБХБЮВ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1804,NULL,'мЮБХБЮВ МЮ АНАХМХ',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (1805,NULL,'мЮБХБЮВ МЮ ЯЙНАХ ГЮ РПЮБЕПЯХ / ДЗПБННАПЮАНРБЮМЕ',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (1807,NULL,'мЮБХБЮВ МЮ ТСПМХП / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (1809,NULL,'мЮБХЦЮЖХНМЕМ ХМЯОЕЙРНП / БНДeМ РПЮМЯОНПР',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (1810,NULL,'мЮБЗПГБЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1811,NULL,'мЮБЗПГБЮВ МЮ НЯМНБХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1812,NULL,'мЮЦПЕБЮВ МЮ ЛЕРЮКМХ ГЮЦНРНБЙХ',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1813,NULL,'мЮДГНПМХЙ / ЦЮГНОПНБНДМХ ЛЮЦХЯРПЮКХ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1814,NULL,'мЮМНЯБЮВ / БНДЕМ РПЮМЯОНПР',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (1815,NULL,'мЮОКЮБВХЙ / ЛЕРЮКСПЦХЪ',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (1816,NULL,'мЮОСКЭНП / ОПНХГБНДЯРБН МЮ ОКЮЯРЛЮЯНБХ ХГДЕКХЪ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1817,NULL,'мЮПЕФДЮВ МЮ КЮЛЕКХ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1818,NULL,'мЮПЕГБЮВ, БХМРНБЕ Х ПЕГАХ / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (1819,NULL,'мЮПНДЕМ КЕВХРЕК',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1820,NULL,'мЮПНДЕМ ОПЕДЯРЮБХРЕК',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (1821,NULL,'мЮПЗВМХЙ (ЬХБЮВ МЮ ПЗЙЮ) / ЬХБЮЬЙН ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1822,NULL,'мЮПЪДМХЙ / ЦЮПЮФ',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (1823,NULL,'мЮПЪДВХЙ / КНЙНЛНРХБМН ДЕОН',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (1825,NULL,'мЮЯРПНИВХЙ, ЮБРНЛЮРХВМХ Х ОНКСЮБРНЛЮРХВМХ ЯРПСЦНБЕ',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1826,NULL,'мЮЯРПНИВХЙ, ЮЦПЕЦЮРМХ Х ЯОЕЖХЮКХГХПЮМХ ЛЮЬХМХ',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1827,NULL,'мЮЯРПНИВХЙ, ДЗПБННАПЮАНРБЮЫХ ЛЮЬХМХ',7429);
INSERT INTO `natc_clasifikator_prof` VALUES (1828,NULL,'мЮЯРПНИВХЙ, ГЗАНМЮПЕГМХ ЛЮЬХМХ',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1829,NULL,'мЮЯРПНИВХЙ, ОПЕЯХ',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1830,NULL,'мЮЯРПНИВХЙ, ЯРЗПЦЮРЕКМХ ЛЮЬХМХ',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1831,NULL,'мЮЯРПНИВХЙ, ЬОПХЖ-ЮОЮПЮРХ',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1832,NULL,'мЮЯРПНИВХЙ-НОЕПЮРНП, ЛЕРЮКНПЕФЕЫХ ЛЮЬХМХ Я жос',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1833,NULL,'мЮСВЕМ ЯЕЙПЕРЮП',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (1834,NULL,'мЮСВЕМ ЯЗРПСДМХЙ I ЯРЕОЕМ',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1835,NULL,'мЮСВЕМ ЯЗРПСДМХЙ II ЯРЕОЕМ',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1836,NULL,'мЮСВЕМ ЯЗРПСДМХЙ III ЯРЕОЕМ',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1837,NULL,'мЮВЮКМХЙ / АНПЯЮ',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1839,NULL,'мЮВЮКМХЙ / ХМТНПЛЮЖХНММН-ХГВХЯКХРЕКЕМ ЖЕМРЗП',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1840,NULL,'мЮВЮКМХЙ / ОКЮЯЛЕМРМН-ЯМЮАДХРЕКМЮ АЮГЮ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1841,NULL,'мЮВЮКМХЙ / ОНЯПЕДМХВЕЯЙН АЧПН',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1842,NULL,'мЮВЮКМХЙ / ОПЕВХЯРБЮРЕКМЮ ЯРЮМЖХЪ',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (1843,NULL,'мЮВЮКМХЙ / ОПНЕЙРЮМРЯЙН АЧПН',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1844,NULL,'мЮВЮКМХЙ БКЮЙ / ФО РПЮМЯОНПР',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1846,NULL,'мЮВЮКМХЙ ЦЮПЮ (ФО- V-VII ЙЮРЕЦНПХЪ)',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (1847,NULL,'мЮВЮКМХЙ ЙЮАХМЕР МЮ ЛХМХЯРЗП-ОПЕДЯЕДЮРЕКЪ',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1848,NULL,'мЮВЮКМХЙ МЮ ДНЛНСОПЮБКЕМХЕ',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (1851,NULL,'мЮВЮКМХЙ МЮ ОПЮБЕМ НРДЕК',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (1852,NULL,'мЮВЮКМХЙ НАЫЮ ЙЮМЖЕКЮПХЪ / БХЯЬЕ СВХКХЫЕ',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (1853,NULL,'мЮВЮКМХЙ НРДЕК / лХМХЯРЕПЯЙХ ЯЗБЕР',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1854,NULL,'мЮВЮКМХЙ НРДЕК / ЮБРНРПЮМЯОНПРЕМ',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1855,NULL,'мЮВЮКМХЙ НРДЕК / БХЯЬЕ СВХКХЫЕ',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (1856,NULL,'мЮВЮКМХЙ НРДЕК / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1858,NULL,'мЮВЮКМХЙ НРДЕК / НАКЮЯРМЮ ЮДЛХМХЯРПЮЖХЪ',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (1859,NULL,'мЮВЮКМХЙ НРДЕК / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (1860,NULL,'мЮВЮКМХЙ НРДЕК / РЗПЦНБХЪ МЮ ЕДПН ХКХ ДПЕАМН',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1861,NULL,'мЮВЮКМХЙ НРДЕК, юяс',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1862,NULL,'мЮВЮКМХЙ НРДЕК, нрйй',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1863,NULL,'мЮВЮКМХЙ НРДЕК, рпг, ЙЮДПХ Х НУПЮМЮ МЮ РПСДЮ',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1864,NULL,'мЮВЮКМХЙ НРДЕК, ЮБРНЛЮРХГЮЖХЪ',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1865,NULL,'мЮВЮКМХЙ НРДЕК, ЮДЛХМХЯРПЮРХБЕМ',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1866,NULL,'мЮВЮКМХЙ НРДЕК, ЮДЛХМХЯРПЮРХБМН-ЯРНОЮМЯЙХ',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1867,NULL,'мЮВЮКМХЙ НРДЕК, БУНДЪЫ ЙНМРПНК',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1868,NULL,'мЮВЮКМХЙ НРДЕК, БЗМЬМНРЗПЦНБЯЙХ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1869,NULL,'мЮВЮКМХЙ НРДЕК, ЦЕНКНЦН-ЛЮПЙЬЮИДЕПЯЙХ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1871,NULL,'мЮВЮКМХЙ НРДЕК, ДНЯРЮБЙЮ МЮ ПЕГЕПБМХ ВЮЯРХ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1872,NULL,'мЮВЮКМХЙ НРДЕК, ЕМЕПЦХЕМ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1873,NULL,'мЮВЮКМХЙ НРДЕК, ЕМЕПЦН-ЛЕУЮМХВЕМЕМ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1874,NULL,'мЮВЮКМХЙ НРДЕК, ГЮОКЮЫЮМЕ Х ОПНЦМНГХПЮМЕ',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1876,NULL,'мЮВЮКМХЙ НРДЕК, ХЙНМНЛХВЕЯЙХ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1878,NULL,'мЮВЮКМХЙ НРДЕК, ХМТНПЛЮЖХНМЕМ ЖЕМРЗП Я АХАКХНРЕЙЮ',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1879,NULL,'мЮВЮКМХЙ НРДЕК, ХМТНПЛЮЖХНММН НАЯКСФБЮМЕ',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1881,NULL,'мЮВЮКМХЙ НРДЕК, ЙЮОХРЮКМН ЯРПНХРЕКЯРБН',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1882,NULL,'мЮВЮКМХЙ НРДЕК, ЙНМЯРПСЙРНПЯЙН-РЕУМНКНЦХВЕМ',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1884,NULL,'мЮВЮКМХЙ НРДЕК, КХВЕМ ЯЗЯРЮБ',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1885,NULL,'мЮВЮКМХЙ НРДЕК, ЛЮПЙЕРХМЦ Х НТЕПРХ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1888,NULL,'мЮВЮКМХЙ НРДЕК, ЛЕФДСМЮПНДМН ЯЗРПСДМХВЕЯРБН',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (1889,NULL,'мЮВЮКМХЙ НРДЕК, ЛЕУЮМХГЮЖХЪ',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1890,NULL,'мЮВЮКМХЙ НРДЕК, ЛЕУЮМХВЕМ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1891,NULL,'мЮВЮКМХЙ НРДЕК, МНБХ ЮЯНПРХЛЕМРХ',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1894,NULL,'мЮВЮКМХЙ НРДЕК, ОЮГЮПМЮ ДЕИМНЯР',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1895,NULL,'мЮВЮКМХЙ НРДЕК, ОКЮМНБН-ХЙНМНЛХВЕЯЙХ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1896,NULL,'мЮВЮКМХЙ НРДЕК, ОКЮЯЛЕМР',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1898,NULL,'мЮВЮКМХЙ НРДЕК, ОПЮБЕМ',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (1899,NULL,'мЮВЮКМХЙ НРДЕК, ОПХБЮРХГЮЖХНМЕМ',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1900,NULL,'мЮВЮКМХЙ НРДЕК, ОПНХГБНДЯРБЕМХ ЛНЫМНЯРХ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1901,NULL,'мЮВЮКМХЙ НРДЕК, ОПНХГБНДЯРБН, ЯЕАЕЯРНИМНЯР Х ЖЕМХ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1903,NULL,'мЮВЮКМХЙ НРДЕК, ЯЕАЕЯРНИМНЯР Х ЖЕМХ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1904,NULL,'мЮВЮКМХЙ НРДЕК, ЯНЖХЮКМН-АХРНБ',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1906,NULL,'мЮВЮКМХЙ НРДЕК, РЕКЕЙНЛСМХЙЮЖХХ',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1910,NULL,'мЮВЮКМХЙ НРДЕК, РЕУМХВЕЯЙХ Х ЙЮВЕЯРБЕМ ЙНМРПНК',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1911,NULL,'мЮВЮКМХЙ НРДЕК, РЕУМХВЕЯЙХ ЯПЕДЯРБЮ ГЮ НАСВЕМХЕ',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1912,NULL,'мЮВЮКМХЙ НРДЕК, РЕУМНКНЦХВЕМ',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1914,NULL,'мЮВЮКМХЙ НРДЕК, РПСД Х ПЮАНРМЮ ГЮОКЮРЮ (рпг)',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1915,NULL,'мЮВЮКМХЙ НРДЕК, РПСД Х ЯНЖХЮКМН ПЮГБХРХЕ',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1916,NULL,'мЮВЮКМХЙ НРДЕК, РЗПЦНБЯЙХ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1917,NULL,'мЮВЮКМХЙ НРДЕК, СОПЮБКЕМХЕ МЮ ЙЮВЕЯРБНРН',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1919,NULL,'мЮВЮКМХЙ НРДЕК, СОПЮБКЕМХЕ МЮ ВНБЕЬЙХРЕ ПЕЯСПЯХ',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1920,NULL,'мЮВЮКМХЙ НРДЕК, ЖЕМХ Х ЖЕМННАПЮГСБЮМЕ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1921,NULL,'мЮВЮКМХЙ ОПНХГБНДЯРБЕМЮ ЦПСОЮ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1922,NULL,'мЮВЮКМХЙ ЯЕЙРНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1923,NULL,'мЮВЮКМХЙ ЯЕЙРНП / НАКЮЯРМЮ ЮДЛХМХЯРПЮЖХЪ',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (1924,NULL,'мЮВЮКМХЙ ЯЕЙРНП / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (1926,NULL,'мЮВЮКМХЙ СОПЮБКЕМХЕ, ЕКЕЙРПХВЕЯЙЮ ЖЕМРПЮКЮ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1927,NULL,'мЮВЮКМХЙ ЖЕУ / ОПНХГБНДЯРБН',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1928,NULL,'мЮВЮКМХЙ, eК. ГЮУПЮМБЮМЕ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1931,NULL,'мЮВЮКМХЙ, АЧПН ГЮ ЯНЖХЮКМЮ ДЕИМНЯР',1155);
INSERT INTO `natc_clasifikator_prof` VALUES (1932,NULL,'мЮВЮКМХЙ, БЗМЬМНРЗПЦНБЯЙЮ ЙЮМРНПЮ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1933,NULL,'мЮВЮКМХЙ, ЦЮПЮФ Х ЮБРНЯЕПБХГ / ЮБРНЙНЛОКЕЙЯ',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1934,NULL,'мЮВЮКМХЙ, ЕЙЯОЕПХЛЕМРЮКМН ОПНХГБНДЯРБН',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1937,NULL,'мЮВЮКМХЙ, ЙЮМЖЕКЮПХЪ / оПЕГХДЕМРЯРБН',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1938,NULL,'мЮВЮКМХЙ, ЛХРМХЖЮ',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (1939,NULL,'мЮВЮКМХЙ, ОНДГЕЛЕМ НАЕЙР / ДЮКЕЙНЯЗНАЫЕМХЪ',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1940,NULL,'мЮВЮКМХЙ, ОНЫЕМЯЙЮ ЯРЮМЖХЪ / ЯЗНАЫЕМХЪ',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1941,NULL,'мЮВЮКМХЙ, ОПНРНЙНК / мЮПНДМН ЯЗАПЮМХЕ',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1942,NULL,'мЮВЮКМХЙ, ОПНРНЙНК / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1943,NULL,'мЮВЮКМХЙ, ПЕЛНМРМЮ ПЮАНРХКМХЖЮ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1944,NULL,'мЮВЮКМХЙ, ПСДМХЙ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1945,NULL,'мЮВЮКМХЙ, ЯЙКЮД / ОПНХГБНДЯРБН',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (1946,NULL,'мЮВЮКМХЙ, ЯЛЪМЮ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1947,NULL,'мЮВЮКМХЙ, ЯРПНЕФ',1223);
INSERT INTO `natc_clasifikator_prof` VALUES (1953,NULL,'мЕБПНУХПСПЦ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1954,NULL,'мЕОНЙЮГЮМН',999);
INSERT INTO `natc_clasifikator_prof` VALUES (1955,NULL,'мХЙНЦЮ МЕ ПЮАНРХК',998);
INSERT INTO `natc_clasifikator_prof` VALUES (1958,NULL,'мХЯЙНЙБЮКХТХЖХПЮМ ПЮАНРМХЙ / ФХБНРМНБЗДЯРБН',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (1959,NULL,'мХЯЙНЙБЮКХТХЖХПЮМ ПЮАНРМХЙ / ОНКХБМН ЯРНОЮМЯРБН',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (1960,NULL,'мХЯЙНЙБЮКХТХЖХПЮМ ПЮАНРМХЙ / ПЮЯРЕМХЕБЗДЯРБН',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (1961,NULL,'мХЯЙНЙБЮКХТХЖХПЮМ ПЮАНРМХЙ, ОНДДЗПФЮМЕ МЮ ОЗРХЫЮ',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (1962,NULL,'мХЯЙНЙБЮКХТХЖХПЮМ ПЮАНРМХЙ, ОНДДЗПФЮМЕ МЮ ЪГНБХПХ',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (1963,NULL,'мХЯЙНЙБЮКХТХЖХПЮМ ПЮАНРМХЙ, ЯЕГНММХ АХРНБХ СЯКСЦХ',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (1965,NULL,'мХРНБВХЙ, АЮЦЕПМХ ЙНМЯРПСЙЖХХ',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1966,NULL,'мНПЛХПНБВХЙ ОН РПСДЮ, ЕЙЯОЕПР',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1967,NULL,'мНПЛХПНБВХЙ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1968,NULL,'мНЯЮВ МЮ АЮЦЮФ / УНРЕК, ОЗРМХВЕЯЙЮ ЦЮПЮ',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (1969,NULL,'мНРЮПХСЯ',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (1970,NULL,'мНРНЦПЮТ',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (1971,NULL,'мНРНРЕЙЮП',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1972,NULL,'нАЦНПБЮВ / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (1973,NULL,'нАДСУБЮВ, ЕКЕЙРПНОНПЖЕКЮМНБХ ХГДЕКХЪ',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (1974,NULL,'нАЕГГЮПЮГХРЕК',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1976,NULL,'нАКЮЯРЕМ СОПЮБХРЕК',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1977,NULL,'нАКХЖНБВХЙ / ЯРПНХРЕКЯРБН',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1979,NULL,'нАПЕГБЮВ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1980,NULL,'нАПСЬБЮВ МЮ АНПДНБЕ / НРЙПХР ПСДМХЙ',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (1982,NULL,'нАЯКСФБЮЫ ОНЦПЕАЕМХЕ',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (1983,NULL,'нАЯКСФБЮЫ ПЮАНРМХЙ / ЛЕРЮКСПЦХЪ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1984,NULL,'нАСЫЮП, ЛЮИЯРНП ПЗВМЮ ХГПЮАНРЙЮ',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1985,NULL,'нАСЫЮП, ОНОПЮБЙЮ МЮ НАСБЙХ',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1986,NULL,'нАСЫЮП, РЕЮРПЮКЕМ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (1987,NULL,'нАЫ ПЮАНРМХЙ / ДНАХБ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (1988,NULL,'нАЫ ПЮАНРМХЙ / ДЗПБНДНАХБ',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (1989,NULL,'нАЫ ПЮАНРМХЙ / ЙЮМРНПЮ (НТХЯ)',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (1990,NULL,'нАЫ ПЮАНРМХЙ / КЕЪПЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1991,NULL,'нАЫ ПЮАНРМХЙ / НАЫЕЯРБЕМН УПЮМЕМЕ',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (1992,NULL,'нАЫ ПЮАНРМХЙ / ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1993,NULL,'нАЫ ПЮАНРМХЙ / ЯЙКЮД',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (1994,NULL,'нАЫ ПЮАНРМХЙ, ГЮПЕФДЮМЕ МЮ ЙНМБЕИП / ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1996,NULL,'нАЫ ПЮАНРМХЙ, ОНДДЗПФЮМЕ Х ПЕЛНМР МЮ ЯЦПЮДХ',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (1998,NULL,'нАЫ ПЮАНРМХЙ, ПХАНКНБЕМ ОКЮБЮРЕКЕМ ЯЗД',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (1999,NULL,'нАЫ ПЮАНРМХЙ, ЯРПНХРЕКЯРБН МЮ ЯЦПЮДХ',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (2000,NULL,'нАЫ ПЮАНРМХЙ, ЯЗАХПЮВ МЮ ЯРПСФЙХ / ЛЮЬХМНЯРПНЕМЕ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2002,NULL,'нАЫ ПЮАНРМХЙ, ВХЯРЮВ МЮ НРУНДМХ ЛЕЯРЮ Х АЮМХ',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2003,NULL,'нАЫ ПЮАНРМХЙ, ВХЯРЮВ МЮ ОНЛЕЫЕМХЪ',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2004,NULL,'нБНЫЮП',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (2005,NULL,'нБЖЕБЗД (ЙНГЕБЗД)',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2006,NULL,'нЦМЪП',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2007,NULL,'нЦМЪП, ОЮПЕМ ЙНРЕК / ОПНХГБНДЯРБН МЮ РНОКНЕМЕПЦХЪ',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2008,NULL,'нДХРНП',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (2009,NULL,'нГЕКЕМХРЕК, ОЮПЙ',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (2010,NULL,'нЙЮВЕЯРБХРЕК / ДНАХБ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',7116);
INSERT INTO `natc_clasifikator_prof` VALUES (2011,NULL,'нЙЮВЕЯРБХРЕК / ЬХБЮЬЙН ОПНХГБНДЯРБН',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (2012,NULL,'нЙЮВЕЯРБХРЕК МЮ ОПЕФДХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2013,NULL,'нЙЮВЕЯРБХРЕК МЮ ЪИЖЮ (НБНЯЙНОХЯР)',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2014,NULL,'нЙЮВЕЯРБХРЕК, тнл / ДЗПБННАПЮАНРБЮМЕ',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (2015,NULL,'нЙЮВЕЯРБХРЕК, ХГЯСЬЕМ РЧРЧМ',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2016,NULL,'нЙЮВЕЯРБХРЕК, ЙНМТЕЙЖХЪ / ЬХБЮЬЙН ОПНХГБНДЯРБН',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (2017,NULL,'нЙЮВЕЯРБХРЕК, ОКЕРХБН',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2019,NULL,'нЙЮВЕЯРБХРЕК, ЯЕПРХТХЙЮРХ',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2021,NULL,'нЙЮВЕЯРБХРЕК, ЯНПРХПЮМ РЧРЧМ',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2022,NULL,'нЙЮВЕЯРБХРЕК, ЯРПНХРЕКМЮ ЙЕПЮЛХЙЮ',7323);
INSERT INTO `natc_clasifikator_prof` VALUES (2025,NULL,'нЙЮВЕЯРБХРЕК, РЗЙЮМХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (2026,NULL,'нЙЕЮМНЦПЮТ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2027,NULL,'нЙПЗФЕМ ОПНЙСПНП',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2028,NULL,'нЙЯХФЕМХЯР',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2029,NULL,'нЙЯХФЕМХЯР-ЦЮГНГЮБЮПВХЙ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2030,NULL,'нЙСКРХЯР',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (2031,NULL,'нОЮЙНБВХЙ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2032,NULL,'нОЕПЮРНП / ЮРНЛМЮ ЕКЕЙРПНЖЕМРПЮКЮ (юеж)',3117);
INSERT INTO `natc_clasifikator_prof` VALUES (2033,NULL,'нОЕПЮРНП / ДЮКЕЙНЯЗНАЫЕМХЪ',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2034,NULL,'нОЕПЮРНП / ДНАХБ МЮ ЯЙЮКМХ ЛЮРЕПХЮКХ',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2035,NULL,'нОЕПЮРНП / ФО РПЮМЯОНПР',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (2036,NULL,'нОЕПЮРНП / ЙНФЮПЯЙН ОПНХГБНДЯРБН',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2037,NULL,'нОЕПЮРНП / ЙНЛОЧРЗПМЮ НАПЮАНРЙЮ МЮ ХМТНПЛЮЖХЪРЮ',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2038,NULL,'нОЕПЮРНП / МЕТРНОПЕПЮАНРБЮМЕ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2039,NULL,'нОЕПЮРНП / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2040,NULL,'нОЕПЮРНП / ОПЮУНБЮ ЛЕРЮКСПЦХЪ',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (2041,NULL,'нОЕПЮРНП / ОПЕВХЯРБЮРЕКМЮ ОНДЯРЮМЖХЪ',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2044,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЮКЙНУНКМХ МЮОХРЙХ',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2045,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ АЕГЮКЙНУНКМХ МЮОХРЙХ',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2046,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ АЕМГХМХ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2048,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ АХПЮ',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2049,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ АЪКЮ ГЮУЮП',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2050,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ БЮП',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2051,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ БНДНПНДЕМ ЦЮГ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2052,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ БЗЦКЕДБСНЙХЯ',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2053,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЦКХЖЕПХМ',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2054,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ДЗПБЕЯМХ ОКНЯЙНЯРХ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2055,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЕЙЯОКНГХБМХ ЛЮРЕПХЮКХ',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2056,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЕКЕЙРПНБЮЙССЛМХ ХГДЕКХЪ',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2057,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЕКЕЙРПНММХ ЕКЕЛЕМРХ',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2059,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЕЛЮИКХ Х КЕРКХБХ КЮЙНБЕ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2062,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ХГЙСЯРБЕМХ ЙНФХ',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2064,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЙЮСВСЙНБХ ХГДЕКХЪ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2065,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЙНМДЕМГЮРНПХ',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (2067,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ КЕД',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (2068,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ КХЛНМЕМЮ ЙХЯЕКХМЮ',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2069,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ КХМНКЕСЛ',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2070,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЛЮЯРХКЮ Х РСЬ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2071,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЛЮЪ ГЮ УКЪА',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2072,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЛХЕЫХ ОПНДСЙРХ',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2073,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ МЕРЗЙЮМ РЕЙЯРХК',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2074,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ МХЬЕЯРЕ Х ЦКХЙНГЮ',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2075,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ НАСБЙХ',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (2076,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ОЮПЮТХМХ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2077,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ОЕЙРХМ',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (2078,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ОКЮЯРЛЮЯНБХ ХГДЕКХЪ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2080,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ОПНЛХЬКЕМХ ДХЮЛЮМРХ',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (2081,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЯЛЮГЙХ Х ЛНРНПМХ ЛЮЯКЮ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2082,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЯНЙНБЕ',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (2084,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЯРЗЙКЮПЯЙХ ХГДЕКХЪ',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2085,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЯСУ КЕД',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2086,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ РНПНБЕ, ОЕЯРХЖХДХ',8157);
INSERT INTO `natc_clasifikator_prof` VALUES (2087,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ РСРЙЮК',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2088,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ТНИЕПБЕПЙХ',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2089,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ТНРНЦПЮТЯЙЮ УЮПРХЪ',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2090,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ТНРНЦПЮТЯЙХ ОКЮЙХ',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2092,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ УЮКНЦЕМЕМ ЦЮГ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2093,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ УЮПРХЕМХ ХГДЕКХЪ',8145);
INSERT INTO `natc_clasifikator_prof` VALUES (2094,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ УЮПРХЪ Х ЙЮПРНМ',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2097,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ УКНПЕМ ЦЮГ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2098,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЖЕКСКНГЮ',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2099,NULL,'нОЕПЮРНП / ОПНХГБНДЯРБН МЮ ЖХЛЕМР',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2100,NULL,'нОЕПЮРНП / ПЮДХНОПЕДЮБЮРЕК',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2101,NULL,'нОЕПЮРНП / ЯРСДХН ГЮ ГБСЙНГЮОХЯ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2102,NULL,'нОЕПЮРНП, ехл',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2103,NULL,'нОЕПЮРНП, ЮБРНЛЮРХГХПЮМХ ОНРНВМХ КХМХХ',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2104,NULL,'нОЕПЮРНП, ЮБРНЛЮРХЙЮ / АЕРНМНБ ЖЕМРЗП',8218);
INSERT INTO `natc_clasifikator_prof` VALUES (2105,NULL,'нОЕПЮРНП, ЮЦПЕЦЮРМХ ЛЮЬХМХ / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2106,NULL,'нОЕПЮРНП, ЮДПЕЯХПЮЫЮ ЛЮЬХМЮ / ОНЫХ Х ЯЗНАЫЕМХЪ',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2107,NULL,'нОЕПЮРНП, ЮЯТЮКРНЯЛЕЯХРЕК',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (2109,NULL,'нОЕПЮРНП, АПНДХПНБЮВМЮ ЛЮЬХМЮ',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (2111,NULL,'нОЕПЮРНП, БЕМРХКЮЖХНММХ ЯЗНПЗФЕМХЪ',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (2113,NULL,'нОЕПЮРНП, БНДНПЮГОПЕДЕКЕМХЕ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2114,NULL,'нОЕПЮРНП, ЦЮГНПЮГОПЕДЕКЕМХЕ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2115,NULL,'нОЕПЮРНП, ЦКЮБМН ЕК.РЮАКН / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2116,NULL,'нОЕПЮРНП, ЦКЮМЖХПЮМЕ МЮ УЮПРХЪ',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2119,NULL,'нОЕПЮРНП, ДНОЗКМХРЕКМЮ НАПЮАНРЙЮ МЮ ЙНФХ',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2120,NULL,'нОЕПЮРНП, ДЗПБННАПЮАНРБЮЫХ ЛЮЬХМХ',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (2121,NULL,'нОЕПЮРНП, ЕК.РЮАКН \"ЯНАЯРБЕМХ МСФДХ\" / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2122,NULL,'нОЕПЮРНП, ЕКЕЙРПХВЕЯЙЮ ОНДЯРЮМЖХЪ / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2123,NULL,'нОЕПЮРНП, ЕКЕЙРПНММЮ БЕГМЮ ГЮ РНБЮПМХ ЮБРНЛНАХКХ',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (2124,NULL,'нОЕПЮРНП, ЕМЕПЦХЕМ АКНЙ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2125,NULL,'нОЕПЮРНП, ЕМЕПЦХИМХ ЮЦПЕЦЮРХ, ГЮДБХФБЮМХ НР БЪРЗПЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2126,NULL,'нОЕПЮРНП, ГЮРБЮПЪВМЮ ЛЮЬХМЮ',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2128,NULL,'нОЕПЮРНП, ХГОХРБЮМЕ Х МЮЯРПНИЙЮ / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2129,NULL,'нОЕПЮРНП, ХГРЕЦКЪМЕ МЮ ОПНБНДМХЖХ Х РЕК',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (2130,NULL,'нОЕПЮРНП, ХЛОПЕЦМХПЮМЕ / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2135,NULL,'нОЕПЮРНП, ХМЯРЮКЮЖХЪ РЕПЛХВМЮ НАПЮАНРЙЮ МЮ РЧРЧМ',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2137,NULL,'нОЕПЮРНП, ЙМХЦНБЕГЙХ ЛЮЬХМХ / ОНКХЦПЮТХЪ',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (2138,NULL,'нОЕПЮРНП, ЙНЙЯНБЮ АЮРЕПХЪ / ЙНЙЯНБН ОПНХГБНДЯРБН',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (2139,NULL,'нОЕПЮРНП, ЙНЛЮМДЕМ ОСКР / ОНРНВМХ КХМХХ',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2140,NULL,'нОЕПЮРНП, ЙНЛЮМДМН РЮАКН / беж Х оюбеж',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2141,NULL,'нОЕПЮРНП, ЙНЛОЧРЗП',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2145,NULL,'нОЕПЮРНП, ЙНОХПМЮ ЛЮЬХМЮ',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (2147,NULL,'нОЕПЮРНП, КЕЕМЕ МЮ ЛЕРЮКХ',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (2148,NULL,'нОЕПЮРНП, КЕОЕМЕ / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2149,NULL,'нОЕПЮРНП, КХМХЪ ГЮ АСРХКХПЮМЕ МЮ НКХН',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2150,NULL,'нОЕПЮРНП, КХМХЪ ГЮ ЛЮЙЮПНМЕМХ ХГДЕКХЪ',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2151,NULL,'нОЕПЮРНП, КХРНЦПЮТЯЙХ ЙНМБЕИП',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2152,NULL,'нОЕПЮРНП, ЛЮМХОСКХПЮМЕ Х ТЕПЛЕМРХПЮМЕ МЮ РЧРЧМ',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2153,NULL,'нОЕПЮРНП, ЛЮЯННАЛЕМ / УХЛХВМХ ОПНЖЕЯХ',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2154,NULL,'нОЕПЮРНП, ЛЮЬХМХ  / ФХБНРМНБЗДЯРБН',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (2159,NULL,'нОЕПЮРНП, ЛЮЬХМХ ГЮ ХГБКХВЮМЕ МЮ ПЮЯРХРЕКМХ ЛЮЯКЮ',8279);
INSERT INTO `natc_clasifikator_prof` VALUES (2160,NULL,'нОЕПЮРНП, ЛЮЬХМХ ГЮ ЛЕКМХВЮПЯЙХ ОПНДСЙРХ',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2162,NULL,'нОЕПЮРНП, ЛЮЬХМХ ГЮ НАПЮАНРЙЮ МЮ ГЗПМЕМХ ОПНДСЙРХ',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2163,NULL,'нОЕПЮРНП, ЛЮЬХМХ ГЮ НАПЮАНРЙЮ МЮ ТСПЮФХ',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2167,NULL,'нОЕПЮРНП, ЛЮЬХМХ ГЮ ОНДЦНРНБЙЮ МЮ РЕЙЯРХКМХ БКЮЙМЮ',8261);
INSERT INTO `natc_clasifikator_prof` VALUES (2172,NULL,'нОЕПЮРНП, ЛЮЬХМХ ГЮ ОПНХГБНДЯРБН МЮ ГЮУЮП МЮ АСВЙХ',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2174,NULL,'нОЕПЮРНП, ЛЮЬХМХ ГЮ ОПНХГБНДЯРБН МЮ ОСДПЮ-ГЮУЮП',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2175,NULL,'нОЕПЮРНП, ЛЮЬХМХ ГЮ ОПНЪБЪБЮМЕ МЮ ТХКЛХ',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2179,NULL,'нОЕПЮРНП, ЛЕДХЖХМЯЙЮ ЮОЮПЮРСПЮ',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2180,NULL,'нОЕПЮРНП, ЛЕРЮКННАПЮАНРБЮЫЮ ЛЮЬХМЮ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2182,NULL,'нОЕПЮРНП, ЛЕРЮКСПЦХВМЮ ОЕЫ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (2185,NULL,'нОЕПЮРНП, ЛХЙПНЯЙНО',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2186,NULL,'нОЕПЮРНП, ЛХЙПНТХКЛНБЮ РЕУМХЙЮ',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2187,NULL,'нОЕПЮРНП, ЛХЙПНТНМ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2189,NULL,'нОЕПЮРНП, ЛНМНПЕКЯНБ ОЗР',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2191,NULL,'нОЕПЮРНП, МЮАНПМХ ЛЮЬХМХ / ОНКХЦПЮТХЪ',8251);
INSERT INTO `natc_clasifikator_prof` VALUES (2192,NULL,'нОЕПЮРНП, НАПЮАНРЙЮ МЮ ЮГАЕЯР',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (2193,NULL,'нОЕПЮРНП, НАПЮАНРЙЮ МЮ ЙНФХ',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2194,NULL,'нОЕПЮРНП, НАПЮАНРЙЮ МЮ ЛХМЕПЮКХ',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2195,NULL,'нОЕПЮРНП, НАПЮАНРЙЮ МЮ НРОЮДЗЖХ',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2197,NULL,'нОЕПЮРНП, НОЮЙНБЙЮ МЮ РЕВМХ Х ЮЕПНГНКМХ ОПЕОЮПЮРХ',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2198,NULL,'нОЕПЮРНП, НОРХВМХ ЛЕДХЖХМЯЙХ ЮОЮПЮРХ',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2200,NULL,'нОЕПЮРНП, ОЮПМЮ ХМЯРЮКЮЖХЪ / ЕМЕПЦЕРХЙЮ',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2201,NULL,'нОЕПЮРНП, ОЮПМЮ РСПАХМЮ / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2202,NULL,'нОЕПЮРНП, ОЕВЮРЮПЯЙХ ЙНМБЕИП',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2203,NULL,'нОЕПЮРНП, ОЕВЮРЮПЯЙХ ЛЮЬХМХ',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2205,NULL,'нОЕПЮРНП, ОКЕРЮВМЮ ЛЮЬХМЮ',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (2207,NULL,'нОЕПЮРНП, ОНДЦНРНБЙЮ МЮ ОНПЖЕКЮМНБН-ТЮЪМЯНБЮ ЛЮЯЮ',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (2208,NULL,'нОЕПЮРНП, ОНДЦНРНБЙЮ МЮ ЯРЗЙКЕМЮ ЛЮЯЮ',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (2209,NULL,'нОЕПЮРНП, ОНДЯРЮМЖХЪ / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2211,NULL,'нОЕПЮРНП, ОНЫЕМЯЙХ / ЯЗНАЫЕМХЪ',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2212,NULL,'нОЕПЮРНП, ОПЕДЮВМХ ЛЮЬХМХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2213,NULL,'нОЕПЮРНП, ОПЕДОЕВЮРМЮ ОНДЦНРНБЙЮ',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2214,NULL,'нОЕПЮРНП, ОПЕПЮАНРБЮМЕ МЮ ОПХПНДЕМ ЦЮГ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2215,NULL,'нОЕПЮРНП, ОПНЛХБЮМЕ МЮ ЛХМЕПЮКХ',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2217,NULL,'нОЕПЮРНП, ОПНОЮПБЮМЕ / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2218,NULL,'нОЕПЮРНП, ОСКР / НАНЦЮРЪБЮМЕ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (2220,NULL,'нОЕПЮРНП, ОСКР МЮ ОНРНВМЮ КХМХЪ',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2221,NULL,'нОЕПЮРНП, ОЗКМЕМЕ Х ГЮОНИЙЮ МЮ ЮЛОСКХ',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2222,NULL,'нОЕПЮРНП, ОЗПБХВМЮ НАПЮАНРЙЮ МЮ ДЗПБН',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (2223,NULL,'нОЕПЮРНП, ОЗПБХВМЮ НАПЮАНРЙЮ МЮ ЛЕРЮКХ',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2224,NULL,'нОЕПЮРНП, ПЮДХНДХЮЦМНЯРХВМХ ЮОЮПЮРХ',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2225,NULL,'нОЕПЮРНП, ПЮГОПЕДЕКЕМХЕ МЮ ЕКЕЙРПНЕМЕПЦХЪ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2226,NULL,'нОЕПЮРНП, ПЮГЖЕОБЮМЕ МЮ ЯЙЮКМХ ЛЮРЕПХЮКХ',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2227,NULL,'нОЕПЮРНП, ПЮТХМХПЮМЕ МЮ МЕТР',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2228,NULL,'нОЕПЮРНП, ПНАНРХГХПЮМХ КХМХХ',8172);
INSERT INTO `natc_clasifikator_prof` VALUES (2229,NULL,'нОЕПЮРНП, ПЪГЮМЕ МЮ ЯЙЮКМХ ЛЮРЕПХЮКХ',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2230,NULL,'нОЕПЮРНП, ЯЛЕЯХ / ОПНХГБНДЯРБН МЮ ЙХАПХР',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2233,NULL,'нОЕПЮРНП, ЯОНЛЮЦЮРЕКМХ ЯЗНПЗФЕМХЪ / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2237,NULL,'нОЕПЮРНП, ЯСЬЕМЕ / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2240,NULL,'нОЕПЮРНП, ЯЗЕДХМЪБЮМЕ МЮ УЮПРХЪ',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2243,NULL,'нОЕПЮРНП, РЕЙЯРНОПЕДЮБЮЫХ ЮОЮПЮРХ',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2244,NULL,'нОЕПЮРНП, РЕКЕБХГХНММЮ ЙЮЛЕПЮ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2245,NULL,'нОЕПЮРНП, РЕКЕЙЯ',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2246,NULL,'нОЕПЮРНП, РЕКЕТНРНЮОЮПЮРСПЮ',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2249,NULL,'нОЕПЮРНП, РЕПЛХВМЮ НАПЮАНРЙЮ МЮ ЦНПХБЮРЮ',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (2250,NULL,'нОЕПЮРНП, РЕУМНКНЦХВЕМ ОСКР / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2253,NULL,'нОЕПЮРНП, РПЮМЯОНПРХПЮМЕ ОНД МЮКЪЦЮМЕ МЮ ЦЮГНБЕ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2256,NULL,'нОЕПЮРНП, РПНЬЕМЕ МЮ ЯЙЮКМХ ЛЮРЕПХЮКХ Х ЛХМЕПЮКХ',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2257,NULL,'нОЕПЮРНП, РЗЙЮВМХ ЛЮЬХМХ',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (2258,NULL,'нОЕПЮРНП, СКРПЮГБСЙНБЮ РЕУМХЙЮ',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2260,NULL,'нОЕПЮРНП, ТЮЙЯХЛХКМЮ ЛЮЬХМЮ',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2261,NULL,'нОЕПЮРНП, ТХКЛНБЮ ЙЮЛЕПЮ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2264,NULL,'нОЕПЮРНП, ТХМН ЯЮРХМХПЮМЕ  МЮ УЮПРХЪ',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2265,NULL,'нОЕПЮРНП, ТКЮЕП-ЛЮЬХМЮ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2266,NULL,'нОЕПЮРНП, УХДПНЦПСОЮ / беж Х оюбеж',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2267,NULL,'нОЕПЮРНП, УХЛХВЕМ ЙНМРПНК / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2268,NULL,'нОЕПЮРНП, УХЛХВЕЯЙЮ НАПЮАНРЙЮ МЮ ЙНФХ',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2269,NULL,'нОЕПЮРНП, УХЛХВЕЯЙЮ НАПЮАНРЙЮ МЮ ОНБЗПУМНЯРХ',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (2271,NULL,'нОЕПЮРНП, УХЛХВЕЯЙН ЯЛХКЮМЕ Х ЯЛЕЯБЮМЕ',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (2272,NULL,'нОЕПЮРНП, УХЛХВМН ТХКРПХПЮМЕ',8153);
INSERT INTO `natc_clasifikator_prof` VALUES (2273,NULL,'нОЕПЮРНП, ЖЕКНЦСЛЕМ ЮЦПЕЦЮР / УХЛХВМХ ОПНЖЕЯХ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2274,NULL,'нОЕПЮРНП, ЖЕМРПЮКМЮ ЙНЛОПЕЯНПМЮ ЯРЮМЖХЪ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2278,NULL,'нОЕПЮРНП, ЫЮБЕМЕ МЮ ЙНФХ',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2279,NULL,'нОЕПЮРНП-ЙННПДХМЮРНП / ЙНМБЕИПМЮ ЯХЯРЕЛЮ',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2280,NULL,'нОЕПЮРНП-ПЮДХЯР, ЛНПГНБ ЙНД',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2281,NULL,'нОХЯБЮВ / ЯОНПРЕМ РНРЮКХГЮРНП',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (2282,NULL,'нОНБЕЯРХРЕК, ЦНБНПХРЕК ОН ПЮДХНСПЕДАЮ',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2283,NULL,'нОПЕДЕКХРЕК МЮ ЙНОХПМХ ЯБЕРКХМХ',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2284,NULL,'нОРХЙ',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (2285,NULL,'нОРНЛЕРПХЯР',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (2286,NULL,'нПЦЮМХГЮРНП / ДНЛ МЮ ЙСКРСПЮРЮ',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2287,NULL,'нПЦЮМХГЮРНП / ГЮДЦПЮМХВМН ДПСФЕЯРБН',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (2288,NULL,'нПЦЮМХГЮРНП / ОПНХГБНДЯРБН',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (2290,NULL,'нПЦЮМХГЮРНП / ОПНХГБНДЯРБН ОПЕЖХГМЮ ЮОЮПЮРСПЮ',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (2294,NULL,'нПЦЮМХГЮРНП / ПЕЛНМР МЮ лоя',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2295,NULL,'нПЦЮМХГЮРНП / ЯРПНХРЕКЯРБН',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (2296,NULL,'нПЦЮМХГЮРНП / РЕУМХВЕЯЙХ ПЕЛНМР Х ОНДДЗПФЮМЕ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2297,NULL,'нПЦЮМХГЮРНП / ВХРЮКХЫЕ',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2298,NULL,'нПЦЮМХГЮРНП РЕУМХВЕЯЙХ, ЮАНМЮЛЕМР / ОНЫХ',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2299,NULL,'нПЦЮМХГЮРНП, рпг',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (2300,NULL,'нПЦЮМХГЮРНП, БЮКСРМХ Х ЙПЕДХРМХ БЗОПНЯХ',3419);
INSERT INTO `natc_clasifikator_prof` VALUES (2301,NULL,'нПЦЮМХГЮРНП, ДНЯРЮБЙЮ МЮ БЗГКХ Х ДЕРЮИКХ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2302,NULL,'нПЦЮМХГЮРНП, ЕЙЯОКНЮРЮЖХЪ / РПЮМЯОНПР',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (2304,NULL,'нПЦЮМХГЮРНП, ГБСЙНБХ ЕТЕЙРХ',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2305,NULL,'нПЦЮМХГЮРНП, ХГЙСОСБЮМЕ',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2306,NULL,'нПЦЮМХГЮРНП, ХМТНПЛЮЖХНММН НАЯКСФБЮМЕ',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (2307,NULL,'нПЦЮМХГЮРНП, ХЬКЕЛЕ',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2308,NULL,'нПЦЮМХГЮРНП, ЙЮОХРЮКМН ЯРПНХРЕКЯРБН',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2310,NULL,'нПЦЮМХГЮРНП, ЙНМЯСКРЮМРЯЙЮ ДЕИМНЯР',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2311,NULL,'нПЦЮМХГЮРНП, ЙННПДХМЮЖХНМЕМ ЙНМРПНК',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2312,NULL,'нПЦЮМХГЮРНП, ЙСКРСПМХ ОПНЪБХ',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (2314,NULL,'нПЦЮМХГЮРНП, ЛЕФДСМЮПНДМХ БПЗГЙХ',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2317,NULL,'нПЦЮМХГЮРНП, НОЕПЮРХБМН СОПЮБКЕМХЕ Х ЙНМРПНК',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2318,NULL,'нПЦЮМХГЮРНП, ОКЮЯЛЕМР Х ПЕЮКХГЮЖХЪ',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2319,NULL,'нПЦЮМХГЮРНП, ОПНРНЙНК',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2320,NULL,'нПЦЮМХГЮРНП, ОЗРСБЮМЕ',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2321,NULL,'нПЦЮМХГЮРНП, ПЮГБХРХЕ Х БМЕДПЪБЮМЕ',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (2322,NULL,'нПЦЮМХГЮРНП, ЯБЕРКХММХ ЕТЕЙРХ',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2323,NULL,'нПЦЮМХГЮРНП, ЯМХЛЮВМЮ ОПНДСЙЖХЪ',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2324,NULL,'нПЦЮМХГЮРНП, ЯНЖХЮКМН-АХРНБХ БЗОПНЯХ',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2326,NULL,'нПЦЮМХГЮРНП, ЯЗАХПЮМЕ МЮ БГЕЛЮМХЪ',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2327,NULL,'нПЦЮМХГЮРНП, РЕУМХВЕЯЙЮ ЕЙЯОКНЮРЮЖХЪ МЮ лоя',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2329,NULL,'нПЦЮМХГЮРНП, РЗПЦНБЕ -  ЖЕМХ Х ЕТЕЙРХБМНЯР',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2330,NULL,'нПЦЮМХГЮРНП, РЗПЦНБЯЙЮ ДЕИМНЯР',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2331,NULL,'нПЦЮМХГЮРНП, СВЕАМЮ ДЕИМНЯР',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2332,NULL,'нПЦЮМХГЮРНП, ТХГЙСКРСПЮ',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (2333,NULL,'нПЦЮМХГЮРНП, УХЦХЕМЮ',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (2334,NULL,'нПЦЮМХГЮРНП, ВХЯРНРЮ МЮ НАЫЕЯРБЕМХ ЛЕЯРЮ',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2335,NULL,'нПХГНОПНХГБНДХРЕК',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2336,NULL,'нПЙЕЯРПЮРНП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (2337,NULL,'нПМХРНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2338,NULL,'нПРНОЕД Х РПЮБЛЮРНКНЦ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (2339,NULL,'нПРНОЕДХВЕМ РЕУМХЙ',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (2340,NULL,'нЯБЕРХРЕК',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2341,NULL,'нЯЕЛЕМХРЕК',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2342,NULL,'нЯХЦСПХРЕК',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (2344,NULL,'нРБПЗЫЮВ МЮ ХГДЕКХЪ НР ЛЕРЮК / ЛЕРЮКСПЦХЪ',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (2346,NULL,'нРЦНБНПЕМ КЮАНПЮМР / ОПНХГБНДЯРБН',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (2347,NULL,'нРЦНБНПЕМ ПЕДЮЙРНП',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (2348,NULL,'нРЦНБНПЕМ ЯЕЙПЕРЮП / ПЕДЮЙЖХЪ',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (2349,NULL,'нРЦНБНПЕМ ЯЕЙПЕРЮП / ЯХМДХЙЮР',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2350,NULL,'нРЦНБНПМХЙ / БГПХБЕМ ЯЙКЮД',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (2351,NULL,'нРЦНБНПМХЙ / ЕКЕЙРПНПЮАНРХКМХЖЮ',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (2353,NULL,'нРЦНБНПМХЙ / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (2354,NULL,'нРЦНБНПМХЙ / ОНВХБМЮ АЮГЮ',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (2355,NULL,'нРЦНБНПМХЙ / ОПНХГБНДЯРБН МЮ ЯРПНХРЕКМЮ ЙЕПЮЛХЙЮ',7323);
INSERT INTO `natc_clasifikator_prof` VALUES (2356,NULL,'нРЦНБНПМХЙ / ПЮАНРМХВЕЯЙН НАЫЕФХРХЕ',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (2357,NULL,'нРЦНБНПМХЙ, ЮРЕКХЕ / ЙСКРСПМХ ХМЯРХРСЖХХ',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (2360,NULL,'нРЦНБНПМХЙ, ХМТНПЛЮЖХНММН НАЯКСФБЮМЕ',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2361,NULL,'нРЦНБНПМХЙ, ЙЮВЕЯРБН / ОПНХГБНДЯРБН',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2362,NULL,'нРЦНБНПМХЙ, ЙМХФЮПМХЖЮ',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2363,NULL,'нРЦНБНПМХЙ, КНБМЮ ДПСФХМЙЮ',6154);
INSERT INTO `natc_clasifikator_prof` VALUES (2364,NULL,'нРЦНБНПМХЙ, МЮСВМЮ ЮОЮПЮРСПЮ',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (2366,NULL,'нРЦНБНПМХЙ, ОПЕРНБЮПМЮ АЮГЮ',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (2367,NULL,'нРЦНБНПМХЙ, ПЮДХЮЖХНММЮ АЕГНОЮЯМНЯР',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (2369,NULL,'нРЦНБНПМХЙ, ЯРПНХРЕКМН-ПЕЛНМРМХ ПЮАНРХ',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2370,NULL,'нРКХБЮП / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2371,NULL,'нРКХБЮП МЮ ЙСЙКХ ГЮ ТКЕУР ЛЮЬХМЮ, РЕЙЯРХКМХ ЛЮЬХМХ',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (2372,NULL,'нРВЕРМХЙ',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2373,NULL,'нРВЕРМХЙ / ЮБРНЯЕПБХГ',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (2374,NULL,'нРВЕРМХЙ ЖЕММХ НАПЮГЖХ / ЮБРНЛНАХКЕМ РПЮМЯОНПР',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (2375,NULL,'нРВЕРМХЙ, ХГВХЯКХРЕК МЮ ЦПЕЬЙХ / ОНКХЦПЮТХЪ',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (2376,NULL,'нТХЖЕП / аЗКЦЮПЯЙЮ ЮПЛХЪ (НРАПЮМЮ)',1);
INSERT INTO `natc_clasifikator_prof` VALUES (2377,NULL,'нТХЖЕП / бЗНПЗФЕМХ ЯХКХ',1);
INSERT INTO `natc_clasifikator_prof` VALUES (2378,NULL,'нТНПРХЯР-ОЕВЮРЮП / ОНКХЦПЮТХЪ',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (2379,NULL,'нУПЮМХРЕК',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2381,NULL,'нУПЮМХРЕК, МЕБЗНПЗФЕМ',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2382,NULL,'нЖЕМХРЕК МЮ НАЕЙР ГЮ ОПХБЮРХГЮЖХЪ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2383,NULL,'нЖЕМХРЕК МЮ РЧРЧМ',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2384,NULL,'нЖЕМХРЕК, ГЮЯРПЮУНБЮРЕКМХ ГЮЦСАХ',3419);
INSERT INTO `natc_clasifikator_prof` VALUES (2385,NULL,'нЖЕМХРЕК, РЗПЦНБЕ',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2386,NULL,'оЮБЭНП',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (2387,NULL,'оЮГЮВ, БЗНПЗФЕМЮ НУПЮМЮ',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2388,NULL,'оЮГЮВ, ЛСГЕХ / ЙСКРСПЮ',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2389,NULL,'оЮГЮВ, МЕБЗНПЗФЕМЮ НУПЮМЮ',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2390,NULL,'оЮГЮВ, НУПЮМЮ МЮ ОПЕДОПХЪРХЕ',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2391,NULL,'оЮГЮВ, ОЮПЙХМЦ',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2392,NULL,'оЮГЮВ, СВХКХЫЕ / НАПЮГНБЮМХЕ',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2393,NULL,'оЮГХРЕК МЮ ЖЕММНЯРХ / АЮМЙНБ РПЕГНП',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (2394,NULL,'оЮЙЕРХПНБЮВ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2395,NULL,'оЮКЕНМРНКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2396,NULL,'оЮКСАЕМ АНЖЛЮМ',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (2397,NULL,'оЮПЮГХРНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2398,NULL,'оЮПЮГХРНКНЦ, БЕРЕПХМЮПЕМ',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (2399,NULL,'оЮПЮТХМХЯР',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (2400,NULL,'оЮПЮТХМЭНП / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2401,NULL,'оЮПЙЕРВХЪ / ЯРПНХРЕКЯРБН',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (2402,NULL,'оЮПКЮЛЕМРЮПЕМ ЯЕЙПЕРЮП / лХМХЯРЕПЯЙХ ЯЗБЕР',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (2403,NULL,'оЮЯОНПРХЯР',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (2404,NULL,'оЮЯРХП / ФХБНРМНБЗДЯРБН',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (2405,NULL,'оЮЯРХПНБВХЙ МЮ ОКНВХ / ОПНХГБНДЯРБН МЮ ЮЙСЛСКЮРНПХ',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2406,NULL,'оЮЯРНП',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (2407,NULL,'оЮРЕМРЕМ ЕЙЯОЕПР',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (2408,NULL,'оЮРЕМРНБЕД',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (2409,NULL,'оЮРНКНЦ, БЕРЕПХМЮПЕМ КЕЙЮП',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (2410,NULL,'оЮРНКНЦ-АХНКНЦ, ФХБНРМХ, ПЮЯРЕМХЪ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2411,NULL,'оЮРПХЮПУ',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (2412,NULL,'оЮРПСК, ОКЮФЕМ',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (2413,NULL,'оЕБЕЖ, МЮПНДМХ ОЕЯМХ',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (2414,NULL,'оЕДЮЦНЦ / НАЕДХМЕМ ДЕРЯЙХ ЙНЛОКЕЙЯ (ндг)',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (2415,NULL,'оЕДЮЦНЦ / ВЮЯРМЮ ОПЮЙРХЙЮ',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (2416,NULL,'оЕДЮЦНЦХВЕЯЙХ ЯЗБЕРМХЙ',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (2417,NULL,'оЕЙЮП / ОПНХГБНДЯРБН МЮ ЙНМДЕМГЮРНПХ',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (2418,NULL,'оЕЙЮП / ОПНХГБНДЯРБН МЮ ЯРПНХРЕКМЮ ЙЕПЮЛХЙЮ',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (2419,NULL,'оЕЙЮП / УХЛХВМХ ОПНЖЕЯХ',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (2420,NULL,'оЕЙЮП, БЮП',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2422,NULL,'оЕМЮКНЦ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (2424,NULL,'оЕПЮВ / ГЮРБНП, ЙЮГЮПЛЮ',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (2425,NULL,'оЕПЮВ / СВХКХЫЕ, АНКМХЖЮ',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (2426,NULL,'оЕПЮВ МЮ БЗКМЮ / РЕЙЯРХКМН ОПНХГБНДЯРБН',7432);
INSERT INTO `natc_clasifikator_prof` VALUES (2427,NULL,'оЕРПНКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2428,NULL,'оЕВЮРЮП / ОНКХЦПЮТХЪ',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2429,NULL,'оЕВЮРЮП / РЕЙЯРХКМН ОПНХГБНДЯРБН',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (2430,NULL,'оЕВЮРЮП ЛЮЬХМХЯР, ГЮПЕФДЮВ / ОНКХЦПЮТХЪ',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2431,NULL,'оЕВЮРЮП ЛЮЬХМХЯР, ЯЗАХПЮВ / ОНКХЦПЮТХЪ',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2432,NULL,'оЕВЮРЮП МЮ ЙНОХПЙХ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2434,NULL,'оЕВЮРЮП, ОНЛНЫМХЙ-ЛЮЬХМХЯР / ОНКХЦПЮТХЪ',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2435,NULL,'оЕВЮРЮП-ОНДЮБЮВ / ОНКХЦПЮТХЪ',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (2436,NULL,'оЕЫЮП / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2437,NULL,'оЕЫЮП / ОПНХГБНДЯРБН МЮ ЯРПНХРЕКМЮ ЙЕПЮЛХЙЮ',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (2438,NULL,'оЕЫЮП, ЛЕРЮКНЙЕПЮЛХВМХ Х ЕКЕЙРПНБЗЦКЕМНБХ ХГДЕКХЪ',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (2439,NULL,'оХЙНКН',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (2440,NULL,'оХКНГЗАВХЙ / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2441,NULL,'оХПНЦПЮТХЯР, ДЗПБНДЕКЕЖ',7425);
INSERT INTO `natc_clasifikator_prof` VALUES (2442,NULL,'оХПНЛЕРПХЯР',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2443,NULL,'оХПНРЕУМХЙ',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (2444,NULL,'оХЯЮРЕК - ДПЮЛЮРСПЦ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2445,NULL,'оХЯЮРЕК - ОСАКХЖХЯР',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2446,NULL,'оХЯЮРЕК, РЕУМХВЕЯЙЮ КХРЕПЮРСПЮ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2447,NULL,'оКЮГЛНПЕГЮВ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2448,NULL,'оКЮГНБВХЙ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2449,NULL,'оКЮЙЮРХЯР',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (2450,NULL,'оКЮЙХПНБЮВ, ОЪЯЗЙ / КЕЪПЯРБН',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (2451,NULL,'оКЮЙХПНБВХЙ, ЯРСДЕМН БЮКЖСБЮМЕ / ЛЕРЮКСПЦХЪ',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2452,NULL,'оКЮМХМЯЙХ БНДЮВ (ЦХД)',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (2453,NULL,'оКЮМХМЯЙХ ЯОЮЯХРЕК',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (2454,NULL,'оКЮМНБХЙ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2455,NULL,'оКЮМНОЮГХРЕК',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (2456,NULL,'оКЮЯЭНП',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2457,NULL,'оКЕРЮВ Х ОНВХЯРБЮВ, ЙЮАЕКМХ ТНПЛХ',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2458,NULL,'оКЕРЮВ МЮ ЬЕКТ',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2460,NULL,'оКЕРЮВ, ПЗВМН УСДНФЕЯРБЕМН ОКЕРХБН',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2461,NULL,'оКЕРЮВ-ЛЮИЯРНП / РПХЙНРЮФ',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2462,NULL,'оКНЛАЮДФХЪ / ФО РПЮМЯОНПР',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (2463,NULL,'оНЦПЕАЮКЕМ ЮЦЕМР',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (2464,NULL,'оНДЮБЮВ, ОКНВХ ГЮ КЮЙХПЮМЕ / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2468,NULL,'оНДЦНРБХРЕК, ТСПМХПМХ ОКЮРМЮ / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2469,NULL,'оНДПЕФДЮВ, ОЮЙЕРХ ГЮ НАПЪГБЮМЕ / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2470,NULL,'оНЕР',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2471,NULL,'оНФЮПМХЙЮП',3453);
INSERT INTO `natc_clasifikator_prof` VALUES (2472,NULL,'оНКЕБЗД / ПЮЯРЕМХЕБЗДЯРБН',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2473,NULL,'оНКХБЮВ / ПЮЯРЕМХЕБЗДЯРБНРН',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (2474,NULL,'оНКХЦПЮТХЯР, НРЦНБНПМХЙ МЮ ТХКХЮК',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (2475,NULL,'оНКХПНБЮВ / ЛЕРЮКННАПЮАНРБЮМЕ',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (2477,NULL,'оНКХПНБЮВ, ДЗПБНДЕКЕЖ',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (2478,NULL,'оНКХРНКНЦ',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (2479,NULL,'оНКХЖЮИ',3452);
INSERT INTO `natc_clasifikator_prof` VALUES (2480,NULL,'оНЛНКНЦ',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (2481,NULL,'оНЛНЫМХЙ БЗГОХРЮРЕК / ДЕРЯЙЮ ЦПЮДХМЮ (ДЕРЯЙЮ ЪЯКЮ)',5131);
INSERT INTO `natc_clasifikator_prof` VALUES (2482,NULL,'оНЛНЫМХЙ ЦНРБЮВ',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (2483,NULL,'оНЛНЫМХЙ ДХПЕЙРНП / СВХКХЫЕ МЮ АЧДФЕРМЮ ХГДПЗФЙЮ',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (2484,NULL,'оНЛНЫМХЙ ЕОХДЕЛХНКНЦ',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (2485,NULL,'оНЛНЫМХЙ КЕЯМХВЕИ',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (2486,NULL,'оНЛНЫМХЙ КНЙНЛНРХБЕМ ЛЮЬХМХЯР / ФО РПЮМЯОНПР',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (2487,NULL,'оНЛНЫМХЙ ЛЮЬХМХЯР, ЮЦПЕЦЮР ГЮ РЧРЧМЕБХ АЮКХ',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2488,NULL,'оНЛНЫМХЙ НОЕПЮРНП / ОПНХГБНДЯРБН МЮ РНОКНЕМЕПЦХЪ',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2489,NULL,'оНЛНЫМХЙ ОПЕДЯЕДЮРЕК / ЮЙЮДЕЛХЪ',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (2490,NULL,'оНЛНЫМХЙ ПЕЙРНП / БХЯЬЕ СВХКХЫЕ',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (2491,NULL,'оНЛНЫМХЙ-ДКЗФМНЯРМН КХЖЕ ОН ЦПЮФДЮМЯЙН ЯЗЯРНЪМХЕ',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (2492,NULL,'оНЛНЫМХЙ-ЙЮОХРЮМ / ЙНПЮА',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (2493,NULL,'оНЛНЫМХЙ-ЙНМЯЕПБЮРНП  МЮ УСДНФЕЯРБЕМХ ОПНХГБЕДЕМХЪ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2494,NULL,'оНЛНЫМХЙ-МЮВЮКМХЙ ЯЛЪМЮ, ОНДГЕЛЕМ ЛХМЕМ СВЮЯРЗЙ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (2495,NULL,'оНЛНЫМХЙ-НОЕПЮРНП МЮ ОЕВЮРЮПЯЙХ ЛЮЬХМХ',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2496,NULL,'оНЛНЫМХЙ-НОЕПЮРНП, КХРНЦПЮТЯЙХ ЙНМБЕИП',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2497,NULL,'оНЛНЫМХЙ-ПЕФХЯЭНП',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2498,NULL,'оНЛНЫМХЙ-ПЕЯРЮБПЮРНП',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2500,NULL,'оНЛНЫМХЙ-ТЮПЛЮЖЕБР',3228);
INSERT INTO `natc_clasifikator_prof` VALUES (2501,NULL,'оНЛОХЕП, ОЕРПНКМХ ОПНДСЙРХ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2502,NULL,'оНПРХЕП, ФХКХЫМЮ ЯЦПЮДЮ',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2503,NULL,'оНПРХЕП, НАЫЕЯРБЕМЮ ЯЦПЮДЮ',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2505,NULL,'оНЯПЕДМХЙ / ЯОНПР',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2506,NULL,'оНЯПЕДМХЙ, ДЗПФЮБМХ ОНПЗВЙХ',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2507,NULL,'оНЯПЕДМХЙ, ГЮОХЯХ, ЙМХЦХ / ХГДЮРЕКЯРБН',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2508,NULL,'оНЯПЕДМХЙ, МЕДБХФХЛХ ХЛНРХ',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (2509,NULL,'оНЯПЕДМХЙ, ПЮАНРМЮ ЯХКЮ',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (2510,NULL,'оНЯПЕДМХЙ, ЯРНЙХ',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2511,NULL,'оНЯПЕДМХЙ, РПЮМЯОНПРМХ СЯКСЦХ',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (2512,NULL,'оНЯПЕДМХЙ, РСПХЯРХВЕЯЙХ СЯКСЦХ',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2513,NULL,'оНЯПЕДМХЙ, РЗПЦНБЕ',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2514,NULL,'оНЯПЕДМХЙ, ТНМДНБЮ АНПЯЮ',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (2515,NULL,'оНЯПЕДМХЙ, ЖЕММХ ЙМХФЮ',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (2516,NULL,'оНЯРЮМНБВХЙ',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (2519,NULL,'оНВХЯРБЮВ МЮ ЯХРЮ Х ЖСКЮЦХ / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2520,NULL,'оНВХЯРБЮВ, ЕК. БЗГКХ Б СКРПЮГБСЙНБЮ БЮМЮ',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2522,NULL,'оНВХЯРБЮВ-ЬЛХПЦЕКХЯР / КЕЪПЯРБН',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (2523,NULL,'оНЫЮКЭНМ',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (2524,NULL,'оНЫЕМЯЙХ ЙНМРПНКЭНП / ЯЗНАЫЕМХЪ',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2525,NULL,'оНЫЕМЯЙХ НОЕПЮРНП / ЯЗНАЫЕМХЪ',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2526,NULL,'оНЫЕМЯЙХ ЯКСФХРЕК',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2527,NULL,'оПЮБХРЕКЯРБЕМ ЮЦЕМР',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (2528,NULL,'оПЮБХРЕКЯРБЕМ ОПЕБНДЮВ / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (2529,NULL,'оПЮБХРЕКЯРБЕМ ЯЗЮЦЕМР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (2530,NULL,'оПЕАПНХРЕК',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2531,NULL,'оПЕБНДЮВ',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (2532,NULL,'оПЕБНДЮВ ЯЗЯ ЯПЕДМН ЕГХЙ. НАПЮГНБЮМХЕ',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (2533,NULL,'оПЕБНДЮВ, ВЮЯРМЮ ОПЮЙРХЙЮ',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (2534,NULL,'оПЕБНГБЮВ Я КНДЙЮ (КНДЙЮП)',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (2535,NULL,'оПЕДЮВ, ад / РЕЙЯРХКМН ОПНХГБНДЯРБН',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2537,NULL,'оПЕДЮВ, ЦПСАХ ТКЮЕПХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2541,NULL,'оПЕДЮВ, ЛЮИЯРНП',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2543,NULL,'оПЕДЮВ, ПЕФЕЫХ ЛЮЬХМХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2544,NULL,'оПЕДЯЕДЮРЕК / йНМЯРХРСЖХНМЕМ ЯЗД',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2545,NULL,'оПЕДЯЕДЮРЕК / мЮПНДМН ЯЗАПЮМХЕ',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2546,NULL,'оПЕДЯЕДЮРЕК / ЮЙЮДЕЛХЪ',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (2547,NULL,'оПЕДЯЕДЮРЕК / НАЫХМЯЙХ ЯЗБЕР',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (2548,NULL,'оПЕДЯЕДЮРЕК / НПЦЮМХГЮЖХЪ МЮ ОНРПЕАХРЕКХРЕ',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2549,NULL,'оПЕДЯЕДЮРЕК / НПЦЮМХГЮЖХЪ МЮ ПЮАНРНДЮРЕКХ',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2550,NULL,'оПЕДЯЕДЮРЕК / ОНКХРХВЕЯЙЮ ОЮПРХЪ',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (2551,NULL,'оПЕДЯЕДЮРЕК / ЯОНПРЕМ ЙКСА',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (2552,NULL,'оПЕДЯЕДЮРЕК / ЯОНПРМЮ НПЦЮМХГЮЖХЪ',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (2554,NULL,'оПЕДЯЕДЮРЕК / РБНПВЕЯЙН ЯДПСФЕМХЕ',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2555,NULL,'оПЕДЯЕДЮРЕК / ТНМДЮЖХЪ Я ХДЕЮКМЮ ЖЕК',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2557,NULL,'оПЕДЯЕДЮРЕК МЮ ЙНЛХЯХЪ / мЮПНДМН ЯЗАПЮМХЕ',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2558,NULL,'оПЕДЯЕДЮРЕК МЮ НРДЕКЕМХЕ / ЯЗД',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2559,NULL,'оПЕДЯЕДЮРЕК ОНГЕЛКЕМЮ ЙНЛХЯХЪ / НАЫХМЮ',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (2560,NULL,'оПЕДЯЕДЮРЕК, бХЯЬ ЮДБНЙЮРЯЙХ ЯЗБЕР',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (2561,NULL,'оПЕДЯЕДЮРЕК, бЗПУНБЕМ ЮДЛХМХЯРПЮРХБЕМ ЯЗД',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2562,NULL,'оПЕДЯЕДЮРЕК, бЗПУНБЕМ ЙЮЯЮЖХНМЕМ ЯЗД',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2563,NULL,'оПЕДЯЕДЮРЕК, бЗПУНБЕМ ЯЗД',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2565,NULL,'оПЕДЯЕДЮРЕК, оЮРЕМРМН БЕДНЛЯРБН',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2566,NULL,'оПЕДЯЕДЮРЕК, ЮДБНЙЮРЯЙЮ ЙНКЕЦХЪ',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (2567,NULL,'оПЕДЯЕДЮРЕК, ДЗПФЮБМЮ ЮЦЕМЖХЪ',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2568,NULL,'оПЕДЯЕДЮРЕК, ДЗПФЮБМЮ ЙНЛХЯХЪ',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2569,NULL,'оПЕДЯЕДЮРЕК, МЮДГНПЕМ ЯЗБЕР / ДПСФЕЯРБН ОН рг',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (2570,NULL,'оПЕДЯЕДЮРЕК, СОПЮБХРЕКЕМ ЯЗБЕР / ЙННОЕПЮЖХЪ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (2571,NULL,'оПЕДЯРЮБХРЕК / ЙСКРСПМХ ХМЯРХРСЖХХ',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2572,NULL,'оПЕДЯРЮБХРЕК, АХГМЕЯ СЯКСЦХ',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2573,NULL,'оПЕДЯРЮБХРЕК, ОПНДЮФАХ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (2574,NULL,'оПЕГХДЕМР / ЯХМДХЙЮР',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2575,NULL,'оПЕГХДЕМР МЮ пЕОСАКХЙЮРЮ',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2576,NULL,'оПЕКЕГНОЮГЮВ / ФО РПЮМЯОНПР',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (2577,NULL,'оПЕМЮБХБЮВ (ДСАКХПЙХ) / РЕЙЯРХКМН ОПНХГБНДЯРБН',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2580,NULL,'оПЕМЮБХБЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2582,NULL,'оПЕМНЯБЮВ',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (2583,NULL,'оПЕМНЯБЮВ РНБЮПН-ПЮГРНБЮПЮВ',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (2584,NULL,'оПЕОЮПЮРНП, СВЕАМХ ОНЛЮЦЮКЮ',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (2585,NULL,'оПЕОНДЮБЮРЕК / осж',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (2586,NULL,'оПЕОНДЮБЮРЕК / СМХБЕПЯХРЕР, ЙНКЕФ',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (2587,NULL,'оПЕОНДЮБЮРЕК ОН ЙНПЛХКМЮ ОПЮЙРХЙЮ',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (2591,NULL,'оПЕОНДЮБЮРЕК, АЮКЕР',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2592,NULL,'оПЕОНДЮБЮРЕК, ХГЪЫМХ ХГЙСЯРБЮ',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2593,NULL,'оПЕОНДЮБЮРЕК, ЙЮЛЕМНДЕКЯРБН',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2594,NULL,'оПЕОНДЮБЮРЕК, ЛЮЬХМНОХЯ',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2595,NULL,'оПЕОНДЮБЮРЕК, ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2596,NULL,'оПЕОНДЮБЮРЕК, МЮПНДМХ УСДНФЕЯРБЕМХ ГЮМЮЪРХ',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2597,NULL,'оПЕОНДЮБЮРЕК, МЮПНДМН ОЕЕМЕ',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2598,NULL,'оПЕОНДЮБЮРЕК, ОЕВЮРЮПЯРБН',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2599,NULL,'оПЕОНДЮБЮРЕК, ОПХКНФМХ ХГЙСЯРБЮ',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2600,NULL,'оПЕОНДЮБЮРЕК, ПЮАНРЮ Я ЛЕРЮКХ',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (2601,NULL,'оПЕОНДЮБЮРЕК, РЮМЖХ',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2602,NULL,'оПЕЯНБЮВ МЮ ЛНДЕКХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (2603,NULL,'оПЕЯРЗПЦБЮВ, КЮЦЕПХ / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2604,NULL,'оПЕЯЭНП / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2606,NULL,'оПЕЯЭНП, ЦСЛЕМХ Х ОКЮЯРЛЮЯНБХ ТНПЛХ / ОНКХЦПЮТХЪ',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2609,NULL,'оПЕЯЭНП, ЬОЕПОКЮР',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2613,NULL,'оПХЦНРБХРЕК, КЮЙНБЕ Х АЮЦПХКЮ, ДЗПБНДЕКЕЖ',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (2615,NULL,'оПХЦНРБХРЕК, ЯОКЮБХ ГЮ ЮЙСЛСКЮРНПХ / КЕЪПЯРБН',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (2616,NULL,'оПХДПСФХРЕК',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (2617,NULL,'оПХДПСФХРЕК / ОПХПНДЕМ ПЕГЕПБЮР',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2618,NULL,'оПХДПСФХРЕК МЮ ХМБЮКХДХ',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (2619,NULL,'оПХЕЛМХЙ-ГЮПЕФДЮВ МЮ ЫПХОЯ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2620,NULL,'оПХЕЛВХЙ / ХГЙСОСБЮМЕ МЮ ЯЕКЯЙНЯРНОЮМЯЙХ ОПНДСЙРХ',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2622,NULL,'оПХЕЛВХЙ, ЯМЮАДЪБЮМЕ',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (2624,NULL,'оПХЙЮВБЮВ / ДЗПБНДНАХБ',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (2625,NULL,'оПХОНИВХЙ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2626,NULL,'оПХПНДНКЕВХРЕК',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (2627,NULL,'оПХЯКСФМХЙ, КХВЕМ',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (2628,NULL,'оПХЯКСФМХЙ, ПЕКХЦХНГЕМ УПЮЛ',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2629,NULL,'оПХЯКСФМХЙ, ВХЯРЮВ / СВХКХЫЕ',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2631,NULL,'оПНАХБВХЙ / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2632,NULL,'оПНАНБГЕЛЮВ',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (2633,NULL,'оПНБЕПХРЕК / ЯОНПРЕМ РНРЮКХГЮРНП',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (2635,NULL,'оПНБЕПХРЕК, ЛЮПЙХ Х ЖЕММХ ЙМХФЮ',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (2636,NULL,'оПНЦМНГХЯР МЮ БПЕЛЕ',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (2637,NULL,'оПНЦПЮЛЕМ ДХПЕЙРНП / амр, амп',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (2638,NULL,'оПНЦПЮЛХЯР, МЮЯРПНИВХЙ МЮ ОПНЛХЬКЕМХ ПНАНРХ',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (2639,NULL,'оПНЦПЮЛХЯР, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (2640,NULL,'оПНДЮБЮВ / АЕМГХМНЯРЮМЖХЪ (ЦЮГНЯРЮМЖХЪ)',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2641,NULL,'оПНДЮБЮВ / ДХЯРПХАСРХБМЮ РЗПЦНБХЪ',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2642,NULL,'оПНДЮБЮВ / ЛЮЦЮГХМ',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2643,NULL,'оПНДЮБЮВ / НРЙПХР ЫЮМД (ЯЕПЦХЪ)',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2644,NULL,'оПНДЮБЮВ / ОЮГЮП',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2646,NULL,'оПНДЮБЮВ, ДЕЛНМЯРПЮРНП / ЛЮЦЮГХМ',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2647,NULL,'оПНДЮБЮВ, ДХЯРПХАСРНП / ЯЙКЮД МЮ ЕДПН',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2648,NULL,'оПНДЮБЮВ, ДНЯРЮБВХЙ МЮ ЯРНЙХ ОН ЙЮРЮКНЦ / РЗПЦНБХЪ',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2649,NULL,'оПНДЮБЮВ, ХГОЗКМЕМХЕ МЮ ОНПЗВЙХ ОН РЕКЕТНМЮ',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2650,NULL,'оПНДЮБЮВ, ХЛНРХ',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (2651,NULL,'оПНДЮБЮВ, РЕЮРПЮКМХ ОПНЦПЮЛХ',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (2652,NULL,'оПНДЮБЮВ-ЙНМЯСКРЮМР / ЛЮЦЮГХМ',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2653,NULL,'оПНДСЖЕМР',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (2654,NULL,'оПНЕЙРЮМР ХМФЕМЕП, ЕКЕЙРПНМХЙЮ Х ЮБРНЛЮРХЙЮ',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (2655,NULL,'оПНЕЙРЮМР, ЙНЛОЧРЗПМХ ЯХЯРЕЛХ',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (2656,NULL,'оПНЕЙРЮМР, ЯРПНХРЕКЕМ ХМФЕМЕП',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (2658,NULL,'оПНХГБНДХРЕК, АСАЕМН ЯЕЛЕ',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2660,NULL,'оПНХГБНДХРЕК, БЗКМЮ',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2661,NULL,'оПНХГБНДХРЕК, ЦЗАЕМ ЛХЖЕК',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (2662,NULL,'оПНХГБНДХРЕК, ЦЗАХ',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (2663,NULL,'оПНХГБНДХРЕК, ДЗПБЕМ ЮЛАЮКЮФ',7427);
INSERT INTO `natc_clasifikator_prof` VALUES (2664,NULL,'оПНХГБНДХРЕК, ДЗПБЕМХ БЗЦКХЫЮ',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (2665,NULL,'оПНХГБНДХРЕК, ДЗПБЕМХ РПСОХ',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (2666,NULL,'оПНХГБНДХРЕК, ФХБХ ПХАХ ГЮ ПЮГОКНД / ПХАНАЮЯЕИМХ',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (2669,NULL,'оПНХГБНДХРЕК, ГЗПМЕМХ ЙСКРСПХ',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2670,NULL,'оПНХГБНДХРЕК, ХГДЕКХЪ НР ДЗПБН',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2671,NULL,'оПНХГБНДХРЕК, ЙНЬМХВЮПЯЙХ ХГДЕКХЪ, ВЕРЙХ Х ЛЕРКХ',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2672,NULL,'оПНХГБНДХРЕК, ЛКЪЙН',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2673,NULL,'оПНХГБНДХРЕК, НПХГ',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2674,NULL,'оПНХГБНДХРЕК, ОНЯЮДЗВЕМ ЛЮРЕПХЮК',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (2675,NULL,'оПНХГБНДХРЕК, ОПЕЖХГМХ ХМЯРПСЛЕМРХ',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (2676,NULL,'оПНХГБНДХРЕК, ОЗКМЕМХ ЬХБЮЬЙХ ХГДЕКХЪ',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (2677,NULL,'оПНХГБНДХРЕК, ПЮГЯЮДХ',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (2678,NULL,'оПНХГБНДХРЕК, ЯЮПЮЬЙХ ХГДЕКХЪ',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (2679,NULL,'оПНХГБНДХРЕК, ЖЮПЕБХЖЮ',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2680,NULL,'оПНХГБНДХРЕК, ЪИЖЮ',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2681,NULL,'оПНЙНПХЯР',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2682,NULL,'оПНЙСПНП',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (2683,NULL,'оПНЙСПНП-ГЮБЕФДЮЫ НРДЕК / цКЮБМЮ ОПНЙСПЮРСПЮ',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2684,NULL,'оПНЙСПНП-ПЗЙНБНДХРЕК / ЮОЕКЮРХБМЮ ОПНЙСПЮРСПЮ',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2685,NULL,'оПНЛХЬКЕМ ОЯХУНКНЦ',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2686,NULL,'оПНОЮПВХЙ / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2687,NULL,'оПНОНБЕДМХЙ',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (2688,NULL,'оПНЯБЕРХРЕК МЮ НОРХВМХ ЕКЕЛЕМРХ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2689,NULL,'оПНРХПВХЙ-УНМХМЦЛЮЬХМХЯР / ЛЕРЮКННАПЮАНРБЮМЕ',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (2690,NULL,'оПНТЕЯНП',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (2691,NULL,'оПНЪБХРЕК, ТХКЛНБХ ЛЮРЕПХЮКХ',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2692,NULL,'оЯХУНКНЦ',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2693,NULL,'оЯХУНКНЦ / ГДПЮБМН ГЮБЕДЕМХЕ',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2694,NULL,'оЯХУНКНЦ / ЛЕЯРЮ ГЮ КХЬЮБЮМЕ НР ЯБНАНДЮ',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2695,NULL,'оРХЖЕБЗД',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2696,NULL,'оРХЖЕБЗД, ХМЙСАЮРНП',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2698,NULL,'оВЕКЮП',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2699,NULL,'оЗКМЮВ МЮ БЮПЕКХ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2700,NULL,'оЗКМЮВ МЮ ЦЮГНБХ ГЮОЮКЙХ',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2701,NULL,'оЗКМЮВ МЮ ХГНКЮЖХНММН БЗФЕ',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (2703,NULL,'оЗКМЮВ МЮ ПЕЬЕРЙХ / ОПНХГБНДЯРБН МЮ ЮЙСЛСКЮРНПХ',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2704,NULL,'оЗКМЮВ МЮ ЖХЛЕМРНБНГХ',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2706,NULL,'оЗКМЮВ, ОЮЙЕРХПНБЮВ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2708,NULL,'оЗПБХ ЮЯХЯРЕМР МЮ ЯЖЕМНЦПЮТЮ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2709,NULL,'оЗРЕМ ПЮАНРМХЙ',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2711,NULL,'пЮАНРМХЙ (ЯЕГНМЕМ) / ФХБНРМНБЗДЯРБН',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (2712,NULL,'пЮАНРМХЙ / АЕМГХМНЯРЮМЖХЪ',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2713,NULL,'пЮАНРМХЙ / ДЗПБНДНАХБ',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (2714,NULL,'пЮАНРМХЙ / ГННОЮПЙ',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2715,NULL,'пЮАНРМХЙ / ГЗАНРЕУМХВЕЯЙЮ КЮАНПЮРНПХЪ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2716,NULL,'пЮАНРМХЙ / ХГЙСОСБЮМЕ МЮ ЮЛАЮКЮФ',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2717,NULL,'пЮАНРМХЙ / КНБМН ЯРНОЮМЯРБН',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (2718,NULL,'пЮАНРМХЙ / НАЫЕЯРБЕМЮ АЮМЪ',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2719,NULL,'пЮАНРМХЙ / НАЫЕЯРБЕМЮ РНЮКЕРМЮ',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2720,NULL,'пЮАНРМХЙ / ОЮМЮХП, ЯРПЕКАХЫЕ',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2721,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБН МЮ ЮГАЕЯРНБХ ХГДЕКХЪ',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2726,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБН МЮ ЕКЕЙРПНБЮЙССЛМХ ХГДЕКХЪ',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2727,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБН МЮ ФХБЮВМХ ОПЕЙЗЯБЮВХ',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2728,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБН МЮ ЛХЙЮМХРМХ ХГДЕКХЪ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2729,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБН МЮ МЮЛНРЗВМХ ХГДЕКХЪ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2732,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБН МЮ ОХЬЕЫХ ХГДЕКХЪ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2733,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБН МЮ ОПЕЯЛЮРЕПХЮКХ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2734,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБН МЮ ПЮГЯЮДХ Х ЖБЕРЪ',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2737,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБН МЮ ЯНК НР ЛНПЯЙЮ БНДЮ',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2740,NULL,'пЮАНРМХЙ / ОПНХГБНДЯРБНРН МЮ ТНРНЯЗОПНРХБКЕМХЪ',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2741,NULL,'пЮАНРМХЙ / ПЕЛНМР МЮ КХМЕИМХ ЦЮГНОПНБНДХ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (2742,NULL,'пЮАНРМХЙ / ПХАНКЧОХКМХ, ПХАНАЮЯЕИМХ',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (2743,NULL,'пЮАНРМХЙ / ЯЕВЕМЕ МЮ ЛНМЕРХ Х ЛЕДЮКХ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2744,NULL,'пЮАНРМХЙ / ЯНКНДНАХБЕМ ПЮИНМ',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2745,NULL,'пЮАНРМХЙ Б ЮРЕКХЕ / ЙСКРСПМХ ХМЯРХРСЖХХ, РЕКЕБХГХЪ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2746,NULL,'пЮАНРМХЙ Б ЙЮКЗОЕМ ОЮПЙ / НАСБМН ОПНХГБНДЯРБН',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (2747,NULL,'пЮАНРМХЙ Б ЙСУМЪ / НАЫЕЯРБЕМН УПЮМЕМЕ',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (2748,NULL,'пЮАНРМХЙ Б ЛСГЕХ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2751,NULL,'пЮАНРМХЙ ЛХМЕМ, НРБНДМЪБЮМЕ МЮ ПЮАНРМХ ЛЕЯРЮ',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (2754,NULL,'пЮАНРМХЙ МЮ жцю ГЮ ОПНХГБНДЯРБН МЮ ХГДЕКХЪ НР обж',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (2755,NULL,'пЮАНРМХЙ МЮ АНАХМЮПЙЮ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2757,NULL,'пЮАНРМХЙ МЮ ЛЮЬХМЮ ГЮ ЕЛАКЕЛХПЮМЕ, МНЛЕПХПЮМЕ',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2763,NULL,'пЮАНРМХЙ МЮ ВЕОЙЮКН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2765,NULL,'пЮАНРМХЙ МЮ ЬОСКЛЮЬХМЮ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2767,NULL,'пЮАНРМХЙ ОН ЮПУЕНКНЦХВЕЯЙХ ПЮГЙНОЙХ',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2770,NULL,'пЮАНРМХЙ ОН ХГЦНРБЪМЕ МЮ ЦПЕАЕМХ, ПЕФЕЫХ ЛЮЬХМХ',7229);
INSERT INTO `natc_clasifikator_prof` VALUES (2773,NULL,'пЮАНРМХЙ ОН НГЕКЕМЪБЮМЕ / ОЮПЙНБН ЯРНОЮМЯРБН',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2777,NULL,'пЮАНРМХЙ ОН ОПНХГБНДЯРБН МЮ ЙЮСВСЙНБХ ОПНТХКХ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2779,NULL,'пЮАНРМХЙ ОН ЯОЕЖХЮКМН ТСМДХПЮМЕ / ЯРПНХРЕКЯРБН',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (2781,NULL,'пЮАНРМХЙ ОН РСПХЯРХВЕЯЙЮ ЛЮПЙХПНБЙЮ',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2782,NULL,'пЮАНРМХЙ ОН УХЛХВЕЯЙН ВХЯРЕМЕ Х ЦКЮДЕМЕ',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (2783,NULL,'пЮАНРМХЙ, ЮМРЕМХ ГЮ ябв',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (2784,NULL,'пЮАНРМХЙ, ЮПЛЮРСПМХ ВЮЯРХ ГЮ ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2785,NULL,'пЮАНРМХЙ, ЮЖЕРХКЕМНБ ЦЕМЕПЮРНП',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2786,NULL,'пЮАНРМХЙ, АЮЦПХКМЮ ЙСУМЪ  / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (2787,NULL,'пЮАНРМХЙ, АПНМХПЮМЕ / ОПНХГБНДЯРБН МЮ ЙЮАЕКХ',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2791,NULL,'пЮАНРМХЙ, ЦКЮГХПЮМЕ МЮ ЕКЕЙРПНОНПЖЕКЮМНБХ ХГДЕКХЪ',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (2792,NULL,'пЮАНРМХЙ, ЦПЮБХПЮМЕ МЮ ЛПЮЛНПМХ ХГДЕКХЪ',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2793,NULL,'пЮАНРМХЙ, ДЕРЮИКХ Х БЗГКХ ГЮ ЯКЮАНРНЙНБХ ЮОЮПЮРХ',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2794,NULL,'пЮАНРМХЙ, ДНАХБ МЮ ОВЕКМН ЛКЕВХЖЕ Х ОВЕКМЮ НРПНБЮ',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2796,NULL,'пЮАНРМХЙ, ДНЛЮЬМН ОНВХЯРБЮМЕ',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (2798,NULL,'пЮАНРМХЙ, ДНОЗКМХРЕКМН НАЯКСФБЮЫХ ДЕИМНЯРХ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2799,NULL,'пЮАНРМХЙ, ДНЯРЮБЙЮ МЮ ЯРНЙХ ОН ДНЛНБЕРЕ',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2800,NULL,'пЮАНРМХЙ, ДНЯРЮБЙЮ МЮ ТКНРЮЖХНММХ ЮЦПЕЦЮРХ',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (2801,NULL,'пЮАНРМХЙ, ДЗАЕМЕ МЮ ЙНФХ',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2802,NULL,'пЮАНРМХЙ, ДЗПБЕМХ ХЦПЮВЙХ',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2803,NULL,'пЮАНРМХЙ, ДЗПБЕМХ ХГДЕКХЪ ГЮ ДНЛЮЬМЮ СОНРПЕАЮ',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2805,NULL,'пЮАНРМХЙ, ДЗПБЕМХ ЯОНПРМХ ЯЗНПЗФЕМХЪ',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2806,NULL,'пЮАНРМХЙ, ДЗПБЕМХ ЫХОЙХ ГЮ ОПНЯРХПЮМЕ',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2811,NULL,'пЮАНРМХЙ, ГЮОПХДЮМЕ / РЕЙЯРХКМН ОПНХГБНДЯРБН',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2814,NULL,'пЮАНРМХЙ, ГЮПЕФДЮМЕ МЮ ЮЙСЛСКЮРНПХ',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2815,NULL,'пЮАНРМХЙ, ГЮПЕФДЮМЕ ЯЗЯ яцл',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2816,NULL,'пЮАНРМХЙ, ГЮПЕФДЮЫН СЯРПНИЯРБН / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2821,NULL,'пЮАНРМХЙ, ХГЦНРБЪМЕ МЮ БЮКВЕРЮ',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (2822,NULL,'пЮАНРМХЙ, ХГЙСЯРБЕМХ ЖБЕРЪ, АСКВЕМЯЙХ МЮЙХРХ',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2823,NULL,'пЮАНРМХЙ, ХГНКЮЖХЪ МЮ КНЙНЛНРХБМХ ЙНРКХ',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (2824,NULL,'пЮАНРМХЙ, ХГПЮАНРБЮМЕ МЮ ПЮДХНЯЙЮКХ',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2829,NULL,'пЮАНРМХЙ, ЙЮЛЕМННАПЮАНРБЮМЕ',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (2830,NULL,'пЮАНРМХЙ, ЙЮЛЗЬХРМХ Х ЙНЬМХВЮПЯЙХ ХГДЕКХЪ',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2831,NULL,'пЮАНРМХЙ, ЙЕПЮЛХВМХ ЙЮЛЗМХ ГЮ АХФСРЕПХЪ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2833,NULL,'пЮАНРМХЙ, ЙСРХХ ГЮ ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2835,NULL,'пЮАНРМХЙ, КЮЙХПЮМЕ / ОПНХГБНДЯРБН МЮ ЙЮАЕКХ',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2837,NULL,'пЮАНРМХЙ, КХМХЪ ГЮ ОПНХГБНДЯРБН МЮ УКЪА',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2839,NULL,'пЮАНРМХЙ, ЛЮГСРМН ЯРНОЮМЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2840,NULL,'пЮАНРМХЙ, ЛЮПЙХ / ОНКХЦПЮТХЪ',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2841,NULL,'пЮАНРМХЙ, ЛЮПРЕМХЖХ',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2842,NULL,'пЮАНРМХЙ, ЛЮЬХМЮ - КЮЯЕ / ЬХБЮЬЙН ОПНХГБНДЯРБН',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (2843,NULL,'пЮАНРМХЙ, ЛЮЬХМЮ ГЮ РЮКЮЬ / ДЗПБННАПЮАНРБЮМЕ',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (2848,NULL,'пЮАНРМХЙ, ЛЕРЮКМХ ЙНМРЕИМЕПХ',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (2851,NULL,'пЮАНРМХЙ, ЛЕУЮМХВМЮ НАПЮАНРЙЮ МЮ ОХЕГНЙБЮПЖ',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2856,NULL,'пЮАНРМХЙ, ЛНМРЮФ МЮ ДЗПБЕМХ ДЕРЮИКХ',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2857,NULL,'пЮАНРМХЙ, ЛНМРЮФ МЮ ЕКЕЙРПХВЕЯЙХ ЙНЛОНМЕМРХ',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2858,NULL,'пЮАНРМХЙ, ЛНМРЮФ МЮ ЕКЕЙРПНММХ ЙНЛОНМЕМРХ',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2859,NULL,'пЮАНРМХЙ, ЛНМРЮФ МЮ ЕКЕЛЕМРХ БЗПУС ОЕВЮРМХ ОКЮРЙХ',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2860,NULL,'пЮАНРМХЙ, ЛНМРЮФ МЮ ЙНФЕМХ ДЕРЮИКХ',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2861,NULL,'пЮАНРМХЙ, ЛНМРЮФ МЮ ЛЕУЮМХВМХ ЙНЛОНМЕМРХ',8281);
INSERT INTO `natc_clasifikator_prof` VALUES (2862,NULL,'пЮАНРМХЙ, ЛНМРЮФ МЮ РЕЙЯРХКМХ ЙНЛОНМЕМРХ',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2863,NULL,'пЮАНРМХЙ, ЛНМРЮФ МЮ УЮПРХЕМХ ЙНЛОНМЕМРХ',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2865,NULL,'пЮАНРМХЙ, ЛНМРЭНП МЮ ЕКЕЙРПННАНПСДБЮМЕ',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (2866,NULL,'пЮАНРМХЙ, МЮАХПЮМЕ Х ЯЗАХПЮМЕ МЮ ЛЮЦМХРНОПНБНДХ',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2869,NULL,'пЮАНРМХЙ, МЮОПЮБЮ МЮ АНУНПХ / ЯНКНДНАХБ',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2871,NULL,'пЮАНРМХЙ, НАКХВЮМЕ МЮ РЮОХЖЕПЯЙХ ДЕРЮИКХ, РЮОХЖЕП',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (2875,NULL,'пЮАНРМХЙ, НАПЮАНРЙЮ МЮ ЙХМНТХКЛХ',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2876,NULL,'пЮАНРМХЙ, НАПЮАНРЙЮ МЮ ЛЮПХЛХР / ЛЕРЮКСПЦХЪ',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (2877,NULL,'пЮАНРМХЙ, НАПЮАНРЙЮ МЮ ЛЮПХМХР / ЛЕРЮКСПЦХЪ',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2882,NULL,'пЮАНРМХЙ, НАПЮАНРЙЮ МЮ ЯЙЗОНЖЕММХ ЙЮЛЗМХ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2886,NULL,'пЮАНРМХЙ, НАЯКСФБЮМЕ МЮ ДПЮЦЮ',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2887,NULL,'пЮАНРМХЙ, НАЯКСФБЮМЕ МЮ ЯЛЕЯХРЕКХ / РЧРЧМ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2889,NULL,'пЮАНРМХЙ, НАЯКСФБЮЫ ЮРПЮЙЖХНММЮ ДЕИМНЯР',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2890,NULL,'пЮАНРМХЙ, НБНЫЮПЯРБН',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2892,NULL,'пЮАНРМХЙ, НПРНОЕДХВМХ ЮОЮПЮРХ Х ЯЗНПЗФЕМХЪ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2893,NULL,'пЮАНРМХЙ, НРВЕРМХЙ / ЯРПНХРЕКМН-ПЕЛНМРМХ ПЮАНРХ',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2894,NULL,'пЮАНРМХЙ, НТНПЛЪМЕ МЮ ЙЮПРЕКХ',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2895,NULL,'пЮАНРМХЙ, ОЮЙЕРХПЮМЕ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2897,NULL,'пЮАНРМХЙ, ОЮМЮ Х РЕЙЯРХКМЮ ДЕЙНПЮЖХЪ',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (2899,NULL,'пЮАНРМХЙ, ОНЦПЕАЮКМХ ДЗПБЕМХ ХГДЕКХЪ',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2900,NULL,'пЮАНРМХЙ, ОНДЦНРНБЙЮ МЮ ГЮБЮПЗВМХ ДЕРЮИКХ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2901,NULL,'пЮАНРМХЙ, ОНДЦНРНБЙЮ МЮ ЙЮПРХ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2902,NULL,'пЮАНРМХЙ, ОНДЦНРНБЙЮ МЮ ЛЕАЕКМХ ОКНВХ',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (2903,NULL,'пЮАНРМХЙ, ОНДЦНРНБЙЮ МЮ ЯНМДЮФХ ГЮ ПЕЛНМР',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2909,NULL,'пЮАНРМХЙ, ОНДДЗПФЮМЕ МЮ ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2911,NULL,'пЮАНРМХЙ, ОНДДЗПФЮМЕ МЮ УБНЯРНУПЮМХКХЫЕ',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2912,NULL,'пЮАНРМХЙ, ОНДДЗПФЮМЕ МЮ УХДПНРЕУМХВЕЯЙХ ЯЗНПЗФЕМХЪ',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (2915,NULL,'пЮАНРМХЙ, ОНКЮЦЮМЕ МЮ ОЗРМХ МЮЯРХКЙХ',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2917,NULL,'пЮАНРМХЙ, ОНЛОЕМЮ ЯРЮМЖХЪ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2918,NULL,'пЮАНРМХЙ, ОНЛОХЕП',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2919,NULL,'пЮАНРМХЙ, ОНЯРЮБЪМЕ МЮ ЯЙЗОНЖЕММХ ЙЮЛЗМХ Х ОЕПКХ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2920,NULL,'пЮАНРМХЙ, ОНВХЯРБЮМЕ Х ОНДДЗПФЮМЕ / НАЫЕФХРХЕ',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (2921,NULL,'пЮАНРМХЙ, ОНВХЯРБЮМЕ МЮ ФХКЙХ / НАПЮАНРЙЮ МЮ РЧРЧМ',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2922,NULL,'пЮАНРМХЙ, ОНВХЯРБЮМЕ МЮ ЛЮЬХМХ Х ХМЯРЮКЮЖХХ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2924,NULL,'пЮАНРМХЙ, ОНВХЯРБЮМЕ МЮ ПСДМХВМХ ЙЮМЮБЙХ, ОКНЫЮДЙХ',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2926,NULL,'пЮАНРМХЙ, ОНВХЯРБЮМЕ МЮ РЮБЮМХ Х ОПНГНПЖХ',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2927,NULL,'пЮАНРМХЙ, ОНВХЯРБЮМЕ МЮ ТЮЯЮДХ / ЯРПНХРЕКЯРБН',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (2928,NULL,'пЮАНРМХЙ, ОПЮУНБЕ Х ОЮЯРХ ГЮ ГЮБЮПЪБЮМЕ Х ЯОНЪБЮМЕ',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (2929,NULL,'пЮАНРМХЙ, ОПЕДЕМЕ Х ЯБХКНРНВЕМЕ',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2930,NULL,'пЮАНРМХЙ, ОПЕПЮАНРЙЮ МЮ БНЯЗВМЮ ЯСПНБХМЮ',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2931,NULL,'пЮАНРМХЙ, ОПЕПЮАНРЙЮ МЮ ТЕМНК / УХЛХВМХ ОПНЖЕЯХ',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2933,NULL,'пЮАНРМХЙ, ОПЕЯЭНП / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2934,NULL,'пЮАНРМХЙ, ОПЕВХЯРБЮРЕКМЮ ЯРЮМЖХЪ',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2935,NULL,'пЮАНРМХЙ, ОПХЦНРБЪМЕ МЮ ЕКЕЙРПНОНПЖЕКЮМНБЮ ЛЮЯЮ',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (2936,NULL,'пЮАНРМХЙ, ОПХЦНРБЪМЕ МЮ ОХЦЛЕМРХ Х ЯОЕЙРПХ',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2938,NULL,'пЮАНРМХЙ, ОПХЕЛЮМЕ Х ОПЕДЮБЮМЕ МЮ лоя / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (2942,NULL,'пЮАНРМХЙ, ОПНХГБНДЯРБН Х ОНОПЮБЙЮ МЮ ВЮДЗПХ',7449);
INSERT INTO `natc_clasifikator_prof` VALUES (2946,NULL,'пЮАНРМХЙ, ОПНХГБНДЯРБН МЮ ЙНКЕЙРНПХ',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2947,NULL,'пЮАНРМХЙ, ОПНХГБНДЯРБН МЮ ЙПЗБЕМ ЯЕПСЛ',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (2948,NULL,'пЮАНРМХЙ, ОПНХГБНДЯРБН МЮ ЛЕРКХ',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2949,NULL,'пЮАНРМХЙ, ОПНХГБНДЯРБН МЮ ЯЛНКХ / УХЛХВМХ ОПНЖЕЯХ',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2950,NULL,'пЮАНРМХЙ, ОПНОЮМ-АСРЮМ ЯРЮМЖХЪ',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2951,NULL,'пЮАНРМХЙ, ОПНЯКСЬБЮМЕ Х ОПЕГЮОХЯ МЮ ТНМНГЮОХЯ',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (2952,NULL,'пЮАНРМХЙ, ОПНРЕГХПЮМЕ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2953,NULL,'пЮАНРМХЙ, ОПНСВБЮРЕКМХ Х ГЕЛЕЛЕПМХ ПЮАНРХ',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2954,NULL,'пЮАНРМХЙ, ОВЕКМХ ЙНЬЕПХ',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2955,NULL,'пЮАНРМХЙ, ОЗПБХВМЮ НАПЮАНРЙЮ МЮ БЗКМЮ',7432);
INSERT INTO `natc_clasifikator_prof` VALUES (2959,NULL,'пЮАНРМХЙ, ПЮГВХЯРБЮМЕ МЮ РЕПЕМХ',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2961,NULL,'пЮАНРМХЙ, ПЕЛНМР Х ОНДДЗПЮМЕ МЮ РЕЙЯРХКМЮ РЕУМХЙЮ',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (2963,NULL,'пЮАНРМХЙ, ПЕЛНМР МЮ БЕКНЯХОЕДХ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2965,NULL,'пЮАНРМХЙ, ПЕЛНМР МЮ ОНДБХФЕМ ЯЗЯРЮБ / ФО РПЮМЯОНПР',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (2966,NULL,'пЮАНРМХЙ, ПЕЛНМР МЮ ОНРНВМХ КХМХХ',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (2967,NULL,'пЮАНРМХЙ, ПЗВМН ДНПЮАНРБЮМЕ МЮ ОКЮЯРЛЮЯНБХ ДЕРЮИКХ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2968,NULL,'пЮАНРМХЙ, ПЗВМН НАНЦЮРЪБЮМЕ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2972,NULL,'пЮАНРМХЙ, ЯЦКНАЪБЮМЕ МЮ ХЦПЮВЙХ',8286);
INSERT INTO `natc_clasifikator_prof` VALUES (2974,NULL,'пЮАНРМХЙ, ЯЦКНАЪБЮМЕ МЮ ЯОНПРМХ СПЕДХ',8286);
INSERT INTO `natc_clasifikator_prof` VALUES (2975,NULL,'пЮАНРМХЙ, ЯЦЗБЮМЕ МЮ ЙСРХХ',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2977,NULL,'пЮАНРМХЙ, ЯХКНГХ Х БЗЦКХЫМЮ ЙСКЮ / ЛЕРЮКСПЦХЪ',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (2978,NULL,'пЮАНРМХЙ, ЯХРНБХ ЬЮАКНМХ / ОНКХЦПЮТХЪ',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2979,NULL,'пЮАНРМХЙ, ЯЛЮГБЮМЕ МЮ ЛЮЬХМХ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2980,NULL,'пЮАНРМХЙ, ЯНКЕМ ЯРХТ',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2981,NULL,'пЮАНРМХЙ, ЯОНЛЮЦЮРЕКМХ ДЕИМНЯРХ / ЯНКНДНАХБ',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2985,NULL,'пЮАНРМХЙ, ЯРПСМХ ГЮ ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2988,NULL,'пЮАНРМХЙ, ЯРЗЙКНОНЯРЮБЪМЕ',7136);
INSERT INTO `natc_clasifikator_prof` VALUES (2989,NULL,'пЮАНРМХЙ, ЯСБЕМХПХ НР ДЗПБН',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2990,NULL,'пЮАНРМХЙ, ЯСЬХКМН ОНЛЕЫЕМХЕ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2991,NULL,'пЮАНРМХЙ, ЯЗАЮПЪМЕ МЮ ЯЦПЮДХ',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (2993,NULL,'пЮАНРМХЙ, ЯЗНПЗФЕМХЕ МЮ АЕМР',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2996,NULL,'пЮАНРМХЙ, РЕЯРНЛЕЯЮВМЮ ЛЮЬХМЮ',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2997,NULL,'пЮАНРМХЙ, РЕУМХВЕЯЙН ПЕДЮЙРХПЮМЕ / ОНКХЦПЮТХЪ',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (3000,NULL,'пЮАНРМХЙ, РЗЙЮМЕ МЮ ЦНАКЕМХ',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3001,NULL,'пЮАНРМХЙ, СДЮПМХ ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (3003,NULL,'пЮАНРМХЙ, СВЕАМЮ ПЮАНРХКМХЖЮ',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (3004,NULL,'пЮАНРМХЙ, СВЕАМХ ОНЛЮЦЮКЮ - АХНКНЦХВМХ ЛНДЕКХ',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3005,NULL,'пЮАНРМХЙ, СВЕАМХ ОНЛЮЦЮКЮ - БКЮФМХ ОПЕОЮПЮРХ',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3006,NULL,'пЮАНРМХЙ, СВЕАМХ ОНЛЮЦЮКЮ - ЛХЙПНЯЙНОМХ ЛЮРЕПХЮКХ',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3007,NULL,'пЮАНРМХЙ, СВЕАМХ ОНЛЮЦЮКЮ - ЯЙЕКЕРХ',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3008,NULL,'пЮАНРМХЙ, СВЕАМХ ОНЛЮЦЮКЮ - УЕПАЮПХХ Х ЛЮЙЕРХ',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3010,NULL,'пЮАНРМХЙ, ТХЙЯХПЮМЕ Х ЙПЗБНОСЯЙЮМЕ',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3011,NULL,'пЮАНРМХЙ, ТХКХЦПЮММЮ АХФСРЕПХЪ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (3012,NULL,'пЮАНРМХЙ, ТХМЮ ДНБЗПЬХРЕКМЮ ПЮАНРЮ / ЯРПНХРЕКЯРБН',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (3014,NULL,'пЮАНРМХЙ, ТНПЛНБЗВМХ ЯЛЕЯХ / КЕЪПЯРБН',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3016,NULL,'пЮАНРМХЙ, УХДПНРЕУМХВЕЯЙХ ЯЗНПЗФЕМХЪ / ЕМЕПЦЕРХЙЮ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (3018,NULL,'пЮАНРМХЙ, УНКНЦПЮТХЪ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (3020,NULL,'пЮАНРМХЙ, УСДНФЕЯРБЕМН НТНПЛКЕМХЕ МЮ РЕЙЯРХК',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (3022,NULL,'пЮАНРМХЙ, ЬЕОХМЦ-ЛЮЬХМЮ / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3023,NULL,'пЮАНРМХЙ, ЬХБЮВ МЮ АЮКХ / РЧРЧМ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3024,NULL,'пЮАНРМХЙ-РПСДНРЕПЮОЕБР',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3025,NULL,'пЮБХМ',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3026,NULL,'пЮДХЮРНПДФХЪ / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3027,NULL,'пЮДХНЮЯРПНМНЛ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3028,NULL,'пЮДХНЛНМРЭНП, ЙНПЮАЕМ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (3029,NULL,'пЮДХННОЕПЮРНП',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3030,NULL,'пЮДХНРЕКЕЦПЮТХЯР',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3031,NULL,'пЮДХНРЕУМХЙ, ОНДДЗПФЮМЕ МЮ ПЮДХНБПЗГЙЮ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (3032,NULL,'пЮГДЮБЮВ МЮ ПЕЙКЮЛМХ ЛЮРЕПХЮКХ',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (3033,NULL,'пЮГДЮБЮВ, ХМЯРПСЛЕМРХ Х ЛЮРЕПХЮКХ, ХМЯРПСЛЕМРЮКВХЙ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3034,NULL,'пЮГДПНАБЮВ МЮ ХБХЖХ, ЯРЗЙКЕМ БНЮК',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (3036,NULL,'пЮГЙПНИВХЙ / ЛЮЬХМНЯРПНЕМЕ',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3037,NULL,'пЮГКХБЮВ, ЖБЕРМХ ЛЕРЮКХ / КЕЪПЯРБН',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (3039,NULL,'пЮГМНЯБЮВ',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (3040,NULL,'пЮГМНЯБЮВ МЮ ЮЛАЮКЮФ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3042,NULL,'пЮГМНЯБЮВ МЮ ОПХГНБЙХ / ЯЗД',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (3043,NULL,'пЮГМНЯБЮВ МЮ УПЮМЮ / ЯНЖХЮКМХ ЦПХФХ',5133);
INSERT INTO `natc_clasifikator_prof` VALUES (3045,NULL,'пЮГОНПЕДХРЕК, ОПНБЕПХРЕК МЮ АХКЕРХ',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (3047,NULL,'пЮГОПЕДЕКХРЕК МЮ ОЕВЮРЮ / ЯЗНАЫЕМХЪ',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (3048,NULL,'пЮГОПЕДЕКХРЕК-ЙНМРПНКЭНП МЮ ЛЮРЕПХЮКХ / ОНКХЦПЮТХЪ',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (3049,NULL,'пЮГЯЮДНОПНХГБНДХРЕК, ГЕКЕМВСЖХ',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3050,NULL,'пЮГЯРХКНБЮВ, РЮОХЖЕП',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3054,NULL,'пЮГВЕРМХЙ МЮ ОНПЗВЙХ',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (3055,NULL,'пЮГВЕРМХЙ, ОНПЗВЙХ / ЬХБЮЬЙН ОПНХГБНДЯРБН',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (3056,NULL,'пЮИНМЕМ ОПНЙСПНП',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (3057,NULL,'пЮЙЕРНЯРПЕКЕЖ',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (3059,NULL,'пЮЛЮДФХЪ / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3060,NULL,'пЮЯРЕМХЕБЗД, НАКЮЦНПНДЪБЮМЕ МЮ НБНЫМХ ДЗПБЕРЮ',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3061,NULL,'пЮЯРХРЕКМНГЮЫХРМХЙ',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3062,NULL,'пЮТХМЭНП / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3063,NULL,'пЮТХМЭНП, АКЮЦНПНДМХ ЛЕРЮКХ',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (3065,NULL,'пЕЮЦЕМРВХЙ / ДНАХБ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (3066,NULL,'пЕБХГНП - ЯВЕРНБНДХРЕК',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3067,NULL,'пЕБХГНП ОН АЕГНОЮЯМНЯРРЮ / ФО РПЮМЯОНПР',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3068,NULL,'пЕБХГНП, ЛЮРЕПХЮКМН-НРЦНБНПМХ КХЖЮ (лнк)',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3069,NULL,'пЕБХГНП-БЮЦНМХ',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3071,NULL,'пЕЦХЯРПЮРНП, ДЕКНБНДЯРБН',4143);
INSERT INTO `natc_clasifikator_prof` VALUES (3072,NULL,'пЕЦСКХПНБВХЙ МЮ ДБХЦЮРЕК / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3076,NULL,'пЕДЮЙРНП',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3077,NULL,'пЕДЮЙРНП - ЯРХКХЯР',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3079,NULL,'пЕДЮВ',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3084,NULL,'пЕФХЯЭНП МЮ АЮКЕРМХ ОПЕДЯРЮБКЕМХЪ',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (3085,NULL,'пЕФХЯЭНП МЮ БХДЕНЯЛЕЯХРЕКЕМ ОСКР',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3086,NULL,'пЕФХЯЭНП МЮ ЛНМРЮФ',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3087,NULL,'пЕФХЯЭНП МЮ ЛСГХЙЮКМН ОПНХГБЕДЕМХЕ',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (3088,NULL,'пЕФХЯЭНП МЮ ОСКР, ЮСДХНБХГХЪ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3089,NULL,'пЕФХЯЭНП, ОЗПБХ ЮЯХЯРЕМР',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3090,NULL,'пЕФХЯЭНП, ПЮДХН',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3091,NULL,'пЕФХЯЭНП, РЕЮРЗП',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3092,NULL,'пЕФХЯЭНП, РЕКЕБХГХЪ',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3093,NULL,'пЕФХЯЭНП, ТХКЛХ',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3094,NULL,'пЕГЮВ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3095,NULL,'пЕГЮВ, ЙМХЦНБЕГЙХ МНФ / ОНКХЦПЮТХЪ',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (3096,NULL,'пЕГЮВ, ЛЕРЮКМХ КХЯРНБЕ',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (3098,NULL,'пЕГЮВ, ЯЙЮКМХ ЛЮРЕПХЮКХ ГЮ УСДНФЕЯРБЕМЮ ЛНГЮИЙЮ',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (3099,NULL,'пЕГЮВ, ЖХПЙСКЪП / ОНКХЦПЮТХЪ',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (3100,NULL,'пЕГАЮП, ХГДЕКХЪ НР ДЗПБН',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (3101,NULL,'пЕГАНЬКХТНБВХЙ / ЛЕРЮКННАПЮАНРБЮМЕ',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (3102,NULL,'пЕГЕПБЕМ ПЮАНРМХЙ / НАСБМН ОПНХГБНДЯРБН',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (3103,NULL,'пЕЙКЮЛЕМ ЮЦЕМР',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3104,NULL,'пЕЙКЮЛЕМ ЕЙЯОЕПР',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (3105,NULL,'пЕЙРНП / БХЯЬЕ СВХКХЫЕ',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3106,NULL,'пЕКЕИВХЙ / ЕМЕПЦЕРХЙЮ',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (3107,NULL,'пЕМДНЯБЮВ, ДЗПБННАПЮАНРБЮМЕ',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (3108,NULL,'пЕМРЦЕМНБ КЮАНПЮМР',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (3109,NULL,'пЕМРЦЕМНЛЕРПХЯР',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3110,NULL,'пЕОНПРЕП',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3111,NULL,'пЕОНПРЕП, ФСПМЮКХЯР Б ПЮДХН',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3112,NULL,'пЕОНПРЕП, ФСПМЮКХЯР Б РЕКЕБХГХЪ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3113,NULL,'пЕОНПРЕП, ФСПМЮКХЯР БЗБ БЕЯРМХЙ / ЯОХЯЮМХЕ /',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3114,NULL,'пЕОНПРЕП, ЙПХЛХМЮКЕМ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3115,NULL,'пЕОПНДСЙРХБЕМ ТНРНЦПЮТ / ОНКХЦПЮТХЪ',7344);
INSERT INTO `natc_clasifikator_prof` VALUES (3116,NULL,'пЕЯРЮБПЮРНП, ОЮЛЕРМХЖХ МЮ ЙСКРСПЮРЮ',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (3117,NULL,'пЕЯРЮБПЮРНП, ОПНХГБЕДЕМХЪ МЮ ХГЙСЯРБНРН',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (3118,NULL,'пЕЯЭНПЮДФХЪ / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3119,NULL,'пЕРСЬНП / ОНКХЦПЮТХЪ',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (3120,NULL,'пЕРСЬЭНП / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (3121,NULL,'пЕУЮАХКХРЮРНП, БХЯЬЕ НАПЮГНБЮМХЕ',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (3122,NULL,'пЕУЮАХКХРЮРНП, КЕВЕАМЮ ТХГЙСКРСПЮ',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3126,NULL,'пЕУЮАХКХРЮРНП, МЮ ЯКСУЮ, Я ОНКСБХЯЬЕ НАПЮГНБЮМХЕ',3333);
INSERT INTO `natc_clasifikator_prof` VALUES (3127,NULL,'пЕУЮАХКХРЮРНП, ЯОЕЖХЮКХЯР ОН ЦПЗАМЮВМХЪ ЯРЗКА',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3128,NULL,'пЕУЮАХКХРЮРНП, ЯСПДНОЕДЮЦНЦХЙЮ',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (3129,NULL,'пЕУЮАХКХРЮРНП, РЕПЮОЕБР',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3130,NULL,'пЕУЮАХКХРЮРНП, РХТКНОЕДЮЦНЦХЙЮ',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (3131,NULL,'пЕУЮАХКХРЮРНП, РПСДНРЕПЮОХЪ',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3132,NULL,'пЕЖЕМГЕМР',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3133,NULL,'пХАЮП / ЕГЕПМХ Х ПЕВМХ БНДХ',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3134,NULL,'пХАЮП / ЪГНБХП',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3135,NULL,'пХАЮП, ГЮ ЙНМЯСЛЮЖХЪ НР ДНЛЮЙХМЯРБНРН',6211);
INSERT INTO `natc_clasifikator_prof` VALUES (3136,NULL,'пХАНБЗД',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (3137,NULL,'пХАНКНБЕМ МЮДГХПЮРЕК',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (3138,NULL,'пХАНКНБЕЖ / вЕПМНЛНПЯЙН ЙПЮИАПЕФХЕ',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3139,NULL,'пХАНКНБЕЖ / НЙЕЮМЯЙХ БНДХ (ПХАНКНБ)',6153);
INSERT INTO `natc_clasifikator_prof` VALUES (3140,NULL,'пХАНКНБЕЖ / ПЕЙЮ дСМЮБ',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3141,NULL,'пХАНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3146,NULL,'пЗЙНБНДХРЕК (ВКЕМ МЮ ПЗЙНБНДЯРБН) / ЯХМДХЙЮР',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (3149,NULL,'пЗЙНБНДХРЕК / вЕПБЕМ ОНКСЛЕЯЕЖ',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3150,NULL,'пЗЙНБНДХРЕК / ЮБРНРПЮМЯОНПР',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3151,NULL,'пЗЙНБНДХРЕК / АЮМЙЮ,  ГЮЯРПЮУНБЮРЕКМН ДПСФЕЯРБН',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3152,NULL,'пЗЙНБНДХРЕК / АНПЯЮ',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3154,NULL,'пЗЙНБНДХРЕК / ДЗЫЕПМЮ ТХПЛЮ ОН рг',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3155,NULL,'пЗЙНБНДХРЕК / ЕЙЯОЕДХЖХЪ Х ЯЙКЮДНБН ЯРНОЮМЯРБН',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3157,NULL,'пЗЙНБНДХРЕК / ХГЙСОМЮ АЮГЮ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3158,NULL,'пЗЙНБНДХРЕК / ЙННОЕПЮРХБЕМ ОЮГЮП',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3160,NULL,'пЗЙНБНДХРЕК / ЛЮКЙН ОПЕДОПХЪРХЕ, РБНПВЕЯЙН ЮРЕКХЕ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3162,NULL,'пЗЙНБНДХРЕК / ЛЕФДССВХКХЫЕМ ЖЕМРЗП',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (3165,NULL,'пЗЙНБНДХРЕК / НПЦЮМХГЮЖХЪ ГЮ ГЮЙПХКЮ МЮ ФХБНРМХРЕ',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3166,NULL,'пЗЙНБНДХРЕК / НПЦЮМХГЮЖХЪ ГЮ ВНБЕЬЙХРЕ ОПЮБЮ',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3168,NULL,'пЗЙНБНДХРЕК / ОЕРПНКМЮ ЯЙКЮДНБЮ АЮГЮ',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3169,NULL,'пЗЙНБНДХРЕК / ОКЮЯЛЕМРМН-ЯМЮАДХРЕКМЮ АЮГЮ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3170,NULL,'пЗЙНБНДХРЕК / ОНЫЕМЯЙЮ ЯРЮМЖХЪ',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3171,NULL,'пЗЙНБНДХРЕК / ОПЕВХЯРБЮРЕКМЮ ЯРЮМЖХЪ',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (3172,NULL,'пЗЙНБНДХРЕК / ОПНЦПЮЛЕМ ЙНКЕЙРХБ',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3173,NULL,'пЗЙНБНДХРЕК / ОПНЕЙРЮМРЯЙЮ ЦПСОЮ',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3174,NULL,'пЗЙНБНДХРЕК / ОПНЕЙРЮМРЯЙХ ЖЕМРЗП',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3175,NULL,'пЗЙНБНДХРЕК / ОПНЕЙРН-ОПНЦПЮЛЕМ ХМЯРХРСР',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3176,NULL,'пЗЙНБНДХРЕК / ЯЙКЮДНБЮ АЮГЮ',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3178,NULL,'пЗЙНБНДХРЕК / РПЮМЯОНПР, адф: СВЮЯРЗЙ, ОНДПЮИНМ',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3180,NULL,'пЗЙНБНДХРЕК / РЗПЦНБЯЙЮ АЮГЮ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3181,NULL,'пЗЙНБНДХРЕК / РЗПЦНБЯЙХ ЙКНМ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3182,NULL,'пЗЙНБНДХРЕК / РЗПЦНБЯЙХ НАЕЙР',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3183,NULL,'пЗЙНБНДХРЕК / СМХБЕПЯЮКЕМ ЛЮЦЮГХМ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3184,NULL,'пЗЙНБНДХРЕК / УКЮДХКМЮ ЯЙКЮДНБЮ АЮГЮ',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3185,NULL,'пЗЙНБНДХРЕК / УСЛЮМХРЮПМЮ НПЦЮМХГЮЖХЪ',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3187,NULL,'пЗЙНБНДХРЕК АЮГЮ / ЦНПЯЙН, ПХАМН ЯРНОЮМЯРБН',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3188,NULL,'пЗЙНБНДХРЕК ДБХФЕМХЕ / ЮБРНЦЮПЮ',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3189,NULL,'пЗЙНБНДХРЕК ДБХФЕМХЕ / ФО РПЮМЯОНПР',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (3190,NULL,'пЗЙНБНДХРЕК ДЕОЮПРЮЛЕМР / БХЯЬЕ СВХКХЫЕ',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3191,NULL,'пЗЙНБНДХРЕК ЙЮРЕДПЮ / БХЯЬЕ СВХКХЫЕ',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3193,NULL,'пЗЙНБНДХРЕК МЮ ЦПСОЮ РЕУМХВЕЯЙХ НРДЕКХ',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3194,NULL,'пЗЙНБНДХРЕК МЮ ЦПСОЮ РЕУМНКНЦХВМХ НРДЕКХ',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3195,NULL,'пЗЙНБНДХРЕК МЮ ЦПСОЮ РЗПЦНБЯЙХ НРДЕКХ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3196,NULL,'пЗЙНБНДХРЕК МЮ ЕЙХО / ПЕДЮЙЖХЪ',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3197,NULL,'пЗЙНБНДХРЕК МЮ ЙНКЕЦХЪ / амр',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (3198,NULL,'пЗЙНБНДХРЕК МЮОПЮБКЕМХЕ, йННПДХМЮЖХЪ Х ХМБЕЯРХЖХХ',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3199,NULL,'пЗЙНБНДХРЕК МЮОПЮБКЕМХЕ, яЕПБХГ Х ПЕЛНМР',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3201,NULL,'пЗЙНБНДХРЕК МЮОПЮБКЕМХЕ, ХГЙСОСБЮМЕ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3202,NULL,'пЗЙНБНДХРЕК МЮОПЮБКЕМХЕ, ХЙНМНЛХВЕЯЙЮ ОНКХРХЙЮ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3204,NULL,'пЗЙНБНДХРЕК МЮОПЮБКЕМХЕ, ОПНХГБНДЯРБЕМН-РЕУМХВЕЯЙХ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3205,NULL,'пЗЙНБНДХРЕК МЮОПЮБКЕМХЕ, ОПНХГБНДЯРБН',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3206,NULL,'пЗЙНБНДХРЕК МЮОПЮБКЕМХЕ, ПЕЙКЮЛЮ',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3207,NULL,'пЗЙНБНДХРЕК МЮОПЮБКЕМХЕ, РПЮМЯОНПР Х ГЮЯРПЮУНБЙХ',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3209,NULL,'пЗЙНБНДХРЕК НАЕЙР / ДЗПБНДНАХБ',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3210,NULL,'пЗЙНБНДХРЕК ОНКЕРХ',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3211,NULL,'пЗЙНБНДХРЕК ОНЯРЮМНБЗВМЮ ВЮЯР',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3212,NULL,'пЗЙНБНДХРЕК ЯЛЪМЮ / ФО ЦЮПЮ',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (3213,NULL,'пЗЙНБНДХРЕК РЗПЦНБЯЙЮ ЕЙЯОКНЮРЮЖХЪ / РПЮМЯОНПР',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (3214,NULL,'пЗЙНБНДХРЕК СВЮЯРЗЙ / ЯЕКЯЙН, ЦНПЯЙН ЯРНОЮМЯРБН',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3215,NULL,'пЗЙНБНДХРЕК ВЕРЮ / ФО РПЮМЯОНПР',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3216,NULL,'пЗЙНБНДХРЕК, яЗБЕР МЮ МНРЮПХСЯХРЕ',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (3217,NULL,'пЗЙНБНДХРЕК, рпг, ЙЮДПХ Х НУПЮМЮ МЮ РПСДЮ',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (3219,NULL,'пЗЙНБНДХРЕК, ЮДЛХМХЯРПЮРХБМН-ЯРНОЮМЯЙХ НРДЕК',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3223,NULL,'пЗЙНБНДХРЕК, ДНЦНБЮПЪМЕ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3224,NULL,'пЗЙНБНДХРЕК, ЕБПНОЕИЯЙЮ ХМРЕЦПЮЖХЪ',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3225,NULL,'пЗЙНБНДХРЕК, ГЮБЕДЕМХЕ / АХРНБХ СЯКСЦХ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3226,NULL,'пЗЙНБНДХРЕК, ГБЕМН ГЮ ЙЮОХРЮКМН ЯРПНХРЕКЯРБН',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3227,NULL,'пЗЙНБНДХРЕК, ХМЯОЕЙРНПЮР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (3230,NULL,'пЗЙНБНДХРЕК, ЙЮВЕЯРБЕМ РЕУМХВЕЯЙХ ЙНМРПНК',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3231,NULL,'пЗЙНБНДХРЕК, ЙНЛСМЮКМХ СЯКСЦХ',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (3232,NULL,'пЗЙНБНДХРЕК, ЛЕФДСМЮПНДМН ЯЗРПСДМХВЕЯРБН',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3233,NULL,'пЗЙНБНДХРЕК, МЮСВМЮ ЯЕЙЖХЪ',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (3234,NULL,'пЗЙНБНДХРЕК, НАНЯНАЕМН ОПНХГБНДЯРБН',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3235,NULL,'пЗЙНБНДХРЕК, ОЮГЮПМЮ ОНКХРХЙЮ',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3236,NULL,'пЗЙНБНДХРЕК, ОНЯРЮМНБЗВМЮ ВЮЯР',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3237,NULL,'пЗЙНБНДХРЕК, ОПЮБЕМ НРДЕК',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (3238,NULL,'пЗЙНБНДХРЕК, ОПЕЯЯКСФАЮ / оПЕГХДЕМРЯРБН',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (3239,NULL,'пЗЙНБНДХРЕК, ОПНХГБНДЯРБЕМ  СВЮЯРЗЙ',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3240,NULL,'пЗЙНБНДХРЕК, ОПНХГБНДЯРБЕМ НРДЕК',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3242,NULL,'пЗЙНБНДХРЕК, ПЕЛНМРМЮ АЮГЮ / АХРНБХ СПЕДХ',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3243,NULL,'пЗЙНБНДХРЕК, РБНПВЕЯЙХ ТНМД',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3244,NULL,'пЗЙНБНДХРЕК, РЕУМХВЕЯЙН МЮОПЮБКЕМХЕ',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3245,NULL,'пЗЙНБНДХРЕК, ТХМЮМЯНБН-ХЙНМНЛХВЕЯЙН МЮОПЮБКЕМХЕ',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (3246,NULL,'пЗЙНБНДХРЕК, УХЛХВЕЯЙЮ КЮАНПЮРНПХЪ',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3247,NULL,'пЗЙНБНДХРЕК, УСДНФЕЯРБЕМН НЯБЕРКЕМХЕ Х НГБСВЮБЮМЕ',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3249,NULL,'пЗЙНБНДХРЕК, ЖЕУНБЮ КЮАНПЮРНПХЪ',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3250,NULL,'пЗЙНБНДМХ ЯКСФХРЕКХ Б жрекй Х рекй',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (3251,NULL,'яЮКНМЕМ СОПЮБХРЕК',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (3252,NULL,'яЮМХРЮП / ЮОРЕЙЮ',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3253,NULL,'яЮМХРЮП / БЕРЕПХМЮПМЮ КЕВЕАМХЖЮ',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3254,NULL,'яЮМХРЮП / ДНЛ ГЮ ЯНЖХЮКМХ ЦПХФХ',5133);
INSERT INTO `natc_clasifikator_prof` VALUES (3255,NULL,'яЮМХРЮП / ГДПЮБМН ГЮБЕДЕМХЕ',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3256,NULL,'яЮМХРЮП / ЯРНЛЮРНКНЦХЪ',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3257,NULL,'яЮМХРЮП, ДНЛЮЬЕМ ОЮРПНМЮФ',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (3258,NULL,'яЮМХРЮПЕМ ХМЯОЕЙРНП',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (3259,NULL,'яЮОЮМДФХЪ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (3260,NULL,'яЮПЮТ',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (3261,NULL,'яЮПЮВ',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (3262,NULL,'яЮЪДФХЪ / НАСБМН ОПНХГБНДЯРБН',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (3263,NULL,'яБЕЫЕМХЙ',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3264,NULL,'яБЕЫНХГЦНРБХРЕК',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3265,NULL,'яБХКЮП / РЕЙЯРХКМН ОПНХГБНДЯРБН',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (3266,NULL,'яБХМЕБЗД',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (3267,NULL,'яДЮРЗВЕМ ЙЮОХРЮМ / ЙНПЮА',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (3268,NULL,'яЕАЕЯРНИВХЙ',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3269,NULL,'яЕАЕЯРНИВХЙ, ОКЮМНБХЙ',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3270,NULL,'яЕАЕЯРНИВХЙ, ЖЕМНБХЙ',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3271,NULL,'яЕДКЮП',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (3272,NULL,'яЕГНМЕМ ПЮАНРМХЙ / ЦНПЯЙН ЯРНОЮМЯРБН',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (3273,NULL,'яЕГНМЕМ ПЮАНРМХЙ, ОНКЕБЗДЯРБН',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (3274,NULL,'яЕХГЛНКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (3275,NULL,'яЕЙЮВ Я ПЗВМХ ХМЯРПСЛЕМРХ / ДЗПБНДНАХБ',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (3276,NULL,'яЕЙЮВ, ЛНРНПЕМ РПХНМ Х ЛХМХКЕАЕДЙЮ / ДЗПБНДНАХБ',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (3277,NULL,'яЕЙПЕРЮП',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3279,NULL,'яЕЙПЕРЮП / ЮДБНЙЮРЯЙЮ ЙНКЕЦХЪ',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3280,NULL,'яЕЙПЕРЮП / ЮЯНЖХЮЖХЪ',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3281,NULL,'яЕЙПЕРЮП / НАЫХМЮ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3282,NULL,'яЕЙПЕРЮП / ЯЗДЕАМН-ХГОЗКМХРЕКМЮ ЯКСФАЮ',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3283,NULL,'яЕЙПЕРЮП МЮ БНЕММН ЮРЮЬЕ',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (3284,NULL,'яЕЙПЕРЮП МЮ ХГОЗКМХРЕКМХЪ ДХПЕЙРНП',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3285,NULL,'яЕЙПЕРЮП МЮ ЙНЛХЯХЪ / мЮПНДМН ЯЗАПЮМХЕ',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3286,NULL,'яЕЙПЕРЮП МЮ ПЕЙРНП',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3288,NULL,'яЕЙПЕРЮП ОНГЕЛКЕМЮ ЙНЛХЯХЪ / НАЫХМЮ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3289,NULL,'яЕЙПЕРЮП, ЙЛЕРЯРБН (ПЮИНМ)',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3290,NULL,'яЕЙПЕРЮП, ОПНСВБЮМЕ МЮ ХМТНПЛЮЖХНММЮ ПЮАНРЮ',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (3291,NULL,'яЕЙПЕРЮП-ЙЮЯХЕП Б СВЕАМН ГЮБЕДЕМХЕ',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3292,NULL,'яЕЙПЕРЮП-ЙННПДХМЮРНП',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3293,NULL,'яЕЙПЕРЮП-ОПНРНЙНКХЯР',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3294,NULL,'яЕЙЖХНМЕМ ЛЮИЯРНП / РЕЙЯРХКМН ОПНХГБНДЯРБН',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3295,NULL,'яЕЙЖХНМЕМ ЛЮИЯРНП / ЬХБЮЬЙН ОПНХГБНДЯРБН',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (3298,NULL,'яЕЙЖХНМЕМ ЛЮИЯРНП, ОПЕДЮВМХ ЛЮЬХМХ',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (3299,NULL,'яЕЙЖХНМЕМ ЛЮИЯРНП, РЗЙЮВМХ ЛЮЬХМХ',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3300,NULL,'яЕКЕЙЖХНМЕП, ФХБНРМНБЗД',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3301,NULL,'яЕКЕЙЖХНМЕП, ЙПЗЯРНЯЮМХ ФХБНРМХ',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3302,NULL,'яЕКЕЙЖХНМЕП, ПЮЯРЕМХЕБЗД',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3304,NULL,'яЕЛЮМРХЙ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3305,NULL,'яЕЛЮЯХНКНЦ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3306,NULL,'яЕЛЕАЕПЮВ, ЯЕЛЕЯЗАХПЮВ',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (3307,NULL,'яЕЛЕДНАХБМХЙ',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3308,NULL,'яЕМЯХРНЛЕРПХЯР',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3309,NULL,'яЕПБХГЕМ ПЮАНРМХЙ, ПЕЙКЮЛЮЖХХ МЮ ЛЕАЕКХ Х ДНЦПЮЛЮ',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (3310,NULL,'яЕПБХРЭНП',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (3311,NULL,'яЕПФЮМР / бЗНПЗФЕМХ ЯХКХ',1);
INSERT INTO `natc_clasifikator_prof` VALUES (3312,NULL,'яЕПМХПНБЮВ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3313,NULL,'яЕПСЛ-ОПНДСЖЕМР',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3314,NULL,'яЕЯРПЮ, ЛЕДХЖХМЯЙЮ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (3315,NULL,'яЕЪВ, ЛЕРЮКМХ ОПЮУНБЕ Х ЯЛЕЯХ / ОПЮУНБЮ ЛЕРЮКСПЦХЪ',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (3316,NULL,'яХЦМЮКХЯР-ЛЮМЕБПХЯР / ФО РПЮМЯОНПР',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3317,NULL,'яХЦМЮКХЯР-ЛЮМЕБПХЯР / ОНДГЕЛЕМ ДНАХБ',8112);
INSERT INTO `natc_clasifikator_prof` VALUES (3318,NULL,'яХЦМЮКХЯР-НУПЮМХРЕК / ФО РПЮМЯОНПР',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (3319,NULL,'яХКЮФЭНП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (3320,NULL,'яХМДХЙ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3322,NULL,'яХПНОВХЪ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7412);
INSERT INTO `natc_clasifikator_prof` VALUES (3323,NULL,'яХЯРЕЛ-ЮДЛХМХЯРПЮРНП',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (3324,NULL,'яХЯРЕЛ-НОЕПЮРНП, ехл',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (3325,NULL,'яХЯРЕЛ-НПЦЮМХГЮРНП, ЕТЕЙРХБМНЯР МЮ ЯХЯРЕЛХРЕ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3326,NULL,'яХЯРЕЛ-НПЦЮМХГЮРНП, ЕТЕЙРХБМНЯР МЮ РЗПЦНБХЪРЮ',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (3327,NULL,'яХЯРЕЛ-ОПНЦПЮЛХЯР, АЮГЮ ДЮММХ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3328,NULL,'яХЯРЕЛ-ОПНЦПЮЛХЯР, ЙНЛСМХЙЮЖХХ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3329,NULL,'яХЯРЕЛ-ОПНЦПЮЛХЯР, ОПНХГБНДЯРБЕМХ ЯХЯРЕЛХ Х ПНАНРХ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3330,NULL,'яХРНОЕВЮРЮП / ОНКХЦПЮТХЪ',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (3331,NULL,'яЙКЮДНБ СОПЮБХРЕК',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3332,NULL,'яЙПНАБЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (3333,NULL,'яЙСКОРНП',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (3334,NULL,'яКЮДЙЮП / НАЫЕЯРБЕМН УПЮМЕМЕ',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (3335,NULL,'яКЕДНБЮРЕК',2425);
INSERT INTO `natc_clasifikator_prof` VALUES (3336,NULL,'яКНБНЯКЮЦЮРЕК / ОНКХЦПЮТХЪ',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (3337,NULL,'яКСФХРЕК / ВХРЮКХЫЕ',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3338,NULL,'яКСФХРЕК лбп - НАЫХ ЯКСФАХ',3454);
INSERT INTO `natc_clasifikator_prof` VALUES (3339,NULL,'яКСФХРЕК лбп - ЯОЕЖХЮКМХ ЯКСФАХ',3459);
INSERT INTO `natc_clasifikator_prof` VALUES (3341,NULL,'яКСФХРЕК, ДЗПФЮБЕМ ЮОЮПЮР / МЮЖХНМЮКМЮ ЯХЦСПМНЯР',3451);
INSERT INTO `natc_clasifikator_prof` VALUES (3344,NULL,'яЛЕЯХРЕК МЮ БКЮЙМЮ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (3345,NULL,'яЛНКНБЮП / ДЗПБННАПЮАНРБЮМЕ',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (3346,NULL,'яЛНКЪП',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (3347,NULL,'яМЮАДХРЕК',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (3348,NULL,'яМНБЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3349,NULL,'яНКЮП МЮ ПХАЮ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3350,NULL,'яНКХЯР, АЮКЕРХЯР',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (3351,NULL,'яНКХЯР, ЙНМЖЕПРХПЮЫ ЮПРХЯР',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (3352,NULL,'яНКНДНАХБВХЙ',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (3353,NULL,'яНМДЭНП',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (3354,NULL,'яНПРХПНБЮВ',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3355,NULL,'яНПРХПНБЮВ / ОНКХЦПЮТХЪ',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3356,NULL,'яНПРХПНБЮВ Х НОЮЙНБВХЙ, ЛЕРЮКЕМ ЮЛАЮКЮФ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (3357,NULL,'яНПРХПНБЮВ МЮ РЧРЧМ',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3358,NULL,'яНПРХПНБЮВ, АХКЙХ',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (3359,NULL,'яНТРСЕПХЯР, ЮМЮКХГ МЮ ЯХЯРЕЛХ',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3360,NULL,'яНТРСЕПХЯР, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3361,NULL,'яНЖХЮКЕМ ЙНМЯСКРЮМР',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3362,NULL,'яНЖХЮКЕМ ПЮАНРМХЙ SOS ОНЛНЫМХЙ-ЛЮИЙЮ',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3363,NULL,'яНЖХЮКЕМ ПЮАНРМХЙ SOS-ЛЮИЙЮ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3364,NULL,'яНЖХЮКЕМ ПЮАНРМХЙ, ЕЙЯОЕПР',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3365,NULL,'яНЖХЮКЕМ ПЮАНРМХЙ, ЙПХЛХМНКНЦ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3366,NULL,'яНЖХЮКЕМ ПЮАНРМХЙ, ОЕМНКНЦ',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3367,NULL,'яНЖХЮКЕМ ПЮАНРМХЙ, ЯОЕЖХЮКХЯР',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3368,NULL,'яНЖХНКНЦ, МЮСВЕМ ПЮАНРМХЙ',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3369,NULL,'яНЖХНКНЦ, ОПНХГБНДЯРБЕМ',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3370,NULL,'яНЖХНКНЦ, ОПНСВБЮМЕ МЮ НАЫЕЯРБЕМНРН ЛМЕМХЕ',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3371,NULL,'яНЖХНКНЦ, ЯНЖХЮКМЮ ОЮРНКНЦХЪ',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3372,NULL,'яОЮЯХРЕК ЛХМЕМ, НАЕЙР Х ЮБЮПХИМЮ АЮГЮ',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (3373,NULL,'яОЮЯХРЕК МЮ ОКЮФ',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (3374,NULL,'яОЕДХРНП',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (3375,NULL,'яОЕЖХЮКХЯР / аЧПН ОН РПСДЮ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3376,NULL,'яОЕЖХЮКХЯР / цКЮБМЮ ДХПЕЙЖХЪ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3377,NULL,'яОЕЖХЮКХЯР / лХМХЯРЕПЯРБН МЮ НРАПЮМЮРЮ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3378,NULL,'яОЕЖХЮКХЯР / рЕПХРНПХЮКМН ЯРЮРХЯРХВЕЯЙН АЧПН',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3379,NULL,'яОЕЖХЮКХЯР / БНДМН-НРОЮДЗВМН ЯРНОЮМЯРБН',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3381,NULL,'яОЕЖХЮКХЯР / ДЮМЗВМЮ ЮДЛХМХЯРПЮЖХЪ',3446);
INSERT INTO `natc_clasifikator_prof` VALUES (3382,NULL,'яОЕЖХЮКХЯР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3383,NULL,'яОЕЖХЮКХЯР / ЕТЕЙРХБМН ХГОНКГБЮМЕ МЮ ЛЮРЕПХЮКХРЕ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3384,NULL,'яОЕЖХЮКХЯР / ХГБЗМЙКЮЯМЮ Х ХГБЗМСВХКХЫМЮ ДЕИМНЯР',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3385,NULL,'яОЕЖХЮКХЯР / ХЛОПЕЯЮПЯЙЮ ЙЗЫЮ',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3386,NULL,'яОЕЖХЮКХЯР / ЛХРМХВЕЯЙХ ОСМЙР',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3387,NULL,'яОЕЖХЮКХЯР / ЛХРМХВЕЯЙН АЧПН',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3388,NULL,'яОЕЖХЮКХЯР / ЛНМРЮФМН-ПЕЛНМРМХ ПЮАНРХ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3389,NULL,'яОЕЖХЮКХЯР / НАКЮЯРМЮ ЮДЛХМХЯРПЮЖХЪ',3443);
INSERT INTO `natc_clasifikator_prof` VALUES (3390,NULL,'яОЕЖХЮКХЯР / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',3444);
INSERT INTO `natc_clasifikator_prof` VALUES (3392,NULL,'яОЕЖХЮКХЯР / ОПЕЯЯКСФАЮ',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (3394,NULL,'яОЕЖХЮКХЯР / ЯНЖХЮКМХ ДЕИМНЯРХ',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3395,NULL,'яОЕЖХЮКХЯР / ЯНЖХЮКМН ОНДОНЛЮЦЮМЕ Х НПХЕМРХПЮМЕ',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3396,NULL,'яОЕЖХЮКХЯР / РЕКЕЙНЛСМХЙЮЖХХ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3397,NULL,'яОЕЖХЮКХЯР / СВЕМХВЕЯЙЮ ЯОНПРМЮ ЬЙНКЮ',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3399,NULL,'яОЕЖХЮКХЯР, ЮБРНЛЮРХГХПЮМХ ОПНХГБНДЯРБЕМХ ЯХЯРЕЛХ',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3401,NULL,'яОЕЖХЮКХЯР, АЮГНОЮЯМНЯР МЮ РПСДЮ',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (3402,NULL,'яОЕЖХЮКХЯР, ДНАПНБНКМН НЯХЦСПЪБЮМЕ',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (3404,NULL,'яОЕЖХЮКХЯР, ДЗПФЮБМХ ОНПЗВЙХ',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3405,NULL,'яОЕЖХЮКХЯР, ГЮДЗКФХРЕКМН ЯНЖХЮКМН НЯХЦСПЪБЮМЕ',3449);
INSERT INTO `natc_clasifikator_prof` VALUES (3406,NULL,'яОЕЖХЮКХЯР, ГДПЮБМН НЯХЦСПЪБЮМЕ',3449);
INSERT INTO `natc_clasifikator_prof` VALUES (3407,NULL,'яОЕЖХЮКХЯР, ХМТНПЛЮЖХНММХ РЕУМНКНЦХХ',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3408,NULL,'яОЕЖХЮКХЯР, ЙЮРЮКНФМЮ РЗПЦНБХЪ',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3409,NULL,'яОЕЖХЮКХЯР, ЙЮВЕЯРБН МЮ ОПНДСЙЖХЪРЮ',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3411,NULL,'яОЕЖХЮКХЯР, ЙНЛОЧРЗПМЮ ЛПЕФЮ',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3412,NULL,'яОЕЖХЮКХЯР, ЙНМРПНКЭНП',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3413,NULL,'яОЕЖХЮКХЯР, ЙНПЕЯОНМДЕМР',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3414,NULL,'яОЕЖХЮКХЯР, ЛЮПЙЕРХМЦ, НТЕПРХ Х ЖЕМХ',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3415,NULL,'яОЕЖХЮКХЯР, МЮСВМЮ ЮОЮПЮРСПЮ',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (3416,NULL,'яОЕЖХЮКХЯР, МЕДБХФХЛХ ХЛНРХ',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (3417,NULL,'яОЕЖХЮКХЯР, НПЦЮМХГЮРНП ОН ПЕЙКЮЛЮ',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3418,NULL,'яОЕЖХЮКХЯР, НПЦЮМХГХПЮМЕ МЮ ОПНДЮФАХРЕ',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3419,NULL,'яОЕЖХЮКХЯР, НРВЕРМХЙ',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3420,NULL,'яОЕЖХЮКХЯР, НУПЮМЮ МЮ РПСДЮ',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (3421,NULL,'яОЕЖХЮКХЯР, ОНФЮПМЮ АЕГНОЮЯМНЯР / ОПНХГБНДЯРБН',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (3422,NULL,'яОЕЖХЮКХЯР, ОНКХЦПЮТХЯР',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3423,NULL,'яОЕЖХЮКХЯР, ОНВХЯРБЮМЕ МЮ БНДХРЕ Х БЗГДСУЮ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3424,NULL,'яОЕЖХЮКХЯР, ОПЕЖХГМЮ РЕУМХЙЮ',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (3426,NULL,'яОЕЖХЮКХЯР, ЯРЮРХЯРХВЕЯЙЮ ХМТНПЛЮЖХЪ',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3427,NULL,'яОЕЖХЮКХЯР, ЯРНКНБН УПЮМЕМЕ Х ГДПЮБЕНОЮГБЮМЕ',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (3428,NULL,'яОЕЖХЮКХЯР, ЯРПНХРЕКМН-ПЕЛНМРМХ ПЮАНРХ',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3429,NULL,'яОЕЖХЮКХЯР, ЯВЕРНБНДМХ ЙНМЯСКРЮЖХХ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3430,NULL,'яОЕЖХЮКХЯР, ЯЗРПСДМХЙ Б КХВЕМ ЯЗЯРЮБ',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3431,NULL,'яОЕЖХЮКХЯР, ЯЗРПСДМХЙ ОН ТХМЮМЯХ',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3432,NULL,'яОЕЖХЮКХЯР, РЮПХТХПЮМЕ',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (3433,NULL,'яОЕЖХЮКХЯР, РПСД Х ПЮАНРМЮ ГЮОКЮРЮ',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3434,NULL,'яОЕЖХЮКХЯР, РСПХЯРХВЕЯЙХ СЯКСЦХ',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (3435,NULL,'яОЕЖХЮКХЯР, РЗПЦНБЯЙЮ ДЕИМНЯР',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3436,NULL,'яОЕЖХЮКХЯР, СОПЮБКЕМХЕ МЮ ОЕПЯНМЮКЮ',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3437,NULL,'яОЕЖХЮКХЯР, СВЕАМЮ РЕУМХЙЮ',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3438,NULL,'яОЕЖХЮКХЯР, ТХКНКНЦ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3439,NULL,'яОЕЖХЮКХЯР, ТХМЮМЮЯНБ НРВЕР Х ЮМЮКХГ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3441,NULL,'яОЕЖХЮКХЯР-ЯЕЙПЕРЮП',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3442,NULL,'яОЕЖХЮКХЯР-ЯРЕМНЦПЮТ / мЮПНДМН ЯЗАПЮМХЕ',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (3443,NULL,'яОХПЮВ / ФО РПЮМЯОНПР',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3444,NULL,'яОНИБЮВ, ОКЮЯРЛЮЯНБХ ХГДЕКХЪ',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (3446,NULL,'яОНПРЕМ ХМЯРПСЙРНП',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3447,NULL,'яОНПРЕМ ЛЕРНДХЯР',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3448,NULL,'яРЮФЮМР-ЮДБНЙЮР',2421);
INSERT INTO `natc_clasifikator_prof` VALUES (3449,NULL,'яРЮФЮМР-ЮПРХЯР',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (3450,NULL,'яРЮМДЮПРХГЮРНП',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (3451,NULL,'яРЮПРЭНП / БЗГДСЬeМ РПЮМЯОНПР',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3452,NULL,'яРЮПЬЮ ЮЙСЬЕПЙЮ',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (3453,NULL,'яРЮПЬЮ ЛЕДХЖХМЯЙЮ ЯЕЯРПЮ',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (3454,NULL,'яРЮПЬЮ ЯРЧЮПДЕЯЮ (ЯРЧЮПД) / БЗГДСЬЕМ РПЮМЯОНПР',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (3455,NULL,'яРЮПЬХ ЮЯХЯРЕМР',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (3456,NULL,'яРЮПЬХ ЕЙЯОЕПР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3457,NULL,'яРЮПЬХ ЕЙЯОЕПР / НАКЮЯРМЮ ЮДЛХМХЯРПЮЖХЪ',2473);
INSERT INTO `natc_clasifikator_prof` VALUES (3458,NULL,'яРЮПЬХ ЕЙЯОЕПР / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3459,NULL,'яРЮПЬХ ФО ПЮАНРМХЙ',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (3460,NULL,'яРЮПЬХ ХМЯОЕЙРНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3461,NULL,'яРЮПЬХ ХМЯОЕЙРНП ОН РПСДЮ',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (3462,NULL,'яРЮПЬХ КЕЙЮП / ГДПЮБМН ГЮБЕДЕМХЕ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (3463,NULL,'яРЮПЬХ ЛЕДХЖХМЯЙХ КЮАНПЮМР',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (3464,NULL,'яРЮПЬХ ЛХРМХВЕЯЙХ ХМЯОЕЙРНП',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3465,NULL,'яРЮПЬХ МЮСВЕМ ЯЗРПСДМХЙ I ЯРЕОЕМ',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (3466,NULL,'яРЮПЬХ МЮСВЕМ ЯЗРПСДМХЙ II ЯРЕОЕМ',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (3467,NULL,'яРЮПЬХ ОПЕОНДЮБЮРЕК / СМХБЕПЯХРЕР, ЙНКЕФ',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (3469,NULL,'яРЮПЬХ ПЕГЕПБЕМ ПЮАНРМХЙ / ЬХБЮЬЙН ОПНХГБНДЯРБН',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (3470,NULL,'яРЮПЬХ ПЕМРЦЕМНБ КЮАНПЮМР',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (3471,NULL,'яРЮПЬХ ПЕУЮАХКХРЮРНП, РЕПЮОЕБР',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3472,NULL,'яРЮПЬХ ЯОЕЖХЮКХЯР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3473,NULL,'яРЮПЬХ ЯВЕРНБНДХРЕК / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3474,NULL,'яРЮПЬХ ЯВЕРНБНДХРЕК / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3475,NULL,'яРЮПЬХ ЯЗБЕРМХЙ / лХМХЯРЕПЯЙХ ЯЗБЕР',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3476,NULL,'яРЮПЬХ ЯЗДЕАЕМ ХМЯОЕЙРНП',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (3477,NULL,'яРЮПЬХ РЗЙЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3478,NULL,'яРЮПЬХ СВХРЕК',2321);
INSERT INTO `natc_clasifikator_prof` VALUES (3479,NULL,'яРЮПЬХ ТХМЮМЯНБ ПЕБХГНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (3480,NULL,'яРЮПЬХ ЧПХЯРЙНМЯСКР',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (3481,NULL,'яРЮПЬХ ЧПХЯРЙНМЯСКР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3482,NULL,'яРЮПЬХ ЧПХЯРЙНМЯСКР / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3483,NULL,'яРЮПЬХ-ОНЛНЫМХЙ ЙЮОХРЮМ / ОКЮБЮРЕКЕМ ЯЗД',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (3484,NULL,'яРЮПЬХМЮ МЮ ЬКЕО',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (3485,NULL,'яРЮРХЯРХЙ',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3486,NULL,'яРЮРХЯРХЙ, ХЙНМНЛХВЕЯЙЮ ЯРЮРХЯРХЙЮ',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3487,NULL,'яРЮРХЯРХЙ, ЛЮРЕЛЮРХВЕЯЙЮ ЯРЮРХЯРХЙЮ',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3488,NULL,'яРЮРХЯРХЙ, ЛЕДХЖХМЯЙЮ ЯРЮРХЯРХЙЮ',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3489,NULL,'яРЮРХЯРХЙ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3490,NULL,'яРЮРХЯРХЙ, РНВМХ МЮСЙХ',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3491,NULL,'яРЮРХЯРХЙ-НРВЕРМХЙ',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (3492,NULL,'яРЕМНЦПЮТ',4111);
INSERT INTO `natc_clasifikator_prof` VALUES (3493,NULL,'яРЕМНЦПЮТ-ЛЮЬХМНОХЯЕЖ',4111);
INSERT INTO `natc_clasifikator_prof` VALUES (3494,NULL,'яРЕПЕНРХОЕП / ОНКХЦПЮТХЪ',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (3495,NULL,'яРХТЮДНП / БЗГДСЬeМ РПЮМЯОНПР',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (3496,NULL,'яРХТНП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (3497,NULL,'яРНЙНБЕД, ЛЮРЕПХЮКМН НРЦНБНПМН КХЖЕ',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3498,NULL,'яРНЛЮМНБЮП / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3499,NULL,'яРНЛЮРНКНЦ',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3500,NULL,'яРНЛЮРНКНЦ / ВЮЯРМЮ ОПЮЙРХЙЮ',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3501,NULL,'яРНЛЮРНКНЦ, ДЕРЯЙХ',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3502,NULL,'яРНЛЮРНКНЦ, НПРНДНМР',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3503,NULL,'яРНЛЮРНКНЦ, НПРНОЕД',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3504,NULL,'яРНЛЮРНКНЦ, РЕПЮОЕБР',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3505,NULL,'яРНЛЮРНКНЦ, УХПСПЦ',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3506,NULL,'яРПЮРХЦПЮТ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (3507,NULL,'яРПЕКНВМХЙ / ФО РПЮМЯОНПР',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3508,NULL,'яРПХЦЮВ МЮ ОКЮР / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (3509,NULL,'яРПХЦЮВ МЮ ОКЮР / РЕЙЯРХКМН ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3510,NULL,'яРПНХРЕК - ЛНМРЮФМХЙ, ЯРНЛЮМНАЕРНМНБХ ЙНМЯРПСЙЖХХ',7126);
INSERT INTO `natc_clasifikator_prof` VALUES (3512,NULL,'яРПНХРЕК, ДНБЗПЬХРЕКМХ ПЮАНРХ',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (3513,NULL,'яРПНХРЕК, ГХДЮПНЛЮГЮВ',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (3514,NULL,'яРПНХРЕК, ЙНТПЮФХЯР',7122);
INSERT INTO `natc_clasifikator_prof` VALUES (3515,NULL,'яРПНХРЕК, НЦМЕНОНПМЮ ГХДЮПХЪ',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (3516,NULL,'яРПНХРЕК, ОНДНБХ МЮЯРХКЙХ',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3517,NULL,'яРПНХРЕК, ЯРЕММХ НАКХЖНБЙХ',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3518,NULL,'яРПНХРЕК, ЯЗНАЫХРЕКМХ ЯЗНПЗФЕМХЪ',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (3519,NULL,'яРПНХРЕКЕМ АНЪДФХЪ',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (3520,NULL,'яРПНХРЕКЕМ ХЛОПЕЦМЮРНП',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (3521,NULL,'яРПНХРЕКЕМ ХМФЕМЕП',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3523,NULL,'яРПНХРЕКЕМ ХМФЕМЕП / ВЮЯРМЮ ОПЮЙРХЙЮ',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3524,NULL,'яРПНХРЕКЕМ ХМФЕМЕП, МНПЛХ Х МНПЛЮРХБХ',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3525,NULL,'яРПНХРЕКЕМ ХМФЕМЕП, ОНДДПЗФЙЮ МЮ ЯЦПЮДХ',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3526,NULL,'яРПНХРЕКЕМ ХМФЕМЕП, ОПНЕЙРЮМР',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3528,NULL,'яРПНХРЕКЕМ РЕМЕЙЕДФХЪ',7135);
INSERT INTO `natc_clasifikator_prof` VALUES (3529,NULL,'яРПНХРЕКЕМ РЕУМХЙ',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3530,NULL,'яРПНХРЕКЕМ РЕУМХЙ / ВЮЯРМЮ ОПЮЙРХЙЮ',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3531,NULL,'яРПНХРЕКЕМ РЕУМХЙ, ОПНЕЙРЮМР',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3532,NULL,'яРПСЦЮП / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3533,NULL,'яРПСЦЮП, ДЗПБН / ДЗПБННАПЮАНРБЮМЕ',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (3534,NULL,'яРПСЦЮП, ЙЮЛЕМНДЕКЯРБН',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (3535,NULL,'яРПСЦЮП, ЙЕПЮЛХЙЮ',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (3536,NULL,'яРЗЙКЮП (НЯРЗЙКХРЕК) / ЯРПНХРЕКЯРБН',7136);
INSERT INTO `natc_clasifikator_prof` VALUES (3537,NULL,'яРЗЙКЮП / ОПНХГБНДЯРБН МЮ НЯБЕРХРЕКМХ РЕКЮ',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (3538,NULL,'яРЗЙКНЛХЪВ (ТЮЯЮДЮ МЮ ЯЦПЮДЮ)',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (3540,NULL,'яРЗПЦЮКВХЙ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3541,NULL,'яРЗПЦЮКВХЙ, УНАЕКХЯР / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3542,NULL,'яРЗПЦЮКВХЙ, ЬЕОХМЦЮП / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3543,NULL,'яРЧЮПД, БКЮЙ / ФО РПЮМЯОНПР',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (3544,NULL,'яРЧЮПДЕЯЮ (ЯРЧЮПД) / БЗГДСЬЕМ РПЮМЯОНПР',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (3545,NULL,'яСКТХРЭНП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3546,NULL,'яСТКЭНП',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3547,NULL,'яСЬЮП / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (3548,NULL,'яСЬЮП / ОПНХГБНДЯРБН МЮ ЮГАЕЯРНБХ ХГДЕКХЪ',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (3550,NULL,'яСЬХКВХЙ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3551,NULL,'яЖЕМЮПХЯР',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3552,NULL,'яЖЕМХВЕМ ПЮАНРМХЙ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3553,NULL,'яЖЕМНЦПЮТ',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (3554,NULL,'яВЕРНБНДХРЕК - ЮМЮКХРХЙ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3555,NULL,'яВЕРНБНДХРЕК - ПЕБХГНП',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3556,NULL,'яВЕРНБНДХРЕК / ВЮЯРМЮ ОПЮЙРХЙЮ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3557,NULL,'яВЕРНБНДХРЕК АЧДФЕРМХ ОПХУНДХ',3446);
INSERT INTO `natc_clasifikator_prof` VALUES (3558,NULL,'яВЕРНБНДХРЕК, БРНПЮ ЯРЕОЕМ',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3559,NULL,'яВЕРНБНДХРЕК, ЙНЛОЧРЗПМН ЯВЕРНБНДЯРБН',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3560,NULL,'яВЕРНБНДХРЕК, НДХРНПЯЙХ ЙНМРПНК',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3561,NULL,'яВЕРНБНДХРЕК, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3562,NULL,'яВЕРНБНДХРЕК, ОЗПБЮ ЯРЕОЕМ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3563,NULL,'яВЕРНБНДХРЕК-ХГВХЯКХРЕК',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3564,NULL,'яЗАЮПЪВ МЮ ЯЦПЮДХ Х ЯЗНПЗФЕМХЪ / ЯРПНХРЕКЯРБН',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (3565,NULL,'яЗАХПЮВ МЮ ДЗКЦНБЕ',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (3566,NULL,'яЗАХПЮВ МЮ НАКНГХ, ГЮКЮЦЮМХЪ / АХМЦНГЮКЮ',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (3567,NULL,'яЗАХПЮВ МЮ НАКНГХ, ОХЯЮМЕ МЮ АХКЕРХ',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (3568,NULL,'яЗАХПЮВ МЮ НРОЮДЗЖХ УЮПРХЕМХ, ЛЕРЮКМХ Х ДПСЦХ',9161);
INSERT INTO `natc_clasifikator_prof` VALUES (3569,NULL,'яЗАХПЮВ МЮ ОНФЕПРБНБЮМХЪ (ЛХКНЯРХМЪ)',9155);
INSERT INTO `natc_clasifikator_prof` VALUES (3570,NULL,'яЗАХПЮВ МЮ ЯЕМН',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (3571,NULL,'яЗАХПЮВ МЮ ЯЛЕР',9161);
INSERT INTO `natc_clasifikator_prof` VALUES (3573,NULL,'яЗАХПЮВ, ЙМХЦНБЕГЕЖ / ОНКХЦПЮТХЪ',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (3574,NULL,'яЗАХПЮВ, ЛХДХ БНДНПЮЯКХ (ЮЙБЮЙСКРСПХ)',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (3575,NULL,'яЗБЕРМХЙ / лХМХЯРЕПЯЙХ ЯЗБЕР',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3576,NULL,'яЗБЕРМХЙ / ОНКХРХВЕЯЙЮ ОЮПРХЪ',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (3578,NULL,'яЗБЕРМХЙ ОН ЛЕРНДХ МЮ НАСВЕМХЕ',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (3579,NULL,'яЗБЕРМХЙ, ЦНПЯЙН ЯРНОЮМЯРБН',3214);
INSERT INTO `natc_clasifikator_prof` VALUES (3580,NULL,'яЗБЕРМХЙ, ГЕЛЕДЕКХЕ',3214);
INSERT INTO `natc_clasifikator_prof` VALUES (3581,NULL,'яЗБЕРМХЙ, ХЙНМНЛХЙЮ',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (3582,NULL,'яЗБЕРМХЙ, ОПНТЕЯХНМЮКМЮ ЙЮПХЕПЮ',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (3583,NULL,'яЗБЕРМХЙ, ОПНТЕЯХНМЮКМН НПХЕМРХПЮМЕ',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (3584,NULL,'яЗБЕРМХЙ, ЯЕЛЕЕМ',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (3585,NULL,'яЗБЕРМХЙ, ЯРСДЕМРЯЙХ РПСД',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (3586,NULL,'яЗДЕАЕМ (ЮПАХРПЮФЕМ) ЯЕЙПЕРЮП',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3587,NULL,'яЗДЕАЕМ ЮПУХБХЯР, ДНЙСЛЕМРЮРНП',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (3588,NULL,'яЗДЕАЕМ ХМТНПЛЮРНП',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (3589,NULL,'яЗДЕАЕМ ЯРЮРХЯРХЙ',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (3590,NULL,'яЗДХЪ',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (3591,NULL,'яЗДХЪ, ЯОНПРЕМ',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (3592,NULL,'яЗДХЪ-ХГОЗКМХРЕК',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (3593,NULL,'яЗДЗПФЮРЕК МЮ БНКХЕПЮ (ОНИМХ Х ДЕЙНПЮРХБМХ ОРХЖХ)',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3594,NULL,'яЗДЗПФЮРЕК МЮ ЙСВЙЮПМХЙ',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3595,NULL,'яЗДЗПФЮРЕК МЮ ПЕГЕПБЮР ГЮ ЕЙГНРХВМХ ФХБНРМХ',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3596,NULL,'яЗПЖЮП-ТНПЛНБВХЙ / КЕЪПЯРБН',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3597,NULL,'яЗЯРЮБХРЕК МЮ ХГДЮМХЪ',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3598,NULL,'яЗЯРЕГЮРЕК / ЯОНПР',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (3599,NULL,'яЗРПСДМХЙ / ДХОКНЛЮРХВЕЯЙН ОПЕДЯРЮБХРЕКЯРБН',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (3600,NULL,'яЗРПСДМХЙ / ПЕДЮЙЖХЪ, ХГДЮРЕКЯРБН',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (3601,NULL,'яЗРПСДМХЙ МЮ ДХПЕЙРНП',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3602,NULL,'яЗРПСДМХЙ, ЕЙЯОЕПРЕМ / лХМХЯРЕПЯЙХ ЯЗБЕР',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3603,NULL,'яЗРПСДМХЙ, ХГДЮБЮМЕ МЮ ОЮЯОНПРХ',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3604,NULL,'яЗРПСДМХЙ, ХЛХЦПЮЖХНМЕМ',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3605,NULL,'яЗРПСДМХЙ, ПЮАНРЮ Я ЛКЮДЕФХ',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3606,NULL,'яЗРПСДМХЙ, ЯНЖХЮКМЮ ОНЛНЫ',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3607,NULL,'яЗРПСДМХЙ, РЕУМХВЕЯЙХ / лХМХЯРЕПЯЙХ ЯЗБЕР',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (3608,NULL,'рр-ЙНМРПНКЭНП',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3609,NULL,'рр-НОЕПЮРНП',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3610,NULL,'рЮАЕКВХЙ',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (3611,NULL,'рЮЙЯНМНЛХЯР, ФХБНРМХ, ПЮЯРЕМХЪ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3612,NULL,'рЮКХЛЮМ / БНДЕМ РПЮМЯОНПР',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (3614,NULL,'рЮМЖЭНП, ЯЗЯРЕГЮРЕКМХ РЮМЖХ',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (3615,NULL,'рЮОЕРЮДФХЪ, ЯРПНХРЕКЕМ АНЪДФХЪ',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (3616,NULL,'рЮОХЖЕП',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3617,NULL,'рЮОХЖЕП, ДЗПБНДЕКЕЖ',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3618,NULL,'рЮОХЖЕП, РЕЮРПЮКЕМ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3619,NULL,'рЮПХТЭНП / ЮБРНЛНАХКЕМ РПЮМЯОНПР',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3620,NULL,'рЮПХТЭНП / ФО РПЮМЯОНПР',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (3621,NULL,'рЮРСХПНБВХЙ',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (3622,NULL,'рЮУНЦПЮТВХЙ',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3623,NULL,'рЕЮРПЮКЕМ ЦЮПДЕПНАХЕП',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3624,NULL,'рЕЮРПЮКЕМ ЦПХЛЭНП',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3625,NULL,'рЕЮРПЮКЕМ ДЗПБНДЕКЕЖ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3626,NULL,'рЕЮРПЮКЕМ ФЕКЕГЮП',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3627,NULL,'рЕЮРПЮКЕМ НАСЫЮП',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3628,NULL,'рЕЮРПЮКЕМ ПЕЙБХГХРНП',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3629,NULL,'рЕЮРПЮКЕМ РЮОХЖЕП',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3630,NULL,'рЕЮРПЮКЕМ ЬХБЮВ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3631,NULL,'рЕЮРЗП-ЛЮИЯРНП',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3632,NULL,'рЕЙЕКЮФМХЙ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (3633,NULL,'рЕЙЯРХКЕМ АНЪДФХЪ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (3634,NULL,'рЕКЕБХГХНМЕМ НОЕПЮРНП',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3635,NULL,'рЕКЕЦПЮТХЯР',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3636,NULL,'рЕКЕТНМЕМ-РЕКЕЦПЮТЕМ ЙНМРПНКЭНП',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3637,NULL,'рЕКЕТНМЕМ-РЕКЕЦПЮТЕМ НОЕПЮРНП',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3638,NULL,'рЕКЕТНМХЯР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',4223);
INSERT INTO `natc_clasifikator_prof` VALUES (3639,NULL,'рЕКЕТНМХЯР, ПЮГОПЕДЕКХРЕКМХ ЙНЛСРЮЖХНММХ РЮАКЮ',4223);
INSERT INTO `natc_clasifikator_prof` VALUES (3640,NULL,'рЕКНУПЮМХРЕК',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (3641,NULL,'рЕКТЕПХЯР',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (3642,NULL,'рЕЛОЕПНБВХЙ МЮ НРКХБЙХ / ЛЕРЮКСПЦХЪ',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (3643,NULL,'рЕМЕЙЕДФХЪ / ЛЮЬХМНЯРПНЕМЕ',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3644,NULL,'рЕМЕЙЕДФХЪ / ЯРПНХРЕКЯРБН',7135);
INSERT INTO `natc_clasifikator_prof` VALUES (3645,NULL,'рЕМЕЙЕДФХЪ МЮ лоя / ЮБРНЯЕПБХГ',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3646,NULL,'рЕНКНЦ',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3647,NULL,'рЕПЛХЯР / ЛЕРЮКСПЦХЪ',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (3648,NULL,'рЕПЛХЯР, ЮАПЮГХБМХ Х ДХЮЛЮМРМХ ХГДЕКХЪ',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (3650,NULL,'рЕПЛНЦПЮТВХЙ',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3651,NULL,'рЕТКНМХГЮРНП / ОПНХГБНДЯРБН МЮ НАСБЙХ',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (3652,NULL,'рЕУМХЙ / ЮБРНЛЮРХГХПЮМХ ОПНХГБНДЯРБЕМХ ЯХЯРЕЛХ',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3653,NULL,'рЕУМХЙ / ДЮКЕЙНЯЗНАЫХРЕКМЮ РЕУМХЙЮ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3654,NULL,'рЕУМХЙ / ДЗКАНЙН МЕТРЕМН ЯНМДХПЮМЕ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3655,NULL,'рЕУМХЙ / ЕЙЯОКНЮРЮЖХЪ ЕК.ЯЗНПЗФЕМХЪ',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3656,NULL,'рЕУМХЙ / ЕЙЯОКНЮРЮЖХЪ МЮ МЕТРЕМХ Х ЦЮГНБХ МЮУНДХЫЮ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3657,NULL,'рЕУМХЙ / ЕЙЯОКНЮРЮЖХЪ МЮ ТНМНРХВМЮ ЮОЮПЮРСПЮ',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3658,NULL,'рЕУМХЙ / ЙНЛОЧРЗПМХ ЯХЯРЕЛХ',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3660,NULL,'рЕУМХЙ / ОПНХГБНДЯРБН МЮ ЛСГХЙЮКМХ ХМЯРПСЛЕМРХ',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3661,NULL,'рЕУМХЙ / ОПНСВБЮРЕКМН ЪДЙНБН ЯНМДХПЮМЕ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3663,NULL,'рЕУМХЙ / ЯХЦМЮКМХ ЯХЯРЕЛХ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3664,NULL,'рЕУМХЙ / ЯНМДЮФМЮ ЕКЕЙРПНЛЕУЮМХЙЮ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3665,NULL,'рЕУМХЙ / ТНРНКЮАНПЮРНПХЪ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3666,NULL,'рЕУМХЙ МЮ ЕКЕЙРПХВЕЯЙХ ХМЯРЮКЮЖХХ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3667,NULL,'рЕУМХЙ, ЮЦПНУХЛХЪ Х ПЮЯРХРЕКМЮ ГЮЫХРЮ',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (3668,NULL,'рЕУМХЙ, ЮОЮПЮРСПЮ ГЮ ТХГХНРЕПЮОХЪ',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3669,NULL,'рЕУМХЙ, ЮПУХРЕЙРСПЮ',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3670,NULL,'рЕУМХЙ, ЕКЕЙРПНММН-ХГВХЯКХРЕКМЮ РЕУМХЙЮ (ехл)',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3671,NULL,'рЕУМХЙ, ЕМЕПЦНЛЕУЮМХЙ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3672,NULL,'рЕУМХЙ, ГБСЙ-ЯРСДХН',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3673,NULL,'рЕУМХЙ, ГЕЛЕЛЕП',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3674,NULL,'рЕУМХЙ, ГЕЛЕСЯРПНХРЕК',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3675,NULL,'рЕУМХЙ, ХГЙСЯРБЕМХ ЙПЮИМХЖХ',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3676,NULL,'рЕУМХЙ, ХГЛЕПБЮРЕКМХ СПЕДХ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3677,NULL,'рЕУМХЙ, ХГОХРБЮМЕ, ОПНАБЮМЕ МЮ ГБСЙ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3678,NULL,'рЕУМХЙ, ХМБЕЯРХРНПЯЙХ ЙНМРПНК',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3679,NULL,'рЕУМХЙ, ЙЮВЕЯРБЕМ ЙНМРПНК',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3681,NULL,'рЕУМХЙ, КЮАНПЮРНПМХ СПЕДХ',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (3682,NULL,'рЕУМХЙ, КЕЯНБЗД',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (3683,NULL,'рЕУМХЙ, КЕЪПЯРБН',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3684,NULL,'рЕУМХЙ, ЛЮЬХМЕМ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3685,NULL,'рЕУМХЙ, ЛЕДХЖХМЯЙХ ЮОЮПЮРХ',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3686,NULL,'рЕУМХЙ, ЛЕРЮКСПЦ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3687,NULL,'рЕУМХЙ, ЛЕУЮМХЙ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3688,NULL,'рЕУМХЙ, ЛХЙПНОПНЖЕЯНПМЮ РЕУМХЙЮ',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3689,NULL,'рЕУМХЙ, ЛХМЕМ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3690,NULL,'рЕУМХЙ, ЛХММЮ ЦЕНКНЦХЪ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3691,NULL,'рЕУМХЙ, МХЯЙНВЕЯРНРМЮ РЕУМХЙЮ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3692,NULL,'рЕУМХЙ, НГЕКЕМХРЕК',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (3693,NULL,'рЕУМХЙ, НОРХВМЮ ЮОЮПЮРСПЮ',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3694,NULL,'рЕУМХЙ, НПРНОЕДХЪ',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3695,NULL,'рЕУМХЙ, НЯБЕРХРЕКМЮ РЕУМХЙЮ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3696,NULL,'рЕУМХЙ, ОНФЮПМЮ АЕГНОЮЯМНЯР',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (3697,NULL,'рЕУМХЙ, ОНКСОПНБНДМХЙНБЮ РЕУМХЙЮ',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3698,NULL,'рЕУМХЙ, ОПНЦПЮЛХЯР',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3699,NULL,'рЕУМХЙ, ОПНРЕГХ',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3700,NULL,'рЕУМХЙ, ПЕМРЦЕМНБЮ РЕУМХЙЮ',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3701,NULL,'рЕУМХЙ, ПНАНРХ',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3702,NULL,'рЕУМХЙ, ЯЙЕМЕПМЮ ЮОЮПЮРСПЮ',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3703,NULL,'рЕУМХЙ, ЯМХЛЮВМЮ РЕУМХЙЮ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3704,NULL,'рЕУМХЙ, ЯНТРСЕП / ЙНЛСМХЙЮЖХХ',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3705,NULL,'рЕУМХЙ, ЯНТРСЕП / ОНРПЕАХРЕКЯЙХ СЯКСЦХ',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3706,NULL,'рЕУМХЙ, ЯНТРСЕП / ВЕПРНФМХ ЯХЯРЕЛХ',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3707,NULL,'рЕУМХЙ, ЯРПНХРЕКЕМ',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3708,NULL,'рЕУМХЙ, РНОНЦПЮТ',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3709,NULL,'рЕУМХЙ, СПЕДХ ГЮ ЙНМРПНК МЮ ОПНХГБНДЯРБЕМХ ОПНЖЕЯХ',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (3710,NULL,'рЕУМХЙ, ТНРНЦПЮТЯЙЮ РЕУМХЙЮ',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3711,NULL,'рЕУМХЙ, УЮПДСЕП',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3712,NULL,'рЕУМХЙ, УХДПН- Х ОМЕБЛНРЕУМХЙЮ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3713,NULL,'рЕУМХЙ, УХЛХВМХ ОПНЖЕЯХ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3714,NULL,'рЕУМХЙ-БХМЮП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (3715,NULL,'рЕУМХЙ-РЕУМНКНЦ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3717,NULL,'рЕУМХЙ-РЕУМНКНЦ / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3718,NULL,'рЕУМХЙ-РЕУМНКНЦ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3719,NULL,'рЕУМХЙ-РЕУМНКНЦ, АХНРЕУМНКНЦХВЕМ ЯХМРЕГ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3720,NULL,'рЕУМХЙ-РЕУМНКНЦ, ЙЮСВСЙ Х ОКЮЯРЛЮЯХ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3721,NULL,'рЕУМХЙ-РЕУМНКНЦ, ЛЮМХОСКХПЮМЕ Х НАПЮАНРЙЮ МЮ РЧРЧМ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3722,NULL,'рЕУМХЙ-РЕУМНКНЦ, НОЮГБЮМЕ МЮ НЙНКМЮРЮ ЯПЕДЮ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3723,NULL,'рЕУМХЙ-РЕУМНКНЦ, ОНКХЛЕПМХ ЛЕДХЖХМЯЙХ ХГДЕКХЪ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3724,NULL,'рЕУМХЙ-РЕУМНКНЦ, ПЮГУНДМХ МНПЛХ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3725,NULL,'рЕУМХЙ-РЕУМНКНЦ, ЯБЗПГБЮЫХ БeЫЕЯРБЮ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3726,NULL,'рЕУМХЙ-РЕУМНКНЦ, ЯХКХЙЮРМХ РЕУМНКНЦХХ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3727,NULL,'рЕУМХЙ-РЕУМНКНЦ, ЯРСДЕМЮ НАПЮАНРЙЮ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3728,NULL,'рЕУМХЙ-РЕУМНКНЦ, РНОКЮ НАПЮАНРЙЮ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3729,NULL,'рЕУМХЙ-РЕУМНКНЦ, СПЕДНЯРПНЕМЕ',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3731,NULL,'рЕУМХЙ-РЕУМНКНЦ, УХЛХЙ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3732,NULL,'рЕУМХЙ-РЕУМНКНЦ, УХЛХВМХ БКЮЙМЮ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3733,NULL,'рЕУМХЙ-РЕУМНКНЦ, ЖЕКСКНГЮ, УЮПРХЪ Х ЙЮПРНМ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3734,NULL,'рЕУМХЙ-РЕУНКНЦ, АЕРНМ Х АЕРНМНБХ ХГДЕКХЪ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3735,NULL,'рЕУМХВЕЯЙХ ЮЯХЯРЕМР',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3736,NULL,'рЕУМХВЕЯЙХ ХГОЗКМХРЕК',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3737,NULL,'рЕУМХВЕЯЙХ НПЦЮМХГЮРНП',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3738,NULL,'рЕУМХВЕЯЙХ НПЦЮМХГЮРНП, БЗРПЕЬМНЖЕУНБ РПЮМЯОНПР',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3739,NULL,'рЕУМХВЕЯЙХ НПЦЮМХГЮРНП, ФХКХЫМН НАЯКСФБЮМЕ',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3740,NULL,'рЕУМХВЕЯЙХ НПЦЮМХГЮРНП, МНПЛХПНБВХЙ',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3741,NULL,'рЕУМХВЕЯЙХ НПЦЮМХГЮРНП, ОНДЦНРНБЙЮ ЙЮДПХ',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3743,NULL,'рЕУМХВЕЯЙХ НПЦЮМХГЮРНП, ЯЗЯРЮБЪМЕ МЮ ЯОПЮБНВМХЙ',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (3745,NULL,'рЕУМХВЕЯЙХ ПЕДЮЙРНП / ХГДЮРЕКЯРБН',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (3746,NULL,'рЕУМХВЕЯЙХ ПЗЙНБНДХРЕК / ЦНПЯЙН ЯРНОЮМЯРБН',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3747,NULL,'рЕУМХВЕЯЙХ ПЗЙНБНДХРЕК / ЯРПНХРЕКЯРБН',1223);
INSERT INTO `natc_clasifikator_prof` VALUES (3748,NULL,'рЕУМХВЕЯЙХ ЯЕЙПЕРЮП',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3749,NULL,'рЕУМХВЕЯЙХ ЯЗРПСДМХЙ',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3750,NULL,'рЕУМХВЕЯЙХ ЯЗРПСДМХЙ, КХВЕМ ЯЗЯРЮБ',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3751,NULL,'рЕУМХВЕЯЙХ ЯЗРПСДМХЙ, ЛЮЬХМНОХЯЕЖ',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3752,NULL,'рЕУМНКНЦ / БЗГДСЬeМ РПЮМЯОНПР',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (3753,NULL,'рЕУМНКНЦ / ФО РПЮМЯОНПР',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3754,NULL,'рЕУМНКНЦ / ЙНФЮПЯЙН Х ЙНФСУЮПЯЙН ОПНХГБНДЯРБН',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3755,NULL,'рЕУМНКНЦ / ОПЕПЮАНРБЮМЕ МЮ МЕТР Х ЦЮГ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3756,NULL,'рЕУМНКНЦ / ОПНХГБНДЯРБН МЮ ЛХМЕПЮКМХ РНПНБЕ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3757,NULL,'рЕУМНКНЦ / РЕЙЯРХК, ЮОПЕРСПЮ, АЮЦПЕМЕ Х ОЕВЮРЮМЕ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3758,NULL,'рЕУМНКНЦ, ЮЯТЮКРНБХ МЮЯРХКЙХ',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3759,NULL,'рЕУМНКНЦ, АЮГЮ ДЮММХ',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3760,NULL,'рЕУМНКНЦ, МЕТРНУХЛХВЕМ ЯХМРЕГ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3761,NULL,'рЕУМНКНЦ, НАКЕЙКН / ЬХБЮЬЙН ОПНХГБНДЯРБН',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3762,NULL,'рЕУМНКНЦ, НЯНАЕМН ВХЯРХ БЕЫЕЯРБЮ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3763,NULL,'рЕУМНКНЦ, ЯРЮМДЮПРХ',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3764,NULL,'рЕУМНКНЦ, ТХМ НПЦЮМХВЕМ ЯХМРЕГ',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3765,NULL,'рНБЮПЮВ МЮ ОПНДСЙЖХЪ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3766,NULL,'рНБЮПН-ПЮГРНБЮПЮВ',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (3767,NULL,'рНЙЯХЙНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3768,NULL,'рНМХМФЕМЕП',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (3769,NULL,'рНМНОЕПЮРНП',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3770,NULL,'рНМРЕУМХЙ',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3771,NULL,'рНОХКВХЙ / КЕЪПЯРБН',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3772,NULL,'рНОХРЭНП / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (3773,NULL,'рНОНЦПЮТ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3774,NULL,'рНПЙПЕРХЯР / ДНАХБ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (3775,NULL,'рНВХКЮП',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (3776,NULL,'рПЮЙРНПХЯР',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3777,NULL,'рПЮЙРНПХЯР / ЯЕКЯЙН ЯРНОЮМЯРБН',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3778,NULL,'рПЮЙРНПХЯР / ЯРПНХРЕКЯРБН',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3779,NULL,'рПЮЙРНПХЯР, БХЬЙЮ',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (3780,NULL,'рПЮКЛЮИЯРНП',6153);
INSERT INTO `natc_clasifikator_prof` VALUES (3781,NULL,'рПЮМФЭНП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3782,NULL,'рПЮЯХПНБЮВ / ЛЮЬХМНЯРПНЕМЕ',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3783,NULL,'рПЕМЭНП',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3784,NULL,'рПЕМЭНП МЮ ЯЗЯРЕГЮРЕКМХ ЙНМЕ',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3785,NULL,'рПЕРХ ЛЕУЮМХЙ  / ОКЮБЮРЕКЕМ ЯЗД',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (3786,NULL,'рПНБЮКВХЙ',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3787,NULL,'рПСДНБ ОНЯПЕДМХЙ',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3788,NULL,'рПСДНБХЙ',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3789,NULL,'рПЗАЮП / ЛЮЬХМНЯРПНЕМЕ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (3790,NULL,'рПЗАНПЕГЮВ-РПЗАНВХЯРЮВ / ЛЮЬХМНЯРПНЕМЕ',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (3791,NULL,'рСПНОЕПЮРНП, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (3792,NULL,'рЗЙЮВ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3793,NULL,'рЗЙЮВ, ЦСАЕПХ',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3794,NULL,'рЗЙЮВ, ЙХКХЛЮП',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3795,NULL,'рЗЙЮВ, ЙНГЪЖХ',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3797,NULL,'рЗЙЮВ, УСДНФЕЯРБЕМН ХГПЮАНРБЮМЕ МЮ РЗЙЮМХ',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3798,NULL,'рЗПЦНБЯЙХ ЮЦЕМР',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3799,NULL,'рЗПЦНБЯЙХ АПНЙЕП',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3800,NULL,'рЗПЦНБЯЙХ ОНЛНЫМХЙ (НАЫ ПЮАНРМХЙ Б РЗПЦНБХЪРЮ)',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (3801,NULL,'рЗПЦНБЯЙХ ОНЛНЫМХЙ / БЗМЬМНРЗПЦНБЯЙЮ АЮГЮ',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3802,NULL,'рЗПЦНБЯЙХ ОПЕДЯРЮБХРЕК',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3803,NULL,'рЗПЦНБЯЙХ ОЗКМНЛНЫМХЙ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3804,NULL,'рЗПЦНБЯЙХ ОЗРМХЙ',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3805,NULL,'рЧРЧМНОПНХГБНДХРЕК',6112);
INSERT INTO `natc_clasifikator_prof` VALUES (3806,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / бХй',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3808,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / АХМЦНГЮКЮ',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3811,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЦНПЯЙН ЯРНОЮМЯРБН',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3812,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ДЕРЯЙЮ ЦПЮДХМЮ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3813,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ГЮКНФМЮ ЙЗЫЮ',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3814,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ГЮЯРПЮУНБЮМЕ',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3815,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ГДПЮБЕНОЮГБЮМЕ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3816,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ХМДСЯРПХЪ',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3817,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЙХМНЯЮКНМ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3818,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЙНГЛЕРХВЕМ ЯЮКНМ',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3820,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЙСКРСПМХ ДЕИМНЯРХ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3821,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЙСПХЕПЯЙХ СЯКСЦХ',1316);
INSERT INTO `natc_clasifikator_prof` VALUES (3822,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЙЗЛОХМЦ',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3823,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / КНБМН ЯРНОЮМЯРБН',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3824,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЛНРЕК',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3825,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / НАЛЪМЮ МЮ БЮКСРЮ',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3826,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / НАПЮГНБЮМХЕ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3827,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / НАЫЕЯРБЕМН УПЮМЕМЕ',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3831,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ОПНХГБНДЯРБН',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3832,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ОПНЛХЬКЕМНЯР',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3836,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ПЕЯРНПЮМР, ЯРНК',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3837,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ПХАНБЗДЯРБН',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3838,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ПХАНКНБ',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3839,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЯЕКЯЙН ЯРНОЮМЯРБН',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3840,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЯНЖХЮКМХ СЯКСЦХ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3841,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЯОНПРМХ ДЕИМНЯРХ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3844,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЯРПНХРЕКЯРБН',1313);
INSERT INTO `natc_clasifikator_prof` VALUES (3845,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ЯВЕРНБНДМЮ ЙЗЫЮ',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3847,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / РЕЮРПЮКЕМ ЯЮКНМ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3849,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / РЗПЦНБХЪ МЮ ДПЕАМН',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3850,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / РЗПЦНБХЪ МЮ ЕДПН',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3852,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ТХРМЕЯ ГЮКЮ',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3853,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / УНРЕК',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3855,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ) / ВХЯРНРЮ',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3856,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ), ЮБРНЦЮПЮФ / СЯКСЦХ',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3863,NULL,'сОПЮБХРЕК (ЛЮКЙН ОПЕДОПХЪРХЕ), ЯЕПБХГ лоя / СЯКСЦХ',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3864,NULL,'сОПЮБХРЕК / ДЕРЯЙН ГЮБЕДЕМХЕ МЮ АЧДФЕРМЮ ХГДПЗФЙЮ',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (3865,NULL,'сОПЮБХРЕК / ДПСФЕЯРБН ОН рг',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3866,NULL,'сОПЮБХРЕК / ГННОЮПЙ',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3867,NULL,'сОПЮБХРЕК / НАЫЕФХРХЕ',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3868,NULL,'сОПЮБХРЕК / НОРХВЕМ ЛЮЦЮГХМ',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3869,NULL,'сОПЮБХРЕК / ОНКХЙКХМХЙЮ МЮ АЧДФЕРМЮ ХГДПЗФЙЮ',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (3870,NULL,'сОПЮБХРЕК / ЯЮМХРЮПЕМ ЛЮЦЮГХМ',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3873,NULL,'сОПЮБХРЕК / ТХПЛЕМЮ СВЕАМЮ АЮГЮ',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3874,NULL,'сОПЮБХРЕК / УХФЮ',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3875,NULL,'сОПЮБХРЕК МЮ ЮОРЕВЕМ ОСМЙР / ГДПЮБМН ГЮБЕДЕМХЕ',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3876,NULL,'сОПЮБХРЕК МЮ НАПЕДЕМ ДНЛ / НАЫХМЯЙЮ ЮДЛХМХЯРПЮЖХЪ',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3877,NULL,'сОПЮБХРЕК МЮ СВЕМХВЕЯЙХ ЯРНК',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (3878,NULL,'сОПЮБХРЕК, аЗКЦЮПЯЙЮ МЮПНДМЮ АЮМЙЮ',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (3879,NULL,'сОПЮБХРЕК, ЮБРНРПЮМЯОНПР',1316);
INSERT INTO `natc_clasifikator_prof` VALUES (3880,NULL,'сОПЮБХРЕК, ЮОРЕЙЮ',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3881,NULL,'сОПЮБХРЕК, ДНЛЮЙХМ (ХЙНМНЛ)',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3882,NULL,'сОПЮБХРЕК, ЕРЮФЕМ / УНРЕК',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3884,NULL,'сОПЮБХРЕК, ЙЗЛОХМЦ',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3885,NULL,'сОПЮБХРЕК, ЛЮЦЮГХМ',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3886,NULL,'сОПЮБХРЕК, ОЮМЯХНМ, НАЫЕФХРХЕ',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3887,NULL,'сОПЮБХРЕК, ОНВХБМЮ ЯРЮМЖХЪ',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3888,NULL,'сОПЮБХРЕК, ОПНТХКЮЙРНПХСЛ',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3889,NULL,'сОПЮБХРЕК, ПЕЯРНПЮМР, ЯРНК',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3890,NULL,'сОПЮБХРЕК, ЯЙКЮД',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3891,NULL,'сОПЮБХРЕК, УНРЕК',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3892,NULL,'сОПЮБКЪБЮЫ АЮГЮ ДЮММХ',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3893,NULL,'сПЕДМХЙ Б ЛСГЕИ (УСДНФЕЯРБЕМЮ ЦЮКЕПХЪ)',2432);
INSERT INTO `natc_clasifikator_prof` VALUES (3894,NULL,'сПЕДМХЙ МЮ ОПНЦПЮЛЮ',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3895,NULL,'сВХКХЫЕМ ХМЯОЕЙРНП',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (3896,NULL,'сВХКХЫЕМ ОЯХУНКНЦ',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (3906,NULL,'сВХРЕК - БЗГОХРЮРЕК Я ОНКСБХЯЬЕ НАПЮГНБЮМХЕ',3314);
INSERT INTO `natc_clasifikator_prof` VALUES (3912,NULL,'сВХРЕК Я БХЯЬЕ НАПЮГНБЮМХЕ / ДЕРЯЙЮ ЦПЮДХМЮ',2341);
INSERT INTO `natc_clasifikator_prof` VALUES (3914,NULL,'сВХРЕК Я БХЯЬЕ НАПЮГНБЮМХЕ / ОПЕДСВХКХЫМН НАСВЕМХЕ',2341);
INSERT INTO `natc_clasifikator_prof` VALUES (3960,NULL,'сВХРЕК Я БХЯЬЕ НАПЮГНБЮМХЕ, ЯОНПР / ЯПЕДМН СВХКХЫЕ',2322);
INSERT INTO `natc_clasifikator_prof` VALUES (3961,NULL,'сВХРЕК Я ОНКСБХЯЬЕ НАПЮГНБЮМХЕ / ДЕРЯЙЮ ЦПЮДХМЮ',3321);
INSERT INTO `natc_clasifikator_prof` VALUES (3971,NULL,'сВХРЕК Я ОНКСБХЯЬЕ НАПЮГНБЮМХЕ, ЛЮРЕЛЮРХЙЮ',3311);
INSERT INTO `natc_clasifikator_prof` VALUES (3972,NULL,'сВХРЕК Я ОНКСБХЯЬЕ НАПЮГНБЮМХЕ, ОПХПНДМХ МЮСЙХ',3311);
INSERT INTO `natc_clasifikator_prof` VALUES (3974,NULL,'сВХРЕК Я ОНКСБХЯЬЕ НАПЮГНБЮМХЕ, РПСДНБН НАСВЕМХЕ',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3976,NULL,'сВХРЕК ЯЗЯ ЯПЕДМН НАПЮГНБЮМХЕ, РПСДНБН НАСВЕМХЕ',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3978,NULL,'сВХРЕК, ПЮАНРЮ Я ДЗПБН',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3979,NULL,'тЮИРНМДФХЪ',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (3980,NULL,'тЮЙРСПХЯР',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (3981,NULL,'тЮЙРСПХЯР-ЯВЕРНБНДХРЕК',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3982,NULL,'тЮПЛЮЙНКНЦ - РНЙЯХЙНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3983,NULL,'тЮПЛЮЖЕБР',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3984,NULL,'тЮПЛЮЖЕБР - ХМЯОЕЙРНП',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3986,NULL,'тЮЯНМХПНБЮВ-ЯНПРХПНБЮВ / ОПНХГБНДЯРБН МЮ ЙНОВЕРЮ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (3987,NULL,'тЮЪМЯЮДФХЪ / ЯРПНХРЕКЯРБН',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3988,NULL,'тЕКДЬЕП, БЕРЕПХМЮПЕМ',3227);
INSERT INTO `natc_clasifikator_prof` VALUES (3989,NULL,'тЕКДЬЕП, УСЛЮМЕМ',3221);
INSERT INTO `natc_clasifikator_prof` VALUES (3990,NULL,'тЕПЛЕМРЮРНП / ОПНХГБНДЯРБН МЮ РЧРЧМЕБХ ХГДЕКХЪ',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (3992,NULL,'тЕПЛЕП, ПЮЯРХМХЕБЗДЯРБН-ФХБНРМНБЗДЯРБН',6131);
INSERT INTO `natc_clasifikator_prof` VALUES (3993,NULL,'тЕПНЯОКЮБВХЙ / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3994,NULL,'тХДЮМЙНОПНХГБНДХРЕК',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (3995,NULL,'тХГХЙ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3996,NULL,'тХГХЙ, ЮЙСЯРХЙ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3997,NULL,'тХГХЙ, ЮРНЛМЮ ТХГХЙЮ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3998,NULL,'тХГХЙ, АЮКХЯРХЙ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3999,NULL,'тХГХЙ, ЕКЕЙРПХВЕЯРБН Х ЛЮЦМЕРХГЗЛ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4000,NULL,'тХГХЙ, ЕКЕЙРПНМХЙ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4001,NULL,'тХГХЙ, ЛЕУЮМХЙЮ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4002,NULL,'тХГХЙ, ЛНКЕЙСКЪПМЮ ТХГХЙЮ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4003,NULL,'тХГХЙ, МЮСВЕМ ПЮАНРМХЙ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4004,NULL,'тХГХЙ, НОРХЙЮ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4005,NULL,'тХГХЙ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4006,NULL,'тХГХЙ, РЕНПЕРХВМЮ ТХГХЙЮ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4007,NULL,'тХГХЙ, РЕПЛНДХМЮЛХЙЮ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4008,NULL,'тХГХЙ, РНОКНТХГХЙЮ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4009,NULL,'тХГХЙ, ТХГХЙЮ МЮ ЕКЕЛЕМРЮПМХРЕ ВЮЯРХЖХ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4010,NULL,'тХГХЙ, ТХГХЙЮ МЮ ОНКСОПНБНДМХЖХРЕ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4011,NULL,'тХГХЙ, ТХГХЙЮ МЮ РБЗПДНРН РЪКН',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4012,NULL,'тХГХЙ, УХДПНДХМЮЛХЙЮ',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4013,NULL,'тХГХНКНЦ, ФХБНРМХ, ПЮЯРЕМХЪ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4014,NULL,'тХГХНРЕПЮОЕБР',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (4015,NULL,'тХЙЯЮРНП МЮ ОПЕФДХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (4016,NULL,'тХКЕПХЯР / ОПНХГБНДЯРБН МЮ ЯХМРЕРХВМХ БКЮЙМЮ',8158);
INSERT INTO `natc_clasifikator_prof` VALUES (4017,NULL,'тХКХЦПЮМХЯР, АХФСРЕП',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (4018,NULL,'тХКЛНБ ЛНМРЮФХЯР',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (4019,NULL,'тХКЛНБ НОЕПЮРНП',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (4020,NULL,'тХКЛНБ ПЮГОПЕДЕКХРЕК',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (4021,NULL,'тХКЛНРЕЙЮП',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4022,NULL,'тХКНКНЦ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4023,NULL,'тХКНКНЦ, ЕРХЛНКНЦ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4024,NULL,'тХКНКНЦ, КЕЙЯХЙНЦПЮТ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4025,NULL,'тХКНКНЦ, ЛНПТНКНЦ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4026,NULL,'тХКНКНЦ, МЮСВЕМ ПЮАНРМХЙ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4027,NULL,'тХКНКНЦ, ОПЕБНДЮВ',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (4028,NULL,'тХКНКНЦ, ЯЕЛЮМРХЙ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4029,NULL,'тХКНКНЦ, ТНМНКНЦ',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4030,NULL,'тХКНЯНТ',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (4031,NULL,'тХКРЗПДФХЪ / НАНЦЮРЪБЮМЕ МЮ ОНКЕГМХ ХГЙНОЮЕЛХ',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (4032,NULL,'тХКРЗПДФХЪ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (4033,NULL,'тХМЮМЯХЯР',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (4034,NULL,'тХМЮМЯНБ ЕЙЯОЕПР / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (4035,NULL,'тХМЮМЯНБ ПЕБХГНП / ДЗПФЮБМЮ ЮДЛХМХЯРПЮЖХЪ',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (4037,NULL,'тХМНЛЕУЮМХЙ',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (4038,NULL,'тХПЛНОХЯЕЖ',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4039,NULL,'тХРНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4040,NULL,'тКЧЯНБЮП / ЛЕРЮКСПЦХЪ',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (4041,NULL,'тКЧЯНДНАХБВХЙ / ЛЕРЮКСПЦХЪ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (4042,NULL,'тНМДНОЮГХРЕК / ЛСГЕИ ХКХ УСДНФЕЯРБЕМЮ ЦЮКЕПХЪ',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4043,NULL,'тНМНРЕЙЮП',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4046,NULL,'тНПЛНБВХЙ / ОНПЖЕКЮМНБН-ТЮЪМЯНБН ОПНХГБНДЯРБН',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (4047,NULL,'тНПЛНБВХЙ МЮ ЕКЕЛЕМРХ НР ОЕМНОНКХЯРХПНК',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (4048,NULL,'тНПЛНБВХЙ МЮ ХГНКЮЖХНММХ ОЮМЕКХ',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (4049,NULL,'тНПЛНБВХЙ МЮ ЙЮЯХ / КЕЪПЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4050,NULL,'тНПЛНБВХЙ МЮ ТНКХН / ОПНХГБНДЯРБН МЮ ЙНМДЕМГЮРНПХ',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (4052,NULL,'тНРНЦПЮЛЕРПХЯР',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (4053,NULL,'тНРНЦПЮТ',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4054,NULL,'тНРНЦПЮТ, ЛХЙПНТНРНЦПЮТХЪ',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4055,NULL,'тНРНЦПЮТ, ЛНДЮ',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4056,NULL,'тНРНЦПЮТ, МЮСЙЮ',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4057,NULL,'тНРНЦПЮТ, ОНКХЖХЪ',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4058,NULL,'тНРНЦПЮТ, ОНПРПЕРХЯР',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4059,NULL,'тНРНЦПЮТ, ОПЕЯЮ',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4060,NULL,'тНРНЦПЮТ, ОПНХГБНДЯРБЕМ',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4061,NULL,'тНРНЦПЮТ, ПЕЙКЮЛЕМ',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4062,NULL,'тНРНЦПЮТ, РЗПЦНБЯЙХ ЙЮРЮКНГХ',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4063,NULL,'тНРНЦПЮТ-НОЕПЮРНП',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4064,NULL,'тНРНЦПЮТ-ПЕОПНДСЙРНП',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4065,NULL,'тНРНЛНДЕК',5211);
INSERT INTO `natc_clasifikator_prof` VALUES (4066,NULL,'тНРНПЮАНРМХЙ / ОНКХЦПЮТХЪ',7344);
INSERT INTO `natc_clasifikator_prof` VALUES (4067,NULL,'тНРНПЕОНПРЕП',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (4068,NULL,'тНРНПЕРСЬЭНП',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4069,NULL,'тНРНРЕЙЮП',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4071,NULL,'тПЮУРНБЮРЕК',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (4072,NULL,'тПЕГХЯР / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4073,NULL,'тПЕГХЯР, АНПЦБЕПЦХЯР / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4074,NULL,'тПЕГХЯР-ЛНМРЮФХЯР МЮ ЙКХЬЕРЮ / ОНКХЦПЮТХЪ',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4075,NULL,'тПЕГНЙНПДХМЮРНП / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4076,NULL,'тПЕМНКНЦ',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (4077,NULL,'тПХГЭНП',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (4078,NULL,'тСПЮФХП / ТСПЮФМЮ ЙСУМЪ',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (4079,NULL,'тСПМХПНЯКЕОБЮВ / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4080,NULL,'тСРЕПНБВХЙ / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (4081,NULL,'тСРЕПНБВХЙ, ГХДЮПНЛЮГЮВ',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (4082,NULL,'уЮЛЮКХМ',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (4083,NULL,'уЮПДСЕПХЯР, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (4084,NULL,'уЕКХНЦПЮТХЯР',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (4086,NULL,'уХЦХЕМХЯР',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (4088,NULL,'уХЦХЕМХЯР - ВХЯРЮВ, БЮЦНМХ / ФО РПЮМЯОНПР',9136);
INSERT INTO `natc_clasifikator_prof` VALUES (4089,NULL,'уХЦХЕМХЯР, КЕЙЮПЯЙХ (ЯРНЛЮРНКНЦХВЕМ) ЙЮАХМЕР',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (4091,NULL,'уХДПН-ЛЕРЕНПНКНЦХВЕМ МЮАКЧДЮРЕК',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4092,NULL,'уХДПНЮЙСЯРХЙ',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (4093,NULL,'уХДПНАХНКНЦ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4094,NULL,'уХДПНЦЕНКНЦ',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (4095,NULL,'уХДПНЦЕНКНЦ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4096,NULL,'уХДПНХГЛЕПБЮРЕК Х УХДПН-МЮАКЧДЮРЕК',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4097,NULL,'уХДПНХГНКЮРНПВХЙ / ЯРПНХРЕКЯРБН',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (4098,NULL,'уХДПНКНЦ',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (4099,NULL,'уХДПНЯРПНХРЕК',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (4100,NULL,'уХФЮП',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (4101,NULL,'уХЛХЙ',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4102,NULL,'уХЛХЙ, ЮМЮКХРХЙ',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4103,NULL,'уХЛХЙ, МЮСВЕМ ПЮАНРМХЙ',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4104,NULL,'уХЛХЙ, МЕНПЦЮМХВМЮ УХЛХЪ',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4105,NULL,'уХЛХЙ, НПЦЮМХВМЮ УХЛХЪ',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4106,NULL,'уХЛХЙ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4107,NULL,'уХЛХЙ, ТЮПЛЮЖЕБР (ХМДСЯРПХЪ)',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4108,NULL,'уХЛХЙ, ТХГХЙНУХЛХЪ',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4109,NULL,'уХЛХЙ, УХЛХВЕЯЙХ ЙНМРПНК МЮ ЙЮВЕЯРБНРН',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4111,NULL,'уХЛХЙЮКХЯР / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4112,NULL,'уХЛХЙЮКХЯР ОН НАПЮАНРЙЮ МЮ ЯРНЛЮМЕМХ ОПНТХКХ',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (4114,NULL,'уХОМНРХГЮРНП',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (4115,NULL,'уХПНЛЮМР',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (4116,NULL,'уХПСПЦ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (4117,NULL,'уХЯРНКНЦ, ФХБНРМХ, ПЮЯРЕМХЪ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4119,NULL,'уКНПЮРНПВХЙ, НАЕГЮПЪГЮБЮМЕ МЮ БНДЮ ВПЕГ УКНПХПЮМЕ',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (4120,NULL,'уЛЕКНОПНХГБНДХРЕК',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (4121,NULL,'уНЛЕНОЮР, ЯЕЛЕЕМ ЯЗБЕРМХЙ',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (4122,NULL,'уНПЕНЦПЮТ',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (4123,NULL,'уНПЛЮИЯРНП',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (4124,NULL,'уПНЛНКХРНЦПЮТ / ОНКХЦПЮТХЪ',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (4125,NULL,'уПНМНЛЕРПЮФХЯР',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4126,NULL,'уПНМНЛЕРПХЯР',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (4127,NULL,'уПНМНЛЕРПХЯР',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4128,NULL,'уСДНФЕЯРБЕМ ПЕДЮЙРНП',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (4129,NULL,'уСДНФЕЯРБЕМ ПЗЙНБНДХРЕК',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (4130,NULL,'уСДНФМХЙ',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4131,NULL,'уСДНФМХЙ, ХГДЮМХЪ / ПЕДЮЙЖХЪ',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4132,NULL,'уСДНФМХЙ, ПЕЙКЮЛЮ',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4133,NULL,'уСДНФМХЙ-ЮМХЛЮРНП',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4134,NULL,'уСДНФМХЙ-ХГОЗКМХРЕК',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (4135,NULL,'жБЕРНОПНХГБНДХРЕК',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (4136,NULL,'жЕМНБХЙ, ОПХКНФЕМ ЯОЕЖХЮКХЯР',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (4138,NULL,'жХПЙСКЪПХЯР / ДЗПБННАПЮАНРБЮМЕ',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (4139,NULL,'жХПЙСКЪПХЯР, ПЮГЙПНЪБЮМЕ тнл / ДЗПБННАПЮАНРБЮМЕ',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4140,NULL,'жХРНКНЦ, ФХБНРМХ, ПЮЯРЕМХЪ',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4141,NULL,'вЮЯНБМХЙЮП',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (4143,NULL,'вЕПРНФМХЙ',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (4144,NULL,'вЕРХМЮП / УПЮМХРЕКМН-БЙСЯНБЮ ОПНЛХЬКЕМНЯР',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (4145,NULL,'вЕРЙЮП',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (4147,NULL,'вХЯРЮВ МЮ ОКЮР / РЕЙЯРХКМН ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4149,NULL,'вХЯРЮВ, ЮБРНАСЯХ / ОЗРМХВЕЯЙХ РПЮМЯОНПР',9136);
INSERT INTO `natc_clasifikator_prof` VALUES (4150,NULL,'вХЯРЮВ, ЮДЛХМХЯРПЮРХБМХ ОНЛЕЫЕМХЪ',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4151,NULL,'вХЯРЮВ, ЙЮМЮКХ',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (4152,NULL,'вХЯРЮВ, ЛЮЦЮГХМ / РЗПЦНБХЪ',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4153,NULL,'вХЯРЮВ, НАЫЕЯРБЕМЮ ГЮКЮ, ЯЮКНМ / ЙСКРСПЮ',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4154,NULL,'вХЯРЮВ, ОНДДЗПФЮМЕ МЮ ТЕПЛЮ / ФХБНРМНБЗДЯРБН',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (4155,NULL,'вХЯРЮВ, ОПНХГБНДЯРБЕМХ Х ЯЕПБХГМХ ОНЛЕЫЕМХЪ',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4156,NULL,'вХЯРЮВ, ЯМЪЦ Х КЕД',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (4158,NULL,'вХЯРЮВ, СКХЖЮ Б МЮЯЕКЕМХ ЛЕЯРЮ',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (4159,NULL,'вХРЮКХЫЕМ ЯЕЙПЕРЮП',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (4160,NULL,'вКЕМ, бХЯЬ ЮДБНЙЮРЯЙХ ЯЗБЕР',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (4161,NULL,'вКЕМ, ДЗПФЮБМЮ ЙНЛХЯХЪ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (4162,NULL,'вКЕМ, ЙНМРПНКЕМ ЯЗБЕР / ЙННОЕПЮЖХЪ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4163,NULL,'вКЕМ, МЮДГНПЕМ ЯЗБЕР / ДПСФЕЯРБН ОН рг',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4164,NULL,'вКЕМ, ОНГЕЛКЕМЮ ЙНЛХЯХЪ',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (4165,NULL,'вКЕМ, ЯЗБЕР МЮ ДХПЕЙРНПХРЕ / ДПСФЕЯРБН ОН рг',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4166,NULL,'вКЕМ, СОПЮБХРЕКЕМ ЯЗБЕР / ДПСФЕЯРБН ОН рг',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4168,NULL,'вКЕМ-ЯЗДХЪ / НЙПЗФЕМ, ЦПЮДЯЙХ, ПЮИНМЕМ ЯЗД',2422);
INSERT INTO `natc_clasifikator_prof` VALUES (4169,NULL,'вКЕМ-ЧПХЯР, бХЯЬ ЯЗДЕАЕМ ЯЗБЕР',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (4170,NULL,'ьЮАКНМНЦПЮБЭНП / ОНКХЦПЮТХЪ',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4171,NULL,'ьЮЦПЕМЭНП / ОПНХГБНДЯРБН МЮ ХГЙСЯРБЕМХ ЙНФХ',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (4172,NULL,'ьЮОЙЮП',7443);
INSERT INTO `natc_clasifikator_prof` VALUES (4173,NULL,'ьЕКХЯР / ДЗПБННАПЮАНРБЮМЕ',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (4174,NULL,'ьЕТ-ЛНМРЮФМХЙ, ЕКЕЙРПНММХ РЕУМХВЕЯЙХ ЯХЯРЕЛХ',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (4175,NULL,'ьЕТ-ЛНМРЮФМХЙ, УХДПН Х ОМЕБЛНЯХЯРЕЛХ',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (4176,NULL,'ьХБЮВ ЛЮИЯРНП, ЙНФЕМН НАКЕЙКН',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (4177,NULL,'ьХБЮВ ЛЮИЯРНП, НАКЕЙКН',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (4178,NULL,'ьХБЮВ МЮ ЯСПНБ ОКЮР / РЕЙЯРХКМН ОПНХГБНДЯРБН',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4179,NULL,'ьХБЮВ МЮ ЬХПХРХ / РЕЙЯРХКМН ОПНХГБНДЯРБН',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (4180,NULL,'ьХБЮВ, ЦЮКЮМРЕПХЪ',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (4183,NULL,'ьХБЮВ, ОПЮБЮ ЛЮЬХМЮ / ЬХБЮЬЙН ОПНХГБНДЯРБН',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (4184,NULL,'ьХБЮВ, РЕЮРПЮКЕМ',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (4185,NULL,'ьХТПНБВХЙ (ЙНДХПНБВХЙ)',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (4186,NULL,'ьХУРНБВХЙ / ЛЕРЮКСПЦХЪ',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (4187,NULL,'ьКЮИТХЯР / ЛЕРЮКННАПЮАНРБЮМЕ',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (4188,NULL,'ьКЮИТХЯР, ДЗПБННАПЮАНРБЮМЕ',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (4189,NULL,'ьКЮИТХЯР-ОНКХПНБЮВ / ЛЕРЮКННАПЮАНРБЮМЕ',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (4190,NULL,'ьКЮЙНБВХЙ / ЛЕРЮКСПЦХЪ',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (4192,NULL,'ьКХТНБВХЙ / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (4193,NULL,'ьКХЖЕМЮПЕГБЮВ / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4194,NULL,'ьКНЯЕП',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4195,NULL,'ьКНЯЕП, ПЕЛНМР Х НАКХВЮМЕ МЮ ДЕЙЕКХ',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4196,NULL,'ьКНЯЕП, ПЕЛНМР Х ОНДДЗПФЮМЕ МЮ ЛЮЬХМХ Х ЯЗНПЗФЕМХЪ',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4198,NULL,'ьКНЯЕП, ПЕЛНМР МЮ РЕУМХВЕЯЙЮ ЕЙХОХПНБЙЮ',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4199,NULL,'ьКНЯЕП-ЛНМРЭНП',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4200,NULL,'ьЛХПЦЕКХЯР',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (4202,NULL,'ьНТЭНП / ЮДЛХМХЯРПЮЖХЪ',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4203,NULL,'ьНТЭНП, ЮБРНАСЯ',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4204,NULL,'ьНТЭНП, ЮБРНЙПЮМ',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4205,NULL,'ьНТЭНП, БНДНМНЯЙЮ / ЙНЛСМЮКМН ЯРНОЮМЯРБН',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4206,NULL,'ьНТЭНП, ДНЯРЮБЙЮ МЮ ЯРНЙХ ОН ДНЛНБЕРЕ Я КЕЙЮ ЙНКЮ',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4207,NULL,'ьНТЭНП, ЙЮЛХНМ МЮД 1,5 РНМЮ',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4208,NULL,'ьНТЭНП, КЕЙ ЮБРНЛНАХК ДН 9 ОЗРМХВЕЯЙХ ЛЕЯРЮ',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4210,NULL,'ьНТЭНП, КЕЙЮ ЙНКЮ',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4211,NULL,'ьНТЭНП, КХМЕИЙЮ (ЯОЕЬМЮ ОНЛНЫ)',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4212,NULL,'ьНТЭНП, ОЗРМХВЕЯЙХ РЮЙЯХЛЕРПНБ',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4213,NULL,'ьНТЭНП, ЯОЕЖХЮКЕМ ЮБРНЛНАХК МЮД 25 РНМЮ',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4214,NULL,'ьНТЭНП, ЯЗВКЕМЕМ ЮБРНАСЯ ХКХ РПНКЕИАСЯ',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4215,NULL,'ьНТЭНП, РЕФЙНРНБЮПЕМ ЮБРНЛНАХК (TIR, йюлюг)',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4216,NULL,'ьНТЭНП, РНБЮПЕМ ЮБРНЛНАХК (БЙК. РЮЙЯХЛЕРПНБ)',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4217,NULL,'ьНТЭНП, РПНКЕИАСЯ',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4218,NULL,'ьОЮЙКНБВХЙ / ЯРПНХРЕКЯРБН',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (4219,NULL,'ьОПЕДХМЦХЯР / ОПНХГБНДЯРБН МЮ ХГЙСЯРБЕМХ ЙНФХ',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (4220,NULL,'ьОПХЖЭНП / ОПНХГБНДЯРБН МЮ ЙЮСВСЙНБХ ХГДЕКХЪ',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (4221,NULL,'ьОПХЖЭНП / ОПНХГБНДЯРБН МЮ ОКЮЯРЛЮЯНБХ ХГДЕКХЪ',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (4222,NULL,'ьОПХЖЭНП / ЯРЗЙКЮПЯЙН ОПНХГБНДЯРБН',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (4224,NULL,'ьПЕЙЛЮЬХМХЯР / ЛЕРЮКННАПЮАНРБЮМЕ',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4225,NULL,'ыЮЛОЭНП / РЕЙЯРХКМН ОПНХГБНДЯРБН',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (4226,NULL,'ыЮМЖЭНП',7223);
INSERT INTO `natc_clasifikator_prof` VALUES (4227,NULL,'ыЮМЖЭНП, ТНПЛХ / ОНКХЦПЮТХЪ',7223);
INSERT INTO `natc_clasifikator_prof` VALUES (4228,NULL,'чПЦЮМДФХЪ',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (4229,NULL,'чПХЯР',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (4230,NULL,'чПХЯРЙНМЯСКР',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (4231,NULL,'ъЯМНБХДЕЖ',5146);


#
# Table structure for table sl_contragent_object
#

CREATE TABLE `sl_contragent_object` (
  `id_sco` int(11) NOT NULL auto_increment,
  `id_contragent` int(11) default NULL,
  `id_object` int(11) default NULL,
  PRIMARY KEY  (`id_sco`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_contragent_object
#



#
# Table structure for table sl_contragent_product
#

CREATE TABLE `sl_contragent_product` (
  `id_scp` int(11) NOT NULL auto_increment,
  `id_contragent` int(11) default NULL,
  `id_product` int(11) default NULL,
  PRIMARY KEY  (`id_scp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_contragent_product
#



#
# Table structure for table sl_curs
#

CREATE TABLE `sl_curs` (
  `id_sl_curs` int(10) unsigned NOT NULL auto_increment,
  `data_time_sl_curs` datetime default NULL,
  `id_n_money` int(11) default NULL,
  `value_sl_curs` decimal(10,0) default NULL,
  PRIMARY KEY  (`id_sl_curs`),
  KEY `sl_curs_FKIndex1` (`id_n_money`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='kursove na valutite';

#
# Dumping data for table sl_curs
#



#
# Table structure for table sl_n_baccount
#

CREATE TABLE `sl_n_baccount` (
  `Id` int(11) NOT NULL default '0',
  `Id_cust` int(11) default NULL,
  `bank_code` varchar(10) default NULL,
  `bank_name` varchar(45) default NULL,
  `account` varchar(10) default NULL COMMENT 'Bankova smetka',
  `DDS_account` varchar(10) default NULL COMMENT 'Smetka po DDS',
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_n_baccount
#



#
# Table structure for table sl_n_obekt
#

CREATE TABLE `sl_n_obekt` (
  `Id` int(11) NOT NULL,
  `Id_cust` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(25) NOT NULL,
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_n_obekt
#



#
# Table structure for table user_master
#

CREATE TABLE `user_master` (
  `id_um` int(11) NOT NULL default '0',
  `name_um` varchar(14) default NULL,
  `nomer_um` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_um`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table user_master
#

INSERT INTO `user_master` VALUES (1,'rado',1);
INSERT INTO `user_master` VALUES (2,'jp',2);


#
# Table structure for table user_rights
#

CREATE TABLE `user_rights` (
  `id_ur` int(11) NOT NULL auto_increment,
  `id_um` int(11) unsigned NOT NULL default '0',
  `modul0_ur` varchar(250) default NULL,
  `modul1_ur` varchar(250) default NULL,
  `modul2_ur` varchar(250) default NULL,
  `modul3_ur` varchar(250) default NULL,
  `modul4_ur` varchar(250) default NULL,
  PRIMARY KEY  (`id_ur`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table user_rights
#



#
# Source for procedure ls_procedure_country
#

CREATE PROCEDURE `ls_procedure_country`(IN in_id INT(6), IN comprator TINYINT, IN in_code INT(6), IN in_name VARCHAR(30))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_country, n.code_n_country, n.name_n_country FROM n_country n;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_country (code_n_country, name_n_country) VALUES(in_code,in_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_country SET code_n_country = in_code, name_n_country = in_name
           WHERE n_country.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_country  WHERE id_n_country = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code_n_country, n.name_n_country FROM n_country n WHERE n.id_n_country = in_id;

     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_n_country, n.code_n_country, n.name_n_country FROM n_country n WHERE n.code_n_country LIKE CONCAT('%',in_code,'%') AND
        n.name_n_country LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code_n_country) AS code FROM n_country n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_country) AS id FROM n_country n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM n_country;
     END IF;


END;

#
# Source for procedure ls_procedure_group
#

CREATE PROCEDURE `ls_procedure_group`(IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_cod VARCHAR(30), IN in_name VARCHAR(30), IN in_alid TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al FROM `n_group` n WHERE nom_n_group = in_nom;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_group`(nom_n_group, cod_n_group, name_n_group, id_al) VALUES(in_nom, in_cod, in_name, in_alid);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_group` SET cod_n_group = in_cod, name_n_group = in_name, nom_n_group = in_nom, id_al = in_alid
           WHERE `group`.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_group`  WHERE id_n_group = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_group, n.nom_n_group, n.cod_n_group, n.name_n_group, n.alid FROM `n_group` n WHERE `n_group`.id_n_group = in_id;

     END IF;
     IF (comprator = 5) THEN
        SELECT n.id_n_group,  n.cod_n_group, n.name_n_group, n.id_al  FROM `n_group` n  WHERE n.cod_n_group LIKE CONCAT('%',in_cod,'%') AND
        n.name_n_group LIKE CONCAT('%',in_name,'%') AND n.id_al LIKE CONCAT(in_alid,'%') AND n.nom_n_group=in_nom;
     END IF;

     IF (comprator = 6) THEN
        SELECT * FROM `anlevel` n ORDER BY cod_al;
     END IF;


     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_group) AS id FROM `n_group` n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM `n_group`;
     END IF;
END;

#
# Source for procedure nom_procedure_casa
#

CREATE PROCEDURE `nom_procedure_casa`(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa,
                   n.comments_n_casa FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_casa`( id_n_group, code_n_casa, name_n_casa, comments_n_casa) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_casa` SET id_n_group = in_id_groupe, code_n_casa = in_code,   name_n_casa = in_name, comments_n_casa = in_comments
        WHERE `n_casa`.id_n_casa = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_casa`  WHERE id_n_casa = in_id;
     END IF;


     IF (comprator = 5) THEN
        SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa,
                   n.comments_n_casa FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group
                   WHERE n.code_n_casa LIKE CONCAT('%',in_code,'%') AND  n.code_n_casa LIKE CONCAT('%',in_name,'%');

     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_casa) FROM `n_casa` n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_casa) AS code_n_casa FROM `n_casa` n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

END;

#
# Source for procedure nom_procedure_contragent
#

CREATE PROCEDURE `nom_procedure_contragent`(IN comprator TINYINT,  IN in_id INT(10),      IN in_cod VARCHAR(11),     IN in_name VARCHAR(45),
                                            IN in_bul VARCHAR(13), IN in_dan VARCHAR(11), IN in_address VARCHAR(35), IN in_id_nm INT(10),
                                            IN in_tel VARCHAR(12), IN in_fax VARCHAR(12), IN in_email VARCHAR(20),   IN in_web VARCHAR(20),
                                            IN in_id_mol INT(10),  IN in_id_oso INT(10),  IN in_flag TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT c.id_contragent, c.code, c.name, c.bul, c.dan, c.address, c.id_nm, nm.name, obl.name, cont.code, cont.name, c.tel, c.fax, c.email, c.web, c.id_mol,
                @MOL:=(select name from `ls_n_person` where id = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name from `ls_n_person` where id = id_oso) AS OSO, c.flag
        FROM `contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id and nm.id_oblast = obl.id and obl.id_country = cont.id) and c.flag = in_flag ORDER BY c.code;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `contragent`(code,name,bul,dan,address,id_nm,tel,fax,email,web,id_mol,id_oso,flag)
         VALUES(in_cod,in_name,in_bul,in_dan,in_address,in_id_nm,in_tel,in_fax,in_email,in_web,in_id_mol,in_id_oso,in_flag);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `contragent` SET flag = in_flag
           WHERE `contragent`.id_contragent = in_id;
     END IF;

     IF (comprator = 5) THEN
       SELECT c.id_contragent, c.code, c.name, c.bul, c.dan, c.address, c.id_nm, nm.name, obl.name, cont.code, cont.name, c.tel, c.fax, c.email, c.web, c.id_mol,
                @MOL:=(select name from `ls_n_person` where id = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name from `ls_n_person` where id = id_oso) AS OSO, c.flag
        FROM `contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id and nm.id_oblast = obl.id and obl.id_country = cont.id and c.flag = in_flag ) AND
              c.code LIKE CONCAT('%',in_cod,'%') AND
              c.name LIKE CONCAT('%',in_name,'%') AND  c.bul LIKE CONCAT('%',in_bul,'%') AND c.dan LIKE CONCAT('%',in_dan,'%') AND
              c.address LIKE CONCAT('%',in_address,'%') AND c.tel LIKE CONCAT('%',in_tel,'%') AND c.fax LIKE CONCAT('%',in_fax,'%') AND
              c.email LIKE CONCAT('%',in_email,'%') AND c.web LIKE CONCAT('%',in_web,'%') ORDER BY c.code;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM `contragent` n;
     END IF;

     IF (comprator = 10) THEN
        SELECT nm.name  FROM `n_nm` nm WHERE nm.id = in_id_nm;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id, nm.name, obl.name, con.name, con.code
        FROM `n_nm` nm, `n_oblast` obl, `n_country` con
        WHERE  nm.id_oblast = obl.id and obl.id_country = con.id and nm.name like CONCAT('%',in_address,'%');
     END IF;

     IF (comprator = 12) THEN
        SELECT ls.id, ls.name, ls.egn, ls.nlk, ls.coment
        FROM `ls_n_person` ls WHERE ls.name like CONCAT('%',in_name,'%')
        ORDER BY ls.name;
     END IF;
     IF (comprator = 13) THEN
        IF (in_id_mol != -1) THEN
            SELECT ls.id, ls.name, ls.egn, ls.nlk, ls.coment FROM `ls_n_person` ls WHERE ls.id=in_id_mol;
        END IF;
        IF (in_id_oso != -1) THEN
            SELECT ls.id, ls.name, ls.egn, ls.nlk, ls.coment FROM `ls_n_person` ls WHERE ls.id=in_id_oso;
        END IF;
     END IF;
     
     IF (comprator = 14) THEN
        SELECT  MAX(c.code) as code
        FROM `contragent` c where c.flag = in_flag;
     END IF;

END;

#
# Source for procedure nom_procedure_money
#

CREATE PROCEDURE `nom_procedure_money`(IN in_id INT(6), IN comprator INT(6), IN in_code VARCHAR(6), IN in_cod_lat VARCHAR(6), IN in_name VARCHAR(30), IN in_comments VARCHAR(255))
BEGIN        
     IF (comprator = 0) THEN
        SELECT id_n_money, cod_n_money, cod_lat_n_money,name_n_money, comments_n_money FROM n_money ;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_money(cod_n_money, cod_lat_n_money, name_n_money, comments_n_money ) VALUES(in_code, in_cod_lat, in_name, in_comments);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_money SET cod_n_money = in_code, cod_lat_n_money = in_cod_lat, name_n_money = in_name, comments_n_money = in_comments
           WHERE n_money.id_n_money = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_money  WHERE id_n_money = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.cod_n_money, n.cod_lat_n_money, n.name_n_money, comments_n_money FROM n_money n WHERE n.id_n_money = in_id;

     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_n_money, n.cod_n_money, n.cod_lat_n_money, n.name_n_money FROM n_money n WHERE n.code_n_money LIKE CONCAT('%',in_code,'%') AND
        n.cod_lat_n_money LIKE CONCAT('%',in_cod_lat,'%') AND n.name_n_money LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code_n_money) AS cod FROM n_money n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_money) AS id FROM n_money n;
     END IF;
     IF (comprator = 8) THEN
       DELETE FROM n_money;
     END IF;


END;

#
# Source for procedure nom_procedure_naselenimesta
#

CREATE PROCEDURE `nom_procedure_naselenimesta`(IN comprator TINYINT, IN in_id INT(11), IN in_postcode INT(6), IN in_name VARCHAR(20), IN in_id_oblast INT(3) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast, obl.name_n_oblast
        FROM `n_nm` n, `n_oblast` obl WHERE n.id_n_oblast=obl.id_n_oblast;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_nm`( id_n_nm, postcode_n_nm, name_n_nm, id_n_oblast) VALUES(in_id, in_postcode, in_name, in_id_oblast);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_nm` SET postcode_n_nm = in_postcode, name_n_nm = in_name, id_n_oblast = in_id_oblast
        WHERE `n_nm`.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_nm`  WHERE id_n_nm = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast FROM `n_nm` n WHERE n.id_n_nm = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_postcode!=0)  THEN
          SELECT n.id_n_nm,  n.postcode_n_nm, n.name_n_nm , n.id_n_oblast  FROM `n_nm` n  WHERE n.postcode_n_nm LIKE CONCAT(in_postcode,'%') AND
          n.name_n_nm LIKE CONCAT('%',in_name,'%');
        END IF;
        IF (in_postcode=0)  THEN
          SELECT n.id_n_nm,  n.postcode_n_nm, n.name_n_nm, n.id_n_oblast  FROM `n_nm` n  WHERE n.name_n_nm LIKE CONCAT('%',in_name,'%');
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT * FROM `n_oblast` n ORDER BY name_n_oblast;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_nm) AS id FROM `n_nm` n;
     END IF;
END;

#
# Source for procedure nom_procedure_oblast
#

CREATE PROCEDURE `nom_procedure_oblast`(IN comprator TINYINT, IN in_id INT(11), IN in_name VARCHAR(20), IN in_id_country INT(3) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country, c.name_n_country
        FROM `n_oblast` n, `n_country` c WHERE n.id_n_country=c.id_n_country;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_oblast`( id_n_oblast, name_n_oblast, id_n_country) VALUES(in_id, in_name, in_id_country);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_oblast` SET name_n_oblast = in_name, id_n_country = in_id_country
        WHERE `n_oblast`.id_n_oblast = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_oblast`  WHERE id_n_oblast = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country FROM `n_oblast` n WHERE n.id_n_oblast = in_id;
     END IF;

     IF (comprator = 5) THEN
          SELECT n.id_n_oblast,  n.name_n_oblast, n.id_n_country  FROM `n_oblast` n  WHERE n.name_n_oblast LIKE CONCAT('%',in_name,'%');

     END IF;


     IF (comprator = 6) THEN
        SELECT * FROM `n_country` n ORDER BY name;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_oblast) AS id FROM `n_oblast` n;
     END IF;

END;

#
# Source for procedure nom_procedure_storage
#

CREATE PROCEDURE `nom_procedure_storage`(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_storage, n.id_n_group, ng.name_n_group, n.code_n_storage, n.name_n_storage,
                   n.comments_n_storage FROM n_storage n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_storage`( id_n_group, code_n_storage, name_n_storage, comments_n_storage) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_storage` SET id_n_group = in_id_groupe, code_n_storage = in_code,   name_n_storage = in_name, comments_n_storage = in_comments
        WHERE `n_storage`.id_n_storage = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_storage`  WHERE id_n_storage = in_id;
     END IF;


     IF (comprator = 5) THEN
        SELECT n.id_n_storage, n.id_n_group, ng.name_n_group, n.code_n_storage, n.name_n_storage,
                   n.comments_n_storage FROM n_storage n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group
                   WHERE n.code_n_storage LIKE CONCAT('%',in_code,'%') AND  n.code_n_storage LIKE CONCAT('%',in_name,'%');

     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_storage) FROM `n_storage` n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_storage) AS code_n_storage FROM `n_storage` n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

END;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
