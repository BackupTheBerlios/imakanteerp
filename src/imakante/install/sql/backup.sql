-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-standard


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema mida
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ mida;
USE mida;

--
-- Table structure for table `mida`.`anlevel`
--

DROP TABLE IF EXISTS `anlevel`;
CREATE TABLE `anlevel` (
  `id_al` int(10) NOT NULL auto_increment,
  `cod_al` varchar(45) NOT NULL,
  `name_al` varchar(45) NOT NULL,
  PRIMARY KEY  (`id_al`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`anlevel`
--

/*!40000 ALTER TABLE `anlevel` DISABLE KEYS */;
INSERT INTO `anlevel` (`id_al`,`cod_al`,`name_al`) VALUES 
 (1,'10','Машини'),
 (2,'20','Леки машини'),
 (3,'15','Гориво'),
 (4,'67','Отоплителни системи'),
 (5,'94','Компютърна техника'),
 (6,'33','Снимачна техника');
/*!40000 ALTER TABLE `anlevel` ENABLE KEYS */;


--
-- Table structure for table `mida`.`kind_paying`
--

DROP TABLE IF EXISTS `kind_paying`;
CREATE TABLE `kind_paying` (
  `id_kp` int(10) unsigned NOT NULL auto_increment,
  `name_kp` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id_kp`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`kind_paying`
--

/*!40000 ALTER TABLE `kind_paying` DISABLE KEYS */;
INSERT INTO `kind_paying` (`id_kp`,`name_kp`) VALUES 
 (0,'ОТЛОЖЕНО'),
 (1,'БРОЙ'),
 (2,'БАНКА'),
 (3,'ЧАСТИЧНО');
/*!40000 ALTER TABLE `kind_paying` ENABLE KEYS */;


--
-- Table structure for table `mida`.`log_ls_init_worker`
--

DROP TABLE IF EXISTS `log_ls_init_worker`;
CREATE TABLE `log_ls_init_worker` (
  `id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) default NULL,
  `id_user` int(11) default NULL,
  `date_init` date default NULL,
  `time_init` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`log_ls_init_worker`
--

/*!40000 ALTER TABLE `log_ls_init_worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_ls_init_worker` ENABLE KEYS */;


--
-- Table structure for table `mida`.`log_ls_osig`
--

DROP TABLE IF EXISTS `log_ls_osig`;
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

--
-- Dumping data for table `mida`.`log_ls_osig`
--

/*!40000 ALTER TABLE `log_ls_osig` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_ls_osig` ENABLE KEYS */;


--
-- Table structure for table `mida`.`log_ls_salary`
--

DROP TABLE IF EXISTS `log_ls_salary`;
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

--
-- Dumping data for table `mida`.`log_ls_salary`
--

/*!40000 ALTER TABLE `log_ls_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_ls_salary` ENABLE KEYS */;


--
-- Table structure for table `mida`.`log_user_in`
--

DROP TABLE IF EXISTS `log_user_in`;
CREATE TABLE `log_user_in` (
  `id` int(11) NOT NULL auto_increment,
  `id_user` int(11) default NULL,
  `ip_mashine` int(11) default NULL,
  `date_log` date default NULL,
  `time_log` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`log_user_in`
--

/*!40000 ALTER TABLE `log_user_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_user_in` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_addresses`
--

DROP TABLE IF EXISTS `ls_addresses`;
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

--
-- Dumping data for table `mida`.`ls_addresses`
--

/*!40000 ALTER TABLE `ls_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_addresses` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_boln_impl`
--

DROP TABLE IF EXISTS `ls_boln_impl`;
CREATE TABLE `ls_boln_impl` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0',
  `id_boln` smallint(6) default NULL COMMENT 'РћС‚ С?Р°Р±Р»РѕРЅР°',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmoth+pyear',
  `id_per_otn` int(11) default NULL COMMENT 'РџСЂРё СЃС‚РѕСЂРЅРёСЂР°РЅРµ',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT 'РќР°С‡Р°Р»РЅР° РґР°С‚Р°',
  `n_o_days` tinyint(3) NOT NULL default '0' COMMENT 'Р‘СЂРѕР№ РґРЅРё Р±РѕР»РЅРёС‡РЅРё',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_boln_impl`
--

/*!40000 ALTER TABLE `ls_boln_impl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_boln_impl` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_bolnichni`
--

DROP TABLE IF EXISTS `ls_bolnichni`;
CREATE TABLE `ls_bolnichni` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '0' COMMENT 'Р?РјРµ РЅР° РІРёРґР° Р±РѕР»РЅРёС‡РµРЅ',
  `cod` varchar(6) NOT NULL default '' COMMENT 'Р’СЉС‚СЂРµС?РµРЅ РєРѕРґ Р·Р° РІРёРґР° Р±РѕР»РЅРёС‡РµРЅ',
  `procent` decimal(3,2) unsigned NOT NULL default '0.00' COMMENT 'РџСЂРѕС†РµРЅС‚ РЅР° Р±РѕР»РЅРёС‡РЅРёСЏ',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_bolnichni`
--

/*!40000 ALTER TABLE `ls_bolnichni` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_bolnichni` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_dates`
--

DROP TABLE IF EXISTS `ls_dates`;
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

--
-- Dumping data for table `mida`.`ls_dates`
--

/*!40000 ALTER TABLE `ls_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_dates` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_dlajnosti`
--

DROP TABLE IF EXISTS `ls_dlajnosti`;
CREATE TABLE `ls_dlajnosti` (
  `id` int(11) NOT NULL auto_increment,
  `nomer` tinyint(4) default NULL,
  `namedlaj` varchar(50) default NULL,
  `id_ncl` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_dlajnosti`
--

/*!40000 ALTER TABLE `ls_dlajnosti` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_dlajnosti` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_dobavki`
--

DROP TABLE IF EXISTS `ls_dobavki`;
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

--
-- Dumping data for table `mida`.`ls_dobavki`
--

/*!40000 ALTER TABLE `ls_dobavki` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_dobavki` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_dod`
--

DROP TABLE IF EXISTS `ls_dod`;
CREATE TABLE `ls_dod` (
  `Id` int(11) NOT NULL auto_increment,
  `datep` date default NULL,
  `doh` float default NULL,
  `sum` float default NULL,
  `prct` float default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_dod`
--

/*!40000 ALTER TABLE `ls_dod` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_dod` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_main`
--

DROP TABLE IF EXISTS `ls_main`;
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

--
-- Dumping data for table `mida`.`ls_main`
--

/*!40000 ALTER TABLE `ls_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_main` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_monthpar`
--

DROP TABLE IF EXISTS `ls_monthpar`;
CREATE TABLE `ls_monthpar` (
  `id` int(11) NOT NULL auto_increment,
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT 'Р Р°Р±РѕС‚РµРЅ РїРµСЂРёРѕРґ',
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

--
-- Dumping data for table `mida`.`ls_monthpar`
--

/*!40000 ALTER TABLE `ls_monthpar` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_monthpar` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_n_person`
--

DROP TABLE IF EXISTS `ls_n_person`;
CREATE TABLE `ls_n_person` (
  `id_ls_n_person` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `code_ls_n_person` int(11) unsigned default '0',
  `egn_ls_n_person` varchar(10) NOT NULL,
  `nlk_ls_n_person` varchar(9) NOT NULL,
  `name_ls_n_person` varchar(45) NOT NULL,
  `comment_ls_n_person` varchar(250) NOT NULL,
  PRIMARY KEY  (`id_ls_n_person`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_n_person`
--

/*!40000 ALTER TABLE `ls_n_person` DISABLE KEYS */;
INSERT INTO `ls_n_person` (`id_ls_n_person`,`id_n_group`,`code_ls_n_person`,`egn_ls_n_person`,`nlk_ls_n_person`,`name_ls_n_person`,`comment_ls_n_person`) VALUES 
 (1,14,110,'7802204448','147855','Иван Кацаров','programmer'),
 (2,14,204,'7401234649','646343643','Радослав Драгийски','programmer'),
 (5,16,1731,'7712084480','144260224','Иван Попов','programmer'),
 (10,14,7216,'8503154656','445151535','Даниела Попова','аниматорче killer'),
 (9,14,3459,'7805011234','546541165','Динко Цветkов','Dinastio el Hombre mu4o la grasi\n'),
 (14,31,1102,'7401234649','122334444','Албена Драгийска','ще видим дали ще стане тестер kupongiq');
/*!40000 ALTER TABLE `ls_n_person` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_otdeli`
--

DROP TABLE IF EXISTS `ls_otdeli`;
CREATE TABLE `ls_otdeli` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `code` int(11) default NULL,
  `name` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_otdeli`
--

/*!40000 ALTER TABLE `ls_otdeli` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_otdeli` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_otp_impl`
--

DROP TABLE IF EXISTS `ls_otp_impl`;
CREATE TABLE `ls_otp_impl` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0' COMMENT 'РђРєС‚СѓР°Р»РµРЅ СЂР°Р±РѕС‚РЅРёРє',
  `id_otp` smallint(6) NOT NULL default '0' COMMENT 'РћС‚ С?Р°Р±Р»РѕРЅР°',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmonth+pyear',
  `id_per_otn` smallint(6) default NULL COMMENT 'РџРµСЂРёРѕРґ Р·Р° СЃС‚СЂРѕРЅРёСЂР°РЅРµ',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT 'РќР°С‡Р°Р»РЅР° РґР°С‚Р°',
  `n_o_days` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Р‘СЂРѕР№ РґРЅРё РѕС‚РїСѓСЃРє РІ РјРµСЃРµС†Р°',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='Р?Р·С‡РёСЃР»РµРЅРё Р±РѕР»РЅРёС';

--
-- Dumping data for table `mida`.`ls_otp_impl`
--

/*!40000 ALTER TABLE `ls_otp_impl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_otp_impl` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_otpusk`
--

DROP TABLE IF EXISTS `ls_otpusk`;
CREATE TABLE `ls_otpusk` (
  `id` smallint(4) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '' COMMENT 'Р?РјРµ РЅР° РѕС‚РїСѓСЃРє',
  `cod` varchar(6) NOT NULL default '' COMMENT 'РљРѕРґ РЅР° РІРёРґР° РѕС‚РїСѓСЃРє',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_otpusk`
--

/*!40000 ALTER TABLE `ls_otpusk` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_otpusk` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_pic`
--

DROP TABLE IF EXISTS `ls_pic`;
CREATE TABLE `ls_pic` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rabotnik` int(11) default NULL,
  `pic` blob,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_pic`
--

/*!40000 ALTER TABLE `ls_pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_pic` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_result`
--

DROP TABLE IF EXISTS `ls_result`;
CREATE TABLE `ls_result` (
  `id` int(11) NOT NULL auto_increment,
  `state` tinyint(2) unsigned NOT NULL default '1' COMMENT 'Р’СЃРёС‡РєРё Р·Р°РїРёСЃРё РіРµРЅРµСЂРёСЂР°РЅРё РІ (0=РёР·РІСЉРЅ) РїСЂРёР»РѕР¶РµРЅРёРµС‚Рѕ',
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT 'Р Р°Р±РѕС‚РµРЅ РїРµСЂРёРѕРґ',
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

--
-- Dumping data for table `mida`.`ls_result`
--

/*!40000 ALTER TABLE `ls_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_result` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_sluj`
--

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
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_sluj`
--

/*!40000 ALTER TABLE `ls_sluj` DISABLE KEYS */;
INSERT INTO `ls_sluj` (`Id`,`name_firm`,`dan_nom`,`bul`,`address`,`nam_boss`,`nam_acc`,`nkid`,`telefon`,`data_reg_dds`,`data_c`,`nm`,`postcode`,`email`,`web`) VALUES 
 (1,'PRIMERNA OOD','115555555','48866566','asdljsadnlsd','sdsddssds','sasdadssd','115','46666666','25-02-2555',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ls_sluj` ENABLE KEYS */;


--
-- Table structure for table `mida`.`ls_vid_osiguren`
--

DROP TABLE IF EXISTS `ls_vid_osiguren`;
CREATE TABLE `ls_vid_osiguren` (
  `Id` int(11) NOT NULL auto_increment,
  `kod` char(1) default NULL,
  `opisanie` varchar(64) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`ls_vid_osiguren`
--

/*!40000 ALTER TABLE `ls_vid_osiguren` DISABLE KEYS */;
/*!40000 ALTER TABLE `ls_vid_osiguren` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_baccount`
--

DROP TABLE IF EXISTS `n_baccount`;
CREATE TABLE `n_baccount` (
  `id_nbc` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned default NULL,
  `code_nbc` int(11) default NULL COMMENT 'cod na bankata',
  `name_nbc` varchar(45) default NULL COMMENT 'ime na bankata',
  `account_nbc` varchar(28) default NULL COMMENT 'Bankova smetka',
  `address_nbc` varchar(100) default NULL,
  `id_tbacc` int(11) unsigned default '1',
  `comment_nbc` varchar(250) default NULL,
  PRIMARY KEY  (`id_nbc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='bankovi smetki';

--
-- Dumping data for table `mida`.`n_baccount`
--

/*!40000 ALTER TABLE `n_baccount` DISABLE KEYS */;
INSERT INTO `n_baccount` (`id_nbc`,`id_n_group`,`code_nbc`,`name_nbc`,`account_nbc`,`address_nbc`,`id_tbacc`,`comment_nbc`) VALUES 
 (12,8,9,'Райфайзен БАНК',NULL,NULL,0,'не ще да се'),
 (11,10,3,'ДЗИ Банк',NULL,NULL,0,'няма'),
 (6,9,7,'Токуда Банк',NULL,NULL,0,'Всеки за нищо'),
 (7,11,13,'ING Bank',NULL,NULL,0,'Все е все и всьо!'),
 (13,9,8,'Банка ДСК','','',0,'както е указано в правилника.'),
 (30,0,15,'','','',0,''),
 (29,0,14,'','','',0,'');
/*!40000 ALTER TABLE `n_baccount` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_casa`
--

DROP TABLE IF EXISTS `n_casa`;
CREATE TABLE `n_casa` (
  `id_n_casa` int(10) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `code_n_casa` int(11) unsigned NOT NULL default '0',
  `name_n_casa` varchar(40) collate cp1251_bulgarian_ci default NULL,
  `comments_n_casa` varchar(250) collate cp1251_bulgarian_ci default NULL,
  PRIMARY KEY  (`id_n_casa`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_bulgarian_ci COMMENT='kasi';

--
-- Dumping data for table `mida`.`n_casa`
--

/*!40000 ALTER TABLE `n_casa` DISABLE KEYS */;
INSERT INTO `n_casa` (`id_n_casa`,`id_n_group`,`code_n_casa`,`name_n_casa`,`comments_n_casa`) VALUES 
 (1,13,2,'Каса Разнос Нестле',''),
 (2,13,3,'РАЗНОС КРАФТ',''),
 (3,12,4,'ЦЕНТРАЛНА',''),
 (4,13,5,'KASA 2',''),
 (5,12,6,'Каса Ина 7','по банкови плоащания'),
 (6,13,7,'Разнос 003','');
/*!40000 ALTER TABLE `n_casa` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_contragent`
--

DROP TABLE IF EXISTS `n_contragent`;
CREATE TABLE `n_contragent` (
  `id_contragent` int(11) NOT NULL auto_increment,
  `code_contragent` int(11) NOT NULL default '0',
  `name_n_contragent` varchar(45) NOT NULL default 'Няма данни',
  `bul_n_contragent` varchar(13) NOT NULL default '0000000001',
  `dan_n_contragent` varchar(11) NOT NULL default '0000000000',
  `address_n_contragent` varchar(35) NOT NULL default 'Няма данни',
  `id_nm` int(10) unsigned NOT NULL default '0',
  `tel_contragent` varchar(12) NOT NULL default 'Няма данни',
  `fax_contragent` varchar(12) NOT NULL default 'Няма данни',
  `email_contragent` varchar(20) NOT NULL default 'Няма данни',
  `web_contragent` varchar(20) NOT NULL default 'Няма данни',
  `id_mol` int(10) unsigned NOT NULL default '0',
  `id_oso` int(10) unsigned NOT NULL default '0',
  `flag_n_contragent` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_contragent`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='kontragenti';

--
-- Dumping data for table `mida`.`n_contragent`
--

/*!40000 ALTER TABLE `n_contragent` DISABLE KEYS */;
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1,1,'tytr','234','234','dfg',118,'dfg','dfg','dfg','dgf',1,1,0),
 (2,105000,'Елена Видева ЕТ','115298151Е','','полк. Бонев 4',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3,105001,'Сас ЕТ','825154964Е','','подоф. Г.Котов 4',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (4,105002,'Боби-95 ЕТ','825358301Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (5,105003,'БЧ-Петър Бечев ЕТ','825205775Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (6,105004,'Ани ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (7,105005,'Боги-Ив.Богданова ЕТ','825154028Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (8,105006,'*Роял-С.Манафски ЕТ','040617792','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (9,105007,'Стоян Георгиев-45 ЕТ','115695786','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3247,102503,'Ники-Никола Кисьов ЕТ','120501062','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',2,1,0),
 (11,105009,'Вивиан ЕТ','825138910Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (12,105010,'МС - Мл. Симеонов ЕТ','825146483Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (13,105011,'Оскар ЕТ 3','040313298Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (14,105012,'Водолей-53-Н.Петров ЕТ','115574308','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (15,105013,'Касис - БМ ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (16,105014,'Петър Праматаров ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (17,105015,'Ели ЕТ','115031515Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (18,105016,'Сани - 2002 ЕООД','115746947','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (19,105017,'Коко-98 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (20,105018,'Рифто-Тодор Иванов ЕТ','115769977','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (21,105019,'Чечето ЕООД','115913114','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (22,105021,'Никола Кръстев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (23,105022,'Тихомир Каранешев','115138143Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (24,105023,'Вяхди ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (25,105024,'Дела Панова ЕТ','115080576','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (26,105025,'Момчил Джонгов ЕТ','825107103','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (27,105026,'Промар ЕТ','115325246Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (28,105027,'Георги Савов и син ЕТ','825842773','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (29,105028,'Мари 4К ЕООД','115151646Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (30,105029,'Лъч ЕТ','115107678Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (31,105030,'Роял Инвестмънт ООД','115536955','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (32,105031,'Видиан ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (33,105032,'Ташка ЕТ','115532387','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (34,105033,'Интермес ЕООД','115013086Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (35,105034,'Тина-Цв.Нанева ЕТ','825395132Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (36,105035,'Виви ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (37,105036,'Снежана Хаджийска ЕТ','030242625Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (38,105037,'Йондит-Й.Вълчинов ЕТ','040763950Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (39,105038,'Империя ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (40,105039,'Старт-Нончо Ангелов ЕТ','825371626Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (41,105040,'Филес ЕТ','825059832','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (42,105041,'Виктория ВИП ЕООД','115901845','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (43,105042,'*Калиопа ЕТ','115127079Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (44,105043,'Нип-2000 ЕТ','115578000','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (45,105044,'Миладинов - ПГ ЕТ','825121793Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (46,105045,'Колев-4К-Колев ЕТ','115653307','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (47,105046,'Миладинов - ПГ ЕТ 2 об.','825121793Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (48,105047,'Импо-93 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (49,105048,'Лилия-88 ЕТ','115817468','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (50,105049,'Миладинов - ПГ ЕТ 3 об.','825121793Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (51,105051,'Плана ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (52,105052,'Валентина-Роси ЕТ','825202359Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (53,105053,'СКС-91 ЕТ','825004936Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (54,105054,'Панон - Н ЕТ','825346046Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (55,105055,'Илиян Павлов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (56,105056,'Рая-5-Трифон Въчков ЕТ','040509368Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (57,105057,'Димитър Радев-2000 ЕТ','115588795','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (58,105058,'СТК-Тончев и сие СД','040734201Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (59,105059,'Иван Кесов ЕТ','825028225Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (60,105060,'Албарей видео ЕТ','103073339Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (61,105061,'Криси-Бисер Димитров ЕТ','115097547Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (62,105062,'Сато ЕТ','115021340Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (63,105063,'Мария-2003 ET','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (64,105066,'Меркурий ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (65,105067,'Таня-Татяна Сиракова ЕТ','115547663','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (66,105068,'Цветанка Лазарова ЕТ','115507170Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (67,105069,'Димитър Канелов ЕТ','115041865Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (68,105070,'Стиванс-Иван Стайков ЕТ','825335345Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (69,105071,'Даниели ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (70,105073,'Тас ЕТ','115332618','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (71,105074,'Любчо-91 ЕТ','040402195Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (72,105075,'Марияна Янева ЕТ','115224069Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (73,105076,'ДЕП ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (74,105077,'Андон Стаменов ЕТ','115091583','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (75,105078,'*ВДС-71 ЕТ','115161423','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (76,105079,'Шанс-93 ЕТ','115085032Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (77,105080,'Трими ЕТ','825058617','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (78,105081,'Иван Балсамаджиев ЕТ','040469742Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (79,105082,'Надежда-Надя Пенева ЕТ','115077384Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (80,105083,'Фаворит-БСН ЕТ','825162548Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (81,105084,'Светла Мачкърска ЕООД','115741725','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (82,105085,'Дебора и ко ЕООД','115667239','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (83,105088,'Рени-97','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (84,105089,'Евлитон ООД','115874647','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (85,105090,'Оскар ЕТ','040313298Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (86,105092,'*Гергана-80 ЕТ','825300839Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (87,105093,'Шик Ишанс ЕТ','825232562Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (88,105094,'Снежана Хаджийска ЕТ','030242625Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (89,105095,'Виктория ВИП ЕООД','115901845','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (90,105096,'Румяна Манолова ЕТ','825370524Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (91,105097,'Кокала ЕТ','825369828Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (92,105098,'Мари 2001 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (93,105099,'Шах-53 ЕТ','825308654Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (94,105100,'Джонсънс-Д ЕООД','115769429','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (95,105101,'Хари ЕТ','115234266','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (96,105102,'Данимира-26 СД','115078333Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (97,105103,'Будрак-Филип Райков ЕТ','825338665Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (98,105104,'Дефт 2 ООД','115615527','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (99,105105,'Маргарита 44 ЕТ','115261758Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (100,106000,'Дай-мън ЕТ','125198162Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (101,106001,'Демон-97 2 ООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (102,106002,'Верен-75 ЕТ','040634037Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (103,106003,'Павлина Игнатова ЕТ','115515007Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (104,106004,'Демон-97 ЕТ','115172891','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (105,106005,'Русади ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (106,106006,'Донка Костадинова ЕТ','115084051Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (107,106007,'Савекс ЕТ','115319827','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (108,106008,'Габи 94 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (109,106010,'Кожухаров ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (110,106011,'АЕГ - Ат.Стоилов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (111,106012,'Вера Стойкова-Миранда ЕТ','825013903Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (112,106013,'Сантер ЕТ','825337257Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (113,106014,'*Хоров и братя СД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (114,106015,'Александър комерс ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (115,106016,'Щастие 2А ЕТ','825051430','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (116,106017,'Кръстьо Стефанов ЕТ','115673548','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (117,106018,'Грация ЕТ','825353884Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (118,106019,'Вивана Димитрова-Диви ЕТ','040846271','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (119,106020,'Албена ЕТ','115086077','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (120,106021,'Орхис ЕТ','115098243','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (121,106027,'Хелиос ЕТ','020483916Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (122,106028,'Българско войнство ЕТ','115254094Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (123,106037,'Габи-91 СД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (124,106038,'Здравка Дочева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (125,106040,'Форком ООД','115175063','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (126,106041,'Соня Говедарова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (127,106042,'САС-99 ООД','115297544','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (128,106043,'Сафа Ахмед-Лабаш ЕТ','115593867','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (129,106044,'Брадърс ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (130,106045,'Училище Класик','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (131,106046,'А и Г 4000 ЕТ','115198197','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (132,106047,'Петьо Петев ЕТ','115291462Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (133,106048,'Дарс-99 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (134,106049,'Дан Таун ЕТ','825174970Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (135,106050,'Парагутев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (136,106051,'Айсберг-2002 ООД','115662427','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (137,106052,'Петър Кескинов ЕТ','115277449','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (138,106054,'Гавраилов Комерс ЕТ','115018247Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (139,106056,'Бойко Качулев ЕТ','825330661Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (140,106057,'Сани - 2002 ЕООД','115746947','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (141,106058,'Таня-96 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (142,106061,'Киви ЕТ','115631645','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (143,106062,'Дани-2002 ЕТ','115612584','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (144,106063,'Деси ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (145,106065,'Болена ЕТ','115149086Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (146,106066,'Мирчев Комерс ЕООД','115631307','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (147,108000,'Ал.Балджиева 2 ЕТ','040983473E','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (148,108001,'Юлия Киркова ЕТ','115005762Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (149,108002,'Димитър Кърчоков ЕТ','040980676Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (150,108003,'Стил-М-Мария Илиева ЕТ','825265092Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (151,108004,'*Янко Николов-89 ЕТ','020987670Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (152,108005,'Стефани-2003 ЕООД','115779527','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (153,108006,'Ради-Радка Сивенова ЕТ','120076191','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (154,108007,'Галатея-Бялкова и Сие СД','825021661Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (155,108008,'Деси-72-Д.Маламова ЕТ','115637032','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (156,108009,'Елхит ЕТ','825382149Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (157,108010,'Кет-Николай Димитров ЕТ','825172414','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (158,108012,'Дефт ООД','115615527','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (159,108015,'Надежда ЕТ','115162354Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (160,108016,'Слънчеви лъчи ООД','115889720','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (161,108017,'Тик-так ЕТ','825169197Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (162,108018,'Мария Шопова-95 ЕТ','825396024Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (163,108019,'Тракия-РМ ЕООД','115010446','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (164,108020,'Дискорд ООД','825314949Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (165,108021,'Хардланд ЕТ','115306630','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (166,108022,'Ангел Безатев ЕТ','115124684','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (167,108023,'Велин Джоглев ЕТ','115810251','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (168,108024,'МБАЛ Св.Панталеймон ЕООД','115517517','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (169,108025,'Стефани-2003 2 ЕООД','115779527','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (170,108026,'Анастас Тюрдичев ЕТ','040381331','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (171,108027,'Хазарт ЕТ','115080099','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (172,108028,'Старт М ЕТ','040192544Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (173,108029,'Стоян Василчев ЕТ','825295445','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (174,108030,'Ася-2000-И.Калчишкова ЕТ','160004488','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (175,108031,'Георги Динчев ЕТ','8252201922Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (176,108032,'Модус ЕТ','825075433Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (177,108033,'Машев ЕТ','825085920Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (178,108034,'Неги Голд ООД','115236388','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (179,108035,'Пламияна ЕТ','115633498','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (180,108036,'Самсон-62 ЕТ','825073697','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (181,108037,'Самба-Д.Урджанова ЕТ','115891116','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (182,108038,'Ал.Балджиева ЕТ','040983473Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (183,108039,'Финес 2000 ЕТ 1','115294943Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (184,108040,'Финес 2000 ЕТ 2','115294943Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (185,108041,'Финес 2000 ЕТ 3','115294943Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (186,108044,'Дони-Д.Карагьозова ЕТ','115926193','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (187,108045,'Васил Андреев-2001 ЕТ','115657049','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (188,108046,'Красимир Гьонев ЕТ','825303593','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (189,108047,'Дит-Д.Тимчев ЕТ','115111954Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (190,108048,'Мусорлица ЕТ','825147208Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (191,108049,'Рубикон - 01 ЕООД','115631442','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (192,108050,'Габицвет ЕТ','115259255Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (193,109000,'Нели-Омар Атура ЕТ','115075294Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (194,109001,'Витекс 90 ЕООД','030236597Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (195,109002,'Мария Мурджова-Мура ЕТ','123163484','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (196,109003,'Марбак-Бакова СИВ СД','115219759Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (197,109004,'Лазаров-АИГ СД','115107151Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (198,109005,'Сикрас ЕООД','115604089','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (199,109006,'Антоанета Ангелова ЕТ','115766244','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (200,109007,'Светлина ЕТ','115082328Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (201,109008,'МИМ-Д. Захарлиева','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (202,109009,'Пико-МБ СД','825356275Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (203,109010,'Софт ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (204,109011,'Жулиета Василева ЕТ','115180418','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (205,109012,'Юбимарк ЕТ','115165471','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (206,109013,'Експрес-линк ООД','115644742','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (207,109014,'Станимпекс ЕООД','115800671','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (208,109015,'Империал ЕТ','115146574Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (209,109016,'М. Георгиева ЕТ','115119901Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (210,109017,'Подем 90 ЕТ 3 об.','115538187','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (211,109018,'Ники 96 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (212,109019,'Инкьов-1 ЕТ','825219839Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (213,109020,'Аполо-6 2 ЕООД','115658838','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (214,109021,'Аполо-6 ЕООД','115658838','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (215,109022,'Ваня-Иванка Пандурова ЕТ','115820539','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (216,109023,'ДАВ-Инвест ЕТ','115075831Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (217,109024,'Наркооп РПК кл.6','000435554Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (218,109025,'Подем 90 ЕТ 2 об.','115538187','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (219,109026,'Джовани 71 ЕТ','825385234','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (220,109027,'Подем 90 ЕТ 1','115538187','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (221,109028,'Петър Палийски-70 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (222,109029,'Венус-М ЕТ','040204648','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (223,109030,'Антина ЕТ','825072652Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (224,109031,'Никола Дичев ЕТ','115054485Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (225,109032,'Еми ЕТ','115054649Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (226,109033,'Ангро МБ ЕТ','825258219Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (227,109034,'Коинараки ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (228,109035,'Диневи ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (229,109036,'Жафи ЕТ','040932652Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (230,109037,'Антония-Петя Дабчева ЕТ','040236649Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (231,109039,'Лилия 95 ЕТ','115596105','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (232,109040,'Гиг-Г.Костадинов ЕТ','115818933','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (233,109041,'Вероника ЕТ','115522770Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (234,109042,'Факелини ЕТ','040247841Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (235,109043,'Крис - Демерс ЕТ','825219262Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (236,109044,'Бон Бонбон-96 Нолбантян ЕТ','115028348','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (237,109045,'Аси-Г.Гатева ЕТ','115050736Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (238,109046,'Ивел-22 СД','115563742','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (239,109047,'Саша-И.Варадинова ЕТ','115716907','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (240,109048,'Любен Тупаров ЕТ','115681986','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (241,109049,'Ники ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (242,109050,'Зорница ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (243,109051,'Интер-прайс ЕФ','825006556','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (244,109052,'Славина ЕТ','115042270Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (245,109500,'София-София Стаменова ЕТ','115667634','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (246,109501,'Демокрация ЕТ','825016511Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (247,109503,'Самер Шариф ЕТ','115129863Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (248,109504,'Мицико-92 ЕТ','040611280Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (249,109505,'Теодора ЕТ','825121341Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (250,109506,'Пепе ЕООД','115594556Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (251,109507,'Кинг-Инвест ООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (252,109509,'Микеле ЕТ','825285216Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (253,109510,'Митко Хаджиев ЕТ','813192373Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (254,109511,'Венислава Мяшкова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (255,109512,'Пеанто - С ЕТ','825137445Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (256,109514,'Ник - Пл. Иванов ЕТ','825189463Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (257,109515,'Начка ЕТ','115015393Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (258,109516,'Лена 83 ЕТ','115233132Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (259,109517,'Роял-К ЕТ','825118174Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (260,109518,'Ст.Иванов- Светлана ЕТ','825134777Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (261,109519,'Хазарт ЕТ','115080099','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (262,109520,'Илияна Видева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (263,109521,'Марви ЕТ','825384143Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (264,109522,'Марви 2 ЕТ','825384143Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (265,109523,'Писаров ЕТ','825031673Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (266,109524,'Цветелина ЕТ','115548498','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (267,109525,'Велик Германов ЕТ','825128706Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (268,109526,'ВИП-99 ООД','160000372','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (269,109527,'Елком ЕТ','825198583Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (270,109528,'Вам - Иван Бонев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (271,109529,'Ради ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (272,109530,'Санел 92 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (273,109531,'ХИК ЕТ','825282088Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (274,109532,'Лазур - 97 ЕООД','115123166','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (275,109533,'Емко-М ООД 1','825017289Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (276,109534,'М и Н ЕТ','825112100Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (277,109535,'Ека-мон ЕТ','825124444','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (278,109536,'Валентин Димитров ЕТ','115029652Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (279,109537,'Силви Стеф ЕТ','825110686Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (280,109539,'Пи Ем-2003-Д.Деков ЕТ','115769817','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (281,109540,'Алдекс ООД','160001759','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (282,109541,'Братя Ганзурови ЕТ','115088815Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (283,109542,'Видка Стоянова ЕТ','825146241Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (284,109544,'Иванов Комерс 82 ЕТ','825094570Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (285,109545,'Кехам Минасян ЕТ','115117366Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (286,109546,'Ина-10 ЕТ','825202341','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (287,109547,'Иванка Чавдарова ЕТ','115297551','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (288,109548,'Радина 21 СД','825263725Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (289,109549,'Лаци ЕТ','115237440Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (290,109550,'Илком-2003 ЕООД','115879758','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (291,109551,'Димо Михов ЕТ','115580574','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (292,105106,'Авторент-Ат.Вълков ООД','115545687','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (293,105107,'Амарант-2001 ЕТ','11559794Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (294,105109,'Ватос ЕТ','115348565','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (295,105110,'Вега Вит ЕООД','825335181Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (296,105113,'Верея ЕТ','825453776','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (297,105114,'Вилдани ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (298,105115,'Гит - Ив.Стоянова ЕТ','040402408Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (299,105116,'Джапо-Светослав Минчев ЕТ','115131001Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (300,105117,'Димитър Николов ЕТ','040900801','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (301,105118,'Ева-Лукс ЕТ','825074429','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (302,105120,'Колев и синове ЕТ','825371188Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (303,105122,'Старт-Нончо Ангелов ЕТ','825371626Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (304,105123,'Ст.Джевизов-СИ-А-ЕМ ЕТ','825187569Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (305,105124,'СТК-Тончев и сие СД','040734201Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (306,105125,'Сърбенски Чернев ЕТ','115177687Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (307,106067,'Енев-Енчо Енев ЕТ','825193369','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (308,106068,'Консулт ЕТ','82532465Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (309,106069,'Нели Чолакова ЕТ','115281650Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (310,106070,'Ник-92 ООД','115329981Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (311,108052,'Мая Пенева-94 ЕТ','115256120Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (312,109054,'4444-Марийка Ракова ЕТ','115272313Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (313,109055,'Анджо-комерс ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (314,109056,'Бранимира Янкова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (315,109057,'Викинг-М ЕТ','825307673Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (316,109059,'Диа-Ил. Андонов ЕТ','115788550','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (317,109060,'Евро-2002 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (318,109063,'Ив. Мандраджийски ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (319,109064,'Ив-Ив ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (320,109065,'Йордан Сариев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (321,109066,'Мони ЕТ','115814283','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (322,109067,'Нирвана ЕТ','825011172Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (323,109068,'Одиком ЕТ','040240423Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (324,109069,'Одиком 2 ЕТ','040240423Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (325,109071,'Саломея ЕТ','115112999Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (326,109072,'Славина ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (327,109073,'Стамбули България Лимитид ЕООД','000646284Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (328,109074,'Стамбули България Лимитид ЕООД','000646284Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (329,109075,'Стоян Стоянов ЕТ','040441322','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (330,109077,'Топчо ЕТ','825393551Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (331,109552,'Дженит ЕООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (332,109553,'Евро-96 ЕТ','115002047Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (333,109554,'Емко-М ЕООД 2','825017289 Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (334,109555,'Емко-М ЕООД 3','825017289Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (335,109556,'Тодис ЕТ','040168187','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (336,109557,'Есев 2 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (337,109558,'Зорница-90 ООД','040441117','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (338,109559,'Иван Нинов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (339,109560,'Корект-99 ЕТ','115318426','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (340,109561,'Престиж-3 ООД 2','825341362Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (341,109562,'Медита ЕТ','115005278Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (342,109564,'Рица-К.Малинова ЕТ','115603432','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (343,109565,'Виктория СТ ООД','115818381','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (344,109566,'Фао Консултинг ООД','115161633ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (345,109567,'Хризантема ЕТ','115018471Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (346,109568,'Цветелино ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (347,106071,'Мисис Надежда - 79 ЕТ','825132715E','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (348,106072,'Куба-Янев Янев и Сие СД','020363952Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (349,106073,'Стелт ЕС ООД','115039241Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (350,106074,'Братя Мирчеви ООД','115340814','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (351,106075,'Братя Мирчеви ООД','115340814','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (352,109569,'Велик Германов 2 ЕТ','825128706Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (353,105130,'Бисера 90 ЕТ','825166824Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (354,105131,'Валена ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (355,105132,'Марияна Тодорова ЕТ','115330396Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (356,109078,'Гарант Хари ЕООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (357,109079,'Евиана ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (358,108054,'Атич-В.Кандалжиева ЕТ','115003875Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (359,108055,'Димитър Ангелов-99 ЕТ','115306356Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (360,108056,'Лора-18 ЕТ','020467805Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (361,108057,'Римис ЕТ','115087179Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (362,108058,'Милкис ЕТ','115337330','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (363,109571,'Атанаска Дафовска ЕТ','115537772','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (364,109572,'Гивс СД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (365,109573,'Стелт ЕС ООД','115039241Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (366,109574,'Колония ЕТ','115639784','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (367,105134,'Мик-М.Иванова ЕТ','115761261','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (368,105133,'Радина СД','825263725Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (369,106076,'Би-Електрик ЕТ','825127401Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (370,106077,'Карамфила Маркова ЕТ','825319024Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (371,109081,'Божоле ЕТ','115076460Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (372,109082,'Анета ЕТ','831233213Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (373,108060,'Василиса ЕТ','825203337','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (374,106078,'Уваков ЕООД','115335938','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (375,109800,'Зого ООД','115534826','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (376,109575,'Катя Иванова ЕТ','115059653Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (377,105135,'Харутюн Дараджиян-Хари ЕТ','825129077Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (378,105136,'Чара-2 ЕТ','825202409','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (379,106079,'Гергана Бакърджиева ЕТ','115600297','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (380,108061,'Кета Янева ЕТ','116831180','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (381,109083,'Герматини-Кристина Ненова ЕТ','115793743','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (382,109084,'*Деми ЕТ','115238179Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (383,108062,'Емили ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (384,108063,'Каппрес','115208150Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (385,108064,'Ники-7 ЕТ','115127620','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (386,105137,'Мираж-96 ООД','115036964','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (387,105138,'Роза ЕТ','1153322970','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (388,109085,'Алисия ЕТ','115100300Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (389,109086,'Анкица ЕТ','115689082','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (390,109087,'Ваки ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (391,109088,'*Гаса ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (392,109089,'Геодора-98 ЕТ','115217473Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (393,109090,'Кремена ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (394,109091,'Леко','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (395,109092,'Николаев Комерс ЕТ','825233098Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (396,109576,'Аси ЕТ','115089059Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (397,109093,'Корона-2002 1 ЕООД','115651997','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (398,109094,'Им - Георги Георгиев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (399,109095,'Данджор-Йордан Гечев ЕТ','825217902Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (400,109096,'Атис-Г.Маринашка ЕТ','115809140','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (401,109097,'Кремена Георгиева 97','115149353','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (402,109577,'Тур Комерс ООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (403,108065,'Люси-М.Стефанова ЕТ','115034438','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (404,108066,'Петко Драганов-Авто ЕТ','040355500','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (405,109578,'Ива ЕТ','115571237','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (406,109579,'Стефан Дойчевски ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (407,109580,'Никола Начев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (408,109581,'Есев-Пламен Есев ЕТ','115520577','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (409,106080,'Валентин Линков ЕТ','115335532','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (410,109098,'Я.К. - Ясен Угренов ЕТ','115596774','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (411,108067,'Фльор ЕТ','015087065','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (412,109099,'Корона 2002 2 ЕООД','115651997','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (413,109100,'Илко Илиев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (414,108068,'Пиги ЕТ','825084163','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (415,109582,'Веселина Нешева ЕТ','115256960','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (416,109101,'Я.К.-Ясен Угренов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (417,109102,'ПМВ-Мария Пацева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (418,108069,'Веас-63 ЕТ','115168446Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (419,108070,'Косара-Н.Танева ЕТ','825340214Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (420,108071,'Зиго ЕТ','115275478Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (421,106081,'Леко-К.Христев ЕТ','115128761Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (422,109583,'Братя Мирчеви ООД','115340814','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (423,108072,'13Х3 ЕТ','825128108E','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (424,108073,'Пеги-Ел.Георгиева ЕТ','115171741Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (425,108074,'Рафаилов ЕТ','115074833Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (426,108075,'*Теди-М.Михаилова ЕТ','115655094','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (427,108076,'Нигал ЕТ','115630461','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (428,109103,'Б и Б-2002 ООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (429,109104,'Стамбули България Лимитид ЕООД','000646284Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (430,106082,'Катя Кацева-Веста ЕТ','115263961Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (431,106083,'Мони-В.Комитова ЕТ','115508742Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (432,109584,'Мони ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (433,108077,'Валерия Димитрова ЕТ','825332872','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (434,108078,'Ми-Та-2002 ЕТ','115746416','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (435,106084,'Надежда-Ц.Мънев-Ел.Мънева ЕТ','115162354Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (436,109105,'САТ ТВ ООД','020366759Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (437,109585,'Емпело Лукс ЕТ','825183147Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (438,106085,'А.А.-Александър Апостолов ЕТ','115520221','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (439,108079,'Георги Беждермов ЕТ','115624444','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (440,107000,'Гери-77 ЕТ','115815773','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (441,107001,'Недка Грозданова 98 ЕТ','115213813Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (442,107002,'Цветелина ЕТ','825382925Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (443,107003,'Спаска Татарова ЕТ','115142437','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (444,107004,'Колев и Синове ЕТ','825371188Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (445,107005,'Ангел Безатев ЕТ','115024684Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (446,107006,'Хевън ЕТ','115233709Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (447,107007,'Севдалина - Хр. Безатев ЕТ','115265984','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (448,107008,'Сосип ООД','115104963Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (449,107009,'Севда Хаджийска ЕТ','830102905','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (450,107010,'Пин - Костадин Комитов ЕТ','020368981','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (451,107011,'Снежана - 77 ЕТ','825114279Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (452,107012,'Петър Транс ЕТ','115003213Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (453,107013,'Ник - 97 АД','115182702Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (454,107014,'Алберт - 40 ЕТ','115007680','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (455,107015,'Попи ЕТ','825250140Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (456,107016,'Финикс ЕТ','115547631','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (457,107017,'Примо-66-С.Димитров ЕТ','115787758','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (458,109586,'Вип-П.Стойков ЕТ','115349546','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (459,107018,'Димбал ЕТ','115218598Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (460,107019,'Нируан ЕТ','825172026Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (461,107020,'Вики - Виолета Елкина ЕТ','825142848Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (462,107021,'Ник 15 ЕТ','825106290Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (463,107022,'Кардамис ЕТ','115601050','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (464,107024,'Братя Гарови ООД','115168542Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (465,107025,'Гълабовски ЕТ','825111137Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (466,107026,'Гама - 4 ЕТ','115524084Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (467,107027,'Ера ЕТ','825267392Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (468,107028,'Еми - 94 ЕТ','825265669Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (469,107029,'Пенка Димитрова ЕТ','115615178','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (470,107030,'Финал-Г.Шикренов ЕТ','112038522Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (471,107031,'Трилон ЕТ','825154918','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (472,107032,'Иван Кисов - 93 ЕТ','040838082Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (473,107033,'Катерини Анкона ЕТ','115104493','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (474,107034,'Георги Дудев ЕТ','040681001Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (475,107035,'Кактос - 91 ЕТ','115801154','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (476,107036,'Георги Серков ЕТ','115035855Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (477,107037,'Рап ЕТ','115328096','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (478,107038,'*Идол 999 ЕТ','020469884Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (479,107039,'Димпа ЕТ','825123538Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (480,107040,'Експрес ЕТ','115052979','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (481,107041,'Ита ЕТ','825178335Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (482,107042,'Ватев Х.Т.ЕТ','825195788Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (483,107043,'Виви СД','115071335','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (484,107044,'Стефан Плачков-99 ЕТ','115504219','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (485,107045,'Валдес 99 ЕООД','115299520','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (486,107046,'Бина Бутик ЕТ','825131232Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (487,107047,'Еми-ЛТ ЕООД','115744803','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (488,107048,'А.Делчев-М.Делчев ЕТ','825033237','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (489,107049,'Стоян Борисов ЕТ','825176505','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (490,107050,'Ве Маг ЕТ','115344232','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (491,107051,'Захариев Стил ЕТ','825192203Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (492,107052,'Георги Калинов-М ЕТ 1','115246233Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (493,107053,'Адорамис ЕТ','040646630Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (494,107054,'Севън ЕТ','825354477','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (495,107055,'Кулинар ООД','115090129','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (496,107056,'Владимир Владиков ЕТ','115739119','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (497,107057,'Марио-Вида Кондакова ЕТ','115650745','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (498,107058,'Мит-90 ЕТ','825016753Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (499,107059,'Бяла къща ЕТ','825147788','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (500,107060,'Трендафилов И.Г. ЕТ','112028791Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (501,107061,'Георги Т. И. ЕТ','112072485Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (502,107062,'Мариана - 3 - М. Златкова ЕТ','040023569Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (503,107063,'Стефан Спасов ЕТ','040364741Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (504,107064,'Стойчо Анастасов ЕТ','825206521Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (505,107065,'Кодам -1710 ЕТ','115095021Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (506,107066,'Богати 2000 ЕТ','115254703Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (507,107067,'Фир Комс ЕТ','825066973','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (508,107068,'Кронус 3 ООД','115102936','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (509,107069,'Ерос - 90 - Д. Бойков ЕТ','112085917Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (510,107070,'Георги Алексиев','825119041','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (511,107071,'Наги ООД','825141172','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (512,107072,'Христо Вaтахов ЕТ','115322451Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (513,107073,'Гривка Радоева ЕТ','825139147Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (514,107074,'Кики 61 ЕТ','825136635Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (515,107075,'Здравец - С. А. ЕТ','825160077','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (516,107076,'ЕФ ИДИ ЕТ','115288506Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (517,107077,'РКС Пловдив','000471753Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (518,107078,'Магика ООД','825266244','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (519,107079,'Аско 3D ЕТ','115064789Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (520,107080,'Сайдер - Игнат Игнатов ЕТ','805280486Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (521,107081,'Меджикс ЕТ','115624693','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (522,107082,'Севда Хайдарска ЕТ','830102905','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (523,107083,'Цедур ЕТ','120523386','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (524,107084,'Крачер ЕТ','12003439Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (525,107085,'Конгломерат-39 ЕООД','120552377','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (526,107086,'Мед ЕТ','830141025','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (527,107087,'Георги Янков ЕТ','830164020Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (528,107088,'Тодор Чешитев ЕООД','120013497Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (529,107089,'Капка Плам ЕООД','120506216','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (530,107090,'Мирослава Атанасова ЕТ','830199199','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (531,107091,'Пойнтер ЕТ','830164102Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (532,107092,'Марияна - 92 ЕТ','120049301Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (533,107093,'Дипол - ТТ ЕТ','830129432','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (534,107094,'Здравец ООД','120072727','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (535,107095,'Николай Раев ЕТ','115151817Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (536,107096,'Милена - 90 ЕТ','825109143Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (537,107097,'Нарцис ЕТ','825295464Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (538,107098,'Толис ЕТ','115345918','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (539,107099,'Съби Попов - СП ЕТ','115084603Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (540,107100,'Радея ООД','1153440732Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (541,107101,'Наги ООД','825141172','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (542,107102,'Солар - 96 ЕТ','115027068Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (543,107103,'Ахрида ЕТ','040410879','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (544,107104,'Ленси - Д. Дичев ЕТ','830127901','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (545,107105,'АЙ-96 ЕТ','115103256','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (546,107106,'Смолян Филмс ООД','120053004Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (547,107107,'Божилов ЕООД','115169587Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (548,107108,'Дива-Ваня Григорова ЕТ','825363832','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (549,108080,'Лотото ЕТ','115147135Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (550,108081,'Катрин-90 ЕТ','115102460Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (551,105139,'Ваня Иванова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (552,109587,'Багдасар Досикян ЕТ','825148527Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (553,107109,'1- Експресно парти ЕООД','115283338Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (554,107110,'Стивинекс-97 ЕТ','115809400','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (555,107112,'Дош-Н.Дошков ЕТ','825161745Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (556,109106,'Виктор Йорданов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (557,108082,'Денира ЕТ','115771177','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (558,109588,'Черна перла ЕТ','825107078Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (559,109589,'Инпако ЕТ','115261142Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (560,109801,'Дикс-Л.Сираков ЕТ','115615979','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (561,109802,'Орион-2002 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (562,109803,'Асен Бозуков ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (563,109804,'Кушку ЕТ','115300734','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (564,109805,'Николай Николов ЕТ','115227738Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (565,109806,'Ажин-Ж.Пашова ЕТ','825099350Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (566,109807,'Спаска Попова-2001 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (567,109107,'*Карамфилка Райкина ЕТ','040240633Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (568,108084,'Теди ЕТ','115351198','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (569,108085,'Христо Попов ЕТ','825180514Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (570,106086,'Иван Караивански ЕТ','115098930Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (571,106087,'Спринт-2002 ЕООД','115753250','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (572,105140,'Каприз-Екатерина Граматикова Т','115534185','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (573,107111,'Тракия турс АД','115783343','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (574,107113,'Гълев комерс','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (575,109808,'Райчо и синове ЕТ','030429952Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (576,108086,'Ники-Анка Стефанова ЕТ','115774611','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (577,109590,'Граменов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (578,109809,'Кава 13 ЕТ','115327158Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (579,109810,'Тони-99-Янко Налбантов ЕТ','115599382','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (580,109811,'Боряна-74 ЕТ','829316850Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (581,109812,'Андрея Калинов-Надежда ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (582,109813,'Г.П.А.М.-44-Ат.Георгиев ЕТ','115607224','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (583,105141,'Лазур-97 ЕООД','115123166','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (584,107114,'Бояджика-91 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (585,107115,'Милена-90 ЕТ','825109143Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (586,107116,'Южна лоза ЕТ','020993513Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (587,107117,'Албена-91 ЕТ','115184030Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (588,107118,'Кабониз-77 ЕТ','115003195Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (589,107119,'Рама-4 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (590,107120,'Ник-15 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (591,105142,'Светлина-2003 ЕТ','115797485','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (592,106088,'Пловконтрол-Руси Тодоров ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (593,109814,'Стела ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (594,109815,'Стефи-90 ЕТ','040607360','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (595,109816,'Боди-876-Авков ЕТ','825100607Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (596,109817,'Снежа Михайлова-2001 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (597,106089,'Вик-Миг-3-11 ЕТ','825123292','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (598,106090,'Нихрина-Николаев и сие СД','115191014Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (599,108087,'Джони-Н ЕТ',' 115151443Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (600,109591,'Инопол-Б ЕТ','825383347Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (601,107121,'Лайпциг-91 АД','825256780Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (602,107122,'Дионисиос КД','115540380','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (603,109592,'Ники-95 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (604,109593,'Аиса ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (605,108088,'Жанел ЕТ','115349910','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (606,108089,'Стана Савова ЕТ','825390594','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (607,107123,'Майстор Манол 90 ЕТ','115049591','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (608,109818,'Йордан Йорданов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (609,109819,'Розалия СД','825100728Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (610,109820,'Парапан ЕТ','115306178','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (611,109821,'Мелиса ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (612,109822,'Емилия Добрева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (613,106091,'Ники-68 ЕТ','825296262Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (614,107124,'Г.П.А.М.-44 ЕТ','115607224','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (615,107125,'Боби-Б.Лазаров ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (616,107126,'Светла Тодорова-СТ ЕТ','825080670','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (617,107127,'Сабахатин Моллаюмер ЕТ','825029544','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (618,107128,'Георги Калинов-М ЕТ 2','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (619,109594,'Макбо ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (620,109823,'Дикс-Лазар Сираков ЕТ','115615979','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (621,109595,'Шестица ЕТ','115189262Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (622,106093,'Наркооп РПК','000435554Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (623,109108,'Кей ви ЕТ','115798797','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (624,106094,'Кайнак 6 ЕТ','115231494Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (625,106095,'Анита-98-Р.Славчев ЕТ','115208199Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (626,106096,'Петя Капитанова ЕТ','825301115','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (627,106097,'Василка Петкова-98 ЕТ','1152349624','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (628,109824,'Снежана Михайлова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (629,109825,'Пам- Петя Минчева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (630,108090,'Герико ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (631,107129,'Тони-2000 ЕТ','825054330Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (632,106098,'Наркооп РПК','000435554Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (633,109596,'Янка Янчева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (634,109109,'Марс-7 ЕТ','115510587','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (635,109826,'Костадин Чакмаков ЕТ','115057410','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (636,107130,'Илиев и син-И.Илиев ЕТ','112595375','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (637,109110,'ДимитринаТачева-2000 ЕТ','115512630','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (638,108091,'Судет ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (639,109827,'Хрис-Мери ЕТ','825375749','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (640,109828,'Златка Драгоева ЕТ','115051037Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (641,107131,'Деп ЕТ','115240436Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (642,107132,'Валео ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (643,107133,'Юри Бошикьов ЕТ','115007680','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (644,109829,'Таня Юнакова ЕТ','115319325Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (645,106099,'Наркооп РПК Пв','000435554Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (646,109830,'Ганка Христова ЕТ *','115151856Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (647,109597,'Сергей Цветков ЕТ','115097006Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (648,109598,'Роси-95 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (649,109831,'Местан Рюстемов ЕТ','825099133E','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (650,109832,'Радван Итриз ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (651,105143,'Никола Кръстев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (652,109833,'Дафи ЕТ','825229491Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (653,109834,'Гец-99-Георги Георгиев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (654,107134,'Чунчукови СД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (655,105144,'Румяна Банкова ЕТ','115780443','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (656,106100,'Идеал-13 ЕТ','115753268','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (657,106101,'Робин ЕТ','040880081Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (658,109111,'Братя Гарови ООД','115168542Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (659,109112,'Тони ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (660,108092,'*Дафна ЕТ','040192964','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (661,108093,'Паралел-Андрей Радков-55 ЕТ','115048660Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (662,108094,'Яни ЕТ','115081678Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (663,108095,'Жораси ЕТ','115657800','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (664,107135,'Скарлет-Ан.Топчева ЕТ','108060363Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (665,109601,'Дими ЕТ','115773514','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (666,109602,'Шами-68 ЕТ','040951347Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (667,109603,'Мария-Никола Томов ЕТ','115149392Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (668,109604,'Ил пет ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (669,109605,'Везни-45-П.Биковски ЕТ','115766408','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (670,108096,'Флавия-Андр.Радков','115647806','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (671,108097,'Вида-Ат.Видева ЕТ','115258089','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (672,106102,'Джойс ЕООД','115606866','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (673,106103,'Макри ЕТ','115500980','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (674,108098,'Карамфила Маркова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (675,109113,'Мит-Д.Павлов ЕТ','020987407Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (676,108099,'Одиком ЕТ','040240423Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (677,108100,'ФинТехМаш АД','825393527Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (678,107136,'Игъл Комерс ЕООД','112595756','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (679,105145,'Радко Радев ЕТ','115054663','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (680,109606,'Никола Вранчев ЕТ','825006652Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (681,104001,'Етна-63-Фахри Какасул ЕТ','115185463Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (682,104002,'Мери-М.Гьорева ЕТ','115151361','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (683,104003,'Аня-53 ЕТ','825097125Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (684,104004,'Берк-73-Б.Хаджисалък ЕТ','115553659','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (685,104005,'Светлана Василева-ТТ ЕТ','115534598','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (686,107137,'Чико-ДБ-Д.Белев ЕТ','115788237','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (687,104006,'Асен Ефтимов-69 ЕТ','825139229Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (688,104007,'Н.Атанасова-48 ЕТ','825066368Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (689,104008,'Хейк-92 ЕТ','825009310Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (690,104009,'Найко-Н.Мехмед ЕТ','115593244','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (691,104010,'Мериджи-Мелиха Ахмедова ЕТ','115608080','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (692,104011,'Ангел Ангелов-43 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (693,109607,'Или-Петрова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (694,109608,'Йорданка Менчева ЕТ','115777408','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (695,104012,'Светлана Василева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (696,104013,'Лавеста-69-В.Сталева ЕТ','825101470Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (697,104014,'Било-Васка Каптебилова ЕТ','040170494Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (698,104015,'Йорданка Христозова-Дани ЕТ','115606186','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (699,104016,'Славка Тушева ЕТ','115321326','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (700,106104,'Елпида ЕТ','825397635Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (701,106105,'Марина-К.Стоянова ЕТ','115525396','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (702,104017,'Елена на път ЕТ','115762889','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (703,104018,'Ми-Ра-Ди-М.Даутова ЕТ','115756289','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (704,104019,'Борис Мътаров-78 ЕТ','115263296Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (705,104020,'Белият лебед-Елена Русинова ЕТ','115841782','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (706,104021,'Наска Божинова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (707,104022,'Джев-Наим Кюлджев ЕТ','115690743','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (708,104023,'Ибар-63 ЕТ','115221740Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (709,109115,'Вили-Мария Спасова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (710,109116,'Теви 97 ООД','115153501','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (711,104024,'Спас Бояров ЕТ','825335078','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (712,104025,'Мар.Ангелова-Марчела ЕТ','115628414','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (713,104026,'Мишел-56 ЕТ','040607435Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (714,104027,'Росес ЕТ','825127383','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (715,104028,'Рами-56-91-Рамадан сие СД','030246310Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (716,104029,'Вели Расим ЕТ','115100559Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (717,104030,'Пресли-57 ЕТ','115048653','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (718,104031,'Ивелин Колев ЕТ','128030819Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (719,107138,'Костадин Славин ЕТ','115276315Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (720,105146,'Нист-61 ЕТ','040682893Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (721,108101,'Ники-68 ЕТ','825296262Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (722,105147,'Кати-Румен Димитров ЕТ','115649127','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (723,104032,'Дейзи-Н ЕТ','825102113Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (724,104033,'Мирчев-К.Николов ЕТ','115756823','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (725,104034,'Димитър Щътов ЕТ','825128115Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (726,104035,'Слънце-52 ЕТ','115147943','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (727,109117,'Тонус ЕС ЕООД','83623625Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (728,109118,'Пацо ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (729,106108,'Марж ООД','115163246Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (730,106109,'Марж ООД','115163246Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (731,108102,'Дар-вита ЕТ','040385536Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (732,108103,'Тони-88 ЕТ','115248846Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (733,104036,'Радослава Петева ЕТ','825327684Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (734,104037,'Реман-Т.Петрова-2000 ЕТ','115554008','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (735,104038,'Иглика-71 ЕТ','115085388Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (736,104039,'Кабата ЕТ','825018423Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (737,104040,'Тожур ЕООД','115569510','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (738,104041,'Даная ЕТ','115350452','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (739,104042,'Кьосев-П.Кьосев ЕТ','825104089Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (740,104043,'*Айко-С.Абдурахман ЕТ','115343380','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (741,108104,'Владимир Атанасов ЕТ','115760647','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (742,105148,'ЕГИА-Ив.Иванов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (743,108105,'Капри-М.Димитрова ЕТ','115766753','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (744,109119,'Карина ЕТ','825130803Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (745,104044,'Сами Османов ЕТ','115756296','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (746,104045,'Куманов-95 ЕТ','115082796Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (747,104046,'Дик-Костадин Терзиев ЕТ','115312448Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (748,104047,'Фехим Юмерефенди ЕТ','115351981','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (749,104048,'Явор ЕТ','040438241Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (750,104049,'Сиз ЕТ','825216864Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (751,104050,'Вайс ЕТ','115551238','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (752,104051,'Славка Тушева ЕТ','115321326','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (753,109120,'Сити ЕТ','102671216','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (754,104052,'Вик99-Киреви & СД','040735602','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (755,104053,'Веселина Рангелова ЕТ','040917957Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (756,104054,'Спътник ЕФ','020362268Д1','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (757,104055,'Яна-27 Николина Петрова ЕТ','825129649Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (758,104056,'Н.С.-Стоил Тачев ЕТ','040495783','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (759,104057,'Вики-88 ЕТ','115065019E','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (760,104058,'Деси-ЕМ ЕТ','115759043','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (761,104059,'Глобстар-6 СД','825120136Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (762,104060,'Сами Османов ЕТ','115756296','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (763,104061,'Н.Филипов-90 ЕТ','115093122','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (764,104062,'Тамара Табакова ЕТ','115045988Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (765,104063,'А.Атанасова-Катина ЕТ','115322905Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (766,107139,'Богати-2000 2 ЕТ','115254703Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (767,104064,'Доба ЕТ','115212775Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (768,104065,'Еси ЕТ','825097164Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (769,104066,'Миро-З.Вършилов ЕТ','115803600','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (770,104067,'Вела Расим ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (771,104068,'Здравец ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (772,109610,'Комерсиал-М.Кирова ЕТ','825170819Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (773,104069,'Виктория ЕТ','825134940Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (774,104070,'Рамчо-Р.Мюмюн ЕТ','115141381Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (775,104071,'Антонин Цветков ЕТ','825089210','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (776,104072,'Стоилов ЕТ','020486702Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (777,104073,'Ив-комерс 3 СД','825087298Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (778,104074,'К.Георгиев-94 ЕТ','825303479','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (779,104075,'Макро ЕТ','040148512Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (780,104076,'Верка Чонова ЕТ','115731414','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (781,104077,'РПК Съзнание кл.93','000435892Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (782,104078,'Крум Митов ЕТ','825026701Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (783,104079,'Роси-Росица Шопова ЕТ','115056874Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (784,104080,'Юсеин Таиров-Юсаров ЕТ','825106485','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (785,104081,'Мутлу Терзи-Комерс ЕТ','115794158','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (786,107140,'Паша-З.Стоянова ЕТ','115799828','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (787,107141,'Екатерина Минчева ЕТ','825386311','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (788,103501,'Драго-Васил Цанков ЕТ','115561823','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (789,103502,'Микадо ЕТ','115113478Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (790,103503,'Атанас Ткаченко ЕТ','115173849Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (791,103504,'Наги ООД','825141172','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (792,104082,'Интус ЕТ','825107288Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (793,103505,'Калина-ТИД ЕТ','115224845Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (794,103506,'Кирил Георгиев ЕТ','825065476Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (795,103507,'Анжела ЕТ','115143350Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (796,103508,'Ролистен ЕТ','116239587Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (797,103509,'Иванка Димитрова ЕТ','115171524','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (798,109611,'Итали ЕООД','115652988','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (799,108106,'Владимир Симидов ЕТ','115002111','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (800,103510,'Ударник ЕТ','115067333Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (801,103511,'Боги ЕТ','825181406Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (802,103512,'Сити 04 ЕООД','115839322','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (803,103513,'*Маги-М.Бундова ЕТ','115738412','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (804,104083,'Звезделина ООД','115320936','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (805,104084,'Михаела ЕТ','115176941Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (806,104085,'РПК Първенец','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (807,107142,'Део-1 ЕООД','825083104Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (808,109612,'Асен Витанов ЕТ','115601456','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (809,105149,'Табако ЕТ','825372404Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (810,105150,'Примус ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (811,103514,'Петко Пеков ЕТ','040406674Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (812,103515,'Жени-Евгения Николова ЕТ','115751865','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (813,103516,'Надежда ЕТ','825152714Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (814,103517,'Атанас Сандев ЕТ','825177393Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (815,103518,'Игнат Геров ЕТ','825061823Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (816,103519,'Йонка Дошкова-55 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (817,103520,'Струмка-Р.Ганчев ЕТ','040994117Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (818,103521,'Иво Найденов-Нина 97 ЕТ','115175348Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (819,103522,'Златко Герчев ЕТ','825335815Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (820,103523,'Латинка-П.Ганев ЕТ','825142428','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (821,103524,'Сид-60-С.Илиев ЕТ','030126752','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (822,103525,'Дружба ПК','000435928Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (823,103526,'Ники Цеца Станчева ЕТ','825345670Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (824,103527,'Краси-55 ЕТ','825162295','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (825,103528,'Нагласа-Ж.Хънтова ЕТ','825092904Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (826,103529,'Ривлина ЕТ','115102977Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (827,103530,'Антон Бачков ЕТ','830133995Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (828,103531,'Имперкомер ЕТ','825375654Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (829,103536,'Даниела Билева ЕТ','830160805Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (830,103537,'Дъмпинг-АБ ЕТ','825214913Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (831,103538,'Гунди-М ЕТ','115149385Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (832,103539,'Макбизнес Форум ООД','115671892','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (833,103540,'Детелина ЕТ','115105816Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (834,103541,'Тера-иа ЕТ','825106026Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (835,103542,'Чочо-Стойка Манева ЕТ','115636496','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (836,103543,'*Даниел Йотов ЕТ','115149912Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (837,103544,'Малина 1 ЕТ','115320231','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (838,104086,'Ангел Молев-46 ЕТ','115240664','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (839,109121,'Весела Начева ЕТ','115797300','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (840,107143,'Лоза комерсиал ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (841,103545,'Запрянка Динчева ЕТ','115343155Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (842,103546,'Марчев ЕТ','115763376','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (843,103547,'Нели ЕТ','115123159Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (844,103548,'В.Аршинкова ЕТ','115093869Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (845,103549,'Найск ЕТ','115613191','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (846,108107,'Димо Димов-Трейд ЕТ','115818082','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (847,104087,'Ангелина Бикова ЕТ','040079564','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (848,104088,'Боряна Гривова ЕТ','115258160Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (849,104089,'Читта-Борислав Читаков ЕТ','825113280','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (850,103550,'Стойлов-К ЕТ','115543004','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (851,103551,'Краси-2000 ЕТ','115531730','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (852,103552,'Ат.Попов-майзах ЕТ','825166557','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (853,103553,'Карп-Пив ЕТ','825129418Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (854,103554,'Лило Вълков ЕТ','040747782','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (855,103555,'С.Бакалска ЕТ','115820628','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (856,103556,'Неси-ДБ ЕТ','115104835','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (857,103557,'Евалина Въжарова ЕТ','115025528','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (858,103558,'Дани-Слава ЕТ','115309808Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (859,103559,'Соларис-Стоян Вълков ЕТ','825118361','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (860,103560,'Блясък-Васил Цонев ЕТ','825383308Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (861,103561,'Адлер ЕТ','115065827Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (862,103562,'Тухлев ЕООД','115754516','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (863,106112,'Стандарт ЕТ','115244584','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (864,109613,'Сип-85 ЕТ','120522569','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (865,103563,'Юлия ЕТ','825333508','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (866,103564,'Жана Ненова ЕТ','115246418Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (867,103565,'Стоил Копринков ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (868,103566,'Вастра-В.Георгиева ЕТ','115769532','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (869,103567,'Меги-95-М.Моллова ЕТ','115069522Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (870,103568,'Р.Данаилова ЕТ','155257514Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (871,103569,'*Власи Делев ЕТ','115222821Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (872,103570,'Велин Узунов ЕТ','825358073Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (873,103571,'Тони-22 ЕТ','115530144','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (874,103572,'Авто-дом ЕТ','040145998Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (875,103573,'Здравец-Атанас Косев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (876,106113,'Стоян Михайлов ЕТ','825092719','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (877,105050,'Жилов и синове ЕООД','115796579','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (878,103574,'Теди ЕТ','115751541','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (879,103575,'Алпекс ЕТ','825351997','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (880,103576,'Красимир Пудев ЕТ','115132311Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (881,104090,'Парс-Ч.Станоева ЕТ','825330729Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (882,109614,'Мисота ООД','825310064Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (883,108042,'Георги Понев ЕТ','115175169','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (884,108014,'Н.Нейчев-Л.Нейчева ЕТ','115829762','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (885,109615,'Георги Залъмов ЕТ','115582365','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (886,108013,'Сави-Ат.Стефанов ЕТ','825382238','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (887,103001,'Средна гора-1 ЕТ','115084222','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (888,103002,'Комерс-Сл.Славов ЕТ','115298767Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (889,103003,'Ивалор-П.Драгоева ЕТ','115784961','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (890,103004,'Таймер ЕТ','115188897Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (891,104091,'Юмюгюл Халил Мерт ЕТ','115555578','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (892,103577,'Вера-Верка Бонева ЕТ','115259650','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (893,103578,'Хурасан СД','115105870Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (894,103579,'Костадин Бакалски ЕТ','115022787','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (895,108051,'Кирил Рунтев ЕТ','030124630Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (896,103580,'Олимпия 919 ЕТ','825096219','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (897,103581,'Валдис ЕТ','115570612','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (898,103582,'Янина-Жорж ЕТ','825122621Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (899,103583,'Даги ЕТ','115190745Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (900,103005,'Струма 92 ЕТ','115318216Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (901,103006,'Дета-Милко Шарков ЕТ','115797670','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (902,104092,'Божидар ЕТ','825066927Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (903,104093,'Нели ЕТ','040821567Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (904,104094,'Перун ЕТ','825234339Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (905,104095,'Диана-91 А.Панайотов','115177178Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (906,104096,'Ванеса-Любка Тянчева ЕТ','115518971','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (907,104097,'Ан 32-Атанас Начев ЕТ','115748196','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (908,108108,'*Микрон СД','115070614','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (909,103584,'Варм-Живко Атанасов ЕТ','825229502Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (910,103585,'Веселина Даянова ЕТ','825283806Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (911,103586,'Живко Моллов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (912,103587,'Г.Г.И.-Г.Игнатов ЕТ','115061907Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (913,109616,'Георги Тодоров ЕТ','831726010Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (914,103588,'Славянка ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (915,103589,'Владимир Ламбов и син ЕТ','825093874','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (916,103590,'Николина Василева ЕТ','115152050Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (917,106114,'Кръстьо Стефанов-1 ЕТ','115673548','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (918,105072,'Стеф-И-Чорлев с-ие СД','115635451','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (919,108043,'Иво-Иван Пасарев ЕТ','112587282','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (920,108053,'Акропола ЕТ','115583378','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (921,103591,'Пламен Богданов ЕТ','115064102Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (922,103592,'Мария Петрова 2001 ЕТ','115614578','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (923,103593,'Ана Казакова ЕТ','1150643905','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (924,106115,'Георги Кръстев ЕТ','825271289Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (925,106116,'Боев-747 ЕТ','825075050Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (926,105064,'Иберия Т.К. ЕТ','112074365Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (927,108083,'Хърс Милърс ЕТ','115238133Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (928,108059,'Цветелина ЕТ','825382284','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (929,108109,'Фелиа-М ЕТ','115783749','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (930,103594,'Напредък ПК 1','115030858Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (931,103595,'Жоана-ПВС-Г.Бакалски ЕТ','825070830Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (932,103596,'Тони 81 ЕТ','115820425','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (933,103597,'Николай Рангелов ЕТ','825142773Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (934,104099,'Нике ЕТ','825120922Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (935,109122,'Нури-1 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (936,103603,'Иви-Стефанка Атанасова ЕТ','115507754','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (937,103602,'Ники МН-2001 ЕТ','115644404','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (938,103601,'Средна гора ЕТ','115084222','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (939,103600,'Васил Кирков 2001 ЕТ','115639389','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (940,103599,'Бабаси ЕТ','825257804Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (941,103598,'Пламена ЕТ','115676109','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (942,103604,'Ричи ЕТ','115301156Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (943,103605,'Минкови-48 СД','825009367Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (944,103606,'Пет Бора ЕТ','825269518','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (945,103607,'Зако-55 ЕТ','825189787Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (946,103608,'Нико-ла-39-Н.Георгиев ЕТ','115344780Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (947,103609,'Мария-98-М.Митева ЕТ','115293453Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (948,103610,'Генка Танчева ЕТ','115125021','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (949,104100,'Маранта ЕТ','115255090Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (950,104101,'Иваза-90 Д.Тинков ЕТ','825107831Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (951,106117,'Александър Попов 95  ЕТ','825387349Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (952,109617,'Ула-Ив.Костов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (953,105065,'Евиана-3-Топалова ЕТ','115546091','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (954,108110,'Белена-БИГ ЕТ','115004751Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (955,103611,'Деница-С ЕТ','115122502Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (956,103008,'Антоанета Иванова 95 ЕТ','825388013Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (957,103009,'Кабаиванов ЕТ','115083145Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (958,103010,'Шами 60-Шаламанов ЕТ','040051347Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (959,103011,'Георги Бонев ЕТ','115347837Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (960,103012,'Монимекс ЕТ','115802142','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (961,103612,'Николай Събев ЕТ','11557170Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (962,103613,'Роза-Димитър Порязов ЕТ','115067408Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (963,103614,'Христо Стоянов-94 ЕТ','115574190','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (964,103615,'Георги Меджанов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (965,103616,'Любино ЕТ','115241517Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (966,103617,'Тодор Милушев ЕТ','1150535360Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (967,102500,'Иван Батинков ЕТ','8301003893Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (968,102501,'Мичеслава-Д.Славов ЕТ','830143460','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (969,102502,'Георги Биков ЕТ','120069019','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (970,102503,'Ники-Никола Кисьов ЕТ','120501062','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,1),
 (971,102504,'Илия Шумков ЕТ','120012616','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (972,102505,'Ваня-74 ЕТ','830171246Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (973,105086,'Екатерина Минчева ЕТ','825386311','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (974,108111,'Марица- Андрей Радков','115647806','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (975,102506,'Фалко ЕТ','830105221Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (976,102507,'Роял и сие Дружество','115833725','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (977,102508,'Янис-М ЕТ','120504998','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (978,102509,'Рима 1100 ЕТ','830128896Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (979,102510,'Сава Дамянов ЕТ','830128394','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (980,109123,'Питър къмпани ЕТ','115073941Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (981,103013,'ПК Наркооп','0004355515','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (982,103014,'Апогей-90 ЕТ','833018394Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (983,103015,'Белен ЕТ','825282654Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (984,103016,'Агапси-Минчо Стойков ЕТ','115176489Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (985,103017,'Тодор Дернев ЕТ','825236535Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (986,109618,'Стандарт-Г ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (987,108112,'Теодора-Т.Цекова ЕТ','115796807','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (988,105127,'Ариана ЕТ','115182969Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (989,105126,'Ван-мар-Иван Иван ЕТ','115599396','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (990,105119,'Вемаг ЕТ','115344232','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (991,106118,'Странджата ЕТ','020348676Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (992,103618,'Напредък ПК център','115030858Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (993,103619,'Валентин Генчев ЕТ','115603521','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (994,103620,'Ирондел 92 ЕТ','115111724Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (995,103621,'Вера-Верка Бонева ЕТ','115259650','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (996,108113,'Георги Тонов ЕТ','115174143Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (997,105087,'Петър Владиков ЕТ','825020890Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (998,102511,'Престиж Солища 1 ООД','040668331Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (999,102512,'Бизет-Бисер Русков ЕТ','830145881Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1000,102513,'Родопи-96 ЕООД','120008183Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1001,102514,'Стрелец-83 ЕТ','040294531Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1002,102515,'Николай Керкелов ЕТ','120059283Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1003,102516,'Емил Шопов ЕТ','120057771Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1004,102517,'Елмарару ЕТ','830152616Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1005,102518,'РВК Орфей','000602409Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1006,102519,'РВК Орфей','000602409Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1007,102520,'РВК Орфей','000602409Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1008,102521,'РВК Орфей','000602409Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1009,102522,'Сиана ЕООД','120551407','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1010,102523,'Крунито ЕТ','120505349','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1011,102524,'Пекстон-Р.Гуглева ЕТ','120045146Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1012,102525,'Нега-Недялка Николова ЕТ','120560484','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1013,107144,'Емпека ЕООД','825346320Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1014,109124,'Владини Комерс ООД','115516689','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1015,103622,'Здравка Маринова ЕТ','115095247Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1016,103623,'В.Аршинкова ЕТ','115093869Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1017,103624,'Запряна Геренска ЕТ','115661752','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1018,103625,'Арина-Ст.Салапатийска ЕТ','115658966','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1019,103626,'П.К.Надежда','825003268','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1020,103627,'Точност ЕТ','115141221Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1021,103628,'Таня Болна ЕТ','115326330Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1022,103629,'Ра-ма-96-Христина Арабаджиева ЕТ','115884456','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1023,103630,'Росица-М.Жекова ЕТ','126033282Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1024,103631,'Йозо Чалъков ЙПР  ЕТ','115345836Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1025,103632,'Темподем-Ивайло Димитров ЕТ','115772101','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1026,108114,'Тодор Мюфтиев ЕТ','115638216','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1027,103018,'Сандра 90 ЕТ','040124616Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1028,103019,'Янавеси-Хайда Бикова ЕТ','115758151','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1029,103020,'Пилев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1030,103021,'Грама-Тодор Калеев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1031,103022,'Такси-Иван Пулев ЕТ','020988886','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1032,103023,'Ники-Радослав Титов ЕТ','115291395','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1033,103024,'Янко Коджабашев-92','825162530','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1034,103025,'Лекино-Иван Евтимов ЕТ','115085630','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1035,103026,'Теди-С.Казиска ЕТ','115761731','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1036,103027,'Богдана Зайкова ЕТ','115546682','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1037,103028,'Монтана ЕТ','825182860Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1038,103029,'Цветан Драгневски ЕТ','115204262Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1039,103030,'Надежда ЕТ','825152714Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1040,103031,'Иван Медникаров ЕТ','115507658','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1041,103032,'Д.Ласкова ЕТ','115244196Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1042,103033,'Трафик-Димитър Янев ЕТ','825295826Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1043,103034,'Б 2004 ЕООД','115585308','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1044,104102,'Фиги-Н.Георгиев ЕТ','825145591','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1045,104103,'Зравка Видева Аргирова ЕТ','855211059Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1046,104104,'Коко ЕТ','825310281Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1047,104105,'Цвети-Цветана Ценова ЕТ','115801994','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1048,103633,'Палмите ЕТ','115122979Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1049,103634,'Банков ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1050,103635,'Лалка-Лале ЕТ','115074830Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1051,106022,'Микрон СД','115070614','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1052,103636,'Мини мер 90 ЕТ','825006660Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1053,103035,'ПК Стряма','000447663Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1054,103036,'Росица-Росица Костова ЕТ','825148623Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1055,103037,'Невена Димова ЕТ','825228659Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1056,103038,'Юсеин Мустафов-шоле','825261496','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1057,103039,'И.Рабаджийски-Деси ЕТ','115164533Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1058,103040,'Анка Бурова ЕТ','825070684','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1059,103041,'Стефано ЕТ','115336890Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1060,103042,'*Иванка Патазова ЕТ','825038753Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1061,103043,'*Петър Гълев ЕТ','115790569','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1062,103044,'Йомикс ЕТ','115311257','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1063,103045,'Пламък Раковски ООД','115163545','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1064,102526,'Лили Дариткова ЕТ','830164198Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1065,102527,'Иван Тошев ЕТ','120065857Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1066,102528,'Комерсиал.ЕТ','120021152Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1067,102529,'Елит-Руска Булджева ЕТ','120520753','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1068,102530,'Сонти-Б.Андреев ЕТ','830114099Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1069,102531,'Борислава-7778 ЕТ','120005714Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1070,102532,'Здравко Кехайов-Ники 99 ЕТ','120071365Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1071,102533,'Василиус-91-В.Чернев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1072,102534,'Веселин Еленски ЕТ','120062081Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1073,102535,'Трофи-Емилия Сиракова ЕТ','120539134','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1074,102536,'Надка Карамитева ЕТ','120060714Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1075,102537,'Филип Ангелов ЕТ','120027059Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1076,102538,'Ирияна-лукс ЕТ','020368166','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1077,102539,'*Маргарита Дандарова ЕТ','120001623Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1078,102540,'Зенит ООД','830194394Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1079,102541,'Стрелец-83 ЕТ 2','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1080,106023,'Артема ЕТ','115335233','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1081,103637,'Лилия Цветанова ЕТ','115038417','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1082,103638,'Герени-Георги Петков ЕТ','115612730','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1083,103639,'Сънивес ЕТ','115508055','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1084,103640,'Славчо Славчев ЕТ','040599522Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1085,103641,'Ивета-Т.Бундов ЕТ','115333047','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1086,103642,'Свети Георги-3 ЕТ','825067437Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1087,103643,'Красимира Маркова ЕТ','115825493','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1088,105091,'Коел-5 ЕТ','115252951Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1089,104106,'Емил Асенов ЕТ','825104388Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1090,103046,'Зора-Заряна Айвазова ЕТ','115256031Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1091,103047,'Диги ЕТ','825120531Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1092,103048,'Милко Станчев-58 ЕТ','115326985Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1093,103049,'Моника-Б.Сарийска ЕТ','115222698Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1094,103051,'Таня-Веско Симеонов ЕТ','825387609Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1095,103052,'Вики-Йосиф Чанов ЕТ','115175864','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1096,103053,'Йоанна-Тереза Кабова ЕТ','115766269','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1097,103054,'Мик 98 ЕООД','115276967Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1098,103055,'Хамба-Г.Хамбарлийски ЕТ','115558720','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1099,103056,'Ким ЕТ','115164370Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1100,103050,'ПК Наркооп','000435515','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1101,103644,'Миг ЕТ','825356364','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1102,103645,'Минимаркет ЕТ','115057556Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1103,109053,'Дженит ЕООД','115173596Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1104,107145,'Делта Карт ООД','115676940','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1105,109619,'Лилия ЕТ','115187286Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1106,109125,'Травис ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1107,103057,'Румен Стоянов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1108,106024,'Тодора Минева ЕТ','115063203Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1109,107023,'Жекаве-95-Ж.Софтова ЕТ','830192742Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1110,103646,'Мария Димитрова ЕТ','115756556','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1111,103647,'Кид ЕТ','040154180Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1112,103648,'М.Нейкова-С.Кукунова ЕТ','115120095Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1113,108115,'Анджи-А.Кръстева ЕТ','115546764','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1114,104107,'Велди ООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1115,104108,'Йорданка Христова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1116,102542,'Цонка Сивенова ЕТ','120548172','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1117,102543,'Анастасия-Петър Димитров ЕТ','120509034','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1118,102544,'Димо-89 Иван Кузмов ЕТ','120500948','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1119,102545,'Стаси ЕТ','120023114Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1120,102546,'Елди-55 ЕТ','120005880Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1121,102547,'СветлинаС.Даскалова ЕТ','120534030','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1122,109126,'Алфа и омега ЕТ','825301282','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1123,109127,'Фанта ЕТ','825174290Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1124,109128,'Милен Хадживълчев ЕТ','115647222','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1125,103649,'Петмар-Сашо Бръсков ЕТ','115636304','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1126,104109,'Павел Станоев ЕТ','115670573','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1127,106119,'Стефан Григоров ЕТ','825325590Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1128,105108,'Беарс-99 ЕТ','115340458','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1129,103058,'Данивест ЕТ','115708547','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1130,103059,'Христо Скочев ЕТ','040448043Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1131,103060,'Колхида 97-Ик ЕТ','115137162Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1132,103061,'Бр.Дакови-М.Даков ЕТ','115274563','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1133,103062,'Даков-Петър Генчев ЕТ','115511770Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1134,103063,'Теодора ЕТ','115804912','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1135,103064,'Боряна ЕТ','115619237','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1136,103065,'Нов Ден СД','825039467Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1137,103066,'Иван Сърбински ЕТ','115082090Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1138,103067,'Вегета ЕТ','825146160Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1139,103068,'Нели Гинова ЕТ','825187028Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1140,103069,'Тасо-К ЕТ','115142608','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1141,103070,'Алекс-М.Палийска ЕТ','825199895Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1142,103071,'Еллас-Димитър Янев ЕТ','825260330','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1143,103650,'Ненко Ботев ЕТ','040168810','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1144,103651,'АБС-20 ЕТ','115615523','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1145,103652,'Мариана Енчева ЕТ','115011263Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1146,103653,'Мърси Върбина ЕТ','115757156','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1147,103654,'Богдана Зайкова ЕТ','115546682','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1148,103655,'Аризона-96 ЕТ','115033313','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1149,103656,'С.Иванова 2000 ЕТ','115585048','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1150,103657,'Иван Гайдаджийски-2002 ЕТ','115756435','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1151,103658,'Маркони ЕТ','825064328Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1152,103659,'Триумф ООД','127013860','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1153,102548,'Юпитер 77-В.Прахов Г.ПраховаЕТ','120578646','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1154,102549,'Кеми-Бисер Еленски ЕТ','120544779','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1155,102550,'Бизнес 97 ЕООД','120022090Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1156,102551,'Мирослав Кочмаров-Роса-МБ ЕТ','830192074Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1157,102552,'Астор Георгиеви-45 ЕТ','115317018','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1158,102553,'След ЕООД','115099053Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1159,102554,'Маги ЕТ','825155023Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1160,102555,'Атанас Благоев ЕТ','825177233Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1161,102556,'Агромакс-1991 СД','825091617Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1162,107146,'Яни-Райна Оризова ЕТ','115805576','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1163,107147,'Хелиос-Борис Стоянов ЕТ','115305763','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1164,107148,'Димо Михов ЕТ','115580574','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1165,103660,'Таня Димитрова ЕТ','115281958','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1166,103073,'Ади-Н.Стоицова ЕТ','115746633','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1167,108116,'Светлина ЕТ','825270520Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1168,107501,'Вили-Васил Ангелов ЕТ к','115647838','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1169,107502,'Цветанка Божанова ЕТ к','115555119','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1170,107503,'Лазар-Зл.Ботушарова ЕТ к','812222408Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1171,107504,'Лазурит-97 ЕООД к','115163748Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1172,107505,'Видо ООД к','115666443','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1173,107506,'Ангро-МВ ЕТ к','825258219','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1174,107507,'Дубъл Х ЕТ к','825035957Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1175,107508,'Г.Буков ЕТ к','115505657Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1176,107509,'Иван Бързев ЕТ к','115054510Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1177,107510,'Атанас Чолев ЕТ к','825327537Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1178,107511,'Бодрос-43-М.Ангелова ЕТ','833028011','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1179,107512,'Николай Сакев-55 ЕТ к','1223162236','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1180,107513,'П.Златев-Марица Ив.Пенева ЕТ к','123500161','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1181,107514,'Златка Гърчева ЕТ к','115795858','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1182,107515,'Ташко Сяров ЕТ к','825199386Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1183,107516,'Христо Бардуков ЕТ к','825009068Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1184,106120,'Софи-С.Ковачева ЕТ','115043898Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1185,109129,'Рио-Стоян Манчев ЕТ','825293394Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1186,109620,'Яни-Райна Оризова ЕТ','115805576','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1187,103074,'Фладер ЕТ','115527803','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1188,103075,'Зора-Заряна Нивазова ЕТ','115256031Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1189,103076,'Ташонка Желязкова ЕТ','825300216','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1190,103077,'Иван Рабаджийски ЕТ','115164533','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1191,102557,'РВК Орфей','000602409Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1192,103661,'Жана-Божана Кънева ЕТ','115348782','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1193,103662,'Иван Бундов ЕТ','115173614','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1194,103663,'Интермонт ЕТ','020484587Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1195,103664,'Ваташев ЕТ','115111280','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1196,109130,'Македонка ЕТ','115739862','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1197,102558,'РВК Орфей','000602409Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1198,107517,'Мултикомп ЕООД к','115599610','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1199,107518,'Ванита АЛ ЕТ к','825195480','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1200,107519,'Искра-13 СД к','115074064Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1201,107520,'Софка Байлиева ЕТ к','825143359Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1202,107521,'Комерс-Н.Шишков ЕТ к','040689400Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1203,107522,'Мария-Десислава ЕТ к','115804798','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1204,107523,'Вени-56-В.Денков ЕТ к','040949874','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1205,107524,'Нели-М.Чилингирова ЕТ к','825105796Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1206,107525,'Пенчо Христозов-31 ЕТ к','115135663Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1207,107526,'Радост-90 ЕТ к','825192616Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1208,107527,'Димпа-Д.Павлов ЕТ к','825123538Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1209,107528,'Оптимум-А.Т. ЕТ к','040088734Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1210,107529,'Бойко Кирев ЕТ к','825215140Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1211,107530,'Игнат Щерев ЕТ к','115340230Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1212,107531,'Станислава ЕТ к','115068691','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1213,107532,'Литъл Джордж ЕТ к','825041023','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1214,107534,'Дас ЕТ к','825389040Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1215,107535,'Дръндарови ООД м','115102340Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1216,107536,'Натали-98 ЕТ к','1152391474Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1217,107537,'Емили-Емилия Любомирова ЕТ','115769870','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1218,107538,'Сас-99 ООД к','115297544','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1219,107539,'Добрев ДК-Димитър Добрев ЕТ к','040598541Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1220,109131,'Петър Иванов-2004 ЕТ','115803358','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1221,106121,'Авига ЕТ','115064807Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1222,107540,'Паната 29 ЕТ к','115112839','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1223,107541,'Мефисто-П.Балтов ЕТ к','040371952','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1224,107542,'Рангел Петров-97 ЕТ к','115101999Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1225,107543,'Диана Добрева ЕТ к','115354543','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1226,107544,'*Ташонка Желязкова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1227,103078,'Шанс-Т.Пепелянкова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1228,103079,'Караджови ЕТ','115817753','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1229,103080,'Везни ЕТ','115320669','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1230,103081,'Диана Камекова ЕТ','115652591','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1231,103082,'Елена-Елена Ночева ЕТ','115783172','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1232,103665,'Йордан Гешев ЕТ','040074948Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1233,103666,'Айко ЕТ','825260775Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1234,103083,'Мартин Николов-2 ЕТ','115063541Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1235,103084,'*Теди е живот ЕТ','115061782','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1236,102559,'*Мануела Гьотнер-М.Радева ЕТ','120049785Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1237,102560,'РВК Орфей','000602409Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1238,109061,'Малвина ЕТ','115336285','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1239,103085,'Флайшпродукте ООД','115033046Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1240,103086,'Тото ЕТ','115802605','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1241,103087,'Р.Гешева-Роси ЕТ','115181899','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1242,107545,'Аладин и син-Ал.Чалъмов ЕТ к','825253318Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1243,107546,'Вики-Васил Димитров ЕТ к','115107831Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1244,107547,'Гени Чомуклиев ЕТ к','825333643Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1245,107548,'Митов-17 ЕТ к','115278608','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1246,107549,'Лекино-Иван Евтимов ЕТ к','115085630','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1247,107550,'Боби-Ангел Ботев ЕТ к','115224425','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1248,107551,'Ники 79-Христо Перов ЕТ к','115803835','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1249,103667,'Невен-ППН 39 ЕТ','825120008Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1250,103088,'Изненада-Христо Николов ЕТ','115566037','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1251,103089,'Илявор-Симеон Божков ЕТ','115761076','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1252,104110,'Радосвета Здравкова ЕТ','115135738','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1253,102561,'Васи ЕТ','825393170Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1254,102562,'Г.Драгинова-Гердан 69 ЕТ','115763586','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1255,102563,'Лана СД','115026895Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1256,102564,'Петко Стоянов-ПАС ЕТ','115066516Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1257,102565,'Жес-Мина ЕТ','040008161','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1258,102566,'Баджи ЕТ','040838506Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1259,102567,'Росица ЕТ','825173574Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1260,109038,'Инкьов-2 ЕТ','825219839E','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1261,109132,'Стефани-М.Стефанов ЕТ','115306826','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1262,109133,'Пенчо Желев ЕТ','825183581Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1263,105112,'Стойко Стойков ЕТ','115233310Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1264,105128,'Иванка Ленгерова ЕТ','115774675','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1265,107552,'Тодор Митев ЕТ','115081062Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1266,107553,'Бай Пит Ол ЕТ к','825169585','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1267,103090,'Лиляна Йовчева ЕТ','115793106','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1268,103091,'Мони-Н.Дюлгерски ЕТ','115776886','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1269,103668,'Боги-Тома Булев ЕТ','115761724','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1270,103669,'Пълдън ЕТ','115253416Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1271,103670,'Алпико-Ал.Коджабашев ЕТ','115790971','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1272,103671,'Алекс-С.Василева ЕТ','115579084','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1273,102568,'Универсал-Славчо Хаджиев ЕТ','830114265Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1274,102569,'П.Дамянов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1275,102570,'Рупчос-В-Р.Марковска  ЕТ','120558191','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1276,103092,'СМ-51 ЕТ','040804347Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1277,107149,'Георги Серков-2 ЕТ','115035855Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1278,103093,'Слави-Ст.Димова ЕТ','115285887','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1279,103094,'Ваге ЕТ','020988548Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1280,106122,'Лалев Комерс ЕТ','825057013Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1281,105151,'Риа-М.Христова ЕТ','825143601Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1282,105129,'Чигара ЕТ','115511699','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1283,108117,'Люси-Елена Петкова ЕТ','825267225Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1284,102571,'Бисер Димов ЕТ','830156041','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1285,106123,'Дани-Й.Ковачева ЕТ','115752650','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1286,107554,'Карловска коприна АД к','825393455','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1287,107150,'Марияна Тончева ЕТ','115232144Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1288,103672,'Болен ЕТ','825147222Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1289,107555,'Шестограми ЕТ к','825399764Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1290,107556,'Георги Видев-М ЕТ к','115292892Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1291,107557,'Елваве ЕТ к','825198245','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1292,104111,'Обич ЕТ','825151092','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1293,103673,'Теси-Ст.Дългърски ЕТ','115801542','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1294,103095,'Трафик ЕТ','115184041','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1295,103096,'*Атанас Ласкарев ЕТ','825118480','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1296,103097,'ГПК Наркооп','004435593Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1297,103098,'Славов НТ ЕТ','115283701Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1298,103099,'Бреза ЕТ','115082981','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1299,103100,'Комир-Кольо Паргарев','115505949','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1300,102572,'Георги Радев 97 ЕТ','115135982Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1301,102573,'Мари-2002-М.Атанасова ЕТ','115750105','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1302,103101,'Импулс Инвест ЕООД','115648071','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1303,107151,'Лора-Тодор Толев ЕТ','115339726','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1304,105152,'Нанси ЕТ','825091161Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1305,102574,'Благоев-Бис сие СД','825208853','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1306,102575,'Атанас Пеев ЕТ','115764834','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1307,102576,'Д.Чилингиров-67 ЕТ','115833180','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1308,102577,'Ангелина Солакова ЕТ','825345439Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1309,102578,'Анто-МХ Антон Ленев ЕТ','825124800Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1310,107558,'Таня СД к','020362964Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1311,107559,'Б 2004 ЕООД к','115585308','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1312,107560,'Пилев ДГ-90 ЕТ к','115259675Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1313,107561,'Павел Пондев ЕТ к','825146960Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1314,107562,'Грама-Тодор Калеев ЕТ к','115261295Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1315,107152,'Тракия Турс-2 АД','115783343','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1316,106053,'Веполи ЕТ','115180733Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1317,109134,'Власилев и сие СД','115159073Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1318,109621,'Триумвират Импекс ЕООД','115135268','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1319,107563,'Илия Костов 98 и син ЕООД','160001093','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1320,103102,'Боби-Трейд ЕТ','1157587771','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1321,103103,'Веге-Велко Гешев ЕТ','115347812','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1322,103104,'Дипи-Игнат Папазов ЕТ','115649305','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1323,103105,'Атлас-91 ЕТ','040005222Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1324,103106,'Делич-Д.Иванова ЕТ','115628765','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1325,103674,'Наркооп РПК','000435554Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1326,102579,'Йордан Йорданов-2000 ЕТ','120510104','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1327,109135,'Пас-Маркет-Петко Сейменски ЕТ','115026984Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1328,109136,'Сейми-Найден Сейменски ЕТ','825058250','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1329,109622,'Божик Стойчев ЕТ','115799536','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1330,107153,'Деси-Атанас Георгиев ЕТ','115654811','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1331,103107,'Жана М-Б.Гущерова ЕТ','115651733','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1332,107564,'Ореха ЕТ','825133906','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1333,102580,'Петков-Васил Янков ЕТ','8250105975','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1334,102581,'Търгов комерс-Янко Николов ЕТ','115330407','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1335,102582,'Даниела-85 ЕТ','825128962Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1336,102583,'Димбор ЕТ','825035515','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1337,102584,'Немида-М.Найденова ЕТ','115550264','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1338,102585,'Рангел Чолев ЕТ','115296474Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1339,102586,'Геолена ЕТ','825154754Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1340,102587,'Анчо ЕТ','825170675Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1341,102588,'Ира-Д ЕТ','825103083','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1342,102589,'Полет-96 Д.Христозов ЕТ','115568141','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1343,103108,'Прато-Г.Протопопов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1344,103109,'Дани ЕТ','115245370Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1345,103110,'Флорида ЕТ','825082385Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1346,108118,'Димитър Иванов ЕТ','115338724','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1347,103111,'Латеви-3-П.Латев ЕТ','115227389Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1348,103112,'Лимат-Л.Загорчев ЕТ','115248458','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1349,103113,'Катериал ЕТ','115808088','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1350,103114,'Славена ЕТ','115130470Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1351,103115,'Вевас-Венка Филева ЕТ','115831852','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1352,103116,'Катерина ЕТ','115537690','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1353,102590,'Осман Мисирков ЕТ','120028718','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1354,102591,'Асинет ЕООД','120539675','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1355,102592,'Димитър Красногорски ЕТ','120043992Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1356,102593,'Денис ЕТ','120009029Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1357,108119,'Пондекит ЕТ','040761508','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1358,105153,'Бамби ЕТ','825017862Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1359,109137,'Власев и сие ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1360,103675,'Гарант ВТ ЕТ','040141442Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1361,103676,'Борис Айров ЕТ','825191261Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1362,103677,'Дит-Димитър Тошев ЕТ','040154390','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1363,103117,'Чико-97 Начо Лалов ЕТ','115122242','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1364,103118,'Мира-Ганета Пейкова ЕТ','115016488Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1365,103119,'Вариант-91 ЕТ','825058097','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1366,107154,'Харт-Росица Иванова ЕТ','040704382Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1367,107155,'Шен-Джан ЕТ','115674194','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1368,107156,'Топчо ЕТ','825393551Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1369,108120,'Вилин Панайотов Румен Радев ЕТ','115828849','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1370,107565,'Щерев Тур АД к','115008302ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1371,106124,'Ана Димитрова ЕТ','115051368Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1372,109623,'Детелина ЕТ','040609258Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1373,108121,'Норис-1 ЕООД','115251924Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1374,108122,'Жак-жак ЕТ','115618530','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1375,102594,'Деница ЕТ','115648502','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1376,102595,'Благой Тодоров-БТ-54 ЕТ','115643284','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1377,102596,'Димитър Златанов ЕТ','115349610','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1378,102597,'С.Търбенова ЕТ','825359702Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1379,102598,'Петя Чолева ЕТ','825190654Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1380,102599,'Валентино-94 ЕТ','120031456','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1381,102600,'Ива-90 ЕТ','825151021Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1382,102601,'Весела-2001-В.Лукова ЕТ','115616440','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1383,103678,'Рени Петрова ЕТ','115762388','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1384,103120,'Т.Георгиев-99 ЕТ','115500188','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1385,103121,'Иван Андреев ЕТ','8251619663Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1386,103122,'Гумбаре ЕТ','115245234Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1387,103123,'Траяна ЕТ','825123463Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1388,103124,'Илди-Илко Димитров ЕТ','115334156','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1389,103125,'Перуника-90-Станка Чипева ЕТ','825064470Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1390,103126,'Краси-М-Комерс ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1391,103127,'Омега-45 Христо Богданов ЕТ','825140950Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1392,103128,'Емил Делков ЕТ','825227939','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1393,103129,'Спас Д.Овнаров ЕТ','115249979Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1394,104112,'Наси-Мария Спасова ЕТ','040821631Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1395,102602,'Елена Петкова-56 ЕТ','115786268','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1396,103130,'Румен Манджуков ЕТ','115307458Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1397,103131,'Надежда-56 ЕТ','825069859Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1398,103132,'Таня-2000 ЕТ','115545954','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1399,108123,'Славчо Бочуков ЕТ','825041906Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1400,103679,'Ива ЕТ','115156539Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1401,103680,'Ваня-2000 ЕТ','112521574','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1402,103133,'Вили Транс-2003 ЕООД','115797574','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1403,107157,'Николай Карабодаков ЕТ','115767876','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1404,106125,'Цвети-Ц.Боева ЕТ','115773349','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1405,107566,'Атис ЕТ к','122063680','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1406,103134,'Дългов-Яни Щерев ЕТ','825388006Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1407,103135,'Тонитурс ЕТ','115034244Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1408,102604,'Грами-Димитър Граматиков ЕТ','020595833Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1409,102603,'Час-Стефан Чиев ЕТ','120010796Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1410,107158,'Део-2-Владо Попов ЕТ','040328275','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1411,107159,'Скарлет ЕТ','108060363Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1412,107160,'Андреа БГ ООД','115620951','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1413,103136,'Автосам ЕТ','825237611Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1414,103137,'*Гушеров и син ЕТ','115651288','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1415,103138,'Петър Симеонов ЕТ','825038276Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1416,103139,'Светла Пенчева ЕТ','825308914Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1417,102605,'Гринго ЕТ','115058505','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1418,102606,'Деви-90 СД','115093456Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1419,102607,'Стела Георгиева ЕТ','825036001Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1420,102608,'Васил Нешев ЕТ','115753777','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1421,107567,'Аспет-Петя Чобанова ЕТ к','115510131','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1422,108124,'Шампион-777 ЕТ','825064794Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1423,105154,'Бест-Борис Василев ЕТ','115793946','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1424,102609,'Лили-Тон-Т.Пенева ЕТ','040702495Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1425,102610,'Атанас Хаджиев-Нели ЕТ','115779311','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1426,102611,'Джордан-56 ЕТ','115227446Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1427,102612,'Ваня Манолова ЕТ','115766988','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1428,102613,'Костадин Владимиров-22 ЕТ','825247137Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1429,102614,'Димитър Димов ЕТ','030460773Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1430,102615,'Йордан Кузмов ЕТ','115143927','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1431,106126,'Братя Мирчеви ООД-кино','115340814','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1432,103140,'Тоето-НГ 58 ЕТ','115185584Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1433,104113,'Фат-АС ЕТ','825264916','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1434,105111,'Века-Вл.Калинов ЕТ','040371850','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1435,105155,'Века-Вл.Калинов ЕТ-2','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1436,103141,'Малина-96 ЕТ','115031337Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1437,107568,'Недялка Запрянова ЕТ к','825395812','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1438,107569,'Даниел Андончев ЕТ к','115645890','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1439,107570,'Златка Колева ЕТ к','123065595','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1440,107571,'Розалина АЯ ЕТ м','825035419Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1441,107572,'*Деним-51 ЕТ к','825241942','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1442,109138,'Маркони ЕТ','115240792Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1443,109139,'Йордан Ставрев-13 ЕТ','115059482','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1444,108125,'ВМК-В.Кацаров ЕТ','115227695','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1445,105156,'Г.Н.П-97-Георги Владиков ЕТ','115148664','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1446,105157,'Ушев ЕТ','115254272Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1447,105158,'Костов ЕТ','115255043Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1448,107573,'Жельо Господинов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1449,102616,'РВК Орфей','000602409Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1450,103142,'Игнат Георгиев ЕТ','825107270Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1451,103143,'Стайко-М.Стайковска ЕТ','115675435','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1452,107574,'Съгласие ЕТ к+м','825381691','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1453,107575,'Ритони ЕТ к+м','115131070','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1454,107576,'Магфил ЕТ к','115630956','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1455,107577,'Николина Минчева ЕТ м','115815346','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1456,108126,'Василев и син ЕТ','112531262','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1457,109624,'Александра ЕТ','115765815','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1458,107578,'Валкомерс ЕТ к','115352492','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1459,107579,'М-94-Мария Клявкова ЕТ к','825235868','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1460,109625,'Никола Вранчев-2 ЕТ','825006652Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1461,108127,'13Х3-2 ЕТ','825128108Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1462,103681,'Деница-С 2 ЕТ','115122502Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1463,103144,'Денко Попа ЕТ','115675378','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1464,103445,'Галя-2 ЕТ','115146784Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1465,103446,'*Изненада-2 Хр.Николов ЕТ','115566037','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1466,103447,'Изненада-3 Хр.Николов ЕТ','115566037','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1467,109626,'Пин-Пенк ЕТ','825068974Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1468,107580,'Екатерина Кокенова ЕТ к','825263910Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1469,107581,'Георги Видев-М ЕТ','115292892Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1470,107582,'Кей Ти-Катя Боюклиева ЕТ к','115812670','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1471,107583,'Фил-ко ЕООД к','115095578Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1472,107584,'Кипарис-Павлина Зафирова ЕТ м','825013305Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1473,102617,'Дарби ЕТ','11502839Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1474,107585,'Трио-Янчо Давчев ЕТ м','115773491','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1475,103448,'Жарден-М.Добрева ЕТ','115275836Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1476,103449,'Кънчо Гроздев-63 ЕТ','825109136','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1477,103450,'Тони-Тотка Петкова ЕТ','115536781','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1478,109140,'Ник-Красимир Татаров ЕТ','112549029','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1479,105159,'Дат ООД','825380899','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1480,107161,'Лидо-99 СД','115084973Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1481,103145,'Мария Джурова ЕТ','825371793Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1482,102618,'Стамбули България Лимитед ЕООД','000646284Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1483,107586,'Тоджи-Тодор Тодоров ЕТ к','115060520Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1484,103682,'Средна гора-1 ЕТ','115084222Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1485,103146,'Ранкар ЕТ','115273408Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1486,103147,'Вики-А ЕТ','825133183','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1487,103148,'Вип Трейд Груп ЕООД','115776320','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1488,109141,'Треидинг ЕТ','115040891','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1489,109142,'Милиса ЕООД','825271024Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1490,109143,'Булгар Милк-Гарант ООД','825329562Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1491,103683,'Малин Лиотев-Малин ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1492,103864,'Петър Пирев ЕТ','115575207','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1493,103685,'Методи Стаменов ЕТ','115577101','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1494,106127,'Кева ЕТ','115086515Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1495,108128,'Пепи-Живка Петрова ЕТ','102855839','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1496,102619,'Риск-54 ЕТ','120014389Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1497,102620,'Кети-А.Селимов ЕТ','120558679','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1498,107162,'Цветлина Чиплакова ЕТ','112111116','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1499,104114,'Лъки-Тина Паунова ЕООД','115535020','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1500,104116,'Искра-91-Искра Каварджиева ЕТ','825104228','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1501,104115,'Надежда Ковачева ЕТ','825030831Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1502,103149,'Алекс-Ей А.Атанасов ЕТ','115262080Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1503,103150,'Таня-2000 2 ЕТ','115545954','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1504,103154,'Вили-В.Копърдакова ЕТ','115154514Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1505,103155,'Дафо-44-Мая Чокойска ЕТ','115825116','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1506,104117,'Петко Крушев ЕТ','115306267','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1507,103686,'Димитър Авджийски ЕТ','825155105','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1508,107587,'Олимпия-919 ЕТ к','825096219','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1509,107588,'Дон-Зл.Донева ЕТ м','825338149Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1510,103451,'Кръстана Зайкова ЕТ','825334348Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1511,103156,'Омега-86 ЕТ','115519607Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1512,103684,'Кейтан-Теди-К.Колева ЕТ','040622693Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1513,105160,'Атанаска Недялкова ЕТ','115253074','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1514,107163,'Емона-С ЕТ','825041219Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1515,103865,'Цветана Ганчева ЕТ','115151048','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1516,103151,'Еневски инженера ЕТ','115756727','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1517,104118,'Ак-Ресим Кадир ЕТ','040591123Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1518,104119,'Селин-Севгин Шабан ЕТ','115759068','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1519,104120,'Гунеолу-Гунев Гунев ЕТ','825079426','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1520,104121,'Хаят-Айнур Али ЕТ','115271528Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1521,104122,'Веска Хаджиева-100 ЕТ','115337907','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1522,104123,'Васил Андонов-74 ЕТ','825382327Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1523,104124,'Иван Яков-2003 ЕТ','115803746','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1524,104125,'Аса-Атанас Сотиров ЕТ','825128873Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1525,107589,'Ирондел-92 ЕТ к','115111724Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1526,107590,'Чоко ЕТ м','825144824','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1527,107591,'Струмка-Р.Ганчев ЕТ м','040994117Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1528,105161,'Диа ЕТ','115129589Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1529,102621,'Айвън-И.Давидов ЕТ','106045067Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1530,102622,'Данмар-Й.Тодоров ЕТ','301423908','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1531,102623,'Дивела ЕООД','120544942','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1532,103157,'Йоанна-2003-П.Карабаджов ЕТ','115799600','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1533,107592,'Рангел Петров-Джани ЕТ м','115733760','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1534,107593,'Бор 62-Л.Николов ЕТ м','115334551','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1535,107594,'Електрик-93 ЕТ м','115293161Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1536,107595,'Ник-Н.Георгиев ЕТ к','1155543553','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1537,107596,'Емануил ЕТ м','115338642','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1538,107597,'Ина-Иванка Ангелова ЕТ м','825369803Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1539,105162,'Итън ЕООД','115149232Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1540,108129,'Стелла-Дора Стоева ЕТ','115140742Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1541,103687,'Краси-96 ЕТ','115591827','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1542,104126,'Сетра-47 ЕТ','825206025Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1543,104127,'Хриси-66-Анка Евтимова ЕТ','825119903','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1544,104128,'Фахри Халим-Алчен ЕТ','115334455Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1545,104129,'Петра Ковачева-03 ЕТ','115783756','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1546,102624,'Найден Найденов-97 ЕТ','115151120Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1547,103158,'Бизнес-Нешо Недев ЕТ','115229899Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1548,103159,'Бизнес-Н.Недев 1 ЕТ','115229899Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1549,103160,'Бизнес-Н.Недев-2 ЕТ','115229899Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1550,108011,'Слънчеви лъчи ООД','115889720','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1551,107164,'САТ-Ангел Спасов ЕТ','112547918','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1552,105163,'Маркоци ЕООД','115841362','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1553,103161,'Сид 60 С.Илиев ЕТ','1301126752','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1554,103162,'Нина-Славко Зайков ЕТ','115752885','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1555,107598,'Ати ЕТ м','825112043','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1556,107599,'Бъги-Ники ЕТ к','825215171','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1557,107600,'Рангел Танев-К.Танева ЕТ м','1155526929','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1558,107601,'Златка Стоянова ЕТ м','825192986Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1559,104130,'Император-Селим Рашид ЕТ','108513924','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1560,104131,'Айгюн-Фикрет Вели ЕТ','825369326Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1561,104132,'Величка Толева ЕТ','825344013Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1562,107602,'Павел Пондев-2 ЕТ к','825146960Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1563,107603,'Янева-Кремена Янева ЕТ','825362506','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1564,102625,'Павел Дамянов-2 ЕТ','830162432','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1565,103163,'Здравец-Ат.Цветанова ЕТ','825003962','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1566,102626,'Тоневи-М ЕТ','825016568Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1567,107604,'Рангел Танев-К.Танева-2 ЕТ м','1155526929','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1568,107605,'Радев-П.Петров ЕТ м','115327005','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1569,105164,'Гимецер ЕТ','115758176','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1570,107606,'Тими-Тенчо Ников ЕТ к','825073882','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1571,103164,'Векта ООД','115028120Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1572,107165,'Пал-Роси ЕТ','115091163','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1573,102627,'Сашо Горчев ЕТ','115005399Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1574,105165,'Лора-18-А.Илчев ЕТ','020467805','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1575,105166,'Су-до ООД','115851716','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1576,109627,'Емко-М ООД 5','825017289Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1577,109628,'Любомир Иванов ЕТ','115153088','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1578,109629,'Хиса 75 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1579,104133,'Кирил Гочев-Киви ЕТ','825239286Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1580,104134,'Коди-Костадин Пеков ЕТ I','115297590E','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1581,102628,'Лили-ЕМ-Симеон Йончев ЕТ','040684296Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1582,109144,'Кореком-Принцес АД','831650534Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1583,103165,'Т.Георгиев-2 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1584,104135,'Атанас Далгъчев ЕТ','120012267Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1585,104136,'Веселин Узунов ЕТ','120037402Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1586,104137,'Експо Виденица ЕТ','120036446Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1587,104138,'Ела-2001 ГКП','120537197','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1588,104139,'Георги Гетов ЕТ','120523265','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1589,104140,'Йордан Петков-2003 ЕТ','115804346','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1590,104141,'Роселини ЕТ','830112073','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1591,102629,'Асен Топузов ЕТ','830151642Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1592,107607,'Краси-54 ЕТ м','115126276Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1593,103688,'Неда Карачева ЕТ','115791678','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1594,104142,'Интермат ООД  кафене','115753492','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1595,104143,'Йордан Йорданов-Ан Ди ЕТ','115753528','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1596,104144,'Нимекс-Йоана Манолевска ЕТ','115568878','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1597,104145,'Пиргос-БГ-Б.Колев ЕТ','115831555','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1598,104146,'Росиана ЕТ','825011770Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1599,104147,'Албена Кехайова-КАМ ЕТ','825181840Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1600,104148,'Асен Грашев ЕТ','115269929','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1601,104149,'Александър-90 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1602,107608,'Васил Попчев-Веич ЕТ м','825356535Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1603,107609,'Диян Христев 21 ЕТ м','115033968','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1604,104150,'Саша Пенчева ЕТ','120013742Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1605,104151,'Минка Асенова ЕТ','120012751Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1606,104152,'Ваня Балтакова-Вайо ЕТ','114110689Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1607,104153,'Живак-57-Живко Стоев ЕТ','120501963','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1608,104154,'Дазия-Тодор Кисьов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1609,104155,'Албена Горанова ЕТ','120039944Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1610,104156,'Житен клас-В.Стаменов ЕТ','115046015','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1611,104157,'Прилеп-В.Буздров ЕТ','040924745','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1612,104158,'В.Бошаков и ко ЕТ','825125418Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1613,104159,'ВЕК-Веселин Ненков ЕТ','115124453Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1614,103452,'Ренита-1 ЕТ','115336577Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1615,102630,'Милена-Бисер Димитров ЕТ','830136124Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1616,102631,'Бани-Славей Мирчев ЕТ','120545335','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1617,102632,'Инко-Комерс ЕТ','120041756','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1618,102633,'Универсал сервиз СД','120023107Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1619,107166,'Демон-97 ЕТ','115172891','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1620,104160,'Радка Цветкова-39 ЕТ','115215344Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1621,104161,'Юна98-Г.Господинов ЕТ','115286722','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1622,104162,'Амадеус ЕТ','825314397Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1623,104163,'Александър-90 ЕТ','115250270Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1624,107610,'Дони и Гери-Пепа Пунчева ЕТ м','115808309','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1625,104164,'РПК Подкрепа 9','115085445Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1626,104165,'РПК Подкрепа 8','115085445Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1627,104166,'РПК Подкрепа 18','115085445Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1628,104167,'Д.Грибчев ЕТ','115327069','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1629,104168,'Стаси-97-Магд.Мухтар ЕТ','115779633','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1630,104169,'Христо Драганов 83 ЕТ','115241015Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1631,104170,'Ники-Николай Андреев ЕТ','115306819Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1632,103166,'АБИ-Аван Цанев ЕТ','115651669','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1633,103866,'Иван Гунчев ЕТ','115270757Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1634,103689,'Емилия Бубарова  ЕТ','115814600','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1635,103690,'Елена ЕТ','115085043','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1636,103167,'Игнат Георгиев-2 ЕТ','825107270Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1637,104171,'Рени Сафтова ЕТ','120011813','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1638,104172,'Славчеви ООД','120547572','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1639,107611,'Ив.Иванов ЕТ','115070920Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1640,103691,'Ели ЕТ','115126301','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1641,104173,'Елит 2000-Хр.Праков-В.Пракова','115576309','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1642,104174,'Костадин Араланов ЕТ','115611964','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1643,104175,'Кирчкова-Д.Кирякова ЕТ','115655969','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1644,104176,'РПК Подкрепа кл.34','115085445','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1645,103692,'Далев и син СД','825112545Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1646,106128,'Дороти-ДМ ЕТ','825029665Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1647,107612,'Неливан-Стел ЕТ','825113024Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1648,107613,'Ваня-Нихтянова ЕТ','115784858','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1649,107614,'Лозана-901 ЕТ','825061684Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1650,107615,'Зорница ЕТ','115131469Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1651,102634,'Ачо Комерс ЕТ','120055448Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1652,102635,'Славей Делиев ЕТ','830189493Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1653,102636,'Ив-Комет ООД','120539700','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1654,104177,'Тони-Т.Жеков ЕТ','115172163Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1655,104178,'Неда Димитрова ЕТ','115341325','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1656,107616,'Танчита 2002 ЕТ','115599592','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1657,107617,'Капри ЕТ к','825321356Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1658,104179,'Вихра-56-Стефан Сариев ЕТ к','825114546','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1659,104180,'РПК Подкрепа 29','115085445','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1660,104181,'РПК Подкрепа 3','115085445','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1661,104182,'Мария Миткова ЕТ','825357345','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1662,103867,'Цветелина ЕТ','115748449','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1663,107618,'Ева-Ева Бузова ЕТ к','825342521Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1664,107619,'Люба Драгинова ЕТ м','830143745','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1665,107620,'Жоро-Диана Витанова ЕТ  м','120550102','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1666,107621,'ТРЕП-Тодор Балабанов ЕТ к','830105011Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1667,107622,'Ат.Герчев-Данигер ЕТ м','825115317Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1668,107623,'Атанас Тошев ЕТ к','830176001Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1669,107624,'Селвира-С.Парунева ЕТ м','115785052','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1670,107625,'Иван Карталов ЕТ м','120026046Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1671,107626,'ЗПК Персенк','000601887','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1672,107627,'Георги Бочуков ЕТ м','830169366','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1673,104183,'РПК Подкрепа','115085445','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1674,104184,'РПК Подкрепа','115085445','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1675,104185,'РПК Подкрепа','115085445','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1676,104186,'ВГДЕ-Д.Харитев ЕТ','825128813Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1677,103693,'Дарина 95 ЕООД','115808476','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1678,103169,'Емона 2003 ЕТ','115793241','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1679,103170,'Слави-Стоянка Димова 2 ЕТ','115285887Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1680,107628,'Агапси-Минчо Стайков ЕТ','115176489Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1681,109145,'Вили-Мария Стоянова-1 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1682,104187,'Рени ЕТ','115075691Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1683,103694,'Илиев-13 ЕООД','115075892Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1684,103695,'Сиди-02 ЕТ','115659064','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1685,103696,'Снежана Борисова ЕТ','115209658Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1686,107629,'Кирчев ЕТ','115258776Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1687,107630,'Люси-Люба Вълчева ЕТ','115513999','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1688,107631,'Василиус-В.Христов ЕТ','030260726Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1689,107632,'Мишел-М.Димитров ЕТ','120070256Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1690,107633,'Юри Димитров-63 ЕТ','115116669','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1691,109146,'Поли-99 ООД','115627337','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1692,102637,'Георги Апостолов СК ЕТ','115062044Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1693,104188,'Е.Л.М.-Чавдар Минев ЕТ','115814461','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1694,103171,'Свежест ЕТ','115300595Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1695,103172,'Камелия 93-Т.Пеева ЕТ','825339685Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1696,103173,'Атанас Иванов-76 ЕТ','115510711','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1697,103697,'Роза-Д.Порязов-1 ЕТ','115067408Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1698,103698,'Пламен Богданов ЕТ','115064102Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1699,103699,'Детелина ЕТ','115025829','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1700,103700,'Гери-Г.Дошкова ЕТ','115806226','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1701,107167,'Топчо-2 ЕТ','825393551Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1702,102638,'Агнес-60 ЕТ','825033521Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1703,104189,'Гевас ЕФ','040239862Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1704,104190,'Везни-Пенка Димитрова ЕТ','115118347','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1705,107634,'Агоп-К.Бакърджиева ЕТ','115325109','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1706,103174,'Дънди 2-Мано Петков ЕТ','825167470','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1707,103175,'Стайко Стайков-53 ЕТ','040044563','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1708,109147,'Престиж-3 ООД','825341362','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1709,108130,'Протест джинс АД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1710,104191,'Иван Генев-Топоген ЕТ','115611977','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1711,103701,'Камаро ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1712,103176,'Даков-Петър Генчев ЕТ','115511770Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1713,103702,'Нагласа-Ж.Хънтова-1 ЕТ','825092904Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1714,107635,'Н.Иванова-Д и Х ЕТ','115615114','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1715,104192,'Ангел Ангелов-94 ЕТ','115053821Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1716,104193,'Кати ЕТ','825156036Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1717,107636,'Сикоана ЕТ к','115118009','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1718,107637,'Инна-91 ЕТ 1 м','040642991Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1719,107638,'Инна-91 ЕТ 2','040642991Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1720,107639,'Горби-Михаил Александров ЕТ','115625884','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1721,107640,'Геосет-Св.Костова ЕТ','120519434','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1722,107641,'Асен Топузов ЕТ','830151642Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1723,105167,'Скайл-Р.Сотирова ЕТ','825110448Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1724,105168,'Ч.К.З. ЕТ','825158705Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1725,104194,'Теди-Васил Шопов ЕТ','115747614','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1726,104195,'РПК Наркооп кл.82','000435554Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1727,104196,'Бени-П.Павлова ЕТ','115096305Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1728,103703,'ЖСМ-Ж.Мишев ЕТ','115104212Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1729,103704,'Никоста ЕТ','115575762','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1730,103705,'Иван Попов-КРГ ЕТ','825347109','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1731,108131,'Пейков и син ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1732,103532,'Игнат Игнатов ЕТ','825082486Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1733,102639,'Нели-М ЕТ','830110738Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1734,102640,'Братя Минчеви ООД 1','120000655','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1735,102641,'Братя Минчеви ООД 2','120000655','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1736,103177,'Алексиопол ООД','115820119','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1737,104197,'Сияйна зора 2000 ЕТ','115520919Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1738,104198,'Йорга Рай ЕТ','8250044904','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1739,107642,'Елди-55 ЕТ','120005881','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1740,107643,'Мони-83 ЕТ','120041450Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1741,107644,'Николка ЕТ','120019571','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1742,107645,'Стоянка Пиндева ЕТ','830189319','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1743,107646,'Марина 5-М.Маринов ЕТ','115827455','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1744,105020,'СТК-Тончев и сие СД','040734201Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1745,103533,'Ангел Пирнарев ЕТ','115803130','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1746,103534,'Петрови-Бойко Петров ЕТ','115096726Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1747,103535,'Богойски-В.Попова ЕТ','115057645Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1748,103706,'Негида комерс-91 ЕТ','825125222Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1749,103707,'Радка Шалска ЕТ','825184758','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1750,103708,'Донка Колева ЕТ','040503415Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1751,103709,'Недка Бъзева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1752,107168,'ДНЦ ФК Шипка 2000','115584786','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1753,104199,'М.Караисенов ЕТ','825286250Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1754,104200,'Йорданка Василева-Шик ЕТ','115033498Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1755,103710,'Диамант-В.Диаманджиев ЕТ','115055909Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1756,103711,'Ники ЕТ','115817183','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1757,103712,'Бобо-А.Бабачев ЕТ','115533731','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1758,103713,'Деним ЕТ','115181970Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1759,102642,'Атанаска Канева ЕТ','115733237','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1760,107647,'Ел.-Ел.Илиева ЕТ','115778620','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1761,103168,'Христо Мисев ЕТ','115511425','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1762,108132,'Мърси-В.Митова ЕТ','115757156','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1763,106129,'Пачо-Спас Първанов ЕТ','825336739Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1764,103714,'Аско-Севдица З.Айров ЕТ','825278289Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1765,103715,'Антон Бачков ЕТ','830133995Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1766,103716,'Чифлика ЕТ','825137954Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1767,103717,'Любена-Ив.Пейчева ЕТ','115763497','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1768,103718,'ВН Рангелов-91 ЕТ','825067210Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1769,103719,'Иван Василев-777 ЕТ','825315264Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1770,103720,'Мариела 100 ЕТ','825041016','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1771,103152,'Елпида ЕТ','115783382','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1772,103153,'Йосиф Плачков ЕТ','115290076Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1773,103178,'Аризона 91 ЕТ','825132793','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1774,102643,'Сема-Светла Братанова ЕТ','830105456','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1775,107648,'Боат-Атанас Чернев ЕТ','040308187Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1776,103721,'Георги Лилов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1777,103722,'Тото ЕТ','115802605','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1778,103723,'Петър Петров-92 ЕТ','115030922','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1779,103724,'Маркони ЕТ','825064323','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1780,103725,'Иван Радев ЕТ','115665537','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1781,103726,'Гражина ЕТ','115054439Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1782,103727,'Мизия-Мария Ненкова ЕТ','040904098Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1783,103728,'Искейп-2001 ЕООД','115613597','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1784,107649,'Атанаска Канева ЕТ','115733237','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1785,102644,'Нико-Николай Качаков ЕТ','115076607','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1786,105169,'Магда Христова ЕТ','115098250Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1787,109148,'Бонита АД','115575011','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1788,107169,'Бонина-Бонка Ангелова ЕТ','825271693','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1789,105170,'Тикс 39-С.Костова ЕТ','825101207','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1790,103729,'Гами ЕТ','115514923','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1791,103730,'Мати-Юлия Генова ЕТ','115581847','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1792,103731,'Лори ЕТ','115589484','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1793,103736,'Севда Димитрова ЕТ','115679686','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1794,103732,'Сребрев ЕТ','825029163Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1795,103735,'Чинко Строй ЕТ','115349635','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1796,103733,'Джуди-М ЕТ','115059468Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1797,103734,'Краян-Д.Чурина ЕТ','115646647','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1798,103737,'Ванко-92-Цв.Трайкова ЕТ','115616433','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1799,108133,'Станимир Браянов ЕТ','115613120','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1800,103179,'Дими-Радка Тодорова ЕТ','115168115','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1801,103738,'Анна Костова-2002 ЕТ','115770196','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1802,103739,'Елпида-96 Данка Христова ЕТ','115009433','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1803,103740,'Сани-Иван Иванов ЕТ','115649586','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1804,103741,'Генадия-Г.Георгиева ЕТ','115125968','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1805,103742,'Ива-Ив.Матова ЕТ','115757601','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1806,103743,'Шарен свят-Филипов с-ие СД','115349222','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1807,103744,'Кредиус ЕТ','115745321','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1808,103745,'Гертед-Г.Трендафилова ЕТ','115843192','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1809,104201,'Емил Кръстев ЕТ','825089519Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1810,103868,'Соня Радичева ЕТ','825183204Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1811,103746,'Веси-В.Кирякова ЕТ','115625182','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1812,102645,'Зора-87-Румен Обидимски ЕТ','120548440','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1813,104202,'Христо Чавдаров ЕТ','825249234Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1814,104203,'Екофууд ООД','8250978566','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1815,104204,'Е.Вълкова-97 ЕТ','115131422','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1816,105171,'Абийон ЕТ','115068855Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1817,103747,'Роси ЕТ','115020077','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1818,107171,'Димона ЕООД','115622895','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1819,107170,'Иван Карев-Негерос ЕТ','115065535','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1820,108134,'Арт-Център ЕООД','00044393Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1821,102646,'Бисвил-99-Коджабашев ЕТ','120065120','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1822,103180,'Н.Видолов-7Н ЕТ','115303246','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1823,103181,'Ела ЕООД','115107183','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1824,104205,'Димитър Янков-2 ЕТ','115588788','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1825,103756,'Виктори ЕТ','825118338','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1826,103748,'Ненко Ботев ЕТ','040168810Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1827,103749,'Аризанов-90 ЕТ','040162654Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1828,103182,'Д.Рончева ЕТ','825214226Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1829,103183,'Яница-66 Г.Даймов ЕТ','825265562Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1830,102647,'*Вием-Ваня Маринова ЕТ','115624953','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1831,102648,'Иван Бързев ЕТ','115054510Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1832,107650,'Катерина Желева-2001 ЕТ','115655074','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1833,107651,'Галя-Ангелина Вулджева ЕТ','115237839Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1834,107652,'Лилия Серафимова ЕТ','115335807','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1835,108135,'Николай Ботевски-2002 ЕТ','115753784','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1836,103184,'Стефи-Вип ЕТ','115827640','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1837,104206,'НиКрис-Б.Гарабитов ЕТ','115353719','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1838,104207,'Ел-33 ЕТ','115349025','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1839,104208,'Ники-83 ЕТ','825134982','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1840,107653,'Роси-94 ЕТ','825293152Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1841,103757,'Нико Мим ЕТ','040578067Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1842,107654,'Столюб ЕТ','Е040282917','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1843,107655,'Жасмин ЕТ','115559128','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1844,107656,'Диди-93 ЕТ','825145431Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1845,107657,'Фрезия и сие СД','1089517828','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1846,107658,'Даниела Иванова-99 ЕТ','115502134','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1847,105172,'Гит СД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1848,104209,'Спърс-Н.Кръстев ЕТ','115072259Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1849,104210,'Каупласт-1940-Петков ЕТ','006502055','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1850,104211,'Дора Славчева-С-2001 ЕТ','115606460','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1851,107659,'Ангелиса ЕТ','115805779','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1852,107660,'Юсеин Мустафов-шоле ЕТ','825261496','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1853,107661,'Ива Палаза ЕТ','115005794','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1854,107662,'Деляна-Ася Тасева ЕТ','115040865Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1855,107663,'Славов НТ ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1856,107664,'Зако-55 ЕТ','825189787Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1857,107665,'Здравец-А-86 ЕТ','115142622Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1858,107666,'И.Матеев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1859,104212,'Наркооп РПК кл.128','000435554Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1860,107667,'Маришки плод СД','030242493Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1861,107668,'КПК-К.Кръстев ЕТ','825155660','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1862,107669,'Перфект-Запрян Ангелов ЕТ','836025853Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1863,107670,'А.Спасов-Чардаклиев ЕТ','123032809Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1864,107671,'Вили-Виляна Пашалиева ЕТ','115632590','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1865,107672,'Астор Георгиеви-45 ЕТ','115317018','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1866,107673,'Васил Попчев-Веич ЕТ','825356535Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1867,103185,'Бенд Ойл ООД','102070354Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1868,107674,'Младен Василев-Мари 5 ЕТ','120022418','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1869,107675,'Ранимекс Г ЕТ','020517635Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1870,107676,'Иван Хаджиев-Д ЕТ','825256944Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1871,107678,'Чинко строй ЕТ','115349635','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1872,107677,'Странджите ЕТ','040829051Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1873,107679,'Клуб-92 ЕТ','825160401Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1874,107680,'Мечта ЕТ','115807730Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1875,107681,'Христо Тодоров ЕТ','124133608','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1876,102649,'Гема ЕТ','825029462Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1877,107682,'Бреза ЕТ','115082981Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1878,107683,'Стойо Велевски ЕТ','825121462','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1879,107684,'Роман-Хр.Нанков ЕТ','115674995','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1880,107685,'Шанс-8 Милко Петров ЕТ','115190916Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1881,107686,'Стоян Лучев ЕТ','115069900Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1882,107687,'Стоян Стоянов-2000 ЕТ','115500279','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1883,103186,'Евдокия Матейчина ЕТ','825113711Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1884,107688,'Ралица 97 ЕТ','115347716','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1885,109630,'Радослав ЕООД','115524846','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1886,103758,'Палмите-1 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1887,107689,'Дива ЕТ','115155655Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1888,107690,'Ева-5 ЕТ','03012661710','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1889,107691,'Хоризонт К 90 ЕТ','825153307Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1890,107692,'Тоска-Първомай ЕТ','040359210Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1891,103759,'Катита-Величка Георгиева ЕТ','115894048','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1892,104213,'Оникс-38 ЕТ к','040610303Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1893,102650,'Света Богородица МБДПЛГ','115610409','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1894,107693,'Стефан-Лалко Бенев ЕТ','825238540Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1895,107694,'Валдис ЕТ','115570612','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1896,107695,'Рет Химчев ЕТ','040495502Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1897,102651,'Банко Зангаров ЕТ','020368539Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1898,107696,'Доди Транс-Д.Аврамов ЕТ','115816416','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1899,103760,'Кирил Димитров ЕТ','115077943','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1900,107697,'Цоньо СД','115793266','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1901,106130,'Каменица АД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1902,106131,'Люси-Елена Петкова ЕТ','825267225Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1903,106132,'Люблена-90 ЕТ','115327382','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1904,106133,'Ели-89 ЕТ','825155308Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1905,106134,'Васил Велков-96 ЕТ','115052370Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1906,106135,'Кир-Ган ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1907,106136,'Оазис-Димитър Сивков ЕТ','115686225','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1908,103187,'Сиси ЕТ','115150786','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1909,107698,'Марин Маринов-2002 ЕТ','115772959','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1910,106137,'Агро Стил ЕТ','115160474Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1911,107699,'Дени-В.Матакова ЕТ','115802338','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1912,103761,'М.Тодорова-Маги ЕТ','115686595','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1913,107700,'Георги Станев ЕТ','115275252Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1914,106138,'Лиро ЕТ','115154329Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1915,103188,'Мечта ЕТ','115807730Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1916,106139,'Маври Василев ЕТ','115318691','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1917,106140,'Раймит ООД','115819490','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1918,108136,'Абйон ЕООД','115835740','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1919,105173,'Денчо Апостолов ЕТ','040868606Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1920,105174,'Г-Тат ЕТ','825044546','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1921,106141,'Дивна 17 ЕТ','825014930','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1922,106142,'Радостина ЕТ','825357516Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1923,108137,'Стоян Гюров ЕТ','115014050','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1924,105175,'Лазур-97 2 ЕООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1925,107701,'Дани- Ат.Атанасов ЕТ','115504669','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1926,103762,'Мария-С.Тирозова ЕТ','115817614','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1927,103453,'Ранкар 2 ЕТ','115273408','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1928,106143,'Стройкомерсиал ООД','825020709','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1929,106144,'Бътерфлай-Иван Чанлиев ЕТ','115762121','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1930,109632,'Бисерка Стефанова ЕТ','115732726','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1931,105176,'ЮВЕ-2004 ЕООД','115839589','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1932,106145,'Стоянка Попова ЕТ','115199769Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1933,107172,'Мустанг-96 ООД','115029934Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1934,106146,'Инеко-2 ЕТ','040300621Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1935,107702,'Лилия Пашова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1936,103763,'Димитър Гочев-2000 ЕТ','115600977','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1937,109149,'Опи-Х.Папазян ЕТ','825229858Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1938,109633,'Йона ЕТ','115333606','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1939,106147,'Павел Стойков ЕТ','115313962','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1940,109634,'Л.Д.-16-Д.Стойчева ЕТ','115351508','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1941,108138,'Юлина ЕТ','115577329','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1942,106148,'Сави-Пламен Костов ЕТ','115629676','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1943,103189,'Павел-85-П.Георгиева ЕТ','115839297','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1944,106149,'Кет-Костадин Георгиев ЕТ','115314404','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1945,106150,'Анди ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1946,102652,'Елит-ММ-Ел.Пелтекова ЕТ','120554150','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1947,106151,'Марбо-Г.Кръстанова ЕТ','825362591','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1948,106152,'Чалъкова и сие ЕТ','825171959Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1949,106153,'Дея 48 ЕТ','115099605','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1950,102653,'Христо Чапанов ЕТ','833133927Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1951,107703,'Мария Кьолова ЕТ','115616846','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1952,108139,'В.Бистрева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1953,106154,'Даниела Христова ЕТ','115832018','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1954,108140,'Спортмен-клуб ЕООД','115283740','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1955,107704,'Бриз-68 ЕТ','825156456','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1956,106155,'Геолена-Георги Пирински ЕТ','825154754Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1957,106156,'Елби-150 ЕТ','115118824Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1958,106157,'Тео ЕТ','115176521Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1959,109635,'Мис Стела ЕТ','825018964Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1960,108141,'Матилда-М.Динчева ЕТ','115803828','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1961,107705,'Бунара-92 ЕТ','040219639Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1962,107706,'Андита-Дан.Шопова ЕТ','825061809Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1963,107707,'Светлин Костадинов ЕТ','825294699','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1964,107708,'Вола-1 ЕТ','825212247Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1965,107709,'Би Джи Ем-М ЕООД','115755002','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1966,107710,'Сигма-Сава Тенов ЕТ','825168686Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1967,107711,'Станков-Ив.Станков ЕТ','825176238','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1968,102654,'Димитър Митрев-Маго ЕТ','115104931Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1969,102655,'Гюзов ЕТ','123007784Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1970,102656,'Селена Манчева ЕТ','123523377','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1971,102657,'Дончо Господинов ЕТ','833070149Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1972,107712,'Гама ЛТД ЕТ','040948963Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1973,105177,'Холи 1 ЕООД','115868936','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1974,107713,'Влади ЕТ','825237189','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1975,102658,'Иван Мачкърски ЕТ','120509290','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1976,103750,'Велекс ойл ООД','115558859Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1977,103751,'Капитанови-Жана Димитрова ЕТ','838143028','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1978,109636,'Дари ЕТ','115103092','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1979,107714,'Клуб-67 ЕТ','115827149','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1980,107715,'Симс-1 ЕТ','115125085Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1981,107716,'Васил Гайдаджийски ЕТ','115254870','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1982,107717,'Елешница-91 ЕТ','825070352Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1983,107718,'Перум ЕТ','040622978Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1984,107719,'Елана ЕТ','115038997','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1985,107720,'Катя ЕТ','115067792Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1986,107721,'Ив-99 Иван Синапов ЕТ','115507590','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1987,107722,'Георги Велчев ЕТ','115793558','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1988,107723,'Костадин Бушев ЕТ','115188309Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1989,109637,'Роден Плод ЕАД','115018902','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1990,106158,'Биз-Снеж-Кет ЕТ','825001210','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1991,107724,'Вики-Вик ЕТ','040773827Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1992,104214,'Делян Драганов ЕТ','115310550','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1993,107725,'Барсак 88 ЕТ','115556933','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1994,107726,'Тома Бозвелиев-Нево-Годеник ЕТ','115832961','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (1995,107727,'Атанас Иванов ЕТ','115183761Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1996,107728,'Радомир-М ЕТ','040285436Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1997,107729,'Оксер-97 ЕТ','115141456Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1998,102659,'*Гергана-Велко Неделчев ЕТ','123001589','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (1999,102660,'Радостин Желев ЕТ','833080862Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2000,109638,'Монитед-04-М.Христов ЕТ','115822860','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2001,108142,'Ай-ди Иван Димитров ЕТ','115820521','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2002,103190,'Фердо ЕТ','115826182','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2003,108143,'Мисти-Милко Чапкънов ЕТ','115818118','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2004,103764,'Фейшън Кинг ЕООД','115573971','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2005,107730,'Геони-Величка Видева ЕТ','115747870','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2006,107731,'Иво Димов 93 ЕТ','825130504Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2007,107732,'Серкето-Никола Тинков ЕТ','115101470Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2008,107733,'Вал.Стоилов-ВС ЕТ','040870564','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2009,107734,'Стойчев ЕТ','825138967','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2010,107735,'Айфел ЕТ','825334250Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2011,107736,'Люри-Людмила Златкова ЕТ','115162831Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2012,107737,'Лени-Е.Ангелова ЕТ','115605458','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2013,103765,'Янко Какаров ЕТ','115840919','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2014,107738,'Дядо Кольо ЕТ','115509075','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2015,107739,'Малкото салкъмче ЕТ','825294749','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2016,107740,'Таня Запрянова ЕТ','115712257','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2017,107741,'Славена ЕТ','115130470Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2018,107742,'Вани ЕТ','825375806Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2019,107173,'Мери ЕТ','825067107Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2020,103766,'Любомир Гашаров ЕТ','115241517Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2021,102661,'Силъри  ООД','120526902','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2022,107743,'Георги Димов ЕТ','115262785Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2023,109150,'Христо Радоев ЕТ','825327665','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2024,109639,'Мони ЕТ','115824808','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2025,104500,'Джамал Чавдарлиев ЕТ','830171748Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2026,104501,'Юсмен Забанов-Забан ЕТ','120038372Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2027,104502,'Еделвайс ЕТ','830194825Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2028,104503,'З.К.-Росен Джаков ЕТ','120552306','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2029,104504,'Димитър Иванов ЕТ м','120005034-Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2030,104505,'Райчо Янчев ЕТ м','120068554Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2031,104507,'Елисавета Чолакова ЕТ м','120068216','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2032,104506,'Ани-Анифе Чаушева ЕТ м','120541427','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2033,104508,'Севдалина Кьоровска ЕТ к','120541270','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2034,104509,'Евелин Хаджиев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2035,104510,'Силена Рашид Чаушев ЕТ м','120013554','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2036,104511,'Иньо ЕТ м','120052742-Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2037,104512,'Хамди Боюклиев-95 ЕТ','830195005Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2038,104514,'Мария Драмалиева ЕТ м.','120033717Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2039,104513,'Здравко Гьорджиев ЕТ м','120538947','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2040,104515,'Венцислав Аврамов ЕТ м','120024700Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2041,104516,'Атанас Узунски ЕТ м','120015384','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2042,104517,'Азме Забитева ЕТ','120545393','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2043,104518,'Джемиле Алиман-60 ЕТ','120044126-Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2044,104519,'Камен Пулев ЕТ','120044763','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2045,104520,'Фейзи Вели ЕТ м','120543894','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2046,104521,'Гери-Даринка ЕТ м','120520778','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2047,104522,'Хава-Халачева ЕТ м','830191494-Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2048,104523,'С.Халачев ЕТ к','120053965Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2049,104524,'Топчиев-Юлиян Топчиев ЕТ к','20604481Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2050,104525,'Веселин Делиев ЕТ','120052379Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2051,104526,'М.Габеров ЕТ','0830174512Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2052,104527,'Астория-Веселин Локов ЕТ м','830104183','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2053,104528,'Ефтим Боболев ЕТ п','120059039-Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2054,104530,'Гал-ка Галина Янева ЕТ м+к','1205255226','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2055,104529,'С.Илъков ЕТ','120012705','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2056,104531,'Митко Габеров ЕТ м','830174512Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2057,104532,'ДКА Арда-Давидково','602494Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2058,104533,'Реса ЕТ','120007131','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2059,104534,'Славей Делиев ЕТ','830189493Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2060,104535,'Вахди Шехов ЕТ м','01048318','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2061,104536,'Ниелсон-Николай Меликаров ЕТ','830151603','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2062,104538,'Ружен Тарънски ЕТ','120060034Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2063,104537,'Здравко Малинов ЕТ м','120529089','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2064,104540,'Албена Блатева ЕТ','120512087','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2065,104539,'Кадир Ашиков ЕТ','120552434','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2066,104541,'Оазис ЕТ','830111181Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2067,104542,'Пижот-Милка Келешева ЕТ','120504076','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2068,104543,'Надежда Иванова ЕТ','120024807Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2069,104544,'Светлина-Шабан Ковачев ЕТ','120036291','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2070,104545,'Джейс-В.Ораков ЕТ','120073932','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2071,104546,'Кемил Ходжов ЕТ','830104678Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2072,104547,'Исмет Сюлейманов ЕТ','0683631','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2073,104548,'Минка Бисерова 99 ЕТ','120505025','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2074,104549,'Захари Минчев ЕТ','120552158','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2075,104550,'Рифат Одаджиев ЕТ','830130032Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2076,104551,'Наско Башев ЕТ','120044261Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2077,104552,'Меди-80 ЕТ','120525088','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2078,104553,'Илия Софтев ЕТ м','830184286Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2079,104554,'Захари Сираков ЕТ к','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2080,104555,'Ив-А-Бакалска ЕТ','115003100Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2081,104556,'Шернфов ЕТ м','830150743','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2082,104557,'Костадин Митев ЕТ м','83013384','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2083,104558,'К.Димитров-Р.Димитров ЕТ м','830149709','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2084,104559,'Здравстрой-45 ЕТ к','120072346','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2085,104560,'Кавет ЕТ м','120039669','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2086,104561,'Чанди-Св.Чандърова ЕТ м','120545660','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2087,104562,'Фиеста-Емил Юричев ЕТ м','120065005','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2088,104563,'Станков-С.Станков ЕТ м','120003987','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2089,104564,'Иван Димитров-Бряст ЕТ м','830184012','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2090,104565,'Иван Йорданов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2091,104566,'Кадир Афузинов ЕТ м','120524335','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2092,104567,'Захари Павлов ЕТ м','120039054','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2093,104568,'Алиеми-Ш.Айренски ЕТ м','120024928','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2094,104569,'Ечи ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2095,104570,'Хамдие Мезлишева ЕТ м','120555505','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2096,104571,'Макс-МД-Ружен Беширов ЕТ м','120500131','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2097,104572,'Жельо-49 ЕТ м','830181952Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2098,104573,'Йована-Йордан Йорданов ЕТ п','120026377Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2099,104574,'В.Атанасов-Ю.Тръмбаше ЕТ м','120539166','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2100,104575,'Бота-Сабрие Халилова ЕТ м','120539472','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2101,104576,'Андрей Войводов ЕТ п','120520002','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2102,104577,'Ел-Вил-Елза Вълчева ЕТ м','120541345','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2103,104578,'Томато ЕТ м','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2104,104579,'Елит-Емил Костов ЕТ м','120521104','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2105,106159,'Алекс-Лъчезар Лазаров ЕТ','115719561','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2106,109640,'Тинка Истревска ЕТ','115318675Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2107,105178,'ТЕА-Ангел Шаралиев ЕТ','115841266','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2108,109151,'Адели-БГ ЕООД','115945860','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2109,109152,'Невенa Щерева ЕТ','115079951','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2110,104580,'Хикмет Хаджи ЕТ','830105716Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2111,104581,'Виктор-42-В.Шехов ЕТ','120003670','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2112,104582,'Сюлейман Хисар ЕТ','112050962Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2113,104583,'Боби-Бойко Войводов ЕТ','120021088Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2114,104584,'Мирела-Кичуков ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2115,104585,'Вис-3-Юри Камбуров ЕТ','120071785','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2116,104586,'Бисерка Кралева ЕТ','120528682','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2117,104587,'Методи Радев-Михаела ЕТ','830185783Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2118,104588,'Дени-Н90-Фаня Ничева ЕТ','120072983','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2119,104589,'Вики Е.Бурдев-Р.Бурдева ЕТ','120510031','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2120,104590,'Калина-Божидар Щърбов ЕТ','120068725','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2121,104591,'Красимир Димитров ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2122,104592,'Митко Кехайов-60 ЕТ','120511366','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2123,104593,'Николай Йорданов ЕТ','120071600','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2124,104594,'Сиана-А.Карамитева ЕТ','120068846Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2125,104595,'Ана Малкова ЕТ','120501977','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2126,104596,'Експрес-О.Мемчев ЕТ','120003161Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2127,104597,'Камен Бумбов ЕТ','120061712Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2128,104598,'Р.Б.-Юлияна Байкалова ЕТ','830154574Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2129,104599,'Фатолик-Ф.Мирославов ЕТ','120551186','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2130,104600,'Шевкъ Кехайов ЕТ','120020787','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2131,104601,'Малин Суров ЕТ м','830153839','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2132,104602,'Искра-76 ЕТ','120067954','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2133,104603,'Симак ЕТ к','830104774Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2134,104604,'Севдалин Келешев ЕТ','120553397','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2135,104605,'Слалом-Л.Димитров ЕТ','120018964','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2136,104606,'Хемдие Мезлишева ЕТ','120555505','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2137,107174,'Теа-Ангел Шаралиев ЕТ','115841266','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2138,104607,'Катюша ЕТ','831641791','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2139,104608,'Сашо-51 ЕТ м','830155992','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2140,104609,'Жельо Палов ЕТ','120050378Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2141,104610,'Асан Кичуков-Санко ЕТ','120503800','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2142,104611,'Ясен Енев ЕТ','040385326','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2143,104612,'Нюсич 90-Нези Чападжиев ЕТ','830152032Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2144,104613,'Хасан Койнаров ЕТ','120039104Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2145,104614,'Георги Беширов ЕТ','120542511','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2146,109153,'Гевреков-Людмил Гевреков ЕТ','115554960','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2147,109641,'Емко-М 4 ООД','825017289Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2148,104215,'Жоро-Георги Димитров ЕТ','825344604Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2149,107744,'Мири-В.Василев ЕТ','830131287Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2150,109154,'Булгар Милк-Гарант-2 ООД','825329562Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2151,104615,'Караманолев ЕТ','830107973Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2152,104616,'Миозотис ЕТ','830114829','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2153,104617,'Цанко Кауков ЕТ','120517561','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2154,104618,'Недрум-Нека Башева ЕТ','120069791','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2155,104619,'Русков ЕМ ЕТ','020368351Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2156,104620,'Алекс-З.Беделев ЕТ','120511626','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2157,104621,'Ерика-Минчо Замфиров ЕТ','120523379','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2158,104622,'Сашо Кумецов ЕТ','120509365','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2159,104623,'Мария Жекина ЕТ','120032444','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2160,104624,'Златко Фотев ЕТ','120007633Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2161,104625,'Искрен Камберов ЕТ','1200543232','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2162,104626,'Чавдарлъ ЕТ','030261223Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2163,104627,'Ради-Р.Пеев ЕТ','120064374','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2164,104628,'Мони-Минка Джамбазова ЕТ','120030607','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2165,104629,'Тони 53 К.Бадатлиев ЕТ','120005461','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2166,104630,'Ж.Д.-99 Данаил Дурев ЕТ','120542924','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2167,104631,'Дафин Дамянов ЕТ','120519995','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2168,104632,'Хаджи-Фиданка Севдалинова ЕТ','830121389','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2169,104633,'Николай Иванов ЕТ','120552060','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2170,104634,'Зекери Кшлевчиев-Радо ЕТ','120550485','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2171,104635,'Андрей Белечев ЕТ','830103494Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2172,104636,'Шина Топузова ЕТ','120545525','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2173,104637,'Светла Ешпекова ЕТ','030175807Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2174,104638,'Адис-Денислав Илчев ЕТ','120552142','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2175,102662,'Крамър-КМ ООД','123545651','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2176,102663,'Ян ЕООД','115845211','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2177,103191,'Иван Гачев ЕТ','115834084','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2178,103192,'Ваня-Татяна Събева ЕТ','115836746','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2179,103193,'Калиопа ЕТ','115053419Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2180,103194,'Вем-П.Мекерешки ЕТ','825359033','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2181,104639,'Асен Митрев ЕТ','120008888','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2182,104640,'Мери ЕТ','120071333Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2183,104641,'Севани-С.Паликаров ЕТ','120017061','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2184,104642,'Красимир Мантов-2003 ЕТ','120548119','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2185,104643,'Калин Сариев-Фунги ЕТ','120002629Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2186,104644,'Юсмен Люманов-40 ЕТ','120521983','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2187,104645,'Кини-Юлиян Сакалийски ЕТ','120554378','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2188,104646,'Наум Гебелов-Владилена ЕТ','120027415Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2189,104647,'Севдалин Чернев ЕТ','120007238','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2190,104648,'Недялко Манолов ЕТ','120063219Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2191,104649,'Рай-1991-Р.Раева ЕТ','120072606Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2192,103195,'Ники-77 ЕТ','115197558Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2193,103196,'Радида ЕТ','115283021Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2194,109155,'Спорттуур ООД','115826951','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2195,102664,'Маргарита ЕТ','115004030Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2196,107745,'Флаш консулт СРП','825332776Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2197,104650,'Камея-Камен Мемов ЕТ','120075367','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2198,104651,'Рофи-Роман Филипов ЕТ','120063678Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2199,104652,'А.Химетев-Ели-А.Радев ЕТ','120023406Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2200,104653,'Лекс','830161818Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2201,104656,'Баф ЕТ','120003065','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2202,104654,'Стогер ЕТ','830118724','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2203,104655,'Билитранс ВП ЕТ','120011941Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2204,104657,'Младен Младенов ЕТ','120551706','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2205,104216,'БББ-Б.Батинков-М.Батинков ЕТ','040941545Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2206,102665,'Йордан Георгиев-2002 ЕТ','115667335','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2207,102666,'Христо Костов ЕТ','126534553','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2208,104217,'Дионис-Андон Хаджистоянов ЕТ','115620645','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2209,104658,'Вили-Лъчезар Дойков ЕТ','120539110','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2210,104659,'Бор-Халил Бекир ЕТ','108559882','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2211,104660,'Солак-МК-Метин Солак ЕТ','108031486Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2212,104661,'Руми-89 ЕТ','108064550Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2213,104662,'Влади-Е.Кехайова ЕТ','108505984','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2214,104663,'Емо Асен Илиев ЕТ','120031997Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2215,104664,'Дик и сие-Д.Сапунджиев ЕТ','830102702','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2216,104665,'Снежана-64 ЕТ','108015464Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2217,104666,'Ъгъл-51 ЕТ','108034404Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2218,104667,'Златен дъб-67-Яворова ЕТ','108566841','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2219,104668,'Стандарт-Р.Кичуков ЕТ','108080693Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2220,103767,'Тодорка Моллова ЕТ','115847536','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2221,104669,'Вахди Шехов ЕТ 2','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2222,104670,'Елисавета Чолакова ЕТ 2','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2223,107746,'И и В -2001 ООД','115633564','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2224,108144,'Бига такси комерсиал ЕТ','040008656E','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2225,108145,'Ники-7 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2226,107175,'Лайпциг-91-2 АД','825256780Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2227,108146,'Ивека-М ЕТ','115190243Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2228,105179,'Денс-48 ЕТ','825019137','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2229,105180,'*Радая ЕТ','115163157','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2230,107747,'Стофи-77 ЕТ','115842126','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2231,103869,'Макси-4 ЕТ','040671765Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2232,103197,'Б-2004 ЕООД 2','115585308','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2233,104671,'Офелия Жукова ЕТ','830167251','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2234,104672,'Муси-М-Мустафа Хаирулов ЕТ','108523249','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2235,104673,'Солак-МК-Метин Солак ЕТ','108031486Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2236,104674,'РПК Наркооп','000111376Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2237,104675,'Паша-Мехмед Паша ЕТ','108562476','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2238,104676,'Солак-МК-Метин Солак 2 ЕТ','108031486Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2239,104677,'Чайка-Гюлнар Хасан ЕТ','108505404','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2240,104678,'Гери-Светла Чолакова ЕТ','108562177','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2241,104679,'Минка Христова ЕТ','120513221','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2242,104680,'Спийд маркетинг ЕООД','115157108Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2243,104681,'Асен Куцев ЕТ','120039111','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2244,104682,'Океан ЕТ','120015415','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2245,104683,'Делко-4 си-е СД','830110154Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2246,104684,'Съби Топузлиев ЕТ','120509714','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2247,109156,'Димитър Кузев ЕТ','115005417','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2248,105181,'Рапид Пенев ЕТ','040870429Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2249,102667,'Таня Касабова ЕТ','120547979','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2250,109157,'Г.Манджуков ЕТ','115677938','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2251,109158,'Калинов Фемили ЕТ','115213037Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2252,105182,'Малинка Минчева ЕТ','115261929','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2253,104685,'Вема-Н ЕООД','108551743','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2254,104686,'Здравец-Здравко Димитров ЕТ','108066658Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2255,104687,'Йълмаз-КИ-Шакир ЕТ','108529775','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2256,104688,'Марин Кисьов ЕТ','120025802','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2257,104689,'Майони-Йонко Маринов ЕТ','120040448Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2258,104690,'Рамон-Радко Хаджиев ЕТ','830164173Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2259,104691,'Последен шанс-Митко Джандев ЕТ','120519199','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2260,104692,'Захаринка Белева ЕТ','120556009','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2261,104693,'Ивко-Най ЕТ','108042778Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2262,104694,'Анто-Антим Шукеров ЕТ','120552249','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2263,102668,'Дида-Динка Чакърова ЕТ','120003631Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2264,103454,'Ивана Ненова ЕТ','115791201','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2265,109159,'Джением ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2266,103,'Алпина ЕООД','121035817Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2267,107176,'Димитър Славов-Комерсиал ЕТ','825244575Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2268,103768,'Чико-10-Ивана Джамбазова ЕТ','115801001','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2269,104695,'Ариф Терзи ЕТ','120014204Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2270,104696,'Денис-Риза Джембиров ЕТ','120545824','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2271,103198,'Дани и стил ЕТ','115566941','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2272,109643,'Тони-71-Ст.Неделева ЕТ','115597278','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2273,109644,'Ауто-Хриси ООД','115840805','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2274,103199,'Митра Юрдекова ЕТ','825377853','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2275,103200,'Калина ЕТ','115283473Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2276,102669,'Тодор Динков ЕТ','825371314Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2277,104218,'Диана-Д.Николова ЕТ','115835377','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2278,105183,'Краси-ла ЕТ','040102034','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2279,108147,'Тони-А.Танева ЕТ','115850176','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2280,106160,'Алекс ЕТ','825320083Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2281,105184,'Надежда-2001-Р.Анева ЕТ','115846886','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2282,103769,'Си-1 Гюрга Вътова ЕТ','115758863','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2283,103201,'Желев-Петър Петров ЕТ','825138112','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2284,105185,'Маня-М.Петрова ЕТ','115833650','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2285,104697,'Бряст-56 Иван Димитров ЕТ','83018403Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2286,104698,'Евгени Меринов ЕТ','120029302Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2287,104699,'Йоана ЕТ','120057757','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2288,104700,'Милка Пашова ЕТ','120042520','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2289,108148,'Саво ЕТ','115006587Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2290,106161,'Норис ЕТ','115151283Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2291,106162,'Сим-Пай ЕТ','825054437Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2292,103770,'Мираж-Шаранков ЕТ к','825164691Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2293,102670,'Бинка Стоилова ЕТ','120513965','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2294,106999,'Нов клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2295,106163,'Меспродукт ООД','115071310','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2296,106164,'Карди-2-В.Карадашева ЕТ','825259513','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2297,106165,'Карт бланш ЕТ','825158101Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2298,106166,'Ваня-90 ЕТ','115814924','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2299,107177,'Ню уев ЕТ','102093292','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2300,103202,'Мариян Станчев ЕТ','123536008','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2301,103203,'А Ж С-А.Стоев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2302,103771,'Трейд груп ООД','115853845','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2303,106167,'Димитър Канев-234 ЕТ','128520755','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2304,106168,'Палми-Памир Катърчев СД','115027611','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2305,109645,'Калиман Карибе ООД','831707273','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2306,109656,'Бидор ЕТ','040415919Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2307,108149,'Емили ЕТ','115006792','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2308,103204,'Монинг-Серафима Антова ЕТ','825400394Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2309,107748,'Родео-98-Х.Пантелеев ЕТ','115292419Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2310,107749,'Роси ЕТ','115201095Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2311,106169,'Щастлив бизнес ЕТ','115077263Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2312,106170,'Роби-95 ЕООД','115017825Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2313,106171,'Алфина-К ЕТ','115189718Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2314,106172,'Люис ЕТ','825020463Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2315,106173,'Красена-79 ЕТ','115534961','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2316,106174,'Пламен Стоев ЕТ','115825365','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2317,104701,'Баерн ЕТ','108064194Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2318,106175,'РКС','000471753Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2319,103870,'Еврокомерс-МНХ ООД','115778894','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2320,106176,'Стоян Киров ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2321,106177,'Стоян Вълчинов ЕТ','115835733','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2322,106178,'Деси-2003-Д.Бушева ЕТ','115809902','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2323,106179,'Стоил Николов ЕТ','040984240Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2324,106180,'Илиник-Трендафилова ЕТ','115583588','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2325,109160,'Иввел Прити ООД','115845478','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2326,106181,'Мирчев,Мирчев и сие СД','822146193','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2327,106182,'Ася-2 ЕТ','825223816Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2328,106183,'Голдън-Н.Денева ЕТ','115017070Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2329,106184,'Славов-98 ЕТ','115310721','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2330,109161,'Христо Радоев-2 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2331,108150,'АРК-Румен Каравълев ЕТ','825092200','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2332,104702,'Сиси-Сийка Димитрова ЕТ','220007023','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2333,104703,'Найс-ко-89-К.Агушев ЕТ','120050403Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2334,106185,'Милена ПК-90 ЕТ','115004774Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2335,106186,'Ханчето ЕТ','115755269','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2336,106187,'Мери-Хр.Бабаджанов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2337,106188,'Денол-до-Доева СД','115106107Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2338,106189,'Акай ЕТ','825234271','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2339,109162,'Ина ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2340,107750,'ПК Съединение','825025955Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2341,107751,'Евгени Маринов-Гешо ЕТ','120029302Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2342,104219,'Крис Трейд ООД','115836383','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2343,106190,'Мина-Мина Христева ЕТ','115808953','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2344,106191,'Елена-К.Шумански ЕТ','825166112Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2345,104704,'Самет ЕТ','108017561Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2346,104705,'Жава-Ф.Мюмюн ЕТ','108025704Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2347,104706,'Мираж-2000-М.Храмова ЕТ','108516201','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2348,109163,'Кабел Интеграл 1+ ЕТ','825368391','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2349,109657,'Калис-55 ЕООД','115652251','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2350,109114,'Би Би Ай ЕТ','825136934Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2351,106192,'Мади ЕТ','825165035Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2352,107752,'Иванов хан ЕТ','115327304Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2353,107753,'Димитър Хаджиев ЕТ','120053303Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2354,109164,'Интер-Табак ЕООД','115855853','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2355,109165,'ВЕ и ЕМ ООД','115648395','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2356,104220,'Елена-53-Ел.Павлова ЕТ','115658731','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2357,106193,'Мариян Киров ЕТ','115015621Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2358,104707,'Райчо Инджов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2359,104708,'Старата къща ЕТ','108059286Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2360,104709,'Милена Грозданова ЕТ','115505529','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2361,104710,'Кимерастрой-К.Мералиев ЕТ','120506084','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2362,104711,'Смилен Делиев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2363,104712,'Радо и Ко Къмпани ООД','130025988','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2364,104713,'Стрелец-71 ЕТ','120061111Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2365,104714,'Христо Чолаков ЕТ','120542187','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2366,104715,'Фидес-М.Хаджийска ЕТ','120516865','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2367,104716,'Добр.Ангелиева-Анта-Т.Ангелиев','120030087','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2368,109166,'Христо Ганчев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2369,104221,'Мери ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2370,104222,'Янис-Д ЕТ','825188742Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2371,103871,'Марин-Неделчо Тотев ЕТ','115073119','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2372,109167,'*Венус-М ЕТ 2','040201648','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2373,104717,'Петър Керкелов-72 ЕТ','040678902Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2374,104718,'Емди ЕТ','818049518','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2375,104719,'Елена Иванова ЕТ','120020545Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2376,104720,'Конака ЕТ','830152678Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2377,104721,'Ради и ко къмпани ООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2378,108151,'Дефт ООД 3','115931144','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2379,103782,'Симс ООД','115647749','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2380,103205,'Нита-Данка Стоилова ЕТ','115623417','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2381,107754,'Хеланс-Яким Ганев ЕТ','120011238Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2382,107755,'Емине Гадженакова ЕТ','120555284','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2383,107756,'Бош ЕТ','120055521','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2384,107757,'Рамадан Зюлям ЕТ','040574533Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2385,105186,'Ина-Гинка Робева ЕТ','115585094','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2386,104223,'Жанет-84 ЕТ','115068928','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2387,106194,'ТЛТ-94 ЕООД','115284714Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2388,109168,'Вени-Б.Кост. ЕТ','115801617','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2389,109658,'Мариана Чонова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2390,106195,'Папров ООД','115897286','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2391,104722,'Елиес-71-Л.Кудемова ЕТ','120024942Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2392,104723,'Алекс-2000-З.Кехайова ЕТ','120510951','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2393,104724,'Стефани-Сл.Скечелиева ЕТ','120503234','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2394,109659,'Борислав Петков ЕТ','115618441','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2395,105187,'Макиан-Магдалена Каратанева ЕТ','115743854','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2396,107758,'Атанас Дългъчев ЕТ','1200122647Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2397,107759,'Юсмен Забанов ЕТ','120038372Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2398,106196,'Габел ЕТ','115503916','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2399,106197,'Екстаз-Стойнева ЕТ','115857434','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2400,106198,'Габел ЕТ','115503916','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2401,103206,'Наси ЕТ','115550168','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2402,109169,'Дид-63-Д.Димитров ЕТ','115169217Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2403,102671,'Про-Промес ЕООД','115574468','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2404,109660,'Планета-К-Ив.Карабов ЕТ','15303837','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2405,108152,'МБ-90-Пловдив ЕТ','040220335Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2406,108153,'НП-Н.Димитрова ЕТ','825204303Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2407,109170,'Калиман-Карибе ООД','831707273','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2408,107760,'Светла Дертлиева-29 ЕТ','120012712Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2409,107761,'Канон-Кр.Плявов ЕТ','120064214','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2410,106199,'Меди-А.Кислякова ЕТ','825227775','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2411,106200,'Марияна Чокова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2412,107762,'Катя Каназирска ЕТ','115112230Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2413,105188,'Диди-Ив.Петков ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2414,105189,'Динджан-Дюндар Тефик ЕТ','030429411Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2415,103207,'Ади-М.Мутавчийска ЕТ','115054097Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2416,103783,'Н и М-Невена Илиева ЕТ','825312478','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2417,104725,'Петър Петров ЕТ','830105367Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2418,104726,'Красимир Балджиев ЕТ','1205401637','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2419,104727,'С и В-Стиляна Минчева ЕТ','120544925','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2420,109171,'Румен Андасаров ЕТ','825010545Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2421,107763,'И и В-2001 ООД 2','115633564','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2422,103208,'Калифорния-Н ЕТ','115646614','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2423,102672,'Васил Апостолов ЕТ','812178506Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2424,102673,'Мавико ДЗД','103841917','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2425,107764,'Елит ЕТ','112033607Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2426,102674,'Юри Кътев ЕТ','120005187','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2427,104728,'М.Грозданова ЕТ','115505529','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2428,104729,'Седефка Мездрова ЕТ','120028271Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2429,104730,'ОСПБ-клон Момчиловци','130149175','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2430,107178,'Христо Точев ЕТ','115862171','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2431,108154,'Николинка Златкова ЕТ','115820919','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2432,103209,'Макситер-26 ЕТ','115602608','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2433,102675,'Благой Цветилов ЕТ','030236953Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2434,109172,'Миленков ЕТ','115088270','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2435,104224,'Аго-Ахмед Исмаил ЕТ','115857377','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2436,106201,'Монитас-ММ ЕТ','030121545Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2437,107179,'Дон-Импекс-Николай Николов ЕТ','119096193Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2438,104731,'Осман Салихов Михтарски ЕТ','120004085Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2439,104732,'Евтим Савов ЕТ','120514845','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2440,106202,'Роси М ЕООД','115147181Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2441,109661,'Благовеста-Тодор Попов ЕТ','115197647','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2442,106203,'Полина ООД','115018382Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2443,106204,'Американ уей ЕТ','825118384Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2444,108155,'Криси-Б.Димитров ЕТ','115097547','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2445,108156,'София ЕООД','115824135','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2446,109662,'Рива-Ирена Райкова ЕТ','115866650','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2447,104733,'Сю-64-Славчо Илиев ЕТ','830194679Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2448,104734,'Шабан Местан ЕТ','120556781','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2449,104735,'Сара-Ф.Пилева ЕТ','1200444667','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2450,104736,'Еми-Хайри Овчаров ЕТ','120541701','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2451,104737,'Асие Дренкова-Салих Дренков ЕТ','120541562','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2452,104738,'Вюсис ООД','830190015Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2453,104739,'Момчил Юнак ПК 1','000602590Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2454,104740,'Родопски бани ВК 1','000602551Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2455,104741,'Родопски бани ПК 2','000602551Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2456,104742,'Мария Щинкова ЕТ','120552103','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2457,104743,'Илия Жекин ЕТ','830165291Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2458,104744,'Емил Кралев ЕТ','120062971','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2459,104745,'Живко Димитров ЕТ','830135606Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2460,104746,'Софи-68 Софка Демерджиева ЕТ','120526261','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2461,104225,'Никола Драганов ЕТ','115593746','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2462,106205,'Ник-02 ЕТ','115769646','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2463,106206,'Мерланова-90 ЕТ','020461656Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2464,104747,'Люба Кайкиева ЕТ','120041870','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2465,104748,'Минчо Шинков ЕТ','830174534Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2466,104749,'Крунито ЕТ','120505349','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2467,104750,'Андрей Белчев ЕТ','830103494Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2468,104751,'Робие Аптолахова ЕТ','830102727Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2469,104752,'Милка Бисерова-98 ЕТ','120066279','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2470,104753,'Софка Рупецова-69 ЕТ','120552676','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2471,104754,'Добр.Ангелиева-Анта ЕТ','120030087','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2472,104755,'Атика-Стоян Щърбанов ЕТ','020368593Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2473,104756,'Лилия Бозова ЕТ','120514939','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2474,104757,'Елка-Юлко ЕТ','120552562','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2475,104758,'Мария Драмалиева ЕТ','120033717Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2476,104759,'Ангел Безергянов ЕТ','83017393Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2477,104760,'Зорница-Росен Драганов ЕТ','1205158132','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2478,104761,'Елит ЕТ','830153586','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2479,104762,'Хазбие Мехмеделиева ЕТ','120558693','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2480,108157,'Табако-Г.Филипов ЕТ','825372404Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2481,109173,'Стефани-2003 3 ЕООД','115779527','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2482,108158,'Радев ЕТ','115054663Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2483,108159,'Трафик ЕТ','115860262','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2484,107765,'Динко Карасавов ЕТ','120036962','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2485,102676,'Стенли-5 ЕООД','126045060Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2486,109174,'Ина Вест-Генчо Стоев ЕТ','115304589','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2487,109175,'Греведи-Гр.Касабова ЕТ','115822465','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2488,104226,'Деница ЕТ','115648502','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2489,109176,'Веселин Попов-Дивика ЕТ','115575984','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2490,106207,'Роси-М ЕООД','115147181Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2491,104763,'Вага-Събка Бурова ЕТ','108500802','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2492,104764,'Андриана Недялкова ЕТ','120511761','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2493,104765,'Хемус-Христо Моделов ЕТ','120529752','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2494,104766,'Тони-64 ЕТ','108003585Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2495,104767,'Икра-Кр.Христов ЕТ','827165365','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2496,104768,'Севдалин Чернев-2 ЕТ','120007238','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2497,104769,'Димо Щилянов-Дика ЕТ','120556653','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2498,104770,'Братя Налбантови СД','030260889','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2499,104771,'Ертан ЕТ','108022284','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2500,104772,'Салих Калемджиев ЕТ','130034529','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2501,106208,'Ванеса-Петър Илиев ЕТ','115526911','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2502,104227,'Стефка Ганева ЕТ','115782896','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2503,105190,'Радост-99 ЕТ','040867760Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2504,106209,'Дани-Б.Дачев ЕТ','115863259','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2505,104773,'Момчил юнак ПК 2','000602590Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2506,103210,'Емил Делков-2 ЕТ','825227939','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2507,103211,'Чико ЕТ','825162199','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2508,103212,'Стеляна ЕТ','115319492','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2509,103213,'Кет-Цветана Тухлова ЕТ','115564698','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2510,109177,'Николай Щерев ЕТ','115189255Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2511,104228,'Бени ЕТ','115083330','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2512,106210,'Адри-90 ЕТ','825131983Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2513,103214,'Златко Костадинов ЕТ','115276596Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2514,103215,'Вентранс-2000 ЕТ','115541913','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2515,103216,'Мюси-Милка Текирска ЕТ','115782743','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2516,106211,'Греведи-Гр.Касабова 2 ЕТ','115822465','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2517,103217,'Нони 2002-Нонка Иванова ЕТ','115748050','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2518,102677,'А.Димитрова-Ади ЕТ','115867019','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2519,102678,'Елена Керкелова ЕТ','120525857','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2520,104774,'Бекяров ЕТ','040852363Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2521,104775,'Албен Кисимов ЕТ','120055642Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2522,104776,'Альоша-Ал.Говедаров ЕТ','120557926','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2523,104777,'Обединение РПК','830186180Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2524,104778,'Лимекс-Хамди Хасанчев ЕТ','120548425','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2525,104779,'Тинчо Цанков ЕТ','120063127','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2526,104780,'Станислав Пановски ЕТ','120045203','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2527,104781,'Мони-Виолета Сиракова ЕТ','120545596','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2528,104782,'Свежен-Румен Карамитев ЕТ','120033731Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2529,103218,'Андита 4-Даниела Шопова ЕТ','825061809Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2530,103219,'Андон Кулов ЕТ','115116830Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2531,103220,'Меделин-Пенка Ненова ЕТ','115055758Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2532,107766,'Тем-Бул ООД','115632544','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2533,107767,'Анна Костова-2002 ЕТ','115770196','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2534,103872,'Надежда Кръстева-98 ЕТ','115186215','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2535,104229,'Росен Лангеров ЕТ','115186259','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2536,104230,'Диласт СД','115026386Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2537,104783,'Ася Рупцова ЕТ','120056484Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2538,104784,'Анжел ЕТ','108024189Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2539,104785,'Обединение-3 ПК','830186180Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2540,104786,'Обединение-2 ПК','830186180Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2541,104231,'Стоди ЕТ','825245823','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2542,104232,'Райна Борисова ЕТ','115039914Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2543,103221,'Ст.Вълков-Текада-96 ЕТ','115032528Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2544,103222,'Мелинда-92-Ц.Божкова ЕТ','115682173','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2545,109178,'Хусам Аяяд-1 ЕТ','115776060','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2546,106212,'Джек-Боб-К.Шумаров ЕТ','825294101Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2547,107768,'Доби-Добрина Иванова ЕТ','115014626','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2548,107769,'Маман ЕТ','040251277Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2549,107770,'Славка Денева ЕТ','825154131','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2550,107771,'Стоян Примов ЕТ','123562234','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2551,107772,'Суит-К.Ачкова ЕТ','825394991Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2552,107773,'Ажс-Ангел Стоев ЕТ','8330233199Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2553,107774,'Невена Каменова ЕТ','115596824Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2554,109663,'65-Мария Николова ЕТ','115868345','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2555,104233,'Колев-Хр.Колев ЕТ','115648210','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2556,105191,'Екснет ООД','115594809','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2557,104787,'Славчо Тиклев ЕТ','120555213','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2558,104788,'Ружен Търънски-2 ЕТ','120060034Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2559,104234,'Меги ЕТ','825398872Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2560,107180,'3-Красимир Танков ЕТ','115864578','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2561,107775,'Гетови ЕТ','04821421Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2562,107776,'Минчо Дончев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2563,107777,'Стефка Русенова ЕТ','123547906','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2564,107778,'Тодор Митев ЕТ','115081062Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2565,106213,'Марго-М.Иванова ЕТ','115275448Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2566,106214,'Нипи ЕТ','825244222Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2567,103223,'Джако-Христо Джаков ЕТ','115325869','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2568,106215,'Милена Грозданова ЕТ','115505529','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2569,106216,'Саво-2 ЕТ','115006587Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2570,107779,'И и В-2001 ООД 3','115633564','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2571,107780,'Илия Костов 2 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2572,107781,'Универсал МГ Сие СД','115201095','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2573,107782,'Сид Надежда ЕТ','825156513Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2574,108160,'Стиляна-С.Петрова ЕТ','115869721','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2575,107783,'Били-В.Атанасов ЕТ','115637114','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2576,107784,'Съни ЕТ','170006639','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2577,107785,'Дари-Хр.Нейкова ЕТ','115342085','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2578,109179,'Капи-Пепрон Папазян ЕТ','1155609090','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2579,109664,'Кени-Кунчо Неделчев ЕТ','115788874','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2580,104789,'Ели-Мед Бисер Нейков ЕТ','120543887','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2581,104790,'Милена Михайлова ЕТ','830133950Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2582,104791,'Шанс-96 ЕТ','120005828Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2583,104792,'Сирма Романова ЕТ','040811060','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2584,104793,'Ц.Чолаков-Ради ЕТ','120551439','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2585,104794,'Мони-96-Боян Каменов ЕТ','120061549','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2586,104795,'Ели-75-Елка Арнаудова ЕТ','120037306','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2587,107787,'Таня-93 ЕТ','825194097Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2588,107788,'Сис-Хит ЕТ','825096540','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2589,107789,'Айя-Н.Маринова ЕТ','825116807','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2590,107790,'Еми-2001-Емир Узун ЕТ','115759097','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2591,107791,'Цанка Нанкина ЕТ','115860131','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2592,107792,'Свежест ЕТ','040725106','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2593,107793,'Цветина-Св.Атанасова ЕТ','115562163','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2594,107794,'Деметра-67 ЕТ','825261247Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2595,104235,'Бътерфлай-2003 ЕООД','115784801','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2596,106217,'Гюрсел Еминов ЕТ','115153679Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2597,104236,'Евро АН-Анна Димова ЕТ','115861265','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2598,103224,'Марти-Георги Чавдаров ЕТ','115336246','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2599,109665,'Таня Ташева ЕТ','115224915Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2600,106218,'Владини Комерс ООД','115516689','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2601,106219,'Мишел ЕТ','115288933Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2602,106220,'Галина Шивачева ЕТ','115869575','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2603,106221,'Петрос Габриелян Ани ЕТ','115335595Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2604,107795,'Мики-М.Марков ЕТ','115034949','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2605,104237,'Николай Милушев ЕТ','120519936','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2606,104796,'Оги-Софка Кликова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2607,107796,'Памела-Г.Павлова ЕТ','115756983','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2608,107797,'Мехмед Хаджъмакак ЕТ','825236354','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2609,107798,'Арса-99 ЕТ','115317477','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2610,107799,'Силекс ЕТ','115300613','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2611,108161,'Йоти ЕООД','115507245','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2612,107800,'Георги Буков ЕТ','115505657','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2613,106222,'Ода-94 ЕТ','825230127Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2614,107801,'ЕМ и ДИ ООД','115864507','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2615,107802,'Зенит-М.Стефанов ЕТ','825215890Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2616,107803,'Марсилия-М.Чаушев ЕТ','120042449Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2617,104797,'Дж.Топчиев-З.Топчиев ЕТ','120518656','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2618,104798,'Ани-Е.Башев-О.Башева ЕТ','120503985','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2619,106223,'Бялата къща ЕТ','115010357Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2620,107804,'Димитър Атанасов-02 ЕТ','115763134','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2621,107805,'Танина-2005 ЕТ','115871850','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2622,109180,'Светлина-Евг.Борисова ЕТ','115653022','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2623,107806,'Диана Иванова ЕТ','825204520Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2624,103784,'Дани-Е ЕТ','825091243','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2625,104799,'Рифат Карасалихов ЕТ','120559119','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2626,104800,'Кеш-И.Узунов ЕТ','120069407','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2627,104801,'Здравко Стоилов ЕТ','108027527Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2628,107181,'Чифлика ООД','115790850','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2629,105192,'Ровот ЕООД','115790252','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2630,103225,'Ети-К Дамян Каркъмов ЕТ','115764880','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2631,103226,'*Жексам ЕТ','825034993','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2632,103227,'Диодора-97 ЕТ','115212711','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2633,103228,'Ватоза-96 ЕООД','11588783Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2634,106224,'Иван Димитров ЕТ','115725226','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2635,107807,'Алба Холидейз ЕООД','115801275','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2636,107808,'Тура ЕООД','127562694','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2637,107809,'Мики-М.Марков ЕТ','115034949','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2638,105193,'Гет-Георги Танчев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2639,103455,'Леон-69 Л.Плачков ЕТ','115538290','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2640,103456,'Милениум ЕТ','102875336','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2641,109181,'Жапи-Петрана Муковска ЕТ','115294794Б','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2642,107810,'Б 2004 ЕООД 2 к','115585308','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2643,104802,'Цанко Кауков ЕТ','120517561','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2644,104803,'Албена-Стар ЕТ','120044635','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2645,107811,'Валентин Колев ЕТ','126507289','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2646,107812,'Миленхен-Мил.Лукова 2 ЕТ','115837289','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2647,107813,'Миленхен-Мил.Лукова ЕТ','115837289','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2648,106225,'Васил Гарев ЕТ','115862303','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2649,107814,'Антоанета Топалова ЕТ','120549930','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2650,106226,'Ейдамънд косулт СД','115124713Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2651,109182,'Тракия комерс-90 АД','825021088','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2652,104238,'Суров комерс ООД','115817571','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2653,107182,'Роял К-Костадин Царски ЕТ к','825118174','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2654,109666,'Борислав Тасков ЕТ','115642937','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2655,107183,'Обич-Гина Георгиева ЕТ к','825151092Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2656,102679,'Фит-Г.Иванов ЕТ','123557162','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2657,104804,'Дениса-Денка Георгиева ЕТ','120557627','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2658,104805,'Мехмед Хюсеин ЕТ','120545443','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2659,104806,'Ахмед Али ЕТ','120011838','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2660,104807,'Славчо Лозанов-Славянин ЕТ','120011489','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2661,104808,'Надка Накадчиева-Денс ЕТ','120508719','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2662,105206,'МС-99 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2663,107815,'ЕИ-Идриз Кехайов ЕТ','120008984','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2664,103785,'Василил-Л.Томова ЕТ','115875464','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2665,103229,'Рея-04-Рени Маринова ЕТ','115859321','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2666,105194,'Ани Божилова-Ан-Джи ЕТ','115798605','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2667,105195,'Пенчо Желев ЕТ','825183581','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2668,107816,'Атанас Хаджиев-Нели ЕТ','2115779311','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2669,107817,'Ники-79 Христо Перов 2 ЕТ','115803835','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2670,102680,'Вълчо Копаров ЕТ','833115174Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2671,109667,'Имар-Иван Тотев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2672,105196,'С.Маринов-Хама ЕТ','825141123','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2673,106227,'Мираж ЕТ','040893100Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2674,107847,'М и Н Сълчеви ООД к','115892218','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2675,106228,'Съни ЕТ','120545913','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2676,105510,'Хрис-Марин Дончев ЕТ','115873986','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2677,105197,'Сириус-В.Гюлеметов ЕТ','115036619Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2678,102681,'Венерина-И.Мерова ЕТ','120032476Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2679,107184,'Вилада-В.Димитрова ЕТ','115209672Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2680,105502,'Мануела-Ш.Присадова ЕТ','1150657527','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2681,108162,'Маргарита Георгиева ЕТ','115843047','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2682,104809,'Богданка Маринова ЕТ','120540738','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2683,108171,'Здравка Райкова-Суган ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2684,104825,'Й.Атанасова-Дакис ЕТ','120016358Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2685,105198,'Дида-8 ЕТ','0301273313','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2686,105199,'Ремос ЕТ','825136090','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2687,106229,'Гороцвет ЕТ','825121875Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2688,106230,'Сиг ЕТ','115172102','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2689,104826,'Ник-55-Н.Димитров ЕТ','120017129Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2690,108163,'Хрисмар-Валентин Христов ЕТ','115863921','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2691,105200,'Ралица ЕТ','115575335','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2692,105201,'Костов 2 ЕТ','115255043','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2693,104810,'Виолета Увалиева ЕТ','830105207Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2694,105202,'Нида ООД','115855038','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2695,105203,'Елди-2005 ЕТ','115888808','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2696,106231,'Янка Янчева ЕТ','825095267','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2697,105503,'Вап-Пенчев ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2698,109668,'Ел Ей-1 ЕООД','115249446Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2699,109183,'Леден свят ЕТ','115810947','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2700,105548,'Пин-Пенк ЕТ','825068974Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2701,109184,'Емил Радев ЕТ','115111502','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2702,109185,'Оазис-Експрес Юри Михайлов ЕТ','030240802Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2703,102682,'Дария 2000 ЕТ','123542452','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2704,103875,'Й.Койчева-Флора ЕТ','825393895','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2705,104811,'Димитър Андреев ЕТ','120556393','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2706,104812,'Станислав Димитров ЕТ','040662199Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2707,104813,'Елспект-60 ЕТ','120028780Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2708,107818,'Ангел Атанасов-Еделвайс ЕТ','123682205','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2709,108172,'Тотал-Т.Чаушев ЕТ','825214774Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2710,107819,'Бизнес-2000 ООД','115529811','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2711,105204,'Ниста 99 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2712,105205,'Стевел-8082 ЕТ','115166420Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2713,109563,'Цвепет-Сн.Палашева ЕТ','82105020Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2714,104814,'Христо Иванов КИ-14 ЕТ','830121987Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2715,104815,'Чарли Ирон ЕТ','030162823Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2716,104816,'Славчо Савов ЕТ','120067872','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2717,104817,'Севдалин Тютюнаров ЕТ','120521410','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2718,104818,'Роли Пиърс ЕТ','108422229','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2719,104819,'Ел-Да Веселин Хаджиев ЕТ','120030817Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2720,104820,'Ива-Е.Кичукова ЕТ','120559222','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2721,107820,'Вегел Кумчев сие СД','115101344Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2722,103786,'Роял текстил ООД','115765167','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2723,104239,'Ники-282 ЕТ','830109821Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2724,109186,'Васил Коков ЕТ','115043407','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2725,103787,'Мони-МС ЕООД','115865580','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2726,103230,'Скай петролеум ЕООД','115254062','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2727,105211,'Деми ЕТ','115238179','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2728,103788,'Ани-89 В.Гърнева ЕТ','115869873','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2729,105207,'Дефт 4 ООД','115615527','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2730,107821,'Център регион груп ЕООД 1','131145596','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2731,107822,'Център регион груп ЕООД 2','131145596','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2732,109187,'Иви-Иван Минчев ЕТ','115831845','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2733,107849,'Юри Халачев ЕТ','120041151Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2734,107850,'Рожен Сариев ЕТ','120000635Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2735,104821,'Берна-Бахрие Мустафа ЕТ','108534480','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2736,104822,'Костадин Кабаджов ЕТ','120000514','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2737,104823,'Фатме Афузова ЕТ','120560463','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2738,107851,'Мустафа Пътов-30 ЕТ','120521990','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2739,107185,'Пластформ ООД','825396215','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2740,107852,'Младен Ашков ЕТ','120012826Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2741,107823,'Емона-С ЕТ','825041121Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2742,107824,'Оливие ООД','115637057','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2743,105549,'Рай-100 ЕТ','115105798','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2744,107827,'Вио ООД','115654715Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2745,107828,'Марсела 2001 ЕТ','115608867','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2746,104242,'Златка Маданкова ЕТ','825250838','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2747,103231,'Сарай авто-плюс ЕООД','115797663','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2748,109193,'Дафинка Тодорова ЕТ','825376420','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2749,107825,'Толи ЕООД','115223317','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2750,107826,'Speed-F Ltd','115655906','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2751,107186,'Симс ООД','115647749','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2752,103873,'Краси ЕТ','115649732','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2753,107193,'Ангел Янакиев 2005','115907271','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2754,102692,'Станой Кадиев ЕТ','830133441','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2755,105212,'Сани-2002 ООД','115746947','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2756,105209,'Атанасова-Лозана 70 ЕТ','115861938','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2757,109670,'Мария Георгиева-Илияна ЕТ','115026824Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2758,108508,'Светлана-99 ЕТ','115003124','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2759,105208,'Вени-2000 С.Чанева ЕТ','115869707','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2760,107869,'Шенси ЕТ','825057112','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2761,103232,'Митко Палашев ЕТ','825013323Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2762,107870,'Спас и Ко-Спас Спасов ЕТ','112619488','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2763,103233,'Вис-527 Караиванов с-ие СД','825134762Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2764,103234,'Салчо Салчев ЕТ','825087533Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2765,107187,'Фламинго И ООД','115861863','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2766,107829,'Мустанг ЕТ','120557036','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2767,107871,'Соня Радичева ЕТ','825183204Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2768,105550,'Вак-32 ЕТ','1150131501Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2769,107830,'Н.Петров-Ели-90 П ЕТ','825215972','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2770,108500,'Маргарита-98 ЕТ','115221127','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2771,103876,'Пламена ЕТ','115887833','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2772,109669,'Анжел-52 ЕТ','115051838Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2773,108501,'ПД Сервиз-Д.Деянова ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2774,107831,'Юлия Асенова ЕТ','120032588','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2775,105551,'Атанас Чочев ЕТ','040442236Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2776,107832,'Йонко Павлов-Елка ЕТ','120539910','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2777,107833,'Дазия-Тодор Кисьов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2778,106039,'Даниела ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2779,107834,'Десислава Василева ЕТ','120557987','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2780,109188,'Греани-Гергана Николова ЕТ','115855928','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2781,103235,'М и Н Сълчеви ООД','115892218','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2782,103236,'М и Н Сълчеви 2 ООД','115892218','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2783,109837,'Парк-Хотел\"Санкт Петербург\"АД','825239447','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2784,104244,'Здравка Аргирова ЕТ','825211059Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2785,108502,'Декара-К.Павлова ЕТ','115881905','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2786,104245,'Маг 48 ООД','825087704Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2787,104837,'Стоян Стоянов ЕТ','830165987Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2788,106232,'Димитър Зънгаров ЕТ','115573252','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2789,104838,'Армил-С ЕООД','120020890','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2790,107188,'Бети 4000 ЕООД','115099998Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2791,102693,'Марияна Делева ЕТ','123686805','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2792,108503,'Фантастика 95 ЕТ','825342083Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2793,104839,'Оникс-2-Здравко Борисов ЕТ','120554741','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2794,104240,'Ники-60 ЕТ','825092669Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2795,107872,'Стоянка Петрова 33 ЕТ','115686823','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2796,107873,'Клавдии ООД','115226668','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2797,109843,'Смилян-2000 Смилян Якубов ЕТ','115529633','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2798,104241,'Ридван Идриз ЕТ','825208586','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2799,102704,'Булшоп 04 ЕООД','131196719','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2800,105216,'Сириус-В.Гюлеметов ЕТ','115036619Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2801,109845,'Йорд.Йорданов Ан Ди ЕТ','115753528','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2802,109844,'Ангел Лапайчев ЕТ','040070743','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2803,106233,'Елица-Ц.Бодурска ЕТ','115287767Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2804,108504,'Л.С.Комерс ЕООД','115084980Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2805,108505,'Джани ЕТ','115189821','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2806,104859,'Огнян Хаджийски ЕТ','120018302','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2807,103877,'Мери-СЕН ЕТ','115288869','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2808,109846,'Митев-7-Йото Георгиев ЕТ','825097221','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2809,108506,'Кала-Енджи Стефан Митков ЕТ','115145807Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2810,109847,'Кетипа-Алекс ЕТ','825210737','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2811,107835,'Дики-Димитрия Николова ЕТ','115844458','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2812,107836,'Никсън ЕТ','825212710Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2813,107837,'Чорта-53','825100240','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2814,106234,'Криси-Петра Тодорова ЕТ','115340324','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2815,107874,'Огнян Хаджийски ЕТ','120018302','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2816,107875,'Братя Къртеви ЕТ','115178636','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2817,105504,'Серафима Петрова ЕТ','115651313','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2818,107838,'Комерс фиш-Р.Илиев ЕТ','115048048','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2819,107839,'Василка Татарова ЕТ','825238483Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2820,104824,'Ферди ЕТ','108065926Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2821,108507,'Вики-М ЕТ','115518626','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2822,102702,'Сахара-С.Сашова ЕТ','120005148','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2823,105210,'Милва 2 ООД','115039793','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2824,106235,'Г.Николова-2001 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2825,105500,'Росица-90 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2826,105501,'Красимира-79 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2827,107840,'Ра-ти-С.Станкина ЕТ','115884940','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2828,107848,'Христозова-93 ЕТ','825102686','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2829,107841,'Данчо Любенов-Синчец ЕТ','830141477Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2830,106236,'Маги ЕТ','115798555','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2831,104243,'Кики Вики София ЕТ','115078212Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2832,107842,'Илас ЕТ','120064762Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2833,109671,'Ивацвет-98 ЕТ','115239854','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2834,108509,'Никола Порязов-2002 ЕТ','115756855','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2835,107843,'Асибе ЕТ','120543136','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2836,104246,'Милев-7-Йото Георгиев ЕТ','825097221','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2837,107844,'Капка Моллова ЕТ','120030009','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2838,107845,'Велин Маринов-Робел ЕТ','120543015','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2839,102694,'Рози-Р.Шехова ЕТ','4210007313','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2840,107846,'Яси ЕТ','120048416Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2841,109189,'Дефи-90 ЕТ','825163365Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2842,109848,'Калинка Терзиева ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2843,107876,'Кис-Ст.Бангов ЕТ','040141795','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2844,104840,'Севдалина Момчилова ЕТ','120507535','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2845,104827,'Стефка Стойкова ЕТ','1200100864Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2846,108164,'Танита-Ст.Йорданова ЕТ','115069601','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2847,104828,'Мария Райкова ЕТ','830135129Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2848,106237,'Вамис ЕТ','115500642Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2849,107194,'Емил Ковачев ЕТ','115871626','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2850,103878,'Везни-94 ЕООД','825296999','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2851,109869,'Петър Иванов-2004 ЕТ','115803358','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2852,109599,'Стоян комерс 41 ЕТ','115571205','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2853,109870,'Шема-Владимир Шемов ЕТ','115616351','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2854,102695,'Сон-Ди-Соф-04-Д.Дичев ЕТ','115870456','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2855,107853,'Нира-Н.Николова ЕТ','115869696','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2856,107854,'Мима Симонова-99 ЕТ','115322613Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2857,107855,'Бени ЕТ','115323708Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2858,107877,'Аделина Агапиева ЕТ','115873278','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2859,107856,'Петър Гегов ЕТ','115520088','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2860,107857,'М.Пехливанов ЕТ','115749818','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2861,106249,'Аз- Златка Запрянова ЕТ','115904898','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2862,106250,'Славчо Бочуков ЕТ','825041906','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2863,104860,'Експерт-консулт ММ ООД','120508174','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2864,103237,'М и Н Сълчеви 3 ООД','115892218','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2865,105505,'Делсофт ЕООД','115863298','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2866,106238,'Хилез АД','115186437','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2867,102696,'Дикс-В ЕТ','825053520Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2868,104829,'Антим Сираков ЕТ','120554816','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2869,104830,'Мети-Риза Гаджалов ЕТ','120523176','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2870,105506,'Христо Стефанов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2871,108510,'Норис-1 ЕООД 2','115251924Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2872,103473,'Мура-Ив ЕООД','115760992','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2873,106251,'Ивайло Чавдаров ЕТ','115606752','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2874,103457,'Ивоком-Ивайло Минчев ЕТ','115860373','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2875,105507,'Ивекра-И.Дандов ЕТ','117617690','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2876,107858,'Йордан Паров-Мони ЕТ','120506020','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2877,109894,'Надежда-Над.Попова ЕТ','115894272','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2878,107859,'Янко Смолянски ЕТ','120032608Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2879,107860,'Коци Комерс ЕТ','120039969Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2880,107861,'Здравец ЕТ','120552263','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2881,107862,'Фокер ЕТ','115263717','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2882,106252,'Веси ГОТ-Д.Банкатева ЕТ','115889880','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2883,107195,'Мустанг-96 ООД-2','115029934Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2884,105511,'Стандарт-С ЕООД','115850945','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2885,105508,'Сантини-Ал.Опинов ЕТ','115877127','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2886,108514,'Илия Анчев ЕТ','115014284Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2887,105509,'Драго-П.Велинова ЕТ','115817653','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2888,109849,'Запрян Илиев 70 ЕТ','825825080Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2889,104831,'Емилия Цветкова-Боби ЕТ','120043241Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2890,107863,'Петриче-М.Кръстилова ЕТ','115864902','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2891,105213,'Георги Въчков ЕТ','115090360Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2892,109850,'Словестник-К.Таскова ЕТ','020363500Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2893,104832,'МС 88-Ц.Кайрякова ЕТ','120011464','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2894,107878,'Туня-П.Ангелова ЕТ','825043565','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2895,107864,'Никола Иванов-54 ЕТ','115194899Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2896,107879,'Агробилд  ООД','115137753Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2897,107865,'Атидже Афъзова ЕТ','115666475','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2898,107866,'Девора ЕТ','825157519Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2899,107189,'Ева-Евелина Кокудева ЕТ','115843737','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2900,104834,'Стоян Трифонов ЕТ','120504603','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2901,102703,'Севда Узунова ЕТ','Е120051448','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2902,109835,'Златка Маданкова ЕТ','825250838','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2903,104833,'Асен Кезов ЕТ','830145130Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2904,105512,'Полет 100 ЕТ','115216341Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2905,109853,'ДТ-Катя Увардова ЕТ','115146617','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2906,105513,'Мокси ЕТ','825296710Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2907,105214,'Кристов ООД','115886457','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2908,105518,'Елтон-91 ЕТ','040894992Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2909,105514,'Зита 50-Зл.Тушанова ЕТ','825288707','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2910,105515,'Арни-К.Арнаудов ЕТ','115015767Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2911,105516,'Спасов-73 ЕТ','825130276Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2912,106239,'Данаилов-АД ЕТ','040026017','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2913,103879,'Иван Гайдаджийски-20 ЕТ','115756435','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2914,105517,'Никсън-Д.Андонова ЕТ','115946025','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2915,109854,'Тритон ООД','825397165','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2916,107880,'Дижан-К.Савова ЕТ','825240922Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2917,105519,'Марина-2002 ЕТ','115767823','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2918,106240,'Ем Ти Ем ЕООД','115950618','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2919,109855,'Бакес ООД','115675093','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2920,105520,'Апо-Ап.Костадинов ЕТ','115821438','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2921,103880,'Адмирасион ЕТ','825144137','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2922,105521,'Тони 75 ЕТ','115869212','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2923,109856,'Благовеста-И.Григоров ЕТ','115864234','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2924,109857,'Хр.Радева-Роса ЕТ','040388127','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2925,105522,'Дари-Недялкова Павлова ЕТ','115271485','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2926,109858,'Камен 2002 ЕООД','115650026','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2927,103881,'Дагора ЕТ','825015982Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2928,105523,'Виктория ЕТ','115056212Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2929,105215,'Евлитон ООД 1','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2930,104861,'Джими Макшън ЕТ','108058451Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2931,105524,'Пекопекс ЕТ','825212428Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2932,105525,'Фаби-ко ЕТ','115820813','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2933,106241,'Крис ЕТ','115795491','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2934,109190,'Генев-Христов ООД','115880408','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2935,109194,'Абйон ЕООД','115835740','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2936,104835,'Осман Керминов ЕТ','120069204','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2937,107881,'Лео ЕТ','115559224','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2938,109841,'Димитрови Комерс Инвест ООД','115174538','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2939,109842,'Мони-Малина Йотова ЕТ','115814283','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2940,105527,'Бони-Бо Богдана Шопова ЕТ','115299876','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2941,105528,'Нели-Нели Салчева ЕТ','115529793','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2942,105526,'Емил Кирков-2005 ЕТ','115891109','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2943,103238,'Видан-Д.Дудинов ЕТ','040543737Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2944,109859,'Д.Златанов ЕТ','115349610','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2945,105529,'Фаланга Кузеви ЕООД','115065542Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2946,109674,'Филомела-Т.Иванова ЕТ','115899376','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2947,107867,'Фреш-Павел Шаралиев ЕТ','115860882','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2948,106253,'Георги Лапков ЕТ','1167474310','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2949,107190,'Аги-Агоп Александров ЕТ','115835637','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2950,105530,'Д.Димитрова-Зари10 ЕТ','040599593Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2951,106242,'Стоил Николов ЕТ','040984240Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2952,109191,'Калина-94 ЕТ','825285497Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2953,103474,'Ей Ди Ти ООД','829090014Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2954,104862,'АСД-83-Мехмед Калеканов ЕТ','120558184','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2955,102697,'Стела-Недко Добриков ЕТ','120067930','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2956,102698,'Мурина-Чарнаева и сие СД','020829791Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2957,102699,'Мони ЕТ','120514437','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2958,102700,'Агро-Транс-ДМ ЕТ','825035458Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2959,104247,'Стефани-Й.Бошаков ЕТ','115278615','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2960,106243,'Алеси ЕООД','115890154','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2961,103882,'Христо Тухлев ЕТ','825134820','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2962,105552,'Пепи и Нези ЕООД','115933686','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2963,105531,'Андро4 СД','825130333Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2964,105532,'Ринг П ЕООД','115172619','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2965,108511,'Таня 2005 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2966,111111,'СМ-51 ЕТ','040804347Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2967,109872,'Антонио Мицев ЕТ','115669126','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2968,103459,'Еделваис ЕТ','040892127','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2969,109609,'Любена-Ив.Пейчева ЕТ','115763497','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2970,109195,'Иван Теодосиев ЕТ','115850532','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2971,107882,'ИК Хермес ЕООД','115292853Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2972,103460,'Станмар-Мария Видолова ЕТ','115758354','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2973,103461,'Дапси-Пенка Тонова ЕТ','825084793','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2974,103462,'Трафик ЕТ','115181041','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2975,109873,'Христо Чакъров ЕТ','812078630','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2976,109860,'Виса 86 ООД','115631652','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2977,103463,'Петър Гешев ЕТ','115810395','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2978,103464,'Сателит-Р СД','115151336','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2979,103465,'Аврам Лилов ЕТ','825000927','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2980,109861,'Митас-Ил.Тачев ЕТ','115068620','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2981,103466,'Денко ЕТ','115675378','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2982,103475,'Атлантик ЕТ','115042485','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2983,103467,'Перуника ЕТ','825064470Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2984,109863,'Мето-Методи Комитов ЕТ','825168565Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2985,103468,'Перуника ЕТ2','825064470Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2986,103469,'Перуника ЕТ3','825064470Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2987,109672,'Катерина Кокенова ЕТ','825263910Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2988,108173,'Арена-И.Т ЕООД','115824651','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2989,104863,'Ем-Крис ЕТ','120543271','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2990,107191,'Столово Хранене ЕООД','115647806','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2991,103470,'Фреш-Павел Шаралиев','115860882','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2992,109864,'Ванеса-Кр. Кръстев ЕТ','115857092','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2993,108512,'Валерия Димитрова ЕТ','8255332872','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2994,103458,'СМ-51 ЕТ','040804347Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2995,105533,'Борели ЕООД','115777511','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2996,106244,'Деймис ООД','825379765','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2997,106245,'Демис ЕТ','825279601Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (2998,106246,'Адиса ЕТ','020486862','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (2999,104836,'Мемо-Емил Дурсев ЕТ','830115856Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3000,104864,'Светлина ЕТ','120534030','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3001,106247,'Кей-ти ЕТ','115600183','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3002,109192,'Христо-М-Хр.Махинов','115855814','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3003,105534,'К.Тонков-Прициз ЕТ','115800326','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3004,105535,'Георги Маджиров ЕТ','115677938','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3005,109891,'Берекет Н.Чауш ЕТ','115036380','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3006,102701,'Денис-50-А.Терзийски ЕТ','040204587Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3007,107868,'Сезони-Георги Захариев исин ЕТ','040035532Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3008,109865,'Йорданка Лазарова 96-Г.Лазаров ЕТ','115816342','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3009,105536,'Ваклин Ваклинов ЕТ','825116764Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3010,109196,'Латинка-П.Ганев ЕТ','825142428','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3011,105537,'Пемар ЕТ','115873933','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3012,109866,'Ст. Ипократова ЕТ','825085564 Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3013,105538,'Елена Ангелова-98 ЕТ','115260300','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3014,109600,'Даниела Ваклинова ЕТ','115908875','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3015,105539,'Светозар Георгиев-ТЕС ЕТ','Е823119443','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3016,105540,'ГИН-3 И.Георгиева ЕТ','040334082Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3017,104865,'Виктория -99 В.Куцов ЕТ','120560267','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3018,105541,'Иванка Павлова ЕТ','825377732Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3019,105544,'Пепи-Преслава Ришева ЕТ','Е115354080','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3020,105542,'Крис-Румен Събев ЕТ','825328126Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3021,103476,'Еделвайс ЕТ 2','040892127','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3022,108513,'Костадин Ботев ЕТ','115882341','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3023,103477,'П.Бизеров-91 ЕТ','040029166Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3024,103471,'Ваня 96 И.Димитрова ЕТ','115038260','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3025,105545,'Дипс ЕТ','825184441Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3026,103874,'ИАС-Иванка Ставрева ЕТ','115552660','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3027,109868,'Нина ЕТ','115777949','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3028,105543,'Руслана ЛН-Руслана Петрова ЕТ','Е115082367','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3029,105546,'Илия Мутафски-Пепи ЕТ','825170460-Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3030,103472,'Диана ЕТ','115217263','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3031,103478,'Тодор Тодоров-92 ЕТ','115055644','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3032,109673,'Димитрови К.Инвест ООД','115174538Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3033,105547,'Ичеди ЕТ','115201818','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3034,107192,'Дени-95 ЕООД','115905622','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3035,106248,'Рива Трейд ООД','115657818','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3036,109871,'Ели-София Стратева ЕТ','115944736','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3037,107883,'Лавина сие Дамянови СД','830113531Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3038,107884,'Лавина и сие Дамянови СД','830113531Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3039,109895,'Ай Би-Вилдан Кюлджи ЕТ','115843954','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3040,109896,'Карата-Ил.Караколев ЕТ','115854484','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3041,109198,'Ефир Гражданско Дружество','115770762','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3042,109676,'Мери-М.Димитрова ЕТ','115944864','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3043,109879,'Снежинка-Е.Георгиева ЕТ','115148902','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3044,109880,'П.Г.-95 Георги Гюров ЕТ','825393989','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3045,109881,'С.Хлебарова-Джорджо ЕТ','115009515','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3046,109874,'Тид-26 ЕТ','115155153','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3047,109875,'Ники-Рада Чунгарова ЕТ','115806991','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3048,109897,'Василка-В.Павлов ЕТ','115639186','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3049,109876,'Радо-94 Г.Щъркелов ЕТ','115120501','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3050,109877,'Николай Чунчуков-67 ЕТ','115616159','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3051,109898,'Христо Павлов ЕТ','825042189','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3052,103883,'Фантастика-95 ЕТ','825342083Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3053,109675,'Ив-кон-Тренкови СД','112132060','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3054,103884,'Радослав Иванов Райс ЕТ','825065796','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3055,105553,'Трибо-Трифон Богоев ЕТ','115922743','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3056,105554,'Хрис-Х.Цанкова ЕТ','115902235','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3057,109899,'Василка Петкова-89 ЕТ','115249624','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3058,109882,'Дора Шишкова ЕТ','115037468','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3059,109883,'Джоуи ЕТ','115845738','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3060,109878,'Евстати Павлов ЕТ','115126237Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3061,109900,'Мулен руж ЕООД','115851591','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3062,109901,'Камен 2002 ЕООД','115650026','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3063,109902,'Водолей 13 Ангелина Деянова ЕТ','040489410','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3064,109903,'Малина-2001 ЕТ','115615257','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3065,109904,'Даниел Николов ЕТ','115880130','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3066,104866,'Даник -В.Сухтев-Оксана Сухтева ЕТ','120070587','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3067,104867,'БАФ ЕТ','120003065','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3068,109677,'Трикс ЕООД','115612335','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3069,109884,'Топ тенис ЕООД','115909906','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3070,109885,'Хама ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3071,104248,'Екодомат ЕООД','115901304','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3072,104249,'Миг-А.Гайдева ЕТ','825053011','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3073,107885,'Д.Матев-ДММ-98','115257489Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3074,107886,'Трикс ЕООД','115612335','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3075,107887,'Маргарита 73 ЕТ','115894735','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3076,109906,'Наталия Малечкова ЕТ','115950244','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3077,107888,'Тери АНН ЕТ','040334841Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3078,83,'Неотрон ООД','115297619Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3079,109886,'Ердоан Шабан-Ердоефект ЕТ','115741383','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3080,109907,'Вандес ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3081,109908,'Бойко Качулев ЕТ 2','825330661','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3082,109887,'Атанасос ЕТ','825162377','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3083,109862,'Д-3 ЕООД','115882188','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3084,103479,'Зл.Кабова-Биляна 2000 ЕТ','825011902','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3085,103480,'Пенишев и сие СД','825229274','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3086,109909,'МПД-46-М.Димова ЕТ','825089146','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3087,109888,'Неда-Георги Грозчев ЕТ','115091188','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3088,109910,'Емона-М-91-М.Сиракова ЕТ','115248069','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3089,109911,'Малком-Л.Маринов ЕТ','827204775','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3090,109889,'Иво Николов-Лапландия ЕТ','825328467','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3091,109913,'Михаил Манев ЕТ','115555432','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3092,109890,'Румекс-Станка Бангова ЕТ','115078511','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3093,109892,'Катерина Иванова ЕТ','825170203','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3094,107196,'Интертурист ЕООД','115577877','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3095,105217,'Вендес ЕТ','115950269','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3096,109893,'Кристал-Радка Иванова ЕТ','115181649','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3097,105555,'Йордан Титеряков ЕТ','112626640','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3098,108515,'Дороти-ДМ ЕТ','825029665Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3099,109914,'Солдекс ЕООД','115842788','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3100,109915,'Стойко Тенчев-Онтарио ЕТ','115920361','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3101,109917,'Кинчо-К.Тодоров ЕТ','825351400','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3102,109918,'Мария Ралева ЕТ','115166324','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3103,57,'Паралакс 1 ЕТ Варна','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3104,106055,'Ел Шаддай ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3105,99999,'Бета-12 Иванови ООД','040114702','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3106,109570,'Спас-12 ЕТ','115206363','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3107,84,'Мултипак ООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3108,104000,'Нов клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3109,109799,'Нов клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3110,109836,'Клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3111,103500,'Нов Клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3112,103000,'Нов клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3113,102999,'Нов клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3114,103072,'Ади-Любен Стоицов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3115,107500,'Нов клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3116,108999,'Нов клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3117,109499,'Нов клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3118,104999,'Нов клиент','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3119,106254,'Тиди-Д.Гечев ЕТ','115896992','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3120,109197,'Ели-София Стратева ЕТ','115944736','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3121,110045,'Данев 44 ЕООД','115753631','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3122,110793,'Крис 95 ЕТ','112003731','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3123,110598,'Лозана ЕООД','115085979Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3124,110420,'Ив Комерсиал 23 ООД','131141854','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3125,110613,'Братя Гарабедян ООД','115196982','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3126,110012,'Пачо Първанов ЕТ','825336739Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3127,110080,'РКС-Брезовско шосе 142','000471753Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3128,110627,'Виктори ЕТ','825083669Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3129,110068,'ЕГ-Димитров Йорданов СД','825109079Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3130,110070,'Роял 98 ЕТ','115264213Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3131,112,'ТЕРУМ-2002 ЕООД','128560174','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3132,110007,'Емона ООД','126648610','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3133,110199,'Капри ЕТ','115034924Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3134,110041,'Тоник Владимир Колев ЕТ','820174525Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3135,110049,'Ломг-4 ЕТ','030052309Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3136,110021,'Рожен ЕТ','822102914Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3137,110630,'Ирен ЕООД','120542582','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3138,110772,'ЕМСИБОГ ЕООД','115887406','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3139,110016,'Ира ЕООД','11000688Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3140,110272,'Христо Бацалов ЕТ','811023549','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3141,110001,'Жанеси СД','120051124Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3142,110580,'Ради Станков ЕТ','126642493','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3143,110002,'ТедиКо ООД','101665413','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3144,110004,'Милен-12 ЕТ','115075814','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3145,110101,'Лешник ЕТ','828014661Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3146,110312,'Шушнев ЕООД','116547004','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3147,110076,'Есперанса-Петрова ЕТ','811167033Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3148,110022,'Емин Кьосе-Емо ЕТ','825158652Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3149,110282,'Голдън-СС ООД','115640078','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3150,110031,'Металика-99 ЕООД','115324984','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3151,110083,'Емилия Цветкова -Боби ЕТ','120043241Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3152,110095,'Хранкомерс ООД','836225188Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3153,110038,'Георги Гръков ЕТ','811205690','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3154,110440,'Салко ЕООД','108551871','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3155,110616,'ВЕН и КО ООД','15188349Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3156,110094,'Илия Павлов ЕТ','115081124Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3157,110006,'Норд-2000 ООД','115581181','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3158,110072,'Румен Пицин-Каличенкат ЕТ','811186181Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3159,142,'Плава-Васил Василев','121378335Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3160,110641,'Токико-М ЕТ','830163139Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3161,110636,'Васита ЕТ','112067004Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3162,110578,'Деков-Иван Деков ЕТ','030124858Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3163,110011,'Флора-91 ЕТ','836013045Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3164,110008,'Квит Комерс ЕТ','825323970Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3165,110153,'Сидекс ЕТ','040694931Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3166,110310,'Дани-Дафинка Томова ЕТ','130344990','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3167,110044,'Тета ЕООД','115830832','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3168,110629,'Крисмарт ЕООД','120558234','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3169,110009,'ЛН Рим-Никола Томов','115277043Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3170,110132,'Дикаол СД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3171,110084,'Димис ЕТ','115140589Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3172,110241,'Стефан Николов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3173,110783,'ВИП МАРКЕТ ЕООД','115892481','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3174,105121,'неизв','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3175,109538,'неизв','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3176,109642,'НЕИЗВЕСТЕН КЛИЕНТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3177,110358,'Момчилкооп АД','108610476','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3178,110057,'Самчо ЕТ','825269386Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3179,110795,'Сигнал 2 ООД','115034714','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3180,110112,'Импулс ЕТ','123047024Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3181,110000,'Инсайд 3 ООД','115594691','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3182,110003,'Ади-Любен Стоцов ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3183,110005,'Айнес-Невзие Мехмед ЕТ','108069152Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3184,110019,'Васил Лафазански ЕТ','822108965Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3185,110030,'Васил Арбов-П.Арбов ЕТ','115020814','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3186,110036,'Икси ЕТ','819363518Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3187,110037,'Силви-94 ЕТ','825303461','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3188,110043,'Гаранта ЕТ','020329551Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3189,110046,'Гюляр Денкчиева ЕТ','825280062Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3190,110047,'Перун ЕТ','115129498Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3191,110053,'Анезица-91-Вранчев ЕТ','112079437Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3192,110059,'Фат-Ас ЕТ','825264916Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3193,110060,'Кил-Комерс ООД','123156493','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3194,110077,'Генов-Ш ЕТ','040555351Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3195,110085,'Маги-Миглена Стефанова ЕТ','108062898Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3196,110090,'Тихомир Трифонов ЕТ','825094684Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3197,110091,'Вадемиг ЕООД','112131275','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3198,110096,'Павка 86 ЕТ','818039075Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3199,110097,'Георги Георгиев ЕТ','628031157Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3200,110107,'Макропан ЕТ','040668712Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3201,110122,'Пресли ЕТ','811049818Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3202,110476,'ГРАФИТО','115000506','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3203,110137,'Устрем 97 ООД','111022903Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3204,110480,'ДИСКОРД ООД','825314949','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3205,110166,'Джипси-Гюлбеяз Неджип ЕТ','115615395','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3206,110175,'Щурм СД','030107240Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3207,110571,'ДИНКО ДИМАНОВ ЕТ','115567299','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3208,110219,'Йорданка Никифорова ЕТ','825346950Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3209,110236,'Лотос ЕТ','828028796Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3210,110596,'ГЕНКО КОЕВ','115182531','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3211,110248,'Бялата вода-Хаджиев ЕТ','822024727Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3212,110599,'КРАМАР-КМ ООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3213,110264,'Геслин ООД','525340456Ю','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3214,110618,'ТЕДИКО ООД','101665413','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3215,110273,'Анита-Георги Хорозов ЕТ','112590684','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3216,110625,'ЦВЯТА УШЕВА ЕТ','822121090','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3217,110298,'Ремзи Якуб ЕТ','108016623','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3218,110628,'МАРИАНА КОЛЕВА ЕТ','123512637','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3219,110346,'Мони-М Фиданова ЕТ','115106722Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3220,110631,'БИБЪЛ КОМЕРС ООД','115015016','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3221,110351,'Саня-СТ Станчева ЕТ','123136359Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3222,110373,'Мариян Димитров ЕТ','126507111','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3223,110405,'Мериан ЕООД','112555459','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3224,110637,'КОМЕРС КОРЕКТ 2005 ЕООД','126654620','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3225,110660,'ВАНЯ ИЛИЕВА-ПЛОВДИВ ЕООД','115088039','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3226,110661,'ПАРАЛАКС ГРУП ЕООД','115777810','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3227,110663,'РОЗА РАЙЧЕВА ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3228,110665,'ПЪРВА ШОКОЛАДОВА БОРСА','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3229,110667,'ЕТ ТЕОДОРО БАБАРОВ КИЛ КОМЕРС','826020530','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3230,110777,'ФРЕШ ПАВЕЛ ШАРАЛИЕВ ЕТ','115860882','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3231,110177,'ЖАНА ДИМИТРОВА','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3232,110619,'ГАРАНТА 53 ЕТ','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3233,110225,'Елит-Пакт ЕООД','','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3234,109905,'Спас Костадинов ЕТ','112551521','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3235,109916,'Мария 83-М.Тозева ЕТ','115888383','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3236,107889,'Танита-92 ЕТ','1160006788','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3237,104868,'Даньо-ДД-Данчо Дюлгеров ЕТ','120021070','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3238,107890,'Светла Гигелова ЕТ','120064919','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3239,107197,'Васил Шопов-65 ЕТ','825102597','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3240,109912,'Шен -Ш.Мустафа ЕТ','115225930','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3241,109919,'Илко-И.Тодоров ЕТ','825335270','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3242,101920,'Стаси-М ЕТ','825030482','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3243,107891,'Ручей-К.Граматикова ЕТ','115882708','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3244,107892,'Ангел Чохлев ЕТ','020364381Е','','Няма данни',118,'Няма данни','Няма данни','Няма данни','Няма данни',1,1,0),
 (3245,1,'tytr','234','234','dfg',118,'dfg','dfg','dfg@mail.bg','dgf',1,1,0);
INSERT INTO `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`) VALUES 
 (3246,111112,'Magi - Dimcho Dimov ET','6556555555','111566655','dsdfsdfdsfdsf dsfdsfsdfldsl',995,'254345454','3242423','','',2,2,0);
/*!40000 ALTER TABLE `n_contragent` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_country`
--

DROP TABLE IF EXISTS `n_country`;
CREATE TABLE `n_country` (
  `id_n_country` int(11) NOT NULL auto_increment,
  `code_n_country` int(11) default NULL,
  `name_n_country` varchar(30) default NULL,
  PRIMARY KEY  (`id_n_country`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_country`
--

/*!40000 ALTER TABLE `n_country` DISABLE KEYS */;
INSERT INTO `n_country` (`id_n_country`,`code_n_country`,`name_n_country`) VALUES 
 (1,1,'България'),
 (18,15,'Русия'),
 (3,5,'САЩ'),
 (22,16,'Украйна'),
 (20,44,'Швеция'),
 (23,19,'Монголия'),
 (24,24,'Great Britain');
/*!40000 ALTER TABLE `n_country` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_doc_type_user_rights`
--

DROP TABLE IF EXISTS `n_doc_type_user_rights`;
CREATE TABLE `n_doc_type_user_rights` (
  `id_ndtur` int(11) NOT NULL auto_increment,
  `id_um` int(11) NOT NULL default '0',
  `id_sdtn` int(11) NOT NULL,
  `rights_ndtur` int(11) NOT NULL default '3',
  PRIMARY KEY  (`id_ndtur`),
  UNIQUE KEY `compzite1` (`id_um`,`id_sdtn`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_doc_type_user_rights`
--

/*!40000 ALTER TABLE `n_doc_type_user_rights` DISABLE KEYS */;
INSERT INTO `n_doc_type_user_rights` (`id_ndtur`,`id_um`,`id_sdtn`,`rights_ndtur`) VALUES 
 (1,1,1,3),
 (2,3,2,3),
 (3,4,5,3),
 (5,1,8,3),
 (6,3,10,3),
 (7,3,11,3),
 (8,3,12,3),
 (9,3,13,3),
 (10,1,7,3),
 (11,3,14,3),
 (12,4,2,3);
/*!40000 ALTER TABLE `n_doc_type_user_rights` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_expens`
--

DROP TABLE IF EXISTS `n_expens`;
CREATE TABLE `n_expens` (
  `id_n_expens` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) NOT NULL,
  `code_n_expens` int(11) NOT NULL,
  `name_n_expens` varchar(50) default NULL,
  `comments_n_expens` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_expens`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='//tablitsa za razhodite';

--
-- Dumping data for table `mida`.`n_expens`
--

/*!40000 ALTER TABLE `n_expens` DISABLE KEYS */;
INSERT INTO `n_expens` (`id_n_expens`,`id_n_group`,`code_n_expens`,`name_n_expens`,`comments_n_expens`) VALUES 
 (3,8,1,'Razhod 1',''),
 (4,9,2,'Razho 2','');
/*!40000 ALTER TABLE `n_expens` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_group`
--

DROP TABLE IF EXISTS `n_group`;
CREATE TABLE `n_group` (
  `id_n_group` int(11) NOT NULL auto_increment,
  `nom_n_group` int(11) default NULL,
  `cod_n_group` int(11) default NULL,
  `name_n_group` varchar(50) default NULL,
  `id_al` int(11) default NULL,
  PRIMARY KEY  (`id_n_group`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='vsichki vidove grupi';

--
-- Dumping data for table `mida`.`n_group`
--

/*!40000 ALTER TABLE `n_group` DISABLE KEYS */;
INSERT INTO `n_group` (`id_n_group`,`nom_n_group`,`cod_n_group`,`name_n_group`,`id_al`) VALUES 
 (2,1,101,'Фреза',1),
 (3,1,201,'Форт',2),
 (4,1,301,'Офис техника',2),
 (5,0,0,'',0),
 (22,2,1005,'Контрагент 1',2),
 (7,6,0,'',0),
 (8,6,11,'Разходи за основна дейност',5),
 (9,6,15,'Разходи за допълнителни дейности',1),
 (10,6,21,'Приходи от продажби',6),
 (11,6,25,'Приходи от услуги',1),
 (12,5,1,'Централни',1),
 (13,5,10,'Разносни',2),
 (14,3,100,'Вътрешни лица',1),
 (15,3,200,'Външни лица',1),
 (16,3,1750,'Разработчици',2),
 (17,4,2340,'Стоков skl',2),
 (18,4,0,'',0),
 (30,0,1415,'Захарни изделия',1),
 (20,0,502,'Багер',1),
 (21,0,750,'Бормашина',2),
 (23,0,97,'Цифрова камера',6),
 (24,2,295,'Доставчик7',3),
 (25,5,15,'Разпределени',4),
 (26,1,401,'Камери',6),
 (27,1,501,'Дизелово гориво',3);
INSERT INTO `n_group` (`id_n_group`,`nom_n_group`,`cod_n_group`,`name_n_group`,`id_al`) VALUES 
 (28,1,601,'Климатични инсталации',4),
 (29,0,175,'Готварска печка',4),
 (31,3,1217,'тестери',1),
 (32,5,42,'Свободни',6),
 (33,5,33,'Многоотчетни',3),
 (34,1,702,'Бензин А-93',3);
/*!40000 ALTER TABLE `n_group` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_incoms`
--

DROP TABLE IF EXISTS `n_incoms`;
CREATE TABLE `n_incoms` (
  `id_n_incoms` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) NOT NULL,
  `code_n_incoms` int(11) NOT NULL,
  `name_n_incoms` varchar(40) default NULL,
  `comments_n_incoms` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_incoms`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='//tablitsa za prihodite';

--
-- Dumping data for table `mida`.`n_incoms`
--

/*!40000 ALTER TABLE `n_incoms` DISABLE KEYS */;
INSERT INTO `n_incoms` (`id_n_incoms`,`id_n_group`,`code_n_incoms`,`name_n_incoms`,`comments_n_incoms`) VALUES 
 (2,10,1,'Prihod 1',''),
 (3,11,2,'Prihod 2',''),
 (1,10,5,'Приход от основна дейност',NULL);
/*!40000 ALTER TABLE `n_incoms` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_money`
--

DROP TABLE IF EXISTS `n_money`;
CREATE TABLE `n_money` (
  `id_n_money` int(11) NOT NULL auto_increment,
  `cod_n_money` int(11) default NULL,
  `cod_lat_n_money` varchar(11) default NULL,
  `name_n_money` varchar(50) default NULL,
  `comments_n_money` varchar(100) default NULL,
  PRIMARY KEY  (`id_n_money`),
  UNIQUE KEY `Index_2` (`cod_lat_n_money`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='opisanie na valutite';

--
-- Dumping data for table `mida`.`n_money`
--

/*!40000 ALTER TABLE `n_money` DISABLE KEYS */;
INSERT INTO `n_money` (`id_n_money`,`cod_n_money`,`cod_lat_n_money`,`name_n_money`,`comments_n_money`) VALUES 
 (1,0,'BGL','Български лев',''),
 (2,0,'USD','Щатски долар','Международна конвертитуема валута'),
 (3,0,'EU','Евро',NULL);
/*!40000 ALTER TABLE `n_money` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_nm`
--

DROP TABLE IF EXISTS `n_nm`;
CREATE TABLE `n_nm` (
  `id_n_nm` int(11) NOT NULL auto_increment,
  `postcode_n_nm` int(11) NOT NULL,
  `name_n_nm` varchar(20) default NULL,
  `id_n_oblast` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id_n_nm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='naseleni mesta';

--
-- Dumping data for table `mida`.`n_nm`
--

/*!40000 ALTER TABLE `n_nm` DISABLE KEYS */;
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1,4645,'АБЛАНИЦА',14),
 (2,5574,'АБЛАНИЦА',12),
 (3,2932,'АБЛАНИЦА',1),
 (4,9407,'АБРИТ',9),
 (5,6797,'АВРАМОВО',10),
 (6,2795,'АВРАМОВО',1),
 (7,9135,'АВРЕН',3),
 (8,6930,'АВРЕН',10),
 (9,5431,'АГАТОВО',8),
 (10,5350,'АЗМАНИТЕ',8),
 (11,7538,'АЙДЕМИР',20),
 (12,6639,'АЙРОВО',10),
 (13,8500,'АЙТОС',2),
 (14,4483,'АКАНДЖИЕВО',14),
 (15,3727,'АКАЦИЕВО',6),
 (16,9154,'АКСАКОВО',3),
 (17,4984,'АЛАМОВЦИ',22),
 (18,6850,'АЛБАНЦИ',10),
 (19,9620,'АЛБЕНА',9),
 (20,7752,'АЛВАНОВО',26),
 (21,2222,'АЛДОМИРОВЦИ',23),
 (22,4411,'АЛЕКО КОНСТАНТИНОВО',14),
 (23,7555,'АЛЕКОВО',20),
 (24,5288,'АЛЕКОВО',5),
 (25,9404,'АЛЕКСАНДРИЯ',9),
 (26,4656,'АЛЕКСАНДРОВА',14),
 (27,5560,'АЛЕКСАНДРОВО',12),
 (28,6154,'АЛЕКСАНДРОВО',25),
 (29,8211,'АЛЕКСАНДРОВО',2);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (30,5289,'АЛЕКСАНДРОВО',5),
 (31,9829,'АЛЕКСАНДРОВО',28),
 (32,8653,'АЛЕКСАНДРОВО',29),
 (33,7761,'АЛЕКСАНДРОВО',26),
 (34,6351,'АЛЕКСАНДРОВО',27),
 (35,9565,'АЛЕКСАНДЪР СТАМБОЛИ',9),
 (36,4621,'АЛЕНДАРОВА',14),
 (37,4787,'АЛИГОВСКА',22),
 (38,2019,'АЛИНО',23),
 (39,3251,'АЛТИМИР',7),
 (40,7570,'АЛФАТАР',20),
 (41,9496,'АЛЦЕК',9),
 (42,6373,'АНГЕЛ ВОЙВОДА',27),
 (43,9483,'АНГЕЛАРИЙ',9),
 (44,5342,'АНГЕЛОВ',8),
 (45,2085,'АНГЕЛОВ ДОЛ',23),
 (46,4331,'АНЕВО',17),
 (47,3776,'АНТИМОВО',6),
 (48,7628,'АНТИМОВО',20),
 (49,2089,'АНТОН',23),
 (50,7970,'АНТОНОВО',26),
 (51,5094,'АПЛАЦИ',5),
 (52,2128,'АПРИЛОВО',23),
 (53,6281,'АПРИЛОВО',25),
 (54,7864,'АПРИЛОВО',26),
 (55,5641,'АПРИЛЦИ',12),
 (56,4445,'АПРИЛЦИ',14);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (57,5029,'АРБАНАСИ',5),
 (58,4790,'АРДА',22),
 (59,6750,'АРДИНО',10),
 (60,2386,'АРЗАН',15),
 (61,9246,'АРКОВНА',3),
 (62,5347,'АРМЕНИТЕ',8),
 (63,5363,'АРМЯНКОВЦИ',8),
 (64,6069,'АРНАУТИТО',25),
 (65,4922,'АРПАДЖИК',22),
 (66,3770,'АРЧАР',6),
 (67,6149,'АСЕН',25),
 (68,5738,'АСЕН',12),
 (69,4230,'АСЕНОВГРАД',17),
 (70,8933,'АСЕНОВЕЦ',21),
 (71,5957,'АСЕНОВО',16),
 (72,5159,'АСЕНОВО',5),
 (73,8667,'АСЕНОВО',29),
 (74,5913,'АСЕНОВЦИ',16),
 (75,9260,'АСПАРУХОВО',3),
 (76,8485,'АСПАРУХОВО',2),
 (77,5914,'АСПАРУХОВО',16),
 (78,3661,'АСПАРУХОВО',13),
 (79,8140,'АТИЯ',2),
 (80,8683,'АТОЛОВО',29),
 (81,6821,'АУСТА',10),
 (82,8217,'АХЕЛОЙ',2),
 (83,4128,'АХМАТОВО',17),
 (84,6761,'АХРЯНСКО',10),
 (85,8280,'АХТОПОЛ',2),
 (86,5632,'БАБА СТАНА',12);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (87,7861,'БАБА ТОНКА',26),
 (88,4156,'БАБЕК',17),
 (89,2683,'БАБИНО',11),
 (90,2668,'БАБИНСКА РЕКА',11),
 (91,5726,'БАБИНЦИ',12),
 (92,2365,'БАБИЦА',15),
 (93,4774,'БАБЛОН',22),
 (94,7068,'БАБОВО',19),
 (95,7573,'БАБУК',20),
 (96,2784,'БАБЯК',1),
 (97,5094,'БАГАЛЕВЦИ',5),
 (98,6749,'БАГРА',10),
 (99,2530,'БАГРЕНЦИ',11),
 (100,6944,'БАГРИЛЦИ',10),
 (101,6819,'БАГРЯНКА',10),
 (102,5093,'БАДЕВЦИ',5),
 (103,2676,'БАДИНО',11),
 (104,5441,'БАЕВА ЛИВАДА',8),
 (105,5304,'БАЕВЦИ',8),
 (106,5087,'БАЕВЦИ',5),
 (107,5095,'БАЖДАРИ',5),
 (108,5861,'БАЙКАЛ',16),
 (109,2427,'БАЙКАЛСКО',15),
 (110,9767,'БАЙКОВО',28),
 (111,2133,'БАЙЛОВО',23),
 (112,6771,'БАЙЧЕВО',10),
 (113,6698,'БАКАЛИТЕ',10),
 (114,2295,'БАКЬОВО',23),
 (115,6816,'БАЛАБАНОВО',10),
 (116,5615,'БАЛАБАНСКА',12);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (117,8471,'БАЛАБАНЧЕВО',2),
 (118,5370,'БАЛАЛЕЯ',8),
 (119,5301,'БАЛАНИТЕ',8),
 (120,2680,'БАЛАНОВО',11),
 (121,5064,'БАЛВАН',5),
 (122,5388,'БАЛВАНЦИТЕ',8),
 (123,2948,'БАЛДЕВО',1),
 (124,3797,'БАЛЕЙ',6),
 (125,9485,'БАЛИК',9),
 (126,5343,'БАЛИНОВЦИ',8),
 (127,6363,'БАЛКАН',27),
 (128,4245,'БАЛКАН МАХАЛА',17),
 (129,5634,'БАЛКАНЕЦ',12),
 (130,7265,'БАЛКАНСКИ',18),
 (131,9549,'БАЛКАНЦИ',9),
 (132,5162,'БАЛКАНЦИ',5),
 (133,5081,'БАЛУЦИ',5),
 (134,9600,'БАЛЧИК',9),
 (135,1217,'БАЛША',23),
 (136,2060,'БАЛЬОВЦИ',23),
 (137,3529,'БАЛЮВИЦА',13),
 (138,5370,'БАНАРИ',8),
 (139,5351,'БАНГЕЙЦИ',8),
 (140,8125,'БАНЕВО',2),
 (141,7167,'БАНИСКА',19),
 (142,4940,'БАНИТЕ',22),
 (143,3077,'БАНИЦА',7),
 (144,2905,'БАНИЧАН',1),
 (145,2388,'БАНИЩЕ',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (146,7997,'БАНКОВЕЦ',26),
 (147,5300,'БАНКОВЦИ',8),
 (148,1320,'БАНКЯ',23),
 (149,2466,'БАНКЯ',15),
 (150,9144,'БАНОВО',3),
 (151,2770,'БАНСКО',1),
 (152,2060,'БАНЧОВЦИ',23),
 (153,4360,'БАНЯ',17),
 (154,8239,'БАНЯ',2),
 (155,8914,'БАНЯ',21),
 (156,4523,'БАНЯ',14),
 (157,2778,'БАНЯ',1),
 (158,2634,'БАРАКОВО',11),
 (159,6910,'БАРАЦИ',10),
 (160,4830,'БАРУТИН',22),
 (161,7071,'БАСАРБОВО',19),
 (162,2883,'БАСКАЛЦИ',1),
 (163,8218,'БАТА',2),
 (164,4580,'БАТАК',14),
 (165,5228,'БАТАК',5),
 (166,2340,'БАТАНОВЦИ',15),
 (167,7172,'БАТИН',19),
 (168,7169,'БАТИШНИЦА',19),
 (169,9364,'БАТОВО',9),
 (170,5470,'БАТОШЕВО',8),
 (171,2295,'БАТУЛИЯ',23),
 (172,5764,'БАТУЛЦИ',12),
 (173,3068,'БАУРЕНЕ',7),
 (174,2219,'БАХАЛИН',23),
 (175,5567,'БАХОВИЦА',12),
 (176,5367,'БАХРЕЦИ',8);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (177,5948,'БАЦОВА МАХАЛА',16),
 (178,2769,'БАЧЕВО',1),
 (179,4251,'БАЧКОВО',17),
 (180,6777,'БАШЕВО',10),
 (181,7619,'БАЩИНО',20),
 (182,6669,'БАЩИНО',10),
 (183,6068,'БАЩИНО',25),
 (184,7745,'БАЯЧЕВО',26),
 (185,9381,'БДИНЦИ',9),
 (186,5084,'БЕБРОВО',5),
 (187,5872,'БЕГЛЕЖ',16),
 (188,4166,'БЕГОВО',17),
 (189,2395,'БЕГУНОВЦИ',15),
 (190,4359,'БЕГУНЦИ',17),
 (191,4817,'БЕДЕН',22),
 (192,9924,'БЕДЖЕНЕ',28),
 (193,6716,'БЕДРОВО',10),
 (194,9567,'БЕЖАНОВО',9),
 (195,5792,'БЕЖАНОВО',12),
 (196,9637,'БЕЗВОДИЦА',9),
 (197,6718,'БЕЗВОДНО',10),
 (198,2236,'БЕЗДЕН',23),
 (199,3454,'БЕЗДЕНИЦА',13),
 (200,9480,'БЕЗМЕР',9),
 (201,8637,'БЕЗМЕР',29),
 (202,5094,'БЕЙКОВЦИ',5),
 (203,5673,'БЕКЛЕМЕТО',12),
 (204,5300,'БЕКРИИТЕ',8),
 (205,2793,'БЕЛ КАМЕН',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (206,3965,'БЕЛА',6),
 (207,3731,'БЕЛА РАДА',6),
 (208,2881,'БЕЛАСИЦА',1),
 (209,4124,'БЕЛАЩИЦА',17),
 (210,9690,'БЕЛГУН',9),
 (211,4738,'БЕЛЕВ ДОЛ',22),
 (212,2800,'БЕЛЕВЕХЧЕВО',1),
 (213,8345,'БЕЛЕВРЕН',2),
 (214,2085,'БЕЛЕГА',23),
 (215,5930,'БЕЛЕНЕ',16),
 (216,5783,'БЕЛЕНЦИ',12),
 (217,3441,'БЕЛИ БРЕГ',13),
 (218,3447,'БЕЛИ БРОД',13),
 (219,6262,'БЕЛИ БРЯГ',25),
 (220,6702,'БЕЛИ ВИР',10),
 (221,6590,'БЕЛИ ДОЛ',27),
 (222,3040,'БЕЛИ ИЗВОР',7),
 (223,2011,'БЕЛИ ИСКЪР',23),
 (224,7293,'БЕЛИ ЛОМ',18),
 (225,5662,'БЕЛИ ОСЪМ',12),
 (226,6689,'БЕЛИ ПЛАСТ',10),
 (227,8316,'БЕЛИЛА',2),
 (228,3462,'БЕЛИМЕЛ',13),
 (229,7432,'БЕЛИНЦИ',18),
 (230,2780,'БЕЛИЦА',1),
 (231,2062,'БЕЛИЦА',23),
 (232,4242,'БЕЛИЦА',17),
 (233,6557,'БЕЛИЦА',27),
 (234,5363,'БЕЛИЦА',8);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (235,7648,'БЕЛИЦА',20),
 (236,5628,'БЕЛИШ',12),
 (237,2709,'БЕЛО ПОЛЕ',1),
 (238,3961,'БЕЛО ПОЛЕ',6),
 (239,7321,'БЕЛОВЕЦ',18),
 (240,4182,'БЕЛОВИЦА',17),
 (241,4470,'БЕЛОВО',14),
 (242,9230,'БЕЛОГРАДЕЦ',3),
 (243,3900,'БЕЛОГРАДЧИК',6),
 (244,8219,'БЕЛОДОЛ',2),
 (245,4130,'БЕЛОЗЕМ',17),
 (246,9801,'БЕЛОКОПИТОВО',28),
 (247,7917,'БЕЛОМОРЦИ',26),
 (248,5340,'БЕЛОМЪЖИТЕ',8),
 (249,6588,'БЕЛОПОЛЦИ',27),
 (250,6584,'БЕЛОПОЛЯНЕ',27),
 (251,2132,'БЕЛОПОПЦИ',23),
 (252,9178,'БЕЛОСЛАВ',3),
 (253,3499,'БЕЛОТИНЦИ',13),
 (254,7138,'БЕЛЦОВ',19),
 (255,5035,'БЕЛЧЕВЦИ',5),
 (256,2025,'БЕЛЧИН',23),
 (257,2024,'БЕЛЧИНСКИ БАНИ',23),
 (258,2824,'БЕЛЬОВО',1),
 (259,5031,'БЕЛЯКОВЕЦ',5),
 (260,7134,'БЕЛЯНОВО',19),
 (261,9133,'БЕНКОВСКИ',3);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (262,9380,'БЕНКОВСКИ',9),
 (263,6865,'БЕНКОВСКИ',10),
 (264,4201,'БЕНКОВСКИ',17),
 (265,2076,'БЕНКОВСКИ',23),
 (266,6055,'БЕНКОВСКИ',25),
 (267,2488,'БЕРАЙНЦИ',15),
 (268,2212,'БЕРЕНДЕ',23),
 (269,2435,'БЕРЕНДЕ',15),
 (270,2212,'БЕРЕНДЕ ИЗВОР',23),
 (271,5438,'БЕРИЕВО',8),
 (272,3500,'БЕРКОВИЦА',13),
 (273,7857,'БЕРКОВСКИ',26),
 (274,5093,'БЕРКОВЦИ',5),
 (275,8448,'БЕРОНОВО',2),
 (276,2587,'БЕРСИН',11),
 (277,2934,'БЕСЛЕН',1),
 (278,6698,'БЕСНУРКА',10),
 (279,5849,'БИВОЛАРЕ',16),
 (280,6837,'БИВОЛЯНЕ',10),
 (281,5035,'БИЖОВЦИ',5),
 (282,5350,'БИЖОВЦИ',8),
 (283,8885,'БИКОВО',21),
 (284,2383,'БИЛИНЦИ',15),
 (285,8551,'БИЛКА',2),
 (286,5370,'БИЛКИНИ',8),
 (287,9691,'БИЛО',9),
 (288,8846,'БИЛО',21),
 (289,4789,'БИЛЯНСКА',22),
 (290,8855,'БИНКОС',21);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (291,4650,'БИРКОВА',14),
 (292,6470,'БИСЕР',27),
 (293,7334,'БИСЕРЦИ',18),
 (294,7557,'БИСТРА',20),
 (295,7777,'БИСТРА',26),
 (296,7121,'БИСТРЕНЦИ',19),
 (297,9412,'БИСТРЕЦ',9),
 (298,8334,'БИСТРЕЦ',2),
 (299,3527,'БИСТРИЛИЦА',13),
 (300,2724,'БИСТРИЦА',1),
 (301,2644,'БИСТРИЦА',11),
 (302,1444,'БИСТРИЦА',23),
 (303,6769,'БИСТРОГЛЕД',10),
 (304,3488,'БЛАГОВО',13),
 (305,9812,'БЛАГОВО',28),
 (306,2700,'БЛАГОЕВГРАД',1),
 (307,7275,'БЛАГОЕВО',18),
 (308,5178,'БЛАГОЕВО',5),
 (309,6955,'БЛАГУН',10),
 (310,2678,'БЛАЖИЕВО',11),
 (311,2548,'БЛАТЕЦ',11),
 (312,8878,'БЛАТЕЦ',21),
 (313,2441,'БЛАТЕШНИЦА',15),
 (314,2617,'БЛАТИНО',11),
 (315,4537,'БЛАТНИЦА',14),
 (316,2657,'БЛАТО',11),
 (317,2941,'БЛАТСКА',1),
 (318,6742,'БЛЕНИКА',10),
 (319,8365,'БЛИЗНАК',2);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (320,9132,'БЛИЗНАЦИ',3),
 (321,9787,'БЛИЗНАЦИ',28),
 (322,8896,'БЛИЗНЕЦ',21),
 (323,9240,'БЛЪСКОВО',3),
 (324,5078,'БЛЪСКОВЦИ',5),
 (325,5453,'БОАЗЪТ',8),
 (326,5300,'БОБЕВЦИ',8),
 (327,2567,'БОБЕШИНО',11),
 (328,2670,'БОБОВ ДОЛ',11),
 (329,9616,'БОБОВЕЦ',9),
 (330,2454,'БОБОРАЦИ',15),
 (331,2660,'БОБОШЕВО',11),
 (332,2270,'БОВ',23),
 (333,5421,'БОГАТОВО',8),
 (334,9348,'БОГДАН',9),
 (335,4343,'БОГДАН',17),
 (336,4115,'БОГДАНИЦА',17),
 (337,2116,'БОГДАНЛИЯ',23),
 (338,2341,'БОГДАНОВ ДОЛ',15),
 (339,8948,'БОГДАНОВО',21),
 (340,8337,'БОГДАНОВО',2),
 (341,2060,'БОГДАНОВЦИ',23),
 (342,5084,'БОГДАНСКО',5),
 (343,7611,'БОГДАНЦИ',20),
 (344,7449,'БОГДАНЦИ',18),
 (345,5301,'БОГДАНЧОВЦИ',8),
 (346,2467,'БОГОИНА',15),
 (347,2931,'БОГОЛИН',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (348,6460,'БОГОМИЛ',27),
 (349,6065,'БОГОМИЛОВО',25),
 (350,7458,'БОГОМИЛЦИ',18),
 (351,7997,'БОГОМОЛСКО',26),
 (352,7542,'БОГОРОВО',20),
 (353,8687,'БОГОРОВО',29),
 (354,2509,'БОГОСЛОВ',11),
 (355,4855,'БОГУТЕВО',22),
 (356,2235,'БОГЬОВЦИ',23),
 (357,3128,'БОДЕНЕЦ',7),
 (358,6446,'БОДРОВО',27),
 (359,2086,'БОДЯТ',23),
 (360,4964,'БОЕВО',22),
 (361,2066,'БОЕРИЦА',23),
 (362,6744,'БОЖАК',10),
 (363,9475,'БОЖАН',9),
 (364,9677,'БОЖАНОВО1',7),
 (365,2811,'БОЖДОВО',1),
 (366,8844,'БОЖЕВЦИ',21),
 (367,2157,'БОЖЕНИЦА',23),
 (368,5349,'БОЖЕНЦИТЕ',8),
 (369,7089,'БОЖИЧЕН',19),
 (370,9656,'БОЖУРЕЦ',9),
 (371,5848,'БОЖУРИЦА',16),
 (372,2227,'БОЖУРИЩЕ',23),
 (373,7765,'БОЖУРКА',26),
 (374,5926,'БОЖУРЛУК',16),
 (375,9874,'БОЖУРОВО',28),
 (376,9368,'БОЖУРОВО',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (377,7335,'БОЖУРОВО',18),
 (378,6704,'БОЖУРЦИ',10),
 (379,8872,'БОЗАДЖИИ',21),
 (380,9273,'БОЗВЕЛИЙСКО',3),
 (381,6269,'БОЗДУГАНОВО',25),
 (382,4654,'БОЗЬОВА',14),
 (383,7683,'БОИЛ',20),
 (384,2181,'БОЙКОВЕЦ',23),
 (385,4103,'БОЙКОВО',17),
 (386,5080,'БОЙКОВЦИ',5),
 (387,6958,'БОЙНИК',10),
 (388,3840,'БОЙНИЦА',6),
 (389,6730,'БОЙНО',10),
 (390,5307,'БОЙНОВЦИ',8),
 (391,5050,'БОЙЧЕВИ КОЛИБИ',5),
 (392,5309,'БОЙЧЕТА',8),
 (393,3430,'БОЙЧИНОВЦИ',13),
 (394,5038,'БОЙЧОВЦИ',5),
 (395,3517,'БОКИЛОВЦИ',13),
 (396,5340,'БОЛТАТА',8),
 (397,4132,'БОЛЯРИНО',17),
 (398,8720,'БОЛЯРОВО',29),
 (399,6474,'БОЛЯРСКИ ИЗВОР',27),
 (400,8631,'БОЛЯРСКО',29),
 (401,9124,'БОЛЯРЦИ',3),
 (402,6681,'БОЛЯРЦИ',10),
 (403,4114,'БОЛЯРЦИ',17),
 (404,9472,'БОНЕВО',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (405,4233,'БОР',17),
 (406,4144,'БОРЕЦ',17),
 (407,4961,'БОРИЕ',22),
 (408,2064,'БОРИКА',23),
 (409,4926,'БОРИКА',22),
 (410,5335,'БОРИКИ',8),
 (411,4762,'БОРИКОВО',22),
 (412,3838,'БОРИЛОВЕЦ',6),
 (413,6046,'БОРИЛОВО',25),
 (414,5672,'БОРИМА',12),
 (415,4464,'БОРИМЕЧКОВО',14),
 (416,4824,'БОРИНО',22),
 (417,4905,'БОРИНОВО',22),
 (418,8999,'БОРИНЦИ',21),
 (419,5889,'БОРИСЛАВ',16),
 (420,6478,'БОРИСЛАВЦИ',27),
 (421,8731,'БОРИСОВО',29),
 (422,7064,'БОРИСОВО',19),
 (423,2407,'БОРНАРЕВО',15),
 (424,8898,'БОРОВ ДОЛ',21),
 (425,3240,'БОРОВАН',7),
 (426,2626,'БОРОВЕЦ',11),
 (427,2010,'БОРОВЕЦ',23),
 (428,4923,'БОРОВИНА',22),
 (429,6790,'БОРОВИЦА',10),
 (430,3955,'БОРОВИЦА',6),
 (431,2884,'БОРОВИЧЕНЕ',1),
 (432,7174,'БОРОВО',19),
 (433,2904,'БОРОВО',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (434,4243,'БОРОВО',17),
 (435,6070,'БОРОВО',25),
 (436,6698,'БОРОВСКО',10),
 (437,3528,'БОРОВЦИ',13),
 (438,5333,'БОРСКОТО',8),
 (439,6187,'БОРУЩИЦА',25),
 (440,9752,'БОРЦИ',28),
 (441,9255,'БОРЯНА',3),
 (442,5084,'БОСЕВЦИ',5),
 (443,6697,'БОСИЛИЦА',10),
 (444,4945,'БОСИЛКОВО',22),
 (445,8446,'БОСИЛКОВО',2),
 (446,7128,'БОСИЛКОВЦИ',19),
 (447,7533,'БОСНА',20),
 (448,2345,'БОСНЕК',15),
 (449,7914,'БОСТАН',26),
 (450,3952,'БОСТАНИТЕ',6),
 (451,6716,'БОСТАНЦИ',10),
 (452,4745,'БОСТИНА',22),
 (453,2140,'БОТЕВГРАД',23),
 (454,9159,'БОТЕВО',3),
 (455,3746,'БОТЕВО',6),
 (456,3634,'БОТЕВО',13),
 (457,8638,'БОТЕВО',29),
 (458,3353,'БОТЕВО',7),
 (459,7125,'БОТРОВ',19),
 (460,3046,'БОТУНЯ',7),
 (461,6589,'БОТУРЧЕ',27),
 (462,2483,'БОХОВА',15),
 (463,5891,'БОХОТ',16);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (464,5035,'БОЧКОВЦИ',5),
 (465,4481,'БОШУЛЯ',14),
 (466,8640,'БОЯДЖИК',29),
 (467,9771,'БОЯН',28),
 (468,6374,'БОЯН БОТЕВО',27),
 (469,9147,'БОЯНА',3),
 (470,3832,'БОЯНОВО',6),
 (471,8730,'БОЯНОВО',29),
 (472,5041,'БОЯНОВЦИ',5),
 (473,4246,'БОЯНЦИ',17),
 (474,7568,'БРАДВАРИ',20),
 (475,7855,'БРАКНИЦА',26),
 (476,2251,'БРАКЬОВЦИ',23),
 (477,4109,'БРАНИПОЛЕ',17),
 (478,6463,'БРАНИЦА',27),
 (479,9967,'БРАНИЧЕВО',28),
 (480,9361,'БРАНИЩЕ',9),
 (481,5041,'БРАНКОВЦИ',5),
 (482,3824,'БРАНКОВЦИ',6),
 (483,8983,'БРАТАН',21),
 (484,4412,'БРАТАНИЦА',14),
 (485,8111,'БРАТОВО',2),
 (486,7764,'БРАТОВО',26),
 (487,2222,'БРАТУШКОВО',23),
 (488,6250,'БРАТЯ ДАСКАЛОВИ',25),
 (489,6057,'БРАТЯ КУНЧЕВИ',25),
 (490,4579,'БРАЦИГОВО',14),
 (491,5862,'БРЕГАРЕ',16);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (492,3790,'БРЕГОВО',6),
 (493,2750,'БРЕЖАНИ',1),
 (494,5360,'БРЕЖНИЦИТЕ',8),
 (495,4959,'БРЕЗА',22),
 (496,4849,'БРЕЗЕ',22),
 (497,2278,'БРЕЗЕ',23),
 (498,6792,'БРЕЗЕН',10),
 (499,2360,'БРЕЗНИК',15),
 (500,2972,'БРЕЗНИЦА',1),
 (501,2385,'БРЕЗНИШКИ ИЗВОР',15),
 (502,2292,'БРЕЗОВДОЛ',23),
 (503,4160,'БРЕЗОВО',17),
 (504,5083,'БРЕЗОВО',5),
 (505,5721,'БРЕЗОВО',12),
 (506,3260,'БРЕНИЦА',7),
 (507,7649,'БРЕНИЦА',20),
 (508,5971,'БРЕСТ',16),
 (509,2558,'БРЕСТ',11),
 (510,9290,'БРЕСТАК',3),
 (511,2072,'БРЕСТАКА',23),
 (512,5992,'БРЕСТЕ',16),
 (513,4107,'БРЕСТНИК',17),
 (514,9484,'БРЕСТНИЦА',9),
 (515,5761,'БРЕСТНИЦА',12),
 (516,6194,'БРЕСТОВА',25),
 (517,7331,'БРЕСТОВЕНЕ',18),
 (518,5884,'БРЕСТОВЕЦ',16),
 (519,7177,'БРЕСТОВИЦА',19),
 (520,4224,'БРЕСТОВИЦА',17);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (521,5551,'БРЕСТОВО',12),
 (522,2735,'БРЕСТОВО',1),
 (523,6442,'БРОД',27),
 (524,8282,'БРОДИЛОВО',2),
 (525,6737,'БРОШ',10),
 (526,3680,'БРУСАРЦИ',13),
 (527,6488,'БРУСЕВЦИ',27),
 (528,2185,'БРУСЕН',23),
 (529,3126,'БРУСЕН',7),
 (530,6595,'БРУСИНО',27),
 (531,2372,'БРУСНИК',15),
 (532,5342,'БРЪНЕЦИТЕ',8),
 (533,5081,'БРЪЧКОВЦИ',5),
 (534,7069,'БРЪШЛЕН',19),
 (535,8357,'БРЪШЛЯН',2),
 (536,5844,'БРЪШЛЯНИЦА',16),
 (537,4821,'БРЪЩЕН',22),
 (538,6929,'БРЯГОВЕЦ',10),
 (539,5152,'БРЯГОВИЦА',5),
 (540,4294,'БРЯГОВО',17),
 (541,6355,'БРЯГОВО',27),
 (542,6434,'БРЯСТ',27),
 (543,8113,'БРЯСТОВЕЦ',2),
 (544,9647,'БРЯСТОВО',9),
 (545,6345,'БРЯСТОВО',27),
 (546,8935,'БРЯСТОВО',21),
 (547,6582,'БУБИНО',27),
 (548,2844,'БУДИЛЦИ',1),
 (549,6159,'БУЗОВГРАД',25);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (550,2060,'БУЗЯКОВЦИ',23),
 (551,9756,'БУЙНОВИЦА',28),
 (552,4812,'БУЙНОВО',22),
 (553,7753,'БУЙНОВО',18),
 (554,5097,'БУЙНОВЦИ',5),
 (555,6966,'БУК',10),
 (556,7996,'БУКАК',26),
 (557,4763,'БУКАТА',22),
 (558,4782,'БУКАЦИТЕ',22),
 (559,4935,'БУКОВА ПОЛЯНА',22),
 (560,3678,'БУКОВЕЦ',13),
 (561,3242,'БУКОВЕЦ',7),
 (562,5063,'БУКОВЕЦ',5),
 (563,3762,'БУКОВЕЦ',6),
 (564,2293,'БУКОВЕЦ',23),
 (565,5839,'БУКОВЛЪК',16),
 (566,2915,'БУКОВО',1),
 (567,4930,'БУКОВО',22),
 (568,4295,'БУКОВО',17),
 (569,2253,'БУКОРОВЦИ',23),
 (570,9115,'БУЛАИР',3),
 (571,2539,'БУНОВО',11),
 (572,2074,'БУНОВО',23),
 (573,2792,'БУНЦЕВО',1),
 (574,2628,'БУРАНОВО',11),
 (575,8000,'БУРГАС',2),
 (576,8124,'БУРГАСКИ МИН. БАНИ',2),
 (577,4998,'БУРЕВО',22),
 (578,5375,'БУРЯ',8);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (579,2486,'БУСИНЦИ',15),
 (580,1520,'БУСМАНЦИ',23),
 (581,3326,'БУТАН',7),
 (582,5232,'БУТОВО',5),
 (583,4652,'БУТРЕВА',14),
 (584,2473,'БУТРОИНЦИ',15),
 (585,1830,'БУХОВО',23),
 (586,7757,'БУХОВЦИ',26),
 (587,2236,'БУЧИН ПРОХОД',23),
 (588,2742,'БУЧИНО',1),
 (589,5380,'БУЧУКОВЦИ',8),
 (590,6058,'БЪДЕЩЕ',25),
 (591,3635,'БЪЗОВЕЦ',13),
 (592,7168,'БЪЗОВЕЦ',19),
 (593,2555,'БЪЗОВИЦА',11),
 (594,7077,'БЪЗЪН',19),
 (595,7944,'БЪЛГАРАНОВО',26),
 (596,9660,'БЪЛГАРЕВО',9),
 (597,5923,'БЪЛГАРЕНЕ',16),
 (598,5583,'БЪЛГАРЕНЕ',12),
 (599,6274,'БЪЛГАРЕНЕ',25),
 (600,5441,'БЪЛГАРИ',8),
 (601,8274,'БЪЛГАРИ',2),
 (602,6460,'БЪЛГАРИН',27),
 (603,7544,'БЪЛГАРКА',20),
 (604,8110,'БЪЛГАРОВО',2),
 (605,6569,'БЪЛГАРСКА ПОЛЯНА',27),
 (606,5733,'БЪЛГАРСКИ ИЗВОР',12);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (607,5284,'БЪЛГАРСКО СЛИВОВО',5),
 (608,2746,'БЪЛГАРЧЕВО',1),
 (609,6186,'БЪНЗАРЕТО',25),
 (610,9117,'БЪРДАРЕВО',3),
 (611,5360,'БЪРДАРИТЕ',8),
 (612,3259,'БЪРДАРСКИ ГЕРАН',7),
 (613,5365,'БЪРДЕНИ',8),
 (614,2060,'БЪРДО',23),
 (615,7448,'БЪРДОКВА',18),
 (616,6710,'БЪРЗА РЕКА',10),
 (617,6884,'БЪРЗЕЯ',10),
 (618,3359,'БЪРЗИНА',7),
 (619,9274,'БЪРЗИЦА',3),
 (620,3520,'БЪРЗИЯ',13),
 (621,5877,'БЪРКАЧ',16),
 (622,3245,'БЪРКАЧЕВО',7),
 (623,2222,'БЪРЛОЖНИЦА',23),
 (624,2255,'БЪРЛЯ',23),
 (625,4965,'БЪРЧЕВО',22),
 (626,4527,'БЪТА',14),
 (627,4587,'БЯГА',14),
 (628,9824,'БЯЛ БРЯГ',28),
 (629,6770,'БЯЛ ИЗВОР',10),
 (630,6073,'БЯЛ ИЗВОР',25),
 (631,8961,'БЯЛ КЛАДЕНЕЦ',21),
 (632,6377,'БЯЛ КЛАДЕНЕЦ',27),
 (633,9101,'БЯЛА',3),
 (634,7100,'БЯЛА',19);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (635,8850,'БЯЛА',21),
 (636,5932,'БЯЛА ВОДА',16),
 (637,8361,'БЯЛА ВОДА',2),
 (638,8892,'БЯЛА ПАЛАНКА',21),
 (639,6662,'БЯЛА ПОЛЯНА',10),
 (640,9882,'БЯЛА РЕКА',28),
 (641,4285,'БЯЛА РЕКА',17),
 (642,4966,'БЯЛА РЕКА',22),
 (643,5237,'БЯЛА РЕКА',5),
 (644,3200,'БЯЛА СЛАТИНА',7),
 (645,5220,'БЯЛА ЧЕРКВА',5),
 (646,6590,'БЯЛГРАДЕЦ',27),
 (647,6656,'БЯЛКА',10),
 (648,5344,'БЯЛКОВО',8),
 (649,5084,'БЯЛКОВЦИ',5),
 (650,6054,'БЯЛО ПОЛЕ',25),
 (651,7422,'ВАЗОВО',18),
 (652,2060,'ВАКАРЕЛ',23),
 (653,9672,'ВАКЛИНО',9),
 (654,2957,'ВАКЛИНОВО',1),
 (655,2590,'ВАКСЕВО',11),
 (656,5462,'ВАЛЕВЦИ',8),
 (657,5099,'ВАЛЕТО',5),
 (658,5911,'ВАРАНА',16),
 (659,4492,'ВАРВАРА',14),
 (660,8278,'ВАРВАРА',2),
 (661,5281,'ВАРДИМ',5),
 (662,7780,'ВАРДУН',26);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (663,9000,'ВАРНА',3),
 (664,7638,'ВАРНЕНЦИ',20),
 (665,6536,'ВАРНИК',27),
 (666,8338,'ВАРОВНИК',2),
 (667,9814,'ВАСИЛ ДРУМЕВ',28),
 (668,7571,'ВАСИЛ ЛЕВСКИ',20),
 (669,4363,'ВАСИЛ ЛЕВСКИ',17),
 (670,6068,'ВАСИЛ ЛЕВСКИ',25),
 (671,7749,'ВАСИЛ ЛЕВСКИ',26),
 (672,9543,'ВАСИЛЕВО',9),
 (673,5576,'ВАСИЛКОВСКА МАХАЛА',12),
 (674,3658,'ВАСИЛОВЦИ',13),
 (675,2205,'ВАСИЛОВЦИ',23),
 (676,5723,'ВАСИЛЬОВО',12),
 (677,6556,'ВАСКОВО',27),
 (678,4364,'ВЕДРАРЕ',17),
 (679,9355,'ВЕДРИНА',9),
 (680,8447,'ВЕДРОВО',2),
 (681,8457,'ВЕЗЕНКОВО',2),
 (682,9941,'ВЕКИЛСКИ',28),
 (683,5351,'ВЕЛЕНЦИ',8),
 (684,6727,'ВЕЛЕШАНИ',10),
 (685,8271,'ВЕЛИКА',2),
 (686,6431,'ВЕЛИКАН',27),
 (687,6845,'ВЕЛИКДЕНЧЕ',10),
 (688,7916,'ВЕЛИКДЕНЧЕ',26),
 (689,9850,'ВЕЛИКИ ПРЕСЛАВ',28);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (690,5000,'ВЕЛИКО ТЪРНОВО',5),
 (691,9547,'ВЕЛИКОВО',9),
 (692,6282,'ВЕЛИКОВО',25),
 (693,7964,'ВЕЛИКОВЦИ',26),
 (694,4600,'ВЕЛИНГРАД',14),
 (695,9793,'ВЕЛИНО',28),
 (696,2476,'ВЕЛИНОВО',15),
 (697,8458,'ВЕЛИСЛАВ',2),
 (698,7941,'ВЕЛИЧКА',26),
 (699,9263,'ВЕЛИЧКОВО',3),
 (700,4413,'ВЕЛИЧКОВО',14),
 (701,5365,'ВЕЛКОВО',8),
 (702,2375,'ВЕЛКОВЦИ',15),
 (703,5343,'ВЕЛКОВЦИ',8),
 (704,5097,'ВЕЛКОВЦИ',5),
 (705,5643,'ВЕЛЧЕВО',12),
 (706,5032,'ВЕЛЧЕВО',5),
 (707,5367,'ВЕЛЧОВЦИ',8),
 (708,7985,'ВЕЛЬОВО',26),
 (709,5070,'ВЕЛЮВЦИ',5),
 (710,2849,'ВЕЛЮЩЕЦ',1),
 (711,9119,'ВЕНЕЛИН',3),
 (712,9751,'ВЕНЕЦ',28),
 (713,8473,'ВЕНЕЦ',2),
 (714,6078,'ВЕНЕЦ',25),
 (715,2066,'ВЕНКОВЕЦ',23),
 (716,9219,'ВЕНЧАН',3),
 (717,6244,'ВЕРЕН',25),
 (718,7957,'ВЕРЕНЦИ',26);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (719,2063,'ВЕРИНСКО',23),
 (720,6710,'ВЕРСКО',10),
 (721,7327,'ВЕСЕЛЕЦ',18),
 (722,7942,'ВЕСЕЛЕЦ',26),
 (723,8145,'ВЕСЕЛИЕ',2),
 (724,5094,'ВЕСЕЛИНА',5),
 (725,7289,'ВЕСЕЛИНА',18),
 (726,9828,'ВЕСЕЛИНОВО',28),
 (727,8632,'ВЕСЕЛИНОВО',29),
 (728,3053,'ВЕСЛЕЦ',7),
 (729,7080,'ВЕТОВО',19),
 (730,8127,'ВЕТРЕН',2),
 (731,6175,'ВЕТРЕН',25),
 (732,2579,'ВЕТРЕН',11),
 (733,4480,'ВЕТРЕН',14),
 (734,7588,'ВЕТРЕН',20),
 (735,4493,'ВЕТРЕН ДОЛ',14),
 (736,9220,'ВЕТРИНО',3),
 (737,5066,'ВЕТРИНЦИ',5),
 (738,9809,'ВЕТРИЩЕ',28),
 (739,5300,'ВЕТРОВО',8),
 (740,6591,'ВЕТРУШКА',27),
 (741,4924,'ВЕХТИНО',22),
 (742,9822,'ВЕХТОВО',28),
 (743,3918,'ВЕЩИЦА',6),
 (744,6156,'ВИДЕН',25),
 (745,3700,'ВИДИН',6),
 (746,8671,'ВИДИНЦИ',29),
 (747,3478,'ВИДЛИЦА',13),
 (748,9668,'ВИДНО',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (749,2495,'ВИДРАР',15),
 (750,2166,'ВИДРАРЕ',23),
 (751,2364,'ВИДРИЦА',15),
 (752,4748,'ВИЕВО',22),
 (753,8369,'ВИЗИЦА',2),
 (754,5035,'ВИЛАРЕ',5),
 (755,3773,'ВИНАРОВО',6),
 (756,6238,'ВИНАРОВО',25),
 (757,8118,'ВИНАРСКО',2),
 (758,6375,'ВИНЕВО',27),
 (759,4284,'ВИНИЦА',17),
 (760,3482,'ВИНИЩЕ',13),
 (761,5171,'ВИНОГРАД',5),
 (762,4487,'ВИНОГРАДЕЦ',14),
 (763,2822,'ВИНОГРАДИ',1),
 (764,3455,'ВИРОВЕ',13),
 (765,3057,'ВИРОВСКО',7),
 (766,6591,'ВИС',27),
 (767,2358,'ВИСКЯР',15),
 (768,7955,'ВИСОК',26),
 (769,6744,'ВИСОКА',10),
 (770,2665,'ВИСОКА МОГИЛА',11),
 (771,6678,'ВИСОКА ПОЛЯНА',10),
 (772,9765,'ВИСОКА ПОЛЯНА',28),
 (773,4921,'ВИСОКИТЕ',22),
 (774,5098,'ВИСОКОВЦИ',5),
 (775,2354,'ВИТАНОВЦИ',15),
 (776,4975,'ВИТИНА',22),
 (777,2800,'ВИХРЕН',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (778,9563,'ВИЧЕВО',9),
 (779,2213,'ВИШАН',23),
 (780,6646,'ВИШЕГРАД',10),
 (781,2895,'ВИШЛЕНЕ',1),
 (782,8562,'ВИШНА',2),
 (783,4939,'ВИШНЕВО',22),
 (784,5239,'ВИШОВГРАД',5),
 (785,1641,'ВЛАДАЯ',23),
 (786,2411,'ВЛАДИМИР',15),
 (787,3440,'ВЛАДИМИРОВО',13),
 (788,9379,'ВЛАДИМИРОВО',9),
 (789,6545,'ВЛАДИМИРОВО',27),
 (790,7440,'ВЛАДИМИРОВЦИ',18),
 (791,5563,'ВЛАДИНЯ',12),
 (792,5179,'ВЛАДИСЛАВ',5),
 (793,2215,'ВЛАДИСЛАВЦИ',23),
 (794,3748,'ВЛАДИЧЕНЦИ',6),
 (795,2299,'ВЛАДО ТРИЧКОВ',23),
 (796,5365,'ВЛАДОВЦИ',8),
 (797,5344,'ВЛАЙЧОВЦИ',8),
 (798,5367,'ВЛАСАТИЛИ',8),
 (799,3041,'ВЛАСАТИЦА',7),
 (800,2841,'ВЛАХИ',1),
 (801,4724,'ВЛАХОВО',22),
 (802,5349,'ВЛАХОВЦИ',8),
 (803,4713,'ВОДАТА',22),
 (804,6709,'ВОДАЧ',10),
 (805,8750,'ВОДЕН',29);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (806,6412,'ВОДЕН',27),
 (807,4289,'ВОДЕН',17),
 (808,8693,'ВОДЕНИЧАНЕ',29),
 (809,6051,'ВОДЕНИЧАРОВО',25),
 (810,6852,'ВОДЕНИЧАРСКО',10),
 (811,6382,'ВОДЕНЦИ',27),
 (812,9141,'ВОДИЦА',3),
 (813,7851,'ВОДИЦА',26),
 (814,3831,'ВОДНА',6),
 (815,4826,'ВОДНИ ПАД',22),
 (816,7657,'ВОДНО',20),
 (817,5166,'ВОДНО',5),
 (818,3924,'ВОДНЯНЦИ',6),
 (819,9495,'ВОДНЯНЦИ',9),
 (820,5061,'ВОДОЛЕЙ',5),
 (821,6716,'ВОЖДОВО',10),
 (822,4203,'ВОИСИЛ',17),
 (823,9958,'ВОЙВОДА',28),
 (824,6381,'ВОЙВОДЕНЕЦ',27),
 (825,9292,'ВОЙВОДИНО',3),
 (826,4135,'ВОЙВОДИНОВО',17),
 (827,3332,'ВОЙВОДОВО',7),
 (828,6353,'ВОЙВОДОВО',27),
 (829,4967,'ВОЙКОВА ЛЪКА',22),
 (830,5045,'ВОЙНЕЖА',5),
 (831,8661,'ВОЙНИКА',29),
 (832,9473,'ВОЙНИКОВО',9),
 (833,3734,'ВОЙНИЦА',6);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (834,3481,'ВОЙНИЦИ',13),
 (835,5350,'ВОЙНИЦИТЕ',8),
 (836,5458,'ВОЙНИШКА',8),
 (837,7551,'ВОЙНОВО',20),
 (838,6698,'ВОЙНОВО',10),
 (839,4347,'ВОЙНЯГОВО',17),
 (840,1223,'ВОЙНЯГОВЦИ',23),
 (841,7670,'ВОКИЛ',20),
 (842,2886,'ВОЛНО',1),
 (843,6231,'ВОЛОВАРОВО',25),
 (844,6633,'ВОЛОВАРЦИ',10),
 (845,7175,'ВОЛОВО',19),
 (846,1346,'ВОЛУЯК',23),
 (847,5035,'ВОНЕЩА ВОДА',5),
 (848,5660,'ВРАБЕВО',12),
 (849,5307,'ВРАБЦИТЕ',8),
 (850,2470,'ВРАБЧА',15),
 (851,2834,'ВРАКУПОВИЦА',1),
 (852,4649,'ВРАНЕНЦИ',14),
 (853,7940,'ВРАНИ КОН',26),
 (854,5347,'ВРАНИЛОВЦИ',8),
 (855,9663,'ВРАНИНО',9),
 (856,4906,'ВРАНИНЦИ',22),
 (857,6912,'ВРАНСКО',10),
 (858,2830,'ВРАНЯ',1),
 (859,2445,'ВРАНЯ СТЕНА',15),
 (860,3248,'ВРАНЯК',7),
 (861,4234,'ВРАТА',17);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (862,9382,'ВРАТАРИТЕ',9),
 (863,8109,'ВРАТИЦА',2),
 (864,2059,'ВРАТЦА',23),
 (865,2575,'ВРАТЦА',11),
 (866,3000,'ВРАЦА',7),
 (867,9345,'ВРАЧАНЦИ',9),
 (868,2151,'ВРАЧЕШ',23),
 (869,6832,'ВРЕЛО',10),
 (870,8560,'ВРЕСОВО',2),
 (871,3779,'ВРЪВ',6),
 (872,2254,'ВРЪДЛОВЦИ',23),
 (873,4622,'ВСЕМИРЦИ',14),
 (874,2485,'ВУКАН',15),
 (875,2661,'ВУКОВО',11),
 (876,5953,'ВЪБЕЛ',16),
 (877,6313,'ВЪГЛАРОВО',27),
 (878,5041,'ВЪГЛЕВЦИ',5),
 (879,9157,'ВЪГЛЕН',3),
 (880,8851,'ВЪГЛЕН',21),
 (881,6710,'ВЪЗЕЛ',10),
 (882,7643,'ВЪЛКАН',20),
 (883,5349,'ВЪЛКОВ ДОЛ',8),
 (884,6850,'ВЪЛКОВИЧ',10),
 (885,2807,'ВЪЛКОВО',1),
 (886,5365,'ВЪЛКОВЦИ',8),
 (887,2930,'ВЪЛКОСЕЛ',1),
 (888,9963,'ВЪЛНАРИ',28),
 (889,8748,'ВЪЛЧА ПОЛЯНА',29),
 (890,4775,'ВЪЛЧАН',22),
 (891,4947,'ВЪЛЧАН ДОЛ',22);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (892,6893,'ВЪЛЧАНКА',10),
 (893,8341,'ВЪЛЧАНОВО',2),
 (894,6553,'ВЪЛЧЕ ПОЛЕ',27),
 (895,3650,'ВЪЛЧЕДРЪМ',13),
 (896,3851,'ВЪЛЧЕК',6),
 (897,9280,'ВЪЛЧИ ДОЛ',3),
 (898,8723,'ВЪЛЧИ ИЗВОР',29),
 (899,8443,'ВЪЛЧИН',2),
 (900,5890,'ВЪЛЧИТРЪН',16),
 (901,5081,'ВЪЛЧОВЦИ',5),
 (902,5086,'ВЪЛЧОВЦИ',5),
 (903,3939,'ВЪРБА',6),
 (904,4920,'ВЪРБА',22),
 (905,2405,'ВЪРБА',15),
 (906,9781,'ВЪРБАК',28),
 (907,4145,'ВЪРБЕН',17),
 (908,6873,'ВЪРБЕН',10),
 (909,6745,'ВЪРБЕНЦИ',10),
 (910,3147,'ВЪРБЕШНИЦА',7),
 (911,4921,'ВЪРБИНА',22),
 (912,7674,'ВЪРБИНО',20),
 (913,3264,'ВЪРБИЦА',7),
 (914,9870,'ВЪРБИЦА',28),
 (915,5128,'ВЪРБИЦА',5),
 (916,6445,'ВЪРБИЦА',27),
 (917,5845,'ВЪРБИЦА',16),
 (918,2248,'ВЪРБНИЦА',23),
 (919,5233,'ВЪРБОВКА',5),
 (920,4710,'ВЪРБОВО',22);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (921,6488,'ВЪРБОВО',27),
 (922,3951,'ВЪРБОВО',6),
 (923,3948,'ВЪРБОВЧЕЦ',6),
 (924,9943,'ВЪРБЯНЕ',28),
 (925,4907,'ВЪРГОВ ДОЛ',22),
 (926,5081,'ВЪРЗИЛКОВЦИ',5),
 (927,5191,'ВЪРЗУЛИЦА',5),
 (928,6873,'ВЪРЛИ ДОЛ',10),
 (929,4989,'ВЪРЛИ ДОЛ',22),
 (930,2085,'ВЪРЛИНА',23),
 (931,5050,'ВЪРЛИНКА',5),
 (932,4983,'ВЪРЛИНО',22),
 (933,8999,'ВЪРЛИЩЕ',21),
 (934,3752,'ВЪРТОП',6),
 (935,2786,'ВЪРХАРИ',1),
 (936,6814,'ВЪРХАРИ',10),
 (937,3540,'ВЪРШЕЦ',13),
 (938,8157,'ВЪРШИЛО',2),
 (939,3265,'ГАБАРЕ',7),
 (940,6162,'ГАБАРЕВО',25),
 (941,2215,'ГАБЕР',23),
 (942,9419,'ГАБЕР',9),
 (943,6482,'ГАБЕРОВО',27),
 (944,8212,'ГАБЕРОВО',2),
 (945,2112,'ГАБРА',23),
 (946,5097,'ГАБРАКА',5),
 (947,2898,'ГАБРЕНЕ',1),
 (948,2557,'ГАБРЕШЕВЦИ',11),
 (949,4921,'ГАБРИНА',22);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (950,9779,'ГАБРИЦА',28),
 (951,4795,'ГАБРИЦА',22),
 (952,2392,'ГАБРОВ ДОЛ',15),
 (953,4467,'ГАБРОВИЦА',14),
 (954,3453,'ГАБРОВНИЦА',13),
 (955,2277,'ГАБРОВНИЦА',23),
 (956,2747,'ГАБРОВО',1),
 (957,5300,'ГАБРОВО',8),
 (958,6691,'ГАБРОВО',10),
 (959,5051,'ГАБРОВЦИ',5),
 (960,8158,'ГАБЪР',2),
 (961,9227,'ГАБЪРНИЦА',3),
 (962,5619,'ГАБЪРСКО',12),
 (963,8854,'ГАВРАИЛОВО',21),
 (964,3469,'ГАВРИЛ ГЕНОВО',13),
 (965,3525,'ГАГАНИЦА',13),
 (966,7831,'ГАГОВО',26),
 (967,5367,'ГАЙДАРИ',8),
 (968,5300,'ГАЙКИНИ',8),
 (969,2114,'ГАЙТАНЕВО',23),
 (970,2924,'ГАЙТАНИНОВО',1),
 (971,5345,'ГАЙТАНИТЕ',8),
 (972,3753,'ГАЙТАНЦИ',6),
 (973,5731,'ГАЛАТА',12),
 (974,3071,'ГАЛАТИН',7),
 (975,3250,'ГАЛИЧЕ',7),
 (976,4934,'ГАЛИЩЕ',22),
 (977,3342,'ГАЛОВО',7);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (978,5084,'ГАНЕВ ДОЛ',5),
 (979,5397,'ГАНЧОВЕЦ',8),
 (980,2271,'ГАРА БОВ',23),
 (981,7101,'ГАРА БЯЛА',19),
 (982,5120,'ГАРА ГОРНА ОРЯХОВИЦ',5),
 (983,2109,'ГАРА ЕЛИН ПЕЛИН',23),
 (984,8432,'ГАРА ЗАВЕТ',2),
 (985,5364,'ГАРА КРЪСТЕЦ',8),
 (986,2272,'ГАРА ЛАКАТНИК',23),
 (987,3940,'ГАРА ОРЕШЕЦ',6),
 (988,4410,'ГАРА ПАЗАРДЖИК',14),
 (989,6880,'ГАРА ПОДКОВА',10),
 (990,6517,'ГАРА СВИЛЕНГРАД',27),
 (991,7272,'ГАРА СЕНОВО',19),
 (992,6489,'ГАРА СИМЕОНОВГРАД',27),
 (993,7737,'ГАРА ТЪРГОВИЩЕ',26),
 (994,9780,'ГАРА ХИТРИНО',28),
 (995,3163,'ГАРА ЧЕРЕПИШ',7),
 (996,8604,'ГАРА ЯМБОЛ',29),
 (997,5345,'ГАРВАН',8),
 (998,7589,'ГАРВАН',20),
 (999,6349,'ГАРВАНОВО',27),
 (1000,5041,'ГАШЕВЦИ',5),
 (1001,2882,'ГЕГА',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1002,4710,'ГЕЛА',22),
 (1003,4444,'ГЕЛЕМЕНОВО',14),
 (1004,6856,'ГЕНЕРАЛ ГЕШЕВО',10),
 (1005,8670,'ГЕНЕРАЛ ИНЗОВО',29),
 (1006,9150,'ГЕНЕРАЛ КАНТАРДЖИЕВ',3),
 (1007,9142,'ГЕНЕРАЛ КИСЕЛОВО',3),
 (1008,9295,'ГЕНЕРАЛ КОЛЕВО',3),
 (1009,9373,'ГЕНЕРАЛ КОЛЕВО',9),
 (1010,3732,'ГЕНЕРАЛ МАРИНОВО',6),
 (1011,2873,'ГЕНЕРАЛ ТОДОРОВ',1),
 (1012,9500,'ГЕНЕРАЛ ТОШЕВО',9),
 (1013,8625,'ГЕНЕРАЛ ТОШЕВО',29),
 (1014,6523,'ГЕНЕРАЛОВО',27),
 (1015,6635,'ГЕНОВО',10),
 (1016,5307,'ГЕНОВЦИ',8),
 (1017,5301,'ГЕНЧОВЦИ',8),
 (1018,5350,'ГЕНЧОВЦИ',8),
 (1019,5397,'ГЕНЯ',8),
 (1020,3470,'ГЕОРГИ ДАМЯНОВО',13),
 (1021,6559,'ГЕОРГИ ДОБРЕВО',27),
 (1022,8869,'ГЕРГЕВЕЦ',21),
 (1023,5345,'ГЕРГИНИ',8),
 (1024,1186,'ГЕРМАН',23),
 (1025,7219,'ГЕЦОВО',18);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1026,5370,'ГЕША',8),
 (1027,9393,'ГЕШАНОВО',9),
 (1028,5970,'ГИГЕН',16),
 (1029,2393,'ГИГИНЦИ',15),
 (1030,2250,'ГИНЦИ',23),
 (1031,2546,'ГИРЧЕВЦИ',11),
 (1032,6215,'ГИТА',25),
 (1033,5985,'ГЛАВА',16),
 (1034,6295,'ГЛАВАН',25),
 (1035,7543,'ГЛАВАН',20),
 (1036,3468,'ГЛАВАНОВЦИ',13),
 (1037,2480,'ГЛАВАНОВЦИ',15),
 (1038,9499,'ГЛАВАНЦИ',9),
 (1039,4171,'ГЛАВАТАР',17),
 (1040,6738,'ГЛАВАТАРЦИ',10),
 (1041,3045,'ГЛАВАЦИ',7),
 (1042,7630,'ГЛАВИНИЦА',20),
 (1043,4409,'ГЛАВИНИЦА',14),
 (1044,7986,'ГЛАШАТАЙ',26),
 (1045,5345,'ГЛЕДАЦИ',8),
 (1046,6263,'ГЛЕДАЧЕВО',25),
 (1047,6362,'ГЛЕДКА',27),
 (1048,7879,'ГЛОГИНКА',26),
 (1049,4948,'ГЛОГИНО',22),
 (1050,5080,'ГЛОГОВЕЦ',5),
 (1051,2463,'ГЛОГОВИЦА',15),
 (1052,5724,'ГЛОГОВО',12),
 (1053,7294,'ГЛОДЖЕВО',19);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1054,3327,'ГЛОЖЕНЕ',7),
 (1055,5740,'ГЛОЖЕНЕ',12),
 (1056,6572,'ГЛУМОВО',27),
 (1057,8429,'ГЛУМЧЕ',2),
 (1058,5363,'ГЛУТНИЦИТЕ',8),
 (1059,8866,'ГЛУФИШЕВО',21),
 (1060,6647,'ГЛУХАР',10),
 (1061,5370,'ГЛУШКА',8),
 (1062,8879,'ГЛУШНИК',21),
 (1063,6590,'ГНЕЗДАРЕ',27),
 (1064,6675,'ГНЯЗДОВО',10),
 (1065,4453,'ГОВЕДАРЕ',14),
 (1066,2020,'ГОВЕДАРЦИ',23),
 (1067,3474,'ГОВЕЖДА',13),
 (1068,2240,'ГОДЕЧ',23),
 (1069,2938,'ГОДЕШЕВО',1),
 (1070,2768,'ГОДЛЕВО',1),
 (1071,2366,'ГОЗ',15),
 (1072,4791,'ГОЗДЕВИЦА',22),
 (1073,5392,'ГОЗДЕЙКА',8),
 (1074,2036,'ГОЛАК',23),
 (1075,2800,'ГОЛЕМ ЦАЛИМ',1),
 (1076,2113,'ГОЛЕМА РАКОВИЦА',23),
 (1077,2667,'ГОЛЕМА ФУЧА',11),
 (1078,5070,'ГОЛЕМАНИ',5),
 (1079,5054,'ГОЛЕМАНИТЕ',5),
 (1080,3839,'ГОЛЕМАНОВО',6),
 (1081,6358,'ГОЛЕМАНЦИ',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1082,5370,'ГОЛЕМИ БЪЛГАРЕНИ',8),
 (1083,5365,'ГОЛЕМИ СТАНЧОВЦИ',8),
 (1084,3063,'ГОЛЕМО БАБИНО',7),
 (1085,2348,'ГОЛЕМО БУЧИНО',15),
 (1086,2204,'ГОЛЕМО МАЛОВО',23),
 (1087,2635,'ГОЛЕМО СЕЛО',11),
 (1088,5573,'ГОЛЕЦ',12),
 (1089,2254,'ГОЛЕШ',23),
 (1090,7547,'ГОЛЕШ',20),
 (1091,2818,'ГОЛЕШОВО',1),
 (1092,9114,'ГОЛИЦА',3),
 (1093,6793,'ГОЛОБРАД',10),
 (1094,6386,'ГОЛОБРАДОВО',27),
 (1095,2690,'ГОЛЯМ ВЪРБОВНИК',11),
 (1096,6932,'ГОЛЯМ ДЕВЕСИЛ',10),
 (1097,8757,'ГОЛЯМ ДЕРВЕНТ',29),
 (1098,6245,'ГОЛЯМ ДОЛ',25),
 (1099,7459,'ГОЛЯМ ИЗВОР',18),
 (1100,6395,'ГОЛЯМ ИЗВОР',27),
 (1101,5741,'ГОЛЯМ ИЗВОР',12),
 (1102,8624,'ГОЛЯМ МАНАСТИР',29),
 (1103,7444,'ГОЛЯМ ПОРОВЕЦ',18),
 (1104,4193,'ГОЛЯМ ЧАРДАК',17),
 (1105,6744,'ГОЛЯМА БАРА',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1106,5753,'ГОЛЯМА БРЕСТНИЦА',12),
 (1107,7452,'ГОЛЯМА ВОДА',18),
 (1108,6476,'ГОЛЯМА ДОЛИНА',27),
 (1109,5670,'ГОЛЯМА ЖЕЛЯЗНА',12),
 (1110,6940,'ГОЛЯМА ЧИНКА',10),
 (1111,6424,'ГОЛЯМО АСЕНОВО',27),
 (1112,4473,'ГОЛЯМО БЕЛОВО',14),
 (1113,8329,'ГОЛЯМО БУКОВО',2),
 (1114,7065,'ГОЛЯМО ВРАНОВО',19),
 (1115,7848,'ГОЛЯМО ГРАДИЩЕ',26),
 (1116,7960,'ГОЛЯМО ДОЛЯНЕ',26),
 (1117,6146,'ГОЛЯМО ДРЯНОВО',25),
 (1118,6925,'ГОЛЯМО КАМЕНЯНЕ',10),
 (1119,8729,'ГОЛЯМО КРУШЕВО',29),
 (1120,7789,'ГОЛЯМО НОВО',18),
 (1121,3058,'ГОЛЯМО ПЕЩЕНЕ',7),
 (1122,7778,'ГОЛЯМО СОКОЛОВО',26),
 (1123,5743,'ГОЛЯМО УСОЕ',12),
 (1124,7924,'ГОЛЯМО ЦЪРКВИЩЕ',26),
 (1125,8863,'ГОЛЯМО ЧОЧОВЕНИ',21),
 (1126,2231,'ГОЛЯНОВЦИ',23),
 (1127,3772,'ГОМОТАРЦИ',6);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1128,5552,'ГОРАН',12),
 (1129,5035,'ГОРАНОВЦИ',5),
 (1130,2565,'ГОРАНОВЦИ',11),
 (1131,2834,'ГОРЕМЕ',1),
 (1132,5050,'ГОРЕН ЕНЕВЕЦ',5),
 (1133,9100,'ГОРЕН ЧИФЛИК',3),
 (1134,9101,'ГОРИЦА',3),
 (1135,9558,'ГОРИЦА',9),
 (1136,8225,'ГОРИЦА',2),
 (1137,7854,'ГОРИЦА',26),
 (1138,9688,'ГОРИЧАНЕ',9),
 (1139,7337,'ГОРИЧЕВО',18),
 (1140,4788,'ГОРНА АРДА',22),
 (1141,3544,'ГОРНА БЕЛА РЕЧКА',13),
 (1142,3155,'ГОРНА БЕШОВИЦА',7),
 (1143,4657,'ГОРНА БИРКОВА',14),
 (1144,2842,'ГОРНА БРЕЗНИЦА',1),
 (1145,2575,'ГОРНА БРЕСТНИЦА',11),
 (1146,2046,'ГОРНА ВАСИЛИЦА',23),
 (1147,3484,'ГОРНА ВЕРЕНИЦА',13),
 (1148,2439,'ГОРНА ВРАБЧА',15),
 (1149,2459,'ГОРНА ГЛОГОВИЦА',15),
 (1150,2535,'ГОРНА ГРАЩИЦА',11),
 (1151,2419,'ГОРНА ДИКАНЯ',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1152,4648,'ГОРНА ДЪБЕВА',14),
 (1153,7969,'ГОРНА ЗЛАТИЦА',26),
 (1154,7865,'ГОРНА КАБДА',26),
 (1155,3463,'ГОРНА КОВАЧИЦА',13),
 (1156,2687,'ГОРНА КОЗНИЦА',11),
 (1157,3154,'ГОРНА КРЕМЕНА',7),
 (1158,6685,'ГОРНА КРЕПОСТ',10),
 (1159,2827,'ГОРНА КРУШИЦА',1),
 (1160,6952,'ГОРНА КУЛА',10),
 (1161,5227,'ГОРНА ЛИПНИЦА',5),
 (1162,3458,'ГОРНА ЛУКА',13),
 (1163,2131,'ГОРНА МАЛИНА',23),
 (1164,4196,'ГОРНА МАХАЛА',17),
 (1165,2491,'ГОРНА МЕЛНА',15),
 (1166,5869,'ГОРНА МИТРОПОЛИЯ',16),
 (1167,5100,'ГОРНА ОРЯХОВИЦА',5),
 (1168,2836,'ГОРНА РИБНИЦА',1),
 (1169,5448,'ГОРНА РОСИЦА',8),
 (1170,2399,'ГОРНА СЕКИРНА',15),
 (1171,5294,'ГОРНА СТУДЕНА',5),
 (1172,2811,'ГОРНА СУШИЦА',1),
 (1173,5089,'ГОРНА ХАДЖИЙСКА',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1174,7913,'ГОРНА ХУБАВКА',26),
 (1175,1806,'ГОРНИ БОГРОВ',23),
 (1176,3343,'ГОРНИ ВАДИН',7),
 (1177,5380,'ГОРНИ ВЪРПИЩА',8),
 (1178,6485,'ГОРНИ ГЛАВАНАК',27),
 (1179,5367,'ГОРНИ ДАМЯНОВЦИ',8),
 (1180,4368,'ГОРНИ ДОМЛЯН',17),
 (1181,5380,'ГОРНИ ДРАГОЙЧА',8),
 (1182,5880,'ГОРНИ ДЪБНИК',16),
 (1183,2557,'ГОРНИ КОРИТЕН',11),
 (1184,5096,'ГОРНИ КРАЙ',5),
 (1185,3960,'ГОРНИ ЛОМ',6),
 (1186,5360,'ГОРНИ МАРЕНЦИ',8),
 (1187,2027,'ГОРНИ ОКОЛ',23),
 (1188,5360,'ГОРНИ РАДКОВЦИ',8),
 (1189,2371,'ГОРНИ РОМАНЦИ',15),
 (1190,5098,'ГОРНИ ТАНЧЕВЦИ',5),
 (1191,3632,'ГОРНИ ЦИБЪР',13),
 (1192,5360,'ГОРНИ ЦОНЕВЦИ',8),
 (1193,6954,'ГОРНИ ЮРУЦИ',10),
 (1194,5991,'ГОРНИК',16),
 (1195,7173,'ГОРНО АБЛАНОВО',19),
 (1196,8883,'ГОРНО АЛЕКСАНДРОВО',21);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1197,6219,'ГОРНО БЕЛОВО',25),
 (1198,6053,'ГОРНО БОТЕВО',25),
 (1199,6388,'ГОРНО ВОЙВОДИНО',27),
 (1200,4456,'ГОРНО ВЪРШИЛО',14),
 (1201,2797,'ГОРНО ДРАГЛИЩЕ',1),
 (1202,2963,'ГОРНО ДРЯНОВО',1),
 (1203,6181,'ГОРНО ИЗВОРОВО',25),
 (1204,2138,'ГОРНО КАМАРЦИ',23),
 (1205,2556,'ГОРНО КОБИЛЕ',11),
 (1206,7927,'ГОРНО КОЗАРЕВО',26),
 (1207,2783,'ГОРНО КРАИЩЕ',1),
 (1208,6871,'ГОРНО КЪПИНОВО',10),
 (1209,6585,'ГОРНО ЛУКОВО',27),
 (1210,7939,'ГОРНО НОВКОВО',26),
 (1211,6225,'ГОРНО НОВО СЕЛО',25),
 (1212,3547,'ГОРНО ОЗИРОВО',13),
 (1213,2756,'ГОРНО ОСЕНОВО',1),
 (1214,5549,'ГОРНО ПАВЛИКЕНЕ',12),
 (1215,3052,'ГОРНО ПЕЩЕНЕ',7),
 (1216,6486,'ГОРНО ПОЛЕ',27),
 (1217,6780,'ГОРНО ПРАХОВО',10),
 (1218,2213,'ГОРНО СЕЛО',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1219,2824,'ГОРНО СПАНЧЕВО',1),
 (1220,6151,'ГОРНО СЪХРАНЕ',25),
 (1221,5614,'ГОРНО ТРАПЕ',12),
 (1222,2561,'ГОРНО УЙНО',11),
 (1223,2727,'ГОРНО ХЪРСОВО',1),
 (1224,3487,'ГОРНО ЦЕРОВЕНЕ',13),
 (1225,6165,'ГОРНО ЧЕРКОВИЩЕ',25),
 (1226,8343,'ГОРНО ЯБЪЛКОВО',2),
 (1227,5304,'ГОРНОВА МОГИЛА',8),
 (1228,6574,'ГОРНОСЕЛЦИ',27),
 (1229,4253,'ГОРНОСЛАВ',17),
 (1230,5748,'ГОРНОТО СЕЛО',12),
 (1231,4776,'ГОРОВО',22),
 (1232,8469,'ГОРОВО',2),
 (1233,7288,'ГОРОЦВЕТ',18),
 (1234,2496,'ГОРОЧЕВЦИ',15),
 (1235,5083,'ГОРСКА',5),
 (1236,8721,'ГОРСКА ПОЛЯНА',29),
 (1237,5132,'ГОРСКИ ГОРЕН ТРЪМБЕ',5),
 (1238,5131,'ГОРСКИ ДОЛЕН ТРЪМБЕ',5),
 (1239,6420,'ГОРСКИ ИЗВОР',27),
 (1240,6864,'ГОРСКИ ИЗВОР',10),
 (1241,5167,'ГОРСКИ СЕНОВЕЦ',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1242,6590,'ГОРСКО',27),
 (1243,7847,'ГОРСКО АБЛАНОВО',26),
 (1244,6800,'ГОРСКО ДЮЛЕВО',10),
 (1245,5238,'ГОРСКО КАЛУГЕРОВО',5),
 (1246,5235,'ГОРСКО КОСОВО',5),
 (1247,5075,'ГОРСКО НОВО СЕЛО',5),
 (1248,5088,'ГОРСКО ПИСАРЕВО',5),
 (1249,7947,'ГОРСКО СЕЛО',26),
 (1250,5557,'ГОРСКО СЛИВОВО',12),
 (1251,5888,'ГОРТАЛОВО',16),
 (1252,9689,'ГОРУН',9),
 (1253,2191,'ГОРУНАКА',23),
 (1254,5722,'ГОРУНЬОВО',12),
 (1255,2882,'ГОРЧЕВО',1),
 (1256,5367,'ГОРЯНИ',8),
 (1257,9107,'ГОСПОДИНОВО',3),
 (1258,7561,'ГОСПОДИНОВО',20),
 (1259,2914,'ГОСПОДИНЦИ',1),
 (1260,5390,'ГОСТИЛИЦА',8),
 (1261,5864,'ГОСТИЛЯ',16),
 (1262,5543,'ГОСТИНЯ',12),
 (1263,2773,'ГОСТУН',1),
 (1264,2900,'ГОЦЕ ДЕЛЧЕВ',1),
 (1265,2755,'ГРАДЕВО',1),
 (1266,5732,'ГРАДЕЖНИЦА',12);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1267,3780,'ГРАДЕЦ',6),
 (1268,2239,'ГРАДЕЦ',23),
 (1269,8990,'ГРАДЕЦ',21),
 (1270,3074,'ГРАДЕШНИЦА',7),
 (1271,5879,'ГРАДИНА',16),
 (1272,7239,'ГРАДИНА',18),
 (1273,4290,'ГРАДИНА',17),
 (1274,9243,'ГРАДИНАРОВО',3),
 (1275,9552,'ГРАДИНИ',9),
 (1276,7964,'ГРАДИНКА',26),
 (1277,5910,'ГРАДИЩЕ',16),
 (1278,5435,'ГРАДИЩЕ',8),
 (1279,9803,'ГРАДИЩЕ',28),
 (1280,5439,'ГРАДНИЦА',8),
 (1281,9498,'ГРАДНИЦА',9),
 (1282,8852,'ГРАДСКО',21),
 (1283,3835,'ГРАДСКОВСКИ КОЛИБИ',6),
 (1284,4749,'ГРАДЪТ',22),
 (1285,3830,'ГРАМАДА',6),
 (1286,2679,'ГРАМАДЕ',11),
 (1287,4968,'ГРАМАДЕ',22),
 (1288,2574,'ГРАМАДЖАНО',11),
 (1289,8370,'ГРАМАТИКОВО',2),
 (1290,5099,'ГРАМАТИЦИ',5),
 (1291,6252,'ГРАНИТ',25),
 (1292,8333,'ГРАНИТЕЦ',2),
 (1293,3914,'ГРАНИТОВО',6);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1294,8740,'ГРАНИТОВО',29),
 (1295,2589,'ГРАНИЦА',11),
 (1296,3934,'ГРАНИЧАК',6),
 (1297,8347,'ГРАНИЧАР',2),
 (1298,9669,'ГРАНИЧАР',9),
 (1299,4198,'ГРАФ ИГНАТИЕВО',17),
 (1300,8938,'ГРАФИТОВО',21),
 (1301,4618,'ГРАШЕВО',14),
 (1302,4714,'ГРАЩИЦА',22),
 (1303,7960,'ГРЕЕВЦИ',26),
 (1304,5841,'ГРИВИЦА',16),
 (1305,6965,'ГРИВКА',10),
 (1306,6890,'ГРИВЯК',10),
 (1307,2108,'ГРИГОРЕВО',23),
 (1308,8464,'ГРОЗДЕН',2),
 (1309,9106,'ГРОЗДЬОВО',3),
 (1310,2062,'ГРОЗДЬОВЦИ',23),
 (1311,3444,'ГРОМШИН',13),
 (1312,4815,'ГРОХОТНО',22),
 (1313,6809,'ГРУЕВО',10),
 (1314,5300,'ГРЪБЛЕВЦИ',8),
 (1315,2213,'ГРЪЛСКА ПАДИНА',23),
 (1316,7669,'ГРЪНЧАРОВО',20),
 (1317,2255,'ГУБЕШ',23),
 (1318,2274,'ГУБИСЛАВ',23),
 (1319,6590,'ГУГУТКА',27),
 (1320,4792,'ГУДЕВИЦА',22);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1321,6943,'ГУЛИЙКА',10),
 (1322,6926,'ГУЛИЯ',10),
 (1323,5960,'ГУЛЯНЦИ',16),
 (1324,5654,'ГУМОЩНИК',12),
 (1325,2567,'ГУРБАНОВЦИ',11),
 (1326,6830,'ГУРГУЛИЦА',10),
 (1327,2223,'ГУРГУЛЯТ',23),
 (1328,9644,'ГУРКОВО',9),
 (1329,2145,'ГУРКОВО',23),
 (1330,6199,'ГУРКОВО',25),
 (1331,2226,'ГУРМАЗОВО',23),
 (1332,9969,'ГУСЛА',28),
 (1333,9479,'ГУСЛАР',9),
 (1334,2045,'ГУЦАЛ',23),
 (1335,5333,'ГЪБЕНЕ',8),
 (1336,8220,'ГЪЛЪБЕЦ',2),
 (1337,6366,'ГЪЛЪБЕЦ',27),
 (1338,8642,'ГЪЛЪБИНЦИ',29),
 (1339,2426,'ГЪЛЪБНИК',15),
 (1340,4938,'ГЪЛЪБОВО',22),
 (1341,2789,'ГЪЛЪБОВО',1),
 (1342,6280,'ГЪЛЪБОВО',25),
 (1343,4125,'ГЪЛЪБОВО',17),
 (1344,2223,'ГЪЛЪБОВЦИ',23),
 (1345,3785,'ГЪМЗОВО',6),
 (1346,2550,'ГЪРБИНО',11),
 (1347,6760,'ГЪРБИЩЕ',10),
 (1348,5087,'ГЪРДЕВЦИ',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1349,2381,'ГЪРЛО',15),
 (1350,2568,'ГЪРЛЯНО',11),
 (1351,2960,'ГЪРМЕН',1),
 (1352,4991,'ГЪРНАТИ',22),
 (1353,5370,'ГЪРНЯ',8),
 (1354,7844,'ГЪРЧИНОВО',26),
 (1355,6651,'ГЪСКОВО',10),
 (1356,4811,'ГЬОВРЕН',22),
 (1357,2570,'ГЮЕШЕВО',11),
 (1358,8249,'ГЮЛЬОВЦА',2),
 (1359,2875,'ГЮРГЕВО',1),
 (1360,3932,'ГЮРГИЧ',6),
 (1361,5083,'ДАВЕРИ',5),
 (1362,4944,'ДАВИДКОВО',22),
 (1363,7563,'ДАВИДОВО',20),
 (1364,7758,'ДАВИДОВО',26),
 (1365,2779,'ДАГОНОВО',1),
 (1366,5365,'ДАЕВЦИ',8),
 (1367,5084,'ДАЙНОВЦИ',5),
 (1368,2813,'ДАМЯНИЦА',1),
 (1369,5437,'ДАМЯНОВО',8),
 (1370,6943,'ДАНАИЛОВО',10),
 (1371,6261,'ДАСКАЛ АТАНАСОВО',25),
 (1372,6707,'ДАСКАЛОВО',10),
 (1373,7150,'ДВЕ МОГИЛИ',19),
 (1374,4949,'ДВЕ ТОПОЛИ',22),
 (1375,2541,'ДВОРИЩЕ',11),
 (1376,6193,'ДВОРИЩЕ',25);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1377,5307,'ДЕБЕЛ ДЯЛ',8),
 (1378,5030,'ДЕБЕЛЕЦ',5),
 (1379,2416,'ДЕБЕЛИ ЛАК',15),
 (1380,5084,'ДЕБЕЛИ РЪТ',5),
 (1381,8314,'ДЕБЕЛТ',2),
 (1382,5435,'ДЕБЕЛЦОВО',8),
 (1383,4946,'ДЕБЕЛЯНОВО',22),
 (1384,5657,'ДЕБНЕВО',12),
 (1385,5958,'ДЕБОВО',16),
 (1386,2748,'ДЕБОЧИЦА',1),
 (1387,2961,'ДЕБРЕН',1),
 (1388,9353,'ДЕБРЕНЕ',9),
 (1389,2803,'ДЕБРЕНЕ',1),
 (1390,4414,'ДЕБРЪЩИЦА',14),
 (1391,3065,'ДЕВЕНЕ',7),
 (1392,5995,'ДЕВЕНЦИ',16),
 (1393,6934,'ДЕВЕСИЛИЦА',10),
 (1394,6933,'ДЕВЕСИЛОВО',10),
 (1395,8480,'ДЕВЕТАК',2),
 (1396,5555,'ДЕВЕТАКИ',12),
 (1397,5050,'ДЕВЕТАЦИТЕ',5),
 (1398,8474,'ДЕВЕТИНЦИ',2),
 (1399,4800,'ДЕВИН',22),
 (1400,7972,'ДЕВИНО',26),
 (1401,6833,'ДЕВИНЦИ',10),
 (1402,9160,'ДЕВНЯ',3),
 (1403,4106,'ДЕДЕВО',17),
 (1404,6861,'ДЕДЕЦ',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1405,5089,'ДЕДИНА',5),
 (1406,5089,'ДЕДИНЦИ',5),
 (1407,5935,'ДЕКОВ',16),
 (1408,2728,'ДЕЛВИНО',1),
 (1409,6896,'ДЕЛВИНО',10),
 (1410,3795,'ДЕЛЕЙНА',6),
 (1411,5084,'ДЕЛОВА МАХАЛА',5),
 (1412,2917,'ДЕЛЧЕВО',1),
 (1413,7427,'ДЕЛЧЕВО',18),
 (1414,2225,'ДЕЛЯН',23),
 (1415,2652,'ДЕЛЯН',11),
 (1416,5292,'ДЕЛЯНОВЦИ',5),
 (1417,8726,'ДЕННИЦА',29),
 (1418,9772,'ДЕННИЦА',28),
 (1419,5377,'ДЕНЧЕВЦИ',8),
 (1420,6539,'ДЕРВИШКА МОГИЛА',27),
 (1421,5780,'ДЕРМАНЦИ',12),
 (1422,9111,'ДЕТЕЛИНА',3),
 (1423,8483,'ДЕТЕЛИНА',2),
 (1424,5041,'ДЕЧКОВЦИ',5),
 (1425,2060,'ДЖАМУЗОВЦИ',23),
 (1426,6908,'ДЖАНКА',10),
 (1427,6850,'ДЖЕБЕЛ',10),
 (1428,6824,'ДЖЕЛЕПСКО',10),
 (1429,2648,'ДЖЕРМАН',11),
 (1430,6872,'ДЖЕРОВО',10),
 (1431,2812,'ДЖИГУРОВО',1),
 (1432,2085,'ДЖИЛЯСКОВИЦА',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1433,8691,'ДЖИНОТ',29),
 (1434,2483,'ДЖИНЧОВЦИ',15),
 (1435,5645,'ДЖОКАРИ',12),
 (1436,5146,'ДЖУЛЮНИЦА',5),
 (1437,7137,'ДЖУЛЮНИЦА',19),
 (1438,5343,'ДЖУМРИИТЕ',8),
 (1439,2085,'ДЖУНОВИТЕ КОШАРИ',23),
 (1440,4241,'ДЖУРКОВО',17),
 (1441,2163,'ДЖУРОВО',23),
 (1442,5380,'ДЖУРОВЦИ',8),
 (1443,6772,'ДИАМАНДОВО',10),
 (1444,9811,'ДИБИЧ',28),
 (1445,3492,'ДИВА СЛАТИНА',13),
 (1446,5345,'ДИВЕЦИ',8),
 (1447,2457,'ДИВЛЯ',15),
 (1448,2350,'ДИВОТИНО',15),
 (1449,5727,'ДИВЧОВОТО',12),
 (1450,4994,'ДИМАНОВО',22),
 (1451,5363,'ДИМИЕВЦИ',8),
 (1452,6259,'ДИМИТРИЕВО',25),
 (1453,6400,'ДИМИТРОВГРАД',27),
 (1454,5050,'ДИМИТРОВЦИ',5),
 (1455,6518,'ДИМИТРОВЧЕ',27),
 (1456,3750,'ДИМОВО',6),
 (1457,4757,'ДИМОВО',22),
 (1458,5035,'ДИМОВЦИ',5),
 (1459,6192,'ДИМОВЦИ',25);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1460,5234,'ДИМЧА',5),
 (1461,8159,'ДИМЧЕВО',2),
 (1462,6340,'ДИНЕВО',27),
 (1463,4149,'ДИНК',17),
 (1464,4458,'ДИНКАТА',14),
 (1465,3783,'ДИНКОВИЦА',6),
 (1466,3921,'ДИНКОВО',6),
 (1467,6268,'ДИНЯ',25),
 (1468,4927,'ДИРАЛО',22),
 (1469,5886,'ДИСЕВИЦА',16),
 (1470,5441,'ДИСМАНИЦА',8),
 (1471,7625,'ДИЧЕВО',20),
 (1472,5059,'ДИЧИН',5),
 (1473,6432,'ДЛЪГНЕВО',27),
 (1474,5392,'ДЛЪГНЯ',8),
 (1475,7997,'ДЛЪЖКА ПОЛЯНА',26),
 (1476,9789,'ДЛЪЖКО',28),
 (1477,2582,'ДЛЪХЧЕВО - САБЛЯР',11),
 (1478,6947,'ДОБОРСКО',10),
 (1479,8580,'ДОБРА ПОЛЯНА',2),
 (1480,2279,'ДОБРАВИЦА',23),
 (1481,4259,'ДОБРАЛЪК',17),
 (1482,4917,'ДОБРЕВА ЧЕРЕША',22),
 (1483,9399,'ДОБРЕВО',9),
 (1484,5095,'ДОБРЕВЦИ',5),
 (1485,5365,'ДОБРЕВЦИ',8),
 (1486,5762,'ДОБРЕВЦИ',12),
 (1487,5380,'ДОБРЕНИТЕ',8);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1488,9782,'ДОБРИ ВОЙНИКОВО',28),
 (1489,9128,'ДОБРИ ДОЛ',3),
 (1490,3667,'ДОБРИ ДОЛ',13),
 (1491,4292,'ДОБРИ ДОЛ',17),
 (1492,2559,'ДОБРИ ДОЛ',11),
 (1493,5149,'ДОБРИ ДЯЛ',5),
 (1494,2838,'ДОБРИ ЛАКИ',1),
 (1495,9402,'ДОБРИН',9),
 (1496,9216,'ДОБРИНА',3),
 (1497,2777,'ДОБРИНИЩЕ',1),
 (1498,8477,'ДОБРИНОВО',2),
 (1499,6670,'ДОБРИНОВО',10),
 (1500,6857,'ДОБРИНЦИ',10),
 (1501,6437,'ДОБРИЧ',27),
 (1502,9300,'ДОБРИЧ',9),
 (1503,8724,'ДОБРИЧ',29),
 (1504,4405,'ДОБРОВНИЦА',14),
 (1505,2662,'ДОБРОВО',11),
 (1506,9145,'ДОБРОГЛЕД',3),
 (1507,5658,'ДОБРОДАН',12),
 (1508,3253,'ДОБРОЛЕВО',7),
 (1509,8552,'ДОБРОМИР',2),
 (1510,5430,'ДОБРОМИРКА',8),
 (1511,6861,'ДОБРОМИРЦИ',10),
 (1512,9281,'ДОБРОПЛОДНО',3),
 (1513,6560,'ДОБРОСЕЛЕЦ',27),
 (1514,1247,'ДОБРОСЛАВЦИ',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1515,4256,'ДОБРОСТАН',17),
 (1516,2919,'ДОБРОТИНО',1),
 (1517,7990,'ДОБРОТИЦА',26),
 (1518,7531,'ДОБРОТИЦА',20),
 (1519,9282,'ДОБРОТИЧ',3),
 (1520,7548,'ДОБРУДЖАНКА',20),
 (1521,3069,'ДОБРУША',7),
 (1522,2799,'ДОБЪРСКО',1),
 (1523,2289,'ДОБЪРЧИН',23),
 (1524,2115,'ДОГАНОВО',23),
 (1525,2547,'ДОЖДЕВИЦА',11),
 (1526,5035,'ДОЙНОВЦИ',5),
 (1527,6799,'ДОЙРАНЦИ',10),
 (1528,9961,'ДОЙРАНЦИ',28),
 (1529,5550,'ДОЙРЕНЦИ',12),
 (1530,2734,'ДОКАТИЧЕВО',1),
 (1531,3449,'ДОКТОР ЙОСИФОВО',13),
 (1532,2497,'ДОКЬОВЦИ',15),
 (1533,4985,'ДОЛЕН',22),
 (1534,2968,'ДОЛЕН',1),
 (1535,5050,'ДОЛЕН ЕНЕВЕЦ',5),
 (1536,2887,'ДОЛЕНЕ',1),
 (1537,2811,'ДОЛЕНИ',1),
 (1538,7682,'ДОЛЕЦ',20),
 (1539,7858,'ДОЛЕЦ',26),
 (1540,4921,'ДОЛИЕ',22),
 (1541,9358,'ДОЛИНА',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1542,9947,'ДОЛИНА',28),
 (1543,2637,'ДОЛИСТОВО',11),
 (1544,9152,'ДОЛИЩЕ',3),
 (1545,6663,'ДОЛИЩЕ',10),
 (1546,2040,'ДОЛНА БАНЯ',23),
 (1547,3545,'ДОЛНА БЕЛА РЕЧКА',13),
 (1548,3143,'ДОЛНА БЕШОВИЦА',7),
 (1549,2034,'ДОЛНА ВАСИЛИЦА',23),
 (1550,3485,'ДОЛНА ВЕРЕНИЦА',13),
 (1551,2458,'ДОЛНА ВРАБЧА',15),
 (1552,2843,'ДОЛНА ГРАДЕШНИЦА',1),
 (1553,2536,'ДОЛНА ГРАЩИЦА',11),
 (1554,2420,'ДОЛНА ДИКАНЯ',15),
 (1555,4655,'ДОЛНА ДЪБЕВА',14),
 (1556,7968,'ДОЛНА ЗЛАТИЦА',26),
 (1557,7867,'ДОЛНА КАБДА',26),
 (1558,2658,'ДОЛНА КОЗНИЦА',11),
 (1559,3153,'ДОЛНА КРЕМЕНА',7),
 (1560,6686,'ДОЛНА КРЕПОСТ',10),
 (1561,2888,'ДОЛНА КРУШИЦА',1),
 (1562,6953,'ДОЛНА КУЛА',10),
 (1563,5199,'ДОЛНА ЛИПНИЦА',5),
 (1564,2107,'ДОЛНА МАЛИНА',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1565,5659,'ДОЛНА МАРГАТИНА',12),
 (1566,4200,'ДОЛНА МАХАЛА',17),
 (1567,2490,'ДОЛНА МЕЛНА',15),
 (1568,5855,'ДОЛНА МИТРОПОЛИЯ',16),
 (1569,2213,'ДОЛНА НЕВЛЯ',23),
 (1570,5130,'ДОЛНА ОРЯХОВИЦА',5),
 (1571,2892,'ДОЛНА РИБНИЦА',1),
 (1572,3452,'ДОЛНА РИКСА',13),
 (1573,2397,'ДОЛНА СЕКИРНА',15),
 (1574,7123,'ДОЛНА СТУДЕНА',19),
 (1575,7931,'ДОЛНА ХУБАВКА',26),
 (1576,1855,'ДОЛНИ БОГРОВ',23),
 (1577,3782,'ДОЛНИ БОШНЯК',6),
 (1578,3344,'ДОЛНИ ВАДИН',7),
 (1579,5969,'ДОЛНИ ВИТ',16),
 (1580,5380,'ДОЛНИ ВЪРПИЩА',8),
 (1581,6483,'ДОЛНИ ГЛАВАНАК',27),
 (1582,5036,'ДОЛНИ ДАМЯНОВЦИ',5),
 (1583,5380,'ДОЛНИ ДРАГОЙЧА',8),
 (1584,5870,'ДОЛНИ ДЪБНИК',16),
 (1585,2558,'ДОЛНИ КОРИТЕН',11),
 (1586,3958,'ДОЛНИ ЛОМ',6);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1587,5867,'ДОЛНИ ЛУКОВИТ',16),
 (1588,5360,'ДОЛНИ МАРЕНЦИ',8),
 (1589,5084,'ДОЛНИ МАРЯН',5),
 (1590,2028,'ДОЛНИ ОКОЛ',23),
 (1591,1165,'ДОЛНИ ПАСАРЕЛ',23),
 (1592,5360,'ДОЛНИ РАДКОВЦИ',8),
 (1593,2413,'ДОЛНИ РАКОВЕЦ',15),
 (1594,2367,'ДОЛНИ РОМАНЦИ',15),
 (1595,5097,'ДОЛНИ ТАНЧЕВЦИ',5),
 (1596,5350,'ДОЛНИ ТОМЧЕВЦИ',8),
 (1597,3642,'ДОЛНИ ЦИБЪР',13),
 (1598,9120,'ДОЛНИ ЧИФЛИК',3),
 (1599,6954,'ДОЛНИ ЮРУЦИ',10),
 (1600,7053,'ДОЛНО АБЛАНОВО',19),
 (1601,6422,'ДОЛНО БЕЛЕВО',27),
 (1602,3437,'ДОЛНО БЕЛОТИНЦИ',13),
 (1603,6393,'ДОЛНО БОТЕВО',27),
 (1604,6389,'ДОЛНО ВОЙВОДИНО',27),
 (1605,4446,'ДОЛНО ВЪРШИЛО',14),
 (1606,6358,'ДОЛНО ГОЛЕМАНЦИ',27),
 (1607,2798,'ДОЛНО ДРАГЛИЩЕ',1),
 (1608,2944,'ДОЛНО ДРЯНОВО',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1609,6183,'ДОЛНО ИЗВОРОВО',25),
 (1610,2137,'ДОЛНО КАМАРЦИ',23),
 (1611,2556,'ДОЛНО КОБИЛЕ',11),
 (1612,7926,'ДОЛНО КОЗАРЕВО',26),
 (1613,6870,'ДОЛНО КЪПИНОВО',10),
 (1614,4535,'ДОЛНО ЛЕВСКИ',14),
 (1615,3605,'ДОЛНО ЛИНЕВО',13),
 (1616,6586,'ДОЛНО ЛУКОВО',27),
 (1617,7938,'ДОЛНО НОВКОВО',26),
 (1618,6226,'ДОЛНО НОВО СЕЛО',25),
 (1619,2212,'ДОЛНО НОВО СЕЛО',23),
 (1620,3538,'ДОЛНО ОЗИРОВО',13),
 (1621,2757,'ДОЛНО ОСЕНОВО',1),
 (1622,6382,'ДОЛНО ПОЛЕ',27),
 (1623,6779,'ДОЛНО ПРАХОВО',10),
 (1624,7624,'ДОЛНО РЯХОВО',20),
 (1625,6161,'ДОЛНО САХРАНЕ',25),
 (1626,2567,'ДОЛНО СЕЛО',11),
 (1627,2869,'ДОЛНО СПАНЧЕВО',1),
 (1628,6455,'ДОЛНО СЪДИЕВО',27),
 (1629,2560,'ДОЛНО УЙНО',11),
 (1630,3639,'ДОЛНО ЦЕРОВЕНЕ',13);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1631,6381,'ДОЛНО ЧЕРКОВИЩЕ',27),
 (1632,5090,'ДОЛНО ШИВАЧЕВО',5),
 (1633,8342,'ДОЛНО ЯБЪЛКОВО',2),
 (1634,6573,'ДОЛНОСЕЛЦИ',27),
 (1635,4254,'ДОЛНОСЛАВ',17),
 (1636,6887,'ДОМИЩЕ',10),
 (1637,4357,'ДОМЛЯН',17),
 (1638,3659,'ДОНДУКОВ',13),
 (1639,5342,'ДОНИНО',8),
 (1640,5360,'ДОНКИНО',8),
 (1641,5081,'ДОНКОВЦИ',5),
 (1642,9354,'ДОНЧЕВО',9),
 (1643,5351,'ДОНЧОВЦИ',8),
 (1644,4641,'ДОРКОВО',14),
 (1645,6472,'ДОСИТЕЕВО',27),
 (1646,4831,'ДОСПАТ',22),
 (1647,2012,'ДОСПЕЙ',23),
 (1648,5380,'ДОЧА',8),
 (1649,6577,'ДРАБИШНА',27),
 (1650,5524,'ДРАГАНА',12),
 (1651,3534,'ДРАГАНИЦА',13),
 (1652,7773,'ДРАГАНОВЕЦ',26),
 (1653,8114,'ДРАГАНОВО',2),
 (1654,5137,'ДРАГАНОВО',5),
 (1655,9349,'ДРАГАНОВО',9),
 (1656,6714,'ДРАГАНОВО',10),
 (1657,5332,'ДРАГАНОВЦИ',8);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1658,5094,'ДРАГАНОВЦИ',5),
 (1659,5081,'ДРАГАНОСКОВЦИ',5),
 (1660,8489,'ДРАГАНЦИ',2),
 (1661,5335,'ДРАГАНЧЕТАТА',8),
 (1662,5952,'ДРАГАШ ВОЙВОДА',16),
 (1663,5332,'ДРАГИЕВЦИ',8),
 (1664,5145,'ДРАГИЖЕВО',5),
 (1665,5094,'ДРАГИЙЦИ',5),
 (1666,4642,'ДРАГИНОВО',14),
 (1667,2351,'ДРАГИЧЕВО',15),
 (1668,5097,'ДРАГНЕВЦИ',5),
 (1669,5360,'ДРАГНЕВЦИ',8),
 (1670,2237,'ДРАГОВИЩИЦА',23),
 (1671,2564,'ДРАГОВИЩИЦА',11),
 (1672,8437,'ДРАГОВО',2),
 (1673,2625,'ДРАГОДАН',11),
 (1674,8888,'ДРАГОДАНОВО',21),
 (1675,9860,'ДРАГОЕВО',28),
 (1676,2208,'ДРАГОИЛ',23),
 (1677,5751,'ДРАГОИЦА',12),
 (1678,4293,'ДРАГОЙНОВО',17),
 (1679,2554,'ДРАГОЙЧИНЦИ',11),
 (1680,2210,'ДРАГОМАН',23),
 (1681,5343,'ДРАГОМАНИ',8),
 (1682,4184,'ДРАГОМИР',17);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1683,2428,'ДРАГОМИРОВО',15),
 (1684,5285,'ДРАГОМИРОВО',5),
 (1685,7419,'ДРАГОМЪЖ',18),
 (1686,4406,'ДРАГОР',14),
 (1687,2916,'ДРАГОСТИН',1),
 (1688,2218,'ДРАГОТИНЦИ',23),
 (1689,2875,'ДРАГУШ',1),
 (1690,2008,'ДРАГУШИНОВО',23),
 (1691,8634,'ДРАЖЕВО',29),
 (1692,3929,'ДРАЖИНЦИ',6),
 (1693,8324,'ДРАКА',2),
 (1694,2829,'ДРАКАТА',1),
 (1695,7782,'ДРАЛФА',18),
 (1696,8651,'ДРАМА',29),
 (1697,4164,'ДРАНГОВО',17),
 (1698,6860,'ДРАНГОВО',10),
 (1699,2859,'ДРАНГОВО',1),
 (1700,5363,'ДРАНДАРИТЕ',8),
 (1701,8319,'ДРАЧЕВО',2),
 (1702,3267,'ДРАШАН',7),
 (1703,5648,'ДРАШКОВА ПОЛЯНА',12),
 (1704,2213,'ДРЕАТИН',23),
 (1705,2430,'ДРЕН',15),
 (1706,2739,'ДРЕНКОВО',1),
 (1707,5562,'ДРЕНОВ',12),
 (1708,3920,'ДРЕНОВЕЦ',6),
 (1709,2895,'ДРЕНОВИЦА',1),
 (1710,2236,'ДРЕНОВО',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1711,2876,'ДРЕНОВО',1),
 (1712,5095,'ДРЕНТА',5),
 (1713,9788,'ДРЕНЦИ',28),
 (1714,7834,'ДРИНОВО',26),
 (1715,6477,'ДРИПЧЕВО',27),
 (1716,9641,'ДРОПЛА',9),
 (1717,8563,'ДРОПЛА',2),
 (1718,2410,'ДРУГАН',15),
 (1719,3730,'ДРУЖБА',6),
 (1720,2281,'ДРУЖЕВО',23),
 (1721,6885,'ДРУЖИНЦИ',10),
 (1722,9815,'ДРУМЕВО',28),
 (1723,2596,'ДРУМОХАР',11),
 (1724,6820,'ДРУМЧЕ',10),
 (1725,2238,'ДРЪМША',23),
 (1726,9173,'ДРЪНДАР',3),
 (1727,4941,'ДРЯНКА',22),
 (1728,8524,'ДРЯНКОВЕЦ',2),
 (1729,6865,'ДРЯНОВА ГЛАВА',10),
 (1730,7122,'ДРЯНОВЕЦ',19),
 (1731,9392,'ДРЯНОВЕЦ',9),
 (1732,7268,'ДРЯНОВЕЦ',18),
 (1733,4856,'ДРЯНОВЕЦ',22),
 (1734,5370,'ДРЯНОВО',8),
 (1735,4241,'ДРЯНОВО',17),
 (1736,6493,'ДРЯНОВО',27),
 (1737,8652,'ДРЯНОВО',29),
 (1738,5618,'ДРЯНСКА',12);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1739,5462,'ДРЯНЪТ',8),
 (1740,4174,'ДУВАНЛИИ',17),
 (1741,6562,'ДУГАНОВО',27),
 (1742,5094,'ДУКОВЦИ',5),
 (1743,7650,'ДУЛОВО',20),
 (1744,5345,'ДУМНИЦИ',8),
 (1745,7623,'ДУНАВЕЦ',20),
 (1746,5041,'ДУНАВЦИ',5),
 (1747,3740,'ДУНАВЦИ',6),
 (1748,6145,'ДУНАВЦИ',25),
 (1749,4723,'ДУНЕВО',22),
 (1750,4990,'ДУНЯ',22),
 (1751,2600,'ДУПНИЦА',11),
 (1752,9670,'ДУРАНКУЛАК',9),
 (1753,5089,'ДУРОВЦИ',5),
 (1754,5380,'ДУРЧА',8),
 (1755,7435,'ДУХОВЕЦ',18),
 (1756,2083,'ДУШАНЦИ',23),
 (1757,5455,'ДУШЕВО',8),
 (1758,5455,'ДУШЕВСКИ КОЛИБИ',8),
 (1759,6846,'ДУШИНКОВО',10),
 (1760,2398,'ДУШИНЦИ',15),
 (1761,6714,'ДУШКА',10),
 (1762,5787,'ДЪБЕН',12),
 (1763,4349,'ДЪБЕНЕ',17),
 (1764,8213,'ДЪБНИК',2),
 (1765,2940,'ДЪБНИЦА',1),
 (1766,8996,'ДЪБОВА',21),
 (1767,4969,'ДЪБОВА',22);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1768,3674,'ДЪБОВА МАХАЛА',13),
 (1769,5973,'ДЪБОВАН',16),
 (1770,6554,'ДЪБОВЕЦ',27),
 (1771,9551,'ДЪБОВИК',9),
 (1772,8449,'ДЪБОВИЦА',2),
 (1773,8736,'ДЪБОВО',29),
 (1774,6178,'ДЪБОВО',25),
 (1775,9638,'ДЪБРАВА',9),
 (1776,2723,'ДЪБРАВА',1),
 (1777,5546,'ДЪБРАВА',12),
 (1778,5765,'ДЪБРАВАТА',12),
 (1779,9126,'ДЪБРАВИНО',3),
 (1780,4472,'ДЪБРАВИТЕ',14),
 (1781,7997,'ДЪБРАВИЦА',26),
 (1782,3916,'ДЪБРАВКА',6),
 (1783,6642,'ДЪЖДИНО',10),
 (1784,6917,'ДЪЖДОВНИК',10),
 (1785,6747,'ДЪЖДОВНИЦА',10),
 (1786,5668,'ДЪЛБОК ДОЛ',12),
 (1787,4280,'ДЪЛБОК ИЗВОР',17),
 (1788,6060,'ДЪЛБОКИ',25),
 (1789,5745,'ДЪЛГА ЛИВАДА',12),
 (1790,2492,'ДЪЛГА ЛУКА',15),
 (1791,7742,'ДЪЛГАЧ',26),
 (1792,3475,'ДЪЛГИ ДЕЛ',13),
 (1793,5088,'ДЪЛГИ ПРИПЕК',5),
 (1794,3756,'ДЪЛГО ПОЛЕ',6);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1795,4195,'ДЪЛГО ПОЛЕ',17),
 (1796,3638,'ДЪЛГОДЕЛЦИ',13),
 (1797,9250,'ДЪЛГОПОЛ',3),
 (1798,6637,'ДЪНГОВО',10),
 (1799,5350,'ДЪРВАРИ',8),
 (1800,6217,'ДЪРЖАВА',25),
 (1801,6188,'ДЪРЖАВЕН',25),
 (1802,3747,'ДЪРЖАНИЦА',6),
 (1803,5070,'ДЪРЛЕВЦИ',5),
 (1804,3129,'ДЪРМАНЦИ',7),
 (1805,5363,'ДЪСКАРИТЕ',8),
 (1806,5223,'ДЪСКОТ',5),
 (1807,8561,'ДЪСКОТНА',2),
 (1808,8330,'ДЮЛЕВО',2),
 (1809,4529,'ДЮЛЕВО',14),
 (1810,9108,'ДЮЛИНО',3),
 (1811,6876,'ДЮЛИЦА',10),
 (1812,8571,'ДЮЛЯ',2),
 (1813,8918,'ДЯДОВО',21),
 (1814,6705,'ДЯДОВСКО',10),
 (1815,6764,'ДЯДОВЦИ',10),
 (1816,2651,'ДЯКОВО',11),
 (1817,5454,'ДЯЛЪК',8),
 (1818,7270,'ДЯНКОВО',18),
 (1819,5965,'ЕВЛОГИЕВО',16),
 (1820,8363,'ЕВРЕНЕЗОВО',2),
 (1821,6931,'ЕГРЕК',10),
 (1822,2429,'ЕГЪЛНИЦА',15),
 (1823,9792,'ЕДИНАКОВЦИ',28);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1824,6173,'ЕДРЕВО',25),
 (1825,2464,'ЕЗДИМИРЦИ',15),
 (1826,2846,'ЕЗЕРЕЦ',1),
 (1827,9687,'ЕЗЕРЕЦ',9),
 (1828,8919,'ЕЗЕРО',21),
 (1829,9168,'ЕЗЕРОВО',3),
 (1830,4288,'ЕЗЕРОВО',17),
 (1831,5309,'ЕЗЕРОТО',8),
 (1832,7274,'ЕЗЕРЧЕ',18),
 (1833,8490,'ЕКЗАРХ АНТИМОВО',2),
 (1834,7171,'ЕКЗАРХ ЙОСИФ',19),
 (1835,5070,'ЕЛЕНА',5),
 (1836,6399,'ЕЛЕНА',27),
 (1837,6047,'ЕЛЕНИНО',25),
 (1838,4990,'ЕЛЕНКА',22),
 (1839,2275,'ЕЛЕНОВ ДОЛ',23),
 (1840,2726,'ЕЛЕНОВО',1),
 (1841,8943,'ЕЛЕНОВО',21),
 (1842,7837,'ЕЛЕНОВО',26),
 (1843,4731,'ЕЛЕНСКА',22),
 (1844,5388,'ЕЛЕНЦИТЕ',8),
 (1845,2782,'ЕЛЕШНИЦА',1),
 (1846,2125,'ЕЛЕШНИЦА',23),
 (1847,2100,'ЕЛИН ПЕЛИН',23),
 (1848,3160,'ЕЛИСЕЙНА',7),
 (1849,2159,'ЕЛОВДОЛ',23),
 (1850,2434,'ЕЛОВДОЛ',15),
 (1851,3471,'ЕЛОВИЦА',13);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1852,2489,'ЕЛОВИЦА',15),
 (1853,4970,'ЕЛХОВЕЦ',22),
 (1854,8700,'ЕЛХОВО',29),
 (1855,6174,'ЕЛХОВО',25),
 (1856,6064,'ЕЛХОВО',25),
 (1857,4538,'ЕЛШИЦА',14),
 (1858,4783,'ЕЛЬОВО',22),
 (1859,5065,'ЕМЕН',5),
 (1860,8252,'ЕМОНА',2),
 (1861,5469,'ЕНЕВ РЪТ',8),
 (1862,9389,'ЕНЕВО',9),
 (1863,9919,'ЕНЕВО',28),
 (1864,6142,'ЕНИНА',25),
 (1865,3261,'ЕНИЦА',7),
 (1866,6735,'ЕНЧЕЦ',10),
 (1867,5360,'ЕНЧОВЦИ',8),
 (1868,6788,'ЕНЬОВЧЕ',10),
 (1869,3431,'ЕРДЕН',13),
 (1870,2585,'ЕРЕМИЯ',11),
 (1871,4997,'ЕРМА РЕКА',22),
 (1872,6865,'ЕРОВЕТЕ',10),
 (1873,2486,'ЕРУЛ',15),
 (1874,8459,'ЕСЕН',2),
 (1875,9289,'ЕСЕНИЦА',3),
 (1876,2180,'ЕТРОПОЛЕ',23),
 (1877,9422,'ЕФРЕЙТОР БАКАЛОВО',9),
 (1878,6476,'ЕФРЕМ',27),
 (1879,2442,'ЖАБЛЯНО',15),
 (1880,2545,'ЖАБОКРЪТ',11),
 (1881,9492,'ЖЕГЛАРЦИ',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1882,3738,'ЖЕГЛИЦА',6),
 (1883,2423,'ЖЕДНА',15),
 (1884,6594,'ЖЕЛЕЗАРИ',27),
 (1885,7948,'ЖЕЛЕЗАРИ',26),
 (1886,5164,'ЖЕЛЕЗАРЦИ',5),
 (1887,6595,'ЖЕЛЕЗИНО',27),
 (1888,3461,'ЖЕЛЕЗНА',13),
 (1889,8488,'ЖЕЛЕЗНИК',2),
 (1890,6711,'ЖЕЛЕЗНИК',10),
 (1891,1475,'ЖЕЛЕЗНИЦА',23),
 (1892,2732,'ЖЕЛЕЗНИЦА',1),
 (1893,2267,'ЖЕЛЕН',23),
 (1894,9826,'ЖЕЛЪД',28),
 (1895,6855,'ЖЕЛЪДОВО',10),
 (1896,8860,'ЖЕЛЮ ВОЙВОДА',21),
 (1897,1837,'ЖЕЛЯВА',23),
 (1898,7455,'ЖЕЛЯЗКОВЕЦ',18),
 (1899,4136,'ЖЕЛЯЗНО',17),
 (1900,8106,'ЖЕЛЯЗОВО',2),
 (1901,6693,'ЖЕНДА',10),
 (1902,2567,'ЖЕРАВИНО',11),
 (1903,5621,'ЖЕРАВИЦА',12),
 (1904,8988,'ЖЕРАВНА',21),
 (1905,6190,'ЖЕРГОВЕЦ',25),
 (1906,5964,'ЖЕРНОВ',16),
 (1907,5344,'ЖИВКО',8),
 (1908,2065,'ЖИВКОВО',23),
 (1909,9794,'ЖИВКОВО',28);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1910,5622,'ЖИДОВ ДОЛ',12),
 (1911,2956,'ЖИЖЕВО',1),
 (1912,2573,'ЖИЛЕНЦИ',11),
 (1913,9929,'ЖИЛИНО',28),
 (1914,6654,'ЖИНЗИФОВО',10),
 (1915,6636,'ЖИТАРНИК',10),
 (1916,9555,'ЖИТЕН',9),
 (1917,1211,'ЖИТЕН',23),
 (1918,9424,'ЖИТНИЦА',9),
 (1919,4172,'ЖИТНИЦА',17),
 (1920,9278,'ЖИТНИЦА',3),
 (1921,6708,'ЖИТНИЦА',10),
 (1922,8475,'ЖИТОСВЯТ',2),
 (1923,2432,'ЖИТУША',15),
 (1924,4827,'ЖРЕБЕВО',22),
 (1925,8733,'ЖРЕБИНО',29),
 (1926,4585,'ЖРЕБИЧКО',14),
 (1927,8894,'ЖЪЛТ БРЯГ',21),
 (1928,4298,'ЖЪЛТ КАМЪК',17),
 (1929,5335,'ЖЪЛТЕШ',8),
 (1930,6368,'ЖЪЛТИ БРЯГ',27),
 (1931,6846,'ЖЪЛТИ РИД',10),
 (1932,6842,'ЖЪЛТИКА',10),
 (1933,6195,'ЖЪЛТОПОП',25),
 (1934,6789,'ЖЪЛТУША',10),
 (1935,2469,'ЗАБЕЛ',15),
 (1936,8367,'ЗАБЕРНОВО',2),
 (1937,4872,'ЗАБЪРДО',22);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1938,2374,'ЗАВАЛА',15),
 (1939,7330,'ЗАВЕТ',18),
 (1940,7881,'ЗАВЕТНО',26),
 (1941,2288,'ЗАВИДОВЦИ',23),
 (1942,8633,'ЗАВОЙ',29),
 (1943,6063,'ЗАГОРЕ',25),
 (1944,9966,'ЗАГОРИЧЕ',28),
 (1945,6865,'ЗАГОРСКИ',10),
 (1946,6817,'ЗАГОРСКО',10),
 (1947,9413,'ЗАГОРЦИ',9),
 (1948,8939,'ЗАГОРЦИ',21),
 (1949,8321,'ЗАГОРЦИ',2),
 (1950,4950,'ЗАГРАЖДЕН',22),
 (1951,5974,'ЗАГРАЖДЕН',16),
 (1952,7317,'ЗАДРУГА',18),
 (1953,4710,'ЗАЕВИТЕ',22),
 (1954,8564,'ЗАИМЧЕВО',2),
 (1955,8557,'ЗАЙЧАР',2),
 (1956,8843,'ЗАЙЧАРИ',21),
 (1957,6749,'ЗАЙЧИНО',10),
 (1958,9918,'ЗАЙЧИНО ОРЕШЕ',28),
 (1959,2085,'ЗАМУХОВО',23),
 (1960,3644,'ЗАМФИР',13),
 (1961,3530,'ЗАМФИРОВО',13),
 (1962,2875,'ЗАНОГА',1),
 (1963,2283,'ЗАНОГЕ',23),
 (1964,7832,'ЗАРАЕВО',26),
 (1965,7689,'ЗАРИЦА',20);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1966,7552,'ЗАРНИК',20),
 (1967,2284,'ЗАСЕЛЕ',23),
 (1968,9141,'ЗАСМЯНО',3),
 (1969,7610,'ЗАФИРОВО',20),
 (1970,7842,'ЗАХАРИ СТОЯНОВО',26),
 (1971,9671,'ЗАХАРИ СТОЯНОВО',9),
 (1972,5397,'ЗАЯ',8),
 (1973,9791,'ЗВЕГОР',28),
 (1974,7878,'ЗВЕЗДА',26),
 (1975,8572,'ЗВЕЗДА',2),
 (1976,6820,'ЗВЕЗДЕЛ',10),
 (1977,6653,'ЗВЕЗДЕЛИНА',10),
 (1978,6658,'ЗВЕЗДЕН',10),
 (1979,8360,'ЗВЕЗДЕЦ',2),
 (1980,9103,'ЗВЕЗДИЦА',3),
 (1981,7945,'ЗВЕЗДИЦА',26),
 (1982,7644,'ЗВЕНИМИР',20),
 (1983,3170,'ЗВЕРИНО',7),
 (1984,6668,'ЗВИНИЦА',10),
 (1985,6920,'ЗВЪНАРКА',10),
 (1986,7333,'ЗВЪНАРЦИ',18),
 (1987,9142,'ЗВЪНЕЦ',3),
 (1988,6732,'ЗВЪНИКА',10),
 (1989,4415,'ЗВЪНИЧЕВО',14),
 (1990,6744,'ЗВЪНЧЕ',10),
 (1991,5897,'ЗГАЛЕВО',16),
 (1992,3042,'ЗГОРИГРАД',7),
 (1993,2592,'ЗГУРОВО',11);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (1994,9137,'ЗДРАВЕЦ',3),
 (1995,6435,'ЗДРАВЕЦ',27),
 (1996,4241,'ЗДРАВЕЦ',17),
 (1997,7437,'ЗДРАВЕЦ',18),
 (1998,7769,'ЗДРАВЕЦ',26),
 (1999,5344,'ЗДРАВКОВЕЦ',8),
 (2000,6861,'ЗДРАВЧЕЦ',10),
 (2001,7641,'ЗЕБИЛ',20),
 (2002,7954,'ЗЕЛЕНА МОРАВА',26),
 (2003,2745,'ЗЕЛЕНДОЛ',1),
 (2004,2478,'ЗЕЛЕНИГРАД',15),
 (2005,5099,'ЗЕЛЕНИК',5),
 (2006,5351,'ЗЕЛЕНИКА',8),
 (2007,4155,'ЗЕЛЕНИКОВО',17),
 (2008,6740,'ЗЕЛЕНИКОВО',10),
 (2009,5304,'ЗЕЛЕНО ДЪРВО',8),
 (2010,2440,'ЗЕМЕН',15),
 (2011,9411,'ЗЕМЕНЦИ',9),
 (2012,6266,'ЗЕМЛЕН',25),
 (2013,8517,'ЗЕТЬОВО',2),
 (2014,6220,'ЗЕТЬОВО',25),
 (2015,8160,'ЗИДАРОВО',2),
 (2016,2356,'ЗИДАРЦИ',15),
 (2017,2282,'ЗИМЕВИЦА',23),
 (2018,8428,'ЗИМЕН',2),
 (2019,6627,'ЗИМЗЕЛЕН',10),
 (2020,9421,'ЗИМНИЦА',9),
 (2021,6177,'ЗИМНИЦА',25);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2022,8690,'ЗИМНИЦА',29),
 (2023,6396,'ЗИМОВИНА',27),
 (2024,6965,'ЗИМОРНИЦА',10),
 (2025,9880,'ЗЛАТАР',28),
 (2026,8641,'ЗЛАТАРИ',29),
 (2027,2783,'ЗЛАТАРИЦА',1),
 (2028,5090,'ЗЛАТАРИЦА',5),
 (2029,5345,'ЗЛАТЕВЦИ',8),
 (2030,8875,'ЗЛАТИ ВОЙВОДА',21),
 (2031,9218,'ЗЛАТИНА',3),
 (2032,8746,'ЗЛАТИНИЦА',29),
 (2033,6197,'ЗЛАТИРЪТ',25),
 (2034,4212,'ЗЛАТИТРАП',17),
 (2035,2080,'ЗЛАТИЦА',23),
 (2036,3630,'ЗЛАТИЯ',13),
 (2037,9385,'ЗЛАТИЯ',9),
 (2038,6221,'ЗЛАТНА ЛИВАДА',25),
 (2039,9944,'ЗЛАТНА НИВА',28),
 (2040,5760,'ЗЛАТНА ПАНЕГА',12),
 (2041,9007,'ЗЛАТНИ ПЯСЪЦИ',3),
 (2042,4264,'ЗЛАТОВРЪХ',17),
 (2043,4980,'ЗЛАТОГРАД',22),
 (2044,7694,'ЗЛАТОКЛАС',20),
 (2045,6915,'ЗЛАТОЛИСТ',10),
 (2046,2830,'ЗЛАТОЛИСТ',1),
 (2047,6421,'ЗЛАТОПОЛЕ',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2048,4162,'ЗЛАТОСЕЛ',17),
 (2049,6484,'ЗЛАТОУСТОВО',27),
 (2050,2225,'ЗЛАТУША',23),
 (2051,3161,'ЗЛИДОЛ',7),
 (2052,2558,'ЗЛОГОШ',11),
 (2053,2009,'ЗЛОКУЧЕНЕ',23),
 (2054,4491,'ЗЛОКУЧЕНЕ',14),
 (2055,9643,'ЗМЕЕВО',9),
 (2056,4834,'ЗМЕИЦА',22),
 (2057,7945,'ЗМЕЙНО',26),
 (2058,6059,'ЗМЕЬОВО',25),
 (2059,4777,'ЗМИЕВО',22),
 (2060,6272,'ЗНАМЕНОСЕЦ',25),
 (2061,9553,'ЗОГРАФ',9),
 (2062,2882,'ЗОЙЧЕНЕ',1),
 (2063,5737,'ЗОРЕНИШКИ ДОЛ',12),
 (2064,9156,'ЗОРНИЦА',3),
 (2065,6650,'ЗОРНИЦА',10),
 (2066,2821,'ЗОРНИЦА',1),
 (2067,8313,'ЗОРНИЦА',2),
 (2068,6367,'ЗОРНИЦА',27),
 (2069,4857,'ЗОРНИЦА',22),
 (2070,9491,'ЗЪРНЕВО',9),
 (2071,4407,'ИВАЙЛО',14),
 (2072,6570,'ИВАЙЛОВГРАД',27),
 (2073,4206,'ИВАН ВАЗОВО',17),
 (2074,5363,'ИВАН ДИМОВ',8),
 (2075,7342,'ИВАН ШИШМАНОВО',18);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2076,5084,'ИВАНИВАНОВЦИ',5),
 (2077,5300,'ИВАНИЛИ',8),
 (2078,5340,'ИВАНКОВЦИ',8),
 (2079,9865,'ИВАНОВО',28),
 (2080,7088,'ИВАНОВО',19),
 (2081,2875,'ИВАНОВО',1),
 (2082,4918,'ИВАНОВО',22),
 (2083,6465,'ИВАНОВО',27),
 (2084,5035,'ИВАНОВЦИ',5),
 (2085,3739,'ИВАНОВЦИ',6),
 (2086,2562,'ИВАНОВЦИ',11),
 (2087,9810,'ИВАНСКИ',28),
 (2088,6628,'ИВАНЦИ',10),
 (2089,5194,'ИВАНЧА',5),
 (2090,7859,'ИВАНЧА',26),
 (2091,5623,'ИВАНШНИЦА',12),
 (2092,1393,'ИВАНЯНЕ',23),
 (2093,4334,'ИГАНОВО',17),
 (2094,8745,'ИГЛИКА',29),
 (2095,5343,'ИГЛИКА',8),
 (2096,9797,'ИГЛИКА',28),
 (2097,9143,'ИГНАТИЕВО',3),
 (2098,3167,'ИГНАТИЦА',7),
 (2099,3631,'ИГНАТОВО',13),
 (2100,5370,'ИГНАТОВЦИ',8),
 (2101,5098,'ИГНАТОВЦИ',5),
 (2102,2848,'ИГРАЛИЩЕ',1),
 (2103,5422,'ИДИЛЕВО',8);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2104,4269,'ИЗБЕГЛИИ',17),
 (2105,9959,'ИЗБУЛ',28),
 (2106,3742,'ИЗВОР',6),
 (2107,2415,'ИЗВОР',15),
 (2108,4116,'ИЗВОР',17),
 (2109,2219,'ИЗВОР',23),
 (2110,8153,'ИЗВОР',2),
 (2111,3821,'ИЗВОР МАХАЛА',6),
 (2112,8116,'ИЗВОРИЩЕ',2),
 (2113,9297,'ИЗВОРНИК',3),
 (2114,7950,'ИЗВОРОВО',26),
 (2115,4235,'ИЗВОРОВО',17),
 (2116,9538,'ИЗВОРОВО',9),
 (2117,6461,'ИЗВОРОВО',27),
 (2118,6242,'ИЗВОРОВО',25),
 (2119,9154,'ИЗВОРСКО',3),
 (2120,5536,'ИЗВОРЧЕ',12),
 (2121,2711,'ИЗГРЕВ',1),
 (2122,9754,'ИЗГРЕВ',28),
 (2123,8717,'ИЗГРЕВ',29),
 (2124,5924,'ИЗГРЕВ',16),
 (2125,4990,'ИЗГРЕВ',22),
 (2126,8847,'ИЗГРЕВ',21),
 (2127,9176,'ИЗГРЕВ',3),
 (2128,8273,'ИЗГРЕВ',2),
 (2129,5335,'ИЗТОЧНИК',8),
 (2130,5082,'ИЛАКОВ РЪТ',5),
 (2131,5045,'ИЛЕВЦИ',5),
 (2132,7948,'ИЛИЙНО',26);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2133,6845,'ИЛИЙСКО',10),
 (2134,2072,'ИЛИНДЕН',23),
 (2135,2929,'ИЛИНДЕН',1),
 (2136,2833,'ИЛИНДЕНЦИ',1),
 (2137,6745,'ИЛИНИЦА',10),
 (2138,5093,'ИЛИЮВЦИ',5),
 (2139,2581,'ИЛИЯ',11),
 (2140,9813,'ИЛИЯ БЛЪСКОВО',28),
 (2141,9877,'ИМРЕНЧЕВО',28),
 (2142,8149,'ИНДЖЕ ВОЙВОДА',2),
 (2143,3763,'ИНОВО',6),
 (2144,9666,'ИРЕЧЕК',9),
 (2145,8697,'ИРЕЧЕКОВО',29),
 (2146,5367,'ИРИНЕЦИ',8),
 (2147,7532,'ИРНИК',20),
 (2148,6781,'ИСКРА',10),
 (2149,5380,'ИСКРА',8),
 (2150,8481,'ИСКРА',2),
 (2151,4297,'ИСКРА',17),
 (2152,7580,'ИСКРА',20),
 (2153,2290,'ИСКРЕЦ',23),
 (2154,2288,'ИСКРЕЦ - САНАТОРИУМ',23),
 (2155,6293,'ИСКРИЦА',25),
 (2156,9285,'ИСКЪР',3),
 (2157,5972,'ИСКЪР',16),
 (2158,5868,'ИСКЪР',16),
 (2159,7400,'ИСПЕРИХ',18),
 (2160,4588,'ИСПЕРИХОВО',14),
 (2161,4767,'ИСЬОВЦИ',22);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2162,2050,'ИХТИМАН',23),
 (2163,8849,'ИЧЕРА',21),
 (2164,6551,'ЙЕРУСАЛИМОВО',27),
 (2165,4219,'ЙОАКИМ ГРУЕВО',17),
 (2166,9531,'ЙОВКОВО',9),
 (2167,5360,'ЙОВОВЦИ',8),
 (2168,5035,'ЙОВЧЕВЦИ',5),
 (2169,5553,'ЙОГЛАВ',12),
 (2170,7450,'ЙОНКОВО',18),
 (2171,6724,'ЙОНЧОВО',10),
 (2172,7569,'ЙОРДАНОВО',20),
 (2173,8629,'КАБИЛЕ',29),
 (2174,8210,'КАБЛЕШКОВО',2),
 (2175,9488,'КАБЛЕШКОВО',9),
 (2176,6703,'КАБЛЕШКОВО',10),
 (2177,9650,'КАВАРНА',9),
 (2178,8143,'КАВАЦИТЕ',2),
 (2179,5163,'КАВЛАК',5),
 (2180,2889,'КАВРАКИРОВО',1),
 (2181,4213,'КАДИЕВО',17),
 (2182,2593,'КАДРОВИЦА',11),
 (2183,6590,'КАЗАК',27),
 (2184,6062,'КАЗАНКА',25),
 (2185,6100,'КАЗАНЛЪК',25),
 (2186,6850,'КАЗАЦИТЕ',10),
 (2187,5548,'КАЗАЧЕВО',12),
 (2188,9125,'КАЗАШКА РЕКА',3);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2189,9140,'КАЗАШКО',3),
 (2190,7574,'КАЗИМИР',20),
 (2191,1532,'КАЗИЧЕНЕ',23),
 (2192,7550,'КАЙНАРДЖА',20),
 (2193,6927,'КАЛАЙДЖИЕВО',10),
 (2194,5096,'КАЛАЙДЖИИ',5),
 (2195,5667,'КАЛЕЙЦА',12),
 (2196,4147,'КАЛЕКОВЕЦ',17),
 (2197,3151,'КАЛЕН',7),
 (2198,3829,'КАЛЕНИК',6),
 (2199,5575,'КАЛЕНИК',12),
 (2200,2253,'КАЛЕНОВЦИ',23),
 (2201,2832,'КАЛИМАНЦИ',1),
 (2202,9177,'КАЛИМАНЦИ',3),
 (2203,3788,'КАЛИНА',6),
 (2204,9544,'КАЛИНА',9),
 (2205,6623,'КАЛИНКА',10),
 (2206,9795,'КАЛИНО',28),
 (2207,7539,'КАЛИПЕТРОВО',20),
 (2208,6049,'КАЛИТИНОВО',25),
 (2209,2431,'КАЛИЩЕ',15),
 (2210,7960,'КАЛНИЩЕ',26),
 (2211,8368,'КАЛОВО',2),
 (2212,5388,'КАЛОМЕН',8),
 (2213,2212,'КАЛОТИНА',23),
 (2214,2444,'КАЛОТИНЦИ',15),
 (2215,4370,'КАЛОФЕР',17),
 (2216,9288,'КАЛОЯН',3);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2217,6070,'КАЛОЯНОВЕЦ',25),
 (2218,4173,'КАЛОЯНОВО',17),
 (2219,8881,'КАЛОЯНОВО',21),
 (2220,6675,'КАЛОЯНЦИ',10),
 (2221,7631,'КАЛУГЕРЕНЕ',20),
 (2222,4462,'КАЛУГЕРОВО',14),
 (2223,2169,'КАЛУГЕРОВО',23),
 (2224,6495,'КАЛУГЕРОВО',27),
 (2225,8677,'КАЛЧЕВО',29),
 (2226,5616,'КАЛЧЕВСКА',12),
 (2227,5340,'КАЛЧОВЦИ',8),
 (2228,2215,'КАМБЕЛЕВЦИ',23),
 (2229,7930,'КАМБУРОВО',26),
 (2230,9425,'КАМЕН',9),
 (2231,8882,'КАМЕН',21),
 (2232,5160,'КАМЕН',5),
 (2233,9661,'КАМЕН БРЯГ',9),
 (2234,8728,'КАМЕН ВРЪХ',29),
 (2235,9253,'КАМЕН ДЯЛ',3),
 (2236,2878,'КАМЕНА',1),
 (2237,9102,'КАМЕНАР',3),
 (2238,7247,'КАМЕНАР',18),
 (2239,8215,'КАМЕНАР',2),
 (2240,5083,'КАМЕНАРИ',5),
 (2241,6729,'КАМЕНАРЦИ',10),
 (2242,6800,'КАМЕНЕЦ',10),
 (2243,5866,'КАМЕНЕЦ',16);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2244,8655,'КАМЕНЕЦ',29),
 (2245,2677,'КАМЕНИК',11),
 (2246,2072,'КАМЕНИЦА',23),
 (2247,2828,'КАМЕНИЦА',1),
 (2248,2572,'КАМЕНИЧКА СКАКАВИЦА',11),
 (2249,6918,'КАМЕНКА',10),
 (2250,8997,'КАМЕННА',21),
 (2251,6546,'КАМЕННА РЕКА',27),
 (2252,3479,'КАМЕННА РИКСА',13),
 (2253,8120,'КАМЕНО',2),
 (2254,3150,'КАМЕНО ПОЛЕ',7),
 (2255,7295,'КАМЕНОВО',19),
 (2256,8928,'КАМЕНОВО',21),
 (2257,8455,'КАМЕНСКО',2),
 (2258,7565,'КАМЕНЦИ',20),
 (2259,8578,'КАМЕНЯК',2),
 (2260,9783,'КАМЕНЯК',28),
 (2261,6850,'КАМЕНЯНЕ',10),
 (2262,5333,'КАМЕЩИЦА',8),
 (2263,6571,'КАМИЛСКИ ДОЛ',27),
 (2264,9130,'КАМЧИЯ',3),
 (2265,8434,'КАМЧИЯ',2),
 (2266,6937,'КАНДИЛКА',10),
 (2267,4631,'КАНДОВИ',14),
 (2268,3843,'КАНИЦ',6),
 (2269,5094,'КАНТАРИ',5),
 (2270,6695,'КАНЯК',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2271,9960,'КАОЛИНОВО',28),
 (2272,2872,'КАПАТОВО',1),
 (2273,6530,'КАПИТАН АНДРЕЕВО',27),
 (2274,4589,'КАПИТАН ДИМИТРИЕВО',14),
 (2275,9408,'КАПИТАН ДИМИТРОВО',9),
 (2276,9770,'КАПИТАН ПЕТКО',28),
 (2277,3768,'КАПИТАНОВЦИ',6),
 (2278,7988,'КАПИЩЕ',26),
 (2279,7453,'КАРА МИХАЛ',18),
 (2280,4484,'КАРАБУНАР',14),
 (2281,4350,'КАРАВЕЛОВО',17),
 (2282,9942,'КАРАВЕЛОВО',28),
 (2283,8647,'КАРАВЕЛОВО',29),
 (2284,8553,'КАРАВЕЛЬОВО',2),
 (2285,8543,'КАРАГЕОРГИЕВО',2),
 (2286,4283,'КАРАДЖАЛОВО',17),
 (2287,4117,'КАРАДЖОВО',17),
 (2288,5386,'КАРАИВАНЦА',8),
 (2289,5095,'КАРАИВАНЦИ',5),
 (2290,5230,'КАРАИСЕН',5),
 (2291,5343,'КАРАЛИ',8),
 (2292,9299,'КАРАМАНИТЕ',3),
 (2293,7130,'КАРАМАНОВО',19),
 (2294,6372,'КАРАМАНЦИ',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2295,5471,'КАРАМИЧЕВСКА',8),
 (2296,6826,'КАРАМФИЛ',10),
 (2297,7163,'КАРАН ВЪРБОВКА',19),
 (2298,8839,'КАРАНДИЛА',21),
 (2299,5094,'КАРАНДИЛИ',5),
 (2300,8532,'КАРАНОВО',2),
 (2301,8934,'КАРАНОВО',21),
 (2302,5188,'КАРАНЦИ',5),
 (2303,9390,'КАРАПЕЛИТ',9),
 (2304,2118,'КАРАПОЛЦИ',23),
 (2305,3136,'КАРАШ',7),
 (2306,3923,'КАРБИНЦИ',6),
 (2307,9619,'КАРВУНА',9),
 (2308,9530,'КАРДАМ',9),
 (2309,7830,'КАРДАМ',26),
 (2310,2088,'КАРЛИЕВО',23),
 (2311,4300,'КАРЛОВО',17),
 (2312,6572,'КАРЛОВСКО',27),
 (2313,5782,'КАРЛУКОВО',12),
 (2314,8400,'КАРНОБАТ',2),
 (2315,4921,'КАСАПСКО',22),
 (2316,2424,'КАСИЛАГ',15),
 (2317,6439,'КАСНАКОВО',27),
 (2318,9930,'КАСПИЧАН',28),
 (2319,9931,'КАСПИЧАН-СЕЛО',28),
 (2320,5472,'КАСТЕЛ',8),
 (2321,5894,'КАТЕРИНА',16);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2322,5392,'КАТРАНДЖИИ',8),
 (2323,4739,'КАТРАНИЦА',22),
 (2324,2537,'КАТРИЩЕ',11),
 (2325,5569,'КАТУНЕЦ',12),
 (2326,4120,'КАТУНИЦА',17),
 (2327,8991,'КАТУНИЩЕ',21),
 (2328,2830,'КАТУНЦИ',1),
 (2329,7160,'КАЦЕЛОВО',19),
 (2330,6907,'КАЧУЛКА',10),
 (2331,5351,'КАШЕНЦИ',8),
 (2332,2820,'КАШИНА',1),
 (2333,6863,'КАЯЛОБА',10),
 (2334,5388,'КЕРЕКА',8),
 (2335,5365,'КЕРЕНИТЕ',8),
 (2336,8870,'КЕРМЕН',21),
 (2337,5161,'КЕСАРЕВО',5),
 (2338,4828,'КЕСТЕН',22),
 (2339,7973,'КЕСТЕНОВО',26),
 (2340,5345,'КИЕВЦИ',8),
 (2341,5050,'КИЛИФАРЕВО',5),
 (2342,8998,'КИПИЛОВО',21),
 (2343,9169,'КИПРА',3),
 (2344,5094,'КИРЕВЦИ',5),
 (2345,3823,'КИРЕЕВО',6),
 (2346,8741,'КИРИЛОВО',29),
 (2347,6064,'КИРИЛОВО',25),
 (2348,5539,'КИРКОВА МАХАЛА',12),
 (2349,6884,'КИРКОВО',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2350,8344,'КИРОВО',2),
 (2351,5521,'КИРЧЕВО',12),
 (2352,3675,'КИСЕЛЕВО',13),
 (2353,2556,'КИСЕЛИЦА',11),
 (2354,4765,'КИСЕЛИЧЕВО',22),
 (2355,5360,'КИСЕЛКОВЦИ',8),
 (2356,5365,'КИСИЙЦИТЕ',8),
 (2357,5035,'КИСЬОВЦИ',5),
 (2358,7430,'КИТАНЧЕВО',18),
 (2359,9241,'КИТЕН',3),
 (2360,8284,'КИТЕН',2),
 (2361,7993,'КИТИНО',26),
 (2362,9127,'КИТКА',3),
 (2363,8558,'КИТКА',2),
 (2364,6868,'КИТНА',10),
 (2365,6791,'КИТНИЦА',10),
 (2366,9151,'КИЧЕВО',3),
 (2367,7243,'КИЧЕНИЦА',18),
 (2368,6395,'КЛАДЕНЕЦ',27),
 (2369,9816,'КЛАДЕНЕЦ',28),
 (2370,2895,'КЛАДЕНЦИ',1),
 (2371,9497,'КЛАДЕНЦИ',9),
 (2372,5046,'КЛАДНИ ДЯЛ',5),
 (2373,2347,'КЛАДНИЦА',15),
 (2374,3758,'КЛАДОРУБ',6),
 (2375,2421,'КЛЕНОВИК',15),
 (2376,2837,'КЛЕПАЛОТО',1),
 (2377,8427,'КЛИКАЧ',2);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2378,8442,'КЛИМАШ',2),
 (2379,9970,'КЛИМЕНТ',28),
 (2380,4348,'КЛИМЕНТ',17),
 (2381,9150,'КЛИМЕНТОВО',3),
 (2382,5183,'КЛИМЕНТОВО',5),
 (2383,1320,'КЛИСУРА',24),
 (2384,2738,'КЛИСУРА',1),
 (2385,4341,'КЛИСУРА',17),
 (2386,2026,'КЛИСУРА',23),
 (2387,3483,'КЛИСУРИЦА',13),
 (2388,3543,'КЛИСУРСКИ МАНАСТИР',13),
 (2389,6310,'КЛОКОТНИЦА',27),
 (2390,5035,'КЛЪШКА РЕКА',5),
 (2391,2899,'КЛЮЧ',1),
 (2392,5340,'КМЕТОВЦИ',8),
 (2393,5343,'КМЕТЧЕТА',8),
 (2394,3230,'КНЕЖА',7),
 (2395,6390,'КНИЖОВНИК',27),
 (2396,3677,'КНЯЖЕВА МАХАЛА',13),
 (2397,6566,'КНЯЖЕВО',27),
 (2398,6077,'КНЯЖЕВСКО',25),
 (2399,6593,'КОБИЛИНО',27),
 (2400,3442,'КОБИЛЯК',13),
 (2401,6734,'КОБИЛЯНЕ',10),
 (2402,6272,'КОВАЧ',25),
 (2403,7852,'КОВАЧЕВЕЦ',26),
 (2404,2969,'КОВАЧЕВИЦА',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2405,6264,'КОВАЧЕВО',25),
 (2406,2824,'КОВАЧЕВО',1),
 (2407,4477,'КОВАЧЕВО',14),
 (2408,2450,'КОВАЧЕВЦИ',15),
 (2409,2023,'КОВАЧЕВЦИ',23),
 (2410,8874,'КОВАЧИТЕ',21),
 (2411,3643,'КОВАЧИЦА',13),
 (2412,6913,'КОВИЛ',10),
 (2413,5241,'КОЕВЦИ',5),
 (2414,5365,'КОЕВЦИ',8),
 (2415,4813,'КОЖАРИ',22),
 (2416,2487,'КОЖИНЦИ',15),
 (2417,5097,'КОЖЛЮВЦИ',5),
 (2418,6957,'КОЖУХАРЦИ',10),
 (2419,4248,'КОЗАНОВО',17),
 (2420,5915,'КОЗАР БЕЛЕНЕ',16),
 (2421,8493,'КОЗАРЕ',2),
 (2422,5148,'КОЗАРЕВЕЦ',5),
 (2423,6070,'КОЗАРЕВЕЦ',25),
 (2424,8674,'КОЗАРЕВО',29),
 (2425,4983,'КОЗАРКА',22),
 (2426,4584,'КОЗАРСКО',14),
 (2427,5344,'КОЗИ РОГ',8),
 (2428,8843,'КОЗИН ДОЛ',21),
 (2429,6848,'КОЗИЦА',10),
 (2430,7833,'КОЗИЦА',26),
 (2431,8224,'КОЗИЧИНО',2),
 (2432,6865,'КОЗЛЕВО',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2433,6371,'КОЗЛЕЦ',27),
 (2434,5290,'КОЗЛОВЕЦ',5),
 (2435,3320,'КОЗЛОДУЙ',7),
 (2436,9387,'КОЗЛОДУЙЦИ',9),
 (2437,7913,'КОЗМА ПРЕЗВИТЕР',26),
 (2438,8255,'КОЗНИЦА',2),
 (2439,5080,'КОЗЯ РЕКА',5),
 (2440,7673,'КОЗЯК',20),
 (2441,5842,'КОИЛОВЦИ',16),
 (2442,5986,'КОЙНАРЕ',16),
 (2443,5350,'КОЙЧОВЦИ',8),
 (2444,1191,'КОКАЛЯНЕ',23),
 (2445,6676,'КОКИЧЕ',10),
 (2446,4963,'КОКОРА',22),
 (2447,4725,'КОКОРКОВО',22),
 (2448,4971,'КОКОРЦИ',22),
 (2449,6733,'КОКОШАНЕ',10),
 (2450,5084,'КОЛАРИ',5),
 (2451,7613,'КОЛАРОВО',20),
 (2452,2880,'КОЛАРОВО',1),
 (2453,6271,'КОЛАРОВО',25),
 (2454,6460,'КОЛАРОВО',27),
 (2455,9481,'КОЛАРЦИ',9),
 (2456,6050,'КОЛЕНА',25),
 (2457,6376,'КОЛЕЦ',27),
 (2458,2838,'КОЛИБИТЕ',1),
 (2459,5343,'КОЛИШОВЦИ',8),
 (2460,7675,'КОЛОБЪР',20);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2461,5360,'КОЛЮ ГАНЕВ',8),
 (2462,6237,'КОЛЮ МАРИНОВО',25),
 (2463,3516,'КОМАРЕВО',13),
 (2464,3247,'КОМАРЕВО',7),
 (2465,5853,'КОМАРЕВО',16),
 (2466,9269,'КОМАРЕВО',3),
 (2467,3648,'КОМОЩИЦА',13),
 (2468,9254,'КОМУНАРИ',3),
 (2469,6690,'КОМУНИГА',10),
 (2470,2255,'КОМЩИЦА',23),
 (2471,7868,'КОНАК',26),
 (2472,9548,'КОНАРЕ',9),
 (2473,6189,'КОНАРЕ',25),
 (2474,2792,'КОНАРСКО',1),
 (2475,5364,'КОНАРСКОТО',8),
 (2476,6593,'КОНДОВО',27),
 (2477,8275,'КОНДОЛОВО',2),
 (2478,2422,'КОНДОФРЕЙ',15),
 (2479,8623,'КОНЕВЕЦ',29),
 (2480,9887,'КОНЕВО',28),
 (2481,7442,'КОНЕВО',18),
 (2482,6661,'КОНЕВО',10),
 (2483,6588,'КОННИЦИ',27),
 (2484,7995,'КОНОП',26),
 (2485,2379,'КОНСКА',15),
 (2486,5080,'КОНСТАНТИН',5),
 (2487,6267,'КОНСТАНТИНОВЕЦ',25),
 (2488,9180,'КОНСТАНТИНОВО',3);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2489,8129,'КОНСТАНТИНОВО',2),
 (2490,6494,'КОНСТАНТИНОВО',27),
 (2491,6841,'КОНТИЛ',10),
 (2492,4268,'КОНУШ',17),
 (2493,6370,'КОНУШ',27),
 (2494,6828,'КОНЧЕ',10),
 (2495,9748,'КОНЬОВЕЦ',28),
 (2496,2085,'КОНЬОВИЦА',23),
 (2497,8920,'КОНЬОВО',21),
 (2498,2540,'КОНЯВО',11),
 (2499,2409,'КОПАНИЦА',15),
 (2500,3467,'КОПИЛОВЦИ',13),
 (2501,2543,'КОПИЛОВЦИ',11),
 (2502,6698,'КОПИТНИК',10),
 (2503,7775,'КОПРЕЦ',26),
 (2504,2567,'КОПРИВА',11),
 (2505,7120,'КОПРИВЕЦ',19),
 (2506,2921,'КОПРИВЛЕН',1),
 (2507,2077,'КОПРИВЩИЦА',23),
 (2508,6137,'КОПРИНКА',25),
 (2509,5342,'КОПЧЕЛИИТЕ',8),
 (2510,6392,'КОРЕН',27),
 (2511,4921,'КОРИИТЕ',22),
 (2512,4976,'КОРИТАТА',22),
 (2513,9403,'КОРИТЕН',9),
 (2514,5455,'КОРИЯТА',8),
 (2515,2688,'КОРКИНА',11);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2516,5433,'КОРМЯНСКО',8),
 (2517,2970,'КОРНИЦА',1),
 (2518,8930,'КОРТЕН',21),
 (2519,6820,'КОС',10),
 (2520,7612,'КОСАРА',20),
 (2521,5392,'КОСАРКА',8),
 (2522,2448,'КОСАЧА',15),
 (2523,5095,'КОСЕВЦИ',5),
 (2524,5380,'КОСИЛКА',8),
 (2525,8223,'КОСОВЕЦ',2),
 (2526,4240,'КОСОВО',17),
 (2527,3794,'КОСОВО',6),
 (2528,9974,'КОСОВО',28),
 (2529,2557,'КОСОВО',11),
 (2530,3833,'КОСТА ПЕРЧЕВО',6),
 (2531,5301,'КОСТАДИНИТЕ',8),
 (2532,2060,'КОСТАДИНКИНО',23),
 (2533,7273,'КОСТАНДЕНЕЦ',18),
 (2534,4644,'КОСТАНДОВО',14),
 (2535,5099,'КОСТЕЛ',5),
 (2536,3047,'КОСТЕЛЕВО',7),
 (2537,8441,'КОСТЕН',2),
 (2538,9806,'КОСТЕНА РЕКА',28),
 (2539,2030,'КОСТЕНЕЦ',23),
 (2540,2042,'КОСТЕНЕЦ - село',23),
 (2541,5343,'КОСТЕНКОВЦИ',8),
 (2542,3518,'КОСТЕНЦИ',13);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2543,8283,'КОСТИ',2),
 (2544,4205,'КОСТИЕВО',17),
 (2545,6593,'КОСТИЛКОВО',27),
 (2546,2230,'КОСТИНБРОД',23),
 (2547,6743,'КОСТИНО',10),
 (2548,3755,'КОСТИЧОВЦИ',6),
 (2549,6533,'КОСТУР',27),
 (2550,6884,'КОСТУРИНО',10),
 (2551,2489,'КОСТУРИНЦИ',15),
 (2552,8970,'КОТЕЛ',21),
 (2553,3522,'КОТЕНОВЦИ',13),
 (2554,6957,'КОТЛАРИ',10),
 (2555,9374,'КОТЛЕНЦИ',9),
 (2556,5097,'КОТУЦИ',5),
 (2557,2955,'КОЧАН',1),
 (2558,4999,'КОЧАНИ',22),
 (2559,4119,'КОЧЕВО',17),
 (2560,2640,'КОЧЕРИНОВО',11),
 (2561,9477,'КОЧМАР',9),
 (2562,9862,'КОЧОВО',28),
 (2563,3771,'КОШАВА',6),
 (2564,2390,'КОШАРЕВО',15),
 (2565,2453,'КОШАРИТЕ',15),
 (2566,8253,'КОШАРИЦА',2),
 (2567,7062,'КОШАРНА',19),
 (2568,4778,'КОШНИЦА',22),
 (2569,7783,'КОШНИЧАРИ',18),
 (2570,7087,'КОШОВ',19);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2571,6075,'КРАВИНО',25),
 (2572,3048,'КРАВОДЕР',7),
 (2573,9418,'КРАГУЕВО',9),
 (2574,2149,'КРАЕВО',23),
 (2575,2781,'КРАИЩЕ',1),
 (2576,9535,'КРАИЩЕ',9),
 (2577,9875,'КРАЙГОРЦИ',28),
 (2578,4900,'КРАЙНА',22),
 (2579,2649,'КРАЙНИ ДОЛ',11),
 (2580,2633,'КРАЙНИЦИ',11),
 (2581,6739,'КРАЙНО СЕЛО',10),
 (2582,8752,'КРАЙНОВО',29),
 (2583,7997,'КРАЙПОЛЕ',26),
 (2584,9287,'КРАКРА',3),
 (2585,2349,'КРАЛЕВДОЛ',15),
 (2586,6362,'КРАЛЕВО',27),
 (2587,7770,'КРАЛЕВО',26),
 (2588,4452,'КРАЛИ МАРКО',14),
 (2589,5429,'КРАМОЛИН',8),
 (2590,6898,'КРАН',10),
 (2591,9649,'КРАНЕВО',9),
 (2592,7549,'КРАНОВО',20),
 (2593,3149,'КРАПЕЦ',7),
 (2594,9674,'КРАПЕЦ',9),
 (2595,3434,'КРАПЧЕНЕ',13),
 (2596,2370,'КРАСАВА',15),
 (2597,9534,'КРАСЕН',9),
 (2598,7075,'КРАСЕН',19);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2599,9935,'КРАСЕН ДОЛ',28),
 (2600,9258,'КРАСИМИР',3),
 (2601,6962,'КРАСИНО',10),
 (2602,5242,'КРАСНО ГРАДИЩЕ',5),
 (2603,4178,'КРАСНОВО',17),
 (2604,7925,'КРАСНОСЕЛЦИ',26),
 (2605,3964,'КРАЧИМИР',6),
 (2606,2771,'КРЕМЕН',1),
 (2607,6884,'КРЕМЕН',10),
 (2608,9639,'КРЕМЕНА',9),
 (2609,4755,'КРЕМЕНЕ',22),
 (2610,6822,'КРЕМЕНЕЦ',10),
 (2611,2653,'КРЕМЕНИК',11),
 (2612,6410,'КРЕПОСТ',27),
 (2613,7845,'КРЕПЧА',26),
 (2614,5367,'КРЕСЛЮВЦИ',8),
 (2615,2840,'КРЕСНА',1),
 (2616,5961,'КРЕТА',16),
 (2617,3127,'КРЕТА',7),
 (2618,2951,'КРИБУЛ',1),
 (2619,3669,'КРИВА БАРА',13),
 (2620,3328,'КРИВА БАРА',7),
 (2621,8936,'КРИВА КРУША',21),
 (2622,9938,'КРИВА РЕКА',28),
 (2623,1588,'КРИВИНА',23),
 (2624,5747,'КРИВИНА',12),
 (2625,7132,'КРИВИНА',19),
 (2626,9123,'КРИВИНИ',3);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2627,7456,'КРИВИЦА',18),
 (2628,7269,'КРИВНЯ',19),
 (2629,9217,'КРИВНЯ',3),
 (2630,6387,'КРИВО ПОЛЕ',27),
 (2631,3060,'КРИВОДОЛ',7),
 (2632,2386,'КРИВОНОС',15),
 (2633,6884,'КРИЛАТИЦА',10),
 (2634,5097,'КРИЛЮВЦИ',5),
 (2635,6671,'КРИН',10),
 (2636,4148,'КРИСЛОВО',17),
 (2637,4220,'КРИЧИМ',17),
 (2638,2871,'КРОМИДОВО',1),
 (2639,7278,'КРОЯЧ',18),
 (2640,6766,'КРОЯЧЕВО',10),
 (2641,6438,'КРУМ',27),
 (2642,6900,'КРУМОВГРАД',10),
 (2643,9149,'КРУМОВО',3),
 (2644,2627,'КРУМОВО',11),
 (2645,4112,'КРУМОВО',17),
 (2646,8649,'КРУМОВО',29),
 (2647,8487,'КРУМОВО ГРАДИЩЕ',2),
 (2648,5080,'КРУМЧЕВЦИ',5),
 (2649,9667,'КРУПЕН',9),
 (2650,2740,'КРУПНИК',1),
 (2651,9121,'КРУША',3),
 (2652,2213,'КРУША',23),
 (2653,8877,'КРУШАРЕ',21),
 (2654,9410,'КРУШАРИ',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2655,4919,'КРУШЕВ ДОЛ-пром.с.',22),
 (2656,8148,'КРУШЕВЕЦ',2),
 (2657,2945,'КРУШЕВО',1),
 (2658,4291,'КРУШЕВО',17),
 (2659,5427,'КРУШЕВО',8),
 (2660,6744,'КРУШЕВСКА',10),
 (2661,5134,'КРУШЕТО',5),
 (2662,6743,'КРУШКА',10),
 (2663,5860,'КРУШОВЕНЕ',16),
 (2664,5881,'КРУШОВИЦА',16),
 (2665,2060,'КРУШОВИЦА',23),
 (2666,3349,'КРУШОВИЦА',7),
 (2667,8482,'КРУШОВО',2),
 (2668,4241,'КРУШОВО',17),
 (2669,7962,'КРУШОЛАК',26),
 (2670,5561,'КРУШУНА',12),
 (2671,5460,'КРЪВЕНИК',8),
 (2672,5744,'КРЪКОЖАБЕНЕ',12),
 (2673,6140,'КРЪН',25),
 (2674,2875,'КРЪНДЖИЛИЦА',1),
 (2675,5370,'КРЪНЧА',8),
 (2676,4647,'КРЪСТАВА',14),
 (2677,4741,'КРЪСТАТИЦА',22),
 (2678,4177,'КРЪСТЕВИЧ',17),
 (2679,5350,'КРЪСТЕНЯЦИТЕ',8),
 (2680,5364,'КРЪСТЕЦ',8),
 (2681,2805,'КРЪСТИЛЦИ',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2682,8121,'КРЪСТИНА',2),
 (2683,7786,'КРЪШНО',18),
 (2684,8335,'КУБАДИН',2),
 (2685,7300,'КУБРАТ',18),
 (2686,1257,'КУБРАТОВО',23),
 (2687,3798,'КУДЕЛИН',6),
 (2688,2788,'КУЗЬОВО',1),
 (2689,4101,'КУКЛЕН',17),
 (2690,5370,'КУКЛЯ',8),
 (2691,8673,'КУКОРЕВО',29),
 (2692,4710,'КУКУВИЦА',22),
 (2693,6898,'КУКУРЯК',10),
 (2694,2882,'КУКУРЯХЦЕВО',1),
 (2695,3800,'КУЛА',6),
 (2696,2868,'КУЛАТА',1),
 (2697,5937,'КУЛИНА ВОДА',16),
 (2698,5380,'КУМАНИТЕ',8),
 (2699,9153,'КУМАНОВО',3),
 (2700,4990,'КУНДЕВО',22),
 (2701,8646,'КУНЕВО',29),
 (2702,3140,'КУНИНО',7),
 (2703,4921,'КУПЕН',22),
 (2704,5463,'КУПЕН',8),
 (2705,6839,'КУПЦИТЕ',10),
 (2706,3138,'КУРНОВО',7),
 (2707,4369,'КУРТОВО',17),
 (2708,4223,'КУРТОВО КОНАРЕ',17),
 (2709,4752,'КУТЕЛА',22),
 (2710,7558,'КУТЛОВИЦА',20);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2711,3767,'КУТОВО',6),
 (2712,2567,'КУТУГЕРЦИ',11),
 (2713,5042,'КУЦАРОВЦИ',5),
 (2714,5189,'КУЦИНА',5),
 (2715,6697,'КУЦОВО',10),
 (2716,4986,'КУШЛА',22),
 (2717,6927,'КЪКЛИЦА',10),
 (2718,5544,'КЪКРИНА',12),
 (2719,9821,'КЪЛНОВО',28),
 (2720,6164,'КЪНЧЕВО',25),
 (2721,7997,'КЪПИНЕЦ',26),
 (2722,5043,'КЪПИНОВО',5),
 (2723,9528,'КЪПИНОВО',9),
 (2724,7434,'КЪПИНОВЦИ',18),
 (2725,6600,'КЪРДЖАЛИ',10),
 (2726,2820,'КЪРЛАНОВО',1),
 (2727,2860,'КЪРНАЛОВО',1),
 (2728,4337,'КЪРНАРЕ',17),
 (2729,5558,'КЪРПАЧЕВО',12),
 (2730,2825,'КЪРПЕЛОВО',1),
 (2731,5380,'КЪРТИПЪНЯ',8),
 (2732,5883,'КЪРТОЖАБЕНЕ',16),
 (2733,6873,'КЪРЧОВСКО',10),
 (2734,2563,'КЪРШАЛЕВО',11),
 (2735,4832,'КЪСАК',22),
 (2736,1276,'КЪТИНА',23),
 (2737,5885,'КЪШИН',16),
 (2738,2492,'КЪШЛЕ',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2739,9888,'КЬОЛМЕН',28),
 (2740,6728,'КЬОСЕВО',10),
 (2741,7951,'КЬОСЕВЦИ',26),
 (2742,9972,'КЮЛЕВЧА',28),
 (2743,2500,'КЮСТЕНДИЛ',11),
 (2744,5035,'ЛАГЕРИТЕ',5),
 (2745,3743,'ЛАГОШЕВЦИ',6),
 (2746,2811,'ЛАДАРЕВО',1),
 (2747,3262,'ЛАЗАРОВО',7),
 (2748,5097,'ЛАЗАРЦИ',5),
 (2749,5656,'ЛАКАРЕВО',12),
 (2750,2273,'ЛАКАТНИК',23),
 (2751,6823,'ЛАЛЕ',10),
 (2752,8749,'ЛАЛКОВО',29),
 (2753,6583,'ЛАМБУХ',27),
 (2754,5876,'ЛАСКАР',16),
 (2755,2811,'ЛАСКАРЕВО',1),
 (2756,6767,'ЛАТИНКА',10),
 (2757,6859,'ЛЕБЕД',10),
 (2758,2806,'ЛЕБНИЦА',1),
 (2759,2494,'ЛЕВА РЕКА',15),
 (2760,6540,'ЛЕВКА',27),
 (2761,4743,'ЛЕВОЧЕВО',22),
 (2762,5900,'ЛЕВСКИ',16),
 (2763,4535,'ЛЕВСКИ',14),
 (2764,9171,'ЛЕВСКИ',3),
 (2765,2817,'ЛЕВУНОВО',1),
 (2766,5049,'ЛЕДЕНИК',5),
 (2767,3036,'ЛЕДЕНИКА',7);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2768,2588,'ЛЕЛИНЦИ',11),
 (2769,6783,'ЛЕНИЩЕ',10),
 (2770,5967,'ЛЕНКОВО',16),
 (2771,4286,'ЛЕНОВО',17),
 (2772,6595,'ЛЕНСКО',27),
 (2773,5987,'ЛЕПИЦА',16),
 (2774,5520,'ЛЕСИДРЕН',12),
 (2775,5343,'ЛЕСИЧАРКА',8),
 (2776,5085,'ЛЕСИЧЕ',5),
 (2777,5222,'ЛЕСИЧЕРИ',5),
 (2778,4463,'ЛЕСИЧОВО',14),
 (2779,2567,'ЛЕСКА',11),
 (2780,4928,'ЛЕСКА',22),
 (2781,2268,'ЛЕСКОВДОЛ',23),
 (2782,3523,'ЛЕСКОВЕЦ',13),
 (2783,3341,'ЛЕСКОВЕЦ',7),
 (2784,2342,'ЛЕСКОВЕЦ',15),
 (2785,9428,'ЛЕСКОВО',9),
 (2786,2119,'ЛЕСНОВО',23),
 (2787,8754,'ЛЕСОВО',29),
 (2788,3073,'ЛЕСУРА',7),
 (2789,2207,'ЛЕТНИЦА',23),
 (2790,5570,'ЛЕТНИЦА',12),
 (2791,6810,'ЛЕТОВНИК',10),
 (2792,2816,'ЛЕХОВО',1),
 (2793,3445,'ЛЕХЧЕВО',13),
 (2794,2749,'ЛЕШКО',1),
 (2795,5624,'ЛЕШКО ПРЕСОИ',12),
 (2796,6466,'ЛЕШНИКОВО',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2797,2481,'ЛЕШНИКОВЦИ',15),
 (2798,5578,'ЛЕШНИЦА',12),
 (2799,2808,'ЛЕШНИЦА',1),
 (2800,4929,'ЛЕЩАК',22),
 (2801,6967,'ЛЕЩАРКА',10),
 (2802,2962,'ЛЕЩЕН',1),
 (2803,8656,'ЛЕЯРОВО',29),
 (2804,8107,'ЛИВАДА',2),
 (2805,4921,'ЛИВАДЕ',22),
 (2806,3168,'ЛИК',7),
 (2807,4858,'ЛИЛЕКОВО',22),
 (2808,4105,'ЛИЛКОВО',17),
 (2809,7760,'ЛИЛЯК',26),
 (2810,2809,'ЛИЛЯНОВО',1),
 (2811,2597,'ЛИЛЯЧ',11),
 (2812,3051,'ЛИЛЯЧЕ',7),
 (2813,6936,'ЛИМЕЦ',10),
 (2814,3489,'ЛИПЕН',13),
 (2815,4784,'ЛИПЕЦ',22),
 (2816,2212,'ЛИПИНЦИ',23),
 (2817,7242,'ЛИПНИК',18),
 (2818,2158,'ЛИПНИЦА',23),
 (2819,3352,'ЛИПНИЦА',7),
 (2820,2547,'ЛИСЕЦ',11),
 (2821,5568,'ЛИСЕЦ',12),
 (2822,2023,'ЛИСЕЦ',23),
 (2823,9951,'ЛИСИ ВРЪХ',28),
 (2824,6645,'ЛИСИЦИТЕ',10),
 (2825,2743,'ЛИСИЯ',1),
 (2826,6541,'ЛИСОВО',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2827,7642,'ЛИСТЕЦ',20),
 (2828,8573,'ЛИСТЕЦ',2),
 (2829,2144,'ЛИТАКОВО',23),
 (2830,2433,'ЛОБОШ',15),
 (2831,9869,'ЛОВЕЦ',28),
 (2832,6070,'ЛОВЕЦ',25),
 (2833,7741,'ЛОВЕЦ',26),
 (2834,5500,'ЛОВЕЧ',12),
 (2835,5423,'ЛОВНИДОЛ',8),
 (2836,7291,'ЛОВСКО',18),
 (2837,4908,'ЛОВЦИ',22),
 (2838,9430,'ЛОВЧАНЦИ',9),
 (2839,2737,'ЛОГОДАЖ',1),
 (2840,5345,'ЛОЗА',8),
 (2841,8440,'ЛОЗАРЕВО',2),
 (2842,9746,'ЛОЗЕВО',28),
 (2843,6552,'ЛОЗЕН',27),
 (2844,1151,'ЛОЗЕН',23),
 (2845,4489,'ЛОЗЕН',14),
 (2846,6062,'ЛОЗЕН',25),
 (2847,5172,'ЛОЗЕН',5),
 (2848,6894,'ЛОЗЕНГРАДЦИ',10),
 (2849,9414,'ЛОЗЕНЕЦ',9),
 (2850,8688,'ЛОЗЕНЕЦ',29),
 (2851,8277,'ЛОЗЕНЕЦ',2),
 (2852,2821,'ЛОЗЕНИЦА',1),
 (2853,5739,'ЛОЗЕТО',12),
 (2854,5954,'ЛОЗИЦА',16),
 (2855,8466,'ЛОЗИЦА',2),
 (2856,9541,'ЛОЗНИЦА',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2857,7290,'ЛОЗНИЦА',18),
 (2858,2507,'ЛОЗНО',11),
 (2859,2656,'ЛОКВАТА',11),
 (2860,1513,'ЛОКОРСКО',23),
 (2861,3600,'ЛОМ',13),
 (2862,7135,'ЛОМ ЧЕРКОВНА',19),
 (2863,5669,'ЛОМЕЦ',12),
 (2864,9397,'ЛОМНИЦА',9),
 (2865,2562,'ЛОМНИЦА',11),
 (2866,2465,'ЛОМНИЦА',15),
 (2867,7838,'ЛОМЦИ',26),
 (2868,9237,'ЛОПУШНА',3),
 (2869,2252,'ЛОПУШНЯ',23),
 (2870,2193,'ЛОПЯН',23),
 (2871,7445,'ЛУДОГОРЦИ',18),
 (2872,5770,'ЛУКОВИТ',12),
 (2873,2296,'ЛУКОВО',23),
 (2874,6921,'ЛУЛИЧКА',10),
 (2875,7439,'ЛЪВИНО',18),
 (2876,6638,'ЛЪВОВО',10),
 (2877,2182,'ЛЪГА',23),
 (2878,2971,'ЛЪЖНИЦА',1),
 (2879,8216,'ЛЪКА',2),
 (2880,4726,'ЛЪКА',22),
 (2881,4241,'ЛЪКАВИЦА',17),
 (2882,4241,'ЛЪКИ',17),
 (2883,2928,'ЛЪКИ',1),
 (2884,7534,'ЛЮБЕН',20),
 (2885,4188,'ЛЮБЕН',17),
 (2886,9148,'ЛЮБЕН КАРАВЕЛОВО',3);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2887,8949,'ЛЮБЕНЕЦ',21),
 (2888,8947,'ЛЮБЕНОВА МАХАЛА',21),
 (2889,5955,'ЛЮБЕНОВО',16),
 (2890,6267,'ЛЮБЕНОВО',25),
 (2891,6342,'ЛЮБЕНОВО',27),
 (2892,5176,'ЛЮБЕНЦИ',5),
 (2893,6550,'ЛЮБИМЕЦ',27),
 (2894,6796,'ЛЮБИНО',10),
 (2895,7980,'ЛЮБИЧЕВО',26),
 (2896,7843,'ЛЮБЛЕН',26),
 (2897,2061,'ЛЮБНИЦА',23),
 (2898,2820,'ЛЮБОВИЩЕ',1),
 (2899,2811,'ЛЮБОВКА',1),
 (2900,4833,'ЛЮБЧА',22),
 (2901,2352,'ЛЮЛИН',15),
 (2902,8685,'ЛЮЛИН',29),
 (2903,4785,'ЛЮЛКА',22),
 (2904,6050,'ЛЮЛЯК',25),
 (2905,9525,'ЛЮЛЯКОВО',9),
 (2906,6684,'ЛЮЛЯКОВО',10),
 (2907,8570,'ЛЮЛЯКОВО',2),
 (2908,5307,'ЛЮЛЯЦИТЕ',8),
 (2909,3038,'ЛЮТАДЖИК',7),
 (2910,3159,'ЛЮТИБРОД',7),
 (2911,3165,'ЛЮТИДОЛ',7),
 (2912,2791,'ЛЮТОВО',1),
 (2913,6198,'ЛЯВА РЕКА',25),
 (2914,2474,'ЛЯЛИНЦИ',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2915,5140,'ЛЯСКОВЕЦ',5),
 (2916,6397,'ЛЯСКОВЕЦ',27),
 (2917,8518,'ЛЯСКОВО',2),
 (2918,4238,'ЛЯСКОВО',17),
 (2919,4818,'ЛЯСКОВО',22),
 (2920,6045,'ЛЯСКОВО',25),
 (2921,6667,'ЛЯСКОВО',10),
 (2922,9948,'ЛЯТНО',28),
 (2923,9617,'ЛЯХОВО',9),
 (2924,4416,'ЛЯХОВО',14),
 (2925,4710,'МАГАРДЖИЦА',22),
 (2926,3448,'МАДАН',13),
 (2927,4900,'МАДАН',22),
 (2928,9971,'МАДАРА',28),
 (2929,2022,'МАДЖАРЕ',23),
 (2930,6383,'МАДЖАРИ',27),
 (2931,6480,'МАДЖАРОВО',27),
 (2932,6063,'МАДЖЕРИТО',25),
 (2933,2549,'МАЗАРАЧЕВО',11),
 (2934,3777,'МАЙОР УЗУНОВО',6),
 (2935,5085,'МАЙСКО',5),
 (2936,6675,'МАЙСТОРОВО',10),
 (2937,6784,'МАК',10),
 (2938,7750,'МАКАРИОПОЛСКО',26),
 (2939,6640,'МАКЕДОНЦИ',10),
 (2940,7785,'МАКОВО',18),
 (2941,2124,'МАКОЦЕВО',23),
 (2942,3850,'МАКРЕШ',6);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2943,2225,'МАЛА РАКОВИЦА',23),
 (2944,2669,'МАЛА ФУЧА',11),
 (2945,2021,'МАЛА ЦЪРКВА',23),
 (2946,6392,'МАЛЕВО',27),
 (2947,4891,'МАЛЕВО',22),
 (2948,8689,'МАЛЕНОВО',29),
 (2949,2691,'МАЛИ ВЪРБОВНИК',11),
 (2950,3749,'МАЛИ ДРЕНОВЕЦ',6),
 (2951,9474,'МАЛИ ИЗВОР',9),
 (2952,9559,'МАЛИНА',9),
 (2953,8327,'МАЛИНА',2),
 (2954,5335,'МАЛИНИ',8),
 (2955,6593,'МАЛИНО',27),
 (2956,5582,'МАЛИНОВО',12),
 (2957,4742,'МАЛКА АРДА',22),
 (2958,6045,'МАЛКА ВЕРЕЯ',25),
 (2959,5729,'МАЛКА ЖЕЛЯЗНА',12),
 (2960,8519,'МАЛКА ПОЛЯНА',2),
 (2961,9386,'МАЛКА СМОЛНИЦА',9),
 (2962,7997,'МАЛКА ЧЕРКОВНА',26),
 (2963,6941,'МАЛКА ЧИНКА',10),
 (2964,5370,'МАЛКИ БЪЛГАРЕНИ',8),
 (2965,6479,'МАЛКИ ВОДЕН',27),
 (2966,5432,'МАЛКИ ВЪРШЕЦ',8),
 (2967,2184,'МАЛКИ ИСКЪР',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2968,5365,'МАЛКИ СТАНЧОВЦИ',8),
 (2969,2800,'МАЛКИ ЦАЛИМ',1),
 (2970,5028,'МАЛКИ ЧИФЛИК',5),
 (2971,6425,'МАЛКО АСЕНОВО',27),
 (2972,6476,'МАЛКО БРЯГОВО',27),
 (2973,7067,'МАЛКО ВРАНОВО',19),
 (2974,6558,'МАЛКО ГРАДИЩЕ',27),
 (2975,6227,'МАЛКО ДРЯНОВО',25),
 (2976,6052,'МАЛКО КАДИЕВО',25),
 (2977,6927,'МАЛКО КАМЕНЯНЕ',10),
 (2978,8756,'МАЛКО КИРИЛОВО',29),
 (2979,4951,'МАЛКО КРУШЕВО',22),
 (2980,6482,'МАЛКО ПОПОВО',27),
 (2981,8981,'МАЛКО СЕЛО',21),
 (2982,6228,'МАЛКО ТРЪНОВО',25),
 (2983,8350,'МАЛКО ТЪРНОВО',2),
 (2984,7923,'МАЛКО ЦЪРКВИЩЕ',26),
 (2985,8857,'МАЛКО ЧОЧОВЕНИ',21),
 (2986,8751,'МАЛКО ШАРКОВО',29),
 (2987,6898,'МАЛКОЧ',10),
 (2988,1362,'МАЛО БУЧИНО',23),
 (2989,4450,'МАЛО КОНАРЕ',14);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (2990,4183,'МАЛО КРУШЕВО',17),
 (2991,2205,'МАЛО МАЛОВО',23),
 (2992,3078,'МАЛО ПЕЩЕНЕ',7),
 (2993,2636,'МАЛО СЕЛО',11),
 (2994,7978,'МАЛОГРАДЕЦ',26),
 (2995,9871,'МАЛОМИР',28),
 (2996,8650,'МАЛОМИР',29),
 (2997,8737,'МАЛОМИРОВО',29),
 (2998,3255,'МАЛОРАД',7),
 (2999,5304,'МАЛУША',8),
 (3000,5917,'МАЛЧИКА',16),
 (3001,5050,'МАЛЧОВЦИ',5),
 (3002,5367,'МАЛЧОВЦИ',8),
 (3003,6935,'МАЛЪК ДЕВЕСИЛ',10),
 (3004,6394,'МАЛЪК ИЗВОР',27),
 (3005,5734,'МАЛЪК ИЗВОР',12),
 (3006,8742,'МАЛЪК МАНАСТИР',29),
 (3007,7429,'МАЛЪК ПОРОВЕЦ',18),
 (3008,7620,'МАЛЪК ПРЕСЛАВЕЦ',20),
 (3009,4194,'МАЛЪК ЧАРДАК',17),
 (3010,8743,'МАМАРЧЕВО',29),
 (3011,2168,'МАНАСЕЛСКА РЕКА',23),
 (3012,4245,'МАНАСТИР',17),
 (3013,9224,'МАНАСТИР',3),
 (3014,6390,'МАНАСТИР',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3015,7856,'МАНАСТИРИЦА',26),
 (3016,2288,'МАНАСТИРИЩЕ',23),
 (3017,3354,'МАНАСТИРИЩЕ',7),
 (3018,7285,'МАНАСТИРСКО',18),
 (3019,7292,'МАНАСТИРЦИ',18),
 (3020,6357,'МАНДРА',27),
 (3021,6585,'МАНДРИЦА',27),
 (3022,5363,'МАНЕВЦИ',8),
 (3023,4137,'МАНОЛЕ',17),
 (3024,8453,'МАНОЛИЧ',2),
 (3025,6152,'МАНОЛОВО',25),
 (3026,4138,'МАНОЛСКО КОНАРЕ',17),
 (3027,5392,'МАНОЯ',8),
 (3028,7967,'МАНУШЕВЦИ',26),
 (3029,6800,'МАНЧЕВО',10),
 (3030,5070,'МАРАФЕЛЦИ',5),
 (3031,9745,'МАРАШ',28),
 (3032,5035,'МАРГОВЦИ',5),
 (3033,2870,'МАРИКОСТИНОВО',1),
 (3034,8154,'МАРИНКА',2),
 (3035,4365,'МАРИНО ПОЛЕ',17),
 (3036,2867,'МАРИНО ПОЛЕ',1),
 (3037,5097,'МАРИНОВЦИ',5),
 (3038,5445,'МАРИНОВЦИ',8),
 (3039,2044,'МАРИЦА',23),
 (3040,6247,'МАРКОВО',25);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3041,9973,'МАРКОВО',28),
 (3042,4108,'МАРКОВО',17),
 (3043,3133,'МАРКОВО РАВНИЩЕ',7),
 (3044,7058,'МАРТЕН',19),
 (3045,6745,'МАРТИНО',10),
 (3046,3459,'МАРТИНОВО',13),
 (3047,2725,'МАРУЛЕВО',1),
 (3048,5360,'МАРУЦЕКОВЦИ',8),
 (3049,2949,'МАРЧЕВО',1),
 (3050,7869,'МАРЧИНО',26),
 (3051,5084,'МАРЯН',5),
 (3052,5198,'МАСЛАРЕВО',5),
 (3053,6388,'МАСЛИНОВО',27),
 (3054,5351,'МАТЕШОВЦИ',8),
 (3055,6535,'МАТОЧИНА',27),
 (3056,2849,'МАХАЛАТА',1),
 (3057,5081,'МАХАЛНИЦИ',5),
 (3058,6276,'МАЦА',25),
 (3059,5647,'МАЧКОВЦИ',12),
 (3060,8987,'МЕДВЕН',21),
 (3061,6865,'МЕДЕВЦИ',10),
 (3062,6598,'МЕДЕН БУК',27),
 (3063,8639,'МЕДЕН КЛАДЕНЕЦ',29),
 (3064,4637,'МЕДЕНИ ПОЛЯНИ',14),
 (3065,3845,'МЕДЕШЕВЦИ',6),
 (3066,3670,'МЕДКОВЕЦ',13),
 (3067,6294,'МЕДНИКАРОВО',25);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3068,7319,'МЕДОВЕНЕ',18),
 (3069,9238,'МЕДОВЕЦ',3),
 (3070,7863,'МЕДОВИНА',26),
 (3071,3947,'МЕДОВНИЦА',6),
 (3072,6235,'МЕДОВО',25),
 (3073,9388,'МЕДОВО',9),
 (3074,8214,'МЕДОВО',2),
 (3075,8644,'МЕЖДА',29),
 (3076,7672,'МЕЖДЕН',20),
 (3077,5343,'МЕЖДЕНИ',8),
 (3078,3100,'МЕЗДРА',7),
 (3079,3515,'МЕЗДРЕЯ',13),
 (3080,6521,'МЕЗЕК',27),
 (3081,2820,'МЕЛНИК',1),
 (3082,8755,'МЕЛНИЦА',29),
 (3083,3472,'МЕЛЯНЕ',13),
 (3084,9885,'МЕНГИШЕВО',28),
 (3085,2893,'МЕНДОВО',1),
 (3086,4482,'МЕНЕНКЬОВО',14),
 (3087,5147,'МЕРДАНЯ',5),
 (3088,6430,'МЕРИЧЛЕРИ',27),
 (3089,2772,'МЕСТА',1),
 (3090,6938,'МЕТЛИКА',10),
 (3091,9291,'МЕТЛИЧИНА',3),
 (3092,6873,'МЕТЛИЧИНА',10),
 (3093,6890,'МЕТЛИЧКА',10),
 (3094,9867,'МЕТОДИЕВО',28),
 (3095,9375,'МЕТОДИЕВО',9),
 (3096,2556,'МЕТОХИЯ',11);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3097,7091,'МЕЧКА',19),
 (3098,5843,'МЕЧКА',16),
 (3099,8868,'МЕЧКАРЕВО',21),
 (3100,5307,'МЕЧКОВИЦА',8),
 (3101,2060,'МЕЧКОВЦИ',23),
 (3102,2754,'МЕЧКУЛ',1),
 (3103,7997,'МЕЧОВО',26),
 (3104,2353,'МЕЩИЦА',15),
 (3105,3330,'МИЗИЯ',7),
 (3106,5098,'МИЙКОВЦИ',5),
 (3107,5572,'МИКРЕ',12),
 (3108,2826,'МИКРЕВО',1),
 (3109,6660,'МИЛАДИНОВО',10),
 (3110,9431,'МИЛАДИНОВЦИ',9),
 (3111,7787,'МИЛАДИНОВЦИ',18),
 (3112,8657,'МИЛАДИНОВЦИ',29),
 (3113,9859,'МИЛАНОВО',28),
 (3114,2280,'МИЛАНОВО',23),
 (3115,4921,'МИЛЕ',22),
 (3116,4191,'МИЛЕВО',17),
 (3117,5350,'МИЛЕВЦИ',8),
 (3118,5627,'МИЛЕНЧА',12),
 (3119,7984,'МИЛИНО',26),
 (3120,5968,'МИЛКОВИЦА',16),
 (3121,4779,'МИЛКОВО',22),
 (3122,5345,'МИЛКОВЦИ',8),
 (3123,2475,'МИЛКЬОВЦИ',15),
 (3124,2478,'МИЛОСЛАВЦИ',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3125,3846,'МИЛЧИНА ЛЪКА',6),
 (3126,2220,'МИНА БОЛШЕВИК',23),
 (3127,5044,'МИНДЯ',5),
 (3128,5083,'МИНЕВЦИ',5),
 (3129,6343,'МИНЕРАЛНИ БАНИ',27),
 (3130,6665,'МИНЗУХАР',10),
 (3131,9372,'МИНКОВО',9),
 (3132,5735,'МИРКОВЕЦ',12),
 (3133,2086,'МИРКОВО',23),
 (3134,7751,'МИРОВЕЦ',26),
 (3135,6255,'МИРОВО',25),
 (3136,5158,'МИРОВО',5),
 (3137,9921,'МИРОВЦИ',28),
 (3138,1289,'МИРОВЯНЕ',23),
 (3139,8119,'МИРОЛЮБОВО',2),
 (3140,5094,'МИРЧОВЦИ',5),
 (3141,4443,'МИРЯНЦИ',14),
 (3142,2857,'МИТИНО',1),
 (3143,4909,'МИТОВСКА',22),
 (3144,3464,'МИТРОВЦИ',13),
 (3145,6051,'МИХАЙЛОВО',25),
 (3146,3355,'МИХАЙЛОВО',7),
 (3147,5347,'МИХАЙЛОВЦИ',8),
 (3148,9284,'МИХАЛИЧ',3),
 (3149,6537,'МИХАЛИЧ',27),
 (3150,4820,'МИХАЛКОВО',22),
 (3151,5248,'МИХАЛЦИ',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3152,4361,'МИХИЛЦИ',17),
 (3153,2862,'МИХНЕВО',1),
 (3154,5365,'МИХОВЦИ',8),
 (3155,5343,'МИЧКОВЦИ',8),
 (3156,6840,'МИШЕВСКО',10),
 (3157,5035,'МИШЕМОРКОВ ХАН',5),
 (3158,5767,'МИШКАРЕТЕ',12),
 (3159,9228,'МЛАДА ГВАРДИЯ',3),
 (3160,8364,'МЛАДЕЖКО',2),
 (3161,5428,'МЛАДЕН',8),
 (3162,6531,'МЛАДИНОВО',27),
 (3163,8886,'МЛАДОВО',21),
 (3164,2654,'МЛАМОЛОВО',11),
 (3165,8960,'МЛЕКАРЕВО',21),
 (3166,5441,'МЛЕЧЕВО',8),
 (3167,6781,'МЛЕЧИНО',10),
 (3168,9932,'МОГИЛА',28),
 (3169,6052,'МОГИЛА',25),
 (3170,8627,'МОГИЛА',29),
 (3171,7943,'МОГИЛЕЦ',26),
 (3172,7165,'МОГИЛИНО',19),
 (3173,5350,'МОГИЛИТЕ',8),
 (3174,4761,'МОГИЛИЦА',22),
 (3175,9665,'МОГИЛИЩЕ',9),
 (3176,6239,'МОГИЛОВО',25),
 (3177,6867,'МОГИЛЯНЕ',10),
 (3178,6840,'МОДРЕН',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3179,8994,'МОКРЕН',21),
 (3180,9861,'МОКРЕШ',28),
 (3181,3647,'МОКРЕШ',13),
 (3182,4408,'МОКРИЩЕ',14),
 (3183,2035,'МОМИН ПРОХОД',23),
 (3184,5067,'МОМИН СБОР',5),
 (3185,4468,'МОМИНА КЛИСУРА',14),
 (3186,6838,'МОМИНА СЪЛЗА',10),
 (3187,8320,'МОМИНА ЦЪРКВА',2),
 (3188,7706,'МОМИНО',26),
 (3189,6387,'МОМИНО',27),
 (3190,4143,'МОМИНО СЕЛО',17),
 (3191,4118,'МОМИНСКО',17),
 (3192,6542,'МОМКОВО',27),
 (3193,6800,'МОМЧИЛГРАД',10),
 (3194,9221,'МОМЧИЛОВО',3),
 (3195,4750,'МОМЧИЛОВЦИ',22),
 (3196,3400,'МОНТАНА',13),
 (3197,5291,'МОРАВА',5),
 (3198,7974,'МОРАВИЦА',26),
 (3199,3145,'МОРАВИЦА',7),
 (3200,7992,'МОРАВКА',26),
 (3201,5304,'МОРОВЕЦИТЕ',8),
 (3202,7248,'МОРТАГОНОВО',18),
 (3203,6959,'МОРЯНЦИ',10),
 (3204,4333,'МОСКОВЕЦ',17);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3205,6670,'МОСТ',10),
 (3206,9878,'МОСТИЧ',28),
 (3207,4257,'МОСТОВО',17),
 (3208,4978,'МОЧУРЕ',22),
 (3209,2729,'МОЩАНЕЦ',1),
 (3210,2477,'МРАКЕТНИЦИ',15),
 (3211,1261,'МРАМОР',23),
 (3212,6562,'МРАМОР',27),
 (3213,2487,'МРАМОР',15),
 (3214,3054,'МРАМОРЕН',7),
 (3215,5345,'МРАХОРИ',8),
 (3216,4362,'МРАЧЕНИК',17),
 (3217,6845,'МРЕЖИЧКО',10),
 (3218,8538,'МРЕЖИЧКО',2),
 (3219,5367,'МРЪЗЕЦИ',8),
 (3220,4716,'МУГЛА',22),
 (3221,5333,'МУЗГА',8),
 (3222,4249,'МУЛДАВА',17),
 (3223,6725,'МУРГА',10),
 (3224,2247,'МУРГАШ',23),
 (3225,6679,'МУРГОВО',10),
 (3226,2437,'МУРЕНО',15),
 (3227,2623,'МУРСАЛЕВО',11),
 (3228,2382,'МУРТИНЦИ',15),
 (3229,6284,'МУСАЧЕВО',25),
 (3230,2139,'МУСАЧЕВО',23),
 (3231,6774,'МУСЕВО',10),
 (3232,5963,'МУСЕЛИЕВО',16),
 (3233,5247,'МУСИНА',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3234,2920,'МУСОМИЩА',1),
 (3235,6527,'МУСТРАК',27),
 (3236,2061,'МУХОВО',23),
 (3237,5370,'МУЦЯ',8),
 (3238,8523,'МЪГЛЕН',2),
 (3239,6865,'МЪГЛЕНЕ',10),
 (3240,6180,'МЪГЛИЖ',25),
 (3241,4910,'МЪГЛИЩА',22),
 (3242,7323,'МЪДРЕВО',18),
 (3243,6292,'МЪДРЕЦ',25),
 (3244,6674,'МЪДРЕЦ',10),
 (3245,8444,'МЪДРИНО',2),
 (3246,6865,'МЪЖЕНЦИ',10),
 (3247,2655,'МЪРВОДОЛ',11),
 (3248,4996,'МЪРЗЯН',22),
 (3249,5094,'МЪРТВИНАТА',5),
 (3250,1696,'МЪРЧАЕВО',23),
 (3251,3443,'МЪРЧЕВО',13),
 (3252,8843,'МЪСЪРЛИИ',21),
 (3253,4176,'МЪТЕНИЦА',17),
 (3254,6497,'НАВЪСЕН',27),
 (3255,7740,'НАДАРЕВО',26),
 (3256,4758,'НАДАРЦИ',22),
 (3257,6459,'НАДЕЖДЕН',27),
 (3258,4185,'НАЙДЕН ГЕРОВО',17),
 (3259,6224,'НАЙДЕНОВО',25),
 (3260,6800,'НАНЕ',10),
 (3261,6830,'НАНОВИЦА',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3262,5752,'НАНОВИЦА',12),
 (3263,4239,'НАРЕЧЕНСКИ БАНИ',17),
 (3264,2478,'НАСАЛЕВЦИ',15),
 (3265,9962,'НАУМ',28),
 (3266,8929,'НАУЧЕНЕ',21),
 (3267,5055,'НАЦОВЦИ',5),
 (3268,2213,'НАЧЕВО',23),
 (3269,6693,'НЕБЕСКА',10),
 (3270,8431,'НЕВЕСТИНО',2),
 (3271,6722,'НЕВЕСТИНО',10),
 (3272,2595,'НЕВЕСТИНО',11),
 (3273,9229,'НЕВША',3),
 (3274,1222,'НЕГОВАН',23),
 (3275,3774,'НЕГОВАНОВЦИ',6),
 (3276,2417,'НЕГОВАНЦИ',15),
 (3277,2123,'НЕГУШЕВО',23),
 (3278,5231,'НЕДАН',5),
 (3279,4187,'НЕДЕЛЕВО',17),
 (3280,4990,'НЕДЕЛИНО',22),
 (3281,2213,'НЕДЕЛИЩЕ',23),
 (3282,2594,'НЕДЕЛКОВА ГРАЩИЦА',11),
 (3283,2477,'НЕДЕЛКОВО',15),
 (3284,7251,'НЕДОКЛАН',18),
 (3285,5070,'НЕДЯЛКОВЦИ',5),
 (3286,5350,'НЕДЯЛКОВЦИ',8),
 (3287,8684,'НЕДЯЛСКО',29),
 (3288,9692,'НЕЙКОВО',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3289,8993,'НЕЙКОВО',21),
 (3290,2061,'НЕЙКЬОВЕЦ',23),
 (3291,5380,'НЕЙЧОВЦИ',8),
 (3292,6797,'НЕНКОВО',10),
 (3293,9234,'НЕНОВО',3),
 (3294,5367,'НЕНОВЦИ',8),
 (3295,6831,'НЕОФИТ БОЗВЕЛИЕВО',10),
 (3296,9223,'НЕОФИТ РИЛСКИ',3),
 (3297,2396,'НЕПРАЗНЕНЦИ',15),
 (3298,8230,'НЕСЕБЪР',2),
 (3299,2213,'НЕСЛА',23),
 (3300,3039,'НЕФЕЛА',7),
 (3301,5097,'НЕШЕВЦИ',5),
 (3302,3241,'НИВЯНИН',7),
 (3303,5365,'НИКАЧКОВЦИ',8),
 (3304,9955,'НИКОЛА КОЗЛЕВО',28),
 (3305,9172,'НИКОЛАЕВКА',3),
 (3306,6190,'НИКОЛАЕВО',25),
 (3307,5874,'НИКОЛАЕВО',16),
 (3308,2406,'НИКОЛАЕВО',15),
 (3309,8873,'НИКОЛАЕВО',21),
 (3310,5168,'НИКОЛАЕВО',5),
 (3311,5351,'НИКОЛАЕВО',8),
 (3312,2599,'НИКОЛИЧЕВЦИ',11),
 (3313,3429,'НИКОЛОВО',13),
 (3314,7057,'НИКОЛОВО',19);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3315,6364,'НИКОЛОВО',27),
 (3316,5070,'НИКОЛОВЦИ',5),
 (3317,5098,'НИКОЛЧЕВЦИ',5),
 (3318,5345,'НИКОЛЧОВЦИ',8),
 (3319,5940,'НИКОПОЛ',16),
 (3320,2839,'НИКУДИН',1),
 (3321,5068,'НИКЮП',5),
 (3322,8995,'НИСКА ПОЛЯНА',21),
 (3323,7079,'НИСОВО',19),
 (3324,5097,'НИЧОВЦИ',5),
 (3325,9883,'НОВА БЯЛА РЕКА',28),
 (3326,5169,'НОВА ВЪРБОВКА',5),
 (3327,8900,'НОВА ЗАГОРА',21),
 (3328,9493,'НОВА КАМЕНА',9),
 (3329,6595,'НОВА ЛИВАДА',27),
 (3330,2925,'НОВА ЛОВЧА',1),
 (3331,4581,'НОВА МАХАЛА',14),
 (3332,6191,'НОВА МАХАЛА',25),
 (3333,6330,'НОВА НАДЕЖДА',27),
 (3334,7582,'НОВА ПОПИНА',20),
 (3335,7645,'НОВА ЧЕРНА',20),
 (3336,9116,'НОВА ШИПКА',3),
 (3337,9149,'НОВАКОВО',3),
 (3338,4262,'НОВАКОВО',17),
 (3339,5332,'НОВАКОВЦИ',8);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3340,8853,'НОВАЧЕВО',21),
 (3341,2147,'НОВАЧЕНЕ',23),
 (3342,5950,'НОВАЧЕНЕ',16),
 (3343,7133,'НОВГРАД',19),
 (3344,4265,'НОВИ ИЗВОР',17),
 (3345,1280,'НОВИ ИСКЪР',23),
 (3346,9900,'НОВИ ПАЗАР',28),
 (3347,6710,'НОВИ ПАЗАР',10),
 (3348,2110,'НОВИ ХАН',23),
 (3349,2531,'НОВИ ЧИФЛИК',11),
 (3350,9356,'НОВО БОТЕВО',9),
 (3351,2212,'НОВО БЪРДО',23),
 (3352,5175,'НОВО ГРАДИЩЕ',5),
 (3353,2814,'НОВО ДЕЛЧЕВО',1),
 (3354,4167,'НОВО ЖЕЛЕЗАРЕ',17),
 (3355,2874,'НОВО КОНОМЛАДИ',1),
 (3356,2923,'НОВО ЛЕСКИ',1),
 (3357,9113,'НОВО ОРЯХОВО',3),
 (3358,8152,'НОВО ПАНИЧАРЕВО',2),
 (3359,5069,'НОВО СЕЛО',5),
 (3360,2847,'НОВО СЕЛО',1),
 (3361,2534,'НОВО СЕЛО',11),
 (3362,3784,'НОВО СЕЛО',6),
 (3363,7052,'НОВО СЕЛО',19),
 (3364,2016,'НОВО СЕЛО',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3365,4221,'НОВО СЕЛО',17),
 (3366,6062,'НОВО СЕЛО',25),
 (3367,2831,'НОВО ХОДЖОВО',1),
 (3368,9825,'НОВО ЯНКОВО',28),
 (3369,5088,'НОВОГОРЦИ',5),
 (3370,9807,'НОВОСЕЛ',28),
 (3371,8958,'НОВОСЕЛЕЦ',21),
 (3372,6697,'НОВОСЕЛИЩЕ',10),
 (3373,2689,'НОВОСЕЛЯНЕ',11),
 (3374,2394,'НОЕВЦИ',15),
 (3375,7615,'НОЖАРЕВО',20),
 (3376,7441,'НОЖАРОВО',18),
 (3377,5360,'НОЖЕРИТЕ',8),
 (3378,5360,'НОСЕИТЕ',8),
 (3379,6726,'НОЧЕВО',10),
 (3380,5097,'НЮШКОВЦИ',5),
 (3381,5195,'ОБЕДИНЕНИЕ',5),
 (3382,2738,'ОБЕЛ',1),
 (3383,8250,'ОБЗОР',2),
 (3384,2776,'ОБИДИМ',1),
 (3385,7920,'ОБИТЕЛ',26),
 (3386,6800,'ОБИЧНИК',10),
 (3387,5922,'ОБНОВА',16),
 (3388,9147,'ОБОРИЩЕ',3),
 (3389,4522,'ОБОРИЩЕ',14),
 (3390,7170,'ОБРЕТЕНИК',19),
 (3391,9630,'ОБРОЧИЩЕ',9),
 (3392,6290,'ОБРУЧИЩЕ',25);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3393,7671,'ОВЕН',20),
 (3394,5340,'ОВОЩАРЦИ',8),
 (3395,5088,'ОВОЩНА',5),
 (3396,6138,'ОВОЩНИК',25),
 (3397,5295,'ОВЧА МОГИЛА',5),
 (3398,9233,'ОВЧАГА',3),
 (3399,6922,'ОВЧАРИ',10),
 (3400,9395,'ОВЧАРОВО',9),
 (3401,7747,'ОВЧАРОВО',26),
 (3402,6468,'ОВЧАРОВО',27),
 (3403,9805,'ОВЧАРОВО',28),
 (3404,2647,'ОВЧАРЦИ',11),
 (3405,6846,'ОВЧЕВО',10),
 (3406,4448,'ОВЧЕПОЛЦИ',14),
 (3407,8660,'ОВЧИ КЛАДЕНЕЦ',29),
 (3408,4972,'ОГЛЕД',22),
 (3409,8467,'ОГНЕН',2),
 (3410,2947,'ОГНЯНОВО',1),
 (3411,2117,'ОГНЯНОВО',23),
 (3412,9423,'ОГНЯНОВО',9),
 (3413,4417,'ОГНЯНОВО',14),
 (3414,2297,'ОГОЯ',23),
 (3415,4990,'ОГРАДНА',22),
 (3416,9529,'ОГРАЖДЕН',9),
 (3417,3679,'ОДОРОВЦИ',13),
 (3418,2408,'ОДРАНИЦА',15),
 (3419,9357,'ОДРИНЦИ',9),
 (3420,6584,'ОДРИНЦИ',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3421,5893,'ОДЪРНЕ',16),
 (3422,9362,'ОДЪРЦИ',9),
 (3423,2373,'ОЗЪРНОВЦИ',15),
 (3424,5350,'ОКОЛИИТЕ',8),
 (3425,8669,'ОКОП',29),
 (3426,7680,'ОКОРШ',20),
 (3427,8727,'ОМАН',29),
 (3428,9949,'ОМАРЧЕВО',28),
 (3429,8921,'ОМАРЧЕВО',21),
 (3430,7900,'ОМУРТАГ',26),
 (3431,9486,'ОНОГУР',9),
 (3432,7840,'ОПАКА',26),
 (3433,6078,'ОПАН',25),
 (3434,9347,'ОПАНЕЦ',9),
 (3435,5851,'ОПАНЕЦ',16),
 (3436,2235,'ОПИЦВЕТ',23),
 (3437,2276,'ОПЛЕТНЯ',23),
 (3438,6254,'ОПЪЛЧЕНЕЦ',25),
 (3439,6641,'ОПЪЛЧЕНСКО',10),
 (3440,7977,'ОРАЧ',26),
 (3441,5859,'ОРЕХОВИЦА',16),
 (3442,4877,'ОРЕХОВО',22),
 (3443,5280,'ОРЕШ',5),
 (3444,5749,'ОРЕША',12),
 (3445,9151,'ОРЕШАК',3),
 (3446,5630,'ОРЕШАК',12),
 (3447,6929,'ОРЕШАРИ',10),
 (3448,2943,'ОРЕШЕ',1),
 (3449,7684,'ОРЕШЕНЕ',20),
 (3450,5763,'ОРЕШЕНЕ',12);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3451,4255,'ОРЕШЕЦ',17),
 (3452,3945,'ОРЕШЕЦ',6),
 (3453,4727,'ОРЕШЕЦ',22),
 (3454,6475,'ОРЕШЕЦ',27),
 (3455,6579,'ОРЕШИНО',27),
 (3456,6561,'ОРЕШНИК',27),
 (3457,6655,'ОРЕШНИЦА',10),
 (3458,8248,'ОРИЗАРЕ',2),
 (3459,4214,'ОРИЗАРЕ',17),
 (3460,8893,'ОРИЗАРИ',21),
 (3461,6253,'ОРИЗОВО',25),
 (3462,8325,'ОРЛИНЦИ',2),
 (3463,6892,'ОРЛИЦА',10),
 (3464,6545,'ОРЛОВ ДОЛ',27),
 (3465,9359,'ОРЛОВА МОГИЛА',9),
 (3466,5187,'ОРЛОВЕЦ',5),
 (3467,8985,'ОРЛОВО',21),
 (3468,6354,'ОРЛОВО',27),
 (3469,5340,'ОРЛОВЦИ',8),
 (3470,9490,'ОРЛЯК',9),
 (3471,5577,'ОРЛЯНЕ',12),
 (3472,3665,'ОРСОЯ',13),
 (3473,2785,'ОРЦЕВО',1),
 (3474,4942,'ОРЯХОВЕЦ',22),
 (3475,6061,'ОРЯХОВИЦА',25),
 (3476,6555,'ОРЯХОВО',27),
 (3477,3300,'ОРЯХОВО',7),
 (3478,2186,'ОСЕЛНА',23),
 (3479,3171,'ОСЕЛНА',7);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3480,7634,'ОСЕН',20),
 (3481,3059,'ОСЕН',7),
 (3482,7746,'ОСЕН',26),
 (3483,5037,'ОСЕНАРИТЕ',5),
 (3484,7267,'ОСЕНЕЦ',18),
 (3485,9753,'ОСЕНОВЕЦ',28),
 (3486,2291,'ОСЕНОВЛАГ',23),
 (3487,9155,'ОСЕНОВО',3),
 (3488,2774,'ОСЕНОВО',1),
 (3489,6153,'ОСЕТЕНОВО',25),
 (3490,2164,'ОСИКОВИЦА',23),
 (3491,2965,'ОСИКОВО',1),
 (3492,4819,'ОСИКОВО',22),
 (3493,7862,'ОСИКОВО',26),
 (3494,2165,'ОСИКОВСКА ЛАКАВИЦА',23),
 (3495,2953,'ОСИНА',1),
 (3496,6216,'ОСЛАРКА',25),
 (3497,3169,'ОСЛЕН КРИВОДОЛ',7),
 (3498,9879,'ОСМАР',28),
 (3499,2121,'ОСОИЦА',23),
 (3500,8983,'ОСТРА МОГИЛА',21),
 (3501,6062,'ОСТРА МОГИЛА',25),
 (3502,7743,'ОСТРЕЦ',26),
 (3503,4732,'ОСТРИ ПАЗЛАК',22),
 (3504,7161,'ОСТРИЦА',19),
 (3505,4859,'ОСТРИЦА',22),
 (3506,3340,'ОСТРОВ',7);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3507,6881,'ОСТРОВЕЦ',10),
 (3508,6644,'ОСТРОВИЦА',10),
 (3509,7326,'ОСТРОВО',18),
 (3510,7238,'ОСТРОВЧЕ',18),
 (3511,3757,'ОСТРОКАПЦИ',6),
 (3512,6457,'ОСТЪР КАМЪК',27),
 (3513,4163,'ОТЕЦ КИРИЛОВО',17),
 (3514,4207,'ОТЕЦ ПАИСИЕВО',17),
 (3515,6624,'ОХЛЮВЕЦ',10),
 (3516,3079,'ОХОДЕН',7),
 (3517,3438,'ОХРИД',13),
 (3518,3162,'ОЧИНДОЛ',7),
 (3519,2049,'ОЧУША',23),
 (3520,3937,'ОШАНЕ',6),
 (3521,5350,'ОШАНИТЕ',8),
 (3522,2847,'ОЩАВА',1),
 (3523,5197,'ПАВЕЛ',5),
 (3524,6155,'ПАВЕЛ БАНЯ',25),
 (3525,4889,'ПАВЕЛСКО',22),
 (3526,5365,'ПАВЛЕВЦИ',8),
 (3527,5200,'ПАВЛИКЕНИ',5),
 (3528,3044,'ПАВОЛЧЕ',7),
 (3529,2632,'ПАДАЛА',11),
 (3530,6960,'ПАДАЛО',10),
 (3531,2747,'ПАДЕШ',1),
 (3532,9136,'ПАДИНА',3),
 (3533,6771,'ПАДИНА',10),
 (3534,7617,'ПАДИНА',20);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3535,2438,'ПАДИНЕ',15),
 (3536,4400,'ПАЗАРДЖИК',14),
 (3537,6829,'ПАЗАРЦИ',10),
 (3538,7681,'ПАИСИЕВО',20),
 (3539,5173,'ПАИСИЙ',5),
 (3540,7767,'ПАЙДУШКО',26),
 (3541,7850,'ПАЛАМАРЦА',26),
 (3542,2829,'ПАЛАТ',1),
 (3543,2782,'ПАЛАТНИК',1),
 (3544,2681,'ПАЛАТОВО',11),
 (3545,8698,'ПАЛАУЗОВО',29),
 (3546,3439,'ПАЛИЛУЛА',13),
 (3547,5083,'ПАЛИЦИ',5),
 (3548,4459,'ПАМИДОВО',14),
 (3549,4870,'ПАМПОРОВО',22),
 (3550,9934,'ПАМУКЧИИ',28),
 (3551,6058,'ПАМУКЧИИ',25),
 (3552,4500,'ПАНАГЮРИЩЕ',14),
 (3553,4520,'ПАНАГЮРСКИ КОЛОНИИ',14),
 (3554,9802,'ПАНАЙОТ ВОЛОВО',28),
 (3555,7929,'ПАНАЙОТ ХИТОВО',26),
 (3556,8867,'ПАНАРЕТОВЦИ',21),
 (3557,8254,'ПАНИЦОВО',2),
 (3558,6172,'ПАНИЧЕРЕВО',25),
 (3559,4179,'ПАНИЧЕРИ',17),
 (3560,7928,'ПАНИЧИНО',26);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3561,6723,'ПАНИЧКОВО',10),
 (3562,2060,'ПАНОВЦИ',23),
 (3563,2685,'ПАНЧАРЕВО',11),
 (3564,1137,'ПАНЧАРЕВО',23),
 (3565,6657,'ПАНЧЕВО',10),
 (3566,6851,'ПАПРАТ',10),
 (3567,5094,'ПАПРАТЛИВА',5),
 (3568,2474,'ПАРАМУН',15),
 (3569,2926,'ПАРИЛ',1),
 (3570,9245,'ПАРТИЗАНИ',3),
 (3571,6218,'ПАРТИЗАНИН',25),
 (3572,5344,'ПАРЧОВЦИ',8),
 (3573,5224,'ПАСКАЛЕВЕЦ',5),
 (3574,9370,'ПАСКАЛЕВО',9),
 (3575,6776,'ПАСПАЛ',10),
 (3576,2631,'ПАСТРА',11),
 (3577,2659,'ПАСТУХ',11),
 (3578,4418,'ПАТАЛЕНИЦА',14),
 (3579,6710,'ПАТИЦА',10),
 (3580,5225,'ПАТРЕШ',5),
 (3581,5631,'ПАТРЕШКО',12),
 (3582,4267,'ПАТРИАРХ ЕВТИМОВО',17),
 (3583,2069,'ПАУНОВО',23),
 (3584,6969,'ПАШИНЦИ',10),
 (3585,6572,'ПАШКУЛ',27),
 (3586,4632,'ПАШОВИ',14),
 (3587,6529,'ПАШОВО',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3588,7771,'ПЕВЕЦ',26),
 (3589,4335,'ПЕВЦИТЕ',17),
 (3590,5095,'ПЕЙКОВЦИ',5),
 (3591,5370,'ПЕЙНА',8),
 (3592,5345,'ПЕЙОВЦИ',8),
 (3593,7127,'ПЕЙЧИНОВО',19),
 (3594,2582,'ПЕЛАТИКОВО',11),
 (3595,6593,'ПЕЛЕВУН',27),
 (3596,6948,'ПЕЛИН',10),
 (3597,5895,'ПЕЛИШАТ',16),
 (3598,5333,'ПЕНКОВЦИ',8),
 (3599,2499,'ПЕНКЬОВЦИ',15),
 (3600,6741,'ПЕНЬОВО',10),
 (3601,7158,'ПЕПЕЛИНА',19),
 (3602,6643,'ПЕПЕЛИЩЕ',10),
 (3603,3841,'ПЕРИЛОВЕЦ',6),
 (3604,2300,'ПЕРНИК',15),
 (3605,6673,'ПЕРПЕРЕК',10),
 (3606,6949,'ПЕРУНИКА',10),
 (3607,4225,'ПЕРУЩИЦА',17),
 (3608,6798,'ПЕСНОПОЙ',10),
 (3609,4208,'ПЕСНОПОЙ',17),
 (3610,3519,'ПЕСОЧНИЦА',13),
 (3611,7119,'ПЕТ КЛАДЕНЦИ',19),
 (3612,9940,'ПЕТ МОГИЛИ',28),
 (3613,8953,'ПЕТ МОГИЛИ',21),
 (3614,6666,'ПЕТЕЛОВО',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3615,5184,'ПЕТКО КАРАВЕЛОВО',5),
 (3616,5434,'ПЕТКО СЛАВЕЙКОВ',8),
 (3617,2111,'ПЕТКОВО',23),
 (3618,4740,'ПЕТКОВО',22),
 (3619,5370,'ПЕТКОВЦИ',8),
 (3620,5084,'ПЕТКОВЦИ',5),
 (3621,9521,'ПЕТЛЕШКОВО',9),
 (3622,6634,'ПЕТЛИНО',10),
 (3623,5933,'ПЕТОКЛАДЕНЦИ',16),
 (3624,5784,'ПЕТРЕВЕНЕ',12),
 (3625,2936,'ПЕТРЕЛИК',1),
 (3626,7956,'ПЕТРИНО',26),
 (3627,2085,'ПЕТРИЧ',23),
 (3628,2850,'ПЕТРИЧ',1),
 (3629,4911,'ПЕТРОВ ДОЛ',22),
 (3630,9225,'ПЕТРОВ ДОЛ',3),
 (3631,2815,'ПЕТРОВО',1),
 (3632,6058,'ПЕТРОВО',25),
 (3633,5347,'ПЕТРОВЦИ',8),
 (3634,3521,'ПЕТРОХАН',13),
 (3635,5878,'ПЕТЪРНИЦА',16),
 (3636,2234,'ПЕТЪРЧ',23),
 (3637,5345,'ПЕЦОВЦИ',8),
 (3638,7428,'ПЕЧЕНИЦА',18),
 (3639,4912,'ПЕЧИНСКО',22),
 (3640,3733,'ПЕШАКОВО',6),
 (3641,2443,'ПЕЩЕРА',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3642,4550,'ПЕЩЕРА',14),
 (3643,4754,'ПЕЩЕРА',22),
 (3644,5788,'ПЕЩЕРНА',12),
 (3645,8525,'ПЕЩЕРСКО',2),
 (3646,2618,'ПИПЕРЕВО',11),
 (3647,2831,'ПИПЕРИЦА',1),
 (3648,2508,'ПИПЕРКОВ ЧИФЛИК',11),
 (3649,7129,'ПИПЕРКОВО',19),
 (3650,5035,'ПИРАМИДАТА',5),
 (3651,7090,'ПИРГОВО',19),
 (3652,2070,'ПИРДОП',23),
 (3653,2823,'ПИРИН',1),
 (3654,7976,'ПИРИНЕЦ',26),
 (3655,8528,'ПИРНЕ',2),
 (3656,7081,'ПИСАНЕЦ',19),
 (3657,4744,'ПИСАНИЦА',22),
 (3658,5127,'ПИСАРЕВО',5),
 (3659,9927,'ПИСАРЕВО',28),
 (3660,9527,'ПИСАРОВО',9),
 (3661,5871,'ПИСАРОВО',16),
 (3662,8289,'ПИСМЕНОВО',2),
 (3663,8942,'ПИТОВО',21),
 (3664,2218,'ПИШАНЕ',23),
 (3665,3662,'ПИШУРКА',13),
 (3666,4451,'ПИЩИГОВО',14),
 (3667,6813,'ПИЯВЕЦ',10),
 (3668,6850,'ПЛАЗИЩЕ',10),
 (3669,5042,'ПЛАКОВО',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3670,3781,'ПЛАКУДЕР',6),
 (3671,1475,'ПЛАНА',24),
 (3672,6599,'ПЛАНИНЕЦ',27),
 (3673,2340,'ПЛАНИНИЦА',15),
 (3674,8565,'ПЛАНИНИЦА',2),
 (3675,6560,'ПЛАНИНОВО',27),
 (3676,4940,'ПЛАНИНСКО',22),
 (3677,4921,'ПЛАНИНЦИ',22),
 (3678,5367,'ПЛАНИНЦИ',8),
 (3679,9365,'ПЛАЧИДОЛ',9),
 (3680,5370,'ПЛАЧКА',8),
 (3681,5360,'ПЛАЧКОВЦИ',8),
 (3682,5800,'ПЛЕВЕН',16),
 (3683,9522,'ПЛЕНИМИР',9),
 (3684,2954,'ПЛЕТЕНА',1),
 (3685,3931,'ПЛЕШИВЕЦ',6),
 (3686,6800,'ПЛЕШИНЦИ',10),
 (3687,9920,'ПЛИСКА',28),
 (3688,4000,'ПЛОВДИВ',17),
 (3689,4979,'ПЛОВДИВЦИ',22),
 (3690,6890,'ПЛОВКА',10),
 (3691,6257,'ПЛОДОВИТОВО',25),
 (3692,6055,'ПЛОСКА МОГИЛА',25),
 (3693,2810,'ПЛОСКИ',1),
 (3694,2072,'ПЛЪЗИЩЕ',23),
 (3695,7934,'ПЛЪСТИНА',26),
 (3696,9372,'ПОБЕДА',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3697,5873,'ПОБЕДА',16),
 (3698,8679,'ПОБЕДА',29),
 (3699,4638,'ПОБИТ КАМЪК',14),
 (3700,7262,'ПОБИТ КАМЪК',18),
 (3701,2554,'ПОБИТ КАМЪК',11),
 (3702,5365,'ПОБЪК',8),
 (3703,2218,'ПОВАЛИРЪЖ',23),
 (3704,6630,'ПОВЕТ',10),
 (3705,7431,'ПОДАЙВА',18),
 (3706,4733,'ПОДВИС',22),
 (3707,8450,'ПОДВИС',2),
 (3708,6850,'ПОДВРЪХ',10),
 (3709,3852,'ПОДГОРE',6),
 (3710,8535,'ПОДГОРЕЦ',2),
 (3711,2049,'ПОДГОРИЕ',23),
 (3712,7768,'ПОДГОРИЦА',26),
 (3713,1221,'ПОДГУМЕР',23),
 (3714,5852,'ПОДЕМ',16),
 (3715,6880,'ПОДКОВА',10),
 (3716,6312,'ПОДКРЕПА',27),
 (3717,7632,'ПОДЛЕС',20),
 (3718,6945,'ПОДРУМЧЕ',10),
 (3719,9391,'ПОДСЛОН',9),
 (3720,6057,'ПОДСЛОН',25),
 (3721,2229,'ПОЖАРЕВО',23),
 (3722,7622,'ПОЖАРЕВО',20),
 (3723,5041,'ПОЖЕРНИК',5),
 (3724,4524,'ПОИБРЕНЕ',14);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3725,3764,'ПОКРАЙНА',6),
 (3726,6575,'ПОКРОВАН',27),
 (3727,2708,'ПОКРОВНИК',1),
 (3728,2758,'ПОЛЕНА',1),
 (3729,2804,'ПОЛЕНИЦА',1),
 (3730,2561,'ПОЛЕТИНЦИ',11),
 (3731,3818,'ПОЛЕТКОВЦИ',6),
 (3732,2751,'ПОЛЕТО',1),
 (3733,5138,'ПОЛИКРАИЩЕ',5),
 (3734,2060,'ПОЛИОВЦИ',23),
 (3735,9401,'ПОЛКОВНИК ДЯКОВО',9),
 (3736,6909,'ПОЛКОВНИК ЖЕЛЯЗОВО',10),
 (3737,9432,'ПОЛКОВНИК ИВАНОВО',9),
 (3738,7579,'ПОЛКОВНИК ЛАМБРИНОВ',20),
 (3739,9471,'ПОЛКОВНИК САВОВО',9),
 (3740,9378,'ПОЛКОВНИК СВЕЩАРОВО',9),
 (3741,4794,'ПОЛКОВНИК СЕРАФИМОВ',22),
 (3742,7677,'ПОЛКОВНИК ТАСЛАКОВО',20),
 (3743,7553,'ПОЛКОВНИК ЧОЛАКОВО',20),
 (3744,2551,'ПОЛСКА СКАКАВИЦА',11),
 (3745,6276,'ПОЛСКИ ГРАДЕЦ',25),
 (3746,8123,'ПОЛСКИ ИЗВОР',2);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3747,5193,'ПОЛСКИ СЕНОВЕЦ',5),
 (3748,5180,'ПОЛСКИ ТРЪМБЕШ',5),
 (3749,7131,'ПОЛСКО КОСОВО',19),
 (3750,8937,'ПОЛСКО ПЪДАРЕВО',21),
 (3751,4977,'ПОЛЯНА',22),
 (3752,7584,'ПОЛЯНА',20),
 (3753,8654,'ПОЛЯНА',29),
 (3754,6847,'ПОЛЯНЕЦ',10),
 (3755,8544,'ПОЛЯНОВО',2),
 (3756,6464,'ПОЛЯНОВО',27),
 (3757,2068,'ПОЛЯНЦИ',23),
 (3758,9239,'ПОЛЯЦИТЕ',3),
 (3759,3476,'ПОМЕЖДИН',13),
 (3760,7164,'ПОМЕН',19),
 (3761,8200,'ПОМОРИЕ',2),
 (3762,7839,'ПОМОЩИЦА',26),
 (3763,6297,'ПОМОЩНИК',25),
 (3764,2236,'ПОНОР',23),
 (3765,5343,'ПОПАРИ',8),
 (3766,5365,'ПОПГЕРГЕВЦИ',8),
 (3767,9377,'ПОПГРИГОРОВО',9),
 (3768,9478,'ПОПГРУЕВО',9),
 (3769,7590,'ПОПИНА',20),
 (3770,4528,'ПОПИНЦИ',14),
 (3771,3244,'ПОПИЦА',7),
 (3772,7545,'ПОПКРАЛЕВО',20),
 (3773,6398,'ПОПОВЕЦ',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3774,4127,'ПОПОВИЦА',17),
 (3775,9101,'ПОПОВИЧ',3),
 (3776,8735,'ПОПОВО',29),
 (3777,7800,'ПОПОВО',26),
 (3778,5035,'ПОПОВЦИ',5),
 (3779,5345,'ПОПОВЦИ',8),
 (3780,2060,'ПОПОВЦИ',23),
 (3781,2014,'ПОПОВЯНЕ',23),
 (3782,5365,'ПОПРАЙКОВЦИ',8),
 (3783,4759,'ПОПРЕЛКА',22),
 (3784,7564,'ПОПРУСАНОВО',20),
 (3785,5084,'ПОПРУСЕВЦИ',5),
 (3786,5084,'ПОПСКА',5),
 (3787,5466,'ПОПСКА',8),
 (3788,6580,'ПОПСКО',27),
 (3789,5898,'ПОРДИМ',16),
 (3790,7218,'ПОРОИЩЕ',18),
 (3791,8221,'ПОРОЙ',2),
 (3792,4281,'ПОРОЙНА',17),
 (3793,7952,'ПОРОЙНО',26),
 (3794,7658,'ПОРОЙНО',20),
 (3795,2639,'ПОРОМИНОВО',11),
 (3796,3432,'ПОРТИТОВЦИ',13),
 (3797,9409,'ПОРУЧИК КЪРДЖИЕВО',9),
 (3798,9658,'ПОРУЧИК ЧУНЧЕВО',9),
 (3799,7853,'ПОСАБИНА',26),
 (3800,7567,'ПОСЕВ',20);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3801,6833,'ПОСТНИК',10),
 (3802,5309,'ПОТОК',8),
 (3803,4768,'ПОТОКА',22),
 (3804,2127,'ПОТОП',23),
 (3805,6963,'ПОТОЧАРКА',10),
 (3806,6850,'ПОТОЧЕ',10),
 (3807,6960,'ПОТОЧНИЦА',10),
 (3808,2455,'ПОЦЪРНЕНЦИ',15),
 (3809,5125,'ПРАВДА',5),
 (3810,7690,'ПРАВДА',20),
 (3811,8695,'ПРАВДИНО',29),
 (3812,6765,'ПРАВДОЛЮБ',10),
 (3813,9945,'ПРАВЕНЦИ',28),
 (3814,2161,'ПРАВЕЦ',23),
 (3815,2170,'ПРАВЕШКА ЛАКАВИЦА',23),
 (3816,4191,'ПРАВИЩЕ',17),
 (3817,2894,'ПРАВО БЪРДО',1),
 (3818,6248,'ПРАВОСЛАВ',25),
 (3819,4287,'ПРАВОСЛАВЕН',17),
 (3820,3917,'ПРАУЖДА',6),
 (3821,5345,'ПРАХАЛИ',8),
 (3822,3457,'ПРЕВАЛА',13),
 (3823,2571,'ПРЕКОЛНИЦА',11),
 (3824,2206,'ПРЕКРЪСТЕ',23),
 (3825,7325,'ПРЕЛЕЗ',18),
 (3826,5545,'ПРЕЛОМ',12),
 (3827,5040,'ПРЕОБРАЖЕНСКИ МАНАС',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3828,8541,'ПРЕОБРАЖЕНЦИ',2),
 (3829,6862,'ПРЕСЕКА',10),
 (3830,9558,'ПРЕСЕЛЕНЦИ',9),
 (3831,7772,'ПРЕСЕЛЕЦ',26),
 (3832,9922,'ПРЕСЕЛКА',28),
 (3833,7762,'ПРЕСИЯН',26),
 (3834,6048,'ПРЕСЛАВЕН',25),
 (3835,6454,'ПРЕСЛАВЕЦ',27),
 (3836,7635,'ПРЕСЛАВЦИ',20),
 (3837,4987,'ПРЕСОКА',22),
 (3838,9635,'ПРЕСПА',9),
 (3839,2072,'ПРЕСПА',23),
 (3840,5350,'ПРЕСТОЙ',8),
 (3841,7754,'ПРЕСЯК',18),
 (3842,5542,'ПРЕСЯКА',12),
 (3843,2452,'ПРИБОЙ',15),
 (3844,9352,'ПРИЛЕП',9),
 (3845,8445,'ПРИЛЕП',2),
 (3846,8290,'ПРИМОРСКО',2),
 (3847,9376,'ПРИМОРЦИ',9),
 (3848,9146,'ПРИПЕК',3),
 (3849,6858,'ПРИПЕК',10),
 (3850,8537,'ПРИПЕК',2),
 (3851,9524,'ПРИСАД',9),
 (3852,8161,'ПРИСАД',2),
 (3853,6564,'ПРИСАДЕЦ',27),
 (3854,9131,'ПРИСЕЛЦИ',3),
 (3855,8251,'ПРИСЕЛЦИ',2);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3856,5033,'ПРИСОВО',5),
 (3857,5766,'ПРИСОЕТО',12),
 (3858,7969,'ПРИСОЙНА',26),
 (3859,9965,'ПРИСТОЕ',28),
 (3860,7748,'ПРОБУДА',26),
 (3861,9200,'ПРОВАДИЯ',3),
 (3862,4871,'ПРОГЛЕД',22),
 (3863,5045,'ПРОДАНОВЦИ',5),
 (3864,5307,'ПРОДАНОВЦИ',8),
 (3865,2007,'ПРОДАНОВЦИ',23),
 (3866,2471,'ПРОДАНЧА',15),
 (3867,7739,'ПРОЛАЗ',26),
 (3868,3913,'ПРОЛАЗНИЦА',6),
 (3869,9685,'ПРОЛЕЗ',9),
 (3870,2228,'ПРОЛЕША',23),
 (3871,4358,'ПРОЛОМ',17),
 (3872,6632,'ПРОПАСТ',10),
 (3873,7055,'ПРОСЕНА',19),
 (3874,8548,'ПРОСЕНИК',2),
 (3875,9175,'ПРОСЕЧЕН',3),
 (3876,7263,'ПРОСТОРНО',19),
 (3877,3957,'ПРОТОПОПИНЦИ',6),
 (3878,9487,'ПРОФЕСОР ЗЛАТАРСКИ',9),
 (3879,7572,'ПРОФЕСОР ИШИРКОВО',20),
 (3880,7668,'ПРОХЛАДА',20),
 (3881,8336,'ПРОХОД',2);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3882,8944,'ПРОХОРОВО',21),
 (3883,6062,'ПРЯПОРЕЦ',25),
 (3884,6716,'ПРЯПОРЕЦ',10),
 (3885,6811,'ПТИЧАР',10),
 (3886,8998,'ПТИЧАРИ',21),
 (3887,7946,'ПТИЧЕВО',26),
 (3888,3049,'ПУДРИЯ',7),
 (3889,5062,'ПУШЕВО',5),
 (3890,8718,'ПЧЕЛА',29),
 (3891,6385,'ПЧЕЛАРИ',27),
 (3892,9550,'ПЧЕЛАРОВО',9),
 (3893,6664,'ПЧЕЛАРОВО',10),
 (3894,2048,'ПЧЕЛИН',23),
 (3895,8456,'ПЧЕЛИН',2),
 (3896,7438,'ПЧЕЛИНА',18),
 (3897,9363,'ПЧЕЛИНО',9),
 (3898,6196,'ПЧЕЛИНОВО',25),
 (3899,5048,'ПЧЕЛИЩЕ',5),
 (3900,9427,'ПЧЕЛНИК',9),
 (3901,9118,'ПЧЕЛНИК',3),
 (3902,7987,'ПЧЕЛНО',26),
 (3903,6268,'ПШЕНИЧЕВО',25),
 (3904,8992,'ПЪДАРЕВО',21),
 (3905,7959,'ПЪДАРИНО',26),
 (3906,4158,'ПЪДАРСКО',17),
 (3907,6746,'ПЪДАРЦИ',10),
 (3908,8317,'ПЪНЧЕВО',2),
 (3909,7958,'ПЪРВАН',26);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3910,4110,'ПЪРВЕНЕЦ',17),
 (3911,8694,'ПЪРВЕНЕЦ',29),
 (3912,6865,'ПЪРВЕНЦИ',10),
 (3913,6882,'ПЪРВИЦА',10),
 (3914,2890,'ПЪРВОМАЙ',1),
 (3915,4270,'ПЪРВОМАЙ',17),
 (3916,5139,'ПЪРВОМАЙЦИ',5),
 (3917,5365,'ПЪРЖИГРАХ',8),
 (3918,3531,'ПЪРЛИЧЕВО',13),
 (3919,5052,'ПЪРОВЦИ',5),
 (3920,5307,'ПЪРТЕВЦИ',8),
 (3921,5380,'ПЪРША',8),
 (3922,6075,'ПЪСТРЕН',25),
 (3923,6233,'ПЪСТРОВО',25),
 (3924,6519,'ПЪСТРОГОР',27),
 (3925,6597,'ПЪСТРООК',27),
 (3926,6379,'ПЪТНИКОВО',27),
 (3927,6496,'ПЯСЪЧЕВО',27),
 (3928,3938,'РАБИША',6),
 (3929,6384,'РАБОВО',27),
 (3930,3842,'РАБРОВО',6),
 (3931,8146,'РАВАДИНОВО',2),
 (3932,8238,'РАВДА',2),
 (3933,6834,'РАВЕН',10),
 (3934,2249,'РАВНА',23),
 (3935,9235,'РАВНА',3),
 (3936,5742,'РАВНА',12),
 (3937,3473,'РАВНА',13);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3938,9124,'РАВНА ГОРА',3),
 (3939,6526,'РАВНА ГОРА',27),
 (3940,8151,'РАВНА ГОРА',2),
 (3941,8117,'РАВНЕЦ',2),
 (3942,9523,'РАВНЕЦ',9),
 (3943,4931,'РАВНИЛ',22),
 (3944,4781,'РАВНИНАТА',22),
 (3945,4955,'РАВНИЩА',22),
 (3946,2167,'РАВНИЩЕ',23),
 (3947,7296,'РАВНО',19),
 (3948,4913,'РАВНО НИВИЩЕ',22),
 (3949,2129,'РАВНО ПОЛЕ',23),
 (3950,7965,'РАВНО СЕЛО',26),
 (3951,5089,'РАВНОВО',5),
 (3952,4582,'РАВНОГОР',14),
 (3953,9294,'РАДАН ВОЙВОДА',3),
 (3954,5185,'РАДАНОВО',5),
 (3955,5370,'РАДАНЧЕТО',8),
 (3956,9149,'РАДЕВО',3),
 (3957,8917,'РАДЕВО',21),
 (3958,5360,'РАДЕВЦИ',8),
 (3959,8959,'РАДЕЦКИ',21),
 (3960,2447,'РАДИБОШ',15),
 (3961,6427,'РАДИЕВО',27),
 (3962,4590,'РАДИЛОВО',14),
 (3963,7245,'РАДИНГРАД',18),
 (3964,8983,'РАДИНКА',21);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3965,5360,'РАДИНО',8),
 (3966,4202,'РАДИНОВО',17),
 (3967,5838,'РАДИШЕВО',16),
 (3968,9808,'РАДКО ДИМИТРИЕВО',28),
 (3969,5041,'РАДКОВЦИ',5),
 (3970,2548,'РАДЛОВЦИ',11),
 (3971,6260,'РАДНЕВО',25),
 (3972,5035,'РАДНЕВЦИ',5),
 (3973,3144,'РАДОВЕНЕ',7),
 (3974,6564,'РАДОВЕЦ',27),
 (3975,2488,'РАДОВО',15),
 (3976,5380,'РАДОВЦИ',8),
 (3977,5084,'РАДОВЦИ',5),
 (3978,5633,'РАДОЕВСКОТО',12),
 (3979,5367,'РАДОЕВЦИ',8),
 (3980,8323,'РАДОЙНОВО',2),
 (3981,2400,'РАДОМИР',15),
 (3982,5997,'РАДОМИРЦИ',16),
 (3983,2148,'РАДОТИНА',23),
 (3984,2043,'РАДУИЛ',23),
 (3985,2359,'РАДУЙ',15),
 (3986,2222,'РАДУЛОВЦИ',23),
 (3987,6185,'РАДУНЦИ',25),
 (3988,6185,'РАДУНЦИ - САНАТОРИУ',25),
 (3989,5540,'РАДЮВЕНЕ',12),
 (3990,5363,'РАЕВЦИ',8),
 (3991,2253,'РАЗБОИЩЕ',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (3992,8531,'РАЗБОЙНА',2),
 (3993,7707,'РАЗБОЙНА',26),
 (3994,9790,'РАЗВИГОРОВО',28),
 (3995,3633,'РАЗГРАД',13),
 (3996,7200,'РАЗГРАД',18),
 (3997,7659,'РАЗДЕЛ',20),
 (3998,8747,'РАЗДЕЛ',29),
 (3999,9181,'РАЗДЕЛНА',3),
 (4000,6283,'РАЗДЕЛНА',25),
 (4001,7989,'РАЗДЕЛЦИ',26),
 (4002,2835,'РАЗДОЛ',1),
 (4003,2166,'РАЗДОЛАТА',23),
 (4004,2162,'РАЗЛИВ',23),
 (4005,2760,'РАЗЛОГ',1),
 (4006,5089,'РАЗСОХА',5),
 (4007,6525,'РАЙКОВА МОГИЛА',27),
 (4008,5617,'РАЙКОВСКА',12),
 (4009,5039,'РАЙКОВЦИ',5),
 (4010,7421,'РАЙНИНО',18),
 (4011,6423,'РАЙНОВО',27),
 (4012,5347,'РАЙНОВЦИ',8),
 (4013,5094,'РАЙНОВЦИ',5),
 (4014,5363,'РАЙНУШКОВЦИ',8),
 (4015,2017,'РАЙОВО',23),
 (4016,3067,'РАКЕВО',7),
 (4017,2451,'РАКИЛОВЦИ',15),
 (4018,2223,'РАКИТА',23),
 (4019,5998,'РАКИТА',16);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4020,2753,'РАКИТНА',1),
 (4021,3791,'РАКИТНИЦА',6),
 (4022,6067,'РАКИТНИЦА',25),
 (4023,4640,'РАКИТОВО',14),
 (4024,8547,'РАКЛИНОВО',2),
 (4025,8439,'РАКЛИЦА',2),
 (4026,3820,'РАКОВИЦА',6),
 (4027,2577,'РАКОВО',11),
 (4028,8884,'РАКОВО',21),
 (4029,9659,'РАКОВСКИ',9),
 (4030,7264,'РАКОВСКИ',18),
 (4031,4150,'РАКОВСКИ',17),
 (4032,8257,'РАКОВСКОВО',2),
 (4033,5875,'РАЛЕВО',16),
 (4034,5367,'РАЛЕВЦИ',8),
 (4035,5098,'РАЛИНОВЦИ',5),
 (4036,6820,'РАЛИЦА',10),
 (4037,7759,'РАЛИЦА',26),
 (4038,6965,'РАЛИЧЕВО',10),
 (4039,2569,'РАНЕНЦИ',11),
 (4040,6720,'РАНИ ЛИСТ',10),
 (4041,2484,'РАНИ ЛУГ',15),
 (4042,2357,'РАСНИК',15),
 (4043,3660,'РАСОВО',13),
 (4044,6865,'РАСТНИК',10),
 (4045,5343,'РАХОВЦИ',8),
 (4046,5345,'РАЧЕВЦИ',8),
 (4047,5350,'РАЧОВЦИ',8);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4048,5035,'РАШЕВЦИ',5),
 (4049,2578,'РАШКА ГРАЩИЦА',11),
 (4050,2152,'РАШКОВО',23),
 (4051,5350,'РАШОВИТЕ',8),
 (4052,3532,'РАШОВИЦА',13),
 (4053,5093,'РАЮВЦИ',5),
 (4054,3935,'РАЯНОВЦИ',6),
 (4055,2204,'РАЯНОВЦИ',23),
 (4056,2446,'РАЯНЦИ',15),
 (4057,5087,'РЕБРЕВЦИ',5),
 (4058,2384,'РЕБРО',15),
 (4059,2294,'РЕБРОВО',23),
 (4060,3158,'РЕБЪРКОВО',7),
 (4061,5340,'РЕДЕШКОВЦИ',8),
 (4062,2269,'РЕДИНА',23),
 (4063,2380,'РЕЖАНЦИ',15),
 (4064,2562,'РЕЖИНЦИ',11),
 (4065,5088,'РЕЗАЧ',5),
 (4066,6649,'РЕЗБАРЦИ',10),
 (4067,8281,'РЕЗОВО',2),
 (4068,4734,'РЕКА',22),
 (4069,5088,'РЕКИЧКА',5),
 (4070,2018,'РЕЛЬОВО',23),
 (4071,3954,'РЕПЛЯНА',6),
 (4072,5993,'РЕСЕЛЕЦ',16),
 (4073,5060,'РЕСЕН',5),
 (4074,2621,'РЕСИЛОВО',11),
 (4075,4793,'РЕЧАНИ',22),
 (4076,8567,'РЕЧИЦА',2);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4077,2483,'РЕЯНОВЦИ',15),
 (4078,2192,'РИБАРИЦА',23),
 (4079,5720,'РИБАРИЦА',12),
 (4080,6790,'РИБАРЦИ',10),
 (4081,5847,'РИБЕН',16),
 (4082,4952,'РИБЕН ДОЛ',22),
 (4083,6939,'РИБИНО',10),
 (4084,2864,'РИБНИК',1),
 (4085,4973,'РИБНИЦА',22),
 (4086,2967,'РИБНОВО',1),
 (4087,6849,'РИДИНО',10),
 (4088,6742,'РИДОВО',10),
 (4089,2630,'РИЛА',11),
 (4090,2643,'РИЛСКИ МАНАСТИР',11),
 (4091,2710,'РИЛЦИ',1),
 (4092,6274,'РИСИМАНОВО',25),
 (4093,5370,'РИТЯ',8),
 (4094,9830,'РИШ',28),
 (4095,8664,'РОБОВО',29),
 (4096,4736,'РОВИНА',22),
 (4097,6916,'РОГАЧ',10),
 (4098,9632,'РОГАЧЕВО',9),
 (4099,3962,'РОГЛЕЦ',6),
 (4100,6845,'РОГОЗАРИ',10),
 (4101,3360,'РОГОЗЕН',7),
 (4102,9560,'РОГОЗИНА',9),
 (4103,6469,'РОГОЗИНОВО',27),
 (4104,6845,'РОГОЗЧЕ',10),
 (4105,4140,'РОГОШ',17);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4106,5447,'РОГУЛЯТ',8),
 (4107,5092,'РОДИНА',5),
 (4108,6356,'РОДОПИ',27),
 (4109,6762,'РОДОПСКО',10),
 (4110,8539,'РОЖДЕН',2),
 (4111,2820,'РОЖЕН',1),
 (4112,8630,'РОЗА',29),
 (4113,6596,'РОЗИНО',27),
 (4114,4340,'РОЗИНО',17),
 (4115,4154,'РОЗОВЕЦ',17),
 (4116,4583,'РОЗОВО',14),
 (4117,6163,'РОЗОВО',25),
 (4118,3130,'РОМАН',7),
 (4119,2254,'РОПОТ',23),
 (4120,9537,'РОСЕН',9),
 (4121,4421,'РОСЕН',14),
 (4122,8150,'РОСЕН',2),
 (4123,9369,'РОСЕНОВО',9),
 (4124,8318,'РОСЕНОВО',2),
 (4125,7784,'РОСИНА',18),
 (4126,7933,'РОСИЦА',26),
 (4127,9540,'РОСИЦА',9),
 (4128,5221,'РОСИЦА',5),
 (4129,5091,'РОСНО',5),
 (4130,2225,'РОСОМАН',23),
 (4131,4653,'РОХЛЕВА',14),
 (4132,9252,'РОЯК',3),
 (4133,2343,'РУДАРЦИ',15),
 (4134,6659,'РУДИНА',10),
 (4135,8536,'РУДИНА',2),
 (4136,8112,'РУДНИК',2);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4137,9105,'РУДНИК',3),
 (4138,4960,'РУДОЗЕМ',22),
 (4139,5367,'РУЕВЦИ',8),
 (4140,4102,'РУЕН',17),
 (4141,8540,'РУЕН',2),
 (4142,7744,'РУЕЦ',26),
 (4143,3930,'РУЖИНЦИ',6),
 (4144,8722,'РУЖИЦА',29),
 (4145,9954,'РУЖИЦА',28),
 (4146,7692,'РУЙНО',20),
 (4147,5304,'РУЙЧОВЦИ',8),
 (4148,6057,'РУМАНЯ',25),
 (4149,6453,'РУМЕЛИЯ',27),
 (4150,5785,'РУМЯНЦЕВО',12),
 (4151,5397,'РУНЯ',8),
 (4152,2863,'РУПИТЕ',1),
 (4153,6251,'РУПКИТЕ',25),
 (4154,3726,'РУПЦИ',6),
 (4155,5994,'РУПЦИ',16),
 (4156,8574,'РУПЧА',2),
 (4157,6695,'РУСАЛИНА',10),
 (4158,6795,'РУСАЛСКО',10),
 (4159,5057,'РУСАЛЯ',5),
 (4160,7000,'РУСЕ',19),
 (4161,5380,'РУСИНОВЦИ',8),
 (4162,3148,'РУСКА БЕЛА',7),
 (4163,5035,'РУСКОВЦИ',5),
 (4164,8105,'РУСОКАСТРО',2),
 (4165,4956,'РУСТАН',22),
 (4166,5079,'РУХОВЦИ',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4167,6928,'РУЧЕЙ',10),
 (4168,2060,'РЪЖАНА',23),
 (4169,2389,'РЪЖДАВЕЦ',15),
 (4170,2550,'РЪЖДАВИЦА',11),
 (4171,2856,'РЪЖДАК',1),
 (4172,4169,'РЪЖЕВО',17),
 (4173,4170,'РЪЖЕВО КОНАРЕ',17),
 (4174,6171,'РЪЖЕНА',25),
 (4175,6456,'РЪЖЕНОВО',27),
 (4176,8530,'РЪЖИЦА',2),
 (4177,2568,'РЪСОВО',11),
 (4178,6850,'РЪТ',10),
 (4179,7935,'РЪТЛИНА',26),
 (4180,8842,'РЪЧЕНИЦА',21),
 (4181,5345,'РЯЗКОВЦИ',8),
 (4182,7070,'РЯХОВО',19),
 (4183,5440,'РЯХОВЦИТЕ',8),
 (4184,9251,'САВА',3),
 (4185,7318,'САВИН',18),
 (4186,8643,'САВИНО',29),
 (4187,2576,'САВОЙСКИ',11),
 (4188,7841,'САДИНА',26),
 (4189,5896,'САДОВЕЦ',16),
 (4190,2387,'САДОВИК',15),
 (4191,6815,'САДОВИЦА',10),
 (4192,9139,'САДОВО',3),
 (4193,4122,'САДОВО',17),
 (4194,8463,'САДОВО',2),
 (4195,2922,'САДОВО',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4196,2576,'САЖДЕНИК',11),
 (4197,6568,'САКАРЦИ',27),
 (4198,9817,'САЛАМАНОВО',28),
 (4199,5397,'САЛАСУКА',8),
 (4200,3933,'САЛАШ',6),
 (4201,6942,'САМОВИЛА',10),
 (4202,5040,'САМОВОДЕНЕ',5),
 (4203,6878,'САМОДИВА',10),
 (4204,6897,'САМОКИТКА',10),
 (4205,2000,'САМОКОВ',23),
 (4206,2620,'САМОРАНОВО',11),
 (4207,9101,'САМОТИНО',3),
 (4208,5035,'САМСИИТЕ',5),
 (4209,7454,'САМУИЛ',18),
 (4210,2895,'САМУИЛОВА КРЕПОСТ',1),
 (4211,9384,'САМУИЛОВО',9),
 (4212,2879,'САМУИЛОВО',1),
 (4213,8865,'САМУИЛОВО',21),
 (4214,6051,'САМУИЛОВО',25),
 (4215,8484,'САН СТЕФАНО',2),
 (4216,5949,'САНАДИНОВО',16),
 (4217,2800,'САНДАНСКИ',1),
 (4218,7059,'САНДРОВО',19),
 (4219,2650,'САПАРЕВА БАНЯ',11),
 (4220,2645,'САПАРЕВО',11),
 (4221,3333,'САРАЕВО',7);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4222,8659,'САРАНСКО',29),
 (4223,2120,'САРАНЦИ',23),
 (4224,4447,'САРАЯ',14),
 (4225,2950,'САТОВЧА',1),
 (4226,6961,'СБОР',10),
 (4227,4449,'СБОР',14),
 (4228,6595,'СБОРИНО',27),
 (4229,8899,'СБОРИЩЕ',21),
 (4230,9006,'СВ. КОНСТАНТИН И ЕЛ',3),
 (4231,7082,'СВАЛЕНИК',18),
 (4232,6675,'СВАТБАРЕ',10),
 (4233,4304,'СВЕЖЕН',17),
 (4234,4620,'СВЕТА ПЕТКА',14),
 (4235,8256,'СВЕТИ ВЛАС',2),
 (4236,8258,'СВЕТИ ВЛАС - САНАТО',2),
 (4237,4577,'СВЕТИ КОНСТАНТИН',14),
 (4238,9662,'СВЕТИ НИКОЛА',9),
 (4239,6890,'СВЕТЛЕН',10),
 (4240,7877,'СВЕТЛЕН',26),
 (4241,6420,'СВЕТЛИНА',27),
 (4242,8322,'СВЕТЛИНА',2),
 (4243,6547,'СВЕТЛИНА',27),
 (4244,2449,'СВЕТЛЯ',15),
 (4245,1252,'СВЕТОВРАЧЕНЕ',23),
 (4246,7554,'СВЕТОСЛАВ',20),
 (4247,6378,'СВЕТОСЛАВ',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4248,5080,'СВЕТОСЛАВЦИ',5),
 (4249,6768,'СВЕТУЛКА',10),
 (4250,7423,'СВЕЩАРИ',18),
 (4251,2266,'СВИДНЯ',23),
 (4252,6500,'СВИЛЕНГРАД',27),
 (4253,5300,'СВИНАРСКИ ДОЛ',8),
 (4254,6578,'СВИРАЧИ',27),
 (4255,6499,'СВИРКОВО',27),
 (4256,5367,'СВИРЦИ',8),
 (4257,7960,'СВИРЧОВО',26),
 (4258,5250,'СВИЩОВ',5),
 (4259,9398,'СВОБОДА',9),
 (4260,8103,'СВОБОДА',2),
 (4261,6800,'СВОБОДА',10),
 (4262,4532,'СВОБОДА',14),
 (4263,6230,'СВОБОДА',25),
 (4264,6278,'СВОБОДЕН',25),
 (4265,6706,'СВОБОДИНОВО',10),
 (4266,7997,'СВОБОДИЦА',26),
 (4267,2260,'СВОГЕ',23),
 (4268,2171,'СВОДЕ',23),
 (4269,7332,'СЕВАР',18),
 (4270,6745,'СЕВДАЛИНА',10),
 (4271,9405,'СЕВЕРНЯК',9),
 (4272,9415,'СЕВЕРЦИ',9),
 (4273,5400,'СЕВЛИЕВО',8),
 (4274,2834,'СЕДЕЛЕЦ',1),
 (4275,6827,'СЕДЕФЧЕ',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4276,8994,'СЕДЛАРЕВО',21),
 (4277,6800,'СЕДЛАРИ',10),
 (4278,6789,'СЕДЛАРцИ',10),
 (4279,6621,'СЕДЛОВИНА',10),
 (4280,5300,'СЕДЯНКОВЦИ',8),
 (4281,7282,'СЕЙДОЛ',18),
 (4282,5344,'СЕЙКОВЦИ',8),
 (4283,5041,'СЕЙМЕНИТЕ',5),
 (4284,6890,'СЕКИРКА',10),
 (4285,7665,'СЕКУЛОВО',20),
 (4286,3301,'СЕЛАНОВЦИ',7),
 (4287,8862,'СЕЛИМИНОВО',21),
 (4288,2744,'СЕЛИЩЕ',1),
 (4289,5462,'СЕЛИЩЕ',8),
 (4290,4735,'СЕЛИЩЕ',22),
 (4291,2377,'СЕЛИЩЕН ДОЛ',15),
 (4292,6487,'СЕЛСКА ПОЛЯНА',27),
 (4293,9655,'СЕЛЦЕ',9),
 (4294,6184,'СЕЛЦЕ',25),
 (4295,5655,'СЕЛЦЕ',12),
 (4296,4129,'СЕЛЦИ',17),
 (4297,4814,'СЕЛЧА',22),
 (4298,2060,'СЕЛЯНИН',23),
 (4299,7072,'СЕМЕРДЖИЕВО',19),
 (4300,5340,'СЕМЕРДЖИИТЕ',8),
 (4301,7970,'СЕМЕРЦИ',26),
 (4302,5035,'СЕМКОВЦИ',5),
 (4303,4474,'СЕМЧИНОВО',14);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4304,5450,'СЕННИК',8),
 (4305,7271,'СЕНОВО',19),
 (4306,6481,'СЕНОКЛАС',27),
 (4307,9634,'СЕНОКОС',9),
 (4308,2752,'СЕНОКОС',1),
 (4309,6800,'СЕНЦЕ',10),
 (4310,4490,'СЕПТЕМВРИ',14),
 (4311,3637,'СЕПТЕМВРИЙЦИ',13),
 (4312,3796,'СЕПТЕМВРИЙЦИ',6),
 (4313,9693,'СЕПТЕМВРИЙЦИ',9),
 (4314,7341,'СЕСЛАВ',18),
 (4315,4469,'СЕСТРИМО',14),
 (4316,2875,'СЕСТРИНО',1),
 (4317,6660,'СЕСТРИНСКО',10),
 (4318,5360,'СЕЧЕН КАМЪК',8),
 (4319,9923,'СЕЧИЩЕ',28),
 (4320,6585,'СИВ КЛАДЕНЕЦ',27),
 (4321,6522,'СИВА РЕКА',27),
 (4322,4780,'СИВИНО',22),
 (4323,8438,'СИГМЕН',2),
 (4324,6380,'СИЛЕН',27),
 (4325,7500,'СИЛИСТРА',20),
 (4326,6490,'СИМЕОНОВГРАД',27),
 (4327,4475,'СИМЕОНОВЕЦ',14),
 (4328,8665,'СИМЕОНОВО',29),
 (4329,2730,'СИМИТЛИ',1),
 (4330,3737,'СИНАГОВЦИ',6);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4331,6567,'СИНАПОВО',27),
 (4332,9125,'СИНДЕЛ',3),
 (4333,6825,'СИНДЕЛЦИ',10),
 (4334,8279,'СИНЕМОРЕЦ',2),
 (4335,9950,'СИНИ ВИР',28),
 (4336,4236,'СИНИ ВРЪХ',17),
 (4337,8534,'СИНИ РИД',2),
 (4338,6956,'СИНИГЕР',10),
 (4339,4442,'СИНИТОВО',14),
 (4340,6785,'СИНЧЕЦ',10),
 (4341,3139,'СИНЬО БЪРДО',7),
 (4342,8332,'СИНЬО КАМЕНЕ',2),
 (4343,7287,'СИНЯ ВОДА',18),
 (4344,6629,'СИПЕЙ',10),
 (4345,3254,'СИРАКОВО',7),
 (4346,9564,'СИРАКОВО',9),
 (4347,6359,'СИРАКОВО',27),
 (4348,2450,'СИРИЩНИК',15),
 (4349,8744,'СИТОВО',29),
 (4350,4104,'СИТОВО',17),
 (4351,7583,'СИТОВО',20),
 (4352,7667,'СКАЛА',20),
 (4353,8462,'СКАЛА',2),
 (4354,6923,'СКАЛАК',10),
 (4355,8575,'СКАЛАК',2),
 (4356,6846,'СКАЛИНА',10),
 (4357,8645,'СКАЛИЦА',29),
 (4358,6652,'СКАЛИЩЕ',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4359,6748,'СКАЛНА ГЛАВА',10),
 (4360,5386,'СКАЛСКО',8),
 (4361,5644,'СКАНДАЛОТО',12),
 (4362,2811,'СКЛАВЕ',1),
 (4363,6429,'СКОБЕЛЕВО',27),
 (4364,5508,'СКОБЕЛЕВО',12),
 (4365,6148,'СКОБЕЛЕВО',25),
 (4366,4227,'СКОБЕЛЕВО',17),
 (4367,8871,'СКОБЕЛЕВО',21),
 (4368,3946,'СКОМЛЯ',6),
 (4369,5350,'СКОРЦИТЕ',8),
 (4370,2143,'СКРАВЕНА',23),
 (4371,2964,'СКРЕБАТНО',1),
 (4372,2663,'СКРИНО',11),
 (4373,2599,'СКРИНЯНО',11),
 (4374,2897,'СКРЪТ',1),
 (4375,4134,'СКУТАРЕ',17),
 (4376,6720,'СКЪРБИНО',10),
 (4377,9366,'СЛАВЕЕВО',9),
 (4378,6576,'СЛАВЕЕВО',27),
 (4379,5391,'СЛАВЕЙКОВО',8),
 (4380,8738,'СЛАВЕЙКОВО',29),
 (4381,9247,'СЛАВЕЙКОВО',3),
 (4382,4747,'СЛАВЕЙНО',22),
 (4383,5858,'СЛАВОВИЦА',16),
 (4384,4496,'СЛАВОВИЦА',14),
 (4385,3451,'СЛАВОТИН',13);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4386,5522,'СЛАВЩИЦА',12),
 (4387,5565,'СЛАВЯНИ',12),
 (4388,6236,'СЛАВЯНИН',25),
 (4389,5840,'СЛАВЯНОВО',16),
 (4390,7860,'СЛАВЯНОВО',26),
 (4391,6473,'СЛАВЯНОВО',27),
 (4392,8460,'СЛАВЯНЦИ',2),
 (4393,9257,'СЛАДКА ВОДА',3),
 (4394,6960,'СЛАДКОДУМ',10),
 (4395,6534,'СЛАДУН',27),
 (4396,6064,'СЛАДЪК КЛАДЕНЕЦ',25),
 (4397,2369,'СЛАКОВЦИ',15),
 (4398,8663,'СЛАМИНО',29),
 (4399,3728,'СЛАНА БАРА',6),
 (4400,3769,'СЛАНОТРЪН',6),
 (4401,3535,'СЛАТИНА',13),
 (4402,4342,'СЛАТИНА',17),
 (4403,5564,'СЛАТИНА',12),
 (4404,7585,'СЛАТИНА',20),
 (4405,5768,'СЛАТИНА',12),
 (4406,2642,'СЛАТИНО',11),
 (4407,2449,'СЛАТИНО',15),
 (4408,2937,'СЛАЩЕН',1),
 (4409,9784,'СЛИВАК',28),
 (4410,6919,'СЛИВАРКА',10),
 (4411,8358,'СЛИВАРОВО',2),
 (4412,3668,'СЛИВАТА',13);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4413,5537,'СЛИВЕК',12),
 (4414,8800,'СЛИВЕН',21),
 (4415,8840,'СЛИВЕНСКИ МИН. БАНИ',21),
 (4416,9395,'СЛИВЕНЦИ',9),
 (4417,6176,'СЛИВИТО',25),
 (4418,4943,'СЛИВКА',22),
 (4419,2844,'СЛИВНИЦА',1),
 (4420,2200,'СЛИВНИЦА',23),
 (4421,7060,'СЛИВО ПОЛЕ',19),
 (4422,3664,'СЛИВОВИК',13),
 (4423,5157,'СЛИВОВИЦА',5),
 (4424,3915,'СЛИВОВНИК',6),
 (4425,4710,'СЛИВОВО',22),
 (4426,8331,'СЛИВОВО',2),
 (4427,5367,'СЛИВОВО',8),
 (4428,2484,'СЛИШОВЦИ',15),
 (4429,2533,'СЛОКОЩИЦА',11),
 (4430,5229,'СЛОМЕР',5),
 (4431,8240,'СЛЪНЧЕВ БРЯГ',2),
 (4432,9144,'СЛЪНЧЕВО',3),
 (4433,7963,'СЛЪНЧОВЕЦ',26),
 (4434,6850,'СЛЪНЧОГЛЕД',10),
 (4435,7577,'СМИЛЕЦ',20),
 (4436,4531,'СМИЛЕЦ',14),
 (4437,5333,'СМИЛОВЦИ',8),
 (4438,4770,'СМИЛЯН',22),
 (4439,9679,'СМИН',9);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4440,3663,'СМИРНЕНСКИ',13),
 (4441,7074,'СМИРНЕНСКИ',19),
 (4442,6467,'СМИРНЕНЦИ',27),
 (4443,2456,'СМИРОВ ДОЛ',15),
 (4444,2794,'СМОЛЕВО',1),
 (4445,2583,'СМОЛИЧАНО',11),
 (4446,8491,'СМОЛНИК',2),
 (4447,9383,'СМОЛНИЦА',9),
 (4448,2073,'СМОЛСКО',23),
 (4449,2255,'СМОЛЧА',23),
 (4450,4700,'СМОЛЯН',22),
 (4451,3450,'СМОЛЯНОВЦИ',13),
 (4452,5547,'СМОЧАН',12),
 (4453,2641,'СМОЧЕВО',11),
 (4454,9820,'СМЯДОВО',28),
 (4455,8568,'СНЕЖА',2),
 (4456,9244,'СНЕЖИНА',3),
 (4457,6741,'СНЕЖИНКА',10),
 (4458,9557,'СНОП',9),
 (4459,9533,'СНЯГОВО',9),
 (4460,8579,'СНЯГОВО',2),
 (4461,5283,'СОВАТА',5),
 (4462,2547,'СОВОЛЯНО',11),
 (4463,8130,'СОЗОПОЛ',2),
 (4464,7621,'СОКОЛ',20),
 (4465,8945,'СОКОЛ',21),
 (4466,3258,'СОКОЛАРЕ',7),
 (4467,8984,'СОКОЛАРЦИ',21);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4468,6595,'СОКОЛЕНЦИ',27),
 (4469,8554,'СОКОЛЕЦ',2),
 (4470,6812,'СОКОЛИНО',10),
 (4471,6694,'СОКОЛИТЕ',10),
 (4472,4367,'СОКОЛИЦА',17),
 (4473,9351,'СОКОЛНИК',9),
 (4474,9640,'СОКОЛОВО',9),
 (4475,5392,'СОКОЛОВО',8),
 (4476,8435,'СОКОЛОВО',2),
 (4477,5538,'СОКОЛОВО',12),
 (4478,4751,'СОКОЛОВЦИ',22),
 (4479,6648,'СОКОЛСКО',10),
 (4480,6688,'СОКОЛЯНЕ',10),
 (4481,5300,'СОЛАРИ',8),
 (4482,4711,'СОЛИЩА',22),
 (4483,6721,'СОЛИЩЕ',10),
 (4484,9122,'СОЛНИК',3),
 (4485,5959,'СОМОВИТ',16),
 (4486,2378,'СОПИЦА',15),
 (4487,2664,'СОПОВО',11),
 (4488,4330,'СОПОТ',17),
 (4489,5571,'СОПОТ',12),
 (4490,4974,'СОПОТОТ',22),
 (4491,8859,'СОТИРЯ',21),
 (4492,6850,'СОФИЙЦИ',10),
 (4493,1000,'СОФИЯ',23),
 (4494,3348,'СОФРОНИЕВО',7),
 (4495,5344,'СПАНЦИ',8),
 (4496,3546,'СПАНЧЕВЦИ',13);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4497,9561,'СПАСОВО',9),
 (4498,6249,'СПАСОВО',25),
 (4499,5340,'СПАСОВЦИ',8),
 (4500,2811,'СПАТОВО',1),
 (4501,6346,'СПАХИЕВО',27),
 (4502,6799,'СПОЛУКА',10),
 (4503,7541,'СРАЦИМИР',20),
 (4504,3847,'СРАЦИМИРОВО',6),
 (4505,4525,'СРЕБРИНОВО',14),
 (4506,7587,'СРЕБЪРНА',20),
 (4507,4998,'СРЕДЕЦ',22),
 (4508,6066,'СРЕДЕЦ',25),
 (4509,8300,'СРЕДЕЦ',2),
 (4510,9546,'СРЕДИНА',9),
 (4511,6738,'СРЕДИНКА',10),
 (4512,7949,'СРЕДИЩЕ',26),
 (4513,7560,'СРЕДИЩЕ',20),
 (4514,2062,'СРЕДИЩНА',23),
 (4515,9968,'СРЕДКОВЕЦ',28),
 (4516,2918,'СРЕДНА',1),
 (4517,8581,'СРЕДНА МАХАЛА',2),
 (4518,6717,'СРЕДНЕВО',10),
 (4519,5093,'СРЕДНИ КОЛИБИ',5),
 (4520,3137,'СРЕДНИ РЪТ',7),
 (4521,6241,'СРЕДНО ГРАДИЩЕ',25),
 (4522,9222,'СРЕДНО СЕЛО',3),
 (4523,5088,'СРЕДНО СЕЛО',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4524,6166,'СРЕДНОГОРОВО',25),
 (4525,4954,'СРЕДНОГОРЦИ',22),
 (4526,9798,'СРЕДНЯ',28),
 (4527,3959,'СРЕДОГРИВ',6),
 (4528,4798,'СРЕДОК',22),
 (4529,8845,'СРЕДОРЕК',21),
 (4530,2555,'СРЕДОРЕК',11),
 (4531,7433,'СРЕДОСЕЛЦИ',18),
 (4532,6693,'СРЕДСКА',10),
 (4533,6890,'СРЕДСКО',10),
 (4534,6565,'СРЕМ',27),
 (4535,6775,'СРЪНСКО',10),
 (4536,5863,'СТАВЕРЦИ',16),
 (4537,9673,'СТАЕВЦИ',9),
 (4538,5350,'СТАЙНОВЦИ',8),
 (4539,4931,'СТАЙЧИН ДОЛ',22),
 (4540,2489,'СТАЙЧОВЦИ',15),
 (4541,3963,'СТАКЕВЦИ',6),
 (4542,6433,'СТАЛЕВО',27),
 (4543,3657,'СТАЛИЙСКА МАХАЛА',13),
 (4544,4210,'СТАМБОЛИЙСКИ',17),
 (4545,6311,'СТАМБОЛИЙСКИ',27),
 (4546,2069,'СТАМБОЛОВО',23),
 (4547,5249,'СТАМБОЛОВО',5),
 (4548,7063,'СТАМБОЛОВО',19),
 (4549,6362,'СТАМБОЛОВО',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4550,9917,'СТАН',28),
 (4551,3641,'СТАНЕВО',13),
 (4552,7915,'СТАНЕЦ',26),
 (4553,9952,'СТАНОВЕЦ',28),
 (4554,5380,'СТАНЧА',8),
 (4555,5367,'СТАНЧОВ ХАН',8),
 (4556,2391,'СТАНЬОВЦИ',15),
 (4557,9872,'СТАНЯНЦИ',28),
 (4558,2254,'СТАНЯНЦИ',23),
 (4559,6792,'СТАР ЧИТАК',10),
 (4560,6000,'СТАРА ЗАГОРА',25),
 (4561,2845,'СТАРА КРЕСНА',1),
 (4562,8841,'СТАРА РЕКА',21),
 (4563,8675,'СТАРА РЕКА',29),
 (4564,7999,'СТАРА РЕЧКА',26),
 (4565,6880,'СТАРЕЙШИНО',10),
 (4566,6964,'СТАРИ ЧАЛ',10),
 (4567,5343,'СТАРИЛКОВЦИ',8),
 (4568,6572,'СТАРИНСКО',27),
 (4569,4165,'СТАРО ЖЕЛЕЗАРЕ',17),
 (4570,6741,'СТАРО МЯСТО',10),
 (4571,9110,'СТАРО ОРЯХОВО',3),
 (4572,7447,'СТАРО СЕЛИЩЕ',18),
 (4573,3142,'СТАРО СЕЛО',7),
 (4574,2412,'СТАРО СЕЛО',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4575,8876,'СТАРО СЕЛО',21),
 (4576,5671,'СТАРО СЕЛО',12),
 (4577,7637,'СТАРО СЕЛО',20),
 (4578,6877,'СТАРОВО',10),
 (4579,6062,'СТАРОЗАГОРСКИ БАНИ',25),
 (4580,3822,'СТАРОПАТИЦА',6),
 (4581,4175,'СТАРОСЕЛ',17),
 (4582,9226,'СТАРОСЕЛЕЦ',3),
 (4583,5865,'СТАРОСЕЛЦИ',16),
 (4584,4987,'СТАРЦЕВО',22),
 (4585,2861,'СТАРЧЕВО',1),
 (4586,7963,'СТАРЧИЩЕ',26),
 (4587,7960,'СТЕВРЕК',26),
 (4588,5920,'СТЕЖЕРОВО',16),
 (4589,2566,'СТЕНСКО',11),
 (4590,9293,'СТЕФАН КАРАДЖА',3),
 (4591,7633,'СТЕФАН КАРАДЖА',20),
 (4592,9371,'СТЕФАН КАРАДЖА',9),
 (4593,8725,'СТЕФАН КАРАДЖОВО',29),
 (4594,5192,'СТЕФАН СТАМБОЛОВО',5),
 (4595,5335,'СТЕФАНОВО',8),
 (4596,9360,'СТЕФАНОВО',9),
 (4597,5581,'СТЕФАНОВО',12),
 (4598,2414,'СТЕФАНОВО',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4599,4712,'СТИКЪЛ',22),
 (4600,2638,'СТОБ',11),
 (4601,4266,'СТОЕВО',17),
 (4602,5347,'СТОЕВЦИ',8),
 (4603,2800,'СТОЖА',1),
 (4604,9350,'СТОЖЕР',9),
 (4605,8940,'СТОИЛ ВОЙВОДА',21),
 (4606,8359,'СТОИЛОВО',2),
 (4607,4715,'СТОЙКИТЕ',22),
 (4608,6341,'СТОЙКОВО',27),
 (4609,5301,'СТОЙКОВЦИ',8),
 (4610,7953,'СТОЙНОВО',26),
 (4611,5625,'СТОЙНОВСКОТО',12),
 (4612,5081,'СТОЙЧЕВЦИ',5),
 (4613,5343,'СТОЙЧОВЦИ',8),
 (4614,5462,'СТОКИТЕ',8),
 (4615,4338,'СТОЛЕТОВО',17),
 (4616,6054,'СТОЛЕТОВО',25),
 (4617,2134,'СТОЛНИК',23),
 (4618,5452,'СТОЛЪТ',8),
 (4619,4822,'СТОМАНЕВО',22),
 (4620,5304,'СТОМАНЕЦИТЕ',8),
 (4621,6873,'СТОМАНЦИ',10),
 (4622,6243,'СТОЯН ЗАИМОВО',25),
 (4623,9928,'СТОЯН МИХАЙЛОВСКИ',28),
 (4624,6773,'СТОЯНОВО',10),
 (4625,3539,'СТОЯНОВО',13);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4626,5084,'СТОЯНОВЦИ',5),
 (4627,3134,'СТОЯНОВЦИ',7),
 (4628,2584,'СТРАДАЛОВО',11),
 (4629,4726,'СТРАЖА',22),
 (4630,7738,'СТРАЖА',26),
 (4631,5365,'СТРАЖАТА',8),
 (4632,6731,'СТРАЖЕВЦИ',10),
 (4633,6954,'СТРАЖЕЦ',10),
 (4634,7217,'СТРАЖЕЦ',18),
 (4635,9615,'СТРАЖИЦА',9),
 (4636,5150,'СТРАЖИЦА',5),
 (4637,6710,'СТРАЖНИЦА',10),
 (4638,8680,'СТРАЛДЖА',29),
 (4639,8758,'СТРАНДЖА',29),
 (4640,6929,'СТРАНДЖЕВО',10),
 (4641,6428,'СТРАНСКО',27),
 (4642,9142,'СТРАХИЛ',3),
 (4643,6660,'СТРАХИЛ ВОЙВОДА',10),
 (4644,9774,'СТРАХИЛИЦА',28),
 (4645,5190,'СТРАХИЛОВО',5),
 (4646,8222,'СТРАЦИН',2),
 (4647,9179,'СТРАШИМИРОВО',3),
 (4648,4988,'СТРАШИМИР-пром.с.',22),
 (4649,2482,'СТРЕЗИМИРОВЦИ',15),
 (4650,5133,'СТРЕЛЕЦ',5),
 (4651,6058,'СТРЕЛЕЦ',25);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4652,7562,'СТРЕЛКОВО',20),
 (4653,4152,'СТРЕЛЦИ',17),
 (4654,8995,'СТРЕЛЦИ',21),
 (4655,4530,'СТРЕЛЧА',14),
 (4656,6683,'СТРЕМОВО',10),
 (4657,6680,'СТРЕМЦИ',10),
 (4658,6899,'СТРИЖБА',10),
 (4659,4197,'СТРОЕВО',17),
 (4660,8732,'СТРОЙНО',29),
 (4661,7964,'СТРОЙНОВЦИ',26),
 (4662,5626,'СТРУГЪТ',12),
 (4663,3919,'СТРУИНДОЛ',6),
 (4664,9804,'СТРУИНО',28),
 (4665,2806,'СТРУМА',1),
 (4666,2895,'СТРУМЕШНИЦА',1),
 (4667,2825,'СТРУМЯНИ',1),
 (4668,3132,'СТРУПЕЦ',7),
 (4669,8856,'СТРУПЕЦ',21),
 (4670,8555,'СТРУЯ',2),
 (4671,5365,'СТРЪМЦИ',8),
 (4672,4142,'СТРЯМА',17),
 (4673,3490,'СТУБЕЛ',13),
 (4674,2488,'СТУДЕН ИЗВОР',15),
 (4675,6958,'СТУДЕН КЛАДЕНЕЦ',10),
 (4676,4932,'СТУДЕНА',22),
 (4677,2344,'СТУДЕНА',15),
 (4678,6538,'СТУДЕНА',27),
 (4679,7279,'СТУДЕНЕЦ',18);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4680,4878,'СТУДЕНЕЦ',22),
 (4681,9768,'СТУДЕНИЦА',28),
 (4682,3480,'СТУДЕНО БУЧЕ',13),
 (4683,2135,'СТЪРГЕЛ',23),
 (4684,7124,'СТЪРМЕН',19),
 (4685,4957,'СТЪРНИЦА',22),
 (4686,9170,'СУВОРОВО',3),
 (4687,2820,'СУГАРЕВО',1),
 (4688,2062,'СУЕВЦИ',23),
 (4689,6062,'СУЛИЦА',25),
 (4690,5094,'СУЛТАНИ',5),
 (4691,3491,'СУМЕР',13),
 (4692,8470,'СУНГУРЛАРЕ',2),
 (4693,6352,'СУСАМ',27),
 (4694,9881,'СУХА РЕКА',28),
 (4695,5045,'СУХА РЕКА',5),
 (4696,5988,'СУХАЧЕ',16),
 (4697,5240,'СУХИНДОЛ',5),
 (4698,6794,'СУХОВО',10),
 (4699,7618,'СУХОДОЛ',20),
 (4700,8328,'СУХОДОЛ',2),
 (4701,4209,'СУХОЗЕМ',17),
 (4702,5380,'СУХОЛОЕВЦИ',8),
 (4703,2736,'СУХОСТРЕЛ',1),
 (4704,7324,'СУШЕВО',18),
 (4705,9868,'СУШИНА',28),
 (4706,2759,'СУШИЦА',1),
 (4707,5177,'СУШИЦА',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4708,2558,'СУШИЦА',11),
 (4709,5099,'СЪБКОВЦИ',5),
 (4710,5340,'СЪБОТКОВЦИ',8),
 (4711,8941,'СЪБРАНО',21),
 (4712,8522,'СЪДИЕВО',2),
 (4713,8923,'СЪДИЕВО',21),
 (4714,8915,'СЪДИЙСКО ПОЛЕ',21),
 (4715,6234,'СЪЕДИНЕНИЕ',25),
 (4716,8430,'СЪЕДИНЕНИЕ',2),
 (4717,4190,'СЪЕДИНЕНИЕ',17),
 (4718,7779,'СЪЕДИНЕНИЕ',26),
 (4719,6924,'СЪРНАК',10),
 (4720,6232,'СЪРНЕВЕЦ',25),
 (4721,8479,'СЪРНЕВО',2),
 (4722,6268,'СЪРНЕВО',25),
 (4723,4146,'СЪРНЕГОР',17),
 (4724,5035,'СЪРНЕНЦИ',5),
 (4725,9482,'СЪРНЕЦ',9),
 (4726,9562,'СЪРНИНО',9),
 (4727,4799,'СЪРНИНО',22),
 (4728,4633,'СЪРНИЦА',14),
 (4729,6361,'СЪРНИЦА',27),
 (4730,7578,'СЪРПОВО',20),
 (4731,8896,'СЪРЦЕВО',21),
 (4732,7647,'СЯНОВО',20),
 (4733,5380,'СЯРОВЦИ',8),
 (4734,6800,'СЯРЦИ',10),
 (4735,2215,'ТАБАН',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4736,7085,'ТАБАЧКА',19),
 (4737,5461,'ТАБАШКА',8),
 (4738,2538,'ТАВАЛИЧЕВО',11),
 (4739,7983,'ТАЙМИЩЕ',26),
 (4740,8658,'ТАМАРИНО',29),
 (4741,6344,'ТАТАРЕВО',27),
 (4742,4282,'ТАТАРЕВО',17),
 (4743,5934,'ТАТАРИ',16),
 (4744,6670,'ТАТКОВО',10),
 (4745,6835,'ТАТУЛ',10),
 (4746,7755,'ТВЪРДИНЦИ',18),
 (4747,8155,'ТВЪРДИЦА',2),
 (4748,8890,'ТВЪРДИЦА',21),
 (4749,9675,'ТВЪРДИЦА',9),
 (4750,6370,'ТЕКЕТО',27),
 (4751,9420,'ТЕЛЕРИГ',9),
 (4752,5990,'ТЕЛИШ',16),
 (4753,6850,'ТЕЛЧАРКА',10),
 (4754,6759,'ТЕМЕНУГА',10),
 (4755,5165,'ТЕМЕНУГА',5),
 (4756,8672,'ТЕНЕВО',29),
 (4757,5554,'ТЕПАВА',12),
 (4758,2935,'ТЕПЛЕН',1),
 (4759,9450,'ТЕРВЕЛ',9),
 (4760,9769,'ТЕРВЕЛ',28),
 (4761,5035,'ТЕРЗИИТЕ',5),
 (4762,8465,'ТЕРЗИЙСКО',2),
 (4763,5665,'ТЕРЗИЙСКО',12);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4764,7322,'ТЕРТЕР',18),
 (4765,5700,'ТЕТЕВЕН',12),
 (4766,7340,'ТЕТОВО',18),
 (4767,4810,'ТЕШЕЛ',22),
 (4768,2927,'ТЕШОВО',1),
 (4769,4729,'ТИКАЛЕ',22),
 (4770,9785,'ТИМАРЕВО',28),
 (4771,6955,'ТИНТЯВА',10),
 (4772,3164,'ТИПЧЕНИЦА',7),
 (4773,5070,'ТИТЕВЦИ',5),
 (4774,7997,'ТИХОВЕЦ',26),
 (4775,6898,'ТИХОМИР',10),
 (4776,6279,'ТИХОМИРОВО',25),
 (4777,8980,'ТИЧА',21),
 (4778,2591,'ТИШАНОВО',11),
 (4779,3055,'ТИШЕВИЦА',7),
 (4780,3787,'ТИЯНОВЦИ',6),
 (4781,3243,'ТЛАЧЕНЕ',7),
 (4782,9964,'ТОДОР ИКОНОМОВО',28),
 (4783,5350,'ТОДОРЕЦИТЕ',8),
 (4784,5781,'ТОДОРИЧЕНЕ',12),
 (4785,7425,'ТОДОРОВО',18),
 (4786,5887,'ТОДОРОВО',16),
 (4787,5045,'ТОДОРОВЦИ',5),
 (4788,5301,'ТОДОРОВЦИ',8),
 (4789,5343,'ТОДОРЧЕТА',8),
 (4790,5094,'ТОДЮВЦИ',5),
 (4791,6965,'ТОКАЧКА',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4792,3854,'ТОЛОВИЦА',6),
 (4793,5080,'ТОМБЕТО',5),
 (4794,2285,'ТОМПСЪН',23),
 (4795,5365,'ТОМЧЕВЦИ',8),
 (4796,2875,'ТОНСКО ДАБЕ',1),
 (4797,5736,'ТОПИЛИЩА',12),
 (4798,9654,'ТОПОЛА',9),
 (4799,9140,'ТОПОЛИ',3),
 (4800,4454,'ТОПОЛИ ДОЛ',14),
 (4801,8549,'ТОПОЛИЦА',2),
 (4802,6968,'ТОПОЛКА',10),
 (4803,2619,'ТОПОЛНИЦА',11),
 (4804,2858,'ТОПОЛНИЦА',1),
 (4805,6560,'ТОПОЛОВГРАД',27),
 (4806,3828,'ТОПОЛОВЕЦ',6),
 (4807,3936,'ТОПОЛОВЕЦ',6),
 (4808,4260,'ТОПОЛОВО',17),
 (4809,6452,'ТОПОЛОВО',27),
 (4810,6728,'ТОПОЛЧАНЕ',10),
 (4811,8880,'ТОПОЛЧАНЕ',21),
 (4812,6277,'ТОПОЛЯНЕ',25),
 (4813,5098,'ТОПУЗИ',5),
 (4814,8986,'ТОПУЗОВО',21),
 (4815,7261,'ТОПЧИИ',19),
 (4816,8582,'ТОПЧИЙСКО',2),
 (4817,5335,'ТОРБАЛЪЖИТЕ',8),
 (4818,5790,'ТОРОС',12);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4819,5899,'ТОТЛЕБЕН',16),
 (4820,7316,'ТОЧИЛАРИ',18),
 (4821,3825,'ТОШЕВЦИ',6),
 (4822,4933,'ТРАВЕ',22),
 (4823,9694,'ТРАВНИК',9),
 (4824,3645,'ТРАЙКОВО',13),
 (4825,6369,'ТРАКИЕЦ',27),
 (4826,8348,'ТРАКИЙЦИ',2),
 (4827,6074,'ТРАКИЯ',25),
 (4828,5349,'ТРАПЕСКОВЦИ',8),
 (4829,7281,'ТРАПИЩЕ',18),
 (4830,8889,'ТРАПОКЛОВО',21),
 (4831,4737,'ТРЕБИЩЕ',22),
 (4832,2557,'ТРЕКЛЯНО',11),
 (4833,9764,'ТРЕМ',28),
 (4834,7994,'ТРЕСКАВЕЦ',26),
 (4835,3072,'ТРИ КЛАДЕНЦИ',7),
 (4836,4263,'ТРИ МОГИЛИ',17),
 (4837,6682,'ТРИ МОГИЛИ',10),
 (4838,4222,'ТРИВОДИЦИ',17),
 (4839,9645,'ТРИГОРЦИ',9),
 (4840,4825,'ТРИГРАД',22),
 (4841,4141,'ТРИЛИСТНИК',17),
 (4842,3435,'ТРИФОНОВО',13),
 (4843,9864,'ТРОИЦА',28),
 (4844,2733,'ТРОСКОВО',1),
 (4845,6491,'ТРОЯН',27);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4846,5600,'ТРОЯН',12),
 (4847,8108,'ТРОЯНОВО',2),
 (4848,6270,'ТРОЯНОВО',25),
 (4849,4199,'ТРУД',17),
 (4850,2160,'ТРУДОВЕЦ',23),
 (4851,7283,'ТРЪБАЧ',18),
 (4852,2460,'ТРЪН',15),
 (4853,8550,'ТРЪНАК',2),
 (4854,5307,'ТРЪНИТО',8),
 (4855,9925,'ТРЪНИЦА',28),
 (4856,8719,'ТРЪНКОВО',29),
 (4857,6266,'ТРЪНКОВО',25),
 (4858,5097,'ТРЪНКОВЦИ',5),
 (4859,5925,'ТРЪНЧОВИЦА',16),
 (4860,5857,'ТРЪСТЕНИК',16),
 (4861,7092,'ТРЪСТЕНИК',19),
 (4862,7835,'ТРЪСТИКА',26),
 (4863,9134,'ТРЪСТИКОВО',3),
 (4864,8128,'ТРЪСТИКОВО',2),
 (4865,5350,'ТРЯВНА',8),
 (4866,2253,'ТУДЕН',23),
 (4867,9633,'ТУЗЛАТА',9),
 (4868,6170,'ТУЛОВО',25),
 (4869,5464,'ТУМБАЛОВО',8),
 (4870,5083,'ТУМБЕВЦИ',5),
 (4871,6157,'ТУРИЯ',25),
 (4872,5388,'ТУРКИНЧА',8),
 (4873,2468,'ТУРОКОВЦИ',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4874,4753,'ТУРЯН',22),
 (4875,7600,'ТУТРАКАН',20),
 (4876,9275,'ТУТРАКАНЦИ',3),
 (4877,2939,'ТУХОВИЩА',1),
 (4878,5892,'ТУЧЕНИЦА',16),
 (4879,9884,'ТУШОВИЦА',28),
 (4880,6160,'ТЪЖА',25),
 (4881,9953,'ТЪКАЧ',28),
 (4882,4983,'ТЪНКА БАРА',22),
 (4883,5084,'ТЪНКИ РЪТ',5),
 (4884,8237,'ТЪНКОВО',2),
 (4885,6391,'ТЪНКОВО',27),
 (4886,4914,'ТЪНКОТО',22),
 (4887,7919,'ТЪПЧИЛЕЩОВО',26),
 (4888,7700,'ТЪРГОВИЩЕ',26),
 (4889,3953,'ТЪРГОВИЩЕ',6),
 (4890,5070,'ТЪРКАШЕНИ',5),
 (4891,3252,'ТЪРНАВА',7),
 (4892,8699,'ТЪРНАВА',29),
 (4893,3249,'ТЪРНАК',7),
 (4894,5282,'ТЪРНЕНЕ',16),
 (4895,6158,'ТЪРНИЧЕНЕ',25),
 (4896,2532,'ТЪРНОВЛАГ',11),
 (4897,7774,'ТЪРНОВЦА',26),
 (4898,6843,'ТЪРНОВЦИ',10),
 (4899,7926,'ТЪРНОВЦИ',20),
 (4900,6763,'ТЪРНОСЛИВКА',10),
 (4901,3741,'ТЪРНЯНЕ',6);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4902,2586,'ТЪРСИНО',11),
 (4903,5423,'ТЪРХОВО',8),
 (4904,4730,'ТЪРЪН',22),
 (4905,9684,'ТЮЛЕНОВО',9),
 (4906,4751,'ТЮРКМЕН',17),
 (4907,6850,'ТЮТЮНЧЕ',10),
 (4908,9429,'ТЯНЕВО',9),
 (4909,6492,'ТЯНЕВО',27),
 (4910,7936,'УГЛЕДНО',26),
 (4911,2418,'УГЛЯРЦИ',15),
 (4912,5465,'УГОРЕЛЕЦ',8),
 (4913,5082,'УГОРЛЯКОВЦИ',5),
 (4914,5580,'УГЪРЧИН',12),
 (4915,9554,'УЗОВО',9),
 (4916,6350,'УЗУНДЖОВО',27),
 (4917,5343,'УЗУНИТЕ',8),
 (4918,4237,'УЗУНОВО',17),
 (4919,5541,'УМАРЕВЦИ',12),
 (4920,5365,'УРВАТА',8),
 (4921,3064,'УРОВЕНЕ',7),
 (4922,4936,'УРУЧЕВЦИ',22),
 (4923,2675,'УСОЙКА',11),
 (4924,4228,'УСТИНА',17),
 (4925,6563,'УСТРЕМ',27),
 (4926,6853,'УСТРЕН',10),
 (4927,4769,'УХЛОВИЦА',22),
 (4928,5035,'УШЕВЦИ',5),
 (4929,2557,'УШИ',11),
 (4930,7244,'УШИНЦИ',18);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4931,4992,'ФАБРИКА - ПРОМ. С.',22),
 (4932,8272,'ФАЗАНОВО',2),
 (4933,8340,'ФАКИЯ',2),
 (4934,4797,'ФАТОВО',22),
 (4935,9394,'ФЕЛДФЕБЕЛ ДЯНКОВО',9),
 (4936,8982,'ФИЛАРЕТОВО',21),
 (4937,2775,'ФИЛИПОВО',1),
 (4938,6564,'ФИЛИПОВО',27),
 (4939,2472,'ФИЛИПОВЦИ',15),
 (4940,3778,'ФЛОРЕНТИН',6),
 (4941,4571,'ФОТИНОВО',14),
 (4942,6873,'ФОТИНОВО',10),
 (4943,2085,'ФРАНТУНСКИТЕ КОШАРИ',23),
 (4944,2682,'ФРОЛОШ',11),
 (4945,3075,'ФУРЕН',7),
 (4946,2952,'ФЪРГОВО',1),
 (4947,5301,'ФЪРГОВЦИ',8),
 (4948,5365,'ФЪРЕВЦИ',8),
 (4949,5367,'ФЪРТУНИ',8),
 (4950,6141,'ХАДЖИ ДИМИТРОВО',25),
 (4951,9657,'ХАДЖИ ДИМИТЪР',9),
 (4952,5287,'ХАДЖИДИМИТРОВО',5),
 (4953,8635,'ХАДЖИДИМИТРОВО',29),
 (4954,2933,'ХАДЖИДИМОВО',1),
 (4955,4441,'ХАДЖИЕВО',14);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4956,8492,'ХАДЖИИТЕ',2),
 (4957,6875,'ХАДЖИЙСКО',10),
 (4958,3357,'ХАЙРЕДИН',7),
 (4959,7997,'ХАЛВАДЖИЙСКО',26),
 (4960,3837,'ХАЛОВСКИ КОЛИБИ',6),
 (4961,6055,'ХАН АСПАРУХОВО',25),
 (4962,9863,'ХАН КРУМ',28),
 (4963,8668,'ХАНОВО',29),
 (4964,5340,'ХАРАЧЕРИТЕ',8),
 (4965,5093,'ХАРВАЛОВЦИ',5),
 (4966,6540,'ХАРМАНЛИ',27),
 (4967,6300,'ХАСКОВО',27),
 (4968,4746,'ХАСОВИЦА',22),
 (4969,4890,'ХВОЙНА',22),
 (4970,2942,'ХВОСТЯНЕ',1),
 (4971,2072,'ХВЪРЧИЛ',23),
 (4972,2211,'ХЕРАКОВО',23),
 (4973,5451,'ХИРЕВО',8),
 (4974,6914,'ХИСАР',10),
 (4975,4180,'ХИСАРЯ',17),
 (4976,9494,'ХИТОВО',9),
 (4977,5579,'ХЛЕВЕНЕ',12),
 (4978,6568,'ХЛЯБОВО',27),
 (4979,6745,'ХОДЖОВЦИ',10),
 (4980,7054,'ХОТАНЦА',19),
 (4981,5058,'ХОТНИЦА',5),
 (4982,2821,'ХОТОВО',1);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (4983,4111,'ХРАБРИНО',17),
 (4984,9618,'ХРАБРОВО',9),
 (4985,9242,'ХРАБРОВО',3),
 (4986,2224,'ХРАБЪРСКО',23),
 (4987,2824,'ХРАСНА',1),
 (4988,6929,'ХРАСТОВО',10),
 (4989,6072,'ХРИСТИЯНОВО',25),
 (4990,4339,'ХРИСТО ДАНОВО',17),
 (4991,4231,'ХРИСТО МИЛЕВО',17),
 (4992,5070,'ХРИСТОВЦИ',5),
 (4993,5365,'ХРИСТОВЦИ',8),
 (4994,6050,'ХРИЩЕНИ',25),
 (4995,6782,'ХРОМИЦА',10),
 (4996,3135,'ХУБАВЕНЕ',7),
 (4997,7457,'ХУМА',18),
 (4998,6571,'ХУХЛА',27),
 (4999,5082,'ХЪНЕВЦИ',5),
 (5000,3329,'ХЪРЛЕЦ',7),
 (5001,9937,'ХЪРСОВО',28),
 (5002,7451,'ХЪРСОВО',18),
 (5003,2819,'ХЪРСОВО',1),
 (5004,3152,'ЦАКОНИЦА',7),
 (5005,4218,'ЦАЛАПИЦА',17),
 (5006,9957,'ЦАНИ ГИНЧЕВО',28),
 (5007,2834,'ЦАПАРЕВО',1),
 (5008,7536,'ЦАР АСЕН',20),
 (5009,4422,'ЦАР АСЕН',14);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5010,7849,'ЦАР АСЕН',26),
 (5011,4126,'ЦАР КАЛОЯН',17),
 (5012,7280,'ЦАР КАЛОЯН',18),
 (5013,3827,'ЦАР ПЕТРОВО',6),
 (5014,7640,'ЦАР САМУИЛ',20),
 (5015,3745,'ЦАР СИМЕОНОВО',6),
 (5016,3853,'ЦАР ШИШМАНОВО',6),
 (5017,4204,'ЦАРАЦОВО',17),
 (5018,9747,'ЦАРЕВ БРОД',28),
 (5019,7627,'ЦАРЕВ ДОЛ',20),
 (5020,5380,'ЦАРЕВА ЛИВАДА',8),
 (5021,6363,'ЦАРЕВА ПОЛЯНА',27),
 (5022,9367,'ЦАРЕВЕЦ',9),
 (5023,6622,'ЦАРЕВЕЦ',10),
 (5024,3141,'ЦАРЕВЕЦ',7),
 (5025,5282,'ЦАРЕВЕЦ',5),
 (5026,8260,'ЦАРЕВО',2),
 (5027,9129,'ЦАРЕВЦИ',3),
 (5028,7932,'ЦАРЕВЦИ',26),
 (5029,4192,'ЦАРИМИР',17),
 (5030,6893,'ЦАРИНО',10),
 (5031,2236,'ЦАРИЧИНА',23),
 (5032,9614,'ЦАРИЧИНО',9),
 (5033,5174,'ЦАРСКИ ИЗВОР',5),
 (5034,2220,'ЦАЦАРОВЦИ',23),
 (5035,4992,'ЦАЦАРОВЦИ',22);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5036,5094,'ЦВЕКЛЮВЦИ',5),
 (5037,4630,'ЦВЕТИНО',14),
 (5038,3542,'ЦВЕТКОВА БАРА',13),
 (5039,7763,'ЦВЕТНИЦА',26),
 (5040,5340,'ЦВЯТКОВЦИ',8),
 (5041,6850,'ЦВЯТОВО',10),
 (5042,2479,'ЦЕГРИЛОВЦИ',15),
 (5043,6223,'ЦЕЛИНА',25),
 (5044,8916,'ЦЕНИНО',21),
 (5045,7575,'ЦЕНОВИЧ',20),
 (5046,7139,'ЦЕНОВО',19),
 (5047,6222,'ЦЕНОВО',25),
 (5048,5035,'ЦЕПЕРАНИТЕ',5),
 (5049,4189,'ЦЕРЕТЕЛЕВО',17),
 (5050,2286,'ЦЕРЕЦЕЛ',23),
 (5051,8472,'ЦЕРКОВСКИ',2),
 (5052,5047,'ЦЕРОВА КОРИЯ',5),
 (5053,7083,'ЦЕРОВЕЦ',18),
 (5054,2567,'ЦЕРОВИЦА',11),
 (5055,7922,'ЦЕРОВИЩЕ',26),
 (5056,2722,'ЦЕРОВО',1),
 (5057,4465,'ЦЕРОВО',14),
 (5058,2287,'ЦЕРОВО',23),
 (5059,2666,'ЦИКЛОВО',11),
 (5060,4939,'ЦИРКА',22),
 (5061,9261,'ЦОНЕВО',3),
 (5062,2567,'ЦРЕШНОВО',11),
 (5063,2205,'ЦРЪКЛЕВЦИ',23);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5064,4837,'ЦРЪНЧА',22),
 (5065,4419,'ЦРЪНЧА',14),
 (5066,2580,'ЦЪРВАРИЦА',11),
 (5067,2576,'ЦЪРВЕНА ЯБЪЛКА',11),
 (5068,2567,'ЦЪРВЕНДОЛ',11),
 (5069,2542,'ЦЪРВЕНЯНО',11),
 (5070,2624,'ЦЪРВИЩЕ',11),
 (5071,9631,'ЦЪРКВА',9),
 (5072,6844,'ЦЪРКВИЦА',10),
 (5073,9939,'ЦЪРКВИЦА',28),
 (5074,4829,'ЧАВДАР',22),
 (5075,2084,'ЧАВДАР',23),
 (5076,5084,'ЧАВДАРЦИ',5),
 (5077,5559,'ЧАВДАРЦИ',12),
 (5078,5345,'ЧАВЕИ',8),
 (5079,6890,'ЧАВКА',10),
 (5080,6820,'ЧАЙКА',10),
 (5081,9277,'ЧАЙКА',3),
 (5082,4476,'ЧАЙРА',14),
 (5083,6870,'ЧАКАЛАРОВО',10),
 (5084,5099,'ЧАКАЛИ',5),
 (5085,5365,'ЧАКАЛИТЕ',8),
 (5086,6850,'ЧАКАЛЦИ',10),
 (5087,6947,'ЧАЛ',10),
 (5088,4836,'ЧАЛА',22),
 (5089,4123,'ЧАЛЪКОВИ',17),
 (5090,4651,'ЧАМКОВА',14),
 (5091,4716,'ЧАМЛА',22),
 (5092,8628,'ЧАРГАН',29);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5093,8692,'ЧАРДА',29),
 (5094,5309,'ЧАРКОВО',8),
 (5095,6744,'ЧЕГАНЦИ',10),
 (5096,2220,'ЧЕКАНЕЦ',23),
 (5097,2577,'ЧЕКАНЕЦ',11),
 (5098,7961,'ЧЕКАНЦИ',26),
 (5099,2122,'ЧЕКАНЧЕВО',23),
 (5100,8678,'ЧЕЛНИК',29),
 (5101,3093,'ЧЕЛОПЕК',7),
 (5102,2087,'ЧЕЛОПЕЧ',23),
 (5103,9664,'ЧЕЛОПЕЧЕНЕ',9),
 (5104,3465,'ЧЕЛЮСТНИЦА',13),
 (5105,3477,'ЧЕМИШ',13),
 (5106,4850,'ЧЕПЕЛАРЕ',22),
 (5107,2436,'ЧЕПИНО',15),
 (5108,1554,'ЧЕПИНЦИ',23),
 (5109,4958,'ЧЕПИНЦИ',22),
 (5110,4786,'ЧЕПЛЕТЕН',22),
 (5111,2212,'ЧЕПЪРЛИНЦИ',23),
 (5112,4252,'ЧЕРВЕН',17),
 (5113,7084,'ЧЕРВЕН',19),
 (5114,2629,'ЧЕРВЕН БРЕГ',11),
 (5115,5980,'ЧЕРВЕН БРЯГ',16),
 (5116,5293,'ЧЕРВЕНА',5),
 (5117,7051,'ЧЕРВЕНА ВОДА',19),
 (5118,5311,'ЧЕРВЕНА ЛОКВА',8),
 (5119,2408,'ЧЕРВЕНА МОГИЛА',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5120,8896,'ЧЕРВЕНАКОВО',21),
 (5121,5070,'ЧЕРВЕНКОВЦИ',5),
 (5122,9298,'ЧЕРВЕНЦИ',3),
 (5123,6139,'ЧЕРГАНОВО',25),
 (5124,9799,'ЧЕРЕНЧА',28),
 (5125,6462,'ЧЕРЕПОВО',27),
 (5126,8577,'ЧЕРЕША',2),
 (5127,6672,'ЧЕРЕШИЦА',10),
 (5128,4771,'ЧЕРЕШКИТЕ',22),
 (5129,2824,'ЧЕРЕШНИЦА',1),
 (5130,3524,'ЧЕРЕШОВИЦА',13),
 (5131,2787,'ЧЕРЕШОВО',1),
 (5132,7339,'ЧЕРЕШОВО',18),
 (5133,4772,'ЧЕРЕШОВО',22),
 (5134,4773,'ЧЕРЕШОВСКА РЕКА',22),
 (5135,3533,'ЧЕРКАСКИ',13),
 (5136,5951,'ЧЕРКОВИЦА',16),
 (5137,2072,'ЧЕРКОВИЩЕ',23),
 (5138,7656,'ЧЕРКОВНА',20),
 (5139,9232,'ЧЕРКОВНА',3),
 (5140,7252,'ЧЕРКОВНА',18),
 (5141,7781,'ЧЕРКОВНА',26),
 (5142,8478,'ЧЕРКОВО',2),
 (5143,9773,'ЧЕРНА',28),
 (5144,9417,'ЧЕРНА',9),
 (5145,7966,'ЧЕРНА ВОДА',26),
 (5146,6258,'ЧЕРНА ГОРА',25);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5147,2340,'ЧЕРНА ГОРА',15),
 (5148,2789,'ЧЕРНА МЕСТА',1),
 (5149,8527,'ЧЕРНА МОГИЛА',2),
 (5150,6471,'ЧЕРНА МОГИЛА',27),
 (5151,6692,'ЧЕРНА НИВА',10),
 (5152,6626,'ЧЕРНА СКАЛА',10),
 (5153,6585,'ЧЕРНА ЧЕРКВА',27),
 (5154,9174,'ЧЕРНЕВО',3),
 (5155,5646,'ЧЕРНЕВОТО',12),
 (5156,5349,'ЧЕРНЕВЦИ',8),
 (5157,7973,'ЧЕРНИ БРЯГ',26),
 (5158,5725,'ЧЕРНИ ВИТ',12),
 (5159,3649,'ЧЕРНИ ВРЪХ',13),
 (5160,8122,'ЧЕРНИ ВРЪХ',2),
 (5161,9827,'ЧЕРНИ ВРЪХ',28),
 (5162,5084,'ЧЕРНИ ДЯЛ',5),
 (5163,5620,'ЧЕРНИ ОСЪМ',12),
 (5164,6598,'ЧЕРНИ РИД',27),
 (5165,6778,'ЧЕРНИГОВО',10),
 (5166,7651,'ЧЕРНИК',20),
 (5167,8468,'ЧЕРНИЦА',2),
 (5168,2741,'ЧЕРНИЧЕ',1),
 (5169,6954,'ЧЕРНИЧЕВО',10),
 (5170,4181,'ЧЕРНИЧЕВО',17),
 (5171,6581,'ЧЕРНИЧИНО',27),
 (5172,3922,'ЧЕРНО ПОЛЕ',6);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5173,5365,'ЧЕРНОВРЪХ',8),
 (5174,9778,'ЧЕРНОГЛАВЦИ',28),
 (5175,7614,'ЧЕРНОГОР',20),
 (5176,6411,'ЧЕРНОГОРОВО',27),
 (5177,4456,'ЧЕРНОГОРОВО',14),
 (5178,8545,'ЧЕРНОГРАД',2),
 (5179,6524,'ЧЕРНОДЪБ',27),
 (5180,8739,'ЧЕРНОЗЕМ',29),
 (5181,4168,'ЧЕРНОЗЕМЕН',17),
 (5182,7921,'ЧЕРНОКАПЦИ',26),
 (5183,7693,'ЧЕРНОЛИК',20),
 (5184,8142,'ЧЕРНОМОРЕЦ',2),
 (5185,9678,'ЧЕРНОМОРЦИ',9),
 (5186,9259,'ЧЕРНООК',3),
 (5187,6946,'ЧЕРНООКИ',10),
 (5188,9873,'ЧЕРНООКОВО',28),
 (5189,9532,'ЧЕРНООКОВО',9),
 (5190,6701,'ЧЕРНООЧЕНЕ',10),
 (5191,2067,'ЧЕРНЬОВО',23),
 (5192,6670,'ЧЕРНЬОВЦИ',10),
 (5193,9469,'ЧЕСТИМЕНСКО',9),
 (5194,2598,'ЧЕТИРЦИ',11),
 (5195,4241,'ЧЕТРОКА',17),
 (5196,4159,'ЧЕХЛАРЕ',17),
 (5197,2556,'ЧЕШЛЯНЦИ',11),
 (5198,5156,'ЧЕШМА',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5199,4121,'ЧЕШНЕГИРОВО',17),
 (5200,2236,'ЧИБАОВЦИ',23),
 (5201,6625,'ЧИЛИК',10),
 (5202,7162,'ЧИЛНОВ',19),
 (5203,8858,'ЧИНТУЛОВО',21),
 (5204,3460,'ЧИПРОВЦИ',13),
 (5205,3050,'ЧИРЕН',7),
 (5206,6200,'ЧИРПАН',25),
 (5207,5088,'ЧИСТОВО',5),
 (5208,5300,'ЧИТАКОВЦИ',8),
 (5209,3912,'ЧИФЛИК',6),
 (5210,6677,'ЧИФЛИК',10),
 (5211,5661,'ЧИФЛИК',12),
 (5212,6869,'ЧИЧЕВО',10),
 (5213,3819,'ЧИЧИЛ',6),
 (5214,4161,'ЧОБА',17),
 (5215,6836,'ЧОБАНКА',10),
 (5216,4760,'ЧОКМАНОВО',22),
 (5217,8887,'ЧОКОБА',21),
 (5218,4636,'ЧОЛАКОВА',14),
 (5219,6800,'ЧОМАКОВО',10),
 (5220,5989,'ЧОМАКОВЦИ',16),
 (5221,6890,'ЧОРБАДЖИЙСКО',10),
 (5222,2215,'ЧОРУЛ',23),
 (5223,8461,'ЧУБРА',2),
 (5224,6786,'ЧУБРИКА',10),
 (5225,2562,'ЧУДИНЦИ',11),
 (5226,7284,'ЧУДОМИР',18),
 (5227,2346,'ЧУЙПЕТЛЬОВО',15);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5228,8529,'ЧУКАРКА',2),
 (5229,6560,'ЧУКАРОВО',27),
 (5230,5088,'ЧУКАТА',5),
 (5231,4245,'ЧУКАТА',17),
 (5232,5304,'ЧУКИЛИТЕ',8),
 (5233,2209,'ЧУКОВЕЗЕР',23),
 (5234,7537,'ЧУКОВЕЦ',20),
 (5235,2425,'ЧУКОВЕЦ',15),
 (5236,5370,'ЧУКОВО',8),
 (5237,6818,'ЧУКОВО',10),
 (5238,6592,'ЧУКУРИТЕ',27),
 (5239,3950,'ЧУПРЕНЕ',6),
 (5240,2126,'ЧУРЕК',23),
 (5241,4226,'ЧУРЕН',17),
 (5242,2885,'ЧУРИЛОВО',1),
 (5243,2891,'ЧУРИЧЕНИ',1),
 (5244,4915,'ЧУРКА',22),
 (5245,4823,'ЧУРУКОВО',22),
 (5246,6572,'ЧУЧУЛИГА',27),
 (5247,2865,'ЧУЧУЛИГОВО',1),
 (5248,4796,'ЧУЧУР',22),
 (5249,9680,'ШАБЛА',9),
 (5250,6169,'ШАНОВО',25),
 (5251,5300,'ШАРАНИ',8),
 (5252,4916,'ШАРЕНСКА',22),
 (5253,8753,'ШАРКОВО',29),
 (5254,2684,'ШАТРОВО',11),
 (5255,6144,'ШЕЙНОВО',25),
 (5256,5027,'ШЕМШЕВО',5);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5257,5034,'ШЕРЕМЕТЯ',5),
 (5258,8897,'ШЕШКИНГРАД',21),
 (5259,8559,'ШИВАРОВО',2),
 (5260,8895,'ШИВАЧЕВО',21),
 (5261,5094,'ШИЛИВЕРИ',5),
 (5262,5087,'ШИЛКОВЦИ',5),
 (5263,3836,'ШИПИКОВА МАХАЛА',6),
 (5264,6150,'ШИПКА',25),
 (5265,2493,'ШИПКОВИЦА',15),
 (5266,5663,'ШИПКОВО',12),
 (5267,6865,'ШИПОК',10),
 (5268,3744,'ШИПОТ',6),
 (5269,2015,'ШИПОЧАНЕ',23),
 (5270,2552,'ШИПОЧАНО',11),
 (5271,5344,'ШИПЧЕНИТЕ',8),
 (5272,4710,'ШИРОКА ЛЪКА',22),
 (5273,6365,'ШИРОКА ПОЛЯНА',27),
 (5274,2013,'ШИРОКИ ДОЛ',23),
 (5275,6650,'ШИРОКО ПОЛЕ',10),
 (5276,7159,'ШИРОКОВО',19),
 (5277,3834,'ШИШЕНЦИ',6),
 (5278,7971,'ШИШКОВИЦА',26),
 (5279,2553,'ШИШКОВЦИ',11),
 (5280,6458,'ШИШМАНОВО',27),
 (5281,4133,'ШИШМАНЦИ',17),
 (5282,5962,'ШИЯКОВО',16),
 (5283,9112,'ШКОРПИЛОВЦИ',3);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5284,5053,'ШОДЕКОВЦИ',5),
 (5285,5459,'ШОПИТЕ',8),
 (5286,6883,'ШОПЦИ',10),
 (5287,5097,'ШУБЕЦИ',5),
 (5288,2252,'ШУМА',23),
 (5289,5468,'ШУМАТА',8),
 (5290,9700,'ШУМЕН',28),
 (5291,7639,'ШУМЕНЦИ',20),
 (5292,6888,'ШУМНАТИЦА',10),
 (5293,5380,'ШУШНЯ',8),
 (5294,6842,'ЩЕРНА',10),
 (5295,9283,'ЩИПСКО',3),
 (5296,6528,'ЩИТ',27),
 (5297,7078,'ЩРЪКЛЕВО',19),
 (5298,4461,'ЩЪРКОВО',14),
 (5299,5791,'ЪГЛЕН',12),
 (5300,4241,'ЮГОВО',17),
 (5301,7061,'ЮДЕЛНИК',19),
 (5302,6168,'ЮЛИЕВО',25),
 (5303,9138,'ЮНАК',3),
 (5304,6800,'ЮНАЦИ',10),
 (5305,4420,'ЮНАЦИТЕ',14),
 (5306,4629,'ЮНДОЛА',14),
 (5307,9109,'ЮНЕЦ',3),
 (5308,7338,'ЮПЕР',18),
 (5309,2796,'ЮРУКОВО',1),
 (5310,2298,'ЯБЛАНИЦА',23),
 (5311,5750,'ЯБЛАНИЦА',12),
 (5312,8989,'ЯБЛАНОВО',21),
 (5313,6787,'ЯБЪЛКОВЕЦ',10);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5314,6440,'ЯБЪЛКОВО',27),
 (5315,2544,'ЯБЪЛКОВО',11),
 (5316,5350,'ЯБЪЛКОВЦИ',8),
 (5317,8542,'ЯБЪЛЧЕВО',2),
 (5318,6715,'ЯБЪЛЧЕНИ',10),
 (5319,5350,'ЯВОР',8),
 (5320,5334,'ЯВОРЕЦ',8),
 (5321,6179,'ЯВОРЕЦ',25),
 (5322,2896,'ЯВОРНИЦА',1),
 (5323,6696,'ЯВОРОВО',10),
 (5324,6240,'ЯВОРОВО',25),
 (5325,4258,'ЯВРОВО',17),
 (5326,6865,'ЯГНЕВО',10),
 (5327,9231,'ЯГНИЛО',3),
 (5328,6167,'ЯГОДА',25),
 (5329,4835,'ЯГОДИНА',22),
 (5330,3537,'ЯГОДОВО',13),
 (5331,4113,'ЯГОДОВО',17),
 (5332,6229,'ЯЗДАЧ',25),
 (5333,7991,'ЯЗОВЕЦ',26),
 (5334,7443,'ЯКИМ ГРУЕВО',18),
 (5335,3640,'ЯКИМОВО',13),
 (5336,6870,'ЯКОВИЦА',10),
 (5337,2875,'ЯКОВО',1),
 (5338,5081,'ЯКОВЦИ',5),
 (5339,2790,'ЯКОРУДА',1),
 (5340,2220,'ЯЛБОТИНА',23),
 (5341,5056,'ЯЛОВО',5),
 (5342,8600,'ЯМБОЛ',29);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5343,6854,'ЯМИНО',10),
 (5344,2183,'ЯМНА',23),
 (5345,1805,'ЯНА',23),
 (5346,6865,'ЯНИНО',10),
 (5347,9823,'ЯНКОВО',28),
 (5348,5345,'ЯНКОВЦИ',8),
 (5349,2816,'ЯНОВО',1),
 (5350,5135,'ЯНТРА',5),
 (5351,5374,'ЯНТРА',8),
 (5352,3949,'ЯНЬОВЕЦ',6),
 (5353,2355,'ЯРДЖИЛОВЦИ',15),
 (5354,7691,'ЯРЕБИЦА',20),
 (5355,6732,'ЯРЕБИЦА',10),
 (5356,9158,'ЯРЕБИЧНА',3),
 (5357,7998,'ЯРЕБИЧНО',26),
 (5358,2023,'ЯРЕБКОВИЦА',23),
 (5359,3799,'ЯРЛОВИЦА',6),
 (5360,2029,'ЯРЛОВО',23),
 (5361,2481,'ЯРЛОВЦИ',15),
 (5362,2376,'ЯРОСЛАВЦИ',15),
 (5363,3775,'ЯСЕН',6),
 (5364,5850,'ЯСЕН',16),
 (5365,5335,'ЯСЕНИТЕ',8),
 (5366,9777,'ЯСЕНКОВО',28),
 (5367,7250,'ЯСЕНОВЕЦ',18),
 (5368,6147,'ЯСЕНОВО',25),
 (5369,8569,'ЯСЕНОВО',2),
 (5370,8147,'ЯСНА ПОЛЯНА',2),
 (5371,4139,'ЯСНО ПОЛЕ',17);
INSERT INTO `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) VALUES 
 (5372,7975,'ЯСТРЕБ',10),
 (5373,7975,'ЯСТРЕБИНО',26),
 (5374,7664,'ЯСТРЕБНА',20),
 (5375,6056,'ЯСТРЕБОВО',25),
 (5376,7073,'ЯСТРЕБОВО',19),
 (5377,2622,'ЯХИНОВО',11),
 (5378,0,'',0);
/*!40000 ALTER TABLE `n_nm` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_obekt`
--

DROP TABLE IF EXISTS `n_obekt`;
CREATE TABLE `n_obekt` (
  `id_n_obekt` int(11) NOT NULL auto_increment,
  `Id_cust` int(11) default NULL,
  `name_n_obekt` varchar(45) default NULL,
  `address_n_obekt` varchar(25) default NULL,
  `code_n_obekt` varchar(10) NOT NULL,
  `id_ls_n_person` int(11) unsigned NOT NULL default '0',
  `tel_n_obekt` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id_n_obekt`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_obekt`
--

/*!40000 ALTER TABLE `n_obekt` DISABLE KEYS */;
INSERT INTO `n_obekt` (`id_n_obekt`,`Id_cust`,`name_n_obekt`,`address_n_obekt`,`code_n_obekt`,`id_ls_n_person`,`tel_n_obekt`) VALUES 
 (0,0,'0','0','0',0,''),
 (1,1,'123124','13123','132',1,'2589874'),
 (2,2,'258965','25478','1258',2,'25698');
/*!40000 ALTER TABLE `n_obekt` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_oblast`
--

DROP TABLE IF EXISTS `n_oblast`;
CREATE TABLE `n_oblast` (
  `id_n_oblast` int(11) NOT NULL auto_increment,
  `name_n_oblast` varchar(20) default NULL,
  `id_n_country` tinyint(4) default NULL,
  PRIMARY KEY  (`id_n_oblast`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_oblast`
--

/*!40000 ALTER TABLE `n_oblast` DISABLE KEYS */;
INSERT INTO `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) VALUES 
 (0,'12345',1),
 (2,'',0),
 (3,'',0),
 (4,' ',0),
 (5,'',0),
 (6,'',0),
 (7,'Пловдивска',1),
 (8,'Смолянста',1),
 (9,'',0),
 (10,'Хасковска',1);
/*!40000 ALTER TABLE `n_oblast` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_product_all_measure`
--

DROP TABLE IF EXISTS `n_product_all_measure`;
CREATE TABLE `n_product_all_measure` (
  `id_pam` int(11) NOT NULL auto_increment COMMENT 'id na miarkata',
  `name_pam` varchar(30) default NULL COMMENT 'ime na miarkata',
  `sname_pam` varchar(6) default NULL COMMENT 'sakrateno ime na miarkata',
  PRIMARY KEY  (`id_pam`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_product_all_measure`
--

/*!40000 ALTER TABLE `n_product_all_measure` DISABLE KEYS */;
INSERT INTO `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) VALUES 
 (1,'брой','бр.'),
 (2,'пакет','пакет'),
 (3,'кашон','кашон');
/*!40000 ALTER TABLE `n_product_all_measure` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_product_consigment`
--

DROP TABLE IF EXISTS `n_product_consigment`;
CREATE TABLE `n_product_consigment` (
  `id_pc` int(11) unsigned NOT NULL auto_increment COMMENT 'id na partida',
  `id_pm` int(11) default NULL COMMENT 'id na produkt',
  `parcel_pc` int(11) default NULL COMMENT 'nomer na partida',
  `dateofexpire_pc` date default NULL COMMENT 'data na godnost',
  `barcod_pc` int(11) unsigned zerofill NOT NULL default '00000000000' COMMENT 'barkod',
  `id_pp` int(11) unsigned NOT NULL default '0' COMMENT 'id na product_price',
  `id_ppp` int(11) unsigned NOT NULL default '0' COMMENT 'id product_promotion price',
  `id_pf` int(11) unsigned NOT NULL default '0' COMMENT 'id_ product fee',
  PRIMARY KEY  (`id_pc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_product_consigment`
--

/*!40000 ALTER TABLE `n_product_consigment` DISABLE KEYS */;
INSERT INTO `n_product_consigment` (`id_pc`,`id_pm`,`parcel_pc`,`dateofexpire_pc`,`barcod_pc`,`id_pp`,`id_ppp`,`id_pf`) VALUES 
 (1,36,125,'2000-01-01',00000000000,2,2,4),
 (2,50,8758,'2000-01-01',00000000000,2,2,4),
 (3,49,98700,'2006-03-31',00333022589,2,2,4),
 (57,49,6789,'2006-02-24',00000000333,3,2,4),
 (58,49,56,'2006-00-26',00000000333,2,2,3),
 (56,49,89,'2006-02-19',00000000333,3,2,4),
 (55,49,987,'2006-02-21',00000000333,3,2,3);
/*!40000 ALTER TABLE `n_product_consigment` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_product_description`
--

DROP TABLE IF EXISTS `n_product_description`;
CREATE TABLE `n_product_description` (
  `id_pd` int(11) NOT NULL auto_increment,
  `m1_pd` int(11) default NULL COMMENT 'id na nai-malka miarka',
  `v1_pd` int(11) default NULL COMMENT 'kolichestvo za nai-malkata miarka',
  `m2_pd` int(11) default NULL COMMENT 'id na vtora miarka',
  `v2_pd` int(11) default NULL COMMENT 'kolichestvo na vtora miarka',
  `m3_pd` int(11) default NULL COMMENT 'nai-goliama miarka',
  `v3_pd` int(11) default NULL COMMENT 'kolichestvo na nai-golima miarka',
  PRIMARY KEY  (`id_pd`),
  KEY `v1_pd` (`v1_pd`,`v2_pd`,`v3_pd`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_product_description`
--

/*!40000 ALTER TABLE `n_product_description` DISABLE KEYS */;
INSERT INTO `n_product_description` (`id_pd`,`m1_pd`,`v1_pd`,`m2_pd`,`v2_pd`,`m3_pd`,`v3_pd`) VALUES 
 (1,1,1,2,7,3,49),
 (2,1,1,2,7,3,55),
 (3,1,1,2,4,2,10),
 (4,1,1,2,4,2,10),
 (5,1,1,2,12,3,25),
 (6,1,1,2,1,3,10),
 (7,1,1,2,1,3,2),
 (8,1,1,2,1,3,10),
 (9,1,1,2,10,2,100);
/*!40000 ALTER TABLE `n_product_description` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_product_fee`
--

DROP TABLE IF EXISTS `n_product_fee`;
CREATE TABLE `n_product_fee` (
  `id_pf` int(11) NOT NULL auto_increment,
  `dds_pf` decimal(10,0) default NULL COMMENT 'DDS v protsenti',
  `excise_pf` decimal(10,0) default NULL COMMENT 'aktsiz %',
  `other_pf` decimal(10,0) default NULL COMMENT 'drugi',
  PRIMARY KEY  (`id_pf`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_product_fee`
--

/*!40000 ALTER TABLE `n_product_fee` DISABLE KEYS */;
INSERT INTO `n_product_fee` (`id_pf`,`dds_pf`,`excise_pf`,`other_pf`) VALUES 
 (1,'20','20','20'),
 (2,'34','34','34'),
 (3,'34','34','34'),
 (4,'20','20','20'),
 (5,'20','0','0'),
 (6,'20','0','0'),
 (7,'20','0','0'),
 (8,'20','0','0');
/*!40000 ALTER TABLE `n_product_fee` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_product_main`
--

DROP TABLE IF EXISTS `n_product_main`;
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

--
-- Dumping data for table `mida`.`n_product_main`
--

/*!40000 ALTER TABLE `n_product_main` DISABLE KEYS */;
INSERT INTO `n_product_main` (`id_pm`,`id_pd`,`id_n_group`,`id_ppp`,`id_pp`,`id_pf`,`name_pm`,`fname_pm`,`sname_pm`,`cname_pm`,`cod1_pm`,`cod2_pm`,`barcod_pm`,`max_pop_pm`,`expertsheet_pm`,`flag_pm`,`min_pm`,`code_pm`) VALUES 
 (1,1,1,1,1,1,'Компютър','Компютър','ПЦ','ПЦ','11','111',1234567890,1,'???',001,1,0),
 (2,2,4,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 2',123456789,2,' видео карта',001,22,0),
 (4,5,4,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','efsd',333,5,'sdf',001,3,0),
 (3,2,4,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 1',123456789,2,' видео карта',001,22,0),
 (5,5,4,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (6,5,4,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (7,5,4,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (8,5,4,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (9,5,4,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0);
INSERT INTO `n_product_main` (`id_pm`,`id_pd`,`id_n_group`,`id_ppp`,`id_pp`,`id_pf`,`name_pm`,`fname_pm`,`sname_pm`,`cname_pm`,`cod1_pm`,`cod2_pm`,`barcod_pm`,`max_pop_pm`,`expertsheet_pm`,`flag_pm`,`min_pm`,`code_pm`) VALUES 
 (10,5,4,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (11,6,6,3,4,5,'Personalen PC','PC','PC','PC','kod1','kod1',12364587,2,'??? ---',001,2,0),
 (12,2,5,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 2',123456789,2,' видео карта',001,22,0),
 (13,7,6,4,5,6,'pc','pc','pc','pc','111111','11111',111111,2,'12',001,2,0),
 (14,6,6,3,4,5,'Personalen PC','PC','PC','PC','kod1','kod1',12364587,2,'??? ---',001,2,0),
 (15,6,6,3,4,5,'Personalen PC','PC','PC','PC','kod1','kod1',12364587,2,'??? ---',001,2,0),
 (16,1,5,1,1,1,'Компютър','Компютър','ПЦ','ПЦ','11','111',1234567890,1,'???',001,1,0),
 (17,7,6,4,5,6,'pc','pc','pc','pc','111111','11111',111111,2,'12',001,2,0),
 (18,6,6,3,4,5,'Personalen PC','PC','PC','PC','kod1','kod1',12364587,2,'??? ---',001,2,0),
 (19,5,5,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0);
INSERT INTO `n_product_main` (`id_pm`,`id_pd`,`id_n_group`,`id_ppp`,`id_pp`,`id_pf`,`name_pm`,`fname_pm`,`sname_pm`,`cname_pm`,`cod1_pm`,`cod2_pm`,`barcod_pm`,`max_pop_pm`,`expertsheet_pm`,`flag_pm`,`min_pm`,`code_pm`) VALUES 
 (20,5,5,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (21,5,5,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (22,5,5,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (23,5,6,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (24,5,6,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (25,5,6,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (26,5,6,2,3,4,'sdf','Монитор 17\"','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,0),
 (27,8,6,5,6,7,'Принтер','Принтер','Принтер','Принтер','код1','код2',12222,2,'експертен лист',001,10,0),
 (28,8,6,5,6,7,'Принтер','Принтер','Принтер','Принтер','код1','код2',12222,2,'експертен лист',001,10,0);
INSERT INTO `n_product_main` (`id_pm`,`id_pd`,`id_n_group`,`id_ppp`,`id_pp`,`id_pf`,`name_pm`,`fname_pm`,`sname_pm`,`cname_pm`,`cod1_pm`,`cod2_pm`,`barcod_pm`,`max_pop_pm`,`expertsheet_pm`,`flag_pm`,`min_pm`,`code_pm`) VALUES 
 (29,8,6,5,6,7,'Принтер','Принтер','Принтер','Принтер','код1','код2',12222,2,'експертен лист',001,10,0),
 (30,9,6,6,7,8,'test1','Монитор SONY LCD 17\"','test1','test1','fgh','fgh',25,2,'gfh',001,1,0),
 (31,9,6,6,7,8,'test1','Монитор SONY LCD 17\"','test1','test1','fgh','fgh',25,2,'gfh',001,1,0),
 (32,2,6,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 1',123456789,2,' видео карта',001,22,0),
 (33,2,6,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 1',123456789,2,' видео карта',001,22,0),
 (34,2,6,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 1',123456789,2,' видео карта',001,22,0),
 (35,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',001,1,11251),
 (36,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',000,1,11);
INSERT INTO `n_product_main` (`id_pm`,`id_pd`,`id_n_group`,`id_ppp`,`id_pp`,`id_pf`,`name_pm`,`fname_pm`,`sname_pm`,`cname_pm`,`cod1_pm`,`cod2_pm`,`barcod_pm`,`max_pop_pm`,`expertsheet_pm`,`flag_pm`,`min_pm`,`code_pm`) VALUES 
 (37,8,6,5,6,7,'Принтер','Принтер','Принтер','Принтер','код1','код2',12222,2,'експертен лист',000,10,0),
 (38,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',000,3,2),
 (39,2,6,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 2',123456789,2,' видео карта',001,22,1),
 (40,8,6,5,6,7,'Принтер','Принтер','Принтер','Принтер','код1','код2',12222,2,'експертен лист',001,10,3),
 (41,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',001,1,4),
 (42,2,6,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 2',123456789,2,' видео карта',001,22,3),
 (43,8,6,5,6,7,'Принтер','Принтер','Принтер','Принтер','код1','код2',12222,2,'експертен лист',001,10,4),
 (44,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',001,1,2);
INSERT INTO `n_product_main` (`id_pm`,`id_pd`,`id_n_group`,`id_ppp`,`id_pp`,`id_pf`,`name_pm`,`fname_pm`,`sname_pm`,`cname_pm`,`cod1_pm`,`cod2_pm`,`barcod_pm`,`max_pop_pm`,`expertsheet_pm`,`flag_pm`,`min_pm`,`code_pm`) VALUES 
 (45,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',001,3,1),
 (46,9,6,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',000,1,2),
 (47,8,6,5,6,7,'Принтер','Принтер','Принтер','Принтер','код1','код2',12222,2,'експертен лист',000,10,4),
 (48,2,6,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 2',123456789,2,' видео карта',001,22,3),
 (49,5,6,2,3,4,'sdf','sdf','sdf','sdf','sdf','sdf',333,5,'sdf',000,3,99),
 (50,9,20,6,7,8,'test1','test1','test1','test1','fgh','fgh',25,2,'gfh',000,1,11251),
 (51,2,19,1,2,1,'VGA','Видео карта','VGA','VGA','код 1','код 2',123456789,2,' видео карта',000,22,3);
/*!40000 ALTER TABLE `n_product_main` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_product_price`
--

DROP TABLE IF EXISTS `n_product_price`;
CREATE TABLE `n_product_price` (
  `id_pp` int(11) NOT NULL auto_increment,
  `id_sl_curs` int(10) unsigned default NULL COMMENT 'kursa',
  `price1_pp` decimal(14,5) default NULL COMMENT 'tsenovca lista 1 bez dds',
  `price2_pp` decimal(14,5) default NULL COMMENT 'tsenova lista 2q bez dds',
  `price3_pp` decimal(14,5) default NULL COMMENT 'tsenova lista 3 bez DDS',
  `price0_pp` decimal(14,5) default NULL COMMENT 'dostavna bez dds',
  PRIMARY KEY  (`id_pp`),
  KEY `n_product_price_FKIndex1` (`id_sl_curs`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_product_price`
--

/*!40000 ALTER TABLE `n_product_price` DISABLE KEYS */;
INSERT INTO `n_product_price` (`id_pp`,`id_sl_curs`,`price1_pp`,`price2_pp`,`price3_pp`,`price0_pp`) VALUES 
 (1,1,'21.00000','15000.00000','15000.02000','14000.00000'),
 (2,1,'2.00000','2.50000','2.75000','1.75000'),
 (3,1,'100.00000','112.00000','120.00000','100.00000'),
 (4,1,'19.00000','17000.00000','1300.00000','1000.00000'),
 (5,1,'20.00000','15000.00000','15000.00000','1000.00000'),
 (6,1,'175.00000','180.00000','199.00000','150.00000'),
 (7,1,'110.15000','1120.02000','109.01000','100.00000'),
 (8,1,'100.00000','112.00000','120.00000','150.00000');
/*!40000 ALTER TABLE `n_product_price` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_product_promotion_price`
--

DROP TABLE IF EXISTS `n_product_promotion_price`;
CREATE TABLE `n_product_promotion_price` (
  `id_ppp` int(11) NOT NULL auto_increment,
  `price_ppp` decimal(10,0) default NULL,
  `datestart_ppp` date default NULL,
  `datestop_ppp` date default NULL,
  PRIMARY KEY  (`id_ppp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`n_product_promotion_price`
--

/*!40000 ALTER TABLE `n_product_promotion_price` DISABLE KEYS */;
INSERT INTO `n_product_promotion_price` (`id_ppp`,`price_ppp`,`datestart_ppp`,`datestop_ppp`) VALUES 
 (1,'0','0002-02-06','0002-02-06'),
 (2,'130','0003-03-06','0003-03-06'),
 (3,'1099','2007-12-12','2006-12-12'),
 (4,'1099','2005-12-12','2006-12-12'),
 (5,'155','2006-02-12','2006-03-12'),
 (6,'150','2006-12-12','2006-12-12');
/*!40000 ALTER TABLE `n_product_promotion_price` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_storage`
--

DROP TABLE IF EXISTS `n_storage`;
CREATE TABLE `n_storage` (
  `id_n_storage` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `code_n_storage` int(11) unsigned NOT NULL default '0',
  `name_n_storage` varchar(50) default NULL,
  `comments_n_storage` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_storage`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='skladove';

--
-- Dumping data for table `mida`.`n_storage`
--

/*!40000 ALTER TABLE `n_storage` DISABLE KEYS */;
INSERT INTO `n_storage` (`id_n_storage`,`id_n_group`,`code_n_storage`,`name_n_storage`,`comments_n_storage`) VALUES 
 (1,12,1,'Centralen',''),
 (2,13,7713,'Разносен 1',''),
 (3,25,6512,'Сладкарски','Фабричен склад');
/*!40000 ALTER TABLE `n_storage` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_type_bacc`
--

DROP TABLE IF EXISTS `n_type_bacc`;
CREATE TABLE `n_type_bacc` (
  `id_tbacc` int(11) NOT NULL auto_increment,
  `name_tbacc` varchar(30) default NULL,
  PRIMARY KEY  (`id_tbacc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='tipove bankovi smetki';

--
-- Dumping data for table `mida`.`n_type_bacc`
--

/*!40000 ALTER TABLE `n_type_bacc` DISABLE KEYS */;
INSERT INTO `n_type_bacc` (`id_tbacc`,`name_tbacc`) VALUES 
 (1,'Разплащателна сметка'),
 (2,'ДДС сметка');
/*!40000 ALTER TABLE `n_type_bacc` ENABLE KEYS */;


--
-- Table structure for table `mida`.`n_type_doc`
--

DROP TABLE IF EXISTS `n_type_doc`;
CREATE TABLE `n_type_doc` (
  `id_ntd` int(11) NOT NULL auto_increment,
  `code_ntd` int(11) unsigned NOT NULL default '0',
  `name_ntd` varchar(50) default NULL,
  `name_print_ntd` varchar(50) default NULL,
  PRIMARY KEY  (`id_ntd`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='tipove documenti';

--
-- Dumping data for table `mida`.`n_type_doc`
--

/*!40000 ALTER TABLE `n_type_doc` DISABLE KEYS */;
INSERT INTO `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) VALUES 
 (1,1,'Стокова разписка','Стокова Разписка'),
 (2,4,'Фактура','Данъчна фактура'),
 (3,10,'Проформа','Проформа Фактура'),
 (4,4000,'Опр. фактура','Опростена Фактура'),
 (5,3010,'Касова бележка','КБ'),
 (6,3829,'Трудов договор','ТД'),
 (14,1612,'Протокол','Прот'),
 (10,701,'Приходен ордер','Приходен Ордер'),
 (11,702,'Разходен Ордер','Разходен ордер'),
 (12,703,'Ордер за Аванс към подотчетно лице','Ордер Аванс МОЛ'),
 (13,704,'Ордер за междукасово прехвърляне','Ордер Каса към Каса'),
 (16,4062,'Ценова листа','Листа');
/*!40000 ALTER TABLE `n_type_doc` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_contragent_obekt`
--

DROP TABLE IF EXISTS `sl_contragent_obekt`;
CREATE TABLE `sl_contragent_obekt` (
  `id_sco` int(11) NOT NULL auto_increment,
  `id_contragent` int(11) default NULL,
  `id_object` int(11) default NULL,
  PRIMARY KEY  (`id_sco`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`sl_contragent_obekt`
--

/*!40000 ALTER TABLE `sl_contragent_obekt` DISABLE KEYS */;
/*!40000 ALTER TABLE `sl_contragent_obekt` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_contragent_product`
--

DROP TABLE IF EXISTS `sl_contragent_product`;
CREATE TABLE `sl_contragent_product` (
  `id_scp` int(11) NOT NULL auto_increment,
  `id_contragent` int(11) default NULL,
  `id_pm` int(11) default NULL,
  `flag_scp` int(3) unsigned zerofill NOT NULL default '000',
  PRIMARY KEY  (`id_scp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`sl_contragent_product`
--

/*!40000 ALTER TABLE `sl_contragent_product` DISABLE KEYS */;
INSERT INTO `sl_contragent_product` (`id_scp`,`id_contragent`,`id_pm`,`flag_scp`) VALUES 
 (1,1,19,000),
 (2,1,20,000),
 (3,1,21,000),
 (4,1,25,001),
 (5,1,26,001),
 (6,1,0,000),
 (7,1,27,001),
 (8,1,29,001),
 (9,1,0,000),
 (10,1,30,001),
 (11,1,32,001),
 (12,1,33,001),
 (13,1,34,000),
 (14,1,36,001),
 (15,1,38,001),
 (16,1,41,001),
 (17,1,44,001),
 (18,3243,45,001),
 (19,5,47,000),
 (20,69,48,001),
 (21,3243,49,000),
 (22,69,51,000);
/*!40000 ALTER TABLE `sl_contragent_product` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_curs`
--

DROP TABLE IF EXISTS `sl_curs`;
CREATE TABLE `sl_curs` (
  `id_sl_curs` int(11) NOT NULL auto_increment,
  `date_time_sl_curs` datetime NOT NULL,
  `id_n_money` int(11) unsigned zerofill NOT NULL default '00000000000',
  `value_sl_curs` decimal(10,5) default NULL,
  PRIMARY KEY  (`id_sl_curs`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='Cursove na money';

--
-- Dumping data for table `mida`.`sl_curs`
--

/*!40000 ALTER TABLE `sl_curs` DISABLE KEYS */;
INSERT INTO `sl_curs` (`id_sl_curs`,`date_time_sl_curs`,`id_n_money`,`value_sl_curs`) VALUES 
 (1,'2006-02-02 10:10:10',00000000001,'1.00000');
/*!40000 ALTER TABLE `sl_curs` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_doc_type_num`
--

DROP TABLE IF EXISTS `sl_doc_type_num`;
CREATE TABLE `sl_doc_type_num` (
  `id_sdtn` int(11) NOT NULL auto_increment,
  `id_ntd` int(11) unsigned default NULL,
  `area_number_sdtn` int(3) unsigned zerofill NOT NULL default '000',
  `name_sdtn` varchar(50) default NULL,
  PRIMARY KEY  (`id_sdtn`),
  UNIQUE KEY `ndt1` (`id_ntd`,`area_number_sdtn`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`sl_doc_type_num`
--

/*!40000 ALTER TABLE `sl_doc_type_num` DISABLE KEYS */;
INSERT INTO `sl_doc_type_num` (`id_sdtn`,`id_ntd`,`area_number_sdtn`,`name_sdtn`) VALUES 
 (1,1,001,'Фактури'),
 (2,1,002,'Проформа фактура'),
 (3,5,003,''),
 (4,5,004,''),
 (5,5,005,''),
 (6,1,007,'Стокова разписка кам  склад 1'),
 (7,6,007,''),
 (8,1,008,'Стокова разписка склад 2'),
 (9,14,000,'Консгнационен протокол'),
 (10,10,101,'Приходни ордери първа каса'),
 (11,10,102,'Проходни ордери втора каса'),
 (12,10,100,'Проходни ордери Централна каса'),
 (13,11,100,'Разходни ордери Централна каса'),
 (14,12,100,'Авансови отчети'),
 (15,13,100,'Касово движение');
/*!40000 ALTER TABLE `sl_doc_type_num` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_document_facade`
--

DROP TABLE IF EXISTS `sl_document_facade`;
CREATE TABLE `sl_document_facade` (
  `id_df` int(11) unsigned NOT NULL auto_increment,
  `in_contragent_df` int(11) unsigned default NULL COMMENT 'kontragent ot van kam sklad',
  `out_obekt_df` int(11) unsigned default NULL COMMENT 'obekt ot sklad navan',
  `in_obekt_df` int(11) unsigned default NULL COMMENT 'obekt -  sklad poluchatel',
  `number_df` int(10) unsigned zerofill default NULL COMMENT 'nomera na dokumentite',
  `type_df` int(10) unsigned default NULL COMMENT 'tip na dokumenta  1 / fakturi q2/ stokova',
  `condition_df` varchar(11) default NULL COMMENT 'sastoianie',
  `out_store_df` int(11) unsigned default NULL COMMENT 'tekush sklad',
  `total_df` decimal(12,6) default NULL COMMENT 'obsha suma sas DDS',
  `dds_df` decimal(12,6) default NULL COMMENT 'dds na fakturata',
  `user_df` int(11) unsigned default NULL COMMENT 'tekush user koito v momenta raboti',
  `user_last_df` int(11) unsigned default NULL COMMENT 'predishen user',
  `date_edition_df` date default NULL COMMENT 'data na izdavane',
  `time_edition_df` time default '00:00:00',
  `distributor_df` int(11) unsigned default NULL COMMENT 'dist',
  `delivere_df` int(10) unsigned default NULL COMMENT 'deliverer',
  `faktura_connection_df` int(10) unsigned default NULL COMMENT 'ot stokova faktura',
  `zaiavka_connection_df` int(10) unsigned default NULL,
  `description_pay_df` tinyint(3) unsigned default NULL COMMENT 'vid plashane',
  `paying_order_df` int(10) unsigned default NULL COMMENT 'nomer na order',
  `date_deliver_df` date default NULL COMMENT 'data na dostavka',
  `date_pay_df` date default NULL COMMENT 'data na plashane',
  `comments_df` varchar(250) default NULL COMMENT 'komentar',
  `flag_finish_df` tinyint(3) unsigned zerofill NOT NULL default '000' COMMENT 'dali e zavarshen dokumenta',
  `id_rep` int(11) unsigned default '0',
  `level_df` int(3) unsigned zerofill NOT NULL default '000' COMMENT 'nivo',
  `out_contragent_df` int(11) default NULL COMMENT 'kontragen poluchatel',
  `in_store_df` int(10) unsigned NOT NULL default '0' COMMENT 'sklad poluchatel',
  PRIMARY KEY  (`id_df`),
  UNIQUE KEY `Index_2` (`type_df`,`level_df`,`number_df`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`sl_document_facade`
--

/*!40000 ALTER TABLE `sl_document_facade` DISABLE KEYS */;
INSERT INTO `sl_document_facade` (`id_df`,`in_contragent_df`,`out_obekt_df`,`in_obekt_df`,`number_df`,`type_df`,`condition_df`,`out_store_df`,`total_df`,`dds_df`,`user_df`,`user_last_df`,`date_edition_df`,`time_edition_df`,`distributor_df`,`delivere_df`,`faktura_connection_df`,`zaiavka_connection_df`,`description_pay_df`,`paying_order_df`,`date_deliver_df`,`date_pay_df`,`comments_df`,`flag_finish_df`,`id_rep`,`level_df`,`out_contragent_df`,`in_store_df`) VALUES 
 (55,0,2,0,0000123125,1,'0',3,'133.800000','8.700000',2,2,'2006-04-01','00:00:00',9,1,63,0,0,0,'2006-04-01','2006-04-01','',001,0,001,2349,0),
 (54,0,1,0,0000123124,1,'0',2,'211.200000','18.200000',2,2,'2006-04-01','00:00:00',9,1,63,0,0,0,'2006-04-01','2006-04-01','',001,0,001,6,0),
 (53,0,2,0,0000123123,1,'0',2,'40.800000','4.400000',2,2,'2006-04-01','00:00:00',10,14,60,0,0,0,'2006-04-01','2006-04-01','',001,0,001,14,0),
 (62,0,0,0,0000123129,2,'0',1,'115.962000','14.962000',2,2,'2006-04-01','00:00:00',0,0,0,0,0,0,'2000-01-01','2006-04-01','',001,0,001,11,0),
 (57,0,1,0,0000123128,1,'0',3,'12.000000','2.000000',2,2,'2006-04-01','00:00:00',9,9,62,0,0,0,'2006-04-01','2006-04-01','',001,0,001,2864,0);
INSERT INTO `sl_document_facade` (`id_df`,`in_contragent_df`,`out_obekt_df`,`in_obekt_df`,`number_df`,`type_df`,`condition_df`,`out_store_df`,`total_df`,`dds_df`,`user_df`,`user_last_df`,`date_edition_df`,`time_edition_df`,`distributor_df`,`delivere_df`,`faktura_connection_df`,`zaiavka_connection_df`,`description_pay_df`,`paying_order_df`,`date_deliver_df`,`date_pay_df`,`comments_df`,`flag_finish_df`,`id_rep`,`level_df`,`out_contragent_df`,`in_store_df`) VALUES 
 (56,0,1,0,0020123126,1,'0',2,'9.600000','1.200000',2,2,'2006-04-01','00:00:00',9,9,0,0,0,0,'2006-04-01','2006-04-01','',001,0,001,8,0);
/*!40000 ALTER TABLE `sl_document_facade` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_document_lines`
--

DROP TABLE IF EXISTS `sl_document_lines`;
CREATE TABLE `sl_document_lines` (
  `id_dl` int(10) unsigned NOT NULL auto_increment,
  `id_pc` int(11) NOT NULL default '0' COMMENT 'id na partida',
  `id_n_storage` int(10) unsigned default NULL COMMENT 'id na sklada',
  `singly_price_dl` double default NULL COMMENT 'ed. tsena bez dds',
  `climb_down_dl` double default NULL COMMENT 'protsent otstapka',
  `numbers_piece_dl` int(10) unsigned NOT NULL default '0' COMMENT 'kolichestvo',
  `dds_dl` double default NULL COMMENT 'dds na liniata',
  `totalall_dl` double default NULL COMMENT 'total linia',
  `id_df` int(10) unsigned NOT NULL default '0' COMMENT 'id na dokument fasada',
  `price_list_dl` int(10) unsigned NOT NULL default '0' COMMENT 'tsenova lista',
  PRIMARY KEY  (`id_dl`),
  KEY `n_document_lines_FKIndex1` (`id_n_storage`),
  KEY `n_document_lines_FKIndex3` (`id_pc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`sl_document_lines`
--

/*!40000 ALTER TABLE `sl_document_lines` DISABLE KEYS */;
INSERT INTO `sl_document_lines` (`id_dl`,`id_pc`,`id_n_storage`,`singly_price_dl`,`climb_down_dl`,`numbers_piece_dl`,`dds_dl`,`totalall_dl`,`id_df`,`price_list_dl`) VALUES 
 (184,1,1,15000,2,1,20,15000,168,1),
 (183,1,1,15000,2,8,20,120000,168,1),
 (182,1,1,15000,2,10,20,150000,168,1),
 (180,1,1,15000,2,2,20,30000,164,1),
 (179,1,1,15000,2,8,20,120000,163,1),
 (178,1,1,15000,2,10,20,150000,162,1),
 (177,1,1,15000,2,2,20,30000,161,1),
 (174,1,1,15000,2,2,20,30000,158,1),
 (172,1,2,15000,2,2,20,30000,155,1),
 (171,1,1,15000,2,2,20,30000,154,1),
 (169,1,2,15000,2,12,20,180000,152,1),
 (168,1,2,15000.02,2,1,20,15000.02,143,0),
 (167,1,2,15000.02,2,2,20,30000.04,142,0),
 (166,1,2,15000.02,2,1,20,15000.02,141,0),
 (165,1,2,15000.02,2,1,20,9999.999999,140,0),
 (164,1,2,15000.02,2,2,20,30000.04,139,0),
 (159,1,2,15000.02,2,47,20,705000.94,134,0),
 (162,1,2,15000.02,2,3,20,45000.06,137,0),
 (161,1,2,15000.02,2,2,20,30000.04,136,0),
 (158,1,2,15000.02,2,6,20,90000.12,115,0),
 (160,1,2,15000.02,2,6,20,90000.12,135,0),
 (163,1,2,15000.02,2,2,20,30000.04,138,0);
INSERT INTO `sl_document_lines` (`id_dl`,`id_pc`,`id_n_storage`,`singly_price_dl`,`climb_down_dl`,`numbers_piece_dl`,`dds_dl`,`totalall_dl`,`id_df`,`price_list_dl`) VALUES 
 (140,1,2,2,2,55,20,110,104,1),
 (135,1,2,2,2,100,20,200,104,1),
 (141,1,2,2,2,45,20,90,104,1),
 (125,1,2,0,2,0,0,0,104,1),
 (124,1,2,0,2,0,0,0,104,1),
 (123,1,2,0,2,11,0,0,104,1),
 (134,1,2,2,2,0,0,0,104,1),
 (121,1,2,0,2,25,0,0,104,1),
 (120,3,2,2,5,0,0,0,104,1),
 (119,1,2,0,2,25,0,0,104,1),
 (118,1,2,0,2,10,0,0,104,1),
 (116,0,0,0,0,5,0,0,69,1),
 (115,0,0,0,0,0,0,0,69,1),
 (114,0,0,0,0,0,0,0,104,1),
 (113,0,0,0,0,0,0,0,70,1),
 (112,3,2,100,5,40,20,4000,72,1),
 (111,3,2,100,5,10,20,1000,71,1),
 (110,0,0,0,0,3,20,330.45,70,1),
 (109,3,2,100,5,10,20,1000,70,1),
 (108,3,2,100,5,4,20,400,69,1),
 (98,3,2,100,5,7,20,700,66,1),
 (107,3,2,100,5,6,20,600,66,1),
 (185,1,1,15000,2,1,20,15000,169,1),
 (186,1,1,15000,2,1,20,15000,170,1),
 (187,1,1,15000,2,11,20,165000,171,1),
 (188,1,1,2,2,1,20,2,188,1),
 (189,1,1,2,2,2,20,4,188,1),
 (190,1,1,2,2,2,20,4,188,1);
INSERT INTO `sl_document_lines` (`id_dl`,`id_pc`,`id_n_storage`,`singly_price_dl`,`climb_down_dl`,`numbers_piece_dl`,`dds_dl`,`totalall_dl`,`id_df`,`price_list_dl`) VALUES 
 (191,1,1,2,2,4,20,8,189,1),
 (192,1,1,2.5,2,3,20,7.5,189,2),
 (193,1,1,2.75,2,10,20,27.5,191,0),
 (194,1,1,1.75,2,12,20,21,194,0),
 (195,1,1,1.75,2,45,20,78.75,194,0),
 (196,1,1,1.75,2,4,20,7,195,0),
 (197,1,1,1.75,2,9,20,15.75,196,0),
 (198,1,1,1.75,2,10,20,17.5,196,0),
 (199,1,1,1.75,2,10,20,17.5,197,0),
 (200,1,1,1.75,2,20,20,35,197,0),
 (201,1,1,1.75,2,20,20,35,197,0),
 (202,1,1,1.75,2,3,20,5.25,197,0),
 (203,1,1,2,2,18,20,36,199,1),
 (204,1,1,2,2,5,20,10,199,1),
 (205,1,1,2,2,1,20,2,199,1),
 (206,1,1,2,2,2,20,4,199,1),
 (207,1,1,2,2,7,20,14,200,1),
 (208,1,1,2,2,10,20,20,200,1),
 (239,1,1,1.75,2,50000,20,87500,236,1),
 (236,3,1,2,5,0,20,0,233,1),
 (238,3,1,2,5,11,20,20.9,233,1),
 (237,1,1,2,2,20,20,39.368,233,1),
 (235,1,1,2,2,0,20,0,233,1),
 (233,3,1,2,5,25,20,46.25,231,1),
 (234,1,1,2,2,12,20,21.84,232,1),
 (240,1,1,2,2,50,20,100,286,1),
 (241,3,2,100,5,7,140,700,0,1);
INSERT INTO `sl_document_lines` (`id_dl`,`id_pc`,`id_n_storage`,`singly_price_dl`,`climb_down_dl`,`numbers_piece_dl`,`dds_dl`,`totalall_dl`,`id_df`,`price_list_dl`) VALUES 
 (242,3,2,100,5,6,120,600,0,1),
 (243,3,2,100,5,7,140,700,0,1),
 (244,3,2,100,5,6,120,600,0,1),
 (245,3,2,100,5,7,140,700,0,1),
 (246,3,2,100,5,6,120,600,0,1),
 (247,3,2,100,5,7,140,700,0,1),
 (248,3,2,100,5,6,120,600,0,1),
 (249,3,2,100,5,7,140,700,0,1),
 (250,3,2,100,5,6,120,600,0,1),
 (251,3,2,100,5,7,140,700,0,1),
 (252,3,2,100,5,6,120,600,0,1),
 (253,3,2,100,5,7,140,700,0,1),
 (254,3,2,100,5,6,120,600,0,1),
 (255,3,2,100,5,7,140,700,0,1),
 (256,3,2,100,5,6,120,600,0,1),
 (257,3,2,100,5,7,140,700,0,1),
 (258,3,2,100,5,6,120,600,0,1),
 (259,3,2,100,5,7,140,700,0,1),
 (260,3,2,100,5,6,120,600,0,1),
 (261,3,2,100,5,7,140,700,0,1),
 (262,3,2,100,5,6,120,600,0,1),
 (263,3,2,100,5,7,140,700,0,1),
 (264,3,2,100,5,6,120,600,0,1),
 (265,3,2,100,5,7,140,700,0,1),
 (266,3,2,100,5,6,120,600,0,1),
 (267,3,2,100,5,7,140,700,0,1),
 (268,3,2,100,5,6,120,600,0,1);
INSERT INTO `sl_document_lines` (`id_dl`,`id_pc`,`id_n_storage`,`singly_price_dl`,`climb_down_dl`,`numbers_piece_dl`,`dds_dl`,`totalall_dl`,`id_df`,`price_list_dl`) VALUES 
 (327,3,1,2.5,5,0,20,0,30,2),
 (326,1,1,2,2,13,20,26,30,1),
 (271,1,1,2,2,11,4.4,22,0,1),
 (272,3,1,2,5,1,0.4,2,0,1),
 (273,1,1,2,2,11,4.4,22,0,1),
 (274,3,1,2,5,1,0.4,2,0,1),
 (339,1,1,2,2,13,5.2,26,35,1),
 (276,1,1,2,2,11,4.4,22,0,1),
 (277,3,1,2,5,1,0.4,2,0,1),
 (278,1,1,2,2,11,4.4,22,0,1),
 (279,3,1,2,5,1,0.4,2,0,1),
 (280,1,1,2,2,11,4.4,22,0,1),
 (281,3,1,2,5,1,0.4,2,0,1),
 (282,1,1,2,2,11,4.4,22,0,1),
 (283,3,1,2,5,1,0.4,2,0,1),
 (284,1,1,2,2,11,4.4,22,0,1),
 (285,3,1,2,5,1,0.4,2,0,1),
 (286,1,1,2,2,11,4.4,22,0,1),
 (287,3,1,2,5,1,0.4,2,0,1),
 (288,1,1,2,2,11,4.4,22,0,1),
 (289,3,1,2,5,1,0.4,2,0,1),
 (290,1,1,2,2,11,4.4,22,0,1),
 (291,3,1,2,5,1,0.4,2,0,1),
 (292,1,1,2,2,11,4.4,22,0,1),
 (293,3,1,2,5,1,0.4,2,0,1),
 (294,1,1,2,2,11,4.4,22,0,1),
 (295,3,1,2,5,1,0.4,2,0,1),
 (296,1,1,2,2,11,4.4,22,0,1),
 (297,3,1,2,5,1,0.4,2,0,1),
 (298,1,1,2,2,11,4.4,22,0,1);
INSERT INTO `sl_document_lines` (`id_dl`,`id_pc`,`id_n_storage`,`singly_price_dl`,`climb_down_dl`,`numbers_piece_dl`,`dds_dl`,`totalall_dl`,`id_df`,`price_list_dl`) VALUES 
 (299,3,1,2,5,1,0.4,2,0,1),
 (300,1,1,2,2,11,4.4,22,0,1),
 (301,3,1,2,5,1,0.4,2,0,1),
 (302,1,1,2,2,11,4.4,22,0,1),
 (303,3,1,2,5,1,0.4,2,0,1),
 (304,1,1,2,2,11,4.4,22,0,1),
 (305,3,1,2,5,1,0.4,2,0,1),
 (306,1,1,2,2,11,4.4,22,0,1),
 (307,3,1,2,5,1,0.4,2,0,1),
 (308,1,1,2,2,11,4.4,22,0,1),
 (309,3,1,2,5,1,0.4,2,0,1),
 (310,1,1,2,2,11,4.4,22,0,1),
 (311,3,1,2,5,1,0.4,2,0,1),
 (312,1,1,2,2,11,4.4,22,0,1),
 (313,3,1,2,5,1,0.4,2,0,1),
 (314,1,1,2,2,11,4.4,22,0,1),
 (315,3,1,2,5,1,0.4,2,0,1),
 (316,1,1,2,2,11,4.4,22,0,1),
 (317,3,1,2,5,1,0.4,2,0,1),
 (318,1,1,2,2,11,4.4,22,0,1),
 (319,3,1,2,5,1,0.4,2,0,1),
 (320,1,1,2,2,11,4.4,22,26,1),
 (321,3,1,2,5,1,0.4,2,26,1),
 (322,1,1,2,2,11,4.4,22,28,1),
 (323,3,1,2,5,1,0.4,2,28,1),
 (328,3,1,2.5,5,0,0,0,31,2),
 (329,1,1,2,2,13,5.2,26,31,1),
 (332,3,1,2.5,5,0,0,0,33,2),
 (338,3,1,2.5,5,0,0,0,35,2),
 (340,3,1,2.5,5,0,0,0,36,2);
INSERT INTO `sl_document_lines` (`id_dl`,`id_pc`,`id_n_storage`,`singly_price_dl`,`climb_down_dl`,`numbers_piece_dl`,`dds_dl`,`totalall_dl`,`id_df`,`price_list_dl`) VALUES 
 (341,1,1,2,2,13,5.2,26,36,1),
 (342,3,1,2.5,5,0,0,0,37,2),
 (343,1,1,2,2,13,5.2,26,37,1),
 (344,3,1,2.5,5,0,0,0,37,2),
 (345,1,1,2,2,13,5.2,26,37,1),
 (346,3,1,2.5,5,0,0,0,37,2),
 (347,1,1,2,2,13,5.2,26,37,1),
 (348,3,1,2.5,5,0,0,0,38,2),
 (349,1,1,2,2,13,5.2,26,38,1),
 (350,3,1,2.5,5,0,0,0,38,2),
 (351,1,1,2,2,13,5.2,26,38,1),
 (352,3,1,2.5,5,0,0,0,38,2),
 (353,1,1,2,2,13,5.2,26,38,1),
 (354,3,1,2.5,5,0,0,0,39,2),
 (355,1,1,2,2,13,5.2,26,39,1),
 (356,3,1,2.5,5,0,0,0,40,2),
 (357,1,1,2,2,13,5.2,26,40,1),
 (369,1,1,2,2,13,5.2,26,44,1),
 (368,3,1,2.5,5,0,0,0,44,2),
 (365,1,1,2,2,13,5.2,26,42,1),
 (364,3,1,2.5,5,0,0,0,42,2),
 (377,1,1,2,2,13,5.2,26,46,1),
 (376,3,1,2.5,5,0,0,0,46,2),
 (375,1,1,2,2,13,5.2,26,45,1),
 (374,3,1,2.5,5,0,0,0,45,2),
 (378,3,1,2.5,5,0,0,0,47,2),
 (379,1,1,2,2,13,5.2,26,47,1),
 (416,3,3,2,5,1,20,2,56,1),
 (415,1,3,2.75,2,2,20,5.5,55,3);
INSERT INTO `sl_document_lines` (`id_dl`,`id_pc`,`id_n_storage`,`singly_price_dl`,`climb_down_dl`,`numbers_piece_dl`,`dds_dl`,`totalall_dl`,`id_df`,`price_list_dl`) VALUES 
 (414,1,3,2,2,4,20,8,55,1),
 (413,3,3,2.5,5,12,20,30,55,2),
 (412,1,2,2,2,3,20,6,54,1),
 (411,3,3,2.5,5,34,20,85,54,2),
 (409,1,2,2,2,6,20,12,53,1),
 (410,1,2,2,2,5,20,10,53,1),
 (426,3,3,2.5,5,34,17,85,59,2),
 (425,1,2,2,2,5,2,10,59,1),
 (424,1,1,2,0,9,3.6,18,59,1),
 (420,1,3,2,2,3,20,6,57,1),
 (419,1,2,2,2,1,20,2,57,1),
 (418,3,3,2,5,1,20,2,57,1),
 (417,1,2,2,2,2,20,4,56,1),
 (434,3,3,2.5,5,34,17,85,62,2),
 (433,1,1,2,0,8,3.2,16,62,1);
/*!40000 ALTER TABLE `sl_document_lines` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_exchange_rate`
--

DROP TABLE IF EXISTS `sl_exchange_rate`;
CREATE TABLE `sl_exchange_rate` (
  `id_sl_exchange_rate` int(10) unsigned NOT NULL auto_increment,
  `date_sl_exchange_rate` date default NULL,
  `id_n_money` int(11) default NULL,
  `value_sl_exchange_rate` decimal(10,5) default NULL,
  PRIMARY KEY  (`id_sl_exchange_rate`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='kursove na valutite';

--
-- Dumping data for table `mida`.`sl_exchange_rate`
--

/*!40000 ALTER TABLE `sl_exchange_rate` DISABLE KEYS */;
INSERT INTO `sl_exchange_rate` (`id_sl_exchange_rate`,`date_sl_exchange_rate`,`id_n_money`,`value_sl_exchange_rate`) VALUES 
 (2,'2006-04-05',2,'1.63000'),
 (3,'2006-04-05',3,'1.95000'),
 (1,'2000-04-05',1,'1.00000'),
 (5,'2006-04-06',2,'1.61000'),
 (6,'2006-04-06',3,'1.96000'),
 (7,'2006-05-01',2,'1.61200'),
 (8,'2006-05-01',3,'1.66600'),
 (9,'2006-04-27',2,'1.60000'),
 (10,'2006-04-27',3,'1.60000');
/*!40000 ALTER TABLE `sl_exchange_rate` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_m_operation`
--

DROP TABLE IF EXISTS `sl_m_operation`;
CREATE TABLE `sl_m_operation` (
  `id_sl_mop` int(11) unsigned NOT NULL auto_increment,
  `number_sl_mop` int(7) unsigned zerofill default NULL COMMENT 'nomer na dokumenta',
  `in_sl_mop` int(11) default NULL COMMENT 'id na obekta v koito vlizat parite',
  `in_type_sl_mop` int(11) default NULL COMMENT 'tipa na obekta v koito vlizat parite',
  `out_sl_mop` int(11) default NULL COMMENT 'id na obekta ot koito izlizat parite',
  `out_type_sl_mop` int(11) default NULL COMMENT 'tipa na obekta ot koito izlizat parite',
  `id_order_spec` int(11) default NULL COMMENT 'id na svarzani dokumenti',
  `id_order_spec_type` int(11) default NULL COMMENT 'tip na svarzani dokumenti',
  `id_order_doc` int(11) default NULL COMMENT 'vida na prihoden/razhoden',
  `date_is` date default NULL COMMENT 'data na operaciqta',
  `id_n_money` int(11) default NULL COMMENT 'id valuta na izdavane',
  `exchange_rate` double(11,4) default '1.0000' COMMENT 'obmenen kurs',
  `sum_sl_mop` double(11,4) default NULL COMMENT 'suma po dokumenta',
  `sum_os_val_sl_mop` double(11,4) default NULL COMMENT 'suma v osnovna valuta',
  `user_id` int(11) default NULL COMMENT 'id potrebitel izdal dokumenta',
  `id_sdtn` int(11) default NULL COMMENT 'id na kochana s dokumenti',
  `comment_sl_mop` varchar(250) default NULL,
  `levelx` int(11) default '1',
  PRIMARY KEY  (`id_sl_mop`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`sl_m_operation`
--

/*!40000 ALTER TABLE `sl_m_operation` DISABLE KEYS */;
INSERT INTO `sl_m_operation` (`id_sl_mop`,`number_sl_mop`,`in_sl_mop`,`in_type_sl_mop`,`out_sl_mop`,`out_type_sl_mop`,`id_order_spec`,`id_order_spec_type`,`id_order_doc`,`date_is`,`id_n_money`,`exchange_rate`,`sum_sl_mop`,`sum_os_val_sl_mop`,`user_id`,`id_sdtn`,`comment_sl_mop`,`levelx`) VALUES 
 (61,0000001,5,1,30,3,4752,1,3,'2006-04-11',1,1.0000,17652.4400,17652.4400,3,10,'',1),
 (62,0000004,1,1,1,4,0,1,1,'2006-04-01',1,1.0000,0.0000,0.0000,3,5,NULL,1),
 (28,0000001,1,1,25,3,-1,1,1,'2006-03-29',1,1.0000,250.0000,250.0000,3,5,'',1),
 (29,0000001,2,1,35,3,0,1,1,'2006-03-30',1,1.0000,218.0000,218.0000,3,5,NULL,1),
 (76,0000002,1,1,1938,3,-1,1,1,'2006-03-14',3,1.6660,14365.9200,23933.6227,3,10,'',1),
 (32,0000001,25,3,1,1,0,1,1,'2006-03-30',1,1.0000,0.0000,0.0000,3,100,NULL,1),
 (33,0000002,35,3,1,1,0,1,1,'2006-03-30',1,1.0000,0.0000,0.0000,3,100,NULL,1),
 (34,0000001,1,3,3,1,-1,1,3,'2006-03-30',1,1.0000,254.0000,254.0000,3,13,'',1),
 (95,0000021,1,1,0,4,0,1,1,'2006-04-02',1,1.0000,0.0000,0.0000,3,5,NULL,1),
 (93,0000019,1,1,1,4,0,1,1,'2006-04-02',1,1.0000,115.0000,115.0000,3,5,NULL,1);
INSERT INTO `sl_m_operation` (`id_sl_mop`,`number_sl_mop`,`in_sl_mop`,`in_type_sl_mop`,`out_sl_mop`,`out_type_sl_mop`,`id_order_spec`,`id_order_spec_type`,`id_order_doc`,`date_is`,`id_n_money`,`exchange_rate`,`sum_sl_mop`,`sum_os_val_sl_mop`,`user_id`,`id_sdtn`,`comment_sl_mop`,`levelx`) VALUES 
 (94,0000020,1,1,2,4,0,1,1,'2006-04-02',1,1.0000,0.0000,0.0000,3,5,NULL,1),
 (77,0000013,1,1,2,4,0,1,1,'2006-04-01',1,1.0000,0.0000,0.0000,3,5,NULL,1),
 (68,0000005,1,1,1,4,0,1,1,'2006-04-01',1,1.0000,0.0000,0.0000,3,5,NULL,1),
 (69,0000006,1,1,1,4,0,1,1,'2006-04-01',1,1.0000,0.0000,0.0000,3,5,NULL,1),
 (79,0000015,1,1,1,4,0,1,1,'2006-04-01',1,1.0000,0.0000,0.0000,3,5,NULL,1),
 (80,0000016,1,1,12,4,-1,1,1,'2006-04-01',2,1.6660,25.3500,42.2331,3,5,'',1),
 (83,0000003,1,1,13,3,-1,1,1,'2006-04-02',1,125.0000,125.0000,15625.0000,3,10,'',1),
 (73,0000010,1,1,1,4,0,1,1,'2006-04-01',1,1.0000,0.0000,0.0000,3,5,NULL,1),
 (78,0000014,1,1,1,4,0,1,1,'2006-04-01',1,1.0000,0.0000,0.0000,3,5,NULL,1),
 (92,0000018,1,1,1,4,-1,1,1,'2006-04-02',2,1.0000,125.6500,209.3329,3,5,'',1),
 (85,0000002,11,3,1,1,-1,1,3,'2006-04-02',2,1.0000,257.6500,257.6500,3,13,'\n',1);
INSERT INTO `sl_m_operation` (`id_sl_mop`,`number_sl_mop`,`in_sl_mop`,`in_type_sl_mop`,`out_sl_mop`,`out_type_sl_mop`,`id_order_spec`,`id_order_spec_type`,`id_order_doc`,`date_is`,`id_n_money`,`exchange_rate`,`sum_sl_mop`,`sum_os_val_sl_mop`,`user_id`,`id_sdtn`,`comment_sl_mop`,`levelx`) VALUES 
 (87,0000003,11,3,1,1,-1,1,3,'2006-04-02',2,1.0000,150.0000,150.0000,3,13,'',1),
 (90,0000004,8,3,1,1,-1,1,4,'2006-04-05',3,1.0000,125.0000,125.0000,3,13,'',1),
 (91,0000017,1,1,1,4,-1,1,1,'2006-04-02',1,150.0000,150.0000,150.0000,3,5,'',1),
 (96,0000005,11,3,1,1,-1,1,3,'2006-04-02',2,1.6660,100.0000,166.6000,3,13,'\n',1),
 (97,0000077,1,1,33,3,-1,1,1,'2006-03-29',1,1.0000,25.3500,25.3500,3,5,NULL,1),
 (98,0000004,5,1,191,3,-1,1,3,'2006-04-09',1,1.0000,14365.9400,14365.9400,3,10,'',1),
 (99,0000005,4,1,561,3,-1,1,2,'2006-04-05',1,1.0000,2859.6400,2859.6400,3,10,'',1),
 (100,0000006,6,1,39,3,-1,1,3,'2006-04-07',1,1.0000,14.3600,14.3600,3,10,'',1),
 (101,0000007,3,1,176,3,226593,1,1,'2006-02-07',1,1.0000,43567.5500,43567.5500,3,10,'',1),
 (102,0000001,1,1,5,4,-1,1,3,'2006-04-05',2,1.6120,5296.3700,8537.7484,3,14,'',1);
INSERT INTO `sl_m_operation` (`id_sl_mop`,`number_sl_mop`,`in_sl_mop`,`in_type_sl_mop`,`out_sl_mop`,`out_type_sl_mop`,`id_order_spec`,`id_order_spec_type`,`id_order_doc`,`date_is`,`id_n_money`,`exchange_rate`,`sum_sl_mop`,`sum_os_val_sl_mop`,`user_id`,`id_sdtn`,`comment_sl_mop`,`levelx`) VALUES 
 (103,0000001,1,1,4,1,-1,1,1,'2006-04-10',1,1.0000,125.0000,125.0000,3,15,'\n',1),
 (104,0000002,1,1,2,1,-1,1,1,'2006-04-10',1,1.0000,250.0000,250.0000,3,15,'\n\n\n\n\n',1),
 (105,0000003,3,1,1,1,-1,1,3,'2006-04-05',1,1.0000,1453.6900,1453.6900,3,15,'',1),
 (106,0000004,5,1,3,1,106030,1,2,'2006-04-02',3,1.6660,722.0500,1202.9353,3,15,'',1),
 (107,0000005,6,1,5,1,-1,1,2,'2006-06-22',3,1.6660,434.1900,723.3605,3,15,'Много специални патрони за слонове!',1),
 (108,0000006,4,1,1,1,34156,1,3,'2006-06-22',1,1.0000,7629.4500,7629.4500,3,15,'',1),
 (109,0000007,5,1,6,1,33359,1,3,'2006-04-13',2,1.6120,702.1100,1131.8013,3,15,'',1);
/*!40000 ALTER TABLE `sl_m_operation` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_n_obekt`
--

DROP TABLE IF EXISTS `sl_n_obekt`;
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

--
-- Dumping data for table `mida`.`sl_n_obekt`
--

/*!40000 ALTER TABLE `sl_n_obekt` DISABLE KEYS */;
/*!40000 ALTER TABLE `sl_n_obekt` ENABLE KEYS */;


--
-- Table structure for table `mida`.`sl_nalichnosti`
--

DROP TABLE IF EXISTS `sl_nalichnosti`;
CREATE TABLE `sl_nalichnosti` (
  `id_nal` int(11) NOT NULL auto_increment,
  `id_n_storage` int(11) default NULL,
  `id_pc` int(10) unsigned default NULL COMMENT 'partidni nomera',
  `level` tinyint(3) unsigned default NULL,
  `quant_nal` int(10) unsigned default NULL,
  `quant_rezerv_nal` int(10) unsigned default NULL,
  `return_rezerv_nal` int(10) unsigned default NULL,
  PRIMARY KEY  (`id_nal`),
  UNIQUE KEY `Index_2` (`id_pc`,`id_n_storage`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`sl_nalichnosti`
--

/*!40000 ALTER TABLE `sl_nalichnosti` DISABLE KEYS */;
INSERT INTO `sl_nalichnosti` (`id_nal`,`id_n_storage`,`id_pc`,`level`,`quant_nal`,`quant_rezerv_nal`,`return_rezerv_nal`) VALUES 
 (1,1,11,0,152,0,0),
 (2,2,2,0,135,0,0),
 (3,5,1,1,49907,0,0),
 (4,3,3,1,4,0,0),
 (10,4,1,1,10,0,0),
 (11,2,1,1,6,0,0),
 (12,3,1,1,7,0,0);
/*!40000 ALTER TABLE `sl_nalichnosti` ENABLE KEYS */;


--
-- Table structure for table `mida`.`user_master`
--

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE `user_master` (
  `id_um` int(11) NOT NULL auto_increment,
  `acc_user` varchar(14) default NULL,
  `name_um` varchar(30) default NULL,
  `nomer_um` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_um`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `mida`.`user_master`
--

/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` (`id_um`,`acc_user`,`name_um`,`nomer_um`) VALUES 
 (1,'root','Иван Кацаров',1),
 (2,'katsarov','Иван Кацаров',2),
 (3,'imakante','Радослав Драгийски',3),
 (4,'jp','Иван Попов',4);
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;


--
-- Table structure for table `mida`.`user_rights`
--

DROP TABLE IF EXISTS `user_rights`;
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

--
-- Dumping data for table `mida`.`user_rights`
--

/*!40000 ALTER TABLE `user_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_rights` ENABLE KEYS */;


--
-- View structure for view `mida`.`VAT_dr`
--

DROP VIEW IF EXISTS `VAT_dr`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `VAT_dr` AS select `sl_document_facade`.`number_df` AS `number_df`,`n_type_doc`.`name_ntd` AS `name_ntd`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_contragent`.`bul_n_contragent` AS `bul_n_contragent`,`sl_document_facade`.`date_edition_df` AS `date_edition_df`,`sl_document_facade`.`total_df` AS `total_df`,`sl_document_facade`.`dds_df` AS `dds_df` from ((`sl_document_facade` join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_document_facade`.`in_contragent_df`))) join `n_type_doc` on((`n_type_doc`.`code_ntd` = `sl_document_facade`.`type_df`))) where (`sl_document_facade`.`type_df` = 4) order by `sl_document_facade`.`number_df`;


--
-- View structure for view `mida`.`print_doc_faktura`
--

DROP VIEW IF EXISTS `print_doc_faktura`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `print_doc_faktura` AS select `sl_document_lines`.`id_df` AS `id_df`,`sl_document_lines`.`singly_price_dl` AS `singly_price_dl`,`sl_document_lines`.`climb_down_dl` AS `climb_down_dl`,`sl_document_lines`.`numbers_piece_dl` AS `numbers_piece_dl`,`sl_document_lines`.`dds_dl` AS `dds_dl`,`sl_document_lines`.`totalall_dl` AS `totalall_dl`,`n_product_consigment`.`id_pm` AS `nomerpm`,`n_product_main`.`fname_pm` AS `fname_pm`,`n_product_all_measure`.`name_pam` AS `name_pam` from ((((`sl_document_lines` left join `n_product_consigment` on((`n_product_consigment`.`id_pc` = `sl_document_lines`.`id_pc`))) left join `n_product_main` on((`n_product_main`.`id_pm` = `n_product_consigment`.`id_pm`))) left join `n_product_description` on((`n_product_description`.`id_pd` = `n_product_main`.`id_pd`))) left join `n_product_all_measure` on((`n_product_all_measure`.`id_pam` = `n_product_description`.`m1_pd`)));


--
-- View structure for view `mida`.`rep_casa_nal`
--

DROP VIEW IF EXISTS `rep_casa_nal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_casa_nal` AS (select distinct `n_casa`.`code_n_casa` AS `code_n_casa`,ifnull(sum(`sl_m_operation`.`sum_os_val_sl_mop`),0) AS `suma`,`sl_m_operation`.`in_type_sl_mop` AS `in_type_sl_mop`,`sl_m_operation`.`out_type_sl_mop` AS `out_type_sl_mop`,`sl_m_operation`.`levelx` AS `levelx` from (`n_casa` left join `sl_m_operation` on((`sl_m_operation`.`in_sl_mop` = `n_casa`.`id_n_casa`))) where (`sl_m_operation`.`in_type_sl_mop` = 1) group by `n_casa`.`code_n_casa`) union (select distinct `n_casa`.`code_n_casa` AS `code_n_casa`,ifnull(sum(`sl_m_operation`.`sum_os_val_sl_mop`),0) AS `suma`,`sl_m_operation`.`in_type_sl_mop` AS `in_type_sl_mop`,`sl_m_operation`.`out_type_sl_mop` AS `out_type_sl_mop`,`sl_m_operation`.`levelx` AS `levelx` from (`n_casa` left join `sl_m_operation` on((`sl_m_operation`.`out_sl_mop` = `n_casa`.`id_n_casa`))) where (`sl_m_operation`.`out_type_sl_mop` = 1) group by `n_casa`.`code_n_casa`);


--
-- View structure for view `mida`.`rep_comm_nal`
--

DROP VIEW IF EXISTS `rep_comm_nal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_comm_nal` AS select `n_contragent`.`code_contragent` AS `code_contragent`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_product_main`.`id_pm` AS `id_pm`,`n_product_main`.`code_pm` AS `code_pm`,`n_product_main`.`name_pm` AS `name_pm`,`sl_nalichnosti`.`quant_nal` AS `quant_nal`,`sl_nalichnosti`.`level` AS `level`,`n_storage`.`code_n_storage` AS `code_n_storage`,`n_storage`.`name_n_storage` AS `name_n_storage`,`n_contragent`.`id_contragent` AS `id_contragent`,`n_storage`.`id_n_storage` AS `id_n_storage` from (((((`n_contragent` join `sl_contragent_product` on((`n_contragent`.`id_contragent` = `sl_contragent_product`.`id_contragent`))) join `n_product_main` on((`n_product_main`.`id_pm` = `sl_contragent_product`.`id_pm`))) join `n_product_consigment` on((`n_product_main`.`id_pm` = `n_product_consigment`.`id_pm`))) join `sl_nalichnosti` on((`n_product_consigment`.`id_pc` = `sl_nalichnosti`.`id_pc`))) join `n_storage` on((`n_storage`.`id_n_storage` = `sl_nalichnosti`.`id_n_storage`))) where ((`n_contragent`.`flag_n_contragent` = 0) and (`sl_contragent_product`.`flag_scp` = 0));


--
-- View structure for view `mida`.`rep_doc_pri`
--

DROP VIEW IF EXISTS `rep_doc_pri`;
CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_doc_pri` AS select `sl_document_facade`.`number_df` AS `number_df`,`sl_document_facade`.`type_df` AS `type_df`,`sl_document_facade`.`condition_df` AS `condition_df`,`n_contragent`.`code_contragent` AS `code_contragent`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_contragent`.`bul_n_contragent` AS `bul_n_contragent`,`sl_document_facade`.`total_df` AS `total_df`,`sl_document_facade`.`dds_df` AS `dds_df`,`sl_document_facade`.`date_edition_df` AS `date_edition_df`,`sl_document_facade`.`level_df` AS `level_df`,`n_contragent`.`flag_n_contragent` AS `flag_n_contragent` from (`sl_document_facade` join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_document_facade`.`in_contragent_df`)));


--
-- Procedure `mida`.`ls_procedure_country`
--

DROP PROCEDURE IF EXISTS `ls_procedure_country`;
DELIMITER $$

CREATE PROCEDURE `ls_procedure_country`(IN in_id INT(6), IN comprator TINYINT, IN in_code INT(6), IN in_name VARCHAR(30))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_country, n.code_n_country, n.name_n_country FROM n_country n ORDER BY n.id_n_country ASC;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_country (code_n_country, name_n_country) VALUES(in_code, in_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_country SET code_n_country = in_code, name_n_country = in_name WHERE n_country.id_n_country = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_country  WHERE id_n_country = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code_n_country, n.name_n_country FROM n_country n WHERE n.id_n_country = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
        SELECT n.id_n_country, n.code_n_country, n.name_n_country FROM n_country n
            WHERE n.name_n_country LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_country ASC;
        END IF;
        IF (in_code > -1) THEN
        SELECT n.id_n_country, n.code_n_country, n.name_n_country FROM n_country n
            WHERE n.code_n_country LIKE CONCAT('%',in_code,'%') AND n.name_n_country LIKE CONCAT('%',in_name,'%')
            ORDER BY n.id_n_country ASC;
        END IF;
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


END $$

DELIMITER ;

--
-- Procedure `mida`.`ls_procedure_document_facade`
--

DROP PROCEDURE IF EXISTS `ls_procedure_document_facade`;
DELIMITER $$

CREATE PROCEDURE `ls_procedure_document_facade`(IN comprator TINYINT,                IN in_id_df INT(11),                IN in_id_contragent_in INT(11),     IN in_id_contragent_out INT(11),IN in_id_obekt_out INT(11),
                                                IN in_id_obekt_in INT(11),           IN in_id_distributor INT(11),       IN in_id_deliver INT(11),           IN in_descriptionPaying INT(3), IN in_docFacadeNumber INT(10),
                                                IN in_docFacadeUser INT(11),         IN in_docFacadeUserLastEdit INT(11),IN in_id_facturaConnection INT(11), IN in_id_payingOrder INT(11),   IN in_id_zaqvkaConnection INT(11),
                                                IN in_docFacadeLevel INT(11),        IN in_docFacadeStorage INT(11),     IN in_docFacadeType INT (3),        IN in_docFacadeAllDDS DOUBLE,   IN in_docFacadeTotal DOUBLE,
                                                IN in_docFacadeCondition VARCHAR(11),IN in_docFacadeDate VARCHAR(10),    IN in_docFacadeComment VARCHAR(250),IN in_dateDeliver VARCHAR(10),  IN in_payingDate VARCHAR(10),
                                                IN in_docFacadeFlagFinish INT (3),   IN in_priceOne DOUBLE,              IN in_climbDown DOUBLE,             IN in_in_store_df INT(11)  )
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
         s.total_df, s.dds_df, s.user_df, um_usr_new.name_um,s.user_last_df, um_usr_last.name_um, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS deliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df,name_kp, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.flag_finish_df, s.id_rep, s.level_df , s.in_store_df
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
         LEFT JOIN user_master um_usr_new ON usr_new.id_um=um_usr_new.id_um
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur
         LEFT JOIN user_master um_usr_last ON usr_last.id_um=um_usr_last.id_um
         LEFT JOIN mida.sl_doc_type_num sldtn ON sldtn.id_sdtn=usr_new.id_sdtn
         LEFT JOIN  kind_paying ON  description_pay_df=kind_paying.id_kp
         WHERE  type_df = in_docFacadeType AND usr_new.id_ndtur = in_docFacadeUser AND level_df = in_docFacadeLevel
         AND condition_df="0" ORDER BY s.number_df ASC;
END IF;

IF (comprator = 1) THEN
         INSERT INTO mida.sl_document_facade(in_contragent_df, out_obekt_df, in_obekt_df, number_df, type_df, condition_df,
         out_store_df, total_df, dds_df, user_df, user_last_df, date_edition_df, distributor_df, delivere_df,
         faktura_connection_df, zaiavka_connection_df, description_pay_df, paying_order_df, date_deliver_df, date_pay_df,
         comments_df, flag_finish_df,  level_df, out_contragent_df,in_store_df)
         VALUES(in_id_contragent_in,in_id_obekt_out,in_id_obekt_in,in_docFacadeNumber,in_docFacadeType,in_docFacadeCondition,
           in_docFacadeStorage,in_docFacadeTotal,in_docFacadeAllDDS,in_docFacadeUser,in_docFacadeUserLastEdit, in_docFacadeDate,in_id_distributor,
           in_id_deliver,in_id_facturaConnection,in_id_zaqvkaConnection, in_descriptionPaying,in_id_payingOrder,in_dateDeliver,in_payingDate,
           in_docFacadeComment,in_docFacadeFlagFinish, in_docFacadeLevel,in_id_contragent_out,in_in_store_df);
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
        s.out_contragent_df =in_id_contragent_out,
        s.in_store_df = in_in_store_df
        WHERE s.id_df = in_id_df;

     END IF;

IF (comprator = 3) THEN
      #   DELETE FROM mida.sl_document_facade WHERE id_df = in_id_df;
      UPDATE mida.sl_document_facade s SET s.condition_df ="1"
      WHERE id_df = in_id_df;
END IF;

IF (comprator = 4) THEN
         SELECT
         s.id_df,
         s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person, contr_in.tel_contragent,
         s.out_contragent_df,contr_out.code_contragent, contr_out.bul_n_contragent,contr_out.dan_n_contragent, contr_out.name_n_contragent,
         contr_out.address_n_contragent, p_contr_out.name_ls_n_person, contr_out.tel_contragent,
         s.in_obekt_df, obkt_in.name_n_obekt, obkt_in.address_n_obekt, obkt_in.code_n_obekt,
         s.out_obekt_df, obkt_out.name_n_obekt, obkt_out.address_n_obekt, obkt_out.code_n_obekt,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, um_usr_new.name_um,s.user_last_df, um_usr_last.name_um, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS deliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df,name_kp, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.flag_finish_df, s.id_rep, s.level_df , s.in_store_df
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
         LEFT JOIN user_master um_usr_new ON usr_new.id_um=um_usr_new.id_um
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur
         LEFT JOIN user_master um_usr_last ON usr_last.id_um=um_usr_last.id_um
         LEFT JOIN mida.sl_doc_type_num sldtn ON sldtn.id_sdtn=usr_new.id_sdtn
         LEFT JOIN  kind_paying ON  description_pay_df=kind_paying.id_kp
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
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt  FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
END IF;
#----------------------
# start text obekt
IF (comprator = 12) THEN
       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
END IF;
# end text obekt
#--------------------------------
IF (comprator = 13) THEN

       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
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
     SELECT pc.id_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
     n.id_pm, n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
     pc.parcel_pc, pc.dateofexpire_pc ,
     s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
     st.code_n_storage, st.name_n_storage, st.comments_n_storage
     FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
     LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
     LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
     WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df;
   END IF;
   IF (in_docFacadeType = 1) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp  as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc, pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
        st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.code_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df;

   END IF;
   IF (in_docFacadeType = 2) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.code_n_storage, st.name_n_storage, st.comments_n_storage
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

IF (comprator = 43) THEN
     SELECT  n.cod_lat_n_money, s.value_sl_exchange_rate FROM mida.sl_exchange_rate s LEFT JOIN mida.n_money n ON n.id_n_money=s.id_n_money
     WHERE s.date_sl_exchange_rate = in_docFacadeComment;
END IF;

IF (comprator = 44) THEN
    SELECT id_nal FROM sl_nalichnosti s
    WHERE id_n_storage= in_docFacadeStorage
    AND id_pc = in_id_obekt_in;
END IF;

IF (comprator = 45) THEN
    INSERT INTO sl_nalichnosti(id_n_storage,id_pc,level,quant_nal,quant_rezerv_nal,return_rezerv_nal)
    VALUES(in_docFacadeStorage,in_id_obekt_in,0,0,0,0);
END IF;

IF (comprator = 46) THEN
    SELECT MAX(id_nal) as id FROM sl_nalichnosti s;
END IF;

IF (comprator = 47) THEN
   UPDATE mida.sl_nalichnosti s SET s.quant_nal=(quant_nal+in_id_obekt_out),
   s.id_n_storage = in_docFacadeStorage,
   s.id_pc = in_id_df,
   s.level = in_docFacadeLevel
   WHERE id_nal= in_id_obekt_in;
END IF;
IF (comprator = 48) THEN
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
    WHERE id_dl = in_id_df;
END IF;

IF (comprator = 49) THEN
       IF ( in_id_obekt_in = 0) THEN
          SELECT s.faktura_connection_df AS conn FROM sl_document_facade s
          WHERE id_df = in_id_df;
       END IF;

       IF ( in_id_obekt_in = 1) THEN
          SELECT s.zaiavka_connection_df AS conn FROM sl_document_facade s
          WHERE id_df = in_id_df;
       END IF;
END IF;
END $$

DELIMITER ;

--
-- Procedure `mida`.`ls_procedure_group`
--

DROP PROCEDURE IF EXISTS `ls_procedure_group`;
DELIMITER $$

CREATE PROCEDURE "ls_procedure_group"(IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_code INT(11), IN in_name VARCHAR(50), IN in_alid TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al  FROM `n_group` n, anlevel 
            WHERE nom_n_group = in_nom AND anlevel.id_al = n.id_al ORDER BY n.id_n_group ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_group`(nom_n_group, cod_n_group, name_n_group, id_al) VALUES(in_nom, in_code, in_name, in_alid);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_group` SET cod_n_group = in_code, name_n_group = in_name, nom_n_group = in_nom, id_al = in_alid
           WHERE `n_group`.id_n_group = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_group`  WHERE id_n_group = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_group, n.nom_n_group, n.cod_n_group, n.name_n_group, n.alid FROM `n_group` n WHERE `n_group`.id_n_group = in_id;

     END IF;
     IF (comprator = 5) THEN
          IF (in_alid != 0 AND in_code > -1) THEN
             SELECT n.id_n_group,  n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al  FROM `n_group` n, anlevel  WHERE n.cod_n_group LIKE CONCAT('%',in_code,'%') AND
             n.name_n_group LIKE CONCAT('%',in_name,'%') AND n.id_al LIKE CONCAT('%',in_alid,'%') AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid = 0 AND in_code > -1) THEN
             SELECT n.id_n_group,  n.cod_n_group, n.name_n_group, n.id_al,anlevel.name_al  FROM `n_group` n,anlevel  WHERE n.cod_n_group LIKE CONCAT('%',in_code,'%') AND
             n.name_n_group LIKE CONCAT('%',in_name,'%') AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid != 0 AND in_code = -1) THEN
            SELECT n.id_n_group,  n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al  FROM `n_group` n, anlevel  WHERE n.name_n_group LIKE CONCAT('%',in_name,'%') AND 
            n.id_al LIKE CONCAT('%',in_alid,'%') AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid = 0 AND in_code = -1) THEN
            SELECT n.id_n_group,  n.cod_n_group, n.name_n_group, n.id_al,anlevel.name_al  FROM `n_group` n,anlevel  WHERE n.name_n_group LIKE CONCAT('%',in_name,'%') AND 
            n.nom_n_group = in_nom AND anlevel.id_al = n.id_al ORDER BY n.id_n_group ASC;
          END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT n.id_al, n.cod_al, n.name_al FROM anlevel n ORDER BY cod_al;
     END IF;


     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_group) AS id FROM n_group n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM n_group;
     END IF;
END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_baccount`
--

DROP PROCEDURE IF EXISTS `nom_procedure_baccount`;
DELIMITER $$

CREATE PROCEDURE "nom_procedure_baccount"(IN comprator TINYINT, IN in_id INT(11), IN in_id_group INT(11), IN in_code INT(11),
                IN in_name VARCHAR(45), IN in_account VARCHAR(28), IN in_address VARCHAR(100), IN in_id_tacc INT(11), IN in_comment VARCHAR(250))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
            n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            ORDER BY n.id_nbc ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_baccount (id_n_group, code_nbc, name_nbc, account_nbc, address_nbc, id_tbacc, comment_nbc) 
        VALUES (in_id_group, in_code, in_name, in_account, in_address, in_id_tacc, in_comment);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_baccount SET id_n_group = in_id_group, code_nbc = in_code, name_nbc = in_name, account_nbc = in_account,
        address_nbc = in_address, id_tbacc = in_id_tacc, comment_nbc = in_comment WHERE n_baccount.id_nbc = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM n_baccount  WHERE id_nbc = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
            n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            WHERE n.id_nbc = in_id;
     END IF;
     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
                n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
                LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
                WHERE n.name_nbc LIKE CONCAT('%',in_name,'%') ORDER BY n.id_nbc ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.account_nbc, n.address_nbc, 
                n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
                LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
                WHERE n.code_nbc LIKE CONCAT('%',in_code,'%') AND n.name_nbc LIKE CONCAT('%',in_name,'%') ORDER BY n.id_nbc ASC;
        END IF;
     END IF;
     IF (comprator = 6) THEN
        SELECT ntb.id_tbacc, ntb.name_tbacc FROM n_type_bacc ntb;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_nbc) FROM n_baccount n;
     END IF;
     IF (comprator = 8) THEN
        SELECT MAX(n.code_nbc) AS account_code FROM n_baccount n;
     END IF;
     IF (comprator = 9) THEN
        SELECT MAX(ntb.id_ntbacc) AS id_ntbacc FROM n_type_bacc ntb;
     END IF;
     IF (comprator = 10) THEN
        SELECT ng.id_n_group, ng.name_n_group FROM n_group ng WHERE ng.nom_n_group = 6;
     END IF;
     IF (comprator = 11) THEN
        SELECT MAX(ng.id_n_group) AS id_n_group FROM n_group ng WHERE ng.nom_n_group = 6;
     END IF;
END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_casa`
--

DROP PROCEDURE IF EXISTS `nom_procedure_casa`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_casa`(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa,
                 n.comments_n_casa FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_n_casa ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_casa( id_n_group, code_n_casa, name_n_casa, comments_n_casa) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_casa SET id_n_group = in_id_groupe, code_n_casa = in_code,   name_n_casa = in_name, comments_n_casa = in_comments
        WHERE n_casa.id_n_casa = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_casa  WHERE id_n_casa = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa, n.comments_n_casa 
                   FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.name_n_casa LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_casa ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa, n.comments_n_casa
                   FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.code_n_casa LIKE CONCAT('%',in_code,'%') AND  n.name_n_casa LIKE CONCAT('%',in_name,'%')
                   ORDER BY n.id_n_casa ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n WHERE n.nom_n_group = 5;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_casa) FROM n_casa n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_casa) AS code_n_casa FROM n_casa n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n WHERE n.nom_n_group = 5;
     END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_contragent`
--

DROP PROCEDURE IF EXISTS `nom_procedure_contragent`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_contragent`(IN comprator TINYINT,  IN in_id INT(10),      IN in_code INT(11),     IN in_name VARCHAR(45),
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
         VALUES(in_code,in_name,in_bul,in_dan,in_address,in_id_nm,in_tel,in_fax,in_email,in_web,in_id_mol,in_id_oso,in_flag);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `n_contragent` SET flag_n_contragent = in_flag
           WHERE `n_contragent`.id_contragent = in_id;
     END IF;

     IF (comprator = 5) THEN
      IF (in_code != 0) THEN
       SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent
        FROM `n_contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id_n_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = cont.id_n_country and c.flag_n_contragent = in_flag ) AND
              c.code_contragent LIKE CONCAT('%',in_code,'%') AND
              c.name_n_contragent LIKE CONCAT('%',in_name,'%') AND  c.bul_n_contragent LIKE CONCAT('%',in_bul,'%') AND c.dan_n_contragent LIKE CONCAT('%',in_dan,'%') AND
              c.address_n_contragent LIKE CONCAT('%',in_address,'%') AND c.tel_contragent LIKE CONCAT('%',in_tel,'%') AND c.fax_contragent LIKE CONCAT('%',in_fax,'%') AND
              c.email_contragent LIKE CONCAT('%',in_email,'%') AND c.web_contragent LIKE CONCAT('%',in_web,'%') ORDER BY c.code_contragent;
     END IF;
      IF (in_code = 0) THEN
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

     IF (comprator = 8) THEN
        SELECT MAX(n.code_contragent) AS code FROM `n_contragent` n;
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

     IF (comprator = 17) THEN
        SELECT  sl_contragent_product.id_pm
        FROM sl_contragent_product where sl_contragent_product.id_contragent = in_id AND sl_contragent_product.flag_scp = in_flag;
     END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_doctype`
--

DROP PROCEDURE IF EXISTS `nom_procedure_doctype`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_doctype`(IN in_id INT(6), IN comprator TINYINT, IN in_code INT(10), IN in_name VARCHAR(50), IN in_print_name VARCHAR(50))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_ntd, n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n ORDER BY n.id_ntd ASC;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_type_doc (code_ntd, name_ntd, name_print_ntd) VALUES (in_code, in_name, in_print_name);
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
        IF (in_code = -1) THEN
            SELECT n.id_ntd, n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n 
                WHERE n.name_ntd LIKE CONCAT('%',in_name,'%') ORDER BY n.id_ntd ASC;
        END IF;
        IF (in_code > -1 ) THEN
            SELECT n.id_ntd, n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n 
                WHERE n.code_ntd LIKE CONCAT('%',in_code,'%') AND n.name_ntd LIKE CONCAT('%',in_name,'%') ORDER BY n.id_ntd ASC;
        END IF;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_ntd) AS id FROM n_type_doc n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_ntd) AS code FROM n_type_doc n;
     END IF;

     IF (comprator = 9) THEN
       DELETE FROM n_type_doc;
     END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_doctype_user_rights`
--

DROP PROCEDURE IF EXISTS `nom_procedure_doctype_user_rights`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_doctype_user_rights`(IN comprator INT(6), IN in_id INT(11), IN in_id_um INT(11), IN in_id_sdtn INT(11), IN in_rights INT(11))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_ndtur, n.id_um, um.name_um, n.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn, n.rights_ndtur FROM n_doc_type_user_rights n
            LEFT OUTER JOIN user_master um ON um.id_um = n.id_um
            LEFT OUTER JOIN sl_doc_type_num dtn ON dtn.id_sdtn = n.id_sdtn
            ORDER BY n.id_ndtur ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_doc_type_user_rights (id_um, id_sdtn, rights_ndtur) VALUES (in_id_um, in_id_sdtn, in_rights);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_doc_type_user_rights SET id_um = in_id_um, id_sdtn = in_id_sdtn, rights_ndtur = in_rights
        WHERE n_doc_type_user_rights.id_ndtur = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM n_doc_type_user_rights  WHERE id_ndtur = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_ndtur, n.id_um, um.name_um, n.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn, n.rights_ndtur FROM n_doc_type_user_rights n
            LEFT OUTER JOIN user_master um ON um.id_um = n.id_um
            LEFT OUTER JOIN sl_doc_type_num dtn ON dtn.id_sdtn = n.id_sdtn
            WHERE n.id_ndtur = in_id;
     END IF;
     IF (comprator = 5) THEN
        SELECT n.id_ndtur, n.id_um, um.name_um, n.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn, n.rights_ndtur FROM n_doc_type_user_rights n
            LEFT OUTER JOIN user_master um ON um.id_um = n.id_um
            LEFT OUTER JOIN sl_doc_type_num dtn ON dtn.id_sdtn = n.id_sdtn
            WHERE n.rights_ndtur LIKE CONCAT('%',in_rights,'%') ORDER BY n.id_ndtur ASC;
     END IF;
     IF (comprator = 6) THEN
        SELECT um.id_um, um.name_um FROM user_master um;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_ndtur) FROM n_doc_type_user_rights n;
     END IF;
     IF (comprator = 8) THEN
        SELECT dtn.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn FROM sl_doc_type_num dtn;
     END IF;
END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_expens`
--

DROP PROCEDURE IF EXISTS `nom_procedure_expens`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_expens`(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens, n.comments_n_expens 
            FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_n_expens ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_expens( id_n_group, code_n_expens, name_n_expens, comments_n_expens) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_expens SET id_n_group = in_id_groupe, code_n_expens = in_code,   name_n_expens = in_name, comments_n_expens = in_comments
        WHERE n_expens.id_n_expens = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_expens WHERE id_n_expens = in_id;
     END IF;


     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens, n.comments_n_expens 
                FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_expens LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_expens ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens, n.comments_n_expens 
                FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_expens LIKE CONCAT('%',in_code,'%') AND  n.code_n_expens LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_expens ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_expens) FROM n_expens n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_expens) AS code_n_expens FROM n_expens n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_incom`
--

DROP PROCEDURE IF EXISTS `nom_procedure_incom`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_incom`(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms, n.comments_n_incoms 
            FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_n_incoms ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_incoms ( id_n_group, code_n_incoms, name_n_incoms, comments_n_incoms) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_incoms SET id_n_group = in_id_groupe, code_n_incoms = in_code,   name_n_incoms = in_name, comments_n_incoms = in_comments
        WHERE n_incoms.id_n_incoms = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_incoms WHERE id_n_incoms = in_id;
     END IF;


     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms, n.comments_n_incoms 
                FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_incoms LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_incoms ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms, n.comments_n_incoms 
                FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_incoms LIKE CONCAT('%',in_code,'%') AND  n.code_n_incoms LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_incoms ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_incoms) FROM n_incoms n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_incoms) AS code_n_incoms FROM n_incoms n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 5;
     END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_money`
--

DROP PROCEDURE IF EXISTS `nom_procedure_money`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_money`(IN in_id INT(6), IN comprator INT(6), IN in_code INT(6), IN in_cod_lat VARCHAR(6), IN in_name VARCHAR(50), IN in_comments VARCHAR(255))
BEGIN        
     IF (comprator = 0) THEN
        SELECT n.id_n_money, n.cod_n_money, n.cod_lat_n_money, n.name_n_money, n.comments_n_money FROM n_money n ORDER BY n.id_n_money ASC;
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
        IF (in_code = -1) THEN
            SELECT n.id_n_money, n.cod_n_money, n.cod_lat_n_money, n.name_n_money FROM n_money n 
                WHERE n.cod_lat_n_money LIKE CONCAT('%',in_cod_lat,'%') AND n.name_n_money LIKE CONCAT('%',in_name,'%')
                ORDER BY n.id_n_money ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_money, n.cod_n_money, n.cod_lat_n_money, n.name_n_money FROM n_money n WHERE n.code_n_money LIKE CONCAT('%',in_code,'%') AND
                n.cod_lat_n_money LIKE CONCAT('%',in_cod_lat,'%') AND n.name_n_money LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_money ASC;
        END IF;
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


END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_naselenimesta`
--

DROP PROCEDURE IF EXISTS `nom_procedure_naselenimesta`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_naselenimesta`(IN comprator TINYINT, IN in_id INT(11), IN in_postcode INT(6), IN in_name VARCHAR(20), IN in_id_oblast INT(3) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast, obl.name_n_oblast
        FROM n_nm n, n_oblast obl WHERE n.id_n_oblast=obl.id_n_oblast ORDER BY n.id_n_nm ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_nm`(postcode_n_nm, name_n_nm, id_n_oblast) VALUES(in_postcode, in_name, in_id_oblast);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_nm SET postcode_n_nm = in_postcode, name_n_nm = in_name, id_n_oblast = in_id_oblast
        WHERE n_nm.id_n_nm = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_nm  WHERE id_n_nm = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast FROM `n_nm` n WHERE n.id_n_nm = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_postcode != 0) THEN
          SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast, obl.name_n_oblast FROM n_nm n, n_oblast obl 
            WHERE n.postcode_n_nm LIKE CONCAT(in_postcode,'%') AND n.name_n_nm LIKE CONCAT('%',in_name,'%') AND n.id_n_oblast = obl.id_n_oblast
            ORDER BY n.id_n_nm ASC;
        END IF;
        IF (in_postcode = 0) THEN
          SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast, obl.name_n_oblast  FROM n_nm n, n_oblast obl
           WHERE n.name_n_nm LIKE CONCAT('%',in_name,'%') AND n.id_n_oblast = obl.id_n_oblast ORDER BY n.id_n_nm ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country FROM n_oblast n ORDER BY n.name_n_oblast;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_nm) AS id FROM n_nm n;
     END IF;
END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_oblast`
--

DROP PROCEDURE IF EXISTS `nom_procedure_oblast`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_oblast`(IN comprator TINYINT, IN in_id INT(11), IN in_name VARCHAR(20), IN in_id_country INT(3), IN in_country VARCHAR(45) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country, c.name_n_country
        FROM n_oblast n, n_country c WHERE n.id_n_country = c.id_n_country ORDER BY n.id_n_oblast ASC;
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
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country,c.name_n_country  FROM `n_oblast` n, `n_country` c 
            WHERE n.name_n_oblast LIKE CONCAT('%',in_name,'%') AND c.name_n_country LIKE CONCAT('%',in_country,'%') AND c.id_n_country = n.id_n_country
            ORDER BY n.id_n_oblast ASC;
     END IF;

     IF (comprator = 6) THEN
        SELECT id_n_country, code_n_country, name_n_country FROM n_country n ORDER BY name_n_country;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_oblast) AS id FROM `n_oblast` n;
     END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_person`
--

DROP PROCEDURE IF EXISTS `nom_procedure_person`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_person`(IN comprator TINYINT, IN in_id INT(11), IN in_id_group INT(11), IN in_code INT(11), IN in_egn VARCHAR(10), IN in_nomlk VARCHAR(9), IN in_name VARCHAR(45), IN in_comment VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_ls_n_person ASC;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO ls_n_person (id_n_group, code_ls_n_person, egn_ls_n_person, nlk_ls_n_person, name_ls_n_person, comment_ls_n_person) VALUES(in_id_group, in_code, in_egn, in_nomlk, in_name, in_comment);
     END IF;

     IF (comprator = 2) THEN
        UPDATE ls_n_person  SET id_n_group = in_id_group, code_ls_n_person = in_code, egn_ls_n_person = in_egn, nlk_ls_n_person = in_nomlk, name_ls_n_person = in_name, comment_ls_n_person = in_comment
        WHERE ls_n_person.id_ls_n_person = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM ls_n_person WHERE id_ls_n_person = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
        SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE  n.egn_ls_n_person LIKE CONCAT('%',in_egn,'%') AND n.name_ls_n_person LIKE CONCAT('%',in_name,'%')
                    ORDER BY n.id_ls_n_person ASC;
        END IF;
        IF (in_code > -1 ) THEN
        SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.code_ls_n_person LIKE CONCAT('%',in_code,'%') AND n.egn_ls_n_person LIKE CONCAT('%',in_egn,'%') AND n.name_ls_n_person LIKE CONCAT('%',in_name,'%')
                    ORDER BY n.id_ls_n_person ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n WHERE n.nom_n_group = 3;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_ls_n_person) FROM ls_n_person n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_ls_n_person) AS code_ls_n_person FROM ls_n_person n;
     END IF;

     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n WHERE n.nom_n_group = 3;
     END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_product`
--

DROP PROCEDURE IF EXISTS `nom_procedure_product`;
DELIMITER $$

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
       UPDATE `mida`.`n_product_main` SET flag_pm = in_flag_pm
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
        SELECT MAX(n.id_pm) AS id_pm FROM `mida`.`n_product_main` n;
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
         SELECT MAX(n.id_pp)  AS id_pp FROM `mida`.`n_product_price` n;
    END IF;

    IF (in_comprator = 19) THEN
           SELECT MAX(n.id_ppp) AS id_ppp FROM `mida`.`n_product_promotion_price` n;
    END IF;

    IF (in_comprator = 20) THEN
          SELECT MAX(n.id_pf) AS id_pf FROM `mida`.`n_product_fee` n;
    END IF;

    IF (in_comprator = 21) THEN
        SELECT  n.id_n_money,n.cod_n_money, n.cod_lat_n_money, n.name_n_money, n.comments_n_money FROM n_money n ORDER BY n.cod_lat_n_money;
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
       VALUES(in_id_pm,"000001",(select CURDATE()));

    END IF;

    IF (in_comprator = 36) THEN
         SELECT n.id_pc, n.parcel_pc, n.dateofexpire_pc, n.barcod_pc, n.id_pp, n.id_ppp, n.id_pf
         FROM n_product_consigment n
         WHERE id_pm =in_id_pm ;

    END IF;
     IF (in_comprator = 37) THEN
         SELECT n.id_pp, n.id_ppp, n.id_pf FROM n_product_consigment n
         WHERE id_pc =in_id_pm ;

    END IF;
    
    IF (in_comprator = 38) THEN
         INSERT INTO mida.n_product_consigment( id_pm, parcel_pc, dateofexpire_pc, barcod_pc, id_pp, id_ppp, id_pf)
         VALUES(in_id_pm, in_id_pd, in_sname_pm, in_barcod_pm, in_id_pp, in_id_ppp, in_id_pf);

    END IF;
    IF (in_comprator = 39) THEN
       UPDATE mida.n_product_consigment n SET n.id_pm  = in_id_pm,
        n.parcel_pc = in_id_pd,
        n.dateofexpire_pc = in_sname_pm,
        n.barcod_pc = in_barcod_pm,
        n.id_pp = in_id_pp,
        n.id_ppp = in_id_ppp,
        n.id_pf = in_id_pf
        WHERE n.id_pc=in_id_n_group;
   END IF;

    IF (in_comprator = 40) THEN
      SELECT MAX(id_pc) as id FROM mida.n_product_consigment n;

   END IF;
   IF (in_comprator = 41) THEN
      DELETE FROM mida.n_product_consigment
      WHERE id_pc = in_id_pm;

   END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_sdtn`
--

DROP PROCEDURE IF EXISTS `nom_procedure_sdtn`;
DELIMITER $$

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

END $$

DELIMITER ;

--
-- Procedure `mida`.`nom_procedure_storage`
--

DROP PROCEDURE IF EXISTS `nom_procedure_storage`;
DELIMITER $$

CREATE PROCEDURE `nom_procedure_storage`(IN comprator TINYINT, IN in_id INT(11), IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_storage, n.id_n_group, ng.name_n_group, n.code_n_storage, n.name_n_storage, n.comments_n_storage 
            FROM n_storage n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group ORDER BY n.id_n_storage ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_storage ( id_n_group, code_n_storage, name_n_storage, comments_n_storage) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_storage SET id_n_group = in_id_groupe, code_n_storage = in_code, name_n_storage = in_name, comments_n_storage = in_comments
        WHERE n_storage.id_n_storage = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_storage  WHERE id_n_storage = in_id;
     END IF;


     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_storage, n.id_n_group, ng.name_n_group, n.code_n_storage, n.name_n_storage,
                   n.comments_n_storage FROM n_storage n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.name_n_storage LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_storage ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_storage, n.id_n_group, ng.name_n_group, n.code_n_storage, n.name_n_storage,
                   n.comments_n_storage FROM n_storage n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.code_n_storage LIKE CONCAT('%',in_code,'%') AND  n.code_n_storage LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_storage ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n WHERE n.nom_n_group = 4;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_storage) FROM n_storage n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_storage) AS code_n_storage FROM n_storage n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n WHERE n.nom_n_group = 4;
     END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`sl_procedure_casa_casa`
--

DROP PROCEDURE IF EXISTS `sl_procedure_casa_casa`;
DELIMITER $$

CREATE PROCEDURE `sl_procedure_casa_casa`(
              IN comprator INT(6),
              IN in_id INT(11),
              IN in_number_sl_mop INT(11),
              IN in_in_sl_mop INT(11),
              IN in_outsl_mop INT(11),
              IN in_id_order_spec INT(11),
              IN in_id_order_doc INT(11),
              IN in_date_is VARCHAR(10),
              IN in_id_n_money INT(11),
              IN in_exchange_rate DOUBLE(11,4),
              IN in_sum_sl_mop DOUBLE(11,4),
              IN in_sum_os_val_sl_mop DOUBLE(11,4),
              IN in_user_id INT(11),
              IN in_id_sdtn INT(11),
              IN in_comment_sl_mop VARCHAR(250),
              IN in_casaBegin INT(11),
              IN in_casaEnd INT(11),
              IN in_contragentBegin INT(11),
              IN in_contragentEnd INT(11),
              IN in_data_begin DATE,
              IN in_data_end DATE,
              IN in_level INT(11)
              )
BEGIN

   IF (comprator = 0) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            ncasa.id_n_casa,
            ncasa.code_n_casa,
            scasa.id_n_casa,
            scasa.code_n_casa,
            scasa.name_n_casa,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            n_money.cod_lat_n_money,
            sl_m_operation.date_is,
            sl_m_operation.exchange_rate,
            sl_m_operation.sum_sl_mop,
            sl_m_operation.sum_os_val_sl_mop,
            sl_m_operation.user_id,
            user_master.name_um,
            sl_m_operation.id_sdtn,
            sl_doc_type_num.name_sdtn,
            sl_m_operation.comment_sl_mop
            FROM
            sl_m_operation
            LEFT Join n_casa ncasa ON ncasa.id_n_casa = sl_m_operation.in_sl_mop
            LEFT Join n_casa scasa ON scasa.id_n_casa = sl_m_operation.out_sl_mop
            LEFT Join sl_document_facade ON sl_document_facade.id_df = sl_m_operation.id_order_spec
            LEFT Join n_money ON n_money.id_n_money = sl_m_operation.id_n_money
            LEFT Join n_incoms ON n_incoms.id_n_incoms = sl_m_operation.id_order_doc
            LEFT Join user_master ON user_master.id_um = sl_m_operation.user_id
            LEFT Join sl_doc_type_num ON sl_doc_type_num.id_sdtn = sl_m_operation.id_sdtn
            WHERE
            sl_m_operation.in_type_sl_mop = 1 AND
            sl_m_operation.out_type_sl_mop = 1 AND
            sl_m_operation.id_sdtn = in_id_sdtn AND
            sl_m_operation.levelx = in_level;

     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_m_operation( sl_m_operation.number_sl_mop,
                                    sl_m_operation.in_sl_mop,
                                    sl_m_operation.in_type_sl_mop,
                                    sl_m_operation.out_sl_mop,
                                    sl_m_operation.out_type_sl_mop,
                                    sl_m_operation.id_order_spec,
                                    sl_m_operation.id_order_spec_type,
                                    sl_m_operation.id_order_doc,
                                    sl_m_operation.date_is,
                                    sl_m_operation.id_n_money,
                                    sl_m_operation.exchange_rate,
                                    sl_m_operation.sum_sl_mop,
                                    sl_m_operation.sum_os_val_sl_mop,
                                    sl_m_operation.user_id,
                                    sl_m_operation.id_sdtn,
                                    sl_m_operation.comment_sl_mop)
        VALUES(in_number_sl_mop,
               in_in_sl_mop,
               1,
               in_outsl_mop,
               1,
               in_id_order_spec,
               1,
               in_id_order_doc,
               in_date_is,
               in_id_n_money,
               in_exchange_rate,
               in_sum_sl_mop,
               in_sum_os_val_sl_mop,
               in_user_id,
               in_id_sdtn,
               in_comment_sl_mop
             );
     END IF;

     IF (comprator = 2) THEN
        UPDATE sl_m_operation SET
                                      sl_m_operation.number_sl_mop =  in_number_sl_mop,
                                      sl_m_operation.in_sl_mop = in_in_sl_mop,
                                      sl_m_operation.in_type_sl_mop = 1,
                                      sl_m_operation.out_sl_mop = in_outsl_mop,
                                      sl_m_operation.out_type_sl_mop = 1,
                                      sl_m_operation.id_order_spec = in_id_order_spec,
                                      sl_m_operation.id_order_spec_type = 1,
                                      sl_m_operation.id_order_doc = in_id_order_doc,
                                      sl_m_operation.date_is = in_date_is,
                                      sl_m_operation.id_n_money = in_id_n_money,
                                      sl_m_operation.exchange_rate = in_exchange_rate,
                                      sl_m_operation.sum_sl_mop = in_sum_sl_mop,
                                      sl_m_operation.sum_os_val_sl_mop = in_sum_os_val_sl_mop,
                                      sl_m_operation.user_id = in_user_id,
                                      sl_m_operation.id_sdtn = in_id_sdtn,
                                      sl_m_operation.comment_sl_mop = in_comment_sl_mop
        WHERE sl_m_operation.id_sl_mop = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM sl_m_operation  WHERE  sl_m_operation.id_sl_mop = in_id;
     END IF;

      IF (comprator = 5) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            ncasa.id_n_casa,
            ncasa.code_n_casa,
            scasa.id_n_casa,
            scasa.code_n_casa,
            scasa.name_n_casa,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            n_money.cod_lat_n_money,
            sl_m_operation.date_is,
            sl_m_operation.exchange_rate,
            sl_m_operation.sum_sl_mop,
            sl_m_operation.sum_os_val_sl_mop,
            sl_m_operation.user_id,
            user_master.name_um,
            sl_m_operation.id_sdtn,
            sl_doc_type_num.name_sdtn,
            sl_m_operation.comment_sl_mop
            FROM
            sl_m_operation
            LEFT Join n_casa ncasa ON ncasa.id_n_casa = sl_m_operation.in_sl_mop
            LEFT Join n_casa scasa ON scasa.id_n_casa = sl_m_operation.out_sl_mop
            LEFT Join sl_document_facade ON sl_document_facade.id_df = sl_m_operation.id_order_spec
            LEFT Join n_money ON n_money.id_n_money = sl_m_operation.id_n_money
            LEFT Join n_incoms ON n_incoms.id_n_incoms = sl_m_operation.id_order_doc
            LEFT Join user_master ON user_master.id_um = sl_m_operation.user_id
            LEFT Join sl_doc_type_num ON sl_doc_type_num.id_sdtn = sl_m_operation.id_sdtn
            WHERE
            sl_m_operation.in_sl_mop = ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_casaBegin AND in_casaEnd ) AND
            sl_m_operation.out_sl_mop = ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_contragentBegin AND in_contragentEnd ) AND
            sl_m_operation.date_is BETWEEN  in_data_begin AND in_data_end AND
            sl_m_operation.in_type_sl_mop = 1 AND
            sl_m_operation.out_type_sl_mop = 1 AND
            sl_m_operation.id_sdtn = in_id_sdtn AND
            sl_m_operation.levelx = in_level;

       END IF;


         IF (comprator = 6) THEN
        SELECT n_casa.id_n_casa, n_casa.code_n_casa FROM n_casa;
        END IF;


        IF (comprator = 7) THEN
        SELECT MAX(sl_m_operation.id_sl_mop) FROM sl_m_operation n;
        END IF;

         IF (comprator = 8) THEN
        SELECT MAX(sl_m_operation.number_sl_mop) FROM sl_m_operation  WHERE sl_m_operation.id_sdtn = in_id_sdtn AND sl_m_operation.levelx = in_level;
        END IF;

        IF (comprator = 9) THEN
            SELECT n_casa.id_n_casa, n_casa.code_n_casa, n_casa.name_n_casa FROM n_casa WHERE n_casa.id_n_casa != in_in_sl_mop;
        END IF;

          IF (comprator = 11) THEN
        SELECT n_money.id_n_money, n_money.cod_lat_n_money FROM n_money;
        END IF;

          IF (comprator = 12) THEN
        SELECT n_incoms.id_n_incoms, n_incoms.name_n_incoms FROM n_incoms;
        END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`sl_procedure_case_advances`
--

DROP PROCEDURE IF EXISTS `sl_procedure_case_advances`;
DELIMITER $$

CREATE PROCEDURE `sl_procedure_case_advances`(
              IN comprator INT(6),
              IN in_id INT(11),
              IN in_number_sl_mop INT(11),
              IN in_in_sl_mop INT(11),
              IN in_outsl_mop INT(11),
              IN in_id_order_spec INT(11),
              IN in_id_order_doc INT(11),
              IN in_date_is VARCHAR(10),
              IN in_id_n_money INT(11),
              IN in_exchange_rate DOUBLE(11,4),
              IN in_sum_sl_mop DOUBLE(11,4),
              IN in_sum_os_val_sl_mop DOUBLE(11,4),
              IN in_user_id INT(11),
              IN in_id_sdtn INT(11),
              IN in_comment_sl_mop VARCHAR(250),
              IN in_casaBegin INT(11),
              IN in_casaEnd INT(11),
              IN in_personBegin INT(11),
              IN in_personEnd INT(11),
              IN in_data_begin DATE,
              IN in_data_end DATE,
              IN in_level INT(11)
              )
BEGIN

   IF (comprator = 0) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            sl_m_operation.out_sl_mop,
            ls_n_person.code_ls_n_person,
            ls_n_person.name_ls_n_person,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            n_money.cod_lat_n_money,
            sl_m_operation.date_is,
            sl_m_operation.exchange_rate,
            sl_m_operation.sum_sl_mop,
            sl_m_operation.sum_os_val_sl_mop,
            sl_m_operation.user_id,
            user_master.name_um,
            sl_m_operation.id_sdtn,
            sl_doc_type_num.name_sdtn,
            sl_m_operation.comment_sl_mop
            FROM
            sl_m_operation
            LEFT Join n_casa ON n_casa.id_n_casa = sl_m_operation.in_sl_mop
            LEFT Join ls_n_person ON ls_n_person.id_ls_n_person = sl_m_operation.out_sl_mop
            LEFT Join sl_document_facade ON sl_document_facade.id_df = sl_m_operation.id_order_spec
            LEFT Join n_money ON n_money.id_n_money = sl_m_operation.id_n_money
            LEFT Join n_incoms ON n_incoms.id_n_incoms = sl_m_operation.id_order_doc
            LEFT Join user_master ON user_master.id_um = sl_m_operation.user_id
            LEFT Join sl_doc_type_num ON sl_doc_type_num.id_sdtn = sl_m_operation.id_sdtn
            WHERE
            sl_m_operation.in_type_sl_mop = 1 AND
            sl_m_operation.out_type_sl_mop = 4 AND
            sl_m_operation.id_sdtn = in_id_sdtn AND
            sl_m_operation.levelx = in_level;

     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_m_operation(   sl_m_operation.number_sl_mop,
                                      sl_m_operation.in_sl_mop,
                                      sl_m_operation.in_type_sl_mop,
                                      sl_m_operation.out_sl_mop,
                                      sl_m_operation.out_type_sl_mop,
                                      sl_m_operation.id_order_spec,
                                      sl_m_operation.id_order_spec_type,
                                      sl_m_operation.id_order_doc,
                                      sl_m_operation.date_is,
                                      sl_m_operation.id_n_money,
                                      sl_m_operation.exchange_rate,
                                      sl_m_operation.sum_sl_mop,
                                      sl_m_operation.sum_os_val_sl_mop,
                                      sl_m_operation.user_id,
                                      sl_m_operation.id_sdtn,
                                      sl_m_operation.comment_sl_mop)
        VALUES(in_number_sl_mop,
               in_in_sl_mop,
               1,
               in_outsl_mop,
               4,
               in_id_order_spec,
               1,
               in_id_order_doc,
               in_date_is,
               in_id_n_money,
               in_exchange_rate,
               in_sum_sl_mop,
               in_sum_os_val_sl_mop,
               in_user_id,
               in_id_sdtn,
               in_comment_sl_mop
             );
     END IF;

     IF (comprator = 2) THEN
        UPDATE sl_m_operation SET
                                      sl_m_operation.number_sl_mop =  in_number_sl_mop,
                                      sl_m_operation.in_sl_mop = in_in_sl_mop,
                                      sl_m_operation.in_type_sl_mop = 1,
                                      sl_m_operation.out_sl_mop = in_outsl_mop,
                                      sl_m_operation.out_type_sl_mop = 4,
                                      sl_m_operation.id_order_spec = in_id_order_spec,
                                      sl_m_operation.id_order_spec_type = 1,
                                      sl_m_operation.id_order_doc = in_id_order_doc,
                                      sl_m_operation.date_is = in_date_is,
                                      sl_m_operation.id_n_money = in_id_n_money,
                                      sl_m_operation.exchange_rate = in_exchange_rate,
                                      sl_m_operation.sum_sl_mop = in_sum_sl_mop,
                                      sl_m_operation.sum_os_val_sl_mop = in_sum_os_val_sl_mop,
                                      sl_m_operation.user_id = in_user_id,
                                      sl_m_operation.id_sdtn = in_id_sdtn,
                                      sl_m_operation.comment_sl_mop = in_comment_sl_mop
        WHERE sl_m_operation.id_sl_mop = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM sl_m_operation  WHERE  sl_m_operation.id_sl_mop = in_id;
     END IF;

      IF (comprator = 5) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            ls_n_person.id_ls_n_person,
            ls_n_person.code_ls_n_person,
            ls_n_person.name_ls_n_person,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            n_money.cod_lat_n_money,
            sl_m_operation.date_is,
            sl_m_operation.exchange_rate,
            sl_m_operation.sum_sl_mop,
            sl_m_operation.sum_os_val_sl_mop,
            sl_m_operation.user_id,
            user_master.name_um,
            sl_m_operation.id_sdtn,
            sl_doc_type_num.name_sdtn,
            sl_m_operation.comment_sl_mop
            FROM
            sl_m_operation
            LEFT Join n_casa ON n_casa.id_n_casa = sl_m_operation.in_sl_mop
            LEFT Join ls_n_person ON ls_n_person.id_ls_n_person = sl_m_operation.out_sl_mop
            LEFT Join sl_document_facade ON sl_document_facade.id_df = sl_m_operation.id_order_spec
            LEFT Join n_money ON n_money.id_n_money = sl_m_operation.id_n_money
            LEFT Join n_incoms ON n_incoms.id_n_incoms = sl_m_operation.id_order_doc
            LEFT Join user_master ON user_master.id_um = sl_m_operation.user_id
            LEFT Join sl_doc_type_num ON sl_doc_type_num.id_sdtn = sl_m_operation.id_sdtn
            WHERE
            sl_m_operation.in_sl_mop = ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_casaBegin AND in_casaEnd ) AND
            sl_m_operation.out_sl_mop = ANY (SELECT ls_n_person.id_ls_n_person FROM ls_n_person WHERE ls_n_person.code_ls_n_person BETWEEN in_personBegin AND in_personEnd ) AND
            sl_m_operation.date_is BETWEEN  in_data_begin AND in_data_end AND
            sl_m_operation.in_type_sl_mop = 1 AND
            sl_m_operation.out_type_sl_mop = 4 AND
            sl_m_operation.id_sdtn = in_id_sdtn AND
            sl_m_operation.levelx = in_level;

       END IF;


         IF (comprator = 6) THEN
        SELECT n_casa.id_n_casa, n_casa.code_n_casa FROM n_casa;
        END IF;


        IF (comprator = 7) THEN
        SELECT MAX(sl_m_operation.id_sl_mop) FROM sl_m_operation n;
        END IF;

         IF (comprator = 8) THEN
        SELECT MAX(sl_m_operation.number_sl_mop) FROM sl_m_operation  WHERE sl_m_operation.id_sdtn = in_id_sdtn AND sl_m_operation.levelx = in_level;
        END IF;


          IF (comprator = 11) THEN
        SELECT n_money.id_n_money, n_money.cod_lat_n_money FROM n_money;
        END IF;

          IF (comprator = 12) THEN
        SELECT n_incoms.id_n_incoms, n_incoms.name_n_incoms FROM n_incoms;
        END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`sl_procedure_case_in`
--

DROP PROCEDURE IF EXISTS `sl_procedure_case_in`;
DELIMITER $$

CREATE PROCEDURE `sl_procedure_case_in`(
              IN comprator INT(6),
              IN in_id INT(11),
              IN in_number_sl_mop INT(11),
              IN in_in_sl_mop INT(11),
              IN in_outsl_mop INT(11),
              IN in_id_order_spec INT(11),
              IN in_id_order_doc INT(11),
              IN in_date_is VARCHAR(10),
              IN in_id_n_money INT(11),
              IN in_exchange_rate DOUBLE(11,4),
              IN in_sum_sl_mop DOUBLE(11,4),
              IN in_sum_os_val_sl_mop DOUBLE(11,4),
              IN in_user_id INT(11),
              IN in_id_sdtn INT(11),
              IN in_comment_sl_mop VARCHAR(250),
              IN in_casaBegin INT(11),
              IN in_casaEnd INT(11),
              IN in_contragentBegin INT(11),
              IN in_contragentEnd INT(11),
              IN in_data_begin DATE,
              IN in_data_end DATE,
              IN in_level INT(11)
              )
BEGIN

   IF (comprator = 0) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            n_contragent.id_contragent,
            n_contragent.code_contragent,
            n_contragent.name_n_contragent,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            `n_money`.`cod_lat_n_money`,
            `sl_m_operation`.`date_is`,
            `sl_m_operation`.`exchange_rate`,
            `sl_m_operation`.`sum_sl_mop`,
            `sl_m_operation`.`sum_os_val_sl_mop`,
            `sl_m_operation`.`user_id`,
            `user_master`.`name_um`,
            `sl_m_operation`.`id_sdtn`,
            `sl_doc_type_num`.`name_sdtn`,
            `sl_m_operation`.`comment_sl_mop`
            FROM
            `sl_m_operation`
            LEFT Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
            LEFT Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`out_sl_mop`
            LEFT Join `sl_document_facade` ON `sl_document_facade`.`id_df` = `sl_m_operation`.`id_order_spec`
            LEFT Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
            LEFT Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_doc`
            LEFT Join `user_master` ON `user_master`.`id_um` = `sl_m_operation`.`user_id`
            LEFT Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `sl_m_operation`.`id_sdtn`
            WHERE
            `sl_m_operation`.`in_type_sl_mop` = 1 AND
            `sl_m_operation`.`out_type_sl_mop` = 3 AND
            `sl_m_operation`.`id_sdtn` = in_id_sdtn AND
            `sl_m_operation`.`levelx` = in_level;

     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `sl_m_operation`( `sl_m_operation`.`number_sl_mop`,
                                      `sl_m_operation`.`in_sl_mop`,
                                      `sl_m_operation`.`in_type_sl_mop`,
                                      `sl_m_operation`.`out_sl_mop`,
                                      `sl_m_operation`.`out_type_sl_mop`,
                                      `sl_m_operation`.`id_order_spec`,
                                      `sl_m_operation`.`id_order_spec_type`,
                                      `sl_m_operation`.`id_order_doc`,
                                      `sl_m_operation`.`date_is`,
                                      `sl_m_operation`.`id_n_money`,
                                      `sl_m_operation`.`exchange_rate`,
                                      `sl_m_operation`.`sum_sl_mop`,
                                      `sl_m_operation`.`sum_os_val_sl_mop`,
                                      `sl_m_operation`.`user_id`,
                                      `sl_m_operation`.`id_sdtn`,
                                      `sl_m_operation`.`comment_sl_mop`)
        VALUES(in_number_sl_mop,
               in_in_sl_mop,
               1,
               in_outsl_mop,
               3,
               in_id_order_spec,
               1,
               in_id_order_doc,
               in_date_is,
               in_id_n_money,
               in_exchange_rate,
               in_sum_sl_mop,
               in_sum_os_val_sl_mop,
               in_user_id,
               in_id_sdtn,
               in_comment_sl_mop
             );
     END IF;

     IF (comprator = 2) THEN
        UPDATE `sl_m_operation` SET
                                      `sl_m_operation`.`number_sl_mop` =  in_number_sl_mop,
                                      `sl_m_operation`.`in_sl_mop` = in_in_sl_mop,
                                      `sl_m_operation`.`in_type_sl_mop` = 1,
                                      `sl_m_operation`.`out_sl_mop` = in_outsl_mop,
                                      `sl_m_operation`.`out_type_sl_mop` = 3,
                                      `sl_m_operation`.`id_order_spec` = in_id_order_spec,
                                      `sl_m_operation`.`id_order_spec_type` = 1,
                                      `sl_m_operation`.`id_order_doc` = in_id_order_doc,
                                      `sl_m_operation`.`date_is` = in_date_is,
                                      `sl_m_operation`.`id_n_money` = in_id_n_money,

                                      `sl_m_operation`.`exchange_rate` = in_exchange_rate,

                                      `sl_m_operation`.`sum_sl_mop` = in_sum_sl_mop,
                                      `sl_m_operation`.`sum_os_val_sl_mop`= in_sum_os_val_sl_mop,
                                      `sl_m_operation`.`user_id`= in_user_id,
                                      `sl_m_operation`.`id_sdtn`= in_id_sdtn,
                                      `sl_m_operation`.`comment_sl_mop` = in_comment_sl_mop
        WHERE sl_m_operation.id_sl_mop = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `sl_m_operation`  WHERE  sl_m_operation.id_sl_mop = in_id;
     END IF;

      IF (comprator = 5) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            n_contragent.id_contragent,
            n_contragent.code_contragent,
            n_contragent.name_n_contragent,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            `n_money`.`cod_lat_n_money`,
            `sl_m_operation`.`date_is`,
            `sl_m_operation`.`exchange_rate`,
            `sl_m_operation`.`sum_sl_mop`,
            `sl_m_operation`.`sum_os_val_sl_mop`,
            `sl_m_operation`.`user_id`,
            `user_master`.`name_um`,
            `sl_m_operation`.`id_sdtn`,
            `sl_doc_type_num`.`name_sdtn`,
            `sl_m_operation`.`comment_sl_mop`
            FROM
            `sl_m_operation`
            LEFT Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
            LEFT Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`out_sl_mop`
            LEFT Join `sl_document_facade` ON `sl_document_facade`.`id_df` = `sl_m_operation`.`id_order_spec`
            LEFT Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
            LEFT Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_doc`
            LEFT Join `user_master` ON `user_master`.`id_um` = `sl_m_operation`.`user_id`
            LEFT Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `sl_m_operation`.`id_sdtn`
            WHERE
             sl_m_operation.in_sl_mop = ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_casaBegin AND in_casaEnd ) AND
             sl_m_operation.out_sl_mop = ANY (SELECT n_contragent.id_contragent FROM n_contragent WHERE n_contragent.code_contragent BETWEEN in_contragentBegin AND in_contragentEnd ) AND
             `sl_m_operation`.`date_is` BETWEEN  in_data_begin AND in_data_end AND
            `sl_m_operation`.`in_type_sl_mop` = 1 AND
            `sl_m_operation`.`out_type_sl_mop` = 3 AND
            `sl_m_operation`.`id_sdtn` = in_id_sdtn AND
            `sl_m_operation`.`levelx` = in_level;

       END IF;


         IF (comprator = 6) THEN
        SELECT n_casa.id_n_casa, n_casa.code_n_casa FROM `n_casa`;
        END IF;


        IF (comprator = 7) THEN
        SELECT MAX(sl_m_operation.id_sl_mop) FROM `sl_m_operation` n;
        END IF;

         IF (comprator = 8) THEN
        SELECT MAX(sl_m_operation.number_sl_mop) FROM sl_m_operation  WHERE sl_m_operation.id_sdtn = in_id_sdtn AND sl_m_operation.levelx = in_level;
        END IF;


          IF (comprator = 11) THEN
        SELECT n_money.id_n_money, n_money.cod_lat_n_money FROM `n_money`;
        END IF;

          IF (comprator = 12) THEN
        SELECT n_incoms.id_n_incoms, n_incoms.name_n_incoms FROM `n_incoms`;
        END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`sl_procedure_case_out`
--

DROP PROCEDURE IF EXISTS `sl_procedure_case_out`;
DELIMITER $$

CREATE PROCEDURE `sl_procedure_case_out`(
              IN comprator INT(6),
              IN in_id INT(11),
              IN in_number_sl_mop INT(11),
              IN in_in_sl_mop INT(11),
              IN in_outsl_mop INT(11),
              IN in_id_order_spec INT(11),
              IN in_id_order_doc INT(11),
              IN in_date_is VARCHAR(10),
              IN in_id_n_money INT(11),
              IN in_exchange_rate DOUBLE(11,4),
              IN in_sum_sl_mop DOUBLE(11,4),
              IN in_sum_os_val_sl_mop DOUBLE(11,4),
              IN in_user_id INT(11),
              IN in_id_sdtn INT(11),
              IN in_comment_sl_mop VARCHAR(250),
              IN in_casaBegin INT(11),
              IN in_casaEnd INT(11),
              IN in_contragentBegin INT(11),
              IN in_contragentEnd INT(11),
              IN in_data_begin DATE,
              IN in_data_end DATE,
              IN in_level INT(11)
              )
BEGIN

   IF (comprator = 0) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            n_contragent.id_contragent,
            n_contragent.code_contragent,
            n_contragent.name_n_contragent,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_expens.name_n_expens,
            sl_m_operation.id_n_money,
            `n_money`.`cod_lat_n_money`,
            `sl_m_operation`.`date_is`,
            `sl_m_operation`.`exchange_rate`,
            `sl_m_operation`.`sum_sl_mop`,
            `sl_m_operation`.`sum_os_val_sl_mop`,
            `sl_m_operation`.`user_id`,
            `user_master`.`name_um`,
            `sl_m_operation`.`id_sdtn`,
            `sl_doc_type_num`.`name_sdtn`,
            `sl_m_operation`.`comment_sl_mop`
            FROM
            `sl_m_operation`
            LEFT Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
            LEFT Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`in_sl_mop`
            LEFT Join `sl_document_facade` ON `sl_document_facade`.`id_df` = `sl_m_operation`.`id_order_spec`
            LEFT Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
            LEFT Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_doc`
            LEFT Join `user_master` ON `user_master`.`id_um` = `sl_m_operation`.`user_id`
            LEFT Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `sl_m_operation`.`id_sdtn`
            WHERE
            `sl_m_operation`.`in_type_sl_mop` = 3 AND
            `sl_m_operation`.`out_type_sl_mop` = 1 AND
            `sl_m_operation`.`id_sdtn` = in_id_sdtn AND
            `sl_m_operation`.`levelx` = in_level;

     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `sl_m_operation`( `sl_m_operation`.`number_sl_mop`,
                                      `sl_m_operation`.`in_sl_mop`,
                                      `sl_m_operation`.`in_type_sl_mop`,
                                      `sl_m_operation`.`out_sl_mop`,
                                      `sl_m_operation`.`out_type_sl_mop`,
                                      `sl_m_operation`.`id_order_spec`,
                                      `sl_m_operation`.`id_order_spec_type`,
                                      `sl_m_operation`.`id_order_doc`,
                                      `sl_m_operation`.`date_is`,
                                      `sl_m_operation`.`id_n_money`,
                                      `sl_m_operation`.`exchange_rate`,
                                      `sl_m_operation`.`sum_sl_mop`,
                                      `sl_m_operation`.`sum_os_val_sl_mop`,
                                      `sl_m_operation`.`user_id`,
                                      `sl_m_operation`.`id_sdtn`,
                                      `sl_m_operation`.`comment_sl_mop`)
        VALUES(in_number_sl_mop,
               in_outsl_mop,
               3,
               in_in_sl_mop,
               1,
               in_id_order_spec,
               1,
               in_id_order_doc,
               in_date_is,
               in_id_n_money,
               in_exchange_rate,
               in_sum_sl_mop,
               in_sum_os_val_sl_mop,
               in_user_id,
               in_id_sdtn,
               in_comment_sl_mop
             );
     END IF;

     IF (comprator = 2) THEN
        UPDATE `sl_m_operation` SET
                                      `sl_m_operation`.`number_sl_mop` =  in_number_sl_mop,
                                      `sl_m_operation`.`in_sl_mop` = in_outsl_mop,
                                      `sl_m_operation`.`in_type_sl_mop` = 3,
                                      `sl_m_operation`.`out_sl_mop` = in_in_sl_mop,
                                      `sl_m_operation`.`out_type_sl_mop` = 1,
                                      `sl_m_operation`.`id_order_spec` = in_id_order_spec,
                                      `sl_m_operation`.`id_order_spec_type` = 1,
                                      `sl_m_operation`.`id_order_doc` = in_id_order_doc,
                                      `sl_m_operation`.`date_is` = in_date_is,
                                      `sl_m_operation`.`id_n_money` = in_id_n_money,

                                      `sl_m_operation`.`exchange_rate` = in_exchange_rate,

                                      `sl_m_operation`.`sum_sl_mop` = in_sum_sl_mop,
                                      `sl_m_operation`.`sum_os_val_sl_mop`= in_sum_os_val_sl_mop,
                                      `sl_m_operation`.`user_id`= in_user_id,
                                      `sl_m_operation`.`id_sdtn`= in_id_sdtn,
                                      `sl_m_operation`.`comment_sl_mop` = in_comment_sl_mop
        WHERE sl_m_operation.id_sl_mop = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `sl_m_operation`  WHERE  sl_m_operation.id_sl_mop = in_id;
     END IF;

      IF (comprator = 5) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            n_contragent.id_contragent,
            n_contragent.code_contragent,
            n_contragent.name_n_contragent,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_expens.name_n_expens,
            sl_m_operation.id_n_money,
            `n_money`.`cod_lat_n_money`,
            `sl_m_operation`.`date_is`,
            `sl_m_operation`.`exchange_rate`,
            `sl_m_operation`.`sum_sl_mop`,
            `sl_m_operation`.`sum_os_val_sl_mop`,
            `sl_m_operation`.`user_id`,
            `user_master`.`name_um`,
            `sl_m_operation`.`id_sdtn`,
            `sl_doc_type_num`.`name_sdtn`,
            `sl_m_operation`.`comment_sl_mop`
            FROM
            `sl_m_operation`
            LEFT Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
            LEFT Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`in_sl_mop`
            LEFT Join `sl_document_facade` ON `sl_document_facade`.`id_df` = `sl_m_operation`.`id_order_spec`
            LEFT Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
            LEFT Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_doc`
            LEFT Join `user_master` ON `user_master`.`id_um` = `sl_m_operation`.`user_id`
            LEFT Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `sl_m_operation`.`id_sdtn`
            WHERE
             sl_m_operation.out_sl_mop= ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_casaBegin AND in_casaEnd ) AND
             sl_m_operation.in_sl_mop = ANY (SELECT n_contragent.id_contragent FROM n_contragent WHERE n_contragent.code_contragent BETWEEN in_contragentBegin AND in_contragentEnd ) AND
             `sl_m_operation`.`date_is` BETWEEN  in_data_begin AND in_data_end AND
            `sl_m_operation`.`in_type_sl_mop` = 3 AND
            `sl_m_operation`.`out_type_sl_mop` = 1 AND
            `sl_m_operation`.`id_sdtn` = in_id_sdtn AND
            `sl_m_operation`.`levelx` = in_level;

       END IF;


         IF (comprator = 6) THEN
        SELECT n_casa.id_n_casa, n_casa.code_n_casa FROM `n_casa`;
        END IF;


        IF (comprator = 7) THEN
        SELECT MAX(sl_m_operation.id_sl_mop) FROM `sl_m_operation` n;
        END IF;

         IF (comprator = 8) THEN
        SELECT MAX(sl_m_operation.number_sl_mop) FROM sl_m_operation  WHERE sl_m_operation.id_sdtn = in_id_sdtn AND sl_m_operation.levelx = in_level;
        END IF;


          IF (comprator = 11) THEN
        SELECT n_money.id_n_money, n_money.cod_lat_n_money FROM `n_money`;
        END IF;

          IF (comprator = 12) THEN
        SELECT n_expens.id_n_expens, n_expens.name_n_expens FROM `n_expens`;
        END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`sl_procedure_exchange_rate`
--

DROP PROCEDURE IF EXISTS `sl_procedure_exchange_rate`;
DELIMITER $$

CREATE PROCEDURE `sl_procedure_exchange_rate`(IN comprator TINYINT, IN in_id INT(10), IN in_date DATE, IN in_id_money INT(11), IN in_value DECIMAL(10,5))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_sl_exchange_rate, n.date_sl_exchange_rate, n.id_n_money, nm.cod_n_money, n.value_sl_exchange_rate
            FROM sl_exchange_rate n LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money ORDER BY n.id_sl_exchange_rate ASC;
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
                WHERE n.date_sl_exchange_rate LIKE CONCAT('%',in_date,'%') AND  nm.cod_n_money LIKE CONCAT('%',in_code_money,'%')
                ORDER BY n.id_sl_exchange_rate ASC;
     END IF;

     IF (comprator = 6) THEN
        SELECT nm.id_n_money, nm.cod_n_money FROM n_money nm WHERE nm.id_n_money = in_id_money;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_sl_exchange_rate) AS id FROM sl_exchange_rate n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.id_n_money) AS id_n_money FROM n_money n;
     END IF;

     IF (comprator = 9) THEN
       DELETE FROM sl_exchange_rate;
     END IF;

END $$

DELIMITER ;

--
-- Procedure `mida`.`sl_procedure_m`
--

DROP PROCEDURE IF EXISTS `sl_procedure_m`;
DELIMITER $$

CREATE PROCEDURE `sl_procedure_m`(IN vid INT(11),IN modulator INT(11), IN comprator INT(11), IN area VARCHAR(3),
                                         IN BGDATE VARCHAR(20), IN ENDDATE VARCHAR(20))
BEGIN


           IF (comprator = 0) THEN

                IF (vid = 0) THEN

                   IF (modulator = 1) THEN
                      SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `n_contragent`.`code_contragent`,
                        `n_contragent`.`name_n_contragent`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                      FROM
                        `sl_m_operation`
                      Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                      Inner Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`out_sl_mop`
                      Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_spec`
                      Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                      Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                      WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE

                       ;
                   END IF;

                    IF (modulator  =  2) THEN
                       SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_baccount`.`code_nbc`,
                        `n_baccount`.`name_nbc`,
                        `n_casa`.`name_n_casa`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                       FROM
                        `sl_m_operation`
                       Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                       Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_spec`
                       Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                       Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                       Inner Join `n_baccount` ON `n_baccount`.`id_nbc` = `sl_m_operation`.`out_sl_mop`
                       WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE

                       ;
                    END IF;

                    IF (modulator = 3) THEN
                       SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `ls_n_person`.`name_ls_n_person`,
                        `ls_n_person`.`code_ls_n_person`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                       FROM
                        `sl_m_operation`
                       Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                       Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_spec`
                       Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                       Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                       Inner Join `ls_n_person` ON `ls_n_person`.`id_ls_n_person` = `sl_m_operation`.`out_sl_mop`
                       WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                    END IF;


                END IF;


                IF (vid = 1) THEN

                        IF (modulator = 0) THEN
                         SELECT
                          `sl_m_operation`.`number_sl_mop`,
                          `casa_in`.`code_n_casa` AS `casa_code_in`,
                          `casa_in`.`name_n_casa` AS `case_name_in`,
                          `n_casa`.`name_n_casa` AS `casa_cde_out`,
                          `n_casa`.`code_n_casa` AS `casa_name_out`,
                          `n_expens`.`name_n_expens`,
                          `n_expens`.`code_n_expens`,
                          `sl_m_operation`.`date_is`,
                          `sl_m_operation`.`sum_sl_mop`,
                          `n_money`.`cod_n_money`,
                          `sl_exchange_rate`.`value_sl_exchange_rate`,
                          `sl_m_operation`.`sum_os_val_sl_mop`
                         FROM
                          `sl_m_operation`
                         Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                         Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                         Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                         Inner Join `n_casa` AS `casa_in` ON `casa_in`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                         Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                         WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                        END IF;

                        IF (modulator = 1) THEN
                         SELECT
                          `sl_m_operation`.`number_sl_mop`,
                          `n_casa`.`code_n_casa`,
                          `n_casa`.`name_n_casa`,
                          `n_contragent`.`code_contragent`,
                          `n_contragent`.`name_n_contragent`,
                          `n_expens`.`name_n_expens`,
                          `n_expens`.`code_n_expens`,
                          `sl_m_operation`.`date_is`,
                          `sl_m_operation`.`sum_sl_mop`,
                          `n_money`.`cod_n_money`,
                          `sl_exchange_rate`.`value_sl_exchange_rate`,
                          `sl_m_operation`.`sum_os_val_sl_mop`
                        FROM
                          `sl_m_operation`
                        Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                        Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                        Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                        Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                        Inner Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`in_sl_mop`
                        WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                        END IF;

                       IF (modulator = 2) THEN
                        SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `n_baccount`.`name_nbc`,
                        `n_baccount`.`code_nbc`,
                        `n_expens`.`name_n_expens`,
                        `n_expens`.`code_n_expens`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                        FROM
                        `sl_m_operation`
                        Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                        Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                        Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                        Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                        Inner Join `n_baccount` ON `n_baccount`.`id_nbc` = `sl_m_operation`.`in_sl_mop`
                        WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                        END IF;

                        IF (modulator = 3) THEN
                        SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `ls_n_person`.`code_ls_n_person`,
                        `ls_n_person`.`name_ls_n_person`,
                        `n_expens`.`name_n_expens`,
                        `n_expens`.`code_n_expens`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                        FROM
                        `sl_m_operation`
                        Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                        Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                        Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                        Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                        Inner Join `ls_n_person` ON `ls_n_person`.`id_ls_n_person` = `sl_m_operation`.`in_sl_mop`
                        WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                       END IF;

                END IF;
           END IF;


END $$

DELIMITER ;

--
-- Procedure `mida`.`sl_procedure_num_doc`
--

DROP PROCEDURE IF EXISTS `sl_procedure_num_doc`;
DELIMITER $$

CREATE PROCEDURE `sl_procedure_num_doc`(IN comprator TINYINT, IN in_id INT(11), IN in_id_doctype INT(11), IN in_area INT(3), IN in_name VARCHAR(40))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_sdtn, n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn
            FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd ORDER BY n.id_sdtn ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO sl_doc_type_num (id_ntd, area_number_sdtn, name_sdtn) VALUES(in_id_doctype, in_area, in_name);
     END IF;
     IF (comprator = 2) THEN
        UPDATE sl_doc_type_num SET id_ntd = in_id_doctype, area_number_sdtn = in_area, name_sdtn = in_name
        WHERE sl_doc_type_num.id_sdtn = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM sl_doc_type_num WHERE id_sdtn = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn FROM sl_doc_type_num n
            LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd WHERE n.id_sdtn = in_id;
     END IF;
     IF (comprator = 5) THEN
        IF (in_area = -1 ) THEN
        SELECT n.id_sdtn, n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn
               FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd
               WHERE n.name_sdtn LIKE CONCAT('%',in_name,'%') ORDER BY n.id_sdtn ASC;
        END IF;
        IF (in_area > -1 ) THEN
        SELECT n.id_sdtn, n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn
               FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd
               WHERE n.area_number_sdtn LIKE CONCAT('%',in_area,'%') AND  n.name_sdtn LIKE CONCAT('%',in_name,'%') ORDER BY n.id_sdtn ASC;
        END IF;
     END IF;
     IF (comprator = 6) THEN
        SELECT ntd.id_ntd, ntd.name_ntd FROM n_type_doc ntd;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_sdtn) FROM sl_doc_type_num n;
     END IF;
     IF (comprator = 8) THEN
        SELECT MAX(n.area_number_sdtn) AS area_number FROM sl_doc_type_num n;
     END IF;
     IF (comprator = 9) THEN
        SELECT MAX(ntd.id_ntd) AS id_ntd FROM n_type_doc ntd;
     END IF;
END $$

DELIMITER ;

--
-- Procedure `mida`.`test_docfacade`
--

DROP PROCEDURE IF EXISTS `test_docfacade`;
DELIMITER $$

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


END $$

DELIMITER ;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
