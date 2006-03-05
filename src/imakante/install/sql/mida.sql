# MySQL-Front 3.2  (Build 10.2)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;

/*!40101 SET NAMES cp1251 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;

# Host: www.katsarov.net:3307    Database: mida
# ------------------------------------------------------
# Server version 5.0.18-standard

DROP DATABASE IF EXISTS `mida`;
CREATE DATABASE `mida` /*!40100 DEFAULT CHARACTER SET cp1251 */;
USE `mida`;

#
# Table structure for table anlevel
#

CREATE TABLE `anlevel` (
  `id_al` int(10) NOT NULL auto_increment,
  `cod_al` varchar(45) NOT NULL,
  `name_al` varchar(45) NOT NULL,
  PRIMARY KEY  (`id_al`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table anlevel
#

INSERT INTO `anlevel` VALUES (1,'10','������');
INSERT INTO `anlevel` VALUES (2,'20','���� ������');


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
  `id` int(11) NOT NULL auto_increment,
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



#
# Table structure for table ls_n_person
#

CREATE TABLE `ls_n_person` (
  `id_ls_n_person` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `code_ls_n_person` varchar(6) default NULL,
  `egn_ls_n_person` varchar(10) NOT NULL,
  `nlk_ls_n_person` varchar(9) NOT NULL,
  `name_ls_n_person` varchar(45) NOT NULL,
  `comment_ls_n_person` varchar(250) NOT NULL,
  PRIMARY KEY  (`id_ls_n_person`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table ls_n_person
#

INSERT INTO `ls_n_person` VALUES (0,0,'0','0','0','0','0');
INSERT INTO `ls_n_person` VALUES (1,14,'110','7802204448','147855','���� �������','');
INSERT INTO `ls_n_person` VALUES (2,14,'204','7401234649','','Bo BO','qwwqeqwe');
INSERT INTO `ls_n_person` VALUES (5,16,'1731','7712084480','144260224','���� �����','��� ��������');


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
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='�?зчислени болни�';

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



#
# Table structure for table ls_sluj
#

CREATE TABLE `ls_sluj` (
  `Id` int(11) NOT NULL auto_increment,
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
# Table structure for table n_baccount
#

CREATE TABLE `n_baccount` (
  `id_nbc` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned default NULL,
  `code_nbc` varchar(10) default NULL COMMENT 'cod na bankata',
  `name_nbc` varchar(45) default NULL COMMENT 'ime na bankata',
  `account_nbc` varchar(28) default NULL COMMENT 'Bankova smetka',
  `address_nbc` varchar(100) default NULL,
  `id_tbacc` int(11) unsigned default '1',
  `comment_nbc` varchar(250) default NULL,
  PRIMARY KEY  (`id_nbc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='bankovi smetki';

#
# Dumping data for table n_baccount
#



#
# Table structure for table n_casa
#

CREATE TABLE `n_casa` (
  `id_n_casa` int(10) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `code_n_casa` int(11) unsigned NOT NULL default '0',
  `name_n_casa` varchar(40) collate cp1251_bulgarian_ci default NULL,
  `comments_n_casa` varchar(250) collate cp1251_bulgarian_ci default NULL,
  PRIMARY KEY  (`id_n_casa`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_bulgarian_ci COMMENT='kasi';

#
# Dumping data for table n_casa
#

INSERT INTO `n_casa` VALUES (1,13,2,'���� ������ ������','');
INSERT INTO `n_casa` VALUES (2,13,3,'������ �����','');
INSERT INTO `n_casa` VALUES (3,12,4,'���������','');
INSERT INTO `n_casa` VALUES (4,13,5,'KASA 2','');
INSERT INTO `n_casa` VALUES (5,0,6,'','');
INSERT INTO `n_casa` VALUES (6,0,7,'','');


#
# Table structure for table n_contragent
#

CREATE TABLE `n_contragent` (
  `id_contragent` int(11) NOT NULL auto_increment,
  `code_contragent` int(11) NOT NULL default '0',
  `name_n_contragent` varchar(45) NOT NULL default '���� �����',
  `bul_n_contragent` varchar(13) NOT NULL default '0000000001',
  `dan_n_contragent` varchar(11) NOT NULL default '0000000000',
  `address_n_contragent` varchar(35) NOT NULL default '���� �����',
  `id_nm` int(10) unsigned NOT NULL default '0',
  `tel_contragent` varchar(12) NOT NULL default '���� �����',
  `fax_contragent` varchar(12) NOT NULL default '���� �����',
  `email_contragent` varchar(20) NOT NULL default '���� �����',
  `web_contragent` varchar(20) NOT NULL default '���� �����',
  `id_mol` int(10) unsigned NOT NULL default '0',
  `id_oso` int(10) unsigned NOT NULL default '0',
  `flag_n_contragent` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_contragent`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='kontragenti';

#
# Dumping data for table n_contragent
#

INSERT INTO `n_contragent` VALUES (0,105008,'��� ��','115007680','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1,1,'tytr','234','234','dfg',118,'dfg','dfg','dfg','dgf',1,1,0);
INSERT INTO `n_contragent` VALUES (2,105000,'����� ������ ��','115298151�','','����. ����� 4',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3,105001,'��� ��','825154964�','','�����. �.����� 4',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (4,105002,'����-95 ��','825358301�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (5,105003,'��-����� ����� ��','825205775�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (6,105004,'��� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (7,105005,'����-��.��������� ��','825154028�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (8,105006,'*����-�.�������� ��','040617792','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (9,105007,'����� ��������-45 ��','115695786','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (11,105009,'������ ��','825138910�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (12,105010,'�� - ��. �������� ��','825146483�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (13,105011,'����� �� 3','040313298�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (14,105012,'�������-53-�.������ ��','115574308','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (15,105013,'����� - �� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (16,105014,'����� ���������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (17,105015,'��� ��','115031515�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (18,105016,'���� - 2002 ����','115746947','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (19,105017,'����-98 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (20,105018,'�����-����� ������ ��','115769977','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (21,105019,'������ ����','115913114','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (22,105021,'������ ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (23,105022,'������� ���������','115138143�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (24,105023,'����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (25,105024,'���� ������ ��','115080576','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (26,105025,'������ ������� ��','825107103','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (27,105026,'������ ��','115325246�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (28,105027,'������ ����� � ��� ��','825842773','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (29,105028,'���� 4� ����','115151646�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (30,105029,'��� ��','115107678�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (31,105030,'���� ���������� ���','115536955','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (32,105031,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (33,105032,'����� ��','115532387','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (34,105033,'�������� ����','115013086�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (35,105034,'����-��.������ ��','825395132�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (36,105035,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (37,105036,'������� ��������� ��','030242625�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (38,105037,'������-�.�������� ��','040763950�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (39,105038,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (40,105039,'�����-����� ������� ��','825371626�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (41,105040,'����� ��','825059832','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (42,105041,'�������� ��� ����','115901845','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (43,105042,'*������� ��','115127079�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (44,105043,'���-2000 ��','115578000','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (45,105044,'��������� - �� ��','825121793�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (46,105045,'�����-4�-����� ��','115653307','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (47,105046,'��������� - �� �� 2 ��.','825121793�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (48,105047,'����-93 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (49,105048,'�����-88 ��','115817468','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (50,105049,'��������� - �� �� 3 ��.','825121793�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (51,105051,'����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (52,105052,'���������-���� ��','825202359�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (53,105053,'���-91 ��','825004936�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (54,105054,'����� - � ��','825346046�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (55,105055,'����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (56,105056,'���-5-������ ������ ��','040509368�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (57,105057,'������� �����-2000 ��','115588795','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (58,105058,'���-������ � ��� ��','040734201�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (59,105059,'���� ����� ��','825028225�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (60,105060,'������� ����� ��','103073339�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (61,105061,'�����-����� �������� ��','115097547�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (62,105062,'���� ��','115021340�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (63,105063,'�����-2003 ET','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (64,105066,'�������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (65,105067,'����-������ �������� ��','115547663','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (66,105068,'�������� �������� ��','115507170�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (67,105069,'������� ������� ��','115041865�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (68,105070,'�������-���� ������� ��','825335345�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (69,105071,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (70,105073,'��� ��','115332618','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (71,105074,'�����-91 ��','040402195�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (72,105075,'������� ����� ��','115224069�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (73,105076,'��� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (74,105077,'����� �������� ��','115091583','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (75,105078,'*���-71 ��','115161423','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (76,105079,'����-93 ��','115085032�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (77,105080,'����� ��','825058617','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (78,105081,'���� ������������ ��','040469742�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (79,105082,'�������-���� ������ ��','115077384�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (80,105083,'�������-��� ��','825162548�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (81,105084,'������ ��������� ����','115741725','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (82,105085,'������ � �� ����','115667239','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (83,105088,'����-97','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (84,105089,'������� ���','115874647','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (85,105090,'����� ��','040313298�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (86,105092,'*�������-80 ��','825300839�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (87,105093,'��� ����� ��','825232562�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (88,105094,'������� ��������� ��','030242625�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (89,105095,'�������� ��� ����','115901845','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (90,105096,'������ �������� ��','825370524�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (91,105097,'������ ��','825369828�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (92,105098,'���� 2001 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (93,105099,'���-53 ��','825308654�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (94,105100,'��������-� ����','115769429','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (95,105101,'���� ��','115234266','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (96,105102,'��������-26 ��','115078333�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (97,105103,'������-����� ������ ��','825338665�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (98,105104,'���� 2 ���','115615527','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (99,105105,'��������� 44 ��','115261758�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (100,106000,'���-��� ��','125198162�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (101,106001,'�����-97 2 ���','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (102,106002,'�����-75 ��','040634037�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (103,106003,'������� �������� ��','115515007�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (104,106004,'�����-97 ��','115172891','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (105,106005,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (106,106006,'����� ����������� ��','115084051�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (107,106007,'������ ��','115319827','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (108,106008,'���� 94 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (109,106010,'��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (110,106011,'��� - ��.������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (111,106012,'���� ��������-������� ��','825013903�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (112,106013,'������ ��','825337257�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (113,106014,'*����� � ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (114,106015,'���������� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (115,106016,'������ 2� ��','825051430','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (116,106017,'������� �������� ��','115673548','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (117,106018,'������ ��','825353884�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (118,106019,'������ ���������-���� ��','040846271','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (119,106020,'������ ��','115086077','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (120,106021,'����� ��','115098243','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (121,106027,'������ ��','020483916�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (122,106028,'��������� �������� ��','115254094�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (123,106037,'����-91 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (124,106038,'������� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (125,106040,'������ ���','115175063','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (126,106041,'���� ���������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (127,106042,'���-99 ���','115297544','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (128,106043,'���� �����-����� ��','115593867','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (129,106044,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (130,106045,'������� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (131,106046,'� � � 4000 ��','115198197','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (132,106047,'����� ����� ��','115291462�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (133,106048,'����-99 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (134,106049,'��� ���� ��','825174970�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (135,106050,'��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (136,106051,'�������-2002 ���','115662427','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (137,106052,'����� �������� ��','115277449','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (138,106054,'��������� ������ ��','115018247�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (139,106056,'����� ������� ��','825330661�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (140,106057,'���� - 2002 ����','115746947','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (141,106058,'����-96 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (142,106061,'���� ��','115631645','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (143,106062,'����-2002 ��','115612584','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (144,106063,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (145,106065,'������ ��','115149086�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (146,106066,'������ ������ ����','115631307','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (147,108000,'��.��������� 2 ��','040983473E','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (148,108001,'���� ������� ��','115005762�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (149,108002,'������� �������� ��','040980676�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (150,108003,'����-�-����� ������ ��','825265092�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (151,108004,'*���� �������-89 ��','020987670�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (152,108005,'�������-2003 ����','115779527','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (153,108006,'����-����� �������� ��','120076191','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (154,108007,'�������-������� � ��� ��','825021661�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (155,108008,'����-72-�.�������� ��','115637032','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (156,108009,'����� ��','825382149�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (157,108010,'���-������� �������� ��','825172414','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (158,108012,'���� ���','115615527','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (159,108015,'������� ��','115162354�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (160,108016,'�������� ���� ���','115889720','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (161,108017,'���-��� ��','825169197�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (162,108018,'����� ������-95 ��','825396024�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (163,108019,'������-�� ����','115010446','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (164,108020,'������� ���','825314949�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (165,108021,'�������� ��','115306630','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (166,108022,'����� ������� ��','115124684','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (167,108023,'����� ������� ��','115810251','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (168,108024,'���� ��.����������� ����','115517517','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (169,108025,'�������-2003 2 ����','115779527','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (170,108026,'������� �������� ��','040381331','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (171,108027,'������ ��','115080099','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (172,108028,'����� � ��','040192544�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (173,108029,'����� �������� ��','825295445','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (174,108030,'���-2000-�.���������� ��','160004488','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (175,108031,'������ ������ ��','8252201922�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (176,108032,'����� ��','825075433�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (177,108033,'����� ��','825085920�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (178,108034,'���� ���� ���','115236388','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (179,108035,'�������� ��','115633498','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (180,108036,'������-62 ��','825073697','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (181,108037,'�����-�.��������� ��','115891116','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (182,108038,'��.��������� ��','040983473�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (183,108039,'����� 2000 �� 1','115294943�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (184,108040,'����� 2000 �� 2','115294943�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (185,108041,'����� 2000 �� 3','115294943�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (186,108044,'����-�.����������� ��','115926193','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (187,108045,'����� �������-2001 ��','115657049','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (188,108046,'�������� ������ ��','825303593','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (189,108047,'���-�.������ ��','115111954�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (190,108048,'��������� ��','825147208�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (191,108049,'������� - 01 ����','115631442','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (192,108050,'�������� ��','115259255�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (193,109000,'����-���� ����� ��','115075294�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (194,109001,'������ 90 ����','030236597�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (195,109002,'����� ��������-���� ��','123163484','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (196,109003,'������-������ ��� ��','115219759�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (197,109004,'�������-��� ��','115107151�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (198,109005,'������ ����','115604089','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (199,109006,'��������� �������� ��','115766244','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (200,109007,'�������� ��','115082328�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (201,109008,'���-�. ����������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (202,109009,'����-�� ��','825356275�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (203,109010,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (204,109011,'������� �������� ��','115180418','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (205,109012,'������� ��','115165471','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (206,109013,'�������-���� ���','115644742','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (207,109014,'���������� ����','115800671','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (208,109015,'�������� ��','115146574�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (209,109016,'�. ��������� ��','115119901�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (210,109017,'����� 90 �� 3 ��.','115538187','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (211,109018,'���� 96 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (212,109019,'������-1 ��','825219839�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (213,109020,'�����-6 2 ����','115658838','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (214,109021,'�����-6 ����','115658838','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (215,109022,'����-������ ��������� ��','115820539','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (216,109023,'���-������ ��','115075831�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (217,109024,'������� ��� ��.6','000435554�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (218,109025,'����� 90 �� 2 ��.','115538187','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (219,109026,'������� 71 ��','825385234','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (220,109027,'����� 90 �� 1','115538187','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (221,109028,'����� ��������-70 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (222,109029,'�����-� ��','040204648','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (223,109030,'������ ��','825072652�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (224,109031,'������ ����� ��','115054485�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (225,109032,'��� ��','115054649�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (226,109033,'����� �� ��','825258219�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (227,109034,'��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (228,109035,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (229,109036,'���� ��','040932652�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (230,109037,'�������-���� ������� ��','040236649�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (231,109039,'����� 95 ��','115596105','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (232,109040,'���-�.���������� ��','115818933','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (233,109041,'�������� ��','115522770�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (234,109042,'�������� ��','040247841�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (235,109043,'���� - ������ ��','825219262�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (236,109044,'��� ������-96 ��������� ��','115028348','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (237,109045,'���-�.������ ��','115050736�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (238,109046,'����-22 ��','115563742','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (239,109047,'����-�.���������� ��','115716907','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (240,109048,'����� ������� ��','115681986','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (241,109049,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (242,109050,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (243,109051,'�����-����� ��','825006556','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (244,109052,'������� ��','115042270�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (245,109500,'�����-����� ��������� ��','115667634','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (246,109501,'���������� ��','825016511�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (247,109503,'����� ����� ��','115129863�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (248,109504,'������-92 ��','040611280�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (249,109505,'������� ��','825121341�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (250,109506,'���� ����','115594556�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (251,109507,'����-������ ���','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (252,109509,'������ ��','825285216�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (253,109510,'����� ������� ��','813192373�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (254,109511,'��������� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (255,109512,'������ - � ��','825137445�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (256,109514,'��� - ��. ������ ��','825189463�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (257,109515,'����� ��','115015393�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (258,109516,'���� 83 ��','115233132�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (259,109517,'����-� ��','825118174�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (260,109518,'��.������- �������� ��','825134777�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (261,109519,'������ ��','115080099','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (262,109520,'������ ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (263,109521,'����� ��','825384143�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (264,109522,'����� 2 ��','825384143�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (265,109523,'������� ��','825031673�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (266,109524,'��������� ��','115548498','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (267,109525,'����� �������� ��','825128706�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (268,109526,'���-99 ���','160000372','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (269,109527,'����� ��','825198583�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (270,109528,'��� - ���� ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (271,109529,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (272,109530,'����� 92 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (273,109531,'��� ��','825282088�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (274,109532,'����� - 97 ����','115123166','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (275,109533,'����-� ��� 1','825017289�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (276,109534,'� � � ��','825112100�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (277,109535,'���-��� ��','825124444','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (278,109536,'�������� �������� ��','115029652�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (279,109537,'����� ���� ��','825110686�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (280,109539,'�� ��-2003-�.����� ��','115769817','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (281,109540,'������ ���','160001759','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (282,109541,'����� ��������� ��','115088815�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (283,109542,'����� �������� ��','825146241�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (284,109544,'������ ������ 82 ��','825094570�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (285,109545,'����� ������� ��','115117366�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (286,109546,'���-10 ��','825202341','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (287,109547,'������ ��������� ��','115297551','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (288,109548,'������ 21 ��','825263725�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (289,109549,'���� ��','115237440�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (290,109550,'�����-2003 ����','115879758','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (291,109551,'���� ����� ��','115580574','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (292,105106,'��������-��.������ ���','115545687','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (293,105107,'�������-2001 ��','11559794�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (294,105109,'����� ��','115348565','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (295,105110,'���� ��� ����','825335181�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (296,105113,'����� ��','825453776','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (297,105114,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (298,105115,'��� - ��.�������� ��','040402408�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (299,105116,'�����-��������� ������ ��','115131001�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (300,105117,'������� ������� ��','040900801','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (301,105118,'���-���� ��','825074429','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (302,105120,'����� � ������ ��','825371188�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (303,105122,'�����-����� ������� ��','825371626�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (304,105123,'��.��������-��-�-�� ��','825187569�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (305,105124,'���-������ � ��� ��','040734201�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (306,105125,'��������� ������ ��','115177687�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (307,106067,'����-���� ���� ��','825193369','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (308,106068,'������� ��','82532465�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (309,106069,'���� �������� ��','115281650�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (310,106070,'���-92 ���','115329981�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (311,108052,'��� ������-94 ��','115256120�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (312,109054,'4444-������� ������ ��','115272313�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (313,109055,'�����-������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (314,109056,'��������� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (315,109057,'������-� ��','825307673�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (316,109059,'���-��. ������� ��','115788550','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (317,109060,'����-2002 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (318,109063,'��. ������������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (319,109064,'��-�� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (320,109065,'������ ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (321,109066,'���� ��','115814283','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (322,109067,'������� ��','825011172�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (323,109068,'������ ��','040240423�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (324,109069,'������ 2 ��','040240423�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (325,109071,'������� ��','115112999�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (326,109072,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (327,109073,'�������� �������� ������� ����','000646284�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (328,109074,'�������� �������� ������� ����','000646284�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (329,109075,'����� ������� ��','040441322','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (330,109077,'����� ��','825393551�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (331,109552,'������ ����','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (332,109553,'����-96 ��','115002047�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (333,109554,'����-� ���� 2','825017289 �','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (334,109555,'����-� ���� 3','825017289�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (335,109556,'����� ��','040168187','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (336,109557,'���� 2 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (337,109558,'�������-90 ���','040441117','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (338,109559,'���� ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (339,109560,'������-99 ��','115318426','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (340,109561,'�������-3 ��� 2','825341362�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (341,109562,'������ ��','115005278�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (342,109564,'����-�.�������� ��','115603432','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (343,109565,'�������� �� ���','115818381','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (344,109566,'��� ���������� ���','115161633�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (345,109567,'���������� ��','115018471�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (346,109568,'��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (347,106071,'����� ������� - 79 ��','825132715E','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (348,106072,'����-���� ���� � ��� ��','020363952�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (349,106073,'����� �� ���','115039241�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (350,106074,'����� ������� ���','115340814','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (351,106075,'����� ������� ���','115340814','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (352,109569,'����� �������� 2 ��','825128706�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (353,105130,'������ 90 ��','825166824�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (354,105131,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (355,105132,'������� �������� ��','115330396�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (356,109078,'������ ���� ����','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (357,109079,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (358,108054,'����-�.����������� ��','115003875�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (359,108055,'������� �������-99 ��','115306356�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (360,108056,'����-18 ��','020467805�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (361,108057,'����� ��','115087179�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (362,108058,'������ ��','115337330','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (363,109571,'�������� �������� ��','115537772','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (364,109572,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (365,109573,'����� �� ���','115039241�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (366,109574,'������� ��','115639784','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (367,105134,'���-�.������� ��','115761261','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (368,105133,'������ ��','825263725�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (369,106076,'��-�������� ��','825127401�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (370,106077,'��������� ������� ��','825319024�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (371,109081,'������ ��','115076460�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (372,109082,'����� ��','831233213�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (373,108060,'�������� ��','825203337','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (374,106078,'������ ����','115335938','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (375,109800,'���� ���','115534826','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (376,109575,'���� ������� ��','115059653�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (377,105135,'������� ���������-���� ��','825129077�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (378,105136,'����-2 ��','825202409','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (379,106079,'������� ����������� ��','115600297','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (380,108061,'���� ����� ��','116831180','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (381,109083,'���������-�������� ������ ��','115793743','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (382,109084,'*���� ��','115238179�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (383,108062,'����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (384,108063,'�������','115208150�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (385,108064,'����-7 ��','115127620','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (386,105137,'�����-96 ���','115036964','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (387,105138,'���� ��','1153322970','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (388,109085,'������ ��','115100300�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (389,109086,'������ ��','115689082','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (390,109087,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (391,109088,'*���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (392,109089,'�������-98 ��','115217473�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (393,109090,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (394,109091,'����','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (395,109092,'�������� ������ ��','825233098�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (396,109576,'��� ��','115089059�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (397,109093,'������-2002 1 ����','115651997','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (398,109094,'�� - ������ �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (399,109095,'�������-������ ����� ��','825217902�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (400,109096,'����-�.��������� ��','115809140','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (401,109097,'������� ��������� 97','115149353','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (402,109577,'��� ������ ���','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (403,108065,'����-�.��������� ��','115034438','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (404,108066,'����� ��������-���� ��','040355500','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (405,109578,'��� ��','115571237','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (406,109579,'������ ��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (407,109580,'������ ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (408,109581,'����-������ ���� ��','115520577','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (409,106080,'�������� ������ ��','115335532','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (410,109098,'�.�. - ���� ������� ��','115596774','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (411,108067,'����� ��','015087065','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (412,109099,'������ 2002 2 ����','115651997','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (413,109100,'���� ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (414,108068,'���� ��','825084163','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (415,109582,'�������� ������ ��','115256960','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (416,109101,'�.�.-���� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (417,109102,'���-����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (418,108069,'����-63 ��','115168446�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (419,108070,'������-�.������ ��','825340214�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (420,108071,'���� ��','115275478�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (421,106081,'����-�.������� ��','115128761�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (422,109583,'����� ������� ���','115340814','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (423,108072,'13�3 ��','825128108E','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (424,108073,'����-��.��������� ��','115171741�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (425,108074,'�������� ��','115074833�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (426,108075,'*����-�.��������� ��','115655094','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (427,108076,'����� ��','115630461','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (428,109103,'� � �-2002 ���','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (429,109104,'�������� �������� ������� ����','000646284�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (430,106082,'���� ������-����� ��','115263961�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (431,106083,'����-�.�������� ��','115508742�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (432,109584,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (433,108077,'������� ��������� ��','825332872','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (434,108078,'��-��-2002 ��','115746416','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (435,106084,'�������-�.�����-��.������ ��','115162354�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (436,109105,'��� �� ���','020366759�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (437,109585,'������ ���� ��','825183147�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (438,106085,'�.�.-���������� ��������� ��','115520221','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (439,108079,'������ ��������� ��','115624444','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (440,107000,'����-77 ��','115815773','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (441,107001,'����� ���������� 98 ��','115213813�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (442,107002,'��������� ��','825382925�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (443,107003,'������ �������� ��','115142437','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (444,107004,'����� � ������ ��','825371188�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (445,107005,'����� ������� ��','115024684�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (446,107006,'����� ��','115233709�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (447,107007,'��������� - ��. ������� ��','115265984','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (448,107008,'����� ���','115104963�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (449,107009,'����� ��������� ��','830102905','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (450,107010,'��� - �������� ������� ��','020368981','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (451,107011,'������� - 77 ��','825114279�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (452,107012,'����� ����� ��','115003213�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (453,107013,'��� - 97 ��','115182702�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (454,107014,'������ - 40 ��','115007680','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (455,107015,'���� ��','825250140�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (456,107016,'������ ��','115547631','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (457,107017,'�����-66-�.�������� ��','115787758','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (458,109586,'���-�.������� ��','115349546','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (459,107018,'������ ��','115218598�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (460,107019,'������ ��','825172026�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (461,107020,'���� - ������� ������ ��','825142848�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (462,107021,'��� 15 ��','825106290�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (463,107022,'�������� ��','115601050','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (464,107024,'����� ������ ���','115168542�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (465,107025,'���������� ��','825111137�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (466,107026,'���� - 4 ��','115524084�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (467,107027,'��� ��','825267392�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (468,107028,'��� - 94 ��','825265669�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (469,107029,'����� ��������� ��','115615178','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (470,107030,'�����-�.�������� ��','112038522�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (471,107031,'������ ��','825154918','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (472,107032,'���� ����� - 93 ��','040838082�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (473,107033,'�������� ������ ��','115104493','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (474,107034,'������ ����� ��','040681001�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (475,107035,'������ - 91 ��','115801154','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (476,107036,'������ ������ ��','115035855�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (477,107037,'��� ��','115328096','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (478,107038,'*���� 999 ��','020469884�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (479,107039,'����� ��','825123538�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (480,107040,'������� ��','115052979','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (481,107041,'��� ��','825178335�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (482,107042,'����� �.�.��','825195788�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (483,107043,'���� ��','115071335','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (484,107044,'������ �������-99 ��','115504219','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (485,107045,'������ 99 ����','115299520','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (486,107046,'���� ����� ��','825131232�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (487,107047,'���-�� ����','115744803','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (488,107048,'�.������-�.������ ��','825033237','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (489,107049,'����� ������� ��','825176505','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (490,107050,'�� ��� ��','115344232','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (491,107051,'�������� ���� ��','825192203�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (492,107052,'������ �������-� �� 1','115246233�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (493,107053,'�������� ��','040646630�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (494,107054,'����� ��','825354477','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (495,107055,'������� ���','115090129','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (496,107056,'�������� �������� ��','115739119','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (497,107057,'�����-���� ��������� ��','115650745','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (498,107058,'���-90 ��','825016753�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (499,107059,'���� ���� ��','825147788','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (500,107060,'����������� �.�. ��','112028791�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (501,107061,'������ �. �. ��','112072485�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (502,107062,'������� - 3 - �. �������� ��','040023569�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (503,107063,'������ ������ ��','040364741�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (504,107064,'������ ��������� ��','825206521�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (505,107065,'����� -1710 ��','115095021�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (506,107066,'������ 2000 ��','115254703�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (507,107067,'��� ���� ��','825066973','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (508,107068,'������ 3 ���','115102936','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (509,107069,'���� - 90 - �. ������ ��','112085917�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (510,107070,'������ ��������','825119041','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (511,107071,'���� ���','825141172','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (512,107072,'������ �a����� ��','115322451�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (513,107073,'������ ������� ��','825139147�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (514,107074,'���� 61 ��','825136635�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (515,107075,'������� - �. �. ��','825160077','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (516,107076,'�� ��� ��','115288506�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (517,107077,'��� �������','000471753�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (518,107078,'������ ���','825266244','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (519,107079,'���� 3D ��','115064789�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (520,107080,'������ - ����� ������� ��','805280486�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (521,107081,'������� ��','115624693','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (522,107082,'����� ��������� ��','830102905','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (523,107083,'����� ��','120523386','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (524,107084,'������ ��','12003439�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (525,107085,'�����������-39 ����','120552377','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (526,107086,'��� ��','830141025','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (527,107087,'������ ����� ��','830164020�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (528,107088,'����� ������� ����','120013497�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (529,107089,'����� ���� ����','120506216','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (530,107090,'��������� ��������� ��','830199199','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (531,107091,'������� ��','830164102�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (532,107092,'������� - 92 ��','120049301�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (533,107093,'����� - �� ��','830129432','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (534,107094,'������� ���','120072727','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (535,107095,'������� ���� ��','115151817�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (536,107096,'������ - 90 ��','825109143�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (537,107097,'������ ��','825295464�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (538,107098,'����� ��','115345918','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (539,107099,'���� ����� - �� ��','115084603�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (540,107100,'����� ���','1153440732�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (541,107101,'���� ���','825141172','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (542,107102,'����� - 96 ��','115027068�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (543,107103,'������ ��','040410879','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (544,107104,'����� - �. ����� ��','830127901','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (545,107105,'��-96 ��','115103256','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (546,107106,'������ ����� ���','120053004�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (547,107107,'������� ����','115169587�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (548,107108,'����-���� ��������� ��','825363832','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (549,108080,'������ ��','115147135�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (550,108081,'������-90 ��','115102460�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (551,105139,'���� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (552,109587,'�������� ������� ��','825148527�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (553,107109,'1- ��������� ����� ����','115283338�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (554,107110,'���������-97 ��','115809400','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (555,107112,'���-�.������ ��','825161745�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (556,109106,'������ �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (557,108082,'������ ��','115771177','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (558,109588,'����� ����� ��','825107078�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (559,109589,'������ ��','115261142�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (560,109801,'����-�.������� ��','115615979','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (561,109802,'�����-2002 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (562,109803,'���� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (563,109804,'����� ��','115300734','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (564,109805,'������� ������� ��','115227738�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (565,109806,'����-�.������ ��','825099350�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (566,109807,'������ ������-2001 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (567,109107,'*���������� ������� ��','040240633�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (568,108084,'���� ��','115351198','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (569,108085,'������ ����� ��','825180514�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (570,106086,'���� ����������� ��','115098930�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (571,106087,'������-2002 ����','115753250','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (572,105140,'������-��������� ����������� �','115534185','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (573,107111,'������ ���� ��','115783343','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (574,107113,'����� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (575,109808,'����� � ������ ��','030429952�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (576,108086,'����-���� ��������� ��','115774611','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (577,109590,'�������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (578,109809,'���� 13 ��','115327158�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (579,109810,'����-99-���� ��������� ��','115599382','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (580,109811,'������-74 ��','829316850�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (581,109812,'������ �������-������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (582,109813,'�.�.�.�.-44-��.�������� ��','115607224','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (583,105141,'�����-97 ����','115123166','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (584,107114,'��������-91 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (585,107115,'������-90 ��','825109143�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (586,107116,'���� ���� ��','020993513�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (587,107117,'������-91 ��','115184030�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (588,107118,'�������-77 ��','115003195�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (589,107119,'����-4 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (590,107120,'���-15 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (591,105142,'��������-2003 ��','115797485','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (592,106088,'�����������-���� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (593,109814,'����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (594,109815,'�����-90 ��','040607360','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (595,109816,'����-876-����� ��','825100607�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (596,109817,'����� ���������-2001 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (597,106089,'���-���-3-11 ��','825123292','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (598,106090,'�������-�������� � ��� ��','115191014�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (599,108087,'�����-� ��',' 115151443�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (600,109591,'������-� ��','825383347�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (601,107121,'�������-91 ��','825256780�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (602,107122,'��������� ��','115540380','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (603,109592,'����-95 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (604,109593,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (605,108088,'����� ��','115349910','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (606,108089,'����� ������ ��','825390594','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (607,107123,'������� ����� 90 ��','115049591','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (608,109818,'������ �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (609,109819,'������� ��','825100728�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (610,109820,'������� ��','115306178','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (611,109821,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (612,109822,'������ ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (613,106091,'����-68 ��','825296262�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (614,107124,'�.�.�.�.-44 ��','115607224','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (615,107125,'����-�.������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (616,107126,'������ ��������-�� ��','825080670','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (617,107127,'��������� ��������� ��','825029544','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (618,107128,'������ �������-� �� 2','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (619,109594,'����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (620,109823,'����-����� ������� ��','115615979','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (621,109595,'������� ��','115189262�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (622,106093,'������� ���','000435554�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (623,109108,'��� �� ��','115798797','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (624,106094,'������ 6 ��','115231494�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (625,106095,'�����-98-�.������� ��','115208199�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (626,106096,'���� ���������� ��','825301115','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (627,106097,'������� �������-98 ��','1152349624','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (628,109824,'������� ��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (629,109825,'���- ���� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (630,108090,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (631,107129,'����-2000 ��','825054330�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (632,106098,'������� ���','000435554�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (633,109596,'���� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (634,109109,'����-7 ��','115510587','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (635,109826,'�������� �������� ��','115057410','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (636,107130,'����� � ���-�.����� ��','112595375','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (637,109110,'���������������-2000 ��','115512630','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (638,108091,'����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (639,109827,'����-���� ��','825375749','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (640,109828,'������ �������� ��','115051037�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (641,107131,'��� ��','115240436�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (642,107132,'����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (643,107133,'��� �������� ��','115007680','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (644,109829,'���� ������� ��','115319325�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (645,106099,'������� ��� ��','000435554�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (646,109830,'����� �������� �� *','115151856�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (647,109597,'������ ������� ��','115097006�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (648,109598,'����-95 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (649,109831,'������ �������� ��','825099133E','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (650,109832,'������ ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (651,105143,'������ ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (652,109833,'���� ��','825229491�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (653,109834,'���-99-������ �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (654,107134,'��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (655,105144,'������ ������� ��','115780443','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (656,106100,'�����-13 ��','115753268','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (657,106101,'����� ��','040880081�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (658,109111,'����� ������ ���','115168542�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (659,109112,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (660,108092,'*����� ��','040192964','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (661,108093,'�������-������ ������-55 ��','115048660�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (662,108094,'��� ��','115081678�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (663,108095,'������ ��','115657800','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (664,107135,'�������-��.������� ��','108060363�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (665,109601,'���� ��','115773514','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (666,109602,'����-68 ��','040951347�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (667,109603,'�����-������ ����� ��','115149392�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (668,109604,'�� ��� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (669,109605,'�����-45-�.�������� ��','115766408','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (670,108096,'������-����.������','115647806','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (671,108097,'����-��.������ ��','115258089','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (672,106102,'����� ����','115606866','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (673,106103,'����� ��','115500980','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (674,108098,'��������� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (675,109113,'���-�.������ ��','020987407�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (676,108099,'������ ��','040240423�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (677,108100,'��������� ��','825393527�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (678,107136,'���� ������ ����','112595756','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (679,105145,'����� ����� ��','115054663','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (680,109606,'������ ������� ��','825006652�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (681,104001,'����-63-����� ������� ��','115185463�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (682,104002,'����-�.������� ��','115151361','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (683,104003,'���-53 ��','825097125�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (684,104004,'����-73-�.���������� ��','115553659','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (685,104005,'�������� ��������-�� ��','115534598','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (686,107137,'����-��-�.����� ��','115788237','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (687,104006,'���� �������-69 ��','825139229�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (688,104007,'�.���������-48 ��','825066368�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (689,104008,'����-92 ��','825009310�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (690,104009,'�����-�.������ ��','115593244','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (691,104010,'�������-������ �������� ��','115608080','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (692,104011,'����� �������-43 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (693,109607,'���-������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (694,109608,'�������� ������� ��','115777408','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (695,104012,'�������� �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (696,104013,'�������-69-�.������� ��','825101470�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (697,104014,'����-����� ����������� ��','040170494�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (698,104015,'�������� ����������-���� ��','115606186','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (699,104016,'������ ������ ��','115321326','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (700,106104,'������ ��','825397635�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (701,106105,'������-�.�������� ��','115525396','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (702,104017,'����� �� ��� ��','115762889','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (703,104018,'��-��-��-�.������� ��','115756289','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (704,104019,'����� �������-78 ��','115263296�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (705,104020,'������ �����-����� �������� ��','115841782','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (706,104021,'����� �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (707,104022,'����-���� ������� ��','115690743','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (708,104023,'����-63 ��','115221740�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (709,109115,'����-����� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (710,109116,'���� 97 ���','115153501','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (711,104024,'���� ������ ��','825335078','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (712,104025,'���.��������-������� ��','115628414','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (713,104026,'�����-56 ��','040607435�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (714,104027,'����� ��','825127383','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (715,104028,'����-56-91-������� ��� ��','030246310�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (716,104029,'���� ����� ��','115100559�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (717,104030,'������-57 ��','115048653','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (718,104031,'������ ����� ��','128030819�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (719,107138,'�������� ������ ��','115276315�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (720,105146,'����-61 ��','040682893�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (721,108101,'����-68 ��','825296262�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (722,105147,'����-����� �������� ��','115649127','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (723,104032,'�����-� ��','825102113�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (724,104033,'������-�.������� ��','115756823','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (725,104034,'������� ����� ��','825128115�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (726,104035,'������-52 ��','115147943','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (727,109117,'����� �� ����','83623625�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (728,109118,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (729,106108,'���� ���','115163246�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (730,106109,'���� ���','115163246�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (731,108102,'���-���� ��','040385536�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (732,108103,'����-88 ��','115248846�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (733,104036,'��������� ������ ��','825327684�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (734,104037,'�����-�.�������-2000 ��','115554008','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (735,104038,'������-71 ��','115085388�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (736,104039,'������ ��','825018423�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (737,104040,'����� ����','115569510','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (738,104041,'����� ��','115350452','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (739,104042,'������-�.������ ��','825104089�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (740,104043,'*����-�.���������� ��','115343380','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (741,108104,'�������� �������� ��','115760647','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (742,105148,'����-��.������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (743,108105,'�����-�.��������� ��','115766753','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (744,109119,'������ ��','825130803�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (745,104044,'���� ������� ��','115756296','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (746,104045,'�������-95 ��','115082796�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (747,104046,'���-�������� ������� ��','115312448�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (748,104047,'����� ���������� ��','115351981','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (749,104048,'���� ��','040438241�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (750,104049,'��� ��','825216864�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (751,104050,'���� ��','115551238','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (752,104051,'������ ������ ��','115321326','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (753,109120,'���� ��','102671216','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (754,104052,'���99-������ & ��','040735602','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (755,104053,'�������� ��������� ��','040917957�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (756,104054,'������� ��','020362268�1','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (757,104055,'���-27 �������� ������� ��','825129649�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (758,104056,'�.�.-����� ����� ��','040495783','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (759,104057,'����-88 ��','115065019E','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (760,104058,'����-�� ��','115759043','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (761,104059,'��������-6 ��','825120136�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (762,104060,'���� ������� ��','115756296','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (763,104061,'�.�������-90 ��','115093122','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (764,104062,'������ �������� ��','115045988�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (765,104063,'�.���������-������ ��','115322905�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (766,107139,'������-2000 2 ��','115254703�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (767,104064,'���� ��','115212775�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (768,104065,'��� ��','825097164�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (769,104066,'����-�.�������� ��','115803600','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (770,104067,'���� ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (771,104068,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (772,109610,'���������-�.������ ��','825170819�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (773,104069,'�������� ��','825134940�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (774,104070,'�����-�.����� ��','115141381�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (775,104071,'������� ������� ��','825089210','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (776,104072,'������� ��','020486702�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (777,104073,'��-������ 3 ��','825087298�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (778,104074,'�.��������-94 ��','825303479','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (779,104075,'����� ��','040148512�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (780,104076,'����� ������ ��','115731414','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (781,104077,'��� �������� ��.93','000435892�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (782,104078,'���� ����� ��','825026701�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (783,104079,'����-������ ������ ��','115056874�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (784,104080,'����� ������-������ ��','825106485','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (785,104081,'����� �����-������ ��','115794158','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (786,107140,'����-�.�������� ��','115799828','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (787,107141,'��������� ������� ��','825386311','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (788,103501,'�����-����� ������ ��','115561823','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (789,103502,'������ ��','115113478�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (790,103503,'������ �������� ��','115173849�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (791,103504,'���� ���','825141172','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (792,104082,'����� ��','825107288�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (793,103505,'������-��� ��','115224845�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (794,103506,'����� �������� ��','825065476�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (795,103507,'������ ��','115143350�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (796,103508,'�������� ��','116239587�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (797,103509,'������ ��������� ��','115171524','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (798,109611,'����� ����','115652988','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (799,108106,'�������� ������� ��','115002111','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (800,103510,'������� ��','115067333�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (801,103511,'���� ��','825181406�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (802,103512,'���� 04 ����','115839322','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (803,103513,'*����-�.������� ��','115738412','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (804,104083,'���������� ���','115320936','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (805,104084,'������� ��','115176941�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (806,104085,'��� ��������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (807,107142,'���-1 ����','825083104�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (808,109612,'���� ������� ��','115601456','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (809,105149,'������ ��','825372404�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (810,105150,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (811,103514,'����� ����� ��','040406674�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (812,103515,'����-������� �������� ��','115751865','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (813,103516,'������� ��','825152714�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (814,103517,'������ ������ ��','825177393�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (815,103518,'����� ����� ��','825061823�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (816,103519,'����� �������-55 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (817,103520,'�������-�.������ ��','040994117�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (818,103521,'��� ��������-���� 97 ��','115175348�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (819,103522,'������ ������ ��','825335815�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (820,103523,'�������-�.����� ��','825142428','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (821,103524,'���-60-�.����� ��','030126752','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (822,103525,'������ ��','000435928�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (823,103526,'���� ���� �������� ��','825345670�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (824,103527,'�����-55 ��','825162295','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (825,103528,'�������-�.������� ��','825092904�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (826,103529,'������� ��','115102977�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (827,103530,'����� ������ ��','830133995�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (828,103531,'���������� ��','825375654�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (829,103536,'������� ������ ��','830160805�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (830,103537,'�������-�� ��','825214913�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (831,103538,'�����-� ��','115149385�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (832,103539,'��������� ����� ���','115671892','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (833,103540,'�������� ��','115105816�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (834,103541,'����-�� ��','825106026�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (835,103542,'����-������ ������ ��','115636496','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (836,103543,'*������ ����� ��','115149912�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (837,103544,'������ 1 ��','115320231','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (838,104086,'����� �����-46 ��','115240664','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (839,109121,'������ ������ ��','115797300','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (840,107143,'���� ��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (841,103545,'�������� ������� ��','115343155�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (842,103546,'������ ��','115763376','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (843,103547,'���� ��','115123159�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (844,103548,'�.��������� ��','115093869�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (845,103549,'����� ��','115613191','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (846,108107,'���� �����-����� ��','115818082','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (847,104087,'�������� ������ ��','040079564','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (848,104088,'������ ������� ��','115258160�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (849,104089,'�����-�������� ������� ��','825113280','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (850,103550,'�������-� ��','115543004','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (851,103551,'�����-2000 ��','115531730','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (852,103552,'��.�����-������ ��','825166557','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (853,103553,'����-��� ��','825129418�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (854,103554,'���� ������ ��','040747782','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (855,103555,'�.�������� ��','115820628','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (856,103556,'����-�� ��','115104835','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (857,103557,'������� �������� ��','115025528','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (858,103558,'����-����� ��','115309808�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (859,103559,'�������-����� ������ ��','825118361','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (860,103560,'������-����� ����� ��','825383308�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (861,103561,'����� ��','115065827�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (862,103562,'������ ����','115754516','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (863,106112,'�������� ��','115244584','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (864,109613,'���-85 ��','120522569','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (865,103563,'���� ��','825333508','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (866,103564,'���� ������ ��','115246418�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (867,103565,'����� ��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (868,103566,'������-�.��������� ��','115769532','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (869,103567,'����-95-�.������� ��','115069522�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (870,103568,'�.��������� ��','155257514�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (871,103569,'*����� ����� ��','115222821�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (872,103570,'����� ������ ��','825358073�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (873,103571,'����-22 ��','115530144','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (874,103572,'����-��� ��','040145998�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (875,103573,'�������-������ ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (876,106113,'����� �������� ��','825092719','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (877,105050,'����� � ������ ����','115796579','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (878,103574,'���� ��','115751541','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (879,103575,'������ ��','825351997','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (880,103576,'�������� ����� ��','115132311�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (881,104090,'����-�.�������� ��','825330729�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (882,109614,'������ ���','825310064�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (883,108042,'������ ����� ��','115175169','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (884,108014,'�.������-�.������� ��','115829762','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (885,109615,'������ ������� ��','115582365','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (886,108013,'����-��.�������� ��','825382238','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (887,103001,'������ ����-1 ��','115084222','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (888,103002,'������-��.������ ��','115298767�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (889,103003,'������-�.�������� ��','115784961','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (890,103004,'������ ��','115188897�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (891,104091,'������ ����� ���� ��','115555578','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (892,103577,'����-����� ������ ��','115259650','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (893,103578,'������� ��','115105870�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (894,103579,'�������� �������� ��','115022787','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (895,108051,'����� ������ ��','030124630�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (896,103580,'������� 919 ��','825096219','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (897,103581,'������ ��','115570612','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (898,103582,'�����-���� ��','825122621�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (899,103583,'���� ��','115190745�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (900,103005,'������ 92 ��','115318216�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (901,103006,'����-����� ������ ��','115797670','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (902,104092,'������� ��','825066927�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (903,104093,'���� ��','040821567�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (904,104094,'����� ��','825234339�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (905,104095,'�����-91 �.���������','115177178�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (906,104096,'������-����� ������� ��','115518971','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (907,104097,'�� 32-������ ����� ��','115748196','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (908,108108,'*������ ��','115070614','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (909,103584,'����-����� �������� ��','825229502�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (910,103585,'�������� ������� ��','825283806�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (911,103586,'����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (912,103587,'�.�.�.-�.������� ��','115061907�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (913,109616,'������ ������� ��','831726010�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (914,103588,'�������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (915,103589,'�������� ������ � ��� ��','825093874','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (916,103590,'�������� �������� ��','115152050�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (917,106114,'������� ��������-1 ��','115673548','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (918,105072,'����-�-������ �-�� ��','115635451','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (919,108043,'���-���� ������� ��','112587282','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (920,108053,'�������� ��','115583378','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (921,103591,'������ �������� ��','115064102�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (922,103592,'����� ������� 2001 ��','115614578','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (923,103593,'��� �������� ��','1150643905','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (924,106115,'������ ������� ��','825271289�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (925,106116,'����-747 ��','825075050�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (926,105064,'������ �.�. ��','112074365�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (927,108083,'���� ������ ��','115238133�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (928,108059,'��������� ��','825382284','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (929,108109,'�����-� ��','115783749','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (930,103594,'�������� �� 1','115030858�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (931,103595,'�����-���-�.�������� ��','825070830�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (932,103596,'���� 81 ��','115820425','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (933,103597,'������� �������� ��','825142773�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (934,104099,'���� ��','825120922�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (935,109122,'����-1 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (936,103603,'���-�������� ��������� ��','115507754','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (937,103602,'���� ��-2001 ��','115644404','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (938,103601,'������ ���� ��','115084222','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (939,103600,'����� ������ 2001 ��','115639389','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (940,103599,'������ ��','825257804�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (941,103598,'������� ��','115676109','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (942,103604,'���� ��','115301156�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (943,103605,'�������-48 ��','825009367�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (944,103606,'��� ���� ��','825269518','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (945,103607,'����-55 ��','825189787�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (946,103608,'����-��-39-�.�������� ��','115344780�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (947,103609,'�����-98-�.������ ��','115293453�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (948,103610,'����� ������� ��','115125021','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (949,104100,'������� ��','115255090�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (950,104101,'�����-90 �.������ ��','825107831�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (951,106117,'���������� ����� 95  ��','825387349�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (952,109617,'���-��.������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (953,105065,'������-3-�������� ��','115546091','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (954,108110,'������-��� ��','115004751�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (955,103611,'������-� ��','115122502�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (956,103008,'��������� ������� 95 ��','825388013�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (957,103009,'���������� ��','115083145�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (958,103010,'���� 60-��������� ��','040051347�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (959,103011,'������ ����� ��','115347837�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (960,103012,'�������� ��','115802142','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (961,103612,'������� ����� ��','11557170�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (962,103613,'����-������� ������� ��','115067408�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (963,103614,'������ �������-94 ��','115574190','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (964,103615,'������ �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (965,103616,'������ ��','115241517�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (966,103617,'����� ������� ��','1150535360�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (967,102500,'���� �������� ��','8301003893�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (968,102501,'���������-�.������ ��','830143460','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (969,102502,'������ ����� ��','120069019','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (970,102503,'����-������ ������ ��','120501062','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (971,102504,'���� ������ ��','120012616','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (972,102505,'����-74 ��','830171246�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (973,105086,'��������� ������� ��','825386311','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (974,108111,'������- ������ ������','115647806','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (975,102506,'����� ��','830105221�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (976,102507,'���� � ��� ���������','115833725','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (977,102508,'����-� ��','120504998','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (978,102509,'���� 1100 ��','830128896�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (979,102510,'���� ������� ��','830128394','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (980,109123,'����� ������� ��','115073941�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (981,103013,'�� �������','0004355515','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (982,103014,'������-90 ��','833018394�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (983,103015,'����� ��','825282654�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (984,103016,'������-����� ������� ��','115176489�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (985,103017,'����� ������ ��','825236535�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (986,109618,'��������-� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (987,108112,'�������-�.������ ��','115796807','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (988,105127,'������ ��','115182969�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (989,105126,'���-���-���� ���� ��','115599396','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (990,105119,'����� ��','115344232','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (991,106118,'���������� ��','020348676�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (992,103618,'�������� �� ������','115030858�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (993,103619,'�������� ������ ��','115603521','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (994,103620,'������� 92 ��','115111724�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (995,103621,'����-����� ������ ��','115259650','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (996,108113,'������ ����� ��','115174143�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (997,105087,'����� �������� ��','825020890�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (998,102511,'������� ������ 1 ���','040668331�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (999,102512,'�����-����� ������ ��','830145881�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1000,102513,'������-96 ����','120008183�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1001,102514,'�������-83 ��','040294531�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1002,102515,'������� �������� ��','120059283�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1003,102516,'���� ����� ��','120057771�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1004,102517,'�������� ��','830152616�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1005,102518,'��� �����','000602409�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1006,102519,'��� �����','000602409�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1007,102520,'��� �����','000602409�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1008,102521,'��� �����','000602409�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1009,102522,'����� ����','120551407','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1010,102523,'������� ��','120505349','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1011,102524,'�������-�.������� ��','120045146�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1012,102525,'����-������� �������� ��','120560484','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1013,107144,'������ ����','825346320�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1014,109124,'������� ������ ���','115516689','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1015,103622,'������� �������� ��','115095247�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1016,103623,'�.��������� ��','115093869�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1017,103624,'������� �������� ��','115661752','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1018,103625,'�����-��.������������ ��','115658966','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1019,103626,'�.�.�������','825003268','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1020,103627,'������� ��','115141221�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1021,103628,'���� ����� ��','115326330�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1022,103629,'��-��-96-�������� ����������� ��','115884456','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1023,103630,'������-�.������ ��','126033282�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1024,103631,'���� ������� ���  ��','115345836�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1025,103632,'��������-������ �������� ��','115772101','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1026,108114,'����� ������� ��','115638216','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1027,103018,'������ 90 ��','040124616�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1028,103019,'�������-����� ������ ��','115758151','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1029,103020,'����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1030,103021,'�����-����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1031,103022,'�����-���� ����� ��','020988886','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1032,103023,'����-�������� ����� ��','115291395','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1033,103024,'���� ����������-92','825162530','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1034,103025,'������-���� ������� ��','115085630','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1035,103026,'����-�.������� ��','115761731','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1036,103027,'������� ������� ��','115546682','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1037,103028,'������� ��','825182860�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1038,103029,'������ ���������� ��','115204262�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1039,103030,'������� ��','825152714�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1040,103031,'���� ���������� ��','115507658','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1041,103032,'�.������� ��','115244196�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1042,103033,'������-������� ���� ��','825295826�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1043,103034,'� 2004 ����','115585308','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1044,104102,'����-�.�������� ��','825145591','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1045,104103,'������ ������ �������� ��','855211059�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1046,104104,'���� ��','825310281�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1047,104105,'�����-������� ������ ��','115801994','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1048,103633,'������� ��','115122979�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1049,103634,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1050,103635,'�����-���� ��','115074830�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1051,106022,'������ ��','115070614','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1052,103636,'���� ��� 90 ��','825006660�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1053,103035,'�� ������','000447663�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1054,103036,'������-������ ������� ��','825148623�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1055,103037,'������ ������ ��','825228659�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1056,103038,'����� ��������-����','825261496','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1057,103039,'�.�����������-���� ��','115164533�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1058,103040,'���� ������ ��','825070684','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1059,103041,'������� ��','115336890�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1060,103042,'*������ �������� ��','825038753�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1061,103043,'*����� ����� ��','115790569','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1062,103044,'������ ��','115311257','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1063,103045,'������ �������� ���','115163545','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1064,102526,'���� ��������� ��','830164198�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1065,102527,'���� ����� ��','120065857�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1066,102528,'���������.��','120021152�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1067,102529,'����-����� �������� ��','120520753','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1068,102530,'�����-�.������� ��','830114099�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1069,102531,'���������-7778 ��','120005714�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1070,102532,'������� �������-���� 99 ��','120071365�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1071,102533,'��������-91-�.������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1072,102534,'������� ������� ��','120062081�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1073,102535,'�����-������ �������� ��','120539134','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1074,102536,'����� ���������� ��','120060714�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1075,102537,'����� ������� ��','120027059�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1076,102538,'������-���� ��','020368166','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1077,102539,'*��������� ��������� ��','120001623�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1078,102540,'����� ���','830194394�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1079,102541,'�������-83 �� 2','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1080,106023,'������ ��','115335233','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1081,103637,'����� ��������� ��','115038417','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1082,103638,'������-������ ������ ��','115612730','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1083,103639,'������� ��','115508055','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1084,103640,'������ ������� ��','040599522�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1085,103641,'�����-�.������ ��','115333047','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1086,103642,'����� ������-3 ��','825067437�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1087,103643,'��������� ������� ��','115825493','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1088,105091,'����-5 ��','115252951�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1089,104106,'���� ������ ��','825104388�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1090,103046,'����-������ �������� ��','115256031�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1091,103047,'���� ��','825120531�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1092,103048,'����� �������-58 ��','115326985�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1093,103049,'������-�.�������� ��','115222698�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1094,103051,'����-����� �������� ��','825387609�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1095,103052,'����-����� ����� ��','115175864','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1096,103053,'������-������ ������ ��','115766269','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1097,103054,'��� 98 ����','115276967�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1098,103055,'�����-�.������������ ��','115558720','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1099,103056,'��� ��','115164370�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1100,103050,'�� �������','000435515','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1101,103644,'��� ��','825356364','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1102,103645,'���������� ��','115057556�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1103,109053,'������ ����','115173596�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1104,107145,'����� ���� ���','115676940','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1105,109619,'����� ��','115187286�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1106,109125,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1107,103057,'����� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1108,106024,'������ ������ ��','115063203�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1109,107023,'������-95-�.������� ��','830192742�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1110,103646,'����� ��������� ��','115756556','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1111,103647,'��� ��','040154180�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1112,103648,'�.�������-�.�������� ��','115120095�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1113,108115,'�����-�.�������� ��','115546764','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1114,104107,'����� ���','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1115,104108,'�������� �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1116,102542,'����� �������� ��','120548172','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1117,102543,'���������-����� �������� ��','120509034','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1118,102544,'����-89 ���� ������ ��','120500948','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1119,102545,'����� ��','120023114�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1120,102546,'����-55 ��','120005880�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1121,102547,'���������.��������� ��','120534030','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1122,109126,'���� � ����� ��','825301282','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1123,109127,'����� ��','825174290�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1124,109128,'����� ����������� ��','115647222','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1125,103649,'������-���� ������� ��','115636304','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1126,104109,'����� ������� ��','115670573','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1127,106119,'������ �������� ��','825325590�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1128,105108,'�����-99 ��','115340458','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1129,103058,'�������� ��','115708547','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1130,103059,'������ ������ ��','040448043�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1131,103060,'������� 97-�� ��','115137162�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1132,103061,'��.������-�.����� ��','115274563','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1133,103062,'�����-����� ������ ��','115511770�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1134,103063,'������� ��','115804912','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1135,103064,'������ ��','115619237','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1136,103065,'��� ��� ��','825039467�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1137,103066,'���� ��������� ��','115082090�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1138,103067,'������ ��','825146160�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1139,103068,'���� ������ ��','825187028�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1140,103069,'����-� ��','115142608','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1141,103070,'�����-�.�������� ��','825199895�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1142,103071,'�����-������� ���� ��','825260330','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1143,103650,'����� ����� ��','040168810','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1144,103651,'���-20 ��','115615523','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1145,103652,'������� ������ ��','115011263�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1146,103653,'����� ������� ��','115757156','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1147,103654,'������� ������� ��','115546682','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1148,103655,'�������-96 ��','115033313','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1149,103656,'�.������� 2000 ��','115585048','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1150,103657,'���� ������������-2002 ��','115756435','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1151,103658,'������� ��','825064328�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1152,103659,'������ ���','127013860','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1153,102548,'������ 77-�.������ �.���������','120578646','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1154,102549,'����-����� ������� ��','120544779','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1155,102550,'������ 97 ����','120022090�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1156,102551,'�������� ��������-����-�� ��','830192074�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1157,102552,'����� ���������-45 ��','115317018','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1158,102553,'���� ����','115099053�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1159,102554,'���� ��','825155023�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1160,102555,'������ ������� ��','825177233�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1161,102556,'��������-1991 ��','825091617�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1162,107146,'���-����� ������� ��','115805576','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1163,107147,'������-����� ������� ��','115305763','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1164,107148,'���� ����� ��','115580574','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1165,103660,'���� ��������� ��','115281958','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1166,103073,'���-�.�������� ��','115746633','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1167,108116,'�������� ��','825270520�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1168,107501,'����-����� ������� �� �','115647838','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1169,107502,'�������� �������� �� �','115555119','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1170,107503,'�����-��.���������� �� �','812222408�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1171,107504,'�������-97 ���� �','115163748�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1172,107505,'���� ��� �','115666443','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1173,107506,'�����-�� �� �','825258219','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1174,107507,'����� � �� �','825035957�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1175,107508,'�.����� �� �','115505657�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1176,107509,'���� ������ �� �','115054510�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1177,107510,'������ ����� �� �','825327537�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1178,107511,'������-43-�.�������� ��','833028011','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1179,107512,'������� �����-55 �� �','1223162236','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1180,107513,'�.������-������ ��.������ �� �','123500161','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1181,107514,'������ ������� �� �','115795858','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1182,107515,'����� ����� �� �','825199386�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1183,107516,'������ �������� �� �','825009068�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1184,106120,'����-�.�������� ��','115043898�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1185,109129,'���-����� ������ ��','825293394�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1186,109620,'���-����� ������� ��','115805576','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1187,103074,'������ ��','115527803','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1188,103075,'����-������ �������� ��','115256031�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1189,103076,'������� ��������� ��','825300216','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1190,103077,'���� ����������� ��','115164533','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1191,102557,'��� �����','000602409�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1192,103661,'����-������ ������ ��','115348782','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1193,103662,'���� ������ ��','115173614','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1194,103663,'��������� ��','020484587�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1195,103664,'������� ��','115111280','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1196,109130,'��������� ��','115739862','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1197,102558,'��� �����','000602409�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1198,107517,'��������� ���� �','115599610','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1199,107518,'������ �� �� �','825195480','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1200,107519,'�����-13 �� �','115074064�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1201,107520,'����� �������� �� �','825143359�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1202,107521,'������-�.������ �� �','040689400�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1203,107522,'�����-��������� �� �','115804798','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1204,107523,'����-56-�.������ �� �','040949874','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1205,107524,'����-�.����������� �� �','825105796�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1206,107525,'����� ���������-31 �� �','115135663�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1207,107526,'������-90 �� �','825192616�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1208,107527,'�����-�.������ �� �','825123538�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1209,107528,'�������-�.�. �� �','040088734�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1210,107529,'����� ����� �� �','825215140�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1211,107530,'����� ����� �� �','115340230�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1212,107531,'���������� �� �','115068691','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1213,107532,'����� ������ �� �','825041023','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1214,107534,'��� �� �','825389040�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1215,107535,'���������� ��� �','115102340�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1216,107536,'������-98 �� �','1152391474�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1217,107537,'�����-������ ���������� ��','115769870','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1218,107538,'���-99 ��� �','115297544','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1219,107539,'������ ��-������� ������ �� �','040598541�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1220,109131,'����� ������-2004 ��','115803358','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1221,106121,'����� ��','115064807�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1222,107540,'������ 29 �� �','115112839','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1223,107541,'�������-�.������ �� �','040371952','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1224,107542,'������ ������-97 �� �','115101999�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1225,107543,'����� ������� �� �','115354543','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1226,107544,'*������� ��������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1227,103078,'����-�.����������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1228,103079,'��������� ��','115817753','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1229,103080,'����� ��','115320669','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1230,103081,'����� �������� ��','115652591','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1231,103082,'�����-����� ������ ��','115783172','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1232,103665,'������ ����� ��','040074948�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1233,103666,'���� ��','825260775�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1234,103083,'������ �������-2 ��','115063541�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1235,103084,'*���� � ����� ��','115061782','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1236,102559,'*������� �������-�.������ ��','120049785�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1237,102560,'��� �����','000602409�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1238,109061,'������� ��','115336285','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1239,103085,'������������� ���','115033046�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1240,103086,'���� ��','115802605','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1241,103087,'�.������-���� ��','115181899','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1242,107545,'������ � ���-��.������� �� �','825253318�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1243,107546,'����-����� �������� �� �','115107831�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1244,107547,'���� ��������� �� �','825333643�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1245,107548,'�����-17 �� �','115278608','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1246,107549,'������-���� ������� �� �','115085630','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1247,107550,'����-����� ����� �� �','115224425','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1248,107551,'���� 79-������ ����� �� �','115803835','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1249,103667,'�����-��� 39 ��','825120008�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1250,103088,'��������-������ ������� ��','115566037','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1251,103089,'������-������ ������ ��','115761076','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1252,104110,'��������� ��������� ��','115135738','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1253,102561,'���� ��','825393170�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1254,102562,'�.���������-������ 69 ��','115763586','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1255,102563,'���� ��','115026895�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1256,102564,'����� �������-��� ��','115066516�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1257,102565,'���-���� ��','040008161','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1258,102566,'����� ��','040838506�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1259,102567,'������ ��','825173574�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1260,109038,'������-2 ��','825219839E','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1261,109132,'�������-�.�������� ��','115306826','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1262,109133,'����� ����� ��','825183581�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1263,105112,'������ ������� ��','115233310�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1264,105128,'������ ��������� ��','115774675','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1265,107552,'����� ����� ��','115081062�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1266,107553,'��� ��� �� �� �','825169585','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1267,103090,'������ ������� ��','115793106','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1268,103091,'����-�.��������� ��','115776886','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1269,103668,'����-���� ����� ��','115761724','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1270,103669,'������ ��','115253416�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1271,103670,'������-��.���������� ��','115790971','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1272,103671,'�����-�.�������� ��','115579084','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1273,102568,'���������-������ ������� ��','830114265�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1274,102569,'�.������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1275,102570,'������-�-�.���������  ��','120558191','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1276,103092,'��-51 ��','040804347�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1277,107149,'������ ������-2 ��','115035855�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1278,103093,'�����-��.������ ��','115285887','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1279,103094,'���� ��','020988548�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1280,106122,'����� ������ ��','825057013�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1281,105151,'���-�.�������� ��','825143601�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1282,105129,'������ ��','115511699','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1283,108117,'����-����� ������� ��','825267225�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1284,102571,'����� ����� ��','830156041','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1285,106123,'����-�.�������� ��','115752650','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1286,107554,'��������� ������� �� �','825393455','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1287,107150,'������� ������� ��','115232144�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1288,103672,'����� ��','825147222�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1289,107555,'���������� �� �','825399764�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1290,107556,'������ �����-� �� �','115292892�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1291,107557,'������ �� �','825198245','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1292,104111,'���� ��','825151092','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1293,103673,'����-��.��������� ��','115801542','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1294,103095,'������ ��','115184041','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1295,103096,'*������ �������� ��','825118480','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1296,103097,'��� �������','004435593�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1297,103098,'������ �� ��','115283701�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1298,103099,'����� ��','115082981','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1299,103100,'�����-����� ��������','115505949','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1300,102572,'������ ����� 97 ��','115135982�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1301,102573,'����-2002-�.��������� ��','115750105','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1302,103101,'������ ������ ����','115648071','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1303,107151,'����-����� ����� ��','115339726','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1304,105152,'����� ��','825091161�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1305,102574,'�������-��� ��� ��','825208853','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1306,102575,'������ ���� ��','115764834','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1307,102576,'�.����������-67 ��','115833180','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1308,102577,'�������� �������� ��','825345439�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1309,102578,'����-�� ����� ����� ��','825124800�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1310,107558,'���� �� �','020362964�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1311,107559,'� 2004 ���� �','115585308','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1312,107560,'����� ��-90 �� �','115259675�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1313,107561,'����� ������ �� �','825146960�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1314,107562,'�����-����� ������ �� �','115261295�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1315,107152,'������ ����-2 ��','115783343','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1316,106053,'������ ��','115180733�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1317,109134,'�������� � ��� ��','115159073�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1318,109621,'���������� ������ ����','115135268','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1319,107563,'���� ������ 98 � ��� ����','160001093','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1320,103102,'����-����� ��','1157587771','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1321,103103,'����-����� ����� ��','115347812','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1322,103104,'����-����� ������� ��','115649305','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1323,103105,'�����-91 ��','040005222�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1324,103106,'�����-�.������� ��','115628765','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1325,103674,'������� ���','000435554�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1326,102579,'������ ��������-2000 ��','120510104','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1327,109135,'���-������-����� ��������� ��','115026984�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1328,109136,'�����-������ ��������� ��','825058250','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1329,109622,'����� ������� ��','115799536','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1330,107153,'����-������ �������� ��','115654811','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1331,103107,'���� �-�.�������� ��','115651733','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1332,107564,'����� ��','825133906','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1333,102580,'������-����� ����� ��','8250105975','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1334,102581,'������ ������-���� ������� ��','115330407','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1335,102582,'�������-85 ��','825128962�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1336,102583,'������ ��','825035515','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1337,102584,'������-�.��������� ��','115550264','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1338,102585,'������ ����� ��','115296474�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1339,102586,'������� ��','825154754�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1340,102587,'���� ��','825170675�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1341,102588,'���-� ��','825103083','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1342,102589,'�����-96 �.��������� ��','115568141','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1343,103108,'�����-�.���������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1344,103109,'���� ��','115245370�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1345,103110,'������� ��','825082385�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1346,108118,'������� ������ ��','115338724','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1347,103111,'������-3-�.����� ��','115227389�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1348,103112,'�����-�.�������� ��','115248458','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1349,103113,'�������� ��','115808088','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1350,103114,'������� ��','115130470�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1351,103115,'�����-����� ������ ��','115831852','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1352,103116,'�������� ��','115537690','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1353,102590,'����� �������� ��','120028718','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1354,102591,'������ ����','120539675','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1355,102592,'������� ������������ ��','120043992�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1356,102593,'����� ��','120009029�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1357,108119,'�������� ��','040761508','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1358,105153,'����� ��','825017862�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1359,109137,'������ � ��� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1360,103675,'������ �� ��','040141442�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1361,103676,'����� ����� ��','825191261�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1362,103677,'���-������� ����� ��','040154390','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1363,103117,'����-97 ���� ����� ��','115122242','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1364,103118,'����-������ ������� ��','115016488�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1365,103119,'�������-91 ��','825058097','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1366,107154,'����-������ ������� ��','040704382�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1367,107155,'���-���� ��','115674194','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1368,107156,'����� ��','825393551�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1369,108120,'����� ��������� ����� ����� ��','115828849','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1370,107565,'����� ��� �� �','115008302�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1371,106124,'��� ��������� ��','115051368�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1372,109623,'�������� ��','040609258�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1373,108121,'�����-1 ����','115251924�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1374,108122,'���-��� ��','115618530','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1375,102594,'������ ��','115648502','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1376,102595,'������ �������-��-54 ��','115643284','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1377,102596,'������� �������� ��','115349610','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1378,102597,'�.��������� ��','825359702�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1379,102598,'���� ������ ��','825190654�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1380,102599,'���������-94 ��','120031456','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1381,102600,'���-90 ��','825151021�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1382,102601,'������-2001-�.������ ��','115616440','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1383,103678,'���� ������� ��','115762388','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1384,103120,'�.��������-99 ��','115500188','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1385,103121,'���� ������� ��','8251619663�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1386,103122,'������� ��','115245234�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1387,103123,'������ ��','825123463�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1388,103124,'����-���� �������� ��','115334156','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1389,103125,'��������-90-������ ������ ��','825064470�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1390,103126,'�����-�-������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1391,103127,'�����-45 ������ �������� ��','825140950�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1392,103128,'���� ������ ��','825227939','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1393,103129,'���� �.������� ��','115249979�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1394,104112,'����-����� ������� ��','040821631�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1395,102602,'����� �������-56 ��','115786268','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1396,103130,'����� ��������� ��','115307458�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1397,103131,'�������-56 ��','825069859�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1398,103132,'����-2000 ��','115545954','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1399,108123,'������ ������� ��','825041906�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1400,103679,'��� ��','115156539�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1401,103680,'����-2000 ��','112521574','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1402,103133,'���� �����-2003 ����','115797574','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1403,107157,'������� ����������� ��','115767876','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1404,106125,'�����-�.����� ��','115773349','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1405,107566,'���� �� �','122063680','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1406,103134,'������-��� ����� ��','825388006�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1407,103135,'�������� ��','115034244�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1408,102604,'�����-������� ���������� ��','020595833�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1409,102603,'���-������ ���� ��','120010796�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1410,107158,'���-2-����� ����� ��','040328275','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1411,107159,'������� ��','108060363�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1412,107160,'������ �� ���','115620951','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1413,103136,'������� ��','825237611�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1414,103137,'*������� � ��� ��','115651288','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1415,103138,'����� �������� ��','825038276�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1416,103139,'������ ������� ��','825308914�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1417,102605,'������ ��','115058505','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1418,102606,'����-90 ��','115093456�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1419,102607,'����� ��������� ��','825036001�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1420,102608,'����� ����� ��','115753777','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1421,107567,'�����-���� �������� �� �','115510131','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1422,108124,'�������-777 ��','825064794�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1423,105154,'����-����� ������� ��','115793946','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1424,102609,'����-���-�.������ ��','040702495�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1425,102610,'������ �������-���� ��','115779311','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1426,102611,'�������-56 ��','115227446�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1427,102612,'���� �������� ��','115766988','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1428,102613,'�������� ����������-22 ��','825247137�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1429,102614,'������� ����� ��','030460773�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1430,102615,'������ ������ ��','115143927','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1431,106126,'����� ������� ���-����','115340814','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1432,103140,'�����-�� 58 ��','115185584�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1433,104113,'���-�� ��','825264916','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1434,105111,'����-��.������� ��','040371850','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1435,105155,'����-��.������� ��-2','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1436,103141,'������-96 ��','115031337�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1437,107568,'������� ��������� �� �','825395812','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1438,107569,'������ �������� �� �','115645890','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1439,107570,'������ ������ �� �','123065595','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1440,107571,'�������� �� �� �','825035419�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1441,107572,'*�����-51 �� �','825241942','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1442,109138,'������� ��','115240792�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1443,109139,'������ �������-13 ��','115059482','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1444,108125,'���-�.������� ��','115227695','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1445,105156,'�.�.�-97-������ �������� ��','115148664','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1446,105157,'���� ��','115254272�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1447,105158,'������ ��','115255043�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1448,107573,'����� ���������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1449,102616,'��� �����','000602409�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1450,103142,'����� �������� ��','825107270�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1451,103143,'������-�.���������� ��','115675435','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1452,107574,'�������� �� �+�','825381691','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1453,107575,'������ �� �+�','115131070','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1454,107576,'������ �� �','115630956','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1455,107577,'�������� ������� �� �','115815346','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1456,108126,'������� � ��� ��','112531262','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1457,109624,'���������� ��','115765815','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1458,107578,'��������� �� �','115352492','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1459,107579,'�-94-����� �������� �� �','825235868','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1460,109625,'������ �������-2 ��','825006652�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1461,108127,'13�3-2 ��','825128108�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1462,103681,'������-� 2 ��','115122502�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1463,103144,'����� ���� ��','115675378','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1464,103445,'����-2 ��','115146784�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1465,103446,'*��������-2 ��.������� ��','115566037','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1466,103447,'��������-3 ��.������� ��','115566037','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1467,109626,'���-���� ��','825068974�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1468,107580,'��������� �������� �� �','825263910�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1469,107581,'������ �����-� ��','115292892�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1470,107582,'��� ��-���� ��������� �� �','115812670','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1471,107583,'���-�� ���� �','115095578�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1472,107584,'�������-������� �������� �� �','825013305�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1473,102617,'����� ��','11502839�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1474,107585,'����-���� ������ �� �','115773491','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1475,103448,'������-�.������� ��','115275836�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1476,103449,'����� �������-63 ��','825109136','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1477,103450,'����-����� ������� ��','115536781','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1478,109140,'���-�������� ������� ��','112549029','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1479,105159,'��� ���','825380899','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1480,107161,'����-99 ��','115084973�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1481,103145,'����� ������� ��','825371793�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1482,102618,'�������� �������� ������� ����','000646284�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1483,107586,'�����-����� ������� �� �','115060520�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1484,103682,'������ ����-1 ��','115084222�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1485,103146,'������ ��','115273408�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1486,103147,'����-� ��','825133183','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1487,103148,'��� ����� ���� ����','115776320','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1488,109141,'�������� ��','115040891','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1489,109142,'������ ����','825271024�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1490,109143,'������ ����-������ ���','825329562�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1491,103683,'����� ������-����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1492,103864,'����� ����� ��','115575207','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1493,103685,'������ �������� ��','115577101','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1494,106127,'���� ��','115086515�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1495,108128,'����-����� ������� ��','102855839','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1496,102619,'����-54 ��','120014389�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1497,102620,'����-�.������� ��','120558679','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1498,107162,'�������� ��������� ��','112111116','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1499,104114,'����-���� ������� ����','115535020','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1500,104116,'�����-91-����� ����������� ��','825104228','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1501,104115,'������� �������� ��','825030831�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1502,103149,'�����-�� �.�������� ��','115262080�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1503,103150,'����-2000 2 ��','115545954','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1504,103154,'����-�.����������� ��','115154514�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1505,103155,'����-44-��� �������� ��','115825116','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1506,104117,'����� ������ ��','115306267','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1507,103686,'������� ��������� ��','825155105','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1508,107587,'�������-919 �� �','825096219','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1509,107588,'���-��.������ �� �','825338149�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1510,103451,'�������� ������� ��','825334348�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1511,103156,'�����-86 ��','115519607�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1512,103684,'������-����-�.������ ��','040622693�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1513,105160,'�������� ��������� ��','115253074','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1514,107163,'�����-� ��','825041219�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1515,103865,'������� ������� ��','115151048','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1516,103151,'������� �������� ��','115756727','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1517,104118,'��-����� ����� ��','040591123�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1518,104119,'�����-������ ����� ��','115759068','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1519,104120,'�������-����� ����� ��','825079426','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1520,104121,'����-����� ��� ��','115271528�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1521,104122,'����� ��������-100 ��','115337907','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1522,104123,'����� �������-74 ��','825382327�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1523,104124,'���� ����-2003 ��','115803746','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1524,104125,'���-������ ������� ��','825128873�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1525,107589,'�������-92 �� �','115111724�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1526,107590,'���� �� �','825144824','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1527,107591,'�������-�.������ �� �','040994117�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1528,105161,'��� ��','115129589�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1529,102621,'�����-�.������� ��','106045067�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1530,102622,'������-�.������� ��','301423908','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1531,102623,'������ ����','120544942','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1532,103157,'������-2003-�.���������� ��','115799600','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1533,107592,'������ ������-����� �� �','115733760','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1534,107593,'��� 62-�.������� �� �','115334551','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1535,107594,'��������-93 �� �','115293161�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1536,107595,'���-�.�������� �� �','1155543553','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1537,107596,'������� �� �','115338642','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1538,107597,'���-������ �������� �� �','825369803�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1539,105162,'���� ����','115149232�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1540,108129,'������-���� ������ ��','115140742�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1541,103687,'�����-96 ��','115591827','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1542,104126,'�����-47 ��','825206025�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1543,104127,'�����-66-���� �������� ��','825119903','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1544,104128,'����� �����-����� ��','115334455�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1545,104129,'����� ��������-03 ��','115783756','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1546,102624,'������ ��������-97 ��','115151120�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1547,103158,'������-���� ����� ��','115229899�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1548,103159,'������-�.����� 1 ��','115229899�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1549,103160,'������-�.�����-2 ��','115229899�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1550,108011,'�������� ���� ���','115889720','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1551,107164,'���-����� ������ ��','112547918','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1552,105163,'������� ����','115841362','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1553,103161,'��� 60 �.����� ��','1301126752','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1554,103162,'����-������ ������ ��','115752885','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1555,107598,'��� �� �','825112043','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1556,107599,'����-���� �� �','825215171','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1557,107600,'������ �����-�.������ �� �','1155526929','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1558,107601,'������ �������� �� �','825192986�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1559,104130,'���������-����� ����� ��','108513924','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1560,104131,'�����-������ ���� ��','825369326�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1561,104132,'������� ������ ��','825344013�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1562,107602,'����� ������-2 �� �','825146960�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1563,107603,'�����-������� ����� ��','825362506','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1564,102625,'����� �������-2 ��','830162432','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1565,103163,'�������-��.��������� ��','825003962','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1566,102626,'������-� ��','825016568�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1567,107604,'������ �����-�.������-2 �� �','1155526929','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1568,107605,'�����-�.������ �� �','115327005','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1569,105164,'������� ��','115758176','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1570,107606,'����-����� ����� �� �','825073882','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1571,103164,'����� ���','115028120�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1572,107165,'���-���� ��','115091163','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1573,102627,'���� ������ ��','115005399�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1574,105165,'����-18-�.����� ��','020467805','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1575,105166,'��-�� ���','115851716','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1576,109627,'����-� ��� 5','825017289�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1577,109628,'������� ������ ��','115153088','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1578,109629,'���� 75 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1579,104133,'����� �����-���� ��','825239286�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1580,104134,'����-�������� ����� �� I','115297590E','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1581,102628,'����-��-������ ������ ��','040684296�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1582,109144,'�������-������� ��','831650534�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1583,103165,'�.��������-2 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1584,104135,'������ �������� ��','120012267�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1585,104136,'������� ������ ��','120037402�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1586,104137,'����� �������� ��','120036446�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1587,104138,'���-2001 ���','120537197','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1588,104139,'������ ����� ��','120523265','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1589,104140,'������ ������-2003 ��','115804346','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1590,104141,'�������� ��','830112073','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1591,102629,'���� ������� ��','830151642�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1592,107607,'�����-54 �� �','115126276�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1593,103688,'���� �������� ��','115791678','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1594,104142,'�������� ���  ������','115753492','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1595,104143,'������ ��������-�� �� ��','115753528','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1596,104144,'������-����� ���������� ��','115568878','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1597,104145,'������-��-�.����� ��','115831555','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1598,104146,'������� ��','825011770�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1599,104147,'������ ��������-��� ��','825181840�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1600,104148,'���� ������ ��','115269929','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1601,104149,'����������-90 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1602,107608,'����� ������-���� �� �','825356535�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1603,107609,'���� ������� 21 �� �','115033968','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1604,104150,'���� ������� ��','120013742�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1605,104151,'����� ������� ��','120012751�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1606,104152,'���� ���������-���� ��','114110689�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1607,104153,'�����-57-����� ����� ��','120501963','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1608,104154,'�����-����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1609,104155,'������ �������� ��','120039944�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1610,104156,'����� ����-�.�������� ��','115046015','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1611,104157,'������-�.������� ��','040924745','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1612,104158,'�.������� � �� ��','825125418�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1613,104159,'���-������� ������ ��','115124453�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1614,103452,'������-1 ��','115336577�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1615,102630,'������-����� �������� ��','830136124�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1616,102631,'����-������ ������ ��','120545335','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1617,102632,'����-������ ��','120041756','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1618,102633,'��������� ������ ��','120023107�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1619,107166,'�����-97 ��','115172891','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1620,104160,'����� ��������-39 ��','115215344�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1621,104161,'���98-�.���������� ��','115286722','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1622,104162,'������� ��','825314397�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1623,104163,'����������-90 ��','115250270�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1624,107610,'���� � ����-���� ������� �� �','115808309','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1625,104164,'��� �������� 9','115085445�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1626,104165,'��� �������� 8','115085445�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1627,104166,'��� �������� 18','115085445�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1628,104167,'�.������� ��','115327069','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1629,104168,'�����-97-����.������ ��','115779633','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1630,104169,'������ �������� 83 ��','115241015�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1631,104170,'����-������� ������� ��','115306819�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1632,103166,'���-���� ����� ��','115651669','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1633,103866,'���� ������ ��','115270757�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1634,103689,'������ ��������  ��','115814600','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1635,103690,'����� ��','115085043','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1636,103167,'����� ��������-2 ��','825107270�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1637,104171,'���� ������� ��','120011813','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1638,104172,'�������� ���','120547572','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1639,107611,'��.������ ��','115070920�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1640,103691,'��� ��','115126301','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1641,104173,'���� 2000-��.������-�.�������','115576309','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1642,104174,'�������� �������� ��','115611964','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1643,104175,'��������-�.�������� ��','115655969','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1644,104176,'��� �������� ��.34','115085445','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1645,103692,'����� � ��� ��','825112545�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1646,106128,'������-�� ��','825029665�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1647,107612,'�������-���� ��','825113024�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1648,107613,'����-��������� ��','115784858','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1649,107614,'������-901 ��','825061684�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1650,107615,'������� ��','115131469�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1651,102634,'��� ������ ��','120055448�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1652,102635,'������ ������ ��','830189493�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1653,102636,'��-����� ���','120539700','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1654,104177,'����-�.����� ��','115172163�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1655,104178,'���� ��������� ��','115341325','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1656,107616,'������� 2002 ��','115599592','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1657,107617,'����� �� �','825321356�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1658,104179,'�����-56-������ ������ �� �','825114546','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1659,104180,'��� �������� 29','115085445','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1660,104181,'��� �������� 3','115085445','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1661,104182,'����� ������� ��','825357345','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1662,103867,'��������� ��','115748449','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1663,107618,'���-��� ������ �� �','825342521�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1664,107619,'���� ��������� �� �','830143745','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1665,107620,'����-����� �������� ��  �','120550102','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1666,107621,'����-����� ��������� �� �','830105011�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1667,107622,'��.������-������� �� �','825115317�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1668,107623,'������ ����� �� �','830176001�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1669,107624,'�������-�.�������� �� �','115785052','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1670,107625,'���� �������� �� �','120026046�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1671,107626,'��� �������','000601887','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1672,107627,'������ ������� �� �','830169366','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1673,104183,'��� ��������','115085445','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1674,104184,'��� ��������','115085445','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1675,104185,'��� ��������','115085445','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1676,104186,'����-�.������� ��','825128813�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1677,103693,'������ 95 ����','115808476','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1678,103169,'����� 2003 ��','115793241','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1679,103170,'�����-������� ������ 2 ��','115285887�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1680,107628,'������-����� ������� ��','115176489�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1681,109145,'����-����� ��������-1 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1682,104187,'���� ��','115075691�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1683,103694,'�����-13 ����','115075892�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1684,103695,'����-02 ��','115659064','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1685,103696,'������� �������� ��','115209658�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1686,107629,'������ ��','115258776�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1687,107630,'����-���� ������� ��','115513999','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1688,107631,'��������-�.������� ��','030260726�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1689,107632,'�����-�.�������� ��','120070256�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1690,107633,'��� ��������-63 ��','115116669','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1691,109146,'����-99 ���','115627337','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1692,102637,'������ ��������� �� ��','115062044�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1693,104188,'�.�.�.-������ ����� ��','115814461','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1694,103171,'������� ��','115300595�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1695,103172,'������� 93-�.����� ��','825339685�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1696,103173,'������ ������-76 ��','115510711','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1697,103697,'����-�.�������-1 ��','115067408�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1698,103698,'������ �������� ��','115064102�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1699,103699,'�������� ��','115025829','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1700,103700,'����-�.������� ��','115806226','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1701,107167,'�����-2 ��','825393551�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1702,102638,'�����-60 ��','825033521�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1703,104189,'����� ��','040239862�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1704,104190,'�����-����� ��������� ��','115118347','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1705,107634,'����-�.����������� ��','115325109','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1706,103174,'����� 2-���� ������ ��','825167470','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1707,103175,'������ �������-53 ��','040044563','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1708,109147,'�������-3 ���','825341362','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1709,108130,'������� ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1710,104191,'���� �����-������� ��','115611977','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1711,103701,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1712,103176,'�����-����� ������ ��','115511770�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1713,103702,'�������-�.�������-1 ��','825092904�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1714,107635,'�.�������-� � � ��','115615114','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1715,104192,'����� �������-94 ��','115053821�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1716,104193,'���� ��','825156036�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1717,107636,'������� �� �','115118009','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1718,107637,'����-91 �� 1 �','040642991�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1719,107638,'����-91 �� 2','040642991�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1720,107639,'�����-������ ����������� ��','115625884','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1721,107640,'������-��.������� ��','120519434','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1722,107641,'���� ������� ��','830151642�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1723,105167,'�����-�.�������� ��','825110448�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1724,105168,'�.�.�. ��','825158705�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1725,104194,'����-����� ����� ��','115747614','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1726,104195,'��� ������� ��.82','000435554�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1727,104196,'����-�.������� ��','115096305�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1728,103703,'���-�.����� ��','115104212�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1729,103704,'������� ��','115575762','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1730,103705,'���� �����-��� ��','825347109','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1731,108131,'������ � ��� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1732,103532,'����� ������� ��','825082486�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1733,102639,'����-� ��','830110738�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1734,102640,'����� ������� ��� 1','120000655','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1735,102641,'����� ������� ��� 2','120000655','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1736,103177,'���������� ���','115820119','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1737,104197,'������ ���� 2000 ��','115520919�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1738,104198,'����� ��� ��','8250044904','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1739,107642,'����-55 ��','120005881','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1740,107643,'����-83 ��','120041450�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1741,107644,'������� ��','120019571','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1742,107645,'������� ������� ��','830189319','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1743,107646,'������ 5-�.������� ��','115827455','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1744,105020,'���-������ � ��� ��','040734201�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1745,103533,'����� �������� ��','115803130','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1746,103534,'�������-����� ������ ��','115096726�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1747,103535,'��������-�.������ ��','115057645�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1748,103706,'������ ������-91 ��','825125222�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1749,103707,'����� ������ ��','825184758','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1750,103708,'����� ������ ��','040503415�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1751,103709,'����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1752,107168,'��� �� ����� 2000','115584786','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1753,104199,'�.���������� ��','825286250�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1754,104200,'�������� ��������-��� ��','115033498�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1755,103710,'�������-�.����������� ��','115055909�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1756,103711,'���� ��','115817183','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1757,103712,'����-�.������� ��','115533731','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1758,103713,'����� ��','115181970�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1759,102642,'�������� ������ ��','115733237','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1760,107647,'��.-��.������ ��','115778620','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1761,103168,'������ ����� ��','115511425','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1762,108132,'�����-�.������ ��','115757156','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1763,106129,'����-���� �������� ��','825336739�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1764,103714,'����-������� �.����� ��','825278289�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1765,103715,'����� ������ ��','830133995�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1766,103716,'������� ��','825137954�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1767,103717,'������-��.������� ��','115763497','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1768,103718,'�� ��������-91 ��','825067210�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1769,103719,'���� �������-777 ��','825315264�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1770,103720,'������� 100 ��','825041016','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1771,103152,'������ ��','115783382','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1772,103153,'����� ������� ��','115290076�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1773,103178,'������� 91 ��','825132793','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1774,102643,'����-������ ��������� ��','830105456','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1775,107648,'����-������ ������ ��','040308187�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1776,103721,'������ ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1777,103722,'���� ��','115802605','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1778,103723,'����� ������-92 ��','115030922','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1779,103724,'������� ��','825064323','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1780,103725,'���� ����� ��','115665537','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1781,103726,'������� ��','115054439�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1782,103727,'�����-����� ������� ��','040904098�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1783,103728,'������-2001 ����','115613597','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1784,107649,'�������� ������ ��','115733237','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1785,102644,'����-������� ������� ��','115076607','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1786,105169,'����� �������� ��','115098250�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1787,109148,'������ ��','115575011','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1788,107169,'������-����� �������� ��','825271693','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1789,105170,'���� 39-�.������� ��','825101207','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1790,103729,'���� ��','115514923','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1791,103730,'����-���� ������ ��','115581847','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1792,103731,'���� ��','115589484','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1793,103736,'����� ��������� ��','115679686','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1794,103732,'������� ��','825029163�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1795,103735,'����� ����� ��','115349635','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1796,103733,'�����-� ��','115059468�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1797,103734,'�����-�.������ ��','115646647','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1798,103737,'�����-92-��.�������� ��','115616433','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1799,108133,'�������� ������� ��','115613120','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1800,103179,'����-����� �������� ��','115168115','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1801,103738,'���� �������-2002 ��','115770196','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1802,103739,'������-96 ����� �������� ��','115009433','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1803,103740,'����-���� ������ ��','115649586','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1804,103741,'�������-�.��������� ��','115125968','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1805,103742,'���-��.������ ��','115757601','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1806,103743,'����� ����-������� �-�� ��','115349222','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1807,103744,'������� ��','115745321','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1808,103745,'������-�.������������ ��','115843192','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1809,104201,'���� ������� ��','825089519�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1810,103868,'���� �������� ��','825183204�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1811,103746,'����-�.�������� ��','115625182','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1812,102645,'����-87-����� ��������� ��','120548440','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1813,104202,'������ �������� ��','825249234�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1814,104203,'������� ���','8250978566','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1815,104204,'�.�������-97 ��','115131422','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1816,105171,'������ ��','115068855�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1817,103747,'���� ��','115020077','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1818,107171,'������ ����','115622895','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1819,107170,'���� �����-������� ��','115065535','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1820,108134,'���-������ ����','00044393�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1821,102646,'������-99-���������� ��','120065120','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1822,103180,'�.�������-7� ��','115303246','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1823,103181,'��� ����','115107183','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1824,104205,'������� �����-2 ��','115588788','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1825,103756,'������� ��','825118338','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1826,103748,'����� ����� ��','040168810�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1827,103749,'��������-90 ��','040162654�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1828,103182,'�.������� ��','825214226�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1829,103183,'�����-66 �.������ ��','825265562�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1830,102647,'*����-���� �������� ��','115624953','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1831,102648,'���� ������ ��','115054510�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1832,107650,'�������� ������-2001 ��','115655074','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1833,107651,'����-�������� �������� ��','115237839�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1834,107652,'����� ���������� ��','115335807','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1835,108135,'������� ��������-2002 ��','115753784','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1836,103184,'�����-��� ��','115827640','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1837,104206,'������-�.��������� ��','115353719','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1838,104207,'��-33 ��','115349025','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1839,104208,'����-83 ��','825134982','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1840,107653,'����-94 ��','825293152�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1841,103757,'���� ��� ��','040578067�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1842,107654,'������ ��','�040282917','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1843,107655,'������ ��','115559128','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1844,107656,'����-93 ��','825145431�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1845,107657,'������ � ��� ��','1089517828','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1846,107658,'������� �������-99 ��','115502134','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1847,105172,'��� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1848,104209,'�����-�.������� ��','115072259�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1849,104210,'��������-1940-������ ��','006502055','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1850,104211,'���� ��������-�-2001 ��','115606460','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1851,107659,'�������� ��','115805779','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1852,107660,'����� ��������-���� ��','825261496','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1853,107661,'��� ������ ��','115005794','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1854,107662,'������-��� ������ ��','115040865�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1855,107663,'������ �� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1856,107664,'����-55 ��','825189787�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1857,107665,'�������-�-86 ��','115142622�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1858,107666,'�.������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1859,104212,'������� ��� ��.128','000435554�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1860,107667,'������� ���� ��','030242493�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1861,107668,'���-�.������� ��','825155660','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1862,107669,'�������-������ ������� ��','836025853�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1863,107670,'�.������-���������� ��','123032809�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1864,107671,'����-������ ��������� ��','115632590','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1865,107672,'����� ���������-45 ��','115317018','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1866,107673,'����� ������-���� ��','825356535�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1867,103185,'���� ��� ���','102070354�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1868,107674,'������ �������-���� 5 ��','120022418','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1869,107675,'�������� � ��','020517635�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1870,107676,'���� �������-� ��','825256944�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1871,107678,'����� ����� ��','115349635','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1872,107677,'���������� ��','040829051�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1873,107679,'����-92 ��','825160401�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1874,107680,'����� ��','115807730�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1875,107681,'������ ������� ��','124133608','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1876,102649,'���� ��','825029462�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1877,107682,'����� ��','115082981�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1878,107683,'����� �������� ��','825121462','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1879,107684,'�����-��.������ ��','115674995','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1880,107685,'����-8 ����� ������ ��','115190916�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1881,107686,'����� ����� ��','115069900�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1882,107687,'����� �������-2000 ��','115500279','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1883,103186,'������� ��������� ��','825113711�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1884,107688,'������ 97 ��','115347716','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1885,109630,'�������� ����','115524846','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1886,103758,'�������-1 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1887,107689,'���� ��','115155655�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1888,107690,'���-5 ��','03012661710','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1889,107691,'�������� � 90 ��','825153307�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1890,107692,'�����-�������� ��','040359210�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1891,103759,'������-������� ��������� ��','115894048','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1892,104213,'�����-38 �� �','040610303�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1893,102650,'����� ���������� ������','115610409','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1894,107693,'������-����� ����� ��','825238540�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1895,107694,'������ ��','115570612','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1896,107695,'��� ������ ��','040495502�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1897,102651,'����� �������� ��','020368539�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1898,107696,'���� �����-�.������� ��','115816416','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1899,103760,'����� �������� ��','115077943','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1900,107697,'����� ��','115793266','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1901,106130,'�������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1902,106131,'����-����� ������� ��','825267225�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1903,106132,'�������-90 ��','115327382','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1904,106133,'���-89 ��','825155308�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1905,106134,'����� ������-96 ��','115052370�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1906,106135,'���-��� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1907,106136,'�����-������� ������ ��','115686225','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1908,103187,'���� ��','115150786','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1909,107698,'����� �������-2002 ��','115772959','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1910,106137,'���� ���� ��','115160474�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1911,107699,'����-�.�������� ��','115802338','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1912,103761,'�.��������-���� ��','115686595','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1913,107700,'������ ������ ��','115275252�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1914,106138,'���� ��','115154329�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1915,103188,'����� ��','115807730�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1916,106139,'����� ������� ��','115318691','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1917,106140,'������ ���','115819490','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1918,108136,'����� ����','115835740','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1919,105173,'����� ��������� ��','040868606�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1920,105174,'�-��� ��','825044546','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1921,106141,'����� 17 ��','825014930','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1922,106142,'��������� ��','825357516�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1923,108137,'����� ����� ��','115014050','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1924,105175,'�����-97 2 ����','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1925,107701,'����- ��.�������� ��','115504669','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1926,103762,'�����-�.�������� ��','115817614','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1927,103453,'������ 2 ��','115273408','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1928,106143,'�������������� ���','825020709','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1929,106144,'���������-���� ������� ��','115762121','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1930,109632,'������� ��������� ��','115732726','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1931,105176,'���-2004 ����','115839589','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1932,106145,'������� ������ ��','115199769�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1933,107172,'�������-96 ���','115029934�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1934,106146,'�����-2 ��','040300621�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1935,107702,'����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1936,103763,'������� �����-2000 ��','115600977','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1937,109149,'���-�.������� ��','825229858�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1938,109633,'���� ��','115333606','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1939,106147,'����� ������� ��','115313962','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1940,109634,'�.�.-16-�.�������� ��','115351508','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1941,108138,'����� ��','115577329','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1942,106148,'����-������ ������ ��','115629676','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1943,103189,'�����-85-�.��������� ��','115839297','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1944,106149,'���-�������� �������� ��','115314404','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1945,106150,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1946,102652,'����-��-��.��������� ��','120554150','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1947,106151,'�����-�.���������� ��','825362591','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1948,106152,'�������� � ��� ��','825171959�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1949,106153,'��� 48 ��','115099605','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1950,102653,'������ ������� ��','833133927�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1951,107703,'����� ������� ��','115616846','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1952,108139,'�.�������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1953,106154,'������� �������� ��','115832018','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1954,108140,'��������-���� ����','115283740','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1955,107704,'����-68 ��','825156456','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1956,106155,'�������-������ �������� ��','825154754�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1957,106156,'����-150 ��','115118824�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1958,106157,'��� ��','115176521�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1959,109635,'��� ����� ��','825018964�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1960,108141,'�������-�.������� ��','115803828','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1961,107705,'������-92 ��','040219639�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1962,107706,'������-���.������ ��','825061809�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1963,107707,'������� ���������� ��','825294699','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1964,107708,'����-1 ��','825212247�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1965,107709,'�� ��� ��-� ����','115755002','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1966,107710,'�����-���� ����� ��','825168686�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1967,107711,'�������-��.������� ��','825176238','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1968,102654,'������� ������-���� ��','115104931�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1969,102655,'����� ��','123007784�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1970,102656,'������ ������� ��','123523377','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1971,102657,'����� ���������� ��','833070149�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1972,107712,'���� ��� ��','040948963�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1973,105177,'���� 1 ����','115868936','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1974,107713,'����� ��','825237189','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1975,102658,'���� ��������� ��','120509290','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1976,103750,'������ ��� ���','115558859�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1977,103751,'����������-���� ��������� ��','838143028','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1978,109636,'���� ��','115103092','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1979,107714,'����-67 ��','115827149','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1980,107715,'����-1 ��','115125085�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1981,107716,'����� ������������ ��','115254870','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1982,107717,'��������-91 ��','825070352�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1983,107718,'����� ��','040622978�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1984,107719,'����� ��','115038997','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1985,107720,'���� ��','115067792�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1986,107721,'��-99 ���� ������� ��','115507590','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1987,107722,'������ ������ ��','115793558','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1988,107723,'�������� ����� ��','115188309�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1989,109637,'����� ���� ���','115018902','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1990,106158,'���-����-��� ��','825001210','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1991,107724,'����-��� ��','040773827�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1992,104214,'����� �������� ��','115310550','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1993,107725,'������ 88 ��','115556933','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1994,107726,'���� ���������-����-������� ��','115832961','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1995,107727,'������ ������ ��','115183761�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1996,107728,'�������-� ��','040285436�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1997,107729,'�����-97 ��','115141456�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1998,102659,'*�������-����� �������� ��','123001589','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (1999,102660,'�������� ����� ��','833080862�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2000,109638,'�������-04-�.������� ��','115822860','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2001,108142,'��-�� ���� �������� ��','115820521','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2002,103190,'����� ��','115826182','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2003,108143,'�����-����� �������� ��','115818118','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2004,103764,'������ ���� ����','115573971','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2005,107730,'�����-������� ������ ��','115747870','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2006,107731,'��� ����� 93 ��','825130504�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2007,107732,'�������-������ ������ ��','115101470�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2008,107733,'���.�������-�� ��','040870564','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2009,107734,'������� ��','825138967','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2010,107735,'����� ��','825334250�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2011,107736,'����-������� �������� ��','115162831�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2012,107737,'����-�.�������� ��','115605458','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2013,103765,'���� ������� ��','115840919','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2014,107738,'���� ����� ��','115509075','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2015,107739,'������� �������� ��','825294749','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2016,107740,'���� ��������� ��','115712257','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2017,107741,'������� ��','115130470�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2018,107742,'���� ��','825375806�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2019,107173,'���� ��','825067107�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2020,103766,'������� ������� ��','115241517�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2021,102661,'������  ���','120526902','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2022,107743,'������ ����� ��','115262785�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2023,109150,'������ ������ ��','825327665','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2024,109639,'���� ��','115824808','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2025,104500,'������ ���������� ��','830171748�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2026,104501,'����� �������-����� ��','120038372�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2027,104502,'�������� ��','830194825�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2028,104503,'�.�.-����� ������ ��','120552306','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2029,104504,'������� ������ �� �','120005034-�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2030,104505,'����� ����� �� �','120068554�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2031,104507,'��������� �������� �� �','120068216','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2032,104506,'���-����� ������� �� �','120541427','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2033,104508,'��������� ��������� �� �','120541270','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2034,104509,'������ ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2035,104510,'������ ����� ������ �� �','120013554','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2036,104511,'���� �� �','120052742-�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2037,104512,'����� ��������-95 ��','830195005�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2038,104514,'����� ���������� �� �.','120033717�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2039,104513,'������� ��������� �� �','120538947','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2040,104515,'��������� ������� �� �','120024700�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2041,104516,'������ ������� �� �','120015384','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2042,104517,'���� �������� ��','120545393','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2043,104518,'������� ������-60 ��','120044126-�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2044,104519,'����� ����� ��','120044763','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2045,104520,'����� ���� �� �','120543894','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2046,104521,'����-������� �� �','120520778','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2047,104522,'����-�������� �� �','830191494-�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2048,104523,'�.������� �� �','120053965�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2049,104524,'�������-����� ������� �� �','20604481�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2050,104525,'������� ������ ��','120052379�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2051,104526,'�.������� ��','0830174512�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2052,104527,'�������-������� ����� �� �','830104183','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2053,104528,'����� ������� �� �','120059039-�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2054,104530,'���-�� ������ ����� �� �+�','1205255226','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2055,104529,'�.������ ��','120012705','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2056,104531,'����� ������� �� �','830174512�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2057,104532,'��� ����-���������','602494�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2058,104533,'���� ��','120007131','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2059,104534,'������ ������ ��','830189493�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2060,104535,'����� ����� �� �','01048318','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2061,104536,'�������-������� ��������� ��','830151603','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2062,104538,'����� �������� ��','120060034�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2063,104537,'������� ������� �� �','120529089','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2064,104540,'������ ������� ��','120512087','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2065,104539,'����� ������ ��','120552434','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2066,104541,'����� ��','830111181�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2067,104542,'�����-����� �������� ��','120504076','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2068,104543,'������� ������� ��','120024807�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2069,104544,'��������-����� ������� ��','120036291','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2070,104545,'�����-�.������ ��','120073932','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2071,104546,'����� ������ ��','830104678�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2072,104547,'����� ���������� ��','0683631','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2073,104548,'����� �������� 99 ��','120505025','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2074,104549,'������ ������ ��','120552158','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2075,104550,'����� �������� ��','830130032�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2076,104551,'����� ����� ��','120044261�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2077,104552,'����-80 ��','120525088','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2078,104553,'���� ������ �� �','830184286�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2079,104554,'������ ������� �� �','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2080,104555,'��-�-�������� ��','115003100�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2081,104556,'������� �� �','830150743','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2082,104557,'�������� ����� �� �','83013384','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2083,104558,'�.��������-�.�������� �� �','830149709','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2084,104559,'����������-45 �� �','120072346','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2085,104560,'����� �� �','120039669','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2086,104561,'�����-��.��������� �� �','120545660','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2087,104562,'������-���� ������ �� �','120065005','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2088,104563,'�������-�.������� �� �','120003987','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2089,104564,'���� ��������-����� �� �','830184012','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2090,104565,'���� �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2091,104566,'����� �������� �� �','120524335','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2092,104567,'������ ������ �� �','120039054','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2093,104568,'������-�.�������� �� �','120024928','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2094,104569,'��� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2095,104570,'������ ��������� �� �','120555505','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2096,104571,'����-��-����� ������� �� �','120500131','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2097,104572,'�����-49 �� �','830181952�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2098,104573,'������-������ �������� �� �','120026377�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2099,104574,'�.��������-�.�������� �� �','120539166','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2100,104575,'����-������ �������� �� �','120539472','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2101,104576,'������ �������� �� �','120520002','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2102,104577,'��-���-���� ������� �� �','120541345','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2103,104578,'������ �� �','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2104,104579,'����-���� ������ �� �','120521104','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2105,106159,'�����-������� ������� ��','115719561','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2106,109640,'����� ��������� ��','115318675�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2107,105178,'���-����� �������� ��','115841266','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2108,109151,'�����-�� ����','115945860','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2109,109152,'�����a ������ ��','115079951','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2110,104580,'������ ����� ��','830105716�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2111,104581,'������-42-�.����� ��','120003670','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2112,104582,'�������� ����� ��','112050962�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2113,104583,'����-����� �������� ��','120021088�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2114,104584,'������-������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2115,104585,'���-3-��� �������� ��','120071785','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2116,104586,'������� ������� ��','120528682','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2117,104587,'������ �����-������� ��','830185783�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2118,104588,'����-�90-���� ������ ��','120072983','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2119,104589,'���� �.������-�.������� ��','120510031','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2120,104590,'������-������� ������ ��','120068725','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2121,104591,'�������� �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2122,104592,'����� �������-60 ��','120511366','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2123,104593,'������� �������� ��','120071600','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2124,104594,'�����-�.���������� ��','120068846�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2125,104595,'��� ������� ��','120501977','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2126,104596,'�������-�.������ ��','120003161�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2127,104597,'����� ������ ��','120061712�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2128,104598,'�.�.-������ ��������� ��','830154574�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2129,104599,'�������-�.���������� ��','120551186','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2130,104600,'����� ������� ��','120020787','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2131,104601,'����� ����� �� �','830153839','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2132,104602,'�����-76 ��','120067954','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2133,104603,'����� �� �','830104774�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2134,104604,'�������� ������� ��','120553397','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2135,104605,'������-�.�������� ��','120018964','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2136,104606,'������ ��������� ��','120555505','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2137,107174,'���-����� �������� ��','115841266','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2138,104607,'������ ��','831641791','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2139,104608,'����-51 �� �','830155992','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2140,104609,'����� ����� ��','120050378�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2141,104610,'���� �������-����� ��','120503800','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2142,104611,'���� ���� ��','040385326','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2143,104612,'����� 90-���� ��������� ��','830152032�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2144,104613,'����� �������� ��','120039104�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2145,104614,'������ ������� ��','120542511','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2146,109153,'��������-������ �������� ��','115554960','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2147,109641,'����-� 4 ���','825017289�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2148,104215,'����-������ �������� ��','825344604�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2149,107744,'����-�.������� ��','830131287�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2150,109154,'������ ����-������-2 ���','825329562�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2151,104615,'����������� ��','830107973�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2152,104616,'�������� ��','830114829','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2153,104617,'����� ������ ��','120517561','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2154,104618,'������-���� ������ ��','120069791','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2155,104619,'������ �� ��','020368351�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2156,104620,'�����-�.������� ��','120511626','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2157,104621,'�����-����� �������� ��','120523379','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2158,104622,'���� ������� ��','120509365','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2159,104623,'����� ������ ��','120032444','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2160,104624,'������ ����� ��','120007633�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2161,104625,'������ �������� ��','1200543232','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2162,104626,'�������� ��','030261223�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2163,104627,'����-�.���� ��','120064374','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2164,104628,'����-����� ���������� ��','120030607','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2165,104629,'���� 53 �.��������� ��','120005461','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2166,104630,'�.�.-99 ������ ����� ��','120542924','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2167,104631,'����� ������� ��','120519995','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2168,104632,'�����-������� ����������� ��','830121389','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2169,104633,'������� ������ ��','120552060','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2170,104634,'������ ���������-���� ��','120550485','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2171,104635,'������ ������� ��','830103494�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2172,104636,'���� �������� ��','120545525','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2173,104637,'������ �������� ��','030175807�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2174,104638,'����-�������� ����� ��','120552142','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2175,102662,'������-�� ���','123545651','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2176,102663,'�� ����','115845211','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2177,103191,'���� ����� ��','115834084','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2178,103192,'����-������ ������ ��','115836746','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2179,103193,'������� ��','115053419�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2180,103194,'���-�.��������� ��','825359033','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2181,104639,'���� ������ ��','120008888','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2182,104640,'���� ��','120071333�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2183,104641,'������-�.��������� ��','120017061','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2184,104642,'�������� ������-2003 ��','120548119','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2185,104643,'����� ������-����� ��','120002629�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2186,104644,'����� �������-40 ��','120521983','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2187,104645,'����-����� ���������� ��','120554378','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2188,104646,'���� �������-��������� ��','120027415�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2189,104647,'�������� ������ ��','120007238','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2190,104648,'������� ������� ��','120063219�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2191,104649,'���-1991-�.����� ��','120072606�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2192,103195,'����-77 ��','115197558�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2193,103196,'������ ��','115283021�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2194,109155,'��������� ���','115826951','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2195,102664,'��������� ��','115004030�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2196,107745,'���� ������� ���','825332776�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2197,104650,'�����-����� ����� ��','120075367','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2198,104651,'����-����� ������� ��','120063678�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2199,104652,'�.�������-���-�.����� ��','120023406�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2200,104653,'����','830161818�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2201,104656,'��� ��','120003065','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2202,104654,'������ ��','830118724','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2203,104655,'��������� �� ��','120011941�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2204,104657,'������ �������� ��','120551706','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2205,104216,'���-�.��������-�.�������� ��','040941545�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2206,102665,'������ ��������-2002 ��','115667335','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2207,102666,'������ ������ ��','126534553','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2208,104217,'������-����� ������������ ��','115620645','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2209,104658,'����-������� ������ ��','120539110','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2210,104659,'���-����� ����� ��','108559882','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2211,104660,'�����-��-����� ����� ��','108031486�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2212,104661,'����-89 ��','108064550�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2213,104662,'�����-�.�������� ��','108505984','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2214,104663,'��� ���� ����� ��','120031997�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2215,104664,'��� � ���-�.���������� ��','830102702','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2216,104665,'�������-64 ��','108015464�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2217,104666,'����-51 ��','108034404�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2218,104667,'������ ���-67-������� ��','108566841','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2219,104668,'��������-�.������� ��','108080693�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2220,103767,'������� ������� ��','115847536','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2221,104669,'����� ����� �� 2','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2222,104670,'��������� �������� �� 2','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2223,107746,'� � � -2001 ���','115633564','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2224,108144,'���� ����� ��������� ��','040008656E','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2225,108145,'����-7 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2226,107175,'�������-91-2 ��','825256780�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2227,108146,'�����-� ��','115190243�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2228,105179,'����-48 ��','825019137','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2229,105180,'*����� ��','115163157','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2230,107747,'�����-77 ��','115842126','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2231,103869,'�����-4 ��','040671765�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2232,103197,'�-2004 ���� 2','115585308','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2233,104671,'������ ������ ��','830167251','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2234,104672,'����-�-������� �������� ��','108523249','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2235,104673,'�����-��-����� ����� ��','108031486�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2236,104674,'��� �������','000111376�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2237,104675,'����-������ ���� ��','108562476','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2238,104676,'�����-��-����� ����� 2 ��','108031486�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2239,104677,'�����-������ ����� ��','108505404','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2240,104678,'����-������ �������� ��','108562177','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2241,104679,'����� �������� ��','120513221','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2242,104680,'����� ��������� ����','115157108�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2243,104681,'���� ����� ��','120039111','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2244,104682,'����� ��','120015415','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2245,104683,'�����-4 ��-� ��','830110154�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2246,104684,'���� ��������� ��','120509714','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2247,109156,'������� ����� ��','115005417','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2248,105181,'����� ����� ��','040870429�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2249,102667,'���� �������� ��','120547979','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2250,109157,'�.��������� ��','115677938','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2251,109158,'������� ������ ��','115213037�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2252,105182,'������� ������� ��','115261929','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2253,104685,'����-� ����','108551743','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2254,104686,'�������-������� �������� ��','108066658�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2255,104687,'������-��-����� ��','108529775','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2256,104688,'����� ������ ��','120025802','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2257,104689,'������-����� ������� ��','120040448�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2258,104690,'�����-����� ������� ��','830164173�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2259,104691,'�������� ����-����� ������� ��','120519199','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2260,104692,'��������� ������ ��','120556009','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2261,104693,'����-��� ��','108042778�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2262,104694,'����-����� ������� ��','120552249','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2263,102668,'����-����� �������� ��','120003631�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2264,103454,'����� ������ ��','115791201','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2265,109159,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2266,103,'������ ����','121035817�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2267,107176,'������� ������-��������� ��','825244575�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2268,103768,'����-10-����� ���������� ��','115801001','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2269,104695,'���� ����� ��','120014204�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2270,104696,'�����-���� ��������� ��','120545824','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2271,103198,'���� � ���� ��','115566941','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2272,109643,'����-71-��.�������� ��','115597278','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2273,109644,'����-����� ���','115840805','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2274,103199,'����� �������� ��','825377853','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2275,103200,'������ ��','115283473�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2276,102669,'����� ������ ��','825371314�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2277,104218,'�����-�.�������� ��','115835377','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2278,105183,'�����-�� ��','040102034','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2279,108147,'����-�.������ ��','115850176','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2280,106160,'����� ��','825320083�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2281,105184,'�������-2001-�.����� ��','115846886','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2282,103769,'��-1 ����� ������ ��','115758863','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2283,103201,'�����-����� ������ ��','825138112','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2284,105185,'����-�.������� ��','115833650','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2285,104697,'�����-56 ���� �������� ��','83018403�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2286,104698,'������ ������� ��','120029302�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2287,104699,'����� ��','120057757','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2288,104700,'����� ������ ��','120042520','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2289,108148,'���� ��','115006587�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2290,106161,'����� ��','115151283�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2291,106162,'���-��� ��','825054437�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2292,103770,'�����-�������� �� �','825164691�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2293,102670,'����� �������� ��','120513965','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2294,106999,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2295,106163,'���������� ���','115071310','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2296,106164,'�����-2-�.���������� ��','825259513','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2297,106165,'���� ����� ��','825158101�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2298,106166,'����-90 ��','115814924','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2299,107177,'�� ��� ��','102093292','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2300,103202,'������ ������� ��','123536008','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2301,103203,'� � �-�.����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2302,103771,'����� ���� ���','115853845','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2303,106167,'������� �����-234 ��','128520755','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2304,106168,'�����-����� �������� ��','115027611','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2305,109645,'������� ������ ���','831707273','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2306,109656,'����� ��','040415919�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2307,108149,'����� ��','115006792','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2308,103204,'������-�������� ������ ��','825400394�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2309,107748,'�����-98-�.��������� ��','115292419�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2310,107749,'���� ��','115201095�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2311,106169,'������� ������ ��','115077263�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2312,106170,'����-95 ����','115017825�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2313,106171,'������-� ��','115189718�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2314,106172,'���� ��','825020463�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2315,106173,'�������-79 ��','115534961','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2316,106174,'������ ����� ��','115825365','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2317,104701,'����� ��','108064194�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2318,106175,'���','000471753�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2319,103870,'����������-��� ���','115778894','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2320,106176,'����� ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2321,106177,'����� �������� ��','115835733','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2322,106178,'����-2003-�.������ ��','115809902','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2323,106179,'����� ������� ��','040984240�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2324,106180,'������-������������ ��','115583588','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2325,109160,'����� ����� ���','115845478','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2326,106181,'������,������ � ��� ��','822146193','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2327,106182,'���-2 ��','825223816�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2328,106183,'������-�.������ ��','115017070�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2329,106184,'������-98 ��','115310721','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2330,109161,'������ ������-2 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2331,108150,'���-����� ��������� ��','825092200','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2332,104702,'����-����� ��������� ��','220007023','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2333,104703,'����-��-89-�.������ ��','120050403�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2334,106185,'������ ��-90 ��','115004774�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2335,106186,'������� ��','115755269','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2336,106187,'����-��.���������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2337,106188,'�����-��-����� ��','115106107�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2338,106189,'���� ��','825234271','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2339,109162,'��� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2340,107750,'�� ����������','825025955�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2341,107751,'������ �������-���� ��','120029302�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2342,104219,'���� ����� ���','115836383','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2343,106190,'����-���� �������� ��','115808953','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2344,106191,'�����-�.�������� ��','825166112�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2345,104704,'����� ��','108017561�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2346,104705,'����-�.����� ��','108025704�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2347,104706,'�����-2000-�.������� ��','108516201','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2348,109163,'����� �������� 1+ ��','825368391','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2349,109657,'�����-55 ����','115652251','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2350,109114,'�� �� �� ��','825136934�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2351,106192,'���� ��','825165035�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2352,107752,'������ ��� ��','115327304�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2353,107753,'������� ������� ��','120053303�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2354,109164,'�����-����� ����','115855853','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2355,109165,'�� � �� ���','115648395','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2356,104220,'�����-53-��.������� ��','115658731','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2357,106193,'������ ����� ��','115015621�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2358,104707,'����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2359,104708,'������� ���� ��','108059286�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2360,104709,'������ ���������� ��','115505529','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2361,104710,'�����������-�.�������� ��','120506084','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2362,104711,'������ ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2363,104712,'���� � �� ������� ���','130025988','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2364,104713,'�������-71 ��','120061111�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2365,104714,'������ ������� ��','120542187','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2366,104715,'�����-�.��������� ��','120516865','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2367,104716,'����.���������-����-�.��������','120030087','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2368,109166,'������ ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2369,104221,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2370,104222,'����-� ��','825188742�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2371,103871,'�����-������� ����� ��','115073119','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2372,109167,'*�����-� �� 2','040201648','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2373,104717,'����� ��������-72 ��','040678902�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2374,104718,'���� ��','818049518','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2375,104719,'����� ������� ��','120020545�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2376,104720,'������ ��','830152678�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2377,104721,'���� � �� ������� ���','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2378,108151,'���� ��� 3','115931144','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2379,103782,'���� ���','115647749','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2380,103205,'����-����� �������� ��','115623417','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2381,107754,'������-���� ����� ��','120011238�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2382,107755,'����� ����������� ��','120555284','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2383,107756,'��� ��','120055521','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2384,107757,'������� ����� ��','040574533�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2385,105186,'���-����� ������ ��','115585094','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2386,104223,'�����-84 ��','115068928','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2387,106194,'���-94 ����','115284714�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2388,109168,'����-�.����. ��','115801617','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2389,109658,'������� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2390,106195,'������ ���','115897286','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2391,104722,'�����-71-�.�������� ��','120024942�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2392,104723,'�����-2000-�.�������� ��','120510951','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2393,104724,'�������-��.���������� ��','120503234','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2394,109659,'�������� ������ ��','115618441','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2395,105187,'������-��������� ���������� ��','115743854','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2396,107758,'������ �������� ��','1200122647�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2397,107759,'����� ������� ��','120038372�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2398,106196,'����� ��','115503916','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2399,106197,'������-�������� ��','115857434','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2400,106198,'����� ��','115503916','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2401,103206,'���� ��','115550168','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2402,109169,'���-63-�.�������� ��','115169217�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2403,102671,'���-������ ����','115574468','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2404,109660,'�������-�-��.������� ��','15303837','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2405,108152,'��-90-������� ��','040220335�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2406,108153,'��-�.��������� ��','825204303�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2407,109170,'�������-������ ���','831707273','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2408,107760,'������ ���������-29 ��','120012712�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2409,107761,'�����-��.������ ��','120064214','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2410,106199,'����-�.��������� ��','825227775','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2411,106200,'������� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2412,107762,'���� ���������� ��','115112230�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2413,105188,'����-��.������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2414,105189,'�������-������ ����� ��','030429411�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2415,103207,'���-�.����������� ��','115054097�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2416,103783,'� � �-������ ������ ��','825312478','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2417,104725,'����� ������ ��','830105367�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2418,104726,'�������� �������� ��','1205401637','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2419,104727,'� � �-������� ������� ��','120544925','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2420,109171,'����� ��������� ��','825010545�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2421,107763,'� � �-2001 ��� 2','115633564','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2422,103208,'����������-� ��','115646614','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2423,102672,'����� ��������� ��','812178506�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2424,102673,'������ ���','103841917','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2425,107764,'���� ��','112033607�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2426,102674,'��� ����� ��','120005187','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2427,104728,'�.���������� ��','115505529','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2428,104729,'������� �������� ��','120028271�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2429,104730,'����-���� ����������','130149175','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2430,107178,'������ ����� ��','115862171','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2431,108154,'��������� �������� ��','115820919','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2432,103209,'��������-26 ��','115602608','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2433,102675,'������ �������� ��','030236953�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2434,109172,'�������� ��','115088270','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2435,104224,'���-����� ������ ��','115857377','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2436,106201,'�������-�� ��','030121545�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2437,107179,'���-������-������� ������� ��','119096193�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2438,104731,'����� ������� ��������� ��','120004085�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2439,104732,'����� ����� ��','120514845','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2440,106202,'���� � ����','115147181�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2441,109661,'����������-����� ����� ��','115197647','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2442,106203,'������ ���','115018382�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2443,106204,'�������� ��� ��','825118384�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2444,108155,'�����-�.�������� ��','115097547','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2445,108156,'����� ����','115824135','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2446,109662,'����-����� ������� ��','115866650','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2447,104733,'��-64-������ ����� ��','830194679�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2448,104734,'����� ������ ��','120556781','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2449,104735,'����-�.������ ��','1200444667','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2450,104736,'���-����� ������� ��','120541701','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2451,104737,'���� ��������-����� ������� ��','120541562','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2452,104738,'����� ���','830190015�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2453,104739,'������ ���� �� 1','000602590�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2454,104740,'�������� ���� �� 1','000602551�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2455,104741,'�������� ���� �� 2','000602551�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2456,104742,'����� ������� ��','120552103','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2457,104743,'���� ����� ��','830165291�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2458,104744,'���� ������ ��','120062971','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2459,104745,'����� �������� ��','830135606�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2460,104746,'����-68 ����� ����������� ��','120526261','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2461,104225,'������ �������� ��','115593746','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2462,106205,'���-02 ��','115769646','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2463,106206,'���������-90 ��','020461656�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2464,104747,'���� �������� ��','120041870','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2465,104748,'����� ������ ��','830174534�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2466,104749,'������� ��','120505349','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2467,104750,'������ ������ ��','830103494�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2468,104751,'����� ���������� ��','830102727�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2469,104752,'����� ��������-98 ��','120066279','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2470,104753,'����� ��������-69 ��','120552676','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2471,104754,'����.���������-���� ��','120030087','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2472,104755,'�����-����� �������� ��','020368593�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2473,104756,'����� ������ ��','120514939','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2474,104757,'����-���� ��','120552562','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2475,104758,'����� ���������� ��','120033717�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2476,104759,'����� ���������� ��','83017393�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2477,104760,'�������-����� �������� ��','1205158132','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2478,104761,'���� ��','830153586','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2479,104762,'������ ������������ ��','120558693','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2480,108157,'������-�.������� ��','825372404�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2481,109173,'�������-2003 3 ����','115779527','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2482,108158,'����� ��','115054663�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2483,108159,'������ ��','115860262','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2484,107765,'����� ��������� ��','120036962','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2485,102676,'������-5 ����','126045060�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2486,109174,'��� ����-����� ����� ��','115304589','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2487,109175,'�������-��.�������� ��','115822465','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2488,104226,'������ ��','115648502','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2489,109176,'������� �����-������ ��','115575984','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2490,106207,'����-� ����','115147181�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2491,104763,'����-����� ������ ��','108500802','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2492,104764,'�������� ��������� ��','120511761','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2493,104765,'�����-������ ������� ��','120529752','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2494,104766,'����-64 ��','108003585�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2495,104767,'����-��.������� ��','827165365','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2496,104768,'�������� ������-2 ��','120007238','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2497,104769,'���� �������-���� ��','120556653','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2498,104770,'����� ���������� ��','030260889','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2499,104771,'����� ��','108022284','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2500,104772,'����� ���������� ��','130034529','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2501,106208,'������-����� ����� ��','115526911','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2502,104227,'������ ������ ��','115782896','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2503,105190,'������-99 ��','040867760�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2504,106209,'����-�.����� ��','115863259','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2505,104773,'������ ���� �� 2','000602590�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2506,103210,'���� ������-2 ��','825227939','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2507,103211,'���� ��','825162199','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2508,103212,'������� ��','115319492','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2509,103213,'���-������� ������� ��','115564698','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2510,109177,'������� ����� ��','115189255�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2511,104228,'���� ��','115083330','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2512,106210,'����-90 ��','825131983�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2513,103214,'������ ���������� ��','115276596�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2514,103215,'��������-2000 ��','115541913','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2515,103216,'����-����� �������� ��','115782743','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2516,106211,'�������-��.�������� 2 ��','115822465','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2517,103217,'���� 2002-����� ������� ��','115748050','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2518,102677,'�.���������-��� ��','115867019','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2519,102678,'����� ��������� ��','120525857','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2520,104774,'������� ��','040852363�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2521,104775,'����� ������� ��','120055642�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2522,104776,'������-��.��������� ��','120557926','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2523,104777,'���������� ���','830186180�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2524,104778,'������-����� �������� ��','120548425','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2525,104779,'����� ������ ��','120063127','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2526,104780,'��������� �������� ��','120045203','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2527,104781,'����-������� �������� ��','120545596','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2528,104782,'������-����� ��������� ��','120033731�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2529,103218,'������ 4-������� ������ ��','825061809�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2530,103219,'����� ����� ��','115116830�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2531,103220,'�������-����� ������ ��','115055758�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2532,107766,'���-��� ���','115632544','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2533,107767,'���� �������-2002 ��','115770196','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2534,103872,'������� ��������-98 ��','115186215','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2535,104229,'����� �������� ��','115186259','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2536,104230,'������ ��','115026386�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2537,104783,'��� ������� ��','120056484�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2538,104784,'����� ��','108024189�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2539,104785,'����������-3 ��','830186180�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2540,104786,'����������-2 ��','830186180�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2541,104231,'����� ��','825245823','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2542,104232,'����� �������� ��','115039914�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2543,103221,'��.������-������-96 ��','115032528�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2544,103222,'�������-92-�.������� ��','115682173','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2545,109178,'����� ����-1 ��','115776060','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2546,106212,'����-���-�.������� ��','825294101�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2547,107768,'����-������� ������� ��','115014626','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2548,107769,'����� ��','040251277�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2549,107770,'������ ������ ��','825154131','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2550,107771,'����� ������ ��','123562234','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2551,107772,'����-�.������ ��','825394991�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2552,107773,'���-����� ����� ��','8330233199�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2553,107774,'������ �������� ��','115596824�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2554,109663,'65-����� �������� ��','115868345','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2555,104233,'�����-��.����� ��','115648210','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2556,105191,'������ ���','115594809','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2557,104787,'������ ������ ��','120555213','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2558,104788,'����� ��������-2 ��','120060034�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2559,104234,'���� ��','825398872�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2560,107180,'3-�������� ������ ��','115864578','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2561,107775,'������ ��','04821421�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2562,107776,'����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2563,107777,'������ �������� ��','123547906','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2564,107778,'����� ����� ��','115081062�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2565,106213,'�����-�.������� ��','115275448�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2566,106214,'���� ��','825244222�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2567,103223,'�����-������ ������ ��','115325869','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2568,106215,'������ ���������� ��','115505529','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2569,106216,'����-2 ��','115006587�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2570,107779,'� � �-2001 ��� 3','115633564','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2571,107780,'���� ������ 2 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2572,107781,'��������� �� ��� ��','115201095','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2573,107782,'��� ������� ��','825156513�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2574,108160,'�������-�.������� ��','115869721','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2575,107783,'����-�.�������� ��','115637114','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2576,107784,'���� ��','170006639','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2577,107785,'����-��.������� ��','115342085','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2578,109179,'����-������ ������� ��','1155609090','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2579,109664,'����-����� �������� ��','115788874','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2580,104789,'���-��� ����� ������ ��','120543887','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2581,104790,'������ ��������� ��','830133950�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2582,104791,'����-96 ��','120005828�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2583,104792,'����� �������� ��','040811060','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2584,104793,'�.�������-���� ��','120551439','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2585,104794,'����-96-���� ������� ��','120061549','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2586,104795,'���-75-���� ��������� ��','120037306','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2587,107787,'����-93 ��','825194097�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2588,107788,'���-��� ��','825096540','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2589,107789,'���-�.�������� ��','825116807','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2590,107790,'���-2001-���� ���� ��','115759097','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2591,107791,'����� ������� ��','115860131','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2592,107792,'������� ��','040725106','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2593,107793,'�������-��.��������� ��','115562163','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2594,107794,'�������-67 ��','825261247�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2595,104235,'���������-2003 ����','115784801','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2596,106217,'������ ������ ��','115153679�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2597,104236,'���� ��-���� ������ ��','115861265','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2598,103224,'�����-������ �������� ��','115336246','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2599,109665,'���� ������ ��','115224915�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2600,106218,'������� ������ ���','115516689','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2601,106219,'����� ��','115288933�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2602,106220,'������ �������� ��','115869575','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2603,106221,'������ ��������� ��� ��','115335595�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2604,107795,'����-�.������ ��','115034949','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2605,104237,'������� ������� ��','120519936','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2606,104796,'���-����� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2607,107796,'������-�.������� ��','115756983','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2608,107797,'������ ���������� ��','825236354','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2609,107798,'����-99 ��','115317477','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2610,107799,'������ ��','115300613','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2611,108161,'���� ����','115507245','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2612,107800,'������ ����� ��','115505657','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2613,106222,'���-94 ��','825230127�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2614,107801,'�� � �� ���','115864507','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2615,107802,'�����-�.�������� ��','825215890�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2616,107803,'��������-�.������ ��','120042449�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2617,104797,'��.�������-�.������� ��','120518656','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2618,104798,'���-�.�����-�.������ ��','120503985','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2619,106223,'������ ���� ��','115010357�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2620,107804,'������� ��������-02 ��','115763134','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2621,107805,'������-2005 ��','115871850','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2622,109180,'��������-���.�������� ��','115653022','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2623,107806,'����� ������� ��','825204520�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2624,103784,'����-� ��','825091243','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2625,104799,'����� ����������� ��','120559119','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2626,104800,'���-�.������ ��','120069407','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2627,104801,'������� ������� ��','108027527�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2628,107181,'������� ���','115790850','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2629,105192,'����� ����','115790252','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2630,103225,'���-� ����� �������� ��','115764880','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2631,103226,'*������ ��','825034993','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2632,103227,'�������-97 ��','115212711','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2633,103228,'������-96 ����','11588783�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2634,106224,'���� �������� ��','115725226','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2635,107807,'���� �������� ����','115801275','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2636,107808,'���� ����','127562694','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2637,107809,'����-�.������ ��','115034949','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2638,105193,'���-������ ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2639,103455,'����-69 �.������� ��','115538290','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2640,103456,'�������� ��','102875336','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2641,109181,'����-������� �������� ��','115294794�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2642,107810,'� 2004 ���� 2 �','115585308','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2643,104802,'����� ������ ��','120517561','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2644,104803,'������-���� ��','120044635','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2645,107811,'�������� ����� ��','126507289','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2646,107812,'��������-���.������ 2 ��','115837289','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2647,107813,'��������-���.������ ��','115837289','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2648,106225,'����� ����� ��','115862303','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2649,107814,'��������� �������� ��','120549930','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2650,106226,'�������� ������ ��','115124713�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2651,109182,'������ ������-90 ��','825021088','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2652,104238,'����� ������ ���','115817571','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2653,107182,'���� �-�������� ������ �� �','825118174','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2654,109666,'�������� ������ ��','115642937','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2655,107183,'����-���� ��������� �� �','825151092�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2656,102679,'���-�.������ ��','123557162','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2657,104804,'������-����� ��������� ��','120557627','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2658,104805,'������ ������ ��','120545443','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2659,104806,'����� ��� ��','120011838','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2660,104807,'������ �������-�������� ��','120011489','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2661,104808,'����� ����������-���� ��','120508719','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2662,105206,'��-99 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2663,107815,'��-����� ������� ��','120008984','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2664,103785,'�������-�.������ ��','115875464','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2665,103229,'���-04-���� �������� ��','115859321','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2666,105194,'��� ��������-��-��� ��','115798605','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2667,105195,'����� ����� ��','825183581','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2668,107816,'������ �������-���� ��','2115779311','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2669,107817,'����-79 ������ ����� 2 ��','115803835','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2670,102680,'����� ������� ��','833115174�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2671,109667,'����-���� ����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2672,105196,'�.�������-���� ��','825141123','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2673,106227,'����� ��','040893100�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2674,107847,'� � � ������� ��� �','115892218','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2675,106228,'���� ��','120545913','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2676,105510,'����-����� ������ ��','115873986','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2677,105197,'������-�.��������� ��','115036619�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2678,102681,'��������-�.������ ��','120032476�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2679,107184,'������-�.��������� ��','115209672�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2680,105502,'�������-�.��������� ��','1150657527','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2681,108162,'��������� ��������� ��','115843047','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2682,104809,'�������� �������� ��','120540738','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2683,108171,'������� �������-����� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2684,104825,'�.���������-����� ��','120016358�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2685,105198,'����-8 ��','0301273313','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2686,105199,'����� ��','825136090','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2687,106229,'�������� ��','825121875�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2688,106230,'��� ��','115172102','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2689,104826,'���-55-�.�������� ��','120017129�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2690,108163,'�������-�������� ������� ��','115863921','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2691,105200,'������ ��','115575335','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2692,105201,'������ 2 ��','115255043','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2693,104810,'������� �������� ��','830105207�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2694,105202,'���� ���','115855038','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2695,105203,'����-2005 ��','115888808','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2696,106231,'���� ������ ��','825095267','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2697,105503,'���-������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2698,109668,'�� ��-1 ����','115249446�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2699,109183,'����� ���� ��','115810947','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2700,105548,'���-���� ��','825068974�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2701,109184,'���� ����� ��','115111502','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2702,109185,'�����-������� ��� �������� ��','030240802�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2703,102682,'����� 2000 ��','123542452','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2704,103875,'�.�������-����� ��','825393895','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2705,104811,'������� ������� ��','120556393','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2706,104812,'��������� �������� ��','040662199�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2707,104813,'�������-60 ��','120028780�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2708,107818,'����� ��������-�������� ��','123682205','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2709,108172,'�����-�.������ ��','825214774�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2710,107819,'������-2000 ���','115529811','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2711,105204,'����� 99 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2712,105205,'������-8082 ��','115166420�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2713,109563,'������-��.�������� ��','82105020�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2714,104814,'������ ������ ��-14 ��','830121987�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2715,104815,'����� ���� ��','030162823�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2716,104816,'������ ����� ��','120067872','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2717,104817,'�������� ��������� ��','120521410','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2718,104818,'���� ����� ��','108422229','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2719,104819,'��-�� ������� ������� ��','120030817�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2720,104820,'���-�.�������� ��','120559222','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2721,107820,'����� ������ ��� ��','115101344�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2722,103786,'���� ������� ���','115765167','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2723,104239,'����-282 ��','830109821�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2724,109186,'����� ����� ��','115043407','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2725,103787,'����-�� ����','115865580','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2726,103230,'���� ��������� ����','115254062','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2727,105211,'���� ��','115238179','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2728,103788,'���-89 �.������� ��','115869873','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2729,105207,'���� 4 ���','115615527','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2730,107821,'������ ������ ���� ���� 1','131145596','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2731,107822,'������ ������ ���� ���� 2','131145596','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2732,109187,'���-���� ������ ��','115831845','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2733,107849,'��� ������� ��','120041151�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2734,107850,'����� ������ ��','120000635�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2735,104821,'�����-������ ������� ��','108534480','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2736,104822,'�������� �������� ��','120000514','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2737,104823,'����� ������� ��','120560463','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2738,107851,'������� �����-30 ��','120521990','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2739,107185,'��������� ���','825396215','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2740,107852,'������ ����� ��','120012826�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2741,107823,'�����-� ��','825041121�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2742,107824,'������ ���','115637057','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2743,105549,'���-100 ��','115105798','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2744,107827,'��� ���','115654715�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2745,107828,'������� 2001 ��','115608867','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2746,104242,'������ ��������� ��','825250838','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2747,103231,'����� ����-���� ����','115797663','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2748,109193,'������� �������� ��','825376420','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2749,107825,'���� ����','115223317','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2750,107826,'Speed-F Ltd','115655906','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2751,107186,'���� ���','115647749','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2752,103873,'����� ��','115649732','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2753,107193,'����� ������� 2005','115907271','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2754,102692,'������ ������ ��','830133441','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2755,105212,'����-2002 ���','115746947','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2756,105209,'���������-������ 70 ��','115861938','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2757,109670,'����� ���������-������ ��','115026824�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2758,108508,'��������-99 ��','115003124','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2759,105208,'����-2000 �.������ ��','115869707','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2760,107869,'����� ��','825057112','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2761,103232,'����� ������� ��','825013323�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2762,107870,'���� � ��-���� ������ ��','112619488','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2763,103233,'���-527 ���������� �-�� ��','825134762�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2764,103234,'����� ������ ��','825087533�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2765,107187,'�������� � ���','115861863','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2766,107829,'������� ��','120557036','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2767,107871,'���� �������� ��','825183204�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2768,105550,'���-32 ��','1150131501�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2769,107830,'�.������-���-90 � ��','825215972','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2770,108500,'���������-98 ��','115221127','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2771,103876,'������� ��','115887833','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2772,109669,'�����-52 ��','115051838�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2773,108501,'�� ������-�.������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2774,107831,'���� ������� ��','120032588','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2775,105551,'������ ����� ��','040442236�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2776,107832,'����� ������-���� ��','120539910','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2777,107833,'�����-����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2778,106039,'������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2779,107834,'��������� �������� ��','120557987','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2780,109188,'������-������� �������� ��','115855928','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2781,103235,'� � � ������� ���','115892218','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2782,103236,'� � � ������� 2 ���','115892218','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2783,109837,'����-�����\"����� ���������\"��','825239447','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2784,104244,'������� �������� ��','825211059�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2785,108502,'������-�.������� ��','115881905','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2786,104245,'��� 48 ���','825087704�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2787,104837,'����� ������� ��','830165987�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2788,106232,'������� �������� ��','115573252','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2789,104838,'�����-� ����','120020890','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2790,107188,'���� 4000 ����','115099998�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2791,102693,'������� ������ ��','123686805','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2792,108503,'���������� 95 ��','825342083�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2793,104839,'�����-2-������� ������� ��','120554741','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2794,104240,'����-60 ��','825092669�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2795,107872,'������� ������� 33 ��','115686823','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2796,107873,'������� ���','115226668','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2797,109843,'������-2000 ������ ������ ��','115529633','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2798,104241,'������ ����� ��','825208586','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2799,102704,'������ 04 ����','131196719','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2800,105216,'������-�.��������� ��','115036619�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2801,109845,'����.�������� �� �� ��','115753528','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2802,109844,'����� �������� ��','040070743','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2803,106233,'�����-�.�������� ��','115287767�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2804,108504,'�.�.������ ����','115084980�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2805,108505,'����� ��','115189821','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2806,104859,'����� ��������� ��','120018302','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2807,103877,'����-��� ��','115288869','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2808,109846,'�����-7-���� �������� ��','825097221','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2809,108506,'����-����� ������ ������ ��','115145807�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2810,109847,'������-����� ��','825210737','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2811,107835,'����-�������� �������� ��','115844458','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2812,107836,'������ ��','825212710�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2813,107837,'�����-53','825100240','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2814,106234,'�����-����� �������� ��','115340324','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2815,107874,'����� ��������� ��','120018302','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2816,107875,'����� ������� ��','115178636','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2817,105504,'�������� ������� ��','115651313','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2818,107838,'������ ���-�.����� ��','115048048','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2819,107839,'������� �������� ��','825238483�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2820,104824,'����� ��','108065926�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2821,108507,'����-� ��','115518626','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2822,102702,'������-�.������ ��','120005148','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2823,105210,'����� 2 ���','115039793','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2824,106235,'�.��������-2001 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2825,105500,'������-90 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2826,105501,'���������-79 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2827,107840,'��-��-�.�������� ��','115884940','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2828,107848,'����������-93 ��','825102686','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2829,107841,'����� �������-������ ��','830141477�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2830,106236,'���� ��','115798555','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2831,104243,'���� ���� ����� ��','115078212�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2832,107842,'���� ��','120064762�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2833,109671,'�������-98 ��','115239854','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2834,108509,'������ �������-2002 ��','115756855','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2835,107843,'����� ��','120543136','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2836,104246,'�����-7-���� �������� ��','825097221','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2837,107844,'����� ������� ��','120030009','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2838,107845,'����� �������-����� ��','120543015','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2839,102694,'����-�.������ ��','4210007313','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2840,107846,'��� ��','120048416�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2841,109189,'����-90 ��','825163365�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2842,109848,'������� �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2843,107876,'���-��.������ ��','040141795','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2844,104840,'��������� ��������� ��','120507535','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2845,104827,'������ �������� ��','1200100864�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2846,108164,'������-��.��������� ��','115069601','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2847,104828,'����� ������� ��','830135129�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2848,106237,'����� ��','115500642�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2849,107194,'���� ������� ��','115871626','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2850,103878,'�����-94 ����','825296999','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2851,109869,'����� ������-2004 ��','115803358','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2852,109599,'����� ������ 41 ��','115571205','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2853,109870,'����-�������� ����� ��','115616351','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2854,102695,'���-��-���-04-�.����� ��','115870456','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2855,107853,'����-�.�������� ��','115869696','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2856,107854,'���� ��������-99 ��','115322613�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2857,107855,'���� ��','115323708�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2858,107877,'������� �������� ��','115873278','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2859,107856,'����� ����� ��','115520088','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2860,107857,'�.���������� ��','115749818','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2861,106249,'��- ������ ��������� ��','115904898','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2862,106250,'������ ������� ��','825041906','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2863,104860,'�������-������� �� ���','120508174','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2864,103237,'� � � ������� 3 ���','115892218','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2865,105505,'������� ����','115863298','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2866,106238,'����� ��','115186437','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2867,102696,'����-� ��','825053520�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2868,104829,'����� ������� ��','120554816','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2869,104830,'����-���� �������� ��','120523176','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2870,105506,'������ �������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2871,108510,'�����-1 ���� 2','115251924�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2872,103473,'����-�� ����','115760992','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2873,106251,'������ �������� ��','115606752','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2874,103457,'������-������ ������ ��','115860373','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2875,105507,'������-�.������ ��','117617690','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2876,107858,'������ �����-���� ��','120506020','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2877,109894,'�������-���.������ ��','115894272','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2878,107859,'���� ��������� ��','120032608�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2879,107860,'���� ������ ��','120039969�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2880,107861,'������� ��','120552263','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2881,107862,'����� ��','115263717','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2882,106252,'���� ���-�.��������� ��','115889880','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2883,107195,'�������-96 ���-2','115029934�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2884,105511,'��������-� ����','115850945','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2885,105508,'�������-��.������ ��','115877127','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2886,108514,'���� ����� ��','115014284�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2887,105509,'�����-�.�������� ��','115817653','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2888,109849,'������ ����� 70 ��','825825080�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2889,104831,'������ ��������-���� ��','120043241�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2890,107863,'�������-�.���������� ��','115864902','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2891,105213,'������ ������ ��','115090360�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2892,109850,'����������-�.������� ��','020363500�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2893,104832,'�� 88-�.��������� ��','120011464','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2894,107878,'����-�.�������� ��','825043565','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2895,107864,'������ ������-54 ��','115194899�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2896,107879,'��������  ���','115137753�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2897,107865,'������ ������� ��','115666475','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2898,107866,'������ ��','825157519�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2899,107189,'���-������� �������� ��','115843737','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2900,104834,'����� �������� ��','120504603','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2901,102703,'����� ������� ��','�120051448','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2902,109835,'������ ��������� ��','825250838','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2903,104833,'���� ����� ��','830145130�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2904,105512,'����� 100 ��','115216341�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2905,109853,'��-���� �������� ��','115146617','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2906,105513,'����� ��','825296710�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2907,105214,'������� ���','115886457','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2908,105518,'�����-91 ��','040894992�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2909,105514,'���� 50-��.�������� ��','825288707','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2910,105515,'����-�.�������� ��','115015767�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2911,105516,'������-73 ��','825130276�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2912,106239,'��������-�� ��','040026017','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2913,103879,'���� ������������-20 ��','115756435','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2914,105517,'������-�.�������� ��','115946025','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2915,109854,'������ ���','825397165','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2916,107880,'�����-�.������ ��','825240922�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2917,105519,'������-2002 ��','115767823','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2918,106240,'�� �� �� ����','115950618','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2919,109855,'����� ���','115675093','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2920,105520,'���-��.���������� ��','115821438','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2921,103880,'���������� ��','825144137','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2922,105521,'���� 75 ��','115869212','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2923,109856,'����������-�.�������� ��','115864234','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2924,109857,'��.������-���� ��','040388127','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2925,105522,'����-��������� ������� ��','115271485','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2926,109858,'����� 2002 ����','115650026','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2927,103881,'������ ��','825015982�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2928,105523,'�������� ��','115056212�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2929,105215,'������� ��� 1','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2930,104861,'����� ������ ��','108058451�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2931,105524,'�������� ��','825212428�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2932,105525,'����-�� ��','115820813','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2933,106241,'���� ��','115795491','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2934,109190,'�����-������� ���','115880408','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2935,109194,'����� ����','115835740','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2936,104835,'����� �������� ��','120069204','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2937,107881,'��� ��','115559224','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2938,109841,'��������� ������ ������ ���','115174538','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2939,109842,'����-������ ������ ��','115814283','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2940,105527,'����-�� ������� ������ ��','115299876','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2941,105528,'����-���� ������� ��','115529793','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2942,105526,'���� ������-2005 ��','115891109','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2943,103238,'�����-�.������� ��','040543737�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2944,109859,'�.�������� ��','115349610','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2945,105529,'������� ������ ����','115065542�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2946,109674,'��������-�.������� ��','115899376','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2947,107867,'����-����� �������� ��','115860882','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2948,106253,'������ ������ ��','1167474310','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2949,107190,'���-���� ����������� ��','115835637','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2950,105530,'�.���������-����10 ��','040599593�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2951,106242,'����� ������� ��','040984240�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2952,109191,'������-94 ��','825285497�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2953,103474,'�� �� �� ���','829090014�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2954,104862,'���-83-������ ��������� ��','120558184','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2955,102697,'�����-����� �������� ��','120067930','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2956,102698,'������-�������� � ��� ��','020829791�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2957,102699,'���� ��','120514437','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2958,102700,'����-�����-�� ��','825035458�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2959,104247,'�������-�.������� ��','115278615','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2960,106243,'����� ����','115890154','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2961,103882,'������ ������ ��','825134820','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2962,105552,'���� � ���� ����','115933686','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2963,105531,'�����4 ��','825130333�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2964,105532,'���� � ����','115172619','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2965,108511,'���� 2005 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2966,111111,'��-51 ��','040804347�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2967,109872,'������� ����� ��','115669126','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2968,103459,'�������� ��','040892127','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2969,109609,'������-��.������� ��','115763497','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2970,109195,'���� ��������� ��','115850532','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2971,107882,'�� ������ ����','115292853�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2972,103460,'�������-����� �������� ��','115758354','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2973,103461,'�����-����� ������ ��','825084793','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2974,103462,'������ ��','115181041','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2975,109873,'������ ������� ��','812078630','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2976,109860,'���� 86 ���','115631652','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2977,103463,'����� ����� ��','115810395','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2978,103464,'�������-� ��','115151336','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2979,103465,'����� ����� ��','825000927','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2980,109861,'�����-��.����� ��','115068620','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2981,103466,'����� ��','115675378','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2982,103475,'�������� ��','115042485','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2983,103467,'�������� ��','825064470�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2984,109863,'����-������ ������� ��','825168565�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2985,103468,'�������� ��2','825064470�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2986,103469,'�������� ��3','825064470�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2987,109672,'�������� �������� ��','825263910�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2988,108173,'�����-�.� ����','115824651','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2989,104863,'��-���� ��','120543271','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2990,107191,'������� ������� ����','115647806','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2991,103470,'����-����� ��������','115860882','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2992,109864,'������-��. ������� ��','115857092','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2993,108512,'������� ��������� ��','8255332872','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2994,103458,'��-51 ��','040804347�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2995,105533,'������ ����','115777511','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2996,106244,'������ ���','825379765','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2997,106245,'����� ��','825279601�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2998,106246,'����� ��','020486862','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (2999,104836,'����-���� ������ ��','830115856�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3000,104864,'�������� ��','120534030','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3001,106247,'���-�� ��','115600183','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3002,109192,'������-�-��.�������','115855814','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3003,105534,'�.������-������ ��','115800326','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3004,105535,'������ �������� ��','115677938','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3005,109891,'������� �.���� ��','115036380','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3006,102701,'�����-50-�.��������� ��','040204587�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3007,107868,'������-������ �������� ���� ��','040035532�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3008,109865,'�������� �������� 96-�.������� ��','115816342','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3009,105536,'������ �������� ��','825116764�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3010,109196,'�������-�.����� ��','825142428','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3011,105537,'����� ��','115873933','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3012,109866,'��. ���������� ��','825085564 �','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3013,105538,'����� ��������-98 ��','115260300','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3014,109600,'������� ��������� ��','115908875','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3015,105539,'�������� ��������-��� ��','�823119443','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3016,105540,'���-3 �.��������� ��','040334082�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3017,104865,'�������� -99 �.����� ��','120560267','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3018,105541,'������ ������� ��','825377732�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3019,105544,'����-�������� ������ ��','�115354080','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3020,105542,'����-����� ����� ��','825328126�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3021,103476,'�������� �� 2','040892127','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3022,108513,'�������� ����� ��','115882341','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3023,103477,'�.�������-91 ��','040029166�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3024,103471,'���� 96 �.��������� ��','115038260','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3025,105545,'���� ��','825184441�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3026,103874,'���-������ �������� ��','115552660','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3027,109868,'���� ��','115777949','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3028,105543,'������� ��-������� ������� ��','�115082367','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3029,105546,'���� ��������-���� ��','825170460-�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3030,103472,'����� ��','115217263','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3031,103478,'����� �������-92 ��','115055644','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3032,109673,'��������� �.������ ���','115174538�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3033,105547,'����� ��','115201818','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3034,107192,'����-95 ����','115905622','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3035,106248,'���� ����� ���','115657818','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3036,109871,'���-����� �������� ��','115944736','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3037,107883,'������ ��� �������� ��','830113531�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3038,107884,'������ � ��� �������� ��','830113531�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3039,109895,'�� ��-������ ������ ��','115843954','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3040,109896,'������-��.��������� ��','115854484','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3041,109198,'���� ���������� ���������','115770762','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3042,109676,'����-�.��������� ��','115944864','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3043,109879,'��������-�.��������� ��','115148902','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3044,109880,'�.�.-95 ������ ����� ��','825393989','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3045,109881,'�.���������-������� ��','115009515','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3046,109874,'���-26 ��','115155153','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3047,109875,'����-���� ��������� ��','115806991','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3048,109897,'�������-�.������ ��','115639186','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3049,109876,'����-94 �.�������� ��','115120501','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3050,109877,'������� ��������-67 ��','115616159','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3051,109898,'������ ������ ��','825042189','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3052,103883,'����������-95 ��','825342083�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3053,109675,'��-���-�������� ��','112132060','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3054,103884,'�������� ������ ���� ��','825065796','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3055,105553,'�����-������ ������ ��','115922743','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3056,105554,'����-�.������� ��','115902235','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3057,109899,'������� �������-89 ��','115249624','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3058,109882,'���� ������� ��','115037468','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3059,109883,'����� ��','115845738','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3060,109878,'������� ������ ��','115126237�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3061,109900,'����� ��� ����','115851591','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3062,109901,'����� 2002 ����','115650026','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3063,109902,'������� 13 �������� ������� ��','040489410','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3064,109903,'������-2001 ��','115615257','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3065,109904,'������ ������� ��','115880130','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3066,104866,'����� -�.������-������ ������� ��','120070587','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3067,104867,'��� ��','120003065','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3068,109677,'����� ����','115612335','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3069,109884,'��� ����� ����','115909906','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3070,109885,'���� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3071,104248,'�������� ����','115901304','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3072,104249,'���-�.������� ��','825053011','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3073,107885,'�.�����-���-98','115257489�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3074,107886,'����� ����','115612335','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3075,107887,'��������� 73 ��','115894735','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3076,109906,'������� ��������� ��','115950244','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3077,107888,'���� ��� ��','040334841�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3078,83,'������� ���','115297619�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3079,109886,'������ �����-��������� ��','115741383','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3080,109907,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3081,109908,'����� ������� �� 2','825330661','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3082,109887,'�������� ��','825162377','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3083,109862,'�-3 ����','115882188','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3084,103479,'��.������-������ 2000 ��','825011902','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3085,103480,'������� � ��� ��','825229274','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3086,109909,'���-46-�.������ ��','825089146','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3087,109888,'����-������ ������� ��','115091188','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3088,109910,'�����-�-91-�.�������� ��','115248069','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3089,109911,'������-�.������� ��','827204775','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3090,109889,'��� �������-��������� ��','825328467','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3091,109913,'������ ����� ��','115555432','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3092,109890,'������-������ ������� ��','115078511','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3093,109892,'�������� ������� ��','825170203','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3094,107196,'����������� ����','115577877','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3095,105217,'������ ��','115950269','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3096,109893,'�������-����� ������� ��','115181649','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3097,105555,'������ ��������� ��','112626640','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3098,108515,'������-�� ��','825029665�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3099,109914,'������� ����','115842788','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3100,109915,'������ ������-������� ��','115920361','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3101,109917,'�����-�.������� ��','825351400','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3102,109918,'����� ������ ��','115166324','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3103,57,'�������� 1 �� �����','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3104,106055,'�� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3105,99999,'����-12 ������� ���','040114702','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3106,109570,'����-12 ��','115206363','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3107,84,'�������� ���','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3108,104000,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3109,109799,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3110,109836,'������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3111,103500,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3112,103000,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3113,102999,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3114,103072,'���-����� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3115,107500,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3116,108999,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3117,109499,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3118,104999,'��� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3119,106254,'����-�.����� ��','115896992','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3120,109197,'���-����� �������� ��','115944736','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3121,110045,'����� 44 ����','115753631','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3122,110793,'���� 95 ��','112003731','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3123,110598,'������ ����','115085979�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3124,110420,'�� ��������� 23 ���','131141854','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3125,110613,'����� ��������� ���','115196982','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3126,110012,'���� �������� ��','825336739�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3127,110080,'���-��������� ���� 142','000471753�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3128,110627,'������� ��','825083669�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3129,110068,'��-�������� �������� ��','825109079�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3130,110070,'���� 98 ��','115264213�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3131,112,'�����-2002 ����','128560174','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3132,110007,'����� ���','126648610','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3133,110199,'����� ��','115034924�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3134,110041,'����� �������� ����� ��','820174525�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3135,110049,'����-4 ��','030052309�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3136,110021,'����� ��','822102914�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3137,110630,'���� ����','120542582','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3138,110772,'������� ����','115887406','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3139,110016,'��� ����','11000688�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3140,110272,'������ ������� ��','811023549','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3141,110001,'������ ��','120051124�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3142,110580,'���� ������� ��','126642493','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3143,110002,'������ ���','101665413','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3144,110004,'�����-12 ��','115075814','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3145,110101,'������ ��','828014661�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3146,110312,'������ ����','116547004','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3147,110076,'���������-������� ��','811167033�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3148,110022,'���� �����-��� ��','825158652�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3149,110282,'������-�� ���','115640078','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3150,110031,'��������-99 ����','115324984','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3151,110083,'������ �������� -���� ��','120043241�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3152,110095,'���������� ���','836225188�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3153,110038,'������ ������ ��','811205690','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3154,110440,'����� ����','108551871','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3155,110616,'��� � �� ���','15188349�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3156,110094,'���� ������ ��','115081124�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3157,110006,'����-2000 ���','115581181','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3158,110072,'����� �����-���������� ��','811186181�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3159,142,'�����-����� �������','121378335�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3160,110641,'������-� ��','830163139�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3161,110636,'������ ��','112067004�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3162,110578,'�����-���� ����� ��','030124858�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3163,110011,'�����-91 ��','836013045�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3164,110008,'���� ������ ��','825323970�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3165,110153,'������ ��','040694931�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3166,110310,'����-������� ������ ��','130344990','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3167,110044,'���� ����','115830832','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3168,110629,'�������� ����','120558234','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3169,110009,'�� ���-������ �����','115277043�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3170,110132,'������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3171,110084,'����� ��','115140589�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3172,110241,'������ ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3173,110783,'��� ������ ����','115892481','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3174,105121,'�����','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3175,109538,'�����','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3176,109642,'���������� ������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3177,110358,'���������� ��','108610476','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3178,110057,'����� ��','825269386�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3179,110795,'������ 2 ���','115034714','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3180,110112,'������ ��','123047024�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3181,110000,'������ 3 ���','115594691','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3182,110003,'���-����� ������ ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3183,110005,'�����-������ ������ ��','108069152�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3184,110019,'����� ���������� ��','822108965�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3185,110030,'����� �����-�.����� ��','115020814','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3186,110036,'���� ��','819363518�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3187,110037,'�����-94 ��','825303461','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3188,110043,'������� ��','020329551�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3189,110046,'����� ��������� ��','825280062�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3190,110047,'����� ��','115129498�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3191,110053,'�������-91-������� ��','112079437�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3192,110059,'���-�� ��','825264916�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3193,110060,'���-������ ���','123156493','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3194,110077,'�����-� ��','040555351�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3195,110085,'����-������� ��������� ��','108062898�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3196,110090,'������� �������� ��','825094684�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3197,110091,'������� ����','112131275','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3198,110096,'����� 86 ��','818039075�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3199,110097,'������ �������� ��','628031157�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3200,110107,'�������� ��','040668712�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3201,110122,'������ ��','811049818�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3202,110476,'�������','115000506','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3203,110137,'������ 97 ���','111022903�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3204,110480,'������� ���','825314949','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3205,110166,'������-������� ������ ��','115615395','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3206,110175,'���� ��','030107240�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3207,110571,'����� ������� ��','115567299','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3208,110219,'�������� ���������� ��','825346950�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3209,110236,'����� ��','828028796�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3210,110596,'����� ����','115182531','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3211,110248,'������ ����-������� ��','822024727�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3212,110599,'������-�� ���','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3213,110264,'������ ���','525340456�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3214,110618,'������ ���','101665413','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3215,110273,'�����-������ ������� ��','112590684','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3216,110625,'����� ����� ��','822121090','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3217,110298,'����� ���� ��','108016623','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3218,110628,'������� ������ ��','123512637','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3219,110346,'����-� �������� ��','115106722�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3220,110631,'����� ������ ���','115015016','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3221,110351,'����-�� �������� ��','123136359�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3222,110373,'������ �������� ��','126507111','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3223,110405,'������ ����','112555459','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3224,110637,'������ ������ 2005 ����','126654620','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3225,110660,'���� ������-������� ����','115088039','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3226,110661,'�������� ���� ����','115777810','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3227,110663,'���� ������� ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3228,110665,'����� ���������� �����','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3229,110667,'�� ������� ������� ��� ������','826020530','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3230,110777,'���� ����� �������� ��','115860882','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3231,110177,'���� ���������','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3232,110619,'������� 53 ��','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3233,110225,'����-���� ����','','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3234,109905,'���� ���������� ��','112551521','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3235,109916,'����� 83-�.������ ��','115888383','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3236,107889,'������-92 ��','1160006788','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3237,104868,'�����-��-����� �������� ��','120021070','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3238,107890,'������ �������� ��','120064919','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3239,107197,'����� �����-65 ��','825102597','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3240,109912,'��� -�.������� ��','115225930','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3241,109919,'����-�.������� ��','825335270','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3242,101920,'�����-� ��','825030482','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3243,107891,'�����-�.����������� ��','115882708','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3244,107892,'����� ������ ��','020364381�','','���� �����',118,'���� �����','���� �����','���� �����','���� �����',1,1,0);
INSERT INTO `n_contragent` VALUES (3245,1,'tytr','234','234','dfg',118,'dfg','dfg','dfg@mail.bg','dgf',1,1,0);
INSERT INTO `n_contragent` VALUES (3246,111112,'Magi - Dimcho Dimov ET','6556555555','111566655','dsdfsdfdsfdsf dsfdsfsdfldsl',995,'254345454','3242423','','',2,2,0);


#
# Table structure for table n_country
#

CREATE TABLE `n_country` (
  `id_n_country` int(11) NOT NULL auto_increment,
  `code_n_country` char(1) default NULL,
  `name_n_country` varchar(20) default NULL,
  PRIMARY KEY  (`id_n_country`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_country
#

INSERT INTO `n_country` VALUES (1,'1','��������');
INSERT INTO `n_country` VALUES (2,'2','Russia');
INSERT INTO `n_country` VALUES (3,'3','USA');


#
# Table structure for table n_doc_type_user_rights
#

CREATE TABLE `n_doc_type_user_rights` (
  `id_ndtur` int(11) NOT NULL auto_increment,
  `id_um` int(11) NOT NULL default '0',
  `id_sdtn` int(11) NOT NULL,
  `rights_ndtur` int(11) NOT NULL default '3',
  PRIMARY KEY  (`id_ndtur`),
  UNIQUE KEY `compzite1` (`id_um`,`id_sdtn`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_doc_type_user_rights
#

INSERT INTO `n_doc_type_user_rights` VALUES (1,1,1,0);
INSERT INTO `n_doc_type_user_rights` VALUES (2,2,2,0);


#
# Table structure for table n_expens
#

CREATE TABLE `n_expens` (
  `id_n_expens` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) NOT NULL,
  `code_n_expens` int(11) NOT NULL,
  `name_n_expens` varchar(50) default NULL,
  `comments_n_expens` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_expens`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='//tablitsa za razhodite';

#
# Dumping data for table n_expens
#

INSERT INTO `n_expens` VALUES (3,8,1,'Razhod 1','');
INSERT INTO `n_expens` VALUES (4,9,2,'Razho 2','');


#
# Table structure for table n_group
#

CREATE TABLE `n_group` (
  `id_n_group` int(11) NOT NULL auto_increment,
  `nom_n_group` int(11) default NULL,
  `cod_n_group` varchar(45) default NULL,
  `name_n_group` varchar(45) default NULL,
  `id_al` int(11) default NULL,
  PRIMARY KEY  (`id_n_group`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='vsichki vidove grupi';

#
# Dumping data for table n_group
#

INSERT INTO `n_group` VALUES (2,1,'101','�����',1);
INSERT INTO `n_group` VALUES (3,1,'201','����',2);
INSERT INTO `n_group` VALUES (4,1,'301','���� �������',2);
INSERT INTO `n_group` VALUES (5,0,'','',0);
INSERT INTO `n_group` VALUES (6,0,'100','Office tehnic',2);
INSERT INTO `n_group` VALUES (7,6,'','',0);
INSERT INTO `n_group` VALUES (8,6,'11','������� �� ������� �������',1);
INSERT INTO `n_group` VALUES (9,6,'15','������� �� ������������ ������',1);
INSERT INTO `n_group` VALUES (10,6,'21','������� �� ��������',1);
INSERT INTO `n_group` VALUES (11,6,'25','������� �� ������',1);
INSERT INTO `n_group` VALUES (12,5,'001','���������',1);
INSERT INTO `n_group` VALUES (13,5,'010','��������',1);
INSERT INTO `n_group` VALUES (14,3,'100','�������� ����',1);
INSERT INTO `n_group` VALUES (15,3,'200','������ ����',1);
INSERT INTO `n_group` VALUES (16,3,'1750','������������',2);
INSERT INTO `n_group` VALUES (17,4,'2340','������',2);
INSERT INTO `n_group` VALUES (18,4,'','',0);


#
# Table structure for table n_incoms
#

CREATE TABLE `n_incoms` (
  `id_n_incoms` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) NOT NULL,
  `code_n_incoms` int(11) NOT NULL,
  `name_n_incoms` varchar(40) default NULL,
  `comments_n_incoms` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_incoms`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='//tablitsa za prihodite';

#
# Dumping data for table n_incoms
#

INSERT INTO `n_incoms` VALUES (2,10,1,'Prihod 1','');
INSERT INTO `n_incoms` VALUES (3,11,2,'Prihod 2','');


#
# Table structure for table n_money
#

CREATE TABLE `n_money` (
  `id_n_money` int(11) NOT NULL auto_increment,
  `cod_n_money` varchar(11) default NULL,
  `cod_lat_n_money` varchar(11) default NULL,
  `name_n_money` varchar(30) default NULL,
  `comments_n_money` varchar(100) default NULL,
  PRIMARY KEY  (`id_n_money`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='opisanie na valutite';

#
# Dumping data for table n_money
#

INSERT INTO `n_money` VALUES (1,'��.','BGL','��������� ���','');
INSERT INTO `n_money` VALUES (2,'�����','USD','������ �����','������������ ������������� ������');


#
# Table structure for table n_nm
#

CREATE TABLE `n_nm` (
  `id_n_nm` int(11) NOT NULL auto_increment,
  `postcode_n_nm` int(11) NOT NULL,
  `name_n_nm` varchar(20) default NULL,
  `id_n_oblast` tinyint(4) NOT NULL,
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
INSERT INTO `n_nm` VALUES (5378,0,'',0);


#
# Table structure for table n_obekt
#

CREATE TABLE `n_obekt` (
  `id_n_obekt` int(11) NOT NULL auto_increment,
  `Id_cust` int(11) default NULL,
  `name_n_obekt` varchar(45) default NULL,
  `address_n_obekt` varchar(25) default NULL,
  `code_n_obekt` varchar(10) NOT NULL,
  `id_ls_n_person` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_n_obekt`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_obekt
#

INSERT INTO `n_obekt` VALUES (0,0,'0','0','0',0);
INSERT INTO `n_obekt` VALUES (1,1,'123124','13123','132',1);


#
# Table structure for table n_oblast
#

CREATE TABLE `n_oblast` (
  `id_n_oblast` int(11) NOT NULL auto_increment,
  `name_n_oblast` varchar(20) default NULL,
  `id_n_country` tinyint(4) default NULL,
  PRIMARY KEY  (`id_n_oblast`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_oblast
#

INSERT INTO `n_oblast` VALUES (0,'12345',1);
INSERT INTO `n_oblast` VALUES (2,'',0);
INSERT INTO `n_oblast` VALUES (3,'',0);
INSERT INTO `n_oblast` VALUES (4,' ',0);
INSERT INTO `n_oblast` VALUES (5,'',0);
INSERT INTO `n_oblast` VALUES (6,'',0);
INSERT INTO `n_oblast` VALUES (7,'����������',1);
INSERT INTO `n_oblast` VALUES (8,'���������',1);
INSERT INTO `n_oblast` VALUES (9,'',0);


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

INSERT INTO `n_product_all_measure` VALUES (1,'����','��.');
INSERT INTO `n_product_all_measure` VALUES (2,'�����','�����');
INSERT INTO `n_product_all_measure` VALUES (3,'�����','�����');


#
# Table structure for table n_product_consigment
#

CREATE TABLE `n_product_consigment` (
  `id_pc` int(11) unsigned NOT NULL auto_increment,
  `id_pm` int(11) default NULL,
  `parcel_pc` int(11) NOT NULL,
  `dateofexpire_pc` date default NULL,
  PRIMARY KEY  (`id_pc`),
  KEY `id_pm` (`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_consigment
#

INSERT INTO `n_product_consigment` VALUES (1,36,125,NULL);
INSERT INTO `n_product_consigment` VALUES (2,35,8758,NULL);
INSERT INTO `n_product_consigment` VALUES (3,49,158,NULL);


#
# Table structure for table n_product_description
#

CREATE TABLE `n_product_description` (
  `id_pd` int(11) NOT NULL auto_increment,
  `m1_pd` int(11) NOT NULL,
  `v1_pd` int(11) default NULL,
  `m2_pd` int(11) NOT NULL,
  `v2_pd` int(11) default NULL,
  `m3_pd` int(11) NOT NULL,
  `v3_pd` int(11) default NULL,
  PRIMARY KEY  (`id_pd`),
  KEY `v1_pd` (`v1_pd`,`v2_pd`,`v3_pd`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_description
#

INSERT INTO `n_product_description` VALUES (1,1,1,2,7,3,49);
INSERT INTO `n_product_description` VALUES (2,1,1,2,7,3,55);
INSERT INTO `n_product_description` VALUES (3,1,1,2,4,2,10);
INSERT INTO `n_product_description` VALUES (4,1,1,2,4,2,10);
INSERT INTO `n_product_description` VALUES (5,1,1,2,12,3,25);
INSERT INTO `n_product_description` VALUES (6,1,1,2,1,3,10);
INSERT INTO `n_product_description` VALUES (7,1,1,2,1,3,2);
INSERT INTO `n_product_description` VALUES (8,1,1,2,1,3,10);
INSERT INTO `n_product_description` VALUES (9,1,1,2,10,2,100);


#
# Table structure for table n_product_fee
#

CREATE TABLE `n_product_fee` (
  `id_pf` int(11) NOT NULL auto_increment,
  `dds_pf` decimal(10,0) NOT NULL,
  `excise_pf` decimal(10,0) NOT NULL,
  `other_pf` decimal(10,0) NOT NULL,
  PRIMARY KEY  (`id_pf`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_fee
#

INSERT INTO `n_product_fee` VALUES (1,20,20,20);
INSERT INTO `n_product_fee` VALUES (2,34,34,34);
INSERT INTO `n_product_fee` VALUES (3,34,34,34);
INSERT INTO `n_product_fee` VALUES (4,20,20,20);
INSERT INTO `n_product_fee` VALUES (5,20,0,0);
INSERT INTO `n_product_fee` VALUES (6,20,0,0);
INSERT INTO `n_product_fee` VALUES (7,20,0,0);
INSERT INTO `n_product_fee` VALUES (8,20,0,0);


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
  `name_pm` varchar(30) character set cp1251 collate cp1251_bulgarian_ci NOT NULL,
  `fname_pm` varchar(30) character set cp1251 collate cp1251_bulgarian_ci default NULL,
  `sname_pm` varchar(10) character set cp1251 collate cp1251_bulgarian_ci default NULL,
  `cname_pm` varchar(10) character set cp1251 collate cp1251_bulgarian_ci default NULL,
  `cod1_pm` varchar(20) character set cp1251 collate cp1251_bulgarian_ci default NULL,
  `cod2_pm` varchar(20) character set cp1251 collate cp1251_bulgarian_ci default NULL,
  `barcod_pm` int(11) unsigned default NULL,
  `max_pop_pm` double default NULL,
  `expertsheet_pm` varchar(45) character set cp1251 collate cp1251_bulgarian_ci default NULL,
  `flag_pm` int(3) unsigned zerofill NOT NULL default '000',
  `min_pm` int(11) unsigned NOT NULL default '0',
  `code_pm` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_main
#

INSERT INTO `n_product_main` VALUES (1,1,1,1,1,1,'��������','��������','��','��','11','111',1234567890,1,'???',1,1,0);
INSERT INTO `n_product_main` VALUES (2,2,4,1,2,1,'VGA','����� �����','VGA','VGA','��� 1','��� 2',123456789,2,' ����� �����',1,22,0);
INSERT INTO `n_product_main` VALUES (3,2,4,1,2,1,'VGA','����� �����','VGA','VGA','��� 1','��� 1',123456789,2,' ����� �����',1,22,0);
INSERT INTO `n_product_main` VALUES (4,5,4,2,3,4,'sdf','sdf','sdf','sdf','sdf','efsd',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (5,5,4,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (6,5,4,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (7,5,4,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (8,5,4,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (9,5,4,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (10,5,4,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (11,6,6,3,4,5,'Personalen PC','PC','PC','PC','kod1','kod1',12364587,2,'??? ---',1,2,0);
INSERT INTO `n_product_main` VALUES (12,2,5,1,2,1,'VGA','����� �����','VGA','VGA','��� 1','��� 2',123456789,2,' ����� �����',1,22,0);
INSERT INTO `n_product_main` VALUES (13,7,6,4,5,6,'pc','pc','pc','pc','111111','11111',111111,2,'12',1,2,0);
INSERT INTO `n_product_main` VALUES (14,6,6,3,4,5,'Personalen PC','PC','PC','PC','kod1','kod1',12364587,2,'??? ---',1,2,0);
INSERT INTO `n_product_main` VALUES (15,6,6,3,4,5,'Personalen PC','PC','PC','PC','kod1','kod1',12364587,2,'??? ---',1,2,0);
INSERT INTO `n_product_main` VALUES (16,1,5,1,1,1,'��������','��������','��','��','11','111',1234567890,1,'???',1,1,0);
INSERT INTO `n_product_main` VALUES (17,7,6,4,5,6,'pc','pc','pc','pc','111111','11111',111111,2,'12',1,2,0);
INSERT INTO `n_product_main` VALUES (18,6,6,3,4,5,'Personalen PC','PC','PC','PC','kod1','kod1',12364587,2,'??? ---',1,2,0);
INSERT INTO `n_product_main` VALUES (19,5,5,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (20,5,5,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (21,5,5,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (22,5,5,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (23,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (24,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (25,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (26,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,0);
INSERT INTO `n_product_main` VALUES (27,8,6,5,6,7,'�������','�������','�������','�������','���1','���2',12222,2,'��������� ����',1,10,0);
INSERT INTO `n_product_main` VALUES (28,8,6,5,6,7,'�������','�������','�������','�������','���1','���2',12222,2,'��������� ����',1,10,0);
INSERT INTO `n_product_main` VALUES (29,8,6,5,6,7,'�������','�������','�������','�������','���1','���2',12222,2,'��������� ����',1,10,0);
INSERT INTO `n_product_main` VALUES (30,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',1,1,0);
INSERT INTO `n_product_main` VALUES (31,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',1,1,0);
INSERT INTO `n_product_main` VALUES (32,2,6,1,2,1,'VGA','����� �����','VGA','VGA','��� 1','��� 1',123456789,2,' ����� �����',1,22,0);
INSERT INTO `n_product_main` VALUES (33,2,6,1,2,1,'VGA','����� �����','VGA','VGA','��� 1','��� 1',123456789,2,' ����� �����',1,22,0);
INSERT INTO `n_product_main` VALUES (34,2,6,1,2,1,'VGA','����� �����','VGA','VGA','��� 1','��� 1',123456789,2,' ����� �����',1,22,0);
INSERT INTO `n_product_main` VALUES (35,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',0,1,11251);
INSERT INTO `n_product_main` VALUES (36,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',0,1,11);
INSERT INTO `n_product_main` VALUES (37,8,6,5,6,7,'�������','�������','�������','�������','���1','���2',12222,2,'��������� ����',0,10,0);
INSERT INTO `n_product_main` VALUES (38,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',0,3,2);
INSERT INTO `n_product_main` VALUES (39,2,6,1,2,1,'VGA','����� �����','VGA','VGA','��� 1','��� 2',123456789,2,' ����� �����',1,22,1);
INSERT INTO `n_product_main` VALUES (40,8,6,5,6,7,'�������','�������','�������','�������','���1','���2',12222,2,'��������� ����',1,10,3);
INSERT INTO `n_product_main` VALUES (41,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',1,1,4);
INSERT INTO `n_product_main` VALUES (42,2,6,1,2,1,'VGA','����� �����','VGA','VGA','��� 1','��� 2',123456789,2,' ����� �����',1,22,3);
INSERT INTO `n_product_main` VALUES (43,8,6,5,6,7,'�������','�������','�������','�������','���1','���2',12222,2,'��������� ����',1,10,4);
INSERT INTO `n_product_main` VALUES (44,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',1,1,2);
INSERT INTO `n_product_main` VALUES (45,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',1,3,1);
INSERT INTO `n_product_main` VALUES (46,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',0,1,2);
INSERT INTO `n_product_main` VALUES (47,8,6,5,6,7,'�������','�������','�������','�������','���1','���2',12222,2,'��������� ����',0,10,4);
INSERT INTO `n_product_main` VALUES (48,2,6,1,2,1,'VGA','����� �����','VGA','VGA','��� 1','��� 2',123456789,2,' ����� �����',0,22,3);
INSERT INTO `n_product_main` VALUES (49,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',0,3,99);


#
# Table structure for table n_product_price
#

CREATE TABLE `n_product_price` (
  `id_pp` int(11) NOT NULL auto_increment,
  `id_sl_curs` int(10) unsigned NOT NULL,
  `price1_pp` decimal(10,5) default NULL,
  `price2_pp` decimal(10,5) default NULL,
  `price3_pp` decimal(10,5) default NULL,
  `price0_pp` decimal(10,5) default NULL,
  PRIMARY KEY  (`id_pp`),
  KEY `n_product_price_FKIndex1` (`id_sl_curs`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table n_product_price
#

INSERT INTO `n_product_price` VALUES (1,1,15000,15000,15000.02,14000);
INSERT INTO `n_product_price` VALUES (2,1,2,2.5,2.75,1.75);
INSERT INTO `n_product_price` VALUES (3,1,100,112,120,100);
INSERT INTO `n_product_price` VALUES (4,1,15000,17000,1300,1000);
INSERT INTO `n_product_price` VALUES (5,1,15000,15000,15000,1000);
INSERT INTO `n_product_price` VALUES (6,1,175,180,199,150);
INSERT INTO `n_product_price` VALUES (7,1,110.15,1120.02,109.01,100);


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

INSERT INTO `n_product_promotion_price` VALUES (1,0,'0002-02-06','0002-02-06');
INSERT INTO `n_product_promotion_price` VALUES (2,130,'0003-03-06','0003-03-06');
INSERT INTO `n_product_promotion_price` VALUES (3,1099,'2007-12-12','2006-12-12');
INSERT INTO `n_product_promotion_price` VALUES (4,1099,'2005-12-12','2006-12-12');
INSERT INTO `n_product_promotion_price` VALUES (5,155,'2006-02-12','2006-03-12');
INSERT INTO `n_product_promotion_price` VALUES (6,150,'2006-12-12','2006-12-12');


#
# Table structure for table n_storage
#

CREATE TABLE `n_storage` (
  `id_n_storage` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `code_n_storage` int(11) unsigned NOT NULL default '0',
  `name_n_storage` varchar(50) default NULL,
  `comments_n_storage` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_storage`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='skladove';

#
# Dumping data for table n_storage
#

INSERT INTO `n_storage` VALUES (1,12,1,'Centralen','');
INSERT INTO `n_storage` VALUES (2,13,2,'�������� 1','');


#
# Table structure for table n_type_bacc
#

CREATE TABLE `n_type_bacc` (
  `id_tbacc` int(11) NOT NULL auto_increment,
  `name_tbacc` varchar(30) default NULL,
  PRIMARY KEY  (`id_tbacc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='tipove bankovi smetki';

#
# Dumping data for table n_type_bacc
#

INSERT INTO `n_type_bacc` VALUES (1,'������������� ������');
INSERT INTO `n_type_bacc` VALUES (2,'��� ������');


#
# Table structure for table n_type_doc
#

CREATE TABLE `n_type_doc` (
  `id_ntd` int(11) NOT NULL auto_increment,
  `code_ntd` int(11) unsigned NOT NULL default '0',
  `name_ntd` varchar(50) default NULL,
  `name_print_ntd` varchar(50) default NULL,
  PRIMARY KEY  (`id_ntd`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='tipove documenti';

#
# Dumping data for table n_type_doc
#

INSERT INTO `n_type_doc` VALUES (1,1010,'������� ��������','������� ��������');
INSERT INTO `n_type_doc` VALUES (2,4,'�������','������� �������');
INSERT INTO `n_type_doc` VALUES (3,3550,'��������','�������� �������');
INSERT INTO `n_type_doc` VALUES (4,4000,'���. �������','��������� �������');
INSERT INTO `n_type_doc` VALUES (5,3010,'������ �������','��');
INSERT INTO `n_type_doc` VALUES (6,4265,'������ �������','�����');
INSERT INTO `n_type_doc` VALUES (7,6615,'��������','����');


#
# Table structure for table sl_contragent_obekt
#

CREATE TABLE `sl_contragent_obekt` (
  `id_sco` int(11) NOT NULL auto_increment,
  `id_contragent` int(11) default NULL,
  `id_object` int(11) default NULL,
  PRIMARY KEY  (`id_sco`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_contragent_obekt
#



#
# Table structure for table sl_contragent_product
#

CREATE TABLE `sl_contragent_product` (
  `id_scp` int(11) NOT NULL auto_increment,
  `id_contragent` int(11) default NULL,
  `id_pm` int(11) default NULL,
  `flag_scp` int(3) unsigned zerofill NOT NULL default '000',
  PRIMARY KEY  (`id_scp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_contragent_product
#

INSERT INTO `sl_contragent_product` VALUES (1,1,19,0);
INSERT INTO `sl_contragent_product` VALUES (2,1,20,0);
INSERT INTO `sl_contragent_product` VALUES (3,1,21,0);
INSERT INTO `sl_contragent_product` VALUES (4,1,25,1);
INSERT INTO `sl_contragent_product` VALUES (5,1,26,1);
INSERT INTO `sl_contragent_product` VALUES (6,1,0,0);
INSERT INTO `sl_contragent_product` VALUES (7,1,27,1);
INSERT INTO `sl_contragent_product` VALUES (8,1,29,1);
INSERT INTO `sl_contragent_product` VALUES (9,1,0,0);
INSERT INTO `sl_contragent_product` VALUES (10,1,30,1);
INSERT INTO `sl_contragent_product` VALUES (11,1,32,1);
INSERT INTO `sl_contragent_product` VALUES (12,1,33,1);
INSERT INTO `sl_contragent_product` VALUES (13,1,34,0);
INSERT INTO `sl_contragent_product` VALUES (14,1,36,1);
INSERT INTO `sl_contragent_product` VALUES (15,1,38,1);
INSERT INTO `sl_contragent_product` VALUES (16,1,41,1);
INSERT INTO `sl_contragent_product` VALUES (17,1,44,1);
INSERT INTO `sl_contragent_product` VALUES (18,3243,45,1);
INSERT INTO `sl_contragent_product` VALUES (19,5,47,0);
INSERT INTO `sl_contragent_product` VALUES (20,69,48,0);
INSERT INTO `sl_contragent_product` VALUES (21,3243,49,0);


#
# Table structure for table sl_curs
#

CREATE TABLE `sl_curs` (
  `id_sl_curs` int(11) NOT NULL auto_increment,
  `date_time_sl_curs` datetime NOT NULL,
  `id_n_money` int(11) unsigned zerofill NOT NULL default '00000000000',
  `value_sl_curs` decimal(10,5) default NULL,
  PRIMARY KEY  (`id_sl_curs`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='Cursove na money';

#
# Dumping data for table sl_curs
#

INSERT INTO `sl_curs` VALUES (1,'2006-02-02 10:10:10',1,1.63);


#
# Table structure for table sl_doc_type_num
#

CREATE TABLE `sl_doc_type_num` (
  `id_sdtn` int(11) NOT NULL auto_increment,
  `id_ntd` int(11) unsigned default NULL,
  `area_number_sdtn` int(3) unsigned zerofill NOT NULL default '000',
  `name_sdtn` varchar(50) default NULL,
  PRIMARY KEY  (`id_sdtn`),
  UNIQUE KEY `ndt1` (`id_ntd`,`area_number_sdtn`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_doc_type_num
#

INSERT INTO `sl_doc_type_num` VALUES (1,1,1,'�������');
INSERT INTO `sl_doc_type_num` VALUES (2,1,2,'�������� �������');
INSERT INTO `sl_doc_type_num` VALUES (3,5,3,'');
INSERT INTO `sl_doc_type_num` VALUES (4,5,4,'');
INSERT INTO `sl_doc_type_num` VALUES (5,5,5,'');
INSERT INTO `sl_doc_type_num` VALUES (6,1,7,'������� �������� ���  ����� 1');
INSERT INTO `sl_doc_type_num` VALUES (7,6,7,'');
INSERT INTO `sl_doc_type_num` VALUES (8,1,8,'������� �������� ����� 2');
INSERT INTO `sl_doc_type_num` VALUES (9,7,9,'������������� ��������');


#
# Table structure for table sl_document_facade
#

CREATE TABLE `sl_document_facade` (
  `id_df` int(11) unsigned NOT NULL auto_increment,
  `in_contragent_df` int(11) unsigned default NULL,
  `out_obekt_df` int(11) unsigned default NULL,
  `in_obekt_df` int(11) unsigned default NULL,
  `number_df` int(10) unsigned zerofill default NULL COMMENT 'nomera na dokumentite',
  `type_df` int(10) unsigned NOT NULL,
  `condition_df` varchar(11) default NULL,
  `out_store_df` int(11) unsigned default NULL,
  `total_df` decimal(10,6) default NULL,
  `dds_df` decimal(10,6) default NULL,
  `user_df` int(11) unsigned default NULL,
  `user_last_df` int(11) unsigned default NULL,
  `date_edition_df` date default NULL,
  `time_edition_df` time default '00:00:00',
  `distributor_df` int(11) unsigned default NULL,
  `delivere_df` int(10) unsigned default NULL,
  `faktura_connection_df` int(10) unsigned default NULL,
  `zaiavka_connection_df` int(10) unsigned default NULL,
  `description_pay_df` tinyint(3) unsigned default NULL,
  `paying_order_df` int(10) unsigned default NULL,
  `date_deliver_df` date default NULL,
  `date_pay_df` date default NULL,
  `comments_df` varchar(250) default NULL,
  `flag_finish_df` tinyint(3) unsigned zerofill NOT NULL default '000',
  `id_rep` int(11) unsigned default '0',
  `level_df` int(3) unsigned zerofill NOT NULL default '000',
  `out_contragent_df` int(11) default NULL,
  PRIMARY KEY  (`id_df`),
  UNIQUE KEY `Index_2` (`type_df`,`level_df`,`number_df`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_document_facade
#

INSERT INTO `sl_document_facade` VALUES (1,1,1,1,11111111,1,'1',1,1,1,1,1,'2006-02-02','0:00:01',1,1,1,1,1,1,'2006-02-02','2006-02-02','1',0,1,2,1);
INSERT INTO `sl_document_facade` VALUES (2,1,1,1,12222222,1,'1',1,1,1,1,1,'2006-02-02','0:00:01',1,1,1,1,1,1,'2006-02-02','2006-02-02','1',0,1,2,1);
INSERT INTO `sl_document_facade` VALUES (3,1,1,1,233333,1,'1',1,1,1,1,1,'2006-02-02','0:00:01',1,1,1,1,1,1,'2006-02-02','2006-02-02','1',0,1,3,1);
INSERT INTO `sl_document_facade` VALUES (6,1,1,1,4294967295,1,'1',1,1,1,1,1,'2006-02-02','0:00:01',1,1,1,1,1,1,'2006-02-02','2006-02-02','1',0,1,3,1);
INSERT INTO `sl_document_facade` VALUES (26,0,0,0,22222223,1,'0',2,254.4,42.4,2,2,'2006-01-25',NULL,0,0,0,0,0,0,'0000-00-00','0000-00-00','',1,NULL,1,3);
INSERT INTO `sl_document_facade` VALUES (44,0,0,0,22222224,1,NULL,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,NULL,NULL,NULL,1,NULL,1,0);
INSERT INTO `sl_document_facade` VALUES (51,0,0,0,22222226,1,NULL,0,0,0,0,0,NULL,'0:00:00',0,0,0,0,0,0,NULL,NULL,NULL,1,0,1,0);
INSERT INTO `sl_document_facade` VALUES (52,0,0,0,22222227,1,NULL,0,0,0,0,0,NULL,'0:00:00',0,0,0,0,0,0,NULL,NULL,NULL,1,0,1,0);
INSERT INTO `sl_document_facade` VALUES (53,0,0,0,22222228,1,NULL,0,0,0,0,0,NULL,'0:00:00',0,0,0,0,0,0,NULL,NULL,NULL,1,0,1,0);
INSERT INTO `sl_document_facade` VALUES (61,4,0,0,22222229,1,'0',2,240,40,2,2,'2006-01-27','0:00:00',0,0,0,0,0,0,'2006-01-01','2003-12-12','',1,0,1,0);
INSERT INTO `sl_document_facade` VALUES (62,0,0,0,22222230,1,'0',2,744.36,84.06,2,2,'2006-01-27','0:00:00',0,0,0,0,0,0,'1997-01-01','2003-12-12','',1,0,1,20);
INSERT INTO `sl_document_facade` VALUES (63,0,0,0,22222231,1,'0',2,2737.44,296.24,2,2,'2006-01-27','0:00:00',0,0,0,0,0,0,'1997-01-01','2003-12-12','',1,0,1,25);
INSERT INTO `sl_document_facade` VALUES (64,0,0,0,22222232,4,'1',0,0,0,0,0,'2005-01-01','0:00:00',0,0,0,0,0,0,'1997-01-01','1997-01-01',NULL,1,0,1,0);


#
# Table structure for table sl_document_lines
#

CREATE TABLE `sl_document_lines` (
  `id_dl` int(10) unsigned NOT NULL auto_increment,
  `id_pc` int(11) NOT NULL default '0',
  `id_n_storage` int(10) unsigned NOT NULL,
  `singly_price_dl` double NOT NULL,
  `climb_down_dl` double default NULL,
  `numbers_piece_dl` int(10) unsigned NOT NULL default '0',
  `dds_dl` double default NULL,
  `totalall_dl` double default NULL,
  `id_df` int(10) unsigned NOT NULL default '0',
  `price_list_dl` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_dl`),
  KEY `n_document_lines_FKIndex1` (`id_n_storage`),
  KEY `n_document_lines_FKIndex3` (`id_pc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_document_lines
#

INSERT INTO `sl_document_lines` VALUES (82,1,2,110.15,2,8,20,881.2,64,0);
INSERT INTO `sl_document_lines` VALUES (85,1,1,1,1,1,1,1,63,1);
INSERT INTO `sl_document_lines` VALUES (86,3,3,3,3,3,3,3,63,1);


#
# Table structure for table sl_exchange_rate
#

CREATE TABLE `sl_exchange_rate` (
  `id_sl_exchange_rate` int(10) unsigned NOT NULL auto_increment,
  `date_sl_exchange_rate` date default NULL,
  `id_n_money` int(11) default NULL,
  `value_sl_exchange_rate` decimal(10,5) default NULL,
  PRIMARY KEY  (`id_sl_exchange_rate`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='kursove na valutite';

#
# Dumping data for table sl_exchange_rate
#



#
# Table structure for table sl_m_operation
#

CREATE TABLE `sl_m_operation` (
  `id_sl_mop` int(11) unsigned NOT NULL auto_increment,
  `number_sl_mop` int(11) default NULL,
  `in_type_sl_mop` int(11) default NULL,
  `out_sl_mop` int(11) default NULL,
  `out_type_sl_mop` int(11) default NULL,
  `id_order_spec` int(11) default NULL,
  `id_order_spec_type` int(11) default NULL,
  `date_is` date default NULL,
  `d_rel_sl_mop` int(11) default NULL,
  `id_doc_fc` int(11) default NULL,
  `id_doc_s` int(11) default NULL,
  PRIMARY KEY  (`id_sl_mop`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_m_operation
#



#
# Table structure for table sl_n_obekt
#

CREATE TABLE `sl_n_obekt` (
  `Id_sno` int(11) NOT NULL auto_increment,
  `id_ls_n_person` int(11) default NULL,
  `Id_cust` int(11) default NULL,
  `name_sno` varchar(45) default NULL,
  `address_sno` varchar(25) default NULL,
  `code_sno` varchar(5) NOT NULL default '',
  PRIMARY KEY  (`Id_sno`),
  KEY `Customer` (`Id_cust`),
  KEY `sl_n_obekt_FKIndex1` (`id_ls_n_person`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_n_obekt
#



#
# Table structure for table sl_nalichnosti
#

CREATE TABLE `sl_nalichnosti` (
  `id_nal` int(11) NOT NULL auto_increment,
  `id_n_storage` int(11) default NULL,
  `id_pc` int(10) unsigned default NULL COMMENT 'partidni nomera',
  `level` tinyint(3) unsigned default NULL,
  `quant_nal` int(10) unsigned default NULL,
  `quant_rezerv_nal` int(10) unsigned default NULL,
  `return_rezerv_nal` int(11) default '0',
  PRIMARY KEY  (`id_nal`),
  UNIQUE KEY `Index_2` (`id_pc`,`id_n_storage`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_nalichnosti
#

INSERT INTO `sl_nalichnosti` VALUES (1,1,1,0,152,4294967295,NULL);
INSERT INTO `sl_nalichnosti` VALUES (2,1,2,0,135,0,NULL);
INSERT INTO `sl_nalichnosti` VALUES (3,2,1,1,90,4294967295,NULL);
INSERT INTO `sl_nalichnosti` VALUES (4,2,3,1,90,4294967293,NULL);


#
# Table structure for table user_master
#

CREATE TABLE `user_master` (
  `id_um` int(11) NOT NULL auto_increment,
  `acc_user` varchar(14) default NULL,
  `name_um` varchar(30) default NULL,
  `nomer_um` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_um`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table user_master
#

INSERT INTO `user_master` VALUES (1,'root','���� �������',1);
INSERT INTO `user_master` VALUES (2,'katsarov','���� �������',2);
INSERT INTO `user_master` VALUES (3,'rado','�������� ���������',3);
INSERT INTO `user_master` VALUES (4,'jp','���� �����',4);


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
# View structure for view VAT_dr
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `VAT_dr` AS select sql_no_cache `sl_document_facade`.`number_df` AS `number_df`,`n_type_doc`.`name_ntd` AS `name_ntd`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_contragent`.`bul_n_contragent` AS `bul_n_contragent`,`sl_document_facade`.`date_edition_df` AS `date_edition_df`,`sl_document_facade`.`total_df` AS `total_df`,`sl_document_facade`.`dds_df` AS `dds_df` from ((`sl_document_facade` join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_document_facade`.`in_contragent_df`))) join `n_type_doc` on((`n_type_doc`.`code_ntd` = `sl_document_facade`.`type_df`))) where (`sl_document_facade`.`type_df` = 4) order by `sl_document_facade`.`number_df`;



#
# View structure for view rep_comm_nal
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_comm_nal` AS select sql_no_cache `n_contragent`.`code_contragent` AS `code_contragent`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_product_main`.`id_pm` AS `id_pm`,`n_product_main`.`code_pm` AS `code_pm`,`n_product_main`.`name_pm` AS `name_pm`,`sl_nalichnosti`.`quant_nal` AS `quant_nal`,`sl_nalichnosti`.`level` AS `level`,`n_storage`.`code_n_storage` AS `code_n_storage`,`n_storage`.`name_n_storage` AS `name_n_storage`,`n_contragent`.`id_contragent` AS `id_contragent`,`n_storage`.`id_n_storage` AS `id_n_storage` from (((((`n_contragent` join `sl_contragent_product` on((`n_contragent`.`id_contragent` = `sl_contragent_product`.`id_contragent`))) join `n_product_main` on((`n_product_main`.`id_pm` = `sl_contragent_product`.`id_pm`))) join `n_product_consigment` on((`n_product_main`.`id_pm` = `n_product_consigment`.`id_pm`))) join `sl_nalichnosti` on((`n_product_consigment`.`id_pc` = `sl_nalichnosti`.`id_pc`))) join `n_storage` on((`n_storage`.`id_n_storage` = `sl_nalichnosti`.`id_n_storage`))) where ((`n_contragent`.`flag_n_contragent` = 0) and (`sl_contragent_product`.`flag_scp` = 0));



#
# View structure for view rep_doc_pri
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_doc_pri` AS select sql_no_cache `sl_document_facade`.`number_df` AS `number_df`,`sl_document_facade`.`type_df` AS `type_df`,`sl_document_facade`.`condition_df` AS `condition_df`,`n_contragent`.`code_contragent` AS `code_contragent`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_contragent`.`bul_n_contragent` AS `bul_n_contragent`,`sl_document_facade`.`total_df` AS `total_df`,`sl_document_facade`.`dds_df` AS `dds_df`,`sl_document_facade`.`date_edition_df` AS `date_edition_df`,`sl_document_facade`.`level_df` AS `level_df`,`n_contragent`.`flag_n_contragent` AS `flag_n_contragent` from (`sl_document_facade` join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_document_facade`.`in_contragent_df`)));



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
# Source for procedure ls_procedure_document_facade
#

CREATE PROCEDURE `ls_procedure_document_facade`(IN comprator TINYINT,                IN in_id_df INT(11),                IN in_id_contragent_in INT(11),     IN in_id_contragent_out INT(11),IN in_id_obekt_out INT(11),
                                                IN in_id_obekt_in INT(11),           IN in_id_distributor INT(11),       IN in_id_deliver INT(11),           IN in_descriptionPaying INT(3), IN in_docFacadeNumber INT(10),
                                                IN in_docFacadeUser INT(11),         IN in_docFacadeUserLastEdit INT(11),IN in_id_facturaConnection INT(11), IN in_id_payingOrder INT(11),   IN in_id_zaqvkaConnection INT(11),
                                                IN in_docFacadeLevel INT(11),        IN in_docFacadeStorage INT(11),     IN in_docFacadeType INT (3),        IN in_docFacadeAllDDS DOUBLE,   IN in_docFacadeTotal DOUBLE,
                                                IN in_docFacadeCondition VARCHAR(11),IN in_docFacadeDate VARCHAR(10),    IN in_docFacadeComment VARCHAR(250),IN in_dateDeliver VARCHAR(10),  IN in_payingDate VARCHAR(10),
                                                IN in_docFacadeFlagFinish INT (3),   IN in_priceOne DOUBLE,              IN in_climbDown DOUBLE )
BEGIN

IF (comprator = 0) THEN
        SELECT
         s.id_df,
         s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person, contr_in.tel_contragent,
         s.out_contragent_df,contr_out.code_contragent, contr_out.bul_n_contragent,contr_out.dan_n_contragent, contr_out.name_n_contragent,
         contr_out.address_n_contragent, p_contr_out.name_ls_n_person, contr_out.tel_contragent,
         s.in_obekt_df, obkt_in.name_n_obekt, obkt_in.address_n_obekt, obkt_in.code_n_obekt,
         s.out_obekt_df, obkt_out.name_n_obekt, obkt_out.address_n_obekt, obkt_out.code_n_obekt,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, s.user_last_df, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS deliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.flag_finish_df, s.id_rep, s.level_df
         FROM mida.sl_document_facade s
         LEFT JOIN mida.n_obekt obkt_in ON s.in_obekt_df=obkt_in.id_n_obekt
         LEFT JOIN mida.n_obekt obkt_out ON s.out_obekt_df=obkt_out.id_n_obekt
         LEFT JOIN mida.ls_n_person p_deliv ON p_deliv.id_ls_n_person=s.delivere_df
         LEFT JOIN mida.ls_n_person p_dist ON p_dist.id_ls_n_person=s.distributor_df
         LEFT JOIN  mida.n_contragent contr_in ON contr_in.id_contragent = s.in_contragent_df
         LEFT JOIN  mida.n_contragent contr_out ON contr_out.id_contragent = s.out_contragent_df
         LEFT JOIN  mida.ls_n_person p_contr_in ON contr_in.id_mol = p_contr_in.id_ls_n_person
         LEFT JOIN  mida.ls_n_person p_contr_out ON contr_out.id_mol = p_contr_out.id_ls_n_person
         LEFT JOIN mida.n_doc_type_user_rights usr_new ON s.user_df = usr_new.id_ndtur
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur ORDER BY id_df DESC;
END IF;

IF (comprator = 1) THEN
         INSERT INTO mida.sl_document_facade(in_contragent_df, out_obekt_df, in_obekt_df, number_df, type_df, condition_df,
         out_store_df, total_df, dds_df, user_df, user_last_df, date_edition_df, distributor_df, delivere_df,
         faktura_connection_df, zaiavka_connection_df, description_pay_df, paying_order_df, date_deliver_df, date_pay_df,
         comments_df, flag_finish_df,  level_df, out_contragent_df)
         VALUES(in_id_contragent_in,in_id_obekt_out,in_id_obekt_in,in_docFacadeNumber,in_docFacadeType,in_docFacadeCondition,
           in_docFacadeStorage,in_docFacadeTotal,in_docFacadeAllDDS,in_docFacadeUser,in_docFacadeUserLastEdit, in_docFacadeDate,in_id_distributor,
           in_id_deliver,in_id_facturaConnection,in_id_zaqvkaConnection, in_descriptionPaying,in_id_payingOrder,in_dateDeliver,in_payingDate,
           in_docFacadeComment,in_docFacadeFlagFinish, in_docFacadeLevel,in_id_contragent_out);
     END IF;

IF (comprator = 2) THEN
          UPDATE mida.sl_document_facade s SET
        s.in_contragent_df = in_id_contragent_in,
        s.out_obekt_df = in_id_obekt_out,
        s.in_obekt_df = in_id_obekt_in,
        s.number_df = in_docFacadeNumber,
        s.type_df = in_docFacadeType,
        s.condition_df = in_docFacadeCondition,
        s.out_store_df = in_docFacadeStorage,
        s.total_df = in_docFacadeTotal,
        s.dds_df = in_docFacadeAllDDS,
        s.user_df = in_docFacadeUser,
        s.user_last_df = in_docFacadeUserLastEdit,
        s.date_edition_df = in_docFacadeDate,

        s.distributor_df = in_id_distributor,
        s.delivere_df = in_id_deliver,
        s.faktura_connection_df = in_id_facturaConnection,
        s.zaiavka_connection_df = in_id_zaqvkaConnection,
        s.description_pay_df = in_descriptionPaying,
        s.paying_order_df = in_id_payingOrder,
        s.date_deliver_df = in_dateDeliver,
        s.date_pay_df = in_payingDate,
        s.comments_df = in_docFacadeComment,
        s.flag_finish_df = in_docFacadeFlagFinish,

        s.level_df = in_docFacadeLevel,
        s.out_contragent_df =in_id_contragent_out
        WHERE s.id_df = in_id_df;

     END IF;

IF (comprator = 3) THEN
      #   DELETE FROM mida.sl_document_facade WHERE id_df = in_id_df;
      UPDATE mida.sl_document_facade s SET s.condition_df ="1"
      WHERE id_df = in_id_df;
END IF;

IF (comprator = 4) THEN
         SELECT s.id_df, s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person,
         s.in_obekt_df, obkt_in.name_sno, obkt_in.address_sno, obkt_in.code_sno,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, s.user_last_df, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS devliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.flag_finish_df, s.id_rep, s.level_df, s.out_contragent_df
         FROM mida.sl_document_facade s LEFT JOIN mida.n_obekt obkt_in ON s.in_obekt_df=obkt_in.id_sno
         LEFT JOIN mida.ls_n_person p_deliv ON p_deliv.id_ls_n_person=s.delivere_df
         LEFT JOIN mida.ls_n_person p_dist ON p_dist.id_ls_n_person=s.distributor_df
         LEFT JOIN  mida.n_contragent contr_in ON contr_in.id_contragent = s.in_contragent_df
         LEFT JOIN  mida.ls_n_person p_contr_in ON contr_in.id_mol = p_contr_in.id_ls_n_person
         LEFT JOIN mida.n_doc_type_user_rights usr_new ON s.user_df = usr_new.id_ndtur
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur
         WHERE s.id_df = in_id_df;
END IF;

 #    IF (comprator = 5) THEN
 #
 #    END IF;

IF (comprator = 6) THEN
        SELECT MAX(number_df) AS maxNumber FROM mida.sl_document_facade s, sl_doc_type_num sl, n_doc_type_user_rights ur
        WHERE number_df like CONCAT(sl.area_number_sdtn,'%')
        AND sl.id_sdtn=  ur.id_sdtn  AND ur.id_ndtur = in_docFacadeUser  AND s.level_df = in_id_obekt_in;
END IF;


IF (comprator = 7) THEN
          SELECT MAX(id_df) as id FROM mida.sl_document_facade s;
END IF;

    # 13 - DISTRIBUTOR
    # 14 - DELIVER
IF (comprator = 8) THEN
       IF (in_docFacadeType = 13) THEN
          SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_docFacadeComment,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
       IF (in_docFacadeType = 14) THEN
           SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_docFacadeComment,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
END IF;

IF (comprator = 9) THEN
        IF (in_docFacadeType = 13) THEN
          SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT(in_docFacadeComment,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
       IF (in_docFacadeType = 14) THEN
           SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT(in_docFacadeComment,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
END IF;

IF (comprator = 10) THEN
       IF  (in_docFacadeType = 13) THEN
        SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_docFacadeComment)  ORDER BY   l.name_ls_n_person;
       END IF;
       IF (in_docFacadeType = 14) THEN
           SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_docFacadeComment)  ORDER BY   l.name_ls_n_person;
      END IF;
END IF;
# include text obekt
#--------------------------------
IF (comprator = 11) THEN
       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
END IF;
#----------------------
# start text obekt
IF (comprator = 12) THEN
       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
END IF;
# end text obekt
#--------------------------------
IF (comprator = 13) THEN

       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
END IF;




# include text  contragent
#---------------------------------
IF (comprator = 14) THEN
 #   code_contragent include
      IF  (in_docFacadeType = 0) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
           n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
           n.id_mol, ls.name_ls_n_person FROM n_contragent n
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
# bul_n_contragent include
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# dan_n_contragent include
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# name_n_contragent include
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# address_n_contragent include
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE address_n_contragent  LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# tel_contragent include
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# ls_n_person include
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;


END IF;
 # start text  contragent
 #--------------------------------
IF (comprator = 15) THEN
#  code_contragent start with text
       IF (in_docFacadeType = 0) THEN
           SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
           n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
           n.id_mol, ls.name_ls_n_person FROM n_contragent n
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
#  bul_n_contragent start with text
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
#  dan_n_contragent start with text
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
 #  name_n_contragent start with text
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
 #  address_n_contragent start with text
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.address_n_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
 #  tel_contragent start with text
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
#  ls_n_person start with text
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
END IF;
# end text  contragent
#--------------------------------
IF (comprator = 16) THEN

#  code_contragent end with text
       IF (in_docFacadeType = 0) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
           n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
           n.id_mol, ls.name_ls_n_person FROM n_contragent n
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT('%',in_docFacadeComment);
      END IF;
 #  bul_n_contragent end with text
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT('%',in_docFacadeComment);
       END IF;
 #  dan_n_contragent end with text
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT('%',in_docFacadeComment);
       END IF;
 #  name_n_contragent end with text
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT('%',in_docFacadeComment);
       END IF;
 #  address_n_contragent end with text
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.address_n_contragent LIKE CONCAT('%',in_docFacadeCommentr);
       END IF;
#  tel_contragent end with text
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT('%',in_docFacadeComment);
       END IF;
#  ls_n_person end with text
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT('%',in_docFacadeComment);
       END IF;


END IF;

# get user data
#---------------------
IF (comprator = 17) THEN
    SELECT n.id_ndtur, u.name_um FROM n_doc_type_user_rights n
    LEFT JOIN user_master u ON u.id_um = n.id_um
    WHERE n.id_ndtur = in_docFacadeUser;


END IF;

IF (comprator = 18) THEN
      SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
      n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
      n.id_mol, ls.name_ls_n_person FROM n_contragent n
      LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.id_contragent = in_docFacadeUser;


END IF;

IF (comprator = 19) THEN
      SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
      WHERE n.id_n_obekt = in_docFacadeUser;
END IF;

IF (comprator = 20) THEN
   IF (in_docFacadeType = 0) THEN
     SELECT pc.id_pc,n.id_pm, n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
     pc.parcel_pc, pc.dateofexpire_pc ,
     s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
     st.id_n_storage, st.code_n_storage, st.name_n_storage, st.comments_n_storage
     FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
     LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
     LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
     WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df;
   END IF;
   IF (in_docFacadeType = 1) THEN
       SELECT n.id_pm, n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.parcel_pc, pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.id_n_storage, st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.code_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df;
   END IF;
   IF (in_docFacadeType = 2) THEN
       SELECT n.id_pm, n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.parcel_pc, pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.id_n_storage, st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df;
   END IF;
END IF;
IF (comprator = 21) THEN
   SELECT n.price1_pp, n.price2_pp, n.price3_pp, n.price0_pp,n.id_sl_curs FROM mida.n_product_price n
   WHERE n.id_pp = in_id_obekt_in;
END IF;

IF (comprator = 22) THEN
   SELECT n.id_pd, n.m1_pd, n.v1_pd, n.m2_pd, n.v2_pd, n.m3_pd, n.v3_pd FROM mida.n_product_description n
   WHERE n.id_pd = in_id_obekt_in;
END IF;
IF (comprator = 23) THEN
    SELECT n.dds_pf, n.excise_pf, n.other_pf FROM mida.n_product_fee n
     WHERE id_pf = in_id_obekt_in;
END IF;
IF (comprator = 24) THEN
    SELECT n.id_pam, n.name_pam, n.sname_pam
    FROM mida.n_product_all_measure n WHERE id_pam = in_id_obekt_in;
END IF;

IF (comprator = 25) THEN
    SELECT * FROM mida.sl_nalichnosti s LEFT JOIN mida.n_product_consigment n ON n.id_pc=s.id_pc
    LEFT JOIN mida.n_product_main pm ON pm.id_pm = n.id_pm
    WHERE n.id_pc =in_id_obekt_in AND pm.flag_pm = in_id_df;
END IF;

IF (comprator = 26) THEN
    INSERT INTO mida.sl_document_lines(id_df,id_pc,id_n_storage,singly_price_dl,climb_down_dl,
           numbers_piece_dl,dds_dl,totalall_dl,price_list_dl)
    VALUES(in_id_df,in_id_obekt_in,in_id_obekt_out,in_priceOne,in_climbDown,in_id_contragent_in,in_docFacadeAllDDS,in_docFacadeTotal,in_id_deliver);
END IF;

IF (comprator = 27) THEN
      SELECT * FROM mida.sl_nalichnosti s
      WHERE id_pc = in_id_df AND id_n_storage = in_id_obekt_in;
END IF;
IF (comprator = 28) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.quant_rezerv_nal = quant_rezerv_nal + in_id_contragent_in
     WHERE id_pc = in_id_obekt_in AND id_n_storage = in_id_obekt_out ;

END IF;
IF (comprator = 29) THEN
    SELECT s.id_sl_curs, s.id_n_money, s.value_sl_curs,cod_lat_n_money FROM mida.sl_curs s LEFT JOIN n_money m ON m.id_n_money = s.id_n_money
    WHERE s.id_sl_curs = in_id_obekt_in;
END IF;

IF (comprator = 30) THEN
    UPDATE mida.sl_nalichnosti s SET s.quant_nal=(quant_nal-in_id_obekt_in)
      , s.quant_rezerv_nal=quant_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df);

END IF;

IF (comprator = 31) THEN
    SELECT s.id_dl, s.id_pc, s.id_n_storage, s.singly_price_dl, s.climb_down_dl, s.numbers_piece_dl, s.dds_dl, s.totalall_dl, s.id_df, s.price_list_dl,
n.id_pc, n.id_pm, n.parcel_pc, n.dateofexpire_pc,
 pm.id_pm, pm.id_pd, pm.id_n_group, pm.id_ppp, pm.id_pp, pm.id_pf, pm.name_pm, pm.fname_pm, pm.sname_pm, pm.cname_pm,
 pm.cod1_pm, pm.cod2_pm, pm.barcod_pm, pm.max_pop_pm, pm.expertsheet_pm, pm.flag_pm, pm.min_pm, pm.code_pm,
 pd.id_pd, pd.m1_pd, pd.v1_pd as v1, pd.m2_pd, pd.v2_pd as v2, pd.m3_pd, pd.v3_pd as v3,
 pp.id_pp, pp.id_sl_curs, pp.price1_pp, pp.price2_pp, pp.price3_pp, pp.price0_pp,
 pf.id_pf, pf.dds_pf, pf.excise_pf, pf.other_pf,
 st.id_n_storage, st.id_n_group, st.code_n_storage, st.name_n_storage, st.comments_n_storage,
 pam1.sname_pam as m1, pam2.sname_pam as m2, pam3.sname_pam as m3
    FROM mida.sl_document_lines s LEFT JOIN mida.n_product_consigment n ON s.id_pc = n.id_pc
    LEFT JOIN mida.n_product_main pm ON pm.id_pm=n.id_pm
    LEFT JOIN  mida.n_product_price pp   ON pm.id_pp=pp.id_pp
    LEFT JOIN  mida.n_product_description pd   ON pm.id_pd=pd.id_pd
    LEFT JOIN  mida.n_product_fee pf   ON pm.id_pf=pf.id_pf
    LEFT JOIN  mida.n_storage st   ON st.id_n_storage = s.id_n_storage
    LEFT JOIN  mida.n_product_all_measure pam1 ON pam1.id_pam = pd.m1_pd
    LEFT JOIN  mida.n_product_all_measure pam2 ON pam2.id_pam = pd.m2_pd
    LEFT JOIN  mida.n_product_all_measure pam3 ON pam3.id_pam = pd.m3_pd
    WHERE id_df = in_id_df;
END IF;

IF (comprator = 32) THEN
    UPDATE mida.sl_document_lines s SET s.id_pc = in_id_obekt_in,
    s.id_n_storage = in_id_obekt_out,
    s.singly_price_dl = in_priceOne ,
    s.climb_down_dl = in_climbDown,
    s.numbers_piece_dl=  in_id_contragent_in ,
    s.dds_dl = in_docFacadeAllDDS ,
    s.totalall_dl = in_docFacadeTotal,
    s.id_df=  in_id_df,
    s.price_list_dl= in_id_deliver
    WHERE id_dl = in_id_contragent_out;
END IF;

IF (comprator = 33) THEN
    DELETE FROM mida.sl_document_lines
    WHERE  id_dl = in_id_df;
END IF;

IF (comprator = 34) THEN
    SELECT MAX(id_dl) as id FROM mida.sl_document_lines s;

END IF;

IF (comprator = 35) THEN
  # DELETE FROM mida.sl_document_facade
  # WHERE  type_df = in_id_df AND number_df = in_id_obekt_in AND level_df =in_id_obekt_out;
   UPDATE mida.sl_document_facade s SET s.condition_df ="1"
   WHERE type_df = in_id_df AND number_df = in_id_obekt_in AND level_df =in_id_obekt_out;

END IF;
IF (comprator = 36) THEN
    UPDATE mida.sl_nalichnosti s SET
     s.quant_rezerv_nal=quant_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df);

END IF;

IF (comprator = 37) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.return_rezerv_nal = return_rezerv_nal + in_id_contragent_in
     WHERE id_pc = in_id_obekt_in AND id_n_storage = in_id_obekt_out ;

END IF;

IF (comprator = 38) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.return_rezerv_nal=return_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df);
END IF;

IF (comprator = 39) THEN
    UPDATE mida.sl_nalichnosti s SET s.quant_nal=(quant_nal+in_id_obekt_in)
      , s.return_rezerv_nal=return_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df);

END IF;

IF (comprator = 40) THEN
    UPDATE mida.sl_document_facade s SET s.condition_df ="2"
    WHERE s.id_df = in_id_df;
END IF;

IF (comprator = 41) THEN
    SELECT pm.id_pm FROM n_product_consigment n
    LEFT JOIN n_product_main pm ON pm.id_pm = n.id_pm;
END IF;

IF (comprator = 42) THEN
   UPDATE sl_document_facade s SET s.faktura_connection_df = in_id_obekt_in ,
    s.zaiavka_connection_df = in_id_obekt_out
    WHERE s.id_df = in_id_df;
END IF;



END;

#
# Source for procedure ls_procedure_group
#

CREATE PROCEDURE `ls_procedure_group`(IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_cod VARCHAR(30), IN in_name VARCHAR(30), IN in_alid TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al  FROM `n_group` n, anlevel WHERE nom_n_group = in_nom AND anlevel.id_al = n.id_al;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_group`(nom_n_group, cod_n_group, name_n_group, id_al) VALUES(in_nom, in_cod, in_name, in_alid);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_group` SET cod_n_group = in_cod, name_n_group = in_name, nom_n_group = in_nom, id_al = in_alid
           WHERE `n_group`.id_n_group = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_group`  WHERE id_n_group = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_group, n.nom_n_group, n.cod_n_group, n.name_n_group, n.alid FROM `n_group` n WHERE `n_group`.id_n_group = in_id;

     END IF;
     IF (comprator = 5) THEN
           IF (in_alid != 0) THEN
             SELECT n.id_n_group,  n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al  FROM `n_group` n, anlevel  WHERE n.cod_n_group LIKE CONCAT('%',in_cod,'%') AND
             n.name_n_group LIKE CONCAT('%',in_name,'%') AND n.id_al LIKE CONCAT('%',in_alid,'%') AND n.nom_n_group=in_nom AND anlevel.id_al = n.id_al;
          END IF;
          IF (in_alid = 0) THEN
             SELECT n.id_n_group,  n.cod_n_group, n.name_n_group, n.id_al,anlevel.name_al  FROM `n_group` n,anlevel  WHERE n.cod_n_group LIKE CONCAT('%',in_cod,'%') AND
             n.name_n_group LIKE CONCAT('%',in_name,'%') AND n.nom_n_group=in_nom AND anlevel.id_al = n.id_al;
          END IF;
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
# Source for procedure nom_procedure_baccount
#

CREATE PROCEDURE `nom_procedure_baccount`(IN comprator TINYINT, IN in_id INT(11), IN in_id_group INT(11), IN in_code VARCHAR(10),
                IN in_name VARCHAR(45), IN in_account VARCHAR(28), IN in_address VARCHAR(100), IN in_id_tacc INT(11), IN in_comment VARCHAR(250))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
            n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_baccount`(id_n_group, code_nbc, name_nbc, account_nbc, address_nbc, id_tbacc, comment_nbc) 
        VALUES (in_id_group, in_code, in_name, in_account, in_address, in_id_tacc, in_comment);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_baccount` SET id_n_group = in_id_group, code_nbc = in_code, name_nbc = in_name, account_nbc = in_account,
        address_nbc = in_address, id_tbacc = in_id_tacc, comment_nbc = in_comment WHERE `n_baccount`.id_nbc = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM `n_baccount`  WHERE id_nbc = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
            n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            WHERE n.id_nbc = in_id;
     END IF;
     IF (comprator = 5) THEN
        SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
            n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            WHERE n.code_nbc LIKE CONCAT('%',in_code,'%') AND n.name_nbc LIKE CONCAT('%',in_name,'%');
     END IF;
     IF (comprator = 6) THEN
        SELECT ntb.id_tbacc, ntb.name_tbacc FROM n_type_bacc ntb;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_nbc) FROM `n_baccount` n;
     END IF;
     IF (comprator = 8) THEN
        SELECT MAX(n.code_nbc) AS account_code FROM `n_baccount` n;
     END IF;
     IF (comprator = 9) THEN
        SELECT MAX(ntb.id_ntbacc) AS id_ntbacc FROM n_type_bacc ntb;
     END IF;
     IF (comprator = 10) THEN
        SELECT ng.id_n_group, ng.name_n_group FROM n_group ng WHERE n.nom_n_group = 6;
     END IF;
     IF (comprator = 11) THEN
        SELECT MAX(ng.id_n_group) AS id_n_group FROM n_group ng WHERE n.nom_n_group = 6;
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
        SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent
        FROM `n_contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id_n_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = cont.id_n_country) and c.flag_n_contragent = in_flag ORDER BY c.code_contragent;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `n_contragent`(code_contragent,name_n_contragent,bul_n_contragent,dan_n_contragent,address_n_contragent,id_nm,tel_contragent,fax_contragent,email_contragent,web_contragent,id_mol,id_oso,flag_n_contragent)
         VALUES(in_cod,in_name,in_bul,in_dan,in_address,in_id_nm,in_tel,in_fax,in_email,in_web,in_id_mol,in_id_oso,in_flag);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `n_contragent` SET flag_n_contragent = in_flag
           WHERE `n_contragent`.id_contragent = in_id;
     END IF;

     IF (comprator = 5) THEN
      IF (in_cod != 0) THEN
       SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent
        FROM `n_contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id_n_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = cont.id_n_country and c.flag_n_contragent = in_flag ) AND
              c.code_contragent LIKE CONCAT('%',in_cod,'%') AND
              c.name_n_contragent LIKE CONCAT('%',in_name,'%') AND  c.bul_n_contragent LIKE CONCAT('%',in_bul,'%') AND c.dan_n_contragent LIKE CONCAT('%',in_dan,'%') AND
              c.address_n_contragent LIKE CONCAT('%',in_address,'%') AND c.tel_contragent LIKE CONCAT('%',in_tel,'%') AND c.fax_contragent LIKE CONCAT('%',in_fax,'%') AND
              c.email_contragent LIKE CONCAT('%',in_email,'%') AND c.web_contragent LIKE CONCAT('%',in_web,'%') ORDER BY c.code_contragent;
     END IF;
      IF (in_cod = 0) THEN
              SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent
        FROM `n_contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id_n_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = cont.id_n_country and c.flag_n_contragent = in_flag )
         AND c.name_n_contragent LIKE CONCAT('%',in_name,'%') AND  c.bul_n_contragent LIKE CONCAT('%',in_bul,'%') AND c.dan_n_contragent LIKE CONCAT('%',in_dan,'%') AND
              c.address_n_contragent LIKE CONCAT('%',in_address,'%') AND c.tel_contragent LIKE CONCAT('%',in_tel,'%') AND c.fax_contragent LIKE CONCAT('%',in_fax,'%') AND
              c.email_contragent LIKE CONCAT('%',in_email,'%') AND c.web_contragent LIKE CONCAT('%',in_web,'%') ORDER BY c.code_contragent;
      END IF;
      END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_contragent) AS id FROM `n_contragent` n;
     END IF;

     IF (comprator = 10) THEN
        SELECT nm.name_n_nm  FROM `n_nm` nm WHERE nm.id_n_nm = in_id_nm;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id_n_nm, nm.name_n_nm, obl.name_n_oblast, con.name_n_country, con.code_n_country
        FROM `n_nm` nm, `n_oblast` obl, `n_country` con
        WHERE  nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = con.id_n_country and nm.name_n_nm like CONCAT('%',in_address,'%');
     END IF;

     IF (comprator = 12) THEN
        SELECT ls.id_ls_n_person, ls.name_ls_n_person, ls.egn_ls_n_person, ls.nlk_ls_n_person, ls.comment_ls_n_person
        FROM `ls_n_person` ls WHERE ls.name_ls_n_person like CONCAT('%',in_name,'%')
        ORDER BY ls.name_ls_n_person;
     END IF;
     IF (comprator = 13) THEN
        IF (in_id_mol != -1) THEN
            SELECT ls.id_ls_n_person, ls.name_ls_n_person, ls.egn_ls_n_person, ls.nlk_ls_n_person, ls.comment_ls_n_person FROM `ls_n_person` ls WHERE ls.id_ls_n_person=in_id_mol;
        END IF;
        IF (in_id_oso != -1) THEN
            SELECT ls.id_ls_n_person, ls.name_ls_n_person, ls.egn_ls_n_person, ls.nlk_ls_n_person, ls.comment_ls_n_person FROM `ls_n_person` ls WHERE ls.id_ls_n_person=in_id_oso;
        END IF;
     END IF;

     IF (comprator = 14) THEN
        SELECT  MAX(c.code_contragent) as code
        FROM `n_contragent` c where c.flag_n_contragent = in_flag;
     END IF;

    IF (comprator = 15) THEN
          UPDATE mida.sl_contragent_product s SET
          flag_scp = in_flag
          WHERE id_contragent = in_id;
    END IF;
     IF (comprator = 16) THEN
         INSERT INTO mida.sl_contragent_product(id_contragent,id_pm,flag_scp)
         VALUES(in_id,in_id_oso,in_flag);
    END IF;
    IF (comprator = 17) THEN
        SELECT s.id_contragent, s.id_pm, s.flag_scp
        FROM mida.sl_contragent_product s
        WHERE id_contragent = in_id AND flag_scp=in_flag;
    END IF;

END;

#
# Source for procedure nom_procedure_doctype
#

CREATE PROCEDURE `nom_procedure_doctype`(IN in_id INT(6), IN comprator TINYINT, IN in_code INT(10), IN in_name VARCHAR(50), IN in_print_name VARCHAR(50))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_ntd, n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_type_doc (code_ntd, name_ntd, name_print_ntd) VALUES(in_code, in_name, in_print_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_type_doc SET code_ntd = in_code, name_ntd = in_name, name_print_ntd = in_print_name
           WHERE n_type_doc.id_ntd = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_type_doc  WHERE id_ntd = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n WHERE n.id_ntd = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_ntd, n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n WHERE n.code_ntd LIKE CONCAT('%',in_code,'%') AND
        n.name_ntd LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_ntd) AS id FROM n_type_doc n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_ntd) AS code FROM `n_type_doc` n;
     END IF;

     IF (comprator = 9) THEN
       DELETE FROM n_type_doc;
     END IF;

END;

#
# Source for procedure nom_procedure_doctype_user_rights
#

CREATE PROCEDURE `nom_procedure_doctype_user_rights`(IN comprator TINYINT, IN in_id INT(11), IN in_id_um INT(11), IN in_id_sdtn INT(11), IN in_rights INT(11))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_ndtur, n.id_um, um.name_um, n.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn, n.rights_sdtn FROM n_doc_type_user_rights n
            LEFT OUTER JOIN user_master um ON um.id_um = n.id_um
            LEFT OUTER JOIN sl_doc_type_num dtn ON dtn.id_sdtn = n.id_sdtn;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_doc_type_user_rights`(id_um, id_sdtn, rights_sdtn) VALUES (in_id_um, in_id_sdtn, in_rights);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_doc_type_user_rights` SET id_um = in_id_um, id_sdtn = in_id_sdtn, rights_sdtn = in_rights
        WHERE `n_doc_type_user_rights`.id_ndtur = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM `n_doc_type_user_rights`  WHERE id_ndtur = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_ndtur, n.id_um, um.name_um, n.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn, n.rights_sdtn FROM n_doc_type_user_rights n
            LEFT OUTER JOIN user_master um ON um.id_um = n.id_um
            LEFT OUTER JOIN sl_doc_type_num dtn ON dtn.id_sdtn = n.id_sdtn
            WHERE n.id_ndtur = in_id;
     END IF;
     IF (comprator = 5) THEN
        SELECT n.id_ndtur, n.id_um, um.name_um, n.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn, n.rights_sdtn FROM n_doc_type_user_rights n
            LEFT OUTER JOIN user_master um ON um.id_um = n.id_um
            LEFT OUTER JOIN sl_doc_type_num dtn ON dtn.id_sdtn = n.id_sdtn
            WHERE n.rights_sdtn LIKE CONCAT('%',in_rights,'%');
     END IF;
     IF (comprator = 6) THEN
        SELECT um.id_um, um.name_um FROM user_master um;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_ndtur) FROM `n_doc_type_user_rights` n;
     END IF;
     IF (comprator = 8) THEN
        SELECT dtn.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn FROM sl_doc_type_num dtn;
     END IF;
END;

#
# Source for procedure nom_procedure_expens
#

CREATE PROCEDURE `nom_procedure_expens`(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens,
                   n.comments_n_expens FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_expens`( id_n_group, code_n_expens, name_n_expens, comments_n_expens) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_expens` SET id_n_group = in_id_groupe, code_n_expens = in_code,   name_n_expens = in_name, comments_n_expens = in_comments
        WHERE `n_expens`.id_n_expens = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_expens`  WHERE id_n_expens = in_id;
     END IF;


     IF (comprator = 5) THEN
        SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens,
                   n.comments_n_expens FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group
                   WHERE n.code_n_expens LIKE CONCAT('%',in_code,'%') AND  n.code_n_expens LIKE CONCAT('%',in_name,'%');

     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_expens) FROM `n_expens` n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_expens) AS code_n_expens FROM `n_expens` n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
     END IF;

END;

#
# Source for procedure nom_procedure_incom
#

CREATE PROCEDURE `nom_procedure_incom`(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms,
                   n.comments_n_incoms FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_incoms`( id_n_group, code_n_incoms, name_n_incoms, comments_n_incoms) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_incoms` SET id_n_group = in_id_groupe, code_n_incoms = in_code,   name_n_incoms = in_name, comments_n_incoms = in_comments
        WHERE `n_incoms`.id_n_incoms = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_incoms`  WHERE id_n_incoms = in_id;
     END IF;


     IF (comprator = 5) THEN
        SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms,
                   n.comments_n_incoms FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group
                   WHERE n.code_n_incoms LIKE CONCAT('%',in_code,'%') AND  n.code_n_incoms LIKE CONCAT('%',in_name,'%');

     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_incoms) FROM `n_incoms` n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_incoms) AS code_n_incoms FROM `n_incoms` n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
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
        INSERT INTO `n_nm`(postcode_n_nm, name_n_nm, id_n_oblast) VALUES(in_postcode, in_name, in_id_oblast);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_nm` SET postcode_n_nm = in_postcode, name_n_nm = in_name, id_n_oblast = in_id_oblast
        WHERE `n_nm`.id_n_nm = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_nm`  WHERE id_n_nm = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast FROM `n_nm` n WHERE n.id_n_nm = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_postcode!=0)  THEN
          SELECT n.id_n_nm,  n.postcode_n_nm, n.name_n_nm , n.id_n_oblast,obl.name_n_oblast  FROM `n_nm` n, `n_oblast` obl WHERE n.postcode_n_nm LIKE CONCAT(in_postcode,'%') AND
          n.name_n_nm LIKE CONCAT('%',in_name,'%') AND n.id_n_oblast = obl.id_n_oblast;
        END IF;
        IF (in_postcode=0)  THEN
          SELECT n.id_n_nm,  n.postcode_n_nm, n.name_n_nm, n.id_n_oblast,obl.name_n_oblast  FROM `n_nm` n, `n_oblast` obl
           WHERE n.name_n_nm LIKE CONCAT('%',in_name,'%') AND n.id_n_oblast = obl.id_n_oblast;
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

CREATE PROCEDURE `nom_procedure_oblast`(IN comprator TINYINT, IN in_id INT(11), IN in_name VARCHAR(20), IN in_id_country INT(3), IN in_country VARCHAR(45) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country, c.name_n_country
        FROM `n_oblast` n, `n_country` c WHERE n.id_n_country=c.id_n_country;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_oblast`( name_n_oblast, id_n_country) VALUES(in_name, in_id_country);
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
          SELECT n.id_n_oblast,  n.name_n_oblast, n.id_n_country,c.name_n_country  FROM `n_oblast` n, `n_country` c WHERE n.name_n_oblast LIKE CONCAT('%',in_name,'%')
           AND c.name_n_country LIKE CONCAT('%',in_country,'%') AND c.id_n_country = n.id_n_country;

     END IF;


     IF (comprator = 6) THEN
        SELECT * FROM `n_country` n ORDER BY name_n_country;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_oblast) AS id FROM `n_oblast` n;
     END IF;

END;

#
# Source for procedure nom_procedure_person
#

CREATE PROCEDURE `nom_procedure_person`(IN comprator TINYINT, IN in_id INT(11),IN in_id_group INT(11), IN in_code VARCHAR(6), IN in_egn VARCHAR(10), IN in_nomlk VARCHAR(9), IN in_name VARCHAR(45), IN in_comment VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `ls_n_person`(id_n_group, code_ls_n_person, egn_ls_n_person, nlk_ls_n_person, name_ls_n_person, comment_ls_n_person) VALUES(in_id_group, in_code, in_egn, in_nomlk, in_name, in_comment);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `ls_n_person` SET id_n_group = in_id_group, code_ls_n_person = in_code, egn_ls_n_person = in_egn, nlk_ls_n_person = in_nomlk, name_ls_n_person = in_name, comment_ls_n_person = in_comment
        WHERE `ls_n_person`.id_ls_n_person = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `ls_n_person`  WHERE id_ls_n_person = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.code_ls_n_person LIKE CONCAT('%',in_code,'%') AND n.egn_ls_n_person LIKE CONCAT('%',in_egn,'%') AND n.name_ls_n_person LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 3;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_ls_n_person) FROM `ls_n_person` n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_ls_n_person) AS code_ls_n_person FROM `ls_n_person` n;
     END IF;

     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 3;
     END IF;

END;

#
# Source for procedure nom_procedure_product
#

CREATE PROCEDURE `nom_procedure_product`(IN in_comprator TINYINT,    IN in_id_pm INT(11),              IN in_id_ppp INT(11),        IN in_id_pp INT(11),
                                                 IN in_id_pf INT(11),        IN in_id_n_group INT(11),         IN in_id_pd INT(11),         IN in_name_pm VARCHAR(30),
                                                 IN in_sname_pm VARCHAR(20), IN in_fname_pm VARCHAR(20),       IN in_cname_pm VARCHAR(20),  IN in_max_pop_pm DOUBLE,
                                                 IN in_flag_pm TINYINT,      IN in_expertsheet_pm VARCHAR(45), IN in_barcod_pm INT,  IN in_cod1_pm VARCHAR(20),
                                                 IN in_cod2_pm VARCHAR(20),  IN in_price0_pp DOUBLE,           IN in_price1_pp DOUBLE,      IN in_price2_pp DOUBLE,
                                                 IN in_price3_pp DOUBLE, IN in_min_pm INT(11), IN in_code_pm VARCHAR(6))
BEGIN
     IF (in_comprator = 0) THEN
        SELECT n.code_pm ,n.id_pm, n.id_n_group, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.cod1_pm,
         n.cod2_pm, n.barcod_pm, n.max_pop_pm, n.expertsheet_pm, n.flag_pm,  pp.id_sl_curs,pp.price0_pp,money.cod_lat_n_money,@stoinost_in_lv:=(sl_curs.value_sl_curs*pp.price0_pp)AS lv, pp.price1_pp, pp.price2_pp,pp.price3_pp, pf.dds_pf, pf.excise_pf,
         pf.other_pf, pd.id_pd, pd.m1_pd, pd.v1_pd, pd.m2_pd, pd.v2_pd, pd.m3_pd, pd.v3_pd,min_pm
        FROM n_product_main n LEFT JOIN n_product_price pp ON pp.id_pp = n.id_pp LEFT JOIN sl_curs  ON  pp.id_sl_curs = sl_curs.id_sl_curs LEFT JOIN n_money money ON money.id_n_money = sl_curs.id_sl_curs LEFT JOIN n_product_fee pf ON pf.id_pf = n.id_pf LEFT JOIN
         n_product_description pd ON pd.id_pd = n.id_pd LEFT JOIN n_product_promotion_price ppp ON ppp.id_ppp = n.id_ppp LEFT JOIN n_group g
         ON g.id_n_group = n.id_n_group WHERE n.flag_pm = in_flag_pm ORDER BY n.name_pm;
     END IF;
     IF (in_comprator = 1) THEN
        INSERT INTO n_product_main(id_n_group,id_ppp,id_pp, id_pf,name_pm, fname_pm, sname_pm,cname_pm,cod1_pm,
          cod2_pm,  barcod_pm,  max_pop_pm,  expertsheet_pm,min_pm, flag_pm, id_pd, code_pm )  VALUES(in_id_n_group,in_id_ppp,in_id_pp, in_id_pf,in_name_pm,
          in_fname_pm, in_sname_pm, in_cname_pm, in_cod1_pm, in_cod2_pm,  in_barcod_pm, in_max_pop_pm, in_expertsheet_pm, in_min_pm, in_flag_pm, in_id_pd, in_code_pm);
     END IF;
     IF (in_comprator = 2) THEN
       UPDATE `n_product_main` SET flag_pm = in_flag_pm
        WHERE n_product_main.id_pm = in_id_pm;
     END IF;

     IF (in_comprator = 3) THEN
          SELECT n.id_pd, n.m1_pd, n.v1_pd, n.m2_pd, n.v2_pd, n.m3_pd, n.v3_pd FROM mida.n_product_description n
           WHERE n.id_pd = in_id_pd;
     END IF;


     IF (in_comprator = 4) THEN
         SELECT n.id_n_group, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.cod1_pm, n.cod2_pm, n.barcod_pm, n.max_pop_pm, n.expertsheet_pm, n.flag_pm, n.id_pd
          FROM n_product_main n WHERE n.id_pm = in_id_pm;
     END IF;

       IF (in_comprator = 5) THEN
             IF (in_barcod_pm != 0) THEN
              SELECT n.code_pm ,n.id_pm, n.id_n_group, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.cod1_pm,
         n.cod2_pm, n.barcod_pm, n.max_pop_pm, n.expertsheet_pm, n.flag_pm,  pp.id_sl_curs,pp.price0_pp,money.cod_lat_n_money,@stoinost_in_lv:=(sl_curs.value_sl_curs*pp.price0_pp)AS lv, pp.price1_pp, pp.price2_pp,pp.price3_pp, pf.dds_pf, pf.excise_pf,
         pf.other_pf, pd.id_pd, pd.m1_pd, pd.v1_pd, pd.m2_pd, pd.v2_pd, pd.m3_pd, pd.v3_pd,min_pm
              FROM mida.n_product_main n LEFT JOIN n_product_price pp ON pp.id_pp = n.id_pp LEFT JOIN sl_curs  ON  pp.id_sl_curs = sl_curs.id_sl_curs LEFT JOIN n_money money ON money.id_n_money = sl_curs.id_sl_curs LEFT JOIN n_product_fee pf ON pf.id_pf = n.id_pf LEFT JOIN
         n_product_description pd ON pd.id_pd = n.id_pd LEFT JOIN n_product_promotion_price ppp ON ppp.id_ppp = n.id_ppp LEFT JOIN n_group g
         ON g.id_n_group = n.id_n_group WHERE n.name_pm  LIKE CONCAT('%',in_name_pm,'%') AND  n.fname_pm LIKE CONCAT('%',in_fname_pm,'%') AND
              n.sname_pm LIKE CONCAT('%',in_sname_pm,'%') AND n.cname_pm LIKE CONCAT('%',in_cname_pm,'%') AND  n.cod1_pm LIKE CONCAT('%',in_cod1_pm,'%') AND
              n.cod2_pm LIKE CONCAT('%',in_cod2_pm,'%') AND  n.barcod_pm LIKE CONCAT('%',in_barcod_pm,'%') AND  n.expertsheet_pm LIKE CONCAT('%',in_expertsheet_pm,'%')
             AND n.code_pm LIKE CONCAT('%',in_code_pm,'%') AND flag_pm = in_flag_pm ORDER BY n.name_pm;
           END IF;
       IF (in_barcod_pm = 0) THEN
          SELECT n.code_pm ,n.id_pm, n.id_n_group, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.cod1_pm,
         n.cod2_pm, n.barcod_pm, n.max_pop_pm, n.expertsheet_pm, n.flag_pm,  pp.id_sl_curs,pp.price0_pp,money.cod_lat_n_money,@stoinost_in_lv:=(sl_curs.value_sl_curs*pp.price0_pp)AS lv, pp.price1_pp, pp.price2_pp,pp.price3_pp, pf.dds_pf, pf.excise_pf,
         pf.other_pf, pd.id_pd, pd.m1_pd, pd.v1_pd, pd.m2_pd, pd.v2_pd, pd.m3_pd, pd.v3_pd,min_pm
          FROM mida.n_product_main n LEFT JOIN n_product_price pp ON pp.id_pp = n.id_pp LEFT JOIN sl_curs  ON  pp.id_sl_curs = sl_curs.id_sl_curs LEFT JOIN n_money money ON money.id_n_money = sl_curs.id_sl_curs LEFT JOIN n_product_fee pf ON pf.id_pf = n.id_pf LEFT JOIN
         n_product_description pd ON pd.id_pd = n.id_pd LEFT JOIN n_product_promotion_price ppp ON ppp.id_ppp = n.id_ppp LEFT JOIN n_group g
         ON g.id_n_group = n.id_n_group WHERE n.name_pm  LIKE CONCAT('%',in_name_pm,'%') AND  n.fname_pm LIKE CONCAT('%',in_fname_pm,'%') AND
          n.sname_pm LIKE CONCAT('%',in_sname_pm,'%') AND n.cname_pm LIKE CONCAT('%',in_cname_pm,'%') AND  n.cod1_pm LIKE CONCAT('%',in_cod1_pm,'%') AND
          n.cod2_pm LIKE CONCAT('%',in_cod2_pm,'%') AND  n.expertsheet_pm LIKE CONCAT('%',in_expertsheet_pm,'%')
         AND n.code_pm LIKE CONCAT('%',in_code_pm,'%') AND flag_pm = in_flag_pm ORDER BY n.name_pm;
      END IF;
     END IF;



     IF (in_comprator = 6) THEN
        SELECT n.dds_pf, n.excise_pf, n.other_pf FROM n_product_fee n
         WHERE n.id_pf = in_id_pf;
     END IF;


     IF (in_comprator = 7) THEN
        SELECT MAX(n.id_pm) AS id_pm FROM `n_product_main` n;
     END IF;

      IF (in_comprator = 8) THEN
        SELECT n.price1_pp, n.price2_pp, n.price3_pp, n.price0_pp, n.id_sl_curs FROM n_product_price n
         WHERE n.id_pp = in_id_pp;
     END IF;
      IF (in_comprator = 9) THEN
         INSERT INTO n_product_price(id_sl_curs,price0_pp,price1_pp,price2_pp,price3_pp) VALUES(in_id_pp,in_price0_pp,in_price1_pp,in_price2_pp,in_price3_pp);
     END IF;

     IF (in_comprator = 10) THEN
          UPDATE n_product_price n SET id_sl_curs = in_id_pd,
             price0_pp = in_price0_pp,
             price1_pp = in_price1_pp,
             price2_pp = in_price2_pp,
             price3_pp = in_price3_pp
            WHERE n.id_pp = in_id_pp;
    END IF;

    IF (in_comprator = 11) THEN
        SELECT n.price_ppp, n.datestart_ppp, n.datestop_ppp FROM n_product_promotion_price n WHERE n.id_ppp = in_id_ppp;
    END IF;

    IF (in_comprator = 12) THEN
        INSERT INTO n_product_promotion_price(price_ppp,datestart_ppp,datestop_ppp) VALUES(in_price0_pp,in_name_pm,in_sname_pm);
    END IF;

    IF (in_comprator = 13) THEN
        UPDATE n_product_promotion_price n SET price_ppp = in_price0_pp,
         datestart_ppp = in_name_pm,
         datestop_ppp =  in_sname_pm
        WHERE n.id_ppp =  in_id_ppp;
    END IF;

     IF (in_comprator = 14) THEN
         INSERT INTO n_product_fee(dds_pf,excise_pf,other_pf) VALUES(in_price0_pp,in_price1_pp,in_price2_pp);
    END IF;

     IF (in_comprator = 15) THEN
        UPDATE n_product_fee n SET dds_pf = in_price0_pp,
         excise_pf =  in_price1_pp,
         other_pf =   in_price2_pp
        WHERE n.id_pf = in_id_pf;
    END IF;

     IF (in_comprator = 16) THEN
        SELECT n.id_n_group,n.name_n_group, n.cod_n_group, n.nom_n_group FROM n_group n WHERE n.nom_n_group=in_id_pf  ORDER BY n.name_n_group;
    END IF;

      IF (in_comprator = 17) THEN
          SELECT n.id_oso, n.id_mol, n.id_nm, n.code_contragent, n.name_n_contragent,
           n.bul_n_contragent, n.dan_n_contragent, n.address_n_contragent, n.tel_contragent, n.fax_contragent,
           n.email_contragent, n.web_contragent, n.flag_n_contragent FROM mida.n_contragent n
           WHERE n.flag_n_contragent = 0 AND n.id_contragent=in_id_pm;
    END IF;

      IF (in_comprator = 18) THEN
         SELECT MAX(n.id_pp)  AS id_pp FROM `n_product_price` n;
    END IF;

    IF (in_comprator = 19) THEN
           SELECT MAX(n.id_ppp) AS id_ppp FROM `n_product_promotion_price` n;
    END IF;

    IF (in_comprator = 20) THEN
          SELECT MAX(n.id_pf) AS id_pf FROM `n_product_fee` n;
    END IF;

    IF (in_comprator = 21) THEN
        SELECT  n.id_n_money,n.cod_n_money, n.cod_lat_n_money, n.name_n_money, n.comment_n_money FROM n_money n ORDER BY n.cod_lat_n_money;
    END IF;

     IF (in_comprator = 22) THEN
        SELECT s.id_sl_curs, s.date_time_sl_curs, s.id_n_money, s.value_sl_curs FROM sl_curs s WHERE s.id_sl_curs = in_id_pd;
    END IF;

    IF (in_comprator = 24) THEN
         SELECT n.id_contragent, n.id_oso, n.id_mol, n.id_nm, n.code_contragent, n.name_n_contragent, n.bul_n_contragent,
           n.dan_n_contragent, n.address_n_contragent, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
           n.flag_n_contragent FROM n_contragent n WHERE n.flag_n_contragent = 0;
    END IF;

     IF (in_comprator = 25) THEN
          SELECT n.id_pam, n.name_pam, n.sname_pam FROM mida.n_product_all_measure n ORDER BY name_pam;
    END IF;

     IF (in_comprator = 26) THEN
         SELECT s.id_sl_curs, s.date_time_sl_curs, s.id_n_money,money.cod_lat_n_money ,s.value_sl_curs FROM mida.sl_curs s, n_money money
         WHERE money.id_n_money = s.id_n_money  ORDER BY s.date_time_sl_curs;
    END IF;

      IF (in_comprator = 27) THEN
        INSERT INTO mida.n_product_description(v1_pd,v2_pd,v3_pd,m1_pd,m2_pd,m3_pd)
        VALUES(in_id_pm,in_id_pp,in_id_ppp,in_id_pf,in_id_pd,in_id_n_group);
    END IF;

     IF (in_comprator = 28) THEN
         SELECT MAX(n.id_pd) AS id_pd FROM mida.n_product_description n;
    END IF;

     IF (in_comprator = 29) THEN
         UPDATE mida.n_product_description n SET v1_pd = in_id_pm,
         v2_pd = in_id_pp,
         v3_pd = in_id_ppp,
         m1_pd = in_id_pf,
         m2_pd = in_barcod_pm,
         m3_pd = in_id_n_group
         WHERE id_pd = in_id_pd;
    END IF;

     IF (in_comprator = 30) THEN
         SELECT s.id_pm, s.id_contragent, s.flag_scp FROM mida.sl_contragent_product s
         WHERE id_pm = in_id_pm AND flag_scp = in_flag_pm;
    END IF;

     IF (in_comprator = 31) THEN
         INSERT INTO mida.sl_contragent_product(id_pm,id_contragent,flag_scp)
          VALUES(in_id_pm,in_id_n_group,in_flag_pm);
    END IF;

    IF (in_comprator = 32) THEN
     UPDATE mida.sl_contragent_product  SET id_contragent = in_id_n_group,
         flag_scp = in_flag_pm
         WHERE id_pm = in_id_pm;

    END IF;

      IF (in_comprator = 33) THEN

       SELECT n.id_pm, n.flag_pm FROM mida.n_product_main n WHERE n.id_pm = in_id_pm;

    END IF;
    IF (in_comprator = 34) THEN
       UPDATE mida.n_product_consigment n SET
        id_pm = in_id_pm
       WHERE id_pm =  in_id_pp;
    END IF;

    IF (in_comprator = 35) THEN
      INSERT INTO mida.n_product_consigment(id_pm,parcel_pc,dateofexpire_pc)
       VALUES(in_id_pm,"000001",null);

    END IF;


END;

#
# Source for procedure nom_procedure_sdtn
#

CREATE PROCEDURE `nom_procedure_sdtn`(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_sl_doc_type_num, n.id_ntd, ng.name_n_type_doc, n.code_sl_doc_type_num, n.name_sl_doc_type_num,
                   n.comments_sl_doc_type_num FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ng ON ng.id_ntd=n.id_ntd;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `sl_dov_type_num`( id_ntd, code_sl_dov_type_num, name_sl_dov_type_num, comments_sl_dov_type_num) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `sl_dov_type_num` SET id_ntd = in_id_groupe, code_sl_dov_type_num = in_code,   name_sl_dov_type_num = in_name, comments_sl_dov_type_num = in_comments
        WHERE `sl_dov_type_num`.id_sl_dov_type_num = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `sl_dov_type_num`  WHERE id_sdtn = in_id;
     END IF;


     IF (comprator = 5) THEN
        SELECT n.id_sdtn, n.id_ntd, ng.name_n_type_doc, n.code_sl_dov_type_num, n.name_sl_dov_type_num,
                   n.comments_sl_dov_type_num FROM sl_dov_type_num n LEFT OUTER JOIN n_type_doc ng ON ng.id_ntd=n.id_ntd
                   WHERE n.code_sl_dov_type_num LIKE CONCAT('%',in_code,'%') AND  n.code_sl_dov_type_num LIKE CONCAT('%',in_name,'%');

     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_ntd, n.name_n_type_doc FROM n_type_doc n
                              WHERE n.nom_n_type_doc = 5;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_sdtn) FROM `sl_dov_type_num` n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_sl_dov_type_num) AS code_sl_dov_type_num FROM `sl_dov_type_num` n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_ntd) AS id_ntd FROM n_type_doc n
                              WHERE n.nom_n_type_doc = 5;
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

#
# Source for procedure sl_procedure_exchange_rate
#

CREATE PROCEDURE `sl_procedure_exchange_rate`(IN comprator TINYINT, IN in_id INT(10), IN in_date DATE, IN in_id_money INT(11), IN in_code_money VARCHAR(11), IN in_value DECIMAL(10,5))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_sl_exchange_rate, n.date_sl_exchange_rate, n.id_n_money, nm.cod_n_money, n.value_sl_exchange_rate
            FROM sl_exchange_rate n LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_exchange_rate (date_sl_exchange_rate, id_n_money, value_sl_exchange_rate) VALUES(in_date, in_id_money, in_value);
     END IF;

     IF (comprator = 2) THEN
        UPDATE sl_exchange_rate SET date_sl_exchange_rate = in_date, id_n_money = in_id_money, value_sl_exchange_rate = in_value
           WHERE sl_exchange_rate.id_sl_exchange_rate = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM sl_exchange_rate  WHERE id_sl_exchange_rate = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code_ntd, n.name_ntd, n.name_print_ntd FROM sl_exchange_rate n WHERE n.id_sl_exchange_rate = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_sl_exchange_rate, n.datesl_exchange_rate, n.id_n_money, nm.cod_n_money, n.valuesl_exchange_rate
                   FROM sl_exchange_rate n LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
                   WHERE n.date_sl_exchange_rate LIKE CONCAT('%',in_date,'%') AND  nm.cod_n_money LIKE CONCAT('%',in_code_money,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT nm.id_n_money, nm.cod_n_money FROM n_money nm WHERE nm.id_n_money = in_id_money;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_sl_exchange_rate) AS id FROM sl_exchange_rate n;
     END IF;

     IF (comprator = 9) THEN
       DELETE FROM sl_exchange_rate;
     END IF;

END;

#
# Source for procedure sl_procedure_num_doc
#

CREATE PROCEDURE `sl_procedure_num_doc`(IN comprator TINYINT, IN in_id INT(11), IN in_id_doctype INT(11), IN in_area INT(3), IN in_name VARCHAR(40))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_sdtn, n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn
            FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO sl_doc_type_num (id_ntd, area_number_sdtn, name_sdtn) VALUES(in_id_doctype, in_area, in_name);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `sl_doc_type_num` SET id_ntd = in_id_doctype, area_number_sdtn = in_area, name_sdtn = in_name
        WHERE `sl_doc_type_num`.id_sdtn = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM `sl_doc_type_num`  WHERE id_sdtn = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn FROM sl_doc_type_num n
            LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd WHERE n.id_sdtn = in_id;
     END IF;
     IF (comprator = 5) THEN
        SELECT n.id_sdtn, n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn
               FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd
               WHERE n.area_number_sdtn LIKE CONCAT('%',in_area,'%') AND  n.name_sdtn LIKE CONCAT('%',in_name,'%');
     END IF;
     IF (comprator = 6) THEN
        SELECT ntd.id_ntd, ntd.name_ntd FROM n_type_doc ntd;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_sdtn) FROM  `sl_doc_type_num` n;
     END IF;
     IF (comprator = 8) THEN
        SELECT MAX(n.area_number_sdtn) AS area_number FROM `sl_doc_type_num` n;
     END IF;
     IF (comprator = 9) THEN
        SELECT MAX(ntd.id_ntd) AS id_ntd FROM n_type_doc ntd;
     END IF;
END;

#
# Source for procedure test_docfacade
#

CREATE PROCEDURE `test_docfacade`(IN comprator TINYINT,                IN in_id_df INT(11),                IN in_id_contragent_in INT(11),     IN in_id_contragent_out INT(11),IN in_id_obekt_out INT(11),
                                                IN in_id_obekt_in INT(11),           IN in_id_distributor INT(11),       IN in_id_deliver INT(11),           IN in_descriptionPaying INT(3), IN in_docFacadeNumber INT(10),
                                                IN in_docFacadeUser INT(11),         IN in_docFacadeUserLastEdit INT(11),IN in_id_facturaConnection INT(11), IN in_id_payingOrder INT(11),   IN in_id_zaqvkaConnection INT(11),
                                                IN in_docFacadeLevel INT(11),        IN in_docFacadeStorage INT(11),     IN in_docFacadeType INT (3),        IN in_docFacadeAllDDS DOUBLE,   IN in_docFacadeTotal DOUBLE,
                                                IN in_docFacadeCondition VARCHAR(11),IN in_docFacadeDate VARCHAR(10),    IN in_docFacadeComment VARCHAR(250),IN in_dateDeliver VARCHAR(10),  IN in_payingDate VARCHAR(10),
                                                IN in_docFacadeFlagFinish INT (3))
BEGIN

IF (comprator = 0) THEN
     SELECT * FROM mida.sl_document_facade s;
END IF;


END;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
