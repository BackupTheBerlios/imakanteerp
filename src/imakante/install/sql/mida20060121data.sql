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
INSERT INTO `ls_addresses` VALUES (3,'��. ��� 39, ��. 7, ��. 17','260258','0885286309','dani_mscool@yahoo.com',8,4000);
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
  `id_boln` smallint(6) default NULL COMMENT 'От �?аблона',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmoth+pyear',
  `id_per_otn` int(11) default NULL COMMENT 'При сторниране',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT 'Начална дата',
  `n_o_days` tinyint(3) NOT NULL default '0' COMMENT 'Брой дни болнични',
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
  `name` varchar(50) NOT NULL default '0' COMMENT '�?ме на вида болничен',
  `cod` varchar(6) NOT NULL default '' COMMENT 'Вътре�?ен код за вида болничен',
  `procent` decimal(3,2) unsigned NOT NULL default '0.00' COMMENT 'Процент на болничния',
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

INSERT INTO `ls_main` VALUES (1,22,'��������','���������','���������','7401234649','���','543645',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (2,123,'sdffa','swerwqerer','qwerqwer','7401234649','���','122431234',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (3,656,'errtwertew','wertwer','wertwertewr','7401234649','���','6546',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (4,455,'dsfgds','sdfgdsf','sdfgsd','7401234649','���','65465',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (5,225,'sdfgsdf','dsfde','as','7401234649','���','6465466',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (6,25,'�����','������','�������','','���','',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (7,12,'addasd','sardawdf','sadfsadf','7401234649','���','1312',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (8,13,'�������','���������','������','8503154656','����','144260608',NULL,'2212',2,3,5,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (9,456,'erwtgertw','wertwe','ewrtw','7401234649','���','345',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (21,23,'wear','wqerqw','qwrtterqeeteeee','7401234649','���','',NULL,'',1,1,1,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (22,2311,'EQW','asdf','sdf','7401234649','���','',NULL,'',5,10,15,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (23,657,'fgvn','fgh','fgh','7401234649','���','',NULL,'',4,4,4,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (24,5788,'te5at','et yaet','dfgd','7401234649','���','',NULL,'',8,8,8,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (25,324,'adsfdsf','sdfasdf','sdfasd','7401234649','���','',NULL,'',4,4,4,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (26,344,'sdf','asdf','safd','7401234649','���','',NULL,'',5,5,5,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (27,555,'RTERer','dfgdf','dfgdfg','7401234649','���','',NULL,'',1,1,1,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (28,234,'sadf','asdf','asdf','7401234649','���','',NULL,'',1,1,1,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (29,658,'dsdfdfs','dffgdf','dfdfs','7401234649','���','',NULL,'',1,1,1,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (30,568,'dqwe','werqwerqwer','qwerqwerq','7401234649','���','',NULL,'',5,5,5,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (31,555,'asdfwef','sdafasd','sdfsdaf','8503154656','����','',NULL,'',5,5,5,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (32,1222,'fhdf','fdgdf','dfg','7401234649','���','',NULL,'',4,4,4,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (33,7899,'dfhfgh','sfhfgh','sfghfghfg','7401234649','���','',NULL,'',5,5,5,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (34,458,'dsdsf','sdfzsdf','sfsd','7401234649','���','',NULL,'',5,5,5,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (35,465,'jh','hjk','ghj','7401234649','���','',NULL,'',1,1,10,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (36,12,'dsfa','sadfas','sdfsdf','7401234649','���','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (37,22,'asd','asdas','asd','7401234649','���','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (38,345,'sdf','asdf','asdf','7401234649','���','',NULL,'',0,0,0,'',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (39,78,'khbjk','kkjnk','njk','7401234649','���','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (40,2332,'asda','asdasd','asdsad','7401234649','���','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (41,87,'asd','asdas','asdsa','7401234649','���','',NULL,'',0,0,0,'01',NULL,NULL,0,'');
INSERT INTO `ls_main` VALUES (42,78,'asda','asdas','dasdasd','7401234649','���','',NULL,'',0,0,0,'01',NULL,NULL,0,'');


#
# Table structure for table ls_monthpar
#

CREATE TABLE `ls_monthpar` (
  `id` int(11) NOT NULL auto_increment,
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT 'Работен период',
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
  `id_rab` int(11) NOT NULL default '0' COMMENT 'Актуален работник',
  `id_otp` smallint(6) NOT NULL default '0' COMMENT 'От �?аблона',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmonth+pyear',
  `id_per_otn` smallint(6) default NULL COMMENT 'Период за строниране',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT 'Начална дата',
  `n_o_days` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Брой дни отпуск в месеца',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='�?зчислени болни�;

#
# Dumping data for table ls_otp_impl
#



#
# Table structure for table ls_otpusk
#

CREATE TABLE `ls_otpusk` (
  `id` smallint(4) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '' COMMENT '�?ме на отпуск',
  `cod` varchar(6) NOT NULL default '' COMMENT 'Код на вида отпуск',
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
  `state` tinyint(2) unsigned NOT NULL default '1' COMMENT 'Всички записи генерирани в (0=извън) приложението',
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT 'Работен период',
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

INSERT INTO `n_country` VALUES (1,'1','��������');
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
INSERT INTO `n_group` VALUES (5,5,'1','��������� ����',1);
INSERT INTO `n_group` VALUES (6,5,'2','�������� ����',1);


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
INSERT INTO `n_money` VALUES (2,'��','BGL','���',NULL);
INSERT INTO `n_money` VALUES (3,'$','USD','�. �����',NULL);


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

INSERT INTO `n_nm` VALUES (1,4645,'��������',14);
INSERT INTO `n_nm` VALUES (2,5574,'��������',12);
INSERT INTO `n_nm` VALUES (3,2932,'��������',1);
INSERT INTO `n_nm` VALUES (4,9407,'�����',9);
INSERT INTO `n_nm` VALUES (5,6797,'��������',10);
INSERT INTO `n_nm` VALUES (6,2795,'��������',1);
INSERT INTO `n_nm` VALUES (7,9135,'�����',3);
INSERT INTO `n_nm` VALUES (8,6930,'�����',10);
INSERT INTO `n_nm` VALUES (9,5431,'�������',8);
INSERT INTO `n_nm` VALUES (10,5350,'��������',8);
INSERT INTO `n_nm` VALUES (11,7538,'�������',20);
INSERT INTO `n_nm` VALUES (12,6639,'������',10);
INSERT INTO `n_nm` VALUES (13,8500,'�����',2);
INSERT INTO `n_nm` VALUES (14,4483,'����������',14);
INSERT INTO `n_nm` VALUES (15,3727,'��������',6);
INSERT INTO `n_nm` VALUES (16,9154,'��������',3);
INSERT INTO `n_nm` VALUES (17,4984,'��������',22);
INSERT INTO `n_nm` VALUES (18,6850,'�������',10);
INSERT INTO `n_nm` VALUES (19,9620,'������',9);
INSERT INTO `n_nm` VALUES (20,7752,'��������',26);
INSERT INTO `n_nm` VALUES (21,2222,'�����������',23);
INSERT INTO `n_nm` VALUES (22,4411,'����� �������������',14);
INSERT INTO `n_nm` VALUES (23,7555,'�������',20);
INSERT INTO `n_nm` VALUES (24,5288,'�������',5);
INSERT INTO `n_nm` VALUES (25,9404,'�����������',9);
INSERT INTO `n_nm` VALUES (26,4656,'������������',14);
INSERT INTO `n_nm` VALUES (27,5560,'������������',12);
INSERT INTO `n_nm` VALUES (28,6154,'������������',25);
INSERT INTO `n_nm` VALUES (29,8211,'������������',2);
INSERT INTO `n_nm` VALUES (30,5289,'������������',5);
INSERT INTO `n_nm` VALUES (31,9829,'������������',28);
INSERT INTO `n_nm` VALUES (32,8653,'������������',29);
INSERT INTO `n_nm` VALUES (33,7761,'������������',26);
INSERT INTO `n_nm` VALUES (34,6351,'������������',27);
INSERT INTO `n_nm` VALUES (35,9565,'���������� ��������',9);
INSERT INTO `n_nm` VALUES (36,4621,'����������',14);
INSERT INTO `n_nm` VALUES (37,4787,'���������',22);
INSERT INTO `n_nm` VALUES (38,2019,'�����',23);
INSERT INTO `n_nm` VALUES (39,3251,'�������',7);
INSERT INTO `n_nm` VALUES (40,7570,'�������',20);
INSERT INTO `n_nm` VALUES (41,9496,'�����',9);
INSERT INTO `n_nm` VALUES (42,6373,'����� �������',27);
INSERT INTO `n_nm` VALUES (43,9483,'���������',9);
INSERT INTO `n_nm` VALUES (44,5342,'�������',8);
INSERT INTO `n_nm` VALUES (45,2085,'������� ���',23);
INSERT INTO `n_nm` VALUES (46,4331,'�����',17);
INSERT INTO `n_nm` VALUES (47,3776,'��������',6);
INSERT INTO `n_nm` VALUES (48,7628,'��������',20);
INSERT INTO `n_nm` VALUES (49,2089,'�����',23);
INSERT INTO `n_nm` VALUES (50,7970,'��������',26);
INSERT INTO `n_nm` VALUES (51,5094,'������',5);
INSERT INTO `n_nm` VALUES (52,2128,'��������',23);
INSERT INTO `n_nm` VALUES (53,6281,'��������',25);
INSERT INTO `n_nm` VALUES (54,7864,'��������',26);
INSERT INTO `n_nm` VALUES (55,5641,'�������',12);
INSERT INTO `n_nm` VALUES (56,4445,'�������',14);
INSERT INTO `n_nm` VALUES (57,5029,'��������',5);
INSERT INTO `n_nm` VALUES (58,4790,'����',22);
INSERT INTO `n_nm` VALUES (59,6750,'������',10);
INSERT INTO `n_nm` VALUES (60,2386,'�����',15);
INSERT INTO `n_nm` VALUES (61,9246,'�������',3);
INSERT INTO `n_nm` VALUES (62,5347,'��������',8);
INSERT INTO `n_nm` VALUES (63,5363,'����������',8);
INSERT INTO `n_nm` VALUES (64,6069,'���������',25);
INSERT INTO `n_nm` VALUES (65,4922,'��������',22);
INSERT INTO `n_nm` VALUES (66,3770,'�����',6);
INSERT INTO `n_nm` VALUES (67,6149,'����',25);
INSERT INTO `n_nm` VALUES (68,5738,'����',12);
INSERT INTO `n_nm` VALUES (69,4230,'����������',17);
INSERT INTO `n_nm` VALUES (70,8933,'��������',21);
INSERT INTO `n_nm` VALUES (71,5957,'�������',16);
INSERT INTO `n_nm` VALUES (72,5159,'�������',5);
INSERT INTO `n_nm` VALUES (73,8667,'�������',29);
INSERT INTO `n_nm` VALUES (74,5913,'��������',16);
INSERT INTO `n_nm` VALUES (75,9260,'����������',3);
INSERT INTO `n_nm` VALUES (76,8485,'����������',2);
INSERT INTO `n_nm` VALUES (77,5914,'����������',16);
INSERT INTO `n_nm` VALUES (78,3661,'����������',13);
INSERT INTO `n_nm` VALUES (79,8140,'����',2);
INSERT INTO `n_nm` VALUES (80,8683,'�������',29);
INSERT INTO `n_nm` VALUES (81,6821,'�����',10);
INSERT INTO `n_nm` VALUES (82,8217,'������',2);
INSERT INTO `n_nm` VALUES (83,4128,'��������',17);
INSERT INTO `n_nm` VALUES (84,6761,'��������',10);
INSERT INTO `n_nm` VALUES (85,8280,'�������',2);
INSERT INTO `n_nm` VALUES (86,5632,'���� �����',12);
INSERT INTO `n_nm` VALUES (87,7861,'���� �����',26);
INSERT INTO `n_nm` VALUES (88,4156,'�����',17);
INSERT INTO `n_nm` VALUES (89,2683,'������',11);
INSERT INTO `n_nm` VALUES (90,2668,'�������� ����',11);
INSERT INTO `n_nm` VALUES (91,5726,'�������',12);
INSERT INTO `n_nm` VALUES (92,2365,'������',15);
INSERT INTO `n_nm` VALUES (93,4774,'������',22);
INSERT INTO `n_nm` VALUES (94,7068,'������',19);
INSERT INTO `n_nm` VALUES (95,7573,'�����',20);
INSERT INTO `n_nm` VALUES (96,2784,'�����',1);
INSERT INTO `n_nm` VALUES (97,5094,'���������',5);
INSERT INTO `n_nm` VALUES (98,6749,'�����',10);
INSERT INTO `n_nm` VALUES (99,2530,'��������',11);
INSERT INTO `n_nm` VALUES (100,6944,'��������',10);
INSERT INTO `n_nm` VALUES (101,6819,'��������',10);
INSERT INTO `n_nm` VALUES (102,5093,'�������',5);
INSERT INTO `n_nm` VALUES (103,2676,'������',11);
INSERT INTO `n_nm` VALUES (104,5441,'����� ������',8);
INSERT INTO `n_nm` VALUES (105,5304,'������',8);
INSERT INTO `n_nm` VALUES (106,5087,'������',5);
INSERT INTO `n_nm` VALUES (107,5095,'�������',5);
INSERT INTO `n_nm` VALUES (108,5861,'������',16);
INSERT INTO `n_nm` VALUES (109,2427,'���������',15);
INSERT INTO `n_nm` VALUES (110,9767,'�������',28);
INSERT INTO `n_nm` VALUES (111,2133,'�������',23);
INSERT INTO `n_nm` VALUES (112,6771,'�������',10);
INSERT INTO `n_nm` VALUES (113,6698,'��������',10);
INSERT INTO `n_nm` VALUES (114,2295,'�������',23);
INSERT INTO `n_nm` VALUES (115,6816,'����������',10);
INSERT INTO `n_nm` VALUES (116,5615,'����������',12);
INSERT INTO `n_nm` VALUES (117,8471,'�����������',2);
INSERT INTO `n_nm` VALUES (118,5370,'�������',8);
INSERT INTO `n_nm` VALUES (119,5301,'��������',8);
INSERT INTO `n_nm` VALUES (120,2680,'��������',11);
INSERT INTO `n_nm` VALUES (121,5064,'������',5);
INSERT INTO `n_nm` VALUES (122,5388,'����������',8);
INSERT INTO `n_nm` VALUES (123,2948,'�������',1);
INSERT INTO `n_nm` VALUES (124,3797,'�����',6);
INSERT INTO `n_nm` VALUES (125,9485,'�����',9);
INSERT INTO `n_nm` VALUES (126,5343,'���������',8);
INSERT INTO `n_nm` VALUES (127,6363,'������',27);
INSERT INTO `n_nm` VALUES (128,4245,'������ ������',17);
INSERT INTO `n_nm` VALUES (129,5634,'��������',12);
INSERT INTO `n_nm` VALUES (130,7265,'���������',18);
INSERT INTO `n_nm` VALUES (131,9549,'��������',9);
INSERT INTO `n_nm` VALUES (132,5162,'��������',5);
INSERT INTO `n_nm` VALUES (133,5081,'������',5);
INSERT INTO `n_nm` VALUES (134,9600,'������',9);
INSERT INTO `n_nm` VALUES (135,1217,'�����',23);
INSERT INTO `n_nm` VALUES (136,2060,'��������',23);
INSERT INTO `n_nm` VALUES (137,3529,'��������',13);
INSERT INTO `n_nm` VALUES (138,5370,'������',8);
INSERT INTO `n_nm` VALUES (139,5351,'��������',8);
INSERT INTO `n_nm` VALUES (140,8125,'������',2);
INSERT INTO `n_nm` VALUES (141,7167,'�������',19);
INSERT INTO `n_nm` VALUES (142,4940,'������',22);
INSERT INTO `n_nm` VALUES (143,3077,'������',7);
INSERT INTO `n_nm` VALUES (144,2905,'�������',1);
INSERT INTO `n_nm` VALUES (145,2388,'������',15);
INSERT INTO `n_nm` VALUES (146,7997,'��������',26);
INSERT INTO `n_nm` VALUES (147,5300,'��������',8);
INSERT INTO `n_nm` VALUES (148,1320,'�����',23);
INSERT INTO `n_nm` VALUES (149,2466,'�����',15);
INSERT INTO `n_nm` VALUES (150,9144,'������',3);
INSERT INTO `n_nm` VALUES (151,2770,'������',1);
INSERT INTO `n_nm` VALUES (152,2060,'��������',23);
INSERT INTO `n_nm` VALUES (153,4360,'����',17);
INSERT INTO `n_nm` VALUES (154,8239,'����',2);
INSERT INTO `n_nm` VALUES (155,8914,'����',21);
INSERT INTO `n_nm` VALUES (156,4523,'����',14);
INSERT INTO `n_nm` VALUES (157,2778,'����',1);
INSERT INTO `n_nm` VALUES (158,2634,'��������',11);
INSERT INTO `n_nm` VALUES (159,6910,'������',10);
INSERT INTO `n_nm` VALUES (160,4830,'�������',22);
INSERT INTO `n_nm` VALUES (161,7071,'���������',19);
INSERT INTO `n_nm` VALUES (162,2883,'��������',1);
INSERT INTO `n_nm` VALUES (163,8218,'����',2);
INSERT INTO `n_nm` VALUES (164,4580,'�����',14);
INSERT INTO `n_nm` VALUES (165,5228,'�����',5);
INSERT INTO `n_nm` VALUES (166,2340,'���������',15);
INSERT INTO `n_nm` VALUES (167,7172,'�����',19);
INSERT INTO `n_nm` VALUES (168,7169,'���������',19);
INSERT INTO `n_nm` VALUES (169,9364,'������',9);
INSERT INTO `n_nm` VALUES (170,5470,'��������',8);
INSERT INTO `n_nm` VALUES (171,2295,'�������',23);
INSERT INTO `n_nm` VALUES (172,5764,'�������',12);
INSERT INTO `n_nm` VALUES (173,3068,'�������',7);
INSERT INTO `n_nm` VALUES (174,2219,'�������',23);
INSERT INTO `n_nm` VALUES (175,5567,'��������',12);
INSERT INTO `n_nm` VALUES (176,5367,'�������',8);
INSERT INTO `n_nm` VALUES (177,5948,'������ ������',16);
INSERT INTO `n_nm` VALUES (178,2769,'������',1);
INSERT INTO `n_nm` VALUES (179,4251,'�������',17);
INSERT INTO `n_nm` VALUES (180,6777,'������',10);
INSERT INTO `n_nm` VALUES (181,7619,'������',20);
INSERT INTO `n_nm` VALUES (182,6669,'������',10);
INSERT INTO `n_nm` VALUES (183,6068,'������',25);
INSERT INTO `n_nm` VALUES (184,7745,'�������',26);
INSERT INTO `n_nm` VALUES (185,9381,'������',9);
INSERT INTO `n_nm` VALUES (186,5084,'�������',5);
INSERT INTO `n_nm` VALUES (187,5872,'������',16);
INSERT INTO `n_nm` VALUES (188,4166,'������',17);
INSERT INTO `n_nm` VALUES (189,2395,'���������',15);
INSERT INTO `n_nm` VALUES (190,4359,'�������',17);
INSERT INTO `n_nm` VALUES (191,4817,'�����',22);
INSERT INTO `n_nm` VALUES (192,9924,'�������',28);
INSERT INTO `n_nm` VALUES (193,6716,'�������',10);
INSERT INTO `n_nm` VALUES (194,9567,'��������',9);
INSERT INTO `n_nm` VALUES (195,5792,'��������',12);
INSERT INTO `n_nm` VALUES (196,9637,'���������',9);
INSERT INTO `n_nm` VALUES (197,6718,'��������',10);
INSERT INTO `n_nm` VALUES (198,2236,'������',23);
INSERT INTO `n_nm` VALUES (199,3454,'���������',13);
INSERT INTO `n_nm` VALUES (200,9480,'������',9);
INSERT INTO `n_nm` VALUES (201,8637,'������',29);
INSERT INTO `n_nm` VALUES (202,5094,'��������',5);
INSERT INTO `n_nm` VALUES (203,5673,'���������',12);
INSERT INTO `n_nm` VALUES (204,5300,'��������',8);
INSERT INTO `n_nm` VALUES (205,2793,'��� �����',1);
INSERT INTO `n_nm` VALUES (206,3965,'����',6);
INSERT INTO `n_nm` VALUES (207,3731,'���� ����',6);
INSERT INTO `n_nm` VALUES (208,2881,'��������',1);
INSERT INTO `n_nm` VALUES (209,4124,'��������',17);
INSERT INTO `n_nm` VALUES (210,9690,'������',9);
INSERT INTO `n_nm` VALUES (211,4738,'����� ���',22);
INSERT INTO `n_nm` VALUES (212,2800,'�����������',1);
INSERT INTO `n_nm` VALUES (213,8345,'��������',2);
INSERT INTO `n_nm` VALUES (214,2085,'������',23);
INSERT INTO `n_nm` VALUES (215,5930,'������',16);
INSERT INTO `n_nm` VALUES (216,5783,'�������',12);
INSERT INTO `n_nm` VALUES (217,3441,'���� ����',13);
INSERT INTO `n_nm` VALUES (218,3447,'���� ����',13);
INSERT INTO `n_nm` VALUES (219,6262,'���� ����',25);
INSERT INTO `n_nm` VALUES (220,6702,'���� ���',10);
INSERT INTO `n_nm` VALUES (221,6590,'���� ���',27);
INSERT INTO `n_nm` VALUES (222,3040,'���� �����',7);
INSERT INTO `n_nm` VALUES (223,2011,'���� �����',23);
INSERT INTO `n_nm` VALUES (224,7293,'���� ���',18);
INSERT INTO `n_nm` VALUES (225,5662,'���� ����',12);
INSERT INTO `n_nm` VALUES (226,6689,'���� �����',10);
INSERT INTO `n_nm` VALUES (227,8316,'������',2);
INSERT INTO `n_nm` VALUES (228,3462,'�������',13);
INSERT INTO `n_nm` VALUES (229,7432,'�������',18);
INSERT INTO `n_nm` VALUES (230,2780,'������',1);
INSERT INTO `n_nm` VALUES (231,2062,'������',23);
INSERT INTO `n_nm` VALUES (232,4242,'������',17);
INSERT INTO `n_nm` VALUES (233,6557,'������',27);
INSERT INTO `n_nm` VALUES (234,5363,'������',8);
INSERT INTO `n_nm` VALUES (235,7648,'������',20);
INSERT INTO `n_nm` VALUES (236,5628,'�����',12);
INSERT INTO `n_nm` VALUES (237,2709,'���� ����',1);
INSERT INTO `n_nm` VALUES (238,3961,'���� ����',6);
INSERT INTO `n_nm` VALUES (239,7321,'�������',18);
INSERT INTO `n_nm` VALUES (240,4182,'��������',17);
INSERT INTO `n_nm` VALUES (241,4470,'������',14);
INSERT INTO `n_nm` VALUES (242,9230,'����������',3);
INSERT INTO `n_nm` VALUES (243,3900,'�����������',6);
INSERT INTO `n_nm` VALUES (244,8219,'�������',2);
INSERT INTO `n_nm` VALUES (245,4130,'�������',17);
INSERT INTO `n_nm` VALUES (246,9801,'������������',28);
INSERT INTO `n_nm` VALUES (247,7917,'���������',26);
INSERT INTO `n_nm` VALUES (248,5340,'����������',8);
INSERT INTO `n_nm` VALUES (249,6588,'���������',27);
INSERT INTO `n_nm` VALUES (250,6584,'����������',27);
INSERT INTO `n_nm` VALUES (251,2132,'���������',23);
INSERT INTO `n_nm` VALUES (252,9178,'��������',3);
INSERT INTO `n_nm` VALUES (253,3499,'���������',13);
INSERT INTO `n_nm` VALUES (254,7138,'������',19);
INSERT INTO `n_nm` VALUES (255,5035,'��������',5);
INSERT INTO `n_nm` VALUES (256,2025,'������',23);
INSERT INTO `n_nm` VALUES (257,2024,'��������� ����',23);
INSERT INTO `n_nm` VALUES (258,2824,'�������',1);
INSERT INTO `n_nm` VALUES (259,5031,'���������',5);
INSERT INTO `n_nm` VALUES (260,7134,'��������',19);
INSERT INTO `n_nm` VALUES (261,9133,'���������',3);
INSERT INTO `n_nm` VALUES (262,9380,'���������',9);
INSERT INTO `n_nm` VALUES (263,6865,'���������',10);
INSERT INTO `n_nm` VALUES (264,4201,'���������',17);
INSERT INTO `n_nm` VALUES (265,2076,'���������',23);
INSERT INTO `n_nm` VALUES (266,6055,'���������',25);
INSERT INTO `n_nm` VALUES (267,2488,'��������',15);
INSERT INTO `n_nm` VALUES (268,2212,'�������',23);
INSERT INTO `n_nm` VALUES (269,2435,'�������',15);
INSERT INTO `n_nm` VALUES (270,2212,'������� �����',23);
INSERT INTO `n_nm` VALUES (271,5438,'�������',8);
INSERT INTO `n_nm` VALUES (272,3500,'���������',13);
INSERT INTO `n_nm` VALUES (273,7857,'���������',26);
INSERT INTO `n_nm` VALUES (274,5093,'��������',5);
INSERT INTO `n_nm` VALUES (275,8448,'��������',2);
INSERT INTO `n_nm` VALUES (276,2587,'������',11);
INSERT INTO `n_nm` VALUES (277,2934,'������',1);
INSERT INTO `n_nm` VALUES (278,6698,'��������',10);
INSERT INTO `n_nm` VALUES (279,5849,'��������',16);
INSERT INTO `n_nm` VALUES (280,6837,'��������',10);
INSERT INTO `n_nm` VALUES (281,5035,'�������',5);
INSERT INTO `n_nm` VALUES (282,5350,'�������',8);
INSERT INTO `n_nm` VALUES (283,8885,'������',21);
INSERT INTO `n_nm` VALUES (284,2383,'�������',15);
INSERT INTO `n_nm` VALUES (285,8551,'�����',2);
INSERT INTO `n_nm` VALUES (286,5370,'�������',8);
INSERT INTO `n_nm` VALUES (287,9691,'����',9);
INSERT INTO `n_nm` VALUES (288,8846,'����',21);
INSERT INTO `n_nm` VALUES (289,4789,'��������',22);
INSERT INTO `n_nm` VALUES (290,8855,'������',21);
INSERT INTO `n_nm` VALUES (291,4650,'�������',14);
INSERT INTO `n_nm` VALUES (292,6470,'�����',27);
INSERT INTO `n_nm` VALUES (293,7334,'�������',18);
INSERT INTO `n_nm` VALUES (294,7557,'������',20);
INSERT INTO `n_nm` VALUES (295,7777,'������',26);
INSERT INTO `n_nm` VALUES (296,7121,'���������',19);
INSERT INTO `n_nm` VALUES (297,9412,'�������',9);
INSERT INTO `n_nm` VALUES (298,8334,'�������',2);
INSERT INTO `n_nm` VALUES (299,3527,'����������',13);
INSERT INTO `n_nm` VALUES (300,2724,'��������',1);
INSERT INTO `n_nm` VALUES (301,2644,'��������',11);
INSERT INTO `n_nm` VALUES (302,1444,'��������',23);
INSERT INTO `n_nm` VALUES (303,6769,'����������',10);
INSERT INTO `n_nm` VALUES (304,3488,'�������',13);
INSERT INTO `n_nm` VALUES (305,9812,'�������',28);
INSERT INTO `n_nm` VALUES (306,2700,'�����������',1);
INSERT INTO `n_nm` VALUES (307,7275,'��������',18);
INSERT INTO `n_nm` VALUES (308,5178,'��������',5);
INSERT INTO `n_nm` VALUES (309,6955,'������',10);
INSERT INTO `n_nm` VALUES (310,2678,'��������',11);
INSERT INTO `n_nm` VALUES (311,2548,'������',11);
INSERT INTO `n_nm` VALUES (312,8878,'������',21);
INSERT INTO `n_nm` VALUES (313,2441,'����������',15);
INSERT INTO `n_nm` VALUES (314,2617,'�������',11);
INSERT INTO `n_nm` VALUES (315,4537,'��������',14);
INSERT INTO `n_nm` VALUES (316,2657,'�����',11);
INSERT INTO `n_nm` VALUES (317,2941,'�������',1);
INSERT INTO `n_nm` VALUES (318,6742,'�������',10);
INSERT INTO `n_nm` VALUES (319,8365,'�������',2);
INSERT INTO `n_nm` VALUES (320,9132,'��������',3);
INSERT INTO `n_nm` VALUES (321,9787,'��������',28);
INSERT INTO `n_nm` VALUES (322,8896,'�������',21);
INSERT INTO `n_nm` VALUES (323,9240,'��������',3);
INSERT INTO `n_nm` VALUES (324,5078,'���������',5);
INSERT INTO `n_nm` VALUES (325,5453,'������',8);
INSERT INTO `n_nm` VALUES (326,5300,'�������',8);
INSERT INTO `n_nm` VALUES (327,2567,'��������',11);
INSERT INTO `n_nm` VALUES (328,2670,'����� ���',11);
INSERT INTO `n_nm` VALUES (329,9616,'�������',9);
INSERT INTO `n_nm` VALUES (330,2454,'��������',15);
INSERT INTO `n_nm` VALUES (331,2660,'��������',11);
INSERT INTO `n_nm` VALUES (332,2270,'���',23);
INSERT INTO `n_nm` VALUES (333,5421,'��������',8);
INSERT INTO `n_nm` VALUES (334,9348,'������',9);
INSERT INTO `n_nm` VALUES (335,4343,'������',17);
INSERT INTO `n_nm` VALUES (336,4115,'���������',17);
INSERT INTO `n_nm` VALUES (337,2116,'���������',23);
INSERT INTO `n_nm` VALUES (338,2341,'�������� ���',15);
INSERT INTO `n_nm` VALUES (339,8948,'���������',21);
INSERT INTO `n_nm` VALUES (340,8337,'���������',2);
INSERT INTO `n_nm` VALUES (341,2060,'����������',23);
INSERT INTO `n_nm` VALUES (342,5084,'���������',5);
INSERT INTO `n_nm` VALUES (343,7611,'��������',20);
INSERT INTO `n_nm` VALUES (344,7449,'��������',18);
INSERT INTO `n_nm` VALUES (345,5301,'�����������',8);
INSERT INTO `n_nm` VALUES (346,2467,'�������',15);
INSERT INTO `n_nm` VALUES (347,2931,'�������',1);
INSERT INTO `n_nm` VALUES (348,6460,'�������',27);
INSERT INTO `n_nm` VALUES (349,6065,'����������',25);
INSERT INTO `n_nm` VALUES (350,7458,'���������',18);
INSERT INTO `n_nm` VALUES (351,7997,'����������',26);
INSERT INTO `n_nm` VALUES (352,7542,'��������',20);
INSERT INTO `n_nm` VALUES (353,8687,'��������',29);
INSERT INTO `n_nm` VALUES (354,2509,'��������',11);
INSERT INTO `n_nm` VALUES (355,4855,'��������',22);
INSERT INTO `n_nm` VALUES (356,2235,'��������',23);
INSERT INTO `n_nm` VALUES (357,3128,'�������',7);
INSERT INTO `n_nm` VALUES (358,6446,'�������',27);
INSERT INTO `n_nm` VALUES (359,2086,'�����',23);
INSERT INTO `n_nm` VALUES (360,4964,'�����',22);
INSERT INTO `n_nm` VALUES (361,2066,'�������',23);
INSERT INTO `n_nm` VALUES (362,6744,'�����',10);
INSERT INTO `n_nm` VALUES (363,9475,'�����',9);
INSERT INTO `n_nm` VALUES (364,9677,'��������',9);
INSERT INTO `n_nm` VALUES (365,2811,'�������',1);
INSERT INTO `n_nm` VALUES (366,8844,'�������',21);
INSERT INTO `n_nm` VALUES (367,2157,'��������',23);
INSERT INTO `n_nm` VALUES (368,5349,'���������',8);
INSERT INTO `n_nm` VALUES (369,7089,'�������',19);
INSERT INTO `n_nm` VALUES (370,9656,'�������',9);
INSERT INTO `n_nm` VALUES (371,5848,'��������',16);
INSERT INTO `n_nm` VALUES (372,2227,'��������',23);
INSERT INTO `n_nm` VALUES (373,7765,'�������',26);
INSERT INTO `n_nm` VALUES (374,5926,'��������',16);
INSERT INTO `n_nm` VALUES (375,9874,'��������',28);
INSERT INTO `n_nm` VALUES (376,9368,'��������',9);
INSERT INTO `n_nm` VALUES (377,7335,'��������',18);
INSERT INTO `n_nm` VALUES (378,6704,'�������',10);
INSERT INTO `n_nm` VALUES (379,8872,'��������',21);
INSERT INTO `n_nm` VALUES (380,9273,'�����������',3);
INSERT INTO `n_nm` VALUES (381,6269,'�����������',25);
INSERT INTO `n_nm` VALUES (382,4654,'�������',14);
INSERT INTO `n_nm` VALUES (383,7683,'����',20);
INSERT INTO `n_nm` VALUES (384,2181,'��������',23);
INSERT INTO `n_nm` VALUES (385,4103,'�������',17);
INSERT INTO `n_nm` VALUES (386,5080,'��������',5);
INSERT INTO `n_nm` VALUES (387,6958,'������',10);
INSERT INTO `n_nm` VALUES (388,3840,'�������',6);
INSERT INTO `n_nm` VALUES (389,6730,'�����',10);
INSERT INTO `n_nm` VALUES (390,5307,'��������',8);
INSERT INTO `n_nm` VALUES (391,5050,'������� ������',5);
INSERT INTO `n_nm` VALUES (392,5309,'�������',8);
INSERT INTO `n_nm` VALUES (393,3430,'����������',13);
INSERT INTO `n_nm` VALUES (394,5038,'��������',5);
INSERT INTO `n_nm` VALUES (395,3517,'���������',13);
INSERT INTO `n_nm` VALUES (396,5340,'�������',8);
INSERT INTO `n_nm` VALUES (397,4132,'��������',17);
INSERT INTO `n_nm` VALUES (398,8720,'��������',29);
INSERT INTO `n_nm` VALUES (399,6474,'�������� �����',27);
INSERT INTO `n_nm` VALUES (400,8631,'��������',29);
INSERT INTO `n_nm` VALUES (401,9124,'�������',3);
INSERT INTO `n_nm` VALUES (402,6681,'�������',10);
INSERT INTO `n_nm` VALUES (403,4114,'�������',17);
INSERT INTO `n_nm` VALUES (404,9472,'������',9);
INSERT INTO `n_nm` VALUES (405,4233,'���',17);
INSERT INTO `n_nm` VALUES (406,4144,'�����',17);
INSERT INTO `n_nm` VALUES (407,4961,'�����',22);
INSERT INTO `n_nm` VALUES (408,2064,'������',23);
INSERT INTO `n_nm` VALUES (409,4926,'������',22);
INSERT INTO `n_nm` VALUES (410,5335,'������',8);
INSERT INTO `n_nm` VALUES (411,4762,'��������',22);
INSERT INTO `n_nm` VALUES (412,3838,'���������',6);
INSERT INTO `n_nm` VALUES (413,6046,'��������',25);
INSERT INTO `n_nm` VALUES (414,5672,'������',12);
INSERT INTO `n_nm` VALUES (415,4464,'�����������',14);
INSERT INTO `n_nm` VALUES (416,4824,'������',22);
INSERT INTO `n_nm` VALUES (417,4905,'��������',22);
INSERT INTO `n_nm` VALUES (418,8999,'�������',21);
INSERT INTO `n_nm` VALUES (419,5889,'��������',16);
INSERT INTO `n_nm` VALUES (420,6478,'����������',27);
INSERT INTO `n_nm` VALUES (421,8731,'��������',29);
INSERT INTO `n_nm` VALUES (422,7064,'��������',19);
INSERT INTO `n_nm` VALUES (423,2407,'���������',15);
INSERT INTO `n_nm` VALUES (424,8898,'����� ���',21);
INSERT INTO `n_nm` VALUES (425,3240,'�������',7);
INSERT INTO `n_nm` VALUES (426,2626,'�������',11);
INSERT INTO `n_nm` VALUES (427,2010,'�������',23);
INSERT INTO `n_nm` VALUES (428,4923,'��������',22);
INSERT INTO `n_nm` VALUES (429,6790,'��������',10);
INSERT INTO `n_nm` VALUES (430,3955,'��������',6);
INSERT INTO `n_nm` VALUES (431,2884,'����������',1);
INSERT INTO `n_nm` VALUES (432,7174,'������',19);
INSERT INTO `n_nm` VALUES (433,2904,'������',1);
INSERT INTO `n_nm` VALUES (434,4243,'������',17);
INSERT INTO `n_nm` VALUES (435,6070,'������',25);
INSERT INTO `n_nm` VALUES (436,6698,'��������',10);
INSERT INTO `n_nm` VALUES (437,3528,'�������',13);
INSERT INTO `n_nm` VALUES (438,5333,'��������',8);
INSERT INTO `n_nm` VALUES (439,6187,'��������',25);
INSERT INTO `n_nm` VALUES (440,9752,'�����',28);
INSERT INTO `n_nm` VALUES (441,9255,'������',3);
INSERT INTO `n_nm` VALUES (442,5084,'�������',5);
INSERT INTO `n_nm` VALUES (443,6697,'��������',10);
INSERT INTO `n_nm` VALUES (444,4945,'���������',22);
INSERT INTO `n_nm` VALUES (445,8446,'���������',2);
INSERT INTO `n_nm` VALUES (446,7128,'����������',19);
INSERT INTO `n_nm` VALUES (447,7533,'�����',20);
INSERT INTO `n_nm` VALUES (448,2345,'������',15);
INSERT INTO `n_nm` VALUES (449,7914,'������',26);
INSERT INTO `n_nm` VALUES (450,3952,'���������',6);
INSERT INTO `n_nm` VALUES (451,6716,'��������',10);
INSERT INTO `n_nm` VALUES (452,4745,'�������',22);
INSERT INTO `n_nm` VALUES (453,2140,'���������',23);
INSERT INTO `n_nm` VALUES (454,9159,'������',3);
INSERT INTO `n_nm` VALUES (455,3746,'������',6);
INSERT INTO `n_nm` VALUES (456,3634,'������',13);
INSERT INTO `n_nm` VALUES (457,8638,'������',29);
INSERT INTO `n_nm` VALUES (458,3353,'������',7);
INSERT INTO `n_nm` VALUES (459,7125,'������',19);
INSERT INTO `n_nm` VALUES (460,3046,'������',7);
INSERT INTO `n_nm` VALUES (461,6589,'�������',27);
INSERT INTO `n_nm` VALUES (462,2483,'������',15);
INSERT INTO `n_nm` VALUES (463,5891,'�����',16);
INSERT INTO `n_nm` VALUES (464,5035,'��������',5);
INSERT INTO `n_nm` VALUES (465,4481,'������',14);
INSERT INTO `n_nm` VALUES (466,8640,'�������',29);
INSERT INTO `n_nm` VALUES (467,9771,'����',28);
INSERT INTO `n_nm` VALUES (468,6374,'���� ������',27);
INSERT INTO `n_nm` VALUES (469,9147,'�����',3);
INSERT INTO `n_nm` VALUES (470,3832,'�������',6);
INSERT INTO `n_nm` VALUES (471,8730,'�������',29);
INSERT INTO `n_nm` VALUES (472,5041,'��������',5);
INSERT INTO `n_nm` VALUES (473,4246,'������',17);
INSERT INTO `n_nm` VALUES (474,7568,'��������',20);
INSERT INTO `n_nm` VALUES (475,7855,'��������',26);
INSERT INTO `n_nm` VALUES (476,2251,'���������',23);
INSERT INTO `n_nm` VALUES (477,4109,'���������',17);
INSERT INTO `n_nm` VALUES (478,6463,'�������',27);
INSERT INTO `n_nm` VALUES (479,9967,'���������',28);
INSERT INTO `n_nm` VALUES (480,9361,'�������',9);
INSERT INTO `n_nm` VALUES (481,5041,'���������',5);
INSERT INTO `n_nm` VALUES (482,3824,'���������',6);
INSERT INTO `n_nm` VALUES (483,8983,'������',21);
INSERT INTO `n_nm` VALUES (484,4412,'���������',14);
INSERT INTO `n_nm` VALUES (485,8111,'�������',2);
INSERT INTO `n_nm` VALUES (486,7764,'�������',26);
INSERT INTO `n_nm` VALUES (487,2222,'����������',23);
INSERT INTO `n_nm` VALUES (488,6250,'����� ���������',25);
INSERT INTO `n_nm` VALUES (489,6057,'����� �������',25);
INSERT INTO `n_nm` VALUES (490,4579,'���������',14);
INSERT INTO `n_nm` VALUES (491,5862,'�������',16);
INSERT INTO `n_nm` VALUES (492,3790,'�������',6);
INSERT INTO `n_nm` VALUES (493,2750,'�������',1);
INSERT INTO `n_nm` VALUES (494,5360,'����������',8);
INSERT INTO `n_nm` VALUES (495,4959,'�����',22);
INSERT INTO `n_nm` VALUES (496,4849,'�����',22);
INSERT INTO `n_nm` VALUES (497,2278,'�����',23);
INSERT INTO `n_nm` VALUES (498,6792,'������',10);
INSERT INTO `n_nm` VALUES (499,2360,'�������',15);
INSERT INTO `n_nm` VALUES (500,2972,'��������',1);
INSERT INTO `n_nm` VALUES (501,2385,'��������� �����',15);
INSERT INTO `n_nm` VALUES (502,2292,'���������',23);
INSERT INTO `n_nm` VALUES (503,4160,'�������',17);
INSERT INTO `n_nm` VALUES (504,5083,'�������',5);
INSERT INTO `n_nm` VALUES (505,5721,'�������',12);
INSERT INTO `n_nm` VALUES (506,3260,'�������',7);
INSERT INTO `n_nm` VALUES (507,7649,'�������',20);
INSERT INTO `n_nm` VALUES (508,5971,'�����',16);
INSERT INTO `n_nm` VALUES (509,2558,'�����',11);
INSERT INTO `n_nm` VALUES (510,9290,'�������',3);
INSERT INTO `n_nm` VALUES (511,2072,'��������',23);
INSERT INTO `n_nm` VALUES (512,5992,'������',16);
INSERT INTO `n_nm` VALUES (513,4107,'��������',17);
INSERT INTO `n_nm` VALUES (514,9484,'���������',9);
INSERT INTO `n_nm` VALUES (515,5761,'���������',12);
INSERT INTO `n_nm` VALUES (516,6194,'��������',25);
INSERT INTO `n_nm` VALUES (517,7331,'����������',18);
INSERT INTO `n_nm` VALUES (518,5884,'���������',16);
INSERT INTO `n_nm` VALUES (519,7177,'����������',19);
INSERT INTO `n_nm` VALUES (520,4224,'����������',17);
INSERT INTO `n_nm` VALUES (521,5551,'��������',12);
INSERT INTO `n_nm` VALUES (522,2735,'��������',1);
INSERT INTO `n_nm` VALUES (523,6442,'����',27);
INSERT INTO `n_nm` VALUES (524,8282,'���������',2);
INSERT INTO `n_nm` VALUES (525,6737,'����',10);
INSERT INTO `n_nm` VALUES (526,3680,'��������',13);
INSERT INTO `n_nm` VALUES (527,6488,'��������',27);
INSERT INTO `n_nm` VALUES (528,2185,'������',23);
INSERT INTO `n_nm` VALUES (529,3126,'������',7);
INSERT INTO `n_nm` VALUES (530,6595,'�������',27);
INSERT INTO `n_nm` VALUES (531,2372,'�������',15);
INSERT INTO `n_nm` VALUES (532,5342,'���������',8);
INSERT INTO `n_nm` VALUES (533,5081,'���������',5);
INSERT INTO `n_nm` VALUES (534,7069,'�������',19);
INSERT INTO `n_nm` VALUES (535,8357,'�������',2);
INSERT INTO `n_nm` VALUES (536,5844,'����������',16);
INSERT INTO `n_nm` VALUES (537,4821,'������',22);
INSERT INTO `n_nm` VALUES (538,6929,'��������',10);
INSERT INTO `n_nm` VALUES (539,5152,'���������',5);
INSERT INTO `n_nm` VALUES (540,4294,'�������',17);
INSERT INTO `n_nm` VALUES (541,6355,'�������',27);
INSERT INTO `n_nm` VALUES (542,6434,'�����',27);
INSERT INTO `n_nm` VALUES (543,8113,'���������',2);
INSERT INTO `n_nm` VALUES (544,9647,'��������',9);
INSERT INTO `n_nm` VALUES (545,6345,'��������',27);
INSERT INTO `n_nm` VALUES (546,8935,'��������',21);
INSERT INTO `n_nm` VALUES (547,6582,'������',27);
INSERT INTO `n_nm` VALUES (548,2844,'�������',1);
INSERT INTO `n_nm` VALUES (549,6159,'���������',25);
INSERT INTO `n_nm` VALUES (550,2060,'���������',23);
INSERT INTO `n_nm` VALUES (551,9756,'���������',28);
INSERT INTO `n_nm` VALUES (552,4812,'�������',22);
INSERT INTO `n_nm` VALUES (553,7753,'�������',18);
INSERT INTO `n_nm` VALUES (554,5097,'��������',5);
INSERT INTO `n_nm` VALUES (555,6966,'���',10);
INSERT INTO `n_nm` VALUES (556,7996,'�����',26);
INSERT INTO `n_nm` VALUES (557,4763,'������',22);
INSERT INTO `n_nm` VALUES (558,4782,'��������',22);
INSERT INTO `n_nm` VALUES (559,4935,'������ ������',22);
INSERT INTO `n_nm` VALUES (560,3678,'�������',13);
INSERT INTO `n_nm` VALUES (561,3242,'�������',7);
INSERT INTO `n_nm` VALUES (562,5063,'�������',5);
INSERT INTO `n_nm` VALUES (563,3762,'�������',6);
INSERT INTO `n_nm` VALUES (564,2293,'�������',23);
INSERT INTO `n_nm` VALUES (565,5839,'��������',16);
INSERT INTO `n_nm` VALUES (566,2915,'������',1);
INSERT INTO `n_nm` VALUES (567,4930,'������',22);
INSERT INTO `n_nm` VALUES (568,4295,'������',17);
INSERT INTO `n_nm` VALUES (569,2253,'���������',23);
INSERT INTO `n_nm` VALUES (570,9115,'������',3);
INSERT INTO `n_nm` VALUES (571,2539,'������',11);
INSERT INTO `n_nm` VALUES (572,2074,'������',23);
INSERT INTO `n_nm` VALUES (573,2792,'�������',1);
INSERT INTO `n_nm` VALUES (574,2628,'��������',11);
INSERT INTO `n_nm` VALUES (575,8000,'������',2);
INSERT INTO `n_nm` VALUES (576,8124,'�������� ���. ����',2);
INSERT INTO `n_nm` VALUES (577,4998,'������',22);
INSERT INTO `n_nm` VALUES (578,5375,'����',8);
INSERT INTO `n_nm` VALUES (579,2486,'�������',15);
INSERT INTO `n_nm` VALUES (580,1520,'��������',23);
INSERT INTO `n_nm` VALUES (581,3326,'�����',7);
INSERT INTO `n_nm` VALUES (582,5232,'������',5);
INSERT INTO `n_nm` VALUES (583,4652,'�������',14);
INSERT INTO `n_nm` VALUES (584,2473,'���������',15);
INSERT INTO `n_nm` VALUES (585,1830,'������',23);
INSERT INTO `n_nm` VALUES (586,7757,'�������',26);
INSERT INTO `n_nm` VALUES (587,2236,'����� ������',23);
INSERT INTO `n_nm` VALUES (588,2742,'������',1);
INSERT INTO `n_nm` VALUES (589,5380,'���������',8);
INSERT INTO `n_nm` VALUES (590,6058,'������',25);
INSERT INTO `n_nm` VALUES (591,3635,'�������',13);
INSERT INTO `n_nm` VALUES (592,7168,'�������',19);
INSERT INTO `n_nm` VALUES (593,2555,'��������',11);
INSERT INTO `n_nm` VALUES (594,7077,'�����',19);
INSERT INTO `n_nm` VALUES (595,7944,'�����������',26);
INSERT INTO `n_nm` VALUES (596,9660,'���������',9);
INSERT INTO `n_nm` VALUES (597,5923,'���������',16);
INSERT INTO `n_nm` VALUES (598,5583,'���������',12);
INSERT INTO `n_nm` VALUES (599,6274,'���������',25);
INSERT INTO `n_nm` VALUES (600,5441,'�������',8);
INSERT INTO `n_nm` VALUES (601,8274,'�������',2);
INSERT INTO `n_nm` VALUES (602,6460,'��������',27);
INSERT INTO `n_nm` VALUES (603,7544,'��������',20);
INSERT INTO `n_nm` VALUES (604,8110,'���������',2);
INSERT INTO `n_nm` VALUES (605,6569,'��������� ������',27);
INSERT INTO `n_nm` VALUES (606,5733,'��������� �����',12);
INSERT INTO `n_nm` VALUES (607,5284,'��������� �������',5);
INSERT INTO `n_nm` VALUES (608,2746,'����������',1);
INSERT INTO `n_nm` VALUES (609,6186,'���������',25);
INSERT INTO `n_nm` VALUES (610,9117,'���������',3);
INSERT INTO `n_nm` VALUES (611,5360,'���������',8);
INSERT INTO `n_nm` VALUES (612,3259,'��������� �����',7);
INSERT INTO `n_nm` VALUES (613,5365,'�������',8);
INSERT INTO `n_nm` VALUES (614,2060,'�����',23);
INSERT INTO `n_nm` VALUES (615,7448,'��������',18);
INSERT INTO `n_nm` VALUES (616,6710,'����� ����',10);
INSERT INTO `n_nm` VALUES (617,6884,'������',10);
INSERT INTO `n_nm` VALUES (618,3359,'�������',7);
INSERT INTO `n_nm` VALUES (619,9274,'�������',3);
INSERT INTO `n_nm` VALUES (620,3520,'������',13);
INSERT INTO `n_nm` VALUES (621,5877,'������',16);
INSERT INTO `n_nm` VALUES (622,3245,'���������',7);
INSERT INTO `n_nm` VALUES (623,2222,'����������',23);
INSERT INTO `n_nm` VALUES (624,2255,'�����',23);
INSERT INTO `n_nm` VALUES (625,4965,'�������',22);
INSERT INTO `n_nm` VALUES (626,4527,'����',14);
INSERT INTO `n_nm` VALUES (627,4587,'����',14);
INSERT INTO `n_nm` VALUES (628,9824,'��� ����',28);
INSERT INTO `n_nm` VALUES (629,6770,'��� �����',10);
INSERT INTO `n_nm` VALUES (630,6073,'��� �����',25);
INSERT INTO `n_nm` VALUES (631,8961,'��� ��������',21);
INSERT INTO `n_nm` VALUES (632,6377,'��� ��������',27);
INSERT INTO `n_nm` VALUES (633,9101,'����',3);
INSERT INTO `n_nm` VALUES (634,7100,'����',19);
INSERT INTO `n_nm` VALUES (635,8850,'����',21);
INSERT INTO `n_nm` VALUES (636,5932,'���� ����',16);
INSERT INTO `n_nm` VALUES (637,8361,'���� ����',2);
INSERT INTO `n_nm` VALUES (638,8892,'���� �������',21);
INSERT INTO `n_nm` VALUES (639,6662,'���� ������',10);
INSERT INTO `n_nm` VALUES (640,9882,'���� ����',28);
INSERT INTO `n_nm` VALUES (641,4285,'���� ����',17);
INSERT INTO `n_nm` VALUES (642,4966,'���� ����',22);
INSERT INTO `n_nm` VALUES (643,5237,'���� ����',5);
INSERT INTO `n_nm` VALUES (644,3200,'���� �������',7);
INSERT INTO `n_nm` VALUES (645,5220,'���� ������',5);
INSERT INTO `n_nm` VALUES (646,6590,'���������',27);
INSERT INTO `n_nm` VALUES (647,6656,'�����',10);
INSERT INTO `n_nm` VALUES (648,5344,'�������',8);
INSERT INTO `n_nm` VALUES (649,5084,'��������',5);
INSERT INTO `n_nm` VALUES (650,6054,'���� ����',25);
INSERT INTO `n_nm` VALUES (651,7422,'������',18);
INSERT INTO `n_nm` VALUES (652,2060,'�������',23);
INSERT INTO `n_nm` VALUES (653,9672,'�������',9);
INSERT INTO `n_nm` VALUES (654,2957,'���������',1);
INSERT INTO `n_nm` VALUES (655,2590,'�������',11);
INSERT INTO `n_nm` VALUES (656,5462,'�������',8);
INSERT INTO `n_nm` VALUES (657,5099,'������',5);
INSERT INTO `n_nm` VALUES (658,5911,'������',16);
INSERT INTO `n_nm` VALUES (659,4492,'�������',14);
INSERT INTO `n_nm` VALUES (660,8278,'�������',2);
INSERT INTO `n_nm` VALUES (661,5281,'������',5);
INSERT INTO `n_nm` VALUES (662,7780,'������',26);
INSERT INTO `n_nm` VALUES (663,9000,'�����',3);
INSERT INTO `n_nm` VALUES (664,7638,'��������',20);
INSERT INTO `n_nm` VALUES (665,6536,'������',27);
INSERT INTO `n_nm` VALUES (666,8338,'��������',2);
INSERT INTO `n_nm` VALUES (667,9814,'����� ������',28);
INSERT INTO `n_nm` VALUES (668,7571,'����� ������',20);
INSERT INTO `n_nm` VALUES (669,4363,'����� ������',17);
INSERT INTO `n_nm` VALUES (670,6068,'����� ������',25);
INSERT INTO `n_nm` VALUES (671,7749,'����� ������',26);
INSERT INTO `n_nm` VALUES (672,9543,'��������',9);
INSERT INTO `n_nm` VALUES (673,5576,'����������� ������',12);
INSERT INTO `n_nm` VALUES (674,3658,'���������',13);
INSERT INTO `n_nm` VALUES (675,2205,'���������',23);
INSERT INTO `n_nm` VALUES (676,5723,'���������',12);
INSERT INTO `n_nm` VALUES (677,6556,'�������',27);
INSERT INTO `n_nm` VALUES (678,4364,'�������',17);
INSERT INTO `n_nm` VALUES (679,9355,'�������',9);
INSERT INTO `n_nm` VALUES (680,8447,'�������',2);
INSERT INTO `n_nm` VALUES (681,8457,'���������',2);
INSERT INTO `n_nm` VALUES (682,9941,'��������',28);
INSERT INTO `n_nm` VALUES (683,5351,'�������',8);
INSERT INTO `n_nm` VALUES (684,6727,'��������',10);
INSERT INTO `n_nm` VALUES (685,8271,'������',2);
INSERT INTO `n_nm` VALUES (686,6431,'�������',27);
INSERT INTO `n_nm` VALUES (687,6845,'����������',10);
INSERT INTO `n_nm` VALUES (688,7916,'����������',26);
INSERT INTO `n_nm` VALUES (689,9850,'������ �������',28);
INSERT INTO `n_nm` VALUES (690,5000,'������ �������',5);
INSERT INTO `n_nm` VALUES (691,9547,'��������',9);
INSERT INTO `n_nm` VALUES (692,6282,'��������',25);
INSERT INTO `n_nm` VALUES (693,7964,'���������',26);
INSERT INTO `n_nm` VALUES (694,4600,'���������',14);
INSERT INTO `n_nm` VALUES (695,9793,'������',28);
INSERT INTO `n_nm` VALUES (696,2476,'��������',15);
INSERT INTO `n_nm` VALUES (697,8458,'��������',2);
INSERT INTO `n_nm` VALUES (698,7941,'�������',26);
INSERT INTO `n_nm` VALUES (699,9263,'���������',3);
INSERT INTO `n_nm` VALUES (700,4413,'���������',14);
INSERT INTO `n_nm` VALUES (701,5365,'�������',8);
INSERT INTO `n_nm` VALUES (702,2375,'��������',15);
INSERT INTO `n_nm` VALUES (703,5343,'��������',8);
INSERT INTO `n_nm` VALUES (704,5097,'��������',5);
INSERT INTO `n_nm` VALUES (705,5643,'�������',12);
INSERT INTO `n_nm` VALUES (706,5032,'�������',5);
INSERT INTO `n_nm` VALUES (707,5367,'��������',8);
INSERT INTO `n_nm` VALUES (708,7985,'�������',26);
INSERT INTO `n_nm` VALUES (709,5070,'�������',5);
INSERT INTO `n_nm` VALUES (710,2849,'�������',1);
INSERT INTO `n_nm` VALUES (711,9119,'�������',3);
INSERT INTO `n_nm` VALUES (712,9751,'�����',28);
INSERT INTO `n_nm` VALUES (713,8473,'�����',2);
INSERT INTO `n_nm` VALUES (714,6078,'�����',25);
INSERT INTO `n_nm` VALUES (715,2066,'��������',23);
INSERT INTO `n_nm` VALUES (716,9219,'������',3);
INSERT INTO `n_nm` VALUES (717,6244,'�����',25);
INSERT INTO `n_nm` VALUES (718,7957,'�������',26);
INSERT INTO `n_nm` VALUES (719,2063,'��������',23);
INSERT INTO `n_nm` VALUES (720,6710,'������',10);
INSERT INTO `n_nm` VALUES (721,7327,'�������',18);
INSERT INTO `n_nm` VALUES (722,7942,'�������',26);
INSERT INTO `n_nm` VALUES (723,8145,'�������',2);
INSERT INTO `n_nm` VALUES (724,5094,'��������',5);
INSERT INTO `n_nm` VALUES (725,7289,'��������',18);
INSERT INTO `n_nm` VALUES (726,9828,'����������',28);
INSERT INTO `n_nm` VALUES (727,8632,'����������',29);
INSERT INTO `n_nm` VALUES (728,3053,'������',7);
INSERT INTO `n_nm` VALUES (729,7080,'������',19);
INSERT INTO `n_nm` VALUES (730,8127,'������',2);
INSERT INTO `n_nm` VALUES (731,6175,'������',25);
INSERT INTO `n_nm` VALUES (732,2579,'������',11);
INSERT INTO `n_nm` VALUES (733,4480,'������',14);
INSERT INTO `n_nm` VALUES (734,7588,'������',20);
INSERT INTO `n_nm` VALUES (735,4493,'������ ���',14);
INSERT INTO `n_nm` VALUES (736,9220,'�������',3);
INSERT INTO `n_nm` VALUES (737,5066,'��������',5);
INSERT INTO `n_nm` VALUES (738,9809,'�������',28);
INSERT INTO `n_nm` VALUES (739,5300,'�������',8);
INSERT INTO `n_nm` VALUES (740,6591,'��������',27);
INSERT INTO `n_nm` VALUES (741,4924,'�������',22);
INSERT INTO `n_nm` VALUES (742,9822,'�������',28);
INSERT INTO `n_nm` VALUES (743,3918,'������',6);
INSERT INTO `n_nm` VALUES (744,6156,'�����',25);
INSERT INTO `n_nm` VALUES (745,3700,'�����',6);
INSERT INTO `n_nm` VALUES (746,8671,'�������',29);
INSERT INTO `n_nm` VALUES (747,3478,'�������',13);
INSERT INTO `n_nm` VALUES (748,9668,'�����',9);
INSERT INTO `n_nm` VALUES (749,2495,'������',15);
INSERT INTO `n_nm` VALUES (750,2166,'�������',23);
INSERT INTO `n_nm` VALUES (751,2364,'�������',15);
INSERT INTO `n_nm` VALUES (752,4748,'�����',22);
INSERT INTO `n_nm` VALUES (753,8369,'������',2);
INSERT INTO `n_nm` VALUES (754,5035,'������',5);
INSERT INTO `n_nm` VALUES (755,3773,'��������',6);
INSERT INTO `n_nm` VALUES (756,6238,'��������',25);
INSERT INTO `n_nm` VALUES (757,8118,'��������',2);
INSERT INTO `n_nm` VALUES (758,6375,'������',27);
INSERT INTO `n_nm` VALUES (759,4284,'������',17);
INSERT INTO `n_nm` VALUES (760,3482,'������',13);
INSERT INTO `n_nm` VALUES (761,5171,'��������',5);
INSERT INTO `n_nm` VALUES (762,4487,'����������',14);
INSERT INTO `n_nm` VALUES (763,2822,'���������',1);
INSERT INTO `n_nm` VALUES (764,3455,'������',13);
INSERT INTO `n_nm` VALUES (765,3057,'��������',7);
INSERT INTO `n_nm` VALUES (766,6591,'���',27);
INSERT INTO `n_nm` VALUES (767,2358,'������',15);
INSERT INTO `n_nm` VALUES (768,7955,'�����',26);
INSERT INTO `n_nm` VALUES (769,6744,'������',10);
INSERT INTO `n_nm` VALUES (770,2665,'������ ������',11);
INSERT INTO `n_nm` VALUES (771,6678,'������ ������',10);
INSERT INTO `n_nm` VALUES (772,9765,'������ ������',28);
INSERT INTO `n_nm` VALUES (773,4921,'��������',22);
INSERT INTO `n_nm` VALUES (774,5098,'���������',5);
INSERT INTO `n_nm` VALUES (775,2354,'���������',15);
INSERT INTO `n_nm` VALUES (776,4975,'������',22);
INSERT INTO `n_nm` VALUES (777,2800,'������',1);
INSERT INTO `n_nm` VALUES (778,9563,'������',9);
INSERT INTO `n_nm` VALUES (779,2213,'�����',23);
INSERT INTO `n_nm` VALUES (780,6646,'��������',10);
INSERT INTO `n_nm` VALUES (781,2895,'�������',1);
INSERT INTO `n_nm` VALUES (782,8562,'�����',2);
INSERT INTO `n_nm` VALUES (783,4939,'�������',22);
INSERT INTO `n_nm` VALUES (784,5239,'���������',5);
INSERT INTO `n_nm` VALUES (785,1641,'������',23);
INSERT INTO `n_nm` VALUES (786,2411,'��������',15);
INSERT INTO `n_nm` VALUES (787,3440,'�����������',13);
INSERT INTO `n_nm` VALUES (788,9379,'�����������',9);
INSERT INTO `n_nm` VALUES (789,6545,'�����������',27);
INSERT INTO `n_nm` VALUES (790,7440,'������������',18);
INSERT INTO `n_nm` VALUES (791,5563,'�������',12);
INSERT INTO `n_nm` VALUES (792,5179,'���������',5);
INSERT INTO `n_nm` VALUES (793,2215,'�����������',23);
INSERT INTO `n_nm` VALUES (794,3748,'����������',6);
INSERT INTO `n_nm` VALUES (795,2299,'����� �������',23);
INSERT INTO `n_nm` VALUES (796,5365,'��������',8);
INSERT INTO `n_nm` VALUES (797,5344,'���������',8);
INSERT INTO `n_nm` VALUES (798,5367,'���������',8);
INSERT INTO `n_nm` VALUES (799,3041,'���������',7);
INSERT INTO `n_nm` VALUES (800,2841,'�����',1);
INSERT INTO `n_nm` VALUES (801,4724,'�������',22);
INSERT INTO `n_nm` VALUES (802,5349,'��������',8);
INSERT INTO `n_nm` VALUES (803,4713,'������',22);
INSERT INTO `n_nm` VALUES (804,6709,'�����',10);
INSERT INTO `n_nm` VALUES (805,8750,'�����',29);
INSERT INTO `n_nm` VALUES (806,6412,'�����',27);
INSERT INTO `n_nm` VALUES (807,4289,'�����',17);
INSERT INTO `n_nm` VALUES (808,8693,'����������',29);
INSERT INTO `n_nm` VALUES (809,6051,'������������',25);
INSERT INTO `n_nm` VALUES (810,6852,'������������',10);
INSERT INTO `n_nm` VALUES (811,6382,'�������',27);
INSERT INTO `n_nm` VALUES (812,9141,'������',3);
INSERT INTO `n_nm` VALUES (813,7851,'������',26);
INSERT INTO `n_nm` VALUES (814,3831,'�����',6);
INSERT INTO `n_nm` VALUES (815,4826,'����� ���',22);
INSERT INTO `n_nm` VALUES (816,7657,'�����',20);
INSERT INTO `n_nm` VALUES (817,5166,'�����',5);
INSERT INTO `n_nm` VALUES (818,3924,'��������',6);
INSERT INTO `n_nm` VALUES (819,9495,'��������',9);
INSERT INTO `n_nm` VALUES (820,5061,'�������',5);
INSERT INTO `n_nm` VALUES (821,6716,'�������',10);
INSERT INTO `n_nm` VALUES (822,4203,'������',17);
INSERT INTO `n_nm` VALUES (823,9958,'�������',28);
INSERT INTO `n_nm` VALUES (824,6381,'����������',27);
INSERT INTO `n_nm` VALUES (825,9292,'���������',3);
INSERT INTO `n_nm` VALUES (826,4135,'�����������',17);
INSERT INTO `n_nm` VALUES (827,3332,'���������',7);
INSERT INTO `n_nm` VALUES (828,6353,'���������',27);
INSERT INTO `n_nm` VALUES (829,4967,'������� ����',22);
INSERT INTO `n_nm` VALUES (830,5045,'�������',5);
INSERT INTO `n_nm` VALUES (831,8661,'�������',29);
INSERT INTO `n_nm` VALUES (832,9473,'���������',9);
INSERT INTO `n_nm` VALUES (833,3734,'�������',6);
INSERT INTO `n_nm` VALUES (834,3481,'�������',13);
INSERT INTO `n_nm` VALUES (835,5350,'���������',8);
INSERT INTO `n_nm` VALUES (836,5458,'��������',8);
INSERT INTO `n_nm` VALUES (837,7551,'�������',20);
INSERT INTO `n_nm` VALUES (838,6698,'�������',10);
INSERT INTO `n_nm` VALUES (839,4347,'���������',17);
INSERT INTO `n_nm` VALUES (840,1223,'����������',23);
INSERT INTO `n_nm` VALUES (841,7670,'�����',20);
INSERT INTO `n_nm` VALUES (842,2886,'�����',1);
INSERT INTO `n_nm` VALUES (843,6231,'����������',25);
INSERT INTO `n_nm` VALUES (844,6633,'���������',10);
INSERT INTO `n_nm` VALUES (845,7175,'������',19);
INSERT INTO `n_nm` VALUES (846,1346,'������',23);
INSERT INTO `n_nm` VALUES (847,5035,'������ ����',5);
INSERT INTO `n_nm` VALUES (848,5660,'�������',12);
INSERT INTO `n_nm` VALUES (849,5307,'��������',8);
INSERT INTO `n_nm` VALUES (850,2470,'������',15);
INSERT INTO `n_nm` VALUES (851,2834,'�����������',1);
INSERT INTO `n_nm` VALUES (852,4649,'��������',14);
INSERT INTO `n_nm` VALUES (853,7940,'����� ���',26);
INSERT INTO `n_nm` VALUES (854,5347,'����������',8);
INSERT INTO `n_nm` VALUES (855,9663,'�������',9);
INSERT INTO `n_nm` VALUES (856,4906,'��������',22);
INSERT INTO `n_nm` VALUES (857,6912,'�������',10);
INSERT INTO `n_nm` VALUES (858,2830,'�����',1);
INSERT INTO `n_nm` VALUES (859,2445,'����� �����',15);
INSERT INTO `n_nm` VALUES (860,3248,'������',7);
INSERT INTO `n_nm` VALUES (861,4234,'�����',17);
INSERT INTO `n_nm` VALUES (862,9382,'���������',9);
INSERT INTO `n_nm` VALUES (863,8109,'�������',2);
INSERT INTO `n_nm` VALUES (864,2059,'������',23);
INSERT INTO `n_nm` VALUES (865,2575,'������',11);
INSERT INTO `n_nm` VALUES (866,3000,'�����',7);
INSERT INTO `n_nm` VALUES (867,9345,'��������',9);
INSERT INTO `n_nm` VALUES (868,2151,'������',23);
INSERT INTO `n_nm` VALUES (869,6832,'�����',10);
INSERT INTO `n_nm` VALUES (870,8560,'�������',2);
INSERT INTO `n_nm` VALUES (871,3779,'����',6);
INSERT INTO `n_nm` VALUES (872,2254,'���������',23);
INSERT INTO `n_nm` VALUES (873,4622,'��������',14);
INSERT INTO `n_nm` VALUES (874,2485,'�����',15);
INSERT INTO `n_nm` VALUES (875,2661,'������',11);
INSERT INTO `n_nm` VALUES (876,5953,'�����',16);
INSERT INTO `n_nm` VALUES (877,6313,'���������',27);
INSERT INTO `n_nm` VALUES (878,5041,'��������',5);
INSERT INTO `n_nm` VALUES (879,9157,'������',3);
INSERT INTO `n_nm` VALUES (880,8851,'������',21);
INSERT INTO `n_nm` VALUES (881,6710,'�����',10);
INSERT INTO `n_nm` VALUES (882,7643,'������',20);
INSERT INTO `n_nm` VALUES (883,5349,'������ ���',8);
INSERT INTO `n_nm` VALUES (884,6850,'��������',10);
INSERT INTO `n_nm` VALUES (885,2807,'�������',1);
INSERT INTO `n_nm` VALUES (886,5365,'��������',8);
INSERT INTO `n_nm` VALUES (887,2930,'��������',1);
INSERT INTO `n_nm` VALUES (888,9963,'�������',28);
INSERT INTO `n_nm` VALUES (889,8748,'����� ������',29);
INSERT INTO `n_nm` VALUES (890,4775,'������',22);
INSERT INTO `n_nm` VALUES (891,4947,'������ ���',22);
INSERT INTO `n_nm` VALUES (892,6893,'��������',10);
INSERT INTO `n_nm` VALUES (893,8341,'���������',2);
INSERT INTO `n_nm` VALUES (894,6553,'����� ����',27);
INSERT INTO `n_nm` VALUES (895,3650,'���������',13);
INSERT INTO `n_nm` VALUES (896,3851,'������',6);
INSERT INTO `n_nm` VALUES (897,9280,'����� ���',3);
INSERT INTO `n_nm` VALUES (898,8723,'����� �����',29);
INSERT INTO `n_nm` VALUES (899,8443,'������',2);
INSERT INTO `n_nm` VALUES (900,5890,'���������',16);
INSERT INTO `n_nm` VALUES (901,5081,'��������',5);
INSERT INTO `n_nm` VALUES (902,5086,'��������',5);
INSERT INTO `n_nm` VALUES (903,3939,'�����',6);
INSERT INTO `n_nm` VALUES (904,4920,'�����',22);
INSERT INTO `n_nm` VALUES (905,2405,'�����',15);
INSERT INTO `n_nm` VALUES (906,9781,'������',28);
INSERT INTO `n_nm` VALUES (907,4145,'������',17);
INSERT INTO `n_nm` VALUES (908,6873,'������',10);
INSERT INTO `n_nm` VALUES (909,6745,'��������',10);
INSERT INTO `n_nm` VALUES (910,3147,'����������',7);
INSERT INTO `n_nm` VALUES (911,4921,'�������',22);
INSERT INTO `n_nm` VALUES (912,7674,'�������',20);
INSERT INTO `n_nm` VALUES (913,3264,'�������',7);
INSERT INTO `n_nm` VALUES (914,9870,'�������',28);
INSERT INTO `n_nm` VALUES (915,5128,'�������',5);
INSERT INTO `n_nm` VALUES (916,6445,'�������',27);
INSERT INTO `n_nm` VALUES (917,5845,'�������',16);
INSERT INTO `n_nm` VALUES (918,2248,'��������',23);
INSERT INTO `n_nm` VALUES (919,5233,'��������',5);
INSERT INTO `n_nm` VALUES (920,4710,'�������',22);
INSERT INTO `n_nm` VALUES (921,6488,'�������',27);
INSERT INTO `n_nm` VALUES (922,3951,'�������',6);
INSERT INTO `n_nm` VALUES (923,3948,'���������',6);
INSERT INTO `n_nm` VALUES (924,9943,'�������',28);
INSERT INTO `n_nm` VALUES (925,4907,'������ ���',22);
INSERT INTO `n_nm` VALUES (926,5081,'�����������',5);
INSERT INTO `n_nm` VALUES (927,5191,'���������',5);
INSERT INTO `n_nm` VALUES (928,6873,'����� ���',10);
INSERT INTO `n_nm` VALUES (929,4989,'����� ���',22);
INSERT INTO `n_nm` VALUES (930,2085,'�������',23);
INSERT INTO `n_nm` VALUES (931,5050,'��������',5);
INSERT INTO `n_nm` VALUES (932,4983,'�������',22);
INSERT INTO `n_nm` VALUES (933,8999,'�������',21);
INSERT INTO `n_nm` VALUES (934,3752,'������',6);
INSERT INTO `n_nm` VALUES (935,2786,'�������',1);
INSERT INTO `n_nm` VALUES (936,6814,'�������',10);
INSERT INTO `n_nm` VALUES (937,3540,'������',13);
INSERT INTO `n_nm` VALUES (938,8157,'�������',2);
INSERT INTO `n_nm` VALUES (939,3265,'������',7);
INSERT INTO `n_nm` VALUES (940,6162,'��������',25);
INSERT INTO `n_nm` VALUES (941,2215,'�����',23);
INSERT INTO `n_nm` VALUES (942,9419,'�����',9);
INSERT INTO `n_nm` VALUES (943,6482,'��������',27);
INSERT INTO `n_nm` VALUES (944,8212,'��������',2);
INSERT INTO `n_nm` VALUES (945,2112,'�����',23);
INSERT INTO `n_nm` VALUES (946,5097,'�������',5);
INSERT INTO `n_nm` VALUES (947,2898,'�������',1);
INSERT INTO `n_nm` VALUES (948,2557,'����������',11);
INSERT INTO `n_nm` VALUES (949,4921,'�������',22);
INSERT INTO `n_nm` VALUES (950,9779,'�������',28);
INSERT INTO `n_nm` VALUES (951,4795,'�������',22);
INSERT INTO `n_nm` VALUES (952,2392,'������ ���',15);
INSERT INTO `n_nm` VALUES (953,4467,'���������',14);
INSERT INTO `n_nm` VALUES (954,3453,'����������',13);
INSERT INTO `n_nm` VALUES (955,2277,'����������',23);
INSERT INTO `n_nm` VALUES (956,2747,'�������',1);
INSERT INTO `n_nm` VALUES (957,5300,'�������',8);
INSERT INTO `n_nm` VALUES (958,6691,'�������',10);
INSERT INTO `n_nm` VALUES (959,5051,'��������',5);
INSERT INTO `n_nm` VALUES (960,8158,'�����',2);
INSERT INTO `n_nm` VALUES (961,9227,'���������',3);
INSERT INTO `n_nm` VALUES (962,5619,'��������',12);
INSERT INTO `n_nm` VALUES (963,8854,'����������',21);
INSERT INTO `n_nm` VALUES (964,3469,'������ ������',13);
INSERT INTO `n_nm` VALUES (965,3525,'��������',13);
INSERT INTO `n_nm` VALUES (966,7831,'������',26);
INSERT INTO `n_nm` VALUES (967,5367,'�������',8);
INSERT INTO `n_nm` VALUES (968,5300,'�������',8);
INSERT INTO `n_nm` VALUES (969,2114,'���������',23);
INSERT INTO `n_nm` VALUES (970,2924,'�����������',1);
INSERT INTO `n_nm` VALUES (971,5345,'���������',8);
INSERT INTO `n_nm` VALUES (972,3753,'��������',6);
INSERT INTO `n_nm` VALUES (973,5731,'������',12);
INSERT INTO `n_nm` VALUES (974,3071,'�������',7);
INSERT INTO `n_nm` VALUES (975,3250,'������',7);
INSERT INTO `n_nm` VALUES (976,4934,'������',22);
INSERT INTO `n_nm` VALUES (977,3342,'������',7);
INSERT INTO `n_nm` VALUES (978,5084,'����� ���',5);
INSERT INTO `n_nm` VALUES (979,5397,'��������',8);
INSERT INTO `n_nm` VALUES (980,2271,'���� ���',23);
INSERT INTO `n_nm` VALUES (981,7101,'���� ����',19);
INSERT INTO `n_nm` VALUES (982,5120,'���� ����� ��������',5);
INSERT INTO `n_nm` VALUES (983,2109,'���� ���� �����',23);
INSERT INTO `n_nm` VALUES (984,8432,'���� �����',2);
INSERT INTO `n_nm` VALUES (985,5364,'���� �������',8);
INSERT INTO `n_nm` VALUES (986,2272,'���� ��������',23);
INSERT INTO `n_nm` VALUES (987,3940,'���� ������',6);
INSERT INTO `n_nm` VALUES (988,4410,'���� ���������',14);
INSERT INTO `n_nm` VALUES (989,6880,'���� �������',10);
INSERT INTO `n_nm` VALUES (990,6517,'���� ����������',27);
INSERT INTO `n_nm` VALUES (991,7272,'���� ������',19);
INSERT INTO `n_nm` VALUES (992,6489,'���� ������������',27);
INSERT INTO `n_nm` VALUES (993,7737,'���� ���������',26);
INSERT INTO `n_nm` VALUES (994,9780,'���� �������',28);
INSERT INTO `n_nm` VALUES (995,3163,'���� �������',7);
INSERT INTO `n_nm` VALUES (996,8604,'���� �����',29);
INSERT INTO `n_nm` VALUES (997,5345,'������',8);
INSERT INTO `n_nm` VALUES (998,7589,'������',20);
INSERT INTO `n_nm` VALUES (999,6349,'���������',27);
INSERT INTO `n_nm` VALUES (1000,5041,'�������',5);
INSERT INTO `n_nm` VALUES (1001,2882,'����',1);
INSERT INTO `n_nm` VALUES (1002,4710,'����',22);
INSERT INTO `n_nm` VALUES (1003,4444,'����������',14);
INSERT INTO `n_nm` VALUES (1004,6856,'������� ������',10);
INSERT INTO `n_nm` VALUES (1005,8670,'������� ������',29);
INSERT INTO `n_nm` VALUES (1006,9150,'������� �����������',3);
INSERT INTO `n_nm` VALUES (1007,9142,'������� ��������',3);
INSERT INTO `n_nm` VALUES (1008,9295,'������� ������',3);
INSERT INTO `n_nm` VALUES (1009,9373,'������� ������',9);
INSERT INTO `n_nm` VALUES (1010,3732,'������� ��������',6);
INSERT INTO `n_nm` VALUES (1011,2873,'������� �������',1);
INSERT INTO `n_nm` VALUES (1012,9500,'������� ������',9);
INSERT INTO `n_nm` VALUES (1013,8625,'������� ������',29);
INSERT INTO `n_nm` VALUES (1014,6523,'����������',27);
INSERT INTO `n_nm` VALUES (1015,6635,'������',10);
INSERT INTO `n_nm` VALUES (1016,5307,'�������',8);
INSERT INTO `n_nm` VALUES (1017,5301,'��������',8);
INSERT INTO `n_nm` VALUES (1018,5350,'��������',8);
INSERT INTO `n_nm` VALUES (1019,5397,'����',8);
INSERT INTO `n_nm` VALUES (1020,3470,'������ ��������',13);
INSERT INTO `n_nm` VALUES (1021,6559,'������ �������',27);
INSERT INTO `n_nm` VALUES (1022,8869,'��������',21);
INSERT INTO `n_nm` VALUES (1023,5345,'�������',8);
INSERT INTO `n_nm` VALUES (1024,1186,'������',23);
INSERT INTO `n_nm` VALUES (1025,7219,'������',18);
INSERT INTO `n_nm` VALUES (1026,5370,'����',8);
INSERT INTO `n_nm` VALUES (1027,9393,'��������',9);
INSERT INTO `n_nm` VALUES (1028,5970,'�����',16);
INSERT INTO `n_nm` VALUES (1029,2393,'�������',15);
INSERT INTO `n_nm` VALUES (1030,2250,'�����',23);
INSERT INTO `n_nm` VALUES (1031,2546,'��������',11);
INSERT INTO `n_nm` VALUES (1032,6215,'����',25);
INSERT INTO `n_nm` VALUES (1033,5985,'�����',16);
INSERT INTO `n_nm` VALUES (1034,6295,'������',25);
INSERT INTO `n_nm` VALUES (1035,7543,'������',20);
INSERT INTO `n_nm` VALUES (1036,3468,'����������',13);
INSERT INTO `n_nm` VALUES (1037,2480,'����������',15);
INSERT INTO `n_nm` VALUES (1038,9499,'��������',9);
INSERT INTO `n_nm` VALUES (1039,4171,'��������',17);
INSERT INTO `n_nm` VALUES (1040,6738,'����������',10);
INSERT INTO `n_nm` VALUES (1041,3045,'�������',7);
INSERT INTO `n_nm` VALUES (1042,7630,'���������',20);
INSERT INTO `n_nm` VALUES (1043,4409,'���������',14);
INSERT INTO `n_nm` VALUES (1044,7986,'��������',26);
INSERT INTO `n_nm` VALUES (1045,5345,'�������',8);
INSERT INTO `n_nm` VALUES (1046,6263,'���������',25);
INSERT INTO `n_nm` VALUES (1047,6362,'������',27);
INSERT INTO `n_nm` VALUES (1048,7879,'��������',26);
INSERT INTO `n_nm` VALUES (1049,4948,'�������',22);
INSERT INTO `n_nm` VALUES (1050,5080,'��������',5);
INSERT INTO `n_nm` VALUES (1051,2463,'���������',15);
INSERT INTO `n_nm` VALUES (1052,5724,'�������',12);
INSERT INTO `n_nm` VALUES (1053,7294,'��������',19);
INSERT INTO `n_nm` VALUES (1054,3327,'�������',7);
INSERT INTO `n_nm` VALUES (1055,5740,'�������',12);
INSERT INTO `n_nm` VALUES (1056,6572,'�������',27);
INSERT INTO `n_nm` VALUES (1057,8429,'������',2);
INSERT INTO `n_nm` VALUES (1058,5363,'����������',8);
INSERT INTO `n_nm` VALUES (1059,8866,'���������',21);
INSERT INTO `n_nm` VALUES (1060,6647,'������',10);
INSERT INTO `n_nm` VALUES (1061,5370,'������',8);
INSERT INTO `n_nm` VALUES (1062,8879,'�������',21);
INSERT INTO `n_nm` VALUES (1063,6590,'��������',27);
INSERT INTO `n_nm` VALUES (1064,6675,'��������',10);
INSERT INTO `n_nm` VALUES (1065,4453,'��������',14);
INSERT INTO `n_nm` VALUES (1066,2020,'���������',23);
INSERT INTO `n_nm` VALUES (1067,3474,'�������',13);
INSERT INTO `n_nm` VALUES (1068,2240,'�����',23);
INSERT INTO `n_nm` VALUES (1069,2938,'��������',1);
INSERT INTO `n_nm` VALUES (1070,2768,'�������',1);
INSERT INTO `n_nm` VALUES (1071,2366,'���',15);
INSERT INTO `n_nm` VALUES (1072,4791,'���������',22);
INSERT INTO `n_nm` VALUES (1073,5392,'��������',8);
INSERT INTO `n_nm` VALUES (1074,2036,'�����',23);
INSERT INTO `n_nm` VALUES (1075,2800,'����� �����',1);
INSERT INTO `n_nm` VALUES (1076,2113,'������ ��������',23);
INSERT INTO `n_nm` VALUES (1077,2667,'������ ����',11);
INSERT INTO `n_nm` VALUES (1078,5070,'��������',5);
INSERT INTO `n_nm` VALUES (1079,5054,'����������',5);
INSERT INTO `n_nm` VALUES (1080,3839,'����������',6);
INSERT INTO `n_nm` VALUES (1081,6358,'���������',27);
INSERT INTO `n_nm` VALUES (1082,5370,'������ ���������',8);
INSERT INTO `n_nm` VALUES (1083,5365,'������ ���������',8);
INSERT INTO `n_nm` VALUES (1084,3063,'������ ������',7);
INSERT INTO `n_nm` VALUES (1085,2348,'������ ������',15);
INSERT INTO `n_nm` VALUES (1086,2204,'������ ������',23);
INSERT INTO `n_nm` VALUES (1087,2635,'������ ����',11);
INSERT INTO `n_nm` VALUES (1088,5573,'�����',12);
INSERT INTO `n_nm` VALUES (1089,2254,'�����',23);
INSERT INTO `n_nm` VALUES (1090,7547,'�����',20);
INSERT INTO `n_nm` VALUES (1091,2818,'��������',1);
INSERT INTO `n_nm` VALUES (1092,9114,'������',3);
INSERT INTO `n_nm` VALUES (1093,6793,'��������',10);
INSERT INTO `n_nm` VALUES (1094,6386,'�����������',27);
INSERT INTO `n_nm` VALUES (1095,2690,'����� ���������',11);
INSERT INTO `n_nm` VALUES (1096,6932,'����� �������',10);
INSERT INTO `n_nm` VALUES (1097,8757,'����� �������',29);
INSERT INTO `n_nm` VALUES (1098,6245,'����� ���',25);
INSERT INTO `n_nm` VALUES (1099,7459,'����� �����',18);
INSERT INTO `n_nm` VALUES (1100,6395,'����� �����',27);
INSERT INTO `n_nm` VALUES (1101,5741,'����� �����',12);
INSERT INTO `n_nm` VALUES (1102,8624,'����� ��������',29);
INSERT INTO `n_nm` VALUES (1103,7444,'����� �������',18);
INSERT INTO `n_nm` VALUES (1104,4193,'����� ������',17);
INSERT INTO `n_nm` VALUES (1105,6744,'������ ����',10);
INSERT INTO `n_nm` VALUES (1106,5753,'������ ���������',12);
INSERT INTO `n_nm` VALUES (1107,7452,'������ ����',18);
INSERT INTO `n_nm` VALUES (1108,6476,'������ ������',27);
INSERT INTO `n_nm` VALUES (1109,5670,'������ �������',12);
INSERT INTO `n_nm` VALUES (1110,6940,'������ �����',10);
INSERT INTO `n_nm` VALUES (1111,6424,'������ �������',27);
INSERT INTO `n_nm` VALUES (1112,4473,'������ ������',14);
INSERT INTO `n_nm` VALUES (1113,8329,'������ ������',2);
INSERT INTO `n_nm` VALUES (1114,7065,'������ �������',19);
INSERT INTO `n_nm` VALUES (1115,7848,'������ �������',26);
INSERT INTO `n_nm` VALUES (1116,7960,'������ ������',26);
INSERT INTO `n_nm` VALUES (1117,6146,'������ �������',25);
INSERT INTO `n_nm` VALUES (1118,6925,'������ ��������',10);
INSERT INTO `n_nm` VALUES (1119,8729,'������ �������',29);
INSERT INTO `n_nm` VALUES (1120,7789,'������ ����',18);
INSERT INTO `n_nm` VALUES (1121,3058,'������ ������',7);
INSERT INTO `n_nm` VALUES (1122,7778,'������ ��������',26);
INSERT INTO `n_nm` VALUES (1123,5743,'������ ����',12);
INSERT INTO `n_nm` VALUES (1124,7924,'������ ��������',26);
INSERT INTO `n_nm` VALUES (1125,8863,'������ ��������',21);
INSERT INTO `n_nm` VALUES (1126,2231,'���������',23);
INSERT INTO `n_nm` VALUES (1127,3772,'���������',6);
INSERT INTO `n_nm` VALUES (1128,5552,'�����',12);
INSERT INTO `n_nm` VALUES (1129,5035,'���������',5);
INSERT INTO `n_nm` VALUES (1130,2565,'���������',11);
INSERT INTO `n_nm` VALUES (1131,2834,'������',1);
INSERT INTO `n_nm` VALUES (1132,5050,'����� ������',5);
INSERT INTO `n_nm` VALUES (1133,9100,'����� ������',3);
INSERT INTO `n_nm` VALUES (1134,9101,'������',3);
INSERT INTO `n_nm` VALUES (1135,9558,'������',9);
INSERT INTO `n_nm` VALUES (1136,8225,'������',2);
INSERT INTO `n_nm` VALUES (1137,7854,'������',26);
INSERT INTO `n_nm` VALUES (1138,9688,'��������',9);
INSERT INTO `n_nm` VALUES (1139,7337,'��������',18);
INSERT INTO `n_nm` VALUES (1140,4788,'����� ����',22);
INSERT INTO `n_nm` VALUES (1141,3544,'����� ���� �����',13);
INSERT INTO `n_nm` VALUES (1142,3155,'����� ��������',7);
INSERT INTO `n_nm` VALUES (1143,4657,'����� �������',14);
INSERT INTO `n_nm` VALUES (1144,2842,'����� ��������',1);
INSERT INTO `n_nm` VALUES (1145,2575,'����� ���������',11);
INSERT INTO `n_nm` VALUES (1146,2046,'����� ��������',23);
INSERT INTO `n_nm` VALUES (1147,3484,'����� ��������',13);
INSERT INTO `n_nm` VALUES (1148,2439,'����� ������',15);
INSERT INTO `n_nm` VALUES (1149,2459,'����� ���������',15);
INSERT INTO `n_nm` VALUES (1150,2535,'����� �������',11);
INSERT INTO `n_nm` VALUES (1151,2419,'����� ������',15);
INSERT INTO `n_nm` VALUES (1152,4648,'����� ������',14);
INSERT INTO `n_nm` VALUES (1153,7969,'����� �������',26);
INSERT INTO `n_nm` VALUES (1154,7865,'����� �����',26);
INSERT INTO `n_nm` VALUES (1155,3463,'����� ��������',13);
INSERT INTO `n_nm` VALUES (1156,2687,'����� �������',11);
INSERT INTO `n_nm` VALUES (1157,3154,'����� �������',7);
INSERT INTO `n_nm` VALUES (1158,6685,'����� �������',10);
INSERT INTO `n_nm` VALUES (1159,2827,'����� �������',1);
INSERT INTO `n_nm` VALUES (1160,6952,'����� ����',10);
INSERT INTO `n_nm` VALUES (1161,5227,'����� �������',5);
INSERT INTO `n_nm` VALUES (1162,3458,'����� ����',13);
INSERT INTO `n_nm` VALUES (1163,2131,'����� ������',23);
INSERT INTO `n_nm` VALUES (1164,4196,'����� ������',17);
INSERT INTO `n_nm` VALUES (1165,2491,'����� �����',15);
INSERT INTO `n_nm` VALUES (1166,5869,'����� ����������',16);
INSERT INTO `n_nm` VALUES (1167,5100,'����� ���������',5);
INSERT INTO `n_nm` VALUES (1168,2836,'����� �������',1);
INSERT INTO `n_nm` VALUES (1169,5448,'����� ������',8);
INSERT INTO `n_nm` VALUES (1170,2399,'����� �������',15);
INSERT INTO `n_nm` VALUES (1171,5294,'����� �������',5);
INSERT INTO `n_nm` VALUES (1172,2811,'����� ������',1);
INSERT INTO `n_nm` VALUES (1173,5089,'����� ���������',5);
INSERT INTO `n_nm` VALUES (1174,7913,'����� �������',26);
INSERT INTO `n_nm` VALUES (1175,1806,'����� ������',23);
INSERT INTO `n_nm` VALUES (1176,3343,'����� �����',7);
INSERT INTO `n_nm` VALUES (1177,5380,'����� �������',8);
INSERT INTO `n_nm` VALUES (1178,6485,'����� ��������',27);
INSERT INTO `n_nm` VALUES (1179,5367,'����� ���������',8);
INSERT INTO `n_nm` VALUES (1180,4368,'����� ������',17);
INSERT INTO `n_nm` VALUES (1181,5380,'����� ��������',8);
INSERT INTO `n_nm` VALUES (1182,5880,'����� ������',16);
INSERT INTO `n_nm` VALUES (1183,2557,'����� �������',11);
INSERT INTO `n_nm` VALUES (1184,5096,'����� ����',5);
INSERT INTO `n_nm` VALUES (1185,3960,'����� ���',6);
INSERT INTO `n_nm` VALUES (1186,5360,'����� �������',8);
INSERT INTO `n_nm` VALUES (1187,2027,'����� ����',23);
INSERT INTO `n_nm` VALUES (1188,5360,'����� ��������',8);
INSERT INTO `n_nm` VALUES (1189,2371,'����� �������',15);
INSERT INTO `n_nm` VALUES (1190,5098,'����� ��������',5);
INSERT INTO `n_nm` VALUES (1191,3632,'����� �����',13);
INSERT INTO `n_nm` VALUES (1192,5360,'����� �������',8);
INSERT INTO `n_nm` VALUES (1193,6954,'����� �����',10);
INSERT INTO `n_nm` VALUES (1194,5991,'������',16);
INSERT INTO `n_nm` VALUES (1195,7173,'����� ��������',19);
INSERT INTO `n_nm` VALUES (1196,8883,'����� ������������',21);
INSERT INTO `n_nm` VALUES (1197,6219,'����� ������',25);
INSERT INTO `n_nm` VALUES (1198,6053,'����� ������',25);
INSERT INTO `n_nm` VALUES (1199,6388,'����� ���������',27);
INSERT INTO `n_nm` VALUES (1200,4456,'����� �������',14);
INSERT INTO `n_nm` VALUES (1201,2797,'����� ��������',1);
INSERT INTO `n_nm` VALUES (1202,2963,'����� �������',1);
INSERT INTO `n_nm` VALUES (1203,6181,'����� ��������',25);
INSERT INTO `n_nm` VALUES (1204,2138,'����� �������',23);
INSERT INTO `n_nm` VALUES (1205,2556,'����� ������',11);
INSERT INTO `n_nm` VALUES (1206,7927,'����� ��������',26);
INSERT INTO `n_nm` VALUES (1207,2783,'����� ������',1);
INSERT INTO `n_nm` VALUES (1208,6871,'����� ��������',10);
INSERT INTO `n_nm` VALUES (1209,6585,'����� ������',27);
INSERT INTO `n_nm` VALUES (1210,7939,'����� �������',26);
INSERT INTO `n_nm` VALUES (1211,6225,'����� ���� ����',25);
INSERT INTO `n_nm` VALUES (1212,3547,'����� �������',13);
INSERT INTO `n_nm` VALUES (1213,2756,'����� �������',1);
INSERT INTO `n_nm` VALUES (1214,5549,'����� ���������',12);
INSERT INTO `n_nm` VALUES (1215,3052,'����� ������',7);
INSERT INTO `n_nm` VALUES (1216,6486,'����� ����',27);
INSERT INTO `n_nm` VALUES (1217,6780,'����� �������',10);
INSERT INTO `n_nm` VALUES (1218,2213,'����� ����',23);
INSERT INTO `n_nm` VALUES (1219,2824,'����� ��������',1);
INSERT INTO `n_nm` VALUES (1220,6151,'����� �������',25);
INSERT INTO `n_nm` VALUES (1221,5614,'����� �����',12);
INSERT INTO `n_nm` VALUES (1222,2561,'����� ����',11);
INSERT INTO `n_nm` VALUES (1223,2727,'����� �������',1);
INSERT INTO `n_nm` VALUES (1224,3487,'����� ��������',13);
INSERT INTO `n_nm` VALUES (1225,6165,'����� ���������',25);
INSERT INTO `n_nm` VALUES (1226,8343,'����� ��������',2);
INSERT INTO `n_nm` VALUES (1227,5304,'������� ������',8);
INSERT INTO `n_nm` VALUES (1228,6574,'����������',27);
INSERT INTO `n_nm` VALUES (1229,4253,'���������',17);
INSERT INTO `n_nm` VALUES (1230,5748,'������� ����',12);
INSERT INTO `n_nm` VALUES (1231,4776,'������',22);
INSERT INTO `n_nm` VALUES (1232,8469,'������',2);
INSERT INTO `n_nm` VALUES (1233,7288,'��������',18);
INSERT INTO `n_nm` VALUES (1234,2496,'���������',15);
INSERT INTO `n_nm` VALUES (1235,5083,'������',5);
INSERT INTO `n_nm` VALUES (1236,8721,'������ ������',29);
INSERT INTO `n_nm` VALUES (1237,5132,'������ ����� ������',5);
INSERT INTO `n_nm` VALUES (1238,5131,'������ ����� ������',5);
INSERT INTO `n_nm` VALUES (1239,6420,'������ �����',27);
INSERT INTO `n_nm` VALUES (1240,6864,'������ �����',10);
INSERT INTO `n_nm` VALUES (1241,5167,'������ �������',5);
INSERT INTO `n_nm` VALUES (1242,6590,'������',27);
INSERT INTO `n_nm` VALUES (1243,7847,'������ ��������',26);
INSERT INTO `n_nm` VALUES (1244,6800,'������ ������',10);
INSERT INTO `n_nm` VALUES (1245,5238,'������ ����������',5);
INSERT INTO `n_nm` VALUES (1246,5235,'������ ������',5);
INSERT INTO `n_nm` VALUES (1247,5075,'������ ���� ����',5);
INSERT INTO `n_nm` VALUES (1248,5088,'������ ��������',5);
INSERT INTO `n_nm` VALUES (1249,7947,'������ ����',26);
INSERT INTO `n_nm` VALUES (1250,5557,'������ �������',12);
INSERT INTO `n_nm` VALUES (1251,5888,'���������',16);
INSERT INTO `n_nm` VALUES (1252,9689,'�����',9);
INSERT INTO `n_nm` VALUES (1253,2191,'��������',23);
INSERT INTO `n_nm` VALUES (1254,5722,'���������',12);
INSERT INTO `n_nm` VALUES (1255,2882,'�������',1);
INSERT INTO `n_nm` VALUES (1256,5367,'������',8);
INSERT INTO `n_nm` VALUES (1257,9107,'�����������',3);
INSERT INTO `n_nm` VALUES (1258,7561,'�����������',20);
INSERT INTO `n_nm` VALUES (1259,2914,'����������',1);
INSERT INTO `n_nm` VALUES (1260,5390,'���������',8);
INSERT INTO `n_nm` VALUES (1261,5864,'�������',16);
INSERT INTO `n_nm` VALUES (1262,5543,'�������',12);
INSERT INTO `n_nm` VALUES (1263,2773,'������',1);
INSERT INTO `n_nm` VALUES (1264,2900,'���� ������',1);
INSERT INTO `n_nm` VALUES (1265,2755,'�������',1);
INSERT INTO `n_nm` VALUES (1266,5732,'����������',12);
INSERT INTO `n_nm` VALUES (1267,3780,'������',6);
INSERT INTO `n_nm` VALUES (1268,2239,'������',23);
INSERT INTO `n_nm` VALUES (1269,8990,'������',21);
INSERT INTO `n_nm` VALUES (1270,3074,'����������',7);
INSERT INTO `n_nm` VALUES (1271,5879,'�������',16);
INSERT INTO `n_nm` VALUES (1272,7239,'�������',18);
INSERT INTO `n_nm` VALUES (1273,4290,'�������',17);
INSERT INTO `n_nm` VALUES (1274,9243,'�����������',3);
INSERT INTO `n_nm` VALUES (1275,9552,'�������',9);
INSERT INTO `n_nm` VALUES (1276,7964,'��������',26);
INSERT INTO `n_nm` VALUES (1277,5910,'�������',16);
INSERT INTO `n_nm` VALUES (1278,5435,'�������',8);
INSERT INTO `n_nm` VALUES (1279,9803,'�������',28);
INSERT INTO `n_nm` VALUES (1280,5439,'��������',8);
INSERT INTO `n_nm` VALUES (1281,9498,'��������',9);
INSERT INTO `n_nm` VALUES (1282,8852,'�������',21);
INSERT INTO `n_nm` VALUES (1283,3835,'����������� ������',6);
INSERT INTO `n_nm` VALUES (1284,4749,'������',22);
INSERT INTO `n_nm` VALUES (1285,3830,'�������',6);
INSERT INTO `n_nm` VALUES (1286,2679,'�������',11);
INSERT INTO `n_nm` VALUES (1287,4968,'�������',22);
INSERT INTO `n_nm` VALUES (1288,2574,'����������',11);
INSERT INTO `n_nm` VALUES (1289,8370,'�����������',2);
INSERT INTO `n_nm` VALUES (1290,5099,'���������',5);
INSERT INTO `n_nm` VALUES (1291,6252,'������',25);
INSERT INTO `n_nm` VALUES (1292,8333,'��������',2);
INSERT INTO `n_nm` VALUES (1293,3914,'���������',6);
INSERT INTO `n_nm` VALUES (1294,8740,'���������',29);
INSERT INTO `n_nm` VALUES (1295,2589,'�������',11);
INSERT INTO `n_nm` VALUES (1296,3934,'��������',6);
INSERT INTO `n_nm` VALUES (1297,8347,'��������',2);
INSERT INTO `n_nm` VALUES (1298,9669,'��������',9);
INSERT INTO `n_nm` VALUES (1299,4198,'���� ���������',17);
INSERT INTO `n_nm` VALUES (1300,8938,'���������',21);
INSERT INTO `n_nm` VALUES (1301,4618,'�������',14);
INSERT INTO `n_nm` VALUES (1302,4714,'�������',22);
INSERT INTO `n_nm` VALUES (1303,7960,'�������',26);
INSERT INTO `n_nm` VALUES (1304,5841,'�������',16);
INSERT INTO `n_nm` VALUES (1305,6965,'������',10);
INSERT INTO `n_nm` VALUES (1306,6890,'������',10);
INSERT INTO `n_nm` VALUES (1307,2108,'���������',23);
INSERT INTO `n_nm` VALUES (1308,8464,'�������',2);
INSERT INTO `n_nm` VALUES (1309,9106,'���������',3);
INSERT INTO `n_nm` VALUES (1310,2062,'����������',23);
INSERT INTO `n_nm` VALUES (1311,3444,'�������',13);
INSERT INTO `n_nm` VALUES (1312,4815,'��������',22);
INSERT INTO `n_nm` VALUES (1313,6809,'������',10);
INSERT INTO `n_nm` VALUES (1314,5300,'���������',8);
INSERT INTO `n_nm` VALUES (1315,2213,'������� ������',23);
INSERT INTO `n_nm` VALUES (1316,7669,'����������',20);
INSERT INTO `n_nm` VALUES (1317,2255,'�����',23);
INSERT INTO `n_nm` VALUES (1318,2274,'��������',23);
INSERT INTO `n_nm` VALUES (1319,6590,'�������',27);
INSERT INTO `n_nm` VALUES (1320,4792,'��������',22);
INSERT INTO `n_nm` VALUES (1321,6943,'�������',10);
INSERT INTO `n_nm` VALUES (1322,6926,'�����',10);
INSERT INTO `n_nm` VALUES (1323,5960,'�������',16);
INSERT INTO `n_nm` VALUES (1324,5654,'��������',12);
INSERT INTO `n_nm` VALUES (1325,2567,'����������',11);
INSERT INTO `n_nm` VALUES (1326,6830,'���������',10);
INSERT INTO `n_nm` VALUES (1327,2223,'��������',23);
INSERT INTO `n_nm` VALUES (1328,9644,'�������',9);
INSERT INTO `n_nm` VALUES (1329,2145,'�������',23);
INSERT INTO `n_nm` VALUES (1330,6199,'�������',25);
INSERT INTO `n_nm` VALUES (1331,2226,'���������',23);
INSERT INTO `n_nm` VALUES (1332,9969,'�����',28);
INSERT INTO `n_nm` VALUES (1333,9479,'������',9);
INSERT INTO `n_nm` VALUES (1334,2045,'�����',23);
INSERT INTO `n_nm` VALUES (1335,5333,'������',8);
INSERT INTO `n_nm` VALUES (1336,8220,'�������',2);
INSERT INTO `n_nm` VALUES (1337,6366,'�������',27);
INSERT INTO `n_nm` VALUES (1338,8642,'���������',29);
INSERT INTO `n_nm` VALUES (1339,2426,'��������',15);
INSERT INTO `n_nm` VALUES (1340,4938,'��������',22);
INSERT INTO `n_nm` VALUES (1341,2789,'��������',1);
INSERT INTO `n_nm` VALUES (1342,6280,'��������',25);
INSERT INTO `n_nm` VALUES (1343,4125,'��������',17);
INSERT INTO `n_nm` VALUES (1344,2223,'���������',23);
INSERT INTO `n_nm` VALUES (1345,3785,'�������',6);
INSERT INTO `n_nm` VALUES (1346,2550,'�������',11);
INSERT INTO `n_nm` VALUES (1347,6760,'�������',10);
INSERT INTO `n_nm` VALUES (1348,5087,'��������',5);
INSERT INTO `n_nm` VALUES (1349,2381,'�����',15);
INSERT INTO `n_nm` VALUES (1350,2568,'�������',11);
INSERT INTO `n_nm` VALUES (1351,2960,'������',1);
INSERT INTO `n_nm` VALUES (1352,4991,'�������',22);
INSERT INTO `n_nm` VALUES (1353,5370,'�����',8);
INSERT INTO `n_nm` VALUES (1354,7844,'���������',26);
INSERT INTO `n_nm` VALUES (1355,6651,'�������',10);
INSERT INTO `n_nm` VALUES (1356,4811,'�������',22);
INSERT INTO `n_nm` VALUES (1357,2570,'�������',11);
INSERT INTO `n_nm` VALUES (1358,8249,'��������',2);
INSERT INTO `n_nm` VALUES (1359,2875,'�������',1);
INSERT INTO `n_nm` VALUES (1360,3932,'������',6);
INSERT INTO `n_nm` VALUES (1361,5083,'������',5);
INSERT INTO `n_nm` VALUES (1362,4944,'���������',22);
INSERT INTO `n_nm` VALUES (1363,7563,'��������',20);
INSERT INTO `n_nm` VALUES (1364,7758,'��������',26);
INSERT INTO `n_nm` VALUES (1365,2779,'��������',1);
INSERT INTO `n_nm` VALUES (1366,5365,'������',8);
INSERT INTO `n_nm` VALUES (1367,5084,'��������',5);
INSERT INTO `n_nm` VALUES (1368,2813,'��������',1);
INSERT INTO `n_nm` VALUES (1369,5437,'��������',8);
INSERT INTO `n_nm` VALUES (1370,6943,'���������',10);
INSERT INTO `n_nm` VALUES (1371,6261,'������ ���������',25);
INSERT INTO `n_nm` VALUES (1372,6707,'���������',10);
INSERT INTO `n_nm` VALUES (1373,7150,'��� ������',19);
INSERT INTO `n_nm` VALUES (1374,4949,'��� ������',22);
INSERT INTO `n_nm` VALUES (1375,2541,'�������',11);
INSERT INTO `n_nm` VALUES (1376,6193,'�������',25);
INSERT INTO `n_nm` VALUES (1377,5307,'����� ���',8);
INSERT INTO `n_nm` VALUES (1378,5030,'�������',5);
INSERT INTO `n_nm` VALUES (1379,2416,'������ ���',15);
INSERT INTO `n_nm` VALUES (1380,5084,'������ ���',5);
INSERT INTO `n_nm` VALUES (1381,8314,'������',2);
INSERT INTO `n_nm` VALUES (1382,5435,'���������',8);
INSERT INTO `n_nm` VALUES (1383,4946,'����������',22);
INSERT INTO `n_nm` VALUES (1384,5657,'�������',12);
INSERT INTO `n_nm` VALUES (1385,5958,'������',16);
INSERT INTO `n_nm` VALUES (1386,2748,'��������',1);
INSERT INTO `n_nm` VALUES (1387,2961,'������',1);
INSERT INTO `n_nm` VALUES (1388,9353,'�������',9);
INSERT INTO `n_nm` VALUES (1389,2803,'�������',1);
INSERT INTO `n_nm` VALUES (1390,4414,'���������',14);
INSERT INTO `n_nm` VALUES (1391,3065,'������',7);
INSERT INTO `n_nm` VALUES (1392,5995,'�������',16);
INSERT INTO `n_nm` VALUES (1393,6934,'����������',10);
INSERT INTO `n_nm` VALUES (1394,6933,'����������',10);
INSERT INTO `n_nm` VALUES (1395,8480,'�������',2);
INSERT INTO `n_nm` VALUES (1396,5555,'��������',12);
INSERT INTO `n_nm` VALUES (1397,5050,'����������',5);
INSERT INTO `n_nm` VALUES (1398,8474,'���������',2);
INSERT INTO `n_nm` VALUES (1399,4800,'�����',22);
INSERT INTO `n_nm` VALUES (1400,7972,'������',26);
INSERT INTO `n_nm` VALUES (1401,6833,'�������',10);
INSERT INTO `n_nm` VALUES (1402,9160,'�����',3);
INSERT INTO `n_nm` VALUES (1403,4106,'������',17);
INSERT INTO `n_nm` VALUES (1404,6861,'�����',10);
INSERT INTO `n_nm` VALUES (1405,5089,'������',5);
INSERT INTO `n_nm` VALUES (1406,5089,'�������',5);
INSERT INTO `n_nm` VALUES (1407,5935,'�����',16);
INSERT INTO `n_nm` VALUES (1408,2728,'�������',1);
INSERT INTO `n_nm` VALUES (1409,6896,'�������',10);
INSERT INTO `n_nm` VALUES (1410,3795,'�������',6);
INSERT INTO `n_nm` VALUES (1411,5084,'������ ������',5);
INSERT INTO `n_nm` VALUES (1412,2917,'�������',1);
INSERT INTO `n_nm` VALUES (1413,7427,'�������',18);
INSERT INTO `n_nm` VALUES (1414,2225,'�����',23);
INSERT INTO `n_nm` VALUES (1415,2652,'�����',11);
INSERT INTO `n_nm` VALUES (1416,5292,'���������',5);
INSERT INTO `n_nm` VALUES (1417,8726,'�������',29);
INSERT INTO `n_nm` VALUES (1418,9772,'�������',28);
INSERT INTO `n_nm` VALUES (1419,5377,'��������',8);
INSERT INTO `n_nm` VALUES (1420,6539,'�������� ������',27);
INSERT INTO `n_nm` VALUES (1421,5780,'��������',12);
INSERT INTO `n_nm` VALUES (1422,9111,'��������',3);
INSERT INTO `n_nm` VALUES (1423,8483,'��������',2);
INSERT INTO `n_nm` VALUES (1424,5041,'��������',5);
INSERT INTO `n_nm` VALUES (1425,2060,'����������',23);
INSERT INTO `n_nm` VALUES (1426,6908,'������',10);
INSERT INTO `n_nm` VALUES (1427,6850,'������',10);
INSERT INTO `n_nm` VALUES (1428,6824,'���������',10);
INSERT INTO `n_nm` VALUES (1429,2648,'�������',11);
INSERT INTO `n_nm` VALUES (1430,6872,'�������',10);
INSERT INTO `n_nm` VALUES (1431,2812,'���������',1);
INSERT INTO `n_nm` VALUES (1432,2085,'������������',23);
INSERT INTO `n_nm` VALUES (1433,8691,'������',29);
INSERT INTO `n_nm` VALUES (1434,2483,'���������',15);
INSERT INTO `n_nm` VALUES (1435,5645,'�������',12);
INSERT INTO `n_nm` VALUES (1436,5146,'���������',5);
INSERT INTO `n_nm` VALUES (1437,7137,'���������',19);
INSERT INTO `n_nm` VALUES (1438,5343,'���������',8);
INSERT INTO `n_nm` VALUES (1439,2085,'��������� ������',23);
INSERT INTO `n_nm` VALUES (1440,4241,'��������',17);
INSERT INTO `n_nm` VALUES (1441,2163,'�������',23);
INSERT INTO `n_nm` VALUES (1442,5380,'��������',8);
INSERT INTO `n_nm` VALUES (1443,6772,'����������',10);
INSERT INTO `n_nm` VALUES (1444,9811,'�����',28);
INSERT INTO `n_nm` VALUES (1445,3492,'���� �������',13);
INSERT INTO `n_nm` VALUES (1446,5345,'������',8);
INSERT INTO `n_nm` VALUES (1447,2457,'�����',15);
INSERT INTO `n_nm` VALUES (1448,2350,'��������',15);
INSERT INTO `n_nm` VALUES (1449,5727,'���������',12);
INSERT INTO `n_nm` VALUES (1450,4994,'��������',22);
INSERT INTO `n_nm` VALUES (1451,5363,'��������',8);
INSERT INTO `n_nm` VALUES (1452,6259,'����������',25);
INSERT INTO `n_nm` VALUES (1453,6400,'������������',27);
INSERT INTO `n_nm` VALUES (1454,5050,'����������',5);
INSERT INTO `n_nm` VALUES (1455,6518,'����������',27);
INSERT INTO `n_nm` VALUES (1456,3750,'������',6);
INSERT INTO `n_nm` VALUES (1457,4757,'������',22);
INSERT INTO `n_nm` VALUES (1458,5035,'�������',5);
INSERT INTO `n_nm` VALUES (1459,6192,'�������',25);
INSERT INTO `n_nm` VALUES (1460,5234,'�����',5);
INSERT INTO `n_nm` VALUES (1461,8159,'�������',2);
INSERT INTO `n_nm` VALUES (1462,6340,'������',27);
INSERT INTO `n_nm` VALUES (1463,4149,'����',17);
INSERT INTO `n_nm` VALUES (1464,4458,'�������',14);
INSERT INTO `n_nm` VALUES (1465,3783,'���������',6);
INSERT INTO `n_nm` VALUES (1466,3921,'�������',6);
INSERT INTO `n_nm` VALUES (1467,6268,'����',25);
INSERT INTO `n_nm` VALUES (1468,4927,'������',22);
INSERT INTO `n_nm` VALUES (1469,5886,'��������',16);
INSERT INTO `n_nm` VALUES (1470,5441,'���������',8);
INSERT INTO `n_nm` VALUES (1471,7625,'������',20);
INSERT INTO `n_nm` VALUES (1472,5059,'�����',5);
INSERT INTO `n_nm` VALUES (1473,6432,'��������',27);
INSERT INTO `n_nm` VALUES (1474,5392,'������',8);
INSERT INTO `n_nm` VALUES (1475,7997,'������ ������',26);
INSERT INTO `n_nm` VALUES (1476,9789,'������',28);
INSERT INTO `n_nm` VALUES (1477,2582,'�������� - ������',11);
INSERT INTO `n_nm` VALUES (1478,6947,'��������',10);
INSERT INTO `n_nm` VALUES (1479,8580,'����� ������',2);
INSERT INTO `n_nm` VALUES (1480,2279,'���������',23);
INSERT INTO `n_nm` VALUES (1481,4259,'��������',17);
INSERT INTO `n_nm` VALUES (1482,4917,'������� ������',22);
INSERT INTO `n_nm` VALUES (1483,9399,'�������',9);
INSERT INTO `n_nm` VALUES (1484,5095,'��������',5);
INSERT INTO `n_nm` VALUES (1485,5365,'��������',8);
INSERT INTO `n_nm` VALUES (1486,5762,'��������',12);
INSERT INTO `n_nm` VALUES (1487,5380,'���������',8);
INSERT INTO `n_nm` VALUES (1488,9782,'����� ���������',28);
INSERT INTO `n_nm` VALUES (1489,9128,'����� ���',3);
INSERT INTO `n_nm` VALUES (1490,3667,'����� ���',13);
INSERT INTO `n_nm` VALUES (1491,4292,'����� ���',17);
INSERT INTO `n_nm` VALUES (1492,2559,'����� ���',11);
INSERT INTO `n_nm` VALUES (1493,5149,'����� ���',5);
INSERT INTO `n_nm` VALUES (1494,2838,'����� ����',1);
INSERT INTO `n_nm` VALUES (1495,9402,'������',9);
INSERT INTO `n_nm` VALUES (1496,9216,'�������',3);
INSERT INTO `n_nm` VALUES (1497,2777,'���������',1);
INSERT INTO `n_nm` VALUES (1498,8477,'���������',2);
INSERT INTO `n_nm` VALUES (1499,6670,'���������',10);
INSERT INTO `n_nm` VALUES (1500,6857,'��������',10);
INSERT INTO `n_nm` VALUES (1501,6437,'������',27);
INSERT INTO `n_nm` VALUES (1502,9300,'������',9);
INSERT INTO `n_nm` VALUES (1503,8724,'������',29);
INSERT INTO `n_nm` VALUES (1504,4405,'����������',14);
INSERT INTO `n_nm` VALUES (1505,2662,'�������',11);
INSERT INTO `n_nm` VALUES (1506,9145,'���������',3);
INSERT INTO `n_nm` VALUES (1507,5658,'��������',12);
INSERT INTO `n_nm` VALUES (1508,3253,'���������',7);
INSERT INTO `n_nm` VALUES (1509,8552,'��������',2);
INSERT INTO `n_nm` VALUES (1510,5430,'����������',8);
INSERT INTO `n_nm` VALUES (1511,6861,'����������',10);
INSERT INTO `n_nm` VALUES (1512,9281,'�����������',3);
INSERT INTO `n_nm` VALUES (1513,6560,'����������',27);
INSERT INTO `n_nm` VALUES (1514,1247,'�����������',23);
INSERT INTO `n_nm` VALUES (1515,4256,'���������',17);
INSERT INTO `n_nm` VALUES (1516,2919,'���������',1);
INSERT INTO `n_nm` VALUES (1517,7990,'���������',26);
INSERT INTO `n_nm` VALUES (1518,7531,'���������',20);
INSERT INTO `n_nm` VALUES (1519,9282,'��������',3);
INSERT INTO `n_nm` VALUES (1520,7548,'�����������',20);
INSERT INTO `n_nm` VALUES (1521,3069,'�������',7);
INSERT INTO `n_nm` VALUES (1522,2799,'��������',1);
INSERT INTO `n_nm` VALUES (1523,2289,'��������',23);
INSERT INTO `n_nm` VALUES (1524,2115,'��������',23);
INSERT INTO `n_nm` VALUES (1525,2547,'���������',11);
INSERT INTO `n_nm` VALUES (1526,5035,'��������',5);
INSERT INTO `n_nm` VALUES (1527,6799,'��������',10);
INSERT INTO `n_nm` VALUES (1528,9961,'��������',28);
INSERT INTO `n_nm` VALUES (1529,5550,'��������',12);
INSERT INTO `n_nm` VALUES (1530,2734,'����������',1);
INSERT INTO `n_nm` VALUES (1531,3449,'������ ��������',13);
INSERT INTO `n_nm` VALUES (1532,2497,'��������',15);
INSERT INTO `n_nm` VALUES (1533,4985,'�����',22);
INSERT INTO `n_nm` VALUES (1534,2968,'�����',1);
INSERT INTO `n_nm` VALUES (1535,5050,'����� ������',5);
INSERT INTO `n_nm` VALUES (1536,2887,'������',1);
INSERT INTO `n_nm` VALUES (1537,2811,'������',1);
INSERT INTO `n_nm` VALUES (1538,7682,'�����',20);
INSERT INTO `n_nm` VALUES (1539,7858,'�����',26);
INSERT INTO `n_nm` VALUES (1540,4921,'�����',22);
INSERT INTO `n_nm` VALUES (1541,9358,'������',9);
INSERT INTO `n_nm` VALUES (1542,9947,'������',28);
INSERT INTO `n_nm` VALUES (1543,2637,'���������',11);
INSERT INTO `n_nm` VALUES (1544,9152,'������',3);
INSERT INTO `n_nm` VALUES (1545,6663,'������',10);
INSERT INTO `n_nm` VALUES (1546,2040,'����� ����',23);
INSERT INTO `n_nm` VALUES (1547,3545,'����� ���� �����',13);
INSERT INTO `n_nm` VALUES (1548,3143,'����� ��������',7);
INSERT INTO `n_nm` VALUES (1549,2034,'����� ��������',23);
INSERT INTO `n_nm` VALUES (1550,3485,'����� ��������',13);
INSERT INTO `n_nm` VALUES (1551,2458,'����� ������',15);
INSERT INTO `n_nm` VALUES (1552,2843,'����� ����������',1);
INSERT INTO `n_nm` VALUES (1553,2536,'����� �������',11);
INSERT INTO `n_nm` VALUES (1554,2420,'����� ������',15);
INSERT INTO `n_nm` VALUES (1555,4655,'����� ������',14);
INSERT INTO `n_nm` VALUES (1556,7968,'����� �������',26);
INSERT INTO `n_nm` VALUES (1557,7867,'����� �����',26);
INSERT INTO `n_nm` VALUES (1558,2658,'����� �������',11);
INSERT INTO `n_nm` VALUES (1559,3153,'����� �������',7);
INSERT INTO `n_nm` VALUES (1560,6686,'����� �������',10);
INSERT INTO `n_nm` VALUES (1561,2888,'����� �������',1);
INSERT INTO `n_nm` VALUES (1562,6953,'����� ����',10);
INSERT INTO `n_nm` VALUES (1563,5199,'����� �������',5);
INSERT INTO `n_nm` VALUES (1564,2107,'����� ������',23);
INSERT INTO `n_nm` VALUES (1565,5659,'����� ���������',12);
INSERT INTO `n_nm` VALUES (1566,4200,'����� ������',17);
INSERT INTO `n_nm` VALUES (1567,2490,'����� �����',15);
INSERT INTO `n_nm` VALUES (1568,5855,'����� ����������',16);
INSERT INTO `n_nm` VALUES (1569,2213,'����� �����',23);
INSERT INTO `n_nm` VALUES (1570,5130,'����� ���������',5);
INSERT INTO `n_nm` VALUES (1571,2892,'����� �������',1);
INSERT INTO `n_nm` VALUES (1572,3452,'����� �����',13);
INSERT INTO `n_nm` VALUES (1573,2397,'����� �������',15);
INSERT INTO `n_nm` VALUES (1574,7123,'����� �������',19);
INSERT INTO `n_nm` VALUES (1575,7931,'����� �������',26);
INSERT INTO `n_nm` VALUES (1576,1855,'����� ������',23);
INSERT INTO `n_nm` VALUES (1577,3782,'����� ������',6);
INSERT INTO `n_nm` VALUES (1578,3344,'����� �����',7);
INSERT INTO `n_nm` VALUES (1579,5969,'����� ���',16);
INSERT INTO `n_nm` VALUES (1580,5380,'����� �������',8);
INSERT INTO `n_nm` VALUES (1581,6483,'����� ��������',27);
INSERT INTO `n_nm` VALUES (1582,5036,'����� ���������',5);
INSERT INTO `n_nm` VALUES (1583,5380,'����� ��������',8);
INSERT INTO `n_nm` VALUES (1584,5870,'����� ������',16);
INSERT INTO `n_nm` VALUES (1585,2558,'����� �������',11);
INSERT INTO `n_nm` VALUES (1586,3958,'����� ���',6);
INSERT INTO `n_nm` VALUES (1587,5867,'����� �������',16);
INSERT INTO `n_nm` VALUES (1588,5360,'����� �������',8);
INSERT INTO `n_nm` VALUES (1589,5084,'����� �����',5);
INSERT INTO `n_nm` VALUES (1590,2028,'����� ����',23);
INSERT INTO `n_nm` VALUES (1591,1165,'����� �������',23);
INSERT INTO `n_nm` VALUES (1592,5360,'����� ��������',8);
INSERT INTO `n_nm` VALUES (1593,2413,'����� �������',15);
INSERT INTO `n_nm` VALUES (1594,2367,'����� �������',15);
INSERT INTO `n_nm` VALUES (1595,5097,'����� ��������',5);
INSERT INTO `n_nm` VALUES (1596,5350,'����� ��������',8);
INSERT INTO `n_nm` VALUES (1597,3642,'����� �����',13);
INSERT INTO `n_nm` VALUES (1598,9120,'����� ������',3);
INSERT INTO `n_nm` VALUES (1599,6954,'����� �����',10);
INSERT INTO `n_nm` VALUES (1600,7053,'����� ��������',19);
INSERT INTO `n_nm` VALUES (1601,6422,'����� ������',27);
INSERT INTO `n_nm` VALUES (1602,3437,'����� ���������',13);
INSERT INTO `n_nm` VALUES (1603,6393,'����� ������',27);
INSERT INTO `n_nm` VALUES (1604,6389,'����� ���������',27);
INSERT INTO `n_nm` VALUES (1605,4446,'����� �������',14);
INSERT INTO `n_nm` VALUES (1606,6358,'����� ���������',27);
INSERT INTO `n_nm` VALUES (1607,2798,'����� ��������',1);
INSERT INTO `n_nm` VALUES (1608,2944,'����� �������',1);
INSERT INTO `n_nm` VALUES (1609,6183,'����� ��������',25);
INSERT INTO `n_nm` VALUES (1610,2137,'����� �������',23);
INSERT INTO `n_nm` VALUES (1611,2556,'����� ������',11);
INSERT INTO `n_nm` VALUES (1612,7926,'����� ��������',26);
INSERT INTO `n_nm` VALUES (1613,6870,'����� ��������',10);
INSERT INTO `n_nm` VALUES (1614,4535,'����� ������',14);
INSERT INTO `n_nm` VALUES (1615,3605,'����� ������',13);
INSERT INTO `n_nm` VALUES (1616,6586,'����� ������',27);
INSERT INTO `n_nm` VALUES (1617,7938,'����� �������',26);
INSERT INTO `n_nm` VALUES (1618,6226,'����� ���� ����',25);
INSERT INTO `n_nm` VALUES (1619,2212,'����� ���� ����',23);
INSERT INTO `n_nm` VALUES (1620,3538,'����� �������',13);
INSERT INTO `n_nm` VALUES (1621,2757,'����� �������',1);
INSERT INTO `n_nm` VALUES (1622,6382,'����� ����',27);
INSERT INTO `n_nm` VALUES (1623,6779,'����� �������',10);
INSERT INTO `n_nm` VALUES (1624,7624,'����� ������',20);
INSERT INTO `n_nm` VALUES (1625,6161,'����� �������',25);
INSERT INTO `n_nm` VALUES (1626,2567,'����� ����',11);
INSERT INTO `n_nm` VALUES (1627,2869,'����� ��������',1);
INSERT INTO `n_nm` VALUES (1628,6455,'����� �������',27);
INSERT INTO `n_nm` VALUES (1629,2560,'����� ����',11);
INSERT INTO `n_nm` VALUES (1630,3639,'����� ��������',13);
INSERT INTO `n_nm` VALUES (1631,6381,'����� ���������',27);
INSERT INTO `n_nm` VALUES (1632,5090,'����� ��������',5);
INSERT INTO `n_nm` VALUES (1633,8342,'����� ��������',2);
INSERT INTO `n_nm` VALUES (1634,6573,'����������',27);
INSERT INTO `n_nm` VALUES (1635,4254,'���������',17);
INSERT INTO `n_nm` VALUES (1636,6887,'������',10);
INSERT INTO `n_nm` VALUES (1637,4357,'������',17);
INSERT INTO `n_nm` VALUES (1638,3659,'��������',13);
INSERT INTO `n_nm` VALUES (1639,5342,'������',8);
INSERT INTO `n_nm` VALUES (1640,5360,'�������',8);
INSERT INTO `n_nm` VALUES (1641,5081,'��������',5);
INSERT INTO `n_nm` VALUES (1642,9354,'�������',9);
INSERT INTO `n_nm` VALUES (1643,5351,'��������',8);
INSERT INTO `n_nm` VALUES (1644,4641,'�������',14);
INSERT INTO `n_nm` VALUES (1645,6472,'���������',27);
INSERT INTO `n_nm` VALUES (1646,4831,'������',22);
INSERT INTO `n_nm` VALUES (1647,2012,'������',23);
INSERT INTO `n_nm` VALUES (1648,5380,'����',8);
INSERT INTO `n_nm` VALUES (1649,6577,'��������',27);
INSERT INTO `n_nm` VALUES (1650,5524,'�������',12);
INSERT INTO `n_nm` VALUES (1651,3534,'���������',13);
INSERT INTO `n_nm` VALUES (1652,7773,'����������',26);
INSERT INTO `n_nm` VALUES (1653,8114,'���������',2);
INSERT INTO `n_nm` VALUES (1654,5137,'���������',5);
INSERT INTO `n_nm` VALUES (1655,9349,'���������',9);
INSERT INTO `n_nm` VALUES (1656,6714,'���������',10);
INSERT INTO `n_nm` VALUES (1657,5332,'����������',8);
INSERT INTO `n_nm` VALUES (1658,5094,'����������',5);
INSERT INTO `n_nm` VALUES (1659,5081,'�������������',5);
INSERT INTO `n_nm` VALUES (1660,8489,'��������',2);
INSERT INTO `n_nm` VALUES (1661,5335,'������������',8);
INSERT INTO `n_nm` VALUES (1662,5952,'������ �������',16);
INSERT INTO `n_nm` VALUES (1663,5332,'���������',8);
INSERT INTO `n_nm` VALUES (1664,5145,'���������',5);
INSERT INTO `n_nm` VALUES (1665,5094,'��������',5);
INSERT INTO `n_nm` VALUES (1666,4642,'���������',14);
INSERT INTO `n_nm` VALUES (1667,2351,'���������',15);
INSERT INTO `n_nm` VALUES (1668,5097,'���������',5);
INSERT INTO `n_nm` VALUES (1669,5360,'���������',8);
INSERT INTO `n_nm` VALUES (1670,2237,'�����������',23);
INSERT INTO `n_nm` VALUES (1671,2564,'�����������',11);
INSERT INTO `n_nm` VALUES (1672,8437,'�������',2);
INSERT INTO `n_nm` VALUES (1673,2625,'��������',11);
INSERT INTO `n_nm` VALUES (1674,8888,'�����������',21);
INSERT INTO `n_nm` VALUES (1675,9860,'��������',28);
INSERT INTO `n_nm` VALUES (1676,2208,'�������',23);
INSERT INTO `n_nm` VALUES (1677,5751,'��������',12);
INSERT INTO `n_nm` VALUES (1678,4293,'����������',17);
INSERT INTO `n_nm` VALUES (1679,2554,'�����������',11);
INSERT INTO `n_nm` VALUES (1680,2210,'��������',23);
INSERT INTO `n_nm` VALUES (1681,5343,'���������',8);
INSERT INTO `n_nm` VALUES (1682,4184,'��������',17);
INSERT INTO `n_nm` VALUES (1683,2428,'�����������',15);
INSERT INTO `n_nm` VALUES (1684,5285,'�����������',5);
INSERT INTO `n_nm` VALUES (1685,7419,'��������',18);
INSERT INTO `n_nm` VALUES (1686,4406,'������',14);
INSERT INTO `n_nm` VALUES (1687,2916,'���������',1);
INSERT INTO `n_nm` VALUES (1688,2218,'����������',23);
INSERT INTO `n_nm` VALUES (1689,2875,'������',1);
INSERT INTO `n_nm` VALUES (1690,2008,'�����������',23);
INSERT INTO `n_nm` VALUES (1691,8634,'�������',29);
INSERT INTO `n_nm` VALUES (1692,3929,'��������',6);
INSERT INTO `n_nm` VALUES (1693,8324,'�����',2);
INSERT INTO `n_nm` VALUES (1694,2829,'�������',1);
INSERT INTO `n_nm` VALUES (1695,7782,'������',18);
INSERT INTO `n_nm` VALUES (1696,8651,'�����',29);
INSERT INTO `n_nm` VALUES (1697,4164,'��������',17);
INSERT INTO `n_nm` VALUES (1698,6860,'��������',10);
INSERT INTO `n_nm` VALUES (1699,2859,'��������',1);
INSERT INTO `n_nm` VALUES (1700,5363,'����������',8);
INSERT INTO `n_nm` VALUES (1701,8319,'�������',2);
INSERT INTO `n_nm` VALUES (1702,3267,'������',7);
INSERT INTO `n_nm` VALUES (1703,5648,'�������� ������',12);
INSERT INTO `n_nm` VALUES (1704,2213,'�������',23);
INSERT INTO `n_nm` VALUES (1705,2430,'����',15);
INSERT INTO `n_nm` VALUES (1706,2739,'��������',1);
INSERT INTO `n_nm` VALUES (1707,5562,'������',12);
INSERT INTO `n_nm` VALUES (1708,3920,'��������',6);
INSERT INTO `n_nm` VALUES (1709,2895,'���������',1);
INSERT INTO `n_nm` VALUES (1710,2236,'�������',23);
INSERT INTO `n_nm` VALUES (1711,2876,'�������',1);
INSERT INTO `n_nm` VALUES (1712,5095,'������',5);
INSERT INTO `n_nm` VALUES (1713,9788,'������',28);
INSERT INTO `n_nm` VALUES (1714,7834,'�������',26);
INSERT INTO `n_nm` VALUES (1715,6477,'��������',27);
INSERT INTO `n_nm` VALUES (1716,9641,'������',9);
INSERT INTO `n_nm` VALUES (1717,8563,'������',2);
INSERT INTO `n_nm` VALUES (1718,2410,'������',15);
INSERT INTO `n_nm` VALUES (1719,3730,'������',6);
INSERT INTO `n_nm` VALUES (1720,2281,'�������',23);
INSERT INTO `n_nm` VALUES (1721,6885,'��������',10);
INSERT INTO `n_nm` VALUES (1722,9815,'�������',28);
INSERT INTO `n_nm` VALUES (1723,2596,'��������',11);
INSERT INTO `n_nm` VALUES (1724,6820,'������',10);
INSERT INTO `n_nm` VALUES (1725,2238,'������',23);
INSERT INTO `n_nm` VALUES (1726,9173,'�������',3);
INSERT INTO `n_nm` VALUES (1727,4941,'������',22);
INSERT INTO `n_nm` VALUES (1728,8524,'���������',2);
INSERT INTO `n_nm` VALUES (1729,6865,'������� �����',10);
INSERT INTO `n_nm` VALUES (1730,7122,'��������',19);
INSERT INTO `n_nm` VALUES (1731,9392,'��������',9);
INSERT INTO `n_nm` VALUES (1732,7268,'��������',18);
INSERT INTO `n_nm` VALUES (1733,4856,'��������',22);
INSERT INTO `n_nm` VALUES (1734,5370,'�������',8);
INSERT INTO `n_nm` VALUES (1735,4241,'�������',17);
INSERT INTO `n_nm` VALUES (1736,6493,'�������',27);
INSERT INTO `n_nm` VALUES (1737,8652,'�������',29);
INSERT INTO `n_nm` VALUES (1738,5618,'�������',12);
INSERT INTO `n_nm` VALUES (1739,5462,'������',8);
INSERT INTO `n_nm` VALUES (1740,4174,'��������',17);
INSERT INTO `n_nm` VALUES (1741,6562,'��������',27);
INSERT INTO `n_nm` VALUES (1742,5094,'�������',5);
INSERT INTO `n_nm` VALUES (1743,7650,'������',20);
INSERT INTO `n_nm` VALUES (1744,5345,'�������',8);
INSERT INTO `n_nm` VALUES (1745,7623,'�������',20);
INSERT INTO `n_nm` VALUES (1746,5041,'�������',5);
INSERT INTO `n_nm` VALUES (1747,3740,'�������',6);
INSERT INTO `n_nm` VALUES (1748,6145,'�������',25);
INSERT INTO `n_nm` VALUES (1749,4723,'������',22);
INSERT INTO `n_nm` VALUES (1750,4990,'����',22);
INSERT INTO `n_nm` VALUES (1751,2600,'�������',11);
INSERT INTO `n_nm` VALUES (1752,9670,'����������',9);
INSERT INTO `n_nm` VALUES (1753,5089,'�������',5);
INSERT INTO `n_nm` VALUES (1754,5380,'�����',8);
INSERT INTO `n_nm` VALUES (1755,7435,'�������',18);
INSERT INTO `n_nm` VALUES (1756,2083,'�������',23);
INSERT INTO `n_nm` VALUES (1757,5455,'������',8);
INSERT INTO `n_nm` VALUES (1758,5455,'�������� ������',8);
INSERT INTO `n_nm` VALUES (1759,6846,'���������',10);
INSERT INTO `n_nm` VALUES (1760,2398,'�������',15);
INSERT INTO `n_nm` VALUES (1761,6714,'�����',10);
INSERT INTO `n_nm` VALUES (1762,5787,'�����',12);
INSERT INTO `n_nm` VALUES (1763,4349,'������',17);
INSERT INTO `n_nm` VALUES (1764,8213,'������',2);
INSERT INTO `n_nm` VALUES (1765,2940,'�������',1);
INSERT INTO `n_nm` VALUES (1766,8996,'������',21);
INSERT INTO `n_nm` VALUES (1767,4969,'������',22);
INSERT INTO `n_nm` VALUES (1768,3674,'������ ������',13);
INSERT INTO `n_nm` VALUES (1769,5973,'�������',16);
INSERT INTO `n_nm` VALUES (1770,6554,'�������',27);
INSERT INTO `n_nm` VALUES (1771,9551,'�������',9);
INSERT INTO `n_nm` VALUES (1772,8449,'��������',2);
INSERT INTO `n_nm` VALUES (1773,8736,'������',29);
INSERT INTO `n_nm` VALUES (1774,6178,'������',25);
INSERT INTO `n_nm` VALUES (1775,9638,'�������',9);
INSERT INTO `n_nm` VALUES (1776,2723,'�������',1);
INSERT INTO `n_nm` VALUES (1777,5546,'�������',12);
INSERT INTO `n_nm` VALUES (1778,5765,'���������',12);
INSERT INTO `n_nm` VALUES (1779,9126,'���������',3);
INSERT INTO `n_nm` VALUES (1780,4472,'���������',14);
INSERT INTO `n_nm` VALUES (1781,7997,'���������',26);
INSERT INTO `n_nm` VALUES (1782,3916,'��������',6);
INSERT INTO `n_nm` VALUES (1783,6642,'�������',10);
INSERT INTO `n_nm` VALUES (1784,6917,'���������',10);
INSERT INTO `n_nm` VALUES (1785,6747,'����������',10);
INSERT INTO `n_nm` VALUES (1786,5668,'������ ���',12);
INSERT INTO `n_nm` VALUES (1787,4280,'������ �����',17);
INSERT INTO `n_nm` VALUES (1788,6060,'�������',25);
INSERT INTO `n_nm` VALUES (1789,5745,'����� ������',12);
INSERT INTO `n_nm` VALUES (1790,2492,'����� ����',15);
INSERT INTO `n_nm` VALUES (1791,7742,'������',26);
INSERT INTO `n_nm` VALUES (1792,3475,'����� ���',13);
INSERT INTO `n_nm` VALUES (1793,5088,'����� ������',5);
INSERT INTO `n_nm` VALUES (1794,3756,'����� ����',6);
INSERT INTO `n_nm` VALUES (1795,4195,'����� ����',17);
INSERT INTO `n_nm` VALUES (1796,3638,'����������',13);
INSERT INTO `n_nm` VALUES (1797,9250,'��������',3);
INSERT INTO `n_nm` VALUES (1798,6637,'�������',10);
INSERT INTO `n_nm` VALUES (1799,5350,'�������',8);
INSERT INTO `n_nm` VALUES (1800,6217,'�������',25);
INSERT INTO `n_nm` VALUES (1801,6188,'��������',25);
INSERT INTO `n_nm` VALUES (1802,3747,'���������',6);
INSERT INTO `n_nm` VALUES (1803,5070,'��������',5);
INSERT INTO `n_nm` VALUES (1804,3129,'��������',7);
INSERT INTO `n_nm` VALUES (1805,5363,'���������',8);
INSERT INTO `n_nm` VALUES (1806,5223,'������',5);
INSERT INTO `n_nm` VALUES (1807,8561,'��������',2);
INSERT INTO `n_nm` VALUES (1808,8330,'������',2);
INSERT INTO `n_nm` VALUES (1809,4529,'������',14);
INSERT INTO `n_nm` VALUES (1810,9108,'������',3);
INSERT INTO `n_nm` VALUES (1811,6876,'������',10);
INSERT INTO `n_nm` VALUES (1812,8571,'����',2);
INSERT INTO `n_nm` VALUES (1813,8918,'������',21);
INSERT INTO `n_nm` VALUES (1814,6705,'��������',10);
INSERT INTO `n_nm` VALUES (1815,6764,'�������',10);
INSERT INTO `n_nm` VALUES (1816,2651,'������',11);
INSERT INTO `n_nm` VALUES (1817,5454,'�����',8);
INSERT INTO `n_nm` VALUES (1818,7270,'�������',18);
INSERT INTO `n_nm` VALUES (1819,5965,'���������',16);
INSERT INTO `n_nm` VALUES (1820,8363,'����������',2);
INSERT INTO `n_nm` VALUES (1821,6931,'�����',10);
INSERT INTO `n_nm` VALUES (1822,2429,'��������',15);
INSERT INTO `n_nm` VALUES (1823,9792,'����������',28);
INSERT INTO `n_nm` VALUES (1824,6173,'������',25);
INSERT INTO `n_nm` VALUES (1825,2464,'���������',15);
INSERT INTO `n_nm` VALUES (1826,2846,'������',1);
INSERT INTO `n_nm` VALUES (1827,9687,'������',9);
INSERT INTO `n_nm` VALUES (1828,8919,'�����',21);
INSERT INTO `n_nm` VALUES (1829,9168,'�������',3);
INSERT INTO `n_nm` VALUES (1830,4288,'�������',17);
INSERT INTO `n_nm` VALUES (1831,5309,'�������',8);
INSERT INTO `n_nm` VALUES (1832,7274,'������',18);
INSERT INTO `n_nm` VALUES (1833,8490,'������ ��������',2);
INSERT INTO `n_nm` VALUES (1834,7171,'������ �����',19);
INSERT INTO `n_nm` VALUES (1835,5070,'�����',5);
INSERT INTO `n_nm` VALUES (1836,6399,'�����',27);
INSERT INTO `n_nm` VALUES (1837,6047,'�������',25);
INSERT INTO `n_nm` VALUES (1838,4990,'������',22);
INSERT INTO `n_nm` VALUES (1839,2275,'������ ���',23);
INSERT INTO `n_nm` VALUES (1840,2726,'�������',1);
INSERT INTO `n_nm` VALUES (1841,8943,'�������',21);
INSERT INTO `n_nm` VALUES (1842,7837,'�������',26);
INSERT INTO `n_nm` VALUES (1843,4731,'�������',22);
INSERT INTO `n_nm` VALUES (1844,5388,'��������',8);
INSERT INTO `n_nm` VALUES (1845,2782,'��������',1);
INSERT INTO `n_nm` VALUES (1846,2125,'��������',23);
INSERT INTO `n_nm` VALUES (1847,2100,'���� �����',23);
INSERT INTO `n_nm` VALUES (1848,3160,'��������',7);
INSERT INTO `n_nm` VALUES (1849,2159,'�������',23);
INSERT INTO `n_nm` VALUES (1850,2434,'�������',15);
INSERT INTO `n_nm` VALUES (1851,3471,'�������',13);
INSERT INTO `n_nm` VALUES (1852,2489,'�������',15);
INSERT INTO `n_nm` VALUES (1853,4970,'�������',22);
INSERT INTO `n_nm` VALUES (1854,8700,'������',29);
INSERT INTO `n_nm` VALUES (1855,6174,'������',25);
INSERT INTO `n_nm` VALUES (1856,6064,'������',25);
INSERT INTO `n_nm` VALUES (1857,4538,'������',14);
INSERT INTO `n_nm` VALUES (1858,4783,'������',22);
INSERT INTO `n_nm` VALUES (1859,5065,'����',5);
INSERT INTO `n_nm` VALUES (1860,8252,'�����',2);
INSERT INTO `n_nm` VALUES (1861,5469,'���� ���',8);
INSERT INTO `n_nm` VALUES (1862,9389,'�����',9);
INSERT INTO `n_nm` VALUES (1863,9919,'�����',28);
INSERT INTO `n_nm` VALUES (1864,6142,'�����',25);
INSERT INTO `n_nm` VALUES (1865,3261,'�����',7);
INSERT INTO `n_nm` VALUES (1866,6735,'�����',10);
INSERT INTO `n_nm` VALUES (1867,5360,'�������',8);
INSERT INTO `n_nm` VALUES (1868,6788,'�������',10);
INSERT INTO `n_nm` VALUES (1869,3431,'�����',13);
INSERT INTO `n_nm` VALUES (1870,2585,'������',11);
INSERT INTO `n_nm` VALUES (1871,4997,'���� ����',22);
INSERT INTO `n_nm` VALUES (1872,6865,'�������',10);
INSERT INTO `n_nm` VALUES (1873,2486,'����',15);
INSERT INTO `n_nm` VALUES (1874,8459,'����',2);
INSERT INTO `n_nm` VALUES (1875,9289,'�������',3);
INSERT INTO `n_nm` VALUES (1876,2180,'��������',23);
INSERT INTO `n_nm` VALUES (1877,9422,'�������� ��������',9);
INSERT INTO `n_nm` VALUES (1878,6476,'�����',27);
INSERT INTO `n_nm` VALUES (1879,2442,'�������',15);
INSERT INTO `n_nm` VALUES (1880,2545,'��������',11);
INSERT INTO `n_nm` VALUES (1881,9492,'��������',9);
INSERT INTO `n_nm` VALUES (1882,3738,'�������',6);
INSERT INTO `n_nm` VALUES (1883,2423,'�����',15);
INSERT INTO `n_nm` VALUES (1884,6594,'��������',27);
INSERT INTO `n_nm` VALUES (1885,7948,'��������',26);
INSERT INTO `n_nm` VALUES (1886,5164,'���������',5);
INSERT INTO `n_nm` VALUES (1887,6595,'��������',27);
INSERT INTO `n_nm` VALUES (1888,3461,'�������',13);
INSERT INTO `n_nm` VALUES (1889,8488,'��������',2);
INSERT INTO `n_nm` VALUES (1890,6711,'��������',10);
INSERT INTO `n_nm` VALUES (1891,1475,'���������',23);
INSERT INTO `n_nm` VALUES (1892,2732,'���������',1);
INSERT INTO `n_nm` VALUES (1893,2267,'�����',23);
INSERT INTO `n_nm` VALUES (1894,9826,'�����',28);
INSERT INTO `n_nm` VALUES (1895,6855,'��������',10);
INSERT INTO `n_nm` VALUES (1896,8860,'���� �������',21);
INSERT INTO `n_nm` VALUES (1897,1837,'������',23);
INSERT INTO `n_nm` VALUES (1898,7455,'����������',18);
INSERT INTO `n_nm` VALUES (1899,4136,'�������',17);
INSERT INTO `n_nm` VALUES (1900,8106,'��������',2);
INSERT INTO `n_nm` VALUES (1901,6693,'�����',10);
INSERT INTO `n_nm` VALUES (1902,2567,'��������',11);
INSERT INTO `n_nm` VALUES (1903,5621,'��������',12);
INSERT INTO `n_nm` VALUES (1904,8988,'�������',21);
INSERT INTO `n_nm` VALUES (1905,6190,'��������',25);
INSERT INTO `n_nm` VALUES (1906,5964,'������',16);
INSERT INTO `n_nm` VALUES (1907,5344,'�����',8);
INSERT INTO `n_nm` VALUES (1908,2065,'�������',23);
INSERT INTO `n_nm` VALUES (1909,9794,'�������',28);
INSERT INTO `n_nm` VALUES (1910,5622,'����� ���',12);
INSERT INTO `n_nm` VALUES (1911,2956,'������',1);
INSERT INTO `n_nm` VALUES (1912,2573,'�������',11);
INSERT INTO `n_nm` VALUES (1913,9929,'������',28);
INSERT INTO `n_nm` VALUES (1914,6654,'���������',10);
INSERT INTO `n_nm` VALUES (1915,6636,'��������',10);
INSERT INTO `n_nm` VALUES (1916,9555,'�����',9);
INSERT INTO `n_nm` VALUES (1917,1211,'�����',23);
INSERT INTO `n_nm` VALUES (1918,9424,'�������',9);
INSERT INTO `n_nm` VALUES (1919,4172,'�������',17);
INSERT INTO `n_nm` VALUES (1920,9278,'�������',3);
INSERT INTO `n_nm` VALUES (1921,6708,'�������',10);
INSERT INTO `n_nm` VALUES (1922,8475,'��������',2);
INSERT INTO `n_nm` VALUES (1923,2432,'������',15);
INSERT INTO `n_nm` VALUES (1924,4827,'�������',22);
INSERT INTO `n_nm` VALUES (1925,8733,'�������',29);
INSERT INTO `n_nm` VALUES (1926,4585,'��������',14);
INSERT INTO `n_nm` VALUES (1927,8894,'���� ����',21);
INSERT INTO `n_nm` VALUES (1928,4298,'���� �����',17);
INSERT INTO `n_nm` VALUES (1929,5335,'������',8);
INSERT INTO `n_nm` VALUES (1930,6368,'����� ����',27);
INSERT INTO `n_nm` VALUES (1931,6846,'����� ���',10);
INSERT INTO `n_nm` VALUES (1932,6842,'�������',10);
INSERT INTO `n_nm` VALUES (1933,6195,'��������',25);
INSERT INTO `n_nm` VALUES (1934,6789,'�������',10);
INSERT INTO `n_nm` VALUES (1935,2469,'�����',15);
INSERT INTO `n_nm` VALUES (1936,8367,'���������',2);
INSERT INTO `n_nm` VALUES (1937,4872,'�������',22);
INSERT INTO `n_nm` VALUES (1938,2374,'������',15);
INSERT INTO `n_nm` VALUES (1939,7330,'�����',18);
INSERT INTO `n_nm` VALUES (1940,7881,'�������',26);
INSERT INTO `n_nm` VALUES (1941,2288,'���������',23);
INSERT INTO `n_nm` VALUES (1942,8633,'�����',29);
INSERT INTO `n_nm` VALUES (1943,6063,'������',25);
INSERT INTO `n_nm` VALUES (1944,9966,'��������',28);
INSERT INTO `n_nm` VALUES (1945,6865,'��������',10);
INSERT INTO `n_nm` VALUES (1946,6817,'��������',10);
INSERT INTO `n_nm` VALUES (1947,9413,'�������',9);
INSERT INTO `n_nm` VALUES (1948,8939,'�������',21);
INSERT INTO `n_nm` VALUES (1949,8321,'�������',2);
INSERT INTO `n_nm` VALUES (1950,4950,'���������',22);
INSERT INTO `n_nm` VALUES (1951,5974,'���������',16);
INSERT INTO `n_nm` VALUES (1952,7317,'�������',18);
INSERT INTO `n_nm` VALUES (1953,4710,'�������',22);
INSERT INTO `n_nm` VALUES (1954,8564,'��������',2);
INSERT INTO `n_nm` VALUES (1955,8557,'������',2);
INSERT INTO `n_nm` VALUES (1956,8843,'�������',21);
INSERT INTO `n_nm` VALUES (1957,6749,'�������',10);
INSERT INTO `n_nm` VALUES (1958,9918,'������� �����',28);
INSERT INTO `n_nm` VALUES (1959,2085,'��������',23);
INSERT INTO `n_nm` VALUES (1960,3644,'������',13);
INSERT INTO `n_nm` VALUES (1961,3530,'���������',13);
INSERT INTO `n_nm` VALUES (1962,2875,'������',1);
INSERT INTO `n_nm` VALUES (1963,2283,'������',23);
INSERT INTO `n_nm` VALUES (1964,7832,'�������',26);
INSERT INTO `n_nm` VALUES (1965,7689,'������',20);
INSERT INTO `n_nm` VALUES (1966,7552,'������',20);
INSERT INTO `n_nm` VALUES (1967,2284,'������',23);
INSERT INTO `n_nm` VALUES (1968,9141,'�������',3);
INSERT INTO `n_nm` VALUES (1969,7610,'��������',20);
INSERT INTO `n_nm` VALUES (1970,7842,'������ ��������',26);
INSERT INTO `n_nm` VALUES (1971,9671,'������ ��������',9);
INSERT INTO `n_nm` VALUES (1972,5397,'���',8);
INSERT INTO `n_nm` VALUES (1973,9791,'������',28);
INSERT INTO `n_nm` VALUES (1974,7878,'������',26);
INSERT INTO `n_nm` VALUES (1975,8572,'������',2);
INSERT INTO `n_nm` VALUES (1976,6820,'�������',10);
INSERT INTO `n_nm` VALUES (1977,6653,'����������',10);
INSERT INTO `n_nm` VALUES (1978,6658,'�������',10);
INSERT INTO `n_nm` VALUES (1979,8360,'�������',2);
INSERT INTO `n_nm` VALUES (1980,9103,'��������',3);
INSERT INTO `n_nm` VALUES (1981,7945,'��������',26);
INSERT INTO `n_nm` VALUES (1982,7644,'��������',20);
INSERT INTO `n_nm` VALUES (1983,3170,'�������',7);
INSERT INTO `n_nm` VALUES (1984,6668,'�������',10);
INSERT INTO `n_nm` VALUES (1985,6920,'��������',10);
INSERT INTO `n_nm` VALUES (1986,7333,'��������',18);
INSERT INTO `n_nm` VALUES (1987,9142,'������',3);
INSERT INTO `n_nm` VALUES (1988,6732,'�������',10);
INSERT INTO `n_nm` VALUES (1989,4415,'���������',14);
INSERT INTO `n_nm` VALUES (1990,6744,'������',10);
INSERT INTO `n_nm` VALUES (1991,5897,'�������',16);
INSERT INTO `n_nm` VALUES (1992,3042,'���������',7);
INSERT INTO `n_nm` VALUES (1993,2592,'�������',11);
INSERT INTO `n_nm` VALUES (1994,9137,'�������',3);
INSERT INTO `n_nm` VALUES (1995,6435,'�������',27);
INSERT INTO `n_nm` VALUES (1996,4241,'�������',17);
INSERT INTO `n_nm` VALUES (1997,7437,'�������',18);
INSERT INTO `n_nm` VALUES (1998,7769,'�������',26);
INSERT INTO `n_nm` VALUES (1999,5344,'����������',8);
INSERT INTO `n_nm` VALUES (2000,6861,'��������',10);
INSERT INTO `n_nm` VALUES (2001,7641,'�����',20);
INSERT INTO `n_nm` VALUES (2002,7954,'������ ������',26);
INSERT INTO `n_nm` VALUES (2003,2745,'��������',1);
INSERT INTO `n_nm` VALUES (2004,2478,'����������',15);
INSERT INTO `n_nm` VALUES (2005,5099,'�������',5);
INSERT INTO `n_nm` VALUES (2006,5351,'��������',8);
INSERT INTO `n_nm` VALUES (2007,4155,'����������',17);
INSERT INTO `n_nm` VALUES (2008,6740,'����������',10);
INSERT INTO `n_nm` VALUES (2009,5304,'������ �����',8);
INSERT INTO `n_nm` VALUES (2010,2440,'�����',15);
INSERT INTO `n_nm` VALUES (2011,9411,'�������',9);
INSERT INTO `n_nm` VALUES (2012,6266,'������',25);
INSERT INTO `n_nm` VALUES (2013,8517,'�������',2);
INSERT INTO `n_nm` VALUES (2014,6220,'�������',25);
INSERT INTO `n_nm` VALUES (2015,8160,'��������',2);
INSERT INTO `n_nm` VALUES (2016,2356,'�������',15);
INSERT INTO `n_nm` VALUES (2017,2282,'��������',23);
INSERT INTO `n_nm` VALUES (2018,8428,'�����',2);
INSERT INTO `n_nm` VALUES (2019,6627,'��������',10);
INSERT INTO `n_nm` VALUES (2020,9421,'�������',9);
INSERT INTO `n_nm` VALUES (2021,6177,'�������',25);
INSERT INTO `n_nm` VALUES (2022,8690,'�������',29);
INSERT INTO `n_nm` VALUES (2023,6396,'��������',27);
INSERT INTO `n_nm` VALUES (2024,6965,'���������',10);
INSERT INTO `n_nm` VALUES (2025,9880,'������',28);
INSERT INTO `n_nm` VALUES (2026,8641,'�������',29);
INSERT INTO `n_nm` VALUES (2027,2783,'���������',1);
INSERT INTO `n_nm` VALUES (2028,5090,'���������',5);
INSERT INTO `n_nm` VALUES (2029,5345,'��������',8);
INSERT INTO `n_nm` VALUES (2030,8875,'����� �������',21);
INSERT INTO `n_nm` VALUES (2031,9218,'�������',3);
INSERT INTO `n_nm` VALUES (2032,8746,'���������',29);
INSERT INTO `n_nm` VALUES (2033,6197,'��������',25);
INSERT INTO `n_nm` VALUES (2034,4212,'���������',17);
INSERT INTO `n_nm` VALUES (2035,2080,'�������',23);
INSERT INTO `n_nm` VALUES (2036,3630,'������',13);
INSERT INTO `n_nm` VALUES (2037,9385,'������',9);
INSERT INTO `n_nm` VALUES (2038,6221,'������ ������',25);
INSERT INTO `n_nm` VALUES (2039,9944,'������ ����',28);
INSERT INTO `n_nm` VALUES (2040,5760,'������ ������',12);
INSERT INTO `n_nm` VALUES (2041,9007,'������ ������',3);
INSERT INTO `n_nm` VALUES (2042,4264,'���������',17);
INSERT INTO `n_nm` VALUES (2043,4980,'���������',22);
INSERT INTO `n_nm` VALUES (2044,7694,'���������',20);
INSERT INTO `n_nm` VALUES (2045,6915,'���������',10);
INSERT INTO `n_nm` VALUES (2046,2830,'���������',1);
INSERT INTO `n_nm` VALUES (2047,6421,'���������',27);
INSERT INTO `n_nm` VALUES (2048,4162,'��������',17);
INSERT INTO `n_nm` VALUES (2049,6484,'�����������',27);
INSERT INTO `n_nm` VALUES (2050,2225,'�������',23);
INSERT INTO `n_nm` VALUES (2051,3161,'������',7);
INSERT INTO `n_nm` VALUES (2052,2558,'������',11);
INSERT INTO `n_nm` VALUES (2053,2009,'���������',23);
INSERT INTO `n_nm` VALUES (2054,4491,'���������',14);
INSERT INTO `n_nm` VALUES (2055,9643,'������',9);
INSERT INTO `n_nm` VALUES (2056,4834,'������',22);
INSERT INTO `n_nm` VALUES (2057,7945,'������',26);
INSERT INTO `n_nm` VALUES (2058,6059,'�������',25);
INSERT INTO `n_nm` VALUES (2059,4777,'������',22);
INSERT INTO `n_nm` VALUES (2060,6272,'����������',25);
INSERT INTO `n_nm` VALUES (2061,9553,'������',9);
INSERT INTO `n_nm` VALUES (2062,2882,'�������',1);
INSERT INTO `n_nm` VALUES (2063,5737,'��������� ���',12);
INSERT INTO `n_nm` VALUES (2064,9156,'�������',3);
INSERT INTO `n_nm` VALUES (2065,6650,'�������',10);
INSERT INTO `n_nm` VALUES (2066,2821,'�������',1);
INSERT INTO `n_nm` VALUES (2067,8313,'�������',2);
INSERT INTO `n_nm` VALUES (2068,6367,'�������',27);
INSERT INTO `n_nm` VALUES (2069,4857,'�������',22);
INSERT INTO `n_nm` VALUES (2070,9491,'�������',9);
INSERT INTO `n_nm` VALUES (2071,4407,'������',14);
INSERT INTO `n_nm` VALUES (2072,6570,'�����������',27);
INSERT INTO `n_nm` VALUES (2073,4206,'���� ������',17);
INSERT INTO `n_nm` VALUES (2074,5363,'���� �����',8);
INSERT INTO `n_nm` VALUES (2075,7342,'���� ���������',18);
INSERT INTO `n_nm` VALUES (2076,5084,'������������',5);
INSERT INTO `n_nm` VALUES (2077,5300,'�������',8);
INSERT INTO `n_nm` VALUES (2078,5340,'���������',8);
INSERT INTO `n_nm` VALUES (2079,9865,'�������',28);
INSERT INTO `n_nm` VALUES (2080,7088,'�������',19);
INSERT INTO `n_nm` VALUES (2081,2875,'�������',1);
INSERT INTO `n_nm` VALUES (2082,4918,'�������',22);
INSERT INTO `n_nm` VALUES (2083,6465,'�������',27);
INSERT INTO `n_nm` VALUES (2084,5035,'��������',5);
INSERT INTO `n_nm` VALUES (2085,3739,'��������',6);
INSERT INTO `n_nm` VALUES (2086,2562,'��������',11);
INSERT INTO `n_nm` VALUES (2087,9810,'�������',28);
INSERT INTO `n_nm` VALUES (2088,6628,'������',10);
INSERT INTO `n_nm` VALUES (2089,5194,'������',5);
INSERT INTO `n_nm` VALUES (2090,7859,'������',26);
INSERT INTO `n_nm` VALUES (2091,5623,'���������',12);
INSERT INTO `n_nm` VALUES (2092,1393,'�������',23);
INSERT INTO `n_nm` VALUES (2093,4334,'�������',17);
INSERT INTO `n_nm` VALUES (2094,8745,'������',29);
INSERT INTO `n_nm` VALUES (2095,5343,'������',8);
INSERT INTO `n_nm` VALUES (2096,9797,'������',28);
INSERT INTO `n_nm` VALUES (2097,9143,'���������',3);
INSERT INTO `n_nm` VALUES (2098,3167,'��������',7);
INSERT INTO `n_nm` VALUES (2099,3631,'��������',13);
INSERT INTO `n_nm` VALUES (2100,5370,'���������',8);
INSERT INTO `n_nm` VALUES (2101,5098,'���������',5);
INSERT INTO `n_nm` VALUES (2102,2848,'��������',1);
INSERT INTO `n_nm` VALUES (2103,5422,'�������',8);
INSERT INTO `n_nm` VALUES (2104,4269,'��������',17);
INSERT INTO `n_nm` VALUES (2105,9959,'�����',28);
INSERT INTO `n_nm` VALUES (2106,3742,'�����',6);
INSERT INTO `n_nm` VALUES (2107,2415,'�����',15);
INSERT INTO `n_nm` VALUES (2108,4116,'�����',17);
INSERT INTO `n_nm` VALUES (2109,2219,'�����',23);
INSERT INTO `n_nm` VALUES (2110,8153,'�����',2);
INSERT INTO `n_nm` VALUES (2111,3821,'����� ������',6);
INSERT INTO `n_nm` VALUES (2112,8116,'��������',2);
INSERT INTO `n_nm` VALUES (2113,9297,'��������',3);
INSERT INTO `n_nm` VALUES (2114,7950,'��������',26);
INSERT INTO `n_nm` VALUES (2115,4235,'��������',17);
INSERT INTO `n_nm` VALUES (2116,9538,'��������',9);
INSERT INTO `n_nm` VALUES (2117,6461,'��������',27);
INSERT INTO `n_nm` VALUES (2118,6242,'��������',25);
INSERT INTO `n_nm` VALUES (2119,9154,'��������',3);
INSERT INTO `n_nm` VALUES (2120,5536,'�������',12);
INSERT INTO `n_nm` VALUES (2121,2711,'������',1);
INSERT INTO `n_nm` VALUES (2122,9754,'������',28);
INSERT INTO `n_nm` VALUES (2123,8717,'������',29);
INSERT INTO `n_nm` VALUES (2124,5924,'������',16);
INSERT INTO `n_nm` VALUES (2125,4990,'������',22);
INSERT INTO `n_nm` VALUES (2126,8847,'������',21);
INSERT INTO `n_nm` VALUES (2127,9176,'������',3);
INSERT INTO `n_nm` VALUES (2128,8273,'������',2);
INSERT INTO `n_nm` VALUES (2129,5335,'��������',8);
INSERT INTO `n_nm` VALUES (2130,5082,'������ ���',5);
INSERT INTO `n_nm` VALUES (2131,5045,'������',5);
INSERT INTO `n_nm` VALUES (2132,7948,'������',26);
INSERT INTO `n_nm` VALUES (2133,6845,'�������',10);
INSERT INTO `n_nm` VALUES (2134,2072,'�������',23);
INSERT INTO `n_nm` VALUES (2135,2929,'�������',1);
INSERT INTO `n_nm` VALUES (2136,2833,'���������',1);
INSERT INTO `n_nm` VALUES (2137,6745,'�������',10);
INSERT INTO `n_nm` VALUES (2138,5093,'�������',5);
INSERT INTO `n_nm` VALUES (2139,2581,'����',11);
INSERT INTO `n_nm` VALUES (2140,9813,'���� ��������',28);
INSERT INTO `n_nm` VALUES (2141,9877,'���������',28);
INSERT INTO `n_nm` VALUES (2142,8149,'����� �������',2);
INSERT INTO `n_nm` VALUES (2143,3763,'�����',6);
INSERT INTO `n_nm` VALUES (2144,9666,'������',9);
INSERT INTO `n_nm` VALUES (2145,8697,'���������',29);
INSERT INTO `n_nm` VALUES (2146,5367,'�������',8);
INSERT INTO `n_nm` VALUES (2147,7532,'�����',20);
INSERT INTO `n_nm` VALUES (2148,6781,'�����',10);
INSERT INTO `n_nm` VALUES (2149,5380,'�����',8);
INSERT INTO `n_nm` VALUES (2150,8481,'�����',2);
INSERT INTO `n_nm` VALUES (2151,4297,'�����',17);
INSERT INTO `n_nm` VALUES (2152,7580,'�����',20);
INSERT INTO `n_nm` VALUES (2153,2290,'������',23);
INSERT INTO `n_nm` VALUES (2154,2288,'������ - ����������',23);
INSERT INTO `n_nm` VALUES (2155,6293,'�������',25);
INSERT INTO `n_nm` VALUES (2156,9285,'�����',3);
INSERT INTO `n_nm` VALUES (2157,5972,'�����',16);
INSERT INTO `n_nm` VALUES (2158,5868,'�����',16);
INSERT INTO `n_nm` VALUES (2159,7400,'�������',18);
INSERT INTO `n_nm` VALUES (2160,4588,'����������',14);
INSERT INTO `n_nm` VALUES (2161,4767,'�������',22);
INSERT INTO `n_nm` VALUES (2162,2050,'�������',23);
INSERT INTO `n_nm` VALUES (2163,8849,'�����',21);
INSERT INTO `n_nm` VALUES (2164,6551,'������������',27);
INSERT INTO `n_nm` VALUES (2165,4219,'������ ������',17);
INSERT INTO `n_nm` VALUES (2166,9531,'�������',9);
INSERT INTO `n_nm` VALUES (2167,5360,'�������',8);
INSERT INTO `n_nm` VALUES (2168,5035,'��������',5);
INSERT INTO `n_nm` VALUES (2169,5553,'������',12);
INSERT INTO `n_nm` VALUES (2170,7450,'�������',18);
INSERT INTO `n_nm` VALUES (2171,6724,'�������',10);
INSERT INTO `n_nm` VALUES (2172,7569,'���������',20);
INSERT INTO `n_nm` VALUES (2173,8629,'������',29);
INSERT INTO `n_nm` VALUES (2174,8210,'����������',2);
INSERT INTO `n_nm` VALUES (2175,9488,'����������',9);
INSERT INTO `n_nm` VALUES (2176,6703,'����������',10);
INSERT INTO `n_nm` VALUES (2177,9650,'�������',9);
INSERT INTO `n_nm` VALUES (2178,8143,'��������',2);
INSERT INTO `n_nm` VALUES (2179,5163,'������',5);
INSERT INTO `n_nm` VALUES (2180,2889,'�����������',1);
INSERT INTO `n_nm` VALUES (2181,4213,'�������',17);
INSERT INTO `n_nm` VALUES (2182,2593,'���������',11);
INSERT INTO `n_nm` VALUES (2183,6590,'�����',27);
INSERT INTO `n_nm` VALUES (2184,6062,'�������',25);
INSERT INTO `n_nm` VALUES (2185,6100,'��������',25);
INSERT INTO `n_nm` VALUES (2186,6850,'��������',10);
INSERT INTO `n_nm` VALUES (2187,5548,'��������',12);
INSERT INTO `n_nm` VALUES (2188,9125,'������� ����',3);
INSERT INTO `n_nm` VALUES (2189,9140,'�������',3);
INSERT INTO `n_nm` VALUES (2190,7574,'�������',20);
INSERT INTO `n_nm` VALUES (2191,1532,'��������',23);
INSERT INTO `n_nm` VALUES (2192,7550,'���������',20);
INSERT INTO `n_nm` VALUES (2193,6927,'�����������',10);
INSERT INTO `n_nm` VALUES (2194,5096,'���������',5);
INSERT INTO `n_nm` VALUES (2195,5667,'�������',12);
INSERT INTO `n_nm` VALUES (2196,4147,'���������',17);
INSERT INTO `n_nm` VALUES (2197,3151,'�����',7);
INSERT INTO `n_nm` VALUES (2198,3829,'�������',6);
INSERT INTO `n_nm` VALUES (2199,5575,'�������',12);
INSERT INTO `n_nm` VALUES (2200,2253,'���������',23);
INSERT INTO `n_nm` VALUES (2201,2832,'���������',1);
INSERT INTO `n_nm` VALUES (2202,9177,'���������',3);
INSERT INTO `n_nm` VALUES (2203,3788,'������',6);
INSERT INTO `n_nm` VALUES (2204,9544,'������',9);
INSERT INTO `n_nm` VALUES (2205,6623,'�������',10);
INSERT INTO `n_nm` VALUES (2206,9795,'������',28);
INSERT INTO `n_nm` VALUES (2207,7539,'�����������',20);
INSERT INTO `n_nm` VALUES (2208,6049,'����������',25);
INSERT INTO `n_nm` VALUES (2209,2431,'������',15);
INSERT INTO `n_nm` VALUES (2210,7960,'�������',26);
INSERT INTO `n_nm` VALUES (2211,8368,'������',2);
INSERT INTO `n_nm` VALUES (2212,5388,'�������',8);
INSERT INTO `n_nm` VALUES (2213,2212,'��������',23);
INSERT INTO `n_nm` VALUES (2214,2444,'���������',15);
INSERT INTO `n_nm` VALUES (2215,4370,'�������',17);
INSERT INTO `n_nm` VALUES (2216,9288,'������',3);
INSERT INTO `n_nm` VALUES (2217,6070,'����������',25);
INSERT INTO `n_nm` VALUES (2218,4173,'���������',17);
INSERT INTO `n_nm` VALUES (2219,8881,'���������',21);
INSERT INTO `n_nm` VALUES (2220,6675,'��������',10);
INSERT INTO `n_nm` VALUES (2221,7631,'����������',20);
INSERT INTO `n_nm` VALUES (2222,4462,'����������',14);
INSERT INTO `n_nm` VALUES (2223,2169,'����������',23);
INSERT INTO `n_nm` VALUES (2224,6495,'����������',27);
INSERT INTO `n_nm` VALUES (2225,8677,'�������',29);
INSERT INTO `n_nm` VALUES (2226,5616,'���������',12);
INSERT INTO `n_nm` VALUES (2227,5340,'��������',8);
INSERT INTO `n_nm` VALUES (2228,2215,'����������',23);
INSERT INTO `n_nm` VALUES (2229,7930,'���������',26);
INSERT INTO `n_nm` VALUES (2230,9425,'�����',9);
INSERT INTO `n_nm` VALUES (2231,8882,'�����',21);
INSERT INTO `n_nm` VALUES (2232,5160,'�����',5);
INSERT INTO `n_nm` VALUES (2233,9661,'����� ����',9);
INSERT INTO `n_nm` VALUES (2234,8728,'����� ����',29);
INSERT INTO `n_nm` VALUES (2235,9253,'����� ���',3);
INSERT INTO `n_nm` VALUES (2236,2878,'������',1);
INSERT INTO `n_nm` VALUES (2237,9102,'�������',3);
INSERT INTO `n_nm` VALUES (2238,7247,'�������',18);
INSERT INTO `n_nm` VALUES (2239,8215,'�������',2);
INSERT INTO `n_nm` VALUES (2240,5083,'��������',5);
INSERT INTO `n_nm` VALUES (2241,6729,'���������',10);
INSERT INTO `n_nm` VALUES (2242,6800,'�������',10);
INSERT INTO `n_nm` VALUES (2243,5866,'�������',16);
INSERT INTO `n_nm` VALUES (2244,8655,'�������',29);
INSERT INTO `n_nm` VALUES (2245,2677,'�������',11);
INSERT INTO `n_nm` VALUES (2246,2072,'��������',23);
INSERT INTO `n_nm` VALUES (2247,2828,'��������',1);
INSERT INTO `n_nm` VALUES (2248,2572,'��������� ���������',11);
INSERT INTO `n_nm` VALUES (2249,6918,'�������',10);
INSERT INTO `n_nm` VALUES (2250,8997,'�������',21);
INSERT INTO `n_nm` VALUES (2251,6546,'������� ����',27);
INSERT INTO `n_nm` VALUES (2252,3479,'������� �����',13);
INSERT INTO `n_nm` VALUES (2253,8120,'������',2);
INSERT INTO `n_nm` VALUES (2254,3150,'������ ����',7);
INSERT INTO `n_nm` VALUES (2255,7295,'��������',19);
INSERT INTO `n_nm` VALUES (2256,8928,'��������',21);
INSERT INTO `n_nm` VALUES (2257,8455,'��������',2);
INSERT INTO `n_nm` VALUES (2258,7565,'�������',20);
INSERT INTO `n_nm` VALUES (2259,8578,'�������',2);
INSERT INTO `n_nm` VALUES (2260,9783,'�������',28);
INSERT INTO `n_nm` VALUES (2261,6850,'��������',10);
INSERT INTO `n_nm` VALUES (2262,5333,'��������',8);
INSERT INTO `n_nm` VALUES (2263,6571,'�������� ���',27);
INSERT INTO `n_nm` VALUES (2264,9130,'������',3);
INSERT INTO `n_nm` VALUES (2265,8434,'������',2);
INSERT INTO `n_nm` VALUES (2266,6937,'��������',10);
INSERT INTO `n_nm` VALUES (2267,4631,'�������',14);
INSERT INTO `n_nm` VALUES (2268,3843,'�����',6);
INSERT INTO `n_nm` VALUES (2269,5094,'�������',5);
INSERT INTO `n_nm` VALUES (2270,6695,'�����',10);
INSERT INTO `n_nm` VALUES (2271,9960,'���������',28);
INSERT INTO `n_nm` VALUES (2272,2872,'��������',1);
INSERT INTO `n_nm` VALUES (2273,6530,'������� ��������',27);
INSERT INTO `n_nm` VALUES (2274,4589,'������� ����������',14);
INSERT INTO `n_nm` VALUES (2275,9408,'������� ���������',9);
INSERT INTO `n_nm` VALUES (2276,9770,'������� �����',28);
INSERT INTO `n_nm` VALUES (2277,3768,'�����������',6);
INSERT INTO `n_nm` VALUES (2278,7988,'������',26);
INSERT INTO `n_nm` VALUES (2279,7453,'���� �����',18);
INSERT INTO `n_nm` VALUES (2280,4484,'���������',14);
INSERT INTO `n_nm` VALUES (2281,4350,'����������',17);
INSERT INTO `n_nm` VALUES (2282,9942,'����������',28);
INSERT INTO `n_nm` VALUES (2283,8647,'����������',29);
INSERT INTO `n_nm` VALUES (2284,8553,'�����������',2);
INSERT INTO `n_nm` VALUES (2285,8543,'�������������',2);
INSERT INTO `n_nm` VALUES (2286,4283,'�����������',17);
INSERT INTO `n_nm` VALUES (2287,4117,'���������',17);
INSERT INTO `n_nm` VALUES (2288,5386,'����������',8);
INSERT INTO `n_nm` VALUES (2289,5095,'����������',5);
INSERT INTO `n_nm` VALUES (2290,5230,'��������',5);
INSERT INTO `n_nm` VALUES (2291,5343,'������',8);
INSERT INTO `n_nm` VALUES (2292,9299,'����������',3);
INSERT INTO `n_nm` VALUES (2293,7130,'����������',19);
INSERT INTO `n_nm` VALUES (2294,6372,'���������',27);
INSERT INTO `n_nm` VALUES (2295,5471,'������������',8);
INSERT INTO `n_nm` VALUES (2296,6826,'��������',10);
INSERT INTO `n_nm` VALUES (2297,7163,'����� ��������',19);
INSERT INTO `n_nm` VALUES (2298,8839,'���������',21);
INSERT INTO `n_nm` VALUES (2299,5094,'���������',5);
INSERT INTO `n_nm` VALUES (2300,8532,'��������',2);
INSERT INTO `n_nm` VALUES (2301,8934,'��������',21);
INSERT INTO `n_nm` VALUES (2302,5188,'�������',5);
INSERT INTO `n_nm` VALUES (2303,9390,'���������',9);
INSERT INTO `n_nm` VALUES (2304,2118,'���������',23);
INSERT INTO `n_nm` VALUES (2305,3136,'�����',7);
INSERT INTO `n_nm` VALUES (2306,3923,'��������',6);
INSERT INTO `n_nm` VALUES (2307,9619,'�������',9);
INSERT INTO `n_nm` VALUES (2308,9530,'������',9);
INSERT INTO `n_nm` VALUES (2309,7830,'������',26);
INSERT INTO `n_nm` VALUES (2310,2088,'��������',23);
INSERT INTO `n_nm` VALUES (2311,4300,'�������',17);
INSERT INTO `n_nm` VALUES (2312,6572,'���������',27);
INSERT INTO `n_nm` VALUES (2313,5782,'���������',12);
INSERT INTO `n_nm` VALUES (2314,8400,'��������',2);
INSERT INTO `n_nm` VALUES (2315,4921,'��������',22);
INSERT INTO `n_nm` VALUES (2316,2424,'�������',15);
INSERT INTO `n_nm` VALUES (2317,6439,'���������',27);
INSERT INTO `n_nm` VALUES (2318,9930,'��������',28);
INSERT INTO `n_nm` VALUES (2319,9931,'��������-����',28);
INSERT INTO `n_nm` VALUES (2320,5472,'������',8);
INSERT INTO `n_nm` VALUES (2321,5894,'��������',16);
INSERT INTO `n_nm` VALUES (2322,5392,'����������',8);
INSERT INTO `n_nm` VALUES (2323,4739,'���������',22);
INSERT INTO `n_nm` VALUES (2324,2537,'�������',11);
INSERT INTO `n_nm` VALUES (2325,5569,'�������',12);
INSERT INTO `n_nm` VALUES (2326,4120,'��������',17);
INSERT INTO `n_nm` VALUES (2327,8991,'��������',21);
INSERT INTO `n_nm` VALUES (2328,2830,'�������',1);
INSERT INTO `n_nm` VALUES (2329,7160,'��������',19);
INSERT INTO `n_nm` VALUES (2330,6907,'�������',10);
INSERT INTO `n_nm` VALUES (2331,5351,'�������',8);
INSERT INTO `n_nm` VALUES (2332,2820,'������',1);
INSERT INTO `n_nm` VALUES (2333,6863,'�������',10);
INSERT INTO `n_nm` VALUES (2334,5388,'������',8);
INSERT INTO `n_nm` VALUES (2335,5365,'��������',8);
INSERT INTO `n_nm` VALUES (2336,8870,'������',21);
INSERT INTO `n_nm` VALUES (2337,5161,'��������',5);
INSERT INTO `n_nm` VALUES (2338,4828,'������',22);
INSERT INTO `n_nm` VALUES (2339,7973,'���������',26);
INSERT INTO `n_nm` VALUES (2340,5345,'������',8);
INSERT INTO `n_nm` VALUES (2341,5050,'����������',5);
INSERT INTO `n_nm` VALUES (2342,8998,'��������',21);
INSERT INTO `n_nm` VALUES (2343,9169,'�����',3);
INSERT INTO `n_nm` VALUES (2344,5094,'�������',5);
INSERT INTO `n_nm` VALUES (2345,3823,'�������',6);
INSERT INTO `n_nm` VALUES (2346,8741,'��������',29);
INSERT INTO `n_nm` VALUES (2347,6064,'��������',25);
INSERT INTO `n_nm` VALUES (2348,5539,'������� ������',12);
INSERT INTO `n_nm` VALUES (2349,6884,'�������',10);
INSERT INTO `n_nm` VALUES (2350,8344,'������',2);
INSERT INTO `n_nm` VALUES (2351,5521,'�������',12);
INSERT INTO `n_nm` VALUES (2352,3675,'��������',13);
INSERT INTO `n_nm` VALUES (2353,2556,'��������',11);
INSERT INTO `n_nm` VALUES (2354,4765,'����������',22);
INSERT INTO `n_nm` VALUES (2355,5360,'����������',8);
INSERT INTO `n_nm` VALUES (2356,5365,'���������',8);
INSERT INTO `n_nm` VALUES (2357,5035,'��������',5);
INSERT INTO `n_nm` VALUES (2358,7430,'���������',18);
INSERT INTO `n_nm` VALUES (2359,9241,'�����',3);
INSERT INTO `n_nm` VALUES (2360,8284,'�����',2);
INSERT INTO `n_nm` VALUES (2361,7993,'������',26);
INSERT INTO `n_nm` VALUES (2362,9127,'�����',3);
INSERT INTO `n_nm` VALUES (2363,8558,'�����',2);
INSERT INTO `n_nm` VALUES (2364,6868,'�����',10);
INSERT INTO `n_nm` VALUES (2365,6791,'�������',10);
INSERT INTO `n_nm` VALUES (2366,9151,'������',3);
INSERT INTO `n_nm` VALUES (2367,7243,'��������',18);
INSERT INTO `n_nm` VALUES (2368,6395,'��������',27);
INSERT INTO `n_nm` VALUES (2369,9816,'��������',28);
INSERT INTO `n_nm` VALUES (2370,2895,'��������',1);
INSERT INTO `n_nm` VALUES (2371,9497,'��������',9);
INSERT INTO `n_nm` VALUES (2372,5046,'������ ���',5);
INSERT INTO `n_nm` VALUES (2373,2347,'��������',15);
INSERT INTO `n_nm` VALUES (2374,3758,'��������',6);
INSERT INTO `n_nm` VALUES (2375,2421,'��������',15);
INSERT INTO `n_nm` VALUES (2376,2837,'���������',1);
INSERT INTO `n_nm` VALUES (2377,8427,'������',2);
INSERT INTO `n_nm` VALUES (2378,8442,'������',2);
INSERT INTO `n_nm` VALUES (2379,9970,'�������',28);
INSERT INTO `n_nm` VALUES (2380,4348,'�������',17);
INSERT INTO `n_nm` VALUES (2381,9150,'����������',3);
INSERT INTO `n_nm` VALUES (2382,5183,'����������',5);
INSERT INTO `n_nm` VALUES (2383,1320,'�������',24);
INSERT INTO `n_nm` VALUES (2384,2738,'�������',1);
INSERT INTO `n_nm` VALUES (2385,4341,'�������',17);
INSERT INTO `n_nm` VALUES (2386,2026,'�������',23);
INSERT INTO `n_nm` VALUES (2387,3483,'���������',13);
INSERT INTO `n_nm` VALUES (2388,3543,'��������� ��������',13);
INSERT INTO `n_nm` VALUES (2389,6310,'����������',27);
INSERT INTO `n_nm` VALUES (2390,5035,'������ ����',5);
INSERT INTO `n_nm` VALUES (2391,2899,'����',1);
INSERT INTO `n_nm` VALUES (2392,5340,'��������',8);
INSERT INTO `n_nm` VALUES (2393,5343,'��������',8);
INSERT INTO `n_nm` VALUES (2394,3230,'�����',7);
INSERT INTO `n_nm` VALUES (2395,6390,'���������',27);
INSERT INTO `n_nm` VALUES (2396,3677,'������� ������',13);
INSERT INTO `n_nm` VALUES (2397,6566,'�������',27);
INSERT INTO `n_nm` VALUES (2398,6077,'���������',25);
INSERT INTO `n_nm` VALUES (2399,6593,'��������',27);
INSERT INTO `n_nm` VALUES (2400,3442,'�������',13);
INSERT INTO `n_nm` VALUES (2401,6734,'��������',10);
INSERT INTO `n_nm` VALUES (2402,6272,'�����',25);
INSERT INTO `n_nm` VALUES (2403,7852,'���������',26);
INSERT INTO `n_nm` VALUES (2404,2969,'����������',1);
INSERT INTO `n_nm` VALUES (2405,6264,'��������',25);
INSERT INTO `n_nm` VALUES (2406,2824,'��������',1);
INSERT INTO `n_nm` VALUES (2407,4477,'��������',14);
INSERT INTO `n_nm` VALUES (2408,2450,'���������',15);
INSERT INTO `n_nm` VALUES (2409,2023,'���������',23);
INSERT INTO `n_nm` VALUES (2410,8874,'��������',21);
INSERT INTO `n_nm` VALUES (2411,3643,'��������',13);
INSERT INTO `n_nm` VALUES (2412,6913,'�����',10);
INSERT INTO `n_nm` VALUES (2413,5241,'������',5);
INSERT INTO `n_nm` VALUES (2414,5365,'������',8);
INSERT INTO `n_nm` VALUES (2415,4813,'������',22);
INSERT INTO `n_nm` VALUES (2416,2487,'�������',15);
INSERT INTO `n_nm` VALUES (2417,5097,'��������',5);
INSERT INTO `n_nm` VALUES (2418,6957,'���������',10);
INSERT INTO `n_nm` VALUES (2419,4248,'��������',17);
INSERT INTO `n_nm` VALUES (2420,5915,'����� ������',16);
INSERT INTO `n_nm` VALUES (2421,8493,'������',2);
INSERT INTO `n_nm` VALUES (2422,5148,'���������',5);
INSERT INTO `n_nm` VALUES (2423,6070,'���������',25);
INSERT INTO `n_nm` VALUES (2424,8674,'��������',29);
INSERT INTO `n_nm` VALUES (2425,4983,'�������',22);
INSERT INTO `n_nm` VALUES (2426,4584,'��������',14);
INSERT INTO `n_nm` VALUES (2427,5344,'���� ���',8);
INSERT INTO `n_nm` VALUES (2428,8843,'����� ���',21);
INSERT INTO `n_nm` VALUES (2429,6848,'������',10);
INSERT INTO `n_nm` VALUES (2430,7833,'������',26);
INSERT INTO `n_nm` VALUES (2431,8224,'��������',2);
INSERT INTO `n_nm` VALUES (2432,6865,'�������',10);
INSERT INTO `n_nm` VALUES (2433,6371,'������',27);
INSERT INTO `n_nm` VALUES (2434,5290,'��������',5);
INSERT INTO `n_nm` VALUES (2435,3320,'��������',7);
INSERT INTO `n_nm` VALUES (2436,9387,'����������',9);
INSERT INTO `n_nm` VALUES (2437,7913,'����� ���������',26);
INSERT INTO `n_nm` VALUES (2438,8255,'�������',2);
INSERT INTO `n_nm` VALUES (2439,5080,'���� ����',5);
INSERT INTO `n_nm` VALUES (2440,7673,'�����',20);
INSERT INTO `n_nm` VALUES (2441,5842,'��������',16);
INSERT INTO `n_nm` VALUES (2442,5986,'�������',16);
INSERT INTO `n_nm` VALUES (2443,5350,'��������',8);
INSERT INTO `n_nm` VALUES (2444,1191,'��������',23);
INSERT INTO `n_nm` VALUES (2445,6676,'������',10);
INSERT INTO `n_nm` VALUES (2446,4963,'������',22);
INSERT INTO `n_nm` VALUES (2447,4725,'���������',22);
INSERT INTO `n_nm` VALUES (2448,4971,'�������',22);
INSERT INTO `n_nm` VALUES (2449,6733,'��������',10);
INSERT INTO `n_nm` VALUES (2450,5084,'������',5);
INSERT INTO `n_nm` VALUES (2451,7613,'��������',20);
INSERT INTO `n_nm` VALUES (2452,2880,'��������',1);
INSERT INTO `n_nm` VALUES (2453,6271,'��������',25);
INSERT INTO `n_nm` VALUES (2454,6460,'��������',27);
INSERT INTO `n_nm` VALUES (2455,9481,'�������',9);
INSERT INTO `n_nm` VALUES (2456,6050,'������',25);
INSERT INTO `n_nm` VALUES (2457,6376,'�����',27);
INSERT INTO `n_nm` VALUES (2458,2838,'��������',1);
INSERT INTO `n_nm` VALUES (2459,5343,'���������',8);
INSERT INTO `n_nm` VALUES (2460,7675,'�������',20);
INSERT INTO `n_nm` VALUES (2461,5360,'���� �����',8);
INSERT INTO `n_nm` VALUES (2462,6237,'���� ��������',25);
INSERT INTO `n_nm` VALUES (2463,3516,'��������',13);
INSERT INTO `n_nm` VALUES (2464,3247,'��������',7);
INSERT INTO `n_nm` VALUES (2465,5853,'��������',16);
INSERT INTO `n_nm` VALUES (2466,9269,'��������',3);
INSERT INTO `n_nm` VALUES (2467,3648,'��������',13);
INSERT INTO `n_nm` VALUES (2468,9254,'��������',3);
INSERT INTO `n_nm` VALUES (2469,6690,'��������',10);
INSERT INTO `n_nm` VALUES (2470,2255,'�������',23);
INSERT INTO `n_nm` VALUES (2471,7868,'�����',26);
INSERT INTO `n_nm` VALUES (2472,9548,'������',9);
INSERT INTO `n_nm` VALUES (2473,6189,'������',25);
INSERT INTO `n_nm` VALUES (2474,2792,'��������',1);
INSERT INTO `n_nm` VALUES (2475,5364,'����������',8);
INSERT INTO `n_nm` VALUES (2476,6593,'�������',27);
INSERT INTO `n_nm` VALUES (2477,8275,'���������',2);
INSERT INTO `n_nm` VALUES (2478,2422,'���������',15);
INSERT INTO `n_nm` VALUES (2479,8623,'�������',29);
INSERT INTO `n_nm` VALUES (2480,9887,'������',28);
INSERT INTO `n_nm` VALUES (2481,7442,'������',18);
INSERT INTO `n_nm` VALUES (2482,6661,'������',10);
INSERT INTO `n_nm` VALUES (2483,6588,'�������',27);
INSERT INTO `n_nm` VALUES (2484,7995,'�����',26);
INSERT INTO `n_nm` VALUES (2485,2379,'������',15);
INSERT INTO `n_nm` VALUES (2486,5080,'����������',5);
INSERT INTO `n_nm` VALUES (2487,6267,'��������������',25);
INSERT INTO `n_nm` VALUES (2488,9180,'�������������',3);
INSERT INTO `n_nm` VALUES (2489,8129,'�������������',2);
INSERT INTO `n_nm` VALUES (2490,6494,'�������������',27);
INSERT INTO `n_nm` VALUES (2491,6841,'������',10);
INSERT INTO `n_nm` VALUES (2492,4268,'�����',17);
INSERT INTO `n_nm` VALUES (2493,6370,'�����',27);
INSERT INTO `n_nm` VALUES (2494,6828,'�����',10);
INSERT INTO `n_nm` VALUES (2495,9748,'��������',28);
INSERT INTO `n_nm` VALUES (2496,2085,'���������',23);
INSERT INTO `n_nm` VALUES (2497,8920,'�������',21);
INSERT INTO `n_nm` VALUES (2498,2540,'������',11);
INSERT INTO `n_nm` VALUES (2499,2409,'��������',15);
INSERT INTO `n_nm` VALUES (2500,3467,'���������',13);
INSERT INTO `n_nm` VALUES (2501,2543,'���������',11);
INSERT INTO `n_nm` VALUES (2502,6698,'��������',10);
INSERT INTO `n_nm` VALUES (2503,7775,'������',26);
INSERT INTO `n_nm` VALUES (2504,2567,'�������',11);
INSERT INTO `n_nm` VALUES (2505,7120,'��������',19);
INSERT INTO `n_nm` VALUES (2506,2921,'���������',1);
INSERT INTO `n_nm` VALUES (2507,2077,'����������',23);
INSERT INTO `n_nm` VALUES (2508,6137,'��������',25);
INSERT INTO `n_nm` VALUES (2509,5342,'����������',8);
INSERT INTO `n_nm` VALUES (2510,6392,'�����',27);
INSERT INTO `n_nm` VALUES (2511,4921,'�������',22);
INSERT INTO `n_nm` VALUES (2512,4976,'��������',22);
INSERT INTO `n_nm` VALUES (2513,9403,'�������',9);
INSERT INTO `n_nm` VALUES (2514,5455,'�������',8);
INSERT INTO `n_nm` VALUES (2515,2688,'�������',11);
INSERT INTO `n_nm` VALUES (2516,5433,'���������',8);
INSERT INTO `n_nm` VALUES (2517,2970,'�������',1);
INSERT INTO `n_nm` VALUES (2518,8930,'������',21);
INSERT INTO `n_nm` VALUES (2519,6820,'���',10);
INSERT INTO `n_nm` VALUES (2520,7612,'������',20);
INSERT INTO `n_nm` VALUES (2521,5392,'�������',8);
INSERT INTO `n_nm` VALUES (2522,2448,'������',15);
INSERT INTO `n_nm` VALUES (2523,5095,'�������',5);
INSERT INTO `n_nm` VALUES (2524,5380,'�������',8);
INSERT INTO `n_nm` VALUES (2525,8223,'�������',2);
INSERT INTO `n_nm` VALUES (2526,4240,'������',17);
INSERT INTO `n_nm` VALUES (2527,3794,'������',6);
INSERT INTO `n_nm` VALUES (2528,9974,'������',28);
INSERT INTO `n_nm` VALUES (2529,2557,'������',11);
INSERT INTO `n_nm` VALUES (2530,3833,'����� �������',6);
INSERT INTO `n_nm` VALUES (2531,5301,'�����������',8);
INSERT INTO `n_nm` VALUES (2532,2060,'������������',23);
INSERT INTO `n_nm` VALUES (2533,7273,'�����������',18);
INSERT INTO `n_nm` VALUES (2534,4644,'����������',14);
INSERT INTO `n_nm` VALUES (2535,5099,'������',5);
INSERT INTO `n_nm` VALUES (2536,3047,'���������',7);
INSERT INTO `n_nm` VALUES (2537,8441,'������',2);
INSERT INTO `n_nm` VALUES (2538,9806,'������� ����',28);
INSERT INTO `n_nm` VALUES (2539,2030,'��������',23);
INSERT INTO `n_nm` VALUES (2540,2042,'�������� - ����',23);
INSERT INTO `n_nm` VALUES (2541,5343,'�����������',8);
INSERT INTO `n_nm` VALUES (2542,3518,'��������',13);
INSERT INTO `n_nm` VALUES (2543,8283,'�����',2);
INSERT INTO `n_nm` VALUES (2544,4205,'��������',17);
INSERT INTO `n_nm` VALUES (2545,6593,'����������',27);
INSERT INTO `n_nm` VALUES (2546,2230,'����������',23);
INSERT INTO `n_nm` VALUES (2547,6743,'�������',10);
INSERT INTO `n_nm` VALUES (2548,3755,'����������',6);
INSERT INTO `n_nm` VALUES (2549,6533,'������',27);
INSERT INTO `n_nm` VALUES (2550,6884,'���������',10);
INSERT INTO `n_nm` VALUES (2551,2489,'����������',15);
INSERT INTO `n_nm` VALUES (2552,8970,'�����',21);
INSERT INTO `n_nm` VALUES (2553,3522,'���������',13);
INSERT INTO `n_nm` VALUES (2554,6957,'�������',10);
INSERT INTO `n_nm` VALUES (2555,9374,'��������',9);
INSERT INTO `n_nm` VALUES (2556,5097,'������',5);
INSERT INTO `n_nm` VALUES (2557,2955,'�����',1);
INSERT INTO `n_nm` VALUES (2558,4999,'������',22);
INSERT INTO `n_nm` VALUES (2559,4119,'������',17);
INSERT INTO `n_nm` VALUES (2560,2640,'����������',11);
INSERT INTO `n_nm` VALUES (2561,9477,'������',9);
INSERT INTO `n_nm` VALUES (2562,9862,'������',28);
INSERT INTO `n_nm` VALUES (2563,3771,'������',6);
INSERT INTO `n_nm` VALUES (2564,2390,'��������',15);
INSERT INTO `n_nm` VALUES (2565,2453,'��������',15);
INSERT INTO `n_nm` VALUES (2566,8253,'��������',2);
INSERT INTO `n_nm` VALUES (2567,7062,'�������',19);
INSERT INTO `n_nm` VALUES (2568,4778,'�������',22);
INSERT INTO `n_nm` VALUES (2569,7783,'���������',18);
INSERT INTO `n_nm` VALUES (2570,7087,'�����',19);
INSERT INTO `n_nm` VALUES (2571,6075,'�������',25);
INSERT INTO `n_nm` VALUES (2572,3048,'��������',7);
INSERT INTO `n_nm` VALUES (2573,9418,'��������',9);
INSERT INTO `n_nm` VALUES (2574,2149,'������',23);
INSERT INTO `n_nm` VALUES (2575,2781,'������',1);
INSERT INTO `n_nm` VALUES (2576,9535,'������',9);
INSERT INTO `n_nm` VALUES (2577,9875,'���������',28);
INSERT INTO `n_nm` VALUES (2578,4900,'������',22);
INSERT INTO `n_nm` VALUES (2579,2649,'������ ���',11);
INSERT INTO `n_nm` VALUES (2580,2633,'��������',11);
INSERT INTO `n_nm` VALUES (2581,6739,'������ ����',10);
INSERT INTO `n_nm` VALUES (2582,8752,'��������',29);
INSERT INTO `n_nm` VALUES (2583,7997,'��������',26);
INSERT INTO `n_nm` VALUES (2584,9287,'������',3);
INSERT INTO `n_nm` VALUES (2585,2349,'���������',15);
INSERT INTO `n_nm` VALUES (2586,6362,'�������',27);
INSERT INTO `n_nm` VALUES (2587,7770,'�������',26);
INSERT INTO `n_nm` VALUES (2588,4452,'����� �����',14);
INSERT INTO `n_nm` VALUES (2589,5429,'��������',8);
INSERT INTO `n_nm` VALUES (2590,6898,'����',10);
INSERT INTO `n_nm` VALUES (2591,9649,'�������',9);
INSERT INTO `n_nm` VALUES (2592,7549,'�������',20);
INSERT INTO `n_nm` VALUES (2593,3149,'������',7);
INSERT INTO `n_nm` VALUES (2594,9674,'������',9);
INSERT INTO `n_nm` VALUES (2595,3434,'��������',13);
INSERT INTO `n_nm` VALUES (2596,2370,'�������',15);
INSERT INTO `n_nm` VALUES (2597,9534,'������',9);
INSERT INTO `n_nm` VALUES (2598,7075,'������',19);
INSERT INTO `n_nm` VALUES (2599,9935,'������ ���',28);
INSERT INTO `n_nm` VALUES (2600,9258,'��������',3);
INSERT INTO `n_nm` VALUES (2601,6962,'�������',10);
INSERT INTO `n_nm` VALUES (2602,5242,'������ �������',5);
INSERT INTO `n_nm` VALUES (2603,4178,'��������',17);
INSERT INTO `n_nm` VALUES (2604,7925,'�����������',26);
INSERT INTO `n_nm` VALUES (2605,3964,'��������',6);
INSERT INTO `n_nm` VALUES (2606,2771,'������',1);
INSERT INTO `n_nm` VALUES (2607,6884,'������',10);
INSERT INTO `n_nm` VALUES (2608,9639,'�������',9);
INSERT INTO `n_nm` VALUES (2609,4755,'�������',22);
INSERT INTO `n_nm` VALUES (2610,6822,'��������',10);
INSERT INTO `n_nm` VALUES (2611,2653,'��������',11);
INSERT INTO `n_nm` VALUES (2612,6410,'�������',27);
INSERT INTO `n_nm` VALUES (2613,7845,'������',26);
INSERT INTO `n_nm` VALUES (2614,5367,'���������',8);
INSERT INTO `n_nm` VALUES (2615,2840,'������',1);
INSERT INTO `n_nm` VALUES (2616,5961,'�����',16);
INSERT INTO `n_nm` VALUES (2617,3127,'�����',7);
INSERT INTO `n_nm` VALUES (2618,2951,'������',1);
INSERT INTO `n_nm` VALUES (2619,3669,'����� ����',13);
INSERT INTO `n_nm` VALUES (2620,3328,'����� ����',7);
INSERT INTO `n_nm` VALUES (2621,8936,'����� �����',21);
INSERT INTO `n_nm` VALUES (2622,9938,'����� ����',28);
INSERT INTO `n_nm` VALUES (2623,1588,'�������',23);
INSERT INTO `n_nm` VALUES (2624,5747,'�������',12);
INSERT INTO `n_nm` VALUES (2625,7132,'�������',19);
INSERT INTO `n_nm` VALUES (2626,9123,'�������',3);
INSERT INTO `n_nm` VALUES (2627,7456,'�������',18);
INSERT INTO `n_nm` VALUES (2628,7269,'������',19);
INSERT INTO `n_nm` VALUES (2629,9217,'������',3);
INSERT INTO `n_nm` VALUES (2630,6387,'����� ����',27);
INSERT INTO `n_nm` VALUES (2631,3060,'��������',7);
INSERT INTO `n_nm` VALUES (2632,2386,'��������',15);
INSERT INTO `n_nm` VALUES (2633,6884,'���������',10);
INSERT INTO `n_nm` VALUES (2634,5097,'��������',5);
INSERT INTO `n_nm` VALUES (2635,6671,'����',10);
INSERT INTO `n_nm` VALUES (2636,4148,'��������',17);
INSERT INTO `n_nm` VALUES (2637,4220,'������',17);
INSERT INTO `n_nm` VALUES (2638,2871,'���������',1);
INSERT INTO `n_nm` VALUES (2639,7278,'�����',18);
INSERT INTO `n_nm` VALUES (2640,6766,'��������',10);
INSERT INTO `n_nm` VALUES (2641,6438,'����',27);
INSERT INTO `n_nm` VALUES (2642,6900,'����������',10);
INSERT INTO `n_nm` VALUES (2643,9149,'�������',3);
INSERT INTO `n_nm` VALUES (2644,2627,'�������',11);
INSERT INTO `n_nm` VALUES (2645,4112,'�������',17);
INSERT INTO `n_nm` VALUES (2646,8649,'�������',29);
INSERT INTO `n_nm` VALUES (2647,8487,'������� �������',2);
INSERT INTO `n_nm` VALUES (2648,5080,'���������',5);
INSERT INTO `n_nm` VALUES (2649,9667,'������',9);
INSERT INTO `n_nm` VALUES (2650,2740,'�������',1);
INSERT INTO `n_nm` VALUES (2651,9121,'�����',3);
INSERT INTO `n_nm` VALUES (2652,2213,'�����',23);
INSERT INTO `n_nm` VALUES (2653,8877,'�������',21);
INSERT INTO `n_nm` VALUES (2654,9410,'�������',9);
INSERT INTO `n_nm` VALUES (2655,4919,'������ ���-����.�.',22);
INSERT INTO `n_nm` VALUES (2656,8148,'��������',2);
INSERT INTO `n_nm` VALUES (2657,2945,'�������',1);
INSERT INTO `n_nm` VALUES (2658,4291,'�������',17);
INSERT INTO `n_nm` VALUES (2659,5427,'�������',8);
INSERT INTO `n_nm` VALUES (2660,6744,'���������',10);
INSERT INTO `n_nm` VALUES (2661,5134,'�������',5);
INSERT INTO `n_nm` VALUES (2662,6743,'������',10);
INSERT INTO `n_nm` VALUES (2663,5860,'���������',16);
INSERT INTO `n_nm` VALUES (2664,5881,'���������',16);
INSERT INTO `n_nm` VALUES (2665,2060,'���������',23);
INSERT INTO `n_nm` VALUES (2666,3349,'���������',7);
INSERT INTO `n_nm` VALUES (2667,8482,'�������',2);
INSERT INTO `n_nm` VALUES (2668,4241,'�������',17);
INSERT INTO `n_nm` VALUES (2669,7962,'��������',26);
INSERT INTO `n_nm` VALUES (2670,5561,'�������',12);
INSERT INTO `n_nm` VALUES (2671,5460,'��������',8);
INSERT INTO `n_nm` VALUES (2672,5744,'�����������',12);
INSERT INTO `n_nm` VALUES (2673,6140,'����',25);
INSERT INTO `n_nm` VALUES (2674,2875,'�����������',1);
INSERT INTO `n_nm` VALUES (2675,5370,'������',8);
INSERT INTO `n_nm` VALUES (2676,4647,'��������',14);
INSERT INTO `n_nm` VALUES (2677,4741,'����������',22);
INSERT INTO `n_nm` VALUES (2678,4177,'���������',17);
INSERT INTO `n_nm` VALUES (2679,5350,'������������',8);
INSERT INTO `n_nm` VALUES (2680,5364,'�������',8);
INSERT INTO `n_nm` VALUES (2681,2805,'���������',1);
INSERT INTO `n_nm` VALUES (2682,8121,'��������',2);
INSERT INTO `n_nm` VALUES (2683,7786,'������',18);
INSERT INTO `n_nm` VALUES (2684,8335,'�������',2);
INSERT INTO `n_nm` VALUES (2685,7300,'������',18);
INSERT INTO `n_nm` VALUES (2686,1257,'���������',23);
INSERT INTO `n_nm` VALUES (2687,3798,'�������',6);
INSERT INTO `n_nm` VALUES (2688,2788,'�������',1);
INSERT INTO `n_nm` VALUES (2689,4101,'������',17);
INSERT INTO `n_nm` VALUES (2690,5370,'�����',8);
INSERT INTO `n_nm` VALUES (2691,8673,'��������',29);
INSERT INTO `n_nm` VALUES (2692,4710,'��������',22);
INSERT INTO `n_nm` VALUES (2693,6898,'�������',10);
INSERT INTO `n_nm` VALUES (2694,2882,'�����������',1);
INSERT INTO `n_nm` VALUES (2695,3800,'����',6);
INSERT INTO `n_nm` VALUES (2696,2868,'������',1);
INSERT INTO `n_nm` VALUES (2697,5937,'������ ����',16);
INSERT INTO `n_nm` VALUES (2698,5380,'��������',8);
INSERT INTO `n_nm` VALUES (2699,9153,'��������',3);
INSERT INTO `n_nm` VALUES (2700,4990,'�������',22);
INSERT INTO `n_nm` VALUES (2701,8646,'������',29);
INSERT INTO `n_nm` VALUES (2702,3140,'������',7);
INSERT INTO `n_nm` VALUES (2703,4921,'�����',22);
INSERT INTO `n_nm` VALUES (2704,5463,'�����',8);
INSERT INTO `n_nm` VALUES (2705,6839,'�������',10);
INSERT INTO `n_nm` VALUES (2706,3138,'�������',7);
INSERT INTO `n_nm` VALUES (2707,4369,'�������',17);
INSERT INTO `n_nm` VALUES (2708,4223,'������� ������',17);
INSERT INTO `n_nm` VALUES (2709,4752,'������',22);
INSERT INTO `n_nm` VALUES (2710,7558,'���������',20);
INSERT INTO `n_nm` VALUES (2711,3767,'������',6);
INSERT INTO `n_nm` VALUES (2712,2567,'���������',11);
INSERT INTO `n_nm` VALUES (2713,5042,'���������',5);
INSERT INTO `n_nm` VALUES (2714,5189,'������',5);
INSERT INTO `n_nm` VALUES (2715,6697,'������',10);
INSERT INTO `n_nm` VALUES (2716,4986,'�����',22);
INSERT INTO `n_nm` VALUES (2717,6927,'�������',10);
INSERT INTO `n_nm` VALUES (2718,5544,'�������',12);
INSERT INTO `n_nm` VALUES (2719,9821,'�������',28);
INSERT INTO `n_nm` VALUES (2720,6164,'�������',25);
INSERT INTO `n_nm` VALUES (2721,7997,'�������',26);
INSERT INTO `n_nm` VALUES (2722,5043,'��������',5);
INSERT INTO `n_nm` VALUES (2723,9528,'��������',9);
INSERT INTO `n_nm` VALUES (2724,7434,'���������',18);
INSERT INTO `n_nm` VALUES (2725,6600,'��������',10);
INSERT INTO `n_nm` VALUES (2726,2820,'���������',1);
INSERT INTO `n_nm` VALUES (2727,2860,'���������',1);
INSERT INTO `n_nm` VALUES (2728,4337,'�������',17);
INSERT INTO `n_nm` VALUES (2729,5558,'���������',12);
INSERT INTO `n_nm` VALUES (2730,2825,'���������',1);
INSERT INTO `n_nm` VALUES (2731,5380,'���������',8);
INSERT INTO `n_nm` VALUES (2732,5883,'�����������',16);
INSERT INTO `n_nm` VALUES (2733,6873,'���������',10);
INSERT INTO `n_nm` VALUES (2734,2563,'���������',11);
INSERT INTO `n_nm` VALUES (2735,4832,'�����',22);
INSERT INTO `n_nm` VALUES (2736,1276,'������',23);
INSERT INTO `n_nm` VALUES (2737,5885,'�����',16);
INSERT INTO `n_nm` VALUES (2738,2492,'�����',15);
INSERT INTO `n_nm` VALUES (2739,9888,'�������',28);
INSERT INTO `n_nm` VALUES (2740,6728,'�������',10);
INSERT INTO `n_nm` VALUES (2741,7951,'��������',26);
INSERT INTO `n_nm` VALUES (2742,9972,'�������',28);
INSERT INTO `n_nm` VALUES (2743,2500,'���������',11);
INSERT INTO `n_nm` VALUES (2744,5035,'��������',5);
INSERT INTO `n_nm` VALUES (2745,3743,'���������',6);
INSERT INTO `n_nm` VALUES (2746,2811,'��������',1);
INSERT INTO `n_nm` VALUES (2747,3262,'��������',7);
INSERT INTO `n_nm` VALUES (2748,5097,'�������',5);
INSERT INTO `n_nm` VALUES (2749,5656,'��������',12);
INSERT INTO `n_nm` VALUES (2750,2273,'��������',23);
INSERT INTO `n_nm` VALUES (2751,6823,'����',10);
INSERT INTO `n_nm` VALUES (2752,8749,'�������',29);
INSERT INTO `n_nm` VALUES (2753,6583,'������',27);
INSERT INTO `n_nm` VALUES (2754,5876,'������',16);
INSERT INTO `n_nm` VALUES (2755,2811,'���������',1);
INSERT INTO `n_nm` VALUES (2756,6767,'�������',10);
INSERT INTO `n_nm` VALUES (2757,6859,'�����',10);
INSERT INTO `n_nm` VALUES (2758,2806,'�������',1);
INSERT INTO `n_nm` VALUES (2759,2494,'���� ����',15);
INSERT INTO `n_nm` VALUES (2760,6540,'�����',27);
INSERT INTO `n_nm` VALUES (2761,4743,'��������',22);
INSERT INTO `n_nm` VALUES (2762,5900,'������',16);
INSERT INTO `n_nm` VALUES (2763,4535,'������',14);
INSERT INTO `n_nm` VALUES (2764,9171,'������',3);
INSERT INTO `n_nm` VALUES (2765,2817,'��������',1);
INSERT INTO `n_nm` VALUES (2766,5049,'�������',5);
INSERT INTO `n_nm` VALUES (2767,3036,'��������',7);
INSERT INTO `n_nm` VALUES (2768,2588,'�������',11);
INSERT INTO `n_nm` VALUES (2769,6783,'������',10);
INSERT INTO `n_nm` VALUES (2770,5967,'�������',16);
INSERT INTO `n_nm` VALUES (2771,4286,'������',17);
INSERT INTO `n_nm` VALUES (2772,6595,'������',27);
INSERT INTO `n_nm` VALUES (2773,5987,'������',16);
INSERT INTO `n_nm` VALUES (2774,5520,'��������',12);
INSERT INTO `n_nm` VALUES (2775,5343,'���������',8);
INSERT INTO `n_nm` VALUES (2776,5085,'������',5);
INSERT INTO `n_nm` VALUES (2777,5222,'��������',5);
INSERT INTO `n_nm` VALUES (2778,4463,'��������',14);
INSERT INTO `n_nm` VALUES (2779,2567,'�����',11);
INSERT INTO `n_nm` VALUES (2780,4928,'�����',22);
INSERT INTO `n_nm` VALUES (2781,2268,'���������',23);
INSERT INTO `n_nm` VALUES (2782,3523,'��������',13);
INSERT INTO `n_nm` VALUES (2783,3341,'��������',7);
INSERT INTO `n_nm` VALUES (2784,2342,'��������',15);
INSERT INTO `n_nm` VALUES (2785,9428,'�������',9);
INSERT INTO `n_nm` VALUES (2786,2119,'�������',23);
INSERT INTO `n_nm` VALUES (2787,8754,'������',29);
INSERT INTO `n_nm` VALUES (2788,3073,'������',7);
INSERT INTO `n_nm` VALUES (2789,2207,'�������',23);
INSERT INTO `n_nm` VALUES (2790,5570,'�������',12);
INSERT INTO `n_nm` VALUES (2791,6810,'��������',10);
INSERT INTO `n_nm` VALUES (2792,2816,'������',1);
INSERT INTO `n_nm` VALUES (2793,3445,'�������',13);
INSERT INTO `n_nm` VALUES (2794,2749,'�����',1);
INSERT INTO `n_nm` VALUES (2795,5624,'����� ������',12);
INSERT INTO `n_nm` VALUES (2796,6466,'���������',27);
INSERT INTO `n_nm` VALUES (2797,2481,'����������',15);
INSERT INTO `n_nm` VALUES (2798,5578,'�������',12);
INSERT INTO `n_nm` VALUES (2799,2808,'�������',1);
INSERT INTO `n_nm` VALUES (2800,4929,'�����',22);
INSERT INTO `n_nm` VALUES (2801,6967,'�������',10);
INSERT INTO `n_nm` VALUES (2802,2962,'�����',1);
INSERT INTO `n_nm` VALUES (2803,8656,'�������',29);
INSERT INTO `n_nm` VALUES (2804,8107,'������',2);
INSERT INTO `n_nm` VALUES (2805,4921,'������',22);
INSERT INTO `n_nm` VALUES (2806,3168,'���',7);
INSERT INTO `n_nm` VALUES (2807,4858,'��������',22);
INSERT INTO `n_nm` VALUES (2808,4105,'�������',17);
INSERT INTO `n_nm` VALUES (2809,7760,'�����',26);
INSERT INTO `n_nm` VALUES (2810,2809,'��������',1);
INSERT INTO `n_nm` VALUES (2811,2597,'�����',11);
INSERT INTO `n_nm` VALUES (2812,3051,'������',7);
INSERT INTO `n_nm` VALUES (2813,6936,'�����',10);
INSERT INTO `n_nm` VALUES (2814,3489,'�����',13);
INSERT INTO `n_nm` VALUES (2815,4784,'�����',22);
INSERT INTO `n_nm` VALUES (2816,2212,'�������',23);
INSERT INTO `n_nm` VALUES (2817,7242,'������',18);
INSERT INTO `n_nm` VALUES (2818,2158,'�������',23);
INSERT INTO `n_nm` VALUES (2819,3352,'�������',7);
INSERT INTO `n_nm` VALUES (2820,2547,'�����',11);
INSERT INTO `n_nm` VALUES (2821,5568,'�����',12);
INSERT INTO `n_nm` VALUES (2822,2023,'�����',23);
INSERT INTO `n_nm` VALUES (2823,9951,'���� ����',28);
INSERT INTO `n_nm` VALUES (2824,6645,'��������',10);
INSERT INTO `n_nm` VALUES (2825,2743,'�����',1);
INSERT INTO `n_nm` VALUES (2826,6541,'������',27);
INSERT INTO `n_nm` VALUES (2827,7642,'������',20);
INSERT INTO `n_nm` VALUES (2828,8573,'������',2);
INSERT INTO `n_nm` VALUES (2829,2144,'��������',23);
INSERT INTO `n_nm` VALUES (2830,2433,'�����',15);
INSERT INTO `n_nm` VALUES (2831,9869,'�����',28);
INSERT INTO `n_nm` VALUES (2832,6070,'�����',25);
INSERT INTO `n_nm` VALUES (2833,7741,'�����',26);
INSERT INTO `n_nm` VALUES (2834,5500,'�����',12);
INSERT INTO `n_nm` VALUES (2835,5423,'��������',8);
INSERT INTO `n_nm` VALUES (2836,7291,'������',18);
INSERT INTO `n_nm` VALUES (2837,4908,'�����',22);
INSERT INTO `n_nm` VALUES (2838,9430,'��������',9);
INSERT INTO `n_nm` VALUES (2839,2737,'�������',1);
INSERT INTO `n_nm` VALUES (2840,5345,'����',8);
INSERT INTO `n_nm` VALUES (2841,8440,'��������',2);
INSERT INTO `n_nm` VALUES (2842,9746,'������',28);
INSERT INTO `n_nm` VALUES (2843,6552,'�����',27);
INSERT INTO `n_nm` VALUES (2844,1151,'�����',23);
INSERT INTO `n_nm` VALUES (2845,4489,'�����',14);
INSERT INTO `n_nm` VALUES (2846,6062,'�����',25);
INSERT INTO `n_nm` VALUES (2847,5172,'�����',5);
INSERT INTO `n_nm` VALUES (2848,6894,'�����������',10);
INSERT INTO `n_nm` VALUES (2849,9414,'�������',9);
INSERT INTO `n_nm` VALUES (2850,8688,'�������',29);
INSERT INTO `n_nm` VALUES (2851,8277,'�������',2);
INSERT INTO `n_nm` VALUES (2852,2821,'��������',1);
INSERT INTO `n_nm` VALUES (2853,5739,'������',12);
INSERT INTO `n_nm` VALUES (2854,5954,'������',16);
INSERT INTO `n_nm` VALUES (2855,8466,'������',2);
INSERT INTO `n_nm` VALUES (2856,9541,'�������',9);
INSERT INTO `n_nm` VALUES (2857,7290,'�������',18);
INSERT INTO `n_nm` VALUES (2858,2507,'�����',11);
INSERT INTO `n_nm` VALUES (2859,2656,'�������',11);
INSERT INTO `n_nm` VALUES (2860,1513,'��������',23);
INSERT INTO `n_nm` VALUES (2861,3600,'���',13);
INSERT INTO `n_nm` VALUES (2862,7135,'��� ��������',19);
INSERT INTO `n_nm` VALUES (2863,5669,'�����',12);
INSERT INTO `n_nm` VALUES (2864,9397,'�������',9);
INSERT INTO `n_nm` VALUES (2865,2562,'�������',11);
INSERT INTO `n_nm` VALUES (2866,2465,'�������',15);
INSERT INTO `n_nm` VALUES (2867,7838,'�����',26);
INSERT INTO `n_nm` VALUES (2868,9237,'�������',3);
INSERT INTO `n_nm` VALUES (2869,2252,'�������',23);
INSERT INTO `n_nm` VALUES (2870,2193,'�����',23);
INSERT INTO `n_nm` VALUES (2871,7445,'���������',18);
INSERT INTO `n_nm` VALUES (2872,5770,'�������',12);
INSERT INTO `n_nm` VALUES (2873,2296,'������',23);
INSERT INTO `n_nm` VALUES (2874,6921,'�������',10);
INSERT INTO `n_nm` VALUES (2875,7439,'������',18);
INSERT INTO `n_nm` VALUES (2876,6638,'������',10);
INSERT INTO `n_nm` VALUES (2877,2182,'����',23);
INSERT INTO `n_nm` VALUES (2878,2971,'�������',1);
INSERT INTO `n_nm` VALUES (2879,8216,'����',2);
INSERT INTO `n_nm` VALUES (2880,4726,'����',22);
INSERT INTO `n_nm` VALUES (2881,4241,'��������',17);
INSERT INTO `n_nm` VALUES (2882,4241,'����',17);
INSERT INTO `n_nm` VALUES (2883,2928,'����',1);
INSERT INTO `n_nm` VALUES (2884,7534,'�����',20);
INSERT INTO `n_nm` VALUES (2885,4188,'�����',17);
INSERT INTO `n_nm` VALUES (2886,9148,'����� ����������',3);
INSERT INTO `n_nm` VALUES (2887,8949,'�������',21);
INSERT INTO `n_nm` VALUES (2888,8947,'�������� ������',21);
INSERT INTO `n_nm` VALUES (2889,5955,'��������',16);
INSERT INTO `n_nm` VALUES (2890,6267,'��������',25);
INSERT INTO `n_nm` VALUES (2891,6342,'��������',27);
INSERT INTO `n_nm` VALUES (2892,5176,'�������',5);
INSERT INTO `n_nm` VALUES (2893,6550,'�������',27);
INSERT INTO `n_nm` VALUES (2894,6796,'������',10);
INSERT INTO `n_nm` VALUES (2895,7980,'��������',26);
INSERT INTO `n_nm` VALUES (2896,7843,'������',26);
INSERT INTO `n_nm` VALUES (2897,2061,'�������',23);
INSERT INTO `n_nm` VALUES (2898,2820,'��������',1);
INSERT INTO `n_nm` VALUES (2899,2811,'�������',1);
INSERT INTO `n_nm` VALUES (2900,4833,'�����',22);
INSERT INTO `n_nm` VALUES (2901,2352,'�����',15);
INSERT INTO `n_nm` VALUES (2902,8685,'�����',29);
INSERT INTO `n_nm` VALUES (2903,4785,'�����',22);
INSERT INTO `n_nm` VALUES (2904,6050,'�����',25);
INSERT INTO `n_nm` VALUES (2905,9525,'��������',9);
INSERT INTO `n_nm` VALUES (2906,6684,'��������',10);
INSERT INTO `n_nm` VALUES (2907,8570,'��������',2);
INSERT INTO `n_nm` VALUES (2908,5307,'��������',8);
INSERT INTO `n_nm` VALUES (2909,3038,'��������',7);
INSERT INTO `n_nm` VALUES (2910,3159,'��������',7);
INSERT INTO `n_nm` VALUES (2911,3165,'�������',7);
INSERT INTO `n_nm` VALUES (2912,2791,'������',1);
INSERT INTO `n_nm` VALUES (2913,6198,'���� ����',25);
INSERT INTO `n_nm` VALUES (2914,2474,'�������',15);
INSERT INTO `n_nm` VALUES (2915,5140,'��������',5);
INSERT INTO `n_nm` VALUES (2916,6397,'��������',27);
INSERT INTO `n_nm` VALUES (2917,8518,'�������',2);
INSERT INTO `n_nm` VALUES (2918,4238,'�������',17);
INSERT INTO `n_nm` VALUES (2919,4818,'�������',22);
INSERT INTO `n_nm` VALUES (2920,6045,'�������',25);
INSERT INTO `n_nm` VALUES (2921,6667,'�������',10);
INSERT INTO `n_nm` VALUES (2922,9948,'�����',28);
INSERT INTO `n_nm` VALUES (2923,9617,'������',9);
INSERT INTO `n_nm` VALUES (2924,4416,'������',14);
INSERT INTO `n_nm` VALUES (2925,4710,'����������',22);
INSERT INTO `n_nm` VALUES (2926,3448,'�����',13);
INSERT INTO `n_nm` VALUES (2927,4900,'�����',22);
INSERT INTO `n_nm` VALUES (2928,9971,'������',28);
INSERT INTO `n_nm` VALUES (2929,2022,'�������',23);
INSERT INTO `n_nm` VALUES (2930,6383,'�������',27);
INSERT INTO `n_nm` VALUES (2931,6480,'���������',27);
INSERT INTO `n_nm` VALUES (2932,6063,'���������',25);
INSERT INTO `n_nm` VALUES (2933,2549,'����������',11);
INSERT INTO `n_nm` VALUES (2934,3777,'����� �������',6);
INSERT INTO `n_nm` VALUES (2935,5085,'������',5);
INSERT INTO `n_nm` VALUES (2936,6675,'����������',10);
INSERT INTO `n_nm` VALUES (2937,6784,'���',10);
INSERT INTO `n_nm` VALUES (2938,7750,'�������������',26);
INSERT INTO `n_nm` VALUES (2939,6640,'���������',10);
INSERT INTO `n_nm` VALUES (2940,7785,'������',18);
INSERT INTO `n_nm` VALUES (2941,2124,'��������',23);
INSERT INTO `n_nm` VALUES (2942,3850,'������',6);
INSERT INTO `n_nm` VALUES (2943,2225,'���� ��������',23);
INSERT INTO `n_nm` VALUES (2944,2669,'���� ����',11);
INSERT INTO `n_nm` VALUES (2945,2021,'���� ������',23);
INSERT INTO `n_nm` VALUES (2946,6392,'������',27);
INSERT INTO `n_nm` VALUES (2947,4891,'������',22);
INSERT INTO `n_nm` VALUES (2948,8689,'��������',29);
INSERT INTO `n_nm` VALUES (2949,2691,'���� ���������',11);
INSERT INTO `n_nm` VALUES (2950,3749,'���� ��������',6);
INSERT INTO `n_nm` VALUES (2951,9474,'���� �����',9);
INSERT INTO `n_nm` VALUES (2952,9559,'������',9);
INSERT INTO `n_nm` VALUES (2953,8327,'������',2);
INSERT INTO `n_nm` VALUES (2954,5335,'������',8);
INSERT INTO `n_nm` VALUES (2955,6593,'������',27);
INSERT INTO `n_nm` VALUES (2956,5582,'��������',12);
INSERT INTO `n_nm` VALUES (2957,4742,'����� ����',22);
INSERT INTO `n_nm` VALUES (2958,6045,'����� �����',25);
INSERT INTO `n_nm` VALUES (2959,5729,'����� �������',12);
INSERT INTO `n_nm` VALUES (2960,8519,'����� ������',2);
INSERT INTO `n_nm` VALUES (2961,9386,'����� ��������',9);
INSERT INTO `n_nm` VALUES (2962,7997,'����� ��������',26);
INSERT INTO `n_nm` VALUES (2963,6941,'����� �����',10);
INSERT INTO `n_nm` VALUES (2964,5370,'����� ���������',8);
INSERT INTO `n_nm` VALUES (2965,6479,'����� �����',27);
INSERT INTO `n_nm` VALUES (2966,5432,'����� ������',8);
INSERT INTO `n_nm` VALUES (2967,2184,'����� �����',23);
INSERT INTO `n_nm` VALUES (2968,5365,'����� ���������',8);
INSERT INTO `n_nm` VALUES (2969,2800,'����� �����',1);
INSERT INTO `n_nm` VALUES (2970,5028,'����� ������',5);
INSERT INTO `n_nm` VALUES (2971,6425,'����� �������',27);
INSERT INTO `n_nm` VALUES (2972,6476,'����� �������',27);
INSERT INTO `n_nm` VALUES (2973,7067,'����� �������',19);
INSERT INTO `n_nm` VALUES (2974,6558,'����� �������',27);
INSERT INTO `n_nm` VALUES (2975,6227,'����� �������',25);
INSERT INTO `n_nm` VALUES (2976,6052,'����� �������',25);
INSERT INTO `n_nm` VALUES (2977,6927,'����� ��������',10);
INSERT INTO `n_nm` VALUES (2978,8756,'����� ��������',29);
INSERT INTO `n_nm` VALUES (2979,4951,'����� �������',22);
INSERT INTO `n_nm` VALUES (2980,6482,'����� ������',27);
INSERT INTO `n_nm` VALUES (2981,8981,'����� ����',21);
INSERT INTO `n_nm` VALUES (2982,6228,'����� �������',25);
INSERT INTO `n_nm` VALUES (2983,8350,'����� �������',2);
INSERT INTO `n_nm` VALUES (2984,7923,'����� ��������',26);
INSERT INTO `n_nm` VALUES (2985,8857,'����� ��������',21);
INSERT INTO `n_nm` VALUES (2986,8751,'����� �������',29);
INSERT INTO `n_nm` VALUES (2987,6898,'������',10);
INSERT INTO `n_nm` VALUES (2988,1362,'���� ������',23);
INSERT INTO `n_nm` VALUES (2989,4450,'���� ������',14);
INSERT INTO `n_nm` VALUES (2990,4183,'���� �������',17);
INSERT INTO `n_nm` VALUES (2991,2205,'���� ������',23);
INSERT INTO `n_nm` VALUES (2992,3078,'���� ������',7);
INSERT INTO `n_nm` VALUES (2993,2636,'���� ����',11);
INSERT INTO `n_nm` VALUES (2994,7978,'����������',26);
INSERT INTO `n_nm` VALUES (2995,9871,'�������',28);
INSERT INTO `n_nm` VALUES (2996,8650,'�������',29);
INSERT INTO `n_nm` VALUES (2997,8737,'����������',29);
INSERT INTO `n_nm` VALUES (2998,3255,'�������',7);
INSERT INTO `n_nm` VALUES (2999,5304,'������',8);
INSERT INTO `n_nm` VALUES (3000,5917,'�������',16);
INSERT INTO `n_nm` VALUES (3001,5050,'��������',5);
INSERT INTO `n_nm` VALUES (3002,5367,'��������',8);
INSERT INTO `n_nm` VALUES (3003,6935,'����� �������',10);
INSERT INTO `n_nm` VALUES (3004,6394,'����� �����',27);
INSERT INTO `n_nm` VALUES (3005,5734,'����� �����',12);
INSERT INTO `n_nm` VALUES (3006,8742,'����� ��������',29);
INSERT INTO `n_nm` VALUES (3007,7429,'����� �������',18);
INSERT INTO `n_nm` VALUES (3008,7620,'����� ���������',20);
INSERT INTO `n_nm` VALUES (3009,4194,'����� ������',17);
INSERT INTO `n_nm` VALUES (3010,8743,'���������',29);
INSERT INTO `n_nm` VALUES (3011,2168,'���������� ����',23);
INSERT INTO `n_nm` VALUES (3012,4245,'��������',17);
INSERT INTO `n_nm` VALUES (3013,9224,'��������',3);
INSERT INTO `n_nm` VALUES (3014,6390,'��������',27);
INSERT INTO `n_nm` VALUES (3015,7856,'�����������',26);
INSERT INTO `n_nm` VALUES (3016,2288,'�����������',23);
INSERT INTO `n_nm` VALUES (3017,3354,'�����������',7);
INSERT INTO `n_nm` VALUES (3018,7285,'�����������',18);
INSERT INTO `n_nm` VALUES (3019,7292,'����������',18);
INSERT INTO `n_nm` VALUES (3020,6357,'������',27);
INSERT INTO `n_nm` VALUES (3021,6585,'��������',27);
INSERT INTO `n_nm` VALUES (3022,5363,'�������',8);
INSERT INTO `n_nm` VALUES (3023,4137,'������',17);
INSERT INTO `n_nm` VALUES (3024,8453,'�������',2);
INSERT INTO `n_nm` VALUES (3025,6152,'��������',25);
INSERT INTO `n_nm` VALUES (3026,4138,'�������� ������',17);
INSERT INTO `n_nm` VALUES (3027,5392,'�����',8);
INSERT INTO `n_nm` VALUES (3028,7967,'���������',26);
INSERT INTO `n_nm` VALUES (3029,6800,'�������',10);
INSERT INTO `n_nm` VALUES (3030,5070,'���������',5);
INSERT INTO `n_nm` VALUES (3031,9745,'�����',28);
INSERT INTO `n_nm` VALUES (3032,5035,'��������',5);
INSERT INTO `n_nm` VALUES (3033,2870,'�������������',1);
INSERT INTO `n_nm` VALUES (3034,8154,'�������',2);
INSERT INTO `n_nm` VALUES (3035,4365,'������ ����',17);
INSERT INTO `n_nm` VALUES (3036,2867,'������ ����',1);
INSERT INTO `n_nm` VALUES (3037,5097,'���������',5);
INSERT INTO `n_nm` VALUES (3038,5445,'���������',8);
INSERT INTO `n_nm` VALUES (3039,2044,'������',23);
INSERT INTO `n_nm` VALUES (3040,6247,'�������',25);
INSERT INTO `n_nm` VALUES (3041,9973,'�������',28);
INSERT INTO `n_nm` VALUES (3042,4108,'�������',17);
INSERT INTO `n_nm` VALUES (3043,3133,'������� �������',7);
INSERT INTO `n_nm` VALUES (3044,7058,'������',19);
INSERT INTO `n_nm` VALUES (3045,6745,'�������',10);
INSERT INTO `n_nm` VALUES (3046,3459,'���������',13);
INSERT INTO `n_nm` VALUES (3047,2725,'��������',1);
INSERT INTO `n_nm` VALUES (3048,5360,'�����������',8);
INSERT INTO `n_nm` VALUES (3049,2949,'�������',1);
INSERT INTO `n_nm` VALUES (3050,7869,'�������',26);
INSERT INTO `n_nm` VALUES (3051,5084,'�����',5);
INSERT INTO `n_nm` VALUES (3052,5198,'���������',5);
INSERT INTO `n_nm` VALUES (3053,6388,'���������',27);
INSERT INTO `n_nm` VALUES (3054,5351,'���������',8);
INSERT INTO `n_nm` VALUES (3055,6535,'��������',27);
INSERT INTO `n_nm` VALUES (3056,2849,'��������',1);
INSERT INTO `n_nm` VALUES (3057,5081,'���������',5);
INSERT INTO `n_nm` VALUES (3058,6276,'����',25);
INSERT INTO `n_nm` VALUES (3059,5647,'��������',12);
INSERT INTO `n_nm` VALUES (3060,8987,'������',21);
INSERT INTO `n_nm` VALUES (3061,6865,'�������',10);
INSERT INTO `n_nm` VALUES (3062,6598,'����� ���',27);
INSERT INTO `n_nm` VALUES (3063,8639,'����� ��������',29);
INSERT INTO `n_nm` VALUES (3064,4637,'������ ������',14);
INSERT INTO `n_nm` VALUES (3065,3845,'���������',6);
INSERT INTO `n_nm` VALUES (3066,3670,'��������',13);
INSERT INTO `n_nm` VALUES (3067,6294,'�����������',25);
INSERT INTO `n_nm` VALUES (3068,7319,'��������',18);
INSERT INTO `n_nm` VALUES (3069,9238,'�������',3);
INSERT INTO `n_nm` VALUES (3070,7863,'��������',26);
INSERT INTO `n_nm` VALUES (3071,3947,'���������',6);
INSERT INTO `n_nm` VALUES (3072,6235,'������',25);
INSERT INTO `n_nm` VALUES (3073,9388,'������',9);
INSERT INTO `n_nm` VALUES (3074,8214,'������',2);
INSERT INTO `n_nm` VALUES (3075,8644,'�����',29);
INSERT INTO `n_nm` VALUES (3076,7672,'������',20);
INSERT INTO `n_nm` VALUES (3077,5343,'�������',8);
INSERT INTO `n_nm` VALUES (3078,3100,'������',7);
INSERT INTO `n_nm` VALUES (3079,3515,'�������',13);
INSERT INTO `n_nm` VALUES (3080,6521,'�����',27);
INSERT INTO `n_nm` VALUES (3081,2820,'������',1);
INSERT INTO `n_nm` VALUES (3082,8755,'�������',29);
INSERT INTO `n_nm` VALUES (3083,3472,'������',13);
INSERT INTO `n_nm` VALUES (3084,9885,'���������',28);
INSERT INTO `n_nm` VALUES (3085,2893,'�������',1);
INSERT INTO `n_nm` VALUES (3086,4482,'����������',14);
INSERT INTO `n_nm` VALUES (3087,5147,'�������',5);
INSERT INTO `n_nm` VALUES (3088,6430,'���������',27);
INSERT INTO `n_nm` VALUES (3089,2772,'�����',1);
INSERT INTO `n_nm` VALUES (3090,6938,'�������',10);
INSERT INTO `n_nm` VALUES (3091,9291,'���������',3);
INSERT INTO `n_nm` VALUES (3092,6873,'���������',10);
INSERT INTO `n_nm` VALUES (3093,6890,'��������',10);
INSERT INTO `n_nm` VALUES (3094,9867,'���������',28);
INSERT INTO `n_nm` VALUES (3095,9375,'���������',9);
INSERT INTO `n_nm` VALUES (3096,2556,'�������',11);
INSERT INTO `n_nm` VALUES (3097,7091,'�����',19);
INSERT INTO `n_nm` VALUES (3098,5843,'�����',16);
INSERT INTO `n_nm` VALUES (3099,8868,'���������',21);
INSERT INTO `n_nm` VALUES (3100,5307,'���������',8);
INSERT INTO `n_nm` VALUES (3101,2060,'��������',23);
INSERT INTO `n_nm` VALUES (3102,2754,'������',1);
INSERT INTO `n_nm` VALUES (3103,7997,'������',26);
INSERT INTO `n_nm` VALUES (3104,2353,'������',15);
INSERT INTO `n_nm` VALUES (3105,3330,'�����',7);
INSERT INTO `n_nm` VALUES (3106,5098,'��������',5);
INSERT INTO `n_nm` VALUES (3107,5572,'�����',12);
INSERT INTO `n_nm` VALUES (3108,2826,'�������',1);
INSERT INTO `n_nm` VALUES (3109,6660,'����������',10);
INSERT INTO `n_nm` VALUES (3110,9431,'�����������',9);
INSERT INTO `n_nm` VALUES (3111,7787,'�����������',18);
INSERT INTO `n_nm` VALUES (3112,8657,'�����������',29);
INSERT INTO `n_nm` VALUES (3113,9859,'��������',28);
INSERT INTO `n_nm` VALUES (3114,2280,'��������',23);
INSERT INTO `n_nm` VALUES (3115,4921,'����',22);
INSERT INTO `n_nm` VALUES (3116,4191,'������',17);
INSERT INTO `n_nm` VALUES (3117,5350,'�������',8);
INSERT INTO `n_nm` VALUES (3118,5627,'�������',12);
INSERT INTO `n_nm` VALUES (3119,7984,'������',26);
INSERT INTO `n_nm` VALUES (3120,5968,'���������',16);
INSERT INTO `n_nm` VALUES (3121,4779,'�������',22);
INSERT INTO `n_nm` VALUES (3122,5345,'��������',8);
INSERT INTO `n_nm` VALUES (3123,2475,'���������',15);
INSERT INTO `n_nm` VALUES (3124,2478,'����������',15);
INSERT INTO `n_nm` VALUES (3125,3846,'������� ����',6);
INSERT INTO `n_nm` VALUES (3126,2220,'���� ��������',23);
INSERT INTO `n_nm` VALUES (3127,5044,'�����',5);
INSERT INTO `n_nm` VALUES (3128,5083,'�������',5);
INSERT INTO `n_nm` VALUES (3129,6343,'��������� ����',27);
INSERT INTO `n_nm` VALUES (3130,6665,'��������',10);
INSERT INTO `n_nm` VALUES (3131,9372,'�������',9);
INSERT INTO `n_nm` VALUES (3132,5735,'��������',12);
INSERT INTO `n_nm` VALUES (3133,2086,'�������',23);
INSERT INTO `n_nm` VALUES (3134,7751,'�������',26);
INSERT INTO `n_nm` VALUES (3135,6255,'������',25);
INSERT INTO `n_nm` VALUES (3136,5158,'������',5);
INSERT INTO `n_nm` VALUES (3137,9921,'�������',28);
INSERT INTO `n_nm` VALUES (3138,1289,'��������',23);
INSERT INTO `n_nm` VALUES (3139,8119,'����������',2);
INSERT INTO `n_nm` VALUES (3140,5094,'��������',5);
INSERT INTO `n_nm` VALUES (3141,4443,'�������',14);
INSERT INTO `n_nm` VALUES (3142,2857,'������',1);
INSERT INTO `n_nm` VALUES (3143,4909,'��������',22);
INSERT INTO `n_nm` VALUES (3144,3464,'��������',13);
INSERT INTO `n_nm` VALUES (3145,6051,'���������',25);
INSERT INTO `n_nm` VALUES (3146,3355,'���������',7);
INSERT INTO `n_nm` VALUES (3147,5347,'����������',8);
INSERT INTO `n_nm` VALUES (3148,9284,'�������',3);
INSERT INTO `n_nm` VALUES (3149,6537,'�������',27);
INSERT INTO `n_nm` VALUES (3150,4820,'���������',22);
INSERT INTO `n_nm` VALUES (3151,5248,'�������',5);
INSERT INTO `n_nm` VALUES (3152,4361,'�������',17);
INSERT INTO `n_nm` VALUES (3153,2862,'�������',1);
INSERT INTO `n_nm` VALUES (3154,5365,'�������',8);
INSERT INTO `n_nm` VALUES (3155,5343,'��������',8);
INSERT INTO `n_nm` VALUES (3156,6840,'��������',10);
INSERT INTO `n_nm` VALUES (3157,5035,'���������� ���',5);
INSERT INTO `n_nm` VALUES (3158,5767,'���������',12);
INSERT INTO `n_nm` VALUES (3159,9228,'����� �������',3);
INSERT INTO `n_nm` VALUES (3160,8364,'��������',2);
INSERT INTO `n_nm` VALUES (3161,5428,'������',8);
INSERT INTO `n_nm` VALUES (3162,6531,'���������',27);
INSERT INTO `n_nm` VALUES (3163,8886,'�������',21);
INSERT INTO `n_nm` VALUES (3164,2654,'���������',11);
INSERT INTO `n_nm` VALUES (3165,8960,'���������',21);
INSERT INTO `n_nm` VALUES (3166,5441,'�������',8);
INSERT INTO `n_nm` VALUES (3167,6781,'�������',10);
INSERT INTO `n_nm` VALUES (3168,9932,'������',28);
INSERT INTO `n_nm` VALUES (3169,6052,'������',25);
INSERT INTO `n_nm` VALUES (3170,8627,'������',29);
INSERT INTO `n_nm` VALUES (3171,7943,'�������',26);
INSERT INTO `n_nm` VALUES (3172,7165,'��������',19);
INSERT INTO `n_nm` VALUES (3173,5350,'��������',8);
INSERT INTO `n_nm` VALUES (3174,4761,'��������',22);
INSERT INTO `n_nm` VALUES (3175,9665,'��������',9);
INSERT INTO `n_nm` VALUES (3176,6239,'��������',25);
INSERT INTO `n_nm` VALUES (3177,6867,'��������',10);
INSERT INTO `n_nm` VALUES (3178,6840,'������',10);
INSERT INTO `n_nm` VALUES (3179,8994,'������',21);
INSERT INTO `n_nm` VALUES (3180,9861,'������',28);
INSERT INTO `n_nm` VALUES (3181,3647,'������',13);
INSERT INTO `n_nm` VALUES (3182,4408,'�������',14);
INSERT INTO `n_nm` VALUES (3183,2035,'����� ������',23);
INSERT INTO `n_nm` VALUES (3184,5067,'����� ����',5);
INSERT INTO `n_nm` VALUES (3185,4468,'������ �������',14);
INSERT INTO `n_nm` VALUES (3186,6838,'������ �����',10);
INSERT INTO `n_nm` VALUES (3187,8320,'������ ������',2);
INSERT INTO `n_nm` VALUES (3188,7706,'������',26);
INSERT INTO `n_nm` VALUES (3189,6387,'������',27);
INSERT INTO `n_nm` VALUES (3190,4143,'������ ����',17);
INSERT INTO `n_nm` VALUES (3191,4118,'��������',17);
INSERT INTO `n_nm` VALUES (3192,6542,'�������',27);
INSERT INTO `n_nm` VALUES (3193,6800,'����������',10);
INSERT INTO `n_nm` VALUES (3194,9221,'���������',3);
INSERT INTO `n_nm` VALUES (3195,4750,'����������',22);
INSERT INTO `n_nm` VALUES (3196,3400,'�������',13);
INSERT INTO `n_nm` VALUES (3197,5291,'������',5);
INSERT INTO `n_nm` VALUES (3198,7974,'��������',26);
INSERT INTO `n_nm` VALUES (3199,3145,'��������',7);
INSERT INTO `n_nm` VALUES (3200,7992,'�������',26);
INSERT INTO `n_nm` VALUES (3201,5304,'����������',8);
INSERT INTO `n_nm` VALUES (3202,7248,'�����������',18);
INSERT INTO `n_nm` VALUES (3203,6959,'�������',10);
INSERT INTO `n_nm` VALUES (3204,4333,'��������',17);
INSERT INTO `n_nm` VALUES (3205,6670,'����',10);
INSERT INTO `n_nm` VALUES (3206,9878,'������',28);
INSERT INTO `n_nm` VALUES (3207,4257,'�������',17);
INSERT INTO `n_nm` VALUES (3208,4978,'������',22);
INSERT INTO `n_nm` VALUES (3209,2729,'�������',1);
INSERT INTO `n_nm` VALUES (3210,2477,'����������',15);
INSERT INTO `n_nm` VALUES (3211,1261,'������',23);
INSERT INTO `n_nm` VALUES (3212,6562,'������',27);
INSERT INTO `n_nm` VALUES (3213,2487,'������',15);
INSERT INTO `n_nm` VALUES (3214,3054,'��������',7);
INSERT INTO `n_nm` VALUES (3215,5345,'�������',8);
INSERT INTO `n_nm` VALUES (3216,4362,'��������',17);
INSERT INTO `n_nm` VALUES (3217,6845,'��������',10);
INSERT INTO `n_nm` VALUES (3218,8538,'��������',2);
INSERT INTO `n_nm` VALUES (3219,5367,'�������',8);
INSERT INTO `n_nm` VALUES (3220,4716,'�����',22);
INSERT INTO `n_nm` VALUES (3221,5333,'�����',8);
INSERT INTO `n_nm` VALUES (3222,4249,'�������',17);
INSERT INTO `n_nm` VALUES (3223,6725,'�����',10);
INSERT INTO `n_nm` VALUES (3224,2247,'������',23);
INSERT INTO `n_nm` VALUES (3225,6679,'�������',10);
INSERT INTO `n_nm` VALUES (3226,2437,'������',15);
INSERT INTO `n_nm` VALUES (3227,2623,'���������',11);
INSERT INTO `n_nm` VALUES (3228,2382,'��������',15);
INSERT INTO `n_nm` VALUES (3229,6284,'��������',25);
INSERT INTO `n_nm` VALUES (3230,2139,'��������',23);
INSERT INTO `n_nm` VALUES (3231,6774,'������',10);
INSERT INTO `n_nm` VALUES (3232,5963,'���������',16);
INSERT INTO `n_nm` VALUES (3233,5247,'������',5);
INSERT INTO `n_nm` VALUES (3234,2920,'��������',1);
INSERT INTO `n_nm` VALUES (3235,6527,'�������',27);
INSERT INTO `n_nm` VALUES (3236,2061,'������',23);
INSERT INTO `n_nm` VALUES (3237,5370,'����',8);
INSERT INTO `n_nm` VALUES (3238,8523,'������',2);
INSERT INTO `n_nm` VALUES (3239,6865,'�������',10);
INSERT INTO `n_nm` VALUES (3240,6180,'������',25);
INSERT INTO `n_nm` VALUES (3241,4910,'�������',22);
INSERT INTO `n_nm` VALUES (3242,7323,'�������',18);
INSERT INTO `n_nm` VALUES (3243,6292,'������',25);
INSERT INTO `n_nm` VALUES (3244,6674,'������',10);
INSERT INTO `n_nm` VALUES (3245,8444,'�������',2);
INSERT INTO `n_nm` VALUES (3246,6865,'�������',10);
INSERT INTO `n_nm` VALUES (3247,2655,'��������',11);
INSERT INTO `n_nm` VALUES (3248,4996,'������',22);
INSERT INTO `n_nm` VALUES (3249,5094,'����������',5);
INSERT INTO `n_nm` VALUES (3250,1696,'��������',23);
INSERT INTO `n_nm` VALUES (3251,3443,'�������',13);
INSERT INTO `n_nm` VALUES (3252,8843,'��������',21);
INSERT INTO `n_nm` VALUES (3253,4176,'��������',17);
INSERT INTO `n_nm` VALUES (3254,6497,'�������',27);
INSERT INTO `n_nm` VALUES (3255,7740,'��������',26);
INSERT INTO `n_nm` VALUES (3256,4758,'�������',22);
INSERT INTO `n_nm` VALUES (3257,6459,'��������',27);
INSERT INTO `n_nm` VALUES (3258,4185,'������ ������',17);
INSERT INTO `n_nm` VALUES (3259,6224,'���������',25);
INSERT INTO `n_nm` VALUES (3260,6800,'����',10);
INSERT INTO `n_nm` VALUES (3261,6830,'��������',10);
INSERT INTO `n_nm` VALUES (3262,5752,'��������',12);
INSERT INTO `n_nm` VALUES (3263,4239,'���������� ����',17);
INSERT INTO `n_nm` VALUES (3264,2478,'���������',15);
INSERT INTO `n_nm` VALUES (3265,9962,'����',28);
INSERT INTO `n_nm` VALUES (3266,8929,'�������',21);
INSERT INTO `n_nm` VALUES (3267,5055,'�������',5);
INSERT INTO `n_nm` VALUES (3268,2213,'������',23);
INSERT INTO `n_nm` VALUES (3269,6693,'�������',10);
INSERT INTO `n_nm` VALUES (3270,8431,'���������',2);
INSERT INTO `n_nm` VALUES (3271,6722,'���������',10);
INSERT INTO `n_nm` VALUES (3272,2595,'���������',11);
INSERT INTO `n_nm` VALUES (3273,9229,'�����',3);
INSERT INTO `n_nm` VALUES (3274,1222,'�������',23);
INSERT INTO `n_nm` VALUES (3275,3774,'�����������',6);
INSERT INTO `n_nm` VALUES (3276,2417,'���������',15);
INSERT INTO `n_nm` VALUES (3277,2123,'��������',23);
INSERT INTO `n_nm` VALUES (3278,5231,'�����',5);
INSERT INTO `n_nm` VALUES (3279,4187,'��������',17);
INSERT INTO `n_nm` VALUES (3280,4990,'��������',22);
INSERT INTO `n_nm` VALUES (3281,2213,'��������',23);
INSERT INTO `n_nm` VALUES (3282,2594,'��������� �������',11);
INSERT INTO `n_nm` VALUES (3283,2477,'���������',15);
INSERT INTO `n_nm` VALUES (3284,7251,'��������',18);
INSERT INTO `n_nm` VALUES (3285,5070,'����������',5);
INSERT INTO `n_nm` VALUES (3286,5350,'����������',8);
INSERT INTO `n_nm` VALUES (3287,8684,'��������',29);
INSERT INTO `n_nm` VALUES (3288,9692,'�������',9);
INSERT INTO `n_nm` VALUES (3289,8993,'�������',21);
INSERT INTO `n_nm` VALUES (3290,2061,'���������',23);
INSERT INTO `n_nm` VALUES (3291,5380,'��������',8);
INSERT INTO `n_nm` VALUES (3292,6797,'�������',10);
INSERT INTO `n_nm` VALUES (3293,9234,'������',3);
INSERT INTO `n_nm` VALUES (3294,5367,'�������',8);
INSERT INTO `n_nm` VALUES (3295,6831,'������ ����������',10);
INSERT INTO `n_nm` VALUES (3296,9223,'������ ������',3);
INSERT INTO `n_nm` VALUES (3297,2396,'�����������',15);
INSERT INTO `n_nm` VALUES (3298,8230,'�������',2);
INSERT INTO `n_nm` VALUES (3299,2213,'�����',23);
INSERT INTO `n_nm` VALUES (3300,3039,'������',7);
INSERT INTO `n_nm` VALUES (3301,5097,'�������',5);
INSERT INTO `n_nm` VALUES (3302,3241,'�������',7);
INSERT INTO `n_nm` VALUES (3303,5365,'����������',8);
INSERT INTO `n_nm` VALUES (3304,9955,'������ �������',28);
INSERT INTO `n_nm` VALUES (3305,9172,'����������',3);
INSERT INTO `n_nm` VALUES (3306,6190,'���������',25);
INSERT INTO `n_nm` VALUES (3307,5874,'���������',16);
INSERT INTO `n_nm` VALUES (3308,2406,'���������',15);
INSERT INTO `n_nm` VALUES (3309,8873,'���������',21);
INSERT INTO `n_nm` VALUES (3310,5168,'���������',5);
INSERT INTO `n_nm` VALUES (3311,5351,'���������',8);
INSERT INTO `n_nm` VALUES (3312,2599,'�����������',11);
INSERT INTO `n_nm` VALUES (3313,3429,'��������',13);
INSERT INTO `n_nm` VALUES (3314,7057,'��������',19);
INSERT INTO `n_nm` VALUES (3315,6364,'��������',27);
INSERT INTO `n_nm` VALUES (3316,5070,'���������',5);
INSERT INTO `n_nm` VALUES (3317,5098,'����������',5);
INSERT INTO `n_nm` VALUES (3318,5345,'����������',8);
INSERT INTO `n_nm` VALUES (3319,5940,'�������',16);
INSERT INTO `n_nm` VALUES (3320,2839,'�������',1);
INSERT INTO `n_nm` VALUES (3321,5068,'�����',5);
INSERT INTO `n_nm` VALUES (3322,8995,'����� ������',21);
INSERT INTO `n_nm` VALUES (3323,7079,'������',19);
INSERT INTO `n_nm` VALUES (3324,5097,'�������',5);
INSERT INTO `n_nm` VALUES (3325,9883,'���� ���� ����',28);
INSERT INTO `n_nm` VALUES (3326,5169,'���� ��������',5);
INSERT INTO `n_nm` VALUES (3327,8900,'���� ������',21);
INSERT INTO `n_nm` VALUES (3328,9493,'���� ������',9);
INSERT INTO `n_nm` VALUES (3329,6595,'���� ������',27);
INSERT INTO `n_nm` VALUES (3330,2925,'���� �����',1);
INSERT INTO `n_nm` VALUES (3331,4581,'���� ������',14);
INSERT INTO `n_nm` VALUES (3332,6191,'���� ������',25);
INSERT INTO `n_nm` VALUES (3333,6330,'���� �������',27);
INSERT INTO `n_nm` VALUES (3334,7582,'���� ������',20);
INSERT INTO `n_nm` VALUES (3335,7645,'���� �����',20);
INSERT INTO `n_nm` VALUES (3336,9116,'���� �����',3);
INSERT INTO `n_nm` VALUES (3337,9149,'��������',3);
INSERT INTO `n_nm` VALUES (3338,4262,'��������',17);
INSERT INTO `n_nm` VALUES (3339,5332,'���������',8);
INSERT INTO `n_nm` VALUES (3340,8853,'��������',21);
INSERT INTO `n_nm` VALUES (3341,2147,'��������',23);
INSERT INTO `n_nm` VALUES (3342,5950,'��������',16);
INSERT INTO `n_nm` VALUES (3343,7133,'�������',19);
INSERT INTO `n_nm` VALUES (3344,4265,'���� �����',17);
INSERT INTO `n_nm` VALUES (3345,1280,'���� �����',23);
INSERT INTO `n_nm` VALUES (3346,9900,'���� �����',28);
INSERT INTO `n_nm` VALUES (3347,6710,'���� �����',10);
INSERT INTO `n_nm` VALUES (3348,2110,'���� ���',23);
INSERT INTO `n_nm` VALUES (3349,2531,'���� ������',11);
INSERT INTO `n_nm` VALUES (3350,9356,'���� ������',9);
INSERT INTO `n_nm` VALUES (3351,2212,'���� �����',23);
INSERT INTO `n_nm` VALUES (3352,5175,'���� �������',5);
INSERT INTO `n_nm` VALUES (3353,2814,'���� �������',1);
INSERT INTO `n_nm` VALUES (3354,4167,'���� ��������',17);
INSERT INTO `n_nm` VALUES (3355,2874,'���� ���������',1);
INSERT INTO `n_nm` VALUES (3356,2923,'���� �����',1);
INSERT INTO `n_nm` VALUES (3357,9113,'���� �������',3);
INSERT INTO `n_nm` VALUES (3358,8152,'���� ����������',2);
INSERT INTO `n_nm` VALUES (3359,5069,'���� ����',5);
INSERT INTO `n_nm` VALUES (3360,2847,'���� ����',1);
INSERT INTO `n_nm` VALUES (3361,2534,'���� ����',11);
INSERT INTO `n_nm` VALUES (3362,3784,'���� ����',6);
INSERT INTO `n_nm` VALUES (3363,7052,'���� ����',19);
INSERT INTO `n_nm` VALUES (3364,2016,'���� ����',23);
INSERT INTO `n_nm` VALUES (3365,4221,'���� ����',17);
INSERT INTO `n_nm` VALUES (3366,6062,'���� ����',25);
INSERT INTO `n_nm` VALUES (3367,2831,'���� �������',1);
INSERT INTO `n_nm` VALUES (3368,9825,'���� ������',28);
INSERT INTO `n_nm` VALUES (3369,5088,'���������',5);
INSERT INTO `n_nm` VALUES (3370,9807,'�������',28);
INSERT INTO `n_nm` VALUES (3371,8958,'���������',21);
INSERT INTO `n_nm` VALUES (3372,6697,'����������',10);
INSERT INTO `n_nm` VALUES (3373,2689,'����������',11);
INSERT INTO `n_nm` VALUES (3374,2394,'������',15);
INSERT INTO `n_nm` VALUES (3375,7615,'��������',20);
INSERT INTO `n_nm` VALUES (3376,7441,'��������',18);
INSERT INTO `n_nm` VALUES (3377,5360,'��������',8);
INSERT INTO `n_nm` VALUES (3378,5360,'�������',8);
INSERT INTO `n_nm` VALUES (3379,6726,'������',10);
INSERT INTO `n_nm` VALUES (3380,5097,'��������',5);
INSERT INTO `n_nm` VALUES (3381,5195,'����������',5);
INSERT INTO `n_nm` VALUES (3382,2738,'����',1);
INSERT INTO `n_nm` VALUES (3383,8250,'�����',2);
INSERT INTO `n_nm` VALUES (3384,2776,'������',1);
INSERT INTO `n_nm` VALUES (3385,7920,'������',26);
INSERT INTO `n_nm` VALUES (3386,6800,'�������',10);
INSERT INTO `n_nm` VALUES (3387,5922,'������',16);
INSERT INTO `n_nm` VALUES (3388,9147,'�������',3);
INSERT INTO `n_nm` VALUES (3389,4522,'�������',14);
INSERT INTO `n_nm` VALUES (3390,7170,'���������',19);
INSERT INTO `n_nm` VALUES (3391,9630,'��������',9);
INSERT INTO `n_nm` VALUES (3392,6290,'��������',25);
INSERT INTO `n_nm` VALUES (3393,7671,'����',20);
INSERT INTO `n_nm` VALUES (3394,5340,'��������',8);
INSERT INTO `n_nm` VALUES (3395,5088,'������',5);
INSERT INTO `n_nm` VALUES (3396,6138,'�������',25);
INSERT INTO `n_nm` VALUES (3397,5295,'���� ������',5);
INSERT INTO `n_nm` VALUES (3398,9233,'������',3);
INSERT INTO `n_nm` VALUES (3399,6922,'������',10);
INSERT INTO `n_nm` VALUES (3400,9395,'��������',9);
INSERT INTO `n_nm` VALUES (3401,7747,'��������',26);
INSERT INTO `n_nm` VALUES (3402,6468,'��������',27);
INSERT INTO `n_nm` VALUES (3403,9805,'��������',28);
INSERT INTO `n_nm` VALUES (3404,2647,'�������',11);
INSERT INTO `n_nm` VALUES (3405,6846,'������',10);
INSERT INTO `n_nm` VALUES (3406,4448,'���������',14);
INSERT INTO `n_nm` VALUES (3407,8660,'���� ��������',29);
INSERT INTO `n_nm` VALUES (3408,4972,'�����',22);
INSERT INTO `n_nm` VALUES (3409,8467,'�����',2);
INSERT INTO `n_nm` VALUES (3410,2947,'��������',1);
INSERT INTO `n_nm` VALUES (3411,2117,'��������',23);
INSERT INTO `n_nm` VALUES (3412,9423,'��������',9);
INSERT INTO `n_nm` VALUES (3413,4417,'��������',14);
INSERT INTO `n_nm` VALUES (3414,2297,'����',23);
INSERT INTO `n_nm` VALUES (3415,4990,'�������',22);
INSERT INTO `n_nm` VALUES (3416,9529,'��������',9);
INSERT INTO `n_nm` VALUES (3417,3679,'��������',13);
INSERT INTO `n_nm` VALUES (3418,2408,'��������',15);
INSERT INTO `n_nm` VALUES (3419,9357,'�������',9);
INSERT INTO `n_nm` VALUES (3420,6584,'�������',27);
INSERT INTO `n_nm` VALUES (3421,5893,'������',16);
INSERT INTO `n_nm` VALUES (3422,9362,'������',9);
INSERT INTO `n_nm` VALUES (3423,2373,'���������',15);
INSERT INTO `n_nm` VALUES (3424,5350,'��������',8);
INSERT INTO `n_nm` VALUES (3425,8669,'����',29);
INSERT INTO `n_nm` VALUES (3426,7680,'�����',20);
INSERT INTO `n_nm` VALUES (3427,8727,'����',29);
INSERT INTO `n_nm` VALUES (3428,9949,'��������',28);
INSERT INTO `n_nm` VALUES (3429,8921,'��������',21);
INSERT INTO `n_nm` VALUES (3430,7900,'�������',26);
INSERT INTO `n_nm` VALUES (3431,9486,'������',9);
INSERT INTO `n_nm` VALUES (3432,7840,'�����',26);
INSERT INTO `n_nm` VALUES (3433,6078,'����',25);
INSERT INTO `n_nm` VALUES (3434,9347,'������',9);
INSERT INTO `n_nm` VALUES (3435,5851,'������',16);
INSERT INTO `n_nm` VALUES (3436,2235,'�������',23);
INSERT INTO `n_nm` VALUES (3437,2276,'�������',23);
INSERT INTO `n_nm` VALUES (3438,6254,'���������',25);
INSERT INTO `n_nm` VALUES (3439,6641,'����������',10);
INSERT INTO `n_nm` VALUES (3440,7977,'����',26);
INSERT INTO `n_nm` VALUES (3441,5859,'���������',16);
INSERT INTO `n_nm` VALUES (3442,4877,'�������',22);
INSERT INTO `n_nm` VALUES (3443,5280,'����',5);
INSERT INTO `n_nm` VALUES (3444,5749,'�����',12);
INSERT INTO `n_nm` VALUES (3445,9151,'������',3);
INSERT INTO `n_nm` VALUES (3446,5630,'������',12);
INSERT INTO `n_nm` VALUES (3447,6929,'�������',10);
INSERT INTO `n_nm` VALUES (3448,2943,'�����',1);
INSERT INTO `n_nm` VALUES (3449,7684,'�������',20);
INSERT INTO `n_nm` VALUES (3450,5763,'�������',12);
INSERT INTO `n_nm` VALUES (3451,4255,'������',17);
INSERT INTO `n_nm` VALUES (3452,3945,'������',6);
INSERT INTO `n_nm` VALUES (3453,4727,'������',22);
INSERT INTO `n_nm` VALUES (3454,6475,'������',27);
INSERT INTO `n_nm` VALUES (3455,6579,'�������',27);
INSERT INTO `n_nm` VALUES (3456,6561,'�������',27);
INSERT INTO `n_nm` VALUES (3457,6655,'��������',10);
INSERT INTO `n_nm` VALUES (3458,8248,'�������',2);
INSERT INTO `n_nm` VALUES (3459,4214,'�������',17);
INSERT INTO `n_nm` VALUES (3460,8893,'�������',21);
INSERT INTO `n_nm` VALUES (3461,6253,'�������',25);
INSERT INTO `n_nm` VALUES (3462,8325,'�������',2);
INSERT INTO `n_nm` VALUES (3463,6892,'������',10);
INSERT INTO `n_nm` VALUES (3464,6545,'����� ���',27);
INSERT INTO `n_nm` VALUES (3465,9359,'������ ������',9);
INSERT INTO `n_nm` VALUES (3466,5187,'�������',5);
INSERT INTO `n_nm` VALUES (3467,8985,'������',21);
INSERT INTO `n_nm` VALUES (3468,6354,'������',27);
INSERT INTO `n_nm` VALUES (3469,5340,'�������',8);
INSERT INTO `n_nm` VALUES (3470,9490,'�����',9);
INSERT INTO `n_nm` VALUES (3471,5577,'������',12);
INSERT INTO `n_nm` VALUES (3472,3665,'�����',13);
INSERT INTO `n_nm` VALUES (3473,2785,'������',1);
INSERT INTO `n_nm` VALUES (3474,4942,'��������',22);
INSERT INTO `n_nm` VALUES (3475,6061,'���������',25);
INSERT INTO `n_nm` VALUES (3476,6555,'�������',27);
INSERT INTO `n_nm` VALUES (3477,3300,'�������',7);
INSERT INTO `n_nm` VALUES (3478,2186,'������',23);
INSERT INTO `n_nm` VALUES (3479,3171,'������',7);
INSERT INTO `n_nm` VALUES (3480,7634,'����',20);
INSERT INTO `n_nm` VALUES (3481,3059,'����',7);
INSERT INTO `n_nm` VALUES (3482,7746,'����',26);
INSERT INTO `n_nm` VALUES (3483,5037,'���������',5);
INSERT INTO `n_nm` VALUES (3484,7267,'������',18);
INSERT INTO `n_nm` VALUES (3485,9753,'��������',28);
INSERT INTO `n_nm` VALUES (3486,2291,'���������',23);
INSERT INTO `n_nm` VALUES (3487,9155,'�������',3);
INSERT INTO `n_nm` VALUES (3488,2774,'�������',1);
INSERT INTO `n_nm` VALUES (3489,6153,'���������',25);
INSERT INTO `n_nm` VALUES (3490,2164,'���������',23);
INSERT INTO `n_nm` VALUES (3491,2965,'�������',1);
INSERT INTO `n_nm` VALUES (3492,4819,'�������',22);
INSERT INTO `n_nm` VALUES (3493,7862,'�������',26);
INSERT INTO `n_nm` VALUES (3494,2165,'��������� ��������',23);
INSERT INTO `n_nm` VALUES (3495,2953,'�����',1);
INSERT INTO `n_nm` VALUES (3496,6216,'�������',25);
INSERT INTO `n_nm` VALUES (3497,3169,'����� ��������',7);
INSERT INTO `n_nm` VALUES (3498,9879,'�����',28);
INSERT INTO `n_nm` VALUES (3499,2121,'������',23);
INSERT INTO `n_nm` VALUES (3500,8983,'����� ������',21);
INSERT INTO `n_nm` VALUES (3501,6062,'����� ������',25);
INSERT INTO `n_nm` VALUES (3502,7743,'������',26);
INSERT INTO `n_nm` VALUES (3503,4732,'����� ������',22);
INSERT INTO `n_nm` VALUES (3504,7161,'�������',19);
INSERT INTO `n_nm` VALUES (3505,4859,'�������',22);
INSERT INTO `n_nm` VALUES (3506,3340,'������',7);
INSERT INTO `n_nm` VALUES (3507,6881,'��������',10);
INSERT INTO `n_nm` VALUES (3508,6644,'���������',10);
INSERT INTO `n_nm` VALUES (3509,7326,'�������',18);
INSERT INTO `n_nm` VALUES (3510,7238,'��������',18);
INSERT INTO `n_nm` VALUES (3511,3757,'����������',6);
INSERT INTO `n_nm` VALUES (3512,6457,'����� �����',27);
INSERT INTO `n_nm` VALUES (3513,4163,'���� ��������',17);
INSERT INTO `n_nm` VALUES (3514,4207,'���� ��������',17);
INSERT INTO `n_nm` VALUES (3515,6624,'�������',10);
INSERT INTO `n_nm` VALUES (3516,3079,'������',7);
INSERT INTO `n_nm` VALUES (3517,3438,'�����',13);
INSERT INTO `n_nm` VALUES (3518,3162,'�������',7);
INSERT INTO `n_nm` VALUES (3519,2049,'�����',23);
INSERT INTO `n_nm` VALUES (3520,3937,'�����',6);
INSERT INTO `n_nm` VALUES (3521,5350,'�������',8);
INSERT INTO `n_nm` VALUES (3522,2847,'�����',1);
INSERT INTO `n_nm` VALUES (3523,5197,'�����',5);
INSERT INTO `n_nm` VALUES (3524,6155,'����� ����',25);
INSERT INTO `n_nm` VALUES (3525,4889,'��������',22);
INSERT INTO `n_nm` VALUES (3526,5365,'��������',8);
INSERT INTO `n_nm` VALUES (3527,5200,'���������',5);
INSERT INTO `n_nm` VALUES (3528,3044,'�������',7);
INSERT INTO `n_nm` VALUES (3529,2632,'������',11);
INSERT INTO `n_nm` VALUES (3530,6960,'������',10);
INSERT INTO `n_nm` VALUES (3531,2747,'�����',1);
INSERT INTO `n_nm` VALUES (3532,9136,'������',3);
INSERT INTO `n_nm` VALUES (3533,6771,'������',10);
INSERT INTO `n_nm` VALUES (3534,7617,'������',20);
INSERT INTO `n_nm` VALUES (3535,2438,'������',15);
INSERT INTO `n_nm` VALUES (3536,4400,'���������',14);
INSERT INTO `n_nm` VALUES (3537,6829,'�������',10);
INSERT INTO `n_nm` VALUES (3538,7681,'��������',20);
INSERT INTO `n_nm` VALUES (3539,5173,'������',5);
INSERT INTO `n_nm` VALUES (3540,7767,'��������',26);
INSERT INTO `n_nm` VALUES (3541,7850,'���������',26);
INSERT INTO `n_nm` VALUES (3542,2829,'�����',1);
INSERT INTO `n_nm` VALUES (3543,2782,'��������',1);
INSERT INTO `n_nm` VALUES (3544,2681,'��������',11);
INSERT INTO `n_nm` VALUES (3545,8698,'���������',29);
INSERT INTO `n_nm` VALUES (3546,3439,'��������',13);
INSERT INTO `n_nm` VALUES (3547,5083,'������',5);
INSERT INTO `n_nm` VALUES (3548,4459,'��������',14);
INSERT INTO `n_nm` VALUES (3549,4870,'���������',22);
INSERT INTO `n_nm` VALUES (3550,9934,'��������',28);
INSERT INTO `n_nm` VALUES (3551,6058,'��������',25);
INSERT INTO `n_nm` VALUES (3552,4500,'����������',14);
INSERT INTO `n_nm` VALUES (3553,4520,'���������� �������',14);
INSERT INTO `n_nm` VALUES (3554,9802,'������� ������',28);
INSERT INTO `n_nm` VALUES (3555,7929,'������� ������',26);
INSERT INTO `n_nm` VALUES (3556,8867,'�����������',21);
INSERT INTO `n_nm` VALUES (3557,8254,'��������',2);
INSERT INTO `n_nm` VALUES (3558,6172,'����������',25);
INSERT INTO `n_nm` VALUES (3559,4179,'��������',17);
INSERT INTO `n_nm` VALUES (3560,7928,'��������',26);
INSERT INTO `n_nm` VALUES (3561,6723,'���������',10);
INSERT INTO `n_nm` VALUES (3562,2060,'�������',23);
INSERT INTO `n_nm` VALUES (3563,2685,'���������',11);
INSERT INTO `n_nm` VALUES (3564,1137,'���������',23);
INSERT INTO `n_nm` VALUES (3565,6657,'�������',10);
INSERT INTO `n_nm` VALUES (3566,6851,'������',10);
INSERT INTO `n_nm` VALUES (3567,5094,'����������',5);
INSERT INTO `n_nm` VALUES (3568,2474,'�������',15);
INSERT INTO `n_nm` VALUES (3569,2926,'�����',1);
INSERT INTO `n_nm` VALUES (3570,9245,'���������',3);
INSERT INTO `n_nm` VALUES (3571,6218,'����������',25);
INSERT INTO `n_nm` VALUES (3572,5344,'��������',8);
INSERT INTO `n_nm` VALUES (3573,5224,'����������',5);
INSERT INTO `n_nm` VALUES (3574,9370,'���������',9);
INSERT INTO `n_nm` VALUES (3575,6776,'������',10);
INSERT INTO `n_nm` VALUES (3576,2631,'������',11);
INSERT INTO `n_nm` VALUES (3577,2659,'������',11);
INSERT INTO `n_nm` VALUES (3578,4418,'����������',14);
INSERT INTO `n_nm` VALUES (3579,6710,'������',10);
INSERT INTO `n_nm` VALUES (3580,5225,'������',5);
INSERT INTO `n_nm` VALUES (3581,5631,'��������',12);
INSERT INTO `n_nm` VALUES (3582,4267,'�������� ��������',17);
INSERT INTO `n_nm` VALUES (3583,2069,'�������',23);
INSERT INTO `n_nm` VALUES (3584,6969,'�������',10);
INSERT INTO `n_nm` VALUES (3585,6572,'������',27);
INSERT INTO `n_nm` VALUES (3586,4632,'������',14);
INSERT INTO `n_nm` VALUES (3587,6529,'������',27);
INSERT INTO `n_nm` VALUES (3588,7771,'�����',26);
INSERT INTO `n_nm` VALUES (3589,4335,'�������',17);
INSERT INTO `n_nm` VALUES (3590,5095,'��������',5);
INSERT INTO `n_nm` VALUES (3591,5370,'�����',8);
INSERT INTO `n_nm` VALUES (3592,5345,'�������',8);
INSERT INTO `n_nm` VALUES (3593,7127,'���������',19);
INSERT INTO `n_nm` VALUES (3594,2582,'����������',11);
INSERT INTO `n_nm` VALUES (3595,6593,'�������',27);
INSERT INTO `n_nm` VALUES (3596,6948,'�����',10);
INSERT INTO `n_nm` VALUES (3597,5895,'�������',16);
INSERT INTO `n_nm` VALUES (3598,5333,'��������',8);
INSERT INTO `n_nm` VALUES (3599,2499,'���������',15);
INSERT INTO `n_nm` VALUES (3600,6741,'�������',10);
INSERT INTO `n_nm` VALUES (3601,7158,'��������',19);
INSERT INTO `n_nm` VALUES (3602,6643,'��������',10);
INSERT INTO `n_nm` VALUES (3603,3841,'���������',6);
INSERT INTO `n_nm` VALUES (3604,2300,'������',15);
INSERT INTO `n_nm` VALUES (3605,6673,'��������',10);
INSERT INTO `n_nm` VALUES (3606,6949,'��������',10);
INSERT INTO `n_nm` VALUES (3607,4225,'��������',17);
INSERT INTO `n_nm` VALUES (3608,6798,'��������',10);
INSERT INTO `n_nm` VALUES (3609,4208,'��������',17);
INSERT INTO `n_nm` VALUES (3610,3519,'���������',13);
INSERT INTO `n_nm` VALUES (3611,7119,'��� ��������',19);
INSERT INTO `n_nm` VALUES (3612,9940,'��� ������',28);
INSERT INTO `n_nm` VALUES (3613,8953,'��� ������',21);
INSERT INTO `n_nm` VALUES (3614,6666,'��������',10);
INSERT INTO `n_nm` VALUES (3615,5184,'����� ����������',5);
INSERT INTO `n_nm` VALUES (3616,5434,'����� ���������',8);
INSERT INTO `n_nm` VALUES (3617,2111,'�������',23);
INSERT INTO `n_nm` VALUES (3618,4740,'�������',22);
INSERT INTO `n_nm` VALUES (3619,5370,'��������',8);
INSERT INTO `n_nm` VALUES (3620,5084,'��������',5);
INSERT INTO `n_nm` VALUES (3621,9521,'����������',9);
INSERT INTO `n_nm` VALUES (3622,6634,'�������',10);
INSERT INTO `n_nm` VALUES (3623,5933,'������������',16);
INSERT INTO `n_nm` VALUES (3624,5784,'���������',12);
INSERT INTO `n_nm` VALUES (3625,2936,'��������',1);
INSERT INTO `n_nm` VALUES (3626,7956,'�������',26);
INSERT INTO `n_nm` VALUES (3627,2085,'������',23);
INSERT INTO `n_nm` VALUES (3628,2850,'������',1);
INSERT INTO `n_nm` VALUES (3629,4911,'������ ���',22);
INSERT INTO `n_nm` VALUES (3630,9225,'������ ���',3);
INSERT INTO `n_nm` VALUES (3631,2815,'�������',1);
INSERT INTO `n_nm` VALUES (3632,6058,'�������',25);
INSERT INTO `n_nm` VALUES (3633,5347,'��������',8);
INSERT INTO `n_nm` VALUES (3634,3521,'��������',13);
INSERT INTO `n_nm` VALUES (3635,5878,'���������',16);
INSERT INTO `n_nm` VALUES (3636,2234,'������',23);
INSERT INTO `n_nm` VALUES (3637,5345,'�������',8);
INSERT INTO `n_nm` VALUES (3638,7428,'��������',18);
INSERT INTO `n_nm` VALUES (3639,4912,'��������',22);
INSERT INTO `n_nm` VALUES (3640,3733,'��������',6);
INSERT INTO `n_nm` VALUES (3641,2443,'������',15);
INSERT INTO `n_nm` VALUES (3642,4550,'������',14);
INSERT INTO `n_nm` VALUES (3643,4754,'������',22);
INSERT INTO `n_nm` VALUES (3644,5788,'�������',12);
INSERT INTO `n_nm` VALUES (3645,8525,'��������',2);
INSERT INTO `n_nm` VALUES (3646,2618,'��������',11);
INSERT INTO `n_nm` VALUES (3647,2831,'��������',1);
INSERT INTO `n_nm` VALUES (3648,2508,'�������� ������',11);
INSERT INTO `n_nm` VALUES (3649,7129,'���������',19);
INSERT INTO `n_nm` VALUES (3650,5035,'����������',5);
INSERT INTO `n_nm` VALUES (3651,7090,'�������',19);
INSERT INTO `n_nm` VALUES (3652,2070,'������',23);
INSERT INTO `n_nm` VALUES (3653,2823,'�����',1);
INSERT INTO `n_nm` VALUES (3654,7976,'�������',26);
INSERT INTO `n_nm` VALUES (3655,8528,'�����',2);
INSERT INTO `n_nm` VALUES (3656,7081,'�������',19);
INSERT INTO `n_nm` VALUES (3657,4744,'��������',22);
INSERT INTO `n_nm` VALUES (3658,5127,'��������',5);
INSERT INTO `n_nm` VALUES (3659,9927,'��������',28);
INSERT INTO `n_nm` VALUES (3660,9527,'��������',9);
INSERT INTO `n_nm` VALUES (3661,5871,'��������',16);
INSERT INTO `n_nm` VALUES (3662,8289,'���������',2);
INSERT INTO `n_nm` VALUES (3663,8942,'������',21);
INSERT INTO `n_nm` VALUES (3664,2218,'������',23);
INSERT INTO `n_nm` VALUES (3665,3662,'�������',13);
INSERT INTO `n_nm` VALUES (3666,4451,'��������',14);
INSERT INTO `n_nm` VALUES (3667,6813,'������',10);
INSERT INTO `n_nm` VALUES (3668,6850,'�������',10);
INSERT INTO `n_nm` VALUES (3669,5042,'�������',5);
INSERT INTO `n_nm` VALUES (3670,3781,'��������',6);
INSERT INTO `n_nm` VALUES (3671,1475,'�����',24);
INSERT INTO `n_nm` VALUES (3672,6599,'��������',27);
INSERT INTO `n_nm` VALUES (3673,2340,'���������',15);
INSERT INTO `n_nm` VALUES (3674,8565,'���������',2);
INSERT INTO `n_nm` VALUES (3675,6560,'���������',27);
INSERT INTO `n_nm` VALUES (3676,4940,'���������',22);
INSERT INTO `n_nm` VALUES (3677,4921,'��������',22);
INSERT INTO `n_nm` VALUES (3678,5367,'��������',8);
INSERT INTO `n_nm` VALUES (3679,9365,'��������',9);
INSERT INTO `n_nm` VALUES (3680,5370,'������',8);
INSERT INTO `n_nm` VALUES (3681,5360,'���������',8);
INSERT INTO `n_nm` VALUES (3682,5800,'������',16);
INSERT INTO `n_nm` VALUES (3683,9522,'��������',9);
INSERT INTO `n_nm` VALUES (3684,2954,'�������',1);
INSERT INTO `n_nm` VALUES (3685,3931,'��������',6);
INSERT INTO `n_nm` VALUES (3686,6800,'��������',10);
INSERT INTO `n_nm` VALUES (3687,9920,'������',28);
INSERT INTO `n_nm` VALUES (3688,4000,'�������',17);
INSERT INTO `n_nm` VALUES (3689,4979,'���������',22);
INSERT INTO `n_nm` VALUES (3690,6890,'������',10);
INSERT INTO `n_nm` VALUES (3691,6257,'�����������',25);
INSERT INTO `n_nm` VALUES (3692,6055,'������ ������',25);
INSERT INTO `n_nm` VALUES (3693,2810,'������',1);
INSERT INTO `n_nm` VALUES (3694,2072,'�������',23);
INSERT INTO `n_nm` VALUES (3695,7934,'��������',26);
INSERT INTO `n_nm` VALUES (3696,9372,'������',9);
INSERT INTO `n_nm` VALUES (3697,5873,'������',16);
INSERT INTO `n_nm` VALUES (3698,8679,'������',29);
INSERT INTO `n_nm` VALUES (3699,4638,'����� �����',14);
INSERT INTO `n_nm` VALUES (3700,7262,'����� �����',18);
INSERT INTO `n_nm` VALUES (3701,2554,'����� �����',11);
INSERT INTO `n_nm` VALUES (3702,5365,'�����',8);
INSERT INTO `n_nm` VALUES (3703,2218,'���������',23);
INSERT INTO `n_nm` VALUES (3704,6630,'�����',10);
INSERT INTO `n_nm` VALUES (3705,7431,'�������',18);
INSERT INTO `n_nm` VALUES (3706,4733,'������',22);
INSERT INTO `n_nm` VALUES (3707,8450,'������',2);
INSERT INTO `n_nm` VALUES (3708,6850,'�������',10);
INSERT INTO `n_nm` VALUES (3709,3852,'������E',6);
INSERT INTO `n_nm` VALUES (3710,8535,'��������',2);
INSERT INTO `n_nm` VALUES (3711,2049,'��������',23);
INSERT INTO `n_nm` VALUES (3712,7768,'���������',26);
INSERT INTO `n_nm` VALUES (3713,1221,'��������',23);
INSERT INTO `n_nm` VALUES (3714,5852,'�����',16);
INSERT INTO `n_nm` VALUES (3715,6880,'�������',10);
INSERT INTO `n_nm` VALUES (3716,6312,'��������',27);
INSERT INTO `n_nm` VALUES (3717,7632,'������',20);
INSERT INTO `n_nm` VALUES (3718,6945,'��������',10);
INSERT INTO `n_nm` VALUES (3719,9391,'�������',9);
INSERT INTO `n_nm` VALUES (3720,6057,'�������',25);
INSERT INTO `n_nm` VALUES (3721,2229,'��������',23);
INSERT INTO `n_nm` VALUES (3722,7622,'��������',20);
INSERT INTO `n_nm` VALUES (3723,5041,'��������',5);
INSERT INTO `n_nm` VALUES (3724,4524,'��������',14);
INSERT INTO `n_nm` VALUES (3725,3764,'��������',6);
INSERT INTO `n_nm` VALUES (3726,6575,'��������',27);
INSERT INTO `n_nm` VALUES (3727,2708,'���������',1);
INSERT INTO `n_nm` VALUES (3728,2758,'������',1);
INSERT INTO `n_nm` VALUES (3729,2804,'��������',1);
INSERT INTO `n_nm` VALUES (3730,2561,'���������',11);
INSERT INTO `n_nm` VALUES (3731,3818,'����������',6);
INSERT INTO `n_nm` VALUES (3732,2751,'������',1);
INSERT INTO `n_nm` VALUES (3733,5138,'����������',5);
INSERT INTO `n_nm` VALUES (3734,2060,'��������',23);
INSERT INTO `n_nm` VALUES (3735,9401,'��������� ������',9);
INSERT INTO `n_nm` VALUES (3736,6909,'��������� ��������',10);
INSERT INTO `n_nm` VALUES (3737,9432,'��������� �������',9);
INSERT INTO `n_nm` VALUES (3738,7579,'��������� ���������',20);
INSERT INTO `n_nm` VALUES (3739,9471,'��������� ������',9);
INSERT INTO `n_nm` VALUES (3740,9378,'��������� ���������',9);
INSERT INTO `n_nm` VALUES (3741,4794,'��������� ���������',22);
INSERT INTO `n_nm` VALUES (3742,7677,'��������� ���������',20);
INSERT INTO `n_nm` VALUES (3743,7553,'��������� ��������',20);
INSERT INTO `n_nm` VALUES (3744,2551,'������ ���������',11);
INSERT INTO `n_nm` VALUES (3745,6276,'������ ������',25);
INSERT INTO `n_nm` VALUES (3746,8123,'������ �����',2);
INSERT INTO `n_nm` VALUES (3747,5193,'������ �������',5);
INSERT INTO `n_nm` VALUES (3748,5180,'������ �������',5);
INSERT INTO `n_nm` VALUES (3749,7131,'������ ������',19);
INSERT INTO `n_nm` VALUES (3750,8937,'������ ��������',21);
INSERT INTO `n_nm` VALUES (3751,4977,'������',22);
INSERT INTO `n_nm` VALUES (3752,7584,'������',20);
INSERT INTO `n_nm` VALUES (3753,8654,'������',29);
INSERT INTO `n_nm` VALUES (3754,6847,'�������',10);
INSERT INTO `n_nm` VALUES (3755,8544,'��������',2);
INSERT INTO `n_nm` VALUES (3756,6464,'��������',27);
INSERT INTO `n_nm` VALUES (3757,2068,'�������',23);
INSERT INTO `n_nm` VALUES (3758,9239,'��������',3);
INSERT INTO `n_nm` VALUES (3759,3476,'��������',13);
INSERT INTO `n_nm` VALUES (3760,7164,'�����',19);
INSERT INTO `n_nm` VALUES (3761,8200,'�������',2);
INSERT INTO `n_nm` VALUES (3762,7839,'��������',26);
INSERT INTO `n_nm` VALUES (3763,6297,'��������',25);
INSERT INTO `n_nm` VALUES (3764,2236,'�����',23);
INSERT INTO `n_nm` VALUES (3765,5343,'������',8);
INSERT INTO `n_nm` VALUES (3766,5365,'�����������',8);
INSERT INTO `n_nm` VALUES (3767,9377,'������������',9);
INSERT INTO `n_nm` VALUES (3768,9478,'���������',9);
INSERT INTO `n_nm` VALUES (3769,7590,'������',20);
INSERT INTO `n_nm` VALUES (3770,4528,'�������',14);
INSERT INTO `n_nm` VALUES (3771,3244,'������',7);
INSERT INTO `n_nm` VALUES (3772,7545,'����������',20);
INSERT INTO `n_nm` VALUES (3773,6398,'�������',27);
INSERT INTO `n_nm` VALUES (3774,4127,'��������',17);
INSERT INTO `n_nm` VALUES (3775,9101,'�������',3);
INSERT INTO `n_nm` VALUES (3776,8735,'������',29);
INSERT INTO `n_nm` VALUES (3777,7800,'������',26);
INSERT INTO `n_nm` VALUES (3778,5035,'�������',5);
INSERT INTO `n_nm` VALUES (3779,5345,'�������',8);
INSERT INTO `n_nm` VALUES (3780,2060,'�������',23);
INSERT INTO `n_nm` VALUES (3781,2014,'��������',23);
INSERT INTO `n_nm` VALUES (3782,5365,'�����������',8);
INSERT INTO `n_nm` VALUES (3783,4759,'��������',22);
INSERT INTO `n_nm` VALUES (3784,7564,'�����������',20);
INSERT INTO `n_nm` VALUES (3785,5084,'����������',5);
INSERT INTO `n_nm` VALUES (3786,5084,'������',5);
INSERT INTO `n_nm` VALUES (3787,5466,'������',8);
INSERT INTO `n_nm` VALUES (3788,6580,'������',27);
INSERT INTO `n_nm` VALUES (3789,5898,'������',16);
INSERT INTO `n_nm` VALUES (3790,7218,'�������',18);
INSERT INTO `n_nm` VALUES (3791,8221,'�����',2);
INSERT INTO `n_nm` VALUES (3792,4281,'�������',17);
INSERT INTO `n_nm` VALUES (3793,7952,'�������',26);
INSERT INTO `n_nm` VALUES (3794,7658,'�������',20);
INSERT INTO `n_nm` VALUES (3795,2639,'����������',11);
INSERT INTO `n_nm` VALUES (3796,3432,'����������',13);
INSERT INTO `n_nm` VALUES (3797,9409,'������� ���������',9);
INSERT INTO `n_nm` VALUES (3798,9658,'������� �������',9);
INSERT INTO `n_nm` VALUES (3799,7853,'��������',26);
INSERT INTO `n_nm` VALUES (3800,7567,'�����',20);
INSERT INTO `n_nm` VALUES (3801,6833,'�������',10);
INSERT INTO `n_nm` VALUES (3802,5309,'�����',8);
INSERT INTO `n_nm` VALUES (3803,4768,'������',22);
INSERT INTO `n_nm` VALUES (3804,2127,'�����',23);
INSERT INTO `n_nm` VALUES (3805,6963,'���������',10);
INSERT INTO `n_nm` VALUES (3806,6850,'������',10);
INSERT INTO `n_nm` VALUES (3807,6960,'���������',10);
INSERT INTO `n_nm` VALUES (3808,2455,'����������',15);
INSERT INTO `n_nm` VALUES (3809,5125,'������',5);
INSERT INTO `n_nm` VALUES (3810,7690,'������',20);
INSERT INTO `n_nm` VALUES (3811,8695,'��������',29);
INSERT INTO `n_nm` VALUES (3812,6765,'���������',10);
INSERT INTO `n_nm` VALUES (3813,9945,'��������',28);
INSERT INTO `n_nm` VALUES (3814,2161,'������',23);
INSERT INTO `n_nm` VALUES (3815,2170,'�������� ��������',23);
INSERT INTO `n_nm` VALUES (3816,4191,'�������',17);
INSERT INTO `n_nm` VALUES (3817,2894,'����� �����',1);
INSERT INTO `n_nm` VALUES (3818,6248,'���������',25);
INSERT INTO `n_nm` VALUES (3819,4287,'�����������',17);
INSERT INTO `n_nm` VALUES (3820,3917,'�������',6);
INSERT INTO `n_nm` VALUES (3821,5345,'�������',8);
INSERT INTO `n_nm` VALUES (3822,3457,'�������',13);
INSERT INTO `n_nm` VALUES (3823,2571,'����������',11);
INSERT INTO `n_nm` VALUES (3824,2206,'���������',23);
INSERT INTO `n_nm` VALUES (3825,7325,'������',18);
INSERT INTO `n_nm` VALUES (3826,5545,'������',12);
INSERT INTO `n_nm` VALUES (3827,5040,'������������� �����',5);
INSERT INTO `n_nm` VALUES (3828,8541,'������������',2);
INSERT INTO `n_nm` VALUES (3829,6862,'�������',10);
INSERT INTO `n_nm` VALUES (3830,9558,'����������',9);
INSERT INTO `n_nm` VALUES (3831,7772,'��������',26);
INSERT INTO `n_nm` VALUES (3832,9922,'��������',28);
INSERT INTO `n_nm` VALUES (3833,7762,'�������',26);
INSERT INTO `n_nm` VALUES (3834,6048,'���������',25);
INSERT INTO `n_nm` VALUES (3835,6454,'���������',27);
INSERT INTO `n_nm` VALUES (3836,7635,'���������',20);
INSERT INTO `n_nm` VALUES (3837,4987,'�������',22);
INSERT INTO `n_nm` VALUES (3838,9635,'������',9);
INSERT INTO `n_nm` VALUES (3839,2072,'������',23);
INSERT INTO `n_nm` VALUES (3840,5350,'�������',8);
INSERT INTO `n_nm` VALUES (3841,7754,'������',18);
INSERT INTO `n_nm` VALUES (3842,5542,'�������',12);
INSERT INTO `n_nm` VALUES (3843,2452,'������',15);
INSERT INTO `n_nm` VALUES (3844,9352,'������',9);
INSERT INTO `n_nm` VALUES (3845,8445,'������',2);
INSERT INTO `n_nm` VALUES (3846,8290,'���������',2);
INSERT INTO `n_nm` VALUES (3847,9376,'��������',9);
INSERT INTO `n_nm` VALUES (3848,9146,'������',3);
INSERT INTO `n_nm` VALUES (3849,6858,'������',10);
INSERT INTO `n_nm` VALUES (3850,8537,'������',2);
INSERT INTO `n_nm` VALUES (3851,9524,'������',9);
INSERT INTO `n_nm` VALUES (3852,8161,'������',2);
INSERT INTO `n_nm` VALUES (3853,6564,'��������',27);
INSERT INTO `n_nm` VALUES (3854,9131,'��������',3);
INSERT INTO `n_nm` VALUES (3855,8251,'��������',2);
INSERT INTO `n_nm` VALUES (3856,5033,'�������',5);
INSERT INTO `n_nm` VALUES (3857,5766,'��������',12);
INSERT INTO `n_nm` VALUES (3858,7969,'��������',26);
INSERT INTO `n_nm` VALUES (3859,9965,'�������',28);
INSERT INTO `n_nm` VALUES (3860,7748,'�������',26);
INSERT INTO `n_nm` VALUES (3861,9200,'��������',3);
INSERT INTO `n_nm` VALUES (3862,4871,'�������',22);
INSERT INTO `n_nm` VALUES (3863,5045,'����������',5);
INSERT INTO `n_nm` VALUES (3864,5307,'����������',8);
INSERT INTO `n_nm` VALUES (3865,2007,'����������',23);
INSERT INTO `n_nm` VALUES (3866,2471,'��������',15);
INSERT INTO `n_nm` VALUES (3867,7739,'������',26);
INSERT INTO `n_nm` VALUES (3868,3913,'����������',6);
INSERT INTO `n_nm` VALUES (3869,9685,'������',9);
INSERT INTO `n_nm` VALUES (3870,2228,'�������',23);
INSERT INTO `n_nm` VALUES (3871,4358,'������',17);
INSERT INTO `n_nm` VALUES (3872,6632,'�������',10);
INSERT INTO `n_nm` VALUES (3873,7055,'�������',19);
INSERT INTO `n_nm` VALUES (3874,8548,'��������',2);
INSERT INTO `n_nm` VALUES (3875,9175,'��������',3);
INSERT INTO `n_nm` VALUES (3876,7263,'���������',19);
INSERT INTO `n_nm` VALUES (3877,3957,'������������',6);
INSERT INTO `n_nm` VALUES (3878,9487,'�������� ���������',9);
INSERT INTO `n_nm` VALUES (3879,7572,'�������� ��������',20);
INSERT INTO `n_nm` VALUES (3880,7668,'��������',20);
INSERT INTO `n_nm` VALUES (3881,8336,'������',2);
INSERT INTO `n_nm` VALUES (3882,8944,'���������',21);
INSERT INTO `n_nm` VALUES (3883,6062,'��������',25);
INSERT INTO `n_nm` VALUES (3884,6716,'��������',10);
INSERT INTO `n_nm` VALUES (3885,6811,'������',10);
INSERT INTO `n_nm` VALUES (3886,8998,'�������',21);
INSERT INTO `n_nm` VALUES (3887,7946,'�������',26);
INSERT INTO `n_nm` VALUES (3888,3049,'������',7);
INSERT INTO `n_nm` VALUES (3889,5062,'������',5);
INSERT INTO `n_nm` VALUES (3890,8718,'�����',29);
INSERT INTO `n_nm` VALUES (3891,6385,'�������',27);
INSERT INTO `n_nm` VALUES (3892,9550,'���������',9);
INSERT INTO `n_nm` VALUES (3893,6664,'���������',10);
INSERT INTO `n_nm` VALUES (3894,2048,'������',23);
INSERT INTO `n_nm` VALUES (3895,8456,'������',2);
INSERT INTO `n_nm` VALUES (3896,7438,'�������',18);
INSERT INTO `n_nm` VALUES (3897,9363,'�������',9);
INSERT INTO `n_nm` VALUES (3898,6196,'���������',25);
INSERT INTO `n_nm` VALUES (3899,5048,'�������',5);
INSERT INTO `n_nm` VALUES (3900,9427,'�������',9);
INSERT INTO `n_nm` VALUES (3901,9118,'�������',3);
INSERT INTO `n_nm` VALUES (3902,7987,'������',26);
INSERT INTO `n_nm` VALUES (3903,6268,'���������',25);
INSERT INTO `n_nm` VALUES (3904,8992,'��������',21);
INSERT INTO `n_nm` VALUES (3905,7959,'��������',26);
INSERT INTO `n_nm` VALUES (3906,4158,'��������',17);
INSERT INTO `n_nm` VALUES (3907,6746,'�������',10);
INSERT INTO `n_nm` VALUES (3908,8317,'�������',2);
INSERT INTO `n_nm` VALUES (3909,7958,'������',26);
INSERT INTO `n_nm` VALUES (3910,4110,'��������',17);
INSERT INTO `n_nm` VALUES (3911,8694,'��������',29);
INSERT INTO `n_nm` VALUES (3912,6865,'��������',10);
INSERT INTO `n_nm` VALUES (3913,6882,'�������',10);
INSERT INTO `n_nm` VALUES (3914,2890,'��������',1);
INSERT INTO `n_nm` VALUES (3915,4270,'��������',17);
INSERT INTO `n_nm` VALUES (3916,5139,'����������',5);
INSERT INTO `n_nm` VALUES (3917,5365,'���������',8);
INSERT INTO `n_nm` VALUES (3918,3531,'���������',13);
INSERT INTO `n_nm` VALUES (3919,5052,'�������',5);
INSERT INTO `n_nm` VALUES (3920,5307,'��������',8);
INSERT INTO `n_nm` VALUES (3921,5380,'�����',8);
INSERT INTO `n_nm` VALUES (3922,6075,'�������',25);
INSERT INTO `n_nm` VALUES (3923,6233,'��������',25);
INSERT INTO `n_nm` VALUES (3924,6519,'���������',27);
INSERT INTO `n_nm` VALUES (3925,6597,'��������',27);
INSERT INTO `n_nm` VALUES (3926,6379,'���������',27);
INSERT INTO `n_nm` VALUES (3927,6496,'��������',27);
INSERT INTO `n_nm` VALUES (3928,3938,'������',6);
INSERT INTO `n_nm` VALUES (3929,6384,'������',27);
INSERT INTO `n_nm` VALUES (3930,3842,'�������',6);
INSERT INTO `n_nm` VALUES (3931,8146,'����������',2);
INSERT INTO `n_nm` VALUES (3932,8238,'�����',2);
INSERT INTO `n_nm` VALUES (3933,6834,'�����',10);
INSERT INTO `n_nm` VALUES (3934,2249,'�����',23);
INSERT INTO `n_nm` VALUES (3935,9235,'�����',3);
INSERT INTO `n_nm` VALUES (3936,5742,'�����',12);
INSERT INTO `n_nm` VALUES (3937,3473,'�����',13);
INSERT INTO `n_nm` VALUES (3938,9124,'����� ����',3);
INSERT INTO `n_nm` VALUES (3939,6526,'����� ����',27);
INSERT INTO `n_nm` VALUES (3940,8151,'����� ����',2);
INSERT INTO `n_nm` VALUES (3941,8117,'������',2);
INSERT INTO `n_nm` VALUES (3942,9523,'������',9);
INSERT INTO `n_nm` VALUES (3943,4931,'������',22);
INSERT INTO `n_nm` VALUES (3944,4781,'���������',22);
INSERT INTO `n_nm` VALUES (3945,4955,'�������',22);
INSERT INTO `n_nm` VALUES (3946,2167,'�������',23);
INSERT INTO `n_nm` VALUES (3947,7296,'�����',19);
INSERT INTO `n_nm` VALUES (3948,4913,'����� ������',22);
INSERT INTO `n_nm` VALUES (3949,2129,'����� ����',23);
INSERT INTO `n_nm` VALUES (3950,7965,'����� ����',26);
INSERT INTO `n_nm` VALUES (3951,5089,'�������',5);
INSERT INTO `n_nm` VALUES (3952,4582,'��������',14);
INSERT INTO `n_nm` VALUES (3953,9294,'����� �������',3);
INSERT INTO `n_nm` VALUES (3954,5185,'��������',5);
INSERT INTO `n_nm` VALUES (3955,5370,'���������',8);
INSERT INTO `n_nm` VALUES (3956,9149,'������',3);
INSERT INTO `n_nm` VALUES (3957,8917,'������',21);
INSERT INTO `n_nm` VALUES (3958,5360,'�������',8);
INSERT INTO `n_nm` VALUES (3959,8959,'�������',21);
INSERT INTO `n_nm` VALUES (3960,2447,'�������',15);
INSERT INTO `n_nm` VALUES (3961,6427,'�������',27);
INSERT INTO `n_nm` VALUES (3962,4590,'��������',14);
INSERT INTO `n_nm` VALUES (3963,7245,'���������',18);
INSERT INTO `n_nm` VALUES (3964,8983,'�������',21);
INSERT INTO `n_nm` VALUES (3965,5360,'������',8);
INSERT INTO `n_nm` VALUES (3966,4202,'��������',17);
INSERT INTO `n_nm` VALUES (3967,5838,'��������',16);
INSERT INTO `n_nm` VALUES (3968,9808,'����� ����������',28);
INSERT INTO `n_nm` VALUES (3969,5041,'��������',5);
INSERT INTO `n_nm` VALUES (3970,2548,'��������',11);
INSERT INTO `n_nm` VALUES (3971,6260,'�������',25);
INSERT INTO `n_nm` VALUES (3972,5035,'��������',5);
INSERT INTO `n_nm` VALUES (3973,3144,'��������',7);
INSERT INTO `n_nm` VALUES (3974,6564,'�������',27);
INSERT INTO `n_nm` VALUES (3975,2488,'������',15);
INSERT INTO `n_nm` VALUES (3976,5380,'�������',8);
INSERT INTO `n_nm` VALUES (3977,5084,'�������',5);
INSERT INTO `n_nm` VALUES (3978,5633,'�����������',12);
INSERT INTO `n_nm` VALUES (3979,5367,'��������',8);
INSERT INTO `n_nm` VALUES (3980,8323,'���������',2);
INSERT INTO `n_nm` VALUES (3981,2400,'�������',15);
INSERT INTO `n_nm` VALUES (3982,5997,'���������',16);
INSERT INTO `n_nm` VALUES (3983,2148,'��������',23);
INSERT INTO `n_nm` VALUES (3984,2043,'������',23);
INSERT INTO `n_nm` VALUES (3985,2359,'�����',15);
INSERT INTO `n_nm` VALUES (3986,2222,'���������',23);
INSERT INTO `n_nm` VALUES (3987,6185,'�������',25);
INSERT INTO `n_nm` VALUES (3988,6185,'������� - ���������',25);
INSERT INTO `n_nm` VALUES (3989,5540,'��������',12);
INSERT INTO `n_nm` VALUES (3990,5363,'������',8);
INSERT INTO `n_nm` VALUES (3991,2253,'��������',23);
INSERT INTO `n_nm` VALUES (3992,8531,'��������',2);
INSERT INTO `n_nm` VALUES (3993,7707,'��������',26);
INSERT INTO `n_nm` VALUES (3994,9790,'�����������',28);
INSERT INTO `n_nm` VALUES (3995,3633,'�������',13);
INSERT INTO `n_nm` VALUES (3996,7200,'�������',18);
INSERT INTO `n_nm` VALUES (3997,7659,'������',20);
INSERT INTO `n_nm` VALUES (3998,8747,'������',29);
INSERT INTO `n_nm` VALUES (3999,9181,'��������',3);
INSERT INTO `n_nm` VALUES (4000,6283,'��������',25);
INSERT INTO `n_nm` VALUES (4001,7989,'��������',26);
INSERT INTO `n_nm` VALUES (4002,2835,'������',1);
INSERT INTO `n_nm` VALUES (4003,2166,'���������',23);
INSERT INTO `n_nm` VALUES (4004,2162,'������',23);
INSERT INTO `n_nm` VALUES (4005,2760,'������',1);
INSERT INTO `n_nm` VALUES (4006,5089,'�������',5);
INSERT INTO `n_nm` VALUES (4007,6525,'������� ������',27);
INSERT INTO `n_nm` VALUES (4008,5617,'���������',12);
INSERT INTO `n_nm` VALUES (4009,5039,'��������',5);
INSERT INTO `n_nm` VALUES (4010,7421,'�������',18);
INSERT INTO `n_nm` VALUES (4011,6423,'�������',27);
INSERT INTO `n_nm` VALUES (4012,5347,'��������',8);
INSERT INTO `n_nm` VALUES (4013,5094,'��������',5);
INSERT INTO `n_nm` VALUES (4014,5363,'�����������',8);
INSERT INTO `n_nm` VALUES (4015,2017,'������',23);
INSERT INTO `n_nm` VALUES (4016,3067,'������',7);
INSERT INTO `n_nm` VALUES (4017,2451,'���������',15);
INSERT INTO `n_nm` VALUES (4018,2223,'������',23);
INSERT INTO `n_nm` VALUES (4019,5998,'������',16);
INSERT INTO `n_nm` VALUES (4020,2753,'�������',1);
INSERT INTO `n_nm` VALUES (4021,3791,'���������',6);
INSERT INTO `n_nm` VALUES (4022,6067,'���������',25);
INSERT INTO `n_nm` VALUES (4023,4640,'��������',14);
INSERT INTO `n_nm` VALUES (4024,8547,'���������',2);
INSERT INTO `n_nm` VALUES (4025,8439,'�������',2);
INSERT INTO `n_nm` VALUES (4026,3820,'��������',6);
INSERT INTO `n_nm` VALUES (4027,2577,'������',11);
INSERT INTO `n_nm` VALUES (4028,8884,'������',21);
INSERT INTO `n_nm` VALUES (4029,9659,'��������',9);
INSERT INTO `n_nm` VALUES (4030,7264,'��������',18);
INSERT INTO `n_nm` VALUES (4031,4150,'��������',17);
INSERT INTO `n_nm` VALUES (4032,8257,'����������',2);
INSERT INTO `n_nm` VALUES (4033,5875,'������',16);
INSERT INTO `n_nm` VALUES (4034,5367,'�������',8);
INSERT INTO `n_nm` VALUES (4035,5098,'���������',5);
INSERT INTO `n_nm` VALUES (4036,6820,'������',10);
INSERT INTO `n_nm` VALUES (4037,7759,'������',26);
INSERT INTO `n_nm` VALUES (4038,6965,'��������',10);
INSERT INTO `n_nm` VALUES (4039,2569,'�������',11);
INSERT INTO `n_nm` VALUES (4040,6720,'���� ����',10);
INSERT INTO `n_nm` VALUES (4041,2484,'���� ���',15);
INSERT INTO `n_nm` VALUES (4042,2357,'������',15);
INSERT INTO `n_nm` VALUES (4043,3660,'������',13);
INSERT INTO `n_nm` VALUES (4044,6865,'�������',10);
INSERT INTO `n_nm` VALUES (4045,5343,'�������',8);
INSERT INTO `n_nm` VALUES (4046,5345,'�������',8);
INSERT INTO `n_nm` VALUES (4047,5350,'�������',8);
INSERT INTO `n_nm` VALUES (4048,5035,'�������',5);
INSERT INTO `n_nm` VALUES (4049,2578,'����� �������',11);
INSERT INTO `n_nm` VALUES (4050,2152,'�������',23);
INSERT INTO `n_nm` VALUES (4051,5350,'��������',8);
INSERT INTO `n_nm` VALUES (4052,3532,'��������',13);
INSERT INTO `n_nm` VALUES (4053,5093,'������',5);
INSERT INTO `n_nm` VALUES (4054,3935,'��������',6);
INSERT INTO `n_nm` VALUES (4055,2204,'��������',23);
INSERT INTO `n_nm` VALUES (4056,2446,'������',15);
INSERT INTO `n_nm` VALUES (4057,5087,'��������',5);
INSERT INTO `n_nm` VALUES (4058,2384,'�����',15);
INSERT INTO `n_nm` VALUES (4059,2294,'�������',23);
INSERT INTO `n_nm` VALUES (4060,3158,'���������',7);
INSERT INTO `n_nm` VALUES (4061,5340,'����������',8);
INSERT INTO `n_nm` VALUES (4062,2269,'������',23);
INSERT INTO `n_nm` VALUES (4063,2380,'�������',15);
INSERT INTO `n_nm` VALUES (4064,2562,'�������',11);
INSERT INTO `n_nm` VALUES (4065,5088,'�����',5);
INSERT INTO `n_nm` VALUES (4066,6649,'��������',10);
INSERT INTO `n_nm` VALUES (4067,8281,'������',2);
INSERT INTO `n_nm` VALUES (4068,4734,'����',22);
INSERT INTO `n_nm` VALUES (4069,5088,'�������',5);
INSERT INTO `n_nm` VALUES (4070,2018,'�������',23);
INSERT INTO `n_nm` VALUES (4071,3954,'�������',6);
INSERT INTO `n_nm` VALUES (4072,5993,'�������',16);
INSERT INTO `n_nm` VALUES (4073,5060,'�����',5);
INSERT INTO `n_nm` VALUES (4074,2621,'��������',11);
INSERT INTO `n_nm` VALUES (4075,4793,'������',22);
INSERT INTO `n_nm` VALUES (4076,8567,'������',2);
INSERT INTO `n_nm` VALUES (4077,2483,'��������',15);
INSERT INTO `n_nm` VALUES (4078,2192,'��������',23);
INSERT INTO `n_nm` VALUES (4079,5720,'��������',12);
INSERT INTO `n_nm` VALUES (4080,6790,'�������',10);
INSERT INTO `n_nm` VALUES (4081,5847,'�����',16);
INSERT INTO `n_nm` VALUES (4082,4952,'����� ���',22);
INSERT INTO `n_nm` VALUES (4083,6939,'������',10);
INSERT INTO `n_nm` VALUES (4084,2864,'������',1);
INSERT INTO `n_nm` VALUES (4085,4973,'�������',22);
INSERT INTO `n_nm` VALUES (4086,2967,'�������',1);
INSERT INTO `n_nm` VALUES (4087,6849,'������',10);
INSERT INTO `n_nm` VALUES (4088,6742,'������',10);
INSERT INTO `n_nm` VALUES (4089,2630,'����',11);
INSERT INTO `n_nm` VALUES (4090,2643,'������ ��������',11);
INSERT INTO `n_nm` VALUES (4091,2710,'�����',1);
INSERT INTO `n_nm` VALUES (4092,6274,'����������',25);
INSERT INTO `n_nm` VALUES (4093,5370,'����',8);
INSERT INTO `n_nm` VALUES (4094,9830,'���',28);
INSERT INTO `n_nm` VALUES (4095,8664,'������',29);
INSERT INTO `n_nm` VALUES (4096,4736,'������',22);
INSERT INTO `n_nm` VALUES (4097,6916,'�����',10);
INSERT INTO `n_nm` VALUES (4098,9632,'��������',9);
INSERT INTO `n_nm` VALUES (4099,3962,'������',6);
INSERT INTO `n_nm` VALUES (4100,6845,'��������',10);
INSERT INTO `n_nm` VALUES (4101,3360,'�������',7);
INSERT INTO `n_nm` VALUES (4102,9560,'��������',9);
INSERT INTO `n_nm` VALUES (4103,6469,'����������',27);
INSERT INTO `n_nm` VALUES (4104,6845,'�������',10);
INSERT INTO `n_nm` VALUES (4105,4140,'�����',17);
INSERT INTO `n_nm` VALUES (4106,5447,'�������',8);
INSERT INTO `n_nm` VALUES (4107,5092,'������',5);
INSERT INTO `n_nm` VALUES (4108,6356,'������',27);
INSERT INTO `n_nm` VALUES (4109,6762,'��������',10);
INSERT INTO `n_nm` VALUES (4110,8539,'������',2);
INSERT INTO `n_nm` VALUES (4111,2820,'�����',1);
INSERT INTO `n_nm` VALUES (4112,8630,'����',29);
INSERT INTO `n_nm` VALUES (4113,6596,'������',27);
INSERT INTO `n_nm` VALUES (4114,4340,'������',17);
INSERT INTO `n_nm` VALUES (4115,4154,'�������',17);
INSERT INTO `n_nm` VALUES (4116,4583,'������',14);
INSERT INTO `n_nm` VALUES (4117,6163,'������',25);
INSERT INTO `n_nm` VALUES (4118,3130,'�����',7);
INSERT INTO `n_nm` VALUES (4119,2254,'�����',23);
INSERT INTO `n_nm` VALUES (4120,9537,'�����',9);
INSERT INTO `n_nm` VALUES (4121,4421,'�����',14);
INSERT INTO `n_nm` VALUES (4122,8150,'�����',2);
INSERT INTO `n_nm` VALUES (4123,9369,'��������',9);
INSERT INTO `n_nm` VALUES (4124,8318,'��������',2);
INSERT INTO `n_nm` VALUES (4125,7784,'������',18);
INSERT INTO `n_nm` VALUES (4126,7933,'������',26);
INSERT INTO `n_nm` VALUES (4127,9540,'������',9);
INSERT INTO `n_nm` VALUES (4128,5221,'������',5);
INSERT INTO `n_nm` VALUES (4129,5091,'�����',5);
INSERT INTO `n_nm` VALUES (4130,2225,'�������',23);
INSERT INTO `n_nm` VALUES (4131,4653,'�������',14);
INSERT INTO `n_nm` VALUES (4132,9252,'����',3);
INSERT INTO `n_nm` VALUES (4133,2343,'�������',15);
INSERT INTO `n_nm` VALUES (4134,6659,'������',10);
INSERT INTO `n_nm` VALUES (4135,8536,'������',2);
INSERT INTO `n_nm` VALUES (4136,8112,'������',2);
INSERT INTO `n_nm` VALUES (4137,9105,'������',3);
INSERT INTO `n_nm` VALUES (4138,4960,'�������',22);
INSERT INTO `n_nm` VALUES (4139,5367,'������',8);
INSERT INTO `n_nm` VALUES (4140,4102,'����',17);
INSERT INTO `n_nm` VALUES (4141,8540,'����',2);
INSERT INTO `n_nm` VALUES (4142,7744,'����',26);
INSERT INTO `n_nm` VALUES (4143,3930,'�������',6);
INSERT INTO `n_nm` VALUES (4144,8722,'������',29);
INSERT INTO `n_nm` VALUES (4145,9954,'������',28);
INSERT INTO `n_nm` VALUES (4146,7692,'�����',20);
INSERT INTO `n_nm` VALUES (4147,5304,'��������',8);
INSERT INTO `n_nm` VALUES (4148,6057,'������',25);
INSERT INTO `n_nm` VALUES (4149,6453,'�������',27);
INSERT INTO `n_nm` VALUES (4150,5785,'���������',12);
INSERT INTO `n_nm` VALUES (4151,5397,'����',8);
INSERT INTO `n_nm` VALUES (4152,2863,'������',1);
INSERT INTO `n_nm` VALUES (4153,6251,'�������',25);
INSERT INTO `n_nm` VALUES (4154,3726,'�����',6);
INSERT INTO `n_nm` VALUES (4155,5994,'�����',16);
INSERT INTO `n_nm` VALUES (4156,8574,'�����',2);
INSERT INTO `n_nm` VALUES (4157,6695,'��������',10);
INSERT INTO `n_nm` VALUES (4158,6795,'��������',10);
INSERT INTO `n_nm` VALUES (4159,5057,'������',5);
INSERT INTO `n_nm` VALUES (4160,7000,'����',19);
INSERT INTO `n_nm` VALUES (4161,5380,'���������',8);
INSERT INTO `n_nm` VALUES (4162,3148,'����� ����',7);
INSERT INTO `n_nm` VALUES (4163,5035,'��������',5);
INSERT INTO `n_nm` VALUES (4164,8105,'����������',2);
INSERT INTO `n_nm` VALUES (4165,4956,'������',22);
INSERT INTO `n_nm` VALUES (4166,5079,'�������',5);
INSERT INTO `n_nm` VALUES (4167,6928,'�����',10);
INSERT INTO `n_nm` VALUES (4168,2060,'������',23);
INSERT INTO `n_nm` VALUES (4169,2389,'��������',15);
INSERT INTO `n_nm` VALUES (4170,2550,'���������',11);
INSERT INTO `n_nm` VALUES (4171,2856,'������',1);
INSERT INTO `n_nm` VALUES (4172,4169,'������',17);
INSERT INTO `n_nm` VALUES (4173,4170,'������ ������',17);
INSERT INTO `n_nm` VALUES (4174,6171,'������',25);
INSERT INTO `n_nm` VALUES (4175,6456,'��������',27);
INSERT INTO `n_nm` VALUES (4176,8530,'������',2);
INSERT INTO `n_nm` VALUES (4177,2568,'������',11);
INSERT INTO `n_nm` VALUES (4178,6850,'���',10);
INSERT INTO `n_nm` VALUES (4179,7935,'�������',26);
INSERT INTO `n_nm` VALUES (4180,8842,'��������',21);
INSERT INTO `n_nm` VALUES (4181,5345,'��������',8);
INSERT INTO `n_nm` VALUES (4182,7070,'������',19);
INSERT INTO `n_nm` VALUES (4183,5440,'���������',8);
INSERT INTO `n_nm` VALUES (4184,9251,'����',3);
INSERT INTO `n_nm` VALUES (4185,7318,'�����',18);
INSERT INTO `n_nm` VALUES (4186,8643,'������',29);
INSERT INTO `n_nm` VALUES (4187,2576,'��������',11);
INSERT INTO `n_nm` VALUES (4188,7841,'������',26);
INSERT INTO `n_nm` VALUES (4189,5896,'�������',16);
INSERT INTO `n_nm` VALUES (4190,2387,'�������',15);
INSERT INTO `n_nm` VALUES (4191,6815,'��������',10);
INSERT INTO `n_nm` VALUES (4192,9139,'������',3);
INSERT INTO `n_nm` VALUES (4193,4122,'������',17);
INSERT INTO `n_nm` VALUES (4194,8463,'������',2);
INSERT INTO `n_nm` VALUES (4195,2922,'������',1);
INSERT INTO `n_nm` VALUES (4196,2576,'��������',11);
INSERT INTO `n_nm` VALUES (4197,6568,'�������',27);
INSERT INTO `n_nm` VALUES (4198,9817,'����������',28);
INSERT INTO `n_nm` VALUES (4199,5397,'��������',8);
INSERT INTO `n_nm` VALUES (4200,3933,'�����',6);
INSERT INTO `n_nm` VALUES (4201,6942,'��������',10);
INSERT INTO `n_nm` VALUES (4202,5040,'����������',5);
INSERT INTO `n_nm` VALUES (4203,6878,'��������',10);
INSERT INTO `n_nm` VALUES (4204,6897,'���������',10);
INSERT INTO `n_nm` VALUES (4205,2000,'�������',23);
INSERT INTO `n_nm` VALUES (4206,2620,'����������',11);
INSERT INTO `n_nm` VALUES (4207,9101,'��������',3);
INSERT INTO `n_nm` VALUES (4208,5035,'��������',5);
INSERT INTO `n_nm` VALUES (4209,7454,'������',18);
INSERT INTO `n_nm` VALUES (4210,2895,'��������� �������',1);
INSERT INTO `n_nm` VALUES (4211,9384,'���������',9);
INSERT INTO `n_nm` VALUES (4212,2879,'���������',1);
INSERT INTO `n_nm` VALUES (4213,8865,'���������',21);
INSERT INTO `n_nm` VALUES (4214,6051,'���������',25);
INSERT INTO `n_nm` VALUES (4215,8484,'��� �������',2);
INSERT INTO `n_nm` VALUES (4216,5949,'����������',16);
INSERT INTO `n_nm` VALUES (4217,2800,'���������',1);
INSERT INTO `n_nm` VALUES (4218,7059,'��������',19);
INSERT INTO `n_nm` VALUES (4219,2650,'�������� ����',11);
INSERT INTO `n_nm` VALUES (4220,2645,'��������',11);
INSERT INTO `n_nm` VALUES (4221,3333,'�������',7);
INSERT INTO `n_nm` VALUES (4222,8659,'��������',29);
INSERT INTO `n_nm` VALUES (4223,2120,'�������',23);
INSERT INTO `n_nm` VALUES (4224,4447,'�����',14);
INSERT INTO `n_nm` VALUES (4225,2950,'�������',1);
INSERT INTO `n_nm` VALUES (4226,6961,'����',10);
INSERT INTO `n_nm` VALUES (4227,4449,'����',14);
INSERT INTO `n_nm` VALUES (4228,6595,'�������',27);
INSERT INTO `n_nm` VALUES (4229,8899,'�������',21);
INSERT INTO `n_nm` VALUES (4230,9006,'��. ���������� � ��',3);
INSERT INTO `n_nm` VALUES (4231,7082,'��������',18);
INSERT INTO `n_nm` VALUES (4232,6675,'��������',10);
INSERT INTO `n_nm` VALUES (4233,4304,'������',17);
INSERT INTO `n_nm` VALUES (4234,4620,'����� �����',14);
INSERT INTO `n_nm` VALUES (4235,8256,'����� ����',2);
INSERT INTO `n_nm` VALUES (4236,8258,'����� ���� - ������',2);
INSERT INTO `n_nm` VALUES (4237,4577,'����� ����������',14);
INSERT INTO `n_nm` VALUES (4238,9662,'����� ������',9);
INSERT INTO `n_nm` VALUES (4239,6890,'�������',10);
INSERT INTO `n_nm` VALUES (4240,7877,'�������',26);
INSERT INTO `n_nm` VALUES (4241,6420,'��������',27);
INSERT INTO `n_nm` VALUES (4242,8322,'��������',2);
INSERT INTO `n_nm` VALUES (4243,6547,'��������',27);
INSERT INTO `n_nm` VALUES (4244,2449,'������',15);
INSERT INTO `n_nm` VALUES (4245,1252,'������������',23);
INSERT INTO `n_nm` VALUES (4246,7554,'���������',20);
INSERT INTO `n_nm` VALUES (4247,6378,'���������',27);
INSERT INTO `n_nm` VALUES (4248,5080,'�����������',5);
INSERT INTO `n_nm` VALUES (4249,6768,'��������',10);
INSERT INTO `n_nm` VALUES (4250,7423,'�������',18);
INSERT INTO `n_nm` VALUES (4251,2266,'������',23);
INSERT INTO `n_nm` VALUES (4252,6500,'����������',27);
INSERT INTO `n_nm` VALUES (4253,5300,'��������� ���',8);
INSERT INTO `n_nm` VALUES (4254,6578,'�������',27);
INSERT INTO `n_nm` VALUES (4255,6499,'��������',27);
INSERT INTO `n_nm` VALUES (4256,5367,'������',8);
INSERT INTO `n_nm` VALUES (4257,7960,'��������',26);
INSERT INTO `n_nm` VALUES (4258,5250,'������',5);
INSERT INTO `n_nm` VALUES (4259,9398,'�������',9);
INSERT INTO `n_nm` VALUES (4260,8103,'�������',2);
INSERT INTO `n_nm` VALUES (4261,6800,'�������',10);
INSERT INTO `n_nm` VALUES (4262,4532,'�������',14);
INSERT INTO `n_nm` VALUES (4263,6230,'�������',25);
INSERT INTO `n_nm` VALUES (4264,6278,'��������',25);
INSERT INTO `n_nm` VALUES (4265,6706,'�����������',10);
INSERT INTO `n_nm` VALUES (4266,7997,'���������',26);
INSERT INTO `n_nm` VALUES (4267,2260,'�����',23);
INSERT INTO `n_nm` VALUES (4268,2171,'�����',23);
INSERT INTO `n_nm` VALUES (4269,7332,'�����',18);
INSERT INTO `n_nm` VALUES (4270,6745,'���������',10);
INSERT INTO `n_nm` VALUES (4271,9405,'��������',9);
INSERT INTO `n_nm` VALUES (4272,9415,'�������',9);
INSERT INTO `n_nm` VALUES (4273,5400,'��������',8);
INSERT INTO `n_nm` VALUES (4274,2834,'�������',1);
INSERT INTO `n_nm` VALUES (4275,6827,'�������',10);
INSERT INTO `n_nm` VALUES (4276,8994,'���������',21);
INSERT INTO `n_nm` VALUES (4277,6800,'�������',10);
INSERT INTO `n_nm` VALUES (4278,6789,'��������',10);
INSERT INTO `n_nm` VALUES (4279,6621,'���������',10);
INSERT INTO `n_nm` VALUES (4280,5300,'����������',8);
INSERT INTO `n_nm` VALUES (4281,7282,'������',18);
INSERT INTO `n_nm` VALUES (4282,5344,'��������',8);
INSERT INTO `n_nm` VALUES (4283,5041,'���������',5);
INSERT INTO `n_nm` VALUES (4284,6890,'�������',10);
INSERT INTO `n_nm` VALUES (4285,7665,'��������',20);
INSERT INTO `n_nm` VALUES (4286,3301,'���������',7);
INSERT INTO `n_nm` VALUES (4287,8862,'����������',21);
INSERT INTO `n_nm` VALUES (4288,2744,'������',1);
INSERT INTO `n_nm` VALUES (4289,5462,'������',8);
INSERT INTO `n_nm` VALUES (4290,4735,'������',22);
INSERT INTO `n_nm` VALUES (4291,2377,'������� ���',15);
INSERT INTO `n_nm` VALUES (4292,6487,'������ ������',27);
INSERT INTO `n_nm` VALUES (4293,9655,'�����',9);
INSERT INTO `n_nm` VALUES (4294,6184,'�����',25);
INSERT INTO `n_nm` VALUES (4295,5655,'�����',12);
INSERT INTO `n_nm` VALUES (4296,4129,'�����',17);
INSERT INTO `n_nm` VALUES (4297,4814,'�����',22);
INSERT INTO `n_nm` VALUES (4298,2060,'�������',23);
INSERT INTO `n_nm` VALUES (4299,7072,'�����������',19);
INSERT INTO `n_nm` VALUES (4300,5340,'�����������',8);
INSERT INTO `n_nm` VALUES (4301,7970,'�������',26);
INSERT INTO `n_nm` VALUES (4302,5035,'��������',5);
INSERT INTO `n_nm` VALUES (4303,4474,'���������',14);
INSERT INTO `n_nm` VALUES (4304,5450,'������',8);
INSERT INTO `n_nm` VALUES (4305,7271,'������',19);
INSERT INTO `n_nm` VALUES (4306,6481,'��������',27);
INSERT INTO `n_nm` VALUES (4307,9634,'�������',9);
INSERT INTO `n_nm` VALUES (4308,2752,'�������',1);
INSERT INTO `n_nm` VALUES (4309,6800,'�����',10);
INSERT INTO `n_nm` VALUES (4310,4490,'���������',14);
INSERT INTO `n_nm` VALUES (4311,3637,'������������',13);
INSERT INTO `n_nm` VALUES (4312,3796,'������������',6);
INSERT INTO `n_nm` VALUES (4313,9693,'������������',9);
INSERT INTO `n_nm` VALUES (4314,7341,'������',18);
INSERT INTO `n_nm` VALUES (4315,4469,'��������',14);
INSERT INTO `n_nm` VALUES (4316,2875,'��������',1);
INSERT INTO `n_nm` VALUES (4317,6660,'����������',10);
INSERT INTO `n_nm` VALUES (4318,5360,'����� �����',8);
INSERT INTO `n_nm` VALUES (4319,9923,'������',28);
INSERT INTO `n_nm` VALUES (4320,6585,'��� ��������',27);
INSERT INTO `n_nm` VALUES (4321,6522,'���� ����',27);
INSERT INTO `n_nm` VALUES (4322,4780,'������',22);
INSERT INTO `n_nm` VALUES (4323,8438,'������',2);
INSERT INTO `n_nm` VALUES (4324,6380,'�����',27);
INSERT INTO `n_nm` VALUES (4325,7500,'��������',20);
INSERT INTO `n_nm` VALUES (4326,6490,'������������',27);
INSERT INTO `n_nm` VALUES (4327,4475,'����������',14);
INSERT INTO `n_nm` VALUES (4328,8665,'���������',29);
INSERT INTO `n_nm` VALUES (4329,2730,'�������',1);
INSERT INTO `n_nm` VALUES (4330,3737,'���������',6);
INSERT INTO `n_nm` VALUES (4331,6567,'��������',27);
INSERT INTO `n_nm` VALUES (4332,9125,'������',3);
INSERT INTO `n_nm` VALUES (4333,6825,'��������',10);
INSERT INTO `n_nm` VALUES (4334,8279,'���������',2);
INSERT INTO `n_nm` VALUES (4335,9950,'���� ���',28);
INSERT INTO `n_nm` VALUES (4336,4236,'���� ����',17);
INSERT INTO `n_nm` VALUES (4337,8534,'���� ���',2);
INSERT INTO `n_nm` VALUES (4338,6956,'�������',10);
INSERT INTO `n_nm` VALUES (4339,4442,'��������',14);
INSERT INTO `n_nm` VALUES (4340,6785,'������',10);
INSERT INTO `n_nm` VALUES (4341,3139,'����� �����',7);
INSERT INTO `n_nm` VALUES (4342,8332,'����� ������',2);
INSERT INTO `n_nm` VALUES (4343,7287,'���� ����',18);
INSERT INTO `n_nm` VALUES (4344,6629,'�����',10);
INSERT INTO `n_nm` VALUES (4345,3254,'��������',7);
INSERT INTO `n_nm` VALUES (4346,9564,'��������',9);
INSERT INTO `n_nm` VALUES (4347,6359,'��������',27);
INSERT INTO `n_nm` VALUES (4348,2450,'��������',15);
INSERT INTO `n_nm` VALUES (4349,8744,'������',29);
INSERT INTO `n_nm` VALUES (4350,4104,'������',17);
INSERT INTO `n_nm` VALUES (4351,7583,'������',20);
INSERT INTO `n_nm` VALUES (4352,7667,'�����',20);
INSERT INTO `n_nm` VALUES (4353,8462,'�����',2);
INSERT INTO `n_nm` VALUES (4354,6923,'������',10);
INSERT INTO `n_nm` VALUES (4355,8575,'������',2);
INSERT INTO `n_nm` VALUES (4356,6846,'�������',10);
INSERT INTO `n_nm` VALUES (4357,8645,'�������',29);
INSERT INTO `n_nm` VALUES (4358,6652,'�������',10);
INSERT INTO `n_nm` VALUES (4359,6748,'������ �����',10);
INSERT INTO `n_nm` VALUES (4360,5386,'�������',8);
INSERT INTO `n_nm` VALUES (4361,5644,'����������',12);
INSERT INTO `n_nm` VALUES (4362,2811,'������',1);
INSERT INTO `n_nm` VALUES (4363,6429,'���������',27);
INSERT INTO `n_nm` VALUES (4364,5508,'���������',12);
INSERT INTO `n_nm` VALUES (4365,6148,'���������',25);
INSERT INTO `n_nm` VALUES (4366,4227,'���������',17);
INSERT INTO `n_nm` VALUES (4367,8871,'���������',21);
INSERT INTO `n_nm` VALUES (4368,3946,'������',6);
INSERT INTO `n_nm` VALUES (4369,5350,'��������',8);
INSERT INTO `n_nm` VALUES (4370,2143,'��������',23);
INSERT INTO `n_nm` VALUES (4371,2964,'���������',1);
INSERT INTO `n_nm` VALUES (4372,2663,'������',11);
INSERT INTO `n_nm` VALUES (4373,2599,'��������',11);
INSERT INTO `n_nm` VALUES (4374,2897,'�����',1);
INSERT INTO `n_nm` VALUES (4375,4134,'�������',17);
INSERT INTO `n_nm` VALUES (4376,6720,'��������',10);
INSERT INTO `n_nm` VALUES (4377,9366,'��������',9);
INSERT INTO `n_nm` VALUES (4378,6576,'��������',27);
INSERT INTO `n_nm` VALUES (4379,5391,'����������',8);
INSERT INTO `n_nm` VALUES (4380,8738,'����������',29);
INSERT INTO `n_nm` VALUES (4381,9247,'����������',3);
INSERT INTO `n_nm` VALUES (4382,4747,'��������',22);
INSERT INTO `n_nm` VALUES (4383,5858,'���������',16);
INSERT INTO `n_nm` VALUES (4384,4496,'���������',14);
INSERT INTO `n_nm` VALUES (4385,3451,'��������',13);
INSERT INTO `n_nm` VALUES (4386,5522,'��������',12);
INSERT INTO `n_nm` VALUES (4387,5565,'�������',12);
INSERT INTO `n_nm` VALUES (4388,6236,'��������',25);
INSERT INTO `n_nm` VALUES (4389,5840,'���������',16);
INSERT INTO `n_nm` VALUES (4390,7860,'���������',26);
INSERT INTO `n_nm` VALUES (4391,6473,'���������',27);
INSERT INTO `n_nm` VALUES (4392,8460,'��������',2);
INSERT INTO `n_nm` VALUES (4393,9257,'������ ����',3);
INSERT INTO `n_nm` VALUES (4394,6960,'���������',10);
INSERT INTO `n_nm` VALUES (4395,6534,'������',27);
INSERT INTO `n_nm` VALUES (4396,6064,'������ ��������',25);
INSERT INTO `n_nm` VALUES (4397,2369,'��������',15);
INSERT INTO `n_nm` VALUES (4398,8663,'�������',29);
INSERT INTO `n_nm` VALUES (4399,3728,'����� ����',6);
INSERT INTO `n_nm` VALUES (4400,3769,'���������',6);
INSERT INTO `n_nm` VALUES (4401,3535,'�������',13);
INSERT INTO `n_nm` VALUES (4402,4342,'�������',17);
INSERT INTO `n_nm` VALUES (4403,5564,'�������',12);
INSERT INTO `n_nm` VALUES (4404,7585,'�������',20);
INSERT INTO `n_nm` VALUES (4405,5768,'�������',12);
INSERT INTO `n_nm` VALUES (4406,2642,'�������',11);
INSERT INTO `n_nm` VALUES (4407,2449,'�������',15);
INSERT INTO `n_nm` VALUES (4408,2937,'������',1);
INSERT INTO `n_nm` VALUES (4409,9784,'������',28);
INSERT INTO `n_nm` VALUES (4410,6919,'��������',10);
INSERT INTO `n_nm` VALUES (4411,8358,'���������',2);
INSERT INTO `n_nm` VALUES (4412,3668,'�������',13);
INSERT INTO `n_nm` VALUES (4413,5537,'������',12);
INSERT INTO `n_nm` VALUES (4414,8800,'������',21);
INSERT INTO `n_nm` VALUES (4415,8840,'��������� ���. ����',21);
INSERT INTO `n_nm` VALUES (4416,9395,'��������',9);
INSERT INTO `n_nm` VALUES (4417,6176,'�������',25);
INSERT INTO `n_nm` VALUES (4418,4943,'������',22);
INSERT INTO `n_nm` VALUES (4419,2844,'��������',1);
INSERT INTO `n_nm` VALUES (4420,2200,'��������',23);
INSERT INTO `n_nm` VALUES (4421,7060,'����� ����',19);
INSERT INTO `n_nm` VALUES (4422,3664,'��������',13);
INSERT INTO `n_nm` VALUES (4423,5157,'���������',5);
INSERT INTO `n_nm` VALUES (4424,3915,'���������',6);
INSERT INTO `n_nm` VALUES (4425,4710,'�������',22);
INSERT INTO `n_nm` VALUES (4426,8331,'�������',2);
INSERT INTO `n_nm` VALUES (4427,5367,'�������',8);
INSERT INTO `n_nm` VALUES (4428,2484,'��������',15);
INSERT INTO `n_nm` VALUES (4429,2533,'���������',11);
INSERT INTO `n_nm` VALUES (4430,5229,'������',5);
INSERT INTO `n_nm` VALUES (4431,8240,'������� ����',2);
INSERT INTO `n_nm` VALUES (4432,9144,'��������',3);
INSERT INTO `n_nm` VALUES (4433,7963,'���������',26);
INSERT INTO `n_nm` VALUES (4434,6850,'����������',10);
INSERT INTO `n_nm` VALUES (4435,7577,'������',20);
INSERT INTO `n_nm` VALUES (4436,4531,'������',14);
INSERT INTO `n_nm` VALUES (4437,5333,'��������',8);
INSERT INTO `n_nm` VALUES (4438,4770,'������',22);
INSERT INTO `n_nm` VALUES (4439,9679,'����',9);
INSERT INTO `n_nm` VALUES (4440,3663,'����������',13);
INSERT INTO `n_nm` VALUES (4441,7074,'����������',19);
INSERT INTO `n_nm` VALUES (4442,6467,'���������',27);
INSERT INTO `n_nm` VALUES (4443,2456,'������ ���',15);
INSERT INTO `n_nm` VALUES (4444,2794,'�������',1);
INSERT INTO `n_nm` VALUES (4445,2583,'���������',11);
INSERT INTO `n_nm` VALUES (4446,8491,'�������',2);
INSERT INTO `n_nm` VALUES (4447,9383,'��������',9);
INSERT INTO `n_nm` VALUES (4448,2073,'�������',23);
INSERT INTO `n_nm` VALUES (4449,2255,'������',23);
INSERT INTO `n_nm` VALUES (4450,4700,'������',22);
INSERT INTO `n_nm` VALUES (4451,3450,'����������',13);
INSERT INTO `n_nm` VALUES (4452,5547,'������',12);
INSERT INTO `n_nm` VALUES (4453,2641,'�������',11);
INSERT INTO `n_nm` VALUES (4454,9820,'�������',28);
INSERT INTO `n_nm` VALUES (4455,8568,'�����',2);
INSERT INTO `n_nm` VALUES (4456,9244,'�������',3);
INSERT INTO `n_nm` VALUES (4457,6741,'��������',10);
INSERT INTO `n_nm` VALUES (4458,9557,'����',9);
INSERT INTO `n_nm` VALUES (4459,9533,'�������',9);
INSERT INTO `n_nm` VALUES (4460,8579,'�������',2);
INSERT INTO `n_nm` VALUES (4461,5283,'������',5);
INSERT INTO `n_nm` VALUES (4462,2547,'��������',11);
INSERT INTO `n_nm` VALUES (4463,8130,'�������',2);
INSERT INTO `n_nm` VALUES (4464,7621,'�����',20);
INSERT INTO `n_nm` VALUES (4465,8945,'�����',21);
INSERT INTO `n_nm` VALUES (4466,3258,'��������',7);
INSERT INTO `n_nm` VALUES (4467,8984,'���������',21);
INSERT INTO `n_nm` VALUES (4468,6595,'���������',27);
INSERT INTO `n_nm` VALUES (4469,8554,'�������',2);
INSERT INTO `n_nm` VALUES (4470,6812,'��������',10);
INSERT INTO `n_nm` VALUES (4471,6694,'��������',10);
INSERT INTO `n_nm` VALUES (4472,4367,'��������',17);
INSERT INTO `n_nm` VALUES (4473,9351,'��������',9);
INSERT INTO `n_nm` VALUES (4474,9640,'��������',9);
INSERT INTO `n_nm` VALUES (4475,5392,'��������',8);
INSERT INTO `n_nm` VALUES (4476,8435,'��������',2);
INSERT INTO `n_nm` VALUES (4477,5538,'��������',12);
INSERT INTO `n_nm` VALUES (4478,4751,'���������',22);
INSERT INTO `n_nm` VALUES (4479,6648,'��������',10);
INSERT INTO `n_nm` VALUES (4480,6688,'��������',10);
INSERT INTO `n_nm` VALUES (4481,5300,'������',8);
INSERT INTO `n_nm` VALUES (4482,4711,'������',22);
INSERT INTO `n_nm` VALUES (4483,6721,'������',10);
INSERT INTO `n_nm` VALUES (4484,9122,'������',3);
INSERT INTO `n_nm` VALUES (4485,5959,'�������',16);
INSERT INTO `n_nm` VALUES (4486,2378,'������',15);
INSERT INTO `n_nm` VALUES (4487,2664,'������',11);
INSERT INTO `n_nm` VALUES (4488,4330,'�����',17);
INSERT INTO `n_nm` VALUES (4489,5571,'�����',12);
INSERT INTO `n_nm` VALUES (4490,4974,'�������',22);
INSERT INTO `n_nm` VALUES (4491,8859,'������',21);
INSERT INTO `n_nm` VALUES (4492,6850,'�������',10);
INSERT INTO `n_nm` VALUES (4493,1000,'�����',23);
INSERT INTO `n_nm` VALUES (4494,3348,'����������',7);
INSERT INTO `n_nm` VALUES (4495,5344,'������',8);
INSERT INTO `n_nm` VALUES (4496,3546,'���������',13);
INSERT INTO `n_nm` VALUES (4497,9561,'�������',9);
INSERT INTO `n_nm` VALUES (4498,6249,'�������',25);
INSERT INTO `n_nm` VALUES (4499,5340,'��������',8);
INSERT INTO `n_nm` VALUES (4500,2811,'�������',1);
INSERT INTO `n_nm` VALUES (4501,6346,'��������',27);
INSERT INTO `n_nm` VALUES (4502,6799,'�������',10);
INSERT INTO `n_nm` VALUES (4503,7541,'��������',20);
INSERT INTO `n_nm` VALUES (4504,3847,'�����������',6);
INSERT INTO `n_nm` VALUES (4505,4525,'����������',14);
INSERT INTO `n_nm` VALUES (4506,7587,'��������',20);
INSERT INTO `n_nm` VALUES (4507,4998,'������',22);
INSERT INTO `n_nm` VALUES (4508,6066,'������',25);
INSERT INTO `n_nm` VALUES (4509,8300,'������',2);
INSERT INTO `n_nm` VALUES (4510,9546,'�������',9);
INSERT INTO `n_nm` VALUES (4511,6738,'��������',10);
INSERT INTO `n_nm` VALUES (4512,7949,'�������',26);
INSERT INTO `n_nm` VALUES (4513,7560,'�������',20);
INSERT INTO `n_nm` VALUES (4514,2062,'��������',23);
INSERT INTO `n_nm` VALUES (4515,9968,'���������',28);
INSERT INTO `n_nm` VALUES (4516,2918,'������',1);
INSERT INTO `n_nm` VALUES (4517,8581,'������ ������',2);
INSERT INTO `n_nm` VALUES (4518,6717,'��������',10);
INSERT INTO `n_nm` VALUES (4519,5093,'������ ������',5);
INSERT INTO `n_nm` VALUES (4520,3137,'������ ���',7);
INSERT INTO `n_nm` VALUES (4521,6241,'������ �������',25);
INSERT INTO `n_nm` VALUES (4522,9222,'������ ����',3);
INSERT INTO `n_nm` VALUES (4523,5088,'������ ����',5);
INSERT INTO `n_nm` VALUES (4524,6166,'������������',25);
INSERT INTO `n_nm` VALUES (4525,4954,'�����������',22);
INSERT INTO `n_nm` VALUES (4526,9798,'������',28);
INSERT INTO `n_nm` VALUES (4527,3959,'���������',6);
INSERT INTO `n_nm` VALUES (4528,4798,'������',22);
INSERT INTO `n_nm` VALUES (4529,8845,'��������',21);
INSERT INTO `n_nm` VALUES (4530,2555,'��������',11);
INSERT INTO `n_nm` VALUES (4531,7433,'����������',18);
INSERT INTO `n_nm` VALUES (4532,6693,'�������',10);
INSERT INTO `n_nm` VALUES (4533,6890,'�������',10);
INSERT INTO `n_nm` VALUES (4534,6565,'����',27);
INSERT INTO `n_nm` VALUES (4535,6775,'�������',10);
INSERT INTO `n_nm` VALUES (4536,5863,'��������',16);
INSERT INTO `n_nm` VALUES (4537,9673,'�������',9);
INSERT INTO `n_nm` VALUES (4538,5350,'���������',8);
INSERT INTO `n_nm` VALUES (4539,4931,'������� ���',22);
INSERT INTO `n_nm` VALUES (4540,2489,'���������',15);
INSERT INTO `n_nm` VALUES (4541,3963,'��������',6);
INSERT INTO `n_nm` VALUES (4542,6433,'�������',27);
INSERT INTO `n_nm` VALUES (4543,3657,'��������� ������',13);
INSERT INTO `n_nm` VALUES (4544,4210,'������������',17);
INSERT INTO `n_nm` VALUES (4545,6311,'������������',27);
INSERT INTO `n_nm` VALUES (4546,2069,'����������',23);
INSERT INTO `n_nm` VALUES (4547,5249,'����������',5);
INSERT INTO `n_nm` VALUES (4548,7063,'����������',19);
INSERT INTO `n_nm` VALUES (4549,6362,'����������',27);
INSERT INTO `n_nm` VALUES (4550,9917,'����',28);
INSERT INTO `n_nm` VALUES (4551,3641,'�������',13);
INSERT INTO `n_nm` VALUES (4552,7915,'������',26);
INSERT INTO `n_nm` VALUES (4553,9952,'��������',28);
INSERT INTO `n_nm` VALUES (4554,5380,'������',8);
INSERT INTO `n_nm` VALUES (4555,5367,'������� ���',8);
INSERT INTO `n_nm` VALUES (4556,2391,'���������',15);
INSERT INTO `n_nm` VALUES (4557,9872,'��������',28);
INSERT INTO `n_nm` VALUES (4558,2254,'��������',23);
INSERT INTO `n_nm` VALUES (4559,6792,'���� �����',10);
INSERT INTO `n_nm` VALUES (4560,6000,'����� ������',25);
INSERT INTO `n_nm` VALUES (4561,2845,'����� ������',1);
INSERT INTO `n_nm` VALUES (4562,8841,'����� ����',21);
INSERT INTO `n_nm` VALUES (4563,8675,'����� ����',29);
INSERT INTO `n_nm` VALUES (4564,7999,'����� �����',26);
INSERT INTO `n_nm` VALUES (4565,6880,'����������',10);
INSERT INTO `n_nm` VALUES (4566,6964,'����� ���',10);
INSERT INTO `n_nm` VALUES (4567,5343,'�����������',8);
INSERT INTO `n_nm` VALUES (4568,6572,'���������',27);
INSERT INTO `n_nm` VALUES (4569,4165,'����� ��������',17);
INSERT INTO `n_nm` VALUES (4570,6741,'����� �����',10);
INSERT INTO `n_nm` VALUES (4571,9110,'����� �������',3);
INSERT INTO `n_nm` VALUES (4572,7447,'����� ������',18);
INSERT INTO `n_nm` VALUES (4573,3142,'����� ����',7);
INSERT INTO `n_nm` VALUES (4574,2412,'����� ����',15);
INSERT INTO `n_nm` VALUES (4575,8876,'����� ����',21);
INSERT INTO `n_nm` VALUES (4576,5671,'����� ����',12);
INSERT INTO `n_nm` VALUES (4577,7637,'����� ����',20);
INSERT INTO `n_nm` VALUES (4578,6877,'�������',10);
INSERT INTO `n_nm` VALUES (4579,6062,'������������� ����',25);
INSERT INTO `n_nm` VALUES (4580,3822,'�����������',6);
INSERT INTO `n_nm` VALUES (4581,4175,'��������',17);
INSERT INTO `n_nm` VALUES (4582,9226,'����������',3);
INSERT INTO `n_nm` VALUES (4583,5865,'����������',16);
INSERT INTO `n_nm` VALUES (4584,4987,'��������',22);
INSERT INTO `n_nm` VALUES (4585,2861,'��������',1);
INSERT INTO `n_nm` VALUES (4586,7963,'��������',26);
INSERT INTO `n_nm` VALUES (4587,7960,'�������',26);
INSERT INTO `n_nm` VALUES (4588,5920,'���������',16);
INSERT INTO `n_nm` VALUES (4589,2566,'�������',11);
INSERT INTO `n_nm` VALUES (4590,9293,'������ �������',3);
INSERT INTO `n_nm` VALUES (4591,7633,'������ �������',20);
INSERT INTO `n_nm` VALUES (4592,9371,'������ �������',9);
INSERT INTO `n_nm` VALUES (4593,8725,'������ ���������',29);
INSERT INTO `n_nm` VALUES (4594,5192,'������ ����������',5);
INSERT INTO `n_nm` VALUES (4595,5335,'���������',8);
INSERT INTO `n_nm` VALUES (4596,9360,'���������',9);
INSERT INTO `n_nm` VALUES (4597,5581,'���������',12);
INSERT INTO `n_nm` VALUES (4598,2414,'���������',15);
INSERT INTO `n_nm` VALUES (4599,4712,'������',22);
INSERT INTO `n_nm` VALUES (4600,2638,'����',11);
INSERT INTO `n_nm` VALUES (4601,4266,'������',17);
INSERT INTO `n_nm` VALUES (4602,5347,'�������',8);
INSERT INTO `n_nm` VALUES (4603,2800,'�����',1);
INSERT INTO `n_nm` VALUES (4604,9350,'������',9);
INSERT INTO `n_nm` VALUES (4605,8940,'����� �������',21);
INSERT INTO `n_nm` VALUES (4606,8359,'��������',2);
INSERT INTO `n_nm` VALUES (4607,4715,'��������',22);
INSERT INTO `n_nm` VALUES (4608,6341,'��������',27);
INSERT INTO `n_nm` VALUES (4609,5301,'���������',8);
INSERT INTO `n_nm` VALUES (4610,7953,'��������',26);
INSERT INTO `n_nm` VALUES (4611,5625,'������������',12);
INSERT INTO `n_nm` VALUES (4612,5081,'���������',5);
INSERT INTO `n_nm` VALUES (4613,5343,'���������',8);
INSERT INTO `n_nm` VALUES (4614,5462,'�������',8);
INSERT INTO `n_nm` VALUES (4615,4338,'���������',17);
INSERT INTO `n_nm` VALUES (4616,6054,'���������',25);
INSERT INTO `n_nm` VALUES (4617,2134,'�������',23);
INSERT INTO `n_nm` VALUES (4618,5452,'������',8);
INSERT INTO `n_nm` VALUES (4619,4822,'���������',22);
INSERT INTO `n_nm` VALUES (4620,5304,'�����������',8);
INSERT INTO `n_nm` VALUES (4621,6873,'��������',10);
INSERT INTO `n_nm` VALUES (4622,6243,'����� �������',25);
INSERT INTO `n_nm` VALUES (4623,9928,'����� �����������',28);
INSERT INTO `n_nm` VALUES (4624,6773,'��������',10);
INSERT INTO `n_nm` VALUES (4625,3539,'��������',13);
INSERT INTO `n_nm` VALUES (4626,5084,'���������',5);
INSERT INTO `n_nm` VALUES (4627,3134,'���������',7);
INSERT INTO `n_nm` VALUES (4628,2584,'����������',11);
INSERT INTO `n_nm` VALUES (4629,4726,'������',22);
INSERT INTO `n_nm` VALUES (4630,7738,'������',26);
INSERT INTO `n_nm` VALUES (4631,5365,'��������',8);
INSERT INTO `n_nm` VALUES (4632,6731,'���������',10);
INSERT INTO `n_nm` VALUES (4633,6954,'�������',10);
INSERT INTO `n_nm` VALUES (4634,7217,'�������',18);
INSERT INTO `n_nm` VALUES (4635,9615,'��������',9);
INSERT INTO `n_nm` VALUES (4636,5150,'��������',5);
INSERT INTO `n_nm` VALUES (4637,6710,'���������',10);
INSERT INTO `n_nm` VALUES (4638,8680,'��������',29);
INSERT INTO `n_nm` VALUES (4639,8758,'��������',29);
INSERT INTO `n_nm` VALUES (4640,6929,'����������',10);
INSERT INTO `n_nm` VALUES (4641,6428,'��������',27);
INSERT INTO `n_nm` VALUES (4642,9142,'�������',3);
INSERT INTO `n_nm` VALUES (4643,6660,'������� �������',10);
INSERT INTO `n_nm` VALUES (4644,9774,'����������',28);
INSERT INTO `n_nm` VALUES (4645,5190,'����������',5);
INSERT INTO `n_nm` VALUES (4646,8222,'�������',2);
INSERT INTO `n_nm` VALUES (4647,9179,'������������',3);
INSERT INTO `n_nm` VALUES (4648,4988,'���������-����.�.',22);
INSERT INTO `n_nm` VALUES (4649,2482,'�������������',15);
INSERT INTO `n_nm` VALUES (4650,5133,'�������',5);
INSERT INTO `n_nm` VALUES (4651,6058,'�������',25);
INSERT INTO `n_nm` VALUES (4652,7562,'���������',20);
INSERT INTO `n_nm` VALUES (4653,4152,'�������',17);
INSERT INTO `n_nm` VALUES (4654,8995,'�������',21);
INSERT INTO `n_nm` VALUES (4655,4530,'�������',14);
INSERT INTO `n_nm` VALUES (4656,6683,'��������',10);
INSERT INTO `n_nm` VALUES (4657,6680,'�������',10);
INSERT INTO `n_nm` VALUES (4658,6899,'�������',10);
INSERT INTO `n_nm` VALUES (4659,4197,'�������',17);
INSERT INTO `n_nm` VALUES (4660,8732,'�������',29);
INSERT INTO `n_nm` VALUES (4661,7964,'����������',26);
INSERT INTO `n_nm` VALUES (4662,5626,'�������',12);
INSERT INTO `n_nm` VALUES (4663,3919,'���������',6);
INSERT INTO `n_nm` VALUES (4664,9804,'�������',28);
INSERT INTO `n_nm` VALUES (4665,2806,'������',1);
INSERT INTO `n_nm` VALUES (4666,2895,'�����������',1);
INSERT INTO `n_nm` VALUES (4667,2825,'��������',1);
INSERT INTO `n_nm` VALUES (4668,3132,'�������',7);
INSERT INTO `n_nm` VALUES (4669,8856,'�������',21);
INSERT INTO `n_nm` VALUES (4670,8555,'�����',2);
INSERT INTO `n_nm` VALUES (4671,5365,'�������',8);
INSERT INTO `n_nm` VALUES (4672,4142,'������',17);
INSERT INTO `n_nm` VALUES (4673,3490,'������',13);
INSERT INTO `n_nm` VALUES (4674,2488,'������ �����',15);
INSERT INTO `n_nm` VALUES (4675,6958,'������ ��������',10);
INSERT INTO `n_nm` VALUES (4676,4932,'�������',22);
INSERT INTO `n_nm` VALUES (4677,2344,'�������',15);
INSERT INTO `n_nm` VALUES (4678,6538,'�������',27);
INSERT INTO `n_nm` VALUES (4679,7279,'��������',18);
INSERT INTO `n_nm` VALUES (4680,4878,'��������',22);
INSERT INTO `n_nm` VALUES (4681,9768,'���������',28);
INSERT INTO `n_nm` VALUES (4682,3480,'������� ����',13);
INSERT INTO `n_nm` VALUES (4683,2135,'�������',23);
INSERT INTO `n_nm` VALUES (4684,7124,'�������',19);
INSERT INTO `n_nm` VALUES (4685,4957,'��������',22);
INSERT INTO `n_nm` VALUES (4686,9170,'��������',3);
INSERT INTO `n_nm` VALUES (4687,2820,'��������',1);
INSERT INTO `n_nm` VALUES (4688,2062,'������',23);
INSERT INTO `n_nm` VALUES (4689,6062,'������',25);
INSERT INTO `n_nm` VALUES (4690,5094,'�������',5);
INSERT INTO `n_nm` VALUES (4691,3491,'�����',13);
INSERT INTO `n_nm` VALUES (4692,8470,'����������',2);
INSERT INTO `n_nm` VALUES (4693,6352,'�����',27);
INSERT INTO `n_nm` VALUES (4694,9881,'���� ����',28);
INSERT INTO `n_nm` VALUES (4695,5045,'���� ����',5);
INSERT INTO `n_nm` VALUES (4696,5988,'������',16);
INSERT INTO `n_nm` VALUES (4697,5240,'��������',5);
INSERT INTO `n_nm` VALUES (4698,6794,'������',10);
INSERT INTO `n_nm` VALUES (4699,7618,'�������',20);
INSERT INTO `n_nm` VALUES (4700,8328,'�������',2);
INSERT INTO `n_nm` VALUES (4701,4209,'�������',17);
INSERT INTO `n_nm` VALUES (4702,5380,'����������',8);
INSERT INTO `n_nm` VALUES (4703,2736,'���������',1);
INSERT INTO `n_nm` VALUES (4704,7324,'������',18);
INSERT INTO `n_nm` VALUES (4705,9868,'������',28);
INSERT INTO `n_nm` VALUES (4706,2759,'������',1);
INSERT INTO `n_nm` VALUES (4707,5177,'������',5);
INSERT INTO `n_nm` VALUES (4708,2558,'������',11);
INSERT INTO `n_nm` VALUES (4709,5099,'��������',5);
INSERT INTO `n_nm` VALUES (4710,5340,'����������',8);
INSERT INTO `n_nm` VALUES (4711,8941,'�������',21);
INSERT INTO `n_nm` VALUES (4712,8522,'�������',2);
INSERT INTO `n_nm` VALUES (4713,8923,'�������',21);
INSERT INTO `n_nm` VALUES (4714,8915,'�������� ����',21);
INSERT INTO `n_nm` VALUES (4715,6234,'����������',25);
INSERT INTO `n_nm` VALUES (4716,8430,'����������',2);
INSERT INTO `n_nm` VALUES (4717,4190,'����������',17);
INSERT INTO `n_nm` VALUES (4718,7779,'����������',26);
INSERT INTO `n_nm` VALUES (4719,6924,'������',10);
INSERT INTO `n_nm` VALUES (4720,6232,'��������',25);
INSERT INTO `n_nm` VALUES (4721,8479,'�������',2);
INSERT INTO `n_nm` VALUES (4722,6268,'�������',25);
INSERT INTO `n_nm` VALUES (4723,4146,'��������',17);
INSERT INTO `n_nm` VALUES (4724,5035,'��������',5);
INSERT INTO `n_nm` VALUES (4725,9482,'������',9);
INSERT INTO `n_nm` VALUES (4726,9562,'�������',9);
INSERT INTO `n_nm` VALUES (4727,4799,'�������',22);
INSERT INTO `n_nm` VALUES (4728,4633,'�������',14);
INSERT INTO `n_nm` VALUES (4729,6361,'�������',27);
INSERT INTO `n_nm` VALUES (4730,7578,'�������',20);
INSERT INTO `n_nm` VALUES (4731,8896,'�������',21);
INSERT INTO `n_nm` VALUES (4732,7647,'������',20);
INSERT INTO `n_nm` VALUES (4733,5380,'�������',8);
INSERT INTO `n_nm` VALUES (4734,6800,'�����',10);
INSERT INTO `n_nm` VALUES (4735,2215,'�����',23);
INSERT INTO `n_nm` VALUES (4736,7085,'�������',19);
INSERT INTO `n_nm` VALUES (4737,5461,'�������',8);
INSERT INTO `n_nm` VALUES (4738,2538,'����������',11);
INSERT INTO `n_nm` VALUES (4739,7983,'�������',26);
INSERT INTO `n_nm` VALUES (4740,8658,'��������',29);
INSERT INTO `n_nm` VALUES (4741,6344,'��������',27);
INSERT INTO `n_nm` VALUES (4742,4282,'��������',17);
INSERT INTO `n_nm` VALUES (4743,5934,'������',16);
INSERT INTO `n_nm` VALUES (4744,6670,'�������',10);
INSERT INTO `n_nm` VALUES (4745,6835,'�����',10);
INSERT INTO `n_nm` VALUES (4746,7755,'���������',18);
INSERT INTO `n_nm` VALUES (4747,8155,'��������',2);
INSERT INTO `n_nm` VALUES (4748,8890,'��������',21);
INSERT INTO `n_nm` VALUES (4749,9675,'��������',9);
INSERT INTO `n_nm` VALUES (4750,6370,'������',27);
INSERT INTO `n_nm` VALUES (4751,9420,'�������',9);
INSERT INTO `n_nm` VALUES (4752,5990,'�����',16);
INSERT INTO `n_nm` VALUES (4753,6850,'��������',10);
INSERT INTO `n_nm` VALUES (4754,6759,'��������',10);
INSERT INTO `n_nm` VALUES (4755,5165,'��������',5);
INSERT INTO `n_nm` VALUES (4756,8672,'������',29);
INSERT INTO `n_nm` VALUES (4757,5554,'������',12);
INSERT INTO `n_nm` VALUES (4758,2935,'������',1);
INSERT INTO `n_nm` VALUES (4759,9450,'������',9);
INSERT INTO `n_nm` VALUES (4760,9769,'������',28);
INSERT INTO `n_nm` VALUES (4761,5035,'��������',5);
INSERT INTO `n_nm` VALUES (4762,8465,'���������',2);
INSERT INTO `n_nm` VALUES (4763,5665,'���������',12);
INSERT INTO `n_nm` VALUES (4764,7322,'������',18);
INSERT INTO `n_nm` VALUES (4765,5700,'�������',12);
INSERT INTO `n_nm` VALUES (4766,7340,'������',18);
INSERT INTO `n_nm` VALUES (4767,4810,'�����',22);
INSERT INTO `n_nm` VALUES (4768,2927,'������',1);
INSERT INTO `n_nm` VALUES (4769,4729,'������',22);
INSERT INTO `n_nm` VALUES (4770,9785,'��������',28);
INSERT INTO `n_nm` VALUES (4771,6955,'�������',10);
INSERT INTO `n_nm` VALUES (4772,3164,'���������',7);
INSERT INTO `n_nm` VALUES (4773,5070,'�������',5);
INSERT INTO `n_nm` VALUES (4774,7997,'�������',26);
INSERT INTO `n_nm` VALUES (4775,6898,'�������',10);
INSERT INTO `n_nm` VALUES (4776,6279,'����������',25);
INSERT INTO `n_nm` VALUES (4777,8980,'����',21);
INSERT INTO `n_nm` VALUES (4778,2591,'��������',11);
INSERT INTO `n_nm` VALUES (4779,3055,'��������',7);
INSERT INTO `n_nm` VALUES (4780,3787,'��������',6);
INSERT INTO `n_nm` VALUES (4781,3243,'�������',7);
INSERT INTO `n_nm` VALUES (4782,9964,'����� ���������',28);
INSERT INTO `n_nm` VALUES (4783,5350,'����������',8);
INSERT INTO `n_nm` VALUES (4784,5781,'����������',12);
INSERT INTO `n_nm` VALUES (4785,7425,'��������',18);
INSERT INTO `n_nm` VALUES (4786,5887,'��������',16);
INSERT INTO `n_nm` VALUES (4787,5045,'���������',5);
INSERT INTO `n_nm` VALUES (4788,5301,'���������',8);
INSERT INTO `n_nm` VALUES (4789,5343,'���������',8);
INSERT INTO `n_nm` VALUES (4790,5094,'�������',5);
INSERT INTO `n_nm` VALUES (4791,6965,'�������',10);
INSERT INTO `n_nm` VALUES (4792,3854,'��������',6);
INSERT INTO `n_nm` VALUES (4793,5080,'�������',5);
INSERT INTO `n_nm` VALUES (4794,2285,'�������',23);
INSERT INTO `n_nm` VALUES (4795,5365,'��������',8);
INSERT INTO `n_nm` VALUES (4796,2875,'������ ����',1);
INSERT INTO `n_nm` VALUES (4797,5736,'��������',12);
INSERT INTO `n_nm` VALUES (4798,9654,'������',9);
INSERT INTO `n_nm` VALUES (4799,9140,'������',3);
INSERT INTO `n_nm` VALUES (4800,4454,'������ ���',14);
INSERT INTO `n_nm` VALUES (4801,8549,'��������',2);
INSERT INTO `n_nm` VALUES (4802,6968,'�������',10);
INSERT INTO `n_nm` VALUES (4803,2619,'���������',11);
INSERT INTO `n_nm` VALUES (4804,2858,'���������',1);
INSERT INTO `n_nm` VALUES (4805,6560,'�����������',27);
INSERT INTO `n_nm` VALUES (4806,3828,'���������',6);
INSERT INTO `n_nm` VALUES (4807,3936,'���������',6);
INSERT INTO `n_nm` VALUES (4808,4260,'��������',17);
INSERT INTO `n_nm` VALUES (4809,6452,'��������',27);
INSERT INTO `n_nm` VALUES (4810,6728,'���������',10);
INSERT INTO `n_nm` VALUES (4811,8880,'���������',21);
INSERT INTO `n_nm` VALUES (4812,6277,'��������',25);
INSERT INTO `n_nm` VALUES (4813,5098,'������',5);
INSERT INTO `n_nm` VALUES (4814,8986,'��������',21);
INSERT INTO `n_nm` VALUES (4815,7261,'������',19);
INSERT INTO `n_nm` VALUES (4816,8582,'���������',2);
INSERT INTO `n_nm` VALUES (4817,5335,'�����������',8);
INSERT INTO `n_nm` VALUES (4818,5790,'�����',12);
INSERT INTO `n_nm` VALUES (4819,5899,'��������',16);
INSERT INTO `n_nm` VALUES (4820,7316,'��������',18);
INSERT INTO `n_nm` VALUES (4821,3825,'�������',6);
INSERT INTO `n_nm` VALUES (4822,4933,'�����',22);
INSERT INTO `n_nm` VALUES (4823,9694,'�������',9);
INSERT INTO `n_nm` VALUES (4824,3645,'��������',13);
INSERT INTO `n_nm` VALUES (4825,6369,'�������',27);
INSERT INTO `n_nm` VALUES (4826,8348,'��������',2);
INSERT INTO `n_nm` VALUES (4827,6074,'������',25);
INSERT INTO `n_nm` VALUES (4828,5349,'�����������',8);
INSERT INTO `n_nm` VALUES (4829,7281,'�������',18);
INSERT INTO `n_nm` VALUES (4830,8889,'����������',21);
INSERT INTO `n_nm` VALUES (4831,4737,'�������',22);
INSERT INTO `n_nm` VALUES (4832,2557,'��������',11);
INSERT INTO `n_nm` VALUES (4833,9764,'����',28);
INSERT INTO `n_nm` VALUES (4834,7994,'���������',26);
INSERT INTO `n_nm` VALUES (4835,3072,'��� ��������',7);
INSERT INTO `n_nm` VALUES (4836,4263,'��� ������',17);
INSERT INTO `n_nm` VALUES (4837,6682,'��� ������',10);
INSERT INTO `n_nm` VALUES (4838,4222,'���������',17);
INSERT INTO `n_nm` VALUES (4839,9645,'��������',9);
INSERT INTO `n_nm` VALUES (4840,4825,'�������',22);
INSERT INTO `n_nm` VALUES (4841,4141,'����������',17);
INSERT INTO `n_nm` VALUES (4842,3435,'���������',13);
INSERT INTO `n_nm` VALUES (4843,9864,'������',28);
INSERT INTO `n_nm` VALUES (4844,2733,'��������',1);
INSERT INTO `n_nm` VALUES (4845,6491,'�����',27);
INSERT INTO `n_nm` VALUES (4846,5600,'�����',12);
INSERT INTO `n_nm` VALUES (4847,8108,'��������',2);
INSERT INTO `n_nm` VALUES (4848,6270,'��������',25);
INSERT INTO `n_nm` VALUES (4849,4199,'����',17);
INSERT INTO `n_nm` VALUES (4850,2160,'��������',23);
INSERT INTO `n_nm` VALUES (4851,7283,'������',18);
INSERT INTO `n_nm` VALUES (4852,2460,'����',15);
INSERT INTO `n_nm` VALUES (4853,8550,'������',2);
INSERT INTO `n_nm` VALUES (4854,5307,'�������',8);
INSERT INTO `n_nm` VALUES (4855,9925,'�������',28);
INSERT INTO `n_nm` VALUES (4856,8719,'��������',29);
INSERT INTO `n_nm` VALUES (4857,6266,'��������',25);
INSERT INTO `n_nm` VALUES (4858,5097,'���������',5);
INSERT INTO `n_nm` VALUES (4859,5925,'����������',16);
INSERT INTO `n_nm` VALUES (4860,5857,'���������',16);
INSERT INTO `n_nm` VALUES (4861,7092,'���������',19);
INSERT INTO `n_nm` VALUES (4862,7835,'��������',26);
INSERT INTO `n_nm` VALUES (4863,9134,'����������',3);
INSERT INTO `n_nm` VALUES (4864,8128,'����������',2);
INSERT INTO `n_nm` VALUES (4865,5350,'������',8);
INSERT INTO `n_nm` VALUES (4866,2253,'�����',23);
INSERT INTO `n_nm` VALUES (4867,9633,'�������',9);
INSERT INTO `n_nm` VALUES (4868,6170,'������',25);
INSERT INTO `n_nm` VALUES (4869,5464,'���������',8);
INSERT INTO `n_nm` VALUES (4870,5083,'��������',5);
INSERT INTO `n_nm` VALUES (4871,6157,'�����',25);
INSERT INTO `n_nm` VALUES (4872,5388,'��������',8);
INSERT INTO `n_nm` VALUES (4873,2468,'���������',15);
INSERT INTO `n_nm` VALUES (4874,4753,'�����',22);
INSERT INTO `n_nm` VALUES (4875,7600,'��������',20);
INSERT INTO `n_nm` VALUES (4876,9275,'����������',3);
INSERT INTO `n_nm` VALUES (4877,2939,'��������',1);
INSERT INTO `n_nm` VALUES (4878,5892,'��������',16);
INSERT INTO `n_nm` VALUES (4879,9884,'��������',28);
INSERT INTO `n_nm` VALUES (4880,6160,'����',25);
INSERT INTO `n_nm` VALUES (4881,9953,'�����',28);
INSERT INTO `n_nm` VALUES (4882,4983,'����� ����',22);
INSERT INTO `n_nm` VALUES (4883,5084,'����� ���',5);
INSERT INTO `n_nm` VALUES (4884,8237,'�������',2);
INSERT INTO `n_nm` VALUES (4885,6391,'�������',27);
INSERT INTO `n_nm` VALUES (4886,4914,'�������',22);
INSERT INTO `n_nm` VALUES (4887,7919,'�����������',26);
INSERT INTO `n_nm` VALUES (4888,7700,'���������',26);
INSERT INTO `n_nm` VALUES (4889,3953,'���������',6);
INSERT INTO `n_nm` VALUES (4890,5070,'���������',5);
INSERT INTO `n_nm` VALUES (4891,3252,'�������',7);
INSERT INTO `n_nm` VALUES (4892,8699,'�������',29);
INSERT INTO `n_nm` VALUES (4893,3249,'������',7);
INSERT INTO `n_nm` VALUES (4894,5282,'�������',16);
INSERT INTO `n_nm` VALUES (4895,6158,'���������',25);
INSERT INTO `n_nm` VALUES (4896,2532,'���������',11);
INSERT INTO `n_nm` VALUES (4897,7774,'��������',26);
INSERT INTO `n_nm` VALUES (4898,6843,'��������',10);
INSERT INTO `n_nm` VALUES (4899,7926,'��������',20);
INSERT INTO `n_nm` VALUES (4900,6763,'�����������',10);
INSERT INTO `n_nm` VALUES (4901,3741,'�������',6);
INSERT INTO `n_nm` VALUES (4902,2586,'�������',11);
INSERT INTO `n_nm` VALUES (4903,5423,'�������',8);
INSERT INTO `n_nm` VALUES (4904,4730,'�����',22);
INSERT INTO `n_nm` VALUES (4905,9684,'��������',9);
INSERT INTO `n_nm` VALUES (4906,4751,'�������',17);
INSERT INTO `n_nm` VALUES (4907,6850,'�������',10);
INSERT INTO `n_nm` VALUES (4908,9429,'������',9);
INSERT INTO `n_nm` VALUES (4909,6492,'������',27);
INSERT INTO `n_nm` VALUES (4910,7936,'�������',26);
INSERT INTO `n_nm` VALUES (4911,2418,'�������',15);
INSERT INTO `n_nm` VALUES (4912,5465,'��������',8);
INSERT INTO `n_nm` VALUES (4913,5082,'�����������',5);
INSERT INTO `n_nm` VALUES (4914,5580,'�������',12);
INSERT INTO `n_nm` VALUES (4915,9554,'�����',9);
INSERT INTO `n_nm` VALUES (4916,6350,'���������',27);
INSERT INTO `n_nm` VALUES (4917,5343,'�������',8);
INSERT INTO `n_nm` VALUES (4918,4237,'�������',17);
INSERT INTO `n_nm` VALUES (4919,5541,'��������',12);
INSERT INTO `n_nm` VALUES (4920,5365,'������',8);
INSERT INTO `n_nm` VALUES (4921,3064,'�������',7);
INSERT INTO `n_nm` VALUES (4922,4936,'��������',22);
INSERT INTO `n_nm` VALUES (4923,2675,'������',11);
INSERT INTO `n_nm` VALUES (4924,4228,'������',17);
INSERT INTO `n_nm` VALUES (4925,6563,'������',27);
INSERT INTO `n_nm` VALUES (4926,6853,'������',10);
INSERT INTO `n_nm` VALUES (4927,4769,'��������',22);
INSERT INTO `n_nm` VALUES (4928,5035,'������',5);
INSERT INTO `n_nm` VALUES (4929,2557,'���',11);
INSERT INTO `n_nm` VALUES (4930,7244,'������',18);
INSERT INTO `n_nm` VALUES (4931,4992,'������� - ����. �.',22);
INSERT INTO `n_nm` VALUES (4932,8272,'��������',2);
INSERT INTO `n_nm` VALUES (4933,8340,'�����',2);
INSERT INTO `n_nm` VALUES (4934,4797,'������',22);
INSERT INTO `n_nm` VALUES (4935,9394,'��������� �������',9);
INSERT INTO `n_nm` VALUES (4936,8982,'����������',21);
INSERT INTO `n_nm` VALUES (4937,2775,'��������',1);
INSERT INTO `n_nm` VALUES (4938,6564,'��������',27);
INSERT INTO `n_nm` VALUES (4939,2472,'���������',15);
INSERT INTO `n_nm` VALUES (4940,3778,'���������',6);
INSERT INTO `n_nm` VALUES (4941,4571,'��������',14);
INSERT INTO `n_nm` VALUES (4942,6873,'��������',10);
INSERT INTO `n_nm` VALUES (4943,2085,'������������ ������',23);
INSERT INTO `n_nm` VALUES (4944,2682,'������',11);
INSERT INTO `n_nm` VALUES (4945,3075,'�����',7);
INSERT INTO `n_nm` VALUES (4946,2952,'�������',1);
INSERT INTO `n_nm` VALUES (4947,5301,'��������',8);
INSERT INTO `n_nm` VALUES (4948,5365,'�������',8);
INSERT INTO `n_nm` VALUES (4949,5367,'�������',8);
INSERT INTO `n_nm` VALUES (4950,6141,'����� ���������',25);
INSERT INTO `n_nm` VALUES (4951,9657,'����� �������',9);
INSERT INTO `n_nm` VALUES (4952,5287,'��������������',5);
INSERT INTO `n_nm` VALUES (4953,8635,'��������������',29);
INSERT INTO `n_nm` VALUES (4954,2933,'�����������',1);
INSERT INTO `n_nm` VALUES (4955,4441,'��������',14);
INSERT INTO `n_nm` VALUES (4956,8492,'��������',2);
INSERT INTO `n_nm` VALUES (4957,6875,'���������',10);
INSERT INTO `n_nm` VALUES (4958,3357,'��������',7);
INSERT INTO `n_nm` VALUES (4959,7997,'������������',26);
INSERT INTO `n_nm` VALUES (4960,3837,'�������� ������',6);
INSERT INTO `n_nm` VALUES (4961,6055,'��� ����������',25);
INSERT INTO `n_nm` VALUES (4962,9863,'��� ����',28);
INSERT INTO `n_nm` VALUES (4963,8668,'������',29);
INSERT INTO `n_nm` VALUES (4964,5340,'����������',8);
INSERT INTO `n_nm` VALUES (4965,5093,'����������',5);
INSERT INTO `n_nm` VALUES (4966,6540,'��������',27);
INSERT INTO `n_nm` VALUES (4967,6300,'�������',27);
INSERT INTO `n_nm` VALUES (4968,4746,'��������',22);
INSERT INTO `n_nm` VALUES (4969,4890,'������',22);
INSERT INTO `n_nm` VALUES (4970,2942,'��������',1);
INSERT INTO `n_nm` VALUES (4971,2072,'�������',23);
INSERT INTO `n_nm` VALUES (4972,2211,'��������',23);
INSERT INTO `n_nm` VALUES (4973,5451,'������',8);
INSERT INTO `n_nm` VALUES (4974,6914,'�����',10);
INSERT INTO `n_nm` VALUES (4975,4180,'������',17);
INSERT INTO `n_nm` VALUES (4976,9494,'������',9);
INSERT INTO `n_nm` VALUES (4977,5579,'�������',12);
INSERT INTO `n_nm` VALUES (4978,6568,'�������',27);
INSERT INTO `n_nm` VALUES (4979,6745,'��������',10);
INSERT INTO `n_nm` VALUES (4980,7054,'�������',19);
INSERT INTO `n_nm` VALUES (4981,5058,'�������',5);
INSERT INTO `n_nm` VALUES (4982,2821,'������',1);
INSERT INTO `n_nm` VALUES (4983,4111,'��������',17);
INSERT INTO `n_nm` VALUES (4984,9618,'��������',9);
INSERT INTO `n_nm` VALUES (4985,9242,'��������',3);
INSERT INTO `n_nm` VALUES (4986,2224,'���������',23);
INSERT INTO `n_nm` VALUES (4987,2824,'������',1);
INSERT INTO `n_nm` VALUES (4988,6929,'��������',10);
INSERT INTO `n_nm` VALUES (4989,6072,'�����������',25);
INSERT INTO `n_nm` VALUES (4990,4339,'������ ������',17);
INSERT INTO `n_nm` VALUES (4991,4231,'������ ������',17);
INSERT INTO `n_nm` VALUES (4992,5070,'���������',5);
INSERT INTO `n_nm` VALUES (4993,5365,'���������',8);
INSERT INTO `n_nm` VALUES (4994,6050,'�������',25);
INSERT INTO `n_nm` VALUES (4995,6782,'�������',10);
INSERT INTO `n_nm` VALUES (4996,3135,'��������',7);
INSERT INTO `n_nm` VALUES (4997,7457,'����',18);
INSERT INTO `n_nm` VALUES (4998,6571,'�����',27);
INSERT INTO `n_nm` VALUES (4999,5082,'�������',5);
INSERT INTO `n_nm` VALUES (5000,3329,'������',7);
INSERT INTO `n_nm` VALUES (5001,9937,'�������',28);
INSERT INTO `n_nm` VALUES (5002,7451,'�������',18);
INSERT INTO `n_nm` VALUES (5003,2819,'�������',1);
INSERT INTO `n_nm` VALUES (5004,3152,'��������',7);
INSERT INTO `n_nm` VALUES (5005,4218,'��������',17);
INSERT INTO `n_nm` VALUES (5006,9957,'���� �������',28);
INSERT INTO `n_nm` VALUES (5007,2834,'��������',1);
INSERT INTO `n_nm` VALUES (5008,7536,'��� ����',20);
INSERT INTO `n_nm` VALUES (5009,4422,'��� ����',14);
INSERT INTO `n_nm` VALUES (5010,7849,'��� ����',26);
INSERT INTO `n_nm` VALUES (5011,4126,'��� ������',17);
INSERT INTO `n_nm` VALUES (5012,7280,'��� ������',18);
INSERT INTO `n_nm` VALUES (5013,3827,'��� �������',6);
INSERT INTO `n_nm` VALUES (5014,7640,'��� ������',20);
INSERT INTO `n_nm` VALUES (5015,3745,'��� ���������',6);
INSERT INTO `n_nm` VALUES (5016,3853,'��� ���������',6);
INSERT INTO `n_nm` VALUES (5017,4204,'��������',17);
INSERT INTO `n_nm` VALUES (5018,9747,'����� ����',28);
INSERT INTO `n_nm` VALUES (5019,7627,'����� ���',20);
INSERT INTO `n_nm` VALUES (5020,5380,'������ ������',8);
INSERT INTO `n_nm` VALUES (5021,6363,'������ ������',27);
INSERT INTO `n_nm` VALUES (5022,9367,'�������',9);
INSERT INTO `n_nm` VALUES (5023,6622,'�������',10);
INSERT INTO `n_nm` VALUES (5024,3141,'�������',7);
INSERT INTO `n_nm` VALUES (5025,5282,'�������',5);
INSERT INTO `n_nm` VALUES (5026,8260,'������',2);
INSERT INTO `n_nm` VALUES (5027,9129,'�������',3);
INSERT INTO `n_nm` VALUES (5028,7932,'�������',26);
INSERT INTO `n_nm` VALUES (5029,4192,'�������',17);
INSERT INTO `n_nm` VALUES (5030,6893,'������',10);
INSERT INTO `n_nm` VALUES (5031,2236,'��������',23);
INSERT INTO `n_nm` VALUES (5032,9614,'��������',9);
INSERT INTO `n_nm` VALUES (5033,5174,'������ �����',5);
INSERT INTO `n_nm` VALUES (5034,2220,'���������',23);
INSERT INTO `n_nm` VALUES (5035,4992,'���������',22);
INSERT INTO `n_nm` VALUES (5036,5094,'���������',5);
INSERT INTO `n_nm` VALUES (5037,4630,'�������',14);
INSERT INTO `n_nm` VALUES (5038,3542,'�������� ����',13);
INSERT INTO `n_nm` VALUES (5039,7763,'��������',26);
INSERT INTO `n_nm` VALUES (5040,5340,'���������',8);
INSERT INTO `n_nm` VALUES (5041,6850,'�������',10);
INSERT INTO `n_nm` VALUES (5042,2479,'����������',15);
INSERT INTO `n_nm` VALUES (5043,6223,'������',25);
INSERT INTO `n_nm` VALUES (5044,8916,'������',21);
INSERT INTO `n_nm` VALUES (5045,7575,'�������',20);
INSERT INTO `n_nm` VALUES (5046,7139,'������',19);
INSERT INTO `n_nm` VALUES (5047,6222,'������',25);
INSERT INTO `n_nm` VALUES (5048,5035,'����������',5);
INSERT INTO `n_nm` VALUES (5049,4189,'����������',17);
INSERT INTO `n_nm` VALUES (5050,2286,'�������',23);
INSERT INTO `n_nm` VALUES (5051,8472,'���������',2);
INSERT INTO `n_nm` VALUES (5052,5047,'������ �����',5);
INSERT INTO `n_nm` VALUES (5053,7083,'�������',18);
INSERT INTO `n_nm` VALUES (5054,2567,'��������',11);
INSERT INTO `n_nm` VALUES (5055,7922,'��������',26);
INSERT INTO `n_nm` VALUES (5056,2722,'������',1);
INSERT INTO `n_nm` VALUES (5057,4465,'������',14);
INSERT INTO `n_nm` VALUES (5058,2287,'������',23);
INSERT INTO `n_nm` VALUES (5059,2666,'�������',11);
INSERT INTO `n_nm` VALUES (5060,4939,'�����',22);
INSERT INTO `n_nm` VALUES (5061,9261,'������',3);
INSERT INTO `n_nm` VALUES (5062,2567,'��������',11);
INSERT INTO `n_nm` VALUES (5063,2205,'���������',23);
INSERT INTO `n_nm` VALUES (5064,4837,'������',22);
INSERT INTO `n_nm` VALUES (5065,4419,'������',14);
INSERT INTO `n_nm` VALUES (5066,2580,'���������',11);
INSERT INTO `n_nm` VALUES (5067,2576,'������� ������',11);
INSERT INTO `n_nm` VALUES (5068,2567,'���������',11);
INSERT INTO `n_nm` VALUES (5069,2542,'���������',11);
INSERT INTO `n_nm` VALUES (5070,2624,'�������',11);
INSERT INTO `n_nm` VALUES (5071,9631,'������',9);
INSERT INTO `n_nm` VALUES (5072,6844,'��������',10);
INSERT INTO `n_nm` VALUES (5073,9939,'��������',28);
INSERT INTO `n_nm` VALUES (5074,4829,'������',22);
INSERT INTO `n_nm` VALUES (5075,2084,'������',23);
INSERT INTO `n_nm` VALUES (5076,5084,'��������',5);
INSERT INTO `n_nm` VALUES (5077,5559,'��������',12);
INSERT INTO `n_nm` VALUES (5078,5345,'�����',8);
INSERT INTO `n_nm` VALUES (5079,6890,'�����',10);
INSERT INTO `n_nm` VALUES (5080,6820,'�����',10);
INSERT INTO `n_nm` VALUES (5081,9277,'�����',3);
INSERT INTO `n_nm` VALUES (5082,4476,'�����',14);
INSERT INTO `n_nm` VALUES (5083,6870,'����������',10);
INSERT INTO `n_nm` VALUES (5084,5099,'������',5);
INSERT INTO `n_nm` VALUES (5085,5365,'��������',8);
INSERT INTO `n_nm` VALUES (5086,6850,'�������',10);
INSERT INTO `n_nm` VALUES (5087,6947,'���',10);
INSERT INTO `n_nm` VALUES (5088,4836,'����',22);
INSERT INTO `n_nm` VALUES (5089,4123,'��������',17);
INSERT INTO `n_nm` VALUES (5090,4651,'�������',14);
INSERT INTO `n_nm` VALUES (5091,4716,'�����',22);
INSERT INTO `n_nm` VALUES (5092,8628,'������',29);
INSERT INTO `n_nm` VALUES (5093,8692,'�����',29);
INSERT INTO `n_nm` VALUES (5094,5309,'�������',8);
INSERT INTO `n_nm` VALUES (5095,6744,'�������',10);
INSERT INTO `n_nm` VALUES (5096,2220,'�������',23);
INSERT INTO `n_nm` VALUES (5097,2577,'�������',11);
INSERT INTO `n_nm` VALUES (5098,7961,'�������',26);
INSERT INTO `n_nm` VALUES (5099,2122,'���������',23);
INSERT INTO `n_nm` VALUES (5100,8678,'������',29);
INSERT INTO `n_nm` VALUES (5101,3093,'�������',7);
INSERT INTO `n_nm` VALUES (5102,2087,'�������',23);
INSERT INTO `n_nm` VALUES (5103,9664,'����������',9);
INSERT INTO `n_nm` VALUES (5104,3465,'����������',13);
INSERT INTO `n_nm` VALUES (5105,3477,'�����',13);
INSERT INTO `n_nm` VALUES (5106,4850,'��������',22);
INSERT INTO `n_nm` VALUES (5107,2436,'������',15);
INSERT INTO `n_nm` VALUES (5108,1554,'�������',23);
INSERT INTO `n_nm` VALUES (5109,4958,'�������',22);
INSERT INTO `n_nm` VALUES (5110,4786,'��������',22);
INSERT INTO `n_nm` VALUES (5111,2212,'����������',23);
INSERT INTO `n_nm` VALUES (5112,4252,'������',17);
INSERT INTO `n_nm` VALUES (5113,7084,'������',19);
INSERT INTO `n_nm` VALUES (5114,2629,'������ ����',11);
INSERT INTO `n_nm` VALUES (5115,5980,'������ ����',16);
INSERT INTO `n_nm` VALUES (5116,5293,'�������',5);
INSERT INTO `n_nm` VALUES (5117,7051,'������� ����',19);
INSERT INTO `n_nm` VALUES (5118,5311,'������� �����',8);
INSERT INTO `n_nm` VALUES (5119,2408,'������� ������',15);
INSERT INTO `n_nm` VALUES (5120,8896,'�����������',21);
INSERT INTO `n_nm` VALUES (5121,5070,'�����������',5);
INSERT INTO `n_nm` VALUES (5122,9298,'��������',3);
INSERT INTO `n_nm` VALUES (5123,6139,'���������',25);
INSERT INTO `n_nm` VALUES (5124,9799,'�������',28);
INSERT INTO `n_nm` VALUES (5125,6462,'��������',27);
INSERT INTO `n_nm` VALUES (5126,8577,'������',2);
INSERT INTO `n_nm` VALUES (5127,6672,'��������',10);
INSERT INTO `n_nm` VALUES (5128,4771,'���������',22);
INSERT INTO `n_nm` VALUES (5129,2824,'���������',1);
INSERT INTO `n_nm` VALUES (5130,3524,'����������',13);
INSERT INTO `n_nm` VALUES (5131,2787,'��������',1);
INSERT INTO `n_nm` VALUES (5132,7339,'��������',18);
INSERT INTO `n_nm` VALUES (5133,4772,'��������',22);
INSERT INTO `n_nm` VALUES (5134,4773,'���������� ����',22);
INSERT INTO `n_nm` VALUES (5135,3533,'��������',13);
INSERT INTO `n_nm` VALUES (5136,5951,'���������',16);
INSERT INTO `n_nm` VALUES (5137,2072,'���������',23);
INSERT INTO `n_nm` VALUES (5138,7656,'��������',20);
INSERT INTO `n_nm` VALUES (5139,9232,'��������',3);
INSERT INTO `n_nm` VALUES (5140,7252,'��������',18);
INSERT INTO `n_nm` VALUES (5141,7781,'��������',26);
INSERT INTO `n_nm` VALUES (5142,8478,'�������',2);
INSERT INTO `n_nm` VALUES (5143,9773,'�����',28);
INSERT INTO `n_nm` VALUES (5144,9417,'�����',9);
INSERT INTO `n_nm` VALUES (5145,7966,'����� ����',26);
INSERT INTO `n_nm` VALUES (5146,6258,'����� ����',25);
INSERT INTO `n_nm` VALUES (5147,2340,'����� ����',15);
INSERT INTO `n_nm` VALUES (5148,2789,'����� �����',1);
INSERT INTO `n_nm` VALUES (5149,8527,'����� ������',2);
INSERT INTO `n_nm` VALUES (5150,6471,'����� ������',27);
INSERT INTO `n_nm` VALUES (5151,6692,'����� ����',10);
INSERT INTO `n_nm` VALUES (5152,6626,'����� �����',10);
INSERT INTO `n_nm` VALUES (5153,6585,'����� ������',27);
INSERT INTO `n_nm` VALUES (5154,9174,'�������',3);
INSERT INTO `n_nm` VALUES (5155,5646,'���������',12);
INSERT INTO `n_nm` VALUES (5156,5349,'��������',8);
INSERT INTO `n_nm` VALUES (5157,7973,'����� ����',26);
INSERT INTO `n_nm` VALUES (5158,5725,'����� ���',12);
INSERT INTO `n_nm` VALUES (5159,3649,'����� ����',13);
INSERT INTO `n_nm` VALUES (5160,8122,'����� ����',2);
INSERT INTO `n_nm` VALUES (5161,9827,'����� ����',28);
INSERT INTO `n_nm` VALUES (5162,5084,'����� ���',5);
INSERT INTO `n_nm` VALUES (5163,5620,'����� ����',12);
INSERT INTO `n_nm` VALUES (5164,6598,'����� ���',27);
INSERT INTO `n_nm` VALUES (5165,6778,'���������',10);
INSERT INTO `n_nm` VALUES (5166,7651,'������',20);
INSERT INTO `n_nm` VALUES (5167,8468,'�������',2);
INSERT INTO `n_nm` VALUES (5168,2741,'�������',1);
INSERT INTO `n_nm` VALUES (5169,6954,'���������',10);
INSERT INTO `n_nm` VALUES (5170,4181,'���������',17);
INSERT INTO `n_nm` VALUES (5171,6581,'���������',27);
INSERT INTO `n_nm` VALUES (5172,3922,'����� ����',6);
INSERT INTO `n_nm` VALUES (5173,5365,'���������',8);
INSERT INTO `n_nm` VALUES (5174,9778,'�����������',28);
INSERT INTO `n_nm` VALUES (5175,7614,'��������',20);
INSERT INTO `n_nm` VALUES (5176,6411,'�����������',27);
INSERT INTO `n_nm` VALUES (5177,4456,'�����������',14);
INSERT INTO `n_nm` VALUES (5178,8545,'���������',2);
INSERT INTO `n_nm` VALUES (5179,6524,'��������',27);
INSERT INTO `n_nm` VALUES (5180,8739,'��������',29);
INSERT INTO `n_nm` VALUES (5181,4168,'����������',17);
INSERT INTO `n_nm` VALUES (5182,7921,'����������',26);
INSERT INTO `n_nm` VALUES (5183,7693,'��������',20);
INSERT INTO `n_nm` VALUES (5184,8142,'����������',2);
INSERT INTO `n_nm` VALUES (5185,9678,'����������',9);
INSERT INTO `n_nm` VALUES (5186,9259,'�������',3);
INSERT INTO `n_nm` VALUES (5187,6946,'��������',10);
INSERT INTO `n_nm` VALUES (5188,9873,'����������',28);
INSERT INTO `n_nm` VALUES (5189,9532,'����������',9);
INSERT INTO `n_nm` VALUES (5190,6701,'����������',10);
INSERT INTO `n_nm` VALUES (5191,2067,'��������',23);
INSERT INTO `n_nm` VALUES (5192,6670,'���������',10);
INSERT INTO `n_nm` VALUES (5193,9469,'�����������',9);
INSERT INTO `n_nm` VALUES (5194,2598,'�������',11);
INSERT INTO `n_nm` VALUES (5195,4241,'�������',17);
INSERT INTO `n_nm` VALUES (5196,4159,'�������',17);
INSERT INTO `n_nm` VALUES (5197,2556,'��������',11);
INSERT INTO `n_nm` VALUES (5198,5156,'�����',5);
INSERT INTO `n_nm` VALUES (5199,4121,'�����������',17);
INSERT INTO `n_nm` VALUES (5200,2236,'��������',23);
INSERT INTO `n_nm` VALUES (5201,6625,'�����',10);
INSERT INTO `n_nm` VALUES (5202,7162,'������',19);
INSERT INTO `n_nm` VALUES (5203,8858,'���������',21);
INSERT INTO `n_nm` VALUES (5204,3460,'��������',13);
INSERT INTO `n_nm` VALUES (5205,3050,'�����',7);
INSERT INTO `n_nm` VALUES (5206,6200,'������',25);
INSERT INTO `n_nm` VALUES (5207,5088,'�������',5);
INSERT INTO `n_nm` VALUES (5208,5300,'���������',8);
INSERT INTO `n_nm` VALUES (5209,3912,'������',6);
INSERT INTO `n_nm` VALUES (5210,6677,'������',10);
INSERT INTO `n_nm` VALUES (5211,5661,'������',12);
INSERT INTO `n_nm` VALUES (5212,6869,'������',10);
INSERT INTO `n_nm` VALUES (5213,3819,'�����',6);
INSERT INTO `n_nm` VALUES (5214,4161,'����',17);
INSERT INTO `n_nm` VALUES (5215,6836,'�������',10);
INSERT INTO `n_nm` VALUES (5216,4760,'���������',22);
INSERT INTO `n_nm` VALUES (5217,8887,'������',21);
INSERT INTO `n_nm` VALUES (5218,4636,'��������',14);
INSERT INTO `n_nm` VALUES (5219,6800,'��������',10);
INSERT INTO `n_nm` VALUES (5220,5989,'���������',16);
INSERT INTO `n_nm` VALUES (5221,6890,'������������',10);
INSERT INTO `n_nm` VALUES (5222,2215,'�����',23);
INSERT INTO `n_nm` VALUES (5223,8461,'�����',2);
INSERT INTO `n_nm` VALUES (5224,6786,'�������',10);
INSERT INTO `n_nm` VALUES (5225,2562,'�������',11);
INSERT INTO `n_nm` VALUES (5226,7284,'�������',18);
INSERT INTO `n_nm` VALUES (5227,2346,'�����������',15);
INSERT INTO `n_nm` VALUES (5228,8529,'�������',2);
INSERT INTO `n_nm` VALUES (5229,6560,'��������',27);
INSERT INTO `n_nm` VALUES (5230,5088,'������',5);
INSERT INTO `n_nm` VALUES (5231,4245,'������',17);
INSERT INTO `n_nm` VALUES (5232,5304,'��������',8);
INSERT INTO `n_nm` VALUES (5233,2209,'���������',23);
INSERT INTO `n_nm` VALUES (5234,7537,'�������',20);
INSERT INTO `n_nm` VALUES (5235,2425,'�������',15);
INSERT INTO `n_nm` VALUES (5236,5370,'������',8);
INSERT INTO `n_nm` VALUES (5237,6818,'������',10);
INSERT INTO `n_nm` VALUES (5238,6592,'��������',27);
INSERT INTO `n_nm` VALUES (5239,3950,'�������',6);
INSERT INTO `n_nm` VALUES (5240,2126,'�����',23);
INSERT INTO `n_nm` VALUES (5241,4226,'�����',17);
INSERT INTO `n_nm` VALUES (5242,2885,'��������',1);
INSERT INTO `n_nm` VALUES (5243,2891,'��������',1);
INSERT INTO `n_nm` VALUES (5244,4915,'�����',22);
INSERT INTO `n_nm` VALUES (5245,4823,'��������',22);
INSERT INTO `n_nm` VALUES (5246,6572,'��������',27);
INSERT INTO `n_nm` VALUES (5247,2865,'����������',1);
INSERT INTO `n_nm` VALUES (5248,4796,'�����',22);
INSERT INTO `n_nm` VALUES (5249,9680,'�����',9);
INSERT INTO `n_nm` VALUES (5250,6169,'������',25);
INSERT INTO `n_nm` VALUES (5251,5300,'������',8);
INSERT INTO `n_nm` VALUES (5252,4916,'��������',22);
INSERT INTO `n_nm` VALUES (5253,8753,'�������',29);
INSERT INTO `n_nm` VALUES (5254,2684,'�������',11);
INSERT INTO `n_nm` VALUES (5255,6144,'�������',25);
INSERT INTO `n_nm` VALUES (5256,5027,'�������',5);
INSERT INTO `n_nm` VALUES (5257,5034,'��������',5);
INSERT INTO `n_nm` VALUES (5258,8897,'����������',21);
INSERT INTO `n_nm` VALUES (5259,8559,'��������',2);
INSERT INTO `n_nm` VALUES (5260,8895,'��������',21);
INSERT INTO `n_nm` VALUES (5261,5094,'��������',5);
INSERT INTO `n_nm` VALUES (5262,5087,'��������',5);
INSERT INTO `n_nm` VALUES (5263,3836,'�������� ������',6);
INSERT INTO `n_nm` VALUES (5264,6150,'�����',25);
INSERT INTO `n_nm` VALUES (5265,2493,'���������',15);
INSERT INTO `n_nm` VALUES (5266,5663,'�������',12);
INSERT INTO `n_nm` VALUES (5267,6865,'�����',10);
INSERT INTO `n_nm` VALUES (5268,3744,'�����',6);
INSERT INTO `n_nm` VALUES (5269,2015,'��������',23);
INSERT INTO `n_nm` VALUES (5270,2552,'��������',11);
INSERT INTO `n_nm` VALUES (5271,5344,'���������',8);
INSERT INTO `n_nm` VALUES (5272,4710,'������ ����',22);
INSERT INTO `n_nm` VALUES (5273,6365,'������ ������',27);
INSERT INTO `n_nm` VALUES (5274,2013,'������ ���',23);
INSERT INTO `n_nm` VALUES (5275,6650,'������ ����',10);
INSERT INTO `n_nm` VALUES (5276,7159,'��������',19);
INSERT INTO `n_nm` VALUES (5277,3834,'�������',6);
INSERT INTO `n_nm` VALUES (5278,7971,'���������',26);
INSERT INTO `n_nm` VALUES (5279,2553,'��������',11);
INSERT INTO `n_nm` VALUES (5280,6458,'���������',27);
INSERT INTO `n_nm` VALUES (5281,4133,'��������',17);
INSERT INTO `n_nm` VALUES (5282,5962,'�������',16);
INSERT INTO `n_nm` VALUES (5283,9112,'�����������',3);
INSERT INTO `n_nm` VALUES (5284,5053,'���������',5);
INSERT INTO `n_nm` VALUES (5285,5459,'������',8);
INSERT INTO `n_nm` VALUES (5286,6883,'�����',10);
INSERT INTO `n_nm` VALUES (5287,5097,'������',5);
INSERT INTO `n_nm` VALUES (5288,2252,'����',23);
INSERT INTO `n_nm` VALUES (5289,5468,'������',8);
INSERT INTO `n_nm` VALUES (5290,9700,'�����',28);
INSERT INTO `n_nm` VALUES (5291,7639,'�������',20);
INSERT INTO `n_nm` VALUES (5292,6888,'���������',10);
INSERT INTO `n_nm` VALUES (5293,5380,'�����',8);
INSERT INTO `n_nm` VALUES (5294,6842,'�����',10);
INSERT INTO `n_nm` VALUES (5295,9283,'������',3);
INSERT INTO `n_nm` VALUES (5296,6528,'���',27);
INSERT INTO `n_nm` VALUES (5297,7078,'��������',19);
INSERT INTO `n_nm` VALUES (5298,4461,'�������',14);
INSERT INTO `n_nm` VALUES (5299,5791,'�����',12);
INSERT INTO `n_nm` VALUES (5300,4241,'�����',17);
INSERT INTO `n_nm` VALUES (5301,7061,'�������',19);
INSERT INTO `n_nm` VALUES (5302,6168,'������',25);
INSERT INTO `n_nm` VALUES (5303,9138,'����',3);
INSERT INTO `n_nm` VALUES (5304,6800,'�����',10);
INSERT INTO `n_nm` VALUES (5305,4420,'�������',14);
INSERT INTO `n_nm` VALUES (5306,4629,'������',14);
INSERT INTO `n_nm` VALUES (5307,9109,'����',3);
INSERT INTO `n_nm` VALUES (5308,7338,'����',18);
INSERT INTO `n_nm` VALUES (5309,2796,'�������',1);
INSERT INTO `n_nm` VALUES (5310,2298,'��������',23);
INSERT INTO `n_nm` VALUES (5311,5750,'��������',12);
INSERT INTO `n_nm` VALUES (5312,8989,'��������',21);
INSERT INTO `n_nm` VALUES (5313,6787,'���������',10);
INSERT INTO `n_nm` VALUES (5314,6440,'��������',27);
INSERT INTO `n_nm` VALUES (5315,2544,'��������',11);
INSERT INTO `n_nm` VALUES (5316,5350,'���������',8);
INSERT INTO `n_nm` VALUES (5317,8542,'��������',2);
INSERT INTO `n_nm` VALUES (5318,6715,'��������',10);
INSERT INTO `n_nm` VALUES (5319,5350,'����',8);
INSERT INTO `n_nm` VALUES (5320,5334,'������',8);
INSERT INTO `n_nm` VALUES (5321,6179,'������',25);
INSERT INTO `n_nm` VALUES (5322,2896,'��������',1);
INSERT INTO `n_nm` VALUES (5323,6696,'�������',10);
INSERT INTO `n_nm` VALUES (5324,6240,'�������',25);
INSERT INTO `n_nm` VALUES (5325,4258,'������',17);
INSERT INTO `n_nm` VALUES (5326,6865,'������',10);
INSERT INTO `n_nm` VALUES (5327,9231,'������',3);
INSERT INTO `n_nm` VALUES (5328,6167,'�����',25);
INSERT INTO `n_nm` VALUES (5329,4835,'�������',22);
INSERT INTO `n_nm` VALUES (5330,3537,'�������',13);
INSERT INTO `n_nm` VALUES (5331,4113,'�������',17);
INSERT INTO `n_nm` VALUES (5332,6229,'�����',25);
INSERT INTO `n_nm` VALUES (5333,7991,'������',26);
INSERT INTO `n_nm` VALUES (5334,7443,'���� ������',18);
INSERT INTO `n_nm` VALUES (5335,3640,'�������',13);
INSERT INTO `n_nm` VALUES (5336,6870,'�������',10);
INSERT INTO `n_nm` VALUES (5337,2875,'�����',1);
INSERT INTO `n_nm` VALUES (5338,5081,'������',5);
INSERT INTO `n_nm` VALUES (5339,2790,'�������',1);
INSERT INTO `n_nm` VALUES (5340,2220,'��������',23);
INSERT INTO `n_nm` VALUES (5341,5056,'�����',5);
INSERT INTO `n_nm` VALUES (5342,8600,'�����',29);
INSERT INTO `n_nm` VALUES (5343,6854,'�����',10);
INSERT INTO `n_nm` VALUES (5344,2183,'����',23);
INSERT INTO `n_nm` VALUES (5345,1805,'���',23);
INSERT INTO `n_nm` VALUES (5346,6865,'�����',10);
INSERT INTO `n_nm` VALUES (5347,9823,'������',28);
INSERT INTO `n_nm` VALUES (5348,5345,'�������',8);
INSERT INTO `n_nm` VALUES (5349,2816,'�����',1);
INSERT INTO `n_nm` VALUES (5350,5135,'�����',5);
INSERT INTO `n_nm` VALUES (5351,5374,'�����',8);
INSERT INTO `n_nm` VALUES (5352,3949,'�������',6);
INSERT INTO `n_nm` VALUES (5353,2355,'����������',15);
INSERT INTO `n_nm` VALUES (5354,7691,'�������',20);
INSERT INTO `n_nm` VALUES (5355,6732,'�������',10);
INSERT INTO `n_nm` VALUES (5356,9158,'��������',3);
INSERT INTO `n_nm` VALUES (5357,7998,'��������',26);
INSERT INTO `n_nm` VALUES (5358,2023,'����������',23);
INSERT INTO `n_nm` VALUES (5359,3799,'��������',6);
INSERT INTO `n_nm` VALUES (5360,2029,'������',23);
INSERT INTO `n_nm` VALUES (5361,2481,'�������',15);
INSERT INTO `n_nm` VALUES (5362,2376,'���������',15);
INSERT INTO `n_nm` VALUES (5363,3775,'����',6);
INSERT INTO `n_nm` VALUES (5364,5850,'����',16);
INSERT INTO `n_nm` VALUES (5365,5335,'�������',8);
INSERT INTO `n_nm` VALUES (5366,9777,'��������',28);
INSERT INTO `n_nm` VALUES (5367,7250,'��������',18);
INSERT INTO `n_nm` VALUES (5368,6147,'�������',25);
INSERT INTO `n_nm` VALUES (5369,8569,'�������',2);
INSERT INTO `n_nm` VALUES (5370,8147,'���� ������',2);
INSERT INTO `n_nm` VALUES (5371,4139,'���� ����',17);
INSERT INTO `n_nm` VALUES (5372,7975,'������',10);
INSERT INTO `n_nm` VALUES (5373,7975,'���������',26);
INSERT INTO `n_nm` VALUES (5374,7664,'��������',20);
INSERT INTO `n_nm` VALUES (5375,6056,'���������',25);
INSERT INTO `n_nm` VALUES (5376,7073,'���������',19);
INSERT INTO `n_nm` VALUES (5377,2622,'�������',11);


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

INSERT INTO `n_oblast` VALUES (1,'�����������',1);
INSERT INTO `n_oblast` VALUES (2,'������',1);
INSERT INTO `n_oblast` VALUES (3,'�����',1);
INSERT INTO `n_oblast` VALUES (4,'������ �������',1);
INSERT INTO `n_oblast` VALUES (5,'�����',1);
INSERT INTO `n_oblast` VALUES (6,'�����',1);
INSERT INTO `n_oblast` VALUES (7,'�������',1);
INSERT INTO `n_oblast` VALUES (8,'������',1);
INSERT INTO `n_oblast` VALUES (9,'��������',1);
INSERT INTO `n_oblast` VALUES (10,'���������',1);
INSERT INTO `n_oblast` VALUES (11,'�����',1);
INSERT INTO `n_oblast` VALUES (12,'�������',1);
INSERT INTO `n_oblast` VALUES (13,'���������',1);
INSERT INTO `n_oblast` VALUES (14,'������',1);
INSERT INTO `n_oblast` VALUES (15,'������',1);
INSERT INTO `n_oblast` VALUES (16,'�������',1);
INSERT INTO `n_oblast` VALUES (17,'�������',1);
INSERT INTO `n_oblast` VALUES (18,'����',1);
INSERT INTO `n_oblast` VALUES (19,'��������',1);
INSERT INTO `n_oblast` VALUES (20,'������',1);
INSERT INTO `n_oblast` VALUES (21,'������',1);
INSERT INTO `n_oblast` VALUES (22,'�����',1);
INSERT INTO `n_oblast` VALUES (23,'�����-����',1);
INSERT INTO `n_oblast` VALUES (24,'����� ������',1);
INSERT INTO `n_oblast` VALUES (25,'���������',1);
INSERT INTO `n_oblast` VALUES (26,'�������',1);
INSERT INTO `n_oblast` VALUES (27,'�����',1);
INSERT INTO `n_oblast` VALUES (28,'�����',1);


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

INSERT INTO `natc_clasifikator_deinosti` VALUES (319,NULL,'011','���������������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (320,NULL,'0111','���������� �� �������, �������������, ���������� �',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (321,NULL,'0112','���������� �� ���������, ���� � ������ � ����� ���',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (322,NULL,'0113','���������� �� ������, ������ � ����� ������ ������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (323,NULL,'012','��������������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (324,NULL,'0121','���������� �� ���� ����� �������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (325,NULL,'0122','���������� �� ������ ����� �������, ����, ��������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (326,NULL,'0123','���������� �� �����',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (327,NULL,'0124','���������� �� ������� �����',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (328,NULL,'0125','���������� �� ����� �������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (329,NULL,'013','����������� �������������-������������ ����������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (330,NULL,'0130','����������� �������������-������������ ����������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (331,NULL,'014','��������������� ������, ��� ��������� �����������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (332,NULL,'0141','������������� ������; �����������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (333,NULL,'0142','������������ ������, ��� ��������� ����������� ���',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (334,NULL,'015','��� � ���������� �� ����� � �������� � ��� ������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (335,NULL,'0150','��� � ���������� �� ����� � �������� � ��� ������',240,175,165,150,150,150,165,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (336,NULL,'020','������ ����������, ���������� � �������� � ��� ���',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (337,NULL,'0201','������ ���������� � ����������',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (338,NULL,'0202','������, �������� � �������� ���������� � ���������',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (339,NULL,'050','����� ���������� � �������� � ���� ������',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (340,NULL,'0501','�������',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (341,NULL,'0502','�����������',210,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (342,NULL,'101','����� � ����������� �� ���������� � ����� �������',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (343,NULL,'1010','����� � ����������� �� ���������� � ����� �������',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (344,NULL,'102','����� � ����������� �� ������ � �������� �������',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (345,NULL,'1020','����� � ����������� �� ������ � �������� �������',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (346,NULL,'103','����� � ����������� �� ����',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (347,NULL,'1030','����� � ����������� �� ����',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (348,NULL,'111','����� �� ����� ���� � �������� ���',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (349,NULL,'1110','����� �� ����� ���� � �������� ���',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (350,NULL,'112','������, �������� � ������ �� ���� � ���, ��� �����',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (351,NULL,'1120','������, �������� � ������ �� ���� � ���, ��� �����',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (352,NULL,'120','����� �� ������� � ������� ���� � ������� ��������',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (353,NULL,'1200','����� �� ������� � ������� ���� � ������� ��������',360,290,280,200,170,0,280,240,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (354,NULL,'131','����� �� ������� ���� � ������� �����������',360,300,270,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (355,NULL,'1310','����� �� ������� ���� � ������� �����������',360,300,270,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (356,NULL,'132','����� �� ���� �� ������ ������ � ������� ���������',360,300,270,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (357,NULL,'1320','����� �� ���� �� ������ ������ � ������� ���������',360,300,270,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (358,NULL,'141','����� �� ������ ���������',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (359,NULL,'1411','����� �� ���������� � ����������� ������ ���������',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (360,NULL,'1412','����� �� �������, ����� ����, ����� � �������',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (361,NULL,'1413','����� �� �����',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (362,NULL,'142','����� �� ������ �����, �����, ����� � �����',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (363,NULL,'1421','����� �� ������ �����, ����� � �����',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (364,NULL,'1422','����� �� ����� � ������',400,300,250,190,190,0,250,250,180);
INSERT INTO `natc_clasifikator_deinosti` VALUES (365,NULL,'143','����� �� ��������� �������� �� ����������� �������',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (366,NULL,'1430','����� �� ��������� �������� �� ����������� �������',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (367,NULL,'144','������������ �� ���',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (368,NULL,'1440','������������ �� ���',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (369,NULL,'145','����� �� ����� ��������� ��������� � ��������, ���',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (370,NULL,'1450','����� �� ����� ��������� ��������� � ��������, ���',300,230,210,170,170,0,250,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (371,NULL,'151','������������, ���������� � ������������ �� ���� �',360,270,220,170,160,155,180,180,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (372,NULL,'1511','������������ �� ����, ��� ���� �� ������� �����',360,270,220,170,160,155,180,180,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (373,NULL,'1512','������������ �� ���� �� ������� ����� � �� �������',360,270,220,170,160,155,180,180,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (374,NULL,'1513','������������ �� ����� ��������',360,270,220,170,160,155,180,180,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (375,NULL,'152','���������� � ������������ �� ���� � ����� ����� ��',380,280,230,170,160,160,180,190,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (376,NULL,'1520','���������� � ������������ �� ���� � ����� ����� ��',380,280,230,170,160,160,180,190,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (377,NULL,'153','���������� � ������������ �� ������� � ���������',350,275,220,160,153,0,160,185,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (378,NULL,'1531','���������� � ������������ �� �������',350,275,220,160,153,0,160,185,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (379,NULL,'1532','������������ �� ������� � ����������� ������',350,275,220,160,153,0,160,185,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (380,NULL,'1533','���������� � ������������ �� ������� � ���������,',350,275,220,160,153,0,160,185,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (381,NULL,'154','������������ �� ���������� � ���������� ����� � ��',410,350,300,185,160,160,180,250,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (382,NULL,'1541','������������ �� ������ ����� � �������',410,350,300,185,160,160,180,250,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (383,NULL,'1542','������������ �� ���������� ����� � �������',410,350,300,185,160,160,180,250,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (384,NULL,'1543','������������ �� �������� � ����� ������� ���������',410,350,300,185,160,160,180,250,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (385,NULL,'155','������������ �� ����� � ������ ��������',400,310,250,175,155,0,170,190,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (386,NULL,'1551','������������ �� ����� � ������ ��������, ��� �����',400,310,250,175,155,0,170,190,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (387,NULL,'1552','������������ �� ��������',400,310,250,175,155,0,170,190,153);
INSERT INTO `natc_clasifikator_deinosti` VALUES (388,NULL,'156','������������ �� ����������� ��������, ������� � ��',420,300,280,180,180,0,195,205,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (389,NULL,'1561','������������ �� ����������� ��������',420,300,280,180,180,0,195,205,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (390,NULL,'1562','������������ �� ������� � ��������� ��������',420,300,280,180,180,0,195,205,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (391,NULL,'157','������������ �� ������ ����� �� �������',400,290,280,185,150,155,195,220,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (392,NULL,'1571','������������ �� ������ ����� �� ��������������� ��',400,290,280,185,150,155,195,220,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (393,NULL,'1572','������������ �� ������ ����� �� ������� ������ ���',400,290,280,185,150,155,195,220,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (394,NULL,'158','������������ �� ����, ������ ������� � ����� �����',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (395,NULL,'1581','������������ �� ����, ������ ������� � ������ ����',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (396,NULL,'1582','������������ �� ������, �������� � ���� ����������',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (397,NULL,'1583','������������ �� �����',410,310,300,200,155,155,200,230,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (398,NULL,'1584','������������ �� �����, ���������� � ������� ������',410,310,300,200,155,155,200,230,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (399,NULL,'1585','������������ �� ��������, ����, ���-��� � �������',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (400,NULL,'1586','���������� �� ���� � ���',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (401,NULL,'1587','������������ �� ���������� ��������� � ������',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (402,NULL,'1588','������������ �� �������������� ������ �����, ���.',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (403,NULL,'1589','������������ �� ����� ���������� ��������, �������',390,305,280,170,160,0,170,210,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (404,NULL,'159','������������ �� �������',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (405,NULL,'1591','������������ �� ������� �������',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (406,NULL,'1592','������������ �� ������ ������� �� ������������ ���',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (407,NULL,'1593','������������ �� ���� �� ������',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (408,NULL,'1594','������������ �� ����� ������������ �������, ��� ��',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (409,NULL,'1595','������������ �� ����� ������������� ��������� ����',360,280,240,150,150,150,150,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (410,NULL,'1596','������������ �� ����',360,290,255,160,165,0,170,210,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (411,NULL,'1597','������������ �� ����',360,290,255,160,165,0,170,210,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (412,NULL,'1598','������������ �� ��������� ���� � ������������ ����',390,320,280,180,160,0,180,200,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (413,NULL,'160','������������ �� �������� �������',410,400,280,220,180,150,190,220,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (414,NULL,'1600','������������ �� �������� �������',410,400,280,220,180,150,190,220,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (415,NULL,'171','���������� � ������� �� ��������� ������ � ������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (416,NULL,'1711','���������� �� ����� �� ������� � ������������ �� �',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (417,NULL,'1712','���������� �� ���������� ����� �� ������� � ������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (418,NULL,'1713','���������� �� �������� ����� �� ������� � ��������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (419,NULL,'1714','���������� �� ��� �� ������� � ������������ �� ���',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (420,NULL,'1715','��������� �� ���������� ������� � ���������� �� ��',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (421,NULL,'1716','������������ �� ����� �����',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (422,NULL,'1717','���������� �� ����� ������ ���������� ������ �� ��',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (423,NULL,'172','������������ �� ������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (424,NULL,'1721','������������ �� ������� � ��� ������� ������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (425,NULL,'1722','������������ �� ���������� ������� � ��� ������� �',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (426,NULL,'1723','������������ �� �������� ������� � ��� ������� ���',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (427,NULL,'1724','������������ �� ��������� � ��� ��������� ������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (428,NULL,'1725','������������ �� ����� ������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (429,NULL,'173','�������������� �� ������, ������ � �������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (430,NULL,'1730','�������������� �� ������, ������ � �������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (431,NULL,'174','������������ �� ��������������� ��������� �������,',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (432,NULL,'1740','������������ �� ��������������� ��������� �������,',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (433,NULL,'175','������������ �� ����� ��������� �������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (434,NULL,'1751','������������ �� ������ � ��������� ������ ��������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (435,NULL,'1752','������������ �� ������, ������, ����� � ������� ��',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (436,NULL,'1753','������������ �� �������� ��������� �������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (437,NULL,'1754','������������ �� ����� ��������� �������, ���������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (438,NULL,'176','������������ �� ������� �������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (439,NULL,'1760','������������ �� ������� �������',260,210,190,170,150,150,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (440,NULL,'177','������������ �� ���������� �������',270,200,170,150,155,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (441,NULL,'1771','������������ �� ������ � ����������',270,200,170,150,155,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (442,NULL,'1772','������������ �� ���������� (������� ��� ����� ����',270,200,170,150,155,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (443,NULL,'181','������������ �� ������� �� ���������� ���� ����',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (444,NULL,'1810','������������ �� ������� �� ���������� ���� ����',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (445,NULL,'182','������������ �� ����� ������� � ���������� �� ����',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (446,NULL,'1821','������������ �� ������� �������',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (447,NULL,'1822','������������ �� ����� �������, ��� �������',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (448,NULL,'1823','������������ �� ����, ����� � ����� ����� �������',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (449,NULL,'1824','������������ �� ����� ������� � ���������� �� ����',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (450,NULL,'183','��������� �� ���������� ���� � ������������ �� ���',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (451,NULL,'1830','��������� �� ���������� ���� � ������������ �� ���',280,200,170,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (452,NULL,'191','������������ �� ���������� ���� ��� �����',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (453,NULL,'1910','������������ �� ���������� ���� ��� �����',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (454,NULL,'192','������������ �� ������, ����� � ����� ������� �� �',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (455,NULL,'1920','������������ �� ������, ����� � ����� ������� �� �',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (456,NULL,'193','������������ �� ������',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (457,NULL,'1930','������������ �� ������',270,200,190,150,150,0,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (458,NULL,'201','�����������, ���������� � ������������ �� ������ �',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (459,NULL,'2010','�����������, ���������� � ������������ �� ������ �',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (460,NULL,'202','������������ �� ������ � �������� �����',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (461,NULL,'2020','������������ �� ������ � �������� �����',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (462,NULL,'203','������������ �� �������, ����������� � ������� ��',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (463,NULL,'2030','������������ �� �������, ����������� � ������� ��',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (464,NULL,'204','������������ �� ������� �� ������ ��������',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (465,NULL,'2040','������������ �� ������� �� ������ ��������',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (466,NULL,'205','������������ �� ����� ������� �� ������ ��������;',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (467,NULL,'2051','������������ �� ����� ������� �� ������ ��������',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (468,NULL,'2052','������������ �� ������� �� ����, ����� � ���������',230,200,180,150,150,0,160,165,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (469,NULL,'211','������������ �� �������� ����, ������ � ������',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (470,NULL,'2111','������������ �� �������� ����',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (471,NULL,'2112','������������ �� ������ � ������',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (472,NULL,'212','������������ �� ������� �� ������ � ������',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (473,NULL,'2121','������������ �� ������������ ������ � �������� ��',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (474,NULL,'2122','������������ �� ����������, ���������-�������� � �',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (475,NULL,'2123','������������ �� ����������� ������� �� ������ � ��',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (476,NULL,'2124','������������ �� ������ � ������� ������ ���������',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (477,NULL,'2125','������������ �� ����� ������� �� ������ � ������',230,200,180,150,150,0,155,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (478,NULL,'221','���������� �������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (479,NULL,'2211','�������� �� ����� � ����� ������������ �������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (480,NULL,'2212','�������� �� ��������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (481,NULL,'2213','�������� �� �������� � ����� ���������� �������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (482,NULL,'2214','�������� �� �����������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (483,NULL,'2215','����� ���������� �������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (484,NULL,'222','�������������� � ����� ��������, �������� � ������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (485,NULL,'2221','�������� �� ��������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (486,NULL,'2222','�������� �� ����� ������� � ������� ��������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (487,NULL,'2223','����������� �� ������� �������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (488,NULL,'2224','����������� ����������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (489,NULL,'2225','������������ ��������, �������� � ����������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (490,NULL,'223','��������������� �� �������� ��������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (491,NULL,'2231','��������������� �� �����������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (492,NULL,'2232','��������������� �� �����������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (493,NULL,'2233','��������������� �� ���������� ������',200,180,170,150,150,150,160,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (494,NULL,'231','������������ �� ���� � �������� �� �����������',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (495,NULL,'2310','������������ �� ���� � �������� �� �����������',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (496,NULL,'232','������������ �� ���������� �������������',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (497,NULL,'2320','������������ �� ���������� �������������',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (498,NULL,'233','������������ � ���������� �� ������ ������',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (499,NULL,'2330','������������ � ���������� �� ������ ������',700,520,410,300,350,0,370,380,220);
INSERT INTO `natc_clasifikator_deinosti` VALUES (500,NULL,'241','������������ �� ������� ������� ��������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (501,NULL,'2411','������������ �� ���������� ������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (502,NULL,'2412','������������ �� ������� � ��������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (503,NULL,'2413','������������ �� ����� ������� ����������� �������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (504,NULL,'2414','������������ �� ����� ������� ��������� ������� ��',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (505,NULL,'2415','������������ �� ������ ���������� � ������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (506,NULL,'2416','������������ �� �������� � �������� �����',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (507,NULL,'2417','������������ �� ���������� ������ � �������� �����',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (508,NULL,'242','������������ �� ��������� � ����� ������������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (509,NULL,'2420','������������ �� ��������� � ����� ������������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (510,NULL,'243','������������ �� ���, ������ � ������� ��������, ��',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (511,NULL,'2430','������������ �� ���, ������ � ������� ��������, ��',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (512,NULL,'244','������������ �� ����������� �������� � ��������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (513,NULL,'2441','������������ �� ����������� ��������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (514,NULL,'2442','������������ �� ����������� ��������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (515,NULL,'245','������������ �� �����, �����, ���������� � �������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (516,NULL,'2451','������������ �� �����, �����, ���������� � �������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (517,NULL,'2452','������������ �� ������� � �������� ��������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (518,NULL,'246','������������ �� ����� ������� ��������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (519,NULL,'2461','������������ �� ����������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (520,NULL,'2462','������������ �� ������ � ��������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (521,NULL,'2463','������������ �� �������� �����',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (522,NULL,'2464','������������ �� ����������� ������� ���������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (523,NULL,'2465','������������ �� ������ ���������� ��������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (524,NULL,'2466','������������ �� ����� ������� ��������, ����������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (525,NULL,'247','������������ �� ���������� � ���������� ������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (526,NULL,'2470','������������ �� ���������� � ���������� ������',370,290,210,160,150,150,200,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (527,NULL,'251','������������ �� ������� �� ������',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (528,NULL,'2511','������������ �� ����, ������ � ��������',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (529,NULL,'2512','������������ �� ����������� ����',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (530,NULL,'2513','������������ �� ����� ������� �� ������',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (531,NULL,'252','������������ �� ������� �� ���������',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (532,NULL,'2521','������������ �� �������, �����, ����� � ������� ��',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (533,NULL,'2522','������������ �� �������� �� ���������',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (534,NULL,'2523','������������ �� ������� �� ��������� �� ����������',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (535,NULL,'2524','������������ �� ����� ������� �� ���������',260,180,170,160,150,150,170,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (536,NULL,'261','������������ �� ������ � ������� �� ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (537,NULL,'2611','������������ �� ������������ ������ ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (538,NULL,'2612','��������� � ��������� �� ������ ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (539,NULL,'2613','������������ �� ������� � ���������� ������� �� ��',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (540,NULL,'2614','������������ �� �������� ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (541,NULL,'2615','������������ � ��������� �� ����� ������� �� �����',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (542,NULL,'262','������������ �� ��������� �������, ��� �����������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (543,NULL,'2621','������������ �� ���������� � ����������� ������� �',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (544,NULL,'2622','������������ �� ��������� ��������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (545,NULL,'2623','������������ �� ��������� ���������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (546,NULL,'2624','������������ �� ����� ��������� ������� �� �������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (547,NULL,'2625','������������ �� ����� ��������� �������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (548,NULL,'2626','������������ �� ���������� ��������� �������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (549,NULL,'263','������������ �� ��������� ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (550,NULL,'2630','������������ �� ��������� ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (551,NULL,'264','������������ �� �����, �������� � ����� ����������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (552,NULL,'2640','������������ �� �����, �������� � ����� ����������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (553,NULL,'265','������������ �� ������, ��� � ����',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (554,NULL,'2651','������������ �� ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (555,NULL,'2652','������������ �� ���',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (556,NULL,'2653','������������ �� ����',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (557,NULL,'266','������������ �� ������� �� �����, ���� � ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (558,NULL,'2661','������������ �� ������� �� ����� �� ��������������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (559,NULL,'2662','������������ �� ������� �� ���� �� ��������������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (560,NULL,'2663','������������ �� ������ �������� �����',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (561,NULL,'2664','������������ �� �������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (562,NULL,'2665','������������ �� ���������-��������� �������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (563,NULL,'2666','������������ �� ����� ������� �� �����, ���� � ���',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (564,NULL,'267','������, ����������� � ����������� �� ���������� �',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (565,NULL,'2670','������, ����������� � ����������� �� ���������� �',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (566,NULL,'268','������������ �� �������� �� ����� ��������� ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (567,NULL,'2681','������������ �� ��������� ��������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (568,NULL,'2682','������������ �� �������� �� ����� ��������� ������',270,200,180,160,150,0,180,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (569,NULL,'271','������������ �� �����, ������� � ����������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (570,NULL,'2710','������������ �� �����, ������� � ����������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (571,NULL,'272','������������ �� �����',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (572,NULL,'2721','������������ �� �������� �����',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (573,NULL,'2722','������������ �� ��������� �����',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (574,NULL,'273','����� �������� ��������� �� �������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (575,NULL,'2731','������� ��������� �� �������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (576,NULL,'2732','������� ��������e �� ����� ����� �� �������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (577,NULL,'2733','������� ��������� ��� ��������� �� �������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (578,NULL,'2734','��������� �� ���',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (579,NULL,'274','������������ �� ���������� � ������ ������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (580,NULL,'2741','������������ �� ���������� ������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (581,NULL,'2742','������������ �� �������� � ���������� ������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (582,NULL,'2743','������������ �� �����, ����, ����� � ������� �����',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (583,NULL,'2744','������������ �� ��� � ����� ������',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (584,NULL,'2745','������������ �� ����� ������ ������ � ������� ����',410,260,250,170,150,170,220,240,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (585,NULL,'275','����� �� ������',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (586,NULL,'2751','����� �� �����',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (587,NULL,'2752','����� �� �������',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (588,NULL,'2753','����� �� ���� ������',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (589,NULL,'2754','����� �� ����� ������ � ���������� ������',385,235,235,150,150,150,195,215,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (590,NULL,'281','������������ �� ������� ������� �� ��������������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (591,NULL,'2811','������������ �� ������� ����������� � ����� �� ���',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (592,NULL,'2812','������������ �� ������� ������� �� ��������������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (593,NULL,'282','������������ �� ��������, ���������� � ����������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (594,NULL,'2821','������������ �� ��������, ���������� � ����������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (595,NULL,'2822','������������ �� ����� �� ��������� � ��������� � �',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (596,NULL,'283','������������ �� ����� �����, ��� ����� �� ��������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (597,NULL,'2830','������������ �� ����� �����, ��� ����� �� ��������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (598,NULL,'284','������, ���������, ��������� � ��������� �� �����;',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (599,NULL,'2840','������, ���������, ��������� � ��������� �� �����;',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (600,NULL,'285','����� �����������������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (601,NULL,'2851','������������ ����������� � �������� �� �������� ��',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (602,NULL,'2852','��������� ����������� �� �����',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (603,NULL,'286','������������ �� ��������� �������, ����������� � �',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (604,NULL,'2861','������������ �� ��������� ������� � �������� �����',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (605,NULL,'2862','������������ �� ������ �� ����� �������� � �������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (606,NULL,'2863','������������ �� ���������� � ������� �����',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (607,NULL,'287','������������ �� ����� ������� �������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (608,NULL,'2871','������������ �� ������ � ������� ������ �� �������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (609,NULL,'2872','������������ �� ���� �������� �� �����',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (610,NULL,'2873','������������ �� ������� �� ���',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (611,NULL,'2874','������������ �� ����������� ��������, ������ � ���',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (612,NULL,'2875','������������ �� ����� ������� �������, �����������',290,175,175,150,150,150,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (613,NULL,'291','������������ �� ������ �� ������������ � ���������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (614,NULL,'2911','������������ �� ������� � ���������, ��� ���������',350,250,230,160,150,150,200,200,160);
INSERT INTO `natc_clasifikator_deinosti` VALUES (615,NULL,'2912','������������ �� ����� � ����������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (616,NULL,'2913','������������ �� ��������� �������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (617,NULL,'2914','������������ �� ������, �������� � �����������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (618,NULL,'292','������������ �� ������ � ���� ��������������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (619,NULL,'2921','������������ �� ���� � �������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (620,NULL,'2922','������������ �� �������-����������� ������, ���. �',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (621,NULL,'2923','������������ �� ���������� �������� � ������������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (622,NULL,'2924','������������ �� ����� ������ � ���� ��������������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (623,NULL,'293','������������ �� ������ �� �������� � �������� ����',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (624,NULL,'2931','������������ �� �������� �� �������� � �������� ��',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (625,NULL,'2932','������������ �� ����� ������ �� �������� � �������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (626,NULL,'294','������������ �� ����������� ������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (627,NULL,'2941','������������ �� ��������� ����� ����������� � ����',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (628,NULL,'2942','������������ �� ������ �� ��������� �� �����',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (629,NULL,'2943','������������ �� ����� ����������� ������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (630,NULL,'295','������������ �� ����� ������ ��� ��������� �������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (631,NULL,'2951','������������ �� ������ � ���������� �� �����������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (632,NULL,'2952','������������ �� ������ �� ����� � ������������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (633,NULL,'2953','������������ �� ������ � ���������� �� ����������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (634,NULL,'2954','������������ �� ������ �� �������, �������, ���� �',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (635,NULL,'2955','������������ �� ������ �� �������� ����, ������, �',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (636,NULL,'2956','������������ �� ����� ������ ��� ��������� �������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (637,NULL,'296','������������ �� ���������� � ����������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (638,NULL,'2960','������������ �� ���������� � ����������',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (639,NULL,'297','������������ �� ���������� �����',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (640,NULL,'2971','������������ �� ������������ ���������� �����',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (641,NULL,'2972','������������ �� �������������� ���������� �����',320,210,180,150,150,150,180,190,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (642,NULL,'300','������������ �� ����������� � ��������������������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (643,NULL,'3001','������������ �� ����������� �������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (644,NULL,'3002','������������ �� ���������������������� �������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (645,NULL,'311','������������ �� ����������������, ������������ ���',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (646,NULL,'3110','������������ �� ����������������, ������������ ���',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (647,NULL,'312','������������ �� ���������������������� � ���������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (648,NULL,'3120','������������ �� ���������������������� � ���������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (649,NULL,'313','������������ �� ��������� ���������� � ������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (650,NULL,'3130','������������ �� ��������� ���������� � ������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (651,NULL,'314','������������ �� ������������ �����������, �������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (652,NULL,'3140','������������ �� ������������ �����������, �������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (653,NULL,'315','������������ �� ���������� � �����',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (654,NULL,'3150','������������ �� ���������� � �����',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (655,NULL,'316','������������ �� ������������ ����������, ���������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (656,NULL,'3161','������������ �� ������������ ���������� �� �������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (657,NULL,'3162','������������ �� ����� ������������ ����������, �e�',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (658,NULL,'321','������������ �� ���������� �����, ����� � ����� ��',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (659,NULL,'3210','������������ �� ���������� �����, ����� � ����� ��',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (660,NULL,'322','������������ �� ��������� ������������ � ���������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (661,NULL,'3220','������������ �� ��������� ������������ � ���������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (662,NULL,'323','������������ �� ������������ � ��������������, ���',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (663,NULL,'3230','������������ �� ������������ � ��������������, ���',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (664,NULL,'331','������������ �� ���������� � ������������ ��������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (665,NULL,'3310','������������ �� ���������� � ������������ ��������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (666,NULL,'332','������������ �� ����� � ������� �� ���������, ����',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (667,NULL,'3320','������������ �� ����� � ������� �� ���������, ����',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (668,NULL,'333','������������ �� ���������� �� ������� �� ���������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (669,NULL,'3330','������������ �� ���������� �� ������� �� ���������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (670,NULL,'334','������������ �� ������� ����� � �������� � �������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (671,NULL,'3340','������������ �� ������� ����� � �������� � �������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (672,NULL,'335','������������ �� ��������� � ����������� ���������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (673,NULL,'3350','������������ �� ��������� � ����������� ���������',330,220,200,150,150,0,180,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (674,NULL,'341','������������ �� ���������� � ��������� �� �������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (675,NULL,'3410','������������ �� ���������� � ��������� �� �������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (676,NULL,'342','������������ �� ��������� �� ����������; ���������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (677,NULL,'3420','������������ �� ��������� �� ����������; ���������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (678,NULL,'343','������������ �� ����� � �������������� �� ��������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (679,NULL,'3430','������������ �� ����� � �������������� �� ��������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (680,NULL,'351','������������ � ������ �� ���������� ������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (681,NULL,'3511','������������ � ������ �� ���������� ������, ��� ��',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (682,NULL,'3512','������������ � ������ �� ���������� ������ �� ����',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (683,NULL,'352','������������ �� ����������, ������� � ������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (684,NULL,'3520','������������ �� ����������, ������� � ������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (685,NULL,'353','������������ �� ����������������� � ���������� ���',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (686,NULL,'3530','������������ �� ����������������� � ���������� ���',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (687,NULL,'354','������������ �� ����������� � ����������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (688,NULL,'3541','������������ �� �����������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (689,NULL,'3542','������������ �� ����������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (690,NULL,'3543','������������ �� ��������� �������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (691,NULL,'355','������������ �� �������� ��������, ���������������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (692,NULL,'3550','������������ �� �������� ��������, ���������������',360,240,215,150,150,150,220,175,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (693,NULL,'361','������������ �� ������',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (694,NULL,'3611','������������ �� ������� � �������',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (695,NULL,'3612','������������ �� ����������� � ��������� ������, ��',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (696,NULL,'3613','������������ �� ��������� ������, ��� �������',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (697,NULL,'3614','������������ �� ����� ������, ��� �������',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (698,NULL,'3615','������������ �� ������� � ������',220,200,180,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (699,NULL,'362','������������ �� ������ � ������� �������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (700,NULL,'3621','������ �� ������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (701,NULL,'3622','������������ �� ����������� � ����� ������� �� ���',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (702,NULL,'363','������������ �� ��������� �����������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (703,NULL,'3630','������������ �� ��������� �����������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (704,NULL,'364','������������ �� ������� �����',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (705,NULL,'3640','������������ �� ������� �����',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (706,NULL,'365','������������ �� ���� � ������ �������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (707,NULL,'3650','������������ �� ���� � ������ �������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (708,NULL,'366','������������ ������������, ��������������� �������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (709,NULL,'3661','������������ �� ������ ��������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (710,NULL,'3662','������������ �� ����� � �����',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (711,NULL,'3663','����� ������������ ������������, ��������������� �',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (712,NULL,'371','����������� �� ������� ��������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (713,NULL,'3710','����������� �� ������� ��������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (714,NULL,'372','����������� �� ��������� ��������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (715,NULL,'3720','����������� �� ��������� ��������',280,190,180,150,150,150,150,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (716,NULL,'401','������������, ������ � ������������� �� ����������',530,430,380,210,180,0,300,280,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (717,NULL,'4011','������������ �� ������������ �������',530,430,380,210,180,0,300,280,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (718,NULL,'4012','������ �� ������������ �������',530,430,380,210,180,0,300,280,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (719,NULL,'4013','������������� � �������� �� ������������ �������',530,430,380,210,180,0,300,280,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (720,NULL,'402','������������ � ������������� �� ����������� ������',580,400,380,230,200,150,270,300,200);
INSERT INTO `natc_clasifikator_deinosti` VALUES (721,NULL,'4021','������������ �� ����������� ������',580,400,380,230,200,150,270,300,200);
INSERT INTO `natc_clasifikator_deinosti` VALUES (722,NULL,'4022','������������� � �������� �� ����������� ������',580,400,380,230,200,150,270,300,200);
INSERT INTO `natc_clasifikator_deinosti` VALUES (723,NULL,'403','������������ � ������������� �� �������� �������',510,350,330,170,170,0,230,260,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (724,NULL,'4030','������������ � ������������� �� �������� �������',510,350,330,170,170,0,230,260,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (725,NULL,'410','��������, ����������� � ������������� �� ����',405,365,325,190,180,0,255,190,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (726,NULL,'4100','��������, ����������� � ������������� �� ����',405,365,325,190,180,0,255,190,190);
INSERT INTO `natc_clasifikator_deinosti` VALUES (727,NULL,'451','���������� �� ������������ ��������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (728,NULL,'4511','�������� � ����������� �� ������; ����� ������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (729,NULL,'4512','��������� � ���������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (730,NULL,'452','������������ �� ������ � ���������� ���������� ���',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (731,NULL,'4521','���� ������������ �� ������ � ���������� ���������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (732,NULL,'4522','������������ �� ������� � �������������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (733,NULL,'4523','������������ �� ������, ��������� ����� � �������',405,330,330,205,150,150,240,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (734,NULL,'4524','������������ �� ��������������� ����������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (735,NULL,'4525','����� �������������� ���������� ��������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (736,NULL,'453','������������ �� ����������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (737,NULL,'4531','������������ �� ������������ ����������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (738,NULL,'4532','����������� ���������� ��������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (739,NULL,'4533','������������ �� ������������� ����������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (740,NULL,'4534','������������ �� ����� ����������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (741,NULL,'454','������������ ���������� ��������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (742,NULL,'4541','�������� �� �������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (743,NULL,'4542','������ �� �������, ���������� � ����� ���������� �',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (744,NULL,'4543','�������� �� ������ �������� � ������ ���������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (745,NULL,'4544','���������� � ���������������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (746,NULL,'4545','����� ������������ ���������� ��������',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (747,NULL,'455','������ ��� ���� �� ���������� ������ � ����������,',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (748,NULL,'4550','������ ��� ���� �� ���������� ������ � ����������,',390,310,300,180,170,0,230,230,170);
INSERT INTO `natc_clasifikator_deinosti` VALUES (749,NULL,'501','�������� � ����������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (750,NULL,'5010','�������� � ����������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (751,NULL,'502','���������� ���������� � ������ �� ����������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (752,NULL,'5020','���������� ���������� � ������ �� ����������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (753,NULL,'503','�������� � ����� � �������������� �� ����������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (754,NULL,'5030','�������� � ����� � �������������� �� ����������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (755,NULL,'504','�������� � �����������, ����� � �������������� ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (756,NULL,'5040','�������� � �����������, ����� � �������������� ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (757,NULL,'505','�������� �� ������ � ����������� ������ � ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (758,NULL,'5050','�������� �� ������ � ����������� ������ � ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (759,NULL,'511','��������� ��������������, ��� �������� � ���������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (760,NULL,'5111','��������� �������������� ��� ��������������� �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (761,NULL,'5112','��������� �������������� � ������, ����, ������ �',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (762,NULL,'5113','��������� �������������� � ������ � ���������� ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (763,NULL,'5114','��������� �������������� � ������, ���������� ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (764,NULL,'5115','��������� �������������� � ������, ����� �� ������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (765,NULL,'5116','��������� �������������� � �������, �������, �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (766,NULL,'5117','��������� �������������� � ���������� ��������, ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (767,NULL,'5118','��������� �������������� � ����� ���������� �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (768,NULL,'5119','��������� �������������� � ������������ �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (769,NULL,'512','T������� �� ���� ��� ��������������� �������� � ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (770,NULL,'5121','�������� �� ���� ��� �����, ������, ������ � �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (771,NULL,'5122','�������� �� ���� � ����� � ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (772,NULL,'5123','�������� �� ���� � ���� �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (773,NULL,'5124','�������� �� ���� ��� ������ � ���������� ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (774,NULL,'5125','�������� �� ���� ��� ����� � �������� ��������� ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (775,NULL,'513','�������� �� ���� � ���������� ��������, ������� �',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (776,NULL,'5131','�������� �� ���� � ������ ������� � ���������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (777,NULL,'5132','�������� �� ���� � ���� � ����� ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (778,NULL,'5133','�������� �� ���� � �����, ������ ��������, ����, �',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (779,NULL,'5134','�������� �� ���� � ��������� � ����� �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (780,NULL,'5135','�������� �� ���� � �������� �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (781,NULL,'5136','�������� �� ���� ��� �����, ������� ������� � ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (782,NULL,'5137','�������� �� ���� � ����, ���, ����� � ���������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (783,NULL,'5138','T������� �� ���� � ����� ���������� ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (784,NULL,'5139','���������������� �������� �� ���� � ���������� ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (785,NULL,'514','�������� �� ���� ��� ����� �� �������������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (786,NULL,'5141','�������� �� ���� � �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (787,NULL,'5142','�������� �� ���� � ������� � ������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (788,NULL,'5143','�������� �� ���� � ������������ ���������� ����� �',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (789,NULL,'5144','�������� �� ���� � ����������� � ���������� ������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (790,NULL,'5145','�������� �� ���� � ������������ � ���������� �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (791,NULL,'5146','�������� �� ���� � �������������, ���������� � ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (792,NULL,'5147','�������� �� ���� � ����� ����� �� �������������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (793,NULL,'515','�������� �� ���� � ����������������� �������� ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (794,NULL,'5151','�������� �� ���� � ������, ����� � ����������� ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (795,NULL,'5152','�������� �� ���� � ������� ���� � ������ � �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (796,NULL,'5153','�������� �� ���� � ������ ��������, ��������� �� �',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (797,NULL,'5154','�������� �� ���� � ���������, ������������ � �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (798,NULL,'5155','�������� �� ���� � ������� ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (799,NULL,'5156','�������� �� ���� � ����� ����������������� �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (800,NULL,'5157','�������� �� ���� � �������� � �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (801,NULL,'518','�������� �� ���� � ������ � ���������� � ����� ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (802,NULL,'5181','�������� �� ���� � ����������� ������ � ����� �� �',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (803,NULL,'5182','�������� �� ���� � ������ � ���������� �� ������,',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (804,NULL,'5183','�������� �� ���� � ������ �� �������, �������, ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (805,NULL,'5184','�������� �� ���� � ���������������������� �������,',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (806,NULL,'5185','�������� �� ���� � ����� ����������� �������, ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (807,NULL,'5186','�������� �� ���� � ����� ���������� �������� � ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (808,NULL,'5187','�������� �� ���� � ����� ������ � ���������� �� ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (809,NULL,'5188','�������� �� ���� � ��������, ������ � �������� ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (810,NULL,'519','����� �������� �� ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (811,NULL,'5190','����� �������� �� ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (812,NULL,'521','�������� �� ������ � ���������������� ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (813,NULL,'5211','�������� �� ������ � ���������������� �������� ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (814,NULL,'5212','�������� �� ������ � ���������������� �������� � �',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (815,NULL,'522','�������� �� ������ � �������������� �������� � ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (816,NULL,'5221','�������� �� ������ � ������ ������� � ���������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (817,NULL,'5222','�������� �� ������ � ���� � ����� ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (818,NULL,'5223','�������� �� ������ � ����, ����� ��������, �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (819,NULL,'5224','�������� �� ������ � ����, ������, ������� � �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (820,NULL,'5225','�������� �� ������ � ��������� � ����� �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (821,NULL,'5226','�������� �� ������ � �������� �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (822,NULL,'5227','�������� �� ������ � �������������� �������� � ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (823,NULL,'523','�������� �� ������ � ������������� � ���������� ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (824,NULL,'5231','�������� �� ������ � ������������� �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (825,NULL,'5232','�������� �� ������ � ���������� � ����������� ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (826,NULL,'5233','�������� �� ������ � ������������, ���������� ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (827,NULL,'524','�������� �� ������ � �������������� �������� � ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (828,NULL,'5241','�������� �� ������ � �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (829,NULL,'5242','�������� �� ������ � �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (830,NULL,'5243','�������� �� ������ � ������ � ������ �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (831,NULL,'5244','�������� �� ������ � ������, ���������� � ����� ��',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (832,NULL,'5245','�������� �� ������ � ������������ ���������� �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (833,NULL,'5246','�������� �� ������ � ���������, ��� � ������ �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (834,NULL,'5247','�������� �� ������ � �����, �������� � �����������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (835,NULL,'5248','�������� �� ������ � �������������� �������� � ���',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (836,NULL,'525','�������� �� ������ � ������������ ����� � ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (837,NULL,'5250','�������� �� ������ � ������������ ����� � ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (838,NULL,'526','�������� �� ������, ���������� ����� ��������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (839,NULL,'5261','�������� �� ������ ���� �����, ����������� �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (840,NULL,'5262','�������� �� ������ �� ������� ������� � ������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (841,NULL,'5263','�������� �� ������ ����� ��������, ���������������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (842,NULL,'527','�������� � ������ �� ����� ���� � ����� �� �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (843,NULL,'5271','�������� �� ������ � ������� �� ����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (844,NULL,'5272','������ �� ������������ ���������� �����',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (845,NULL,'5273','�������� �� ��������� � ������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (846,NULL,'5274','�������� � ������ �� ����� ���� � ����� �� �������',390,350,300,200,170,160,200,210,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (847,NULL,'551','������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (848,NULL,'5510','������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (849,NULL,'552','�������� � ����� ����� �� ������������ �����������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (850,NULL,'5521','������������ ������ � ����',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (851,NULL,'5522','��������, ���. ����� �� ��������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (852,NULL,'5523','����� ����� �� ������������ �����������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (853,NULL,'553','����������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (854,NULL,'5530','����������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (855,NULL,'554','������� ���������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (856,NULL,'5540','������� ���������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (857,NULL,'555','������� � ��������� �� ���������� � ��������� �� �',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (858,NULL,'5551','�������',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (859,NULL,'5552','��������� �� ���������� � ��������� �� �����',345,320,245,180,160,0,205,185,155);
INSERT INTO `natc_clasifikator_deinosti` VALUES (860,NULL,'601','����������� ���������',310,280,220,150,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (861,NULL,'6010','����������� ���������',310,280,220,150,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (862,NULL,'602','���� ��������� ���������, ��� �������������',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (863,NULL,'6021','���� ��������� ���������� ��������� �� ����������',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (864,NULL,'6022','����������� ���������� ���������',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (865,NULL,'6023','���� ��������� ���������� ��������� ��� ����������',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (866,NULL,'6024','������� ����������� ���������',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (867,NULL,'603','������������� ���������',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (868,NULL,'6030','������������� ���������',300,240,210,150,150,0,160,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (869,NULL,'611','������ � ���������� ���������',330,310,260,155,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (870,NULL,'6110','������ � ���������� ���������',330,310,260,155,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (871,NULL,'612','����� � ���� ��������� �� �������� ����� ������',330,310,260,155,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (872,NULL,'6120','����� � ���� ��������� �� �������� ����� ������',330,310,260,155,150,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (873,NULL,'621','�������� ��������� �� ����������',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (874,NULL,'6210','�������� ��������� �� ����������',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (875,NULL,'622','�������� ��������� ��� ����������',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (876,NULL,'6220','�������� ��������� ��� ����������',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (877,NULL,'623','���������� ���������',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (878,NULL,'6230','���������� ���������',320,310,260,160,160,0,170,180,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (879,NULL,'631','��������� � ���������� �� ������',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (880,NULL,'6311','��������� �� ������',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (881,NULL,'6312','���������� � ����������� �� ������',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (882,NULL,'632','����� ������������ �������� � ����������',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (883,NULL,'6321','����� ������������ �������� � ���������� ���������',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (884,NULL,'6322','����� ������������ �������� ��� ������ ���������',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (885,NULL,'6323','����� ������������ �������� ��� ��������� ��������',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (886,NULL,'633','�������� �� ������������ � ������������ �������; �',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (887,NULL,'6330','�������� �� ������������ � ������������ �������; �',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (888,NULL,'634','�������� �� �������, �������� � ������ �� ������',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (889,NULL,'6340','�������� �� �������, �������� � ������ �� ������',320,300,240,150,0,0,170,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (890,NULL,'641','������� �� ������������ ����, ��������� �������',230,215,195,160,160,0,185,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (891,NULL,'6411','������� �� ������������ ����',230,215,195,160,160,0,185,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (892,NULL,'6412','��������� �������, �������� �� ���� �� �����������',230,215,195,160,160,0,185,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (893,NULL,'642','���������������',310,280,250,190,190,0,210,210,151);
INSERT INTO `natc_clasifikator_deinosti` VALUES (894,NULL,'6420','���������������',310,280,250,190,190,0,210,210,151);
INSERT INTO `natc_clasifikator_deinosti` VALUES (895,NULL,'651','������� ��������������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (896,NULL,'6511','������� �� ����������� �����',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (897,NULL,'6512','����� ������� ��������������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (898,NULL,'652','����� ��������� ��������������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (899,NULL,'6521','�������� ������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (900,NULL,'6522','����� ����� �� ������������ �� ������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (901,NULL,'6523','����� ��������� ��������������, ��������������� ��',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (902,NULL,'660','��������������� ������� � ������� �� �������������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (903,NULL,'6601','������������������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (904,NULL,'6602','������� �� ������������� ������������ �������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (905,NULL,'6603','����� ������������, ��� ������������������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (906,NULL,'671','������������ �������� �� ��������� ��������������,',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (907,NULL,'6711','���������� �� ��������� ������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (908,NULL,'6712','��������� �������� � ����� ����� � ���������� �� �',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (909,NULL,'6713','������������ �������� �� ��������� ��������������,',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (910,NULL,'672','������������ �������� �� ������������ � ����������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (911,NULL,'6720','������������ �������� �� ������������ � ����������',630,400,300,220,160,150,180,230,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (912,NULL,'701','���������� �� ��������, ������� � �������� �� ����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (913,NULL,'7011','���������� �� �������� �� ��������� �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (914,NULL,'7012','������� � �������� �� ��������� ��������� �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (915,NULL,'702','������ ��� ���� �� ��������� ��������� �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (916,NULL,'7020','������ ��� ���� �� ��������� ��������� �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (917,NULL,'703','������������� ������� �� �������� � ��������� ����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (918,NULL,'7031','������������� ������� �� ������� �� ��������� ����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (919,NULL,'7032','������������� ������� �� ���������� �� ��������� �',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (920,NULL,'711','������ ��� ���� �� ���� � ����������� ����������,',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (921,NULL,'7110','������ ��� ���� �� ���� � ����������� ����������,',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (922,NULL,'712','������ ��� ���� �� ����� �������� ��������, ��� ��',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (923,NULL,'7121','������ ��� ���� �� ����� �������� �� ��������� ���',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (924,NULL,'7122','������ ��� ���� �� �������� �� ����� ���������, ��',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (925,NULL,'7123','������ ��� ���� �� �������� �� �������� ���������,',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (926,NULL,'713','������ ��� ���� �� ����� ������ � �������, ��� ���',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (927,NULL,'7131','������ ��� ���� �� ��������������� ������ � ������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (928,NULL,'7132','������ ��� ���� �� ���������� ������ � ����������,',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (929,NULL,'7133','������ ��� ���� �� �����������, ���������� � �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (930,NULL,'7134','������ ��� ���� �� ����� ������ � �������, ��� ���',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (931,NULL,'714','������ ��� ���� �� ����� � ���������� ����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (932,NULL,'7140','������ ��� ���� �� ����� � ���������� ����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (933,NULL,'721','����������� �� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (934,NULL,'7210','����������� �� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (935,NULL,'722','������������ �� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (936,NULL,'7221','�������� �� ���������� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (937,NULL,'7222','����� �������� �� ������������ �� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (938,NULL,'723','��������� �� �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (939,NULL,'7230','��������� �� �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (940,NULL,'724','��������, �������� � ���� �� �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (941,NULL,'7240','��������, �������� � ���� �� �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (942,NULL,'725','���������� � ������ �� �����������, ���������� � �',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (943,NULL,'7250','���������� � ������ �� �����������, ���������� � �',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (944,NULL,'726','����� �������� � �������� �� ������������ ��������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (945,NULL,'7260','����� �������� � �������� �� ������������ ��������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (946,NULL,'731','��������������������� � �������� ������� � �������',281,202,180,169,150,150,157,157,157);
INSERT INTO `natc_clasifikator_deinosti` VALUES (947,NULL,'7310','��������������������� � �������� ������� � �������',281,202,180,169,150,150,157,157,157);
INSERT INTO `natc_clasifikator_deinosti` VALUES (948,NULL,'732','��������������������� � �������� ������� � �������',281,202,180,169,150,150,157,157,157);
INSERT INTO `natc_clasifikator_deinosti` VALUES (949,NULL,'7320','��������������������� � �������� ������� � �������',281,202,180,169,150,150,157,157,157);
INSERT INTO `natc_clasifikator_deinosti` VALUES (950,NULL,'741','����������, ���������� � ��������� ��������; �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (951,NULL,'7411','���������� ������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (952,NULL,'7412','���������� � ��������� ��������; ������� ���������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (953,NULL,'7413','��������� �� ������ � ���������� �� ������������ �',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (954,NULL,'7414','����������� �� ���������� � ��������� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (955,NULL,'7415','���������� �� ���������� ���������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (956,NULL,'742','������������ � ��������� �������� � ���������� ���',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (957,NULL,'7420','������������ � ��������� �������� � ���������� ���',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (958,NULL,'743','�������� �� ���������� ���������� � �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (959,NULL,'7430','�������� �� ���������� ���������� � �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (960,NULL,'744','�������� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (961,NULL,'7440','�������� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (962,NULL,'745','������������� ������� �� ��������, ��������� � ���',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (963,NULL,'7450','������������� ������� �� ��������, ��������� � ���',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (964,NULL,'746','����������� � ����������� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (965,NULL,'7460','����������� � ����������� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (966,NULL,'747','���������� �� ������, ���������� ���������� � ����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (967,NULL,'7470','���������� �� ������, ���������� ���������� � ����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (968,NULL,'748','������������ ������������, ��������������� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (969,NULL,'7481','�������� � �������� �� ������������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (970,NULL,'7482','���������� �� �����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (971,NULL,'7485','����������� � ������������ ��������; ������������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (972,NULL,'7486','�������� �� �������� �� ������ ���� ��������� ����',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (973,NULL,'7487','����� ������������, ��������������� �������',400,260,210,150,150,150,160,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (974,NULL,'751','���������� �� ��������� � ���������� �� ����������',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (975,NULL,'7511','���������������� ���������� �� ��������� �� ������',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (976,NULL,'7512','�������� ���������� � �������� �� ���������� �����',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (977,NULL,'7513','�������� ���������� � �������� �� ����������� ����',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (978,NULL,'7514','������������ �������� �� ���������� ���������� ���',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (979,NULL,'752','������ �� ���������� ���������� �� ���������� ����',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (980,NULL,'7521','������ ������',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (981,NULL,'7522','�������� � �������� �� ���������',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (982,NULL,'7523','�������������� � ������� �������',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (983,NULL,'7524','�������� �� ������ �� ������������ ��������� � ���',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (984,NULL,'7525','�������� �� ������� � �������� �����������',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (985,NULL,'753','������������ ���������� �����������',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (986,NULL,'7530','������������ ���������� �����������',208,150,150,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (987,NULL,'801','������������ � ������� �����������',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (988,NULL,'8010','������������ � ������� �����������',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (989,NULL,'802','������ ���� � ������������� �����������',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (990,NULL,'8021','������ ���� �����������',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (991,NULL,'8022','������ ������������� ����������� � ��������',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (992,NULL,'803','����� �����������',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (993,NULL,'8030','����� �����������',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (994,NULL,'804','����������� �� ��������� � ����� ������������� ���',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (995,NULL,'8041','�������� �� ����������� �� ��������������� �� ����',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (996,NULL,'8042','����� �������� �� ��������� � ����� �������������',287,241,202,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (997,NULL,'851','������� ��������������',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (998,NULL,'8511','������� �� ������� ��������� �� �������� �����',400,300,200,150,150,0,170,170,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (999,NULL,'8512','������� �� ������� ��������� �� ������������� ����',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1000,NULL,'8513','������� �� ������� ��������� �� �������������� ���',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1001,NULL,'8514','����� ������� ��������������',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1002,NULL,'852','����������� ������� �������',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1003,NULL,'8520','����������� ������� �������',387,248,157,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1004,NULL,'853','�������� ��������',159,153,153,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1005,NULL,'8531','������� �� ��������� �� �������� ������ � ��������',159,153,153,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1006,NULL,'8532','������� �� ��������� �� �������� ������ ��� ������',159,153,153,150,150,150,150,150,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1007,NULL,'900','�������� � ��������� �� ��������, ���������� � ���',330,200,195,150,150,150,175,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1008,NULL,'9001','�������� � ��������� �� ��������� ����',330,200,195,150,150,150,175,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1009,NULL,'9002','�������� � ��������� �� ����� ��������',330,200,195,150,150,150,175,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1010,NULL,'9003','����������, �������������� � ������� ��������',330,200,195,150,150,150,175,160,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1011,NULL,'911','�������� �� �����������������, ����������� �� ����',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1012,NULL,'9111','�������� �� ����������������� � ����������� �� ���',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1013,NULL,'9112','�������� �� ������������� ����� � �����������',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1014,NULL,'912','�������� �� ���������� �����������',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1015,NULL,'9120','�������� �� ���������� �����������',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1016,NULL,'913','�������� �� ����������, ����������� � ����� ������',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1017,NULL,'9131','�������� �� ���������� �����������',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1018,NULL,'9132','�������� �� ����������� �����������',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1019,NULL,'9133','�������� �� ����� ����������� � ����������� ���, �',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1020,NULL,'921','������������, ��������������� � ������������ �� ��',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1021,NULL,'9211','������������ �� ����- � ����������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1022,NULL,'9212','��������������� �� ����- � ����������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1023,NULL,'9213','������������ �� �����',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1024,NULL,'922','�����- � ������������ �������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1025,NULL,'9220','�����- � ������������ �������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1026,NULL,'923','����������, ��������� � ������������� �������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1027,NULL,'9231','���������� � ��������� �������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1028,NULL,'9232','������������ �� ��������� ������, ��������� � ����',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1029,NULL,'9233','�������� �� ������� � ������������ �������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1030,NULL,'9234','����� ������������� ��������, ��������������� ����',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1031,NULL,'924','�������� �� ������������� �������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1032,NULL,'9240','�������� �� ������������� �������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1033,NULL,'925','�������� �� ����������, ������, ����� � �������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1034,NULL,'9251','�������� �� ���������� � ������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1035,NULL,'9252','�������� �� ����� � �������; �������� �� ���������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1036,NULL,'9253','���������� � ������������ �� ����������� �������,',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1037,NULL,'926','�������� � �������� �� ����������� ������� � �����',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1038,NULL,'9261','���������� � ������������ �� ������� ������ � ����',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1039,NULL,'9262','����� �������� � �������� �� ����������� ������� �',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1040,NULL,'927','����� ��������, �������� ��� ���������� �����',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1041,NULL,'9271','��������� � ������',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1042,NULL,'9272','����� ��������, �������� ��� ���������� �����, ���',275,190,155,150,150,150,165,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1043,NULL,'930','����� ������ �� �����������',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1044,NULL,'9301','����� � ��������� ������� �� ��������� � ������ ��',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1045,NULL,'9302','��������-���������� � ���������� ������',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1046,NULL,'9303','��������, �������� � ���������� ��� ��������',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1047,NULL,'9304','�������� �� ���������� �� ����������� ���������',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1048,NULL,'9305','����� ������ �� �����������, ��������������� �����',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1049,NULL,'950','�������� �� ����������� ���� ������������ �� �����',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1050,NULL,'9500','�������� �� ����������� ���� ������������ �� �����',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1051,NULL,'960','��������������� �������� �� ����������� ���� �����',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1052,NULL,'9600','��������������� �������� �� ����������� ���� �����',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1053,NULL,'970','��������������� �������� �� ����������� ���� �����',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1054,NULL,'9700','��������������� �������� �� ����������� ���� �����',215,175,155,150,150,150,175,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1055,NULL,'990','��������������� ����������� � ������',355,250,185,150,150,150,170,155,150);
INSERT INTO `natc_clasifikator_deinosti` VALUES (1056,NULL,'9900','��������������� ����������� � ������',355,250,185,150,150,150,170,155,150);


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

INSERT INTO `natc_clasifikator_prof` VALUES (1,NULL,'���������',7249);
INSERT INTO `natc_clasifikator_prof` VALUES (2,NULL,'������������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3,NULL,'��������������',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (4,NULL,'�����������',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (5,NULL,'������������',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (6,NULL,'����������',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (7,NULL,'�����������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (8,NULL,'����������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (9,NULL,'����������� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (10,NULL,'����������� / ����������� ���������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (11,NULL,'����� �� ������, �������, ����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (12,NULL,'�������������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (13,NULL,'�����, �����������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (14,NULL,'�����, ��������� �����',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (15,NULL,'�����, �������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (16,NULL,'�����, ������� �����',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (17,NULL,'�����, �������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (18,NULL,'�����, ������� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (19,NULL,'������������ / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (20,NULL,'����������',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (21,NULL,'���������� / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (22,NULL,'�������������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (23,NULL,'�����������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (24,NULL,'�������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (25,NULL,'������� / ������ ��������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (26,NULL,'�������, ���������� ������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (27,NULL,'����������',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (28,NULL,'�������',2421);
INSERT INTO `natc_clasifikator_prof` VALUES (29,NULL,'��������������� �������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (30,NULL,'��������������� �������� / ���',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (31,NULL,'������������� / ���������� ������� (����)',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (32,NULL,'������������� / �����',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (33,NULL,'�������������, ���� �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (34,NULL,'�������������, �������� �� ��������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (35,NULL,'�������������, ����������  �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (36,NULL,'�����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (37,NULL,'�������������, ������',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (38,NULL,'�����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (39,NULL,'��������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (40,NULL,'������������ / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (41,NULL,'�������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (42,NULL,'������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (43,NULL,'������������� / ����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (44,NULL,'��������',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (45,NULL,'������������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (46,NULL,'���������� / ���������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (47,NULL,'���������� ��������',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (48,NULL,'���������� �� ����������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (49,NULL,'����������, ������� �� ������ �� �������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (50,NULL,'����������, ��������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (51,NULL,'����������-������������, ������ / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (52,NULL,'�������� �������, ���������������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (54,NULL,'��������, ����������� �� �����',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (55,NULL,'��������, ���������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (56,NULL,'��������, ���������� ���� �����',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (57,NULL,'��������, ���������� ����� (�����������)',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (58,NULL,'��������, ���������� �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (59,NULL,'��������, ������������ �������',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (60,NULL,'��������, ��������� �� ������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (61,NULL,'��������, ������� / ���� �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (62,NULL,'��������, ������, �����',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (63,NULL,'��������, ������� � ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (65,NULL,'������������, �����',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (66,NULL,'��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (67,NULL,'��������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (68,NULL,'������-������� ���������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (69,NULL,'���������',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (70,NULL,'���������, �������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (71,NULL,'���������, �������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (72,NULL,'���������, �������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (73,NULL,'���������, ���������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (74,NULL,'���������, ����������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (75,NULL,'���������, ��������� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (78,NULL,'���������, ���������� ����������',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (79,NULL,'���������, ����������� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (80,NULL,'���������, ������������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (83,NULL,'���������, ������������� ������ / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (84,NULL,'���������, ���������',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (85,NULL,'���������, ���������',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (86,NULL,'���������, ����� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (87,NULL,'���������, �������������� ����������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (88,NULL,'���������, ������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (89,NULL,'���������, ����� ������ / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (90,NULL,'���������, ������� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (91,NULL,'���������, ������� ���������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (92,NULL,'���������, ������������� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (93,NULL,'���������, ������ / ������� �������',8153);
INSERT INTO `natc_clasifikator_prof` VALUES (94,NULL,'���������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (95,NULL,'������� / ��������',3228);
INSERT INTO `natc_clasifikator_prof` VALUES (96,NULL,'�������, ��������� / ������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (97,NULL,'�������� / ������� � �������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (98,NULL,'�������� / ��������� ������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (99,NULL,'��������, �������� �����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (100,NULL,'�������, �������',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (101,NULL,'���������� / ������������',7124);
INSERT INTO `natc_clasifikator_prof` VALUES (102,NULL,'����������, ������� ����� � ����������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (104,NULL,'���������� / ������������',7124);
INSERT INTO `natc_clasifikator_prof` VALUES (105,NULL,'������, ��������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (106,NULL,'������, ����������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (107,NULL,'������, �����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (108,NULL,'������, ����������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (109,NULL,'������, ������ � ����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (110,NULL,'���������� ��������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (111,NULL,'��������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (112,NULL,'�������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (113,NULL,'��������',2431);
INSERT INTO `natc_clasifikator_prof` VALUES (114,NULL,'�����������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (115,NULL,'��������',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (116,NULL,'��������, ������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (117,NULL,'��������, ���������� ������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (118,NULL,'��������-��������',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (119,NULL,'��������������������, �������',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (120,NULL,'��������������������, ������-����������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (121,NULL,'�������� / ����� �������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (122,NULL,'��������-��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (123,NULL,'��������-�������� �� ������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (124,NULL,'��������-��������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (125,NULL,'��������-����������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (126,NULL,'������������ / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (127,NULL,'��������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (128,NULL,'��������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (129,NULL,'��������, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (130,NULL,'����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (134,NULL,'���������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (135,NULL,'������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (136,NULL,'�������, �������',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (137,NULL,'��������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (139,NULL,'�����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (140,NULL,'�����������, �����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (141,NULL,'�����������, ������� �� ���������� ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (142,NULL,'�����������, ����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (143,NULL,'�����������, �����',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (144,NULL,'�����������, �������������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (145,NULL,'�����������, �������������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (146,NULL,'���������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (147,NULL,'��������� �� ������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (148,NULL,'���������-��������, ��������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (149,NULL,'������� �������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (150,NULL,'������� ��������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (151,NULL,'������� ���������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (152,NULL,'��������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (153,NULL,'������������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (154,NULL,'���������-���������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (155,NULL,'����������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (156,NULL,'������-���������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (157,NULL,'��������� �� ������, ������ � ������ �� ������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (158,NULL,'������ �������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (159,NULL,'�������� / ����������������',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (160,NULL,'������',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (161,NULL,'��������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (162,NULL,'��������� / ���������',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (163,NULL,'�����, ������� �����',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (164,NULL,'�����-�������� �� ���� / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (165,NULL,'��������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (166,NULL,'����� / ���������������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (167,NULL,'��������� / ������������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (168,NULL,'����������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (169,NULL,'�����������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (170,NULL,'����������� / �������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (171,NULL,'����������� / ��������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (172,NULL,'�����������-�����������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (173,NULL,'���������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (174,NULL,'�������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (175,NULL,'�������, ������ �� ��������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (176,NULL,'��������������',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (177,NULL,'����������',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (178,NULL,'�����������������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (179,NULL,'�������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (180,NULL,'����������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (181,NULL,'������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (182,NULL,'������, �����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (183,NULL,'������, ������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (184,NULL,'������, ������ ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (185,NULL,'������, ������� ����',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (186,NULL,'������, �������� ����������',3211);
INSERT INTO `natc_clasifikator_prof` VALUES (187,NULL,'���������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (188,NULL,'�����������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (189,NULL,'��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (190,NULL,'��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (191,NULL,'��������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (192,NULL,'������� / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (193,NULL,'�������� / ������������ �� ������������ ������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (194,NULL,'��������',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (195,NULL,'����������� / ������� ���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (196,NULL,'�����������, �������',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (197,NULL,'���������',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (198,NULL,'����������� / ����������-������� ������������',7417);
INSERT INTO `natc_clasifikator_prof` VALUES (199,NULL,'����������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (200,NULL,'������ ������������ / �������� ���������',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (201,NULL,'������ �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (202,NULL,'������ ���������',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (203,NULL,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (204,NULL,'�������, ������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (205,NULL,'�������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (206,NULL,'�������, �����',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (207,NULL,'�������, �������� ����������',3211);
INSERT INTO `natc_clasifikator_prof` VALUES (208,NULL,'�������, �����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (209,NULL,'�������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (210,NULL,'������� / ������������',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (211,NULL,'������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (213,NULL,'�������, �������-������� ����������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (214,NULL,'�������, ������� �������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (215,NULL,'�������, ������� ����������� / ������������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (216,NULL,'�������, ������� �����',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (217,NULL,'�������, � ������������� ������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (218,NULL,'�������, � ������ ���, ��������� ������������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (219,NULL,'�������, ����������� ��������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (220,NULL,'������ / ����� �� �����',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (221,NULL,'����������',7444);
INSERT INTO `natc_clasifikator_prof` VALUES (222,NULL,'������, �����������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (223,NULL,'������, �����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (224,NULL,'������, ������� �����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (225,NULL,'������, ������� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (226,NULL,'������, ����� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (227,NULL,'����������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (228,NULL,'�����',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (229,NULL,'�������',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (230,NULL,'�����',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (231,NULL,'��������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (232,NULL,'�����������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (233,NULL,'���������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (234,NULL,'��������� / ������� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (235,NULL,'������, ������� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (236,NULL,'������, ��������� ������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (237,NULL,'������',7427);
INSERT INTO `natc_clasifikator_prof` VALUES (238,NULL,'��������',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (239,NULL,'������������� / �� ���������',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (240,NULL,'��������� / ������ ������ �� �������',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (242,NULL,'�����������������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (243,NULL,'��������� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (244,NULL,'������� ������',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (245,NULL,'������ / ����������-������� ������������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (246,NULL,'��������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (247,NULL,'�������, ����� �� ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (248,NULL,'�������-�������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (250,NULL,'����� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (251,NULL,'�����, ������ / ������������ �� ����� ��������',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (252,NULL,'��������� / ����� �� ���������� ���������',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (254,NULL,'������ / ������� ���������',8313);
INSERT INTO `natc_clasifikator_prof` VALUES (255,NULL,'������ / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (256,NULL,'������������',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (257,NULL,'����������� �����',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (258,NULL,'����������� ����� (������)',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (259,NULL,'����������� �����, ������',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (260,NULL,'����������� �������',3227);
INSERT INTO `natc_clasifikator_prof` VALUES (261,NULL,'���������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (262,NULL,'������� / �����',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (263,NULL,'������� �� ������� ������� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (264,NULL,'�����-�������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (265,NULL,'��������������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (266,NULL,'�������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (267,NULL,'���������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (268,NULL,'������������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (269,NULL,'������������� �� �����������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (270,NULL,'��������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (271,NULL,'�������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (272,NULL,'�����, �������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (273,NULL,'�����, ������� ������� / ������������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (274,NULL,'�����, ������� / �� ���������',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (275,NULL,'�����, ����������',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (276,NULL,'�����, ������� ������� / ������ ����������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (277,NULL,'�����, ��� ���������',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (278,NULL,'�����, ��� ��������� �����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (279,NULL,'�����, ����������� ��������� �� 1,5 ����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (280,NULL,'�����, ����� �������',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (281,NULL,'�����, ������ �� ��������� �� ����',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (282,NULL,'�����, ��������',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (283,NULL,'�����, �������',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (284,NULL,'�����, ����������',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (285,NULL,'�����, �������� �������� � ������� ����������',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (286,NULL,'�����, ��������-������� ������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (288,NULL,'�����, ����� ������� (��������)',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (289,NULL,'�����, ��������',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (290,NULL,'�����, ��������� ������ / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (291,NULL,'�����, ��������� ������ / ������ ����������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (292,NULL,'�����, ��������� ������� �����',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (293,NULL,'�����, ��������������� ������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (294,NULL,'�����, �������������� ����������',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (295,NULL,'�����, �������������� ������ � �����������������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (296,NULL,'�����, ������� ��������� ��� 1,5 ����',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (297,NULL,'�����, �������������� �������� � ���������� ����',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (298,NULL,'�����, ��������',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (299,NULL,'�����, ���������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (300,NULL,'�����, ���������������� ���������� ������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (301,NULL,'�����, ������������� ������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (302,NULL,'����� ��������� / ����� � ���������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (303,NULL,'�������',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (304,NULL,'����������� / ������� ���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (305,NULL,'�������������',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (306,NULL,'�������������-��������, ������������ ���',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (307,NULL,'�����������������,  ������� / �����������������',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (308,NULL,'������ / ��������� ����� (�������)',2);
INSERT INTO `natc_clasifikator_prof` VALUES (309,NULL,'������� �������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (310,NULL,'��������, �����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (311,NULL,'������� �� �������� � �������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (312,NULL,'����� ������� / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (313,NULL,'������������ / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (314,NULL,'������������ �� ���������� ���������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (315,NULL,'����������, ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (316,NULL,'��������, ������� �������',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (317,NULL,'��������-��������� / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (318,NULL,'�����',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (327,NULL,'���������� - ������ � ��������� �����������',3314);
INSERT INTO `natc_clasifikator_prof` VALUES (330,NULL,'���������� � ��������� ����������� / �������',3322);
INSERT INTO `natc_clasifikator_prof` VALUES (332,NULL,'���������� ��� ������ ������������� �����������',3322);
INSERT INTO `natc_clasifikator_prof` VALUES (334,NULL,'�������������-�������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (335,NULL,'�������� �������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (336,NULL,'�������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (337,NULL,'��������������� / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (338,NULL,'������������ / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (339,NULL,'���������� / ������������ �� ������������ �������',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (340,NULL,'��������  / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (341,NULL,'������������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (342,NULL,'����������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (343,NULL,'������������ / ����� �� ������� ���������',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (344,NULL,'�������������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (345,NULL,'������������� �� �������, ������ � ������� ����',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (346,NULL,'�������������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (347,NULL,'��������� / ��������� ������������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (348,NULL,'��������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (349,NULL,'�����������, ����� ���� �� �������� ����������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (350,NULL,'�����������, ������� ����������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (351,NULL,'�����������, ��������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (352,NULL,'����� �������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (353,NULL,'�������� / ����������������',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (354,NULL,'��������� �������� / ���, ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (355,NULL,'��������� �������� / ��������� �� ���������� �����',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (356,NULL,'��������� ������ / �������� ������������� (����)',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (357,NULL,'��������� �������� / ������ �����',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (359,NULL,'��������� �������� / ����������� ������',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (360,NULL,'��������� �������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (361,NULL,'������������ / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (362,NULL,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (363,NULL,'�������, �������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (364,NULL,'�������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (365,NULL,'�������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (366,NULL,'���������, �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (367,NULL,'������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (368,NULL,'������, ������� / ���',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (369,NULL,'������, ����������������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (370,NULL,'������, ����� �������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (371,NULL,'������, ������ ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (372,NULL,'������, �����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (373,NULL,'������, ����������� � ������������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (374,NULL,'������, ����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (376,NULL,'������-������, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (377,NULL,'������������, ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (378,NULL,'�����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (379,NULL,'��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (380,NULL,'��������, ������� (���������)',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (381,NULL,'��������, ������ ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (382,NULL,'��������, ����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (383,NULL,'��������, �������� ���������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (384,NULL,'��������, ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (385,NULL,'���������� �������� / �������� ����������',7115);
INSERT INTO `natc_clasifikator_prof` VALUES (386,NULL,'���, ��������� �����',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (387,NULL,'������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (388,NULL,'��������� / ������������',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (389,NULL,'������ �������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (390,NULL,'������ ������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (391,NULL,'������ �������� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (392,NULL,'������ �������� / ������������ �����������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (393,NULL,'������ �������� / ����� �������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (396,NULL,'������ ������� ������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (397,NULL,'������ ����������� �����',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (398,NULL,'������ ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (399,NULL,'������ �������, ������������ ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (400,NULL,'������ �����',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (401,NULL,'������ �������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (403,NULL,'������ ������� / ��������� ��������� ������������',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (404,NULL,'������ ������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (405,NULL,'������ ������� / �������� �������������',2473);
INSERT INTO `natc_clasifikator_prof` VALUES (406,NULL,'������ ������� / �������� �������������',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (407,NULL,'������ �������, ������������� �����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (408,NULL,'������ ���������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (409,NULL,'������ ���������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (410,NULL,'������ ���������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (411,NULL,'������ �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (412,NULL,'������ ������� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (413,NULL,'������ ��������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (414,NULL,'������ ��������� �� �����',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (415,NULL,'������ �������� / �����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (416,NULL,'������ ������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (417,NULL,'������ ������ / ���',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (418,NULL,'������ ������, ��������-����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (420,NULL,'������ ����������� (���������)',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (421,NULL,'������ ����������� / ���, ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (423,NULL,'������ ����� / ������ �������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (424,NULL,'������ ��������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (425,NULL,'������ ������� / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (426,NULL,'������ ������� / ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (427,NULL,'������ ���������� ���������',2478);
INSERT INTO `natc_clasifikator_prof` VALUES (428,NULL,'������ ������ ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (429,NULL,'������ ��������, ������� � ��� / ����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (431,NULL,'������ ����� / �������� ���������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (433,NULL,'������ ��������� / ������������ �����������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (434,NULL,'������ ��������',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (437,NULL,'������ ��������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (439,NULL,'������ �������� / ����������� �����',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (440,NULL,'������ �������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (441,NULL,'������ �������� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (442,NULL,'������ �������� / ������� �����������',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (444,NULL,'������ ����������  / �������� �������������',3443);
INSERT INTO `natc_clasifikator_prof` VALUES (445,NULL,'������ ���������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (446,NULL,'������ ���������� / �������� �������������',3444);
INSERT INTO `natc_clasifikator_prof` VALUES (447,NULL,'������ ������������',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (448,NULL,'������ ������������ / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (449,NULL,'������ ������������ / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (450,NULL,'������ ������������ / ������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (451,NULL,'������ �������� / ����������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (452,NULL,'������ ������� ���������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (453,NULL,'������ ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (456,NULL,'������ �������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (461,NULL,'������ �����������',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (462,NULL,'������ ������������ / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (463,NULL,'������ ������������ / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (464,NULL,'������ ��������',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (465,NULL,'������ ���������� ������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (466,NULL,'������ �� ����� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (467,NULL,'������ �� ����� / ������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (468,NULL,'������, ������� �� ������ ���� ����',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (469,NULL,'������, ����� / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (470,NULL,'���������� / �����������-�������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (472,NULL,'��������, �����',7443);
INSERT INTO `natc_clasifikator_prof` VALUES (474,NULL,'������ �� ��������� �������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (475,NULL,'������ �� �������, �������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (476,NULL,'������ �� ����������� �������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (477,NULL,'������ �� ������� ����',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (478,NULL,'���������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (479,NULL,'��������� / ����� � ���������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (480,NULL,'��������� / �����������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (481,NULL,'���������, ������ � �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (482,NULL,'������ ����������',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (483,NULL,'������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (484,NULL,'������ �������',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (485,NULL,'������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (486,NULL,'������� / ���������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (487,NULL,'������� / ��������� ������������',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (488,NULL,'�������, ���������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (489,NULL,'�������, ����� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (490,NULL,'��������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (491,NULL,'�������� / ���������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (492,NULL,'�������� / ����',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (493,NULL,'���������� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (494,NULL,'��������� / ������� �������',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (495,NULL,'��������� �� ��������� ��������� / ������� �������',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (496,NULL,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (497,NULL,'����������, ������� �������� �������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (498,NULL,'�������, ��������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (499,NULL,'�������-�������',5143);
INSERT INTO `natc_clasifikator_prof` VALUES (500,NULL,'������, ���������� � ���������� �� ��������',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (501,NULL,'����������� �� ����� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (502,NULL,'�����������-�������, ����������������',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (503,NULL,'�������',7324);
INSERT INTO `natc_clasifikator_prof` VALUES (504,NULL,'��������, ������� �������� �������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (505,NULL,'�����',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (506,NULL,'�������-��������',5149);
INSERT INTO `natc_clasifikator_prof` VALUES (507,NULL,'������� ������� / �������� �������������',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (508,NULL,'������� ��������� / �������� �������������',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (509,NULL,'�������� / ��������� ������������',8261);
INSERT INTO `natc_clasifikator_prof` VALUES (510,NULL,'�������� / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (511,NULL,'���������� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (512,NULL,'�����������, ��������, ��������� ��������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (513,NULL,'�����������, ����������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (514,NULL,'�����������, ��������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (515,NULL,'�����������, ����������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (516,NULL,'����� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (517,NULL,'��������� / �����������- �������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (518,NULL,'���������, ������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (519,NULL,'���������-�������, ������� � �������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (520,NULL,'�����������',4143);
INSERT INTO `natc_clasifikator_prof` VALUES (521,NULL,'�����������, ��������������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (522,NULL,'��������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (523,NULL,'������������ �� �����',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (524,NULL,'����������� / ������������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (525,NULL,'���������-������������� �� �������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (526,NULL,'����������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (527,NULL,'�����������, �������� / ������� ������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (528,NULL,'�����������, ����������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (529,NULL,'���������, ������� � �������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (530,NULL,'���������� / ������������ �� �������',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (531,NULL,'����������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (532,NULL,'�������� / ������ ��������',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (533,NULL,'������ ��������',3321);
INSERT INTO `natc_clasifikator_prof` VALUES (534,NULL,'��������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (535,NULL,'������ �����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (536,NULL,'����������, ������� �������� �������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (537,NULL,'���������',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (538,NULL,'�������� - ��������',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (539,NULL,'��������, ��������� �������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (540,NULL,'��������, ������� �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (541,NULL,'��������, ������� � ���������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (542,NULL,'��������, �������������� �������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (543,NULL,'��������, ���������� �������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (544,NULL,'��������, ��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (545,NULL,'��������-��������',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (546,NULL,'��������-����������� �� �������� ������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (547,NULL,'�����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (548,NULL,'�������� / �������� ������������� (����)',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (549,NULL,'�������������� ������',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (550,NULL,'���������� �������-������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (551,NULL,'�������� / ������� \"�������\"',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (553,NULL,'�������� / ������ ������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (554,NULL,'�������� / ��������� �� ���������� �����',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (557,NULL,'�������� / �����������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (560,NULL,'�������� / �������������-������������ ������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (561,NULL,'�������� / ����� �� �������� ��������',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (562,NULL,'�������� / �������� �������������',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (563,NULL,'�������� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (565,NULL,'�������� / ������� ����',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (566,NULL,'�������� / ���������� ���������� ��������',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (567,NULL,'�������� / �������� ������-������������� ���������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (569,NULL,'�������� / ������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (570,NULL,'�������� / ������ �������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (571,NULL,'�������� / ������ ������������, ���������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (572,NULL,'�������� / ������ �������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (574,NULL,'�������� �� ������� � ������������ ���������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (575,NULL,'��������, ���',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (576,NULL,'��������, ������� ����������',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (577,NULL,'��������, ���������� ���������� ������',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (578,NULL,'��������, ��������������� �������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (579,NULL,'��������, ������������ / ���������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (580,NULL,'��������, ��������� / ���������� �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (581,NULL,'��������, ������������ ��������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (582,NULL,'��������, �������� �� �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (583,NULL,'��������, ������ ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (584,NULL,'��������, ������ �����������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (585,NULL,'��������, �������� ������ �� �������� �����',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (586,NULL,'��������, �������������� �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (587,NULL,'��������, ������ �� ������������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (590,NULL,'��������, ��������� �������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (591,NULL,'��������, ��������� �������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (592,NULL,'��������, ��������� �������',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (593,NULL,'��������, �������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (594,NULL,'��������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (595,NULL,'����������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (596,NULL,'�������� / ����������� ���������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (597,NULL,'�������� / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (598,NULL,'�������� / ������e� ���������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (599,NULL,'�������� / ��������o�, �����������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (600,NULL,'�������� / ��������������� (������� ����� - ���)',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (601,NULL,'�������� / �� ����',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (602,NULL,'�������� / �� ���������',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (603,NULL,'�������� / �����������o',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (605,NULL,'�����������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (606,NULL,'�����������, ��������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (607,NULL,'��������� / ������������ �� ���������� ��������',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (608,NULL,'��������� �� ������� / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (609,NULL,'����������  / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (610,NULL,'���������� / �����������-�������� ������������',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (611,NULL,'���������� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (612,NULL,'����������, ��������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (613,NULL,'�����',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (614,NULL,'�������������',2431);
INSERT INTO `natc_clasifikator_prof` VALUES (615,NULL,'������������, �������� �������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (616,NULL,'������� / �������������',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (617,NULL,'�������, �����������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (619,NULL,'�������, ����������� �� ������� ����',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (620,NULL,'�������, ������� ��������',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (621,NULL,'�������, �������� / ������������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (622,NULL,'�������, ����� / ������������',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (623,NULL,'�������, ��������� / ��������, ������������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (624,NULL,'�������, ������',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (625,NULL,'�������-������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (626,NULL,'������� �������',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (627,NULL,'������� �����������',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (628,NULL,'�������������',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (629,NULL,'��������� �� ���������� ���� �����',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (630,NULL,'������',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (631,NULL,'����, ����� / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (632,NULL,'����-��������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (633,NULL,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (634,NULL,'������� �� �������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (635,NULL,'��������� �� ���������� �����',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (637,NULL,'������ / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (638,NULL,'����������, ������� ����������� / ������������',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (639,NULL,'����������, �����',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (640,NULL,'����������, �������-��������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (641,NULL,'����������, ������ �� �������',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (642,NULL,'����������, ������ � ���������� �� �������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (643,NULL,'����������, ������ � ���������� �� ������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (644,NULL,'����������, ����������',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (645,NULL,'����������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (646,NULL,'����������-��������� / ������������',7122);
INSERT INTO `natc_clasifikator_prof` VALUES (647,NULL,'����������-��������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (648,NULL,'����������, ������ / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (649,NULL,'����������, ����� �� ����� / ������� ������ ������',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (650,NULL,'�����������',7425);
INSERT INTO `natc_clasifikator_prof` VALUES (651,NULL,'�������� ������� / �������� ���������',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (652,NULL,'�������� ������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (653,NULL,'�������� ��������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (655,NULL,'�������� �������� / ������������ �� ��������� (��)',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (657,NULL,'�������� ��������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (658,NULL,'�������� �������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (659,NULL,'��������',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (660,NULL,'������, ������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (661,NULL,'������, ��������������� ���������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (662,NULL,'�����������  / ������������ ������� (����)',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (663,NULL,'����������� / �����, ������������ �������',5116);
INSERT INTO `natc_clasifikator_prof` VALUES (664,NULL,'�����������, ���������� �������',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (665,NULL,'�����������, ����������� �� ����������������',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (667,NULL,'����������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (668,NULL,'��������������� �� ���������� ������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (669,NULL,'������� / ������ � ��������������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (670,NULL,'������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (671,NULL,'������� / ������� � �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (673,NULL,'������� / �����������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (674,NULL,'������� / ��������� ����',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (675,NULL,'������� / ������� �����',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (676,NULL,'������� �� ������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (677,NULL,'�������, ���',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (678,NULL,'�������, ����������� �� �����',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (679,NULL,'�������, ������� �����������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (681,NULL,'�������, ������������ �������� �����������',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (682,NULL,'�������, ��������������� ������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (683,NULL,'�������, ��������������',2229);
INSERT INTO `natc_clasifikator_prof` VALUES (684,NULL,'�������, ������� �����������',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (685,NULL,'�������, ������������� �������',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (686,NULL,'�������, ���������� � ���������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (687,NULL,'�������, ������������� ����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (688,NULL,'�������, �������������� �� ������������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (689,NULL,'�������, ��������-������ � ������� �������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (690,NULL,'�������, ������� ��������� �� ������������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (692,NULL,'�������, ������������ ��������������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (693,NULL,'�������, �������������� �������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (694,NULL,'�������, ����������� � ����� �� ������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (695,NULL,'�������, ���� ����������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (696,NULL,'�������, �������� �� ������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (697,NULL,'�������, �����',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (699,NULL,'�������, ����������, ��������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (700,NULL,'�������, �������� ��������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (701,NULL,'�������, �������� ����������� � �����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (702,NULL,'�������, ��������-������ � ������� ��������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (703,NULL,'�������, ����� � ������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (704,NULL,'�������, ���������� / ���������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (706,NULL,'�������, ���� � ������� �������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (707,NULL,'�������, ������� ���������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (708,NULL,'�������, ���������� �� ����������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (709,NULL,'�������, ���� � ������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (710,NULL,'�������, ������������ ����������',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (713,NULL,'����������� / ������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (715,NULL,'������������ / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (716,NULL,'������������ / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (717,NULL,'��. ��������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (718,NULL,'��. �������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (719,NULL,'������������������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (720,NULL,'����������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (721,NULL,'��������������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (722,NULL,'�������������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (723,NULL,'��������������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (724,NULL,'�������������',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (726,NULL,'������������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (727,NULL,'��������������  / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (728,NULL,'�������������������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (729,NULL,'����������������, ���������� ���������� �������',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (730,NULL,'��������������, ��� � �',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (731,NULL,'��������������, �������� ����� / ����������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (732,NULL,'��������������, ������ � ����������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (736,NULL,'��������������, ������������� ����������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (738,NULL,'���������� (�����������)',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (739,NULL,'�������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (742,NULL,'��������  / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (743,NULL,'���������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (744,NULL,'���������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (745,NULL,'��������� / �������-�����������, ���',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (746,NULL,'���������, �������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (747,NULL,'���������, �������� ����������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (748,NULL,'���������, ������ / ���, �������, �����',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (749,NULL,'���������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (750,NULL,'�����������',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (751,NULL,'�������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (752,NULL,'�������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (753,NULL,'������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (754,NULL,'�������� �����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (755,NULL,'������ ���������� / �����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (756,NULL,'������������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (757,NULL,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (758,NULL,'�������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (759,NULL,'���� �� ������� � �������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (760,NULL,'�������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (761,NULL,'����������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (762,NULL,'����������, ���� ������� �� ���� / �����',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (763,NULL,'����������, ������� ������� �� ����',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (764,NULL,'����������, �������� �������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (765,NULL,'�� ���������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (766,NULL,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (767,NULL,'������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (768,NULL,'����������� / ������������ �� ������������',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (769,NULL,'��������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (771,NULL,'��������, ������ � ������������� �����������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (772,NULL,'��������, ��������� ������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (773,NULL,'��������  ������ ���� �� �������� ��������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (775,NULL,'�������� ��������������� �����',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (776,NULL,'�������� ��������������� ������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (777,NULL,'�������� ��������������� (��������������)',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (778,NULL,'�������� ���� �� ������� ������',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (779,NULL,'�������� ������� ������������ / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (780,NULL,'�������� ��������-������ ������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (781,NULL,'�������� ����� ������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (782,NULL,'�������� ��������������� ����',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (783,NULL,'�������� ������ �����������',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (784,NULL,'�������� ���������� ������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (785,NULL,'�������� ������������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (786,NULL,'�������� �������� ������� ���������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (787,NULL,'�������� ������� ������',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (788,NULL,'�������� ����� ���������-��',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (789,NULL,'�������� ������ �� ������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (790,NULL,'�������� ������� / ����� ���������',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (791,NULL,'�������� ��������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (792,NULL,'�������� ������ \"��������� � �������\"',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (793,NULL,'�������� ���������� �������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (794,NULL,'�������� ���������� �����������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (795,NULL,'�������� ���������� ����������� � ������ �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (796,NULL,'�������� ���������� ������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (797,NULL,'�������� ������������ ����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (798,NULL,'�������� ������ �������, �����������',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (799,NULL,'���������� / ����������-������� ������������',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (804,NULL,'�������� �� ������ / ���������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (805,NULL,'��������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (807,NULL,'���������',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (808,NULL,'������� / ������������ �� ������������� ����',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (809,NULL,'��������-�������� / ����� �� ������� ���������',7116);
INSERT INTO `natc_clasifikator_prof` VALUES (810,NULL,'���������-��������� �������� / ���, ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (812,NULL,'���������-������ ��������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (813,NULL,'���������-������ ��������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (814,NULL,'���������-������ ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (816,NULL,'���������-����� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (817,NULL,'���������-�������� / ������� \"�������\"',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (820,NULL,'���������-��������, ���������� ���������� ������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (821,NULL,'���������-��������, �������������� �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (823,NULL,'���������-���� �� ������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (824,NULL,'���������-��������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (825,NULL,'���������-��������-�����������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (828,NULL,'���������-��������, ���',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (829,NULL,'���������-����������� / ������� ��������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (830,NULL,'���������-����������� / ������� ����',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (831,NULL,'���������-����������� / ������� �����������',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (832,NULL,'���������-�����������, �������� ���',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (834,NULL,'���������-�����������, �������� ���������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (835,NULL,'���������-�����������, ���������� �������',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (836,NULL,'���������-�����������, �������� �������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (837,NULL,'���������-��������',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (838,NULL,'���������-������ / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (841,NULL,'���������-���������, ���������',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (842,NULL,'�������� / �������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (843,NULL,'��������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (844,NULL,'�������� �� ����',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (845,NULL,'�������� / ��������� ������������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (846,NULL,'����������� �� ���� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (847,NULL,'�������� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (848,NULL,'�������� / ����������-������� ������������',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (851,NULL,'�������� �� ��������� ������ / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (854,NULL,'��������, ��������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (859,NULL,'��������-�������, ���������� ������ / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (860,NULL,'��������-�������, �������� ������ / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (861,NULL,'�������������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (862,NULL,'��������������� �����',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (863,NULL,'��������������� ������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (864,NULL,'���������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (865,NULL,'�������� �� �����������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (866,NULL,'��������, ������� ���������, ��������� ������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (867,NULL,'���������, ������� ����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (868,NULL,'��������� �� �������� ��������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (869,NULL,'��������',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (870,NULL,'�������������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (871,NULL,'�������������, �������� �� �������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (872,NULL,'�������������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (873,NULL,'�����������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (874,NULL,'������� ����������, �������',2229);
INSERT INTO `natc_clasifikator_prof` VALUES (875,NULL,'���������������������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (876,NULL,'��������� / ������������',9313);
INSERT INTO `natc_clasifikator_prof` VALUES (877,NULL,'�������, �������� ����������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (878,NULL,'�������, ���������� �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (879,NULL,'�������������, �������� ����������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (880,NULL,'����� / ������������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (883,NULL,'�����, ������� ����������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (884,NULL,'������-�����',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (885,NULL,'����������',2213);
INSERT INTO `natc_clasifikator_prof` VALUES (886,NULL,'������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (887,NULL,'���������',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (888,NULL,'������������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (889,NULL,'����������',3226);
INSERT INTO `natc_clasifikator_prof` VALUES (890,NULL,'�����������������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (891,NULL,'������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (892,NULL,'�������� � ���������� ���� / ����������',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (893,NULL,'�������� �� ����� � ������� / ��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (896,NULL,'����������, ��� � ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (898,NULL,'����������, ������ �� ������',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (899,NULL,'����������, ���� / ������������� ������������',8221);
INSERT INTO `natc_clasifikator_prof` VALUES (900,NULL,'����������, ������� ��������� �� ��������� ������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (901,NULL,'����������, ������� �������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (902,NULL,'����������, ������� / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (904,NULL,'����������, ������� �������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (906,NULL,'����������, ������� - ����������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (907,NULL,'����������, ���������� � ���������',8221);
INSERT INTO `natc_clasifikator_prof` VALUES (911,NULL,'����������, �������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (912,NULL,'����������, ����������� �� ���',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (913,NULL,'����������, �������, ��������� � ��������� �������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (914,NULL,'����������, ����� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (915,NULL,'����������, ����� � �������� �� ��� �� ��������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (916,NULL,'����������, ������������',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (917,NULL,'����������, �����������',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (918,NULL,'����������, ���������� ������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (919,NULL,'����������, ������ ������� / ����������',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (920,NULL,'����������, ������� � ������ ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (921,NULL,'�������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (922,NULL,'�������, �������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (923,NULL,'�������, �����',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (924,NULL,'�������, ���������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (925,NULL,'�������� �� ������ / ���',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (926,NULL,'��������',9313);
INSERT INTO `natc_clasifikator_prof` VALUES (927,NULL,'�����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (928,NULL,'���������-������',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (929,NULL,'��������, ������� � �������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (930,NULL,'�����������, �������� �������� / ������������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (931,NULL,'���������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (932,NULL,'���������, ������� �������� ��������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (933,NULL,'���������, ����������� ��������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (934,NULL,'���������� / �������������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (935,NULL,'���������� �� �������',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (936,NULL,'���������� �� ������ / ������� ������������',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (937,NULL,'���������� �� ��������� �������� / ������������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (938,NULL,'���������� ������',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (939,NULL,'����������, ������������ �������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (942,NULL,'����������, ������������ ����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (943,NULL,'����������, ������ / �������������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (946,NULL,'������������ ��������, ������������ ��������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (948,NULL,'���������� / ������������ �� ���������� ������',8158);
INSERT INTO `natc_clasifikator_prof` VALUES (949,NULL,'�������� / ����������',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (950,NULL,'�������� �� ���� / ��������� ������������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (952,NULL,'����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (953,NULL,'����������-��������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (954,NULL,'������ / �����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (955,NULL,'��������� / ������ � ����������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (956,NULL,'��������� �� ������, ������� � �����',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (957,NULL,'���������, ��������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (958,NULL,'���������, ����������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (959,NULL,'���������, ��������������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (960,NULL,'���������, ������ ��������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (961,NULL,'���������, ������������ � ��������� �����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (962,NULL,'���������, �������� / ������ ��������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (963,NULL,'���������, ��������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (964,NULL,'���������, ���� � ������� ��������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (965,NULL,'���������, ��������� �������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (966,NULL,'���������, ����',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (967,NULL,'����������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (968,NULL,'����������, �����',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (969,NULL,'����',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (970,NULL,'����������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (972,NULL,'����������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (973,NULL,'��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (974,NULL,'�����������',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (975,NULL,'����������',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (976,NULL,'��������� / ���������',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (977,NULL,'������� �������� / ����������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (978,NULL,'������� �������� / ��������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (979,NULL,'������� �������� / �������� � ������ ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (980,NULL,'������� �������� / �������������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (981,NULL,'������� �������� / ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (982,NULL,'������� �������� / ������������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (983,NULL,'������� �������� / ��������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (984,NULL,'������� �������� / ������������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (985,NULL,'������� �������� / ����������-������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (986,NULL,'������� �������� / ��������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (987,NULL,'������� �������� / ������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (988,NULL,'������� ��������, ��������� �� ���������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (989,NULL,'�������, ������������� �� ��������������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (990,NULL,'�������, �������������� � �����������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (991,NULL,'�������, ���������������, ���������, �����',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (992,NULL,'�������, ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (993,NULL,'�������, ������������ ��������� �����',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (994,NULL,'�������, ������������ ������ � �������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (995,NULL,'�������, ������������ ����������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (996,NULL,'�������, ���������������� ����������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (997,NULL,'�������, ���������� / ������ ��������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (998,NULL,'�������, ����������� � ����������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (999,NULL,'�������, ���������� ����������� � �������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1000,NULL,'�������, ������������������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1001,NULL,'�������, ���������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1002,NULL,'�������, �� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1003,NULL,'�������, ���������� �� �����',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1004,NULL,'�������, ������������� �������',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (1005,NULL,'�������, ������������ ������ � �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1006,NULL,'�������, �������������� ����������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1008,NULL,'�������, ���������� ����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1009,NULL,'�������, ���������� �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1010,NULL,'�������, �����������, �����-, ������������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1012,NULL,'�������, �����������, �������������� ����������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1013,NULL,'�������, �����������, ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1015,NULL,'�������, ������� ������ � ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1016,NULL,'�������, ������������� � ������������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1017,NULL,'�������, ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1018,NULL,'�������, ����������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1020,NULL,'�������, ��������',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1021,NULL,'�������, �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1022,NULL,'�������, �����',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1023,NULL,'�������, ����� ���������������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1024,NULL,'�������, ����� ������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1025,NULL,'�������, �����������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1026,NULL,'�������, �����������  �� ������� ���������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1027,NULL,'�������, ������� ���������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1028,NULL,'�������, ����������� �������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1029,NULL,'�������, ������ � ����',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1030,NULL,'�������, ��������� �� �����',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1031,NULL,'�������, ��������� �� ����',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1032,NULL,'�������, ����� � ���������� �����',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1033,NULL,'�������, ����������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1034,NULL,'�������, ���������� �� ���',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1036,NULL,'�������, ���������, ���������������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1037,NULL,'�������, �������������� �����������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1038,NULL,'�������, �������������� ������� � ������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1040,NULL,'�������, ���������� � ���������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1041,NULL,'�������, ����� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1042,NULL,'�������, �������� � ����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1044,NULL,'�������, ������� ������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1045,NULL,'�������, ��������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1046,NULL,'�������, �������� ���������� � ������������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1047,NULL,'�������, �������������� ����������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (1048,NULL,'�������, ���������������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1049,NULL,'�������, ��������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1050,NULL,'�������, ��������������� �������������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1051,NULL,'�������, �������� �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1052,NULL,'�������, �������� ������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1053,NULL,'�������, �������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1054,NULL,'�������, ����������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1055,NULL,'�������, ������������ ��� ����',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1056,NULL,'�������, ���������������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1057,NULL,'�������, ���������� �����������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1058,NULL,'�������, ������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1059,NULL,'�������, �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1060,NULL,'�������, �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1061,NULL,'�������, ����������� � ����������� ������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1062,NULL,'�������, �������������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1063,NULL,'�������, ��������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1064,NULL,'�������, ����������������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1065,NULL,'�������, ��������� �������',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1066,NULL,'�������-�����',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1067,NULL,'���������, ������� ��������� ������� / ���',9155);
INSERT INTO `natc_clasifikator_prof` VALUES (1068,NULL,'���������, ��������� ������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1071,NULL,'���������, ��������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1072,NULL,'���������-������, ��������������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1073,NULL,'��������� / ���',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (1074,NULL,'��������� / �����',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1075,NULL,'��������� / ������e� ���������',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (1076,NULL,'��������� / �������� �������������',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (1077,NULL,'��������� �� ��������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1078,NULL,'��������� �� ���',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1080,NULL,'��������� �� �����',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (1081,NULL,'��������� �� ����������, �������� ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1082,NULL,'��������� �� �����',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (1083,NULL,'��������� �� ������ ������ / �����������',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (1084,NULL,'���������, ������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1086,NULL,'���������, ���������� �������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (1087,NULL,'���������, �����������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (1088,NULL,'���������, ������� �����������',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1089,NULL,'���������, ������� �� ���������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1090,NULL,'���������, �������� (����������)',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1091,NULL,'���������, ����� ������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (1092,NULL,'���������, ����������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1093,NULL,'���������, ����������',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1095,NULL,'���������, ������ �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1096,NULL,'���������, ��������� ����',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1097,NULL,'���������, ������� ����������� �� ����������',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (1098,NULL,'���������, �������� ������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1099,NULL,'���������, �������������� ������ / ������',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (1100,NULL,'���������, ������������� �������������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1101,NULL,'���������, ������� ���� � ������������',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1102,NULL,'���������, ������� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1103,NULL,'���������, ���������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (1104,NULL,'���������, �������� �����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1105,NULL,'���������, ���������� �����������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1107,NULL,'���������, ���������� ������� � ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1108,NULL,'���������, ���������� ������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1109,NULL,'���������, ������� �����',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1110,NULL,'���������, ���������������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1111,NULL,'���������� / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (1112,NULL,'���������� / ������e� ���������',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (1113,NULL,'���������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1114,NULL,'���������� �� ������ �� ������� �������� ��������',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1115,NULL,'���������� �� ���������� �� ���������� ��� �� 10 �',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1116,NULL,'���������� �� ���������� �� ���������',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1117,NULL,'����������, �������� �������',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (1118,NULL,'����������, �������',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (1119,NULL,'���������������, ������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1121,NULL,'���������������, ������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1122,NULL,'���������� / ������ ��������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1123,NULL,'���������� - ����������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1124,NULL,'���������� / �����, ������������ �������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1125,NULL,'���������� / ������������ �������',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1126,NULL,'����������, ������� / �������� �������������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1127,NULL,'����������, �������� / ���������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1128,NULL,'����������, ��������� / �������� ���������',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1129,NULL,'����������, ��������� / �� ���������',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1130,NULL,'����������-����������� / �������� ���������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1131,NULL,'����������-����������� / �����������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1132,NULL,'�������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (1133,NULL,'�������, ������ ��������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (1134,NULL,'��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1135,NULL,'������� �������� / ����������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1136,NULL,'������� ������������ / ��������� ����',1);
INSERT INTO `natc_clasifikator_prof` VALUES (1137,NULL,'��������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1138,NULL,'���������',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1139,NULL,'���������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (1140,NULL,'���������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (1141,NULL,'�����������, �������� �����������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1143,NULL,'�����������, ������ ������� / ����������',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (1144,NULL,'�����������, ������� �� �����',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1145,NULL,'��������',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (1146,NULL,'���������',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (1147,NULL,'��������� - �������, ���������� �������',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (1148,NULL,'���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1149,NULL,'�����������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1150,NULL,'������� / ����� �� ������ ���������',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (1151,NULL,'������-��������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1152,NULL,'�����������, ���������� ������������',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (1153,NULL,'��������, �����',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (1154,NULL,'��������, �����',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (1155,NULL,'����������',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (1156,NULL,'���������',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1157,NULL,'�������������-������������, ��������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1158,NULL,'���������� / �����',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (1159,NULL,'����������, ��������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1160,NULL,'�������� / �� ���������',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (1161,NULL,'�������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (1162,NULL,'������� / �����',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1163,NULL,'������� / ���������� ���',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1164,NULL,'�������-����� / ���������� ���',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1165,NULL,'��������� �������������� / �������� ����������',7115);
INSERT INTO `natc_clasifikator_prof` VALUES (1166,NULL,'���������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1167,NULL,'���������-���������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1169,NULL,'�������������� �� ������, ������� ����� � �������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (1170,NULL,'����������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1171,NULL,'�������',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (1172,NULL,'������ (���������) / ���������� ������� (����)',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1173,NULL,'������ / ��������������',4219);
INSERT INTO `natc_clasifikator_prof` VALUES (1174,NULL,'������ / ������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1175,NULL,'������ / �������',4212);
INSERT INTO `natc_clasifikator_prof` VALUES (1176,NULL,'������ / ���������',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1177,NULL,'������ �� ���� / �����',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1178,NULL,'������ �� ���� / ����',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1179,NULL,'������ �� ���� �� ���������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1180,NULL,'������ �� ����, ��������-����������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1181,NULL,'������, ��������������',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (1182,NULL,'������, ������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (1183,NULL,'������, ������� �������',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (1184,NULL,'������, ������� ����',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (1185,NULL,'������, ���������� �� �������',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (1186,NULL,'������, ��������� (����, ������������)',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1187,NULL,'������, ����������� (�������) / ���������� �������',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1188,NULL,'������, ��������� �� ������',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (1189,NULL,'������, �������� �� ������',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (1190,NULL,'������, ������������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1191,NULL,'������, ��������-���������� ������������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1192,NULL,'������-�������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1193,NULL,'������-���������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1194,NULL,'������-�����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1195,NULL,'������-������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1196,NULL,'������-���������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1198,NULL,'�������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1199,NULL,'��������� ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1201,NULL,'������������ �����',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (1202,NULL,'������� / ������� ��������',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (1203,NULL,'������� ���������',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1204,NULL,'������� ��������',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1205,NULL,'�������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (1206,NULL,'�������������� / ������ ������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1207,NULL,'��������������, ����� �����������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1208,NULL,'��������������, ������������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1209,NULL,'��������������, �����',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1210,NULL,'�����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1211,NULL,'������������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (1212,NULL,'�����������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1213,NULL,'������������ �� �������-������� ������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1214,NULL,'������������, ������� ������ / ����������',8251);
INSERT INTO `natc_clasifikator_prof` VALUES (1215,NULL,'����������',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (1216,NULL,'�����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (1217,NULL,'����, ��������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1218,NULL,'����, ������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1219,NULL,'������� ��������� / ������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1220,NULL,'��������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1221,NULL,'���������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1222,NULL,'����������, �������� / ����������',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (1223,NULL,'����������, ����� �� ��� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1224,NULL,'����������-���������� (�������� ������)',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1225,NULL,'������������, ��������� / ���',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1226,NULL,'������������, ������������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1227,NULL,'������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (1228,NULL,'�����',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1229,NULL,'�����, �������',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1230,NULL,'�����, ���� ��������� � ������ � �����',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1231,NULL,'��������� / �����',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1232,NULL,'�����',7451);
INSERT INTO `natc_clasifikator_prof` VALUES (1234,NULL,'�������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (1235,NULL,'��������',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (1236,NULL,'��������������� / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (1237,NULL,'�����',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (1238,NULL,'��������  / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (1240,NULL,'�������� / ��������, �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1241,NULL,'�������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (1242,NULL,'��������-����� / �������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1243,NULL,'���������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (1244,NULL,'���������, ��������� ������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (1245,NULL,'����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1246,NULL,'����������, ������, �����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1247,NULL,'���������, �������������� ���������� ������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (1248,NULL,'������������',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (1249,NULL,'����������, ������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (1250,NULL,'���������',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (1251,NULL,'�����������-�������� / ������ ������ �� �������',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (1252,NULL,'��������������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1253,NULL,'���������� ��������� / ���������� �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (1254,NULL,'������������ �� ������� �����, ��������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1255,NULL,'������������-�������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1256,NULL,'������������-�������� / ������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1257,NULL,'�������������, ����� (���)',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1258,NULL,'�������������, ���������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1259,NULL,'����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1260,NULL,'������������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1261,NULL,'������������ / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (1262,NULL,'��������� / ������ �����',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1263,NULL,'��������� / ������� ���������',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1264,NULL,'��������� / �� ���������',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1265,NULL,'��������� / ���������� ������������ ���������',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1266,NULL,'��������� / ��������',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1267,NULL,'�������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (1268,NULL,'����������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (1269,NULL,'�����������-�����������, ������� �������',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (1270,NULL,'�����������-�����������, ��������� �� ���������',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (1272,NULL,'�������������� ����� / �������������� ���',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (1273,NULL,'����������� �������, �������� ����������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1274,NULL,'����������� �� ������� ����� � �������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1275,NULL,'�����������, �������, ����������� � ����������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1276,NULL,'�����������, ��������� �������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1277,NULL,'�����������, �����',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1278,NULL,'�����������, ������� �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1279,NULL,'�����������, ��������� �����������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (1280,NULL,'�����������, ������� � ������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1281,NULL,'�����������, �������������� ������� � ������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1282,NULL,'�����������, ���������� �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1283,NULL,'������ / �������� ������������� (����)',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1284,NULL,'���������� - �����, ������� �����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1285,NULL,'����������, ������ � �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1286,NULL,'����������, �������������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1287,NULL,'����������, ����������� �� �������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1288,NULL,'����������, ��������������� ������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (1289,NULL,'����������, ���������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (1290,NULL,'����������, ���������� �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1292,NULL,'����������, ��������� �� ������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1293,NULL,'����������, �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1294,NULL,'����������, �������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1295,NULL,'����������, ������, �����',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (1296,NULL,'����������, ������� �������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1297,NULL,'����������, �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (1298,NULL,'����������, ��������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1299,NULL,'����������, ���������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (1300,NULL,'����������, ������� � ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1301,NULL,'����������, �������',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (1302,NULL,'����������-����������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (1303,NULL,'���������� ��������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1304,NULL,'��������� ����������, �������� ����� � ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1305,NULL,'���������� / ������� ���������',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1306,NULL,'���������� / ��������� �� �� (���, ����)',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (1307,NULL,'���������� / �����',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1308,NULL,'���������� � ���',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1309,NULL,'���������� �� ���������  / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (1310,NULL,'���������� �� �����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1311,NULL,'���������� �� ���������� / �� ���������',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1312,NULL,'���������� �� ��������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1315,NULL,'����������, ��������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1316,NULL,'����������, ���������� �� �����������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1317,NULL,'����������, ��������',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (1318,NULL,'����������, �������� ���������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1319,NULL,'����������, �������, ����� �������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (1320,NULL,'����������, ��������� �� �����',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (1321,NULL,'����������, �������� / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (1322,NULL,'����������, �������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (1324,NULL,'����������, ������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (1325,NULL,'����������, ��������� �� ���������',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (1326,NULL,'����������, ���������� �������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1327,NULL,'����������, ������� �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1328,NULL,'���������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1329,NULL,'������������ �������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (1330,NULL,'������������ / ������������ �� ������ ����������',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (1331,NULL,'������������ / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1333,NULL,'������������ �� ������ / ������������ �� ������',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (1334,NULL,'������������, �������� ����������� ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1335,NULL,'������������, ������ �������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (1336,NULL,'������������, ������ � �����',7452);
INSERT INTO `natc_clasifikator_prof` VALUES (1337,NULL,'������������, ����� �� ������ ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1338,NULL,'�����������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (1339,NULL,'����������� ������, ������ � ������� ����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1340,NULL,'��������������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1341,NULL,'����������� / ������������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (1342,NULL,'����������� / ������������ �� ������� �����������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (1343,NULL,'����������� / ������������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (1344,NULL,'����������� / ��������� � ����� (���)',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (1345,NULL,'�����������, ������ � ��������������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1346,NULL,'�����������, ���������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (1347,NULL,'�����������, �������������� �����',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1348,NULL,'�����������, �������� ��������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1349,NULL,'�����������, ������������ ��������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1350,NULL,'�����������, �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1351,NULL,'�����������, �����������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1352,NULL,'���������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1353,NULL,'������, ������� ���������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (1354,NULL,'������� �����',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (1355,NULL,'������� ������ ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1356,NULL,'������� ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1357,NULL,'������� ������� / ����� ���������',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1359,NULL,'������� ����������',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1360,NULL,'������� �������������',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1361,NULL,'������� ����������, ������ ����������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1362,NULL,'������� �����������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (1363,NULL,'������� �������� / ����� ���������',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1364,NULL,'������� �������',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1365,NULL,'������� ��������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1366,NULL,'������� �������',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1367,NULL,'������� �����',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (1368,NULL,'������� �������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1369,NULL,'������� ����������������',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1370,NULL,'������� ����������������-���������������',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1371,NULL,'������� ���������� �� ������ / �������������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1372,NULL,'������� ���������, ������������� �����������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1373,NULL,'������� ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1374,NULL,'��������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1375,NULL,'�������� / ��������, �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1377,NULL,'��������, ��������� ������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (1378,NULL,'��������-������� / ��������, �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1379,NULL,'�����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1380,NULL,'������������ / �����, ���������, ���',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1381,NULL,'������������-��������, ����������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (1382,NULL,'���������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (1383,NULL,'��������� / ����������������',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (1384,NULL,'��������� / �������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1385,NULL,'���������, ������� �������������� �����������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1386,NULL,'����������� / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1387,NULL,'������ / �������������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (1388,NULL,'�������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (1389,NULL,'���������-���������, �������� (������)',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (1390,NULL,'�������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1391,NULL,'�������, ������ ����',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1392,NULL,'��������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1393,NULL,'������ / ����� �� ������� ���������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1394,NULL,'�����������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (1395,NULL,'����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1396,NULL,'������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1397,NULL,'������, ������������� ��������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1398,NULL,'������, ����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1399,NULL,'������, ������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1400,NULL,'������, ������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1401,NULL,'������, �����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1402,NULL,'����� / ������� ������������',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (1403,NULL,'����� �� ���������� ��������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1404,NULL,'�����, �������� �� �������� / ������� ������������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (1405,NULL,'�����, ����������',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (1406,NULL,'�����, �������� �� �������� / ������� ������������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (1407,NULL,'�����, ������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1408,NULL,'�����-����� �� ������ / ���������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (1409,NULL,'������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1411,NULL,'����������������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1412,NULL,'������',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (1413,NULL,'����',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (1414,NULL,'�������� / ������ ��������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (1415,NULL,'�������� / ������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (1416,NULL,'��������, ����������',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (1417,NULL,'��������, ���������',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (1419,NULL,'���������-��������� �� ���, ����������',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (1420,NULL,'�������, ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (1421,NULL,'�����',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1422,NULL,'����� / ���',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1423,NULL,'����� �����������',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (1424,NULL,'����� �������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1425,NULL,'�����, �������� ���������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1426,NULL,'�����, �������� �����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1427,NULL,'�����, ���������� ������������ � �����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1428,NULL,'�����, ���������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1429,NULL,'�����, �������������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1430,NULL,'�����, ���� �� ����, �����',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1431,NULL,'�����������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1432,NULL,'������ / ����� �������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1433,NULL,'����� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1434,NULL,'����� �� �����, �����, ��������',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (1436,NULL,'����� �� ������� (�������, �����������)',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (1438,NULL,'������������ / ������������ �� ��������� ��������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1439,NULL,'��������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1440,NULL,'�������������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1441,NULL,'����������������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1442,NULL,'����������������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1443,NULL,'��������',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (1444,NULL,'�������, ����������',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (1445,NULL,'������������',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (1446,NULL,'�����������',2214);
INSERT INTO `natc_clasifikator_prof` VALUES (1447,NULL,'�����-������ ������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1448,NULL,'�����-�������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1449,NULL,'�����-�������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1450,NULL,'�����-�����',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1451,NULL,'�����-������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1452,NULL,'������� ���� ����',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (1453,NULL,'�������, ������������ ������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1454,NULL,'�������, ����������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1455,NULL,'����',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1456,NULL,'����, ����� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1457,NULL,'����, ���������� ������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1460,NULL,'����-��������� �� ���������� ������������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1461,NULL,'���������� / ��������� �� ���������� �����',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (1462,NULL,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1463,NULL,'��������� / ����������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1464,NULL,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1465,NULL,'����������� ���������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (1466,NULL,'����� ����������',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (1467,NULL,'�����',6154);
INSERT INTO `natc_clasifikator_prof` VALUES (1468,NULL,'������� � ����� �����������',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (1469,NULL,'������� � ��������� �����������',3333);
INSERT INTO `natc_clasifikator_prof` VALUES (1470,NULL,'������������� �� ������������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1471,NULL,'�����',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (1472,NULL,'����������� �������� / ����� �� ������� ���������',8314);
INSERT INTO `natc_clasifikator_prof` VALUES (1473,NULL,'����������� �������� / �� ���������',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (1474,NULL,'������ / ���������� ���',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1475,NULL,'�����������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1476,NULL,'������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (1477,NULL,'��������� / �����',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1478,NULL,'����� / ������������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (1479,NULL,'�����, ������ ������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1480,NULL,'������� ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1481,NULL,'������� ������-�������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1482,NULL,'������� �����, �����',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (1483,NULL,'������� �������, ������������ ������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1484,NULL,'������� ������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1485,NULL,'������� �����, ���� � ���������� �������',7412);
INSERT INTO `natc_clasifikator_prof` VALUES (1486,NULL,'������� ����������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (1489,NULL,'�������, ���� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (1491,NULL,'�������, ������� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (1493,NULL,'�������-������ / ����������-������� ������������',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1494,NULL,'�������-������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1496,NULL,'�������-������ / ����������-������� ������������',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1497,NULL,'�������-�������, ������������ ������ � �������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (1498,NULL,'�������-������� / ����������-������� ������������',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1499,NULL,'�������-������� / ����� �� ������� ���������',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (1500,NULL,'��������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1501,NULL,'�������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1502,NULL,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1503,NULL,'��������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (1504,NULL,'�������',5211);
INSERT INTO `natc_clasifikator_prof` VALUES (1505,NULL,'����������-����������',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (1506,NULL,'���������� (�������) /  ���������������� ��������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1507,NULL,'����������, ����� � ����',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1508,NULL,'����������, ��������� �� ���� / �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1509,NULL,'����������, ������������� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1510,NULL,'����������, ����� �� ������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (1512,NULL,'����������, ���������� �� ������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1514,NULL,'����������, ���������� ���� � ������� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1515,NULL,'����������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (1516,NULL,'����������, �������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1517,NULL,'����������',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (1518,NULL,'�������� / ����������',5143);
INSERT INTO `natc_clasifikator_prof` VALUES (1519,NULL,'��������, ��������',3252);
INSERT INTO `natc_clasifikator_prof` VALUES (1520,NULL,'����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1522,NULL,'���������',2121);
INSERT INTO `natc_clasifikator_prof` VALUES (1523,NULL,'���������, ������ ��������',2121);
INSERT INTO `natc_clasifikator_prof` VALUES (1524,NULL,'���������, ����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1526,NULL,'�����������-��������� / ���������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (1528,NULL,'�������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (1529,NULL,'��������, �����������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1530,NULL,'��������, ������� ������ / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1531,NULL,'��������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1532,NULL,'������� ������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1533,NULL,'������� ������� / ���������-�������������� �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1534,NULL,'������� �������, �����������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1535,NULL,'������� �������, ����� � ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1536,NULL,'������� �������, ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1538,NULL,'�������� / ������� ������ (������� �����)',8218);
INSERT INTO `natc_clasifikator_prof` VALUES (1539,NULL,'�������� / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (1540,NULL,'�������� / ������������ �� ��������',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1541,NULL,'��������,  ��� ������ � �������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1543,NULL,'��������, ���������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1544,NULL,'��������, ���������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1545,NULL,'��������, �����������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1547,NULL,'��������, ������� ��� ������������� ������',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1548,NULL,'��������, ������� �� �������� ����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1549,NULL,'��������, �����',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1552,NULL,'��������, ������ ������ / �����������������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1553,NULL,'��������, ��������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1554,NULL,'��������, �����',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1555,NULL,'��������, ��������� / ������������ �� ������',8157);
INSERT INTO `natc_clasifikator_prof` VALUES (1556,NULL,'��������, ������ �����',8338);
INSERT INTO `natc_clasifikator_prof` VALUES (1559,NULL,'��������, �������� �� �������� / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (1561,NULL,'��������, ������� ������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1562,NULL,'��������, �������� �� ������ ��� ���������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1563,NULL,'��������, ���������� �� ��������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1564,NULL,'��������, �������������� ������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1565,NULL,'��������, �������������-������������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1566,NULL,'��������, ����',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1568,NULL,'��������, ��������� / �� ���������',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (1569,NULL,'��������, ������� � �������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1572,NULL,'��������, ������ ������',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1575,NULL,'��������, ��������� �� ������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1576,NULL,'��������, ��������� ������ / �����������������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1577,NULL,'��������, ������-��������� ����� / ������������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1579,NULL,'��������, �������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (1580,NULL,'��������, �������� ��������� (���) / ���������',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (1581,NULL,'��������, �������-����������� ����������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1582,NULL,'��������, ����������� ������  / �����������������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1583,NULL,'��������, �������� � ������� �������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1588,NULL,'��������, ������� � ��������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1589,NULL,'��������, ��������������� ������ (������� � ��.)',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1590,NULL,'��������, ������������ ������ �� ������',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1599,NULL,'��������, ���-����',8338);
INSERT INTO `natc_clasifikator_prof` VALUES (1601,NULL,'��������, ����������� ������ �� �������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1602,NULL,'��������, ������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1603,NULL,'��������, ������� ������ / ��������',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (1605,NULL,'��������, �����-�������� ������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (1606,NULL,'��������, �����������-������������ ������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1611,NULL,'��������, ����',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1612,NULL,'�����������',4112);
INSERT INTO `natc_clasifikator_prof` VALUES (1613,NULL,'�����������',4112);
INSERT INTO `natc_clasifikator_prof` VALUES (1614,NULL,'��������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1615,NULL,'��������, ������������������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1616,NULL,'���������� ������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1617,NULL,'���������� ������ / ������ ��������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1618,NULL,'���������� ������, ������������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1619,NULL,'���������� ������, ��������������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1620,NULL,'���������� ������, ������������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1621,NULL,'���������� ������, ��������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1622,NULL,'���������� ������, ��������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1623,NULL,'���������� ��������',3252);
INSERT INTO `natc_clasifikator_prof` VALUES (1624,NULL,'���������� ����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1625,NULL,'���������� ��������',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (1626,NULL,'���������� ��������� / ������������� ������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (1628,NULL,'�������� / ����������� �� ������� ���������',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (1629,NULL,'�������� / ����������-������� ������������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (1632,NULL,'��������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1633,NULL,'��������, ������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1634,NULL,'��������, ������� ������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1635,NULL,'��������, ������������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1636,NULL,'��������, ��������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1637,NULL,'��������, ����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1638,NULL,'��������, �������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1640,NULL,'������������ / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (1641,NULL,'�����������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (1642,NULL,'����� - ����, ���������� ���� / ���������',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1643,NULL,'�����, ����� / ��������� ����������',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1644,NULL,'����������',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (1645,NULL,'����������, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (1646,NULL,'����������-����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (1647,NULL,'�������� / ����������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1648,NULL,'�������� �� ��������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1649,NULL,'��������, ������� ����������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1650,NULL,'��������, �������� � ���������� �������� (��)',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1651,NULL,'��������, ���������� ����� ����� / �����������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1652,NULL,'��������, �����',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (1653,NULL,'��������, ������ �������� � ������� / �����������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1654,NULL,'��������, ��������� �������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1655,NULL,'��������, ����� � ��������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1656,NULL,'��������, �������� ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1657,NULL,'�����������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (1658,NULL,'�������  / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1659,NULL,'������� / ���',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (1660,NULL,'�������, �����������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1661,NULL,'�������, ���������� �� �����-����������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1662,NULL,'�������, �������� ����������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1663,NULL,'�������, ���������� ������������ �� ����������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1664,NULL,'�������-�������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1665,NULL,'������������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1666,NULL,'������������, ������ � ����������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1667,NULL,'����������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1668,NULL,'�����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1669,NULL,'����� �������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1670,NULL,'����� ��������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1671,NULL,'����� ��������',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (1672,NULL,'���������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (1673,NULL,'���������� �� ���������� �����',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (1674,NULL,'��������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1675,NULL,'��������-�����������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1676,NULL,'������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1677,NULL,'��������',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1678,NULL,'���������� ���������',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1679,NULL,'���������� ���������',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1680,NULL,'����������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (1681,NULL,'����, �������',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1682,NULL,'����, ������� ������� / �������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1683,NULL,'����, ������� �������� �������� / ����������',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1684,NULL,'����, ��������',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1685,NULL,'����, ������ � ������� / ���������� �������',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (1686,NULL,'����, ����� � �������� �����',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1687,NULL,'������ ������� / ����������� �����, �������������',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (1688,NULL,'������ ������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1689,NULL,'������ ��������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1690,NULL,'������ ��������',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (1691,NULL,'������ ������������ / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1692,NULL,'������ �����',2422);
INSERT INTO `natc_clasifikator_prof` VALUES (1693,NULL,'������ ������������ / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1694,NULL,'������, ����������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1695,NULL,'�������������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1696,NULL,'��������, ��������� � ��������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1697,NULL,'��������, ������ �� ������ / ������������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1698,NULL,'��������, ������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1699,NULL,'��������, ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (1700,NULL,'��������, ���� ������� �� �����',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1701,NULL,'��������, ������� � ���������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1703,NULL,'��������-�����������, ������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1704,NULL,'��������-�����������, �������, �������, ����������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1705,NULL,'�������� / �����������-�������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (1706,NULL,'�������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1707,NULL,'��������, ������� ������ �� ���������',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1708,NULL,'����������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1709,NULL,'�����',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1710,NULL,'��������',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1711,NULL,'���������, ������ / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (1712,NULL,'��������� / ���',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1713,NULL,'���������, ���',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1714,NULL,'���������, ������ ������������ �����',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1715,NULL,'���������, ������ ����������� �������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1717,NULL,'���������, �������������� ������������� ����������',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1718,NULL,'���������, ������� ������������� �������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1719,NULL,'���������, ��������� ������� / �������������',7233);
INSERT INTO `natc_clasifikator_prof` VALUES (1720,NULL,'���������, ��������� ���������� � �������',8281);
INSERT INTO `natc_clasifikator_prof` VALUES (1722,NULL,'���������, ��� ����',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1723,NULL,'���������, ���������������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1724,NULL,'���������, ��������������� - �������������� ������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1725,NULL,'���������, ��������������� ������ / �������������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1728,NULL,'���������, ��������� � ���������� ������ � �����',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1729,NULL,'���������, ������������ ������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1730,NULL,'������� / �����������������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1731,NULL,'������� �� ��� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1732,NULL,'������� �� ����, ������� �������� ��������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1733,NULL,'�������, ���������� � �����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1734,NULL,'�������, ���������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1735,NULL,'�������, ������ �����',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1736,NULL,'�������, �������� ������� ��������� / ���',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1737,NULL,'�������, ������������ ������ � �������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (1738,NULL,'�������, ������������ ����� � �������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (1739,NULL,'�������, ���������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1740,NULL,'�������, ��������� ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1741,NULL,'�������, ������� ��������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1742,NULL,'�������, �����������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1743,NULL,'�������, ������� ���������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1744,NULL,'�������, ������� ������� ����������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1747,NULL,'�������, ������ � ���������� (�� \"������\")',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1748,NULL,'�������, ����� ������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1749,NULL,'�������, ��������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1750,NULL,'�������, ���������� ������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1751,NULL,'�������, �������� ������ / �� ���������',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (1753,NULL,'�������, ���������� �� �����-�������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1755,NULL,'�������, ���������� �� ������������ �����',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1756,NULL,'�������, ���������� �� ������ ������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1758,NULL,'�������, ���������� �� ��������� ��������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1761,NULL,'�������, ������������ �� �����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (1762,NULL,'�������, ��������������� ������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1763,NULL,'�������, ������� ��������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1764,NULL,'�������, ������ � ���������� �� ��� � �',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1765,NULL,'�������, ������� ��������� �����',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1766,NULL,'�������, ��������������� ������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1767,NULL,'�������, ����� �����������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1768,NULL,'�������, ������������ / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1769,NULL,'�������, ��������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1770,NULL,'�������, �������� ���������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1771,NULL,'�������-����������, ������� �����������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1773,NULL,'�������-������������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1775,NULL,'��������, ��������� �������',7233);
INSERT INTO `natc_clasifikator_prof` VALUES (1776,NULL,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1777,NULL,'�����',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1778,NULL,'����� / ������ ������ ���� (�������)',2);
INSERT INTO `natc_clasifikator_prof` VALUES (1779,NULL,'�����, ������� �������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1780,NULL,'�����, ������� �������',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1781,NULL,'��������',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (1782,NULL,'��������, ������� ������ ������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1783,NULL,'��������, ������',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1784,NULL,'��������, �����',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1785,NULL,'��������, ������� ����� � ����������� / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (1786,NULL,'�������������',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1787,NULL,'�������������, �������� ��������',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1788,NULL,'��������� ��������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1789,NULL,'��������� ���������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1790,NULL,'��������� ���������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1791,NULL,'��������� �����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1793,NULL,'��������, �������������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1794,NULL,'��������, �����',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1795,NULL,'��������, ����� /� ������� � ��-����� �����������/',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (1796,NULL,'���������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1797,NULL,'���������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1798,NULL,'�����',7431);
INSERT INTO `natc_clasifikator_prof` VALUES (1799,NULL,'������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (1801,NULL,'������� ������������ / ��������� ����',2);
INSERT INTO `natc_clasifikator_prof` VALUES (1802,NULL,'�������� / ����������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1803,NULL,'�������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1804,NULL,'������� �� ������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (1805,NULL,'������� �� ����� �� �������� / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (1807,NULL,'������� �� ������ / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (1809,NULL,'������������ ��������� / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (1810,NULL,'��������� / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1811,NULL,'��������� �� ������ / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1812,NULL,'�������� �� ������� ���������',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1813,NULL,'��������� / ������������ ����������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1814,NULL,'�������� / ����� ���������',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (1815,NULL,'��������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (1816,NULL,'�������� / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1817,NULL,'�������� �� ������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1818,NULL,'��������, ������� � ����� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (1819,NULL,'������� �������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1820,NULL,'������� ������������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (1821,NULL,'�������� (����� �� ����) / ������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1822,NULL,'�������� / �����',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (1823,NULL,'�������� / ����������� ����',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (1825,NULL,'����������, ����������� � ��������������� ��������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1826,NULL,'����������, ��������� � �������������� ������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1827,NULL,'����������, ���������������� ������',7429);
INSERT INTO `natc_clasifikator_prof` VALUES (1828,NULL,'����������, ����������� ������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1829,NULL,'����������, �����',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1830,NULL,'����������, ����������� ������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1831,NULL,'����������, �����-�������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1832,NULL,'����������-��������, ������������ ������ � ���',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1833,NULL,'������ ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (1834,NULL,'������ ��������� I ������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1835,NULL,'������ ��������� II ������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1836,NULL,'������ ��������� III ������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1837,NULL,'�������� / �����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1839,NULL,'�������� / �������������-������������ ������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1840,NULL,'�������� / ����������-����������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1841,NULL,'�������� / ������������� ����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1842,NULL,'�������� / �������������� �������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (1843,NULL,'�������� / ������������ ����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1844,NULL,'�������� ���� / �� ���������',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1846,NULL,'�������� ���� (��- V-VII ���������)',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (1847,NULL,'�������� ������� �� ��������-������������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1848,NULL,'�������� �� ��������������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (1851,NULL,'�������� �� ������ �����',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (1852,NULL,'�������� ���� ���������� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (1853,NULL,'�������� ����� / ����������� �����',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1854,NULL,'�������� ����� / ���������������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1855,NULL,'�������� ����� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (1856,NULL,'�������� ����� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1858,NULL,'�������� ����� / �������� �������������',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (1859,NULL,'�������� ����� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (1860,NULL,'�������� ����� / �������� �� ���� ��� ������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1861,NULL,'�������� �����, ���',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1862,NULL,'�������� �����, ����',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1863,NULL,'�������� �����, ���, ����� � ������ �� �����',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1864,NULL,'�������� �����, �������������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1865,NULL,'�������� �����, ���������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1866,NULL,'�������� �����, ���������������-���������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1867,NULL,'�������� �����, ������ �������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1868,NULL,'�������� �����, ���������������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1869,NULL,'�������� �����, �������-�������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1871,NULL,'�������� �����, �������� �� �������� �����',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1872,NULL,'�������� �����, ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1873,NULL,'�������� �����, ������-�����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1874,NULL,'�������� �����, ��������� � ������������',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1876,NULL,'�������� �����, ������������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1878,NULL,'�������� �����, ������������� ������ � ����������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1879,NULL,'�������� �����, ������������� ����������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1881,NULL,'�������� �����, ��������� ������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1882,NULL,'�������� �����, ��������������-������������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1884,NULL,'�������� �����, ����� ������',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1885,NULL,'�������� �����, ��������� � ������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1888,NULL,'�������� �����, ������������ ��������������',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (1889,NULL,'�������� �����, �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1890,NULL,'�������� �����, ���������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1891,NULL,'�������� �����, ���� �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1894,NULL,'�������� �����, ������� �������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1895,NULL,'�������� �����, �������-������������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1896,NULL,'�������� �����, ��������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1898,NULL,'�������� �����, ������',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (1899,NULL,'�������� �����, ���������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1900,NULL,'�������� �����, �������������� ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1901,NULL,'�������� �����, ������������, ������������ � ����',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1903,NULL,'�������� �����, ������������ � ����',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1904,NULL,'�������� �����, ��������-�����',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1906,NULL,'�������� �����, ���������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1910,NULL,'�������� �����, ���������� � ��������� �������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1911,NULL,'�������� �����, ���������� �������� �� ��������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1912,NULL,'�������� �����, ������������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1914,NULL,'�������� �����, ���� � ������� ������� (���)',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1915,NULL,'�������� �����, ���� � �������� ��������',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1916,NULL,'�������� �����, ���������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1917,NULL,'�������� �����, ���������� �� ����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1919,NULL,'�������� �����, ���������� �� ��������� �������',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1920,NULL,'�������� �����, ���� � ��������������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1921,NULL,'�������� �������������� �����',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1922,NULL,'�������� ������ / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1923,NULL,'�������� ������ / �������� �������������',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (1924,NULL,'�������� ������ / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (1926,NULL,'�������� ����������, ������������ ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1927,NULL,'�������� ��� / ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1928,NULL,'��������, e�. ����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1931,NULL,'��������, ���� �� �������� �������',1155);
INSERT INTO `natc_clasifikator_prof` VALUES (1932,NULL,'��������, ��������������� �������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1933,NULL,'��������, ����� � ���������� / ������������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1934,NULL,'��������, ��������������� ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1937,NULL,'��������, ���������� / �������������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1938,NULL,'��������, �������',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (1939,NULL,'��������, �������� ����� / ���������������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1940,NULL,'��������, �������� ������� / ���������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1941,NULL,'��������, �������� / ������� ��������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1942,NULL,'��������, �������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1943,NULL,'��������, �������� �����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1944,NULL,'��������, ������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1945,NULL,'��������, ����� / ������������',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (1946,NULL,'��������, �����',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1947,NULL,'��������, ������',1223);
INSERT INTO `natc_clasifikator_prof` VALUES (1953,NULL,'�����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1954,NULL,'����������',999);
INSERT INTO `natc_clasifikator_prof` VALUES (1955,NULL,'������ �� �������',998);
INSERT INTO `natc_clasifikator_prof` VALUES (1958,NULL,'����������������� �������� / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (1959,NULL,'����������������� �������� / ������� ����������',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (1960,NULL,'����������������� �������� / ���������������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (1961,NULL,'����������������� ��������, ���������� �� ������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (1962,NULL,'����������������� ��������, ���������� �� �������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (1963,NULL,'����������������� ��������, ������� ������ ������',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (1965,NULL,'��������, ������� �����������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1966,NULL,'����������� �� �����, �������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1967,NULL,'�����������, �������� ����������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1968,NULL,'����� �� ����� / �����, ���������� ����',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (1969,NULL,'��������',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (1970,NULL,'��������',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (1971,NULL,'���������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1972,NULL,'�������� / ���������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (1973,NULL,'��������, ������������������ �������',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (1974,NULL,'�������������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1976,NULL,'�������� ���������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1977,NULL,'���������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1979,NULL,'��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1980,NULL,'�������� �� ������� / ������ ������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (1982,NULL,'��������� ����������',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (1983,NULL,'��������� �������� / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1984,NULL,'������, ������� ����� ���������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1985,NULL,'������, �������� �� ������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1986,NULL,'������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (1987,NULL,'��� �������� / ����� �� ������� ���������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (1988,NULL,'��� �������� / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (1989,NULL,'��� �������� / ������� (����)',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (1990,NULL,'��� �������� / ��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1991,NULL,'��� �������� / ���������� �������',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (1992,NULL,'��� �������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1993,NULL,'��� �������� / �����',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (1994,NULL,'��� ��������, ��������� �� ������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1996,NULL,'��� ��������, ���������� � ������ �� ������',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (1998,NULL,'��� ��������, ��������� ���������� ���',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (1999,NULL,'��� ��������, ������������ �� ������',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (2000,NULL,'��� ��������, ������� �� ������� / �������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2002,NULL,'��� ��������, ������ �� ������� ����� � ����',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2003,NULL,'��� ��������, ������ �� ���������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2004,NULL,'������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (2005,NULL,'������� (�������)',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2006,NULL,'�����',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2007,NULL,'�����, ����� ����� / ������������ �� ������������',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2008,NULL,'������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (2009,NULL,'����������, ����',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (2010,NULL,'������������ / ����� �� ������� ���������',7116);
INSERT INTO `natc_clasifikator_prof` VALUES (2011,NULL,'������������ / ������� ������������',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (2012,NULL,'������������ �� ������ / ��������� ������������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2013,NULL,'������������ �� ���� (����������)',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2014,NULL,'������������, ��� / ����������������',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (2015,NULL,'������������, ������� �����',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2016,NULL,'������������, ��������� / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (2017,NULL,'������������, �������',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2019,NULL,'������������, �����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2021,NULL,'������������, �������� �����',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2022,NULL,'������������, ���������� ��������',7323);
INSERT INTO `natc_clasifikator_prof` VALUES (2025,NULL,'������������, ������ / ��������� ������������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (2026,NULL,'����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2027,NULL,'������� ��������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2028,NULL,'����������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2029,NULL,'����������-������������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2030,NULL,'��������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (2031,NULL,'���������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2032,NULL,'�������� / ������ ��������������� (���)',3117);
INSERT INTO `natc_clasifikator_prof` VALUES (2033,NULL,'�������� / ���������������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2034,NULL,'�������� / ����� �� ������ ���������',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2035,NULL,'�������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (2036,NULL,'�������� / �������� ������������',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2037,NULL,'�������� / ���������� ��������� �� ������������',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2038,NULL,'�������� / �����������������',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2039,NULL,'�������� / �����������-�������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2040,NULL,'�������� / ������� ����������',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (2041,NULL,'�������� / �������������� ����������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2044,NULL,'�������� / ������������ �� ��������� �������',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2045,NULL,'�������� / ������������ �� ������������ �������',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2046,NULL,'�������� / ������������ �� �������',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2048,NULL,'�������� / ������������ �� ����',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2049,NULL,'�������� / ������������ �� ���� �����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2050,NULL,'�������� / ������������ �� ���',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2051,NULL,'�������� / ������������ �� ��������� ���',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2052,NULL,'�������� / ������������ �� ������������',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2053,NULL,'�������� / ������������ �� ��������',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2054,NULL,'�������� / ������������ �� �������� ���������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2055,NULL,'�������� / ������������ �� ����������� ���������',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2056,NULL,'�������� / ������������ �� ��������������� �������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2057,NULL,'�������� / ������������ �� ���������� ��������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2059,NULL,'�������� / ������������ �� ������ � ������� ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2062,NULL,'�������� / ������������ �� ���������� ����',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2064,NULL,'�������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2065,NULL,'�������� / ������������ �� ������������',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (2067,NULL,'�������� / ������������ �� ���',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (2068,NULL,'�������� / ������������ �� �������� ��������',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2069,NULL,'�������� / ������������ �� ��������',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2070,NULL,'�������� / ������������ �� ������� � ���',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2071,NULL,'�������� / ������������ �� ��� �� ����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2072,NULL,'�������� / ������������ �� ����� ��������',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2073,NULL,'�������� / ������������ �� ������� �������',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2074,NULL,'�������� / ������������ �� ������� � �������',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2075,NULL,'�������� / ������������ �� ������',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (2076,NULL,'�������� / ������������ �� ��������',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2077,NULL,'�������� / ������������ �� ������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (2078,NULL,'�������� / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2080,NULL,'�������� / ������������ �� ���������� ��������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (2081,NULL,'�������� / ������������ �� ������ � ������� �����',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2082,NULL,'�������� / ������������ �� ������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (2084,NULL,'�������� / ������������ �� ���������� �������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2085,NULL,'�������� / ������������ �� ��� ���',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2086,NULL,'�������� / ������������ �� ������, ���������',8157);
INSERT INTO `natc_clasifikator_prof` VALUES (2087,NULL,'�������� / ������������ �� ������',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2088,NULL,'�������� / ������������ �� ����������',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2089,NULL,'�������� / ������������ �� ����������� ������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2090,NULL,'�������� / ������������ �� ����������� �����',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2092,NULL,'�������� / ������������ �� ��������� ���',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2093,NULL,'�������� / ������������ �� �������� �������',8145);
INSERT INTO `natc_clasifikator_prof` VALUES (2094,NULL,'�������� / ������������ �� ������ � ������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2097,NULL,'�������� / ������������ �� ������ ���',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2098,NULL,'�������� / ������������ �� ��������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2099,NULL,'�������� / ������������ �� ������',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2100,NULL,'�������� / ���������������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2101,NULL,'�������� / ������ �� ����������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2102,NULL,'��������, ���',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2103,NULL,'��������, �������������� ������� �����',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2104,NULL,'��������, ���������� / ������� ������',8218);
INSERT INTO `natc_clasifikator_prof` VALUES (2105,NULL,'��������, ��������� ������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2106,NULL,'��������, ���������� ������ / ���� � ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2107,NULL,'��������, ���������������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (2109,NULL,'��������, ������������ ������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (2111,NULL,'��������, ������������� ����������',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (2113,NULL,'��������, �����������������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2114,NULL,'��������, �����������������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2115,NULL,'��������, ������ ��.����� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2116,NULL,'��������, ���������� �� ������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2119,NULL,'��������, ������������ ��������� �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2120,NULL,'��������, ���������������� ������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (2121,NULL,'��������, ��.����� \"��������� �����\" / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2122,NULL,'��������, ������������ ���������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2123,NULL,'��������, ���������� ����� �� ������� ����������',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (2124,NULL,'��������, �������� ����',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2125,NULL,'��������, ��������� ��������, ���������� �� ������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2126,NULL,'��������, ���������� ������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2128,NULL,'��������, ��������� � ��������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2129,NULL,'��������, ��������� �� ���������� � ���',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (2130,NULL,'��������, ������������ / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2135,NULL,'��������, ���������� �������� ��������� �� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2137,NULL,'��������, ���������� ������ / ����������',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (2138,NULL,'��������, ������� ������� / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (2139,NULL,'��������, �������� ���� / ������� �����',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2140,NULL,'��������, �������� ����� / ��� � �����',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2141,NULL,'��������, ��������',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2145,NULL,'��������, ������� ������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (2147,NULL,'��������, ����� �� ������',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (2148,NULL,'��������, ������ / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2149,NULL,'��������, ����� �� ���������� �� ����',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2150,NULL,'��������, ����� �� ���������� �������',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2151,NULL,'��������, ����������� �������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2152,NULL,'��������, ������������ � ������������ �� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2153,NULL,'��������, ��������� / ������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2154,NULL,'��������, ������  / ��������������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (2159,NULL,'��������, ������ �� ��������� �� ���������� �����',8279);
INSERT INTO `natc_clasifikator_prof` VALUES (2160,NULL,'��������, ������ �� ����������� ��������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2162,NULL,'��������, ������ �� ��������� �� ������� ��������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2163,NULL,'��������, ������ �� ��������� �� ������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2167,NULL,'��������, ������ �� ���������� �� ��������� ������',8261);
INSERT INTO `natc_clasifikator_prof` VALUES (2172,NULL,'��������, ������ �� ������������ �� ����� �� �����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2174,NULL,'��������, ������ �� ������������ �� �����-�����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2175,NULL,'��������, ������ �� ���������� �� �����',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2179,NULL,'��������, ���������� ���������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2180,NULL,'��������, ����������������� ������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2182,NULL,'��������, ������������ ���',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (2185,NULL,'��������, ���������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2186,NULL,'��������, ������������ �������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2187,NULL,'��������, ��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2189,NULL,'��������, ���������� ���',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2191,NULL,'��������, ������� ������ / ����������',8251);
INSERT INTO `natc_clasifikator_prof` VALUES (2192,NULL,'��������, ��������� �� ������',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (2193,NULL,'��������, ��������� �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2194,NULL,'��������, ��������� �� ��������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2195,NULL,'��������, ��������� �� ��������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2197,NULL,'��������, �������� �� ����� � ��������� ���������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2198,NULL,'��������, ������� ���������� �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2200,NULL,'��������, ����� ���������� / ����������',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2201,NULL,'��������, ����� ������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2202,NULL,'��������, ���������� �������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2203,NULL,'��������, ���������� ������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2205,NULL,'��������, �������� ������',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (2207,NULL,'��������, ���������� �� �����������-�������� ����',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (2208,NULL,'��������, ���������� �� �������� ����',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (2209,NULL,'��������, ���������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2211,NULL,'��������, �������� / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2212,NULL,'��������, �������� ������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2213,NULL,'��������, ����������� ����������',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2214,NULL,'��������, ������������ �� �������� ���',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2215,NULL,'��������, ��������� �� ��������',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2217,NULL,'��������, ���������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2218,NULL,'��������, ���� / ����������� �� ������� ���������',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (2220,NULL,'��������, ���� �� ������� �����',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2221,NULL,'��������, ������� � ������� �� ������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2222,NULL,'��������, �������� ��������� �� �����',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (2223,NULL,'��������, �������� ��������� �� ������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2224,NULL,'��������, ����������������� �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2225,NULL,'��������, ������������� �� ��������������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2226,NULL,'��������, ���������� �� ������ ���������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2227,NULL,'��������, ���������� �� ����',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2228,NULL,'��������, ������������ �����',8172);
INSERT INTO `natc_clasifikator_prof` VALUES (2229,NULL,'��������, ������ �� ������ ���������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2230,NULL,'��������, ����� / ������������ �� ������',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2233,NULL,'��������, ������������ ���������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2237,NULL,'��������, ������ / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2240,NULL,'��������, ����������� �� ������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2243,NULL,'��������, ��������������� �������',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2244,NULL,'��������, ������������ ������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2245,NULL,'��������, ������',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2246,NULL,'��������, �����������������',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2249,NULL,'��������, �������� ��������� �� ��������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (2250,NULL,'��������, ������������ ���� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2253,NULL,'��������, �������������� ��� �������� �� ������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2256,NULL,'��������, ������� �� ������ ��������� � ��������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2257,NULL,'��������, ������� ������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (2258,NULL,'��������, ������������ �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2260,NULL,'��������, ���������� ������',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2261,NULL,'��������, ������� ������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2264,NULL,'��������, ���� ����������  �� ������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2265,NULL,'��������, �����-������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2266,NULL,'��������, ���������� / ��� � �����',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2267,NULL,'��������, ������� ������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2268,NULL,'��������, ��������� ��������� �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2269,NULL,'��������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (2271,NULL,'��������, ��������� ������� � ��������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (2272,NULL,'��������, ������� ����������',8153);
INSERT INTO `natc_clasifikator_prof` VALUES (2273,NULL,'��������, ��������� ������� / ������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2274,NULL,'��������, ��������� ����������� �������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2278,NULL,'��������, ������ �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2279,NULL,'��������-����������� / ��������� �������',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2280,NULL,'��������-������, ������ ���',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2281,NULL,'������� / ������� �����������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (2282,NULL,'�����������, ��������� �� �����������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2283,NULL,'����������� �� ������� ��������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2284,NULL,'�����',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (2285,NULL,'�����������',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (2286,NULL,'����������� / ��� �� ���������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2287,NULL,'����������� / ����������� ���������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (2288,NULL,'����������� / ������������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (2290,NULL,'����������� / ������������ �������� ���������',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (2294,NULL,'����������� / ������ �� ���',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2295,NULL,'����������� / ������������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (2296,NULL,'����������� / ���������� ������ � ����������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2297,NULL,'����������� / ��������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2298,NULL,'����������� ����������, ��������� / ����',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2299,NULL,'�����������, ���',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (2300,NULL,'�����������, ������� � �������� �������',3419);
INSERT INTO `natc_clasifikator_prof` VALUES (2301,NULL,'�����������, �������� �� ����� � �������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2302,NULL,'�����������, ������������ / ���������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (2304,NULL,'�����������, ������� ������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2305,NULL,'�����������, ����������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2306,NULL,'�����������, ������������� ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (2307,NULL,'�����������, ������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2308,NULL,'�����������, ��������� ������������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2310,NULL,'�����������, ������������� �������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2311,NULL,'�����������, �������������� �������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2312,NULL,'�����������, �������� ������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (2314,NULL,'�����������, ������������ ������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2317,NULL,'�����������, ���������� ���������� � �������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2318,NULL,'�����������, �������� � ����������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2319,NULL,'�����������, ��������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2320,NULL,'�����������, ��������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2321,NULL,'�����������, �������� � ����������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (2322,NULL,'�����������, ��������� ������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2323,NULL,'�����������, �������� ���������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2324,NULL,'�����������, ��������-������ �������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2326,NULL,'�����������, �������� �� ��������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2327,NULL,'�����������, ���������� ������������ �� ���',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2329,NULL,'�����������, ������� -  ���� � �����������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2330,NULL,'�����������, ��������� �������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2331,NULL,'�����������, ������ �������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2332,NULL,'�����������, ����������',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (2333,NULL,'�����������, �������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (2334,NULL,'�����������, ������� �� ���������� �����',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2335,NULL,'�����������������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2336,NULL,'�����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (2337,NULL,'���������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2338,NULL,'������� � �����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (2339,NULL,'����������� ������',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (2340,NULL,'���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2341,NULL,'����������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2342,NULL,'����������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (2344,NULL,'�������� �� ������� �� ����� / ����������',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (2346,NULL,'��������� �������� / ������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (2347,NULL,'��������� ��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (2348,NULL,'��������� �������� / ��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (2349,NULL,'��������� �������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2350,NULL,'���������� / ������� �����',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (2351,NULL,'���������� / ������������������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (2353,NULL,'���������� / �����������-�������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (2354,NULL,'���������� / ������� ����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (2355,NULL,'���������� / ������������ �� ���������� ��������',7323);
INSERT INTO `natc_clasifikator_prof` VALUES (2356,NULL,'���������� / ������������ ���������',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (2357,NULL,'����������, ������ / �������� ����������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (2360,NULL,'����������, ������������� ����������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2361,NULL,'����������, �������� / ������������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2362,NULL,'����������, ����������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2363,NULL,'����������, ����� ��������',6154);
INSERT INTO `natc_clasifikator_prof` VALUES (2364,NULL,'����������, ������ ���������',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (2366,NULL,'����������, ���������� ����',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (2367,NULL,'����������, ����������� �����������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (2369,NULL,'����������, ����������-�������� ������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2370,NULL,'������� / ���������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2371,NULL,'������� �� ����� �� ����� ������, ��������� ������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (2372,NULL,'��������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2373,NULL,'�������� / ����������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (2374,NULL,'�������� ����� ������� / ����������� ���������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (2375,NULL,'��������, ���������� �� ������ / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (2376,NULL,'������ / ��������� ����� (�������)',1);
INSERT INTO `natc_clasifikator_prof` VALUES (2377,NULL,'������ / ��������� ����',1);
INSERT INTO `natc_clasifikator_prof` VALUES (2378,NULL,'��������-������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (2379,NULL,'���������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2381,NULL,'���������, ����������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2382,NULL,'�������� �� ����� �� ������������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2383,NULL,'�������� �� �����',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2384,NULL,'��������, ��������������� ������',3419);
INSERT INTO `natc_clasifikator_prof` VALUES (2385,NULL,'��������, �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2386,NULL,'������',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (2387,NULL,'�����, ��������� ������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2388,NULL,'�����, ����� / �������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2389,NULL,'�����, ����������� ������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2390,NULL,'�����, ������ �� �����������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2391,NULL,'�����, �������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2392,NULL,'�����, ������� / �����������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2393,NULL,'������� �� �������� / ������ ������',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (2394,NULL,'�����������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2395,NULL,'�����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2396,NULL,'������� ������',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (2397,NULL,'�����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2398,NULL,'�����������, �����������',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (2399,NULL,'����������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (2400,NULL,'���������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2401,NULL,'��������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (2402,NULL,'������������� �������� / ����������� �����',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (2403,NULL,'����������',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (2404,NULL,'������ / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (2405,NULL,'����������� �� ����� / ������������ �� �����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2406,NULL,'������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (2407,NULL,'�������� �������',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (2408,NULL,'����������',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (2409,NULL,'�������, ����������� �����',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (2410,NULL,'�������-������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2411,NULL,'��������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (2412,NULL,'������, ������',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (2413,NULL,'�����, ������� �����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (2414,NULL,'������� / �������� ������ �������� (���)',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (2415,NULL,'������� / ������ ��������',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (2416,NULL,'������������� ��������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (2417,NULL,'����� / ������������ �� ������������',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (2418,NULL,'����� / ������������ �� ���������� ��������',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (2419,NULL,'����� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (2420,NULL,'�����, ���',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2422,NULL,'�������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (2424,NULL,'����� / ������, �������',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (2425,NULL,'����� / �������, �������',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (2426,NULL,'����� �� ����� / ��������� ������������',7432);
INSERT INTO `natc_clasifikator_prof` VALUES (2427,NULL,'��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2428,NULL,'������� / ����������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2429,NULL,'������� / ��������� ������������',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (2430,NULL,'������� ��������, �������� / ����������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2431,NULL,'������� ��������, ������� / ����������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2432,NULL,'������� �� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2434,NULL,'�������, ��������-�������� / ����������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2435,NULL,'�������-������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (2436,NULL,'����� / �����������-�������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2437,NULL,'����� / ������������ �� ���������� ��������',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (2438,NULL,'�����, ��������������� � ���������������� �������',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (2439,NULL,'������',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (2440,NULL,'���������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2441,NULL,'�����������, ����������',7425);
INSERT INTO `natc_clasifikator_prof` VALUES (2442,NULL,'�����������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2443,NULL,'����������',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (2444,NULL,'������� - ���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2445,NULL,'������� - ���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2446,NULL,'�������, ���������� ����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2447,NULL,'�����������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2448,NULL,'���������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2449,NULL,'���������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (2450,NULL,'����������, ����� / ��������',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (2451,NULL,'�����������, ������� ��������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2452,NULL,'��������� ����� (���)',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (2453,NULL,'��������� ��������',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (2454,NULL,'��������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2455,NULL,'������������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (2456,NULL,'�������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2457,NULL,'������ � ���������, ������� �����',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2458,NULL,'������ �� ����',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2460,NULL,'������, ����� ������������ �������',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2461,NULL,'������-������� / ��������',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2462,NULL,'���������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (2463,NULL,'���������� �����',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (2464,NULL,'�������, ����� �� �������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2468,NULL,'�����������, �������� ������ / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2469,NULL,'���������, ������ �� ��������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2470,NULL,'����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2471,NULL,'����������',3453);
INSERT INTO `natc_clasifikator_prof` VALUES (2472,NULL,'������� / ���������������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2473,NULL,'������� / �����������������',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (2474,NULL,'�����������, ���������� �� ������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (2475,NULL,'��������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (2477,NULL,'���������, ����������',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (2478,NULL,'���������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (2479,NULL,'�������',3452);
INSERT INTO `natc_clasifikator_prof` VALUES (2480,NULL,'�������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (2481,NULL,'�������� ���������� / ������ ������� (������ ����)',5131);
INSERT INTO `natc_clasifikator_prof` VALUES (2482,NULL,'�������� ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (2483,NULL,'�������� �������� / ������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (2484,NULL,'�������� �����������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (2485,NULL,'�������� ��������',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (2486,NULL,'�������� ����������� �������� / �� ���������',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (2487,NULL,'�������� ��������, ������� �� �������� ����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2488,NULL,'�������� �������� / ������������ �� ������������',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2489,NULL,'�������� ����������� / ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (2490,NULL,'�������� ������ / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (2491,NULL,'��������-���������� ���� �� ���������� ���������',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (2492,NULL,'��������-������� / �����',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (2493,NULL,'��������-�����������  �� ������������ ������������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2494,NULL,'��������-�������� �����, �������� ����� �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (2495,NULL,'��������-�������� �� ���������� ������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2496,NULL,'��������-��������, ����������� �������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2497,NULL,'��������-��������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2498,NULL,'��������-�����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2500,NULL,'��������-���������',3228);
INSERT INTO `natc_clasifikator_prof` VALUES (2501,NULL,'�������, �������� ��������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2502,NULL,'�������, ������� ������',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2503,NULL,'�������, ���������� ������',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2505,NULL,'��������� / �����',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2506,NULL,'���������, �������� �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2507,NULL,'���������, ������, ����� / �����������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2508,NULL,'���������, ��������� �����',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (2509,NULL,'���������, ������� ����',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (2510,NULL,'���������, �����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2511,NULL,'���������, ����������� ������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (2512,NULL,'���������, ������������ ������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2513,NULL,'���������, �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2514,NULL,'���������, ������� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (2515,NULL,'���������, ����� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (2516,NULL,'�����������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (2519,NULL,'��������� �� ���� � ������ / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2520,NULL,'���������, ��. ����� � ������������ ����',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2522,NULL,'���������-���������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (2523,NULL,'��������',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (2524,NULL,'�������� ���������� / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2525,NULL,'�������� �������� / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2526,NULL,'�������� ��������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2527,NULL,'������������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (2528,NULL,'������������� �������� / �������� �������������',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (2529,NULL,'������������� ������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (2530,NULL,'����������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2531,NULL,'��������',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (2532,NULL,'�������� ��� ������ ����. �����������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (2533,NULL,'��������, ������ ��������',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (2534,NULL,'��������� � ����� (������)',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (2535,NULL,'������, �� / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2537,NULL,'������, ����� ������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2541,NULL,'������, �������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2543,NULL,'������, ������ ������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2544,NULL,'����������� / �������������� ���',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2545,NULL,'����������� / ������� ��������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2546,NULL,'����������� / ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (2547,NULL,'����������� / �������� �����',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (2548,NULL,'����������� / ����������� �� �������������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2549,NULL,'����������� / ����������� �� ������������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2550,NULL,'����������� / ����������� ������',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (2551,NULL,'����������� / ������� ����',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (2552,NULL,'����������� / ������� �����������',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (2554,NULL,'����������� / ��������� ���������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2555,NULL,'����������� / �������� � ������� ���',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2557,NULL,'����������� �� ������� / ������� ��������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2558,NULL,'����������� �� ��������� / ���',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2559,NULL,'����������� ��������� ������� / ������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (2560,NULL,'�����������, ���� ���������� �����',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (2561,NULL,'�����������, �������� ��������������� ���',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2562,NULL,'�����������, �������� ���������� ���',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2563,NULL,'�����������, �������� ���',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2565,NULL,'�����������, �������� ���������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2566,NULL,'�����������, ���������� �������',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (2567,NULL,'�����������, �������� �������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2568,NULL,'�����������, �������� �������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2569,NULL,'�����������, �������� ����� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (2570,NULL,'�����������, ����������� ����� / ����������',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (2571,NULL,'������������ / �������� ����������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2572,NULL,'������������, ������ ������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2573,NULL,'������������, ��������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (2574,NULL,'��������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2575,NULL,'��������� �� �����������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2576,NULL,'������������ / �� ���������',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (2577,NULL,'���������� (��������) / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2580,NULL,'���������� / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2582,NULL,'���������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (2583,NULL,'��������� ������-����������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (2584,NULL,'����������, ������ ��������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (2585,NULL,'������������ / ���',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (2586,NULL,'������������ / �����������, �����',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (2587,NULL,'������������ �� �������� ��������',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (2591,NULL,'������������, �����',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2592,NULL,'������������, ������ ��������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2593,NULL,'������������, �������������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2594,NULL,'������������, ���������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2595,NULL,'������������, ��������� �����������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2596,NULL,'������������, ������� ������������ �������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2597,NULL,'������������, ������� �����',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2598,NULL,'������������, �����������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2599,NULL,'������������, �������� ��������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2600,NULL,'������������, ������ � ������',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (2601,NULL,'������������, �����',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2602,NULL,'�������� �� ������ / ��������� ������������',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (2603,NULL,'�����������, ������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2604,NULL,'������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2606,NULL,'�������, ������ � ����������� ����� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2609,NULL,'�������, ��������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2613,NULL,'�����������, ������ � �������, ����������',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (2615,NULL,'�����������, ������ �� ����������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (2616,NULL,'�����������',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (2617,NULL,'����������� / �������� ��������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2618,NULL,'����������� �� ��������',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (2619,NULL,'��������-�������� �� �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2620,NULL,'�������� / ���������� �� ��������������� ��������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2622,NULL,'��������, ����������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (2624,NULL,'��������� / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (2625,NULL,'���������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2626,NULL,'��������������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (2627,NULL,'����������, �����',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (2628,NULL,'����������, ���������� ����',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2629,NULL,'����������, ������ / �������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2631,NULL,'��������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2632,NULL,'�����������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (2633,NULL,'���������� / ������� �����������',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (2635,NULL,'����������, ����� � ����� �����',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (2636,NULL,'���������� �� �����',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (2637,NULL,'��������� �������� / ���, ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (2638,NULL,'����������, ���������� �� ���������� ������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (2639,NULL,'����������, �������� ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (2640,NULL,'�������� / �������������� (�����������)',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2641,NULL,'�������� / ������������� ��������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2642,NULL,'�������� / �������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2643,NULL,'�������� / ������ ���� (������)',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2644,NULL,'�������� / �����',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2646,NULL,'��������, ������������ / �������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2647,NULL,'��������, ����������� / ����� �� ����',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2648,NULL,'��������, ��������� �� ����� �� ������� / ��������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2649,NULL,'��������, ���������� �� ������� �� ��������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2650,NULL,'��������, �����',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (2651,NULL,'��������, ��������� ��������',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (2652,NULL,'��������-���������� / �������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2653,NULL,'���������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (2654,NULL,'��������� �������, ����������� � ����������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (2655,NULL,'���������, ���������� �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (2656,NULL,'���������, ���������� �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (2658,NULL,'������������, ������ ����',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2660,NULL,'������������, �����',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2661,NULL,'������������, ����� �����',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (2662,NULL,'������������, ����',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (2663,NULL,'������������, ������ �������',7427);
INSERT INTO `natc_clasifikator_prof` VALUES (2664,NULL,'������������, ������� �������',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (2665,NULL,'������������, ������� �����',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (2666,NULL,'������������, ���� ���� �� ������� / �����������',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (2669,NULL,'������������, ������� �������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2670,NULL,'������������, ������� �� �����',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2671,NULL,'������������, ����������� �������, ����� � �����',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2672,NULL,'������������, �����',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2673,NULL,'������������, ����',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2674,NULL,'������������, ��������� ��������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (2675,NULL,'������������, �������� �����������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (2676,NULL,'������������, ������� ������� �������',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (2677,NULL,'������������, �������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (2678,NULL,'������������, ������� �������',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (2679,NULL,'������������, ��������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2680,NULL,'������������, ����',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2681,NULL,'���������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2682,NULL,'��������',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (2683,NULL,'��������-�������� ����� / ������ �����������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2684,NULL,'��������-����������� / ���������� �����������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2685,NULL,'��������� ��������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2686,NULL,'��������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2687,NULL,'�����������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (2688,NULL,'����������� �� ������� ��������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2689,NULL,'���������-�������������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (2690,NULL,'��������',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (2691,NULL,'���������, ������� ���������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2692,NULL,'��������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2693,NULL,'�������� / ������� ���������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2694,NULL,'�������� / ����� �� �������� �� �������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2695,NULL,'��������',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2696,NULL,'��������, ���������',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2698,NULL,'������',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2699,NULL,'������ �� ������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2700,NULL,'������ �� ������ �������',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2701,NULL,'������ �� ����������� ����',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (2703,NULL,'������ �� ������� / ������������ �� �����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2704,NULL,'������ �� �����������',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2706,NULL,'������, �����������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2708,NULL,'����� �������� �� ����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2709,NULL,'����� ��������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2711,NULL,'�������� (�������) / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (2712,NULL,'�������� / ��������������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2713,NULL,'�������� / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (2714,NULL,'�������� / �������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2715,NULL,'�������� / �������������� �����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2716,NULL,'�������� / ���������� �� �������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2717,NULL,'�������� / ����� ����������',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (2718,NULL,'�������� / ���������� ����',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2719,NULL,'�������� / ���������� ��������',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2720,NULL,'�������� / ������, ���������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2721,NULL,'�������� / ������������ �� ��������� �������',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2726,NULL,'�������� / ������������ �� ��������������� �������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2727,NULL,'�������� / ������������ �� ������� ����������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2728,NULL,'�������� / ������������ �� ��������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2729,NULL,'�������� / ������������ �� ��������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2732,NULL,'�������� / ������������ �� ������ �������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2733,NULL,'�������� / ������������ �� �������������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2734,NULL,'�������� / ������������ �� ������� � �����',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2737,NULL,'�������� / ������������ �� ��� �� ������ ����',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2740,NULL,'�������� / �������������� �� �����������������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2741,NULL,'�������� / ������ �� ������� �����������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (2742,NULL,'�������� / �����������, �����������',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (2743,NULL,'�������� / ������ �� ������ � ������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2744,NULL,'�������� / ����������� �����',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2745,NULL,'�������� � ������ / �������� ����������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2746,NULL,'�������� � ������� ���� / ������ ������������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (2747,NULL,'�������� � ����� / ���������� �������',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (2748,NULL,'�������� � �����',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2751,NULL,'�������� �����, ����������� �� ������� �����',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (2754,NULL,'�������� �� ��� �� ������������ �� ������� �� ���',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (2755,NULL,'�������� �� ��������� / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2757,NULL,'�������� �� ������ �� �����������, ����������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2763,NULL,'�������� �� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2765,NULL,'�������� �� ���������� / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2767,NULL,'�������� �� �������������� ��������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2770,NULL,'�������� �� ��������� �� �������, ������ ������',7229);
INSERT INTO `natc_clasifikator_prof` VALUES (2773,NULL,'�������� �� ����������� / ������� ����������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2777,NULL,'�������� �� ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2779,NULL,'�������� �� ��������� ��������� / ������������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (2781,NULL,'�������� �� ������������ ����������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2782,NULL,'�������� �� ��������� ������� � �������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (2783,NULL,'��������, ������ �� ���',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (2784,NULL,'��������, ��������� ����� �� ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2785,NULL,'��������, ���������� ���������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2786,NULL,'��������, �������� �����  / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (2787,NULL,'��������, ��������� / ������������ �� ������',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2791,NULL,'��������, ��������� �� ������������������ �������',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (2792,NULL,'��������, ��������� �� �������� �������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2793,NULL,'��������, ������� � ����� �� ����������� �������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2794,NULL,'��������, ����� �� ������ ������� � ������ ������',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2796,NULL,'��������, ������� ����������',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (2798,NULL,'��������, ������������ ���������� ��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2799,NULL,'��������, �������� �� ����� �� ��������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2800,NULL,'��������, �������� �� ����������� ��������',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (2801,NULL,'��������, ������ �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2802,NULL,'��������, ������� �������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2803,NULL,'��������, ������� ������� �� ������� ��������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2805,NULL,'��������, ������� ������� ����������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2806,NULL,'��������, ������� ����� �� ����������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2811,NULL,'��������, ��������� / ��������� ������������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2814,NULL,'��������, ��������� �� �����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2815,NULL,'��������, ��������� ��� ���',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2816,NULL,'��������, ��������� ���������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2821,NULL,'��������, ��������� �� �������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (2822,NULL,'��������, ���������� �����, ��������� ������',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2823,NULL,'��������, �������� �� ����������� �����',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (2824,NULL,'��������, ����������� �� ����������',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2829,NULL,'��������, �����������������',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (2830,NULL,'��������, ��������� � ����������� �������',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2831,NULL,'��������, ��������� ������ �� ���������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2833,NULL,'��������, ����� �� ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2835,NULL,'��������, �������� / ������������ �� ������',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2837,NULL,'��������, ����� �� ������������ �� ����',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2839,NULL,'��������, ������� ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2840,NULL,'��������, ����� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2841,NULL,'��������, ���������',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2842,NULL,'��������, ������ - ���� / ������� ������������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (2843,NULL,'��������, ������ �� ����� / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (2848,NULL,'��������, ������� ����������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (2851,NULL,'��������, ��������� ��������� �� ����������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2856,NULL,'��������, ������ �� ������� �������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2857,NULL,'��������, ������ �� ������������ ����������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2858,NULL,'��������, ������ �� ���������� ����������',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2859,NULL,'��������, ������ �� �������� ����� ������� ������',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2860,NULL,'��������, ������ �� ������ �������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2861,NULL,'��������, ������ �� ��������� ����������',8281);
INSERT INTO `natc_clasifikator_prof` VALUES (2862,NULL,'��������, ������ �� ��������� ����������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2863,NULL,'��������, ������ �� �������� ����������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2865,NULL,'��������, ������� �� �����������������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (2866,NULL,'��������, �������� � �������� �� ��������������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2869,NULL,'��������, ������� �� ������ / ���������',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2871,NULL,'��������, �������� �� ���������� �������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (2875,NULL,'��������, ��������� �� ���������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2876,NULL,'��������, ��������� �� ������� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (2877,NULL,'��������, ��������� �� ������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2882,NULL,'��������, ��������� �� ���������� ������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2886,NULL,'��������, ���������� �� �����',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2887,NULL,'��������, ���������� �� ��������� / �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2889,NULL,'��������, ��������� ����������� �������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2890,NULL,'��������, ����������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2892,NULL,'��������, ����������� ������� � ����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2893,NULL,'��������, �������� / ����������-�������� ������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2894,NULL,'��������, �������� �� �������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2895,NULL,'��������, ����������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2897,NULL,'��������, ���� � ��������� ���������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (2899,NULL,'��������, ���������� ������� �������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2900,NULL,'��������, ���������� �� ��������� �������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2901,NULL,'��������, ���������� �� �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2902,NULL,'��������, ���������� �� ������� �����',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (2903,NULL,'��������, ���������� �� ������� �� ������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2909,NULL,'��������, ���������� �� ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2911,NULL,'��������, ���������� �� ���������������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2912,NULL,'��������, ���������� �� ��������������� ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (2915,NULL,'��������, �������� �� ����� ��������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2917,NULL,'��������, ������� �������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2918,NULL,'��������, �������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2919,NULL,'��������, ��������� �� ���������� ������ � �����',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2920,NULL,'��������, ���������� � ���������� / ���������',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (2921,NULL,'��������, ���������� �� ����� / ��������� �� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2922,NULL,'��������, ���������� �� ������ � ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2924,NULL,'��������, ���������� �� �������� �������, ��������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2926,NULL,'��������, ���������� �� ������ � ��������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2927,NULL,'��������, ���������� �� ������ / ������������',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (2928,NULL,'��������, ������� � ����� �� ���������� � ��������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (2929,NULL,'��������, ������� � �����������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2930,NULL,'��������, ���������� �� ������� ��������',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2931,NULL,'��������, ���������� �� ����� / ������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2933,NULL,'��������, ������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2934,NULL,'��������, �������������� �������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2935,NULL,'��������, ���������� �� ������������������ ����',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (2936,NULL,'��������, ���������� �� �������� � �������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2938,NULL,'��������, �������� � ��������� �� ��� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (2942,NULL,'��������, ������������ � �������� �� ������',7449);
INSERT INTO `natc_clasifikator_prof` VALUES (2946,NULL,'��������, ������������ �� ���������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2947,NULL,'��������, ������������ �� ������ �����',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (2948,NULL,'��������, ������������ �� �����',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2949,NULL,'��������, ������������ �� ����� / ������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2950,NULL,'��������, ������-����� �������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2951,NULL,'��������, ����������� � �������� �� ���������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (2952,NULL,'��������, �����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2953,NULL,'��������, ������������ � ��������� ������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2954,NULL,'��������, ������ ������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2955,NULL,'��������, �������� ��������� �� �����',7432);
INSERT INTO `natc_clasifikator_prof` VALUES (2959,NULL,'��������, ����������� �� ������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2961,NULL,'��������, ������ � ��������� �� ��������� �������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (2963,NULL,'��������, ������ �� ����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2965,NULL,'��������, ������ �� �������� ������ / �� ���������',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (2966,NULL,'��������, ������ �� ������� �����',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (2967,NULL,'��������, ����� ����������� �� ����������� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2968,NULL,'��������, ����� ����������� �� ������� ���������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2972,NULL,'��������, ���������� �� �������',8286);
INSERT INTO `natc_clasifikator_prof` VALUES (2974,NULL,'��������, ���������� �� ������� �����',8286);
INSERT INTO `natc_clasifikator_prof` VALUES (2975,NULL,'��������, ������� �� �����',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2977,NULL,'��������, ������ � �������� ���� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (2978,NULL,'��������, ������ ������� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2979,NULL,'��������, �������� �� ������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2980,NULL,'��������, ����� ����',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2981,NULL,'��������, ������������ �������� / ���������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2985,NULL,'��������, ������ �� ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2988,NULL,'��������, ���������������',7136);
INSERT INTO `natc_clasifikator_prof` VALUES (2989,NULL,'��������, �������� �� �����',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2990,NULL,'��������, ������� ���������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2991,NULL,'��������, �������� �� ������',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (2993,NULL,'��������, ���������� �� ����',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2996,NULL,'��������, ������������ ������',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2997,NULL,'��������, ���������� ����������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (3000,NULL,'��������, ������ �� �������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3001,NULL,'��������, ������ ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (3003,NULL,'��������, ������ �����������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (3004,NULL,'��������, ������ �������� - ���������� ������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3005,NULL,'��������, ������ �������� - ������ ���������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3006,NULL,'��������, ������ �������� - ����������� ���������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3007,NULL,'��������, ������ �������� - �������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3008,NULL,'��������, ������ �������� - �������� � ������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3010,NULL,'��������, ��������� � ������������',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3011,NULL,'��������, ���������� ���������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (3012,NULL,'��������, ���� ������������ ������ / ������������',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (3014,NULL,'��������, ���������� ����� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3016,NULL,'��������, ��������������� ���������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (3018,NULL,'��������, ����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (3020,NULL,'��������, ������������ ���������� �� �������',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (3022,NULL,'��������, ������-������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3023,NULL,'��������, ����� �� ���� / �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3024,NULL,'��������-�������������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3025,NULL,'�����',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3026,NULL,'������������ / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3027,NULL,'�������������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3028,NULL,'������������, �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (3029,NULL,'�������������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3030,NULL,'����������������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3031,NULL,'�����������, ���������� �� �����������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (3032,NULL,'�������� �� �������� ���������',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (3033,NULL,'��������, ����������� � ���������, ���������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3034,NULL,'���������� �� �����, ������� ����',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (3036,NULL,'���������� / �������������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3037,NULL,'��������, ������ ������ / ��������',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (3039,NULL,'���������',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (3040,NULL,'��������� �� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3042,NULL,'��������� �� �������� / ���',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (3043,NULL,'��������� �� ����� / �������� �����',5133);
INSERT INTO `natc_clasifikator_prof` VALUES (3045,NULL,'������������, ���������� �� ������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (3047,NULL,'������������� �� ������ / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (3048,NULL,'�������������-���������� �� ��������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (3049,NULL,'�������������������, ���������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3050,NULL,'�����������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3054,NULL,'��������� �� �������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (3055,NULL,'���������, ������� / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (3056,NULL,'������� ��������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (3057,NULL,'�������������',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (3059,NULL,'�������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3060,NULL,'�����������, �������������� �� ������ �������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3061,NULL,'������������������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3062,NULL,'�������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3063,NULL,'��������, ���������� ������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (3065,NULL,'���������� / ����� �� ������� ���������',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (3066,NULL,'������� - ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3067,NULL,'������� �� ������������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3068,NULL,'�������, ����������-��������� ���� (���)',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3069,NULL,'�������-������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3071,NULL,'�����������, �����������',4143);
INSERT INTO `natc_clasifikator_prof` VALUES (3072,NULL,'������������ �� �������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3076,NULL,'��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3077,NULL,'�������� - �������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3079,NULL,'�����',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3084,NULL,'�������� �� ������� �������������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (3085,NULL,'�������� �� ��������������� ����',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3086,NULL,'�������� �� ������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3087,NULL,'�������� �� ��������� ������������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (3088,NULL,'�������� �� ����, ����������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3089,NULL,'��������, ����� ��������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3090,NULL,'��������, �����',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3091,NULL,'��������, ������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3092,NULL,'��������, ���������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3093,NULL,'��������, �����',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3094,NULL,'�����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3095,NULL,'�����, ���������� ��� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (3096,NULL,'�����, ������� �������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (3098,NULL,'�����, ������ ��������� �� ������������ �������',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (3099,NULL,'�����, �������� / ����������',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (3100,NULL,'������, ������� �� �����',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (3101,NULL,'�������������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (3102,NULL,'�������� �������� / ������ ������������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (3103,NULL,'�������� �����',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3104,NULL,'�������� �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (3105,NULL,'������ / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3106,NULL,'�������� / ����������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (3107,NULL,'���������, ����������������',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (3108,NULL,'��������� ��������',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (3109,NULL,'���������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3110,NULL,'��������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3111,NULL,'��������, ��������� � �����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3112,NULL,'��������, ��������� � ���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3113,NULL,'��������, ��������� ��� ������� / �������� /',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3114,NULL,'��������, ����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3115,NULL,'������������� �������� / ����������',7344);
INSERT INTO `natc_clasifikator_prof` VALUES (3116,NULL,'�����������, ��������� �� ���������',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (3117,NULL,'�����������, ������������ �� ����������',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (3118,NULL,'����������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3119,NULL,'������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (3120,NULL,'�������� / �����������-�������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (3121,NULL,'�������������, ����� �����������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (3122,NULL,'�������������, ������� ����������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3126,NULL,'�������������, �� �����, � ��������� �����������',3333);
INSERT INTO `natc_clasifikator_prof` VALUES (3127,NULL,'�������������, ���������� �� ���������� �����',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3128,NULL,'�������������, ���������������',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (3129,NULL,'�������������, ��������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3130,NULL,'�������������, ���������������',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (3131,NULL,'�������������, ������������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3132,NULL,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3133,NULL,'����� / ������ � ����� ����',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3134,NULL,'����� / ������',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3135,NULL,'�����, �� ���������� �� �������������',6211);
INSERT INTO `natc_clasifikator_prof` VALUES (3136,NULL,'�������',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (3137,NULL,'��������� ����������',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (3138,NULL,'��������� / ����������� ����������',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3139,NULL,'��������� / �������� ���� (�������)',6153);
INSERT INTO `natc_clasifikator_prof` VALUES (3140,NULL,'��������� / ���� �����',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3141,NULL,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3146,NULL,'����������� (���� �� �����������) / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (3149,NULL,'����������� / ������ ���������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3150,NULL,'����������� / �������������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3151,NULL,'����������� / �����,  ��������������� ���������',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3152,NULL,'����������� / �����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3154,NULL,'����������� / ������� ����� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3155,NULL,'����������� / ���������� � �������� ����������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3157,NULL,'����������� / ������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3158,NULL,'����������� / ������������ �����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3160,NULL,'����������� / ����� �����������, ��������� ������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3162,NULL,'����������� / ������������� ������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (3165,NULL,'����������� / ����������� �� ������� �� ���������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3166,NULL,'����������� / ����������� �� ��������� �����',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3168,NULL,'����������� / �������� �������� ����',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3169,NULL,'����������� / ����������-����������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3170,NULL,'����������� / �������� �������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3171,NULL,'����������� / �������������� �������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (3172,NULL,'����������� / ��������� ��������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3173,NULL,'����������� / ������������ �����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3174,NULL,'����������� / ������������ ������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3175,NULL,'����������� / �������-��������� ��������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3176,NULL,'����������� / �������� ����',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3178,NULL,'����������� / ���������, ���: �������, ��������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3180,NULL,'����������� / ��������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3181,NULL,'����������� / ��������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3182,NULL,'����������� / ��������� �����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3183,NULL,'����������� / ����������� �������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3184,NULL,'����������� / �������� �������� ����',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3185,NULL,'����������� / ����������� �����������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3187,NULL,'����������� ���� / ������, ����� ����������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3188,NULL,'����������� �������� / ��������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3189,NULL,'����������� �������� / �� ���������',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (3190,NULL,'����������� ����������� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3191,NULL,'����������� ������� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3193,NULL,'����������� �� ����� ���������� ������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3194,NULL,'����������� �� ����� ������������ ������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3195,NULL,'����������� �� ����� ��������� ������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3196,NULL,'����������� �� ���� / ��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3197,NULL,'����������� �� ������� / ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (3198,NULL,'����������� �����������, ����������� � ����������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3199,NULL,'����������� �����������, ������ � ������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3201,NULL,'����������� �����������, ����������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3202,NULL,'����������� �����������, ������������ ��������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3204,NULL,'����������� �����������, ��������������-����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3205,NULL,'����������� �����������, ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3206,NULL,'����������� �����������, �������',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3207,NULL,'����������� �����������, ��������� � �����������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3209,NULL,'����������� ����� / ����������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3210,NULL,'����������� ������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3211,NULL,'����������� ������������ ����',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3212,NULL,'����������� ����� / �� ����',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (3213,NULL,'����������� ��������� ������������ / ���������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (3214,NULL,'����������� ������� / ������, ������ ����������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3215,NULL,'����������� ���� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3216,NULL,'�����������, ����� �� �����������',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (3217,NULL,'�����������, ���, ����� � ������ �� �����',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (3219,NULL,'�����������, ���������������-��������� �����',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3223,NULL,'�����������, ����������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3224,NULL,'�����������, ���������� ����������',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3225,NULL,'�����������, ��������� / ������ ������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3226,NULL,'�����������, ����� �� ��������� ������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3227,NULL,'�����������, ����������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (3230,NULL,'�����������, ��������� ���������� �������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3231,NULL,'�����������, ��������� ������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (3232,NULL,'�����������, ������������ ��������������',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3233,NULL,'�����������, ������ ������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (3234,NULL,'�����������, ��������� ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3235,NULL,'�����������, ������� ��������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3236,NULL,'�����������, ������������ ����',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3237,NULL,'�����������, ������ �����',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (3238,NULL,'�����������, ���������� / �������������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (3239,NULL,'�����������, �������������  �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3240,NULL,'�����������, ������������� �����',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3242,NULL,'�����������, �������� ���� / ������ �����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3243,NULL,'�����������, ��������� ����',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3244,NULL,'�����������, ���������� �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3245,NULL,'�����������, ���������-������������ �����������',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (3246,NULL,'�����������, ��������� �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3247,NULL,'�����������, ������������ ���������� � ����������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3249,NULL,'�����������, ������ �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3250,NULL,'��������� ��������� � ����� � ����',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (3251,NULL,'������� ���������',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (3252,NULL,'������� / ������',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3253,NULL,'������� / ����������� ���������',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3254,NULL,'������� / ��� �� �������� �����',5133);
INSERT INTO `natc_clasifikator_prof` VALUES (3255,NULL,'������� / ������� ���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3256,NULL,'������� / ������������',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3257,NULL,'�������, ������� ��������',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (3258,NULL,'��������� ���������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (3259,NULL,'���������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (3260,NULL,'�����',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (3261,NULL,'�����',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (3262,NULL,'������� / ������ ������������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (3263,NULL,'��������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3264,NULL,'���������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3265,NULL,'������ / ��������� ������������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (3266,NULL,'��������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (3267,NULL,'�������� ������� / �����',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (3268,NULL,'�����������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3269,NULL,'�����������, ��������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3270,NULL,'�����������, �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3271,NULL,'������',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (3272,NULL,'������� �������� / ������ ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (3273,NULL,'������� ��������, �����������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (3274,NULL,'���������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (3275,NULL,'����� � ����� ����������� / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (3276,NULL,'�����, ������� ����� � ����������� / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (3277,NULL,'��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3279,NULL,'�������� / ���������� �������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3280,NULL,'�������� / ���������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3281,NULL,'�������� / ������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3282,NULL,'�������� / �������-������������ ������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3283,NULL,'�������� �� ������ �����',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (3284,NULL,'�������� �� ������������� ��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3285,NULL,'�������� �� ������� / ������� ��������',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3286,NULL,'�������� �� ������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3288,NULL,'�������� ��������� ������� / ������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3289,NULL,'��������, �������� (�����)',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3290,NULL,'��������, ��������� �� ������������� ������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (3291,NULL,'��������-������ � ������ ���������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3292,NULL,'��������-�����������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3293,NULL,'��������-�����������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3294,NULL,'��������� ������� / ��������� ������������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3295,NULL,'��������� ������� / ������� ������������',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (3298,NULL,'��������� �������, �������� ������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (3299,NULL,'��������� �������, ������� ������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3300,NULL,'�����������, ����������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3301,NULL,'�����������, ���������� �������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3302,NULL,'�����������, �����������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3304,NULL,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3305,NULL,'����������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3306,NULL,'���������, �����������',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (3307,NULL,'������������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3308,NULL,'��������������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3309,NULL,'�������� ��������, ���������� �� ������ � �������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (3310,NULL,'���������',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (3311,NULL,'������� / ��������� ����',1);
INSERT INTO `natc_clasifikator_prof` VALUES (3312,NULL,'���������� / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3313,NULL,'�����-���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3314,NULL,'������, ����������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (3315,NULL,'����, ������� ������� � ����� / ������� ����������',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (3316,NULL,'���������-��������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3317,NULL,'���������-��������� / �������� �����',8112);
INSERT INTO `natc_clasifikator_prof` VALUES (3318,NULL,'���������-��������� / �� ���������',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (3319,NULL,'�������� / ����������-������� ������������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (3320,NULL,'������',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3322,NULL,'�������� / ����������-������� ������������',7412);
INSERT INTO `natc_clasifikator_prof` VALUES (3323,NULL,'������-�������������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (3324,NULL,'������-��������, ���',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (3325,NULL,'������-�����������, ����������� �� ���������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3326,NULL,'������-�����������, ����������� �� ����������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (3327,NULL,'������-����������, ���� �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3328,NULL,'������-����������, �����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3329,NULL,'������-����������, �������������� ������� � ������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3330,NULL,'����������� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (3331,NULL,'������� ���������',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3332,NULL,'�������� / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (3333,NULL,'��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (3334,NULL,'������� / ���������� �������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (3335,NULL,'����������',2425);
INSERT INTO `natc_clasifikator_prof` VALUES (3336,NULL,'������������� / ����������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (3337,NULL,'�������� / ��������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3338,NULL,'�������� ��� - ���� ������',3454);
INSERT INTO `natc_clasifikator_prof` VALUES (3339,NULL,'�������� ��� - ��������� ������',3459);
INSERT INTO `natc_clasifikator_prof` VALUES (3341,NULL,'��������, �������� ������ / ���������� ���������',3451);
INSERT INTO `natc_clasifikator_prof` VALUES (3344,NULL,'�������� �� ������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (3345,NULL,'�������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (3346,NULL,'������',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (3347,NULL,'���������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (3348,NULL,'������ / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3349,NULL,'����� �� ���� / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3350,NULL,'������, ��������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (3351,NULL,'������, ����������� ������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (3352,NULL,'������������',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (3353,NULL,'�������',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (3354,NULL,'����������',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3355,NULL,'���������� / ����������',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3356,NULL,'���������� � ���������, ������� �������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (3357,NULL,'���������� �� �����',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3358,NULL,'����������, �����',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (3359,NULL,'����������, ������ �� �������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3360,NULL,'����������, �������� ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3361,NULL,'�������� ����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3362,NULL,'�������� �������� SOS ��������-�����',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3363,NULL,'�������� �������� SOS-�����',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3364,NULL,'�������� ��������, �������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3365,NULL,'�������� ��������, ����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3366,NULL,'�������� ��������, �������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3367,NULL,'�������� ��������, ����������',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3368,NULL,'��������, ������ ��������',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3369,NULL,'��������, �������������',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3370,NULL,'��������, ��������� �� ������������ ������',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3371,NULL,'��������, �������� ���������',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3372,NULL,'�������� �����, ����� � �������� ����',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (3373,NULL,'�������� �� ����',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (3374,NULL,'��������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (3375,NULL,'���������� / ���� �� �����',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3376,NULL,'���������� / ������ ��������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3377,NULL,'���������� / ������������ �� ���������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3378,NULL,'���������� / ������������ ������������� ����',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3379,NULL,'���������� / �����-��������� ����������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3381,NULL,'���������� / ������� �������������',3446);
INSERT INTO `natc_clasifikator_prof` VALUES (3382,NULL,'���������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3383,NULL,'���������� / ��������� ���������� �� �����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3384,NULL,'���������� / ����������� � ������������� �������',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3385,NULL,'���������� / ����������� ����',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3386,NULL,'���������� / ���������� �����',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3387,NULL,'���������� / ���������� ����',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3388,NULL,'���������� / ��������-�������� ������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3389,NULL,'���������� / �������� �������������',3443);
INSERT INTO `natc_clasifikator_prof` VALUES (3390,NULL,'���������� / �������� �������������',3444);
INSERT INTO `natc_clasifikator_prof` VALUES (3392,NULL,'���������� / ����������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (3394,NULL,'���������� / �������� ��������',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3395,NULL,'���������� / �������� ����������� � �����������',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3396,NULL,'���������� / ���������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3397,NULL,'���������� / ���������� ������� �����',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3399,NULL,'����������, �������������� �������������� �������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3401,NULL,'����������, ����������� �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (3402,NULL,'����������, ���������� �����������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (3404,NULL,'����������, �������� �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3405,NULL,'����������, ������������ �������� �����������',3449);
INSERT INTO `natc_clasifikator_prof` VALUES (3406,NULL,'����������, ������� �����������',3449);
INSERT INTO `natc_clasifikator_prof` VALUES (3407,NULL,'����������, ������������� ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3408,NULL,'����������, ��������� ��������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3409,NULL,'����������, �������� �� �����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3411,NULL,'����������, ���������� �����',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3412,NULL,'����������, ����������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3413,NULL,'����������, ������������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3414,NULL,'����������, ���������, ������ � ����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3415,NULL,'����������, ������ ���������',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (3416,NULL,'����������, ��������� �����',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (3417,NULL,'����������, ����������� �� �������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3418,NULL,'����������, ������������ �� ����������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3419,NULL,'����������, ��������',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3420,NULL,'����������, ������ �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (3421,NULL,'����������, ������� ����������� / ������������',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (3422,NULL,'����������, �����������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3423,NULL,'����������, ���������� �� ������ � �������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3424,NULL,'����������, �������� �������',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (3426,NULL,'����������, ������������� ����������',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3427,NULL,'����������, ������� ������� � ��������������',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (3428,NULL,'����������, ����������-�������� ������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3429,NULL,'����������, ���������� �����������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3430,NULL,'����������, ��������� � ����� ������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3431,NULL,'����������, ��������� �� �������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3432,NULL,'����������, ����������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (3433,NULL,'����������, ���� � ������� �������',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3434,NULL,'����������, ������������ ������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (3435,NULL,'����������, ��������� �������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3436,NULL,'����������, ���������� �� ���������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3437,NULL,'����������, ������ �������',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3438,NULL,'����������, �������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3439,NULL,'����������, ��������� ����� � ������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3441,NULL,'����������-��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3442,NULL,'����������-��������� / ������� ��������',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (3443,NULL,'������ / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3444,NULL,'�������, ����������� �������',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (3446,NULL,'������� ����������',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3447,NULL,'������� ��������',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3448,NULL,'�������-�������',2421);
INSERT INTO `natc_clasifikator_prof` VALUES (3449,NULL,'�������-������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (3450,NULL,'��������������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (3451,NULL,'�������� / ������e� ���������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3452,NULL,'������ ��������',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (3453,NULL,'������ ���������� ������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (3454,NULL,'������ ��������� (������) / �������� ���������',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (3455,NULL,'������ ��������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (3456,NULL,'������ ������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3457,NULL,'������ ������� / �������� �������������',2473);
INSERT INTO `natc_clasifikator_prof` VALUES (3458,NULL,'������ ������� / �������� �������������',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3459,NULL,'������ �� ��������',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (3460,NULL,'������ ��������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3461,NULL,'������ ��������� �� �����',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (3462,NULL,'������ ����� / ������� ���������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (3463,NULL,'������ ���������� ��������',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (3464,NULL,'������ ���������� ���������',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3465,NULL,'������ ������ ��������� I ������',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (3466,NULL,'������ ������ ��������� II ������',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (3467,NULL,'������ ������������ / �����������, �����',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (3469,NULL,'������ �������� �������� / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (3470,NULL,'������ ��������� ��������',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (3471,NULL,'������ �������������, ��������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3472,NULL,'������ ���������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3473,NULL,'������ ������������ / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3474,NULL,'������ ������������ / �������� �������������',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3475,NULL,'������ �������� / ����������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3476,NULL,'������ ������� ���������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (3477,NULL,'������ ����� / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3478,NULL,'������ ������',2321);
INSERT INTO `natc_clasifikator_prof` VALUES (3479,NULL,'������ �������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (3480,NULL,'������ ������������',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (3481,NULL,'������ ������������ / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3482,NULL,'������ ������������ / �������� �������������',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3483,NULL,'������-�������� ������� / ���������� ���',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (3484,NULL,'�������� �� ����',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (3485,NULL,'���������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3486,NULL,'���������, ������������ ����������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3487,NULL,'���������, ������������� ����������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3488,NULL,'���������, ���������� ����������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3489,NULL,'���������, �������� ����������',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3490,NULL,'���������, ����� �����',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3491,NULL,'���������-��������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (3492,NULL,'���������',4111);
INSERT INTO `natc_clasifikator_prof` VALUES (3493,NULL,'���������-�����������',4111);
INSERT INTO `natc_clasifikator_prof` VALUES (3494,NULL,'����������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (3495,NULL,'�������� / ������e� ���������',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (3496,NULL,'������ / ����������-������� ������������',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (3497,NULL,'��������, ���������� ��������� ����',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3498,NULL,'���������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3499,NULL,'����������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3500,NULL,'���������� / ������ ��������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3501,NULL,'����������, ������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3502,NULL,'����������, ��������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3503,NULL,'����������, �������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3504,NULL,'����������, ��������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3505,NULL,'����������, ������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3506,NULL,'����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (3507,NULL,'���������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3508,NULL,'������� �� ���� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (3509,NULL,'������� �� ���� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3510,NULL,'�������� - ���������, ��������������� �����������',7126);
INSERT INTO `natc_clasifikator_prof` VALUES (3512,NULL,'��������, ������������ ������',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (3513,NULL,'��������, �����������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (3514,NULL,'��������, ���������',7122);
INSERT INTO `natc_clasifikator_prof` VALUES (3515,NULL,'��������, ���������� �������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (3516,NULL,'��������, ������ ��������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3517,NULL,'��������, ������ ���������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3518,NULL,'��������, ����������� ����������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (3519,NULL,'���������� �������',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (3520,NULL,'���������� �����������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (3521,NULL,'���������� �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3523,NULL,'���������� ������� / ������ ��������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3524,NULL,'���������� �������, ����� � ���������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3525,NULL,'���������� �������, ��������� �� ������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3526,NULL,'���������� �������, ���������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3528,NULL,'���������� ����������',7135);
INSERT INTO `natc_clasifikator_prof` VALUES (3529,NULL,'���������� ������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3530,NULL,'���������� ������ / ������ ��������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3531,NULL,'���������� ������, ���������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3532,NULL,'������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3533,NULL,'�������, ����� / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (3534,NULL,'�������, �������������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (3535,NULL,'�������, ��������',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (3536,NULL,'������� (����������) / ������������',7136);
INSERT INTO `natc_clasifikator_prof` VALUES (3537,NULL,'������� / ������������ �� ����������� ����',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (3538,NULL,'���������� (������ �� ������)',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (3540,NULL,'����������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3541,NULL,'����������, �������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3542,NULL,'����������, �������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3543,NULL,'������, ���� / �� ���������',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (3544,NULL,'��������� (������) / �������� ���������',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (3545,NULL,'��������� / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3546,NULL,'�������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3547,NULL,'����� / �����������-�������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (3548,NULL,'����� / ������������ �� ��������� �������',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (3550,NULL,'��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3551,NULL,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3552,NULL,'�������� ��������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3553,NULL,'���������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (3554,NULL,'������������ - ��������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3555,NULL,'������������ - �������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3556,NULL,'������������ / ������ ��������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3557,NULL,'������������ �������� �������',3446);
INSERT INTO `natc_clasifikator_prof` VALUES (3558,NULL,'������������, ����� ������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3559,NULL,'������������, ���������� ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3560,NULL,'������������, ��������� �������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3561,NULL,'������������, �������� ����������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3562,NULL,'������������, ����� ������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3563,NULL,'������������-����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3564,NULL,'������� �� ������ � ���������� / ������������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (3565,NULL,'������� �� �������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (3566,NULL,'������� �� ������, ��������� / ���������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (3567,NULL,'������� �� ������, ������ �� ������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (3568,NULL,'������� �� �������� ��������, ������� � �����',9161);
INSERT INTO `natc_clasifikator_prof` VALUES (3569,NULL,'������� �� ������������� (���������)',9155);
INSERT INTO `natc_clasifikator_prof` VALUES (3570,NULL,'������� �� ����',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (3571,NULL,'������� �� ����',9161);
INSERT INTO `natc_clasifikator_prof` VALUES (3573,NULL,'�������, ���������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (3574,NULL,'�������, ���� ��������� (�����������)',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (3575,NULL,'�������� / ����������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3576,NULL,'�������� / ����������� ������',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (3578,NULL,'�������� �� ������ �� ��������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (3579,NULL,'��������, ������ ����������',3214);
INSERT INTO `natc_clasifikator_prof` VALUES (3580,NULL,'��������, ���������',3214);
INSERT INTO `natc_clasifikator_prof` VALUES (3581,NULL,'��������, ���������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (3582,NULL,'��������, ������������� �������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (3583,NULL,'��������, ������������� �����������',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (3584,NULL,'��������, ������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (3585,NULL,'��������, ���������� ����',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (3586,NULL,'������� (����������) ��������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3587,NULL,'������� ��������, ������������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (3588,NULL,'������� ����������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (3589,NULL,'������� ���������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (3590,NULL,'�����',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (3591,NULL,'�����, �������',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (3592,NULL,'�����-����������',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (3593,NULL,'���������� �� ������� (����� � ����������� �����)',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3594,NULL,'���������� �� ���������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3595,NULL,'���������� �� �������� �� ��������� �������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3596,NULL,'������-��������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3597,NULL,'���������� �� �������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3598,NULL,'���������� / �����',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (3599,NULL,'��������� / �������������� ����������������',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (3600,NULL,'��������� / ��������, �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (3601,NULL,'��������� �� ��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3602,NULL,'���������, ��������� / ����������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3603,NULL,'���������, �������� �� ��������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3604,NULL,'���������, ������������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3605,NULL,'���������, ������ � �������',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3606,NULL,'���������, �������� �����',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3607,NULL,'���������, ���������� / ����������� �����',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (3608,NULL,'��-����������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3609,NULL,'��-��������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3610,NULL,'��������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (3611,NULL,'�����������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3612,NULL,'������� / ����� ���������',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (3614,NULL,'�������, ������������ �����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (3615,NULL,'����������, ���������� �������',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (3616,NULL,'�������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3617,NULL,'�������, ����������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3618,NULL,'�������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3619,NULL,'�������� / ����������� ���������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3620,NULL,'�������� / �� ���������',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (3621,NULL,'�����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (3622,NULL,'�����������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3623,NULL,'��������� �����������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3624,NULL,'��������� �������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3625,NULL,'��������� ����������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3626,NULL,'��������� �������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3627,NULL,'��������� ������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3628,NULL,'��������� ����������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3629,NULL,'��������� �������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3630,NULL,'��������� �����',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3631,NULL,'������-�������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3632,NULL,'����������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (3633,NULL,'��������� ������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (3634,NULL,'������������ ��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3635,NULL,'�����������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3636,NULL,'���������-���������� ����������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3637,NULL,'���������-���������� ��������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3638,NULL,'���������� / �������� �������������',4223);
INSERT INTO `natc_clasifikator_prof` VALUES (3639,NULL,'����������, ��������������� ������������ �����',4223);
INSERT INTO `natc_clasifikator_prof` VALUES (3640,NULL,'������������',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (3641,NULL,'���������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (3642,NULL,'����������� �� ������� / ����������',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (3643,NULL,'���������� / �������������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3644,NULL,'���������� / ������������',7135);
INSERT INTO `natc_clasifikator_prof` VALUES (3645,NULL,'���������� �� ��� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3646,NULL,'������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3647,NULL,'������� / ����������',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (3648,NULL,'�������, ��������� � ��������� �������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (3650,NULL,'������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3651,NULL,'������������ / ������������ �� ������',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (3652,NULL,'������ / �������������� �������������� �������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3653,NULL,'������ / ����������������� �������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3654,NULL,'������ / ������� ������� ���������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3655,NULL,'������ / ������������ ��.����������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3656,NULL,'������ / ������������ �� ������� � ������ ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3657,NULL,'������ / ������������ �� ��������� ���������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3658,NULL,'������ / ���������� �������',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3660,NULL,'������ / ������������ �� ��������� �����������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3661,NULL,'������ / ������������ ������ ���������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3663,NULL,'������ / �������� �������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3664,NULL,'������ / �������� ���������������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3665,NULL,'������ / ���������������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3666,NULL,'������ �� ������������ ����������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3667,NULL,'������, ��������� � ���������� ������',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (3668,NULL,'������, ��������� �� ������������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3669,NULL,'������, �����������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3670,NULL,'������, ����������-������������ ������� (���)',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3671,NULL,'������, �������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3672,NULL,'������, ����-������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3673,NULL,'������, �������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3674,NULL,'������, �������������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3675,NULL,'������, ���������� ��������',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3676,NULL,'������, ������������ �����',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3677,NULL,'������, ���������, �������� �� ����',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3678,NULL,'������, ������������� �������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3679,NULL,'������, ��������� �������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3681,NULL,'������, ����������� �����',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (3682,NULL,'������, �������',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (3683,NULL,'������, ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3684,NULL,'������, �������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3685,NULL,'������, ���������� �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3686,NULL,'������, ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3687,NULL,'������, �������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3688,NULL,'������, ��������������� �������',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3689,NULL,'������, �����',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3690,NULL,'������, ����� ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3691,NULL,'������, ������������� �������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3692,NULL,'������, ����������',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (3693,NULL,'������, ������� ���������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3694,NULL,'������, ���������',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3695,NULL,'������, ����������� �������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3696,NULL,'������, ������� �����������',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (3697,NULL,'������, ���������������� �������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3698,NULL,'������, ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3699,NULL,'������, �������',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3700,NULL,'������, ���������� �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3701,NULL,'������, ������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3702,NULL,'������, �������� ���������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3703,NULL,'������, �������� �������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3704,NULL,'������, ������� / �����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3705,NULL,'������, ������� / ������������� ������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3706,NULL,'������, ������� / �������� �������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3707,NULL,'������, ����������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3708,NULL,'������, ��������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3709,NULL,'������, ����� �� ������� �� �������������� �������',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (3710,NULL,'������, ����������� �������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3711,NULL,'������, �������',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3712,NULL,'������, �����- � �������������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3713,NULL,'������, ������� �������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3714,NULL,'������-����� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (3715,NULL,'������-��������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3717,NULL,'������-�������� / ���������� ������������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3718,NULL,'������-�������� / ����������-������� ������������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3719,NULL,'������-��������, ��������������� ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3720,NULL,'������-��������, ������ � ���������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3721,NULL,'������-��������, ������������ � ��������� �� �����',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3722,NULL,'������-��������, �������� �� �������� �����',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3723,NULL,'������-��������, ��������� ���������� �������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3724,NULL,'������-��������, �������� �����',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3725,NULL,'������-��������, ��������� �e������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3726,NULL,'������-��������, ��������� ����������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3727,NULL,'������-��������, ������� ���������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3728,NULL,'������-��������, ����� ���������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3729,NULL,'������-��������, ������������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3731,NULL,'������-��������, �����',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3732,NULL,'������-��������, ������� ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3733,NULL,'������-��������, ��������, ������ � ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3734,NULL,'������-�������, ����� � �������� �������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3735,NULL,'���������� ��������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3736,NULL,'���������� ����������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3737,NULL,'���������� �����������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3738,NULL,'���������� �����������, ������������� ���������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3739,NULL,'���������� �����������, ������� ����������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3740,NULL,'���������� �����������, �����������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3741,NULL,'���������� �����������, ���������� �����',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3743,NULL,'���������� �����������, ��������� �� ����������',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (3745,NULL,'���������� �������� / �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (3746,NULL,'���������� ����������� / ������ ����������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3747,NULL,'���������� ����������� / ������������',1223);
INSERT INTO `natc_clasifikator_prof` VALUES (3748,NULL,'���������� ��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3749,NULL,'���������� ���������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3750,NULL,'���������� ���������, ����� ������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3751,NULL,'���������� ���������, �����������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3752,NULL,'�������� / ������e� ���������',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (3753,NULL,'�������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3754,NULL,'�������� / �������� � ���������� ������������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3755,NULL,'�������� / ������������ �� ���� � ���',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3756,NULL,'�������� / ������������ �� ��������� ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3757,NULL,'�������� / �������, ��������, ������� � ��������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3758,NULL,'��������, ��������� ��������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3759,NULL,'��������, ���� �����',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3760,NULL,'��������, ������������ ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3761,NULL,'��������, ������� / ������� ������������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3762,NULL,'��������, ������� ����� ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3763,NULL,'��������, ���������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3764,NULL,'��������, ��� ��������� ������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3765,NULL,'������� �� ���������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3766,NULL,'������-����������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (3767,NULL,'����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3768,NULL,'����������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (3769,NULL,'�����������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3770,NULL,'���������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3771,NULL,'�������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3772,NULL,'�������� / �����������-�������� ������������',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (3773,NULL,'��������, �������� ����������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3774,NULL,'���������� / ����� �� ������� ���������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (3775,NULL,'�������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (3776,NULL,'����������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3777,NULL,'���������� / ������ ����������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3778,NULL,'���������� / ������������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3779,NULL,'����������, �����',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (3780,NULL,'�����������',6153);
INSERT INTO `natc_clasifikator_prof` VALUES (3781,NULL,'�������� / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3782,NULL,'���������� / �������������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3783,NULL,'�������',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3784,NULL,'������� �� ������������ ����',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3785,NULL,'����� �������  / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (3786,NULL,'���������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3787,NULL,'������ ���������',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3788,NULL,'��������',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3789,NULL,'������ / �������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (3790,NULL,'����������-����������� / �������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (3791,NULL,'�����������, �������� ����������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (3792,NULL,'����� / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3793,NULL,'�����, ������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3794,NULL,'�����, �������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3795,NULL,'�����, ������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3797,NULL,'�����, ������������ ����������� �� ������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3798,NULL,'��������� �����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3799,NULL,'��������� ������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3800,NULL,'��������� �������� (��� �������� � ����������)',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (3801,NULL,'��������� �������� / ��������������� ����',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3802,NULL,'��������� ������������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3803,NULL,'��������� �����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3804,NULL,'��������� ������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3805,NULL,'������������������',6112);
INSERT INTO `natc_clasifikator_prof` VALUES (3806,NULL,'��������� (����� �����������) / ���',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3808,NULL,'��������� (����� �����������) / ���������',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3811,NULL,'��������� (����� �����������) / ������ ����������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3812,NULL,'��������� (����� �����������) / ������ �������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3813,NULL,'��������� (����� �����������) / ������� ����',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3814,NULL,'��������� (����� �����������) / ������������',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3815,NULL,'��������� (����� �����������) / ��������������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3816,NULL,'��������� (����� �����������) / ���������',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3817,NULL,'��������� (����� �����������) / ���������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3818,NULL,'��������� (����� �����������) / ���������� �����',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3820,NULL,'��������� (����� �����������) / �������� ��������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3821,NULL,'��������� (����� �����������) / ��������� ������',1316);
INSERT INTO `natc_clasifikator_prof` VALUES (3822,NULL,'��������� (����� �����������) / �������',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3823,NULL,'��������� (����� �����������) / ����� ����������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3824,NULL,'��������� (����� �����������) / �����',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3825,NULL,'��������� (����� �����������) / ������ �� ������',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3826,NULL,'��������� (����� �����������) / �����������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3827,NULL,'��������� (����� �����������) / ���������� �������',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3831,NULL,'��������� (����� �����������) / ������������',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3832,NULL,'��������� (����� �����������) / ������������',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3836,NULL,'��������� (����� �����������) / ���������, ����',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3837,NULL,'��������� (����� �����������) / �����������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3838,NULL,'��������� (����� �����������) / �������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3839,NULL,'��������� (����� �����������) / ������ ����������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3840,NULL,'��������� (����� �����������) / �������� ������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3841,NULL,'��������� (����� �����������) / ������� ��������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3844,NULL,'��������� (����� �����������) / ������������',1313);
INSERT INTO `natc_clasifikator_prof` VALUES (3845,NULL,'��������� (����� �����������) / ���������� ����',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3847,NULL,'��������� (����� �����������) / ��������� �����',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3849,NULL,'��������� (����� �����������) / �������� �� ������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3850,NULL,'��������� (����� �����������) / �������� �� ����',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3852,NULL,'��������� (����� �����������) / ������ ����',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3853,NULL,'��������� (����� �����������) / �����',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3855,NULL,'��������� (����� �����������) / �������',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3856,NULL,'��������� (����� �����������), ��������� / ������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3863,NULL,'��������� (����� �����������), ������ ��� / ������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3864,NULL,'��������� / ������ ��������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (3865,NULL,'��������� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3866,NULL,'��������� / �������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3867,NULL,'��������� / ���������',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3868,NULL,'��������� / ������� �������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3869,NULL,'��������� / ����������� �� �������� ��������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (3870,NULL,'��������� / ��������� �������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3873,NULL,'��������� / ������� ������ ����',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3874,NULL,'��������� / ����',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3875,NULL,'��������� �� ������� ����� / ������� ���������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3876,NULL,'��������� �� ������� ��� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3877,NULL,'��������� �� ���������� ����',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (3878,NULL,'���������, ��������� ������� �����',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (3879,NULL,'���������, �������������',1316);
INSERT INTO `natc_clasifikator_prof` VALUES (3880,NULL,'���������, ������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3881,NULL,'���������, ������� (������)',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3882,NULL,'���������, ������ / �����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3884,NULL,'���������, �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3885,NULL,'���������, �������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3886,NULL,'���������, �������, ���������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3887,NULL,'���������, ������� �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3888,NULL,'���������, ��������������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3889,NULL,'���������, ���������, ����',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3890,NULL,'���������, �����',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3891,NULL,'���������, �����',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3892,NULL,'���������� ���� �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3893,NULL,'������� � ����� (������������ �������)',2432);
INSERT INTO `natc_clasifikator_prof` VALUES (3894,NULL,'������� �� ��������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3895,NULL,'�������� ���������',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (3896,NULL,'�������� ��������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (3906,NULL,'������ - ���������� � ��������� �����������',3314);
INSERT INTO `natc_clasifikator_prof` VALUES (3912,NULL,'������ � ����� ����������� / ������ �������',2341);
INSERT INTO `natc_clasifikator_prof` VALUES (3914,NULL,'������ � ����� ����������� / ������������ ��������',2341);
INSERT INTO `natc_clasifikator_prof` VALUES (3960,NULL,'������ � ����� �����������, ����� / ������ �������',2322);
INSERT INTO `natc_clasifikator_prof` VALUES (3961,NULL,'������ � ��������� ����������� / ������ �������',3321);
INSERT INTO `natc_clasifikator_prof` VALUES (3971,NULL,'������ � ��������� �����������, ����������',3311);
INSERT INTO `natc_clasifikator_prof` VALUES (3972,NULL,'������ � ��������� �����������, �������� �����',3311);
INSERT INTO `natc_clasifikator_prof` VALUES (3974,NULL,'������ � ��������� �����������, ������� ��������',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3976,NULL,'������ ��� ������ �����������, ������� ��������',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3978,NULL,'������, ������ � �����',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3979,NULL,'����������',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (3980,NULL,'���������',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (3981,NULL,'���������-������������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3982,NULL,'���������� - ����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3983,NULL,'���������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3984,NULL,'��������� - ���������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3986,NULL,'�����������-���������� / ������������ �� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (3987,NULL,'���������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3988,NULL,'�������, �����������',3227);
INSERT INTO `natc_clasifikator_prof` VALUES (3989,NULL,'�������, �������',3221);
INSERT INTO `natc_clasifikator_prof` VALUES (3990,NULL,'����������� / ������������ �� �������� �������',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (3992,NULL,'������, ���������������-��������������',6131);
INSERT INTO `natc_clasifikator_prof` VALUES (3993,NULL,'������������ / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3994,NULL,'�������������������',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (3995,NULL,'�����',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3996,NULL,'�����, �������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3997,NULL,'�����, ������ ������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3998,NULL,'�����, ��������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3999,NULL,'�����, ������������� � ����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4000,NULL,'�����, ����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4001,NULL,'�����, ��������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4002,NULL,'�����, ����������� ������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4003,NULL,'�����, ������ ��������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4004,NULL,'�����, ������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4005,NULL,'�����, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4006,NULL,'�����, ���������� ������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4007,NULL,'�����, �������������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4008,NULL,'�����, �����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4009,NULL,'�����, ������ �� ������������� �������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4010,NULL,'�����, ������ �� ����������������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4011,NULL,'�����, ������ �� �������� ����',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4012,NULL,'�����, �������������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4013,NULL,'��������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4014,NULL,'�������������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (4015,NULL,'�������� �� ������ / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (4016,NULL,'�������� / ������������ �� ���������� ������',8158);
INSERT INTO `natc_clasifikator_prof` VALUES (4017,NULL,'�����������, �������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (4018,NULL,'������ ���������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (4019,NULL,'������ ��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (4020,NULL,'������ �������������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (4021,NULL,'����������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4022,NULL,'�������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4023,NULL,'�������, ��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4024,NULL,'�������, �����������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4025,NULL,'�������, ��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4026,NULL,'�������, ������ ��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4027,NULL,'�������, ��������',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (4028,NULL,'�������, ��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4029,NULL,'�������, �������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4030,NULL,'�������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (4031,NULL,'���������� / ����������� �� ������� ���������',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (4032,NULL,'���������� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (4033,NULL,'���������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (4034,NULL,'�������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (4035,NULL,'�������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (4037,NULL,'�����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (4038,NULL,'����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4039,NULL,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4040,NULL,'�������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (4041,NULL,'������������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (4042,NULL,'������������ / ����� ��� ������������ �������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4043,NULL,'���������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4046,NULL,'��������� / �����������-�������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (4047,NULL,'��������� �� �������� �� ��������������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (4048,NULL,'��������� �� ����������� ������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (4049,NULL,'��������� �� ���� / ��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4050,NULL,'��������� �� ����� / ������������ �� ������������',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (4052,NULL,'��������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (4053,NULL,'��������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4054,NULL,'��������, ���������������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4055,NULL,'��������, ����',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4056,NULL,'��������, �����',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4057,NULL,'��������, �������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4058,NULL,'��������, ����������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4059,NULL,'��������, �����',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4060,NULL,'��������, �������������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4061,NULL,'��������, ��������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4062,NULL,'��������, ��������� ��������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4063,NULL,'��������-��������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4064,NULL,'��������-�����������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4065,NULL,'���������',5211);
INSERT INTO `natc_clasifikator_prof` VALUES (4066,NULL,'������������ / ����������',7344);
INSERT INTO `natc_clasifikator_prof` VALUES (4067,NULL,'������������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (4068,NULL,'������������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4069,NULL,'���������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4071,NULL,'�����������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (4072,NULL,'������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4073,NULL,'�������, ����������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4074,NULL,'�������-��������� �� ������� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4075,NULL,'��������������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4076,NULL,'��������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (4077,NULL,'�������',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (4078,NULL,'������� / ������� �����',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (4079,NULL,'�������������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4080,NULL,'���������� / ����������-������� ������������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (4081,NULL,'����������, �����������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (4082,NULL,'�������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (4083,NULL,'����������, �������� ����������',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (4084,NULL,'������������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (4086,NULL,'���������',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (4088,NULL,'��������� - ������, ������ / �� ���������',9136);
INSERT INTO `natc_clasifikator_prof` VALUES (4089,NULL,'���������, �������� (��������������) �������',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (4091,NULL,'�����-�������������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4092,NULL,'������������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (4093,NULL,'�����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4094,NULL,'�����������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (4095,NULL,'�����������, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4096,NULL,'��������������� � �����-����������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4097,NULL,'���������������� / ������������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (4098,NULL,'��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (4099,NULL,'�������������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (4100,NULL,'�����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (4101,NULL,'�����',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4102,NULL,'�����, ��������',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4103,NULL,'�����, ������ ��������',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4104,NULL,'�����, ����������� �����',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4105,NULL,'�����, ��������� �����',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4106,NULL,'�����, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4107,NULL,'�����, ��������� (���������)',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4108,NULL,'�����, �����������',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4109,NULL,'�����, ��������� ������� �� ����������',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4111,NULL,'���������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4112,NULL,'���������� �� ��������� �� ��������� �������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (4114,NULL,'������������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (4115,NULL,'��������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (4116,NULL,'������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (4117,NULL,'��������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4119,NULL,'�����������, ������������� �� ���� ���� ���������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (4120,NULL,'�����������������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (4121,NULL,'��������, ������ ��������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (4122,NULL,'���������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (4123,NULL,'����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (4124,NULL,'������������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (4125,NULL,'��������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4126,NULL,'������������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (4127,NULL,'������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4128,NULL,'����������� ��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (4129,NULL,'����������� �����������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (4130,NULL,'��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4131,NULL,'��������, ������� / ��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4132,NULL,'��������, �������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4133,NULL,'��������-��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4134,NULL,'��������-����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (4135,NULL,'�����������������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (4136,NULL,'�������, �������� ����������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (4138,NULL,'����������� / ����������������',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (4139,NULL,'�����������, ����������� ��� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4140,NULL,'�������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4141,NULL,'����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (4143,NULL,'���������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (4144,NULL,'������� / ����������-������� ������������',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (4145,NULL,'������',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (4147,NULL,'������ �� ���� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4149,NULL,'������, �������� / ���������� ���������',9136);
INSERT INTO `natc_clasifikator_prof` VALUES (4150,NULL,'������, ��������������� ���������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4151,NULL,'������, ������',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (4152,NULL,'������, ������� / ��������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4153,NULL,'������, ���������� ����, ����� / �������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4154,NULL,'������, ���������� �� ����� / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (4155,NULL,'������, �������������� � �������� ���������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4156,NULL,'������, ���� � ���',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (4158,NULL,'������, ����� � �������� �����',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (4159,NULL,'��������� ��������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (4160,NULL,'����, ���� ���������� �����',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (4161,NULL,'����, �������� �������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (4162,NULL,'����, ��������� ����� / ����������',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4163,NULL,'����, �������� ����� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4164,NULL,'����, ��������� �������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (4165,NULL,'����, ����� �� ����������� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4166,NULL,'����, ����������� ����� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4168,NULL,'����-����� / �������, �������, ������� ���',2422);
INSERT INTO `natc_clasifikator_prof` VALUES (4169,NULL,'����-�����, ���� ������� �����',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (4170,NULL,'�������������� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4171,NULL,'��������� / ������������ �� ���������� ����',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (4172,NULL,'������',7443);
INSERT INTO `natc_clasifikator_prof` VALUES (4173,NULL,'������ / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (4174,NULL,'���-���������, ���������� ���������� �������',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (4175,NULL,'���-���������, ����� � �������������',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (4176,NULL,'����� �������, ������ �������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (4177,NULL,'����� �������, �������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (4178,NULL,'����� �� ����� ���� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4179,NULL,'����� �� ������ / ��������� ������������',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (4180,NULL,'�����, ����������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (4183,NULL,'�����, ����� ������ / ������� ������������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (4184,NULL,'�����, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (4185,NULL,'��������� (����������)',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (4186,NULL,'��������� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (4187,NULL,'�������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (4188,NULL,'��������, ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (4189,NULL,'��������-��������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (4190,NULL,'��������� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (4192,NULL,'��������� / ���������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (4193,NULL,'������������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4194,NULL,'������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4195,NULL,'������, ������ � �������� �� ������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4196,NULL,'������, ������ � ���������� �� ������ � ����������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4198,NULL,'������, ������ �� ���������� ����������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4199,NULL,'������-�������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4200,NULL,'����������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (4202,NULL,'������ / �������������',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4203,NULL,'������, �������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4204,NULL,'������, ��������',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4205,NULL,'������, ��������� / ��������� ����������',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4206,NULL,'������, �������� �� ����� �� �������� � ���� ����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4207,NULL,'������, ������ ��� 1,5 ����',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4208,NULL,'������, ��� ��������� �� 9 ���������� �����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4210,NULL,'������, ���� ����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4211,NULL,'������, ������� (������ �����)',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4212,NULL,'������, ���������� �����������',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4213,NULL,'������, ��������� ��������� ��� 25 ����',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4214,NULL,'������, �������� ������� ��� ���������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4215,NULL,'������, ������������ ��������� (TIR, �����)',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4216,NULL,'������, ������� ��������� (���. �����������)',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4217,NULL,'������, ���������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4218,NULL,'���������� / ������������',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (4219,NULL,'����������� / ������������ �� ���������� ����',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (4220,NULL,'�������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (4221,NULL,'�������� / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (4222,NULL,'�������� / ���������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (4224,NULL,'������������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4225,NULL,'������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (4226,NULL,'�������',7223);
INSERT INTO `natc_clasifikator_prof` VALUES (4227,NULL,'�������, ����� / ����������',7223);
INSERT INTO `natc_clasifikator_prof` VALUES (4228,NULL,'���������',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (4229,NULL,'�����',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (4230,NULL,'������������',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (4231,NULL,'���������',5146);


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
