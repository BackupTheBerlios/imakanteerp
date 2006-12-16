
/* Beginning deployment of mida */ 

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `mida`;

/* Defining initial users for the mida DB*/

GRANT SELECT, EXECUTE ON *.* TO user1 IDENTIFIED BY 'user1';
GRANT ALL ON mida.* TO user1 IDENTIFIED BY 'user1';
GRANT SELECT, EXECUTE ON *.* TO user2 IDENTIFIED BY 'user2';
GRANT ALL ON mida.* TO user2 IDENTIFIED BY 'user2';
GRANT SELECT, EXECUTE ON *.* TO user3 IDENTIFIED BY 'user3';
GRANT ALL ON mida.* TO user3 IDENTIFIED BY 'user3';

/* Beginning deployment of data objects */

USE `mida`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `anlevel` */

DROP TABLE IF EXISTS `anlevel`;

CREATE TABLE `anlevel` (
  `id_al` int(10) NOT NULL auto_increment,
  `cod_al` varchar(45) NOT NULL,
  `name_al` varchar(45) NOT NULL,
  `comment_al` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id_al`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `anlevel` */

insert into `anlevel` (`id_al`,`cod_al`,`name_al`,`comment_al`) values (1,'001','СТОКА',''),(2,'002','КОНТРАГЕНТИ',''),(3,'003','БАНКИ',''),(4,'004','ВЪТРЕШНИ ОБЕКТИ',''),(5,'005','ПАРИЧНИ',''),(6,'006','ЛИЦА','');

/*Table structure for table `kind_paying` */

DROP TABLE IF EXISTS `kind_paying`;

CREATE TABLE `kind_paying` (
  `id_kp` int(10) unsigned NOT NULL auto_increment,
  `name_kp` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id_kp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `kind_paying` */

insert into `kind_paying` (`id_kp`,`name_kp`) values (1,'ОТЛОЖЕНО'),(2,'БРОЙ'),(3,'БАНКА'),(4,'ЧАСТИЧНО');

/*Table structure for table `log_action_nalich` */

DROP TABLE IF EXISTS `log_action_nalich`;

CREATE TABLE `log_action_nalich` (
  `id` int(11) NOT NULL auto_increment,
  `id_corect` int(11) default NULL,
  `bupdate` int(11) default NULL,
  `aupdate` int(11) default NULL,
  `uptime` timestamp NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `log_action_nalich` */

/*Table structure for table `log_ls_init_worker` */

DROP TABLE IF EXISTS `log_ls_init_worker`;

CREATE TABLE `log_ls_init_worker` (
  `id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) default NULL,
  `id_user` int(11) default NULL,
  `date_init` date default NULL,
  `time_init` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `log_ls_init_worker` */

/*Table structure for table `log_ls_osig` */

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

/*Data for the table `log_ls_osig` */

/*Table structure for table `log_ls_salary` */

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

/*Data for the table `log_ls_salary` */

/*Table structure for table `log_user_in` */

DROP TABLE IF EXISTS `log_user_in`;

CREATE TABLE `log_user_in` (
  `id` int(11) NOT NULL auto_increment,
  `id_user` int(11) default NULL,
  `ip_mashine` int(11) default NULL,
  `date_log` date default NULL,
  `time_log` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `log_user_in` */

/*Table structure for table `ls_addresses` */

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
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `ls_addresses` */

/*Table structure for table `ls_boln_impl` */

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

/*Data for the table `ls_boln_impl` */

/*Table structure for table `ls_bolnichni` */

DROP TABLE IF EXISTS `ls_bolnichni`;

CREATE TABLE `ls_bolnichni` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '0' COMMENT 'Р?РјРµ РЅР° РІРёРґР° Р±РѕР»РЅРёС‡РµРЅ',
  `cod` varchar(6) NOT NULL default '' COMMENT 'Р’СЉС‚СЂРµС?РµРЅ РєРѕРґ Р·Р° РІРёРґР° Р±РѕР»РЅРёС‡РµРЅ',
  `procent` decimal(3,2) unsigned NOT NULL default '0.00' COMMENT 'РџСЂРѕС†РµРЅС‚ РЅР° Р±РѕР»РЅРёС‡РЅРёСЏ',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `ls_bolnichni` */

/*Table structure for table `ls_dates` */

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

/*Data for the table `ls_dates` */

/*Table structure for table `ls_dlajnosti` */

DROP TABLE IF EXISTS `ls_dlajnosti`;

CREATE TABLE `ls_dlajnosti` (
  `id` int(11) NOT NULL auto_increment,
  `nomer` tinyint(4) default NULL,
  `namedlaj` varchar(50) default NULL,
  `id_ncl` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `ls_dlajnosti` */

/*Table structure for table `ls_dobavki` */

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

/*Data for the table `ls_dobavki` */

/*Table structure for table `ls_dod` */

DROP TABLE IF EXISTS `ls_dod`;

CREATE TABLE `ls_dod` (
  `Id` int(11) NOT NULL auto_increment,
  `datep` date default NULL,
  `doh` float default NULL,
  `sum` float default NULL,
  `prct` float default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `ls_dod` */

/*Table structure for table `ls_main` */

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

/*Data for the table `ls_main` */

/*Table structure for table `ls_monthpar` */

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

/*Data for the table `ls_monthpar` */

/*Table structure for table `ls_n_person` */

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

/*Data for the table `ls_n_person` */

insert into `ls_n_person` (`id_ls_n_person`,`id_n_group`,`code_ls_n_person`,`egn_ls_n_person`,`nlk_ls_n_person`,`name_ls_n_person`,`comment_ls_n_person`) values (1,4,1,'','','ИВАН ПЕТРОВ','Служител');

/*Table structure for table `ls_otdeli` */

DROP TABLE IF EXISTS `ls_otdeli`;

CREATE TABLE `ls_otdeli` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `code` int(11) default NULL,
  `name` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `ls_otdeli` */

/*Table structure for table `ls_otp_impl` */

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

/*Data for the table `ls_otp_impl` */

/*Table structure for table `ls_otpusk` */

DROP TABLE IF EXISTS `ls_otpusk`;

CREATE TABLE `ls_otpusk` (
  `id` smallint(4) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '' COMMENT 'Р?РјРµ РЅР° РѕС‚РїСѓСЃРє',
  `cod` varchar(6) NOT NULL default '' COMMENT 'РљРѕРґ РЅР° РІРёРґР° РѕС‚РїСѓСЃРє',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `ls_otpusk` */

/*Table structure for table `ls_pic` */

DROP TABLE IF EXISTS `ls_pic`;

CREATE TABLE `ls_pic` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rabotnik` int(11) default NULL,
  `pic` blob,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `ls_pic` */

insert into `ls_pic` (`Id`,`id_rabotnik`,`pic`) values (1,12,NULL);

/*Table structure for table `ls_result` */

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

/*Data for the table `ls_result` */

/*Table structure for table `ls_sluj` */

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

/*Data for the table `ls_sluj` */

/*Table structure for table `ls_vid_osiguren` */

DROP TABLE IF EXISTS `ls_vid_osiguren`;

CREATE TABLE `ls_vid_osiguren` (
  `Id` int(11) NOT NULL auto_increment,
  `kod` char(1) default NULL,
  `opisanie` varchar(64) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `ls_vid_osiguren` */

/*Table structure for table `marshruti` */

DROP TABLE IF EXISTS `marshruti`;

CREATE TABLE `marshruti` (
  `id_marsh` int(10) unsigned NOT NULL auto_increment,
  `name_marsh` varchar(100) default NULL,
  `comment_marsh` varchar(255) default NULL,
  `idtype_marsh` int(10) unsigned default NULL,
  `id_obekt` int(10) unsigned default NULL,
  PRIMARY KEY  (`id_marsh`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `marshruti` */

/*Table structure for table `mps` */

DROP TABLE IF EXISTS `mps`;

CREATE TABLE `mps` (
  `idmps` int(10) unsigned NOT NULL auto_increment,
  `idtype_mps` int(10) unsigned default NULL,
  `model_mps` int(10) unsigned default NULL,
  `rama_mps` varchar(50) default NULL,
  `eng_mps` varchar(50) default NULL,
  `qpozition_mps` int(10) unsigned default NULL,
  `qtiers_mps` int(10) unsigned default NULL,
  `masa_mps` int(10) unsigned default NULL,
  `year_man_mps` date default NULL,
  `date_eksploatation` date default NULL,
  `gps_system_mps` int(10) unsigned default '0',
  `reg_no` varchar(20) default NULL,
  `name_mps` varchar(20) default NULL,
  `comment_mps` varchar(255) default NULL,
  PRIMARY KEY  (`idmps`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `mps` */

/*Table structure for table `n_baccount` */

DROP TABLE IF EXISTS `n_baccount`;

CREATE TABLE `n_baccount` (
  `id_nbc` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned default NULL,
  `code_nbc` int(11) default NULL COMMENT 'cod na bankata',
  `name_nbc` varchar(45) default NULL COMMENT 'ime na bankata',
  `branch_nbc` varchar(45) default NULL COMMENT 'klon na bankata',
  `account_nbc` varchar(28) default NULL COMMENT 'Bankova smetka',
  `bic_nbc` varchar(11) default NULL,
  `id_n_money` int(11) unsigned default NULL,
  `address_nbc` varchar(100) default NULL,
  `id_tbacc` int(11) unsigned default '1',
  `comment_nbc` varchar(250) default NULL,
  PRIMARY KEY  (`id_nbc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='bankovi smetki';

/*Data for the table `n_baccount` */

/*Table structure for table `n_casa` */

DROP TABLE IF EXISTS `n_casa`;

CREATE TABLE `n_casa` (
  `id_n_casa` int(10) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `code_n_casa` int(11) unsigned NOT NULL default '0',
  `name_n_casa` varchar(40) collate cp1251_bulgarian_ci default NULL,
  `comments_n_casa` varchar(250) collate cp1251_bulgarian_ci default NULL,
  PRIMARY KEY  (`id_n_casa`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_bulgarian_ci COMMENT='kasi';

/*Data for the table `n_casa` */

insert into `n_casa` (`id_n_casa`,`id_n_group`,`code_n_casa`,`name_n_casa`,`comments_n_casa`) values (1,10,1,'ЦЕНТРАЛНА','');

/*Table structure for table `n_contragent` */

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
  `IBANR` varchar(30) default NULL,
  `BICR` varchar(20) default NULL,
  `VIDVALR` varchar(11) default NULL,
  `BANKNAMER` varchar(50) default NULL,
  `IBAND` varchar(30) default NULL,
  `BICD` varchar(11) default NULL,
  `VIDVALD` varchar(10) default NULL,
  `BANKNAMED` varchar(50) default NULL,
  PRIMARY KEY  (`id_contragent`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='kontragenti';

/*Data for the table `n_contragent` */

insert into `n_contragent` (`id_contragent`,`code_contragent`,`name_n_contragent`,`bul_n_contragent`,`dan_n_contragent`,`address_n_contragent`,`id_nm`,`tel_contragent`,`fax_contragent`,`email_contragent`,`web_contragent`,`id_mol`,`id_oso`,`flag_n_contragent`,`IBANR`,`BICR`,`VIDVALR`,`BANKNAMER`,`IBAND`,`BICD`,`VIDVALD`,`BANKNAMED`) values (1,1,'ПРИМЕРНА ФИРМА ЕООД','12010101','10101010101','ул. Победа 1',575,'+35900000001','','firma@mail.bg','http://www.firma.bg',1,1,0,'','','BGL','','','','BGL','');

/*Table structure for table `n_country` */

DROP TABLE IF EXISTS `n_country`;

CREATE TABLE `n_country` (
  `id_n_country` int(11) NOT NULL auto_increment,
  `code_n_country` int(11) default NULL,
  `name_n_country` varchar(30) default NULL,
  PRIMARY KEY  (`id_n_country`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_country` */

insert into `n_country` (`id_n_country`,`code_n_country`,`name_n_country`) values (1,1,'България'),(3,5,'САЩ'),(18,15,'Русия');

/*Table structure for table `n_doc_type_user_rights` */

DROP TABLE IF EXISTS `n_doc_type_user_rights`;

CREATE TABLE `n_doc_type_user_rights` (
  `id_ndtur` int(11) NOT NULL auto_increment,
  `id_um` int(11) NOT NULL default '0',
  `id_sdtn` int(11) NOT NULL,
  `rights_ndtur` int(11) NOT NULL default '3',
  PRIMARY KEY  (`id_ndtur`),
  UNIQUE KEY `compzite1` (`id_um`,`id_sdtn`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_doc_type_user_rights` */

insert into `n_doc_type_user_rights` (`id_ndtur`,`id_um`,`id_sdtn`,`rights_ndtur`) values (1,1,1,3),(2,1,4,3),(3,1,7,3),(4,1,10,3),(5,1,13,3),(6,1,14,3),(7,1,15,3),(8,1,18,3),(9,1,21,3),(10,1,24,3),(11,1,27,3),(12,1,28,3),(13,1,29,3),(14,1,30,3),(15,1,31,3),(16,1,32,3),(17,1,33,3),(18,2,2,3),(19,2,5,3),(20,2,8,3),(21,2,11,3),(22,2,13,3),(23,2,14,3),(24,2,16,3),(25,2,19,3),(26,2,22,3),(27,2,25,3),(28,2,27,3),(29,2,28,3),(30,2,29,3),(31,2,30,3),(32,2,31,3),(33,3,3,3),(34,3,6,3),(35,3,9,3),(36,3,12,3),(37,3,13,3),(38,3,14,3),(39,3,17,3),(40,3,20,3),(41,3,23,3),(42,3,26,3),(43,3,27,3),(44,3,31,3);

/*Table structure for table `n_expens` */

DROP TABLE IF EXISTS `n_expens`;

CREATE TABLE `n_expens` (
  `id_n_expens` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) NOT NULL,
  `code_n_expens` int(11) NOT NULL,
  `name_n_expens` varchar(50) default NULL,
  `comments_n_expens` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_expens`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='//tablitsa za razhodite';

/*Data for the table `n_expens` */

/*Table structure for table `n_group` */

DROP TABLE IF EXISTS `n_group`;

CREATE TABLE `n_group` (
  `id_n_group` int(11) NOT NULL auto_increment,
  `nom_n_group` int(11) default NULL,
  `cod_n_group` int(11) default NULL,
  `name_n_group` varchar(50) default NULL,
  `id_al` int(11) default NULL,
  PRIMARY KEY  (`id_n_group`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='vsichki vidove grupi';

/*Data for the table `n_group` */

insert into `n_group` (`id_n_group`,`nom_n_group`,`cod_n_group`,`name_n_group`,`id_al`) values (1,2,1,'ДОСТАВЧИЦИ',2),(2,2,2,'КЛИЕНТИ',2),(3,2,3,'БАНКИ',2),(4,3,1,'ВЪТРЕШНИ',6),(5,3,2,'ВЪНШНИ',6),(6,3,3,'РАЗРАБОТЧИЦИ',6),(7,0,1,'ШОКОЛАДОВИ БОНБОНИ',1),(8,4,1,'СТАЦИОНАРЕН',4),(9,4,2,'РАЗНОСЕН',4),(10,5,1,'СТАЦИОНАРНА',4),(11,5,2,'РАЗНОСНА',4),(12,6,1,'ПРИХОДИ',5),(13,6,2,'РАЗХОДИ',5),(14,6,3,'ВАЛУТИ',5),(15,6,4,'БАНКОВИ СМЕТКИ',5);

/*Table structure for table `n_incoms` */

DROP TABLE IF EXISTS `n_incoms`;

CREATE TABLE `n_incoms` (
  `id_n_incoms` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) NOT NULL,
  `code_n_incoms` int(11) NOT NULL,
  `name_n_incoms` varchar(40) default NULL,
  `comments_n_incoms` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_incoms`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='//tablitsa za prihodite';

/*Data for the table `n_incoms` */

/*Table structure for table `n_money` */

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

/*Data for the table `n_money` */

insert into `n_money` (`id_n_money`,`cod_n_money`,`cod_lat_n_money`,`name_n_money`,`comments_n_money`) values (1,1,'BGN','Лев','Парична единица на Република България'),(2,3,'USD','Щатски долар','Международна конвертитуема валута. Парична единица на САЩ'),(3,2,'EUR','Евро','Парична единица на Европейският Съюз'),(4,5,'JPY','Йена','Парична единица на Япония'),(5,4,'GBP','Паунд','Британска лира. Парична единица на Великобритания'),(6,19,'SEK','Шведска крона','Парична единица на Кралство Швеция'),(7,6,'CHF','Швейцарски франк','Парична единица на Швейцария');

/*Table structure for table `n_nm` */

DROP TABLE IF EXISTS `n_nm`;

CREATE TABLE `n_nm` (
  `id_n_nm` int(11) NOT NULL auto_increment,
  `postcode_n_nm` int(11) NOT NULL,
  `name_n_nm` varchar(20) default NULL,
  `id_n_oblast` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id_n_nm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='naseleni mesta';

/*Data for the table `n_nm` */

insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1,4645,'АБЛАНИЦА',13),(2,5574,'АБЛАНИЦА',11),(3,2932,'АБЛАНИЦА',1),(4,9407,'АБРИТ',8),(5,6797,'АВРАМОВО',9),(6,2795,'АВРАМОВО',1),(7,9135,'АВРЕН',3),(8,6930,'АВРЕН',9),(9,5431,'АГАТОВО',7),(10,5350,'АЗМАНИТЕ',7),(11,7538,'АЙДЕМИР',19),(12,6639,'АЙРОВО',9),(13,8500,'АЙТОС',2),(14,4483,'АКАНДЖИЕВО',13),(15,3727,'АКАЦИЕВО',5),(16,9154,'АКСАКОВО',3),(17,4984,'АЛАМОВЦИ',21),(18,6850,'АЛБАНЦИ',9),(19,9620,'АЛБЕНА',8),(20,7752,'АЛВАНОВО',25),(21,2222,'АЛДОМИРОВЦИ',22),(22,4411,'АЛЕКО КОНСТАНТИНОВО',13),(23,7555,'АЛЕКОВО',19),(24,5288,'АЛЕКОВО',4),(25,9404,'АЛЕКСАНДРИЯ',8),(26,4656,'АЛЕКСАНДРОВА',13),(27,5560,'АЛЕКСАНДРОВО',11),(28,6154,'АЛЕКСАНДРОВО',24),(29,8211,'АЛЕКСАНДРОВО',2),(30,5289,'АЛЕКСАНДРОВО',4),(31,9829,'АЛЕКСАНДРОВО',27),(32,8653,'АЛЕКСАНДРОВО',28),(33,7761,'АЛЕКСАНДРОВО',25),(34,6351,'АЛЕКСАНДРОВО',26),(35,9565,'АЛЕКСАНДЪР СТАМБОЛИ',8),(36,4621,'АЛЕНДАРОВА',13),(37,4787,'АЛИГОВСКА',21),(38,2019,'АЛИНО',22),(39,3251,'АЛТИМИР',6),(40,7570,'АЛФАТАР',19),(41,9496,'АЛЦЕК',8),(42,6373,'АНГЕЛ ВОЙВОДА',26),(43,9483,'АНГЕЛАРИЙ',8),(44,5342,'АНГЕЛОВ',7),(45,2085,'АНГЕЛОВ ДОЛ',22),(46,4331,'АНЕВО',16),(47,3776,'АНТИМОВО',5),(48,7628,'АНТИМОВО',19),(49,2089,'АНТОН',22),(50,7970,'АНТОНОВО',25),(51,5094,'АПЛАЦИ',4),(52,2128,'АПРИЛОВО',22),(53,6281,'АПРИЛОВО',24),(54,7864,'АПРИЛОВО',25),(55,5641,'АПРИЛЦИ',11),(56,4445,'АПРИЛЦИ',13),(57,5029,'АРБАНАСИ',4),(58,4790,'АРДА',21),(59,6750,'АРДИНО',9),(60,2386,'АРЗАН',14),(61,9246,'АРКОВНА',3),(62,5347,'АРМЕНИТЕ',7),(63,5363,'АРМЯНКОВЦИ',7),(64,6069,'АРНАУТИТО',24),(65,4922,'АРПАДЖИК',21),(66,3770,'АРЧАР',5),(67,6149,'АСЕН',24),(68,5738,'АСЕН',11),(69,4230,'АСЕНОВГРАД',16),(70,8933,'АСЕНОВЕЦ',20),(71,5957,'АСЕНОВО',15),(72,5159,'АСЕНОВО',4),(73,8667,'АСЕНОВО',28),(74,5913,'АСЕНОВЦИ',15),(75,9260,'АСПАРУХОВО',3),(76,8485,'АСПАРУХОВО',2),(77,5914,'АСПАРУХОВО',15),(78,3661,'АСПАРУХОВО',12),(79,8140,'АТИЯ',2),(80,8683,'АТОЛОВО',28),(81,6821,'АУСТА',9),(82,8217,'АХЕЛОЙ',2),(83,4128,'АХМАТОВО',16),(84,6761,'АХРЯНСКО',9),(85,8280,'АХТОПОЛ',2),(86,5632,'БАБА СТАНА',11),(87,7861,'БАБА ТОНКА',25),(88,4156,'БАБЕК',16),(89,2683,'БАБИНО',10),(90,2668,'БАБИНСКА РЕКА',10),(91,5726,'БАБИНЦИ',11),(92,2365,'БАБИЦА',14),(93,4774,'БАБЛОН',21),(94,7068,'БАБОВО',18),(95,7573,'БАБУК',19),(96,2784,'БАБЯК',1),(97,5094,'БАГАЛЕВЦИ',4),(98,6749,'БАГРА',9),(99,2530,'БАГРЕНЦИ',10),(100,6944,'БАГРИЛЦИ',9),(101,6819,'БАГРЯНКА',9),(102,5093,'БАДЕВЦИ',4),(103,2676,'БАДИНО',10),(104,5441,'БАЕВА ЛИВАДА',7),(105,5304,'БАЕВЦИ',7),(106,5087,'БАЕВЦИ',4),(107,5095,'БАЖДАРИ',4),(108,5861,'БАЙКАЛ',15),(109,2427,'БАЙКАЛСКО',14),(110,9767,'БАЙКОВО',27),(111,2133,'БАЙЛОВО',22),(112,6771,'БАЙЧЕВО',9),(113,6698,'БАКАЛИТЕ',9),(114,2295,'БАКЬОВО',22),(115,6816,'БАЛАБАНОВО',9),(116,5615,'БАЛАБАНСКА',11),(117,8471,'БАЛАБАНЧЕВО',2),(118,5370,'БАЛАЛЕЯ',7),(119,5301,'БАЛАНИТЕ',7),(120,2680,'БАЛАНОВО',10),(121,5064,'БАЛВАН',4),(122,5388,'БАЛВАНЦИТЕ',7),(123,2948,'БАЛДЕВО',1),(124,3797,'БАЛЕЙ',5),(125,9485,'БАЛИК',8),(126,5343,'БАЛИНОВЦИ',7),(127,6363,'БАЛКАН',26),(128,4245,'БАЛКАН МАХАЛА',16),(129,5634,'БАЛКАНЕЦ',11),(130,7265,'БАЛКАНСКИ',17),(131,9549,'БАЛКАНЦИ',8),(132,5162,'БАЛКАНЦИ',4),(133,5081,'БАЛУЦИ',4),(134,9600,'БАЛЧИК',8),(135,1217,'БАЛША',22),(136,2060,'БАЛЬОВЦИ',22),(137,3529,'БАЛЮВИЦА',12),(138,5370,'БАНАРИ',7),(139,5351,'БАНГЕЙЦИ',7),(140,8125,'БАНЕВО',2),(141,7167,'БАНИСКА',18),(142,4940,'БАНИТЕ',21),(143,3077,'БАНИЦА',6),(144,2905,'БАНИЧАН',1),(145,2388,'БАНИЩЕ',14),(146,7997,'БАНКОВЕЦ',25),(147,5300,'БАНКОВЦИ',7),(148,1320,'БАНКЯ',22),(149,2466,'БАНКЯ',14),(150,9144,'БАНОВО',3),(151,2770,'БАНСКО',1),(152,2060,'БАНЧОВЦИ',22),(153,4360,'БАНЯ',16),(154,8239,'БАНЯ',2),(155,8914,'БАНЯ',20),(156,4523,'БАНЯ',13),(157,2778,'БАНЯ',1),(158,2634,'БАРАКОВО',10),(159,6910,'БАРАЦИ',9),(160,4830,'БАРУТИН',21),(161,7071,'БАСАРБОВО',18),(162,2883,'БАСКАЛЦИ',1),(163,8218,'БАТА',2),(164,4580,'БАТАК',13),(165,5228,'БАТАК',4),(166,2340,'БАТАНОВЦИ',14),(167,7172,'БАТИН',18),(168,7169,'БАТИШНИЦА',18),(169,9364,'БАТОВО',8),(170,5470,'БАТОШЕВО',7),(171,2295,'БАТУЛИЯ',22),(172,5764,'БАТУЛЦИ',11),(173,3068,'БАУРЕНЕ',6),(174,2219,'БАХАЛИН',22),(175,5567,'БАХОВИЦА',11),(176,5367,'БАХРЕЦИ',7),(177,5948,'БАЦОВА МАХАЛА',15),(178,2769,'БАЧЕВО',1),(179,4251,'БАЧКОВО',16),(180,6777,'БАШЕВО',9),(181,7619,'БАЩИНО',19),(182,6669,'БАЩИНО',9),(183,6068,'БАЩИНО',24),(184,7745,'БАЯЧЕВО',25),(185,9381,'БДИНЦИ',8),(186,5084,'БЕБРОВО',4),(187,5872,'БЕГЛЕЖ',15),(188,4166,'БЕГОВО',16),(189,2395,'БЕГУНОВЦИ',14),(190,4359,'БЕГУНЦИ',16),(191,4817,'БЕДЕН',21),(192,9924,'БЕДЖЕНЕ',27),(193,6716,'БЕДРОВО',9),(194,9567,'БЕЖАНОВО',8),(195,5792,'БЕЖАНОВО',11),(196,9637,'БЕЗВОДИЦА',8),(197,6718,'БЕЗВОДНО',9),(198,2236,'БЕЗДЕН',22),(199,3454,'БЕЗДЕНИЦА',12),(200,9480,'БЕЗМЕР',8),(201,8637,'БЕЗМЕР',28),(202,5094,'БЕЙКОВЦИ',4),(203,5673,'БЕКЛЕМЕТО',11),(204,5300,'БЕКРИИТЕ',7),(205,2793,'БЕЛ КАМЕН',1),(206,3965,'БЕЛА',5),(207,3731,'БЕЛА РАДА',5),(208,2881,'БЕЛАСИЦА',1),(209,4124,'БЕЛАЩИЦА',16),(210,9690,'БЕЛГУН',8),(211,4738,'БЕЛЕВ ДОЛ',21),(212,2800,'БЕЛЕВЕХЧЕВО',1),(213,8345,'БЕЛЕВРЕН',2),(214,2085,'БЕЛЕГА',22),(215,5930,'БЕЛЕНЕ',15),(216,5783,'БЕЛЕНЦИ',11),(217,3441,'БЕЛИ БРЕГ',12),(218,3447,'БЕЛИ БРОД',12),(219,6262,'БЕЛИ БРЯГ',24),(220,6702,'БЕЛИ ВИР',9),(221,6590,'БЕЛИ ДОЛ',26),(222,3040,'БЕЛИ ИЗВОР',6),(223,2011,'БЕЛИ ИСКЪР',22),(224,7293,'БЕЛИ ЛОМ',17),(225,5662,'БЕЛИ ОСЪМ',11),(226,6689,'БЕЛИ ПЛАСТ',9),(227,8316,'БЕЛИЛА',2),(228,3462,'БЕЛИМЕЛ',12),(229,7432,'БЕЛИНЦИ',17),(230,2780,'БЕЛИЦА',1),(231,2062,'БЕЛИЦА',22),(232,4242,'БЕЛИЦА',16),(233,6557,'БЕЛИЦА',26),(234,5363,'БЕЛИЦА',7),(235,7648,'БЕЛИЦА',19),(236,5628,'БЕЛИШ',11),(237,2709,'БЕЛО ПОЛЕ',1),(238,3961,'БЕЛО ПОЛЕ',5),(239,7321,'БЕЛОВЕЦ',17),(240,4182,'БЕЛОВИЦА',16),(241,4470,'БЕЛОВО',13),(242,9230,'БЕЛОГРАДЕЦ',3),(243,3900,'БЕЛОГРАДЧИК',5),(244,8219,'БЕЛОДОЛ',2),(245,4130,'БЕЛОЗЕМ',16),(246,9801,'БЕЛОКОПИТОВО',27),(247,7917,'БЕЛОМОРЦИ',25),(248,5340,'БЕЛОМЪЖИТЕ',7),(249,6588,'БЕЛОПОЛЦИ',26),(250,6584,'БЕЛОПОЛЯНЕ',26),(251,2132,'БЕЛОПОПЦИ',22),(252,9178,'БЕЛОСЛАВ',3),(253,3499,'БЕЛОТИНЦИ',12),(254,7138,'БЕЛЦОВ',18),(255,5035,'БЕЛЧЕВЦИ',4),(256,2025,'БЕЛЧИН',22),(257,2024,'БЕЛЧИНСКИ БАНИ',22),(258,2824,'БЕЛЬОВО',1),(259,5031,'БЕЛЯКОВЕЦ',4),(260,7134,'БЕЛЯНОВО',18),(261,9133,'БЕНКОВСКИ',3),(262,9380,'БЕНКОВСКИ',8),(263,6865,'БЕНКОВСКИ',9),(264,4201,'БЕНКОВСКИ',16),(265,2076,'БЕНКОВСКИ',22),(266,6055,'БЕНКОВСКИ',24),(267,2488,'БЕРАЙНЦИ',14),(268,2212,'БЕРЕНДЕ',22),(269,2435,'БЕРЕНДЕ',14),(270,2212,'БЕРЕНДЕ ИЗВОР',22),(271,5438,'БЕРИЕВО',7),(272,3500,'БЕРКОВИЦА',12),(273,7857,'БЕРКОВСКИ',25),(274,5093,'БЕРКОВЦИ',4),(275,8448,'БЕРОНОВО',2),(276,2587,'БЕРСИН',10),(277,2934,'БЕСЛЕН',1),(278,6698,'БЕСНУРКА',9),(279,5849,'БИВОЛАРЕ',15),(280,6837,'БИВОЛЯНЕ',9),(281,5035,'БИЖОВЦИ',4),(282,5350,'БИЖОВЦИ',7),(283,8885,'БИКОВО',20),(284,2383,'БИЛИНЦИ',14),(285,8551,'БИЛКА',2),(286,5370,'БИЛКИНИ',7),(287,9691,'БИЛО',8),(288,8846,'БИЛО',20),(289,4789,'БИЛЯНСКА',21),(290,8855,'БИНКОС',20),(291,4650,'БИРКОВА',13),(292,6470,'БИСЕР',26),(293,7334,'БИСЕРЦИ',17),(294,7557,'БИСТРА',19),(295,7777,'БИСТРА',25),(296,7121,'БИСТРЕНЦИ',18),(297,9412,'БИСТРЕЦ',8),(298,8334,'БИСТРЕЦ',2),(299,3527,'БИСТРИЛИЦА',12),(300,2724,'БИСТРИЦА',1),(301,2644,'БИСТРИЦА',10),(302,1444,'БИСТРИЦА',22),(303,6769,'БИСТРОГЛЕД',9),(304,3488,'БЛАГОВО',12),(305,9812,'БЛАГОВО',27),(306,2700,'БЛАГОЕВГРАД',1),(307,7275,'БЛАГОЕВО',17),(308,5178,'БЛАГОЕВО',4),(309,6955,'БЛАГУН',9),(310,2678,'БЛАЖИЕВО',10),(311,2548,'БЛАТЕЦ',10),(312,8878,'БЛАТЕЦ',20),(313,2441,'БЛАТЕШНИЦА',14),(314,2617,'БЛАТИНО',10),(315,4537,'БЛАТНИЦА',13),(316,2657,'БЛАТО',10),(317,2941,'БЛАТСКА',1),(318,6742,'БЛЕНИКА',9),(319,8365,'БЛИЗНАК',2),(320,9132,'БЛИЗНАЦИ',3),(321,9787,'БЛИЗНАЦИ',27),(322,8896,'БЛИЗНЕЦ',20),(323,9240,'БЛЪСКОВО',3),(324,5078,'БЛЪСКОВЦИ',4),(325,5453,'БОАЗЪТ',7),(326,5300,'БОБЕВЦИ',7),(327,2567,'БОБЕШИНО',10),(328,2670,'БОБОВ ДОЛ',10),(329,9616,'БОБОВЕЦ',8),(330,2454,'БОБОРАЦИ',14),(331,2660,'БОБОШЕВО',10),(332,2270,'БОВ',22),(333,5421,'БОГАТОВО',7),(334,9348,'БОГДАН',8),(335,4343,'БОГДАН',16),(336,4115,'БОГДАНИЦА',16),(337,2116,'БОГДАНЛИЯ',22),(338,2341,'БОГДАНОВ ДОЛ',14),(339,8948,'БОГДАНОВО',20),(340,8337,'БОГДАНОВО',2),(341,2060,'БОГДАНОВЦИ',22),(342,5084,'БОГДАНСКО',4),(343,7611,'БОГДАНЦИ',19),(344,7449,'БОГДАНЦИ',17),(345,5301,'БОГДАНЧОВЦИ',7),(346,2467,'БОГОИНА',14),(347,2931,'БОГОЛИН',1),(348,6460,'БОГОМИЛ',26),(349,6065,'БОГОМИЛОВО',24),(350,7458,'БОГОМИЛЦИ',17),(351,7997,'БОГОМОЛСКО',25),(352,7542,'БОГОРОВО',19),(353,8687,'БОГОРОВО',28),(354,2509,'БОГОСЛОВ',10),(355,4855,'БОГУТЕВО',21),(356,2235,'БОГЬОВЦИ',22),(357,3128,'БОДЕНЕЦ',6),(358,6446,'БОДРОВО',26),(359,2086,'БОДЯТ',22),(360,4964,'БОЕВО',21),(361,2066,'БОЕРИЦА',22),(362,6744,'БОЖАК',9),(363,9475,'БОЖАН',8),(364,9677,'БОЖАНОВО',8),(365,2811,'БОЖДОВО',1),(366,8844,'БОЖЕВЦИ',20),(367,2157,'БОЖЕНИЦА',22),(368,5349,'БОЖЕНЦИТЕ',7),(369,7089,'БОЖИЧЕН',18),(370,9656,'БОЖУРЕЦ',8),(371,5848,'БОЖУРИЦА',15),(372,2227,'БОЖУРИЩЕ',22),(373,7765,'БОЖУРКА',25),(374,5926,'БОЖУРЛУК',15),(375,9874,'БОЖУРОВО',27),(376,9368,'БОЖУРОВО',8),(377,7335,'БОЖУРОВО',17),(378,6704,'БОЖУРЦИ',9),(379,8872,'БОЗАДЖИИ',20),(380,9273,'БОЗВЕЛИЙСКО',3),(381,6269,'БОЗДУГАНОВО',24),(382,4654,'БОЗЬОВА',13),(383,7683,'БОИЛ',19),(384,2181,'БОЙКОВЕЦ',22),(385,4103,'БОЙКОВО',16),(386,5080,'БОЙКОВЦИ',4),(387,6958,'БОЙНИК',9),(388,3840,'БОЙНИЦА',5),(389,6730,'БОЙНО',9),(390,5307,'БОЙНОВЦИ',7),(391,5050,'БОЙЧЕВИ КОЛИБИ',4),(392,5309,'БОЙЧЕТА',7),(393,3430,'БОЙЧИНОВЦИ',12),(394,5038,'БОЙЧОВЦИ',4),(395,3517,'БОКИЛОВЦИ',12),(396,5340,'БОЛТАТА',7),(397,4132,'БОЛЯРИНО',16),(398,8720,'БОЛЯРОВО',28),(399,6474,'БОЛЯРСКИ ИЗВОР',26),(400,8631,'БОЛЯРСКО',28),(401,9124,'БОЛЯРЦИ',3),(402,6681,'БОЛЯРЦИ',9),(403,4114,'БОЛЯРЦИ',16),(404,9472,'БОНЕВО',8),(405,4233,'БОР',16),(406,4144,'БОРЕЦ',16),(407,4961,'БОРИЕ',21),(408,2064,'БОРИКА',22),(409,4926,'БОРИКА',21),(410,5335,'БОРИКИ',7),(411,4762,'БОРИКОВО',21),(412,3838,'БОРИЛОВЕЦ',5),(413,6046,'БОРИЛОВО',24),(414,5672,'БОРИМА',11),(415,4464,'БОРИМЕЧКОВО',13),(416,4824,'БОРИНО',21),(417,4905,'БОРИНОВО',21),(418,8999,'БОРИНЦИ',20),(419,5889,'БОРИСЛАВ',15),(420,6478,'БОРИСЛАВЦИ',26),(421,8731,'БОРИСОВО',28),(422,7064,'БОРИСОВО',18),(423,2407,'БОРНАРЕВО',14),(424,8898,'БОРОВ ДОЛ',20),(425,3240,'БОРОВАН',6),(426,2626,'БОРОВЕЦ',10),(427,2010,'БОРОВЕЦ',22),(428,4923,'БОРОВИНА',21),(429,6790,'БОРОВИЦА',9),(430,3955,'БОРОВИЦА',5),(431,2884,'БОРОВИЧЕНЕ',1),(432,7174,'БОРОВО',18),(433,2904,'БОРОВО',1),(434,4243,'БОРОВО',16),(435,6070,'БОРОВО',24),(436,6698,'БОРОВСКО',9),(437,3528,'БОРОВЦИ',12),(438,5333,'БОРСКОТО',7),(439,6187,'БОРУЩИЦА',24),(440,9752,'БОРЦИ',27),(441,9255,'БОРЯНА',3),(442,5084,'БОСЕВЦИ',4),(443,6697,'БОСИЛИЦА',9),(444,4945,'БОСИЛКОВО',21),(445,8446,'БОСИЛКОВО',2),(446,7128,'БОСИЛКОВЦИ',18),(447,7533,'БОСНА',19),(448,2345,'БОСНЕК',14),(449,7914,'БОСТАН',25),(450,3952,'БОСТАНИТЕ',5),(451,6716,'БОСТАНЦИ',9),(452,4745,'БОСТИНА',21),(453,2140,'БОТЕВГРАД',22),(454,9159,'БОТЕВО',3),(455,3746,'БОТЕВО',5),(456,3634,'БОТЕВО',12),(457,8638,'БОТЕВО',28),(458,3353,'БОТЕВО',6),(459,7125,'БОТРОВ',18),(460,3046,'БОТУНЯ',6),(461,6589,'БОТУРЧЕ',26),(462,2483,'БОХОВА',14),(463,5891,'БОХОТ',15),(464,5035,'БОЧКОВЦИ',4),(465,4481,'БОШУЛЯ',13),(466,8640,'БОЯДЖИК',28),(467,9771,'БОЯН',27),(468,6374,'БОЯН БОТЕВО',26),(469,9147,'БОЯНА',3),(470,3832,'БОЯНОВО',5),(471,8730,'БОЯНОВО',28),(472,5041,'БОЯНОВЦИ',4),(473,4246,'БОЯНЦИ',16),(474,7568,'БРАДВАРИ',19),(475,7855,'БРАКНИЦА',25),(476,2251,'БРАКЬОВЦИ',22),(477,4109,'БРАНИПОЛЕ',16),(478,6463,'БРАНИЦА',26),(479,9967,'БРАНИЧЕВО',27),(480,9361,'БРАНИЩЕ',8),(481,5041,'БРАНКОВЦИ',4),(482,3824,'БРАНКОВЦИ',5),(483,8983,'БРАТАН',20),(484,4412,'БРАТАНИЦА',13),(485,8111,'БРАТОВО',2),(486,7764,'БРАТОВО',25),(487,2222,'БРАТУШКОВО',22),(488,6250,'БРАТЯ ДАСКАЛОВИ',24),(489,6057,'БРАТЯ КУНЧЕВИ',24),(490,4579,'БРАЦИГОВО',13),(491,5862,'БРЕГАРЕ',15),(492,3790,'БРЕГОВО',5),(493,2750,'БРЕЖАНИ',1),(494,5360,'БРЕЖНИЦИТЕ',7),(495,4959,'БРЕЗА',21),(496,4849,'БРЕЗЕ',21),(497,2278,'БРЕЗЕ',22),(498,6792,'БРЕЗЕН',9),(499,2360,'БРЕЗНИК',14),(500,2972,'БРЕЗНИЦА',1),(501,2385,'БРЕЗНИШКИ ИЗВОР',14),(502,2292,'БРЕЗОВДОЛ',22),(503,4160,'БРЕЗОВО',16),(504,5083,'БРЕЗОВО',4),(505,5721,'БРЕЗОВО',11),(506,3260,'БРЕНИЦА',6),(507,7649,'БРЕНИЦА',19),(508,5971,'БРЕСТ',15),(509,2558,'БРЕСТ',10),(510,9290,'БРЕСТАК',3),(511,2072,'БРЕСТАКА',22),(512,5992,'БРЕСТЕ',15),(513,4107,'БРЕСТНИК',16),(514,9484,'БРЕСТНИЦА',8),(515,5761,'БРЕСТНИЦА',11),(516,6194,'БРЕСТОВА',24),(517,7331,'БРЕСТОВЕНЕ',17),(518,5884,'БРЕСТОВЕЦ',15),(519,7177,'БРЕСТОВИЦА',18),(520,4224,'БРЕСТОВИЦА',16),(521,5551,'БРЕСТОВО',11),(522,2735,'БРЕСТОВО',1),(523,6442,'БРОД',26),(524,8282,'БРОДИЛОВО',2),(525,6737,'БРОШ',9),(526,3680,'БРУСАРЦИ',12),(527,6488,'БРУСЕВЦИ',26),(528,2185,'БРУСЕН',22),(529,3126,'БРУСЕН',6),(530,6595,'БРУСИНО',26),(531,2372,'БРУСНИК',14),(532,5342,'БРЪНЕЦИТЕ',7),(533,5081,'БРЪЧКОВЦИ',4),(534,7069,'БРЪШЛЕН',18),(535,8357,'БРЪШЛЯН',2),(536,5844,'БРЪШЛЯНИЦА',15),(537,4821,'БРЪЩЕН',21),(538,6929,'БРЯГОВЕЦ',9),(539,5152,'БРЯГОВИЦА',4),(540,4294,'БРЯГОВО',16),(541,6355,'БРЯГОВО',26),(542,6434,'БРЯСТ',26),(543,8113,'БРЯСТОВЕЦ',2),(544,9647,'БРЯСТОВО',8),(545,6345,'БРЯСТОВО',26),(546,8935,'БРЯСТОВО',20),(547,6582,'БУБИНО',26),(548,2844,'БУДИЛЦИ',1),(549,6159,'БУЗОВГРАД',24),(550,2060,'БУЗЯКОВЦИ',22),(551,9756,'БУЙНОВИЦА',27),(552,4812,'БУЙНОВО',21),(553,7753,'БУЙНОВО',17),(554,5097,'БУЙНОВЦИ',4),(555,6966,'БУК',9),(556,7996,'БУКАК',25),(557,4763,'БУКАТА',21),(558,4782,'БУКАЦИТЕ',21),(559,4935,'БУКОВА ПОЛЯНА',21),(560,3678,'БУКОВЕЦ',12),(561,3242,'БУКОВЕЦ',6),(562,5063,'БУКОВЕЦ',4),(563,3762,'БУКОВЕЦ',5),(564,2293,'БУКОВЕЦ',22),(565,5839,'БУКОВЛЪК',15),(566,2915,'БУКОВО',1),(567,4930,'БУКОВО',21),(568,4295,'БУКОВО',16),(569,2253,'БУКОРОВЦИ',22),(570,9115,'БУЛАИР',3),(571,2539,'БУНОВО',10),(572,2074,'БУНОВО',22),(573,2792,'БУНЦЕВО',1),(574,2628,'БУРАНОВО',10),(575,8000,'БУРГАС',2),(576,8124,'БУРГАСКИ МИН. БАНИ',2),(577,4998,'БУРЕВО',21),(578,5375,'БУРЯ',7),(579,2486,'БУСИНЦИ',14),(580,1520,'БУСМАНЦИ',22),(581,3326,'БУТАН',6),(582,5232,'БУТОВО',4),(583,4652,'БУТРЕВА',13),(584,2473,'БУТРОИНЦИ',14),(585,1830,'БУХОВО',22),(586,7757,'БУХОВЦИ',25),(587,2236,'БУЧИН ПРОХОД',22),(588,2742,'БУЧИНО',1),(589,5380,'БУЧУКОВЦИ',7),(590,6058,'БЪДЕЩЕ',24),(591,3635,'БЪЗОВЕЦ',12),(592,7168,'БЪЗОВЕЦ',18),(593,2555,'БЪЗОВИЦА',10),(594,7077,'БЪЗЪН',18),(595,7944,'БЪЛГАРАНОВО',25),(596,9660,'БЪЛГАРЕВО',8),(597,5923,'БЪЛГАРЕНЕ',15),(598,5583,'БЪЛГАРЕНЕ',11),(599,6274,'БЪЛГАРЕНЕ',24),(600,5441,'БЪЛГАРИ',7),(601,8274,'БЪЛГАРИ',2),(602,6460,'БЪЛГАРИН',26),(603,7544,'БЪЛГАРКА',19),(604,8110,'БЪЛГАРОВО',2),(605,6569,'БЪЛГАРСКА ПОЛЯНА',26),(606,5733,'БЪЛГАРСКИ ИЗВОР',11),(607,5284,'БЪЛГАРСКО СЛИВОВО',4),(608,2746,'БЪЛГАРЧЕВО',1),(609,6186,'БЪНЗАРЕТО',24),(610,9117,'БЪРДАРЕВО',3),(611,5360,'БЪРДАРИТЕ',7),(612,3259,'БЪРДАРСКИ ГЕРАН',6),(613,5365,'БЪРДЕНИ',7),(614,2060,'БЪРДО',22),(615,7448,'БЪРДОКВА',17),(616,6710,'БЪРЗА РЕКА',9),(617,6884,'БЪРЗЕЯ',9),(618,3359,'БЪРЗИНА',6),(619,9274,'БЪРЗИЦА',3),(620,3520,'БЪРЗИЯ',12),(621,5877,'БЪРКАЧ',15),(622,3245,'БЪРКАЧЕВО',6),(623,2222,'БЪРЛОЖНИЦА',22),(624,2255,'БЪРЛЯ',22),(625,4965,'БЪРЧЕВО',21),(626,4527,'БЪТА',13),(627,4587,'БЯГА',13),(628,9824,'БЯЛ БРЯГ',27),(629,6770,'БЯЛ ИЗВОР',9),(630,6073,'БЯЛ ИЗВОР',24),(631,8961,'БЯЛ КЛАДЕНЕЦ',20),(632,6377,'БЯЛ КЛАДЕНЕЦ',26),(633,9101,'БЯЛА',3),(634,7100,'БЯЛА',18),(635,8850,'БЯЛА',20),(636,5932,'БЯЛА ВОДА',15),(637,8361,'БЯЛА ВОДА',2),(638,8892,'БЯЛА ПАЛАНКА',20),(639,6662,'БЯЛА ПОЛЯНА',9),(640,9882,'БЯЛА РЕКА',27),(641,4285,'БЯЛА РЕКА',16),(642,4966,'БЯЛА РЕКА',21),(643,5237,'БЯЛА РЕКА',4),(644,3200,'БЯЛА СЛАТИНА',6),(645,5220,'БЯЛА ЧЕРКВА',4),(646,6590,'БЯЛГРАДЕЦ',26),(647,6656,'БЯЛКА',9),(648,5344,'БЯЛКОВО',7),(649,5084,'БЯЛКОВЦИ',4),(650,6054,'БЯЛО ПОЛЕ',24),(651,7422,'ВАЗОВО',17),(652,2060,'ВАКАРЕЛ',22),(653,9672,'ВАКЛИНО',8),(654,2957,'ВАКЛИНОВО',1),(655,2590,'ВАКСЕВО',10),(656,5462,'ВАЛЕВЦИ',7),(657,5099,'ВАЛЕТО',4),(658,5911,'ВАРАНА',15),(659,4492,'ВАРВАРА',13),(660,8278,'ВАРВАРА',2),(661,5281,'ВАРДИМ',4),(662,7780,'ВАРДУН',25),(663,9000,'ВАРНА',3),(664,7638,'ВАРНЕНЦИ',19),(665,6536,'ВАРНИК',26),(666,8338,'ВАРОВНИК',2),(667,9814,'ВАСИЛ ДРУМЕВ',27),(668,7571,'ВАСИЛ ЛЕВСКИ',19),(669,4363,'ВАСИЛ ЛЕВСКИ',16),(670,6068,'ВАСИЛ ЛЕВСКИ',24),(671,7749,'ВАСИЛ ЛЕВСКИ',25),(672,9543,'ВАСИЛЕВО',8),(673,5576,'ВАСИЛКОВСКА МАХАЛА',11),(674,3658,'ВАСИЛОВЦИ',12),(675,2205,'ВАСИЛОВЦИ',22),(676,5723,'ВАСИЛЬОВО',11),(677,6556,'ВАСКОВО',26),(678,4364,'ВЕДРАРЕ',16),(679,9355,'ВЕДРИНА',8),(680,8447,'ВЕДРОВО',2),(681,8457,'ВЕЗЕНКОВО',2),(682,9941,'ВЕКИЛСКИ',27),(683,5351,'ВЕЛЕНЦИ',7),(684,6727,'ВЕЛЕШАНИ',9),(685,8271,'ВЕЛИКА',2),(686,6431,'ВЕЛИКАН',26),(687,6845,'ВЕЛИКДЕНЧЕ',9),(688,7916,'ВЕЛИКДЕНЧЕ',25),(689,9850,'ВЕЛИКИ ПРЕСЛАВ',27),(690,5000,'ВЕЛИКО ТЪРНОВО',4),(691,9547,'ВЕЛИКОВО',8),(692,6282,'ВЕЛИКОВО',24),(693,7964,'ВЕЛИКОВЦИ',25),(694,4600,'ВЕЛИНГРАД',13),(695,9793,'ВЕЛИНО',27),(696,2476,'ВЕЛИНОВО',14),(697,8458,'ВЕЛИСЛАВ',2),(698,7941,'ВЕЛИЧКА',25),(699,9263,'ВЕЛИЧКОВО',3),(700,4413,'ВЕЛИЧКОВО',13),(701,5365,'ВЕЛКОВО',7),(702,2375,'ВЕЛКОВЦИ',14),(703,5343,'ВЕЛКОВЦИ',7),(704,5097,'ВЕЛКОВЦИ',4),(705,5643,'ВЕЛЧЕВО',11),(706,5032,'ВЕЛЧЕВО',4),(707,5367,'ВЕЛЧОВЦИ',7),(708,7985,'ВЕЛЬОВО',25),(709,5070,'ВЕЛЮВЦИ',4),(710,2849,'ВЕЛЮЩЕЦ',1),(711,9119,'ВЕНЕЛИН',3),(712,9751,'ВЕНЕЦ',27),(713,8473,'ВЕНЕЦ',2),(714,6078,'ВЕНЕЦ',24),(715,2066,'ВЕНКОВЕЦ',22),(716,9219,'ВЕНЧАН',3),(717,6244,'ВЕРЕН',24),(718,7957,'ВЕРЕНЦИ',25),(719,2063,'ВЕРИНСКО',22),(720,6710,'ВЕРСКО',9),(721,7327,'ВЕСЕЛЕЦ',17),(722,7942,'ВЕСЕЛЕЦ',25),(723,8145,'ВЕСЕЛИЕ',2),(724,5094,'ВЕСЕЛИНА',4),(725,7289,'ВЕСЕЛИНА',17),(726,9828,'ВЕСЕЛИНОВО',27),(727,8632,'ВЕСЕЛИНОВО',28),(728,3053,'ВЕСЛЕЦ',6),(729,7080,'ВЕТОВО',18),(730,8127,'ВЕТРЕН',2),(731,6175,'ВЕТРЕН',24),(732,2579,'ВЕТРЕН',10),(733,4480,'ВЕТРЕН',13),(734,7588,'ВЕТРЕН',19),(735,4493,'ВЕТРЕН ДОЛ',13),(736,9220,'ВЕТРИНО',3),(737,5066,'ВЕТРИНЦИ',4),(738,9809,'ВЕТРИЩЕ',27),(739,5300,'ВЕТРОВО',7),(740,6591,'ВЕТРУШКА',26),(741,4924,'ВЕХТИНО',21),(742,9822,'ВЕХТОВО',27),(743,3918,'ВЕЩИЦА',5),(744,6156,'ВИДЕН',24),(745,3700,'ВИДИН',5),(746,8671,'ВИДИНЦИ',28),(747,3478,'ВИДЛИЦА',12),(748,9668,'ВИДНО',8),(749,2495,'ВИДРАР',14),(750,2166,'ВИДРАРЕ',22),(751,2364,'ВИДРИЦА',14),(752,4748,'ВИЕВО',21),(753,8369,'ВИЗИЦА',2),(754,5035,'ВИЛАРЕ',4),(755,3773,'ВИНАРОВО',5),(756,6238,'ВИНАРОВО',24),(757,8118,'ВИНАРСКО',2),(758,6375,'ВИНЕВО',26),(759,4284,'ВИНИЦА',16),(760,3482,'ВИНИЩЕ',12),(761,5171,'ВИНОГРАД',4),(762,4487,'ВИНОГРАДЕЦ',13),(763,2822,'ВИНОГРАДИ',1),(764,3455,'ВИРОВЕ',12),(765,3057,'ВИРОВСКО',6),(766,6591,'ВИС',26),(767,2358,'ВИСКЯР',14),(768,7955,'ВИСОК',25),(769,6744,'ВИСОКА',9),(770,2665,'ВИСОКА МОГИЛА',10),(771,6678,'ВИСОКА ПОЛЯНА',9),(772,9765,'ВИСОКА ПОЛЯНА',27),(773,4921,'ВИСОКИТЕ',21),(774,5098,'ВИСОКОВЦИ',4),(775,2354,'ВИТАНОВЦИ',14),(776,4975,'ВИТИНА',21),(777,2800,'ВИХРЕН',1),(778,9563,'ВИЧЕВО',8),(779,2213,'ВИШАН',22),(780,6646,'ВИШЕГРАД',9),(781,2895,'ВИШЛЕНЕ',1),(782,8562,'ВИШНА',2),(783,4939,'ВИШНЕВО',21),(784,5239,'ВИШОВГРАД',4),(785,1641,'ВЛАДАЯ',22),(786,2411,'ВЛАДИМИР',14),(787,3440,'ВЛАДИМИРОВО',12),(788,9379,'ВЛАДИМИРОВО',8),(789,6545,'ВЛАДИМИРОВО',26),(790,7440,'ВЛАДИМИРОВЦИ',17),(791,5563,'ВЛАДИНЯ',11),(792,5179,'ВЛАДИСЛАВ',4),(793,2215,'ВЛАДИСЛАВЦИ',22),(794,3748,'ВЛАДИЧЕНЦИ',5),(795,2299,'ВЛАДО ТРИЧКОВ',22),(796,5365,'ВЛАДОВЦИ',7),(797,5344,'ВЛАЙЧОВЦИ',7),(798,5367,'ВЛАСАТИЛИ',7),(799,3041,'ВЛАСАТИЦА',6),(800,2841,'ВЛАХИ',1),(801,4724,'ВЛАХОВО',21),(802,5349,'ВЛАХОВЦИ',7),(803,4713,'ВОДАТА',21),(804,6709,'ВОДАЧ',9),(805,8750,'ВОДЕН',28),(806,6412,'ВОДЕН',26),(807,4289,'ВОДЕН',16),(808,8693,'ВОДЕНИЧАНЕ',28),(809,6051,'ВОДЕНИЧАРОВО',24),(810,6852,'ВОДЕНИЧАРСКО',9),(811,6382,'ВОДЕНЦИ',26),(812,9141,'ВОДИЦА',3),(813,7851,'ВОДИЦА',25),(814,3831,'ВОДНА',5),(815,4826,'ВОДНИ ПАД',21),(816,7657,'ВОДНО',19),(817,5166,'ВОДНО',4),(818,3924,'ВОДНЯНЦИ',5),(819,9495,'ВОДНЯНЦИ',8),(820,5061,'ВОДОЛЕЙ',4),(821,6716,'ВОЖДОВО',9),(822,4203,'ВОИСИЛ',16),(823,9958,'ВОЙВОДА',27),(824,6381,'ВОЙВОДЕНЕЦ',26),(825,9292,'ВОЙВОДИНО',3),(826,4135,'ВОЙВОДИНОВО',16),(827,3332,'ВОЙВОДОВО',6),(828,6353,'ВОЙВОДОВО',26),(829,4967,'ВОЙКОВА ЛЪКА',21),(830,5045,'ВОЙНЕЖА',4),(831,8661,'ВОЙНИКА',28),(832,9473,'ВОЙНИКОВО',8),(833,3734,'ВОЙНИЦА',5),(834,3481,'ВОЙНИЦИ',12),(835,5350,'ВОЙНИЦИТЕ',7),(836,5458,'ВОЙНИШКА',7),(837,7551,'ВОЙНОВО',19),(838,6698,'ВОЙНОВО',9),(839,4347,'ВОЙНЯГОВО',16),(840,1223,'ВОЙНЯГОВЦИ',22),(841,7670,'ВОКИЛ',19),(842,2886,'ВОЛНО',1),(843,6231,'ВОЛОВАРОВО',24),(844,6633,'ВОЛОВАРЦИ',9),(845,7175,'ВОЛОВО',18),(846,1346,'ВОЛУЯК',22),(847,5035,'ВОНЕЩА ВОДА',4),(848,5660,'ВРАБЕВО',11),(849,5307,'ВРАБЦИТЕ',7),(850,2470,'ВРАБЧА',14),(851,2834,'ВРАКУПОВИЦА',1),(852,4649,'ВРАНЕНЦИ',13),(853,7940,'ВРАНИ КОН',25),(854,5347,'ВРАНИЛОВЦИ',7),(855,9663,'ВРАНИНО',8),(856,4906,'ВРАНИНЦИ',21),(857,6912,'ВРАНСКО',9),(858,2830,'ВРАНЯ',1),(859,2445,'ВРАНЯ СТЕНА',14),(860,3248,'ВРАНЯК',6),(861,4234,'ВРАТА',16),(862,9382,'ВРАТАРИТЕ',8),(863,8109,'ВРАТИЦА',2),(864,2059,'ВРАТЦА',22),(865,2575,'ВРАТЦА',10),(866,3000,'ВРАЦА',6),(867,9345,'ВРАЧАНЦИ',8),(868,2151,'ВРАЧЕШ',22),(869,6832,'ВРЕЛО',9),(870,8560,'ВРЕСОВО',2),(871,3779,'ВРЪВ',5),(872,2254,'ВРЪДЛОВЦИ',22),(873,4622,'ВСЕМИРЦИ',13),(874,2485,'ВУКАН',14),(875,2661,'ВУКОВО',10),(876,5953,'ВЪБЕЛ',15),(877,6313,'ВЪГЛАРОВО',26),(878,5041,'ВЪГЛЕВЦИ',4),(879,9157,'ВЪГЛЕН',3),(880,8851,'ВЪГЛЕН',20),(881,6710,'ВЪЗЕЛ',9),(882,7643,'ВЪЛКАН',19),(883,5349,'ВЪЛКОВ ДОЛ',7),(884,6850,'ВЪЛКОВИЧ',9),(885,2807,'ВЪЛКОВО',1),(886,5365,'ВЪЛКОВЦИ',7),(887,2930,'ВЪЛКОСЕЛ',1),(888,9963,'ВЪЛНАРИ',27),(889,8748,'ВЪЛЧА ПОЛЯНА',28),(890,4775,'ВЪЛЧАН',21),(891,4947,'ВЪЛЧАН ДОЛ',21),(892,6893,'ВЪЛЧАНКА',9),(893,8341,'ВЪЛЧАНОВО',2),(894,6553,'ВЪЛЧЕ ПОЛЕ',26),(895,3650,'ВЪЛЧЕДРЪМ',12),(896,3851,'ВЪЛЧЕК',5),(897,9280,'ВЪЛЧИ ДОЛ',3),(898,8723,'ВЪЛЧИ ИЗВОР',28),(899,8443,'ВЪЛЧИН',2),(900,5890,'ВЪЛЧИТРЪН',15),(901,5081,'ВЪЛЧОВЦИ',4),(902,5086,'ВЪЛЧОВЦИ',4),(903,3939,'ВЪРБА',5),(904,4920,'ВЪРБА',21),(905,2405,'ВЪРБА',14),(906,9781,'ВЪРБАК',27),(907,4145,'ВЪРБЕН',16),(908,6873,'ВЪРБЕН',9),(909,6745,'ВЪРБЕНЦИ',9),(910,3147,'ВЪРБЕШНИЦА',6),(911,4921,'ВЪРБИНА',21),(912,7674,'ВЪРБИНО',19),(913,3264,'ВЪРБИЦА',6),(914,9870,'ВЪРБИЦА',27),(915,5128,'ВЪРБИЦА',4),(916,6445,'ВЪРБИЦА',26),(917,5845,'ВЪРБИЦА',15),(918,2248,'ВЪРБНИЦА',22),(919,5233,'ВЪРБОВКА',4),(920,4710,'ВЪРБОВО',21),(921,6488,'ВЪРБОВО',26),(922,3951,'ВЪРБОВО',5),(923,3948,'ВЪРБОВЧЕЦ',5),(924,9943,'ВЪРБЯНЕ',27),(925,4907,'ВЪРГОВ ДОЛ',21),(926,5081,'ВЪРЗИЛКОВЦИ',4),(927,5191,'ВЪРЗУЛИЦА',4),(928,6873,'ВЪРЛИ ДОЛ',9),(929,4989,'ВЪРЛИ ДОЛ',21),(930,2085,'ВЪРЛИНА',22),(931,5050,'ВЪРЛИНКА',4),(932,4983,'ВЪРЛИНО',21),(933,8999,'ВЪРЛИЩЕ',20),(934,3752,'ВЪРТОП',5),(935,2786,'ВЪРХАРИ',1),(936,6814,'ВЪРХАРИ',9),(937,3540,'ВЪРШЕЦ',12),(938,8157,'ВЪРШИЛО',2),(939,3265,'ГАБАРЕ',6),(940,6162,'ГАБАРЕВО',24),(941,2215,'ГАБЕР',22),(942,9419,'ГАБЕР',8),(943,6482,'ГАБЕРОВО',26),(944,8212,'ГАБЕРОВО',2),(945,2112,'ГАБРА',22),(946,5097,'ГАБРАКА',4),(947,2898,'ГАБРЕНЕ',1),(948,2557,'ГАБРЕШЕВЦИ',10),(949,4921,'ГАБРИНА',21),(950,9779,'ГАБРИЦА',27),(951,4795,'ГАБРИЦА',21),(952,2392,'ГАБРОВ ДОЛ',14),(953,4467,'ГАБРОВИЦА',13),(954,3453,'ГАБРОВНИЦА',12),(955,2277,'ГАБРОВНИЦА',22),(956,2747,'ГАБРОВО',1),(957,5300,'ГАБРОВО',7),(958,6691,'ГАБРОВО',9),(959,5051,'ГАБРОВЦИ',4),(960,8158,'ГАБЪР',2),(961,9227,'ГАБЪРНИЦА',3),(962,5619,'ГАБЪРСКО',11),(963,8854,'ГАВРАИЛОВО',20),(964,3469,'ГАВРИЛ ГЕНОВО',12),(965,3525,'ГАГАНИЦА',12),(966,7831,'ГАГОВО',25),(967,5367,'ГАЙДАРИ',7),(968,5300,'ГАЙКИНИ',7),(969,2114,'ГАЙТАНЕВО',22),(970,2924,'ГАЙТАНИНОВО',1),(971,5345,'ГАЙТАНИТЕ',7),(972,3753,'ГАЙТАНЦИ',5),(973,5731,'ГАЛАТА',11),(974,3071,'ГАЛАТИН',6),(975,3250,'ГАЛИЧЕ',6),(976,4934,'ГАЛИЩЕ',21),(977,3342,'ГАЛОВО',6),(978,5084,'ГАНЕВ ДОЛ',4),(979,5397,'ГАНЧОВЕЦ',7),(980,2271,'ГАРА БОВ',22),(981,7101,'ГАРА БЯЛА',18),(982,5120,'ГАРА ГОРНА ОРЯХОВИЦ',4),(983,2109,'ГАРА ЕЛИН ПЕЛИН',22),(984,8432,'ГАРА ЗАВЕТ',2),(985,5364,'ГАРА КРЪСТЕЦ',7),(986,2272,'ГАРА ЛАКАТНИК',22),(987,3940,'ГАРА ОРЕШЕЦ',5),(988,4410,'ГАРА ПАЗАРДЖИК',13),(989,6880,'ГАРА ПОДКОВА',9),(990,6517,'ГАРА СВИЛЕНГРАД',26),(991,7272,'ГАРА СЕНОВО',18),(992,6489,'ГАРА СИМЕОНОВГРАД',26),(993,7737,'ГАРА ТЪРГОВИЩЕ',25),(994,9780,'ГАРА ХИТРИНО',27),(995,3163,'ГАРА ЧЕРЕПИШ',6),(996,8604,'ГАРА ЯМБОЛ',28),(997,5345,'ГАРВАН',7),(998,7589,'ГАРВАН',19),(999,6349,'ГАРВАНОВО',26),(1000,5041,'ГАШЕВЦИ',4),(1001,2882,'ГЕГА',1),(1002,4710,'ГЕЛА',21),(1003,4444,'ГЕЛЕМЕНОВО',13),(1004,6856,'ГЕНЕРАЛ ГЕШЕВО',9),(1005,8670,'ГЕНЕРАЛ ИНЗОВО',28),(1006,9150,'ГЕНЕРАЛ КАНТАРДЖИЕВ',3),(1007,9142,'ГЕНЕРАЛ КИСЕЛОВО',3),(1008,9295,'ГЕНЕРАЛ КОЛЕВО',3),(1009,9373,'ГЕНЕРАЛ КОЛЕВО',8),(1010,3732,'ГЕНЕРАЛ МАРИНОВО',5),(1011,2873,'ГЕНЕРАЛ ТОДОРОВ',1),(1012,9500,'ГЕНЕРАЛ ТОШЕВО',8),(1013,8625,'ГЕНЕРАЛ ТОШЕВО',28),(1014,6523,'ГЕНЕРАЛОВО',26),(1015,6635,'ГЕНОВО',9),(1016,5307,'ГЕНОВЦИ',7),(1017,5301,'ГЕНЧОВЦИ',7),(1018,5350,'ГЕНЧОВЦИ',7),(1019,5397,'ГЕНЯ',7),(1020,3470,'ГЕОРГИ ДАМЯНОВО',12),(1021,6559,'ГЕОРГИ ДОБРЕВО',26),(1022,8869,'ГЕРГЕВЕЦ',20),(1023,5345,'ГЕРГИНИ',7),(1024,1186,'ГЕРМАН',22),(1025,7219,'ГЕЦОВО',17),(1026,5370,'ГЕША',7),(1027,9393,'ГЕШАНОВО',8),(1028,5970,'ГИГЕН',15),(1029,2393,'ГИГИНЦИ',14),(1030,2250,'ГИНЦИ',22),(1031,2546,'ГИРЧЕВЦИ',10),(1032,6215,'ГИТА',24),(1033,5985,'ГЛАВА',15),(1034,6295,'ГЛАВАН',24),(1035,7543,'ГЛАВАН',19),(1036,3468,'ГЛАВАНОВЦИ',12),(1037,2480,'ГЛАВАНОВЦИ',14),(1038,9499,'ГЛАВАНЦИ',8),(1039,4171,'ГЛАВАТАР',16),(1040,6738,'ГЛАВАТАРЦИ',9),(1041,3045,'ГЛАВАЦИ',6),(1042,7630,'ГЛАВИНИЦА',19),(1043,4409,'ГЛАВИНИЦА',13),(1044,7986,'ГЛАШАТАЙ',25),(1045,5345,'ГЛЕДАЦИ',7),(1046,6263,'ГЛЕДАЧЕВО',24),(1047,6362,'ГЛЕДКА',26),(1048,7879,'ГЛОГИНКА',25),(1049,4948,'ГЛОГИНО',21),(1050,5080,'ГЛОГОВЕЦ',4),(1051,2463,'ГЛОГОВИЦА',14),(1052,5724,'ГЛОГОВО',11),(1053,7294,'ГЛОДЖЕВО',18),(1054,3327,'ГЛОЖЕНЕ',6),(1055,5740,'ГЛОЖЕНЕ',11),(1056,6572,'ГЛУМОВО',26),(1057,8429,'ГЛУМЧЕ',2),(1058,5363,'ГЛУТНИЦИТЕ',7),(1059,8866,'ГЛУФИШЕВО',20),(1060,6647,'ГЛУХАР',9),(1061,5370,'ГЛУШКА',7),(1062,8879,'ГЛУШНИК',20),(1063,6590,'ГНЕЗДАРЕ',26),(1064,6675,'ГНЯЗДОВО',9),(1065,4453,'ГОВЕДАРЕ',13),(1066,2020,'ГОВЕДАРЦИ',22),(1067,3474,'ГОВЕЖДА',12),(1068,2240,'ГОДЕЧ',22),(1069,2938,'ГОДЕШЕВО',1),(1070,2768,'ГОДЛЕВО',1),(1071,2366,'ГОЗ',14),(1072,4791,'ГОЗДЕВИЦА',21),(1073,5392,'ГОЗДЕЙКА',7),(1074,2036,'ГОЛАК',22),(1075,2800,'ГОЛЕМ ЦАЛИМ',1),(1076,2113,'ГОЛЕМА РАКОВИЦА',22),(1077,2667,'ГОЛЕМА ФУЧА',10),(1078,5070,'ГОЛЕМАНИ',4),(1079,5054,'ГОЛЕМАНИТЕ',4),(1080,3839,'ГОЛЕМАНОВО',5),(1081,6358,'ГОЛЕМАНЦИ',26),(1082,5370,'ГОЛЕМИ БЪЛГАРЕНИ',7),(1083,5365,'ГОЛЕМИ СТАНЧОВЦИ',7),(1084,3063,'ГОЛЕМО БАБИНО',6),(1085,2348,'ГОЛЕМО БУЧИНО',14),(1086,2204,'ГОЛЕМО МАЛОВО',22),(1087,2635,'ГОЛЕМО СЕЛО',10),(1088,5573,'ГОЛЕЦ',11),(1089,2254,'ГОЛЕШ',22),(1090,7547,'ГОЛЕШ',19),(1091,2818,'ГОЛЕШОВО',1),(1092,9114,'ГОЛИЦА',3),(1093,6793,'ГОЛОБРАД',9),(1094,6386,'ГОЛОБРАДОВО',26),(1095,2690,'ГОЛЯМ ВЪРБОВНИК',10),(1096,6932,'ГОЛЯМ ДЕВЕСИЛ',9),(1097,8757,'ГОЛЯМ ДЕРВЕНТ',28),(1098,6245,'ГОЛЯМ ДОЛ',24),(1099,7459,'ГОЛЯМ ИЗВОР',17),(1100,6395,'ГОЛЯМ ИЗВОР',26),(1101,5741,'ГОЛЯМ ИЗВОР',11),(1102,8624,'ГОЛЯМ МАНАСТИР',28),(1103,7444,'ГОЛЯМ ПОРОВЕЦ',17),(1104,4193,'ГОЛЯМ ЧАРДАК',16),(1105,6744,'ГОЛЯМА БАРА',9),(1106,5753,'ГОЛЯМА БРЕСТНИЦА',11),(1107,7452,'ГОЛЯМА ВОДА',17),(1108,6476,'ГОЛЯМА ДОЛИНА',26),(1109,5670,'ГОЛЯМА ЖЕЛЯЗНА',11),(1110,6940,'ГОЛЯМА ЧИНКА',9),(1111,6424,'ГОЛЯМО АСЕНОВО',26),(1112,4473,'ГОЛЯМО БЕЛОВО',13),(1113,8329,'ГОЛЯМО БУКОВО',2),(1114,7065,'ГОЛЯМО ВРАНОВО',18),(1115,7848,'ГОЛЯМО ГРАДИЩЕ',25),(1116,7960,'ГОЛЯМО ДОЛЯНЕ',25),(1117,6146,'ГОЛЯМО ДРЯНОВО',24),(1118,6925,'ГОЛЯМО КАМЕНЯНЕ',9),(1119,8729,'ГОЛЯМО КРУШЕВО',28),(1120,7789,'ГОЛЯМО НОВО',17),(1121,3058,'ГОЛЯМО ПЕЩЕНЕ',6),(1122,7778,'ГОЛЯМО СОКОЛОВО',25),(1123,5743,'ГОЛЯМО УСОЕ',11),(1124,7924,'ГОЛЯМО ЦЪРКВИЩЕ',25),(1125,8863,'ГОЛЯМО ЧОЧОВЕНИ',20),(1126,2231,'ГОЛЯНОВЦИ',22),(1127,3772,'ГОМОТАРЦИ',5),(1128,5552,'ГОРАН',11),(1129,5035,'ГОРАНОВЦИ',4),(1130,2565,'ГОРАНОВЦИ',10),(1131,2834,'ГОРЕМЕ',1),(1132,5050,'ГОРЕН ЕНЕВЕЦ',4),(1133,9100,'ГОРЕН ЧИФЛИК',3),(1134,9101,'ГОРИЦА',3),(1135,9558,'ГОРИЦА',8),(1136,8225,'ГОРИЦА',2),(1137,7854,'ГОРИЦА',25),(1138,9688,'ГОРИЧАНЕ',8),(1139,7337,'ГОРИЧЕВО',17),(1140,4788,'ГОРНА АРДА',21),(1141,3544,'ГОРНА БЕЛА РЕЧКА',12),(1142,3155,'ГОРНА БЕШОВИЦА',6),(1143,4657,'ГОРНА БИРКОВА',13),(1144,2842,'ГОРНА БРЕЗНИЦА',1),(1145,2575,'ГОРНА БРЕСТНИЦА',10),(1146,2046,'ГОРНА ВАСИЛИЦА',22),(1147,3484,'ГОРНА ВЕРЕНИЦА',12),(1148,2439,'ГОРНА ВРАБЧА',14),(1149,2459,'ГОРНА ГЛОГОВИЦА',14),(1150,2535,'ГОРНА ГРАЩИЦА',10),(1151,2419,'ГОРНА ДИКАНЯ',14),(1152,4648,'ГОРНА ДЪБЕВА',13),(1153,7969,'ГОРНА ЗЛАТИЦА',25),(1154,7865,'ГОРНА КАБДА',25),(1155,3463,'ГОРНА КОВАЧИЦА',12),(1156,2687,'ГОРНА КОЗНИЦА',10),(1157,3154,'ГОРНА КРЕМЕНА',6),(1158,6685,'ГОРНА КРЕПОСТ',9),(1159,2827,'ГОРНА КРУШИЦА',1),(1160,6952,'ГОРНА КУЛА',9),(1161,5227,'ГОРНА ЛИПНИЦА',4),(1162,3458,'ГОРНА ЛУКА',12),(1163,2131,'ГОРНА МАЛИНА',22),(1164,4196,'ГОРНА МАХАЛА',16),(1165,2491,'ГОРНА МЕЛНА',14),(1166,5869,'ГОРНА МИТРОПОЛИЯ',15),(1167,5100,'ГОРНА ОРЯХОВИЦА',4),(1168,2836,'ГОРНА РИБНИЦА',1),(1169,5448,'ГОРНА РОСИЦА',7),(1170,2399,'ГОРНА СЕКИРНА',14),(1171,5294,'ГОРНА СТУДЕНА',4),(1172,2811,'ГОРНА СУШИЦА',1),(1173,5089,'ГОРНА ХАДЖИЙСКА',4),(1174,7913,'ГОРНА ХУБАВКА',25),(1175,1806,'ГОРНИ БОГРОВ',22),(1176,3343,'ГОРНИ ВАДИН',6),(1177,5380,'ГОРНИ ВЪРПИЩА',7),(1178,6485,'ГОРНИ ГЛАВАНАК',26),(1179,5367,'ГОРНИ ДАМЯНОВЦИ',7),(1180,4368,'ГОРНИ ДОМЛЯН',16),(1181,5380,'ГОРНИ ДРАГОЙЧА',7),(1182,5880,'ГОРНИ ДЪБНИК',15),(1183,2557,'ГОРНИ КОРИТЕН',10),(1184,5096,'ГОРНИ КРАЙ',4),(1185,3960,'ГОРНИ ЛОМ',5),(1186,5360,'ГОРНИ МАРЕНЦИ',7),(1187,2027,'ГОРНИ ОКОЛ',22),(1188,5360,'ГОРНИ РАДКОВЦИ',7),(1189,2371,'ГОРНИ РОМАНЦИ',14),(1190,5098,'ГОРНИ ТАНЧЕВЦИ',4),(1191,3632,'ГОРНИ ЦИБЪР',12),(1192,5360,'ГОРНИ ЦОНЕВЦИ',7),(1193,6954,'ГОРНИ ЮРУЦИ',9),(1194,5991,'ГОРНИК',15),(1195,7173,'ГОРНО АБЛАНОВО',18),(1196,8883,'ГОРНО АЛЕКСАНДРОВО',20),(1197,6219,'ГОРНО БЕЛОВО',24),(1198,6053,'ГОРНО БОТЕВО',24),(1199,6388,'ГОРНО ВОЙВОДИНО',26),(1200,4456,'ГОРНО ВЪРШИЛО',13),(1201,2797,'ГОРНО ДРАГЛИЩЕ',1),(1202,2963,'ГОРНО ДРЯНОВО',1),(1203,6181,'ГОРНО ИЗВОРОВО',24),(1204,2138,'ГОРНО КАМАРЦИ',22),(1205,2556,'ГОРНО КОБИЛЕ',10),(1206,7927,'ГОРНО КОЗАРЕВО',25),(1207,2783,'ГОРНО КРАИЩЕ',1),(1208,6871,'ГОРНО КЪПИНОВО',9),(1209,6585,'ГОРНО ЛУКОВО',26),(1210,7939,'ГОРНО НОВКОВО',25),(1211,6225,'ГОРНО НОВО СЕЛО',24),(1212,3547,'ГОРНО ОЗИРОВО',12),(1213,2756,'ГОРНО ОСЕНОВО',1),(1214,5549,'ГОРНО ПАВЛИКЕНЕ',11),(1215,3052,'ГОРНО ПЕЩЕНЕ',6),(1216,6486,'ГОРНО ПОЛЕ',26),(1217,6780,'ГОРНО ПРАХОВО',9),(1218,2213,'ГОРНО СЕЛО',22),(1219,2824,'ГОРНО СПАНЧЕВО',1),(1220,6151,'ГОРНО СЪХРАНЕ',24),(1221,5614,'ГОРНО ТРАПЕ',11),(1222,2561,'ГОРНО УЙНО',10),(1223,2727,'ГОРНО ХЪРСОВО',1),(1224,3487,'ГОРНО ЦЕРОВЕНЕ',12),(1225,6165,'ГОРНО ЧЕРКОВИЩЕ',24),(1226,8343,'ГОРНО ЯБЪЛКОВО',2),(1227,5304,'ГОРНОВА МОГИЛА',7),(1228,6574,'ГОРНОСЕЛЦИ',26),(1229,4253,'ГОРНОСЛАВ',16),(1230,5748,'ГОРНОТО СЕЛО',11),(1231,4776,'ГОРОВО',21),(1232,8469,'ГОРОВО',2),(1233,7288,'ГОРОЦВЕТ',17),(1234,2496,'ГОРОЧЕВЦИ',14),(1235,5083,'ГОРСКА',4),(1236,8721,'ГОРСКА ПОЛЯНА',28),(1237,5132,'ГОРСКИ ГОРЕН ТРЪМБЕ',4),(1238,5131,'ГОРСКИ ДОЛЕН ТРЪМБЕ',4),(1239,6420,'ГОРСКИ ИЗВОР',26),(1240,6864,'ГОРСКИ ИЗВОР',9),(1241,5167,'ГОРСКИ СЕНОВЕЦ',4),(1242,6590,'ГОРСКО',26),(1243,7847,'ГОРСКО АБЛАНОВО',25),(1244,6800,'ГОРСКО ДЮЛЕВО',9),(1245,5238,'ГОРСКО КАЛУГЕРОВО',4),(1246,5235,'ГОРСКО КОСОВО',4),(1247,5075,'ГОРСКО НОВО СЕЛО',4),(1248,5088,'ГОРСКО ПИСАРЕВО',4),(1249,7947,'ГОРСКО СЕЛО',25),(1250,5557,'ГОРСКО СЛИВОВО',11),(1251,5888,'ГОРТАЛОВО',15),(1252,9689,'ГОРУН',8),(1253,2191,'ГОРУНАКА',22),(1254,5722,'ГОРУНЬОВО',11),(1255,2882,'ГОРЧЕВО',1),(1256,5367,'ГОРЯНИ',7),(1257,9107,'ГОСПОДИНОВО',3),(1258,7561,'ГОСПОДИНОВО',19),(1259,2914,'ГОСПОДИНЦИ',1),(1260,5390,'ГОСТИЛИЦА',7),(1261,5864,'ГОСТИЛЯ',15),(1262,5543,'ГОСТИНЯ',11),(1263,2773,'ГОСТУН',1),(1264,2900,'ГОЦЕ ДЕЛЧЕВ',1),(1265,2755,'ГРАДЕВО',1),(1266,5732,'ГРАДЕЖНИЦА',11),(1267,3780,'ГРАДЕЦ',5),(1268,2239,'ГРАДЕЦ',22),(1269,8990,'ГРАДЕЦ',20),(1270,3074,'ГРАДЕШНИЦА',6),(1271,5879,'ГРАДИНА',15),(1272,7239,'ГРАДИНА',17),(1273,4290,'ГРАДИНА',16),(1274,9243,'ГРАДИНАРОВО',3),(1275,9552,'ГРАДИНИ',8),(1276,7964,'ГРАДИНКА',25),(1277,5910,'ГРАДИЩЕ',15),(1278,5435,'ГРАДИЩЕ',7),(1279,9803,'ГРАДИЩЕ',27),(1280,5439,'ГРАДНИЦА',7),(1281,9498,'ГРАДНИЦА',8),(1282,8852,'ГРАДСКО',20),(1283,3835,'ГРАДСКОВСКИ КОЛИБИ',5),(1284,4749,'ГРАДЪТ',21),(1285,3830,'ГРАМАДА',5),(1286,2679,'ГРАМАДЕ',10),(1287,4968,'ГРАМАДЕ',21),(1288,2574,'ГРАМАДЖАНО',10),(1289,8370,'ГРАМАТИКОВО',2),(1290,5099,'ГРАМАТИЦИ',4),(1291,6252,'ГРАНИТ',24),(1292,8333,'ГРАНИТЕЦ',2),(1293,3914,'ГРАНИТОВО',5),(1294,8740,'ГРАНИТОВО',28),(1295,2589,'ГРАНИЦА',10),(1296,3934,'ГРАНИЧАК',5),(1297,8347,'ГРАНИЧАР',2),(1298,9669,'ГРАНИЧАР',8),(1299,4198,'ГРАФ ИГНАТИЕВО',16),(1300,8938,'ГРАФИТОВО',20),(1301,4618,'ГРАШЕВО',13),(1302,4714,'ГРАЩИЦА',21),(1303,7960,'ГРЕЕВЦИ',25),(1304,5841,'ГРИВИЦА',15),(1305,6965,'ГРИВКА',9),(1306,6890,'ГРИВЯК',9),(1307,2108,'ГРИГОРЕВО',22),(1308,8464,'ГРОЗДЕН',2),(1309,9106,'ГРОЗДЬОВО',3),(1310,2062,'ГРОЗДЬОВЦИ',22),(1311,3444,'ГРОМШИН',12),(1312,4815,'ГРОХОТНО',21),(1313,6809,'ГРУЕВО',9),(1314,5300,'ГРЪБЛЕВЦИ',7),(1315,2213,'ГРЪЛСКА ПАДИНА',22),(1316,7669,'ГРЪНЧАРОВО',19),(1317,2255,'ГУБЕШ',22),(1318,2274,'ГУБИСЛАВ',22),(1319,6590,'ГУГУТКА',26),(1320,4792,'ГУДЕВИЦА',21),(1321,6943,'ГУЛИЙКА',9),(1322,6926,'ГУЛИЯ',9),(1323,5960,'ГУЛЯНЦИ',15),(1324,5654,'ГУМОЩНИК',11),(1325,2567,'ГУРБАНОВЦИ',10),(1326,6830,'ГУРГУЛИЦА',9),(1327,2223,'ГУРГУЛЯТ',22),(1328,9644,'ГУРКОВО',8),(1329,2145,'ГУРКОВО',22),(1330,6199,'ГУРКОВО',24),(1331,2226,'ГУРМАЗОВО',22),(1332,9969,'ГУСЛА',27),(1333,9479,'ГУСЛАР',8),(1334,2045,'ГУЦАЛ',22),(1335,5333,'ГЪБЕНЕ',7),(1336,8220,'ГЪЛЪБЕЦ',2),(1337,6366,'ГЪЛЪБЕЦ',26),(1338,8642,'ГЪЛЪБИНЦИ',28),(1339,2426,'ГЪЛЪБНИК',14),(1340,4938,'ГЪЛЪБОВО',21),(1341,2789,'ГЪЛЪБОВО',1),(1342,6280,'ГЪЛЪБОВО',24),(1343,4125,'ГЪЛЪБОВО',16),(1344,2223,'ГЪЛЪБОВЦИ',22),(1345,3785,'ГЪМЗОВО',5),(1346,2550,'ГЪРБИНО',10),(1347,6760,'ГЪРБИЩЕ',9),(1348,5087,'ГЪРДЕВЦИ',4),(1349,2381,'ГЪРЛО',14),(1350,2568,'ГЪРЛЯНО',10),(1351,2960,'ГЪРМЕН',1),(1352,4991,'ГЪРНАТИ',21),(1353,5370,'ГЪРНЯ',7),(1354,7844,'ГЪРЧИНОВО',25),(1355,6651,'ГЪСКОВО',9),(1356,4811,'ГЬОВРЕН',21),(1357,2570,'ГЮЕШЕВО',10),(1358,8249,'ГЮЛЬОВЦА',2),(1359,2875,'ГЮРГЕВО',1),(1360,3932,'ГЮРГИЧ',5),(1361,5083,'ДАВЕРИ',4),(1362,4944,'ДАВИДКОВО',21),(1363,7563,'ДАВИДОВО',19),(1364,7758,'ДАВИДОВО',25),(1365,2779,'ДАГОНОВО',1),(1366,5365,'ДАЕВЦИ',7),(1367,5084,'ДАЙНОВЦИ',4),(1368,2813,'ДАМЯНИЦА',1),(1369,5437,'ДАМЯНОВО',7),(1370,6943,'ДАНАИЛОВО',9),(1371,6261,'ДАСКАЛ АТАНАСОВО',24),(1372,6707,'ДАСКАЛОВО',9),(1373,7150,'ДВЕ МОГИЛИ',18),(1374,4949,'ДВЕ ТОПОЛИ',21),(1375,2541,'ДВОРИЩЕ',10),(1376,6193,'ДВОРИЩЕ',24),(1377,5307,'ДЕБЕЛ ДЯЛ',7),(1378,5030,'ДЕБЕЛЕЦ',4),(1379,2416,'ДЕБЕЛИ ЛАК',14),(1380,5084,'ДЕБЕЛИ РЪТ',4),(1381,8314,'ДЕБЕЛТ',2),(1382,5435,'ДЕБЕЛЦОВО',7),(1383,4946,'ДЕБЕЛЯНОВО',21),(1384,5657,'ДЕБНЕВО',11),(1385,5958,'ДЕБОВО',15),(1386,2748,'ДЕБОЧИЦА',1),(1387,2961,'ДЕБРЕН',1),(1388,9353,'ДЕБРЕНЕ',8),(1389,2803,'ДЕБРЕНЕ',1),(1390,4414,'ДЕБРЪЩИЦА',13),(1391,3065,'ДЕВЕНЕ',6),(1392,5995,'ДЕВЕНЦИ',15),(1393,6934,'ДЕВЕСИЛИЦА',9),(1394,6933,'ДЕВЕСИЛОВО',9),(1395,8480,'ДЕВЕТАК',2),(1396,5555,'ДЕВЕТАКИ',11),(1397,5050,'ДЕВЕТАЦИТЕ',4),(1398,8474,'ДЕВЕТИНЦИ',2),(1399,4800,'ДЕВИН',21),(1400,7972,'ДЕВИНО',25),(1401,6833,'ДЕВИНЦИ',9),(1402,9160,'ДЕВНЯ',3),(1403,4106,'ДЕДЕВО',16),(1404,6861,'ДЕДЕЦ',9),(1405,5089,'ДЕДИНА',4),(1406,5089,'ДЕДИНЦИ',4),(1407,5935,'ДЕКОВ',15),(1408,2728,'ДЕЛВИНО',1),(1409,6896,'ДЕЛВИНО',9),(1410,3795,'ДЕЛЕЙНА',5),(1411,5084,'ДЕЛОВА МАХАЛА',4),(1412,2917,'ДЕЛЧЕВО',1),(1413,7427,'ДЕЛЧЕВО',17),(1414,2225,'ДЕЛЯН',22),(1415,2652,'ДЕЛЯН',10),(1416,5292,'ДЕЛЯНОВЦИ',4),(1417,8726,'ДЕННИЦА',28),(1418,9772,'ДЕННИЦА',27),(1419,5377,'ДЕНЧЕВЦИ',7),(1420,6539,'ДЕРВИШКА МОГИЛА',26),(1421,5780,'ДЕРМАНЦИ',11),(1422,9111,'ДЕТЕЛИНА',3),(1423,8483,'ДЕТЕЛИНА',2),(1424,5041,'ДЕЧКОВЦИ',4),(1425,2060,'ДЖАМУЗОВЦИ',22),(1426,6908,'ДЖАНКА',9),(1427,6850,'ДЖЕБЕЛ',9),(1428,6824,'ДЖЕЛЕПСКО',9),(1429,2648,'ДЖЕРМАН',10),(1430,6872,'ДЖЕРОВО',9),(1431,2812,'ДЖИГУРОВО',1),(1432,2085,'ДЖИЛЯСКОВИЦА',22),(1433,8691,'ДЖИНОТ',28),(1434,2483,'ДЖИНЧОВЦИ',14),(1435,5645,'ДЖОКАРИ',11),(1436,5146,'ДЖУЛЮНИЦА',4),(1437,7137,'ДЖУЛЮНИЦА',18),(1438,5343,'ДЖУМРИИТЕ',7),(1439,2085,'ДЖУНОВИТЕ КОШАРИ',22),(1440,4241,'ДЖУРКОВО',16),(1441,2163,'ДЖУРОВО',22),(1442,5380,'ДЖУРОВЦИ',7),(1443,6772,'ДИАМАНДОВО',9),(1444,9811,'ДИБИЧ',27),(1445,3492,'ДИВА СЛАТИНА',12),(1446,5345,'ДИВЕЦИ',7),(1447,2457,'ДИВЛЯ',14),(1448,2350,'ДИВОТИНО',14),(1449,5727,'ДИВЧОВОТО',11),(1450,4994,'ДИМАНОВО',21),(1451,5363,'ДИМИЕВЦИ',7),(1452,6259,'ДИМИТРИЕВО',24),(1453,6400,'ДИМИТРОВГРАД',26),(1454,5050,'ДИМИТРОВЦИ',4),(1455,6518,'ДИМИТРОВЧЕ',26),(1456,3750,'ДИМОВО',5),(1457,4757,'ДИМОВО',21),(1458,5035,'ДИМОВЦИ',4),(1459,6192,'ДИМОВЦИ',24),(1460,5234,'ДИМЧА',4),(1461,8159,'ДИМЧЕВО',2),(1462,6340,'ДИНЕВО',26),(1463,4149,'ДИНК',16),(1464,4458,'ДИНКАТА',13),(1465,3783,'ДИНКОВИЦА',5),(1466,3921,'ДИНКОВО',5),(1467,6268,'ДИНЯ',24),(1468,4927,'ДИРАЛО',21),(1469,5886,'ДИСЕВИЦА',15),(1470,5441,'ДИСМАНИЦА',7),(1471,7625,'ДИЧЕВО',19),(1472,5059,'ДИЧИН',4),(1473,6432,'ДЛЪГНЕВО',26),(1474,5392,'ДЛЪГНЯ',7),(1475,7997,'ДЛЪЖКА ПОЛЯНА',25),(1476,9789,'ДЛЪЖКО',27),(1477,2582,'ДЛЪХЧЕВО - САБЛЯР',10),(1478,6947,'ДОБОРСКО',9),(1479,8580,'ДОБРА ПОЛЯНА',2),(1480,2279,'ДОБРАВИЦА',22),(1481,4259,'ДОБРАЛЪК',16),(1482,4917,'ДОБРЕВА ЧЕРЕША',21),(1483,9399,'ДОБРЕВО',8),(1484,5095,'ДОБРЕВЦИ',4),(1485,5365,'ДОБРЕВЦИ',7),(1486,5762,'ДОБРЕВЦИ',11),(1487,5380,'ДОБРЕНИТЕ',7),(1488,9782,'ДОБРИ ВОЙНИКОВО',27),(1489,9128,'ДОБРИ ДОЛ',3),(1490,3667,'ДОБРИ ДОЛ',12),(1491,4292,'ДОБРИ ДОЛ',16),(1492,2559,'ДОБРИ ДОЛ',10),(1493,5149,'ДОБРИ ДЯЛ',4),(1494,2838,'ДОБРИ ЛАКИ',1),(1495,9402,'ДОБРИН',8),(1496,9216,'ДОБРИНА',3),(1497,2777,'ДОБРИНИЩЕ',1),(1498,8477,'ДОБРИНОВО',2),(1499,6670,'ДОБРИНОВО',9),(1500,6857,'ДОБРИНЦИ',9),(1501,6437,'ДОБРИЧ',26),(1502,9300,'ДОБРИЧ',8),(1503,8724,'ДОБРИЧ',28),(1504,4405,'ДОБРОВНИЦА',13),(1505,2662,'ДОБРОВО',10),(1506,9145,'ДОБРОГЛЕД',3),(1507,5658,'ДОБРОДАН',11),(1508,3253,'ДОБРОЛЕВО',6),(1509,8552,'ДОБРОМИР',2),(1510,5430,'ДОБРОМИРКА',7),(1511,6861,'ДОБРОМИРЦИ',9),(1512,9281,'ДОБРОПЛОДНО',3),(1513,6560,'ДОБРОСЕЛЕЦ',26),(1514,1247,'ДОБРОСЛАВЦИ',22),(1515,4256,'ДОБРОСТАН',16),(1516,2919,'ДОБРОТИНО',1),(1517,7990,'ДОБРОТИЦА',25),(1518,7531,'ДОБРОТИЦА',19),(1519,9282,'ДОБРОТИЧ',3),(1520,7548,'ДОБРУДЖАНКА',19),(1521,3069,'ДОБРУША',6),(1522,2799,'ДОБЪРСКО',1),(1523,2289,'ДОБЪРЧИН',22),(1524,2115,'ДОГАНОВО',22),(1525,2547,'ДОЖДЕВИЦА',10),(1526,5035,'ДОЙНОВЦИ',4),(1527,6799,'ДОЙРАНЦИ',9),(1528,9961,'ДОЙРАНЦИ',27),(1529,5550,'ДОЙРЕНЦИ',11),(1530,2734,'ДОКАТИЧЕВО',1),(1531,3449,'ДОКТОР ЙОСИФОВО',12),(1532,2497,'ДОКЬОВЦИ',14),(1533,4985,'ДОЛЕН',21),(1534,2968,'ДОЛЕН',1),(1535,5050,'ДОЛЕН ЕНЕВЕЦ',4),(1536,2887,'ДОЛЕНЕ',1),(1537,2811,'ДОЛЕНИ',1),(1538,7682,'ДОЛЕЦ',19),(1539,7858,'ДОЛЕЦ',25),(1540,4921,'ДОЛИЕ',21),(1541,9358,'ДОЛИНА',8),(1542,9947,'ДОЛИНА',27),(1543,2637,'ДОЛИСТОВО',10),(1544,9152,'ДОЛИЩЕ',3),(1545,6663,'ДОЛИЩЕ',9),(1546,2040,'ДОЛНА БАНЯ',22),(1547,3545,'ДОЛНА БЕЛА РЕЧКА',12),(1548,3143,'ДОЛНА БЕШОВИЦА',6),(1549,2034,'ДОЛНА ВАСИЛИЦА',22),(1550,3485,'ДОЛНА ВЕРЕНИЦА',12),(1551,2458,'ДОЛНА ВРАБЧА',14),(1552,2843,'ДОЛНА ГРАДЕШНИЦА',1),(1553,2536,'ДОЛНА ГРАЩИЦА',10),(1554,2420,'ДОЛНА ДИКАНЯ',14),(1555,4655,'ДОЛНА ДЪБЕВА',13),(1556,7968,'ДОЛНА ЗЛАТИЦА',25),(1557,7867,'ДОЛНА КАБДА',25),(1558,2658,'ДОЛНА КОЗНИЦА',10),(1559,3153,'ДОЛНА КРЕМЕНА',6),(1560,6686,'ДОЛНА КРЕПОСТ',9),(1561,2888,'ДОЛНА КРУШИЦА',1),(1562,6953,'ДОЛНА КУЛА',9),(1563,5199,'ДОЛНА ЛИПНИЦА',4),(1564,2107,'ДОЛНА МАЛИНА',22),(1565,5659,'ДОЛНА МАРГАТИНА',11),(1566,4200,'ДОЛНА МАХАЛА',16),(1567,2490,'ДОЛНА МЕЛНА',14),(1568,5855,'ДОЛНА МИТРОПОЛИЯ',15),(1569,2213,'ДОЛНА НЕВЛЯ',22),(1570,5130,'ДОЛНА ОРЯХОВИЦА',4),(1571,2892,'ДОЛНА РИБНИЦА',1),(1572,3452,'ДОЛНА РИКСА',12),(1573,2397,'ДОЛНА СЕКИРНА',14),(1574,7123,'ДОЛНА СТУДЕНА',18),(1575,7931,'ДОЛНА ХУБАВКА',25),(1576,1855,'ДОЛНИ БОГРОВ',22),(1577,3782,'ДОЛНИ БОШНЯК',5),(1578,3344,'ДОЛНИ ВАДИН',6),(1579,5969,'ДОЛНИ ВИТ',15),(1580,5380,'ДОЛНИ ВЪРПИЩА',7),(1581,6483,'ДОЛНИ ГЛАВАНАК',26),(1582,5036,'ДОЛНИ ДАМЯНОВЦИ',4),(1583,5380,'ДОЛНИ ДРАГОЙЧА',7),(1584,5870,'ДОЛНИ ДЪБНИК',15),(1585,2558,'ДОЛНИ КОРИТЕН',10),(1586,3958,'ДОЛНИ ЛОМ',5),(1587,5867,'ДОЛНИ ЛУКОВИТ',15),(1588,5360,'ДОЛНИ МАРЕНЦИ',7),(1589,5084,'ДОЛНИ МАРЯН',4),(1590,2028,'ДОЛНИ ОКОЛ',22),(1591,1165,'ДОЛНИ ПАСАРЕЛ',22),(1592,5360,'ДОЛНИ РАДКОВЦИ',7),(1593,2413,'ДОЛНИ РАКОВЕЦ',14),(1594,2367,'ДОЛНИ РОМАНЦИ',14),(1595,5097,'ДОЛНИ ТАНЧЕВЦИ',4),(1596,5350,'ДОЛНИ ТОМЧЕВЦИ',7),(1597,3642,'ДОЛНИ ЦИБЪР',12),(1598,9120,'ДОЛНИ ЧИФЛИК',3),(1599,6954,'ДОЛНИ ЮРУЦИ',9),(1600,7053,'ДОЛНО АБЛАНОВО',18),(1601,6422,'ДОЛНО БЕЛЕВО',26),(1602,3437,'ДОЛНО БЕЛОТИНЦИ',12),(1603,6393,'ДОЛНО БОТЕВО',26),(1604,6389,'ДОЛНО ВОЙВОДИНО',26),(1605,4446,'ДОЛНО ВЪРШИЛО',13),(1606,6358,'ДОЛНО ГОЛЕМАНЦИ',26),(1607,2798,'ДОЛНО ДРАГЛИЩЕ',1),(1608,2944,'ДОЛНО ДРЯНОВО',1),(1609,6183,'ДОЛНО ИЗВОРОВО',24),(1610,2137,'ДОЛНО КАМАРЦИ',22),(1611,2556,'ДОЛНО КОБИЛЕ',10),(1612,7926,'ДОЛНО КОЗАРЕВО',25),(1613,6870,'ДОЛНО КЪПИНОВО',9),(1614,4535,'ДОЛНО ЛЕВСКИ',13),(1615,3605,'ДОЛНО ЛИНЕВО',12),(1616,6586,'ДОЛНО ЛУКОВО',26),(1617,7938,'ДОЛНО НОВКОВО',25),(1618,6226,'ДОЛНО НОВО СЕЛО',24),(1619,2212,'ДОЛНО НОВО СЕЛО',22),(1620,3538,'ДОЛНО ОЗИРОВО',12),(1621,2757,'ДОЛНО ОСЕНОВО',1),(1622,6382,'ДОЛНО ПОЛЕ',26),(1623,6779,'ДОЛНО ПРАХОВО',9),(1624,7624,'ДОЛНО РЯХОВО',19),(1625,6161,'ДОЛНО САХРАНЕ',24),(1626,2567,'ДОЛНО СЕЛО',10),(1627,2869,'ДОЛНО СПАНЧЕВО',1),(1628,6455,'ДОЛНО СЪДИЕВО',26),(1629,2560,'ДОЛНО УЙНО',10),(1630,3639,'ДОЛНО ЦЕРОВЕНЕ',12),(1631,6381,'ДОЛНО ЧЕРКОВИЩЕ',26),(1632,5090,'ДОЛНО ШИВАЧЕВО',4),(1633,8342,'ДОЛНО ЯБЪЛКОВО',2),(1634,6573,'ДОЛНОСЕЛЦИ',26),(1635,4254,'ДОЛНОСЛАВ',16),(1636,6887,'ДОМИЩЕ',9),(1637,4357,'ДОМЛЯН',16),(1638,3659,'ДОНДУКОВ',12),(1639,5342,'ДОНИНО',7),(1640,5360,'ДОНКИНО',7),(1641,5081,'ДОНКОВЦИ',4),(1642,9354,'ДОНЧЕВО',8),(1643,5351,'ДОНЧОВЦИ',7),(1644,4641,'ДОРКОВО',13),(1645,6472,'ДОСИТЕЕВО',26),(1646,4831,'ДОСПАТ',21),(1647,2012,'ДОСПЕЙ',22),(1648,5380,'ДОЧА',7),(1649,6577,'ДРАБИШНА',26),(1650,5524,'ДРАГАНА',11),(1651,3534,'ДРАГАНИЦА',12),(1652,7773,'ДРАГАНОВЕЦ',25),(1653,8114,'ДРАГАНОВО',2),(1654,5137,'ДРАГАНОВО',4),(1655,9349,'ДРАГАНОВО',8),(1656,6714,'ДРАГАНОВО',9),(1657,5332,'ДРАГАНОВЦИ',7),(1658,5094,'ДРАГАНОВЦИ',4),(1659,5081,'ДРАГАНОСКОВЦИ',4),(1660,8489,'ДРАГАНЦИ',2),(1661,5335,'ДРАГАНЧЕТАТА',7),(1662,5952,'ДРАГАШ ВОЙВОДА',15),(1663,5332,'ДРАГИЕВЦИ',7),(1664,5145,'ДРАГИЖЕВО',4),(1665,5094,'ДРАГИЙЦИ',4),(1666,4642,'ДРАГИНОВО',13),(1667,2351,'ДРАГИЧЕВО',14),(1668,5097,'ДРАГНЕВЦИ',4),(1669,5360,'ДРАГНЕВЦИ',7),(1670,2237,'ДРАГОВИЩИЦА',22),(1671,2564,'ДРАГОВИЩИЦА',10),(1672,8437,'ДРАГОВО',2),(1673,2625,'ДРАГОДАН',10),(1674,8888,'ДРАГОДАНОВО',20),(1675,9860,'ДРАГОЕВО',27),(1676,2208,'ДРАГОИЛ',22),(1677,5751,'ДРАГОИЦА',11),(1678,4293,'ДРАГОЙНОВО',16),(1679,2554,'ДРАГОЙЧИНЦИ',10),(1680,2210,'ДРАГОМАН',22),(1681,5343,'ДРАГОМАНИ',7),(1682,4184,'ДРАГОМИР',16),(1683,2428,'ДРАГОМИРОВО',14),(1684,5285,'ДРАГОМИРОВО',4),(1685,7419,'ДРАГОМЪЖ',17),(1686,4406,'ДРАГОР',13),(1687,2916,'ДРАГОСТИН',1),(1688,2218,'ДРАГОТИНЦИ',22),(1689,2875,'ДРАГУШ',1),(1690,2008,'ДРАГУШИНОВО',22),(1691,8634,'ДРАЖЕВО',28),(1692,3929,'ДРАЖИНЦИ',5),(1693,8324,'ДРАКА',2),(1694,2829,'ДРАКАТА',1),(1695,7782,'ДРАЛФА',17),(1696,8651,'ДРАМА',28),(1697,4164,'ДРАНГОВО',16),(1698,6860,'ДРАНГОВО',9),(1699,2859,'ДРАНГОВО',1),(1700,5363,'ДРАНДАРИТЕ',7),(1701,8319,'ДРАЧЕВО',2),(1702,3267,'ДРАШАН',6),(1703,5648,'ДРАШКОВА ПОЛЯНА',11),(1704,2213,'ДРЕАТИН',22),(1705,2430,'ДРЕН',14),(1706,2739,'ДРЕНКОВО',1),(1707,5562,'ДРЕНОВ',11),(1708,3920,'ДРЕНОВЕЦ',5),(1709,2895,'ДРЕНОВИЦА',1),(1710,2236,'ДРЕНОВО',22),(1711,2876,'ДРЕНОВО',1),(1712,5095,'ДРЕНТА',4),(1713,9788,'ДРЕНЦИ',27),(1714,7834,'ДРИНОВО',25),(1715,6477,'ДРИПЧЕВО',26),(1716,9641,'ДРОПЛА',8),(1717,8563,'ДРОПЛА',2),(1718,2410,'ДРУГАН',14),(1719,3730,'ДРУЖБА',5),(1720,2281,'ДРУЖЕВО',22),(1721,6885,'ДРУЖИНЦИ',9),(1722,9815,'ДРУМЕВО',27),(1723,2596,'ДРУМОХАР',10),(1724,6820,'ДРУМЧЕ',9),(1725,2238,'ДРЪМША',22),(1726,9173,'ДРЪНДАР',3),(1727,4941,'ДРЯНКА',21),(1728,8524,'ДРЯНКОВЕЦ',2),(1729,6865,'ДРЯНОВА ГЛАВА',9),(1730,7122,'ДРЯНОВЕЦ',18),(1731,9392,'ДРЯНОВЕЦ',8),(1732,7268,'ДРЯНОВЕЦ',17),(1733,4856,'ДРЯНОВЕЦ',21),(1734,5370,'ДРЯНОВО',7),(1735,4241,'ДРЯНОВО',16),(1736,6493,'ДРЯНОВО',26),(1737,8652,'ДРЯНОВО',28),(1738,5618,'ДРЯНСКА',11),(1739,5462,'ДРЯНЪТ',7),(1740,4174,'ДУВАНЛИИ',16),(1741,6562,'ДУГАНОВО',26),(1742,5094,'ДУКОВЦИ',4),(1743,7650,'ДУЛОВО',19),(1744,5345,'ДУМНИЦИ',7),(1745,7623,'ДУНАВЕЦ',19),(1746,5041,'ДУНАВЦИ',4),(1747,3740,'ДУНАВЦИ',5),(1748,6145,'ДУНАВЦИ',24),(1749,4723,'ДУНЕВО',21),(1750,4990,'ДУНЯ',21),(1751,2600,'ДУПНИЦА',10),(1752,9670,'ДУРАНКУЛАК',8),(1753,5089,'ДУРОВЦИ',4),(1754,5380,'ДУРЧА',7),(1755,7435,'ДУХОВЕЦ',17),(1756,2083,'ДУШАНЦИ',22),(1757,5455,'ДУШЕВО',7),(1758,5455,'ДУШЕВСКИ КОЛИБИ',7),(1759,6846,'ДУШИНКОВО',9),(1760,2398,'ДУШИНЦИ',14),(1761,6714,'ДУШКА',9),(1762,5787,'ДЪБЕН',11),(1763,4349,'ДЪБЕНЕ',16),(1764,8213,'ДЪБНИК',2),(1765,2940,'ДЪБНИЦА',1),(1766,8996,'ДЪБОВА',20),(1767,4969,'ДЪБОВА',21),(1768,3674,'ДЪБОВА МАХАЛА',12),(1769,5973,'ДЪБОВАН',15),(1770,6554,'ДЪБОВЕЦ',26),(1771,9551,'ДЪБОВИК',8),(1772,8449,'ДЪБОВИЦА',2),(1773,8736,'ДЪБОВО',28),(1774,6178,'ДЪБОВО',24),(1775,9638,'ДЪБРАВА',8),(1776,2723,'ДЪБРАВА',1),(1777,5546,'ДЪБРАВА',11),(1778,5765,'ДЪБРАВАТА',11),(1779,9126,'ДЪБРАВИНО',3),(1780,4472,'ДЪБРАВИТЕ',13),(1781,7997,'ДЪБРАВИЦА',25),(1782,3916,'ДЪБРАВКА',5),(1783,6642,'ДЪЖДИНО',9),(1784,6917,'ДЪЖДОВНИК',9),(1785,6747,'ДЪЖДОВНИЦА',9),(1786,5668,'ДЪЛБОК ДОЛ',11),(1787,4280,'ДЪЛБОК ИЗВОР',16),(1788,6060,'ДЪЛБОКИ',24),(1789,5745,'ДЪЛГА ЛИВАДА',11),(1790,2492,'ДЪЛГА ЛУКА',14),(1791,7742,'ДЪЛГАЧ',25),(1792,3475,'ДЪЛГИ ДЕЛ',12),(1793,5088,'ДЪЛГИ ПРИПЕК',4),(1794,3756,'ДЪЛГО ПОЛЕ',5),(1795,4195,'ДЪЛГО ПОЛЕ',16),(1796,3638,'ДЪЛГОДЕЛЦИ',12),(1797,9250,'ДЪЛГОПОЛ',3),(1798,6637,'ДЪНГОВО',9),(1799,5350,'ДЪРВАРИ',7),(1800,6217,'ДЪРЖАВА',24),(1801,6188,'ДЪРЖАВЕН',24),(1802,3747,'ДЪРЖАНИЦА',5),(1803,5070,'ДЪРЛЕВЦИ',4),(1804,3129,'ДЪРМАНЦИ',6),(1805,5363,'ДЪСКАРИТЕ',7),(1806,5223,'ДЪСКОТ',4),(1807,8561,'ДЪСКОТНА',2),(1808,8330,'ДЮЛЕВО',2),(1809,4529,'ДЮЛЕВО',13),(1810,9108,'ДЮЛИНО',3),(1811,6876,'ДЮЛИЦА',9),(1812,8571,'ДЮЛЯ',2),(1813,8918,'ДЯДОВО',20),(1814,6705,'ДЯДОВСКО',9),(1815,6764,'ДЯДОВЦИ',9),(1816,2651,'ДЯКОВО',10),(1817,5454,'ДЯЛЪК',7),(1818,7270,'ДЯНКОВО',17),(1819,5965,'ЕВЛОГИЕВО',15),(1820,8363,'ЕВРЕНЕЗОВО',2),(1821,6931,'ЕГРЕК',9),(1822,2429,'ЕГЪЛНИЦА',14),(1823,9792,'ЕДИНАКОВЦИ',27),(1824,6173,'ЕДРЕВО',24),(1825,2464,'ЕЗДИМИРЦИ',14),(1826,2846,'ЕЗЕРЕЦ',1),(1827,9687,'ЕЗЕРЕЦ',8),(1828,8919,'ЕЗЕРО',20),(1829,9168,'ЕЗЕРОВО',3),(1830,4288,'ЕЗЕРОВО',16),(1831,5309,'ЕЗЕРОТО',7),(1832,7274,'ЕЗЕРЧЕ',17),(1833,8490,'ЕКЗАРХ АНТИМОВО',2),(1834,7171,'ЕКЗАРХ ЙОСИФ',18),(1835,5070,'ЕЛЕНА',4),(1836,6399,'ЕЛЕНА',26),(1837,6047,'ЕЛЕНИНО',24),(1838,4990,'ЕЛЕНКА',21),(1839,2275,'ЕЛЕНОВ ДОЛ',22),(1840,2726,'ЕЛЕНОВО',1),(1841,8943,'ЕЛЕНОВО',20),(1842,7837,'ЕЛЕНОВО',25),(1843,4731,'ЕЛЕНСКА',21),(1844,5388,'ЕЛЕНЦИТЕ',7),(1845,2782,'ЕЛЕШНИЦА',1),(1846,2125,'ЕЛЕШНИЦА',22),(1847,2100,'ЕЛИН ПЕЛИН',22),(1848,3160,'ЕЛИСЕЙНА',6),(1849,2159,'ЕЛОВДОЛ',22),(1850,2434,'ЕЛОВДОЛ',14),(1851,3471,'ЕЛОВИЦА',12),(1852,2489,'ЕЛОВИЦА',14),(1853,4970,'ЕЛХОВЕЦ',21),(1854,8700,'ЕЛХОВО',28),(1855,6174,'ЕЛХОВО',24),(1856,6064,'ЕЛХОВО',24),(1857,4538,'ЕЛШИЦА',13),(1858,4783,'ЕЛЬОВО',21),(1859,5065,'ЕМЕН',4),(1860,8252,'ЕМОНА',2),(1861,5469,'ЕНЕВ РЪТ',7),(1862,9389,'ЕНЕВО',8),(1863,9919,'ЕНЕВО',27),(1864,6142,'ЕНИНА',24),(1865,3261,'ЕНИЦА',6),(1866,6735,'ЕНЧЕЦ',9),(1867,5360,'ЕНЧОВЦИ',7),(1868,6788,'ЕНЬОВЧЕ',9),(1869,3431,'ЕРДЕН',12),(1870,2585,'ЕРЕМИЯ',10),(1871,4997,'ЕРМА РЕКА',21),(1872,6865,'ЕРОВЕТЕ',9),(1873,2486,'ЕРУЛ',14),(1874,8459,'ЕСЕН',2),(1875,9289,'ЕСЕНИЦА',3),(1876,2180,'ЕТРОПОЛЕ',22),(1877,9422,'ЕФРЕЙТОР БАКАЛОВО',8),(1878,6476,'ЕФРЕМ',26),(1879,2442,'ЖАБЛЯНО',14),(1880,2545,'ЖАБОКРЪТ',10),(1881,9492,'ЖЕГЛАРЦИ',8),(1882,3738,'ЖЕГЛИЦА',5),(1883,2423,'ЖЕДНА',14),(1884,6594,'ЖЕЛЕЗАРИ',26),(1885,7948,'ЖЕЛЕЗАРИ',25),(1886,5164,'ЖЕЛЕЗАРЦИ',4),(1887,6595,'ЖЕЛЕЗИНО',26),(1888,3461,'ЖЕЛЕЗНА',12),(1889,8488,'ЖЕЛЕЗНИК',2),(1890,6711,'ЖЕЛЕЗНИК',9),(1891,1475,'ЖЕЛЕЗНИЦА',22),(1892,2732,'ЖЕЛЕЗНИЦА',1),(1893,2267,'ЖЕЛЕН',22),(1894,9826,'ЖЕЛЪД',27),(1895,6855,'ЖЕЛЪДОВО',9),(1896,8860,'ЖЕЛЮ ВОЙВОДА',20),(1897,1837,'ЖЕЛЯВА',22),(1898,7455,'ЖЕЛЯЗКОВЕЦ',17),(1899,4136,'ЖЕЛЯЗНО',16),(1900,8106,'ЖЕЛЯЗОВО',2),(1901,6693,'ЖЕНДА',9),(1902,2567,'ЖЕРАВИНО',10),(1903,5621,'ЖЕРАВИЦА',11),(1904,8988,'ЖЕРАВНА',20),(1905,6190,'ЖЕРГОВЕЦ',24),(1906,5964,'ЖЕРНОВ',15),(1907,5344,'ЖИВКО',7),(1908,2065,'ЖИВКОВО',22),(1909,9794,'ЖИВКОВО',27),(1910,5622,'ЖИДОВ ДОЛ',11),(1911,2956,'ЖИЖЕВО',1),(1912,2573,'ЖИЛЕНЦИ',10),(1913,9929,'ЖИЛИНО',27),(1914,6654,'ЖИНЗИФОВО',9),(1915,6636,'ЖИТАРНИК',9),(1916,9555,'ЖИТЕН',8),(1917,1211,'ЖИТЕН',22),(1918,9424,'ЖИТНИЦА',8),(1919,4172,'ЖИТНИЦА',16),(1920,9278,'ЖИТНИЦА',3),(1921,6708,'ЖИТНИЦА',9),(1922,8475,'ЖИТОСВЯТ',2),(1923,2432,'ЖИТУША',14),(1924,4827,'ЖРЕБЕВО',21),(1925,8733,'ЖРЕБИНО',28),(1926,4585,'ЖРЕБИЧКО',13),(1927,8894,'ЖЪЛТ БРЯГ',20),(1928,4298,'ЖЪЛТ КАМЪК',16),(1929,5335,'ЖЪЛТЕШ',7),(1930,6368,'ЖЪЛТИ БРЯГ',26),(1931,6846,'ЖЪЛТИ РИД',9),(1932,6842,'ЖЪЛТИКА',9),(1933,6195,'ЖЪЛТОПОП',24),(1934,6789,'ЖЪЛТУША',9),(1935,2469,'ЗАБЕЛ',14),(1936,8367,'ЗАБЕРНОВО',2),(1937,4872,'ЗАБЪРДО',21),(1938,2374,'ЗАВАЛА',14),(1939,7330,'ЗАВЕТ',17),(1940,7881,'ЗАВЕТНО',25),(1941,2288,'ЗАВИДОВЦИ',22),(1942,8633,'ЗАВОЙ',28),(1943,6063,'ЗАГОРЕ',24),(1944,9966,'ЗАГОРИЧЕ',27),(1945,6865,'ЗАГОРСКИ',9),(1946,6817,'ЗАГОРСКО',9),(1947,9413,'ЗАГОРЦИ',8),(1948,8939,'ЗАГОРЦИ',20),(1949,8321,'ЗАГОРЦИ',2),(1950,4950,'ЗАГРАЖДЕН',21),(1951,5974,'ЗАГРАЖДЕН',15),(1952,7317,'ЗАДРУГА',17),(1953,4710,'ЗАЕВИТЕ',21),(1954,8564,'ЗАИМЧЕВО',2),(1955,8557,'ЗАЙЧАР',2),(1956,8843,'ЗАЙЧАРИ',20),(1957,6749,'ЗАЙЧИНО',9),(1958,9918,'ЗАЙЧИНО ОРЕШЕ',27),(1959,2085,'ЗАМУХОВО',22),(1960,3644,'ЗАМФИР',12),(1961,3530,'ЗАМФИРОВО',12),(1962,2875,'ЗАНОГА',1),(1963,2283,'ЗАНОГЕ',22),(1964,7832,'ЗАРАЕВО',25),(1965,7689,'ЗАРИЦА',19),(1966,7552,'ЗАРНИК',19),(1967,2284,'ЗАСЕЛЕ',22),(1968,9141,'ЗАСМЯНО',3),(1969,7610,'ЗАФИРОВО',19),(1970,7842,'ЗАХАРИ СТОЯНОВО',25),(1971,9671,'ЗАХАРИ СТОЯНОВО',8),(1972,5397,'ЗАЯ',7),(1973,9791,'ЗВЕГОР',27),(1974,7878,'ЗВЕЗДА',25),(1975,8572,'ЗВЕЗДА',2),(1976,6820,'ЗВЕЗДЕЛ',9),(1977,6653,'ЗВЕЗДЕЛИНА',9),(1978,6658,'ЗВЕЗДЕН',9),(1979,8360,'ЗВЕЗДЕЦ',2),(1980,9103,'ЗВЕЗДИЦА',3),(1981,7945,'ЗВЕЗДИЦА',25),(1982,7644,'ЗВЕНИМИР',19),(1983,3170,'ЗВЕРИНО',6),(1984,6668,'ЗВИНИЦА',9),(1985,6920,'ЗВЪНАРКА',9),(1986,7333,'ЗВЪНАРЦИ',17),(1987,9142,'ЗВЪНЕЦ',3),(1988,6732,'ЗВЪНИКА',9),(1989,4415,'ЗВЪНИЧЕВО',13),(1990,6744,'ЗВЪНЧЕ',9),(1991,5897,'ЗГАЛЕВО',15),(1992,3042,'ЗГОРИГРАД',6),(1993,2592,'ЗГУРОВО',10),(1994,9137,'ЗДРАВЕЦ',3),(1995,6435,'ЗДРАВЕЦ',26),(1996,4241,'ЗДРАВЕЦ',16),(1997,7437,'ЗДРАВЕЦ',17),(1998,7769,'ЗДРАВЕЦ',25),(1999,5344,'ЗДРАВКОВЕЦ',7),(2000,6861,'ЗДРАВЧЕЦ',9),(2001,7641,'ЗЕБИЛ',19),(2002,7954,'ЗЕЛЕНА МОРАВА',25),(2003,2745,'ЗЕЛЕНДОЛ',1),(2004,2478,'ЗЕЛЕНИГРАД',14),(2005,5099,'ЗЕЛЕНИК',4),(2006,5351,'ЗЕЛЕНИКА',7),(2007,4155,'ЗЕЛЕНИКОВО',16),(2008,6740,'ЗЕЛЕНИКОВО',9),(2009,5304,'ЗЕЛЕНО ДЪРВО',7),(2010,2440,'ЗЕМЕН',14),(2011,9411,'ЗЕМЕНЦИ',8),(2012,6266,'ЗЕМЛЕН',24),(2013,8517,'ЗЕТЬОВО',2),(2014,6220,'ЗЕТЬОВО',24),(2015,8160,'ЗИДАРОВО',2),(2016,2356,'ЗИДАРЦИ',14),(2017,2282,'ЗИМЕВИЦА',22),(2018,8428,'ЗИМЕН',2),(2019,6627,'ЗИМЗЕЛЕН',9),(2020,9421,'ЗИМНИЦА',8),(2021,6177,'ЗИМНИЦА',24),(2022,8690,'ЗИМНИЦА',28),(2023,6396,'ЗИМОВИНА',26),(2024,6965,'ЗИМОРНИЦА',9),(2025,9880,'ЗЛАТАР',27),(2026,8641,'ЗЛАТАРИ',28),(2027,2783,'ЗЛАТАРИЦА',1),(2028,5090,'ЗЛАТАРИЦА',4),(2029,5345,'ЗЛАТЕВЦИ',7),(2030,8875,'ЗЛАТИ ВОЙВОДА',20),(2031,9218,'ЗЛАТИНА',3),(2032,8746,'ЗЛАТИНИЦА',28),(2033,6197,'ЗЛАТИРЪТ',24),(2034,4212,'ЗЛАТИТРАП',16),(2035,2080,'ЗЛАТИЦА',22),(2036,3630,'ЗЛАТИЯ',12),(2037,9385,'ЗЛАТИЯ',8),(2038,6221,'ЗЛАТНА ЛИВАДА',24),(2039,9944,'ЗЛАТНА НИВА',27),(2040,5760,'ЗЛАТНА ПАНЕГА',11),(2041,9007,'ЗЛАТНИ ПЯСЪЦИ',3),(2042,4264,'ЗЛАТОВРЪХ',16),(2043,4980,'ЗЛАТОГРАД',21),(2044,7694,'ЗЛАТОКЛАС',19),(2045,6915,'ЗЛАТОЛИСТ',9),(2046,2830,'ЗЛАТОЛИСТ',1),(2047,6421,'ЗЛАТОПОЛЕ',26),(2048,4162,'ЗЛАТОСЕЛ',16),(2049,6484,'ЗЛАТОУСТОВО',26),(2050,2225,'ЗЛАТУША',22),(2051,3161,'ЗЛИДОЛ',6),(2052,2558,'ЗЛОГОШ',10),(2053,2009,'ЗЛОКУЧЕНЕ',22),(2054,4491,'ЗЛОКУЧЕНЕ',13),(2055,9643,'ЗМЕЕВО',8),(2056,4834,'ЗМЕИЦА',21),(2057,7945,'ЗМЕЙНО',25),(2058,6059,'ЗМЕЬОВО',24),(2059,4777,'ЗМИЕВО',21),(2060,6272,'ЗНАМЕНОСЕЦ',24),(2061,9553,'ЗОГРАФ',8),(2062,2882,'ЗОЙЧЕНЕ',1),(2063,5737,'ЗОРЕНИШКИ ДОЛ',11),(2064,9156,'ЗОРНИЦА',3),(2065,6650,'ЗОРНИЦА',9),(2066,2821,'ЗОРНИЦА',1),(2067,8313,'ЗОРНИЦА',2),(2068,6367,'ЗОРНИЦА',26),(2069,4857,'ЗОРНИЦА',21),(2070,9491,'ЗЪРНЕВО',8),(2071,4407,'ИВАЙЛО',13),(2072,6570,'ИВАЙЛОВГРАД',26),(2073,4206,'ИВАН ВАЗОВО',16),(2074,5363,'ИВАН ДИМОВ',7),(2075,7342,'ИВАН ШИШМАНОВО',17),(2076,5084,'ИВАНИВАНОВЦИ',4),(2077,5300,'ИВАНИЛИ',7),(2078,5340,'ИВАНКОВЦИ',7),(2079,9865,'ИВАНОВО',27),(2080,7088,'ИВАНОВО',18),(2081,2875,'ИВАНОВО',1),(2082,4918,'ИВАНОВО',21),(2083,6465,'ИВАНОВО',26),(2084,5035,'ИВАНОВЦИ',4),(2085,3739,'ИВАНОВЦИ',5),(2086,2562,'ИВАНОВЦИ',10),(2087,9810,'ИВАНСКИ',27),(2088,6628,'ИВАНЦИ',9),(2089,5194,'ИВАНЧА',4),(2090,7859,'ИВАНЧА',25),(2091,5623,'ИВАНШНИЦА',11),(2092,1393,'ИВАНЯНЕ',22),(2093,4334,'ИГАНОВО',16),(2094,8745,'ИГЛИКА',28),(2095,5343,'ИГЛИКА',7),(2096,9797,'ИГЛИКА',27),(2097,9143,'ИГНАТИЕВО',3),(2098,3167,'ИГНАТИЦА',6),(2099,3631,'ИГНАТОВО',12),(2100,5370,'ИГНАТОВЦИ',7),(2101,5098,'ИГНАТОВЦИ',4),(2102,2848,'ИГРАЛИЩЕ',1),(2103,5422,'ИДИЛЕВО',7),(2104,4269,'ИЗБЕГЛИИ',16),(2105,9959,'ИЗБУЛ',27),(2106,3742,'ИЗВОР',5),(2107,2415,'ИЗВОР',14),(2108,4116,'ИЗВОР',16),(2109,2219,'ИЗВОР',22),(2110,8153,'ИЗВОР',2),(2111,3821,'ИЗВОР МАХАЛА',5),(2112,8116,'ИЗВОРИЩЕ',2),(2113,9297,'ИЗВОРНИК',3),(2114,7950,'ИЗВОРОВО',25),(2115,4235,'ИЗВОРОВО',16),(2116,9538,'ИЗВОРОВО',8),(2117,6461,'ИЗВОРОВО',26),(2118,6242,'ИЗВОРОВО',24),(2119,9154,'ИЗВОРСКО',3),(2120,5536,'ИЗВОРЧЕ',11),(2121,2711,'ИЗГРЕВ',1),(2122,9754,'ИЗГРЕВ',27),(2123,8717,'ИЗГРЕВ',28),(2124,5924,'ИЗГРЕВ',15),(2125,4990,'ИЗГРЕВ',21),(2126,8847,'ИЗГРЕВ',20),(2127,9176,'ИЗГРЕВ',3),(2128,8273,'ИЗГРЕВ',2),(2129,5335,'ИЗТОЧНИК',7),(2130,5082,'ИЛАКОВ РЪТ',4),(2131,5045,'ИЛЕВЦИ',4),(2132,7948,'ИЛИЙНО',25),(2133,6845,'ИЛИЙСКО',9),(2134,2072,'ИЛИНДЕН',22),(2135,2929,'ИЛИНДЕН',1),(2136,2833,'ИЛИНДЕНЦИ',1),(2137,6745,'ИЛИНИЦА',9),(2138,5093,'ИЛИЮВЦИ',4),(2139,2581,'ИЛИЯ',10),(2140,9813,'ИЛИЯ БЛЪСКОВО',27),(2141,9877,'ИМРЕНЧЕВО',27),(2142,8149,'ИНДЖЕ ВОЙВОДА',2),(2143,3763,'ИНОВО',5),(2144,9666,'ИРЕЧЕК',8),(2145,8697,'ИРЕЧЕКОВО',28),(2146,5367,'ИРИНЕЦИ',7),(2147,7532,'ИРНИК',19),(2148,6781,'ИСКРА',9),(2149,5380,'ИСКРА',7),(2150,8481,'ИСКРА',2),(2151,4297,'ИСКРА',16),(2152,7580,'ИСКРА',19),(2153,2290,'ИСКРЕЦ',22),(2154,2288,'ИСКРЕЦ - САНАТОРИУМ',22),(2155,6293,'ИСКРИЦА',24),(2156,9285,'ИСКЪР',3),(2157,5972,'ИСКЪР',15),(2158,5868,'ИСКЪР',15),(2159,7400,'ИСПЕРИХ',17),(2160,4588,'ИСПЕРИХОВО',13),(2161,4767,'ИСЬОВЦИ',21),(2162,2050,'ИХТИМАН',22),(2163,8849,'ИЧЕРА',20),(2164,6551,'ЙЕРУСАЛИМОВО',26),(2165,4219,'ЙОАКИМ ГРУЕВО',16),(2166,9531,'ЙОВКОВО',8),(2167,5360,'ЙОВОВЦИ',7),(2168,5035,'ЙОВЧЕВЦИ',4),(2169,5553,'ЙОГЛАВ',11),(2170,7450,'ЙОНКОВО',17),(2171,6724,'ЙОНЧОВО',9),(2172,7569,'ЙОРДАНОВО',19),(2173,8629,'КАБИЛЕ',28),(2174,8210,'КАБЛЕШКОВО',2),(2175,9488,'КАБЛЕШКОВО',8),(2176,6703,'КАБЛЕШКОВО',9),(2177,9650,'КАВАРНА',8),(2178,8143,'КАВАЦИТЕ',2),(2179,5163,'КАВЛАК',4),(2180,2889,'КАВРАКИРОВО',1),(2181,4213,'КАДИЕВО',16),(2182,2593,'КАДРОВИЦА',10),(2183,6590,'КАЗАК',26),(2184,6062,'КАЗАНКА',24),(2185,6100,'КАЗАНЛЪК',24),(2186,6850,'КАЗАЦИТЕ',9),(2187,5548,'КАЗАЧЕВО',11),(2188,9125,'КАЗАШКА РЕКА',3),(2189,9140,'КАЗАШКО',3),(2190,7574,'КАЗИМИР',19),(2191,1532,'КАЗИЧЕНЕ',22),(2192,7550,'КАЙНАРДЖА',19),(2193,6927,'КАЛАЙДЖИЕВО',9),(2194,5096,'КАЛАЙДЖИИ',4),(2195,5667,'КАЛЕЙЦА',11),(2196,4147,'КАЛЕКОВЕЦ',16),(2197,3151,'КАЛЕН',6),(2198,3829,'КАЛЕНИК',5),(2199,5575,'КАЛЕНИК',11),(2200,2253,'КАЛЕНОВЦИ',22),(2201,2832,'КАЛИМАНЦИ',1),(2202,9177,'КАЛИМАНЦИ',3),(2203,3788,'КАЛИНА',5),(2204,9544,'КАЛИНА',8),(2205,6623,'КАЛИНКА',9),(2206,9795,'КАЛИНО',27),(2207,7539,'КАЛИПЕТРОВО',19),(2208,6049,'КАЛИТИНОВО',24),(2209,2431,'КАЛИЩЕ',14),(2210,7960,'КАЛНИЩЕ',25),(2211,8368,'КАЛОВО',2),(2212,5388,'КАЛОМЕН',7),(2213,2212,'КАЛОТИНА',22),(2214,2444,'КАЛОТИНЦИ',14),(2215,4370,'КАЛОФЕР',16),(2216,9288,'КАЛОЯН',3),(2217,6070,'КАЛОЯНОВЕЦ',24),(2218,4173,'КАЛОЯНОВО',16),(2219,8881,'КАЛОЯНОВО',20),(2220,6675,'КАЛОЯНЦИ',9),(2221,7631,'КАЛУГЕРЕНЕ',19),(2222,4462,'КАЛУГЕРОВО',13),(2223,2169,'КАЛУГЕРОВО',22),(2224,6495,'КАЛУГЕРОВО',26),(2225,8677,'КАЛЧЕВО',28),(2226,5616,'КАЛЧЕВСКА',11),(2227,5340,'КАЛЧОВЦИ',7),(2228,2215,'КАМБЕЛЕВЦИ',22),(2229,7930,'КАМБУРОВО',25),(2230,9425,'КАМЕН',8),(2231,8882,'КАМЕН',20),(2232,5160,'КАМЕН',4),(2233,9661,'КАМЕН БРЯГ',8),(2234,8728,'КАМЕН ВРЪХ',28),(2235,9253,'КАМЕН ДЯЛ',3),(2236,2878,'КАМЕНА',1),(2237,9102,'КАМЕНАР',3),(2238,7247,'КАМЕНАР',17),(2239,8215,'КАМЕНАР',2),(2240,5083,'КАМЕНАРИ',4),(2241,6729,'КАМЕНАРЦИ',9),(2242,6800,'КАМЕНЕЦ',9),(2243,5866,'КАМЕНЕЦ',15),(2244,8655,'КАМЕНЕЦ',28),(2245,2677,'КАМЕНИК',10),(2246,2072,'КАМЕНИЦА',22),(2247,2828,'КАМЕНИЦА',1),(2248,2572,'КАМЕНИЧКА СКАКАВИЦА',10),(2249,6918,'КАМЕНКА',9),(2250,8997,'КАМЕННА',20),(2251,6546,'КАМЕННА РЕКА',26),(2252,3479,'КАМЕННА РИКСА',12),(2253,8120,'КАМЕНО',2),(2254,3150,'КАМЕНО ПОЛЕ',6),(2255,7295,'КАМЕНОВО',18),(2256,8928,'КАМЕНОВО',20),(2257,8455,'КАМЕНСКО',2),(2258,7565,'КАМЕНЦИ',19),(2259,8578,'КАМЕНЯК',2),(2260,9783,'КАМЕНЯК',27),(2261,6850,'КАМЕНЯНЕ',9),(2262,5333,'КАМЕЩИЦА',7),(2263,6571,'КАМИЛСКИ ДОЛ',26),(2264,9130,'КАМЧИЯ',3),(2265,8434,'КАМЧИЯ',2),(2266,6937,'КАНДИЛКА',9),(2267,4631,'КАНДОВИ',13),(2268,3843,'КАНИЦ',5),(2269,5094,'КАНТАРИ',4),(2270,6695,'КАНЯК',9),(2271,9960,'КАОЛИНОВО',27),(2272,2872,'КАПАТОВО',1),(2273,6530,'КАПИТАН АНДРЕЕВО',26),(2274,4589,'КАПИТАН ДИМИТРИЕВО',13),(2275,9408,'КАПИТАН ДИМИТРОВО',8),(2276,9770,'КАПИТАН ПЕТКО',27),(2277,3768,'КАПИТАНОВЦИ',5),(2278,7988,'КАПИЩЕ',25),(2279,7453,'КАРА МИХАЛ',17),(2280,4484,'КАРАБУНАР',13),(2281,4350,'КАРАВЕЛОВО',16),(2282,9942,'КАРАВЕЛОВО',27),(2283,8647,'КАРАВЕЛОВО',28),(2284,8553,'КАРАВЕЛЬОВО',2),(2285,8543,'КАРАГЕОРГИЕВО',2),(2286,4283,'КАРАДЖАЛОВО',16),(2287,4117,'КАРАДЖОВО',16),(2288,5386,'КАРАИВАНЦА',7),(2289,5095,'КАРАИВАНЦИ',4),(2290,5230,'КАРАИСЕН',4),(2291,5343,'КАРАЛИ',7),(2292,9299,'КАРАМАНИТЕ',3),(2293,7130,'КАРАМАНОВО',18),(2294,6372,'КАРАМАНЦИ',26),(2295,5471,'КАРАМИЧЕВСКА',7),(2296,6826,'КАРАМФИЛ',9),(2297,7163,'КАРАН ВЪРБОВКА',18),(2298,8839,'КАРАНДИЛА',20),(2299,5094,'КАРАНДИЛИ',4),(2300,8532,'КАРАНОВО',2),(2301,8934,'КАРАНОВО',20),(2302,5188,'КАРАНЦИ',4),(2303,9390,'КАРАПЕЛИТ',8),(2304,2118,'КАРАПОЛЦИ',22),(2305,3136,'КАРАШ',6),(2306,3923,'КАРБИНЦИ',5),(2307,9619,'КАРВУНА',8),(2308,9530,'КАРДАМ',8),(2309,7830,'КАРДАМ',25),(2310,2088,'КАРЛИЕВО',22),(2311,4300,'КАРЛОВО',16),(2312,6572,'КАРЛОВСКО',26),(2313,5782,'КАРЛУКОВО',11),(2314,8400,'КАРНОБАТ',2),(2315,4921,'КАСАПСКО',21),(2316,2424,'КАСИЛАГ',14),(2317,6439,'КАСНАКОВО',26),(2318,9930,'КАСПИЧАН',27),(2319,9931,'КАСПИЧАН-СЕЛО',27),(2320,5472,'КАСТЕЛ',7),(2321,5894,'КАТЕРИНА',15),(2322,5392,'КАТРАНДЖИИ',7),(2323,4739,'КАТРАНИЦА',21),(2324,2537,'КАТРИЩЕ',10),(2325,5569,'КАТУНЕЦ',11),(2326,4120,'КАТУНИЦА',16),(2327,8991,'КАТУНИЩЕ',20),(2328,2830,'КАТУНЦИ',1),(2329,7160,'КАЦЕЛОВО',18),(2330,6907,'КАЧУЛКА',9),(2331,5351,'КАШЕНЦИ',7),(2332,2820,'КАШИНА',1),(2333,6863,'КАЯЛОБА',9),(2334,5388,'КЕРЕКА',7),(2335,5365,'КЕРЕНИТЕ',7),(2336,8870,'КЕРМЕН',20),(2337,5161,'КЕСАРЕВО',4),(2338,4828,'КЕСТЕН',21),(2339,7973,'КЕСТЕНОВО',25),(2340,5345,'КИЕВЦИ',7),(2341,5050,'КИЛИФАРЕВО',4),(2342,8998,'КИПИЛОВО',20),(2343,9169,'КИПРА',3),(2344,5094,'КИРЕВЦИ',4),(2345,3823,'КИРЕЕВО',5),(2346,8741,'КИРИЛОВО',28),(2347,6064,'КИРИЛОВО',24),(2348,5539,'КИРКОВА МАХАЛА',11),(2349,6884,'КИРКОВО',9),(2350,8344,'КИРОВО',2),(2351,5521,'КИРЧЕВО',11),(2352,3675,'КИСЕЛЕВО',12),(2353,2556,'КИСЕЛИЦА',10),(2354,4765,'КИСЕЛИЧЕВО',21),(2355,5360,'КИСЕЛКОВЦИ',7),(2356,5365,'КИСИЙЦИТЕ',7),(2357,5035,'КИСЬОВЦИ',4),(2358,7430,'КИТАНЧЕВО',17),(2359,9241,'КИТЕН',3),(2360,8284,'КИТЕН',2),(2361,7993,'КИТИНО',25),(2362,9127,'КИТКА',3),(2363,8558,'КИТКА',2),(2364,6868,'КИТНА',9),(2365,6791,'КИТНИЦА',9),(2366,9151,'КИЧЕВО',3),(2367,7243,'КИЧЕНИЦА',17),(2368,6395,'КЛАДЕНЕЦ',26),(2369,9816,'КЛАДЕНЕЦ',27),(2370,2895,'КЛАДЕНЦИ',1),(2371,9497,'КЛАДЕНЦИ',8),(2372,5046,'КЛАДНИ ДЯЛ',4),(2373,2347,'КЛАДНИЦА',14),(2374,3758,'КЛАДОРУБ',5),(2375,2421,'КЛЕНОВИК',14),(2376,2837,'КЛЕПАЛОТО',1),(2377,8427,'КЛИКАЧ',2),(2378,8442,'КЛИМАШ',2),(2379,9970,'КЛИМЕНТ',27),(2380,4348,'КЛИМЕНТ',16),(2381,9150,'КЛИМЕНТОВО',3),(2382,5183,'КЛИМЕНТОВО',4),(2383,1320,'КЛИСУРА',23),(2384,2738,'КЛИСУРА',1),(2385,4341,'КЛИСУРА',16),(2386,2026,'КЛИСУРА',22),(2387,3483,'КЛИСУРИЦА',12),(2388,3543,'КЛИСУРСКИ МАНАСТИР',12),(2389,6310,'КЛОКОТНИЦА',26),(2390,5035,'КЛЪШКА РЕКА',4),(2391,2899,'КЛЮЧ',1),(2392,5340,'КМЕТОВЦИ',7),(2393,5343,'КМЕТЧЕТА',7),(2394,3230,'КНЕЖА',6),(2395,6390,'КНИЖОВНИК',26),(2396,3677,'КНЯЖЕВА МАХАЛА',12),(2397,6566,'КНЯЖЕВО',26),(2398,6077,'КНЯЖЕВСКО',24),(2399,6593,'КОБИЛИНО',26),(2400,3442,'КОБИЛЯК',12),(2401,6734,'КОБИЛЯНЕ',9),(2402,6272,'КОВАЧ',24),(2403,7852,'КОВАЧЕВЕЦ',25),(2404,2969,'КОВАЧЕВИЦА',1),(2405,6264,'КОВАЧЕВО',24),(2406,2824,'КОВАЧЕВО',1),(2407,4477,'КОВАЧЕВО',13),(2408,2450,'КОВАЧЕВЦИ',14),(2409,2023,'КОВАЧЕВЦИ',22),(2410,8874,'КОВАЧИТЕ',20),(2411,3643,'КОВАЧИЦА',12),(2412,6913,'КОВИЛ',9),(2413,5241,'КОЕВЦИ',4),(2414,5365,'КОЕВЦИ',7),(2415,4813,'КОЖАРИ',21),(2416,2487,'КОЖИНЦИ',14),(2417,5097,'КОЖЛЮВЦИ',4),(2418,6957,'КОЖУХАРЦИ',9),(2419,4248,'КОЗАНОВО',16),(2420,5915,'КОЗАР БЕЛЕНЕ',15),(2421,8493,'КОЗАРЕ',2),(2422,5148,'КОЗАРЕВЕЦ',4),(2423,6070,'КОЗАРЕВЕЦ',24),(2424,8674,'КОЗАРЕВО',28),(2425,4983,'КОЗАРКА',21),(2426,4584,'КОЗАРСКО',13),(2427,5344,'КОЗИ РОГ',7),(2428,8843,'КОЗИН ДОЛ',20),(2429,6848,'КОЗИЦА',9),(2430,7833,'КОЗИЦА',25),(2431,8224,'КОЗИЧИНО',2),(2432,6865,'КОЗЛЕВО',9),(2433,6371,'КОЗЛЕЦ',26),(2434,5290,'КОЗЛОВЕЦ',4),(2435,3320,'КОЗЛОДУЙ',6),(2436,9387,'КОЗЛОДУЙЦИ',8),(2437,7913,'КОЗМА ПРЕЗВИТЕР',25),(2438,8255,'КОЗНИЦА',2),(2439,5080,'КОЗЯ РЕКА',4),(2440,7673,'КОЗЯК',19),(2441,5842,'КОИЛОВЦИ',15),(2442,5986,'КОЙНАРЕ',15),(2443,5350,'КОЙЧОВЦИ',7),(2444,1191,'КОКАЛЯНЕ',22),(2445,6676,'КОКИЧЕ',9),(2446,4963,'КОКОРА',21),(2447,4725,'КОКОРКОВО',21),(2448,4971,'КОКОРЦИ',21),(2449,6733,'КОКОШАНЕ',9),(2450,5084,'КОЛАРИ',4),(2451,7613,'КОЛАРОВО',19),(2452,2880,'КОЛАРОВО',1),(2453,6271,'КОЛАРОВО',24),(2454,6460,'КОЛАРОВО',26),(2455,9481,'КОЛАРЦИ',8),(2456,6050,'КОЛЕНА',24),(2457,6376,'КОЛЕЦ',26),(2458,2838,'КОЛИБИТЕ',1),(2459,5343,'КОЛИШОВЦИ',7),(2460,7675,'КОЛОБЪР',19),(2461,5360,'КОЛЮ ГАНЕВ',7),(2462,6237,'КОЛЮ МАРИНОВО',24),(2463,3516,'КОМАРЕВО',12),(2464,3247,'КОМАРЕВО',6),(2465,5853,'КОМАРЕВО',15),(2466,9269,'КОМАРЕВО',3),(2467,3648,'КОМОЩИЦА',12),(2468,9254,'КОМУНАРИ',3),(2469,6690,'КОМУНИГА',9),(2470,2255,'КОМЩИЦА',22),(2471,7868,'КОНАК',25),(2472,9548,'КОНАРЕ',8),(2473,6189,'КОНАРЕ',24),(2474,2792,'КОНАРСКО',1),(2475,5364,'КОНАРСКОТО',7),(2476,6593,'КОНДОВО',26),(2477,8275,'КОНДОЛОВО',2),(2478,2422,'КОНДОФРЕЙ',14),(2479,8623,'КОНЕВЕЦ',28),(2480,9887,'КОНЕВО',27),(2481,7442,'КОНЕВО',17),(2482,6661,'КОНЕВО',9),(2483,6588,'КОННИЦИ',26),(2484,7995,'КОНОП',25),(2485,2379,'КОНСКА',14),(2486,5080,'КОНСТАНТИН',4),(2487,6267,'КОНСТАНТИНОВЕЦ',24),(2488,9180,'КОНСТАНТИНОВО',3),(2489,8129,'КОНСТАНТИНОВО',2),(2490,6494,'КОНСТАНТИНОВО',26),(2491,6841,'КОНТИЛ',9),(2492,4268,'КОНУШ',16),(2493,6370,'КОНУШ',26),(2494,6828,'КОНЧЕ',9),(2495,9748,'КОНЬОВЕЦ',27),(2496,2085,'КОНЬОВИЦА',22),(2497,8920,'КОНЬОВО',20),(2498,2540,'КОНЯВО',10),(2499,2409,'КОПАНИЦА',14),(2500,3467,'КОПИЛОВЦИ',12),(2501,2543,'КОПИЛОВЦИ',10),(2502,6698,'КОПИТНИК',9),(2503,7775,'КОПРЕЦ',25),(2504,2567,'КОПРИВА',10),(2505,7120,'КОПРИВЕЦ',18),(2506,2921,'КОПРИВЛЕН',1),(2507,2077,'КОПРИВЩИЦА',22),(2508,6137,'КОПРИНКА',24),(2509,5342,'КОПЧЕЛИИТЕ',7),(2510,6392,'КОРЕН',26),(2511,4921,'КОРИИТЕ',21),(2512,4976,'КОРИТАТА',21),(2513,9403,'КОРИТЕН',8),(2514,5455,'КОРИЯТА',7),(2515,2688,'КОРКИНА',10),(2516,5433,'КОРМЯНСКО',7),(2517,2970,'КОРНИЦА',1),(2518,8930,'КОРТЕН',20),(2519,6820,'КОС',9),(2520,7612,'КОСАРА',19),(2521,5392,'КОСАРКА',7),(2522,2448,'КОСАЧА',14),(2523,5095,'КОСЕВЦИ',4),(2524,5380,'КОСИЛКА',7),(2525,8223,'КОСОВЕЦ',2),(2526,4240,'КОСОВО',16),(2527,3794,'КОСОВО',5),(2528,9974,'КОСОВО',27),(2529,2557,'КОСОВО',10),(2530,3833,'КОСТА ПЕРЧЕВО',5),(2531,5301,'КОСТАДИНИТЕ',7),(2532,2060,'КОСТАДИНКИНО',22),(2533,7273,'КОСТАНДЕНЕЦ',17),(2534,4644,'КОСТАНДОВО',13),(2535,5099,'КОСТЕЛ',4),(2536,3047,'КОСТЕЛЕВО',6),(2537,8441,'КОСТЕН',2),(2538,9806,'КОСТЕНА РЕКА',27),(2539,2030,'КОСТЕНЕЦ',22),(2540,2042,'КОСТЕНЕЦ - село',22),(2541,5343,'КОСТЕНКОВЦИ',7),(2542,3518,'КОСТЕНЦИ',12),(2543,8283,'КОСТИ',2),(2544,4205,'КОСТИЕВО',16),(2545,6593,'КОСТИЛКОВО',26),(2546,2230,'КОСТИНБРОД',22),(2547,6743,'КОСТИНО',9),(2548,3755,'КОСТИЧОВЦИ',5),(2549,6533,'КОСТУР',26),(2550,6884,'КОСТУРИНО',9),(2551,2489,'КОСТУРИНЦИ',14),(2552,8970,'КОТЕЛ',20),(2553,3522,'КОТЕНОВЦИ',12),(2554,6957,'КОТЛАРИ',9),(2555,9374,'КОТЛЕНЦИ',8),(2556,5097,'КОТУЦИ',4),(2557,2955,'КОЧАН',1),(2558,4999,'КОЧАНИ',21),(2559,4119,'КОЧЕВО',16),(2560,2640,'КОЧЕРИНОВО',10),(2561,9477,'КОЧМАР',8),(2562,9862,'КОЧОВО',27),(2563,3771,'КОШАВА',5),(2564,2390,'КОШАРЕВО',14),(2565,2453,'КОШАРИТЕ',14),(2566,8253,'КОШАРИЦА',2),(2567,7062,'КОШАРНА',18),(2568,4778,'КОШНИЦА',21),(2569,7783,'КОШНИЧАРИ',17),(2570,7087,'КОШОВ',18),(2571,6075,'КРАВИНО',24),(2572,3048,'КРАВОДЕР',6),(2573,9418,'КРАГУЕВО',8),(2574,2149,'КРАЕВО',22),(2575,2781,'КРАИЩЕ',1),(2576,9535,'КРАИЩЕ',8),(2577,9875,'КРАЙГОРЦИ',27),(2578,4900,'КРАЙНА',21),(2579,2649,'КРАЙНИ ДОЛ',10),(2580,2633,'КРАЙНИЦИ',10),(2581,6739,'КРАЙНО СЕЛО',9),(2582,8752,'КРАЙНОВО',28),(2583,7997,'КРАЙПОЛЕ',25),(2584,9287,'КРАКРА',3),(2585,2349,'КРАЛЕВДОЛ',14),(2586,6362,'КРАЛЕВО',26),(2587,7770,'КРАЛЕВО',25),(2588,4452,'КРАЛИ МАРКО',13),(2589,5429,'КРАМОЛИН',7),(2590,6898,'КРАН',9),(2591,9649,'КРАНЕВО',8),(2592,7549,'КРАНОВО',19),(2593,3149,'КРАПЕЦ',6),(2594,9674,'КРАПЕЦ',8),(2595,3434,'КРАПЧЕНЕ',12),(2596,2370,'КРАСАВА',14),(2597,9534,'КРАСЕН',8),(2598,7075,'КРАСЕН',18),(2599,9935,'КРАСЕН ДОЛ',27),(2600,9258,'КРАСИМИР',3),(2601,6962,'КРАСИНО',9),(2602,5242,'КРАСНО ГРАДИЩЕ',4),(2603,4178,'КРАСНОВО',16),(2604,7925,'КРАСНОСЕЛЦИ',25),(2605,3964,'КРАЧИМИР',5),(2606,2771,'КРЕМЕН',1),(2607,6884,'КРЕМЕН',9),(2608,9639,'КРЕМЕНА',8),(2609,4755,'КРЕМЕНЕ',21),(2610,6822,'КРЕМЕНЕЦ',9),(2611,2653,'КРЕМЕНИК',10),(2612,6410,'КРЕПОСТ',26),(2613,7845,'КРЕПЧА',25),(2614,5367,'КРЕСЛЮВЦИ',7),(2615,2840,'КРЕСНА',1),(2616,5961,'КРЕТА',15),(2617,3127,'КРЕТА',6),(2618,2951,'КРИБУЛ',1),(2619,3669,'КРИВА БАРА',12),(2620,3328,'КРИВА БАРА',6),(2621,8936,'КРИВА КРУША',20),(2622,9938,'КРИВА РЕКА',27),(2623,1588,'КРИВИНА',22),(2624,5747,'КРИВИНА',11),(2625,7132,'КРИВИНА',18),(2626,9123,'КРИВИНИ',3),(2627,7456,'КРИВИЦА',17),(2628,7269,'КРИВНЯ',18),(2629,9217,'КРИВНЯ',3),(2630,6387,'КРИВО ПОЛЕ',26),(2631,3060,'КРИВОДОЛ',6),(2632,2386,'КРИВОНОС',14),(2633,6884,'КРИЛАТИЦА',9),(2634,5097,'КРИЛЮВЦИ',4),(2635,6671,'КРИН',9),(2636,4148,'КРИСЛОВО',16),(2637,4220,'КРИЧИМ',16),(2638,2871,'КРОМИДОВО',1),(2639,7278,'КРОЯЧ',17),(2640,6766,'КРОЯЧЕВО',9),(2641,6438,'КРУМ',26),(2642,6900,'КРУМОВГРАД',9),(2643,9149,'КРУМОВО',3),(2644,2627,'КРУМОВО',10),(2645,4112,'КРУМОВО',16),(2646,8649,'КРУМОВО',28),(2647,8487,'КРУМОВО ГРАДИЩЕ',2),(2648,5080,'КРУМЧЕВЦИ',4),(2649,9667,'КРУПЕН',8),(2650,2740,'КРУПНИК',1),(2651,9121,'КРУША',3),(2652,2213,'КРУША',22),(2653,8877,'КРУШАРЕ',20),(2654,9410,'КРУШАРИ',8),(2655,4919,'КРУШЕВ ДОЛ-пром.с.',21),(2656,8148,'КРУШЕВЕЦ',2),(2657,2945,'КРУШЕВО',1),(2658,4291,'КРУШЕВО',16),(2659,5427,'КРУШЕВО',7),(2660,6744,'КРУШЕВСКА',9),(2661,5134,'КРУШЕТО',4),(2662,6743,'КРУШКА',9),(2663,5860,'КРУШОВЕНЕ',15),(2664,5881,'КРУШОВИЦА',15),(2665,2060,'КРУШОВИЦА',22),(2666,3349,'КРУШОВИЦА',6),(2667,8482,'КРУШОВО',2),(2668,4241,'КРУШОВО',16),(2669,7962,'КРУШОЛАК',25),(2670,5561,'КРУШУНА',11),(2671,5460,'КРЪВЕНИК',7),(2672,5744,'КРЪКОЖАБЕНЕ',11),(2673,6140,'КРЪН',24),(2674,2875,'КРЪНДЖИЛИЦА',1),(2675,5370,'КРЪНЧА',7),(2676,4647,'КРЪСТАВА',13),(2677,4741,'КРЪСТАТИЦА',21),(2678,4177,'КРЪСТЕВИЧ',16),(2679,5350,'КРЪСТЕНЯЦИТЕ',7),(2680,5364,'КРЪСТЕЦ',7),(2681,2805,'КРЪСТИЛЦИ',1),(2682,8121,'КРЪСТИНА',2),(2683,7786,'КРЪШНО',17),(2684,8335,'КУБАДИН',2),(2685,7300,'КУБРАТ',17),(2686,1257,'КУБРАТОВО',22),(2687,3798,'КУДЕЛИН',5),(2688,2788,'КУЗЬОВО',1),(2689,4101,'КУКЛЕН',16),(2690,5370,'КУКЛЯ',7),(2691,8673,'КУКОРЕВО',28),(2692,4710,'КУКУВИЦА',21),(2693,6898,'КУКУРЯК',9),(2694,2882,'КУКУРЯХЦЕВО',1),(2695,3800,'КУЛА',5),(2696,2868,'КУЛАТА',1),(2697,5937,'КУЛИНА ВОДА',15),(2698,5380,'КУМАНИТЕ',7),(2699,9153,'КУМАНОВО',3),(2700,4990,'КУНДЕВО',21),(2701,8646,'КУНЕВО',28),(2702,3140,'КУНИНО',6),(2703,4921,'КУПЕН',21),(2704,5463,'КУПЕН',7),(2705,6839,'КУПЦИТЕ',9),(2706,3138,'КУРНОВО',6),(2707,4369,'КУРТОВО',16),(2708,4223,'КУРТОВО КОНАРЕ',16),(2709,4752,'КУТЕЛА',21),(2710,7558,'КУТЛОВИЦА',19),(2711,3767,'КУТОВО',5),(2712,2567,'КУТУГЕРЦИ',10),(2713,5042,'КУЦАРОВЦИ',4),(2714,5189,'КУЦИНА',4),(2715,6697,'КУЦОВО',9),(2716,4986,'КУШЛА',21),(2717,6927,'КЪКЛИЦА',9),(2718,5544,'КЪКРИНА',11),(2719,9821,'КЪЛНОВО',27),(2720,6164,'КЪНЧЕВО',24),(2721,7997,'КЪПИНЕЦ',25),(2722,5043,'КЪПИНОВО',4),(2723,9528,'КЪПИНОВО',8),(2724,7434,'КЪПИНОВЦИ',17),(2725,6600,'КЪРДЖАЛИ',9),(2726,2820,'КЪРЛАНОВО',1),(2727,2860,'КЪРНАЛОВО',1),(2728,4337,'КЪРНАРЕ',16),(2729,5558,'КЪРПАЧЕВО',11),(2730,2825,'КЪРПЕЛОВО',1),(2731,5380,'КЪРТИПЪНЯ',7),(2732,5883,'КЪРТОЖАБЕНЕ',15),(2733,6873,'КЪРЧОВСКО',9),(2734,2563,'КЪРШАЛЕВО',10),(2735,4832,'КЪСАК',21),(2736,1276,'КЪТИНА',22),(2737,5885,'КЪШИН',15),(2738,2492,'КЪШЛЕ',14),(2739,9888,'КЬОЛМЕН',27),(2740,6728,'КЬОСЕВО',9),(2741,7951,'КЬОСЕВЦИ',25),(2742,9972,'КЮЛЕВЧА',27),(2743,2500,'КЮСТЕНДИЛ',10),(2744,5035,'ЛАГЕРИТЕ',4),(2745,3743,'ЛАГОШЕВЦИ',5),(2746,2811,'ЛАДАРЕВО',1),(2747,3262,'ЛАЗАРОВО',6),(2748,5097,'ЛАЗАРЦИ',4),(2749,5656,'ЛАКАРЕВО',11),(2750,2273,'ЛАКАТНИК',22),(2751,6823,'ЛАЛЕ',9),(2752,8749,'ЛАЛКОВО',28),(2753,6583,'ЛАМБУХ',26),(2754,5876,'ЛАСКАР',15),(2755,2811,'ЛАСКАРЕВО',1),(2756,6767,'ЛАТИНКА',9),(2757,6859,'ЛЕБЕД',9),(2758,2806,'ЛЕБНИЦА',1),(2759,2494,'ЛЕВА РЕКА',14),(2760,6540,'ЛЕВКА',26),(2761,4743,'ЛЕВОЧЕВО',21),(2762,5900,'ЛЕВСКИ',15),(2763,4535,'ЛЕВСКИ',13),(2764,9171,'ЛЕВСКИ',3),(2765,2817,'ЛЕВУНОВО',1),(2766,5049,'ЛЕДЕНИК',4),(2767,3036,'ЛЕДЕНИКА',6),(2768,2588,'ЛЕЛИНЦИ',10),(2769,6783,'ЛЕНИЩЕ',9),(2770,5967,'ЛЕНКОВО',15),(2771,4286,'ЛЕНОВО',16),(2772,6595,'ЛЕНСКО',26),(2773,5987,'ЛЕПИЦА',15),(2774,5520,'ЛЕСИДРЕН',11),(2775,5343,'ЛЕСИЧАРКА',7),(2776,5085,'ЛЕСИЧЕ',4),(2777,5222,'ЛЕСИЧЕРИ',4),(2778,4463,'ЛЕСИЧОВО',13),(2779,2567,'ЛЕСКА',10),(2780,4928,'ЛЕСКА',21),(2781,2268,'ЛЕСКОВДОЛ',22),(2782,3523,'ЛЕСКОВЕЦ',12),(2783,3341,'ЛЕСКОВЕЦ',6),(2784,2342,'ЛЕСКОВЕЦ',14),(2785,9428,'ЛЕСКОВО',8),(2786,2119,'ЛЕСНОВО',22),(2787,8754,'ЛЕСОВО',28),(2788,3073,'ЛЕСУРА',6),(2789,2207,'ЛЕТНИЦА',22),(2790,5570,'ЛЕТНИЦА',11),(2791,6810,'ЛЕТОВНИК',9),(2792,2816,'ЛЕХОВО',1),(2793,3445,'ЛЕХЧЕВО',12),(2794,2749,'ЛЕШКО',1),(2795,5624,'ЛЕШКО ПРЕСОИ',11),(2796,6466,'ЛЕШНИКОВО',26),(2797,2481,'ЛЕШНИКОВЦИ',14),(2798,5578,'ЛЕШНИЦА',11),(2799,2808,'ЛЕШНИЦА',1),(2800,4929,'ЛЕЩАК',21),(2801,6967,'ЛЕЩАРКА',9),(2802,2962,'ЛЕЩЕН',1),(2803,8656,'ЛЕЯРОВО',28),(2804,8107,'ЛИВАДА',2),(2805,4921,'ЛИВАДЕ',21),(2806,3168,'ЛИК',6),(2807,4858,'ЛИЛЕКОВО',21),(2808,4105,'ЛИЛКОВО',16),(2809,7760,'ЛИЛЯК',25),(2810,2809,'ЛИЛЯНОВО',1),(2811,2597,'ЛИЛЯЧ',10),(2812,3051,'ЛИЛЯЧЕ',6),(2813,6936,'ЛИМЕЦ',9),(2814,3489,'ЛИПЕН',12),(2815,4784,'ЛИПЕЦ',21),(2816,2212,'ЛИПИНЦИ',22),(2817,7242,'ЛИПНИК',17),(2818,2158,'ЛИПНИЦА',22),(2819,3352,'ЛИПНИЦА',6),(2820,2547,'ЛИСЕЦ',10),(2821,5568,'ЛИСЕЦ',11),(2822,2023,'ЛИСЕЦ',22),(2823,9951,'ЛИСИ ВРЪХ',27),(2824,6645,'ЛИСИЦИТЕ',9),(2825,2743,'ЛИСИЯ',1),(2826,6541,'ЛИСОВО',26),(2827,7642,'ЛИСТЕЦ',19),(2828,8573,'ЛИСТЕЦ',2),(2829,2144,'ЛИТАКОВО',22),(2830,2433,'ЛОБОШ',14),(2831,9869,'ЛОВЕЦ',27),(2832,6070,'ЛОВЕЦ',24),(2833,7741,'ЛОВЕЦ',25),(2834,5500,'ЛОВЕЧ',11),(2835,5423,'ЛОВНИДОЛ',7),(2836,7291,'ЛОВСКО',17),(2837,4908,'ЛОВЦИ',21),(2838,9430,'ЛОВЧАНЦИ',8),(2839,2737,'ЛОГОДАЖ',1),(2840,5345,'ЛОЗА',7),(2841,8440,'ЛОЗАРЕВО',2),(2842,9746,'ЛОЗЕВО',27),(2843,6552,'ЛОЗЕН',26),(2844,1151,'ЛОЗЕН',22),(2845,4489,'ЛОЗЕН',13),(2846,6062,'ЛОЗЕН',24),(2847,5172,'ЛОЗЕН',4),(2848,6894,'ЛОЗЕНГРАДЦИ',9),(2849,9414,'ЛОЗЕНЕЦ',8),(2850,8688,'ЛОЗЕНЕЦ',28),(2851,8277,'ЛОЗЕНЕЦ',2),(2852,2821,'ЛОЗЕНИЦА',1),(2853,5739,'ЛОЗЕТО',11),(2854,5954,'ЛОЗИЦА',15),(2855,8466,'ЛОЗИЦА',2),(2856,9541,'ЛОЗНИЦА',8),(2857,7290,'ЛОЗНИЦА',17),(2858,2507,'ЛОЗНО',10),(2859,2656,'ЛОКВАТА',10),(2860,1513,'ЛОКОРСКО',22),(2861,3600,'ЛОМ',12),(2862,7135,'ЛОМ ЧЕРКОВНА',18),(2863,5669,'ЛОМЕЦ',11),(2864,9397,'ЛОМНИЦА',8),(2865,2562,'ЛОМНИЦА',10),(2866,2465,'ЛОМНИЦА',14),(2867,7838,'ЛОМЦИ',25),(2868,9237,'ЛОПУШНА',3),(2869,2252,'ЛОПУШНЯ',22),(2870,2193,'ЛОПЯН',22),(2871,7445,'ЛУДОГОРЦИ',17),(2872,5770,'ЛУКОВИТ',11),(2873,2296,'ЛУКОВО',22),(2874,6921,'ЛУЛИЧКА',9),(2875,7439,'ЛЪВИНО',17),(2876,6638,'ЛЪВОВО',9),(2877,2182,'ЛЪГА',22),(2878,2971,'ЛЪЖНИЦА',1),(2879,8216,'ЛЪКА',2),(2880,4726,'ЛЪКА',21),(2881,4241,'ЛЪКАВИЦА',16),(2882,4241,'ЛЪКИ',16),(2883,2928,'ЛЪКИ',1),(2884,7534,'ЛЮБЕН',19),(2885,4188,'ЛЮБЕН',16),(2886,9148,'ЛЮБЕН КАРАВЕЛОВО',3),(2887,8949,'ЛЮБЕНЕЦ',20),(2888,8947,'ЛЮБЕНОВА МАХАЛА',20),(2889,5955,'ЛЮБЕНОВО',15),(2890,6267,'ЛЮБЕНОВО',24),(2891,6342,'ЛЮБЕНОВО',26),(2892,5176,'ЛЮБЕНЦИ',4),(2893,6550,'ЛЮБИМЕЦ',26),(2894,6796,'ЛЮБИНО',9),(2895,7980,'ЛЮБИЧЕВО',25),(2896,7843,'ЛЮБЛЕН',25),(2897,2061,'ЛЮБНИЦА',22),(2898,2820,'ЛЮБОВИЩЕ',1),(2899,2811,'ЛЮБОВКА',1),(2900,4833,'ЛЮБЧА',21),(2901,2352,'ЛЮЛИН',14),(2902,8685,'ЛЮЛИН',28),(2903,4785,'ЛЮЛКА',21),(2904,6050,'ЛЮЛЯК',24),(2905,9525,'ЛЮЛЯКОВО',8),(2906,6684,'ЛЮЛЯКОВО',9),(2907,8570,'ЛЮЛЯКОВО',2),(2908,5307,'ЛЮЛЯЦИТЕ',7),(2909,3038,'ЛЮТАДЖИК',6),(2910,3159,'ЛЮТИБРОД',6),(2911,3165,'ЛЮТИДОЛ',6),(2912,2791,'ЛЮТОВО',1),(2913,6198,'ЛЯВА РЕКА',24),(2914,2474,'ЛЯЛИНЦИ',14),(2915,5140,'ЛЯСКОВЕЦ',4),(2916,6397,'ЛЯСКОВЕЦ',26),(2917,8518,'ЛЯСКОВО',2),(2918,4238,'ЛЯСКОВО',16),(2919,4818,'ЛЯСКОВО',21),(2920,6045,'ЛЯСКОВО',24),(2921,6667,'ЛЯСКОВО',9),(2922,9948,'ЛЯТНО',27),(2923,9617,'ЛЯХОВО',8),(2924,4416,'ЛЯХОВО',13),(2925,4710,'МАГАРДЖИЦА',21),(2926,3448,'МАДАН',12),(2927,4900,'МАДАН',21),(2928,9971,'МАДАРА',27),(2929,2022,'МАДЖАРЕ',22),(2930,6383,'МАДЖАРИ',26),(2931,6480,'МАДЖАРОВО',26),(2932,6063,'МАДЖЕРИТО',24),(2933,2549,'МАЗАРАЧЕВО',10),(2934,3777,'МАЙОР УЗУНОВО',5),(2935,5085,'МАЙСКО',4),(2936,6675,'МАЙСТОРОВО',9),(2937,6784,'МАК',9),(2938,7750,'МАКАРИОПОЛСКО',25),(2939,6640,'МАКЕДОНЦИ',9),(2940,7785,'МАКОВО',17),(2941,2124,'МАКОЦЕВО',22),(2942,3850,'МАКРЕШ',5),(2943,2225,'МАЛА РАКОВИЦА',22),(2944,2669,'МАЛА ФУЧА',10),(2945,2021,'МАЛА ЦЪРКВА',22),(2946,6392,'МАЛЕВО',26),(2947,4891,'МАЛЕВО',21),(2948,8689,'МАЛЕНОВО',28),(2949,2691,'МАЛИ ВЪРБОВНИК',10),(2950,3749,'МАЛИ ДРЕНОВЕЦ',5),(2951,9474,'МАЛИ ИЗВОР',8),(2952,9559,'МАЛИНА',8),(2953,8327,'МАЛИНА',2),(2954,5335,'МАЛИНИ',7),(2955,6593,'МАЛИНО',26),(2956,5582,'МАЛИНОВО',11),(2957,4742,'МАЛКА АРДА',21),(2958,6045,'МАЛКА ВЕРЕЯ',24),(2959,5729,'МАЛКА ЖЕЛЯЗНА',11),(2960,8519,'МАЛКА ПОЛЯНА',2),(2961,9386,'МАЛКА СМОЛНИЦА',8),(2962,7997,'МАЛКА ЧЕРКОВНА',25),(2963,6941,'МАЛКА ЧИНКА',9),(2964,5370,'МАЛКИ БЪЛГАРЕНИ',7),(2965,6479,'МАЛКИ ВОДЕН',26),(2966,5432,'МАЛКИ ВЪРШЕЦ',7),(2967,2184,'МАЛКИ ИСКЪР',22),(2968,5365,'МАЛКИ СТАНЧОВЦИ',7),(2969,2800,'МАЛКИ ЦАЛИМ',1),(2970,5028,'МАЛКИ ЧИФЛИК',4),(2971,6425,'МАЛКО АСЕНОВО',26),(2972,6476,'МАЛКО БРЯГОВО',26),(2973,7067,'МАЛКО ВРАНОВО',18),(2974,6558,'МАЛКО ГРАДИЩЕ',26),(2975,6227,'МАЛКО ДРЯНОВО',24),(2976,6052,'МАЛКО КАДИЕВО',24),(2977,6927,'МАЛКО КАМЕНЯНЕ',9),(2978,8756,'МАЛКО КИРИЛОВО',28),(2979,4951,'МАЛКО КРУШЕВО',21),(2980,6482,'МАЛКО ПОПОВО',26),(2981,8981,'МАЛКО СЕЛО',20),(2982,6228,'МАЛКО ТРЪНОВО',24),(2983,8350,'МАЛКО ТЪРНОВО',2),(2984,7923,'МАЛКО ЦЪРКВИЩЕ',25),(2985,8857,'МАЛКО ЧОЧОВЕНИ',20),(2986,8751,'МАЛКО ШАРКОВО',28),(2987,6898,'МАЛКОЧ',9),(2988,1362,'МАЛО БУЧИНО',22),(2989,4450,'МАЛО КОНАРЕ',13),(2990,4183,'МАЛО КРУШЕВО',16),(2991,2205,'МАЛО МАЛОВО',22),(2992,3078,'МАЛО ПЕЩЕНЕ',6),(2993,2636,'МАЛО СЕЛО',10),(2994,7978,'МАЛОГРАДЕЦ',25),(2995,9871,'МАЛОМИР',27),(2996,8650,'МАЛОМИР',28),(2997,8737,'МАЛОМИРОВО',28),(2998,3255,'МАЛОРАД',6),(2999,5304,'МАЛУША',7),(3000,5917,'МАЛЧИКА',15),(3001,5050,'МАЛЧОВЦИ',4),(3002,5367,'МАЛЧОВЦИ',7),(3003,6935,'МАЛЪК ДЕВЕСИЛ',9),(3004,6394,'МАЛЪК ИЗВОР',26),(3005,5734,'МАЛЪК ИЗВОР',11),(3006,8742,'МАЛЪК МАНАСТИР',28),(3007,7429,'МАЛЪК ПОРОВЕЦ',17),(3008,7620,'МАЛЪК ПРЕСЛАВЕЦ',19),(3009,4194,'МАЛЪК ЧАРДАК',16),(3010,8743,'МАМАРЧЕВО',28),(3011,2168,'МАНАСЕЛСКА РЕКА',22),(3012,4245,'МАНАСТИР',16),(3013,9224,'МАНАСТИР',3),(3014,6390,'МАНАСТИР',26),(3015,7856,'МАНАСТИРИЦА',25),(3016,2288,'МАНАСТИРИЩЕ',22),(3017,3354,'МАНАСТИРИЩЕ',6),(3018,7285,'МАНАСТИРСКО',17),(3019,7292,'МАНАСТИРЦИ',17),(3020,6357,'МАНДРА',26),(3021,6585,'МАНДРИЦА',26),(3022,5363,'МАНЕВЦИ',7),(3023,4137,'МАНОЛЕ',16),(3024,8453,'МАНОЛИЧ',2),(3025,6152,'МАНОЛОВО',24),(3026,4138,'МАНОЛСКО КОНАРЕ',16),(3027,5392,'МАНОЯ',7),(3028,7967,'МАНУШЕВЦИ',25),(3029,6800,'МАНЧЕВО',9),(3030,5070,'МАРАФЕЛЦИ',4),(3031,9745,'МАРАШ',27),(3032,5035,'МАРГОВЦИ',4),(3033,2870,'МАРИКОСТИНОВО',1),(3034,8154,'МАРИНКА',2),(3035,4365,'МАРИНО ПОЛЕ',16),(3036,2867,'МАРИНО ПОЛЕ',1),(3037,5097,'МАРИНОВЦИ',4),(3038,5445,'МАРИНОВЦИ',7),(3039,2044,'МАРИЦА',22),(3040,6247,'МАРКОВО',24),(3041,9973,'МАРКОВО',27),(3042,4108,'МАРКОВО',16),(3043,3133,'МАРКОВО РАВНИЩЕ',6),(3044,7058,'МАРТЕН',18),(3045,6745,'МАРТИНО',9),(3046,3459,'МАРТИНОВО',12),(3047,2725,'МАРУЛЕВО',1),(3048,5360,'МАРУЦЕКОВЦИ',7),(3049,2949,'МАРЧЕВО',1),(3050,7869,'МАРЧИНО',25),(3051,5084,'МАРЯН',4),(3052,5198,'МАСЛАРЕВО',4),(3053,6388,'МАСЛИНОВО',26),(3054,5351,'МАТЕШОВЦИ',7),(3055,6535,'МАТОЧИНА',26),(3056,2849,'МАХАЛАТА',1),(3057,5081,'МАХАЛНИЦИ',4),(3058,6276,'МАЦА',24),(3059,5647,'МАЧКОВЦИ',11),(3060,8987,'МЕДВЕН',20),(3061,6865,'МЕДЕВЦИ',9),(3062,6598,'МЕДЕН БУК',26),(3063,8639,'МЕДЕН КЛАДЕНЕЦ',28),(3064,4637,'МЕДЕНИ ПОЛЯНИ',13),(3065,3845,'МЕДЕШЕВЦИ',5),(3066,3670,'МЕДКОВЕЦ',12),(3067,6294,'МЕДНИКАРОВО',24),(3068,7319,'МЕДОВЕНЕ',17),(3069,9238,'МЕДОВЕЦ',3),(3070,7863,'МЕДОВИНА',25),(3071,3947,'МЕДОВНИЦА',5),(3072,6235,'МЕДОВО',24),(3073,9388,'МЕДОВО',8),(3074,8214,'МЕДОВО',2),(3075,8644,'МЕЖДА',28),(3076,7672,'МЕЖДЕН',19),(3077,5343,'МЕЖДЕНИ',7),(3078,3100,'МЕЗДРА',6),(3079,3515,'МЕЗДРЕЯ',12),(3080,6521,'МЕЗЕК',26),(3081,2820,'МЕЛНИК',1),(3082,8755,'МЕЛНИЦА',28),(3083,3472,'МЕЛЯНЕ',12),(3084,9885,'МЕНГИШЕВО',27),(3085,2893,'МЕНДОВО',1),(3086,4482,'МЕНЕНКЬОВО',13),(3087,5147,'МЕРДАНЯ',4),(3088,6430,'МЕРИЧЛЕРИ',26),(3089,2772,'МЕСТА',1),(3090,6938,'МЕТЛИКА',9),(3091,9291,'МЕТЛИЧИНА',3),(3092,6873,'МЕТЛИЧИНА',9),(3093,6890,'МЕТЛИЧКА',9),(3094,9867,'МЕТОДИЕВО',27),(3095,9375,'МЕТОДИЕВО',8),(3096,2556,'МЕТОХИЯ',10),(3097,7091,'МЕЧКА',18),(3098,5843,'МЕЧКА',15),(3099,8868,'МЕЧКАРЕВО',20),(3100,5307,'МЕЧКОВИЦА',7),(3101,2060,'МЕЧКОВЦИ',22),(3102,2754,'МЕЧКУЛ',1),(3103,7997,'МЕЧОВО',25),(3104,2353,'МЕЩИЦА',14),(3105,3330,'МИЗИЯ',6),(3106,5098,'МИЙКОВЦИ',4),(3107,5572,'МИКРЕ',11),(3108,2826,'МИКРЕВО',1),(3109,6660,'МИЛАДИНОВО',9),(3110,9431,'МИЛАДИНОВЦИ',8),(3111,7787,'МИЛАДИНОВЦИ',17),(3112,8657,'МИЛАДИНОВЦИ',28),(3113,9859,'МИЛАНОВО',27),(3114,2280,'МИЛАНОВО',22),(3115,4921,'МИЛЕ',21),(3116,4191,'МИЛЕВО',16),(3117,5350,'МИЛЕВЦИ',7),(3118,5627,'МИЛЕНЧА',11),(3119,7984,'МИЛИНО',25),(3120,5968,'МИЛКОВИЦА',15),(3121,4779,'МИЛКОВО',21),(3122,5345,'МИЛКОВЦИ',7),(3123,2475,'МИЛКЬОВЦИ',14),(3124,2478,'МИЛОСЛАВЦИ',14),(3125,3846,'МИЛЧИНА ЛЪКА',5),(3126,2220,'МИНА БОЛШЕВИК',22),(3127,5044,'МИНДЯ',4),(3128,5083,'МИНЕВЦИ',4),(3129,6343,'МИНЕРАЛНИ БАНИ',26),(3130,6665,'МИНЗУХАР',9),(3131,9372,'МИНКОВО',8),(3132,5735,'МИРКОВЕЦ',11),(3133,2086,'МИРКОВО',22),(3134,7751,'МИРОВЕЦ',25),(3135,6255,'МИРОВО',24),(3136,5158,'МИРОВО',4),(3137,9921,'МИРОВЦИ',27),(3138,1289,'МИРОВЯНЕ',22),(3139,8119,'МИРОЛЮБОВО',2),(3140,5094,'МИРЧОВЦИ',4),(3141,4443,'МИРЯНЦИ',13),(3142,2857,'МИТИНО',1),(3143,4909,'МИТОВСКА',21),(3144,3464,'МИТРОВЦИ',12),(3145,6051,'МИХАЙЛОВО',24),(3146,3355,'МИХАЙЛОВО',6),(3147,5347,'МИХАЙЛОВЦИ',7),(3148,9284,'МИХАЛИЧ',3),(3149,6537,'МИХАЛИЧ',26),(3150,4820,'МИХАЛКОВО',21),(3151,5248,'МИХАЛЦИ',4),(3152,4361,'МИХИЛЦИ',16),(3153,2862,'МИХНЕВО',1),(3154,5365,'МИХОВЦИ',7),(3155,5343,'МИЧКОВЦИ',7),(3156,6840,'МИШЕВСКО',9),(3157,5035,'МИШЕМОРКОВ ХАН',4),(3158,5767,'МИШКАРЕТЕ',11),(3159,9228,'МЛАДА ГВАРДИЯ',3),(3160,8364,'МЛАДЕЖКО',2),(3161,5428,'МЛАДЕН',7),(3162,6531,'МЛАДИНОВО',26),(3163,8886,'МЛАДОВО',20),(3164,2654,'МЛАМОЛОВО',10),(3165,8960,'МЛЕКАРЕВО',20),(3166,5441,'МЛЕЧЕВО',7),(3167,6781,'МЛЕЧИНО',9),(3168,9932,'МОГИЛА',27),(3169,6052,'МОГИЛА',24),(3170,8627,'МОГИЛА',28),(3171,7943,'МОГИЛЕЦ',25),(3172,7165,'МОГИЛИНО',18),(3173,5350,'МОГИЛИТЕ',7),(3174,4761,'МОГИЛИЦА',21),(3175,9665,'МОГИЛИЩЕ',8),(3176,6239,'МОГИЛОВО',24),(3177,6867,'МОГИЛЯНЕ',9),(3178,6840,'МОДРЕН',9),(3179,8994,'МОКРЕН',20),(3180,9861,'МОКРЕШ',27),(3181,3647,'МОКРЕШ',12),(3182,4408,'МОКРИЩЕ',13),(3183,2035,'МОМИН ПРОХОД',22),(3184,5067,'МОМИН СБОР',4),(3185,4468,'МОМИНА КЛИСУРА',13),(3186,6838,'МОМИНА СЪЛЗА',9),(3187,8320,'МОМИНА ЦЪРКВА',2),(3188,7706,'МОМИНО',25),(3189,6387,'МОМИНО',26),(3190,4143,'МОМИНО СЕЛО',16),(3191,4118,'МОМИНСКО',16),(3192,6542,'МОМКОВО',26),(3193,6800,'МОМЧИЛГРАД',9),(3194,9221,'МОМЧИЛОВО',3),(3195,4750,'МОМЧИЛОВЦИ',21),(3196,3400,'МОНТАНА',12),(3197,5291,'МОРАВА',4),(3198,7974,'МОРАВИЦА',25),(3199,3145,'МОРАВИЦА',6),(3200,7992,'МОРАВКА',25),(3201,5304,'МОРОВЕЦИТЕ',7),(3202,7248,'МОРТАГОНОВО',17),(3203,6959,'МОРЯНЦИ',9),(3204,4333,'МОСКОВЕЦ',16),(3205,6670,'МОСТ',9),(3206,9878,'МОСТИЧ',27),(3207,4257,'МОСТОВО',16),(3208,4978,'МОЧУРЕ',21),(3209,2729,'МОЩАНЕЦ',1),(3210,2477,'МРАКЕТНИЦИ',14),(3211,1261,'МРАМОР',22),(3212,6562,'МРАМОР',26),(3213,2487,'МРАМОР',14),(3214,3054,'МРАМОРЕН',6),(3215,5345,'МРАХОРИ',7),(3216,4362,'МРАЧЕНИК',16),(3217,6845,'МРЕЖИЧКО',9),(3218,8538,'МРЕЖИЧКО',2),(3219,5367,'МРЪЗЕЦИ',7),(3220,4716,'МУГЛА',21),(3221,5333,'МУЗГА',7),(3222,4249,'МУЛДАВА',16),(3223,6725,'МУРГА',9),(3224,2247,'МУРГАШ',22),(3225,6679,'МУРГОВО',9),(3226,2437,'МУРЕНО',14),(3227,2623,'МУРСАЛЕВО',10),(3228,2382,'МУРТИНЦИ',14),(3229,6284,'МУСАЧЕВО',24),(3230,2139,'МУСАЧЕВО',22),(3231,6774,'МУСЕВО',9),(3232,5963,'МУСЕЛИЕВО',15),(3233,5247,'МУСИНА',4),(3234,2920,'МУСОМИЩА',1),(3235,6527,'МУСТРАК',26),(3236,2061,'МУХОВО',22),(3237,5370,'МУЦЯ',7),(3238,8523,'МЪГЛЕН',2),(3239,6865,'МЪГЛЕНЕ',9),(3240,6180,'МЪГЛИЖ',24),(3241,4910,'МЪГЛИЩА',21),(3242,7323,'МЪДРЕВО',17),(3243,6292,'МЪДРЕЦ',24),(3244,6674,'МЪДРЕЦ',9),(3245,8444,'МЪДРИНО',2),(3246,6865,'МЪЖЕНЦИ',9),(3247,2655,'МЪРВОДОЛ',10),(3248,4996,'МЪРЗЯН',21),(3249,5094,'МЪРТВИНАТА',4),(3250,1696,'МЪРЧАЕВО',22),(3251,3443,'МЪРЧЕВО',12),(3252,8843,'МЪСЪРЛИИ',20),(3253,4176,'МЪТЕНИЦА',16),(3254,6497,'НАВЪСЕН',26),(3255,7740,'НАДАРЕВО',25),(3256,4758,'НАДАРЦИ',21),(3257,6459,'НАДЕЖДЕН',26),(3258,4185,'НАЙДЕН ГЕРОВО',16),(3259,6224,'НАЙДЕНОВО',24),(3260,6800,'НАНЕ',9),(3261,6830,'НАНОВИЦА',9),(3262,5752,'НАНОВИЦА',11),(3263,4239,'НАРЕЧЕНСКИ БАНИ',16),(3264,2478,'НАСАЛЕВЦИ',14),(3265,9962,'НАУМ',27),(3266,8929,'НАУЧЕНЕ',20),(3267,5055,'НАЦОВЦИ',4),(3268,2213,'НАЧЕВО',22),(3269,6693,'НЕБЕСКА',9),(3270,8431,'НЕВЕСТИНО',2),(3271,6722,'НЕВЕСТИНО',9),(3272,2595,'НЕВЕСТИНО',10),(3273,9229,'НЕВША',3),(3274,1222,'НЕГОВАН',22),(3275,3774,'НЕГОВАНОВЦИ',5),(3276,2417,'НЕГОВАНЦИ',14),(3277,2123,'НЕГУШЕВО',22),(3278,5231,'НЕДАН',4),(3279,4187,'НЕДЕЛЕВО',16),(3280,4990,'НЕДЕЛИНО',21),(3281,2213,'НЕДЕЛИЩЕ',22),(3282,2594,'НЕДЕЛКОВА ГРАЩИЦА',10),(3283,2477,'НЕДЕЛКОВО',14),(3284,7251,'НЕДОКЛАН',17),(3285,5070,'НЕДЯЛКОВЦИ',4),(3286,5350,'НЕДЯЛКОВЦИ',7),(3287,8684,'НЕДЯЛСКО',28),(3288,9692,'НЕЙКОВО',8),(3289,8993,'НЕЙКОВО',20),(3290,2061,'НЕЙКЬОВЕЦ',22),(3291,5380,'НЕЙЧОВЦИ',7),(3292,6797,'НЕНКОВО',9),(3293,9234,'НЕНОВО',3),(3294,5367,'НЕНОВЦИ',7),(3295,6831,'НЕОФИТ БОЗВЕЛИЕВО',9),(3296,9223,'НЕОФИТ РИЛСКИ',3),(3297,2396,'НЕПРАЗНЕНЦИ',14),(3298,8230,'НЕСЕБЪР',2),(3299,2213,'НЕСЛА',22),(3300,3039,'НЕФЕЛА',6),(3301,5097,'НЕШЕВЦИ',4),(3302,3241,'НИВЯНИН',6),(3303,5365,'НИКАЧКОВЦИ',7),(3304,9955,'НИКОЛА КОЗЛЕВО',27),(3305,9172,'НИКОЛАЕВКА',3),(3306,6190,'НИКОЛАЕВО',24),(3307,5874,'НИКОЛАЕВО',15),(3308,2406,'НИКОЛАЕВО',14),(3309,8873,'НИКОЛАЕВО',20),(3310,5168,'НИКОЛАЕВО',4),(3311,5351,'НИКОЛАЕВО',7),(3312,2599,'НИКОЛИЧЕВЦИ',10),(3313,3429,'НИКОЛОВО',12),(3314,7057,'НИКОЛОВО',18),(3315,6364,'НИКОЛОВО',26),(3316,5070,'НИКОЛОВЦИ',4),(3317,5098,'НИКОЛЧЕВЦИ',4),(3318,5345,'НИКОЛЧОВЦИ',7),(3319,5940,'НИКОПОЛ',15),(3320,2839,'НИКУДИН',1),(3321,5068,'НИКЮП',4),(3322,8995,'НИСКА ПОЛЯНА',20),(3323,7079,'НИСОВО',18),(3324,5097,'НИЧОВЦИ',4),(3325,9883,'НОВА БЯЛА РЕКА',27),(3326,5169,'НОВА ВЪРБОВКА',4),(3327,8900,'НОВА ЗАГОРА',20),(3328,9493,'НОВА КАМЕНА',8),(3329,6595,'НОВА ЛИВАДА',26),(3330,2925,'НОВА ЛОВЧА',1),(3331,4581,'НОВА МАХАЛА',13),(3332,6191,'НОВА МАХАЛА',24),(3333,6330,'НОВА НАДЕЖДА',26),(3334,7582,'НОВА ПОПИНА',19),(3335,7645,'НОВА ЧЕРНА',19),(3336,9116,'НОВА ШИПКА',3),(3337,9149,'НОВАКОВО',3),(3338,4262,'НОВАКОВО',16),(3339,5332,'НОВАКОВЦИ',7),(3340,8853,'НОВАЧЕВО',20),(3341,2147,'НОВАЧЕНЕ',22),(3342,5950,'НОВАЧЕНЕ',15),(3343,7133,'НОВГРАД',18),(3344,4265,'НОВИ ИЗВОР',16),(3345,1280,'НОВИ ИСКЪР',22),(3346,9900,'НОВИ ПАЗАР',27),(3347,6710,'НОВИ ПАЗАР',9),(3348,2110,'НОВИ ХАН',22),(3349,2531,'НОВИ ЧИФЛИК',10),(3350,9356,'НОВО БОТЕВО',8),(3351,2212,'НОВО БЪРДО',22),(3352,5175,'НОВО ГРАДИЩЕ',4),(3353,2814,'НОВО ДЕЛЧЕВО',1),(3354,4167,'НОВО ЖЕЛЕЗАРЕ',16),(3355,2874,'НОВО КОНОМЛАДИ',1),(3356,2923,'НОВО ЛЕСКИ',1),(3357,9113,'НОВО ОРЯХОВО',3),(3358,8152,'НОВО ПАНИЧАРЕВО',2),(3359,5069,'НОВО СЕЛО',4),(3360,2847,'НОВО СЕЛО',1),(3361,2534,'НОВО СЕЛО',10),(3362,3784,'НОВО СЕЛО',5),(3363,7052,'НОВО СЕЛО',18),(3364,2016,'НОВО СЕЛО',22),(3365,4221,'НОВО СЕЛО',16),(3366,6062,'НОВО СЕЛО',24),(3367,2831,'НОВО ХОДЖОВО',1),(3368,9825,'НОВО ЯНКОВО',27),(3369,5088,'НОВОГОРЦИ',4),(3370,9807,'НОВОСЕЛ',27),(3371,8958,'НОВОСЕЛЕЦ',20),(3372,6697,'НОВОСЕЛИЩЕ',9),(3373,2689,'НОВОСЕЛЯНЕ',10),(3374,2394,'НОЕВЦИ',14),(3375,7615,'НОЖАРЕВО',19),(3376,7441,'НОЖАРОВО',17),(3377,5360,'НОЖЕРИТЕ',7),(3378,5360,'НОСЕИТЕ',7),(3379,6726,'НОЧЕВО',9),(3380,5097,'НЮШКОВЦИ',4),(3381,5195,'ОБЕДИНЕНИЕ',4),(3382,2738,'ОБЕЛ',1),(3383,8250,'ОБЗОР',2),(3384,2776,'ОБИДИМ',1),(3385,7920,'ОБИТЕЛ',25),(3386,6800,'ОБИЧНИК',9),(3387,5922,'ОБНОВА',15),(3388,9147,'ОБОРИЩЕ',3),(3389,4522,'ОБОРИЩЕ',13),(3390,7170,'ОБРЕТЕНИК',18),(3391,9630,'ОБРОЧИЩЕ',8),(3392,6290,'ОБРУЧИЩЕ',24),(3393,7671,'ОВЕН',19),(3394,5340,'ОВОЩАРЦИ',7),(3395,5088,'ОВОЩНА',4),(3396,6138,'ОВОЩНИК',24),(3397,5295,'ОВЧА МОГИЛА',4),(3398,9233,'ОВЧАГА',3),(3399,6922,'ОВЧАРИ',9),(3400,9395,'ОВЧАРОВО',8),(3401,7747,'ОВЧАРОВО',25),(3402,6468,'ОВЧАРОВО',26),(3403,9805,'ОВЧАРОВО',27),(3404,2647,'ОВЧАРЦИ',10),(3405,6846,'ОВЧЕВО',9),(3406,4448,'ОВЧЕПОЛЦИ',13),(3407,8660,'ОВЧИ КЛАДЕНЕЦ',28),(3408,4972,'ОГЛЕД',21),(3409,8467,'ОГНЕН',2),(3410,2947,'ОГНЯНОВО',1),(3411,2117,'ОГНЯНОВО',22),(3412,9423,'ОГНЯНОВО',8),(3413,4417,'ОГНЯНОВО',13),(3414,2297,'ОГОЯ',22),(3415,4990,'ОГРАДНА',21),(3416,9529,'ОГРАЖДЕН',8),(3417,3679,'ОДОРОВЦИ',12),(3418,2408,'ОДРАНИЦА',14),(3419,9357,'ОДРИНЦИ',8),(3420,6584,'ОДРИНЦИ',26),(3421,5893,'ОДЪРНЕ',15),(3422,9362,'ОДЪРЦИ',8),(3423,2373,'ОЗЪРНОВЦИ',14),(3424,5350,'ОКОЛИИТЕ',7),(3425,8669,'ОКОП',28),(3426,7680,'ОКОРШ',19),(3427,8727,'ОМАН',28),(3428,9949,'ОМАРЧЕВО',27),(3429,8921,'ОМАРЧЕВО',20),(3430,7900,'ОМУРТАГ',25),(3431,9486,'ОНОГУР',8),(3432,7840,'ОПАКА',25),(3433,6078,'ОПАН',24),(3434,9347,'ОПАНЕЦ',8),(3435,5851,'ОПАНЕЦ',15),(3436,2235,'ОПИЦВЕТ',22),(3437,2276,'ОПЛЕТНЯ',22),(3438,6254,'ОПЪЛЧЕНЕЦ',24),(3439,6641,'ОПЪЛЧЕНСКО',9),(3440,7977,'ОРАЧ',25),(3441,5859,'ОРЕХОВИЦА',15),(3442,4877,'ОРЕХОВО',21),(3443,5280,'ОРЕШ',4),(3444,5749,'ОРЕША',11),(3445,9151,'ОРЕШАК',3),(3446,5630,'ОРЕШАК',11),(3447,6929,'ОРЕШАРИ',9),(3448,2943,'ОРЕШЕ',1),(3449,7684,'ОРЕШЕНЕ',19),(3450,5763,'ОРЕШЕНЕ',11),(3451,4255,'ОРЕШЕЦ',16),(3452,3945,'ОРЕШЕЦ',5),(3453,4727,'ОРЕШЕЦ',21),(3454,6475,'ОРЕШЕЦ',26),(3455,6579,'ОРЕШИНО',26),(3456,6561,'ОРЕШНИК',26),(3457,6655,'ОРЕШНИЦА',9),(3458,8248,'ОРИЗАРЕ',2),(3459,4214,'ОРИЗАРЕ',16),(3460,8893,'ОРИЗАРИ',20),(3461,6253,'ОРИЗОВО',24),(3462,8325,'ОРЛИНЦИ',2),(3463,6892,'ОРЛИЦА',9),(3464,6545,'ОРЛОВ ДОЛ',26),(3465,9359,'ОРЛОВА МОГИЛА',8),(3466,5187,'ОРЛОВЕЦ',4),(3467,8985,'ОРЛОВО',20),(3468,6354,'ОРЛОВО',26),(3469,5340,'ОРЛОВЦИ',7),(3470,9490,'ОРЛЯК',8),(3471,5577,'ОРЛЯНЕ',11),(3472,3665,'ОРСОЯ',12),(3473,2785,'ОРЦЕВО',1),(3474,4942,'ОРЯХОВЕЦ',21),(3475,6061,'ОРЯХОВИЦА',24),(3476,6555,'ОРЯХОВО',26),(3477,3300,'ОРЯХОВО',6),(3478,2186,'ОСЕЛНА',22),(3479,3171,'ОСЕЛНА',6),(3480,7634,'ОСЕН',19),(3481,3059,'ОСЕН',6),(3482,7746,'ОСЕН',25),(3483,5037,'ОСЕНАРИТЕ',4),(3484,7267,'ОСЕНЕЦ',17),(3485,9753,'ОСЕНОВЕЦ',27),(3486,2291,'ОСЕНОВЛАГ',22),(3487,9155,'ОСЕНОВО',3),(3488,2774,'ОСЕНОВО',1),(3489,6153,'ОСЕТЕНОВО',24),(3490,2164,'ОСИКОВИЦА',22),(3491,2965,'ОСИКОВО',1),(3492,4819,'ОСИКОВО',21),(3493,7862,'ОСИКОВО',25),(3494,2165,'ОСИКОВСКА ЛАКАВИЦА',22),(3495,2953,'ОСИНА',1),(3496,6216,'ОСЛАРКА',24),(3497,3169,'ОСЛЕН КРИВОДОЛ',6),(3498,9879,'ОСМАР',27),(3499,2121,'ОСОИЦА',22),(3500,8983,'ОСТРА МОГИЛА',20),(3501,6062,'ОСТРА МОГИЛА',24),(3502,7743,'ОСТРЕЦ',25),(3503,4732,'ОСТРИ ПАЗЛАК',21),(3504,7161,'ОСТРИЦА',18),(3505,4859,'ОСТРИЦА',21),(3506,3340,'ОСТРОВ',6),(3507,6881,'ОСТРОВЕЦ',9),(3508,6644,'ОСТРОВИЦА',9),(3509,7326,'ОСТРОВО',17),(3510,7238,'ОСТРОВЧЕ',17),(3511,3757,'ОСТРОКАПЦИ',5),(3512,6457,'ОСТЪР КАМЪК',26),(3513,4163,'ОТЕЦ КИРИЛОВО',16),(3514,4207,'ОТЕЦ ПАИСИЕВО',16),(3515,6624,'ОХЛЮВЕЦ',9),(3516,3079,'ОХОДЕН',6),(3517,3438,'ОХРИД',12),(3518,3162,'ОЧИНДОЛ',6),(3519,2049,'ОЧУША',22),(3520,3937,'ОШАНЕ',5),(3521,5350,'ОШАНИТЕ',7),(3522,2847,'ОЩАВА',1),(3523,5197,'ПАВЕЛ',4),(3524,6155,'ПАВЕЛ БАНЯ',24),(3525,4889,'ПАВЕЛСКО',21),(3526,5365,'ПАВЛЕВЦИ',7),(3527,5200,'ПАВЛИКЕНИ',4),(3528,3044,'ПАВОЛЧЕ',6),(3529,2632,'ПАДАЛА',10),(3530,6960,'ПАДАЛО',9),(3531,2747,'ПАДЕШ',1),(3532,9136,'ПАДИНА',3),(3533,6771,'ПАДИНА',9),(3534,7617,'ПАДИНА',19),(3535,2438,'ПАДИНЕ',14),(3536,4400,'ПАЗАРДЖИК',13),(3537,6829,'ПАЗАРЦИ',9),(3538,7681,'ПАИСИЕВО',19),(3539,5173,'ПАИСИЙ',4),(3540,7767,'ПАЙДУШКО',25),(3541,7850,'ПАЛАМАРЦА',25),(3542,2829,'ПАЛАТ',1),(3543,2782,'ПАЛАТНИК',1),(3544,2681,'ПАЛАТОВО',10),(3545,8698,'ПАЛАУЗОВО',28),(3546,3439,'ПАЛИЛУЛА',12),(3547,5083,'ПАЛИЦИ',4),(3548,4459,'ПАМИДОВО',13),(3549,4870,'ПАМПОРОВО',21),(3550,9934,'ПАМУКЧИИ',27),(3551,6058,'ПАМУКЧИИ',24),(3552,4500,'ПАНАГЮРИЩЕ',13),(3553,4520,'ПАНАГЮРСКИ КОЛОНИИ',13),(3554,9802,'ПАНАЙОТ ВОЛОВО',27),(3555,7929,'ПАНАЙОТ ХИТОВО',25),(3556,8867,'ПАНАРЕТОВЦИ',20),(3557,8254,'ПАНИЦОВО',2),(3558,6172,'ПАНИЧЕРЕВО',24),(3559,4179,'ПАНИЧЕРИ',16),(3560,7928,'ПАНИЧИНО',25),(3561,6723,'ПАНИЧКОВО',9),(3562,2060,'ПАНОВЦИ',22),(3563,2685,'ПАНЧАРЕВО',10),(3564,1137,'ПАНЧАРЕВО',22),(3565,6657,'ПАНЧЕВО',9),(3566,6851,'ПАПРАТ',9),(3567,5094,'ПАПРАТЛИВА',4),(3568,2474,'ПАРАМУН',14),(3569,2926,'ПАРИЛ',1),(3570,9245,'ПАРТИЗАНИ',3),(3571,6218,'ПАРТИЗАНИН',24),(3572,5344,'ПАРЧОВЦИ',7),(3573,5224,'ПАСКАЛЕВЕЦ',4),(3574,9370,'ПАСКАЛЕВО',8),(3575,6776,'ПАСПАЛ',9),(3576,2631,'ПАСТРА',10),(3577,2659,'ПАСТУХ',10),(3578,4418,'ПАТАЛЕНИЦА',13),(3579,6710,'ПАТИЦА',9),(3580,5225,'ПАТРЕШ',4),(3581,5631,'ПАТРЕШКО',11),(3582,4267,'ПАТРИАРХ ЕВТИМОВО',16),(3583,2069,'ПАУНОВО',22),(3584,6969,'ПАШИНЦИ',9),(3585,6572,'ПАШКУЛ',26),(3586,4632,'ПАШОВИ',13),(3587,6529,'ПАШОВО',26),(3588,7771,'ПЕВЕЦ',25),(3589,4335,'ПЕВЦИТЕ',16),(3590,5095,'ПЕЙКОВЦИ',4),(3591,5370,'ПЕЙНА',7),(3592,5345,'ПЕЙОВЦИ',7),(3593,7127,'ПЕЙЧИНОВО',18),(3594,2582,'ПЕЛАТИКОВО',10),(3595,6593,'ПЕЛЕВУН',26),(3596,6948,'ПЕЛИН',9),(3597,5895,'ПЕЛИШАТ',15),(3598,5333,'ПЕНКОВЦИ',7),(3599,2499,'ПЕНКЬОВЦИ',14),(3600,6741,'ПЕНЬОВО',9),(3601,7158,'ПЕПЕЛИНА',18),(3602,6643,'ПЕПЕЛИЩЕ',9),(3603,3841,'ПЕРИЛОВЕЦ',5),(3604,2300,'ПЕРНИК',14),(3605,6673,'ПЕРПЕРЕК',9),(3606,6949,'ПЕРУНИКА',9),(3607,4225,'ПЕРУЩИЦА',16),(3608,6798,'ПЕСНОПОЙ',9),(3609,4208,'ПЕСНОПОЙ',16),(3610,3519,'ПЕСОЧНИЦА',12),(3611,7119,'ПЕТ КЛАДЕНЦИ',18),(3612,9940,'ПЕТ МОГИЛИ',27),(3613,8953,'ПЕТ МОГИЛИ',20),(3614,6666,'ПЕТЕЛОВО',9),(3615,5184,'ПЕТКО КАРАВЕЛОВО',4),(3616,5434,'ПЕТКО СЛАВЕЙКОВ',7),(3617,2111,'ПЕТКОВО',22),(3618,4740,'ПЕТКОВО',21),(3619,5370,'ПЕТКОВЦИ',7),(3620,5084,'ПЕТКОВЦИ',4),(3621,9521,'ПЕТЛЕШКОВО',8),(3622,6634,'ПЕТЛИНО',9),(3623,5933,'ПЕТОКЛАДЕНЦИ',15),(3624,5784,'ПЕТРЕВЕНЕ',11),(3625,2936,'ПЕТРЕЛИК',1),(3626,7956,'ПЕТРИНО',25),(3627,2085,'ПЕТРИЧ',22),(3628,2850,'ПЕТРИЧ',1),(3629,4911,'ПЕТРОВ ДОЛ',21),(3630,9225,'ПЕТРОВ ДОЛ',3),(3631,2815,'ПЕТРОВО',1),(3632,6058,'ПЕТРОВО',24),(3633,5347,'ПЕТРОВЦИ',7),(3634,3521,'ПЕТРОХАН',12),(3635,5878,'ПЕТЪРНИЦА',15),(3636,2234,'ПЕТЪРЧ',22),(3637,5345,'ПЕЦОВЦИ',7),(3638,7428,'ПЕЧЕНИЦА',17),(3639,4912,'ПЕЧИНСКО',21),(3640,3733,'ПЕШАКОВО',5),(3641,2443,'ПЕЩЕРА',14),(3642,4550,'ПЕЩЕРА',13),(3643,4754,'ПЕЩЕРА',21),(3644,5788,'ПЕЩЕРНА',11),(3645,8525,'ПЕЩЕРСКО',2),(3646,2618,'ПИПЕРЕВО',10),(3647,2831,'ПИПЕРИЦА',1),(3648,2508,'ПИПЕРКОВ ЧИФЛИК',10),(3649,7129,'ПИПЕРКОВО',18),(3650,5035,'ПИРАМИДАТА',4),(3651,7090,'ПИРГОВО',18),(3652,2070,'ПИРДОП',22),(3653,2823,'ПИРИН',1),(3654,7976,'ПИРИНЕЦ',25),(3655,8528,'ПИРНЕ',2),(3656,7081,'ПИСАНЕЦ',18),(3657,4744,'ПИСАНИЦА',21),(3658,5127,'ПИСАРЕВО',4),(3659,9927,'ПИСАРЕВО',27),(3660,9527,'ПИСАРОВО',8),(3661,5871,'ПИСАРОВО',15),(3662,8289,'ПИСМЕНОВО',2),(3663,8942,'ПИТОВО',20),(3664,2218,'ПИШАНЕ',22),(3665,3662,'ПИШУРКА',12),(3666,4451,'ПИЩИГОВО',13),(3667,6813,'ПИЯВЕЦ',9),(3668,6850,'ПЛАЗИЩЕ',9),(3669,5042,'ПЛАКОВО',4),(3670,3781,'ПЛАКУДЕР',5),(3671,1475,'ПЛАНА',23),(3672,6599,'ПЛАНИНЕЦ',26),(3673,2340,'ПЛАНИНИЦА',14),(3674,8565,'ПЛАНИНИЦА',2),(3675,6560,'ПЛАНИНОВО',26),(3676,4940,'ПЛАНИНСКО',21),(3677,4921,'ПЛАНИНЦИ',21),(3678,5367,'ПЛАНИНЦИ',7),(3679,9365,'ПЛАЧИДОЛ',8),(3680,5370,'ПЛАЧКА',7),(3681,5360,'ПЛАЧКОВЦИ',7),(3682,5800,'ПЛЕВЕН',15),(3683,9522,'ПЛЕНИМИР',8),(3684,2954,'ПЛЕТЕНА',1),(3685,3931,'ПЛЕШИВЕЦ',5),(3686,6800,'ПЛЕШИНЦИ',9),(3687,9920,'ПЛИСКА',27),(3688,4000,'ПЛОВДИВ',16),(3689,4979,'ПЛОВДИВЦИ',21),(3690,6890,'ПЛОВКА',9),(3691,6257,'ПЛОДОВИТОВО',24),(3692,6055,'ПЛОСКА МОГИЛА',24),(3693,2810,'ПЛОСКИ',1),(3694,2072,'ПЛЪЗИЩЕ',22),(3695,7934,'ПЛЪСТИНА',25),(3696,9372,'ПОБЕДА',8),(3697,5873,'ПОБЕДА',15),(3698,8679,'ПОБЕДА',28),(3699,4638,'ПОБИТ КАМЪК',13),(3700,7262,'ПОБИТ КАМЪК',17),(3701,2554,'ПОБИТ КАМЪК',10),(3702,5365,'ПОБЪК',7),(3703,2218,'ПОВАЛИРЪЖ',22),(3704,6630,'ПОВЕТ',9),(3705,7431,'ПОДАЙВА',17),(3706,4733,'ПОДВИС',21),(3707,8450,'ПОДВИС',2),(3708,6850,'ПОДВРЪХ',9),(3709,3852,'ПОДГОРE',5),(3710,8535,'ПОДГОРЕЦ',2),(3711,2049,'ПОДГОРИЕ',22),(3712,7768,'ПОДГОРИЦА',25),(3713,1221,'ПОДГУМЕР',22),(3714,5852,'ПОДЕМ',15),(3715,6880,'ПОДКОВА',9),(3716,6312,'ПОДКРЕПА',26),(3717,7632,'ПОДЛЕС',19),(3718,6945,'ПОДРУМЧЕ',9),(3719,9391,'ПОДСЛОН',8),(3720,6057,'ПОДСЛОН',24),(3721,2229,'ПОЖАРЕВО',22),(3722,7622,'ПОЖАРЕВО',19),(3723,5041,'ПОЖЕРНИК',4),(3724,4524,'ПОИБРЕНЕ',13),(3725,3764,'ПОКРАЙНА',5),(3726,6575,'ПОКРОВАН',26),(3727,2708,'ПОКРОВНИК',1),(3728,2758,'ПОЛЕНА',1),(3729,2804,'ПОЛЕНИЦА',1),(3730,2561,'ПОЛЕТИНЦИ',10),(3731,3818,'ПОЛЕТКОВЦИ',5),(3732,2751,'ПОЛЕТО',1),(3733,5138,'ПОЛИКРАИЩЕ',4),(3734,2060,'ПОЛИОВЦИ',22),(3735,9401,'ПОЛКОВНИК ДЯКОВО',8),(3736,6909,'ПОЛКОВНИК ЖЕЛЯЗОВО',9),(3737,9432,'ПОЛКОВНИК ИВАНОВО',8),(3738,7579,'ПОЛКОВНИК ЛАМБРИНОВ',19),(3739,9471,'ПОЛКОВНИК САВОВО',8),(3740,9378,'ПОЛКОВНИК СВЕЩАРОВО',8),(3741,4794,'ПОЛКОВНИК СЕРАФИМОВ',21),(3742,7677,'ПОЛКОВНИК ТАСЛАКОВО',19),(3743,7553,'ПОЛКОВНИК ЧОЛАКОВО',19),(3744,2551,'ПОЛСКА СКАКАВИЦА',10),(3745,6276,'ПОЛСКИ ГРАДЕЦ',24),(3746,8123,'ПОЛСКИ ИЗВОР',2),(3747,5193,'ПОЛСКИ СЕНОВЕЦ',4),(3748,5180,'ПОЛСКИ ТРЪМБЕШ',4),(3749,7131,'ПОЛСКО КОСОВО',18),(3750,8937,'ПОЛСКО ПЪДАРЕВО',20),(3751,4977,'ПОЛЯНА',21),(3752,7584,'ПОЛЯНА',19),(3753,8654,'ПОЛЯНА',28),(3754,6847,'ПОЛЯНЕЦ',9),(3755,8544,'ПОЛЯНОВО',2),(3756,6464,'ПОЛЯНОВО',26),(3757,2068,'ПОЛЯНЦИ',22),(3758,9239,'ПОЛЯЦИТЕ',3),(3759,3476,'ПОМЕЖДИН',12),(3760,7164,'ПОМЕН',18),(3761,8200,'ПОМОРИЕ',2),(3762,7839,'ПОМОЩИЦА',25),(3763,6297,'ПОМОЩНИК',24),(3764,2236,'ПОНОР',22),(3765,5343,'ПОПАРИ',7),(3766,5365,'ПОПГЕРГЕВЦИ',7),(3767,9377,'ПОПГРИГОРОВО',8),(3768,9478,'ПОПГРУЕВО',8),(3769,7590,'ПОПИНА',19),(3770,4528,'ПОПИНЦИ',13),(3771,3244,'ПОПИЦА',6),(3772,7545,'ПОПКРАЛЕВО',19),(3773,6398,'ПОПОВЕЦ',26),(3774,4127,'ПОПОВИЦА',16),(3775,9101,'ПОПОВИЧ',3),(3776,8735,'ПОПОВО',28),(3777,7800,'ПОПОВО',25),(3778,5035,'ПОПОВЦИ',4),(3779,5345,'ПОПОВЦИ',7),(3780,2060,'ПОПОВЦИ',22),(3781,2014,'ПОПОВЯНЕ',22),(3782,5365,'ПОПРАЙКОВЦИ',7),(3783,4759,'ПОПРЕЛКА',21),(3784,7564,'ПОПРУСАНОВО',19),(3785,5084,'ПОПРУСЕВЦИ',4),(3786,5084,'ПОПСКА',4),(3787,5466,'ПОПСКА',7),(3788,6580,'ПОПСКО',26),(3789,5898,'ПОРДИМ',15),(3790,7218,'ПОРОИЩЕ',17),(3791,8221,'ПОРОЙ',2),(3792,4281,'ПОРОЙНА',16),(3793,7952,'ПОРОЙНО',25),(3794,7658,'ПОРОЙНО',19),(3795,2639,'ПОРОМИНОВО',10),(3796,3432,'ПОРТИТОВЦИ',12),(3797,9409,'ПОРУЧИК КЪРДЖИЕВО',8),(3798,9658,'ПОРУЧИК ЧУНЧЕВО',8),(3799,7853,'ПОСАБИНА',25),(3800,7567,'ПОСЕВ',19),(3801,6833,'ПОСТНИК',9),(3802,5309,'ПОТОК',7),(3803,4768,'ПОТОКА',21),(3804,2127,'ПОТОП',22),(3805,6963,'ПОТОЧАРКА',9),(3806,6850,'ПОТОЧЕ',9),(3807,6960,'ПОТОЧНИЦА',9),(3808,2455,'ПОЦЪРНЕНЦИ',14),(3809,5125,'ПРАВДА',4),(3810,7690,'ПРАВДА',19),(3811,8695,'ПРАВДИНО',28),(3812,6765,'ПРАВДОЛЮБ',9),(3813,9945,'ПРАВЕНЦИ',27),(3814,2161,'ПРАВЕЦ',22),(3815,2170,'ПРАВЕШКА ЛАКАВИЦА',22),(3816,4191,'ПРАВИЩЕ',16),(3817,2894,'ПРАВО БЪРДО',1),(3818,6248,'ПРАВОСЛАВ',24),(3819,4287,'ПРАВОСЛАВЕН',16),(3820,3917,'ПРАУЖДА',5),(3821,5345,'ПРАХАЛИ',7),(3822,3457,'ПРЕВАЛА',12),(3823,2571,'ПРЕКОЛНИЦА',10),(3824,2206,'ПРЕКРЪСТЕ',22),(3825,7325,'ПРЕЛЕЗ',17),(3826,5545,'ПРЕЛОМ',11),(3827,5040,'ПРЕОБРАЖЕНСКИ МАНАС',4),(3828,8541,'ПРЕОБРАЖЕНЦИ',2),(3829,6862,'ПРЕСЕКА',9),(3830,9558,'ПРЕСЕЛЕНЦИ',8),(3831,7772,'ПРЕСЕЛЕЦ',25),(3832,9922,'ПРЕСЕЛКА',27),(3833,7762,'ПРЕСИЯН',25),(3834,6048,'ПРЕСЛАВЕН',24),(3835,6454,'ПРЕСЛАВЕЦ',26),(3836,7635,'ПРЕСЛАВЦИ',19),(3837,4987,'ПРЕСОКА',21),(3838,9635,'ПРЕСПА',8),(3839,2072,'ПРЕСПА',22),(3840,5350,'ПРЕСТОЙ',7),(3841,7754,'ПРЕСЯК',17),(3842,5542,'ПРЕСЯКА',11),(3843,2452,'ПРИБОЙ',14),(3844,9352,'ПРИЛЕП',8),(3845,8445,'ПРИЛЕП',2),(3846,8290,'ПРИМОРСКО',2),(3847,9376,'ПРИМОРЦИ',8),(3848,9146,'ПРИПЕК',3),(3849,6858,'ПРИПЕК',9),(3850,8537,'ПРИПЕК',2),(3851,9524,'ПРИСАД',8),(3852,8161,'ПРИСАД',2),(3853,6564,'ПРИСАДЕЦ',26),(3854,9131,'ПРИСЕЛЦИ',3),(3855,8251,'ПРИСЕЛЦИ',2),(3856,5033,'ПРИСОВО',4),(3857,5766,'ПРИСОЕТО',11),(3858,7969,'ПРИСОЙНА',25),(3859,9965,'ПРИСТОЕ',27),(3860,7748,'ПРОБУДА',25),(3861,9200,'ПРОВАДИЯ',3),(3862,4871,'ПРОГЛЕД',21),(3863,5045,'ПРОДАНОВЦИ',4),(3864,5307,'ПРОДАНОВЦИ',7),(3865,2007,'ПРОДАНОВЦИ',22),(3866,2471,'ПРОДАНЧА',14),(3867,7739,'ПРОЛАЗ',25),(3868,3913,'ПРОЛАЗНИЦА',5),(3869,9685,'ПРОЛЕЗ',8),(3870,2228,'ПРОЛЕША',22),(3871,4358,'ПРОЛОМ',16),(3872,6632,'ПРОПАСТ',9),(3873,7055,'ПРОСЕНА',18),(3874,8548,'ПРОСЕНИК',2),(3875,9175,'ПРОСЕЧЕН',3),(3876,7263,'ПРОСТОРНО',18),(3877,3957,'ПРОТОПОПИНЦИ',5),(3878,9487,'ПРОФЕСОР ЗЛАТАРСКИ',8),(3879,7572,'ПРОФЕСОР ИШИРКОВО',19),(3880,7668,'ПРОХЛАДА',19),(3881,8336,'ПРОХОД',2),(3882,8944,'ПРОХОРОВО',20),(3883,6062,'ПРЯПОРЕЦ',24),(3884,6716,'ПРЯПОРЕЦ',9),(3885,6811,'ПТИЧАР',9),(3886,8998,'ПТИЧАРИ',20),(3887,7946,'ПТИЧЕВО',25),(3888,3049,'ПУДРИЯ',6),(3889,5062,'ПУШЕВО',4),(3890,8718,'ПЧЕЛА',28),(3891,6385,'ПЧЕЛАРИ',26),(3892,9550,'ПЧЕЛАРОВО',8),(3893,6664,'ПЧЕЛАРОВО',9),(3894,2048,'ПЧЕЛИН',22),(3895,8456,'ПЧЕЛИН',2),(3896,7438,'ПЧЕЛИНА',17),(3897,9363,'ПЧЕЛИНО',8),(3898,6196,'ПЧЕЛИНОВО',24),(3899,5048,'ПЧЕЛИЩЕ',4),(3900,9427,'ПЧЕЛНИК',8),(3901,9118,'ПЧЕЛНИК',3),(3902,7987,'ПЧЕЛНО',25),(3903,6268,'ПШЕНИЧЕВО',24),(3904,8992,'ПЪДАРЕВО',20),(3905,7959,'ПЪДАРИНО',25),(3906,4158,'ПЪДАРСКО',16),(3907,6746,'ПЪДАРЦИ',9),(3908,8317,'ПЪНЧЕВО',2),(3909,7958,'ПЪРВАН',25),(3910,4110,'ПЪРВЕНЕЦ',16),(3911,8694,'ПЪРВЕНЕЦ',28),(3912,6865,'ПЪРВЕНЦИ',9),(3913,6882,'ПЪРВИЦА',9),(3914,2890,'ПЪРВОМАЙ',1),(3915,4270,'ПЪРВОМАЙ',16),(3916,5139,'ПЪРВОМАЙЦИ',4),(3917,5365,'ПЪРЖИГРАХ',7),(3918,3531,'ПЪРЛИЧЕВО',12),(3919,5052,'ПЪРОВЦИ',4),(3920,5307,'ПЪРТЕВЦИ',7),(3921,5380,'ПЪРША',7),(3922,6075,'ПЪСТРЕН',24),(3923,6233,'ПЪСТРОВО',24),(3924,6519,'ПЪСТРОГОР',26),(3925,6597,'ПЪСТРООК',26),(3926,6379,'ПЪТНИКОВО',26),(3927,6496,'ПЯСЪЧЕВО',26),(3928,3938,'РАБИША',5),(3929,6384,'РАБОВО',26),(3930,3842,'РАБРОВО',5),(3931,8146,'РАВАДИНОВО',2),(3932,8238,'РАВДА',2),(3933,6834,'РАВЕН',9),(3934,2249,'РАВНА',22),(3935,9235,'РАВНА',3),(3936,5742,'РАВНА',11),(3937,3473,'РАВНА',12),(3938,9124,'РАВНА ГОРА',3),(3939,6526,'РАВНА ГОРА',26),(3940,8151,'РАВНА ГОРА',2),(3941,8117,'РАВНЕЦ',2),(3942,9523,'РАВНЕЦ',8),(3943,4931,'РАВНИЛ',21),(3944,4781,'РАВНИНАТА',21),(3945,4955,'РАВНИЩА',21),(3946,2167,'РАВНИЩЕ',22),(3947,7296,'РАВНО',18),(3948,4913,'РАВНО НИВИЩЕ',21),(3949,2129,'РАВНО ПОЛЕ',22),(3950,7965,'РАВНО СЕЛО',25),(3951,5089,'РАВНОВО',4),(3952,4582,'РАВНОГОР',13),(3953,9294,'РАДАН ВОЙВОДА',3),(3954,5185,'РАДАНОВО',4),(3955,5370,'РАДАНЧЕТО',7),(3956,9149,'РАДЕВО',3),(3957,8917,'РАДЕВО',20),(3958,5360,'РАДЕВЦИ',7),(3959,8959,'РАДЕЦКИ',20),(3960,2447,'РАДИБОШ',14),(3961,6427,'РАДИЕВО',26),(3962,4590,'РАДИЛОВО',13),(3963,7245,'РАДИНГРАД',17),(3964,8983,'РАДИНКА',20),(3965,5360,'РАДИНО',7),(3966,4202,'РАДИНОВО',16),(3967,5838,'РАДИШЕВО',15),(3968,9808,'РАДКО ДИМИТРИЕВО',27),(3969,5041,'РАДКОВЦИ',4),(3970,2548,'РАДЛОВЦИ',10),(3971,6260,'РАДНЕВО',24),(3972,5035,'РАДНЕВЦИ',4),(3973,3144,'РАДОВЕНЕ',6),(3974,6564,'РАДОВЕЦ',26),(3975,2488,'РАДОВО',14),(3976,5380,'РАДОВЦИ',7),(3977,5084,'РАДОВЦИ',4),(3978,5633,'РАДОЕВСКОТО',11),(3979,5367,'РАДОЕВЦИ',7),(3980,8323,'РАДОЙНОВО',2),(3981,2400,'РАДОМИР',14),(3982,5997,'РАДОМИРЦИ',15),(3983,2148,'РАДОТИНА',22),(3984,2043,'РАДУИЛ',22),(3985,2359,'РАДУЙ',14),(3986,2222,'РАДУЛОВЦИ',22),(3987,6185,'РАДУНЦИ',24),(3988,6185,'РАДУНЦИ - САНАТОРИУ',24),(3989,5540,'РАДЮВЕНЕ',11),(3990,5363,'РАЕВЦИ',7),(3991,2253,'РАЗБОИЩЕ',22),(3992,8531,'РАЗБОЙНА',2),(3993,7707,'РАЗБОЙНА',25),(3994,9790,'РАЗВИГОРОВО',27),(3995,3633,'РАЗГРАД',12),(3996,7200,'РАЗГРАД',17),(3997,7659,'РАЗДЕЛ',19),(3998,8747,'РАЗДЕЛ',28),(3999,9181,'РАЗДЕЛНА',3),(4000,6283,'РАЗДЕЛНА',24),(4001,7989,'РАЗДЕЛЦИ',25),(4002,2835,'РАЗДОЛ',1),(4003,2166,'РАЗДОЛАТА',22),(4004,2162,'РАЗЛИВ',22),(4005,2760,'РАЗЛОГ',1),(4006,5089,'РАЗСОХА',4),(4007,6525,'РАЙКОВА МОГИЛА',26),(4008,5617,'РАЙКОВСКА',11),(4009,5039,'РАЙКОВЦИ',4),(4010,7421,'РАЙНИНО',17),(4011,6423,'РАЙНОВО',26),(4012,5347,'РАЙНОВЦИ',7),(4013,5094,'РАЙНОВЦИ',4),(4014,5363,'РАЙНУШКОВЦИ',7),(4015,2017,'РАЙОВО',22),(4016,3067,'РАКЕВО',6),(4017,2451,'РАКИЛОВЦИ',14),(4018,2223,'РАКИТА',22),(4019,5998,'РАКИТА',15),(4020,2753,'РАКИТНА',1),(4021,3791,'РАКИТНИЦА',5),(4022,6067,'РАКИТНИЦА',24),(4023,4640,'РАКИТОВО',13),(4024,8547,'РАКЛИНОВО',2),(4025,8439,'РАКЛИЦА',2),(4026,3820,'РАКОВИЦА',5),(4027,2577,'РАКОВО',10),(4028,8884,'РАКОВО',20),(4029,9659,'РАКОВСКИ',8),(4030,7264,'РАКОВСКИ',17),(4031,4150,'РАКОВСКИ',16),(4032,8257,'РАКОВСКОВО',2),(4033,5875,'РАЛЕВО',15),(4034,5367,'РАЛЕВЦИ',7),(4035,5098,'РАЛИНОВЦИ',4),(4036,6820,'РАЛИЦА',9),(4037,7759,'РАЛИЦА',25),(4038,6965,'РАЛИЧЕВО',9),(4039,2569,'РАНЕНЦИ',10),(4040,6720,'РАНИ ЛИСТ',9),(4041,2484,'РАНИ ЛУГ',14),(4042,2357,'РАСНИК',14),(4043,3660,'РАСОВО',12),(4044,6865,'РАСТНИК',9),(4045,5343,'РАХОВЦИ',7),(4046,5345,'РАЧЕВЦИ',7),(4047,5350,'РАЧОВЦИ',7),(4048,5035,'РАШЕВЦИ',4),(4049,2578,'РАШКА ГРАЩИЦА',10),(4050,2152,'РАШКОВО',22),(4051,5350,'РАШОВИТЕ',7),(4052,3532,'РАШОВИЦА',12),(4053,5093,'РАЮВЦИ',4),(4054,3935,'РАЯНОВЦИ',5),(4055,2204,'РАЯНОВЦИ',22),(4056,2446,'РАЯНЦИ',14),(4057,5087,'РЕБРЕВЦИ',4),(4058,2384,'РЕБРО',14),(4059,2294,'РЕБРОВО',22),(4060,3158,'РЕБЪРКОВО',6),(4061,5340,'РЕДЕШКОВЦИ',7),(4062,2269,'РЕДИНА',22),(4063,2380,'РЕЖАНЦИ',14),(4064,2562,'РЕЖИНЦИ',10),(4065,5088,'РЕЗАЧ',4),(4066,6649,'РЕЗБАРЦИ',9),(4067,8281,'РЕЗОВО',2),(4068,4734,'РЕКА',21),(4069,5088,'РЕКИЧКА',4),(4070,2018,'РЕЛЬОВО',22),(4071,3954,'РЕПЛЯНА',5),(4072,5993,'РЕСЕЛЕЦ',15),(4073,5060,'РЕСЕН',4),(4074,2621,'РЕСИЛОВО',10),(4075,4793,'РЕЧАНИ',21),(4076,8567,'РЕЧИЦА',2),(4077,2483,'РЕЯНОВЦИ',14),(4078,2192,'РИБАРИЦА',22),(4079,5720,'РИБАРИЦА',11),(4080,6790,'РИБАРЦИ',9),(4081,5847,'РИБЕН',15),(4082,4952,'РИБЕН ДОЛ',21),(4083,6939,'РИБИНО',9),(4084,2864,'РИБНИК',1),(4085,4973,'РИБНИЦА',21),(4086,2967,'РИБНОВО',1),(4087,6849,'РИДИНО',9),(4088,6742,'РИДОВО',9),(4089,2630,'РИЛА',10),(4090,2643,'РИЛСКИ МАНАСТИР',10),(4091,2710,'РИЛЦИ',1),(4092,6274,'РИСИМАНОВО',24),(4093,5370,'РИТЯ',7),(4094,9830,'РИШ',27),(4095,8664,'РОБОВО',28),(4096,4736,'РОВИНА',21),(4097,6916,'РОГАЧ',9),(4098,9632,'РОГАЧЕВО',8),(4099,3962,'РОГЛЕЦ',5),(4100,6845,'РОГОЗАРИ',9),(4101,3360,'РОГОЗЕН',6),(4102,9560,'РОГОЗИНА',8),(4103,6469,'РОГОЗИНОВО',26),(4104,6845,'РОГОЗЧЕ',9),(4105,4140,'РОГОШ',16),(4106,5447,'РОГУЛЯТ',7),(4107,5092,'РОДИНА',4),(4108,6356,'РОДОПИ',26),(4109,6762,'РОДОПСКО',9),(4110,8539,'РОЖДЕН',2),(4111,2820,'РОЖЕН',1),(4112,8630,'РОЗА',28),(4113,6596,'РОЗИНО',26),(4114,4340,'РОЗИНО',16),(4115,4154,'РОЗОВЕЦ',16),(4116,4583,'РОЗОВО',13),(4117,6163,'РОЗОВО',24),(4118,3130,'РОМАН',6),(4119,2254,'РОПОТ',22),(4120,9537,'РОСЕН',8),(4121,4421,'РОСЕН',13),(4122,8150,'РОСЕН',2),(4123,9369,'РОСЕНОВО',8),(4124,8318,'РОСЕНОВО',2),(4125,7784,'РОСИНА',17),(4126,7933,'РОСИЦА',25),(4127,9540,'РОСИЦА',8),(4128,5221,'РОСИЦА',4),(4129,5091,'РОСНО',4),(4130,2225,'РОСОМАН',22),(4131,4653,'РОХЛЕВА',13),(4132,9252,'РОЯК',3),(4133,2343,'РУДАРЦИ',14),(4134,6659,'РУДИНА',9),(4135,8536,'РУДИНА',2),(4136,8112,'РУДНИК',2),(4137,9105,'РУДНИК',3),(4138,4960,'РУДОЗЕМ',21),(4139,5367,'РУЕВЦИ',7),(4140,4102,'РУЕН',16),(4141,8540,'РУЕН',2),(4142,7744,'РУЕЦ',25),(4143,3930,'РУЖИНЦИ',5),(4144,8722,'РУЖИЦА',28),(4145,9954,'РУЖИЦА',27),(4146,7692,'РУЙНО',19),(4147,5304,'РУЙЧОВЦИ',7),(4148,6057,'РУМАНЯ',24),(4149,6453,'РУМЕЛИЯ',26),(4150,5785,'РУМЯНЦЕВО',11),(4151,5397,'РУНЯ',7),(4152,2863,'РУПИТЕ',1),(4153,6251,'РУПКИТЕ',24),(4154,3726,'РУПЦИ',5),(4155,5994,'РУПЦИ',15),(4156,8574,'РУПЧА',2),(4157,6695,'РУСАЛИНА',9),(4158,6795,'РУСАЛСКО',9),(4159,5057,'РУСАЛЯ',4),(4160,7000,'РУСЕ',18),(4161,5380,'РУСИНОВЦИ',7),(4162,3148,'РУСКА БЕЛА',6),(4163,5035,'РУСКОВЦИ',4),(4164,8105,'РУСОКАСТРО',2),(4165,4956,'РУСТАН',21),(4166,5079,'РУХОВЦИ',4),(4167,6928,'РУЧЕЙ',9),(4168,2060,'РЪЖАНА',22),(4169,2389,'РЪЖДАВЕЦ',14),(4170,2550,'РЪЖДАВИЦА',10),(4171,2856,'РЪЖДАК',1),(4172,4169,'РЪЖЕВО',16),(4173,4170,'РЪЖЕВО КОНАРЕ',16),(4174,6171,'РЪЖЕНА',24),(4175,6456,'РЪЖЕНОВО',26),(4176,8530,'РЪЖИЦА',2),(4177,2568,'РЪСОВО',10),(4178,6850,'РЪТ',9),(4179,7935,'РЪТЛИНА',25),(4180,8842,'РЪЧЕНИЦА',20),(4181,5345,'РЯЗКОВЦИ',7),(4182,7070,'РЯХОВО',18),(4183,5440,'РЯХОВЦИТЕ',7),(4184,9251,'САВА',3),(4185,7318,'САВИН',17),(4186,8643,'САВИНО',28),(4187,2576,'САВОЙСКИ',10),(4188,7841,'САДИНА',25),(4189,5896,'САДОВЕЦ',15),(4190,2387,'САДОВИК',14),(4191,6815,'САДОВИЦА',9),(4192,9139,'САДОВО',3),(4193,4122,'САДОВО',16),(4194,8463,'САДОВО',2),(4195,2922,'САДОВО',1),(4196,2576,'САЖДЕНИК',10),(4197,6568,'САКАРЦИ',26),(4198,9817,'САЛАМАНОВО',27),(4199,5397,'САЛАСУКА',7),(4200,3933,'САЛАШ',5),(4201,6942,'САМОВИЛА',9),(4202,5040,'САМОВОДЕНЕ',4),(4203,6878,'САМОДИВА',9),(4204,6897,'САМОКИТКА',9),(4205,2000,'САМОКОВ',22),(4206,2620,'САМОРАНОВО',10),(4207,9101,'САМОТИНО',3),(4208,5035,'САМСИИТЕ',4),(4209,7454,'САМУИЛ',17),(4210,2895,'САМУИЛОВА КРЕПОСТ',1),(4211,9384,'САМУИЛОВО',8),(4212,2879,'САМУИЛОВО',1),(4213,8865,'САМУИЛОВО',20),(4214,6051,'САМУИЛОВО',24),(4215,8484,'САН СТЕФАНО',2),(4216,5949,'САНАДИНОВО',15),(4217,2800,'САНДАНСКИ',1),(4218,7059,'САНДРОВО',18),(4219,2650,'САПАРЕВА БАНЯ',10),(4220,2645,'САПАРЕВО',10),(4221,3333,'САРАЕВО',6),(4222,8659,'САРАНСКО',28),(4223,2120,'САРАНЦИ',22),(4224,4447,'САРАЯ',13),(4225,2950,'САТОВЧА',1),(4226,6961,'СБОР',9),(4227,4449,'СБОР',13),(4228,6595,'СБОРИНО',26),(4229,8899,'СБОРИЩЕ',20),(4230,9006,'СВ. КОНСТАНТИН И ЕЛ',3),(4231,7082,'СВАЛЕНИК',17),(4232,6675,'СВАТБАРЕ',9),(4233,4304,'СВЕЖЕН',16),(4234,4620,'СВЕТА ПЕТКА',13),(4235,8256,'СВЕТИ ВЛАС',2),(4236,8258,'СВЕТИ ВЛАС - САНАТО',2),(4237,4577,'СВЕТИ КОНСТАНТИН',13),(4238,9662,'СВЕТИ НИКОЛА',8),(4239,6890,'СВЕТЛЕН',9),(4240,7877,'СВЕТЛЕН',25),(4241,6420,'СВЕТЛИНА',26),(4242,8322,'СВЕТЛИНА',2),(4243,6547,'СВЕТЛИНА',26),(4244,2449,'СВЕТЛЯ',14),(4245,1252,'СВЕТОВРАЧЕНЕ',22),(4246,7554,'СВЕТОСЛАВ',19),(4247,6378,'СВЕТОСЛАВ',26),(4248,5080,'СВЕТОСЛАВЦИ',4),(4249,6768,'СВЕТУЛКА',9),(4250,7423,'СВЕЩАРИ',17),(4251,2266,'СВИДНЯ',22),(4252,6500,'СВИЛЕНГРАД',26),(4253,5300,'СВИНАРСКИ ДОЛ',7),(4254,6578,'СВИРАЧИ',26),(4255,6499,'СВИРКОВО',26),(4256,5367,'СВИРЦИ',7),(4257,7960,'СВИРЧОВО',25),(4258,5250,'СВИЩОВ',4),(4259,9398,'СВОБОДА',8),(4260,8103,'СВОБОДА',2),(4261,6800,'СВОБОДА',9),(4262,4532,'СВОБОДА',13),(4263,6230,'СВОБОДА',24),(4264,6278,'СВОБОДЕН',24),(4265,6706,'СВОБОДИНОВО',9),(4266,7997,'СВОБОДИЦА',25),(4267,2260,'СВОГЕ',22),(4268,2171,'СВОДЕ',22),(4269,7332,'СЕВАР',17),(4270,6745,'СЕВДАЛИНА',9),(4271,9405,'СЕВЕРНЯК',8),(4272,9415,'СЕВЕРЦИ',8),(4273,5400,'СЕВЛИЕВО',7),(4274,2834,'СЕДЕЛЕЦ',1),(4275,6827,'СЕДЕФЧЕ',9),(4276,8994,'СЕДЛАРЕВО',20),(4277,6800,'СЕДЛАРИ',9),(4278,6789,'СЕДЛАРцИ',9),(4279,6621,'СЕДЛОВИНА',9),(4280,5300,'СЕДЯНКОВЦИ',7),(4281,7282,'СЕЙДОЛ',17),(4282,5344,'СЕЙКОВЦИ',7),(4283,5041,'СЕЙМЕНИТЕ',4),(4284,6890,'СЕКИРКА',9),(4285,7665,'СЕКУЛОВО',19),(4286,3301,'СЕЛАНОВЦИ',6),(4287,8862,'СЕЛИМИНОВО',20),(4288,2744,'СЕЛИЩЕ',1),(4289,5462,'СЕЛИЩЕ',7),(4290,4735,'СЕЛИЩЕ',21),(4291,2377,'СЕЛИЩЕН ДОЛ',14),(4292,6487,'СЕЛСКА ПОЛЯНА',26),(4293,9655,'СЕЛЦЕ',8),(4294,6184,'СЕЛЦЕ',24),(4295,5655,'СЕЛЦЕ',11),(4296,4129,'СЕЛЦИ',16),(4297,4814,'СЕЛЧА',21),(4298,2060,'СЕЛЯНИН',22),(4299,7072,'СЕМЕРДЖИЕВО',18),(4300,5340,'СЕМЕРДЖИИТЕ',7),(4301,7970,'СЕМЕРЦИ',25),(4302,5035,'СЕМКОВЦИ',4),(4303,4474,'СЕМЧИНОВО',13),(4304,5450,'СЕННИК',7),(4305,7271,'СЕНОВО',18),(4306,6481,'СЕНОКЛАС',26),(4307,9634,'СЕНОКОС',8),(4308,2752,'СЕНОКОС',1),(4309,6800,'СЕНЦЕ',9),(4310,4490,'СЕПТЕМВРИ',13),(4311,3637,'СЕПТЕМВРИЙЦИ',12),(4312,3796,'СЕПТЕМВРИЙЦИ',5),(4313,9693,'СЕПТЕМВРИЙЦИ',8),(4314,7341,'СЕСЛАВ',17),(4315,4469,'СЕСТРИМО',13),(4316,2875,'СЕСТРИНО',1),(4317,6660,'СЕСТРИНСКО',9),(4318,5360,'СЕЧЕН КАМЪК',7),(4319,9923,'СЕЧИЩЕ',27),(4320,6585,'СИВ КЛАДЕНЕЦ',26),(4321,6522,'СИВА РЕКА',26),(4322,4780,'СИВИНО',21),(4323,8438,'СИГМЕН',2),(4324,6380,'СИЛЕН',26),(4325,7500,'СИЛИСТРА',19),(4326,6490,'СИМЕОНОВГРАД',26),(4327,4475,'СИМЕОНОВЕЦ',13),(4328,8665,'СИМЕОНОВО',28),(4329,2730,'СИМИТЛИ',1),(4330,3737,'СИНАГОВЦИ',5),(4331,6567,'СИНАПОВО',26),(4332,9125,'СИНДЕЛ',3),(4333,6825,'СИНДЕЛЦИ',9),(4334,8279,'СИНЕМОРЕЦ',2),(4335,9950,'СИНИ ВИР',27),(4336,4236,'СИНИ ВРЪХ',16),(4337,8534,'СИНИ РИД',2),(4338,6956,'СИНИГЕР',9),(4339,4442,'СИНИТОВО',13),(4340,6785,'СИНЧЕЦ',9),(4341,3139,'СИНЬО БЪРДО',6),(4342,8332,'СИНЬО КАМЕНЕ',2),(4343,7287,'СИНЯ ВОДА',17),(4344,6629,'СИПЕЙ',9),(4345,3254,'СИРАКОВО',6),(4346,9564,'СИРАКОВО',8),(4347,6359,'СИРАКОВО',26),(4348,2450,'СИРИЩНИК',14),(4349,8744,'СИТОВО',28),(4350,4104,'СИТОВО',16),(4351,7583,'СИТОВО',19),(4352,7667,'СКАЛА',19),(4353,8462,'СКАЛА',2),(4354,6923,'СКАЛАК',9),(4355,8575,'СКАЛАК',2),(4356,6846,'СКАЛИНА',9),(4357,8645,'СКАЛИЦА',28),(4358,6652,'СКАЛИЩЕ',9),(4359,6748,'СКАЛНА ГЛАВА',9),(4360,5386,'СКАЛСКО',7),(4361,5644,'СКАНДАЛОТО',11),(4362,2811,'СКЛАВЕ',1),(4363,6429,'СКОБЕЛЕВО',26),(4364,5508,'СКОБЕЛЕВО',11),(4365,6148,'СКОБЕЛЕВО',24),(4366,4227,'СКОБЕЛЕВО',16),(4367,8871,'СКОБЕЛЕВО',20),(4368,3946,'СКОМЛЯ',5),(4369,5350,'СКОРЦИТЕ',7),(4370,2143,'СКРАВЕНА',22),(4371,2964,'СКРЕБАТНО',1),(4372,2663,'СКРИНО',10),(4373,2599,'СКРИНЯНО',10),(4374,2897,'СКРЪТ',1),(4375,4134,'СКУТАРЕ',16),(4376,6720,'СКЪРБИНО',9),(4377,9366,'СЛАВЕЕВО',8),(4378,6576,'СЛАВЕЕВО',26),(4379,5391,'СЛАВЕЙКОВО',7),(4380,8738,'СЛАВЕЙКОВО',28),(4381,9247,'СЛАВЕЙКОВО',3),(4382,4747,'СЛАВЕЙНО',21),(4383,5858,'СЛАВОВИЦА',15),(4384,4496,'СЛАВОВИЦА',13),(4385,3451,'СЛАВОТИН',12),(4386,5522,'СЛАВЩИЦА',11),(4387,5565,'СЛАВЯНИ',11),(4388,6236,'СЛАВЯНИН',24),(4389,5840,'СЛАВЯНОВО',15),(4390,7860,'СЛАВЯНОВО',25),(4391,6473,'СЛАВЯНОВО',26),(4392,8460,'СЛАВЯНЦИ',2),(4393,9257,'СЛАДКА ВОДА',3),(4394,6960,'СЛАДКОДУМ',9),(4395,6534,'СЛАДУН',26),(4396,6064,'СЛАДЪК КЛАДЕНЕЦ',24),(4397,2369,'СЛАКОВЦИ',14),(4398,8663,'СЛАМИНО',28),(4399,3728,'СЛАНА БАРА',5),(4400,3769,'СЛАНОТРЪН',5),(4401,3535,'СЛАТИНА',12),(4402,4342,'СЛАТИНА',16),(4403,5564,'СЛАТИНА',11),(4404,7585,'СЛАТИНА',19),(4405,5768,'СЛАТИНА',11),(4406,2642,'СЛАТИНО',10),(4407,2449,'СЛАТИНО',14),(4408,2937,'СЛАЩЕН',1),(4409,9784,'СЛИВАК',27),(4410,6919,'СЛИВАРКА',9),(4411,8358,'СЛИВАРОВО',2),(4412,3668,'СЛИВАТА',12),(4413,5537,'СЛИВЕК',11),(4414,8800,'СЛИВЕН',20),(4415,8840,'СЛИВЕНСКИ МИН. БАНИ',20),(4416,9395,'СЛИВЕНЦИ',8),(4417,6176,'СЛИВИТО',24),(4418,4943,'СЛИВКА',21),(4419,2844,'СЛИВНИЦА',1),(4420,2200,'СЛИВНИЦА',22),(4421,7060,'СЛИВО ПОЛЕ',18),(4422,3664,'СЛИВОВИК',12),(4423,5157,'СЛИВОВИЦА',4),(4424,3915,'СЛИВОВНИК',5),(4425,4710,'СЛИВОВО',21),(4426,8331,'СЛИВОВО',2),(4427,5367,'СЛИВОВО',7),(4428,2484,'СЛИШОВЦИ',14),(4429,2533,'СЛОКОЩИЦА',10),(4430,5229,'СЛОМЕР',4),(4431,8240,'СЛЪНЧЕВ БРЯГ',2),(4432,9144,'СЛЪНЧЕВО',3),(4433,7963,'СЛЪНЧОВЕЦ',25),(4434,6850,'СЛЪНЧОГЛЕД',9),(4435,7577,'СМИЛЕЦ',19),(4436,4531,'СМИЛЕЦ',13),(4437,5333,'СМИЛОВЦИ',7),(4438,4770,'СМИЛЯН',21),(4439,9679,'СМИН',8),(4440,3663,'СМИРНЕНСКИ',12),(4441,7074,'СМИРНЕНСКИ',18),(4442,6467,'СМИРНЕНЦИ',26),(4443,2456,'СМИРОВ ДОЛ',14),(4444,2794,'СМОЛЕВО',1),(4445,2583,'СМОЛИЧАНО',10),(4446,8491,'СМОЛНИК',2),(4447,9383,'СМОЛНИЦА',8),(4448,2073,'СМОЛСКО',22),(4449,2255,'СМОЛЧА',22),(4450,4700,'СМОЛЯН',21),(4451,3450,'СМОЛЯНОВЦИ',12),(4452,5547,'СМОЧАН',11),(4453,2641,'СМОЧЕВО',10),(4454,9820,'СМЯДОВО',27),(4455,8568,'СНЕЖА',2),(4456,9244,'СНЕЖИНА',3),(4457,6741,'СНЕЖИНКА',9),(4458,9557,'СНОП',8),(4459,9533,'СНЯГОВО',8),(4460,8579,'СНЯГОВО',2),(4461,5283,'СОВАТА',4),(4462,2547,'СОВОЛЯНО',10),(4463,8130,'СОЗОПОЛ',2),(4464,7621,'СОКОЛ',19),(4465,8945,'СОКОЛ',20),(4466,3258,'СОКОЛАРЕ',6),(4467,8984,'СОКОЛАРЦИ',20),(4468,6595,'СОКОЛЕНЦИ',26),(4469,8554,'СОКОЛЕЦ',2),(4470,6812,'СОКОЛИНО',9),(4471,6694,'СОКОЛИТЕ',9),(4472,4367,'СОКОЛИЦА',16),(4473,9351,'СОКОЛНИК',8),(4474,9640,'СОКОЛОВО',8),(4475,5392,'СОКОЛОВО',7),(4476,8435,'СОКОЛОВО',2),(4477,5538,'СОКОЛОВО',11),(4478,4751,'СОКОЛОВЦИ',21),(4479,6648,'СОКОЛСКО',9),(4480,6688,'СОКОЛЯНЕ',9),(4481,5300,'СОЛАРИ',7),(4482,4711,'СОЛИЩА',21),(4483,6721,'СОЛИЩЕ',9),(4484,9122,'СОЛНИК',3),(4485,5959,'СОМОВИТ',15),(4486,2378,'СОПИЦА',14),(4487,2664,'СОПОВО',10),(4488,4330,'СОПОТ',16),(4489,5571,'СОПОТ',11),(4490,4974,'СОПОТОТ',21),(4491,8859,'СОТИРЯ',20),(4492,6850,'СОФИЙЦИ',9),(4493,1000,'СОФИЯ',22),(4494,3348,'СОФРОНИЕВО',6),(4495,5344,'СПАНЦИ',7),(4496,3546,'СПАНЧЕВЦИ',12),(4497,9561,'СПАСОВО',8),(4498,6249,'СПАСОВО',24),(4499,5340,'СПАСОВЦИ',7),(4500,2811,'СПАТОВО',1),(4501,6346,'СПАХИЕВО',26),(4502,6799,'СПОЛУКА',9),(4503,7541,'СРАЦИМИР',19),(4504,3847,'СРАЦИМИРОВО',5),(4505,4525,'СРЕБРИНОВО',13),(4506,7587,'СРЕБЪРНА',19),(4507,4998,'СРЕДЕЦ',21),(4508,6066,'СРЕДЕЦ',24),(4509,8300,'СРЕДЕЦ',2),(4510,9546,'СРЕДИНА',8),(4511,6738,'СРЕДИНКА',9),(4512,7949,'СРЕДИЩЕ',25),(4513,7560,'СРЕДИЩЕ',19),(4514,2062,'СРЕДИЩНА',22),(4515,9968,'СРЕДКОВЕЦ',27),(4516,2918,'СРЕДНА',1),(4517,8581,'СРЕДНА МАХАЛА',2),(4518,6717,'СРЕДНЕВО',9),(4519,5093,'СРЕДНИ КОЛИБИ',4),(4520,3137,'СРЕДНИ РЪТ',6),(4521,6241,'СРЕДНО ГРАДИЩЕ',24),(4522,9222,'СРЕДНО СЕЛО',3),(4523,5088,'СРЕДНО СЕЛО',4),(4524,6166,'СРЕДНОГОРОВО',24),(4525,4954,'СРЕДНОГОРЦИ',21),(4526,9798,'СРЕДНЯ',27),(4527,3959,'СРЕДОГРИВ',5),(4528,4798,'СРЕДОК',21),(4529,8845,'СРЕДОРЕК',20),(4530,2555,'СРЕДОРЕК',10),(4531,7433,'СРЕДОСЕЛЦИ',17),(4532,6693,'СРЕДСКА',9),(4533,6890,'СРЕДСКО',9),(4534,6565,'СРЕМ',26),(4535,6775,'СРЪНСКО',9),(4536,5863,'СТАВЕРЦИ',15),(4537,9673,'СТАЕВЦИ',8),(4538,5350,'СТАЙНОВЦИ',7),(4539,4931,'СТАЙЧИН ДОЛ',21),(4540,2489,'СТАЙЧОВЦИ',14),(4541,3963,'СТАКЕВЦИ',5),(4542,6433,'СТАЛЕВО',26),(4543,3657,'СТАЛИЙСКА МАХАЛА',12),(4544,4210,'СТАМБОЛИЙСКИ',16),(4545,6311,'СТАМБОЛИЙСКИ',26),(4546,2069,'СТАМБОЛОВО',22),(4547,5249,'СТАМБОЛОВО',4),(4548,7063,'СТАМБОЛОВО',18),(4549,6362,'СТАМБОЛОВО',26),(4550,9917,'СТАН',27),(4551,3641,'СТАНЕВО',12),(4552,7915,'СТАНЕЦ',25),(4553,9952,'СТАНОВЕЦ',27),(4554,5380,'СТАНЧА',7),(4555,5367,'СТАНЧОВ ХАН',7),(4556,2391,'СТАНЬОВЦИ',14),(4557,9872,'СТАНЯНЦИ',27),(4558,2254,'СТАНЯНЦИ',22),(4559,6792,'СТАР ЧИТАК',9),(4560,6000,'СТАРА ЗАГОРА',24),(4561,2845,'СТАРА КРЕСНА',1),(4562,8841,'СТАРА РЕКА',20),(4563,8675,'СТАРА РЕКА',28),(4564,7999,'СТАРА РЕЧКА',25),(4565,6880,'СТАРЕЙШИНО',9),(4566,6964,'СТАРИ ЧАЛ',9),(4567,5343,'СТАРИЛКОВЦИ',7),(4568,6572,'СТАРИНСКО',26),(4569,4165,'СТАРО ЖЕЛЕЗАРЕ',16),(4570,6741,'СТАРО МЯСТО',9),(4571,9110,'СТАРО ОРЯХОВО',3),(4572,7447,'СТАРО СЕЛИЩЕ',17),(4573,3142,'СТАРО СЕЛО',6),(4574,2412,'СТАРО СЕЛО',14),(4575,8876,'СТАРО СЕЛО',20),(4576,5671,'СТАРО СЕЛО',11),(4577,7637,'СТАРО СЕЛО',19),(4578,6877,'СТАРОВО',9),(4579,6062,'СТАРОЗАГОРСКИ БАНИ',24),(4580,3822,'СТАРОПАТИЦА',5),(4581,4175,'СТАРОСЕЛ',16),(4582,9226,'СТАРОСЕЛЕЦ',3),(4583,5865,'СТАРОСЕЛЦИ',15),(4584,4987,'СТАРЦЕВО',21),(4585,2861,'СТАРЧЕВО',1),(4586,7963,'СТАРЧИЩЕ',25),(4587,7960,'СТЕВРЕК',25),(4588,5920,'СТЕЖЕРОВО',15),(4589,2566,'СТЕНСКО',10),(4590,9293,'СТЕФАН КАРАДЖА',3),(4591,7633,'СТЕФАН КАРАДЖА',19),(4592,9371,'СТЕФАН КАРАДЖА',8),(4593,8725,'СТЕФАН КАРАДЖОВО',28),(4594,5192,'СТЕФАН СТАМБОЛОВО',4),(4595,5335,'СТЕФАНОВО',7),(4596,9360,'СТЕФАНОВО',8),(4597,5581,'СТЕФАНОВО',11),(4598,2414,'СТЕФАНОВО',14),(4599,4712,'СТИКЪЛ',21),(4600,2638,'СТОБ',10),(4601,4266,'СТОЕВО',16),(4602,5347,'СТОЕВЦИ',7),(4603,2800,'СТОЖА',1),(4604,9350,'СТОЖЕР',8),(4605,8940,'СТОИЛ ВОЙВОДА',20),(4606,8359,'СТОИЛОВО',2),(4607,4715,'СТОЙКИТЕ',21),(4608,6341,'СТОЙКОВО',26),(4609,5301,'СТОЙКОВЦИ',7),(4610,7953,'СТОЙНОВО',25),(4611,5625,'СТОЙНОВСКОТО',11),(4612,5081,'СТОЙЧЕВЦИ',4),(4613,5343,'СТОЙЧОВЦИ',7),(4614,5462,'СТОКИТЕ',7),(4615,4338,'СТОЛЕТОВО',16),(4616,6054,'СТОЛЕТОВО',24),(4617,2134,'СТОЛНИК',22),(4618,5452,'СТОЛЪТ',7),(4619,4822,'СТОМАНЕВО',21),(4620,5304,'СТОМАНЕЦИТЕ',7),(4621,6873,'СТОМАНЦИ',9),(4622,6243,'СТОЯН ЗАИМОВО',24),(4623,9928,'СТОЯН МИХАЙЛОВСКИ',27),(4624,6773,'СТОЯНОВО',9),(4625,3539,'СТОЯНОВО',12),(4626,5084,'СТОЯНОВЦИ',4),(4627,3134,'СТОЯНОВЦИ',6),(4628,2584,'СТРАДАЛОВО',10),(4629,4726,'СТРАЖА',21),(4630,7738,'СТРАЖА',25),(4631,5365,'СТРАЖАТА',7),(4632,6731,'СТРАЖЕВЦИ',9),(4633,6954,'СТРАЖЕЦ',9),(4634,7217,'СТРАЖЕЦ',17),(4635,9615,'СТРАЖИЦА',8),(4636,5150,'СТРАЖИЦА',4),(4637,6710,'СТРАЖНИЦА',9),(4638,8680,'СТРАЛДЖА',28),(4639,8758,'СТРАНДЖА',28),(4640,6929,'СТРАНДЖЕВО',9),(4641,6428,'СТРАНСКО',26),(4642,9142,'СТРАХИЛ',3),(4643,6660,'СТРАХИЛ ВОЙВОДА',9),(4644,9774,'СТРАХИЛИЦА',27),(4645,5190,'СТРАХИЛОВО',4),(4646,8222,'СТРАЦИН',2),(4647,9179,'СТРАШИМИРОВО',3),(4648,4988,'СТРАШИМИР-пром.с.',21),(4649,2482,'СТРЕЗИМИРОВЦИ',14),(4650,5133,'СТРЕЛЕЦ',4),(4651,6058,'СТРЕЛЕЦ',24),(4652,7562,'СТРЕЛКОВО',19),(4653,4152,'СТРЕЛЦИ',16),(4654,8995,'СТРЕЛЦИ',20),(4655,4530,'СТРЕЛЧА',13),(4656,6683,'СТРЕМОВО',9),(4657,6680,'СТРЕМЦИ',9),(4658,6899,'СТРИЖБА',9),(4659,4197,'СТРОЕВО',16),(4660,8732,'СТРОЙНО',28),(4661,7964,'СТРОЙНОВЦИ',25),(4662,5626,'СТРУГЪТ',11),(4663,3919,'СТРУИНДОЛ',5),(4664,9804,'СТРУИНО',27),(4665,2806,'СТРУМА',1),(4666,2895,'СТРУМЕШНИЦА',1),(4667,2825,'СТРУМЯНИ',1),(4668,3132,'СТРУПЕЦ',6),(4669,8856,'СТРУПЕЦ',20),(4670,8555,'СТРУЯ',2),(4671,5365,'СТРЪМЦИ',7),(4672,4142,'СТРЯМА',16),(4673,3490,'СТУБЕЛ',12),(4674,2488,'СТУДЕН ИЗВОР',14),(4675,6958,'СТУДЕН КЛАДЕНЕЦ',9),(4676,4932,'СТУДЕНА',21),(4677,2344,'СТУДЕНА',14),(4678,6538,'СТУДЕНА',26),(4679,7279,'СТУДЕНЕЦ',17),(4680,4878,'СТУДЕНЕЦ',21),(4681,9768,'СТУДЕНИЦА',27),(4682,3480,'СТУДЕНО БУЧЕ',12),(4683,2135,'СТЪРГЕЛ',22),(4684,7124,'СТЪРМЕН',18),(4685,4957,'СТЪРНИЦА',21),(4686,9170,'СУВОРОВО',3),(4687,2820,'СУГАРЕВО',1),(4688,2062,'СУЕВЦИ',22),(4689,6062,'СУЛИЦА',24),(4690,5094,'СУЛТАНИ',4),(4691,3491,'СУМЕР',12),(4692,8470,'СУНГУРЛАРЕ',2),(4693,6352,'СУСАМ',26),(4694,9881,'СУХА РЕКА',27),(4695,5045,'СУХА РЕКА',4),(4696,5988,'СУХАЧЕ',15),(4697,5240,'СУХИНДОЛ',4),(4698,6794,'СУХОВО',9),(4699,7618,'СУХОДОЛ',19),(4700,8328,'СУХОДОЛ',2),(4701,4209,'СУХОЗЕМ',16),(4702,5380,'СУХОЛОЕВЦИ',7),(4703,2736,'СУХОСТРЕЛ',1),(4704,7324,'СУШЕВО',17),(4705,9868,'СУШИНА',27),(4706,2759,'СУШИЦА',1),(4707,5177,'СУШИЦА',4),(4708,2558,'СУШИЦА',10),(4709,5099,'СЪБКОВЦИ',4),(4710,5340,'СЪБОТКОВЦИ',7),(4711,8941,'СЪБРАНО',20),(4712,8522,'СЪДИЕВО',2),(4713,8923,'СЪДИЕВО',20),(4714,8915,'СЪДИЙСКО ПОЛЕ',20),(4715,6234,'СЪЕДИНЕНИЕ',24),(4716,8430,'СЪЕДИНЕНИЕ',2),(4717,4190,'СЪЕДИНЕНИЕ',16),(4718,7779,'СЪЕДИНЕНИЕ',25),(4719,6924,'СЪРНАК',9),(4720,6232,'СЪРНЕВЕЦ',24),(4721,8479,'СЪРНЕВО',2),(4722,6268,'СЪРНЕВО',24),(4723,4146,'СЪРНЕГОР',16),(4724,5035,'СЪРНЕНЦИ',4),(4725,9482,'СЪРНЕЦ',8),(4726,9562,'СЪРНИНО',8),(4727,4799,'СЪРНИНО',21),(4728,4633,'СЪРНИЦА',13),(4729,6361,'СЪРНИЦА',26),(4730,7578,'СЪРПОВО',19),(4731,8896,'СЪРЦЕВО',20),(4732,7647,'СЯНОВО',19),(4733,5380,'СЯРОВЦИ',7),(4734,6800,'СЯРЦИ',9),(4735,2215,'ТАБАН',22),(4736,7085,'ТАБАЧКА',18),(4737,5461,'ТАБАШКА',7),(4738,2538,'ТАВАЛИЧЕВО',10),(4739,7983,'ТАЙМИЩЕ',25),(4740,8658,'ТАМАРИНО',28),(4741,6344,'ТАТАРЕВО',26),(4742,4282,'ТАТАРЕВО',16),(4743,5934,'ТАТАРИ',15),(4744,6670,'ТАТКОВО',9),(4745,6835,'ТАТУЛ',9),(4746,7755,'ТВЪРДИНЦИ',17),(4747,8155,'ТВЪРДИЦА',2),(4748,8890,'ТВЪРДИЦА',20),(4749,9675,'ТВЪРДИЦА',8),(4750,6370,'ТЕКЕТО',26),(4751,9420,'ТЕЛЕРИГ',8),(4752,5990,'ТЕЛИШ',15),(4753,6850,'ТЕЛЧАРКА',9),(4754,6759,'ТЕМЕНУГА',9),(4755,5165,'ТЕМЕНУГА',4),(4756,8672,'ТЕНЕВО',28),(4757,5554,'ТЕПАВА',11),(4758,2935,'ТЕПЛЕН',1),(4759,9450,'ТЕРВЕЛ',8),(4760,9769,'ТЕРВЕЛ',27),(4761,5035,'ТЕРЗИИТЕ',4),(4762,8465,'ТЕРЗИЙСКО',2),(4763,5665,'ТЕРЗИЙСКО',11),(4764,7322,'ТЕРТЕР',17),(4765,5700,'ТЕТЕВЕН',11),(4766,7340,'ТЕТОВО',17),(4767,4810,'ТЕШЕЛ',21),(4768,2927,'ТЕШОВО',1),(4769,4729,'ТИКАЛЕ',21),(4770,9785,'ТИМАРЕВО',27),(4771,6955,'ТИНТЯВА',9),(4772,3164,'ТИПЧЕНИЦА',6),(4773,5070,'ТИТЕВЦИ',4),(4774,7997,'ТИХОВЕЦ',25),(4775,6898,'ТИХОМИР',9),(4776,6279,'ТИХОМИРОВО',24),(4777,8980,'ТИЧА',20),(4778,2591,'ТИШАНОВО',10),(4779,3055,'ТИШЕВИЦА',6),(4780,3787,'ТИЯНОВЦИ',5),(4781,3243,'ТЛАЧЕНЕ',6),(4782,9964,'ТОДОР ИКОНОМОВО',27),(4783,5350,'ТОДОРЕЦИТЕ',7),(4784,5781,'ТОДОРИЧЕНЕ',11),(4785,7425,'ТОДОРОВО',17),(4786,5887,'ТОДОРОВО',15),(4787,5045,'ТОДОРОВЦИ',4),(4788,5301,'ТОДОРОВЦИ',7),(4789,5343,'ТОДОРЧЕТА',7),(4790,5094,'ТОДЮВЦИ',4),(4791,6965,'ТОКАЧКА',9),(4792,3854,'ТОЛОВИЦА',5),(4793,5080,'ТОМБЕТО',4),(4794,2285,'ТОМПСЪН',22),(4795,5365,'ТОМЧЕВЦИ',7),(4796,2875,'ТОНСКО ДАБЕ',1),(4797,5736,'ТОПИЛИЩА',11),(4798,9654,'ТОПОЛА',8),(4799,9140,'ТОПОЛИ',3),(4800,4454,'ТОПОЛИ ДОЛ',13),(4801,8549,'ТОПОЛИЦА',2),(4802,6968,'ТОПОЛКА',9),(4803,2619,'ТОПОЛНИЦА',10),(4804,2858,'ТОПОЛНИЦА',1),(4805,6560,'ТОПОЛОВГРАД',26),(4806,3828,'ТОПОЛОВЕЦ',5),(4807,3936,'ТОПОЛОВЕЦ',5),(4808,4260,'ТОПОЛОВО',16),(4809,6452,'ТОПОЛОВО',26),(4810,6728,'ТОПОЛЧАНЕ',9),(4811,8880,'ТОПОЛЧАНЕ',20),(4812,6277,'ТОПОЛЯНЕ',24),(4813,5098,'ТОПУЗИ',4),(4814,8986,'ТОПУЗОВО',20),(4815,7261,'ТОПЧИИ',18),(4816,8582,'ТОПЧИЙСКО',2),(4817,5335,'ТОРБАЛЪЖИТЕ',7),(4818,5790,'ТОРОС',11),(4819,5899,'ТОТЛЕБЕН',15),(4820,7316,'ТОЧИЛАРИ',17),(4821,3825,'ТОШЕВЦИ',5),(4822,4933,'ТРАВЕ',21),(4823,9694,'ТРАВНИК',8),(4824,3645,'ТРАЙКОВО',12),(4825,6369,'ТРАКИЕЦ',26),(4826,8348,'ТРАКИЙЦИ',2),(4827,6074,'ТРАКИЯ',24),(4828,5349,'ТРАПЕСКОВЦИ',7),(4829,7281,'ТРАПИЩЕ',17),(4830,8889,'ТРАПОКЛОВО',20),(4831,4737,'ТРЕБИЩЕ',21),(4832,2557,'ТРЕКЛЯНО',10),(4833,9764,'ТРЕМ',27),(4834,7994,'ТРЕСКАВЕЦ',25),(4835,3072,'ТРИ КЛАДЕНЦИ',6),(4836,4263,'ТРИ МОГИЛИ',16),(4837,6682,'ТРИ МОГИЛИ',9),(4838,4222,'ТРИВОДИЦИ',16),(4839,9645,'ТРИГОРЦИ',8),(4840,4825,'ТРИГРАД',21),(4841,4141,'ТРИЛИСТНИК',16),(4842,3435,'ТРИФОНОВО',12),(4843,9864,'ТРОИЦА',27),(4844,2733,'ТРОСКОВО',1),(4845,6491,'ТРОЯН',26),(4846,5600,'ТРОЯН',11),(4847,8108,'ТРОЯНОВО',2),(4848,6270,'ТРОЯНОВО',24),(4849,4199,'ТРУД',16),(4850,2160,'ТРУДОВЕЦ',22),(4851,7283,'ТРЪБАЧ',17),(4852,2460,'ТРЪН',14),(4853,8550,'ТРЪНАК',2),(4854,5307,'ТРЪНИТО',7),(4855,9925,'ТРЪНИЦА',27),(4856,8719,'ТРЪНКОВО',28),(4857,6266,'ТРЪНКОВО',24),(4858,5097,'ТРЪНКОВЦИ',4),(4859,5925,'ТРЪНЧОВИЦА',15),(4860,5857,'ТРЪСТЕНИК',15),(4861,7092,'ТРЪСТЕНИК',18),(4862,7835,'ТРЪСТИКА',25),(4863,9134,'ТРЪСТИКОВО',3),(4864,8128,'ТРЪСТИКОВО',2),(4865,5350,'ТРЯВНА',7),(4866,2253,'ТУДЕН',22),(4867,9633,'ТУЗЛАТА',8),(4868,6170,'ТУЛОВО',24),(4869,5464,'ТУМБАЛОВО',7),(4870,5083,'ТУМБЕВЦИ',4),(4871,6157,'ТУРИЯ',24),(4872,5388,'ТУРКИНЧА',7),(4873,2468,'ТУРОКОВЦИ',14),(4874,4753,'ТУРЯН',21),(4875,7600,'ТУТРАКАН',19),(4876,9275,'ТУТРАКАНЦИ',3),(4877,2939,'ТУХОВИЩА',1),(4878,5892,'ТУЧЕНИЦА',15),(4879,9884,'ТУШОВИЦА',27),(4880,6160,'ТЪЖА',24),(4881,9953,'ТЪКАЧ',27),(4882,4983,'ТЪНКА БАРА',21),(4883,5084,'ТЪНКИ РЪТ',4),(4884,8237,'ТЪНКОВО',2),(4885,6391,'ТЪНКОВО',26),(4886,4914,'ТЪНКОТО',21),(4887,7919,'ТЪПЧИЛЕЩОВО',25),(4888,7700,'ТЪРГОВИЩЕ',25),(4889,3953,'ТЪРГОВИЩЕ',5),(4890,5070,'ТЪРКАШЕНИ',4),(4891,3252,'ТЪРНАВА',6),(4892,8699,'ТЪРНАВА',28),(4893,3249,'ТЪРНАК',6),(4894,5282,'ТЪРНЕНЕ',15),(4895,6158,'ТЪРНИЧЕНЕ',24),(4896,2532,'ТЪРНОВЛАГ',10),(4897,7774,'ТЪРНОВЦА',25),(4898,6843,'ТЪРНОВЦИ',9),(4899,7926,'ТЪРНОВЦИ',19),(4900,6763,'ТЪРНОСЛИВКА',9),(4901,3741,'ТЪРНЯНЕ',5),(4902,2586,'ТЪРСИНО',10),(4903,5423,'ТЪРХОВО',7),(4904,4730,'ТЪРЪН',21),(4905,9684,'ТЮЛЕНОВО',8),(4906,4751,'ТЮРКМЕН',16),(4907,6850,'ТЮТЮНЧЕ',9),(4908,9429,'ТЯНЕВО',8),(4909,6492,'ТЯНЕВО',26),(4910,7936,'УГЛЕДНО',25),(4911,2418,'УГЛЯРЦИ',14),(4912,5465,'УГОРЕЛЕЦ',7),(4913,5082,'УГОРЛЯКОВЦИ',4),(4914,5580,'УГЪРЧИН',11),(4915,9554,'УЗОВО',8),(4916,6350,'УЗУНДЖОВО',26),(4917,5343,'УЗУНИТЕ',7),(4918,4237,'УЗУНОВО',16),(4919,5541,'УМАРЕВЦИ',11),(4920,5365,'УРВАТА',7),(4921,3064,'УРОВЕНЕ',6),(4922,4936,'УРУЧЕВЦИ',21),(4923,2675,'УСОЙКА',10),(4924,4228,'УСТИНА',16),(4925,6563,'УСТРЕМ',26),(4926,6853,'УСТРЕН',9),(4927,4769,'УХЛОВИЦА',21),(4928,5035,'УШЕВЦИ',4),(4929,2557,'УШИ',10),(4930,7244,'УШИНЦИ',17),(4931,4992,'ФАБРИКА - ПРОМ. С.',21),(4932,8272,'ФАЗАНОВО',2),(4933,8340,'ФАКИЯ',2),(4934,4797,'ФАТОВО',21),(4935,9394,'ФЕЛДФЕБЕЛ ДЯНКОВО',8),(4936,8982,'ФИЛАРЕТОВО',20),(4937,2775,'ФИЛИПОВО',1),(4938,6564,'ФИЛИПОВО',26),(4939,2472,'ФИЛИПОВЦИ',14),(4940,3778,'ФЛОРЕНТИН',5),(4941,4571,'ФОТИНОВО',13),(4942,6873,'ФОТИНОВО',9),(4943,2085,'ФРАНТУНСКИТЕ КОШАРИ',22),(4944,2682,'ФРОЛОШ',10),(4945,3075,'ФУРЕН',6),(4946,2952,'ФЪРГОВО',1),(4947,5301,'ФЪРГОВЦИ',7),(4948,5365,'ФЪРЕВЦИ',7),(4949,5367,'ФЪРТУНИ',7),(4950,6141,'ХАДЖИ ДИМИТРОВО',24),(4951,9657,'ХАДЖИ ДИМИТЪР',8),(4952,5287,'ХАДЖИДИМИТРОВО',4),(4953,8635,'ХАДЖИДИМИТРОВО',28),(4954,2933,'ХАДЖИДИМОВО',1),(4955,4441,'ХАДЖИЕВО',13),(4956,8492,'ХАДЖИИТЕ',2),(4957,6875,'ХАДЖИЙСКО',9),(4958,3357,'ХАЙРЕДИН',6),(4959,7997,'ХАЛВАДЖИЙСКО',25),(4960,3837,'ХАЛОВСКИ КОЛИБИ',5),(4961,6055,'ХАН АСПАРУХОВО',24),(4962,9863,'ХАН КРУМ',27),(4963,8668,'ХАНОВО',28),(4964,5340,'ХАРАЧЕРИТЕ',7),(4965,5093,'ХАРВАЛОВЦИ',4),(4966,6540,'ХАРМАНЛИ',26),(4967,6300,'ХАСКОВО',26),(4968,4746,'ХАСОВИЦА',21),(4969,4890,'ХВОЙНА',21),(4970,2942,'ХВОСТЯНЕ',1),(4971,2072,'ХВЪРЧИЛ',22),(4972,2211,'ХЕРАКОВО',22),(4973,5451,'ХИРЕВО',7),(4974,6914,'ХИСАР',9),(4975,4180,'ХИСАРЯ',16),(4976,9494,'ХИТОВО',8),(4977,5579,'ХЛЕВЕНЕ',11),(4978,6568,'ХЛЯБОВО',26),(4979,6745,'ХОДЖОВЦИ',9),(4980,7054,'ХОТАНЦА',18),(4981,5058,'ХОТНИЦА',4),(4982,2821,'ХОТОВО',1),(4983,4111,'ХРАБРИНО',16),(4984,9618,'ХРАБРОВО',8),(4985,9242,'ХРАБРОВО',3),(4986,2224,'ХРАБЪРСКО',22),(4987,2824,'ХРАСНА',1),(4988,6929,'ХРАСТОВО',9),(4989,6072,'ХРИСТИЯНОВО',24),(4990,4339,'ХРИСТО ДАНОВО',16),(4991,4231,'ХРИСТО МИЛЕВО',16),(4992,5070,'ХРИСТОВЦИ',4),(4993,5365,'ХРИСТОВЦИ',7),(4994,6050,'ХРИЩЕНИ',24),(4995,6782,'ХРОМИЦА',9),(4996,3135,'ХУБАВЕНЕ',6),(4997,7457,'ХУМА',17),(4998,6571,'ХУХЛА',26),(4999,5082,'ХЪНЕВЦИ',4),(5000,3329,'ХЪРЛЕЦ',6),(5001,9937,'ХЪРСОВО',27),(5002,7451,'ХЪРСОВО',17),(5003,2819,'ХЪРСОВО',1),(5004,3152,'ЦАКОНИЦА',6),(5005,4218,'ЦАЛАПИЦА',16),(5006,9957,'ЦАНИ ГИНЧЕВО',27),(5007,2834,'ЦАПАРЕВО',1),(5008,7536,'ЦАР АСЕН',19),(5009,4422,'ЦАР АСЕН',13),(5010,7849,'ЦАР АСЕН',25),(5011,4126,'ЦАР КАЛОЯН',16),(5012,7280,'ЦАР КАЛОЯН',17),(5013,3827,'ЦАР ПЕТРОВО',5),(5014,7640,'ЦАР САМУИЛ',19),(5015,3745,'ЦАР СИМЕОНОВО',5),(5016,3853,'ЦАР ШИШМАНОВО',5),(5017,4204,'ЦАРАЦОВО',16),(5018,9747,'ЦАРЕВ БРОД',27),(5019,7627,'ЦАРЕВ ДОЛ',19),(5020,5380,'ЦАРЕВА ЛИВАДА',7),(5021,6363,'ЦАРЕВА ПОЛЯНА',26),(5022,9367,'ЦАРЕВЕЦ',8),(5023,6622,'ЦАРЕВЕЦ',9),(5024,3141,'ЦАРЕВЕЦ',6),(5025,5282,'ЦАРЕВЕЦ',4),(5026,8260,'ЦАРЕВО',2),(5027,9129,'ЦАРЕВЦИ',3),(5028,7932,'ЦАРЕВЦИ',25),(5029,4192,'ЦАРИМИР',16),(5030,6893,'ЦАРИНО',9),(5031,2236,'ЦАРИЧИНА',22),(5032,9614,'ЦАРИЧИНО',8),(5033,5174,'ЦАРСКИ ИЗВОР',4),(5034,2220,'ЦАЦАРОВЦИ',22),(5035,4992,'ЦАЦАРОВЦИ',21),(5036,5094,'ЦВЕКЛЮВЦИ',4),(5037,4630,'ЦВЕТИНО',13),(5038,3542,'ЦВЕТКОВА БАРА',12),(5039,7763,'ЦВЕТНИЦА',25),(5040,5340,'ЦВЯТКОВЦИ',7),(5041,6850,'ЦВЯТОВО',9),(5042,2479,'ЦЕГРИЛОВЦИ',14),(5043,6223,'ЦЕЛИНА',24),(5044,8916,'ЦЕНИНО',20),(5045,7575,'ЦЕНОВИЧ',19),(5046,7139,'ЦЕНОВО',18),(5047,6222,'ЦЕНОВО',24),(5048,5035,'ЦЕПЕРАНИТЕ',4),(5049,4189,'ЦЕРЕТЕЛЕВО',16),(5050,2286,'ЦЕРЕЦЕЛ',22),(5051,8472,'ЦЕРКОВСКИ',2),(5052,5047,'ЦЕРОВА КОРИЯ',4),(5053,7083,'ЦЕРОВЕЦ',17),(5054,2567,'ЦЕРОВИЦА',10),(5055,7922,'ЦЕРОВИЩЕ',25),(5056,2722,'ЦЕРОВО',1),(5057,4465,'ЦЕРОВО',13),(5058,2287,'ЦЕРОВО',22),(5059,2666,'ЦИКЛОВО',10),(5060,4939,'ЦИРКА',21),(5061,9261,'ЦОНЕВО',3),(5062,2567,'ЦРЕШНОВО',10),(5063,2205,'ЦРЪКЛЕВЦИ',22),(5064,4837,'ЦРЪНЧА',21),(5065,4419,'ЦРЪНЧА',13),(5066,2580,'ЦЪРВАРИЦА',10),(5067,2576,'ЦЪРВЕНА ЯБЪЛКА',10),(5068,2567,'ЦЪРВЕНДОЛ',10),(5069,2542,'ЦЪРВЕНЯНО',10),(5070,2624,'ЦЪРВИЩЕ',10),(5071,9631,'ЦЪРКВА',8),(5072,6844,'ЦЪРКВИЦА',9),(5073,9939,'ЦЪРКВИЦА',27),(5074,4829,'ЧАВДАР',21),(5075,2084,'ЧАВДАР',22),(5076,5084,'ЧАВДАРЦИ',4),(5077,5559,'ЧАВДАРЦИ',11),(5078,5345,'ЧАВЕИ',7),(5079,6890,'ЧАВКА',9),(5080,6820,'ЧАЙКА',9),(5081,9277,'ЧАЙКА',3),(5082,4476,'ЧАЙРА',13),(5083,6870,'ЧАКАЛАРОВО',9),(5084,5099,'ЧАКАЛИ',4),(5085,5365,'ЧАКАЛИТЕ',7),(5086,6850,'ЧАКАЛЦИ',9),(5087,6947,'ЧАЛ',9),(5088,4836,'ЧАЛА',21),(5089,4123,'ЧАЛЪКОВИ',16),(5090,4651,'ЧАМКОВА',13),(5091,4716,'ЧАМЛА',21),(5092,8628,'ЧАРГАН',28),(5093,8692,'ЧАРДА',28),(5094,5309,'ЧАРКОВО',7),(5095,6744,'ЧЕГАНЦИ',9),(5096,2220,'ЧЕКАНЕЦ',22),(5097,2577,'ЧЕКАНЕЦ',10),(5098,7961,'ЧЕКАНЦИ',25),(5099,2122,'ЧЕКАНЧЕВО',22),(5100,8678,'ЧЕЛНИК',28),(5101,3093,'ЧЕЛОПЕК',6),(5102,2087,'ЧЕЛОПЕЧ',22),(5103,9664,'ЧЕЛОПЕЧЕНЕ',8),(5104,3465,'ЧЕЛЮСТНИЦА',12),(5105,3477,'ЧЕМИШ',12),(5106,4850,'ЧЕПЕЛАРЕ',21),(5107,2436,'ЧЕПИНО',14),(5108,1554,'ЧЕПИНЦИ',22),(5109,4958,'ЧЕПИНЦИ',21),(5110,4786,'ЧЕПЛЕТЕН',21),(5111,2212,'ЧЕПЪРЛИНЦИ',22),(5112,4252,'ЧЕРВЕН',16),(5113,7084,'ЧЕРВЕН',18),(5114,2629,'ЧЕРВЕН БРЕГ',10),(5115,5980,'ЧЕРВЕН БРЯГ',15),(5116,5293,'ЧЕРВЕНА',4),(5117,7051,'ЧЕРВЕНА ВОДА',18),(5118,5311,'ЧЕРВЕНА ЛОКВА',7),(5119,2408,'ЧЕРВЕНА МОГИЛА',14),(5120,8896,'ЧЕРВЕНАКОВО',20),(5121,5070,'ЧЕРВЕНКОВЦИ',4),(5122,9298,'ЧЕРВЕНЦИ',3),(5123,6139,'ЧЕРГАНОВО',24),(5124,9799,'ЧЕРЕНЧА',27),(5125,6462,'ЧЕРЕПОВО',26),(5126,8577,'ЧЕРЕША',2),(5127,6672,'ЧЕРЕШИЦА',9),(5128,4771,'ЧЕРЕШКИТЕ',21),(5129,2824,'ЧЕРЕШНИЦА',1),(5130,3524,'ЧЕРЕШОВИЦА',12),(5131,2787,'ЧЕРЕШОВО',1),(5132,7339,'ЧЕРЕШОВО',17),(5133,4772,'ЧЕРЕШОВО',21),(5134,4773,'ЧЕРЕШОВСКА РЕКА',21),(5135,3533,'ЧЕРКАСКИ',12),(5136,5951,'ЧЕРКОВИЦА',15),(5137,2072,'ЧЕРКОВИЩЕ',22),(5138,7656,'ЧЕРКОВНА',19),(5139,9232,'ЧЕРКОВНА',3),(5140,7252,'ЧЕРКОВНА',17),(5141,7781,'ЧЕРКОВНА',25),(5142,8478,'ЧЕРКОВО',2),(5143,9773,'ЧЕРНА',27),(5144,9417,'ЧЕРНА',8),(5145,7966,'ЧЕРНА ВОДА',25),(5146,6258,'ЧЕРНА ГОРА',24),(5147,2340,'ЧЕРНА ГОРА',14),(5148,2789,'ЧЕРНА МЕСТА',1),(5149,8527,'ЧЕРНА МОГИЛА',2),(5150,6471,'ЧЕРНА МОГИЛА',26),(5151,6692,'ЧЕРНА НИВА',9),(5152,6626,'ЧЕРНА СКАЛА',9),(5153,6585,'ЧЕРНА ЧЕРКВА',26),(5154,9174,'ЧЕРНЕВО',3),(5155,5646,'ЧЕРНЕВОТО',11),(5156,5349,'ЧЕРНЕВЦИ',7),(5157,7973,'ЧЕРНИ БРЯГ',25),(5158,5725,'ЧЕРНИ ВИТ',11),(5159,3649,'ЧЕРНИ ВРЪХ',12),(5160,8122,'ЧЕРНИ ВРЪХ',2),(5161,9827,'ЧЕРНИ ВРЪХ',27),(5162,5084,'ЧЕРНИ ДЯЛ',4),(5163,5620,'ЧЕРНИ ОСЪМ',11),(5164,6598,'ЧЕРНИ РИД',26),(5165,6778,'ЧЕРНИГОВО',9),(5166,7651,'ЧЕРНИК',19),(5167,8468,'ЧЕРНИЦА',2),(5168,2741,'ЧЕРНИЧЕ',1),(5169,6954,'ЧЕРНИЧЕВО',9),(5170,4181,'ЧЕРНИЧЕВО',16),(5171,6581,'ЧЕРНИЧИНО',26),(5172,3922,'ЧЕРНО ПОЛЕ',5),(5173,5365,'ЧЕРНОВРЪХ',7),(5174,9778,'ЧЕРНОГЛАВЦИ',27),(5175,7614,'ЧЕРНОГОР',19),(5176,6411,'ЧЕРНОГОРОВО',26),(5177,4456,'ЧЕРНОГОРОВО',13),(5178,8545,'ЧЕРНОГРАД',2),(5179,6524,'ЧЕРНОДЪБ',26),(5180,8739,'ЧЕРНОЗЕМ',28),(5181,4168,'ЧЕРНОЗЕМЕН',16),(5182,7921,'ЧЕРНОКАПЦИ',25),(5183,7693,'ЧЕРНОЛИК',19),(5184,8142,'ЧЕРНОМОРЕЦ',2),(5185,9678,'ЧЕРНОМОРЦИ',8),(5186,9259,'ЧЕРНООК',3),(5187,6946,'ЧЕРНООКИ',9),(5188,9873,'ЧЕРНООКОВО',27),(5189,9532,'ЧЕРНООКОВО',8),(5190,6701,'ЧЕРНООЧЕНЕ',9),(5191,2067,'ЧЕРНЬОВО',22),(5192,6670,'ЧЕРНЬОВЦИ',9),(5193,9469,'ЧЕСТИМЕНСКО',8),(5194,2598,'ЧЕТИРЦИ',10),(5195,4241,'ЧЕТРОКА',16),(5196,4159,'ЧЕХЛАРЕ',16),(5197,2556,'ЧЕШЛЯНЦИ',10),(5198,5156,'ЧЕШМА',4),(5199,4121,'ЧЕШНЕГИРОВО',16),(5200,2236,'ЧИБАОВЦИ',22),(5201,6625,'ЧИЛИК',9),(5202,7162,'ЧИЛНОВ',18),(5203,8858,'ЧИНТУЛОВО',20),(5204,3460,'ЧИПРОВЦИ',12),(5205,3050,'ЧИРЕН',6),(5206,6200,'ЧИРПАН',24),(5207,5088,'ЧИСТОВО',4),(5208,5300,'ЧИТАКОВЦИ',7),(5209,3912,'ЧИФЛИК',5),(5210,6677,'ЧИФЛИК',9),(5211,5661,'ЧИФЛИК',11),(5212,6869,'ЧИЧЕВО',9),(5213,3819,'ЧИЧИЛ',5),(5214,4161,'ЧОБА',16),(5215,6836,'ЧОБАНКА',9),(5216,4760,'ЧОКМАНОВО',21),(5217,8887,'ЧОКОБА',20),(5218,4636,'ЧОЛАКОВА',13),(5219,6800,'ЧОМАКОВО',9),(5220,5989,'ЧОМАКОВЦИ',15),(5221,6890,'ЧОРБАДЖИЙСКО',9),(5222,2215,'ЧОРУЛ',22),(5223,8461,'ЧУБРА',2),(5224,6786,'ЧУБРИКА',9),(5225,2562,'ЧУДИНЦИ',10),(5226,7284,'ЧУДОМИР',17),(5227,2346,'ЧУЙПЕТЛЬОВО',14),(5228,8529,'ЧУКАРКА',2),(5229,6560,'ЧУКАРОВО',26),(5230,5088,'ЧУКАТА',4),(5231,4245,'ЧУКАТА',16),(5232,5304,'ЧУКИЛИТЕ',7),(5233,2209,'ЧУКОВЕЗЕР',22),(5234,7537,'ЧУКОВЕЦ',19),(5235,2425,'ЧУКОВЕЦ',14),(5236,5370,'ЧУКОВО',7),(5237,6818,'ЧУКОВО',9),(5238,6592,'ЧУКУРИТЕ',26),(5239,3950,'ЧУПРЕНЕ',5),(5240,2126,'ЧУРЕК',22),(5241,4226,'ЧУРЕН',16),(5242,2885,'ЧУРИЛОВО',1),(5243,2891,'ЧУРИЧЕНИ',1),(5244,4915,'ЧУРКА',21),(5245,4823,'ЧУРУКОВО',21),(5246,6572,'ЧУЧУЛИГА',26),(5247,2865,'ЧУЧУЛИГОВО',1),(5248,4796,'ЧУЧУР',21),(5249,9680,'ШАБЛА',8),(5250,6169,'ШАНОВО',24),(5251,5300,'ШАРАНИ',7),(5252,4916,'ШАРЕНСКА',21),(5253,8753,'ШАРКОВО',28),(5254,2684,'ШАТРОВО',10),(5255,6144,'ШЕЙНОВО',24),(5256,5027,'ШЕМШЕВО',4),(5257,5034,'ШЕРЕМЕТЯ',4),(5258,8897,'ШЕШКИНГРАД',20),(5259,8559,'ШИВАРОВО',2),(5260,8895,'ШИВАЧЕВО',20),(5261,5094,'ШИЛИВЕРИ',4),(5262,5087,'ШИЛКОВЦИ',4),(5263,3836,'ШИПИКОВА МАХАЛА',5),(5264,6150,'ШИПКА',24),(5265,2493,'ШИПКОВИЦА',14),(5266,5663,'ШИПКОВО',11),(5267,6865,'ШИПОК',9),(5268,3744,'ШИПОТ',5),(5269,2015,'ШИПОЧАНЕ',22),(5270,2552,'ШИПОЧАНО',10),(5271,5344,'ШИПЧЕНИТЕ',7),(5272,4710,'ШИРОКА ЛЪКА',21),(5273,6365,'ШИРОКА ПОЛЯНА',26),(5274,2013,'ШИРОКИ ДОЛ',22),(5275,6650,'ШИРОКО ПОЛЕ',9),(5276,7159,'ШИРОКОВО',18),(5277,3834,'ШИШЕНЦИ',5),(5278,7971,'ШИШКОВИЦА',25),(5279,2553,'ШИШКОВЦИ',10),(5280,6458,'ШИШМАНОВО',26),(5281,4133,'ШИШМАНЦИ',16),(5282,5962,'ШИЯКОВО',15),(5283,9112,'ШКОРПИЛОВЦИ',3),(5284,5053,'ШОДЕКОВЦИ',4),(5285,5459,'ШОПИТЕ',7),(5286,6883,'ШОПЦИ',9),(5287,5097,'ШУБЕЦИ',4),(5288,2252,'ШУМА',22),(5289,5468,'ШУМАТА',7),(5290,9700,'ШУМЕН',27),(5291,7639,'ШУМЕНЦИ',19),(5292,6888,'ШУМНАТИЦА',9),(5293,5380,'ШУШНЯ',7),(5294,6842,'ЩЕРНА',9),(5295,9283,'ЩИПСКО',3),(5296,6528,'ЩИТ',26),(5297,7078,'ЩРЪКЛЕВО',18),(5298,4461,'ЩЪРКОВО',13),(5299,5791,'ЪГЛЕН',11),(5300,4241,'ЮГОВО',16),(5301,7061,'ЮДЕЛНИК',18),(5302,6168,'ЮЛИЕВО',24),(5303,9138,'ЮНАК',3),(5304,6800,'ЮНАЦИ',9),(5305,4420,'ЮНАЦИТЕ',13),(5306,4629,'ЮНДОЛА',13),(5307,9109,'ЮНЕЦ',3),(5308,7338,'ЮПЕР',17),(5309,2796,'ЮРУКОВО',1),(5310,2298,'ЯБЛАНИЦА',22),(5311,5750,'ЯБЛАНИЦА',11),(5312,8989,'ЯБЛАНОВО',20),(5313,6787,'ЯБЪЛКОВЕЦ',9),(5314,6440,'ЯБЪЛКОВО',26),(5315,2544,'ЯБЪЛКОВО',10),(5316,5350,'ЯБЪЛКОВЦИ',7),(5317,8542,'ЯБЪЛЧЕВО',2),(5318,6715,'ЯБЪЛЧЕНИ',9),(5319,5350,'ЯВОР',7),(5320,5334,'ЯВОРЕЦ',7),(5321,6179,'ЯВОРЕЦ',24),(5322,2896,'ЯВОРНИЦА',1),(5323,6696,'ЯВОРОВО',9),(5324,6240,'ЯВОРОВО',24),(5325,4258,'ЯВРОВО',16),(5326,6865,'ЯГНЕВО',9),(5327,9231,'ЯГНИЛО',3),(5328,6167,'ЯГОДА',24),(5329,4835,'ЯГОДИНА',21),(5330,3537,'ЯГОДОВО',12),(5331,4113,'ЯГОДОВО',16),(5332,6229,'ЯЗДАЧ',24),(5333,7991,'ЯЗОВЕЦ',25),(5334,7443,'ЯКИМ ГРУЕВО',17),(5335,3640,'ЯКИМОВО',12),(5336,6870,'ЯКОВИЦА',9),(5337,2875,'ЯКОВО',1),(5338,5081,'ЯКОВЦИ',4),(5339,2790,'ЯКОРУДА',1),(5340,2220,'ЯЛБОТИНА',22),(5341,5056,'ЯЛОВО',4),(5342,8600,'ЯМБОЛ',28),(5343,6854,'ЯМИНО',9),(5344,2183,'ЯМНА',22),(5345,1805,'ЯНА',22),(5346,6865,'ЯНИНО',9),(5347,9823,'ЯНКОВО',27),(5348,5345,'ЯНКОВЦИ',7),(5349,2816,'ЯНОВО',1),(5350,5135,'ЯНТРА',4),(5351,5374,'ЯНТРА',7),(5352,3949,'ЯНЬОВЕЦ',5),(5353,2355,'ЯРДЖИЛОВЦИ',14),(5354,7691,'ЯРЕБИЦА',19),(5355,6732,'ЯРЕБИЦА',9),(5356,9158,'ЯРЕБИЧНА',3),(5357,7998,'ЯРЕБИЧНО',25),(5358,2023,'ЯРЕБКОВИЦА',22),(5359,3799,'ЯРЛОВИЦА',5),(5360,2029,'ЯРЛОВО',22),(5361,2481,'ЯРЛОВЦИ',14),(5362,2376,'ЯРОСЛАВЦИ',14),(5363,3775,'ЯСЕН',5),(5364,5850,'ЯСЕН',15),(5365,5335,'ЯСЕНИТЕ',7),(5366,9777,'ЯСЕНКОВО',27),(5367,7250,'ЯСЕНОВЕЦ',17),(5368,6147,'ЯСЕНОВО',24),(5369,8569,'ЯСЕНОВО',2),(5370,8147,'ЯСНА ПОЛЯНА',2),(5371,4139,'ЯСНО ПОЛЕ',16),(5372,7975,'ЯСТРЕБ',9),(5373,7975,'ЯСТРЕБИНО',25),(5374,7664,'ЯСТРЕБНА',19),(5375,6056,'ЯСТРЕБОВО',24),(5376,7073,'ЯСТРЕБОВО',18),(5377,2622,'ЯХИНОВО',10);

/*Table structure for table `n_obekt` */

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
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_obekt` */

/*Table structure for table `n_oblast` */

DROP TABLE IF EXISTS `n_oblast`;

CREATE TABLE `n_oblast` (
  `id_n_oblast` int(11) NOT NULL auto_increment,
  `name_n_oblast` varchar(20) default NULL,
  `id_n_country` tinyint(4) default NULL,
  PRIMARY KEY  (`id_n_oblast`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_oblast` */

insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (1,'БЛАГОЕВГРАД',1),(2,'БУРГАС',1),(3,'ВАРНА',1),(4,'ВЕЛИКО ТЪРНОВО',1),(5,'ВИДИН',1),(6,'ВРАЦА',1),(7,'ГАБРОВО',1),(8,'ДОБРИЧ',1),(9,'КЪРДЖАЛИ',1),(10,'КЮСТЕНДИЛ',1),(11,'ЛОВЕЧ',1),(12,'МОНТАНА',1),(13,'ПАЗАРДЖИК',1),(14,'ПЕРНИК',1),(15,'ПЛЕВЕН',1),(16,'ПЛОВДИВ',1),(17,'РАЗГРАД',1),(18,'РУСЕ',1),(19,'СИЛИСТРА',1),(20,'СЛИВЕН',1),(21,'СМОЛЯН',1),(22,'СОФИЯ',1),(23,'СОФИЯ-ГРАД',1),(24,'СТАРА ЗАГОРА',1),(25,'ТЪРГОВИЩЕ',1),(26,'ХАСКОВО',1),(27,'ШУМЕН',1),(28,'ЯМБОЛ',1);

/*Table structure for table `n_product_all_measure` */

DROP TABLE IF EXISTS `n_product_all_measure`;

CREATE TABLE `n_product_all_measure` (
  `id_pam` int(11) NOT NULL auto_increment COMMENT 'id na miarkata',
  `name_pam` varchar(30) default NULL COMMENT 'ime na miarkata',
  `sname_pam` varchar(6) default NULL COMMENT 'sakrateno ime na miarkata',
  PRIMARY KEY  (`id_pam`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_product_all_measure` */

insert into `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) values (1,'брой','бр.'),(2,'пакет','пакет'),(3,'Kашон','Kашон'),(4,'Стек','Стек'),(5,'Килограм','Кг.'),(6,'Палет','Палет'),(7,'Литър','Л.'),(8,'Милилитър','мЛ.');

/*Table structure for table `n_product_consigment` */

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
  `exp_list_pc` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id_pc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_product_consigment` */

insert into `n_product_consigment` (`id_pc`,`id_pm`,`parcel_pc`,`dateofexpire_pc`,`barcod_pc`,`id_pp`,`id_ppp`,`id_pf`,`exp_list_pc`) values (1,1,1,'2006-11-01',00000000000,0,0,0,'');

/*Table structure for table `n_product_description` */

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

/*Data for the table `n_product_description` */

insert into `n_product_description` (`id_pd`,`m1_pd`,`v1_pd`,`m2_pd`,`v2_pd`,`m3_pd`,`v3_pd`) values (1,1,1,3,10,6,100);

/*Table structure for table `n_product_fee` */

DROP TABLE IF EXISTS `n_product_fee`;

CREATE TABLE `n_product_fee` (
  `id_pf` int(11) NOT NULL auto_increment,
  `dds_pf` decimal(10,0) default NULL COMMENT 'DDS v protsenti',
  `excise_pf` decimal(10,0) default NULL COMMENT 'aktsiz %',
  `other_pf` decimal(10,0) default NULL COMMENT 'drugi',
  PRIMARY KEY  (`id_pf`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_product_fee` */

/*Table structure for table `n_product_main` */

DROP TABLE IF EXISTS `n_product_main`;

CREATE TABLE `n_product_main` (
  `id_pm` int(11) unsigned NOT NULL auto_increment,
  `id_pd` int(11) unsigned NOT NULL default '0',
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `id_ppp` int(11) unsigned NOT NULL default '0',
  `id_pp` int(11) unsigned NOT NULL default '0',
  `id_pf` int(11) unsigned NOT NULL default '0',
  `name_pm` varchar(30) default NULL,
  `fname_pm` varchar(30) default NULL,
  `sname_pm` varchar(10) default NULL,
  `cname_pm` varchar(10) default NULL,
  `cod1_pm` varchar(20) default NULL,
  `cod2_pm` varchar(20) default NULL,
  `barcod_pm` varchar(20) default NULL,
  `max_pop_pm` double default NULL,
  `expertsheet_pm` varchar(45) default NULL,
  `flag_pm` int(3) unsigned zerofill NOT NULL default '000',
  `min_pm` int(11) unsigned NOT NULL default '0',
  `code_pm` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_product_main` */

insert into `n_product_main` (`id_pm`,`id_pd`,`id_n_group`,`id_ppp`,`id_pp`,`id_pf`,`name_pm`,`fname_pm`,`sname_pm`,`cname_pm`,`cod1_pm`,`cod2_pm`,`barcod_pm`,`max_pop_pm`,`expertsheet_pm`,`flag_pm`,`min_pm`,`code_pm`) values (1,1,7,1,1,1,'НЕСТЛЕ НУГА КРЕМ','НЕСТЛЕ НУГА КРЕМ','НЕСТЛЕ НУГ','НЕСТЛЕ НУГ','','','10101010101',5.65,'',000,1,999999);

/*Table structure for table `n_product_price` */

DROP TABLE IF EXISTS `n_product_price`;

CREATE TABLE `n_product_price` (
  `id_pp` int(11) NOT NULL auto_increment,
  `id_sl_curs` int(10) unsigned NOT NULL default '1' COMMENT 'kursa',
  `price1_pp` double default NULL COMMENT 'tsenovca lista 1 bez dds',
  `price2_pp` double default NULL COMMENT 'tsenova lista 2q bez dds',
  `price3_pp` double default NULL COMMENT 'tsenova lista 3 bez DDS',
  `price0_pp` double default NULL COMMENT 'dostavna bez dds',
  PRIMARY KEY  (`id_pp`),
  KEY `n_product_price_FKIndex1` (`id_sl_curs`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_product_price` */

insert into `n_product_price` (`id_pp`,`id_sl_curs`,`price1_pp`,`price2_pp`,`price3_pp`,`price0_pp`) values (1,1,2.14,2.366,2.48,1.76);

/*Table structure for table `n_product_promotion_price` */

DROP TABLE IF EXISTS `n_product_promotion_price`;

CREATE TABLE `n_product_promotion_price` (
  `id_ppp` int(11) NOT NULL auto_increment,
  `price_ppp` decimal(10,0) default NULL,
  `datestart_ppp` date default NULL,
  `datestop_ppp` date default NULL,
  PRIMARY KEY  (`id_ppp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_product_promotion_price` */

insert into `n_product_promotion_price` (`id_ppp`,`price_ppp`,`datestart_ppp`,`datestop_ppp`) values (1,'2','2006-11-01','2006-11-01');

/*Table structure for table `n_storage` */

DROP TABLE IF EXISTS `n_storage`;

CREATE TABLE `n_storage` (
  `id_n_storage` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned NOT NULL default '0',
  `code_n_storage` int(11) unsigned NOT NULL default '0',
  `name_n_storage` varchar(50) default NULL,
  `comments_n_storage` varchar(250) default NULL,
  PRIMARY KEY  (`id_n_storage`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='skladove';

/*Data for the table `n_storage` */

insert into `n_storage` (`id_n_storage`,`id_n_group`,`code_n_storage`,`name_n_storage`,`comments_n_storage`) values (1,8,1,'ЦЕНТРАЛЕН','Захарни изделия');

/*Table structure for table `n_type_bacc` */

DROP TABLE IF EXISTS `n_type_bacc`;

CREATE TABLE `n_type_bacc` (
  `id_tbacc` int(11) NOT NULL auto_increment,
  `name_tbacc` varchar(30) default NULL,
  PRIMARY KEY  (`id_tbacc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='tipove bankovi smetki';

/*Data for the table `n_type_bacc` */

insert into `n_type_bacc` (`id_tbacc`,`name_tbacc`) values (1,'Разплащателна сметка'),(2,'ДДС сметка');

/*Table structure for table `n_type_doc` */

DROP TABLE IF EXISTS `n_type_doc`;

CREATE TABLE `n_type_doc` (
  `id_ntd` int(11) NOT NULL auto_increment,
  `code_ntd` int(11) unsigned NOT NULL default '0',
  `name_ntd` varchar(50) default NULL,
  `name_print_ntd` varchar(50) default NULL,
  PRIMARY KEY  (`id_ntd`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='tipove documenti';

/*Data for the table `n_type_doc` */

insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (1,100,'Стокова разписка','Продажба'),(2,200,'Фактура','Ф-ра'),(3,300,'Проформа фактура','Проф. ф-ра'),(4,201,'Опростена фактура','Опр. ф-ра'),(5,3010,'Касова бележка','КБ'),(10,701,'Приходен ордер','Прих. ордер'),(11,702,'Разходен ордер','Разх. ордер'),(12,703,'Ордер за Аванс към подотчетно лице','Ордер Аванс МОЛ'),(13,704,'Ордер за междукасово прехвърляне','Ордер Каса - Каса'),(14,1612,'Протокол','Протокол'),(16,4062,'Ценова листа','Ц. листа'),(17,202,'Данъчна фактура','Дан. ф-ра'),(19,400,'Консигнационен протокол','Консиг. прот.'),(20,800,'Протокол за брак','Брак'),(21,900,'Протокол за липса','Липса'),(22,500,'Нареждане за прехвърляне','Прехвърляне'),(23,8000,'Протокол за приемане','Прот. Приемане'),(24,1000,'Оферта','Оферта'),(25,600,'Приемателна разписка','Р-ка приемане'),(26,700,'Предавателна разписка','Р-ка Предаване');

/*Table structure for table `obekti` */

DROP TABLE IF EXISTS `obekti`;

CREATE TABLE `obekti` (
  `id_ob` int(10) unsigned NOT NULL auto_increment,
  `id_type_ob1` int(10) unsigned NOT NULL,
  `id_n_contragent` int(10) unsigned default NULL,
  `id_groupe` int(10) unsigned default NULL,
  `name_ob` varchar(100) default NULL,
  `id_type_ob2` int(10) unsigned default NULL,
  `id_nm` int(10) unsigned default NULL,
  `address_ob` varchar(255) default NULL,
  `litse_name_ob` varchar(100) default NULL,
  `dlaj_litse_ob` varchar(100) default NULL,
  `tel_litse_ob` varchar(20) default NULL,
  `time_open_ob` varchar(20) default NULL,
  `geoX_ob` int(11) default NULL,
  `geoY_ob` int(11) default NULL,
  `ggeoX_ob` int(11) default NULL,
  `ggeoY_ob` int(11) default NULL,
  `gquadrant_ob` varchar(255) default '0',
  `sales_area_ob` double default NULL,
  PRIMARY KEY  (`id_ob`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `obekti` */

/*Table structure for table `sl_contragent_obekt` */

DROP TABLE IF EXISTS `sl_contragent_obekt`;

CREATE TABLE `sl_contragent_obekt` (
  `id_sco` int(11) NOT NULL auto_increment,
  `id_contragent` int(11) default NULL,
  `id_object` int(11) default NULL,
  PRIMARY KEY  (`id_sco`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `sl_contragent_obekt` */

/*Table structure for table `sl_contragent_object` */

DROP TABLE IF EXISTS `sl_contragent_object`;

CREATE TABLE `sl_contragent_object` (
  `Id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `sl_contragent_object` */

/*Table structure for table `sl_contragent_product` */

DROP TABLE IF EXISTS `sl_contragent_product`;

CREATE TABLE `sl_contragent_product` (
  `id_scp` int(11) NOT NULL auto_increment,
  `id_contragent` int(11) default NULL,
  `id_pm` int(11) default NULL,
  `flag_scp` int(3) unsigned zerofill NOT NULL default '000',
  PRIMARY KEY  (`id_scp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `sl_contragent_product` */

insert into `sl_contragent_product` (`id_scp`,`id_contragent`,`id_pm`,`flag_scp`) values (1,1,1,000);

/*Table structure for table `sl_copiuri` */

DROP TABLE IF EXISTS `sl_copiuri`;

CREATE TABLE `sl_copiuri` (
  `id_sc` int(11) NOT NULL auto_increment,
  `id_um` int(11) default NULL COMMENT 'potrebitel',
  `instant` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT 'moment na wywejdane',
  `paper_100` int(5) unsigned default '0',
  `paper_50` int(5) unsigned default '0',
  `paper_20` int(5) unsigned default '0',
  `paper_10` int(5) unsigned default '0',
  `paper_5` int(5) unsigned default '0',
  `paper_2` int(5) unsigned default '0',
  `metal_1` int(5) unsigned default '0',
  `metal_050` int(5) unsigned default '0',
  `metal_020` int(5) unsigned default '0',
  `metal_010` int(5) unsigned default '0',
  `metal_005` int(5) unsigned default '0',
  `metal_002` int(5) unsigned default '0',
  `metal_001` int(5) unsigned default '0',
  PRIMARY KEY  (`id_sc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `sl_copiuri` */

/*Table structure for table `sl_curs` */

DROP TABLE IF EXISTS `sl_curs`;

CREATE TABLE `sl_curs` (
  `id_sl_curs` int(11) NOT NULL auto_increment,
  `date_time_sl_curs` datetime NOT NULL,
  `id_n_money` int(11) unsigned zerofill NOT NULL default '00000000000',
  `value_sl_curs` decimal(10,5) default NULL,
  PRIMARY KEY  (`id_sl_curs`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='Cursove na money';

/*Data for the table `sl_curs` */

insert into `sl_curs` (`id_sl_curs`,`date_time_sl_curs`,`id_n_money`,`value_sl_curs`) values (1,'2006-02-02 10:10:10',00000000001,'1.00000');

/*Table structure for table `sl_doc_type_num` */

DROP TABLE IF EXISTS `sl_doc_type_num`;

CREATE TABLE `sl_doc_type_num` (
  `id_sdtn` int(11) NOT NULL auto_increment,
  `id_ntd` int(11) unsigned default NULL,
  `area_number_sdtn` int(3) unsigned zerofill NOT NULL default '000',
  `name_sdtn` varchar(50) default NULL,
  PRIMARY KEY  (`id_sdtn`),
  UNIQUE KEY `ndt1` (`id_ntd`,`area_number_sdtn`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `sl_doc_type_num` */

insert into `sl_doc_type_num` (`id_sdtn`,`id_ntd`,`area_number_sdtn`,`name_sdtn`) values (1,1,101,'СТОКОВА РАЗПИСКА'),(2,1,102,'СТОКОВА РАЗПИСКА'),(3,1,103,'СТОКОВА РАЗПИСКА'),(4,25,111,'ПРИЕМАТЕЛНА РАЗПИСКА'),(5,25,112,'ПРИЕМАТЕЛНА РАЗПИСКА'),(6,25,113,'ПРИЕМАТЕЛНА РАЗПИСКА'),(7,26,121,'ПРЕДАВАТЕЛНА РАЗПИСКА'),(8,26,122,'ПРЕДАВАТЕЛНА РАЗПИСКА'),(9,26,123,'ПРЕДАВАТЕЛНА РАЗПИСКА'),(10,17,201,'ФАКТУРА (Данъчна)'),(11,17,202,'ФАКТУРА (Данъчна)'),(12,17,203,'ФАКТУРА (Данъчна)'),(13,4,204,'ФАКТУРА (Опростена)'),(14,3,205,'ФАКТУРА (Проформа)'),(15,10,301,'ПРИХОДЕН КАСОВ ОРДЕР'),(16,10,302,'ПРИХОДЕН КАСОВ ОРДЕР'),(17,10,303,'ПРИХОДЕН КАСОВ ОРДЕР'),(18,11,304,'РАЗХОДЕН КАСОВ ОРДЕР'),(19,11,305,'РАЗХОДЕН КАСОВ ОРДЕР'),(20,11,306,'РАЗХОДЕН КАСОВ ОРДЕР'),(21,12,307,'ОРДЕР - АВАНС'),(22,12,308,'ОРДЕР - АВАНС'),(23,12,309,'ОРДЕР - АВАНС'),(24,13,310,'ОРДЕР - МЕЖДУКАСОВО ПРЕХВЪРЛЯНЕ'),(25,13,311,'ОРДЕР - МЕЖДУКАСОВО ПРЕХВЪРЛЯНЕ'),(26,13,312,'ОРДЕР - МЕЖДУКАСОВО ПРЕХВЪРЛЯНЕ'),(27,23,401,'ПРИЕМАТЕЛЕН ПРОТОКОЛ'),(28,19,402,'КОНСИГНАЦИОНЕН ПРОТОКОЛ'),(29,20,403,'ПРОТОКОЛ - БРАК'),(30,21,404,'ПРОТОКОЛ - ЛИПСА'),(31,22,405,'НАРЕЖДАНЕ ЗА ПРЕХВЪРЛЯНЕ'),(32,16,501,'ЦЕНОВА ЛИСТА'),(33,24,502,'ОФЕРТА');

/*Trigger structure for table `sl_doc_type_num` */

DELIMITER $$
 
CREATE TRIGGER `mida`.`trigger_au_dtn` 
AFTER UPDATE ON `mida`.`sl_doc_type_num`
  FOR EACH ROW 
BEGIN
#IF NEW.quant_nal  <> OLD.quant_nal  THEN

INSERT INTO sl_document_facade(number_df,type_df,level_df)
     VALUES (CONCAT(NEW.area_number_sdtn,'0000000'),
             (SELECT n.code_ntd FROM n_type_doc n WHERE NEW.id_ntd=n.id_ntd),
             1);
INSERT INTO sl_document_facade(number_df,type_df,level_df)
     VALUES (CONCAT(NEW.area_number_sdtn,'0000000'),
             (SELECT n.code_ntd FROM n_type_doc n WHERE NEW.id_ntd=n.id_ntd),
             2);
INSERT INTO sl_document_facade(number_df,type_df,level_df)
     VALUES (CONCAT(NEW.area_number_sdtn,'0000000'),
             (SELECT n.code_ntd FROM n_type_doc n WHERE NEW.id_ntd=n.id_ntd),
             3);

END; $$

DELIMITER ;

/*Table structure for table `sl_document_facade` */

DROP TABLE IF EXISTS `sl_document_facade`;

CREATE TABLE `sl_document_facade` (
  `id_df` int(11) unsigned NOT NULL auto_increment,
  `in_contragent_df` int(11) unsigned default NULL COMMENT 'kontragent ot van kam sklad',
  `out_obekt_df` int(11) unsigned default NULL COMMENT 'obekt ot sklad navan',
  `in_obekt_df` int(11) unsigned default NULL COMMENT 'obekt -  sklad poluchatel',
  `number_df` bigint(10) unsigned zerofill default NULL COMMENT 'nomera na dokumentite',
  `type_df` int(10) unsigned default NULL COMMENT 'tip na dokumenta  1 / fakturi q2/ stokova',
  `condition_df` varchar(11) default '-1' COMMENT 'sastoianie',
  `out_store_df` int(11) unsigned default NULL COMMENT 'tekush sklad',
  `total_df` decimal(15,6) default NULL COMMENT 'obsha suma sas DDS',
  `dds_df` decimal(15,6) default NULL COMMENT 'dds na fakturata',
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
  UNIQUE KEY `Index_2` (`type_df`,`level_df`,`number_df`,`condition_df`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `sl_document_facade` */


/*Table structure for table `sl_document_lines` */

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

/*Data for the table `sl_document_lines` */

/*Table structure for table `sl_exchange_rate` */

DROP TABLE IF EXISTS `sl_exchange_rate`;

CREATE TABLE `sl_exchange_rate` (
  `id_sl_exchange_rate` int(10) unsigned NOT NULL auto_increment,
  `date_sl_exchange_rate` date default NULL,
  `id_n_money` int(11) default NULL,
  `value_sl_exchange_rate` decimal(10,5) default NULL,
  PRIMARY KEY  (`id_sl_exchange_rate`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='kursove na valutite';

/*Data for the table `sl_exchange_rate` */

/*Table structure for table `sl_m_operation` */

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

/*Data for the table `sl_m_operation` */

/*Table structure for table `sl_n_obekt` */

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

/*Data for the table `sl_n_obekt` */

/*Table structure for table `sl_nalichnosti` */

DROP TABLE IF EXISTS `sl_nalichnosti`;

CREATE TABLE `sl_nalichnosti` (
  `id_nal` int(11) NOT NULL auto_increment,
  `id_n_storage` int(11) default NULL,
  `id_pc` int(10) unsigned default NULL COMMENT 'partidni nomera',
  `level` tinyint(3) unsigned default NULL,
  `quant_nal` int(11) default NULL,
  `quant_rezerv_nal` int(11) default NULL,
  `return_rezerv_nal` int(11) default NULL,
  PRIMARY KEY  (`id_nal`),
  UNIQUE KEY `Index_2` (`id_pc`,`id_n_storage`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `sl_nalichnosti` */

/*Trigger structure for table `sl_nalichnosti` */

delimiter //
CREATE TRIGGER upd_check AFTER UPDATE ON sl_nalichnosti
FOR EACH ROW
BEGIN
IF NEW.quant_nal  <> OLD.quant_nal  THEN
INSERT INTO log_action_nalich (id_corect, bupdate, aupdate) VALUES (OLD.id_nal,OLD.quant_nal,NEW.quant_nal)
;
END IF;
END;//
delimiter;

/*Table structure for table `sl_paying_orders` */

DROP TABLE IF EXISTS `sl_paying_orders`;

CREATE TABLE `sl_paying_orders` (
  `id_spo` int(11) NOT NULL auto_increment,
  `ordering_person` int(10) unsigned default NULL,
  `id_spt` int(11) NOT NULL default '0',
  `id_nbc` int(11) NOT NULL default '0' COMMENT 'danni na nareditel iuridi4esko lice',
  `id_ls_n_person` int(11) NOT NULL default '0' COMMENT 'danni na nareditel fizi4esko lice',
  `id_contragent` int(11) NOT NULL default '0' COMMENT 'danni na polu4atel',
  `amount` decimal(12,2) NOT NULL default '0.00',
  `osnovanie` varchar(60) default NULL,
  `comment_spo` varchar(60) default NULL,
  `instant` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id_spo`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `sl_paying_orders` */

/*Table structure for table `sl_porder_types` */

DROP TABLE IF EXISTS `sl_porder_types`;

CREATE TABLE `sl_porder_types` (
  `id_spt` int(11) NOT NULL auto_increment,
  `type_porder` varchar(50) NOT NULL default '',
  `id_tbacc` int(11) unsigned default '1',
  PRIMARY KEY  (`id_spt`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `sl_porder_types` */

insert into `sl_porder_types` (`id_spt`,`type_porder`,`id_tbacc`) values (1,'Вносна бележка',0),(2,'Преводно нареждане по Разплащателна сметка',1),(3,'Преводно нареждане по ДДС сметка',2),(4,'Захранване на ДДС сметка',2),(5,'Преводно нареждане към Бюджета',1);

/*Table structure for table `type_marsh` */

DROP TABLE IF EXISTS `type_marsh`;

CREATE TABLE `type_marsh` (
  `idtype_marsh` int(10) unsigned NOT NULL auto_increment,
  `name_type_marsh` varchar(50) default NULL,
  `comment_type_marsh` varchar(255) default NULL,
  `tsiklichnost` int(10) unsigned default '1',
  `sezonnost` int(10) unsigned default '0',
  `id_type_mps` int(10) unsigned default NULL,
  `id_type_role` int(10) unsigned default NULL,
  `id_person` int(10) unsigned default NULL,
  PRIMARY KEY  (`idtype_marsh`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `type_marsh` */

/*Table structure for table `type_ob` */

DROP TABLE IF EXISTS `type_ob`;

CREATE TABLE `type_ob` (
  `idtype_ob` int(10) unsigned NOT NULL auto_increment,
  `name_type_ob` varchar(45) default NULL,
  `comment_type_ob` varchar(255) default NULL,
  PRIMARY KEY  (`idtype_ob`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `type_ob` */

/*Table structure for table `type_role_litse` */

DROP TABLE IF EXISTS `type_role_litse`;

CREATE TABLE `type_role_litse` (
  `idtype_role_litse` int(10) unsigned NOT NULL auto_increment,
  `name_tpye_role` varchar(45) default NULL,
  `comment_trl` varchar(255) default NULL,
  `role` bigint(20) default '0',
  `start_date` date default NULL,
  PRIMARY KEY  (`idtype_role_litse`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `type_role_litse` */

/*Table structure for table `user_master` */

DROP TABLE IF EXISTS `user_master`;

CREATE TABLE `user_master` (
  `id_um` int(11) NOT NULL auto_increment,
  `acc_user` varchar(14) default NULL,
  `name_um` varchar(30) default NULL,
  `nomer_um` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_um`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `user_master` */

insert into `user_master` (`id_um`,`acc_user`,`name_um`,`nomer_um`) values (1,'user1','User 1',5),(2,'user2','User 2',6),(3,'user3','User 3',7),(1001,'root','Imakante Admin',1),(1002,'rado','Радослав Драгийски',2),(1003,'jp','Иван Попов',3),(1004,'katsarov','Иван Кацаров',4);

/*Table structure for table `user_rights` */

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

/*Data for the table `user_rights` */

/* VIEWS */

DROP VIEW IF EXISTS `mida`.`print_doc_faktura`;
CREATE VIEW `print_doc_faktura` AS select `sl_document_lines`.`id_df` AS `id_df`,`sl_document_lines`.`singly_price_dl` AS `singly_price_dl`,`sl_document_lines`.`climb_down_dl` AS `climb_down_dl`,`sl_document_lines`.`numbers_piece_dl` AS `numbers_piece_dl`,`sl_document_lines`.`dds_dl` AS `dds_dl`,`sl_document_lines`.`totalall_dl` AS `totalall_dl`,`n_product_consigment`.`id_pm` AS `nomerpm`,`n_product_main`.`fname_pm` AS `fname_pm`,`n_product_all_measure`.`name_pam` AS `name_pam` from ((((`sl_document_lines` left join `n_product_consigment` on((`n_product_consigment`.`id_pc` = `sl_document_lines`.`id_pc`))) left join `n_product_main` on((`n_product_main`.`id_pm` = `n_product_consigment`.`id_pm`))) left join `n_product_description` on((`n_product_description`.`id_pd` = `n_product_main`.`id_pd`))) left join `n_product_all_measure` on((`n_product_all_measure`.`id_pam` = `n_product_description`.`m1_pd`)));


DROP VIEW IF EXISTS `mida`.`rep_casa_nal`;
CREATE VIEW `rep_casa_nal` AS (select distinct `n_casa`.`code_n_casa` AS `code_n_casa`,ifnull(sum(`sl_m_operation`.`sum_os_val_sl_mop`),0) AS `suma`,`sl_m_operation`.`in_type_sl_mop` AS `in_type_sl_mop`,`sl_m_operation`.`out_type_sl_mop` AS `out_type_sl_mop`,`sl_m_operation`.`levelx` AS `levelx` from (`n_casa` left join `sl_m_operation` on((`sl_m_operation`.`in_sl_mop` = `n_casa`.`id_n_casa`))) where (`sl_m_operation`.`in_type_sl_mop` = 1) group by `n_casa`.`code_n_casa`) union (select distinct `n_casa`.`code_n_casa` AS `code_n_casa`,ifnull(sum(`sl_m_operation`.`sum_os_val_sl_mop`),0) AS `suma`,`sl_m_operation`.`in_type_sl_mop` AS `in_type_sl_mop`,`sl_m_operation`.`out_type_sl_mop` AS `out_type_sl_mop`,`sl_m_operation`.`levelx` AS `levelx` from (`n_casa` left join `sl_m_operation` on((`sl_m_operation`.`out_sl_mop` = `n_casa`.`id_n_casa`))) where (`sl_m_operation`.`out_type_sl_mop` = 1) group by `n_casa`.`code_n_casa`);

DROP VIEW IF EXISTS `mida`.`rep_comm_nal`;
CREATE VIEW `rep_comm_nal` AS select `s`.`id_n_storage` AS `id_n_storage`,`n_storage`.`code_n_storage` AS `code_n_storage`,`n_storage`.`name_n_storage` AS `name_n_storage`,`s`.`id_pc` AS `id_pc`,`n_product_consigment`.`id_pm` AS `id_pm`,`n_product_main`.`code_pm` AS `code_pm`,`n_product_main`.`name_pm` AS `name_pm`,`n_product_main`.`barcod_pm` AS `barcod_pm`,`n_product_consigment`.`parcel_pc` AS `parcel_pc`,`n_product_consigment`.`dateofexpire_pc` AS `dateofexpire_pc`,`sl_contragent_product`.`id_contragent` AS `id_contragent`,`n_contragent`.`code_contragent` AS `code_contragent`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`s`.`level` AS `level`,`s`.`quant_nal` AS `quant_nal`,`n_product_price`.`price0_pp` AS `price0_pp`,(`s`.`quant_nal` * `n_product_price`.`price0_pp`) AS `TSENA0`,`n_product_price`.`price1_pp` AS `price1_pp`,(`s`.`quant_nal` * `n_product_price`.`price1_pp`) AS `TSENA1`,`n_product_price`.`price2_pp` AS `price2_pp`,(`s`.`quant_nal` * `n_product_price`.`price2_pp`) AS `TSENA2`,`n_product_price`.`price3_pp` AS `price3_pp`,(`s`.`quant_nal` * `n_product_price`.`price3_pp`) AS `TSENA3`,(`s`.`quant_nal` DIV `n_product_description`.`v3_pd`) AS `miarka3`,((`s`.`quant_nal` - ((`s`.`quant_nal` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) AS `miarka2`,((`s`.`quant_nal` - ((`s`.`quant_nal` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) - (((`s`.`quant_nal` - ((`s`.`quant_nal` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) * `n_product_description`.`v2_pd`)) AS `OSTATAK` from (((((((`sl_nalichnosti` `s` join `n_storage` on((`n_storage`.`id_n_storage` = `s`.`id_n_storage`))) join `n_product_consigment` on((`n_product_consigment`.`id_pc` = `s`.`id_pc`))) join `sl_contragent_product` on((`sl_contragent_product`.`id_pm` = `n_product_consigment`.`id_pm`))) join `n_product_main` on((`n_product_main`.`id_pm` = `sl_contragent_product`.`id_pm`))) join `n_product_description` on((`n_product_description`.`id_pd` = `n_product_main`.`id_pd`))) join `n_product_price` on((`n_product_price`.`id_pp` = `n_product_consigment`.`id_pp`))) join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_contragent_product`.`id_contragent`)));


DROP VIEW IF EXISTS `mida`.`rep_doc_pri`;
CREATE VIEW `rep_doc_pri` AS select `sl_document_facade`.`number_df` AS `number_df`,`sl_document_facade`.`type_df` AS `type_df`,`sl_document_facade`.`condition_df` AS `condition_df`,`n_contragent`.`code_contragent` AS `code_contragent`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_contragent`.`bul_n_contragent` AS `bul_n_contragent`,`sl_document_facade`.`total_df` AS `total_df`,`sl_document_facade`.`dds_df` AS `dds_df`,`sl_document_facade`.`date_edition_df` AS `date_edition_df`,`sl_document_facade`.`level_df` AS `level_df`,`n_contragent`.`flag_n_contragent` AS `flag_n_contragent` from (`sl_document_facade` join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_document_facade`.`in_contragent_df`)));


DROP VIEW IF EXISTS `mida`.`rep_documents`;
CREATE VIEW `rep_documents` AS (select `d`.`id_dl` AS `id_dl`,`d`.`id_pc` AS `id_pc`,`pc`.`parcel_pc` AS `parcel_pc`,`pc`.`id_pm` AS `id_pm`,`pm`.`code_pm` AS `code_product`,`pm`.`name_pm` AS `name_product`,`pm`.`id_pd` AS `id_pd`,`pm`.`barcod_pm` AS `barcod_pm`,`d`.`id_n_storage` AS `id_n_storage`,`s`.`code_n_storage` AS `code_store`,`s`.`name_n_storage` AS `name_store`,`d`.`singly_price_dl` AS `singly_price_dl`,`d`.`climb_down_dl` AS `climb_down_dl`,`d`.`numbers_piece_dl` AS `numbers_piece_dl`,(`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) AS `miarka3`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) AS `miarka2`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) - (((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) * `n_product_description`.`v2_pd`)) AS `OSTATAK`,`d`.`dds_dl` AS `dds_dl`,`d`.`totalall_dl` AS `totalall_dl`,`d`.`id_df` AS `id_df`,`df`.`number_df` AS `number_df`,ifnull(`df`.`type_df`,0) AS `type_df`,ifnull(`df`.`in_contragent_df`,0) AS `in_contragent_df`,ifnull(`ictr`.`code_contragent`,0) AS `code_dostavchik`,ifnull(`ictr`.`name_n_contragent`,0) AS `name_dostavchik`,ifnull(`df`.`out_contragent_df`,0) AS `out_contragent_df`,ifnull(`octr`.`code_contragent`,0) AS `code_client`,ifnull(`octr`.`name_n_contragent`,_cp1251'') AS `name_client`,ifnull(`df`.`total_df`,0) AS `total_df`,`df`.`dds_df` AS `dds_df`,ifnull(`df`.`date_edition_df`,_utf8'0000-00-00') AS `date_edition_df`,ifnull(`df`.`date_deliver_df`,_utf8'0000-00-00') AS `date_deliver_df`,ifnull(`df`.`date_pay_df`,_utf8'0000-00-00') AS `date_pay_df`,ifnull(`df`.`user_df`,0) AS `user_df`,ifnull(`person1`.`code_ls_n_person`,0) AS `code_operator`,ifnull(`person1`.`name_ls_n_person`,_cp1251'') AS `name_operator`,ifnull(`df`.`distributor_df`,0) AS `distributor_df`,ifnull(`person2`.`code_ls_n_person`,0) AS `code_distributor`,ifnull(`person2`.`name_ls_n_person`,_cp1251'') AS `name_distributor`,ifnull(`df`.`delivere_df`,0) AS `delivere_df`,ifnull(`person3`.`code_ls_n_person`,0) AS `code_speditor`,ifnull(`person3`.`name_ls_n_person`,0) AS `name_speditor`,ifnull(`d`.`price_list_dl`,0) AS `IFNULL(d.price_list_dl,0)`,`df`.`level_df` AS `level_df` from ((((((((((`sl_document_lines` `d` join `sl_document_facade` `df` on((`df`.`id_df` = `d`.`id_df`))) join `n_product_consigment` `pc` on((`pc`.`id_pc` = `d`.`id_pc`))) join `n_product_main` `pm` on((`pm`.`id_pm` = `pc`.`id_pm`))) join `n_storage` `s` on((`s`.`id_n_storage` = `d`.`id_n_storage`))) left join `ls_n_person` `person1` on((`person1`.`id_ls_n_person` = `df`.`user_df`))) left join `ls_n_person` `person2` on((`person2`.`id_ls_n_person` = `df`.`distributor_df`))) left join `ls_n_person` `person3` on((`person3`.`id_ls_n_person` = `df`.`delivere_df`))) left join `n_contragent` `octr` on((`octr`.`id_contragent` = `df`.`out_contragent_df`))) left join `n_contragent` `ictr` on((`ictr`.`id_contragent` = `df`.`in_contragent_df`))) join `n_product_description` on((`n_product_description`.`id_pd` = `pm`.`id_pd`))) order by `d`.`id_dl`);

DROP VIEW IF EXISTS `mida`.`rep_documents_ivan`;
CREATE VIEW `rep_documents_ivan` AS select `d`.`id_dl` AS `id_dl`,`d`.`id_pc` AS `id_pc`,`pc`.`parcel_pc` AS `parcel_pc`,`pc`.`id_pm` AS `id_pm`,`pm`.`code_pm` AS `code_product`,`pm`.`name_pm` AS `name_product`,`pm`.`id_pd` AS `id_pd`,`pm`.`barcod_pm` AS `barcod_pm`,`d`.`id_n_storage` AS `id_n_storage`,`s`.`code_n_storage` AS `code_store`,`s`.`name_n_storage` AS `name_store`,`df`.`in_store_df` AS `in_store_df`,`d`.`singly_price_dl` AS `singly_price_dl`,`d`.`climb_down_dl` AS `climb_down_dl`,`d`.`numbers_piece_dl` AS `numbers_piece_dl`,(`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) AS `miarka3`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) AS `miarka2`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) - (((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) * `n_product_description`.`v2_pd`)) AS `OSTATAK`,`d`.`dds_dl` AS `dds_dl`,`d`.`totalall_dl` AS `totalall_dl`,`d`.`id_df` AS `id_df`,`df`.`number_df` AS `number_df`,ifnull(`df`.`type_df`,0) AS `type_df`,`kp`.`name_kp` AS `vid_plashtane`,ifnull(`df`.`in_contragent_df`,0) AS `in_contragent_df`,ifnull(`ictr`.`code_contragent`,0) AS `code_dostavchik`,ifnull(`ictr`.`name_n_contragent`,0) AS `name_dostavchik`,ifnull(`ictr`.`bul_n_contragent`,0) AS `ictr_bul_nomer`,ifnull(`ictr`.`dan_n_contragent`,0) AS `ictr_dan_nomer`,ifnull(`ictr`.`address_n_contragent`,0) AS `ictr_address`,ifnull(`ictr_oso`.`name_ls_n_person`,0) AS `ictr_oso_name`,ifnull(`ictr_mol`.`name_ls_n_person`,0) AS `ictr_mol_name`,ifnull(`df`.`out_contragent_df`,0) AS `out_contragent_df`,ifnull(`octr`.`code_contragent`,0) AS `code_client`,ifnull(`octr`.`name_n_contragent`,_cp1251'') AS `name_client`,ifnull(`octr`.`bul_n_contragent`,0) AS `octr_bul_nomer`,ifnull(`octr`.`dan_n_contragent`,0) AS `octr_dan_nomer`,ifnull(`octr`.`address_n_contragent`,0) AS `octr_address`,ifnull(`octr_oso`.`name_ls_n_person`,0) AS `octr_oso_name`,ifnull(`octr_mol`.`name_ls_n_person`,0) AS `octr_mol_name`,ifnull(`df`.`total_df`,0) AS `total_df`,`df`.`dds_df` AS `dds_df`,ifnull(`df`.`date_edition_df`,_utf8'0000-00-00') AS `date_edition_df`,ifnull(`df`.`date_deliver_df`,_utf8'0000-00-00') AS `date_deliver_df`,ifnull(`df`.`date_pay_df`,_utf8'0000-00-00') AS `date_pay_df`,ifnull(`df`.`user_df`,0) AS `user_df`,ifnull(`person1`.`code_ls_n_person`,0) AS `code_operator`,ifnull(`person1`.`name_ls_n_person`,_cp1251'') AS `name_operator`,ifnull(`df`.`distributor_df`,0) AS `distributor_df`,ifnull(`person2`.`code_ls_n_person`,0) AS `code_distributor`,ifnull(`person2`.`name_ls_n_person`,_cp1251'') AS `name_distributor`,ifnull(`df`.`delivere_df`,0) AS `delivere_df`,ifnull(`person3`.`code_ls_n_person`,0) AS `code_speditor`,ifnull(`person3`.`name_ls_n_person`,0) AS `name_speditor`,ifnull(`d`.`price_list_dl`,0) AS `IFNULL(d.price_list_dl,0)`,`df`.`level_df` AS `level_df` from (((((((((((((((`sl_document_lines` `d` join `sl_document_facade` `df` on((`df`.`id_df` = `d`.`id_df`))) join `n_product_consigment` `pc` on((`pc`.`id_pc` = `d`.`id_pc`))) join `n_product_main` `pm` on((`pm`.`id_pm` = `pc`.`id_pm`))) join `n_storage` `s` on((`s`.`id_n_storage` = `d`.`id_n_storage`))) left join `ls_n_person` `person1` on((`person1`.`id_ls_n_person` = `df`.`user_df`))) left join `ls_n_person` `person2` on((`person2`.`id_ls_n_person` = `df`.`distributor_df`))) left join `ls_n_person` `person3` on((`person3`.`id_ls_n_person` = `df`.`delivere_df`))) left join `n_contragent` `octr` on((`octr`.`id_contragent` = `df`.`out_contragent_df`))) left join `ls_n_person` `octr_oso` on((`octr_oso`.`id_ls_n_person` = `octr`.`id_oso`))) left join `ls_n_person` `octr_mol` on((`octr_mol`.`id_ls_n_person` = `octr`.`id_mol`))) left join `n_contragent` `ictr` on((`ictr`.`id_contragent` = `df`.`in_contragent_df`))) left join `ls_n_person` `ictr_oso` on((`ictr_oso`.`id_ls_n_person` = `ictr`.`id_oso`))) left join `ls_n_person` `ictr_mol` on((`ictr_mol`.`id_ls_n_person` = `ictr`.`id_mol`))) join `n_product_description` on((`n_product_description`.`id_pd` = `pm`.`id_pd`))) left join `kind_paying` `kp` on((`kp`.`id_kp` = `df`.`description_pay_df`)));


DROP VIEW IF EXISTS `mida`.`rep_documents_new`;
CREATE VIEW `rep_documents_new` AS select `d`.`id_dl` AS `id_dl`,`d`.`id_pc` AS `id_pc`,`pc`.`parcel_pc` AS `parcel_pc`,`pc`.`id_pm` AS `id_pm`,`pm`.`code_pm` AS `code_product`,`pm`.`name_pm` AS `name_product`,`pm`.`id_pd` AS `id_pd`,`pm`.`barcod_pm` AS `barcod_pm`,`d`.`id_n_storage` AS `id_n_storage`,`s`.`code_n_storage` AS `code_store`,`s`.`name_n_storage` AS `name_store`,`df`.`in_store_df` AS `in_store_df`,`d`.`singly_price_dl` AS `singly_price_dl`,`d`.`climb_down_dl` AS `climb_down_dl`,`d`.`numbers_piece_dl` AS `numbers_piece_dl`,(`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) AS `miarka3`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) AS `miarka2`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) - (((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) * `n_product_description`.`v2_pd`)) AS `OSTATAK`,`d`.`dds_dl` AS `dds_dl`,`d`.`totalall_dl` AS `totalall_dl`,`d`.`id_df` AS `id_df`,`df`.`number_df` AS `number_df`,ifnull(`df`.`type_df`,0) AS `type_df`,`kp`.`name_kp` AS `vid_plashtane`,ifnull(`df`.`in_contragent_df`,0) AS `in_contragent_df`,ifnull(`ictr`.`code_contragent`,0) AS `code_dostavchik`,ifnull(`ictr`.`name_n_contragent`,0) AS `name_dostavchik`,ifnull(`ictr`.`bul_n_contragent`,0) AS `ictr_bul_nomer`,ifnull(`ictr`.`dan_n_contragent`,0) AS `ictr_dan_nomer`,ifnull(`ictr`.`address_n_contragent`,0) AS `ictr_address`,ifnull(`ictr_oso`.`name_ls_n_person`,0) AS `ictr_oso_name`,ifnull(`ictr_mol`.`name_ls_n_person`,0) AS `ictr_mol_name`,ifnull(`df`.`out_contragent_df`,0) AS `out_contragent_df`,ifnull(`ictr`.`IBANR`,0) AS `ictr_ibanr`,ifnull(`ictr`.`BICR`,0) AS `ictr_bicr`,ifnull(`ictr`.`VIDVALR`,0) AS `ictr_vidvalr`,ifnull(`ictr`.`BANKNAMER`,0) AS `ictr_banknamer`,ifnull(`ictr`.`IBAND`,0) AS `ictr_iband`,ifnull(`ictr`.`BICD`,0) AS `ictr_bicd`,ifnull(`ictr`.`VIDVALD`,0) AS `ictr_vidvald`,ifnull(`ictr`.`BANKNAMED`,0) AS `ictr_banknamed`,ifnull(`octr`.`code_contragent`,0) AS `code_client`,ifnull(`octr`.`name_n_contragent`,_cp1251'') AS `name_client`,ifnull(`octr`.`bul_n_contragent`,0) AS `octr_bul_nomer`,ifnull(`octr`.`dan_n_contragent`,0) AS `octr_dan_nomer`,ifnull(`octr`.`address_n_contragent`,0) AS `octr_address`,ifnull(`octr_oso`.`name_ls_n_person`,0) AS `octr_oso_name`,ifnull(`octr_mol`.`name_ls_n_person`,0) AS `octr_mol_name`,ifnull(`df`.`total_df`,0) AS `total_df`,`df`.`dds_df` AS `dds_df`,ifnull(`octr`.`IBANR`,0) AS `octr_ibanr`,ifnull(`octr`.`BICR`,0) AS `octr_bicr`,ifnull(`octr`.`VIDVALR`,0) AS `octr_vidvalr`,ifnull(`octr`.`BANKNAMER`,0) AS `octr_banknamer`,ifnull(`octr`.`IBAND`,0) AS `octr_iband`,ifnull(`octr`.`BICD`,0) AS `octr_bicd`,ifnull(`octr`.`VIDVALD`,0) AS `octr_vidvald`,ifnull(`octr`.`BANKNAMED`,0) AS `octr_banknamed`,ifnull(`df`.`date_edition_df`,_utf8'0000-00-00') AS `date_edition_df`,ifnull(`df`.`date_deliver_df`,_utf8'0000-00-00') AS `date_deliver_df`,ifnull(`df`.`date_pay_df`,_utf8'0000-00-00') AS `date_pay_df`,ifnull(`df`.`user_df`,0) AS `user_df`,ifnull(`person1`.`code_ls_n_person`,0) AS `code_operator`,ifnull(`person1`.`name_ls_n_person`,_cp1251'') AS `name_operator`,ifnull(`df`.`distributor_df`,0) AS `distributor_df`,ifnull(`person2`.`code_ls_n_person`,0) AS `code_distributor`,ifnull(`person2`.`name_ls_n_person`,_cp1251'') AS `name_distributor`,ifnull(`df`.`delivere_df`,0) AS `delivere_df`,ifnull(`person3`.`code_ls_n_person`,0) AS `code_speditor`,ifnull(`person3`.`name_ls_n_person`,0) AS `name_speditor`,ifnull(`d`.`price_list_dl`,0) AS `IFNULL(d.price_list_dl,0)`,`df`.`level_df` AS `level_df` from (((((((((((((((`sl_document_lines` `d` join `sl_document_facade` `df` on((`df`.`id_df` = `d`.`id_df`))) join `n_product_consigment` `pc` on((`pc`.`id_pc` = `d`.`id_pc`))) join `n_product_main` `pm` on((`pm`.`id_pm` = `pc`.`id_pm`))) join `n_storage` `s` on((`s`.`id_n_storage` = `d`.`id_n_storage`))) left join `ls_n_person` `person1` on((`person1`.`id_ls_n_person` = `df`.`user_df`))) left join `ls_n_person` `person2` on((`person2`.`id_ls_n_person` = `df`.`distributor_df`))) left join `ls_n_person` `person3` on((`person3`.`id_ls_n_person` = `df`.`delivere_df`))) left join `n_contragent` `octr` on((`octr`.`id_contragent` = `df`.`out_contragent_df`))) left join `ls_n_person` `octr_oso` on((`octr_oso`.`id_ls_n_person` = `octr`.`id_oso`))) left join `ls_n_person` `octr_mol` on((`octr_mol`.`id_ls_n_person` = `octr`.`id_mol`))) left join `n_contragent` `ictr` on((`ictr`.`id_contragent` = `df`.`in_contragent_df`))) left join `ls_n_person` `ictr_oso` on((`ictr_oso`.`id_ls_n_person` = `ictr`.`id_oso`))) left join `ls_n_person` `ictr_mol` on((`ictr_mol`.`id_ls_n_person` = `ictr`.`id_mol`))) join `n_product_description` on((`n_product_description`.`id_pd` = `pm`.`id_pd`))) left join `kind_paying` `kp` on((`kp`.`id_kp` = `df`.`description_pay_df`)));

DROP VIEW IF EXISTS `mida`.`VAT_dr`;
CREATE VIEW `VAT_dr` AS select `sl_document_facade`.`number_df` AS `number_df`,
`n_type_doc`.`name_ntd` AS `name_ntd`,
`n_contragent`.`name_n_contragent` AS `name_n_contragent`,
`n_contragent`.`bul_n_contragent` AS `bul_n_contragent`,
`sl_document_facade`.`date_edition_df` AS `date_edition_df`,
`sl_document_facade`.`total_df` AS `total_df`,
`sl_document_facade`.`dds_df` AS `dds_df`
from ((`sl_document_facade`
join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_document_facade`.`in_contragent_df`)))
join `n_type_doc` on((`n_type_doc`.`code_ntd` = `sl_document_facade`.`type_df`)))
where (`sl_document_facade`.`type_df` = 4)
order by `sl_document_facade`.`number_df`;

/* STORED PROCEDURES */

# procedure: ls_procedure_branch

DELIMITER $$

DROP PROCEDURE IF EXISTS ls_procedure_branch $$
CREATE PROCEDURE ls_procedure_branch (IN in_id INT(6), IN comprator TINYINT, IN in_code INT(6), IN in_name VARCHAR(30))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id, n.code, n.name FROM ls_otdeli n;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO ls_otdeli (code, name) VALUES(in_code,in_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE ls_otdeli SET code = in_code, name = in_name
           WHERE ls_otdeli.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM ls_otdeli  WHERE id = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code, n.name FROM ls_otdeli n WHERE n.id = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id, n.code, n.name FROM ls_otdeli n WHERE n.code LIKE CONCAT('%',in_code,'%') AND
        n.name LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code) AS code FROM ls_otdeli n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM ls_otdeli n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM ls_otdeli;
     END IF;

END $$

DELIMITER ;

# procedure: ls_procedure_country

DELIMITER $$

DROP PROCEDURE IF EXISTS ls_procedure_country $$
CREATE PROCEDURE ls_procedure_country (IN in_id INT(6), IN comprator TINYINT, IN in_code INT(6), IN in_name VARCHAR(30))
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

# procedure: ls_procedure_document_facade

DELIMITER $$

DROP PROCEDURE IF EXISTS ls_procedure_document_facade $$
CREATE PROCEDURE ls_procedure_document_facade (IN comprator TINYINT,                IN in_id_df INT(11),                IN in_id_contragent_in INT(11),     IN in_id_contragent_out INT(11),IN in_id_obekt_out INT(11),
                                                IN in_id_obekt_in INT(11),           IN in_id_distributor INT(11),       IN in_id_deliver INT(11),           IN in_descriptionPaying INT(3), IN in_docFacadeNumber BIGINT(10),
                                                IN in_docFacadeUser INT(11),         IN in_docFacadeUserLastEdit INT(11),IN in_id_facturaConnection INT(11), IN in_id_payingOrder INT(11),   IN in_id_zaqvkaConnection INT(11),
                                                IN in_docFacadeLevel INT(11),        IN in_docFacadeStorage INT(11),     IN in_docFacadeType INT (3),        IN in_docFacadeAllDDS DOUBLE,   IN in_docFacadeTotal DOUBLE,
                                                IN in_docFacadeCondition VARCHAR(11),IN in_docFacadeDate VARCHAR(10),    IN in_docFacadeComment VARCHAR(250),IN in_dateDeliver VARCHAR(10),  IN in_payingDate VARCHAR(10),
                                                IN in_docFacadeFlagFinish INT (3),   IN in_priceOne DOUBLE,              IN in_climbDown DOUBLE ,            IN in_in_store_df INT(11) )
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
         WHERE  type_df = in_docFacadeType  AND level_df =  in_docFacadeLevel
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

     IF (comprator = 5) THEN
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
         WHERE  type_df = in_docFacadeType  AND level_df =  in_docFacadeLevel
         AND condition_df="0" AND description_pay_df = in_descriptionPaying AND number_df like concat('%',in_docFacadeComment,'%')
         AND date_edition_df   between  in_docFacadeDate and  in_payingDate   ORDER BY s.number_df ASC;

     END IF;

IF (comprator = 6) THEN
        SELECT MAX(number_df) AS maxNumber FROM mida.sl_document_facade s, sl_doc_type_num sl, n_doc_type_user_rights ur
        WHERE number_df like CONCAT(sl.area_number_sdtn,'%')
        AND sl.id_sdtn=  ur.id_sdtn  AND ur.id_ndtur = in_docFacadeUser  AND s.level_df = in_id_obekt_in
        AND s.type_df = in_docFacadeType AND s.condition_df!=1;
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
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
           AND n.flag_n_contragent=0;
       END IF;
# bul_n_contragent include
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# dan_n_contragent include
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# name_n_contragent include
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# address_n_contragent include
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE address_n_contragent  LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# tel_contragent include
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# ls_n_person include
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
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
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT(in_docFacadeComment,'%')
           AND n.flag_n_contragent=0;
      END IF;
#  bul_n_contragent start with text
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
#  dan_n_contragent start with text
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
 #  name_n_contragent start with text
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
 #  address_n_contragent start with text
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.address_n_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
 #  tel_contragent start with text
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
#  ls_n_person start with text
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
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
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT('%',in_docFacadeComment)
           AND n.flag_n_contragent=0;
      END IF;
 #  bul_n_contragent end with text
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
       END IF;
 #  dan_n_contragent end with text
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
       END IF;
 #  name_n_contragent end with text
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
       END IF;
 #  address_n_contragent end with text
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.address_n_contragent LIKE CONCAT('%',in_docFacadeCommentr)
          AND n.flag_n_contragent=0;
       END IF;
#  tel_contragent end with text
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
       END IF;
#  ls_n_person end with text
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
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
#===============  otmestvane na 0  za izdavane na stoka==============
# za tyrsene po cod na produkta i tatisnat F7
   IF (in_docFacadeType = 0) THEN
     SELECT n.id_pm,pc.parcel_pc,  pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
      n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
      pc.id_pc, pc.dateofexpire_pc ,
     s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
     st.code_n_storage, st.name_n_storage, st.comments_n_storage
     FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
     LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
     LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
     WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
     ORDER BY id_n_storage,  n.code_pm;
   END IF;
# za tyrsene po cod na produkta i tatisnat F8
   IF (in_docFacadeType = 1) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp  as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc, pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
        st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.code_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.code_pm;

   END IF;
 # za tyrsene po cod na produkta i tatisnat F9
   IF (in_docFacadeType = 2) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.code_pm;
   END IF;
#================= otmestvane na 3  za priemane na stoka ===============
# za priemane na stoka i natisnat F7  , tyrsene po kod
   IF (in_docFacadeType = 3) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in;
   END IF;
 # za priemane na stoka i natisnat F8  , tyrsene po kod
   IF (in_docFacadeType = 4) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.code_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in;
   END IF;
# za priemane na stoka i natisnat F9 , tyrsene po kod
   IF (in_docFacadeType = 5) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in;
   END IF;
#===============  otmestvane na 6  za izdavane na stoka==============
# za tyrsene po ime i tatisnat F7
   IF (in_docFacadeType = 6) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.name_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.name_pm;
   END IF;
# za tyrsene po ime i tatisnat F8
   IF (in_docFacadeType = 7) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.name_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.name_pm;
   END IF;
# za tyrsene po ime i tatisnat F9
   IF (in_docFacadeType = 8) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.name_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.name_pm;
   END IF;
#================= otmestvane na 9  za priemane na stoka ===============
# za priemane na stoka  i natisnat F7 , tyrsene po ime
   IF (in_docFacadeType = 9) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.name_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in;
   END IF;
 # za priemane na stoka  i natisnat F8 , tyrsene po ime
   IF (in_docFacadeType = 10) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.name_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in;
   END IF;

# za priemane na stoka  i natisnat F9 , tyrsene po ime
   IF (in_docFacadeType = 11) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.name_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in;
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
    #----------------------------old---------------------------------------------------------
    #SELECT * FROM mida.sl_nalichnosti s LEFT JOIN mida.n_product_consigment n ON n.id_pc=s.id_pc
    #LEFT JOIN mida.n_product_main pm ON pm.id_pm = n.id_pm
    #WHERE n.id_pc =in_id_obekt_in AND pm.flag_pm = in_id_df;
    #---------------------------------end------------------------------------------------------
    SELECT * FROM sl_nalichnosti s
    WHERE s.id_pc = in_id_obekt_in   AND s.id_n_storage= in_docFacadeStorage AND s.level=in_id_df;

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
     WHERE id_pc = in_id_obekt_in AND id_n_storage = in_id_obekt_out AND level=in_docFacadeLevel;

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
                       WHERE dl.id_dl = in_id_df)
            AND level=in_docFacadeLevel;

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
    WHERE id_df = in_id_df ORDER BY s.id_dl;
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
   DELETE FROM mida.sl_document_facade
   WHERE  type_df = in_id_df AND number_df = in_docFacadeNumber  AND level_df =in_id_obekt_out
   AND condition_df = in_docFacadeCondition;
  # UPDATE mida.sl_document_facade s SET s.condition_df ="1"
  # WHERE type_df = in_id_df AND number_df = in_docFacadeNumber AND level_df =in_id_obekt_out;

END IF;
IF (comprator = 36) THEN
    UPDATE mida.sl_nalichnosti s SET
     s.quant_rezerv_nal=quant_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
           AND level=in_docFacadeLevel;

END IF;

IF (comprator = 37) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.return_rezerv_nal = return_rezerv_nal + in_id_contragent_in
     WHERE id_pc = in_id_obekt_in AND id_n_storage = in_id_obekt_out AND s.level= in_docFacadeLevel;

END IF;

IF (comprator = 38) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.return_rezerv_nal=return_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND s.level=in_docFacadeLevel;
END IF;

IF (comprator = 39) THEN
    UPDATE mida.sl_nalichnosti s SET s.quant_nal=(quant_nal+in_id_obekt_in)
      , s.return_rezerv_nal=return_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND s.level=in_docFacadeLevel;

END IF;

IF (comprator = 40) THEN
    UPDATE mida.sl_document_facade s SET s.condition_df = in_docFacadeCondition
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
    AND id_pc = in_id_obekt_in AND level=in_docFacadeLevel;
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

IF (comprator = 50) THEN
    SELECT s.id_n_storage, s.id_pc FROM sl_document_lines s
    WHERE s.id_dl = in_id_df;
END IF;

IF (comprator = 51) THEN
    SELECT MAX(s.date_sl_exchange_rate) as lastDate FROM sl_exchange_rate s;
END IF;

IF (comprator = 52) THEN
     SELECT n.id_pm, n.parcel_pc, n.id_pp, n.id_ppp, n.id_pf,
      pm.id_ppp as pm_id_ppp, pm.id_pp as pm_id_pp, pm.id_pf as pm_id_pf FROM n_product_consigment n LEFT JOIN n_product_main pm ON pm.id_pm=n.id_pm
    WhERE n.id_pc = in_id_df;
END IF;

END $$

DELIMITER ;

# procedure: ls_procedure_group

DELIMITER $$

DROP PROCEDURE IF EXISTS ls_procedure_group $$
CREATE PROCEDURE ls_procedure_group (IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_code INT(11), IN in_name VARCHAR(50), IN in_alid TINYINT, IN in_alname VARCHAR(50))
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
          IF (in_alid > 0 AND in_code > -1) THEN
             SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.cod_n_group LIKE CONCAT('%',in_code,'%') AND n.name_n_group LIKE CONCAT('%',in_name,'%') AND anlevel.name_al LIKE CONCAT('%',in_alname,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid = 0 AND in_code > -1) THEN
             SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al,anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.cod_n_group LIKE CONCAT('%',in_code,'%') AND n.name_n_group LIKE CONCAT('%',in_name,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid > 0 AND in_code = -1) THEN
            SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.name_n_group LIKE CONCAT('%',in_name,'%') AND anlevel.name_al LIKE CONCAT('%',in_alname,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid = 0 AND in_code = -1) THEN
            SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.name_n_group LIKE CONCAT('%',in_name,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
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

# procedure: ls_procedure_m

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_m $$
CREATE PROCEDURE sl_procedure_m (IN vid INT(11),IN modulator INT(11), IN comprator INT(11), IN area VARCHAR(3),
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

# procedure: nom_procedure_anlevel

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_anlevel $$
CREATE PROCEDURE nom_procedure_anlevel (IN in_comprator INT, IN in_id INT, IN in_code VARCHAR(10),IN in_name VARCHAR(35), IN in_comment VARCHAR(250))
BEGIN

 IF (in_comprator = 0 ) THEN
     SELECT a.id_al,  a.cod_al, a.name_al, a.comment_al FROM anlevel a ORDER BY a.id_al ASC;

 END IF;

 IF (in_comprator = 1 ) THEN
  INSERT INTO anlevel(cod_al,name_al,comment_al) VALUES(in_code,in_name,in_comment);

 END IF;

 IF (in_comprator = 2 ) THEN
   UPDATE anlevel a SET cod_al = in_code,
                        name_al = in_name,
                        comment_al = in_comment
  WHERE id_al = in_id;

 END IF;

IF (in_comprator = 4 ) THEN
   DELETE FROM anlevel
   WHERE id_al = in_id;
END IF;

IF (in_comprator = 5 ) THEN
   SELECT a.id_al, a.cod_al, a.name_al, a.comment_al FROM anlevel a
   WHERE cod_al LIKE CONCAT('%',in_code,'%') 
    AND name_al LIKE CONCAT('%',in_name,'%') 
    AND comment_al LIKE CONCAT('%',in_comment,'%') 
    ORDER BY a.id_al ASC;

END IF;

IF (in_comprator = 7 ) THEN
  SELECT MAX(id_al) FROM  anlevel;

END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_baccount

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_baccount $$
CREATE PROCEDURE nom_procedure_baccount (IN comprator TINYINT, IN in_id INT(11), IN in_id_group INT(11), IN in_code INT(11),
                IN in_name VARCHAR(45), IN in_branch VARCHAR(45), IN in_account VARCHAR(28), IN in_bic VARCHAR(11),
                IN in_id_money INT(11), IN in_address VARCHAR(100), IN in_id_tacc INT(11), IN in_comment VARCHAR(250))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc,
            n.id_n_money, nm.cod_lat_n_money, n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            ORDER BY n.id_nbc ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_baccount (id_n_group, code_nbc, name_nbc, branch_nbc, account_nbc, bic_nbc, id_n_money, address_nbc, id_tbacc, comment_nbc)
        VALUES (in_id_group, in_code, in_name, in_branch, in_account, in_bic, in_id_money, in_address, in_id_tacc, in_comment);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_baccount SET id_n_group = in_id_group, code_nbc = in_code, name_nbc = in_name, branch_nbc = in_branch, account_nbc = in_account,
        bic_nbc = in_bic, id_n_money = in_id_money, address_nbc = in_address, id_tbacc = in_id_tacc, comment_nbc = in_comment
        WHERE n_baccount.id_nbc = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM n_baccount  WHERE id_nbc = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, n.id_n_money,
            nm.cod_lat_n_money, n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            WHERE n.id_nbc = in_id;
     END IF;
     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, n.id_n_money,
                nm.cod_lat_n_money, n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
                LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
                LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
                WHERE n.name_nbc LIKE CONCAT('%',in_name,'%') ORDER BY n.id_nbc ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, n.id_n_money,
                nm.cod_lat_n_money, n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
                LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
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
     IF (comprator = 12) THEN
        SELECT nm.id_n_money, nm.cod_lat_n_money FROM n_money nm;
     END IF;
END $$

DELIMITER ;

# procedure: nom_procedure_casa

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_casa $$
CREATE PROCEDURE nom_procedure_casa(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
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

# procedure: nom_procedure_contragent

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_contragent $$
CREATE PROCEDURE nom_procedure_contragent (IN comprator TINYINT,  IN in_id INT(10),      IN in_code INT(11),     IN in_name VARCHAR(45),
                                            IN in_bul VARCHAR(13), IN in_dan VARCHAR(11), IN in_address VARCHAR(35), IN in_id_nm INT(10),
                                            IN in_tel VARCHAR(12), IN in_fax VARCHAR(12), IN in_email VARCHAR(20),   IN in_web VARCHAR(20),
                                            IN in_id_mol INT(10),  IN in_id_oso INT(10),  IN in_flag TINYINT,
                                            IN in_nameBank_r VARCHAR(50) ,IN in_nameBank_d VARCHAR(50) ,
                                            IN in_iban_r VARCHAR(30) , IN in_iban_d VARCHAR(30) ,
                                            IN in_bic_r VARCHAR(11) ,IN in_bic_d VARCHAR(11) ,
                                            IN in_valuta_r VARCHAR(10) , IN in_valuta_d VARCHAR(10) )
BEGIN
     IF (comprator = 0) THEN
        SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent,
               c.BANKNAMER, c.BANKNAMED, c.IBANR, c.IBAND, c.BICD, c.BICR, c.VIDVALD, c.VIDVALR
        FROM `n_contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id_n_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = cont.id_n_country) and c.flag_n_contragent = in_flag ORDER BY c.code_contragent;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `n_contragent`(code_contragent,name_n_contragent,bul_n_contragent,dan_n_contragent,address_n_contragent,id_nm,tel_contragent,fax_contragent,email_contragent,web_contragent,id_mol,id_oso,flag_n_contragent,
                                  BANKNAMER, BANKNAMED, IBANR, IBAND, BICD, BICR, VIDVALD, VIDVALR)
         VALUES(in_code,in_name,in_bul,in_dan,in_address,in_id_nm,in_tel,in_fax,in_email,in_web,in_id_mol,in_id_oso,in_flag,
         in_nameBank_r,in_nameBank_d,in_iban_r,in_iban_d,in_bic_d,in_bic_r,in_valuta_d,in_valuta_r);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `n_contragent` SET flag_n_contragent = in_flag
           WHERE `n_contragent`.id_contragent = in_id;
     END IF;

     IF (comprator = 5) THEN
      IF (in_code != 0) THEN
       SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent,
               c.BANKNAMER, c.BANKNAMED, c.IBANR, c.IBAND, c.BICD, c.BICR, c.VIDVALD, c.VIDVALR
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
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent,
               c.BANKNAMER, c.BANKNAMED, c.IBANR, c.IBAND, c.BICD, c.BICR, c.VIDVALD, c.VIDVALR
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

#     IF (comprator = 17) THEN
#        SELECT  sl_contragent_product.id_pm
#        FROM sl_contragent_product where sl_contragent_product.id_contragent = in_id AND sl_contragent_product.flag_scp = in_flag;
#     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_disband

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_disband $$
CREATE PROCEDURE nom_procedure_disband (IN in_comprator INT, IN in_id INT, IN in_name VARCHAR(20), IN in_sname VARCHAR(20))
BEGIN


 IF (in_comprator = 0 ) THEN
     SELECT n.id_pam, n.name_pam, n.sname_pam FROM n_product_all_measure n ORDER BY n.id_pam ASC;

 END IF;

 IF (in_comprator = 1 ) THEN

  INSERT INTO n_product_all_measure(name_pam,sname_pam) VALUES(in_name,in_sname);
 END IF;

 IF (in_comprator = 2 ) THEN
  UPDATE n_product_all_measure n SET name_pam = in_name,
                                     sname_pam = in_sname
  WHERE id_pam = in_id;

 END IF;

IF (in_comprator = 4 ) THEN
   DELETE FROM n_product_all_measure
   WHERE id_pam = in_id;
END IF;

IF (in_comprator = 5 ) THEN
  SELECT n.id_pam, n.name_pam, n.sname_pam FROM n_product_all_measure n
   WHERE name_pam LIKE CONCAT('%',in_name,'%') 
    AND sname_pam LIKE CONCAT('%',in_sname,'%') 
    ORDER BY n.id_pam ASC;

END IF;

IF (in_comprator = 7 ) THEN
  SELECT MAX(id_pam) FROM  n_product_all_measure;

END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_doctype

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_doctype $$
CREATE PROCEDURE nom_procedure_doctype (IN in_id INT(6), IN comprator TINYINT, IN in_code INT(10), IN in_name VARCHAR(50), IN in_print_name VARCHAR(50))
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

# procedure: nom_procedure_doctype_user_rights

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_doctype_user_rights $$
CREATE PROCEDURE nom_procedure_doctype_user_rights (IN comprator INT(6), IN in_id INT(11), IN in_id_um INT(11), IN in_id_sdtn INT(11), IN in_rights INT(11))
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

# procedure: nom_procedure_expens

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_expens $$
CREATE PROCEDURE nom_procedure_expens (IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
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

# procedure: nom_procedure_income

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_incom $$
CREATE PROCEDURE nom_procedure_incom (IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
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

# procedure: nom_procedure_money

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_money $$
CREATE PROCEDURE nom_procedure_money (IN in_id INT(6), IN comprator INT(6), IN in_code INT(6), IN in_cod_lat VARCHAR(6), IN in_name VARCHAR(50), IN in_comments VARCHAR(255))
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

# procedure: nom_procedure_naselenimesta

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_naselenimesta $$
CREATE PROCEDURE nom_procedure_naselenimesta (IN comprator TINYINT, IN in_id INT(11), IN in_postcode INT(6), IN in_name VARCHAR(20), IN in_id_oblast INT(3) )
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

# procedure: nom_procedure_oblast

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_oblast $$
CREATE PROCEDURE nom_procedure_oblast (IN comprator TINYINT, IN in_id INT(11), IN in_name VARCHAR(20), IN in_id_country INT(3), IN in_country VARCHAR(45) )
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

# procedure: nom_procedure_person

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_person $$
CREATE PROCEDURE nom_procedure_person (IN comprator TINYINT, IN in_id INT(11), IN in_id_group INT(11), IN in_code INT(11), IN in_egn VARCHAR(10), IN in_nomlk VARCHAR(9), IN in_name VARCHAR(45), IN in_comment VARCHAR(250) )
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

     IF (comprator = 21) THEN
        SELECT n.code_ls_n_person  AS code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person FROM ls_n_person n
        WHERE code_ls_n_person = in_code;

     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_product

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_product $$
CREATE PROCEDURE nom_procedure_product (IN in_comprator TINYINT,    IN in_id_pm INT(11),              IN in_id_ppp INT(11),        IN in_id_pp INT(11),
                                                 IN in_id_pf INT(11),        IN in_id_n_group INT(11),         IN in_id_pd INT(11),         IN in_name_pm VARCHAR(30),
                                                 IN in_sname_pm VARCHAR(30), IN in_fname_pm VARCHAR(30),       IN in_cname_pm VARCHAR(30),  IN in_max_pop_pm DOUBLE,
                                                 IN in_flag_pm TINYINT,      IN in_expertsheet_pm VARCHAR(45), IN in_barcod_pm VARCHAR(20),  IN in_cod1_pm VARCHAR(20),
                                                 IN in_cod2_pm VARCHAR(20),  IN in_price0_pp DOUBLE,           IN in_price1_pp DOUBLE,      IN in_price2_pp DOUBLE,
                                                 IN in_price3_pp DOUBLE, IN in_min_pm INT(11), IN in_code_pm VARCHAR(11))
BEGIN
     IF (in_comprator = 0) THEN
        SELECT n.code_pm ,n.id_pm, n.id_n_group, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.cod1_pm,
         n.cod2_pm, n.barcod_pm, n.max_pop_pm, n.expertsheet_pm, n.flag_pm,  pp.id_sl_curs,pp.price0_pp,money.cod_lat_n_money,@stoinost_in_lv:=(sl_curs.value_sl_curs*pp.price0_pp)AS lv, pp.price1_pp, pp.price2_pp,pp.price3_pp, pf.dds_pf, pf.excise_pf,
         pf.other_pf, pd.id_pd, pd.m1_pd, pd.v1_pd, pd.m2_pd, pd.v2_pd, pd.m3_pd, pd.v3_pd,min_pm,((pp.price0_pp*pf.dds_pf/100) + pp.price0_pp) as dost_prive_sDDS
        FROM n_product_main n LEFT JOIN n_product_price pp ON pp.id_pp = n.id_pp LEFT JOIN sl_curs  ON  pp.id_sl_curs = sl_curs.id_sl_curs LEFT JOIN n_money money ON money.id_n_money = sl_curs.id_sl_curs LEFT JOIN n_product_fee pf ON pf.id_pf = n.id_pf LEFT JOIN
         n_product_description pd ON pd.id_pd = n.id_pd LEFT JOIN n_product_promotion_price ppp ON ppp.id_ppp = n.id_ppp LEFT JOIN n_group g
         ON g.id_n_group = n.id_n_group WHERE n.flag_pm = in_flag_pm ORDER BY n.name_pm, n.id_pm;
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
         SELECT n.id_pc, n.parcel_pc, n.dateofexpire_pc, n.barcod_pc, n.id_pp, n.id_ppp, n.id_pf, n.exp_list_pc
         FROM n_product_consigment n
         WHERE id_pm =in_id_pm ;

    END IF;
     IF (in_comprator = 37) THEN
         SELECT n.id_pp, n.id_ppp, n.id_pf FROM n_product_consigment n
         WHERE id_pc =in_id_pm ;

    END IF;
    
    IF (in_comprator = 38) THEN
         INSERT INTO mida.n_product_consigment( id_pm, parcel_pc, dateofexpire_pc, barcod_pc, id_pp, id_ppp, id_pf,exp_list_pc)
         VALUES(in_id_pm, in_id_pd, in_sname_pm, in_barcod_pm, in_id_pp, in_id_ppp, in_id_pf,in_expertsheet_pm);

    END IF;
    IF (in_comprator = 39) THEN
       UPDATE mida.n_product_consigment n SET n.id_pm  = in_id_pm,
        n.parcel_pc = in_id_pd,
        n.dateofexpire_pc = in_sname_pm,
        n.barcod_pc = in_barcod_pm,
        n.id_pp = in_id_pp,
        n.id_ppp = in_id_ppp,
        n.id_pf = in_id_pf,
        n.exp_list_pc = in_expertsheet_pm
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

# procedure: nom_procedure_storage

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_storage $$
CREATE PROCEDURE nom_procedure_storage (IN comprator TINYINT, IN in_id INT(11), IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250))
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

# procedure: sl_procedure_casa_casa

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_casa_casa $$
CREATE PROCEDURE sl_procedure_casa_casa (
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

# procedure: sl_procedure_case_advances

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_case_advances $$
CREATE PROCEDURE sl_procedure_case_advances (
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

# procedure: sl_procedure_case_in

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_case_in $$
CREATE PROCEDURE sl_procedure_case_in (
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

# procedure: sl_procedure_case_out

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_case_out $$
CREATE PROCEDURE sl_procedure_case_out (
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

# procedure: sl_procedure_copiuri

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_copiuri $$
CREATE PROCEDURE sl_procedure_copiuri (IN comprator INT(3),
                                                IN in_id_um INT(11),
                                                IN in_name_um VARCHAR(40),
                                                IN in_paper_100 INT(5),
                                                IN in_paper_50 INT(5),
                                                IN in_paper_20 INT(5),
                                                IN in_paper_10 INT(5),
                                                IN in_paper_5 INT(5),
                                                IN in_paper_2 INT(5),
                                                IN in_metal_1 INT(5),
                                                IN in_metal_050 INT(5),
                                                IN in_metal_020 INT(5),
                                                IN in_metal_010 INT(5),
                                                IN in_metal_005 INT(5),
                                                IN in_metal_002 INT(5),
                                                IN in_metal_001 INT(5),
                                                IN dateBegin VARCHAR(15), IN dateEnd VARCHAR(15))
BEGIN
  IF (comprator =  0) then

      SELECT sc.id_sc, sc.id_um, user_master.name_um, sc.instant,
              sc.paper_100, (sc.paper_100*100) AS suma_100, sc.paper_50, (sc.paper_50*50) AS suma_50,
              sc.paper_20, (sc.paper_20*20) AS suma_20, sc.paper_10, (sc.paper_10*10) AS suma_10,
              sc.paper_5,(sc.paper_5*5) AS suma_5, sc.paper_2, (sc.paper_2*2) AS suma_2,
              sc.metal_1, (sc.metal_1*1) AS suma_1, sc.metal_050, (sc.metal_050*0.50) AS suma_050,
              sc.metal_020, (sc.metal_020*0.20) AS suma_020, sc.metal_010, (sc.metal_010*0.10) AS suma_010,
              sc.metal_005, (sc.metal_005*0.05) AS suma_005, sc.metal_002, (sc.metal_002*0.02) AS suma_002,
              sc.metal_001, (sc.metal_001*0.01) AS suma_001
              FROM sl_copiuri sc
              LEFT JOIN user_master ON user_master.id_um = sc.id_um
              WHERE DATE(sc.instant) BETWEEN  dateBegin AND dateEnd
              ORDER by id_sc ASC;
  END IF;
  IF (comprator = 1) then
  INSERT INTO sl_copiuri(id_um, paper_100, paper_50, paper_20, paper_10, paper_5, paper_2, 
                        metal_1, metal_050, metal_020, metal_010, metal_005, metal_002, metal_001) 
                  VALUES(in_id_um, in_paper_100, in_paper_50, in_paper_20, in_paper_10, in_paper_5, in_paper_2, 
                        in_metal_1, in_metal_050, in_metal_020, in_metal_010, in_metal_005, in_metal_002, in_metal_001);
  end if;
  IF (comprator =  5) then

      SELECT sc.id_sc, sc.id_um, user_master.name_um, sc.instant,
              sc.paper_100, (sc.paper_100*100) AS suma_100, sc.paper_50, (sc.paper_50*50) AS suma_50,
              sc.paper_20, (sc.paper_20*20) AS suma_20, sc.paper_10, (sc.paper_10*10) AS suma_10,
              sc.paper_5,(sc.paper_5*5) AS suma_5, sc.paper_2, (sc.paper_2*2) AS suma_2,
              sc.metal_1, (sc.metal_1*1) AS suma_1, sc.metal_050, (sc.metal_050*0.50) AS suma_050,
              sc.metal_020, (sc.metal_020*0.20) AS suma_020, sc.metal_010, (sc.metal_010*0.10) AS suma_010,
              sc.metal_005, (sc.metal_005*0.05) AS suma_005, sc.metal_002, (sc.metal_002*0.02) AS suma_002,
              sc.metal_001, (sc.metal_001*0.01) AS suma_001
              FROM sl_copiuri sc
              LEFT JOIN user_master ON user_master.id_um = sc.id_um
              WHERE DATE(sc.instant) BETWEEN  dateBegin AND dateEnd AND user_master.name_um LIKE CONCAT('%',in_name_um,'%')
              ORDER by id_sc ASC;
  END IF;


END $$

DELIMITER ;

# procedure: sl_procedure_exchange_rate

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_exchange_rate $$
CREATE PROCEDURE sl_procedure_exchange_rate (IN comprator TINYINT, IN in_id INT(10), IN in_date DATE, IN in_id_money INT(11), IN in_value DECIMAL(10,5))
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

# procedure: sl_procedure_num_doc

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_num_doc $$
CREATE PROCEDURE sl_procedure_num_doc (IN comprator TINYINT, IN in_id INT(11), IN in_id_doctype INT(11), IN in_area INT(3), IN in_name VARCHAR(40))
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

# procedure: sl_procedure_paying_orders

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_paying_orders $$
CREATE PROCEDURE sl_procedure_paying_orders(IN comprator TINYINT, IN in_id INT(11), IN in_order_person INT(11), 
                                            IN in_id_spt INT(11), IN in_id_nbc INT(11), IN in_id_person INT(11), IN in_pname VARCHAR(60), 
                                            IN in_id_contragent INT(11), IN in_code INT(11), IN in_name VARCHAR(45), 
                                            IN in_amount DECIMAL(12,2), IN in_osnovanie VARCHAR(60), IN in_comment_spo VARCHAR(60), 
                                            IN in_SOT INT(11), IN in_SOTN VARCHAR(50), IN beginDate VARCHAR(15), IN endDate VARCHAR(15))
BEGIN
     IF (comprator = 0) THEN
        IF (in_order_person = 0) THEN
          SELECT po.id_spo, po.ordering_person, po.id_spt, pt.type_porder, 
            po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD, po.amount, po.osnovanie, po.comment_spo, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt 
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent AND nc.flag_n_contragent = 0  
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
            WHERE po.ordering_person = 0 
            ORDER BY po.id_spo ASC;
        END IF;
        IF (in_order_person = 1) THEN
          SELECT po.id_spo, po.ordering_person, po.id_spt, pt.type_porder, po.id_ls_n_person, p.name_ls_n_person, 
            po.id_nbc, nb.name_nbc, nb.branch_nbc, nb.address_nbc, nb.account_nbc, nb.bic_nbc, nb.id_n_money, nm.cod_lat_n_money,  
            nb.id_tbacc, tb.name_tbacc, po.amount, po.osnovanie, po.comment_spo, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt  
            LEFT OUTER JOIN ls_n_person p ON p.id_ls_n_person = po.id_ls_n_person 
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = nb.id_n_money 
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = 1 
            WHERE po.ordering_person = 1 
            ORDER BY po.id_spo ASC;
        END IF;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_paying_orders (ordering_person, id_spt, id_nbc, id_ls_n_person, id_contragent, amount, osnovanie, comment_spo) 
                VALUES(in_order_person, in_id_spt, in_id_nbc, in_id_person, in_id_contragent, in_amount, in_osnovanie, in_comment_spo);
     END IF;

     IF (comprator = 2) THEN
        UPDATE sl_paying_orders  
            SET ordering_person = in_order_person, id_spt = in_id_spt, id_nbc = in_id_nbc, id_ls_n_person = in_id_person, id_contragent = in_id_contragent, 
                amount = in_amount, osnovanie = in_osnovanie, comment_spo = in_comment_spo, instant = CURRENT_TIMESTAMP 
            WHERE sl_paying_orders.id_spo = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM sl_paying_orders WHERE id_spo = in_id;
     END IF;

     IF (comprator = 4) THEN
          SELECT po.id_spo, po.id_spt, pt.type_porder, po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD, po.amount, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent AND nc.flag_n_contragent = 0
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
            WHERE po.id_spo = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT po.id_spo, po.id_spt, pt.type_porder, po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.VIDVALD, po.amount, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent AND nc.flag_n_contragent = 0  
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc
            WHERE  nc.name_contragent LIKE CONCAT('%',in_name,'%')    
            ORDER BY po.id_spt ASC;
        END IF;
        IF (in_code > -1 ) THEN
            SELECT po.id_spo, po.id_spt, pt.type_porder, po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.VIDVALD, po.amount, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent AND nc.flag_n_contragent = 0   
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
            WHERE nc.code_contragent LIKE CONCAT('%',in_code,'%') AND nc.name_n_contragent LIKE CONCAT('%',in_name,'%') 
            ORDER BY po.id_spt ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT pt.id_spt, pt.type_porder, pt.id_tbacc FROM sl_porder_types pt ORDER BY pt.id_spt ASC;
     END IF;

     IF (comprator = 7) THEN
        IF (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5) THEN 
            SELECT nb.id_nbc, nb.name_nbc, nb.branch_nbc, nb.address_nbc, nb.account_nbc, nb.bic_nbc, nb.id_n_money, nm.cod_lat_n_money  
            FROM n_baccount nb
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = nb.id_n_money 
            WHERE nb.id_tbacc = 1 
            ORDER BY nb.id_nbc ASC;
        END IF;
        IF (in_SOT = 3 OR in_SOT = 4) THEN 
            SELECT nb.id_nbc, nb.name_nbc, nb.branch_nbc, nb.address_nbc, nb.account_nbc, nb.bic_nbc, nb.id_n_money, nm.cod_lat_n_money 
            FROM n_baccount nb
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = nb.id_n_money 
            WHERE nb.id_tbacc = 2 
            ORDER BY nb.id_nbc ASC;
        END IF;
     END IF;

     IF (comprator = 8) THEN
        SELECT nc.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
        nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD 
        FROM n_contragent nc 
        WHERE nc.flag_n_contragent = 0 
        ORDER BY nc.id_contragent ASC;
     END IF;

     IF (comprator = 9) THEN
        SELECT tb.id_tbacc, tb.name_tbacc FROM n_type_bacc tb ORDER BY tb.id_tbacc ASC;
     END IF;

     IF (comprator = 10) THEN
        SELECT MAX(po.id_spo) FROM sl_paying_orders po;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id_n_money, nm.cod_lat_n_money FROM n_money nm ORDER BY nm.id_n_money ASC;
     END IF;

     IF (comprator = 12) THEN 
        SELECT p.id_ls_n_person, p.code_ls_n_person, p.name_ls_n_person, p.egn_ls_n_person FROM ls_n_person p 
            ORDER BY p.id_ls_n_person ASC;
     END IF;

     IF (comprator = 13) THEN
        SELECT ta.id_spt FROM sl_porder_types ta WHERE ta.type_porder = in_SOTN;
     END IF;


     IF (comprator = 14) THEN
        IF (in_code = -1 AND (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5)) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMER, cn.BICR, cn.IBANR, cn.VIDVALR  
                FROM n_contragent cn WHERE cn.flag_n_contragent = 0 
                ORDER BY cn.id_contragent ASC;
        END IF;
        IF (in_code > -1 AND (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5)) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMER, cn.BICR, cn.IBANR, cn.VIDVALR  
                FROM n_contragent cn
                WHERE cn.code_contragent LIKE CONCAT('%',in_code,'%') AND cn.flag_n_contragent = 0 
                ORDER BY cn.id_contragent ASC;
        END IF;
        IF (in_code = -1 AND (in_SOT = 3 OR in_SOT = 4)) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMED, cn.BICD, cn.IBAND, cn.VIDVALD  
                FROM n_contragent cn WHERE cn.flag_n_contragent = 0 
                ORDER BY cn.id_contragent ASC;
        END IF;
        IF (in_code > -1 AND (in_SOT = 3 OR in_SOT = 4)) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMED, cn.BICD, cn.IBAND, cn.VIDVALD  
                FROM n_contragent cn
                WHERE cn.code_contragent LIKE CONCAT('%',in_code,'%') AND cn.flag_n_contragent = 0  
                ORDER BY cn.id_contragent ASC;
        END IF;
     END IF;

     IF (comprator = 15) THEN
        SELECT p.id_ls_n_person, p.name_ls_n_person FROM ls_n_person p
            WHERE p.name_ls_n_person LIKE CONCAT('%',in_pname,'%')
            ORDER BY p.name_ls_n_person ASC;
     END IF;

     IF (comprator = 16) THEN
        IF (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMER, cn.BICR, cn.IBANR, cn.VIDVALR  
                FROM n_contragent cn 
                WHERE cn.code_contragent = in_code AND cn.flag_n_contragent = 0;
        END IF;
        IF (in_SOT = 3 OR in_SOT = 4) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMED, cn.BICD, cn.IBAND, cn.VIDVALD  
                FROM n_contragent cn 
                WHERE cn.code_contragent = in_code AND cn.flag_n_contragent = 0;
        END IF;
     END IF;

     IF (comprator = 17) THEN
        SELECT p.id_ls_n_person, p.name_ls_n_person FROM ls_n_person p
            WHERE p.name_ls_n_person = in_pname;
     END IF;

     IF (comprator = 18) THEN
        IF (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMER, cn.BICR, cn.IBANR, cn.VIDVALR  
                FROM n_contragent cn
                WHERE cn.id_contragent = in_id AND cn.flag_n_contragent = 0;
        END IF;
        IF (in_SOT = 3 OR in_SOT = 4) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMED, cn.BICD, cn.IBAND, cn.VIDVALD  
                FROM n_contragent cn
                WHERE cn.id_contragent = in_id AND cn.flag_n_contragent = 0;
        END IF;
     END IF;

     IF (comprator = 19) THEN
        SELECT p.id_ls_n_person, p.name_ls_n_person FROM ls_n_person p
            WHERE p.id_ls_n_person = in_id;
     END IF;

     IF (comprator = 20) THEN
        SELECT nb.id_nbc, nb.name_nbc, nb.branch_nbc, nb.address_nbc, nb.account_nbc, nb.bic_nbc, nb.id_n_money, nm.cod_lat_n_money  
            FROM n_baccount nb
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = nb.id_n_money 
            WHERE nb.id_nbc = in_id_nbc;
     END IF;
END $$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;