SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `mida`;

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

/*Table structure for table `kind_paying` */

DROP TABLE IF EXISTS `kind_paying`;

CREATE TABLE `kind_paying` (
  `id_kp` int(10) unsigned NOT NULL auto_increment,
  `name_kp` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id_kp`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `kind_paying` */

insert into `kind_paying` (`id_kp`,`name_kp`) values (1,'ОТЛОЖЕНО');
insert into `kind_paying` (`id_kp`,`name_kp`) values (2,'БРОЙ');
insert into `kind_paying` (`id_kp`,`name_kp`) values (3,'БАНКА');
insert into `kind_paying` (`id_kp`,`name_kp`) values (4,'ЧАСТИЧНО');

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

/*Table structure for table `n_contragent` */

DROP TABLE IF EXISTS `n_contragent`;

CREATE TABLE `n_contragent` (
  `id_contragent` int(11) NOT NULL auto_increment,
  `code_contragent` int(11) NOT NULL default '0',
  `name_n_contragent` varchar(45) NOT NULL default 'Няма данни',
  `bul_n_contragent` varchar(20) NOT NULL default '0000000001',
  `dan_n_contragent` varchar(20) NOT NULL default '0000000000',
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

/*Table structure for table `n_country` */

DROP TABLE IF EXISTS `n_country`;

CREATE TABLE `n_country` (
  `id_n_country` int(11) NOT NULL auto_increment,
  `code_n_country` int(11) default NULL,
  `name_n_country` varchar(30) default NULL,
  PRIMARY KEY  (`id_n_country`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_country` */

insert into `n_country` (`id_n_country`,`code_n_country`,`name_n_country`) values (1,1,'България');
insert into `n_country` (`id_n_country`,`code_n_country`,`name_n_country`) values (3,5,'САЩ');
insert into `n_country` (`id_n_country`,`code_n_country`,`name_n_country`) values (18,15,'Русия');

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

/*Table structure for table `n_mitprod` */

DROP TABLE IF EXISTS `n_mitprod`;

CREATE TABLE `n_mitprod` (
  `id_n_mitprod` int(11) NOT NULL auto_increment,
  `code_n_mitprod` varchar(20) NOT NULL,
  `name_n_mitprod` varchar(250) NOT NULL,
  PRIMARY KEY  (`id_n_mitprod`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='';

/*Data for the table `n_mitprod` */

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

insert into `n_money` (`id_n_money`,`cod_n_money`,`cod_lat_n_money`,`name_n_money`,`comments_n_money`) values (1,1,'BGN','Лев','Парична единица на Република България');
insert into `n_money` (`id_n_money`,`cod_n_money`,`cod_lat_n_money`,`name_n_money`,`comments_n_money`) values (2,3,'USD','Щатски долар','Международна конвертитуема валута. Парична единица на САЩ');
insert into `n_money` (`id_n_money`,`cod_n_money`,`cod_lat_n_money`,`name_n_money`,`comments_n_money`) values (3,2,'EUR','Евро','Парична единица на Европейският Съюз');
insert into `n_money` (`id_n_money`,`cod_n_money`,`cod_lat_n_money`,`name_n_money`,`comments_n_money`) values (4,5,'JPY','Йена','Парична единица на Япония');
insert into `n_money` (`id_n_money`,`cod_n_money`,`cod_lat_n_money`,`name_n_money`,`comments_n_money`) values (5,4,'GBP','Паунд','Британска лира. Парична единица на Великобритания');
insert into `n_money` (`id_n_money`,`cod_n_money`,`cod_lat_n_money`,`name_n_money`,`comments_n_money`) values (6,19,'SEK','Шведска крона','Парична единица на Кралство Швеция');
insert into `n_money` (`id_n_money`,`cod_n_money`,`cod_lat_n_money`,`name_n_money`,`comments_n_money`) values (7,6,'CHF','Швейцарски франк','Парична единица на Швейцария');

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

insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1,4645,'АБЛАНИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2,5574,'АБЛАНИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3,2932,'АБЛАНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4,9407,'АБРИТ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5,6797,'АВРАМОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (6,2795,'АВРАМОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (7,9135,'АВРЕН',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (8,6930,'АВРЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (9,5431,'АГАТОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (10,5350,'АЗМАНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (11,7538,'АЙДЕМИР',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (12,6639,'АЙРОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (13,8500,'АЙТОС',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (14,4483,'АКАНДЖИЕВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (15,3727,'АКАЦИЕВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (16,9154,'АКСАКОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (17,4984,'АЛАМОВЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (18,6850,'АЛБАНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (19,9620,'АЛБЕНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (20,7752,'АЛВАНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (21,2222,'АЛДОМИРОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (22,4411,'АЛЕКО КОНСТАНТИНОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (23,7555,'АЛЕКОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (24,5288,'АЛЕКОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (25,9404,'АЛЕКСАНДРИЯ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (26,4656,'АЛЕКСАНДРОВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (27,5560,'АЛЕКСАНДРОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (28,6154,'АЛЕКСАНДРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (29,8211,'АЛЕКСАНДРОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (30,5289,'АЛЕКСАНДРОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (31,9829,'АЛЕКСАНДРОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (32,8653,'АЛЕКСАНДРОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (33,7761,'АЛЕКСАНДРОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (34,6351,'АЛЕКСАНДРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (35,9565,'АЛЕКСАНДЪР СТАМБОЛИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (36,4621,'АЛЕНДАРОВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (37,4787,'АЛИГОВСКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (38,2019,'АЛИНО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (39,3251,'АЛТИМИР',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (40,7570,'АЛФАТАР',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (41,9496,'АЛЦЕК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (42,6373,'АНГЕЛ ВОЙВОДА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (43,9483,'АНГЕЛАРИЙ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (44,5342,'АНГЕЛОВ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (45,2085,'АНГЕЛОВ ДОЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (46,4331,'АНЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (47,3776,'АНТИМОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (48,7628,'АНТИМОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (49,2089,'АНТОН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (50,7970,'АНТОНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (51,5094,'АПЛАЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (52,2128,'АПРИЛОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (53,6281,'АПРИЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (54,7864,'АПРИЛОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (55,5641,'АПРИЛЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (56,4445,'АПРИЛЦИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (57,5029,'АРБАНАСИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (58,4790,'АРДА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (59,6750,'АРДИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (60,2386,'АРЗАН',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (61,9246,'АРКОВНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (62,5347,'АРМЕНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (63,5363,'АРМЯНКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (64,6069,'АРНАУТИТО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (65,4922,'АРПАДЖИК',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (66,3770,'АРЧАР',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (67,6149,'АСЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (68,5738,'АСЕН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (69,4230,'АСЕНОВГРАД',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (70,8933,'АСЕНОВЕЦ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (71,5957,'АСЕНОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (72,5159,'АСЕНОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (73,8667,'АСЕНОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (74,5913,'АСЕНОВЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (75,9260,'АСПАРУХОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (76,8485,'АСПАРУХОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (77,5914,'АСПАРУХОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (78,3661,'АСПАРУХОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (79,8140,'АТИЯ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (80,8683,'АТОЛОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (81,6821,'АУСТА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (82,8217,'АХЕЛОЙ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (83,4128,'АХМАТОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (84,6761,'АХРЯНСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (85,8280,'АХТОПОЛ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (86,5632,'БАБА СТАНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (87,7861,'БАБА ТОНКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (88,4156,'БАБЕК',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (89,2683,'БАБИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (90,2668,'БАБИНСКА РЕКА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (91,5726,'БАБИНЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (92,2365,'БАБИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (93,4774,'БАБЛОН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (94,7068,'БАБОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (95,7573,'БАБУК',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (96,2784,'БАБЯК',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (97,5094,'БАГАЛЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (98,6749,'БАГРА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (99,2530,'БАГРЕНЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (100,6944,'БАГРИЛЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (101,6819,'БАГРЯНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (102,5093,'БАДЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (103,2676,'БАДИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (104,5441,'БАЕВА ЛИВАДА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (105,5304,'БАЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (106,5087,'БАЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (107,5095,'БАЖДАРИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (108,5861,'БАЙКАЛ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (109,2427,'БАЙКАЛСКО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (110,9767,'БАЙКОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (111,2133,'БАЙЛОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (112,6771,'БАЙЧЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (113,6698,'БАКАЛИТЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (114,2295,'БАКЬОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (115,6816,'БАЛАБАНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (116,5615,'БАЛАБАНСКА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (117,8471,'БАЛАБАНЧЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (118,5370,'БАЛАЛЕЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (119,5301,'БАЛАНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (120,2680,'БАЛАНОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (121,5064,'БАЛВАН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (122,5388,'БАЛВАНЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (123,2948,'БАЛДЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (124,3797,'БАЛЕЙ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (125,9485,'БАЛИК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (126,5343,'БАЛИНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (127,6363,'БАЛКАН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (128,4245,'БАЛКАН МАХАЛА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (129,5634,'БАЛКАНЕЦ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (130,7265,'БАЛКАНСКИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (131,9549,'БАЛКАНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (132,5162,'БАЛКАНЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (133,5081,'БАЛУЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (134,9600,'БАЛЧИК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (135,1217,'БАЛША',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (136,2060,'БАЛЬОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (137,3529,'БАЛЮВИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (138,5370,'БАНАРИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (139,5351,'БАНГЕЙЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (140,8125,'БАНЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (141,7167,'БАНИСКА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (142,4940,'БАНИТЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (143,3077,'БАНИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (144,2905,'БАНИЧАН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (145,2388,'БАНИЩЕ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (146,7997,'БАНКОВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (147,5300,'БАНКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (148,1320,'БАНКЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (149,2466,'БАНКЯ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (150,9144,'БАНОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (151,2770,'БАНСКО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (152,2060,'БАНЧОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (153,4360,'БАНЯ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (154,8239,'БАНЯ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (155,8914,'БАНЯ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (156,4523,'БАНЯ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (157,2778,'БАНЯ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (158,2634,'БАРАКОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (159,6910,'БАРАЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (160,4830,'БАРУТИН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (161,7071,'БАСАРБОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (162,2883,'БАСКАЛЦИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (163,8218,'БАТА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (164,4580,'БАТАК',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (165,5228,'БАТАК',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (166,2340,'БАТАНОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (167,7172,'БАТИН',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (168,7169,'БАТИШНИЦА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (169,9364,'БАТОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (170,5470,'БАТОШЕВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (171,2295,'БАТУЛИЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (172,5764,'БАТУЛЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (173,3068,'БАУРЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (174,2219,'БАХАЛИН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (175,5567,'БАХОВИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (176,5367,'БАХРЕЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (177,5948,'БАЦОВА МАХАЛА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (178,2769,'БАЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (179,4251,'БАЧКОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (180,6777,'БАШЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (181,7619,'БАЩИНО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (182,6669,'БАЩИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (183,6068,'БАЩИНО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (184,7745,'БАЯЧЕВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (185,9381,'БДИНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (186,5084,'БЕБРОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (187,5872,'БЕГЛЕЖ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (188,4166,'БЕГОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (189,2395,'БЕГУНОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (190,4359,'БЕГУНЦИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (191,4817,'БЕДЕН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (192,9924,'БЕДЖЕНЕ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (193,6716,'БЕДРОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (194,9567,'БЕЖАНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (195,5792,'БЕЖАНОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (196,9637,'БЕЗВОДИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (197,6718,'БЕЗВОДНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (198,2236,'БЕЗДЕН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (199,3454,'БЕЗДЕНИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (200,9480,'БЕЗМЕР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (201,8637,'БЕЗМЕР',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (202,5094,'БЕЙКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (203,5673,'БЕКЛЕМЕТО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (204,5300,'БЕКРИИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (205,2793,'БЕЛ КАМЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (206,3965,'БЕЛА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (207,3731,'БЕЛА РАДА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (208,2881,'БЕЛАСИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (209,4124,'БЕЛАЩИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (210,9690,'БЕЛГУН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (211,4738,'БЕЛЕВ ДОЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (212,2800,'БЕЛЕВЕХЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (213,8345,'БЕЛЕВРЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (214,2085,'БЕЛЕГА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (215,5930,'БЕЛЕНЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (216,5783,'БЕЛЕНЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (217,3441,'БЕЛИ БРЕГ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (218,3447,'БЕЛИ БРОД',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (219,6262,'БЕЛИ БРЯГ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (220,6702,'БЕЛИ ВИР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (221,6590,'БЕЛИ ДОЛ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (222,3040,'БЕЛИ ИЗВОР',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (223,2011,'БЕЛИ ИСКЪР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (224,7293,'БЕЛИ ЛОМ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (225,5662,'БЕЛИ ОСЪМ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (226,6689,'БЕЛИ ПЛАСТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (227,8316,'БЕЛИЛА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (228,3462,'БЕЛИМЕЛ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (229,7432,'БЕЛИНЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (230,2780,'БЕЛИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (231,2062,'БЕЛИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (232,4242,'БЕЛИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (233,6557,'БЕЛИЦА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (234,5363,'БЕЛИЦА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (235,7648,'БЕЛИЦА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (236,5628,'БЕЛИШ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (237,2709,'БЕЛО ПОЛЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (238,3961,'БЕЛО ПОЛЕ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (239,7321,'БЕЛОВЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (240,4182,'БЕЛОВИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (241,4470,'БЕЛОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (242,9230,'БЕЛОГРАДЕЦ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (243,3900,'БЕЛОГРАДЧИК',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (244,8219,'БЕЛОДОЛ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (245,4130,'БЕЛОЗЕМ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (246,9801,'БЕЛОКОПИТОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (247,7917,'БЕЛОМОРЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (248,5340,'БЕЛОМЪЖИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (249,6588,'БЕЛОПОЛЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (250,6584,'БЕЛОПОЛЯНЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (251,2132,'БЕЛОПОПЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (252,9178,'БЕЛОСЛАВ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (253,3499,'БЕЛОТИНЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (254,7138,'БЕЛЦОВ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (255,5035,'БЕЛЧЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (256,2025,'БЕЛЧИН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (257,2024,'БЕЛЧИНСКИ БАНИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (258,2824,'БЕЛЬОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (259,5031,'БЕЛЯКОВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (260,7134,'БЕЛЯНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (261,9133,'БЕНКОВСКИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (262,9380,'БЕНКОВСКИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (263,6865,'БЕНКОВСКИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (264,4201,'БЕНКОВСКИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (265,2076,'БЕНКОВСКИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (266,6055,'БЕНКОВСКИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (267,2488,'БЕРАЙНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (268,2212,'БЕРЕНДЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (269,2435,'БЕРЕНДЕ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (270,2212,'БЕРЕНДЕ ИЗВОР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (271,5438,'БЕРИЕВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (272,3500,'БЕРКОВИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (273,7857,'БЕРКОВСКИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (274,5093,'БЕРКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (275,8448,'БЕРОНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (276,2587,'БЕРСИН',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (277,2934,'БЕСЛЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (278,6698,'БЕСНУРКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (279,5849,'БИВОЛАРЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (280,6837,'БИВОЛЯНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (281,5035,'БИЖОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (282,5350,'БИЖОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (283,8885,'БИКОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (284,2383,'БИЛИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (285,8551,'БИЛКА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (286,5370,'БИЛКИНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (287,9691,'БИЛО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (288,8846,'БИЛО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (289,4789,'БИЛЯНСКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (290,8855,'БИНКОС',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (291,4650,'БИРКОВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (292,6470,'БИСЕР',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (293,7334,'БИСЕРЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (294,7557,'БИСТРА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (295,7777,'БИСТРА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (296,7121,'БИСТРЕНЦИ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (297,9412,'БИСТРЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (298,8334,'БИСТРЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (299,3527,'БИСТРИЛИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (300,2724,'БИСТРИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (301,2644,'БИСТРИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (302,1444,'БИСТРИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (303,6769,'БИСТРОГЛЕД',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (304,3488,'БЛАГОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (305,9812,'БЛАГОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (306,2700,'БЛАГОЕВГРАД',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (307,7275,'БЛАГОЕВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (308,5178,'БЛАГОЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (309,6955,'БЛАГУН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (310,2678,'БЛАЖИЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (311,2548,'БЛАТЕЦ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (312,8878,'БЛАТЕЦ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (313,2441,'БЛАТЕШНИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (314,2617,'БЛАТИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (315,4537,'БЛАТНИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (316,2657,'БЛАТО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (317,2941,'БЛАТСКА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (318,6742,'БЛЕНИКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (319,8365,'БЛИЗНАК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (320,9132,'БЛИЗНАЦИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (321,9787,'БЛИЗНАЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (322,8896,'БЛИЗНЕЦ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (323,9240,'БЛЪСКОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (324,5078,'БЛЪСКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (325,5453,'БОАЗЪТ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (326,5300,'БОБЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (327,2567,'БОБЕШИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (328,2670,'БОБОВ ДОЛ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (329,9616,'БОБОВЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (330,2454,'БОБОРАЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (331,2660,'БОБОШЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (332,2270,'БОВ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (333,5421,'БОГАТОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (334,9348,'БОГДАН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (335,4343,'БОГДАН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (336,4115,'БОГДАНИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (337,2116,'БОГДАНЛИЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (338,2341,'БОГДАНОВ ДОЛ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (339,8948,'БОГДАНОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (340,8337,'БОГДАНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (341,2060,'БОГДАНОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (342,5084,'БОГДАНСКО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (343,7611,'БОГДАНЦИ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (344,7449,'БОГДАНЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (345,5301,'БОГДАНЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (346,2467,'БОГОИНА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (347,2931,'БОГОЛИН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (348,6460,'БОГОМИЛ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (349,6065,'БОГОМИЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (350,7458,'БОГОМИЛЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (351,7997,'БОГОМОЛСКО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (352,7542,'БОГОРОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (353,8687,'БОГОРОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (354,2509,'БОГОСЛОВ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (355,4855,'БОГУТЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (356,2235,'БОГЬОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (357,3128,'БОДЕНЕЦ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (358,6446,'БОДРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (359,2086,'БОДЯТ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (360,4964,'БОЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (361,2066,'БОЕРИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (362,6744,'БОЖАК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (363,9475,'БОЖАН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (364,9677,'БОЖАНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (365,2811,'БОЖДОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (366,8844,'БОЖЕВЦИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (367,2157,'БОЖЕНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (368,5349,'БОЖЕНЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (369,7089,'БОЖИЧЕН',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (370,9656,'БОЖУРЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (371,5848,'БОЖУРИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (372,2227,'БОЖУРИЩЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (373,7765,'БОЖУРКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (374,5926,'БОЖУРЛУК',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (375,9874,'БОЖУРОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (376,9368,'БОЖУРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (377,7335,'БОЖУРОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (378,6704,'БОЖУРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (379,8872,'БОЗАДЖИИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (380,9273,'БОЗВЕЛИЙСКО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (381,6269,'БОЗДУГАНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (382,4654,'БОЗЬОВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (383,7683,'БОИЛ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (384,2181,'БОЙКОВЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (385,4103,'БОЙКОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (386,5080,'БОЙКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (387,6958,'БОЙНИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (388,3840,'БОЙНИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (389,6730,'БОЙНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (390,5307,'БОЙНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (391,5050,'БОЙЧЕВИ КОЛИБИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (392,5309,'БОЙЧЕТА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (393,3430,'БОЙЧИНОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (394,5038,'БОЙЧОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (395,3517,'БОКИЛОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (396,5340,'БОЛТАТА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (397,4132,'БОЛЯРИНО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (398,8720,'БОЛЯРОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (399,6474,'БОЛЯРСКИ ИЗВОР',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (400,8631,'БОЛЯРСКО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (401,9124,'БОЛЯРЦИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (402,6681,'БОЛЯРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (403,4114,'БОЛЯРЦИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (404,9472,'БОНЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (405,4233,'БОР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (406,4144,'БОРЕЦ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (407,4961,'БОРИЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (408,2064,'БОРИКА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (409,4926,'БОРИКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (410,5335,'БОРИКИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (411,4762,'БОРИКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (412,3838,'БОРИЛОВЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (413,6046,'БОРИЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (414,5672,'БОРИМА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (415,4464,'БОРИМЕЧКОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (416,4824,'БОРИНО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (417,4905,'БОРИНОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (418,8999,'БОРИНЦИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (419,5889,'БОРИСЛАВ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (420,6478,'БОРИСЛАВЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (421,8731,'БОРИСОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (422,7064,'БОРИСОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (423,2407,'БОРНАРЕВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (424,8898,'БОРОВ ДОЛ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (425,3240,'БОРОВАН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (426,2626,'БОРОВЕЦ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (427,2010,'БОРОВЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (428,4923,'БОРОВИНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (429,6790,'БОРОВИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (430,3955,'БОРОВИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (431,2884,'БОРОВИЧЕНЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (432,7174,'БОРОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (433,2904,'БОРОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (434,4243,'БОРОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (435,6070,'БОРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (436,6698,'БОРОВСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (437,3528,'БОРОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (438,5333,'БОРСКОТО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (439,6187,'БОРУЩИЦА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (440,9752,'БОРЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (441,9255,'БОРЯНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (442,5084,'БОСЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (443,6697,'БОСИЛИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (444,4945,'БОСИЛКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (445,8446,'БОСИЛКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (446,7128,'БОСИЛКОВЦИ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (447,7533,'БОСНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (448,2345,'БОСНЕК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (449,7914,'БОСТАН',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (450,3952,'БОСТАНИТЕ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (451,6716,'БОСТАНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (452,4745,'БОСТИНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (453,2140,'БОТЕВГРАД',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (454,9159,'БОТЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (455,3746,'БОТЕВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (456,3634,'БОТЕВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (457,8638,'БОТЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (458,3353,'БОТЕВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (459,7125,'БОТРОВ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (460,3046,'БОТУНЯ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (461,6589,'БОТУРЧЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (462,2483,'БОХОВА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (463,5891,'БОХОТ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (464,5035,'БОЧКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (465,4481,'БОШУЛЯ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (466,8640,'БОЯДЖИК',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (467,9771,'БОЯН',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (468,6374,'БОЯН БОТЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (469,9147,'БОЯНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (470,3832,'БОЯНОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (471,8730,'БОЯНОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (472,5041,'БОЯНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (473,4246,'БОЯНЦИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (474,7568,'БРАДВАРИ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (475,7855,'БРАКНИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (476,2251,'БРАКЬОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (477,4109,'БРАНИПОЛЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (478,6463,'БРАНИЦА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (479,9967,'БРАНИЧЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (480,9361,'БРАНИЩЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (481,5041,'БРАНКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (482,3824,'БРАНКОВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (483,8983,'БРАТАН',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (484,4412,'БРАТАНИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (485,8111,'БРАТОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (486,7764,'БРАТОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (487,2222,'БРАТУШКОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (488,6250,'БРАТЯ ДАСКАЛОВИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (489,6057,'БРАТЯ КУНЧЕВИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (490,4579,'БРАЦИГОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (491,5862,'БРЕГАРЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (492,3790,'БРЕГОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (493,2750,'БРЕЖАНИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (494,5360,'БРЕЖНИЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (495,4959,'БРЕЗА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (496,4849,'БРЕЗЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (497,2278,'БРЕЗЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (498,6792,'БРЕЗЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (499,2360,'БРЕЗНИК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (500,2972,'БРЕЗНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (501,2385,'БРЕЗНИШКИ ИЗВОР',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (502,2292,'БРЕЗОВДОЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (503,4160,'БРЕЗОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (504,5083,'БРЕЗОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (505,5721,'БРЕЗОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (506,3260,'БРЕНИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (507,7649,'БРЕНИЦА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (508,5971,'БРЕСТ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (509,2558,'БРЕСТ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (510,9290,'БРЕСТАК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (511,2072,'БРЕСТАКА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (512,5992,'БРЕСТЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (513,4107,'БРЕСТНИК',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (514,9484,'БРЕСТНИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (515,5761,'БРЕСТНИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (516,6194,'БРЕСТОВА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (517,7331,'БРЕСТОВЕНЕ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (518,5884,'БРЕСТОВЕЦ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (519,7177,'БРЕСТОВИЦА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (520,4224,'БРЕСТОВИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (521,5551,'БРЕСТОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (522,2735,'БРЕСТОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (523,6442,'БРОД',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (524,8282,'БРОДИЛОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (525,6737,'БРОШ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (526,3680,'БРУСАРЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (527,6488,'БРУСЕВЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (528,2185,'БРУСЕН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (529,3126,'БРУСЕН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (530,6595,'БРУСИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (531,2372,'БРУСНИК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (532,5342,'БРЪНЕЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (533,5081,'БРЪЧКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (534,7069,'БРЪШЛЕН',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (535,8357,'БРЪШЛЯН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (536,5844,'БРЪШЛЯНИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (537,4821,'БРЪЩЕН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (538,6929,'БРЯГОВЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (539,5152,'БРЯГОВИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (540,4294,'БРЯГОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (541,6355,'БРЯГОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (542,6434,'БРЯСТ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (543,8113,'БРЯСТОВЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (544,9647,'БРЯСТОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (545,6345,'БРЯСТОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (546,8935,'БРЯСТОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (547,6582,'БУБИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (548,2844,'БУДИЛЦИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (549,6159,'БУЗОВГРАД',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (550,2060,'БУЗЯКОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (551,9756,'БУЙНОВИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (552,4812,'БУЙНОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (553,7753,'БУЙНОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (554,5097,'БУЙНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (555,6966,'БУК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (556,7996,'БУКАК',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (557,4763,'БУКАТА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (558,4782,'БУКАЦИТЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (559,4935,'БУКОВА ПОЛЯНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (560,3678,'БУКОВЕЦ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (561,3242,'БУКОВЕЦ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (562,5063,'БУКОВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (563,3762,'БУКОВЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (564,2293,'БУКОВЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (565,5839,'БУКОВЛЪК',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (566,2915,'БУКОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (567,4930,'БУКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (568,4295,'БУКОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (569,2253,'БУКОРОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (570,9115,'БУЛАИР',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (571,2539,'БУНОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (572,2074,'БУНОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (573,2792,'БУНЦЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (574,2628,'БУРАНОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (575,8000,'БУРГАС',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (576,8124,'БУРГАСКИ МИН. БАНИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (577,4998,'БУРЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (578,5375,'БУРЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (579,2486,'БУСИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (580,1520,'БУСМАНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (581,3326,'БУТАН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (582,5232,'БУТОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (583,4652,'БУТРЕВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (584,2473,'БУТРОИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (585,1830,'БУХОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (586,7757,'БУХОВЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (587,2236,'БУЧИН ПРОХОД',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (588,2742,'БУЧИНО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (589,5380,'БУЧУКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (590,6058,'БЪДЕЩЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (591,3635,'БЪЗОВЕЦ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (592,7168,'БЪЗОВЕЦ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (593,2555,'БЪЗОВИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (594,7077,'БЪЗЪН',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (595,7944,'БЪЛГАРАНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (596,9660,'БЪЛГАРЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (597,5923,'БЪЛГАРЕНЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (598,5583,'БЪЛГАРЕНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (599,6274,'БЪЛГАРЕНЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (600,5441,'БЪЛГАРИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (601,8274,'БЪЛГАРИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (602,6460,'БЪЛГАРИН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (603,7544,'БЪЛГАРКА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (604,8110,'БЪЛГАРОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (605,6569,'БЪЛГАРСКА ПОЛЯНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (606,5733,'БЪЛГАРСКИ ИЗВОР',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (607,5284,'БЪЛГАРСКО СЛИВОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (608,2746,'БЪЛГАРЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (609,6186,'БЪНЗАРЕТО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (610,9117,'БЪРДАРЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (611,5360,'БЪРДАРИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (612,3259,'БЪРДАРСКИ ГЕРАН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (613,5365,'БЪРДЕНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (614,2060,'БЪРДО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (615,7448,'БЪРДОКВА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (616,6710,'БЪРЗА РЕКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (617,6884,'БЪРЗЕЯ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (618,3359,'БЪРЗИНА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (619,9274,'БЪРЗИЦА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (620,3520,'БЪРЗИЯ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (621,5877,'БЪРКАЧ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (622,3245,'БЪРКАЧЕВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (623,2222,'БЪРЛОЖНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (624,2255,'БЪРЛЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (625,4965,'БЪРЧЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (626,4527,'БЪТА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (627,4587,'БЯГА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (628,9824,'БЯЛ БРЯГ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (629,6770,'БЯЛ ИЗВОР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (630,6073,'БЯЛ ИЗВОР',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (631,8961,'БЯЛ КЛАДЕНЕЦ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (632,6377,'БЯЛ КЛАДЕНЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (633,9101,'БЯЛА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (634,7100,'БЯЛА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (635,8850,'БЯЛА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (636,5932,'БЯЛА ВОДА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (637,8361,'БЯЛА ВОДА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (638,8892,'БЯЛА ПАЛАНКА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (639,6662,'БЯЛА ПОЛЯНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (640,9882,'БЯЛА РЕКА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (641,4285,'БЯЛА РЕКА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (642,4966,'БЯЛА РЕКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (643,5237,'БЯЛА РЕКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (644,3200,'БЯЛА СЛАТИНА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (645,5220,'БЯЛА ЧЕРКВА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (646,6590,'БЯЛГРАДЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (647,6656,'БЯЛКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (648,5344,'БЯЛКОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (649,5084,'БЯЛКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (650,6054,'БЯЛО ПОЛЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (651,7422,'ВАЗОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (652,2060,'ВАКАРЕЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (653,9672,'ВАКЛИНО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (654,2957,'ВАКЛИНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (655,2590,'ВАКСЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (656,5462,'ВАЛЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (657,5099,'ВАЛЕТО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (658,5911,'ВАРАНА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (659,4492,'ВАРВАРА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (660,8278,'ВАРВАРА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (661,5281,'ВАРДИМ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (662,7780,'ВАРДУН',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (663,9000,'ВАРНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (664,7638,'ВАРНЕНЦИ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (665,6536,'ВАРНИК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (666,8338,'ВАРОВНИК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (667,9814,'ВАСИЛ ДРУМЕВ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (668,7571,'ВАСИЛ ЛЕВСКИ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (669,4363,'ВАСИЛ ЛЕВСКИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (670,6068,'ВАСИЛ ЛЕВСКИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (671,7749,'ВАСИЛ ЛЕВСКИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (672,9543,'ВАСИЛЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (673,5576,'ВАСИЛКОВСКА МАХАЛА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (674,3658,'ВАСИЛОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (675,2205,'ВАСИЛОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (676,5723,'ВАСИЛЬОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (677,6556,'ВАСКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (678,4364,'ВЕДРАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (679,9355,'ВЕДРИНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (680,8447,'ВЕДРОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (681,8457,'ВЕЗЕНКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (682,9941,'ВЕКИЛСКИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (683,5351,'ВЕЛЕНЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (684,6727,'ВЕЛЕШАНИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (685,8271,'ВЕЛИКА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (686,6431,'ВЕЛИКАН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (687,6845,'ВЕЛИКДЕНЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (688,7916,'ВЕЛИКДЕНЧЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (689,9850,'ВЕЛИКИ ПРЕСЛАВ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (690,5000,'ВЕЛИКО ТЪРНОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (691,9547,'ВЕЛИКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (692,6282,'ВЕЛИКОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (693,7964,'ВЕЛИКОВЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (694,4600,'ВЕЛИНГРАД',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (695,9793,'ВЕЛИНО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (696,2476,'ВЕЛИНОВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (697,8458,'ВЕЛИСЛАВ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (698,7941,'ВЕЛИЧКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (699,9263,'ВЕЛИЧКОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (700,4413,'ВЕЛИЧКОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (701,5365,'ВЕЛКОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (702,2375,'ВЕЛКОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (703,5343,'ВЕЛКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (704,5097,'ВЕЛКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (705,5643,'ВЕЛЧЕВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (706,5032,'ВЕЛЧЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (707,5367,'ВЕЛЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (708,7985,'ВЕЛЬОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (709,5070,'ВЕЛЮВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (710,2849,'ВЕЛЮЩЕЦ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (711,9119,'ВЕНЕЛИН',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (712,9751,'ВЕНЕЦ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (713,8473,'ВЕНЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (714,6078,'ВЕНЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (715,2066,'ВЕНКОВЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (716,9219,'ВЕНЧАН',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (717,6244,'ВЕРЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (718,7957,'ВЕРЕНЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (719,2063,'ВЕРИНСКО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (720,6710,'ВЕРСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (721,7327,'ВЕСЕЛЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (722,7942,'ВЕСЕЛЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (723,8145,'ВЕСЕЛИЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (724,5094,'ВЕСЕЛИНА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (725,7289,'ВЕСЕЛИНА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (726,9828,'ВЕСЕЛИНОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (727,8632,'ВЕСЕЛИНОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (728,3053,'ВЕСЛЕЦ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (729,7080,'ВЕТОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (730,8127,'ВЕТРЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (731,6175,'ВЕТРЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (732,2579,'ВЕТРЕН',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (733,4480,'ВЕТРЕН',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (734,7588,'ВЕТРЕН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (735,4493,'ВЕТРЕН ДОЛ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (736,9220,'ВЕТРИНО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (737,5066,'ВЕТРИНЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (738,9809,'ВЕТРИЩЕ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (739,5300,'ВЕТРОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (740,6591,'ВЕТРУШКА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (741,4924,'ВЕХТИНО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (742,9822,'ВЕХТОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (743,3918,'ВЕЩИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (744,6156,'ВИДЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (745,3700,'ВИДИН',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (746,8671,'ВИДИНЦИ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (747,3478,'ВИДЛИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (748,9668,'ВИДНО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (749,2495,'ВИДРАР',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (750,2166,'ВИДРАРЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (751,2364,'ВИДРИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (752,4748,'ВИЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (753,8369,'ВИЗИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (754,5035,'ВИЛАРЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (755,3773,'ВИНАРОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (756,6238,'ВИНАРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (757,8118,'ВИНАРСКО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (758,6375,'ВИНЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (759,4284,'ВИНИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (760,3482,'ВИНИЩЕ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (761,5171,'ВИНОГРАД',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (762,4487,'ВИНОГРАДЕЦ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (763,2822,'ВИНОГРАДИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (764,3455,'ВИРОВЕ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (765,3057,'ВИРОВСКО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (766,6591,'ВИС',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (767,2358,'ВИСКЯР',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (768,7955,'ВИСОК',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (769,6744,'ВИСОКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (770,2665,'ВИСОКА МОГИЛА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (771,6678,'ВИСОКА ПОЛЯНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (772,9765,'ВИСОКА ПОЛЯНА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (773,4921,'ВИСОКИТЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (774,5098,'ВИСОКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (775,2354,'ВИТАНОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (776,4975,'ВИТИНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (777,2800,'ВИХРЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (778,9563,'ВИЧЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (779,2213,'ВИШАН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (780,6646,'ВИШЕГРАД',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (781,2895,'ВИШЛЕНЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (782,8562,'ВИШНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (783,4939,'ВИШНЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (784,5239,'ВИШОВГРАД',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (785,1641,'ВЛАДАЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (786,2411,'ВЛАДИМИР',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (787,3440,'ВЛАДИМИРОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (788,9379,'ВЛАДИМИРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (789,6545,'ВЛАДИМИРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (790,7440,'ВЛАДИМИРОВЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (791,5563,'ВЛАДИНЯ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (792,5179,'ВЛАДИСЛАВ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (793,2215,'ВЛАДИСЛАВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (794,3748,'ВЛАДИЧЕНЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (795,2299,'ВЛАДО ТРИЧКОВ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (796,5365,'ВЛАДОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (797,5344,'ВЛАЙЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (798,5367,'ВЛАСАТИЛИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (799,3041,'ВЛАСАТИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (800,2841,'ВЛАХИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (801,4724,'ВЛАХОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (802,5349,'ВЛАХОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (803,4713,'ВОДАТА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (804,6709,'ВОДАЧ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (805,8750,'ВОДЕН',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (806,6412,'ВОДЕН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (807,4289,'ВОДЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (808,8693,'ВОДЕНИЧАНЕ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (809,6051,'ВОДЕНИЧАРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (810,6852,'ВОДЕНИЧАРСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (811,6382,'ВОДЕНЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (812,9141,'ВОДИЦА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (813,7851,'ВОДИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (814,3831,'ВОДНА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (815,4826,'ВОДНИ ПАД',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (816,7657,'ВОДНО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (817,5166,'ВОДНО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (818,3924,'ВОДНЯНЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (819,9495,'ВОДНЯНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (820,5061,'ВОДОЛЕЙ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (821,6716,'ВОЖДОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (822,4203,'ВОИСИЛ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (823,9958,'ВОЙВОДА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (824,6381,'ВОЙВОДЕНЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (825,9292,'ВОЙВОДИНО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (826,4135,'ВОЙВОДИНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (827,3332,'ВОЙВОДОВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (828,6353,'ВОЙВОДОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (829,4967,'ВОЙКОВА ЛЪКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (830,5045,'ВОЙНЕЖА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (831,8661,'ВОЙНИКА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (832,9473,'ВОЙНИКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (833,3734,'ВОЙНИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (834,3481,'ВОЙНИЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (835,5350,'ВОЙНИЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (836,5458,'ВОЙНИШКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (837,7551,'ВОЙНОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (838,6698,'ВОЙНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (839,4347,'ВОЙНЯГОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (840,1223,'ВОЙНЯГОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (841,7670,'ВОКИЛ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (842,2886,'ВОЛНО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (843,6231,'ВОЛОВАРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (844,6633,'ВОЛОВАРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (845,7175,'ВОЛОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (846,1346,'ВОЛУЯК',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (847,5035,'ВОНЕЩА ВОДА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (848,5660,'ВРАБЕВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (849,5307,'ВРАБЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (850,2470,'ВРАБЧА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (851,2834,'ВРАКУПОВИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (852,4649,'ВРАНЕНЦИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (853,7940,'ВРАНИ КОН',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (854,5347,'ВРАНИЛОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (855,9663,'ВРАНИНО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (856,4906,'ВРАНИНЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (857,6912,'ВРАНСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (858,2830,'ВРАНЯ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (859,2445,'ВРАНЯ СТЕНА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (860,3248,'ВРАНЯК',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (861,4234,'ВРАТА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (862,9382,'ВРАТАРИТЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (863,8109,'ВРАТИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (864,2059,'ВРАТЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (865,2575,'ВРАТЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (866,3000,'ВРАЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (867,9345,'ВРАЧАНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (868,2151,'ВРАЧЕШ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (869,6832,'ВРЕЛО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (870,8560,'ВРЕСОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (871,3779,'ВРЪВ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (872,2254,'ВРЪДЛОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (873,4622,'ВСЕМИРЦИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (874,2485,'ВУКАН',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (875,2661,'ВУКОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (876,5953,'ВЪБЕЛ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (877,6313,'ВЪГЛАРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (878,5041,'ВЪГЛЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (879,9157,'ВЪГЛЕН',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (880,8851,'ВЪГЛЕН',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (881,6710,'ВЪЗЕЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (882,7643,'ВЪЛКАН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (883,5349,'ВЪЛКОВ ДОЛ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (884,6850,'ВЪЛКОВИЧ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (885,2807,'ВЪЛКОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (886,5365,'ВЪЛКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (887,2930,'ВЪЛКОСЕЛ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (888,9963,'ВЪЛНАРИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (889,8748,'ВЪЛЧА ПОЛЯНА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (890,4775,'ВЪЛЧАН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (891,4947,'ВЪЛЧАН ДОЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (892,6893,'ВЪЛЧАНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (893,8341,'ВЪЛЧАНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (894,6553,'ВЪЛЧЕ ПОЛЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (895,3650,'ВЪЛЧЕДРЪМ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (896,3851,'ВЪЛЧЕК',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (897,9280,'ВЪЛЧИ ДОЛ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (898,8723,'ВЪЛЧИ ИЗВОР',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (899,8443,'ВЪЛЧИН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (900,5890,'ВЪЛЧИТРЪН',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (901,5081,'ВЪЛЧОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (902,5086,'ВЪЛЧОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (903,3939,'ВЪРБА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (904,4920,'ВЪРБА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (905,2405,'ВЪРБА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (906,9781,'ВЪРБАК',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (907,4145,'ВЪРБЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (908,6873,'ВЪРБЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (909,6745,'ВЪРБЕНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (910,3147,'ВЪРБЕШНИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (911,4921,'ВЪРБИНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (912,7674,'ВЪРБИНО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (913,3264,'ВЪРБИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (914,9870,'ВЪРБИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (915,5128,'ВЪРБИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (916,6445,'ВЪРБИЦА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (917,5845,'ВЪРБИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (918,2248,'ВЪРБНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (919,5233,'ВЪРБОВКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (920,4710,'ВЪРБОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (921,6488,'ВЪРБОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (922,3951,'ВЪРБОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (923,3948,'ВЪРБОВЧЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (924,9943,'ВЪРБЯНЕ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (925,4907,'ВЪРГОВ ДОЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (926,5081,'ВЪРЗИЛКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (927,5191,'ВЪРЗУЛИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (928,6873,'ВЪРЛИ ДОЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (929,4989,'ВЪРЛИ ДОЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (930,2085,'ВЪРЛИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (931,5050,'ВЪРЛИНКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (932,4983,'ВЪРЛИНО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (933,8999,'ВЪРЛИЩЕ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (934,3752,'ВЪРТОП',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (935,2786,'ВЪРХАРИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (936,6814,'ВЪРХАРИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (937,3540,'ВЪРШЕЦ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (938,8157,'ВЪРШИЛО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (939,3265,'ГАБАРЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (940,6162,'ГАБАРЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (941,2215,'ГАБЕР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (942,9419,'ГАБЕР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (943,6482,'ГАБЕРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (944,8212,'ГАБЕРОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (945,2112,'ГАБРА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (946,5097,'ГАБРАКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (947,2898,'ГАБРЕНЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (948,2557,'ГАБРЕШЕВЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (949,4921,'ГАБРИНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (950,9779,'ГАБРИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (951,4795,'ГАБРИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (952,2392,'ГАБРОВ ДОЛ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (953,4467,'ГАБРОВИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (954,3453,'ГАБРОВНИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (955,2277,'ГАБРОВНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (956,2747,'ГАБРОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (957,5300,'ГАБРОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (958,6691,'ГАБРОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (959,5051,'ГАБРОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (960,8158,'ГАБЪР',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (961,9227,'ГАБЪРНИЦА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (962,5619,'ГАБЪРСКО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (963,8854,'ГАВРАИЛОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (964,3469,'ГАВРИЛ ГЕНОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (965,3525,'ГАГАНИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (966,7831,'ГАГОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (967,5367,'ГАЙДАРИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (968,5300,'ГАЙКИНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (969,2114,'ГАЙТАНЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (970,2924,'ГАЙТАНИНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (971,5345,'ГАЙТАНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (972,3753,'ГАЙТАНЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (973,5731,'ГАЛАТА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (974,3071,'ГАЛАТИН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (975,3250,'ГАЛИЧЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (976,4934,'ГАЛИЩЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (977,3342,'ГАЛОВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (978,5084,'ГАНЕВ ДОЛ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (979,5397,'ГАНЧОВЕЦ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (980,2271,'ГАРА БОВ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (981,7101,'ГАРА БЯЛА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (982,5120,'ГАРА ГОРНА ОРЯХОВИЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (983,2109,'ГАРА ЕЛИН ПЕЛИН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (984,8432,'ГАРА ЗАВЕТ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (985,5364,'ГАРА КРЪСТЕЦ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (986,2272,'ГАРА ЛАКАТНИК',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (987,3940,'ГАРА ОРЕШЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (988,4410,'ГАРА ПАЗАРДЖИК',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (989,6880,'ГАРА ПОДКОВА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (990,6517,'ГАРА СВИЛЕНГРАД',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (991,7272,'ГАРА СЕНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (992,6489,'ГАРА СИМЕОНОВГРАД',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (993,7737,'ГАРА ТЪРГОВИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (994,9780,'ГАРА ХИТРИНО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (995,3163,'ГАРА ЧЕРЕПИШ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (996,8604,'ГАРА ЯМБОЛ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (997,5345,'ГАРВАН',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (998,7589,'ГАРВАН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (999,6349,'ГАРВАНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1000,5041,'ГАШЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1001,2882,'ГЕГА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1002,4710,'ГЕЛА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1003,4444,'ГЕЛЕМЕНОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1004,6856,'ГЕНЕРАЛ ГЕШЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1005,8670,'ГЕНЕРАЛ ИНЗОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1006,9150,'ГЕНЕРАЛ КАНТАРДЖИЕВ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1007,9142,'ГЕНЕРАЛ КИСЕЛОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1008,9295,'ГЕНЕРАЛ КОЛЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1009,9373,'ГЕНЕРАЛ КОЛЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1010,3732,'ГЕНЕРАЛ МАРИНОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1011,2873,'ГЕНЕРАЛ ТОДОРОВ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1012,9500,'ГЕНЕРАЛ ТОШЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1013,8625,'ГЕНЕРАЛ ТОШЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1014,6523,'ГЕНЕРАЛОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1015,6635,'ГЕНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1016,5307,'ГЕНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1017,5301,'ГЕНЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1018,5350,'ГЕНЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1019,5397,'ГЕНЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1020,3470,'ГЕОРГИ ДАМЯНОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1021,6559,'ГЕОРГИ ДОБРЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1022,8869,'ГЕРГЕВЕЦ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1023,5345,'ГЕРГИНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1024,1186,'ГЕРМАН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1025,7219,'ГЕЦОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1026,5370,'ГЕША',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1027,9393,'ГЕШАНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1028,5970,'ГИГЕН',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1029,2393,'ГИГИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1030,2250,'ГИНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1031,2546,'ГИРЧЕВЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1032,6215,'ГИТА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1033,5985,'ГЛАВА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1034,6295,'ГЛАВАН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1035,7543,'ГЛАВАН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1036,3468,'ГЛАВАНОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1037,2480,'ГЛАВАНОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1038,9499,'ГЛАВАНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1039,4171,'ГЛАВАТАР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1040,6738,'ГЛАВАТАРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1041,3045,'ГЛАВАЦИ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1042,7630,'ГЛАВИНИЦА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1043,4409,'ГЛАВИНИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1044,7986,'ГЛАШАТАЙ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1045,5345,'ГЛЕДАЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1046,6263,'ГЛЕДАЧЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1047,6362,'ГЛЕДКА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1048,7879,'ГЛОГИНКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1049,4948,'ГЛОГИНО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1050,5080,'ГЛОГОВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1051,2463,'ГЛОГОВИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1052,5724,'ГЛОГОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1053,7294,'ГЛОДЖЕВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1054,3327,'ГЛОЖЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1055,5740,'ГЛОЖЕНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1056,6572,'ГЛУМОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1057,8429,'ГЛУМЧЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1058,5363,'ГЛУТНИЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1059,8866,'ГЛУФИШЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1060,6647,'ГЛУХАР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1061,5370,'ГЛУШКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1062,8879,'ГЛУШНИК',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1063,6590,'ГНЕЗДАРЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1064,6675,'ГНЯЗДОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1065,4453,'ГОВЕДАРЕ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1066,2020,'ГОВЕДАРЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1067,3474,'ГОВЕЖДА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1068,2240,'ГОДЕЧ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1069,2938,'ГОДЕШЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1070,2768,'ГОДЛЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1071,2366,'ГОЗ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1072,4791,'ГОЗДЕВИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1073,5392,'ГОЗДЕЙКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1074,2036,'ГОЛАК',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1075,2800,'ГОЛЕМ ЦАЛИМ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1076,2113,'ГОЛЕМА РАКОВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1077,2667,'ГОЛЕМА ФУЧА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1078,5070,'ГОЛЕМАНИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1079,5054,'ГОЛЕМАНИТЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1080,3839,'ГОЛЕМАНОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1081,6358,'ГОЛЕМАНЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1082,5370,'ГОЛЕМИ БЪЛГАРЕНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1083,5365,'ГОЛЕМИ СТАНЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1084,3063,'ГОЛЕМО БАБИНО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1085,2348,'ГОЛЕМО БУЧИНО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1086,2204,'ГОЛЕМО МАЛОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1087,2635,'ГОЛЕМО СЕЛО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1088,5573,'ГОЛЕЦ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1089,2254,'ГОЛЕШ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1090,7547,'ГОЛЕШ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1091,2818,'ГОЛЕШОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1092,9114,'ГОЛИЦА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1093,6793,'ГОЛОБРАД',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1094,6386,'ГОЛОБРАДОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1095,2690,'ГОЛЯМ ВЪРБОВНИК',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1096,6932,'ГОЛЯМ ДЕВЕСИЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1097,8757,'ГОЛЯМ ДЕРВЕНТ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1098,6245,'ГОЛЯМ ДОЛ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1099,7459,'ГОЛЯМ ИЗВОР',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1100,6395,'ГОЛЯМ ИЗВОР',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1101,5741,'ГОЛЯМ ИЗВОР',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1102,8624,'ГОЛЯМ МАНАСТИР',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1103,7444,'ГОЛЯМ ПОРОВЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1104,4193,'ГОЛЯМ ЧАРДАК',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1105,6744,'ГОЛЯМА БАРА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1106,5753,'ГОЛЯМА БРЕСТНИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1107,7452,'ГОЛЯМА ВОДА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1108,6476,'ГОЛЯМА ДОЛИНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1109,5670,'ГОЛЯМА ЖЕЛЯЗНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1110,6940,'ГОЛЯМА ЧИНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1111,6424,'ГОЛЯМО АСЕНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1112,4473,'ГОЛЯМО БЕЛОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1113,8329,'ГОЛЯМО БУКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1114,7065,'ГОЛЯМО ВРАНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1115,7848,'ГОЛЯМО ГРАДИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1116,7960,'ГОЛЯМО ДОЛЯНЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1117,6146,'ГОЛЯМО ДРЯНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1118,6925,'ГОЛЯМО КАМЕНЯНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1119,8729,'ГОЛЯМО КРУШЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1120,7789,'ГОЛЯМО НОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1121,3058,'ГОЛЯМО ПЕЩЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1122,7778,'ГОЛЯМО СОКОЛОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1123,5743,'ГОЛЯМО УСОЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1124,7924,'ГОЛЯМО ЦЪРКВИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1125,8863,'ГОЛЯМО ЧОЧОВЕНИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1126,2231,'ГОЛЯНОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1127,3772,'ГОМОТАРЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1128,5552,'ГОРАН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1129,5035,'ГОРАНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1130,2565,'ГОРАНОВЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1131,2834,'ГОРЕМЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1132,5050,'ГОРЕН ЕНЕВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1133,9100,'ГОРЕН ЧИФЛИК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1134,9101,'ГОРИЦА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1135,9558,'ГОРИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1136,8225,'ГОРИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1137,7854,'ГОРИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1138,9688,'ГОРИЧАНЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1139,7337,'ГОРИЧЕВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1140,4788,'ГОРНА АРДА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1141,3544,'ГОРНА БЕЛА РЕЧКА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1142,3155,'ГОРНА БЕШОВИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1143,4657,'ГОРНА БИРКОВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1144,2842,'ГОРНА БРЕЗНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1145,2575,'ГОРНА БРЕСТНИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1146,2046,'ГОРНА ВАСИЛИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1147,3484,'ГОРНА ВЕРЕНИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1148,2439,'ГОРНА ВРАБЧА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1149,2459,'ГОРНА ГЛОГОВИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1150,2535,'ГОРНА ГРАЩИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1151,2419,'ГОРНА ДИКАНЯ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1152,4648,'ГОРНА ДЪБЕВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1153,7969,'ГОРНА ЗЛАТИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1154,7865,'ГОРНА КАБДА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1155,3463,'ГОРНА КОВАЧИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1156,2687,'ГОРНА КОЗНИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1157,3154,'ГОРНА КРЕМЕНА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1158,6685,'ГОРНА КРЕПОСТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1159,2827,'ГОРНА КРУШИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1160,6952,'ГОРНА КУЛА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1161,5227,'ГОРНА ЛИПНИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1162,3458,'ГОРНА ЛУКА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1163,2131,'ГОРНА МАЛИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1164,4196,'ГОРНА МАХАЛА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1165,2491,'ГОРНА МЕЛНА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1166,5869,'ГОРНА МИТРОПОЛИЯ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1167,5100,'ГОРНА ОРЯХОВИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1168,2836,'ГОРНА РИБНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1169,5448,'ГОРНА РОСИЦА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1170,2399,'ГОРНА СЕКИРНА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1171,5294,'ГОРНА СТУДЕНА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1172,2811,'ГОРНА СУШИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1173,5089,'ГОРНА ХАДЖИЙСКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1174,7913,'ГОРНА ХУБАВКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1175,1806,'ГОРНИ БОГРОВ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1176,3343,'ГОРНИ ВАДИН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1177,5380,'ГОРНИ ВЪРПИЩА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1178,6485,'ГОРНИ ГЛАВАНАК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1179,5367,'ГОРНИ ДАМЯНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1180,4368,'ГОРНИ ДОМЛЯН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1181,5380,'ГОРНИ ДРАГОЙЧА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1182,5880,'ГОРНИ ДЪБНИК',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1183,2557,'ГОРНИ КОРИТЕН',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1184,5096,'ГОРНИ КРАЙ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1185,3960,'ГОРНИ ЛОМ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1186,5360,'ГОРНИ МАРЕНЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1187,2027,'ГОРНИ ОКОЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1188,5360,'ГОРНИ РАДКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1189,2371,'ГОРНИ РОМАНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1190,5098,'ГОРНИ ТАНЧЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1191,3632,'ГОРНИ ЦИБЪР',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1192,5360,'ГОРНИ ЦОНЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1193,6954,'ГОРНИ ЮРУЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1194,5991,'ГОРНИК',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1195,7173,'ГОРНО АБЛАНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1196,8883,'ГОРНО АЛЕКСАНДРОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1197,6219,'ГОРНО БЕЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1198,6053,'ГОРНО БОТЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1199,6388,'ГОРНО ВОЙВОДИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1200,4456,'ГОРНО ВЪРШИЛО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1201,2797,'ГОРНО ДРАГЛИЩЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1202,2963,'ГОРНО ДРЯНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1203,6181,'ГОРНО ИЗВОРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1204,2138,'ГОРНО КАМАРЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1205,2556,'ГОРНО КОБИЛЕ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1206,7927,'ГОРНО КОЗАРЕВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1207,2783,'ГОРНО КРАИЩЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1208,6871,'ГОРНО КЪПИНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1209,6585,'ГОРНО ЛУКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1210,7939,'ГОРНО НОВКОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1211,6225,'ГОРНО НОВО СЕЛО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1212,3547,'ГОРНО ОЗИРОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1213,2756,'ГОРНО ОСЕНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1214,5549,'ГОРНО ПАВЛИКЕНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1215,3052,'ГОРНО ПЕЩЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1216,6486,'ГОРНО ПОЛЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1217,6780,'ГОРНО ПРАХОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1218,2213,'ГОРНО СЕЛО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1219,2824,'ГОРНО СПАНЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1220,6151,'ГОРНО СЪХРАНЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1221,5614,'ГОРНО ТРАПЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1222,2561,'ГОРНО УЙНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1223,2727,'ГОРНО ХЪРСОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1224,3487,'ГОРНО ЦЕРОВЕНЕ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1225,6165,'ГОРНО ЧЕРКОВИЩЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1226,8343,'ГОРНО ЯБЪЛКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1227,5304,'ГОРНОВА МОГИЛА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1228,6574,'ГОРНОСЕЛЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1229,4253,'ГОРНОСЛАВ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1230,5748,'ГОРНОТО СЕЛО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1231,4776,'ГОРОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1232,8469,'ГОРОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1233,7288,'ГОРОЦВЕТ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1234,2496,'ГОРОЧЕВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1235,5083,'ГОРСКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1236,8721,'ГОРСКА ПОЛЯНА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1237,5132,'ГОРСКИ ГОРЕН ТРЪМБЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1238,5131,'ГОРСКИ ДОЛЕН ТРЪМБЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1239,6420,'ГОРСКИ ИЗВОР',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1240,6864,'ГОРСКИ ИЗВОР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1241,5167,'ГОРСКИ СЕНОВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1242,6590,'ГОРСКО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1243,7847,'ГОРСКО АБЛАНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1244,6800,'ГОРСКО ДЮЛЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1245,5238,'ГОРСКО КАЛУГЕРОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1246,5235,'ГОРСКО КОСОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1247,5075,'ГОРСКО НОВО СЕЛО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1248,5088,'ГОРСКО ПИСАРЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1249,7947,'ГОРСКО СЕЛО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1250,5557,'ГОРСКО СЛИВОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1251,5888,'ГОРТАЛОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1252,9689,'ГОРУН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1253,2191,'ГОРУНАКА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1254,5722,'ГОРУНЬОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1255,2882,'ГОРЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1256,5367,'ГОРЯНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1257,9107,'ГОСПОДИНОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1258,7561,'ГОСПОДИНОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1259,2914,'ГОСПОДИНЦИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1260,5390,'ГОСТИЛИЦА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1261,5864,'ГОСТИЛЯ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1262,5543,'ГОСТИНЯ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1263,2773,'ГОСТУН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1264,2900,'ГОЦЕ ДЕЛЧЕВ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1265,2755,'ГРАДЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1266,5732,'ГРАДЕЖНИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1267,3780,'ГРАДЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1268,2239,'ГРАДЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1269,8990,'ГРАДЕЦ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1270,3074,'ГРАДЕШНИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1271,5879,'ГРАДИНА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1272,7239,'ГРАДИНА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1273,4290,'ГРАДИНА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1274,9243,'ГРАДИНАРОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1275,9552,'ГРАДИНИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1276,7964,'ГРАДИНКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1277,5910,'ГРАДИЩЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1278,5435,'ГРАДИЩЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1279,9803,'ГРАДИЩЕ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1280,5439,'ГРАДНИЦА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1281,9498,'ГРАДНИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1282,8852,'ГРАДСКО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1283,3835,'ГРАДСКОВСКИ КОЛИБИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1284,4749,'ГРАДЪТ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1285,3830,'ГРАМАДА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1286,2679,'ГРАМАДЕ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1287,4968,'ГРАМАДЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1288,2574,'ГРАМАДЖАНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1289,8370,'ГРАМАТИКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1290,5099,'ГРАМАТИЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1291,6252,'ГРАНИТ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1292,8333,'ГРАНИТЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1293,3914,'ГРАНИТОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1294,8740,'ГРАНИТОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1295,2589,'ГРАНИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1296,3934,'ГРАНИЧАК',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1297,8347,'ГРАНИЧАР',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1298,9669,'ГРАНИЧАР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1299,4198,'ГРАФ ИГНАТИЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1300,8938,'ГРАФИТОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1301,4618,'ГРАШЕВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1302,4714,'ГРАЩИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1303,7960,'ГРЕЕВЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1304,5841,'ГРИВИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1305,6965,'ГРИВКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1306,6890,'ГРИВЯК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1307,2108,'ГРИГОРЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1308,8464,'ГРОЗДЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1309,9106,'ГРОЗДЬОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1310,2062,'ГРОЗДЬОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1311,3444,'ГРОМШИН',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1312,4815,'ГРОХОТНО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1313,6809,'ГРУЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1314,5300,'ГРЪБЛЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1315,2213,'ГРЪЛСКА ПАДИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1316,7669,'ГРЪНЧАРОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1317,2255,'ГУБЕШ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1318,2274,'ГУБИСЛАВ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1319,6590,'ГУГУТКА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1320,4792,'ГУДЕВИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1321,6943,'ГУЛИЙКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1322,6926,'ГУЛИЯ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1323,5960,'ГУЛЯНЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1324,5654,'ГУМОЩНИК',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1325,2567,'ГУРБАНОВЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1326,6830,'ГУРГУЛИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1327,2223,'ГУРГУЛЯТ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1328,9644,'ГУРКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1329,2145,'ГУРКОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1330,6199,'ГУРКОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1331,2226,'ГУРМАЗОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1332,9969,'ГУСЛА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1333,9479,'ГУСЛАР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1334,2045,'ГУЦАЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1335,5333,'ГЪБЕНЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1336,8220,'ГЪЛЪБЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1337,6366,'ГЪЛЪБЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1338,8642,'ГЪЛЪБИНЦИ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1339,2426,'ГЪЛЪБНИК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1340,4938,'ГЪЛЪБОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1341,2789,'ГЪЛЪБОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1342,6280,'ГЪЛЪБОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1343,4125,'ГЪЛЪБОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1344,2223,'ГЪЛЪБОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1345,3785,'ГЪМЗОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1346,2550,'ГЪРБИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1347,6760,'ГЪРБИЩЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1348,5087,'ГЪРДЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1349,2381,'ГЪРЛО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1350,2568,'ГЪРЛЯНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1351,2960,'ГЪРМЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1352,4991,'ГЪРНАТИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1353,5370,'ГЪРНЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1354,7844,'ГЪРЧИНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1355,6651,'ГЪСКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1356,4811,'ГЬОВРЕН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1357,2570,'ГЮЕШЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1358,8249,'ГЮЛЬОВЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1359,2875,'ГЮРГЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1360,3932,'ГЮРГИЧ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1361,5083,'ДАВЕРИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1362,4944,'ДАВИДКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1363,7563,'ДАВИДОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1364,7758,'ДАВИДОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1365,2779,'ДАГОНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1366,5365,'ДАЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1367,5084,'ДАЙНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1368,2813,'ДАМЯНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1369,5437,'ДАМЯНОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1370,6943,'ДАНАИЛОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1371,6261,'ДАСКАЛ АТАНАСОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1372,6707,'ДАСКАЛОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1373,7150,'ДВЕ МОГИЛИ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1374,4949,'ДВЕ ТОПОЛИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1375,2541,'ДВОРИЩЕ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1376,6193,'ДВОРИЩЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1377,5307,'ДЕБЕЛ ДЯЛ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1378,5030,'ДЕБЕЛЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1379,2416,'ДЕБЕЛИ ЛАК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1380,5084,'ДЕБЕЛИ РЪТ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1381,8314,'ДЕБЕЛТ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1382,5435,'ДЕБЕЛЦОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1383,4946,'ДЕБЕЛЯНОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1384,5657,'ДЕБНЕВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1385,5958,'ДЕБОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1386,2748,'ДЕБОЧИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1387,2961,'ДЕБРЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1388,9353,'ДЕБРЕНЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1389,2803,'ДЕБРЕНЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1390,4414,'ДЕБРЪЩИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1391,3065,'ДЕВЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1392,5995,'ДЕВЕНЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1393,6934,'ДЕВЕСИЛИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1394,6933,'ДЕВЕСИЛОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1395,8480,'ДЕВЕТАК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1396,5555,'ДЕВЕТАКИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1397,5050,'ДЕВЕТАЦИТЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1398,8474,'ДЕВЕТИНЦИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1399,4800,'ДЕВИН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1400,7972,'ДЕВИНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1401,6833,'ДЕВИНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1402,9160,'ДЕВНЯ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1403,4106,'ДЕДЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1404,6861,'ДЕДЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1405,5089,'ДЕДИНА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1406,5089,'ДЕДИНЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1407,5935,'ДЕКОВ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1408,2728,'ДЕЛВИНО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1409,6896,'ДЕЛВИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1410,3795,'ДЕЛЕЙНА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1411,5084,'ДЕЛОВА МАХАЛА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1412,2917,'ДЕЛЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1413,7427,'ДЕЛЧЕВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1414,2225,'ДЕЛЯН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1415,2652,'ДЕЛЯН',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1416,5292,'ДЕЛЯНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1417,8726,'ДЕННИЦА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1418,9772,'ДЕННИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1419,5377,'ДЕНЧЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1420,6539,'ДЕРВИШКА МОГИЛА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1421,5780,'ДЕРМАНЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1422,9111,'ДЕТЕЛИНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1423,8483,'ДЕТЕЛИНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1424,5041,'ДЕЧКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1425,2060,'ДЖАМУЗОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1426,6908,'ДЖАНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1427,6850,'ДЖЕБЕЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1428,6824,'ДЖЕЛЕПСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1429,2648,'ДЖЕРМАН',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1430,6872,'ДЖЕРОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1431,2812,'ДЖИГУРОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1432,2085,'ДЖИЛЯСКОВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1433,8691,'ДЖИНОТ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1434,2483,'ДЖИНЧОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1435,5645,'ДЖОКАРИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1436,5146,'ДЖУЛЮНИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1437,7137,'ДЖУЛЮНИЦА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1438,5343,'ДЖУМРИИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1439,2085,'ДЖУНОВИТЕ КОШАРИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1440,4241,'ДЖУРКОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1441,2163,'ДЖУРОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1442,5380,'ДЖУРОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1443,6772,'ДИАМАНДОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1444,9811,'ДИБИЧ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1445,3492,'ДИВА СЛАТИНА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1446,5345,'ДИВЕЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1447,2457,'ДИВЛЯ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1448,2350,'ДИВОТИНО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1449,5727,'ДИВЧОВОТО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1450,4994,'ДИМАНОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1451,5363,'ДИМИЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1452,6259,'ДИМИТРИЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1453,6400,'ДИМИТРОВГРАД',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1454,5050,'ДИМИТРОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1455,6518,'ДИМИТРОВЧЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1456,3750,'ДИМОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1457,4757,'ДИМОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1458,5035,'ДИМОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1459,6192,'ДИМОВЦИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1460,5234,'ДИМЧА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1461,8159,'ДИМЧЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1462,6340,'ДИНЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1463,4149,'ДИНК',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1464,4458,'ДИНКАТА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1465,3783,'ДИНКОВИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1466,3921,'ДИНКОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1467,6268,'ДИНЯ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1468,4927,'ДИРАЛО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1469,5886,'ДИСЕВИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1470,5441,'ДИСМАНИЦА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1471,7625,'ДИЧЕВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1472,5059,'ДИЧИН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1473,6432,'ДЛЪГНЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1474,5392,'ДЛЪГНЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1475,7997,'ДЛЪЖКА ПОЛЯНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1476,9789,'ДЛЪЖКО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1477,2582,'ДЛЪХЧЕВО - САБЛЯР',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1478,6947,'ДОБОРСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1479,8580,'ДОБРА ПОЛЯНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1480,2279,'ДОБРАВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1481,4259,'ДОБРАЛЪК',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1482,4917,'ДОБРЕВА ЧЕРЕША',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1483,9399,'ДОБРЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1484,5095,'ДОБРЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1485,5365,'ДОБРЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1486,5762,'ДОБРЕВЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1487,5380,'ДОБРЕНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1488,9782,'ДОБРИ ВОЙНИКОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1489,9128,'ДОБРИ ДОЛ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1490,3667,'ДОБРИ ДОЛ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1491,4292,'ДОБРИ ДОЛ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1492,2559,'ДОБРИ ДОЛ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1493,5149,'ДОБРИ ДЯЛ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1494,2838,'ДОБРИ ЛАКИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1495,9402,'ДОБРИН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1496,9216,'ДОБРИНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1497,2777,'ДОБРИНИЩЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1498,8477,'ДОБРИНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1499,6670,'ДОБРИНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1500,6857,'ДОБРИНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1501,6437,'ДОБРИЧ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1502,9300,'ДОБРИЧ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1503,8724,'ДОБРИЧ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1504,4405,'ДОБРОВНИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1505,2662,'ДОБРОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1506,9145,'ДОБРОГЛЕД',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1507,5658,'ДОБРОДАН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1508,3253,'ДОБРОЛЕВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1509,8552,'ДОБРОМИР',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1510,5430,'ДОБРОМИРКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1511,6861,'ДОБРОМИРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1512,9281,'ДОБРОПЛОДНО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1513,6560,'ДОБРОСЕЛЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1514,1247,'ДОБРОСЛАВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1515,4256,'ДОБРОСТАН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1516,2919,'ДОБРОТИНО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1517,7990,'ДОБРОТИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1518,7531,'ДОБРОТИЦА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1519,9282,'ДОБРОТИЧ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1520,7548,'ДОБРУДЖАНКА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1521,3069,'ДОБРУША',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1522,2799,'ДОБЪРСКО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1523,2289,'ДОБЪРЧИН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1524,2115,'ДОГАНОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1525,2547,'ДОЖДЕВИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1526,5035,'ДОЙНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1527,6799,'ДОЙРАНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1528,9961,'ДОЙРАНЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1529,5550,'ДОЙРЕНЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1530,2734,'ДОКАТИЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1531,3449,'ДОКТОР ЙОСИФОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1532,2497,'ДОКЬОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1533,4985,'ДОЛЕН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1534,2968,'ДОЛЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1535,5050,'ДОЛЕН ЕНЕВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1536,2887,'ДОЛЕНЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1537,2811,'ДОЛЕНИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1538,7682,'ДОЛЕЦ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1539,7858,'ДОЛЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1540,4921,'ДОЛИЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1541,9358,'ДОЛИНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1542,9947,'ДОЛИНА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1543,2637,'ДОЛИСТОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1544,9152,'ДОЛИЩЕ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1545,6663,'ДОЛИЩЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1546,2040,'ДОЛНА БАНЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1547,3545,'ДОЛНА БЕЛА РЕЧКА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1548,3143,'ДОЛНА БЕШОВИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1549,2034,'ДОЛНА ВАСИЛИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1550,3485,'ДОЛНА ВЕРЕНИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1551,2458,'ДОЛНА ВРАБЧА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1552,2843,'ДОЛНА ГРАДЕШНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1553,2536,'ДОЛНА ГРАЩИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1554,2420,'ДОЛНА ДИКАНЯ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1555,4655,'ДОЛНА ДЪБЕВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1556,7968,'ДОЛНА ЗЛАТИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1557,7867,'ДОЛНА КАБДА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1558,2658,'ДОЛНА КОЗНИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1559,3153,'ДОЛНА КРЕМЕНА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1560,6686,'ДОЛНА КРЕПОСТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1561,2888,'ДОЛНА КРУШИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1562,6953,'ДОЛНА КУЛА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1563,5199,'ДОЛНА ЛИПНИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1564,2107,'ДОЛНА МАЛИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1565,5659,'ДОЛНА МАРГАТИНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1566,4200,'ДОЛНА МАХАЛА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1567,2490,'ДОЛНА МЕЛНА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1568,5855,'ДОЛНА МИТРОПОЛИЯ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1569,2213,'ДОЛНА НЕВЛЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1570,5130,'ДОЛНА ОРЯХОВИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1571,2892,'ДОЛНА РИБНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1572,3452,'ДОЛНА РИКСА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1573,2397,'ДОЛНА СЕКИРНА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1574,7123,'ДОЛНА СТУДЕНА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1575,7931,'ДОЛНА ХУБАВКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1576,1855,'ДОЛНИ БОГРОВ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1577,3782,'ДОЛНИ БОШНЯК',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1578,3344,'ДОЛНИ ВАДИН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1579,5969,'ДОЛНИ ВИТ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1580,5380,'ДОЛНИ ВЪРПИЩА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1581,6483,'ДОЛНИ ГЛАВАНАК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1582,5036,'ДОЛНИ ДАМЯНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1583,5380,'ДОЛНИ ДРАГОЙЧА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1584,5870,'ДОЛНИ ДЪБНИК',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1585,2558,'ДОЛНИ КОРИТЕН',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1586,3958,'ДОЛНИ ЛОМ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1587,5867,'ДОЛНИ ЛУКОВИТ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1588,5360,'ДОЛНИ МАРЕНЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1589,5084,'ДОЛНИ МАРЯН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1590,2028,'ДОЛНИ ОКОЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1591,1165,'ДОЛНИ ПАСАРЕЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1592,5360,'ДОЛНИ РАДКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1593,2413,'ДОЛНИ РАКОВЕЦ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1594,2367,'ДОЛНИ РОМАНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1595,5097,'ДОЛНИ ТАНЧЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1596,5350,'ДОЛНИ ТОМЧЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1597,3642,'ДОЛНИ ЦИБЪР',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1598,9120,'ДОЛНИ ЧИФЛИК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1599,6954,'ДОЛНИ ЮРУЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1600,7053,'ДОЛНО АБЛАНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1601,6422,'ДОЛНО БЕЛЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1602,3437,'ДОЛНО БЕЛОТИНЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1603,6393,'ДОЛНО БОТЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1604,6389,'ДОЛНО ВОЙВОДИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1605,4446,'ДОЛНО ВЪРШИЛО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1606,6358,'ДОЛНО ГОЛЕМАНЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1607,2798,'ДОЛНО ДРАГЛИЩЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1608,2944,'ДОЛНО ДРЯНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1609,6183,'ДОЛНО ИЗВОРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1610,2137,'ДОЛНО КАМАРЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1611,2556,'ДОЛНО КОБИЛЕ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1612,7926,'ДОЛНО КОЗАРЕВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1613,6870,'ДОЛНО КЪПИНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1614,4535,'ДОЛНО ЛЕВСКИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1615,3605,'ДОЛНО ЛИНЕВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1616,6586,'ДОЛНО ЛУКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1617,7938,'ДОЛНО НОВКОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1618,6226,'ДОЛНО НОВО СЕЛО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1619,2212,'ДОЛНО НОВО СЕЛО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1620,3538,'ДОЛНО ОЗИРОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1621,2757,'ДОЛНО ОСЕНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1622,6382,'ДОЛНО ПОЛЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1623,6779,'ДОЛНО ПРАХОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1624,7624,'ДОЛНО РЯХОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1625,6161,'ДОЛНО САХРАНЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1626,2567,'ДОЛНО СЕЛО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1627,2869,'ДОЛНО СПАНЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1628,6455,'ДОЛНО СЪДИЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1629,2560,'ДОЛНО УЙНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1630,3639,'ДОЛНО ЦЕРОВЕНЕ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1631,6381,'ДОЛНО ЧЕРКОВИЩЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1632,5090,'ДОЛНО ШИВАЧЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1633,8342,'ДОЛНО ЯБЪЛКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1634,6573,'ДОЛНОСЕЛЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1635,4254,'ДОЛНОСЛАВ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1636,6887,'ДОМИЩЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1637,4357,'ДОМЛЯН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1638,3659,'ДОНДУКОВ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1639,5342,'ДОНИНО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1640,5360,'ДОНКИНО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1641,5081,'ДОНКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1642,9354,'ДОНЧЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1643,5351,'ДОНЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1644,4641,'ДОРКОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1645,6472,'ДОСИТЕЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1646,4831,'ДОСПАТ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1647,2012,'ДОСПЕЙ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1648,5380,'ДОЧА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1649,6577,'ДРАБИШНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1650,5524,'ДРАГАНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1651,3534,'ДРАГАНИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1652,7773,'ДРАГАНОВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1653,8114,'ДРАГАНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1654,5137,'ДРАГАНОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1655,9349,'ДРАГАНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1656,6714,'ДРАГАНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1657,5332,'ДРАГАНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1658,5094,'ДРАГАНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1659,5081,'ДРАГАНОСКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1660,8489,'ДРАГАНЦИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1661,5335,'ДРАГАНЧЕТАТА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1662,5952,'ДРАГАШ ВОЙВОДА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1663,5332,'ДРАГИЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1664,5145,'ДРАГИЖЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1665,5094,'ДРАГИЙЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1666,4642,'ДРАГИНОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1667,2351,'ДРАГИЧЕВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1668,5097,'ДРАГНЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1669,5360,'ДРАГНЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1670,2237,'ДРАГОВИЩИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1671,2564,'ДРАГОВИЩИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1672,8437,'ДРАГОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1673,2625,'ДРАГОДАН',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1674,8888,'ДРАГОДАНОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1675,9860,'ДРАГОЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1676,2208,'ДРАГОИЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1677,5751,'ДРАГОИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1678,4293,'ДРАГОЙНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1679,2554,'ДРАГОЙЧИНЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1680,2210,'ДРАГОМАН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1681,5343,'ДРАГОМАНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1682,4184,'ДРАГОМИР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1683,2428,'ДРАГОМИРОВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1684,5285,'ДРАГОМИРОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1685,7419,'ДРАГОМЪЖ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1686,4406,'ДРАГОР',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1687,2916,'ДРАГОСТИН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1688,2218,'ДРАГОТИНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1689,2875,'ДРАГУШ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1690,2008,'ДРАГУШИНОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1691,8634,'ДРАЖЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1692,3929,'ДРАЖИНЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1693,8324,'ДРАКА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1694,2829,'ДРАКАТА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1695,7782,'ДРАЛФА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1696,8651,'ДРАМА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1697,4164,'ДРАНГОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1698,6860,'ДРАНГОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1699,2859,'ДРАНГОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1700,5363,'ДРАНДАРИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1701,8319,'ДРАЧЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1702,3267,'ДРАШАН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1703,5648,'ДРАШКОВА ПОЛЯНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1704,2213,'ДРЕАТИН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1705,2430,'ДРЕН',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1706,2739,'ДРЕНКОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1707,5562,'ДРЕНОВ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1708,3920,'ДРЕНОВЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1709,2895,'ДРЕНОВИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1710,2236,'ДРЕНОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1711,2876,'ДРЕНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1712,5095,'ДРЕНТА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1713,9788,'ДРЕНЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1714,7834,'ДРИНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1715,6477,'ДРИПЧЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1716,9641,'ДРОПЛА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1717,8563,'ДРОПЛА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1718,2410,'ДРУГАН',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1719,3730,'ДРУЖБА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1720,2281,'ДРУЖЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1721,6885,'ДРУЖИНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1722,9815,'ДРУМЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1723,2596,'ДРУМОХАР',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1724,6820,'ДРУМЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1725,2238,'ДРЪМША',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1726,9173,'ДРЪНДАР',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1727,4941,'ДРЯНКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1728,8524,'ДРЯНКОВЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1729,6865,'ДРЯНОВА ГЛАВА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1730,7122,'ДРЯНОВЕЦ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1731,9392,'ДРЯНОВЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1732,7268,'ДРЯНОВЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1733,4856,'ДРЯНОВЕЦ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1734,5370,'ДРЯНОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1735,4241,'ДРЯНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1736,6493,'ДРЯНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1737,8652,'ДРЯНОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1738,5618,'ДРЯНСКА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1739,5462,'ДРЯНЪТ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1740,4174,'ДУВАНЛИИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1741,6562,'ДУГАНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1742,5094,'ДУКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1743,7650,'ДУЛОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1744,5345,'ДУМНИЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1745,7623,'ДУНАВЕЦ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1746,5041,'ДУНАВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1747,3740,'ДУНАВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1748,6145,'ДУНАВЦИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1749,4723,'ДУНЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1750,4990,'ДУНЯ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1751,2600,'ДУПНИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1752,9670,'ДУРАНКУЛАК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1753,5089,'ДУРОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1754,5380,'ДУРЧА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1755,7435,'ДУХОВЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1756,2083,'ДУШАНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1757,5455,'ДУШЕВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1758,5455,'ДУШЕВСКИ КОЛИБИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1759,6846,'ДУШИНКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1760,2398,'ДУШИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1761,6714,'ДУШКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1762,5787,'ДЪБЕН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1763,4349,'ДЪБЕНЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1764,8213,'ДЪБНИК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1765,2940,'ДЪБНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1766,8996,'ДЪБОВА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1767,4969,'ДЪБОВА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1768,3674,'ДЪБОВА МАХАЛА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1769,5973,'ДЪБОВАН',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1770,6554,'ДЪБОВЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1771,9551,'ДЪБОВИК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1772,8449,'ДЪБОВИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1773,8736,'ДЪБОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1774,6178,'ДЪБОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1775,9638,'ДЪБРАВА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1776,2723,'ДЪБРАВА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1777,5546,'ДЪБРАВА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1778,5765,'ДЪБРАВАТА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1779,9126,'ДЪБРАВИНО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1780,4472,'ДЪБРАВИТЕ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1781,7997,'ДЪБРАВИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1782,3916,'ДЪБРАВКА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1783,6642,'ДЪЖДИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1784,6917,'ДЪЖДОВНИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1785,6747,'ДЪЖДОВНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1786,5668,'ДЪЛБОК ДОЛ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1787,4280,'ДЪЛБОК ИЗВОР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1788,6060,'ДЪЛБОКИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1789,5745,'ДЪЛГА ЛИВАДА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1790,2492,'ДЪЛГА ЛУКА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1791,7742,'ДЪЛГАЧ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1792,3475,'ДЪЛГИ ДЕЛ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1793,5088,'ДЪЛГИ ПРИПЕК',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1794,3756,'ДЪЛГО ПОЛЕ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1795,4195,'ДЪЛГО ПОЛЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1796,3638,'ДЪЛГОДЕЛЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1797,9250,'ДЪЛГОПОЛ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1798,6637,'ДЪНГОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1799,5350,'ДЪРВАРИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1800,6217,'ДЪРЖАВА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1801,6188,'ДЪРЖАВЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1802,3747,'ДЪРЖАНИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1803,5070,'ДЪРЛЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1804,3129,'ДЪРМАНЦИ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1805,5363,'ДЪСКАРИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1806,5223,'ДЪСКОТ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1807,8561,'ДЪСКОТНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1808,8330,'ДЮЛЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1809,4529,'ДЮЛЕВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1810,9108,'ДЮЛИНО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1811,6876,'ДЮЛИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1812,8571,'ДЮЛЯ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1813,8918,'ДЯДОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1814,6705,'ДЯДОВСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1815,6764,'ДЯДОВЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1816,2651,'ДЯКОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1817,5454,'ДЯЛЪК',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1818,7270,'ДЯНКОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1819,5965,'ЕВЛОГИЕВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1820,8363,'ЕВРЕНЕЗОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1821,6931,'ЕГРЕК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1822,2429,'ЕГЪЛНИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1823,9792,'ЕДИНАКОВЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1824,6173,'ЕДРЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1825,2464,'ЕЗДИМИРЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1826,2846,'ЕЗЕРЕЦ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1827,9687,'ЕЗЕРЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1828,8919,'ЕЗЕРО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1829,9168,'ЕЗЕРОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1830,4288,'ЕЗЕРОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1831,5309,'ЕЗЕРОТО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1832,7274,'ЕЗЕРЧЕ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1833,8490,'ЕКЗАРХ АНТИМОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1834,7171,'ЕКЗАРХ ЙОСИФ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1835,5070,'ЕЛЕНА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1836,6399,'ЕЛЕНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1837,6047,'ЕЛЕНИНО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1838,4990,'ЕЛЕНКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1839,2275,'ЕЛЕНОВ ДОЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1840,2726,'ЕЛЕНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1841,8943,'ЕЛЕНОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1842,7837,'ЕЛЕНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1843,4731,'ЕЛЕНСКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1844,5388,'ЕЛЕНЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1845,2782,'ЕЛЕШНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1846,2125,'ЕЛЕШНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1847,2100,'ЕЛИН ПЕЛИН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1848,3160,'ЕЛИСЕЙНА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1849,2159,'ЕЛОВДОЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1850,2434,'ЕЛОВДОЛ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1851,3471,'ЕЛОВИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1852,2489,'ЕЛОВИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1853,4970,'ЕЛХОВЕЦ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1854,8700,'ЕЛХОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1855,6174,'ЕЛХОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1856,6064,'ЕЛХОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1857,4538,'ЕЛШИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1858,4783,'ЕЛЬОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1859,5065,'ЕМЕН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1860,8252,'ЕМОНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1861,5469,'ЕНЕВ РЪТ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1862,9389,'ЕНЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1863,9919,'ЕНЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1864,6142,'ЕНИНА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1865,3261,'ЕНИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1866,6735,'ЕНЧЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1867,5360,'ЕНЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1868,6788,'ЕНЬОВЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1869,3431,'ЕРДЕН',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1870,2585,'ЕРЕМИЯ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1871,4997,'ЕРМА РЕКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1872,6865,'ЕРОВЕТЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1873,2486,'ЕРУЛ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1874,8459,'ЕСЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1875,9289,'ЕСЕНИЦА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1876,2180,'ЕТРОПОЛЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1877,9422,'ЕФРЕЙТОР БАКАЛОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1878,6476,'ЕФРЕМ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1879,2442,'ЖАБЛЯНО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1880,2545,'ЖАБОКРЪТ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1881,9492,'ЖЕГЛАРЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1882,3738,'ЖЕГЛИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1883,2423,'ЖЕДНА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1884,6594,'ЖЕЛЕЗАРИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1885,7948,'ЖЕЛЕЗАРИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1886,5164,'ЖЕЛЕЗАРЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1887,6595,'ЖЕЛЕЗИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1888,3461,'ЖЕЛЕЗНА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1889,8488,'ЖЕЛЕЗНИК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1890,6711,'ЖЕЛЕЗНИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1891,1475,'ЖЕЛЕЗНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1892,2732,'ЖЕЛЕЗНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1893,2267,'ЖЕЛЕН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1894,9826,'ЖЕЛЪД',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1895,6855,'ЖЕЛЪДОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1896,8860,'ЖЕЛЮ ВОЙВОДА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1897,1837,'ЖЕЛЯВА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1898,7455,'ЖЕЛЯЗКОВЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1899,4136,'ЖЕЛЯЗНО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1900,8106,'ЖЕЛЯЗОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1901,6693,'ЖЕНДА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1902,2567,'ЖЕРАВИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1903,5621,'ЖЕРАВИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1904,8988,'ЖЕРАВНА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1905,6190,'ЖЕРГОВЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1906,5964,'ЖЕРНОВ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1907,5344,'ЖИВКО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1908,2065,'ЖИВКОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1909,9794,'ЖИВКОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1910,5622,'ЖИДОВ ДОЛ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1911,2956,'ЖИЖЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1912,2573,'ЖИЛЕНЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1913,9929,'ЖИЛИНО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1914,6654,'ЖИНЗИФОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1915,6636,'ЖИТАРНИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1916,9555,'ЖИТЕН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1917,1211,'ЖИТЕН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1918,9424,'ЖИТНИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1919,4172,'ЖИТНИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1920,9278,'ЖИТНИЦА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1921,6708,'ЖИТНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1922,8475,'ЖИТОСВЯТ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1923,2432,'ЖИТУША',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1924,4827,'ЖРЕБЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1925,8733,'ЖРЕБИНО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1926,4585,'ЖРЕБИЧКО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1927,8894,'ЖЪЛТ БРЯГ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1928,4298,'ЖЪЛТ КАМЪК',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1929,5335,'ЖЪЛТЕШ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1930,6368,'ЖЪЛТИ БРЯГ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1931,6846,'ЖЪЛТИ РИД',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1932,6842,'ЖЪЛТИКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1933,6195,'ЖЪЛТОПОП',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1934,6789,'ЖЪЛТУША',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1935,2469,'ЗАБЕЛ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1936,8367,'ЗАБЕРНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1937,4872,'ЗАБЪРДО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1938,2374,'ЗАВАЛА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1939,7330,'ЗАВЕТ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1940,7881,'ЗАВЕТНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1941,2288,'ЗАВИДОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1942,8633,'ЗАВОЙ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1943,6063,'ЗАГОРЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1944,9966,'ЗАГОРИЧЕ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1945,6865,'ЗАГОРСКИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1946,6817,'ЗАГОРСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1947,9413,'ЗАГОРЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1948,8939,'ЗАГОРЦИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1949,8321,'ЗАГОРЦИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1950,4950,'ЗАГРАЖДЕН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1951,5974,'ЗАГРАЖДЕН',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1952,7317,'ЗАДРУГА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1953,4710,'ЗАЕВИТЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1954,8564,'ЗАИМЧЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1955,8557,'ЗАЙЧАР',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1956,8843,'ЗАЙЧАРИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1957,6749,'ЗАЙЧИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1958,9918,'ЗАЙЧИНО ОРЕШЕ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1959,2085,'ЗАМУХОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1960,3644,'ЗАМФИР',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1961,3530,'ЗАМФИРОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1962,2875,'ЗАНОГА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1963,2283,'ЗАНОГЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1964,7832,'ЗАРАЕВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1965,7689,'ЗАРИЦА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1966,7552,'ЗАРНИК',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1967,2284,'ЗАСЕЛЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1968,9141,'ЗАСМЯНО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1969,7610,'ЗАФИРОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1970,7842,'ЗАХАРИ СТОЯНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1971,9671,'ЗАХАРИ СТОЯНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1972,5397,'ЗАЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1973,9791,'ЗВЕГОР',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1974,7878,'ЗВЕЗДА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1975,8572,'ЗВЕЗДА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1976,6820,'ЗВЕЗДЕЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1977,6653,'ЗВЕЗДЕЛИНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1978,6658,'ЗВЕЗДЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1979,8360,'ЗВЕЗДЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1980,9103,'ЗВЕЗДИЦА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1981,7945,'ЗВЕЗДИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1982,7644,'ЗВЕНИМИР',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1983,3170,'ЗВЕРИНО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1984,6668,'ЗВИНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1985,6920,'ЗВЪНАРКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1986,7333,'ЗВЪНАРЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1987,9142,'ЗВЪНЕЦ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1988,6732,'ЗВЪНИКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1989,4415,'ЗВЪНИЧЕВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1990,6744,'ЗВЪНЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1991,5897,'ЗГАЛЕВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1992,3042,'ЗГОРИГРАД',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1993,2592,'ЗГУРОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1994,9137,'ЗДРАВЕЦ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1995,6435,'ЗДРАВЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1996,4241,'ЗДРАВЕЦ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1997,7437,'ЗДРАВЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1998,7769,'ЗДРАВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (1999,5344,'ЗДРАВКОВЕЦ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2000,6861,'ЗДРАВЧЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2001,7641,'ЗЕБИЛ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2002,7954,'ЗЕЛЕНА МОРАВА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2003,2745,'ЗЕЛЕНДОЛ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2004,2478,'ЗЕЛЕНИГРАД',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2005,5099,'ЗЕЛЕНИК',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2006,5351,'ЗЕЛЕНИКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2007,4155,'ЗЕЛЕНИКОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2008,6740,'ЗЕЛЕНИКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2009,5304,'ЗЕЛЕНО ДЪРВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2010,2440,'ЗЕМЕН',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2011,9411,'ЗЕМЕНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2012,6266,'ЗЕМЛЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2013,8517,'ЗЕТЬОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2014,6220,'ЗЕТЬОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2015,8160,'ЗИДАРОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2016,2356,'ЗИДАРЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2017,2282,'ЗИМЕВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2018,8428,'ЗИМЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2019,6627,'ЗИМЗЕЛЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2020,9421,'ЗИМНИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2021,6177,'ЗИМНИЦА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2022,8690,'ЗИМНИЦА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2023,6396,'ЗИМОВИНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2024,6965,'ЗИМОРНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2025,9880,'ЗЛАТАР',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2026,8641,'ЗЛАТАРИ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2027,2783,'ЗЛАТАРИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2028,5090,'ЗЛАТАРИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2029,5345,'ЗЛАТЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2030,8875,'ЗЛАТИ ВОЙВОДА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2031,9218,'ЗЛАТИНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2032,8746,'ЗЛАТИНИЦА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2033,6197,'ЗЛАТИРЪТ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2034,4212,'ЗЛАТИТРАП',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2035,2080,'ЗЛАТИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2036,3630,'ЗЛАТИЯ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2037,9385,'ЗЛАТИЯ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2038,6221,'ЗЛАТНА ЛИВАДА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2039,9944,'ЗЛАТНА НИВА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2040,5760,'ЗЛАТНА ПАНЕГА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2041,9007,'ЗЛАТНИ ПЯСЪЦИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2042,4264,'ЗЛАТОВРЪХ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2043,4980,'ЗЛАТОГРАД',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2044,7694,'ЗЛАТОКЛАС',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2045,6915,'ЗЛАТОЛИСТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2046,2830,'ЗЛАТОЛИСТ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2047,6421,'ЗЛАТОПОЛЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2048,4162,'ЗЛАТОСЕЛ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2049,6484,'ЗЛАТОУСТОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2050,2225,'ЗЛАТУША',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2051,3161,'ЗЛИДОЛ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2052,2558,'ЗЛОГОШ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2053,2009,'ЗЛОКУЧЕНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2054,4491,'ЗЛОКУЧЕНЕ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2055,9643,'ЗМЕЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2056,4834,'ЗМЕИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2057,7945,'ЗМЕЙНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2058,6059,'ЗМЕЬОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2059,4777,'ЗМИЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2060,6272,'ЗНАМЕНОСЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2061,9553,'ЗОГРАФ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2062,2882,'ЗОЙЧЕНЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2063,5737,'ЗОРЕНИШКИ ДОЛ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2064,9156,'ЗОРНИЦА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2065,6650,'ЗОРНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2066,2821,'ЗОРНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2067,8313,'ЗОРНИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2068,6367,'ЗОРНИЦА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2069,4857,'ЗОРНИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2070,9491,'ЗЪРНЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2071,4407,'ИВАЙЛО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2072,6570,'ИВАЙЛОВГРАД',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2073,4206,'ИВАН ВАЗОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2074,5363,'ИВАН ДИМОВ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2075,7342,'ИВАН ШИШМАНОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2076,5084,'ИВАНИВАНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2077,5300,'ИВАНИЛИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2078,5340,'ИВАНКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2079,9865,'ИВАНОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2080,7088,'ИВАНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2081,2875,'ИВАНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2082,4918,'ИВАНОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2083,6465,'ИВАНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2084,5035,'ИВАНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2085,3739,'ИВАНОВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2086,2562,'ИВАНОВЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2087,9810,'ИВАНСКИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2088,6628,'ИВАНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2089,5194,'ИВАНЧА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2090,7859,'ИВАНЧА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2091,5623,'ИВАНШНИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2092,1393,'ИВАНЯНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2093,4334,'ИГАНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2094,8745,'ИГЛИКА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2095,5343,'ИГЛИКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2096,9797,'ИГЛИКА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2097,9143,'ИГНАТИЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2098,3167,'ИГНАТИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2099,3631,'ИГНАТОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2100,5370,'ИГНАТОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2101,5098,'ИГНАТОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2102,2848,'ИГРАЛИЩЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2103,5422,'ИДИЛЕВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2104,4269,'ИЗБЕГЛИИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2105,9959,'ИЗБУЛ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2106,3742,'ИЗВОР',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2107,2415,'ИЗВОР',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2108,4116,'ИЗВОР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2109,2219,'ИЗВОР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2110,8153,'ИЗВОР',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2111,3821,'ИЗВОР МАХАЛА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2112,8116,'ИЗВОРИЩЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2113,9297,'ИЗВОРНИК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2114,7950,'ИЗВОРОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2115,4235,'ИЗВОРОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2116,9538,'ИЗВОРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2117,6461,'ИЗВОРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2118,6242,'ИЗВОРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2119,9154,'ИЗВОРСКО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2120,5536,'ИЗВОРЧЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2121,2711,'ИЗГРЕВ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2122,9754,'ИЗГРЕВ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2123,8717,'ИЗГРЕВ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2124,5924,'ИЗГРЕВ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2125,4990,'ИЗГРЕВ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2126,8847,'ИЗГРЕВ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2127,9176,'ИЗГРЕВ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2128,8273,'ИЗГРЕВ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2129,5335,'ИЗТОЧНИК',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2130,5082,'ИЛАКОВ РЪТ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2131,5045,'ИЛЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2132,7948,'ИЛИЙНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2133,6845,'ИЛИЙСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2134,2072,'ИЛИНДЕН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2135,2929,'ИЛИНДЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2136,2833,'ИЛИНДЕНЦИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2137,6745,'ИЛИНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2138,5093,'ИЛИЮВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2139,2581,'ИЛИЯ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2140,9813,'ИЛИЯ БЛЪСКОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2141,9877,'ИМРЕНЧЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2142,8149,'ИНДЖЕ ВОЙВОДА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2143,3763,'ИНОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2144,9666,'ИРЕЧЕК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2145,8697,'ИРЕЧЕКОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2146,5367,'ИРИНЕЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2147,7532,'ИРНИК',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2148,6781,'ИСКРА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2149,5380,'ИСКРА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2150,8481,'ИСКРА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2151,4297,'ИСКРА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2152,7580,'ИСКРА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2153,2290,'ИСКРЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2154,2288,'ИСКРЕЦ - САНАТОРИУМ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2155,6293,'ИСКРИЦА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2156,9285,'ИСКЪР',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2157,5972,'ИСКЪР',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2158,5868,'ИСКЪР',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2159,7400,'ИСПЕРИХ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2160,4588,'ИСПЕРИХОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2161,4767,'ИСЬОВЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2162,2050,'ИХТИМАН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2163,8849,'ИЧЕРА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2164,6551,'ЙЕРУСАЛИМОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2165,4219,'ЙОАКИМ ГРУЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2166,9531,'ЙОВКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2167,5360,'ЙОВОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2168,5035,'ЙОВЧЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2169,5553,'ЙОГЛАВ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2170,7450,'ЙОНКОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2171,6724,'ЙОНЧОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2172,7569,'ЙОРДАНОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2173,8629,'КАБИЛЕ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2174,8210,'КАБЛЕШКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2175,9488,'КАБЛЕШКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2176,6703,'КАБЛЕШКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2177,9650,'КАВАРНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2178,8143,'КАВАЦИТЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2179,5163,'КАВЛАК',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2180,2889,'КАВРАКИРОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2181,4213,'КАДИЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2182,2593,'КАДРОВИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2183,6590,'КАЗАК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2184,6062,'КАЗАНКА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2185,6100,'КАЗАНЛЪК',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2186,6850,'КАЗАЦИТЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2187,5548,'КАЗАЧЕВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2188,9125,'КАЗАШКА РЕКА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2189,9140,'КАЗАШКО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2190,7574,'КАЗИМИР',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2191,1532,'КАЗИЧЕНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2192,7550,'КАЙНАРДЖА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2193,6927,'КАЛАЙДЖИЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2194,5096,'КАЛАЙДЖИИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2195,5667,'КАЛЕЙЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2196,4147,'КАЛЕКОВЕЦ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2197,3151,'КАЛЕН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2198,3829,'КАЛЕНИК',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2199,5575,'КАЛЕНИК',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2200,2253,'КАЛЕНОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2201,2832,'КАЛИМАНЦИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2202,9177,'КАЛИМАНЦИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2203,3788,'КАЛИНА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2204,9544,'КАЛИНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2205,6623,'КАЛИНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2206,9795,'КАЛИНО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2207,7539,'КАЛИПЕТРОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2208,6049,'КАЛИТИНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2209,2431,'КАЛИЩЕ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2210,7960,'КАЛНИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2211,8368,'КАЛОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2212,5388,'КАЛОМЕН',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2213,2212,'КАЛОТИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2214,2444,'КАЛОТИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2215,4370,'КАЛОФЕР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2216,9288,'КАЛОЯН',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2217,6070,'КАЛОЯНОВЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2218,4173,'КАЛОЯНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2219,8881,'КАЛОЯНОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2220,6675,'КАЛОЯНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2221,7631,'КАЛУГЕРЕНЕ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2222,4462,'КАЛУГЕРОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2223,2169,'КАЛУГЕРОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2224,6495,'КАЛУГЕРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2225,8677,'КАЛЧЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2226,5616,'КАЛЧЕВСКА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2227,5340,'КАЛЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2228,2215,'КАМБЕЛЕВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2229,7930,'КАМБУРОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2230,9425,'КАМЕН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2231,8882,'КАМЕН',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2232,5160,'КАМЕН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2233,9661,'КАМЕН БРЯГ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2234,8728,'КАМЕН ВРЪХ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2235,9253,'КАМЕН ДЯЛ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2236,2878,'КАМЕНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2237,9102,'КАМЕНАР',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2238,7247,'КАМЕНАР',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2239,8215,'КАМЕНАР',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2240,5083,'КАМЕНАРИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2241,6729,'КАМЕНАРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2242,6800,'КАМЕНЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2243,5866,'КАМЕНЕЦ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2244,8655,'КАМЕНЕЦ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2245,2677,'КАМЕНИК',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2246,2072,'КАМЕНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2247,2828,'КАМЕНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2248,2572,'КАМЕНИЧКА СКАКАВИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2249,6918,'КАМЕНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2250,8997,'КАМЕННА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2251,6546,'КАМЕННА РЕКА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2252,3479,'КАМЕННА РИКСА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2253,8120,'КАМЕНО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2254,3150,'КАМЕНО ПОЛЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2255,7295,'КАМЕНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2256,8928,'КАМЕНОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2257,8455,'КАМЕНСКО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2258,7565,'КАМЕНЦИ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2259,8578,'КАМЕНЯК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2260,9783,'КАМЕНЯК',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2261,6850,'КАМЕНЯНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2262,5333,'КАМЕЩИЦА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2263,6571,'КАМИЛСКИ ДОЛ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2264,9130,'КАМЧИЯ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2265,8434,'КАМЧИЯ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2266,6937,'КАНДИЛКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2267,4631,'КАНДОВИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2268,3843,'КАНИЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2269,5094,'КАНТАРИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2270,6695,'КАНЯК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2271,9960,'КАОЛИНОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2272,2872,'КАПАТОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2273,6530,'КАПИТАН АНДРЕЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2274,4589,'КАПИТАН ДИМИТРИЕВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2275,9408,'КАПИТАН ДИМИТРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2276,9770,'КАПИТАН ПЕТКО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2277,3768,'КАПИТАНОВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2278,7988,'КАПИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2279,7453,'КАРА МИХАЛ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2280,4484,'КАРАБУНАР',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2281,4350,'КАРАВЕЛОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2282,9942,'КАРАВЕЛОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2283,8647,'КАРАВЕЛОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2284,8553,'КАРАВЕЛЬОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2285,8543,'КАРАГЕОРГИЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2286,4283,'КАРАДЖАЛОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2287,4117,'КАРАДЖОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2288,5386,'КАРАИВАНЦА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2289,5095,'КАРАИВАНЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2290,5230,'КАРАИСЕН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2291,5343,'КАРАЛИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2292,9299,'КАРАМАНИТЕ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2293,7130,'КАРАМАНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2294,6372,'КАРАМАНЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2295,5471,'КАРАМИЧЕВСКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2296,6826,'КАРАМФИЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2297,7163,'КАРАН ВЪРБОВКА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2298,8839,'КАРАНДИЛА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2299,5094,'КАРАНДИЛИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2300,8532,'КАРАНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2301,8934,'КАРАНОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2302,5188,'КАРАНЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2303,9390,'КАРАПЕЛИТ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2304,2118,'КАРАПОЛЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2305,3136,'КАРАШ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2306,3923,'КАРБИНЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2307,9619,'КАРВУНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2308,9530,'КАРДАМ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2309,7830,'КАРДАМ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2310,2088,'КАРЛИЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2311,4300,'КАРЛОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2312,6572,'КАРЛОВСКО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2313,5782,'КАРЛУКОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2314,8400,'КАРНОБАТ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2315,4921,'КАСАПСКО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2316,2424,'КАСИЛАГ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2317,6439,'КАСНАКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2318,9930,'КАСПИЧАН',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2319,9931,'КАСПИЧАН-СЕЛО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2320,5472,'КАСТЕЛ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2321,5894,'КАТЕРИНА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2322,5392,'КАТРАНДЖИИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2323,4739,'КАТРАНИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2324,2537,'КАТРИЩЕ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2325,5569,'КАТУНЕЦ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2326,4120,'КАТУНИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2327,8991,'КАТУНИЩЕ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2328,2830,'КАТУНЦИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2329,7160,'КАЦЕЛОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2330,6907,'КАЧУЛКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2331,5351,'КАШЕНЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2332,2820,'КАШИНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2333,6863,'КАЯЛОБА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2334,5388,'КЕРЕКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2335,5365,'КЕРЕНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2336,8870,'КЕРМЕН',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2337,5161,'КЕСАРЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2338,4828,'КЕСТЕН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2339,7973,'КЕСТЕНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2340,5345,'КИЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2341,5050,'КИЛИФАРЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2342,8998,'КИПИЛОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2343,9169,'КИПРА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2344,5094,'КИРЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2345,3823,'КИРЕЕВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2346,8741,'КИРИЛОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2347,6064,'КИРИЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2348,5539,'КИРКОВА МАХАЛА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2349,6884,'КИРКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2350,8344,'КИРОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2351,5521,'КИРЧЕВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2352,3675,'КИСЕЛЕВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2353,2556,'КИСЕЛИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2354,4765,'КИСЕЛИЧЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2355,5360,'КИСЕЛКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2356,5365,'КИСИЙЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2357,5035,'КИСЬОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2358,7430,'КИТАНЧЕВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2359,9241,'КИТЕН',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2360,8284,'КИТЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2361,7993,'КИТИНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2362,9127,'КИТКА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2363,8558,'КИТКА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2364,6868,'КИТНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2365,6791,'КИТНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2366,9151,'КИЧЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2367,7243,'КИЧЕНИЦА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2368,6395,'КЛАДЕНЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2369,9816,'КЛАДЕНЕЦ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2370,2895,'КЛАДЕНЦИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2371,9497,'КЛАДЕНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2372,5046,'КЛАДНИ ДЯЛ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2373,2347,'КЛАДНИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2374,3758,'КЛАДОРУБ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2375,2421,'КЛЕНОВИК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2376,2837,'КЛЕПАЛОТО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2377,8427,'КЛИКАЧ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2378,8442,'КЛИМАШ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2379,9970,'КЛИМЕНТ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2380,4348,'КЛИМЕНТ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2381,9150,'КЛИМЕНТОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2382,5183,'КЛИМЕНТОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2383,1320,'КЛИСУРА',23);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2384,2738,'КЛИСУРА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2385,4341,'КЛИСУРА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2386,2026,'КЛИСУРА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2387,3483,'КЛИСУРИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2388,3543,'КЛИСУРСКИ МАНАСТИР',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2389,6310,'КЛОКОТНИЦА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2390,5035,'КЛЪШКА РЕКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2391,2899,'КЛЮЧ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2392,5340,'КМЕТОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2393,5343,'КМЕТЧЕТА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2394,3230,'КНЕЖА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2395,6390,'КНИЖОВНИК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2396,3677,'КНЯЖЕВА МАХАЛА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2397,6566,'КНЯЖЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2398,6077,'КНЯЖЕВСКО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2399,6593,'КОБИЛИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2400,3442,'КОБИЛЯК',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2401,6734,'КОБИЛЯНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2402,6272,'КОВАЧ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2403,7852,'КОВАЧЕВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2404,2969,'КОВАЧЕВИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2405,6264,'КОВАЧЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2406,2824,'КОВАЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2407,4477,'КОВАЧЕВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2408,2450,'КОВАЧЕВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2409,2023,'КОВАЧЕВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2410,8874,'КОВАЧИТЕ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2411,3643,'КОВАЧИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2412,6913,'КОВИЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2413,5241,'КОЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2414,5365,'КОЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2415,4813,'КОЖАРИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2416,2487,'КОЖИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2417,5097,'КОЖЛЮВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2418,6957,'КОЖУХАРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2419,4248,'КОЗАНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2420,5915,'КОЗАР БЕЛЕНЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2421,8493,'КОЗАРЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2422,5148,'КОЗАРЕВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2423,6070,'КОЗАРЕВЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2424,8674,'КОЗАРЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2425,4983,'КОЗАРКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2426,4584,'КОЗАРСКО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2427,5344,'КОЗИ РОГ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2428,8843,'КОЗИН ДОЛ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2429,6848,'КОЗИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2430,7833,'КОЗИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2431,8224,'КОЗИЧИНО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2432,6865,'КОЗЛЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2433,6371,'КОЗЛЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2434,5290,'КОЗЛОВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2435,3320,'КОЗЛОДУЙ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2436,9387,'КОЗЛОДУЙЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2437,7913,'КОЗМА ПРЕЗВИТЕР',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2438,8255,'КОЗНИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2439,5080,'КОЗЯ РЕКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2440,7673,'КОЗЯК',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2441,5842,'КОИЛОВЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2442,5986,'КОЙНАРЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2443,5350,'КОЙЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2444,1191,'КОКАЛЯНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2445,6676,'КОКИЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2446,4963,'КОКОРА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2447,4725,'КОКОРКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2448,4971,'КОКОРЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2449,6733,'КОКОШАНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2450,5084,'КОЛАРИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2451,7613,'КОЛАРОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2452,2880,'КОЛАРОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2453,6271,'КОЛАРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2454,6460,'КОЛАРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2455,9481,'КОЛАРЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2456,6050,'КОЛЕНА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2457,6376,'КОЛЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2458,2838,'КОЛИБИТЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2459,5343,'КОЛИШОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2460,7675,'КОЛОБЪР',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2461,5360,'КОЛЮ ГАНЕВ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2462,6237,'КОЛЮ МАРИНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2463,3516,'КОМАРЕВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2464,3247,'КОМАРЕВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2465,5853,'КОМАРЕВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2466,9269,'КОМАРЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2467,3648,'КОМОЩИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2468,9254,'КОМУНАРИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2469,6690,'КОМУНИГА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2470,2255,'КОМЩИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2471,7868,'КОНАК',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2472,9548,'КОНАРЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2473,6189,'КОНАРЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2474,2792,'КОНАРСКО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2475,5364,'КОНАРСКОТО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2476,6593,'КОНДОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2477,8275,'КОНДОЛОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2478,2422,'КОНДОФРЕЙ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2479,8623,'КОНЕВЕЦ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2480,9887,'КОНЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2481,7442,'КОНЕВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2482,6661,'КОНЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2483,6588,'КОННИЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2484,7995,'КОНОП',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2485,2379,'КОНСКА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2486,5080,'КОНСТАНТИН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2487,6267,'КОНСТАНТИНОВЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2488,9180,'КОНСТАНТИНОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2489,8129,'КОНСТАНТИНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2490,6494,'КОНСТАНТИНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2491,6841,'КОНТИЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2492,4268,'КОНУШ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2493,6370,'КОНУШ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2494,6828,'КОНЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2495,9748,'КОНЬОВЕЦ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2496,2085,'КОНЬОВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2497,8920,'КОНЬОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2498,2540,'КОНЯВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2499,2409,'КОПАНИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2500,3467,'КОПИЛОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2501,2543,'КОПИЛОВЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2502,6698,'КОПИТНИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2503,7775,'КОПРЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2504,2567,'КОПРИВА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2505,7120,'КОПРИВЕЦ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2506,2921,'КОПРИВЛЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2507,2077,'КОПРИВЩИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2508,6137,'КОПРИНКА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2509,5342,'КОПЧЕЛИИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2510,6392,'КОРЕН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2511,4921,'КОРИИТЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2512,4976,'КОРИТАТА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2513,9403,'КОРИТЕН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2514,5455,'КОРИЯТА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2515,2688,'КОРКИНА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2516,5433,'КОРМЯНСКО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2517,2970,'КОРНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2518,8930,'КОРТЕН',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2519,6820,'КОС',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2520,7612,'КОСАРА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2521,5392,'КОСАРКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2522,2448,'КОСАЧА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2523,5095,'КОСЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2524,5380,'КОСИЛКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2525,8223,'КОСОВЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2526,4240,'КОСОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2527,3794,'КОСОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2528,9974,'КОСОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2529,2557,'КОСОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2530,3833,'КОСТА ПЕРЧЕВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2531,5301,'КОСТАДИНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2532,2060,'КОСТАДИНКИНО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2533,7273,'КОСТАНДЕНЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2534,4644,'КОСТАНДОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2535,5099,'КОСТЕЛ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2536,3047,'КОСТЕЛЕВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2537,8441,'КОСТЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2538,9806,'КОСТЕНА РЕКА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2539,2030,'КОСТЕНЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2540,2042,'КОСТЕНЕЦ - село',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2541,5343,'КОСТЕНКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2542,3518,'КОСТЕНЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2543,8283,'КОСТИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2544,4205,'КОСТИЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2545,6593,'КОСТИЛКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2546,2230,'КОСТИНБРОД',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2547,6743,'КОСТИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2548,3755,'КОСТИЧОВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2549,6533,'КОСТУР',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2550,6884,'КОСТУРИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2551,2489,'КОСТУРИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2552,8970,'КОТЕЛ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2553,3522,'КОТЕНОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2554,6957,'КОТЛАРИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2555,9374,'КОТЛЕНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2556,5097,'КОТУЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2557,2955,'КОЧАН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2558,4999,'КОЧАНИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2559,4119,'КОЧЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2560,2640,'КОЧЕРИНОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2561,9477,'КОЧМАР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2562,9862,'КОЧОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2563,3771,'КОШАВА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2564,2390,'КОШАРЕВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2565,2453,'КОШАРИТЕ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2566,8253,'КОШАРИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2567,7062,'КОШАРНА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2568,4778,'КОШНИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2569,7783,'КОШНИЧАРИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2570,7087,'КОШОВ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2571,6075,'КРАВИНО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2572,3048,'КРАВОДЕР',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2573,9418,'КРАГУЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2574,2149,'КРАЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2575,2781,'КРАИЩЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2576,9535,'КРАИЩЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2577,9875,'КРАЙГОРЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2578,4900,'КРАЙНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2579,2649,'КРАЙНИ ДОЛ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2580,2633,'КРАЙНИЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2581,6739,'КРАЙНО СЕЛО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2582,8752,'КРАЙНОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2583,7997,'КРАЙПОЛЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2584,9287,'КРАКРА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2585,2349,'КРАЛЕВДОЛ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2586,6362,'КРАЛЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2587,7770,'КРАЛЕВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2588,4452,'КРАЛИ МАРКО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2589,5429,'КРАМОЛИН',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2590,6898,'КРАН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2591,9649,'КРАНЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2592,7549,'КРАНОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2593,3149,'КРАПЕЦ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2594,9674,'КРАПЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2595,3434,'КРАПЧЕНЕ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2596,2370,'КРАСАВА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2597,9534,'КРАСЕН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2598,7075,'КРАСЕН',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2599,9935,'КРАСЕН ДОЛ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2600,9258,'КРАСИМИР',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2601,6962,'КРАСИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2602,5242,'КРАСНО ГРАДИЩЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2603,4178,'КРАСНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2604,7925,'КРАСНОСЕЛЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2605,3964,'КРАЧИМИР',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2606,2771,'КРЕМЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2607,6884,'КРЕМЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2608,9639,'КРЕМЕНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2609,4755,'КРЕМЕНЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2610,6822,'КРЕМЕНЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2611,2653,'КРЕМЕНИК',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2612,6410,'КРЕПОСТ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2613,7845,'КРЕПЧА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2614,5367,'КРЕСЛЮВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2615,2840,'КРЕСНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2616,5961,'КРЕТА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2617,3127,'КРЕТА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2618,2951,'КРИБУЛ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2619,3669,'КРИВА БАРА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2620,3328,'КРИВА БАРА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2621,8936,'КРИВА КРУША',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2622,9938,'КРИВА РЕКА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2623,1588,'КРИВИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2624,5747,'КРИВИНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2625,7132,'КРИВИНА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2626,9123,'КРИВИНИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2627,7456,'КРИВИЦА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2628,7269,'КРИВНЯ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2629,9217,'КРИВНЯ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2630,6387,'КРИВО ПОЛЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2631,3060,'КРИВОДОЛ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2632,2386,'КРИВОНОС',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2633,6884,'КРИЛАТИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2634,5097,'КРИЛЮВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2635,6671,'КРИН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2636,4148,'КРИСЛОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2637,4220,'КРИЧИМ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2638,2871,'КРОМИДОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2639,7278,'КРОЯЧ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2640,6766,'КРОЯЧЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2641,6438,'КРУМ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2642,6900,'КРУМОВГРАД',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2643,9149,'КРУМОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2644,2627,'КРУМОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2645,4112,'КРУМОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2646,8649,'КРУМОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2647,8487,'КРУМОВО ГРАДИЩЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2648,5080,'КРУМЧЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2649,9667,'КРУПЕН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2650,2740,'КРУПНИК',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2651,9121,'КРУША',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2652,2213,'КРУША',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2653,8877,'КРУШАРЕ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2654,9410,'КРУШАРИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2655,4919,'КРУШЕВ ДОЛ-пром.с.',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2656,8148,'КРУШЕВЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2657,2945,'КРУШЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2658,4291,'КРУШЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2659,5427,'КРУШЕВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2660,6744,'КРУШЕВСКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2661,5134,'КРУШЕТО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2662,6743,'КРУШКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2663,5860,'КРУШОВЕНЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2664,5881,'КРУШОВИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2665,2060,'КРУШОВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2666,3349,'КРУШОВИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2667,8482,'КРУШОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2668,4241,'КРУШОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2669,7962,'КРУШОЛАК',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2670,5561,'КРУШУНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2671,5460,'КРЪВЕНИК',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2672,5744,'КРЪКОЖАБЕНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2673,6140,'КРЪН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2674,2875,'КРЪНДЖИЛИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2675,5370,'КРЪНЧА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2676,4647,'КРЪСТАВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2677,4741,'КРЪСТАТИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2678,4177,'КРЪСТЕВИЧ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2679,5350,'КРЪСТЕНЯЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2680,5364,'КРЪСТЕЦ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2681,2805,'КРЪСТИЛЦИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2682,8121,'КРЪСТИНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2683,7786,'КРЪШНО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2684,8335,'КУБАДИН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2685,7300,'КУБРАТ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2686,1257,'КУБРАТОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2687,3798,'КУДЕЛИН',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2688,2788,'КУЗЬОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2689,4101,'КУКЛЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2690,5370,'КУКЛЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2691,8673,'КУКОРЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2692,4710,'КУКУВИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2693,6898,'КУКУРЯК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2694,2882,'КУКУРЯХЦЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2695,3800,'КУЛА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2696,2868,'КУЛАТА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2697,5937,'КУЛИНА ВОДА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2698,5380,'КУМАНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2699,9153,'КУМАНОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2700,4990,'КУНДЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2701,8646,'КУНЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2702,3140,'КУНИНО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2703,4921,'КУПЕН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2704,5463,'КУПЕН',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2705,6839,'КУПЦИТЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2706,3138,'КУРНОВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2707,4369,'КУРТОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2708,4223,'КУРТОВО КОНАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2709,4752,'КУТЕЛА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2710,7558,'КУТЛОВИЦА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2711,3767,'КУТОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2712,2567,'КУТУГЕРЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2713,5042,'КУЦАРОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2714,5189,'КУЦИНА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2715,6697,'КУЦОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2716,4986,'КУШЛА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2717,6927,'КЪКЛИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2718,5544,'КЪКРИНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2719,9821,'КЪЛНОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2720,6164,'КЪНЧЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2721,7997,'КЪПИНЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2722,5043,'КЪПИНОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2723,9528,'КЪПИНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2724,7434,'КЪПИНОВЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2725,6600,'КЪРДЖАЛИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2726,2820,'КЪРЛАНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2727,2860,'КЪРНАЛОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2728,4337,'КЪРНАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2729,5558,'КЪРПАЧЕВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2730,2825,'КЪРПЕЛОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2731,5380,'КЪРТИПЪНЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2732,5883,'КЪРТОЖАБЕНЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2733,6873,'КЪРЧОВСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2734,2563,'КЪРШАЛЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2735,4832,'КЪСАК',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2736,1276,'КЪТИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2737,5885,'КЪШИН',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2738,2492,'КЪШЛЕ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2739,9888,'КЬОЛМЕН',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2740,6728,'КЬОСЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2741,7951,'КЬОСЕВЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2742,9972,'КЮЛЕВЧА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2743,2500,'КЮСТЕНДИЛ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2744,5035,'ЛАГЕРИТЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2745,3743,'ЛАГОШЕВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2746,2811,'ЛАДАРЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2747,3262,'ЛАЗАРОВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2748,5097,'ЛАЗАРЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2749,5656,'ЛАКАРЕВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2750,2273,'ЛАКАТНИК',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2751,6823,'ЛАЛЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2752,8749,'ЛАЛКОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2753,6583,'ЛАМБУХ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2754,5876,'ЛАСКАР',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2755,2811,'ЛАСКАРЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2756,6767,'ЛАТИНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2757,6859,'ЛЕБЕД',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2758,2806,'ЛЕБНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2759,2494,'ЛЕВА РЕКА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2760,6540,'ЛЕВКА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2761,4743,'ЛЕВОЧЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2762,5900,'ЛЕВСКИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2763,4535,'ЛЕВСКИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2764,9171,'ЛЕВСКИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2765,2817,'ЛЕВУНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2766,5049,'ЛЕДЕНИК',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2767,3036,'ЛЕДЕНИКА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2768,2588,'ЛЕЛИНЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2769,6783,'ЛЕНИЩЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2770,5967,'ЛЕНКОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2771,4286,'ЛЕНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2772,6595,'ЛЕНСКО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2773,5987,'ЛЕПИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2774,5520,'ЛЕСИДРЕН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2775,5343,'ЛЕСИЧАРКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2776,5085,'ЛЕСИЧЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2777,5222,'ЛЕСИЧЕРИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2778,4463,'ЛЕСИЧОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2779,2567,'ЛЕСКА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2780,4928,'ЛЕСКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2781,2268,'ЛЕСКОВДОЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2782,3523,'ЛЕСКОВЕЦ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2783,3341,'ЛЕСКОВЕЦ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2784,2342,'ЛЕСКОВЕЦ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2785,9428,'ЛЕСКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2786,2119,'ЛЕСНОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2787,8754,'ЛЕСОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2788,3073,'ЛЕСУРА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2789,2207,'ЛЕТНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2790,5570,'ЛЕТНИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2791,6810,'ЛЕТОВНИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2792,2816,'ЛЕХОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2793,3445,'ЛЕХЧЕВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2794,2749,'ЛЕШКО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2795,5624,'ЛЕШКО ПРЕСОИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2796,6466,'ЛЕШНИКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2797,2481,'ЛЕШНИКОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2798,5578,'ЛЕШНИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2799,2808,'ЛЕШНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2800,4929,'ЛЕЩАК',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2801,6967,'ЛЕЩАРКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2802,2962,'ЛЕЩЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2803,8656,'ЛЕЯРОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2804,8107,'ЛИВАДА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2805,4921,'ЛИВАДЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2806,3168,'ЛИК',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2807,4858,'ЛИЛЕКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2808,4105,'ЛИЛКОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2809,7760,'ЛИЛЯК',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2810,2809,'ЛИЛЯНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2811,2597,'ЛИЛЯЧ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2812,3051,'ЛИЛЯЧЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2813,6936,'ЛИМЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2814,3489,'ЛИПЕН',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2815,4784,'ЛИПЕЦ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2816,2212,'ЛИПИНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2817,7242,'ЛИПНИК',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2818,2158,'ЛИПНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2819,3352,'ЛИПНИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2820,2547,'ЛИСЕЦ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2821,5568,'ЛИСЕЦ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2822,2023,'ЛИСЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2823,9951,'ЛИСИ ВРЪХ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2824,6645,'ЛИСИЦИТЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2825,2743,'ЛИСИЯ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2826,6541,'ЛИСОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2827,7642,'ЛИСТЕЦ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2828,8573,'ЛИСТЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2829,2144,'ЛИТАКОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2830,2433,'ЛОБОШ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2831,9869,'ЛОВЕЦ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2832,6070,'ЛОВЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2833,7741,'ЛОВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2834,5500,'ЛОВЕЧ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2835,5423,'ЛОВНИДОЛ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2836,7291,'ЛОВСКО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2837,4908,'ЛОВЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2838,9430,'ЛОВЧАНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2839,2737,'ЛОГОДАЖ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2840,5345,'ЛОЗА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2841,8440,'ЛОЗАРЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2842,9746,'ЛОЗЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2843,6552,'ЛОЗЕН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2844,1151,'ЛОЗЕН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2845,4489,'ЛОЗЕН',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2846,6062,'ЛОЗЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2847,5172,'ЛОЗЕН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2848,6894,'ЛОЗЕНГРАДЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2849,9414,'ЛОЗЕНЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2850,8688,'ЛОЗЕНЕЦ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2851,8277,'ЛОЗЕНЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2852,2821,'ЛОЗЕНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2853,5739,'ЛОЗЕТО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2854,5954,'ЛОЗИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2855,8466,'ЛОЗИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2856,9541,'ЛОЗНИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2857,7290,'ЛОЗНИЦА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2858,2507,'ЛОЗНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2859,2656,'ЛОКВАТА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2860,1513,'ЛОКОРСКО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2861,3600,'ЛОМ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2862,7135,'ЛОМ ЧЕРКОВНА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2863,5669,'ЛОМЕЦ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2864,9397,'ЛОМНИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2865,2562,'ЛОМНИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2866,2465,'ЛОМНИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2867,7838,'ЛОМЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2868,9237,'ЛОПУШНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2869,2252,'ЛОПУШНЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2870,2193,'ЛОПЯН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2871,7445,'ЛУДОГОРЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2872,5770,'ЛУКОВИТ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2873,2296,'ЛУКОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2874,6921,'ЛУЛИЧКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2875,7439,'ЛЪВИНО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2876,6638,'ЛЪВОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2877,2182,'ЛЪГА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2878,2971,'ЛЪЖНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2879,8216,'ЛЪКА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2880,4726,'ЛЪКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2881,4241,'ЛЪКАВИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2882,4241,'ЛЪКИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2883,2928,'ЛЪКИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2884,7534,'ЛЮБЕН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2885,4188,'ЛЮБЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2886,9148,'ЛЮБЕН КАРАВЕЛОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2887,8949,'ЛЮБЕНЕЦ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2888,8947,'ЛЮБЕНОВА МАХАЛА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2889,5955,'ЛЮБЕНОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2890,6267,'ЛЮБЕНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2891,6342,'ЛЮБЕНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2892,5176,'ЛЮБЕНЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2893,6550,'ЛЮБИМЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2894,6796,'ЛЮБИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2895,7980,'ЛЮБИЧЕВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2896,7843,'ЛЮБЛЕН',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2897,2061,'ЛЮБНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2898,2820,'ЛЮБОВИЩЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2899,2811,'ЛЮБОВКА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2900,4833,'ЛЮБЧА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2901,2352,'ЛЮЛИН',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2902,8685,'ЛЮЛИН',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2903,4785,'ЛЮЛКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2904,6050,'ЛЮЛЯК',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2905,9525,'ЛЮЛЯКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2906,6684,'ЛЮЛЯКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2907,8570,'ЛЮЛЯКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2908,5307,'ЛЮЛЯЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2909,3038,'ЛЮТАДЖИК',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2910,3159,'ЛЮТИБРОД',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2911,3165,'ЛЮТИДОЛ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2912,2791,'ЛЮТОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2913,6198,'ЛЯВА РЕКА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2914,2474,'ЛЯЛИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2915,5140,'ЛЯСКОВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2916,6397,'ЛЯСКОВЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2917,8518,'ЛЯСКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2918,4238,'ЛЯСКОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2919,4818,'ЛЯСКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2920,6045,'ЛЯСКОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2921,6667,'ЛЯСКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2922,9948,'ЛЯТНО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2923,9617,'ЛЯХОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2924,4416,'ЛЯХОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2925,4710,'МАГАРДЖИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2926,3448,'МАДАН',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2927,4900,'МАДАН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2928,9971,'МАДАРА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2929,2022,'МАДЖАРЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2930,6383,'МАДЖАРИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2931,6480,'МАДЖАРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2932,6063,'МАДЖЕРИТО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2933,2549,'МАЗАРАЧЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2934,3777,'МАЙОР УЗУНОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2935,5085,'МАЙСКО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2936,6675,'МАЙСТОРОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2937,6784,'МАК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2938,7750,'МАКАРИОПОЛСКО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2939,6640,'МАКЕДОНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2940,7785,'МАКОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2941,2124,'МАКОЦЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2942,3850,'МАКРЕШ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2943,2225,'МАЛА РАКОВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2944,2669,'МАЛА ФУЧА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2945,2021,'МАЛА ЦЪРКВА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2946,6392,'МАЛЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2947,4891,'МАЛЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2948,8689,'МАЛЕНОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2949,2691,'МАЛИ ВЪРБОВНИК',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2950,3749,'МАЛИ ДРЕНОВЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2951,9474,'МАЛИ ИЗВОР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2952,9559,'МАЛИНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2953,8327,'МАЛИНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2954,5335,'МАЛИНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2955,6593,'МАЛИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2956,5582,'МАЛИНОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2957,4742,'МАЛКА АРДА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2958,6045,'МАЛКА ВЕРЕЯ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2959,5729,'МАЛКА ЖЕЛЯЗНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2960,8519,'МАЛКА ПОЛЯНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2961,9386,'МАЛКА СМОЛНИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2962,7997,'МАЛКА ЧЕРКОВНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2963,6941,'МАЛКА ЧИНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2964,5370,'МАЛКИ БЪЛГАРЕНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2965,6479,'МАЛКИ ВОДЕН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2966,5432,'МАЛКИ ВЪРШЕЦ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2967,2184,'МАЛКИ ИСКЪР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2968,5365,'МАЛКИ СТАНЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2969,2800,'МАЛКИ ЦАЛИМ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2970,5028,'МАЛКИ ЧИФЛИК',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2971,6425,'МАЛКО АСЕНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2972,6476,'МАЛКО БРЯГОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2973,7067,'МАЛКО ВРАНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2974,6558,'МАЛКО ГРАДИЩЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2975,6227,'МАЛКО ДРЯНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2976,6052,'МАЛКО КАДИЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2977,6927,'МАЛКО КАМЕНЯНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2978,8756,'МАЛКО КИРИЛОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2979,4951,'МАЛКО КРУШЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2980,6482,'МАЛКО ПОПОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2981,8981,'МАЛКО СЕЛО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2982,6228,'МАЛКО ТРЪНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2983,8350,'МАЛКО ТЪРНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2984,7923,'МАЛКО ЦЪРКВИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2985,8857,'МАЛКО ЧОЧОВЕНИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2986,8751,'МАЛКО ШАРКОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2987,6898,'МАЛКОЧ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2988,1362,'МАЛО БУЧИНО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2989,4450,'МАЛО КОНАРЕ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2990,4183,'МАЛО КРУШЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2991,2205,'МАЛО МАЛОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2992,3078,'МАЛО ПЕЩЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2993,2636,'МАЛО СЕЛО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2994,7978,'МАЛОГРАДЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2995,9871,'МАЛОМИР',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2996,8650,'МАЛОМИР',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2997,8737,'МАЛОМИРОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2998,3255,'МАЛОРАД',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (2999,5304,'МАЛУША',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3000,5917,'МАЛЧИКА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3001,5050,'МАЛЧОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3002,5367,'МАЛЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3003,6935,'МАЛЪК ДЕВЕСИЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3004,6394,'МАЛЪК ИЗВОР',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3005,5734,'МАЛЪК ИЗВОР',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3006,8742,'МАЛЪК МАНАСТИР',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3007,7429,'МАЛЪК ПОРОВЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3008,7620,'МАЛЪК ПРЕСЛАВЕЦ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3009,4194,'МАЛЪК ЧАРДАК',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3010,8743,'МАМАРЧЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3011,2168,'МАНАСЕЛСКА РЕКА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3012,4245,'МАНАСТИР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3013,9224,'МАНАСТИР',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3014,6390,'МАНАСТИР',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3015,7856,'МАНАСТИРИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3016,2288,'МАНАСТИРИЩЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3017,3354,'МАНАСТИРИЩЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3018,7285,'МАНАСТИРСКО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3019,7292,'МАНАСТИРЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3020,6357,'МАНДРА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3021,6585,'МАНДРИЦА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3022,5363,'МАНЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3023,4137,'МАНОЛЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3024,8453,'МАНОЛИЧ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3025,6152,'МАНОЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3026,4138,'МАНОЛСКО КОНАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3027,5392,'МАНОЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3028,7967,'МАНУШЕВЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3029,6800,'МАНЧЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3030,5070,'МАРАФЕЛЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3031,9745,'МАРАШ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3032,5035,'МАРГОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3033,2870,'МАРИКОСТИНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3034,8154,'МАРИНКА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3035,4365,'МАРИНО ПОЛЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3036,2867,'МАРИНО ПОЛЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3037,5097,'МАРИНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3038,5445,'МАРИНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3039,2044,'МАРИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3040,6247,'МАРКОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3041,9973,'МАРКОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3042,4108,'МАРКОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3043,3133,'МАРКОВО РАВНИЩЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3044,7058,'МАРТЕН',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3045,6745,'МАРТИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3046,3459,'МАРТИНОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3047,2725,'МАРУЛЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3048,5360,'МАРУЦЕКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3049,2949,'МАРЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3050,7869,'МАРЧИНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3051,5084,'МАРЯН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3052,5198,'МАСЛАРЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3053,6388,'МАСЛИНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3054,5351,'МАТЕШОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3055,6535,'МАТОЧИНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3056,2849,'МАХАЛАТА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3057,5081,'МАХАЛНИЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3058,6276,'МАЦА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3059,5647,'МАЧКОВЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3060,8987,'МЕДВЕН',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3061,6865,'МЕДЕВЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3062,6598,'МЕДЕН БУК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3063,8639,'МЕДЕН КЛАДЕНЕЦ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3064,4637,'МЕДЕНИ ПОЛЯНИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3065,3845,'МЕДЕШЕВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3066,3670,'МЕДКОВЕЦ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3067,6294,'МЕДНИКАРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3068,7319,'МЕДОВЕНЕ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3069,9238,'МЕДОВЕЦ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3070,7863,'МЕДОВИНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3071,3947,'МЕДОВНИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3072,6235,'МЕДОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3073,9388,'МЕДОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3074,8214,'МЕДОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3075,8644,'МЕЖДА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3076,7672,'МЕЖДЕН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3077,5343,'МЕЖДЕНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3078,3100,'МЕЗДРА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3079,3515,'МЕЗДРЕЯ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3080,6521,'МЕЗЕК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3081,2820,'МЕЛНИК',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3082,8755,'МЕЛНИЦА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3083,3472,'МЕЛЯНЕ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3084,9885,'МЕНГИШЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3085,2893,'МЕНДОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3086,4482,'МЕНЕНКЬОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3087,5147,'МЕРДАНЯ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3088,6430,'МЕРИЧЛЕРИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3089,2772,'МЕСТА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3090,6938,'МЕТЛИКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3091,9291,'МЕТЛИЧИНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3092,6873,'МЕТЛИЧИНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3093,6890,'МЕТЛИЧКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3094,9867,'МЕТОДИЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3095,9375,'МЕТОДИЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3096,2556,'МЕТОХИЯ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3097,7091,'МЕЧКА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3098,5843,'МЕЧКА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3099,8868,'МЕЧКАРЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3100,5307,'МЕЧКОВИЦА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3101,2060,'МЕЧКОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3102,2754,'МЕЧКУЛ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3103,7997,'МЕЧОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3104,2353,'МЕЩИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3105,3330,'МИЗИЯ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3106,5098,'МИЙКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3107,5572,'МИКРЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3108,2826,'МИКРЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3109,6660,'МИЛАДИНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3110,9431,'МИЛАДИНОВЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3111,7787,'МИЛАДИНОВЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3112,8657,'МИЛАДИНОВЦИ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3113,9859,'МИЛАНОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3114,2280,'МИЛАНОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3115,4921,'МИЛЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3116,4191,'МИЛЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3117,5350,'МИЛЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3118,5627,'МИЛЕНЧА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3119,7984,'МИЛИНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3120,5968,'МИЛКОВИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3121,4779,'МИЛКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3122,5345,'МИЛКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3123,2475,'МИЛКЬОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3124,2478,'МИЛОСЛАВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3125,3846,'МИЛЧИНА ЛЪКА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3126,2220,'МИНА БОЛШЕВИК',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3127,5044,'МИНДЯ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3128,5083,'МИНЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3129,6343,'МИНЕРАЛНИ БАНИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3130,6665,'МИНЗУХАР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3131,9372,'МИНКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3132,5735,'МИРКОВЕЦ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3133,2086,'МИРКОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3134,7751,'МИРОВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3135,6255,'МИРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3136,5158,'МИРОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3137,9921,'МИРОВЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3138,1289,'МИРОВЯНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3139,8119,'МИРОЛЮБОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3140,5094,'МИРЧОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3141,4443,'МИРЯНЦИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3142,2857,'МИТИНО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3143,4909,'МИТОВСКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3144,3464,'МИТРОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3145,6051,'МИХАЙЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3146,3355,'МИХАЙЛОВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3147,5347,'МИХАЙЛОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3148,9284,'МИХАЛИЧ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3149,6537,'МИХАЛИЧ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3150,4820,'МИХАЛКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3151,5248,'МИХАЛЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3152,4361,'МИХИЛЦИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3153,2862,'МИХНЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3154,5365,'МИХОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3155,5343,'МИЧКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3156,6840,'МИШЕВСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3157,5035,'МИШЕМОРКОВ ХАН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3158,5767,'МИШКАРЕТЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3159,9228,'МЛАДА ГВАРДИЯ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3160,8364,'МЛАДЕЖКО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3161,5428,'МЛАДЕН',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3162,6531,'МЛАДИНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3163,8886,'МЛАДОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3164,2654,'МЛАМОЛОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3165,8960,'МЛЕКАРЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3166,5441,'МЛЕЧЕВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3167,6781,'МЛЕЧИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3168,9932,'МОГИЛА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3169,6052,'МОГИЛА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3170,8627,'МОГИЛА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3171,7943,'МОГИЛЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3172,7165,'МОГИЛИНО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3173,5350,'МОГИЛИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3174,4761,'МОГИЛИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3175,9665,'МОГИЛИЩЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3176,6239,'МОГИЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3177,6867,'МОГИЛЯНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3178,6840,'МОДРЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3179,8994,'МОКРЕН',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3180,9861,'МОКРЕШ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3181,3647,'МОКРЕШ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3182,4408,'МОКРИЩЕ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3183,2035,'МОМИН ПРОХОД',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3184,5067,'МОМИН СБОР',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3185,4468,'МОМИНА КЛИСУРА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3186,6838,'МОМИНА СЪЛЗА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3187,8320,'МОМИНА ЦЪРКВА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3188,7706,'МОМИНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3189,6387,'МОМИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3190,4143,'МОМИНО СЕЛО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3191,4118,'МОМИНСКО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3192,6542,'МОМКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3193,6800,'МОМЧИЛГРАД',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3194,9221,'МОМЧИЛОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3195,4750,'МОМЧИЛОВЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3196,3400,'МОНТАНА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3197,5291,'МОРАВА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3198,7974,'МОРАВИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3199,3145,'МОРАВИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3200,7992,'МОРАВКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3201,5304,'МОРОВЕЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3202,7248,'МОРТАГОНОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3203,6959,'МОРЯНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3204,4333,'МОСКОВЕЦ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3205,6670,'МОСТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3206,9878,'МОСТИЧ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3207,4257,'МОСТОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3208,4978,'МОЧУРЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3209,2729,'МОЩАНЕЦ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3210,2477,'МРАКЕТНИЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3211,1261,'МРАМОР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3212,6562,'МРАМОР',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3213,2487,'МРАМОР',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3214,3054,'МРАМОРЕН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3215,5345,'МРАХОРИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3216,4362,'МРАЧЕНИК',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3217,6845,'МРЕЖИЧКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3218,8538,'МРЕЖИЧКО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3219,5367,'МРЪЗЕЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3220,4716,'МУГЛА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3221,5333,'МУЗГА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3222,4249,'МУЛДАВА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3223,6725,'МУРГА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3224,2247,'МУРГАШ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3225,6679,'МУРГОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3226,2437,'МУРЕНО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3227,2623,'МУРСАЛЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3228,2382,'МУРТИНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3229,6284,'МУСАЧЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3230,2139,'МУСАЧЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3231,6774,'МУСЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3232,5963,'МУСЕЛИЕВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3233,5247,'МУСИНА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3234,2920,'МУСОМИЩА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3235,6527,'МУСТРАК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3236,2061,'МУХОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3237,5370,'МУЦЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3238,8523,'МЪГЛЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3239,6865,'МЪГЛЕНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3240,6180,'МЪГЛИЖ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3241,4910,'МЪГЛИЩА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3242,7323,'МЪДРЕВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3243,6292,'МЪДРЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3244,6674,'МЪДРЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3245,8444,'МЪДРИНО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3246,6865,'МЪЖЕНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3247,2655,'МЪРВОДОЛ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3248,4996,'МЪРЗЯН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3249,5094,'МЪРТВИНАТА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3250,1696,'МЪРЧАЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3251,3443,'МЪРЧЕВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3252,8843,'МЪСЪРЛИИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3253,4176,'МЪТЕНИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3254,6497,'НАВЪСЕН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3255,7740,'НАДАРЕВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3256,4758,'НАДАРЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3257,6459,'НАДЕЖДЕН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3258,4185,'НАЙДЕН ГЕРОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3259,6224,'НАЙДЕНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3260,6800,'НАНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3261,6830,'НАНОВИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3262,5752,'НАНОВИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3263,4239,'НАРЕЧЕНСКИ БАНИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3264,2478,'НАСАЛЕВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3265,9962,'НАУМ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3266,8929,'НАУЧЕНЕ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3267,5055,'НАЦОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3268,2213,'НАЧЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3269,6693,'НЕБЕСКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3270,8431,'НЕВЕСТИНО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3271,6722,'НЕВЕСТИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3272,2595,'НЕВЕСТИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3273,9229,'НЕВША',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3274,1222,'НЕГОВАН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3275,3774,'НЕГОВАНОВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3276,2417,'НЕГОВАНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3277,2123,'НЕГУШЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3278,5231,'НЕДАН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3279,4187,'НЕДЕЛЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3280,4990,'НЕДЕЛИНО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3281,2213,'НЕДЕЛИЩЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3282,2594,'НЕДЕЛКОВА ГРАЩИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3283,2477,'НЕДЕЛКОВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3284,7251,'НЕДОКЛАН',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3285,5070,'НЕДЯЛКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3286,5350,'НЕДЯЛКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3287,8684,'НЕДЯЛСКО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3288,9692,'НЕЙКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3289,8993,'НЕЙКОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3290,2061,'НЕЙКЬОВЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3291,5380,'НЕЙЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3292,6797,'НЕНКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3293,9234,'НЕНОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3294,5367,'НЕНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3295,6831,'НЕОФИТ БОЗВЕЛИЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3296,9223,'НЕОФИТ РИЛСКИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3297,2396,'НЕПРАЗНЕНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3298,8230,'НЕСЕБЪР',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3299,2213,'НЕСЛА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3300,3039,'НЕФЕЛА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3301,5097,'НЕШЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3302,3241,'НИВЯНИН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3303,5365,'НИКАЧКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3304,9955,'НИКОЛА КОЗЛЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3305,9172,'НИКОЛАЕВКА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3306,6190,'НИКОЛАЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3307,5874,'НИКОЛАЕВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3308,2406,'НИКОЛАЕВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3309,8873,'НИКОЛАЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3310,5168,'НИКОЛАЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3311,5351,'НИКОЛАЕВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3312,2599,'НИКОЛИЧЕВЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3313,3429,'НИКОЛОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3314,7057,'НИКОЛОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3315,6364,'НИКОЛОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3316,5070,'НИКОЛОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3317,5098,'НИКОЛЧЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3318,5345,'НИКОЛЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3319,5940,'НИКОПОЛ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3320,2839,'НИКУДИН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3321,5068,'НИКЮП',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3322,8995,'НИСКА ПОЛЯНА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3323,7079,'НИСОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3324,5097,'НИЧОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3325,9883,'НОВА БЯЛА РЕКА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3326,5169,'НОВА ВЪРБОВКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3327,8900,'НОВА ЗАГОРА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3328,9493,'НОВА КАМЕНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3329,6595,'НОВА ЛИВАДА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3330,2925,'НОВА ЛОВЧА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3331,4581,'НОВА МАХАЛА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3332,6191,'НОВА МАХАЛА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3333,6330,'НОВА НАДЕЖДА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3334,7582,'НОВА ПОПИНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3335,7645,'НОВА ЧЕРНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3336,9116,'НОВА ШИПКА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3337,9149,'НОВАКОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3338,4262,'НОВАКОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3339,5332,'НОВАКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3340,8853,'НОВАЧЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3341,2147,'НОВАЧЕНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3342,5950,'НОВАЧЕНЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3343,7133,'НОВГРАД',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3344,4265,'НОВИ ИЗВОР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3345,1280,'НОВИ ИСКЪР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3346,9900,'НОВИ ПАЗАР',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3347,6710,'НОВИ ПАЗАР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3348,2110,'НОВИ ХАН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3349,2531,'НОВИ ЧИФЛИК',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3350,9356,'НОВО БОТЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3351,2212,'НОВО БЪРДО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3352,5175,'НОВО ГРАДИЩЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3353,2814,'НОВО ДЕЛЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3354,4167,'НОВО ЖЕЛЕЗАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3355,2874,'НОВО КОНОМЛАДИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3356,2923,'НОВО ЛЕСКИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3357,9113,'НОВО ОРЯХОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3358,8152,'НОВО ПАНИЧАРЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3359,5069,'НОВО СЕЛО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3360,2847,'НОВО СЕЛО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3361,2534,'НОВО СЕЛО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3362,3784,'НОВО СЕЛО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3363,7052,'НОВО СЕЛО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3364,2016,'НОВО СЕЛО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3365,4221,'НОВО СЕЛО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3366,6062,'НОВО СЕЛО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3367,2831,'НОВО ХОДЖОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3368,9825,'НОВО ЯНКОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3369,5088,'НОВОГОРЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3370,9807,'НОВОСЕЛ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3371,8958,'НОВОСЕЛЕЦ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3372,6697,'НОВОСЕЛИЩЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3373,2689,'НОВОСЕЛЯНЕ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3374,2394,'НОЕВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3375,7615,'НОЖАРЕВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3376,7441,'НОЖАРОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3377,5360,'НОЖЕРИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3378,5360,'НОСЕИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3379,6726,'НОЧЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3380,5097,'НЮШКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3381,5195,'ОБЕДИНЕНИЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3382,2738,'ОБЕЛ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3383,8250,'ОБЗОР',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3384,2776,'ОБИДИМ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3385,7920,'ОБИТЕЛ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3386,6800,'ОБИЧНИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3387,5922,'ОБНОВА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3388,9147,'ОБОРИЩЕ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3389,4522,'ОБОРИЩЕ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3390,7170,'ОБРЕТЕНИК',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3391,9630,'ОБРОЧИЩЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3392,6290,'ОБРУЧИЩЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3393,7671,'ОВЕН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3394,5340,'ОВОЩАРЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3395,5088,'ОВОЩНА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3396,6138,'ОВОЩНИК',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3397,5295,'ОВЧА МОГИЛА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3398,9233,'ОВЧАГА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3399,6922,'ОВЧАРИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3400,9395,'ОВЧАРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3401,7747,'ОВЧАРОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3402,6468,'ОВЧАРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3403,9805,'ОВЧАРОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3404,2647,'ОВЧАРЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3405,6846,'ОВЧЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3406,4448,'ОВЧЕПОЛЦИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3407,8660,'ОВЧИ КЛАДЕНЕЦ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3408,4972,'ОГЛЕД',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3409,8467,'ОГНЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3410,2947,'ОГНЯНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3411,2117,'ОГНЯНОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3412,9423,'ОГНЯНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3413,4417,'ОГНЯНОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3414,2297,'ОГОЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3415,4990,'ОГРАДНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3416,9529,'ОГРАЖДЕН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3417,3679,'ОДОРОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3418,2408,'ОДРАНИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3419,9357,'ОДРИНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3420,6584,'ОДРИНЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3421,5893,'ОДЪРНЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3422,9362,'ОДЪРЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3423,2373,'ОЗЪРНОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3424,5350,'ОКОЛИИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3425,8669,'ОКОП',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3426,7680,'ОКОРШ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3427,8727,'ОМАН',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3428,9949,'ОМАРЧЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3429,8921,'ОМАРЧЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3430,7900,'ОМУРТАГ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3431,9486,'ОНОГУР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3432,7840,'ОПАКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3433,6078,'ОПАН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3434,9347,'ОПАНЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3435,5851,'ОПАНЕЦ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3436,2235,'ОПИЦВЕТ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3437,2276,'ОПЛЕТНЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3438,6254,'ОПЪЛЧЕНЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3439,6641,'ОПЪЛЧЕНСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3440,7977,'ОРАЧ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3441,5859,'ОРЕХОВИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3442,4877,'ОРЕХОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3443,5280,'ОРЕШ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3444,5749,'ОРЕША',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3445,9151,'ОРЕШАК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3446,5630,'ОРЕШАК',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3447,6929,'ОРЕШАРИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3448,2943,'ОРЕШЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3449,7684,'ОРЕШЕНЕ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3450,5763,'ОРЕШЕНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3451,4255,'ОРЕШЕЦ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3452,3945,'ОРЕШЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3453,4727,'ОРЕШЕЦ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3454,6475,'ОРЕШЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3455,6579,'ОРЕШИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3456,6561,'ОРЕШНИК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3457,6655,'ОРЕШНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3458,8248,'ОРИЗАРЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3459,4214,'ОРИЗАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3460,8893,'ОРИЗАРИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3461,6253,'ОРИЗОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3462,8325,'ОРЛИНЦИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3463,6892,'ОРЛИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3464,6545,'ОРЛОВ ДОЛ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3465,9359,'ОРЛОВА МОГИЛА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3466,5187,'ОРЛОВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3467,8985,'ОРЛОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3468,6354,'ОРЛОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3469,5340,'ОРЛОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3470,9490,'ОРЛЯК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3471,5577,'ОРЛЯНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3472,3665,'ОРСОЯ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3473,2785,'ОРЦЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3474,4942,'ОРЯХОВЕЦ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3475,6061,'ОРЯХОВИЦА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3476,6555,'ОРЯХОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3477,3300,'ОРЯХОВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3478,2186,'ОСЕЛНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3479,3171,'ОСЕЛНА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3480,7634,'ОСЕН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3481,3059,'ОСЕН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3482,7746,'ОСЕН',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3483,5037,'ОСЕНАРИТЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3484,7267,'ОСЕНЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3485,9753,'ОСЕНОВЕЦ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3486,2291,'ОСЕНОВЛАГ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3487,9155,'ОСЕНОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3488,2774,'ОСЕНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3489,6153,'ОСЕТЕНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3490,2164,'ОСИКОВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3491,2965,'ОСИКОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3492,4819,'ОСИКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3493,7862,'ОСИКОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3494,2165,'ОСИКОВСКА ЛАКАВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3495,2953,'ОСИНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3496,6216,'ОСЛАРКА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3497,3169,'ОСЛЕН КРИВОДОЛ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3498,9879,'ОСМАР',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3499,2121,'ОСОИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3500,8983,'ОСТРА МОГИЛА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3501,6062,'ОСТРА МОГИЛА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3502,7743,'ОСТРЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3503,4732,'ОСТРИ ПАЗЛАК',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3504,7161,'ОСТРИЦА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3505,4859,'ОСТРИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3506,3340,'ОСТРОВ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3507,6881,'ОСТРОВЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3508,6644,'ОСТРОВИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3509,7326,'ОСТРОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3510,7238,'ОСТРОВЧЕ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3511,3757,'ОСТРОКАПЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3512,6457,'ОСТЪР КАМЪК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3513,4163,'ОТЕЦ КИРИЛОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3514,4207,'ОТЕЦ ПАИСИЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3515,6624,'ОХЛЮВЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3516,3079,'ОХОДЕН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3517,3438,'ОХРИД',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3518,3162,'ОЧИНДОЛ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3519,2049,'ОЧУША',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3520,3937,'ОШАНЕ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3521,5350,'ОШАНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3522,2847,'ОЩАВА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3523,5197,'ПАВЕЛ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3524,6155,'ПАВЕЛ БАНЯ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3525,4889,'ПАВЕЛСКО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3526,5365,'ПАВЛЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3527,5200,'ПАВЛИКЕНИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3528,3044,'ПАВОЛЧЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3529,2632,'ПАДАЛА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3530,6960,'ПАДАЛО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3531,2747,'ПАДЕШ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3532,9136,'ПАДИНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3533,6771,'ПАДИНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3534,7617,'ПАДИНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3535,2438,'ПАДИНЕ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3536,4400,'ПАЗАРДЖИК',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3537,6829,'ПАЗАРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3538,7681,'ПАИСИЕВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3539,5173,'ПАИСИЙ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3540,7767,'ПАЙДУШКО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3541,7850,'ПАЛАМАРЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3542,2829,'ПАЛАТ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3543,2782,'ПАЛАТНИК',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3544,2681,'ПАЛАТОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3545,8698,'ПАЛАУЗОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3546,3439,'ПАЛИЛУЛА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3547,5083,'ПАЛИЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3548,4459,'ПАМИДОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3549,4870,'ПАМПОРОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3550,9934,'ПАМУКЧИИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3551,6058,'ПАМУКЧИИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3552,4500,'ПАНАГЮРИЩЕ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3553,4520,'ПАНАГЮРСКИ КОЛОНИИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3554,9802,'ПАНАЙОТ ВОЛОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3555,7929,'ПАНАЙОТ ХИТОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3556,8867,'ПАНАРЕТОВЦИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3557,8254,'ПАНИЦОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3558,6172,'ПАНИЧЕРЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3559,4179,'ПАНИЧЕРИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3560,7928,'ПАНИЧИНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3561,6723,'ПАНИЧКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3562,2060,'ПАНОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3563,2685,'ПАНЧАРЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3564,1137,'ПАНЧАРЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3565,6657,'ПАНЧЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3566,6851,'ПАПРАТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3567,5094,'ПАПРАТЛИВА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3568,2474,'ПАРАМУН',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3569,2926,'ПАРИЛ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3570,9245,'ПАРТИЗАНИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3571,6218,'ПАРТИЗАНИН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3572,5344,'ПАРЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3573,5224,'ПАСКАЛЕВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3574,9370,'ПАСКАЛЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3575,6776,'ПАСПАЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3576,2631,'ПАСТРА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3577,2659,'ПАСТУХ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3578,4418,'ПАТАЛЕНИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3579,6710,'ПАТИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3580,5225,'ПАТРЕШ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3581,5631,'ПАТРЕШКО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3582,4267,'ПАТРИАРХ ЕВТИМОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3583,2069,'ПАУНОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3584,6969,'ПАШИНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3585,6572,'ПАШКУЛ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3586,4632,'ПАШОВИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3587,6529,'ПАШОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3588,7771,'ПЕВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3589,4335,'ПЕВЦИТЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3590,5095,'ПЕЙКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3591,5370,'ПЕЙНА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3592,5345,'ПЕЙОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3593,7127,'ПЕЙЧИНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3594,2582,'ПЕЛАТИКОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3595,6593,'ПЕЛЕВУН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3596,6948,'ПЕЛИН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3597,5895,'ПЕЛИШАТ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3598,5333,'ПЕНКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3599,2499,'ПЕНКЬОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3600,6741,'ПЕНЬОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3601,7158,'ПЕПЕЛИНА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3602,6643,'ПЕПЕЛИЩЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3603,3841,'ПЕРИЛОВЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3604,2300,'ПЕРНИК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3605,6673,'ПЕРПЕРЕК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3606,6949,'ПЕРУНИКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3607,4225,'ПЕРУЩИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3608,6798,'ПЕСНОПОЙ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3609,4208,'ПЕСНОПОЙ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3610,3519,'ПЕСОЧНИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3611,7119,'ПЕТ КЛАДЕНЦИ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3612,9940,'ПЕТ МОГИЛИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3613,8953,'ПЕТ МОГИЛИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3614,6666,'ПЕТЕЛОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3615,5184,'ПЕТКО КАРАВЕЛОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3616,5434,'ПЕТКО СЛАВЕЙКОВ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3617,2111,'ПЕТКОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3618,4740,'ПЕТКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3619,5370,'ПЕТКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3620,5084,'ПЕТКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3621,9521,'ПЕТЛЕШКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3622,6634,'ПЕТЛИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3623,5933,'ПЕТОКЛАДЕНЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3624,5784,'ПЕТРЕВЕНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3625,2936,'ПЕТРЕЛИК',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3626,7956,'ПЕТРИНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3627,2085,'ПЕТРИЧ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3628,2850,'ПЕТРИЧ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3629,4911,'ПЕТРОВ ДОЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3630,9225,'ПЕТРОВ ДОЛ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3631,2815,'ПЕТРОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3632,6058,'ПЕТРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3633,5347,'ПЕТРОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3634,3521,'ПЕТРОХАН',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3635,5878,'ПЕТЪРНИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3636,2234,'ПЕТЪРЧ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3637,5345,'ПЕЦОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3638,7428,'ПЕЧЕНИЦА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3639,4912,'ПЕЧИНСКО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3640,3733,'ПЕШАКОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3641,2443,'ПЕЩЕРА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3642,4550,'ПЕЩЕРА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3643,4754,'ПЕЩЕРА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3644,5788,'ПЕЩЕРНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3645,8525,'ПЕЩЕРСКО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3646,2618,'ПИПЕРЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3647,2831,'ПИПЕРИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3648,2508,'ПИПЕРКОВ ЧИФЛИК',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3649,7129,'ПИПЕРКОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3650,5035,'ПИРАМИДАТА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3651,7090,'ПИРГОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3652,2070,'ПИРДОП',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3653,2823,'ПИРИН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3654,7976,'ПИРИНЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3655,8528,'ПИРНЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3656,7081,'ПИСАНЕЦ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3657,4744,'ПИСАНИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3658,5127,'ПИСАРЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3659,9927,'ПИСАРЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3660,9527,'ПИСАРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3661,5871,'ПИСАРОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3662,8289,'ПИСМЕНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3663,8942,'ПИТОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3664,2218,'ПИШАНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3665,3662,'ПИШУРКА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3666,4451,'ПИЩИГОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3667,6813,'ПИЯВЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3668,6850,'ПЛАЗИЩЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3669,5042,'ПЛАКОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3670,3781,'ПЛАКУДЕР',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3671,1475,'ПЛАНА',23);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3672,6599,'ПЛАНИНЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3673,2340,'ПЛАНИНИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3674,8565,'ПЛАНИНИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3675,6560,'ПЛАНИНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3676,4940,'ПЛАНИНСКО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3677,4921,'ПЛАНИНЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3678,5367,'ПЛАНИНЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3679,9365,'ПЛАЧИДОЛ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3680,5370,'ПЛАЧКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3681,5360,'ПЛАЧКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3682,5800,'ПЛЕВЕН',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3683,9522,'ПЛЕНИМИР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3684,2954,'ПЛЕТЕНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3685,3931,'ПЛЕШИВЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3686,6800,'ПЛЕШИНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3687,9920,'ПЛИСКА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3688,4000,'ПЛОВДИВ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3689,4979,'ПЛОВДИВЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3690,6890,'ПЛОВКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3691,6257,'ПЛОДОВИТОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3692,6055,'ПЛОСКА МОГИЛА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3693,2810,'ПЛОСКИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3694,2072,'ПЛЪЗИЩЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3695,7934,'ПЛЪСТИНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3696,9372,'ПОБЕДА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3697,5873,'ПОБЕДА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3698,8679,'ПОБЕДА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3699,4638,'ПОБИТ КАМЪК',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3700,7262,'ПОБИТ КАМЪК',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3701,2554,'ПОБИТ КАМЪК',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3702,5365,'ПОБЪК',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3703,2218,'ПОВАЛИРЪЖ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3704,6630,'ПОВЕТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3705,7431,'ПОДАЙВА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3706,4733,'ПОДВИС',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3707,8450,'ПОДВИС',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3708,6850,'ПОДВРЪХ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3709,3852,'ПОДГОРE',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3710,8535,'ПОДГОРЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3711,2049,'ПОДГОРИЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3712,7768,'ПОДГОРИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3713,1221,'ПОДГУМЕР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3714,5852,'ПОДЕМ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3715,6880,'ПОДКОВА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3716,6312,'ПОДКРЕПА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3717,7632,'ПОДЛЕС',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3718,6945,'ПОДРУМЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3719,9391,'ПОДСЛОН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3720,6057,'ПОДСЛОН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3721,2229,'ПОЖАРЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3722,7622,'ПОЖАРЕВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3723,5041,'ПОЖЕРНИК',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3724,4524,'ПОИБРЕНЕ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3725,3764,'ПОКРАЙНА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3726,6575,'ПОКРОВАН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3727,2708,'ПОКРОВНИК',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3728,2758,'ПОЛЕНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3729,2804,'ПОЛЕНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3730,2561,'ПОЛЕТИНЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3731,3818,'ПОЛЕТКОВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3732,2751,'ПОЛЕТО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3733,5138,'ПОЛИКРАИЩЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3734,2060,'ПОЛИОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3735,9401,'ПОЛКОВНИК ДЯКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3736,6909,'ПОЛКОВНИК ЖЕЛЯЗОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3737,9432,'ПОЛКОВНИК ИВАНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3738,7579,'ПОЛКОВНИК ЛАМБРИНОВ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3739,9471,'ПОЛКОВНИК САВОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3740,9378,'ПОЛКОВНИК СВЕЩАРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3741,4794,'ПОЛКОВНИК СЕРАФИМОВ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3742,7677,'ПОЛКОВНИК ТАСЛАКОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3743,7553,'ПОЛКОВНИК ЧОЛАКОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3744,2551,'ПОЛСКА СКАКАВИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3745,6276,'ПОЛСКИ ГРАДЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3746,8123,'ПОЛСКИ ИЗВОР',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3747,5193,'ПОЛСКИ СЕНОВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3748,5180,'ПОЛСКИ ТРЪМБЕШ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3749,7131,'ПОЛСКО КОСОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3750,8937,'ПОЛСКО ПЪДАРЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3751,4977,'ПОЛЯНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3752,7584,'ПОЛЯНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3753,8654,'ПОЛЯНА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3754,6847,'ПОЛЯНЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3755,8544,'ПОЛЯНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3756,6464,'ПОЛЯНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3757,2068,'ПОЛЯНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3758,9239,'ПОЛЯЦИТЕ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3759,3476,'ПОМЕЖДИН',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3760,7164,'ПОМЕН',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3761,8200,'ПОМОРИЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3762,7839,'ПОМОЩИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3763,6297,'ПОМОЩНИК',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3764,2236,'ПОНОР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3765,5343,'ПОПАРИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3766,5365,'ПОПГЕРГЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3767,9377,'ПОПГРИГОРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3768,9478,'ПОПГРУЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3769,7590,'ПОПИНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3770,4528,'ПОПИНЦИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3771,3244,'ПОПИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3772,7545,'ПОПКРАЛЕВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3773,6398,'ПОПОВЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3774,4127,'ПОПОВИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3775,9101,'ПОПОВИЧ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3776,8735,'ПОПОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3777,7800,'ПОПОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3778,5035,'ПОПОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3779,5345,'ПОПОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3780,2060,'ПОПОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3781,2014,'ПОПОВЯНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3782,5365,'ПОПРАЙКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3783,4759,'ПОПРЕЛКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3784,7564,'ПОПРУСАНОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3785,5084,'ПОПРУСЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3786,5084,'ПОПСКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3787,5466,'ПОПСКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3788,6580,'ПОПСКО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3789,5898,'ПОРДИМ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3790,7218,'ПОРОИЩЕ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3791,8221,'ПОРОЙ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3792,4281,'ПОРОЙНА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3793,7952,'ПОРОЙНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3794,7658,'ПОРОЙНО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3795,2639,'ПОРОМИНОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3796,3432,'ПОРТИТОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3797,9409,'ПОРУЧИК КЪРДЖИЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3798,9658,'ПОРУЧИК ЧУНЧЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3799,7853,'ПОСАБИНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3800,7567,'ПОСЕВ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3801,6833,'ПОСТНИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3802,5309,'ПОТОК',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3803,4768,'ПОТОКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3804,2127,'ПОТОП',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3805,6963,'ПОТОЧАРКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3806,6850,'ПОТОЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3807,6960,'ПОТОЧНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3808,2455,'ПОЦЪРНЕНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3809,5125,'ПРАВДА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3810,7690,'ПРАВДА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3811,8695,'ПРАВДИНО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3812,6765,'ПРАВДОЛЮБ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3813,9945,'ПРАВЕНЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3814,2161,'ПРАВЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3815,2170,'ПРАВЕШКА ЛАКАВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3816,4191,'ПРАВИЩЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3817,2894,'ПРАВО БЪРДО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3818,6248,'ПРАВОСЛАВ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3819,4287,'ПРАВОСЛАВЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3820,3917,'ПРАУЖДА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3821,5345,'ПРАХАЛИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3822,3457,'ПРЕВАЛА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3823,2571,'ПРЕКОЛНИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3824,2206,'ПРЕКРЪСТЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3825,7325,'ПРЕЛЕЗ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3826,5545,'ПРЕЛОМ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3827,5040,'ПРЕОБРАЖЕНСКИ МАНАС',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3828,8541,'ПРЕОБРАЖЕНЦИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3829,6862,'ПРЕСЕКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3830,9558,'ПРЕСЕЛЕНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3831,7772,'ПРЕСЕЛЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3832,9922,'ПРЕСЕЛКА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3833,7762,'ПРЕСИЯН',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3834,6048,'ПРЕСЛАВЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3835,6454,'ПРЕСЛАВЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3836,7635,'ПРЕСЛАВЦИ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3837,4987,'ПРЕСОКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3838,9635,'ПРЕСПА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3839,2072,'ПРЕСПА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3840,5350,'ПРЕСТОЙ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3841,7754,'ПРЕСЯК',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3842,5542,'ПРЕСЯКА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3843,2452,'ПРИБОЙ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3844,9352,'ПРИЛЕП',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3845,8445,'ПРИЛЕП',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3846,8290,'ПРИМОРСКО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3847,9376,'ПРИМОРЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3848,9146,'ПРИПЕК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3849,6858,'ПРИПЕК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3850,8537,'ПРИПЕК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3851,9524,'ПРИСАД',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3852,8161,'ПРИСАД',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3853,6564,'ПРИСАДЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3854,9131,'ПРИСЕЛЦИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3855,8251,'ПРИСЕЛЦИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3856,5033,'ПРИСОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3857,5766,'ПРИСОЕТО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3858,7969,'ПРИСОЙНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3859,9965,'ПРИСТОЕ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3860,7748,'ПРОБУДА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3861,9200,'ПРОВАДИЯ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3862,4871,'ПРОГЛЕД',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3863,5045,'ПРОДАНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3864,5307,'ПРОДАНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3865,2007,'ПРОДАНОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3866,2471,'ПРОДАНЧА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3867,7739,'ПРОЛАЗ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3868,3913,'ПРОЛАЗНИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3869,9685,'ПРОЛЕЗ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3870,2228,'ПРОЛЕША',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3871,4358,'ПРОЛОМ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3872,6632,'ПРОПАСТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3873,7055,'ПРОСЕНА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3874,8548,'ПРОСЕНИК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3875,9175,'ПРОСЕЧЕН',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3876,7263,'ПРОСТОРНО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3877,3957,'ПРОТОПОПИНЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3878,9487,'ПРОФЕСОР ЗЛАТАРСКИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3879,7572,'ПРОФЕСОР ИШИРКОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3880,7668,'ПРОХЛАДА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3881,8336,'ПРОХОД',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3882,8944,'ПРОХОРОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3883,6062,'ПРЯПОРЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3884,6716,'ПРЯПОРЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3885,6811,'ПТИЧАР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3886,8998,'ПТИЧАРИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3887,7946,'ПТИЧЕВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3888,3049,'ПУДРИЯ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3889,5062,'ПУШЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3890,8718,'ПЧЕЛА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3891,6385,'ПЧЕЛАРИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3892,9550,'ПЧЕЛАРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3893,6664,'ПЧЕЛАРОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3894,2048,'ПЧЕЛИН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3895,8456,'ПЧЕЛИН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3896,7438,'ПЧЕЛИНА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3897,9363,'ПЧЕЛИНО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3898,6196,'ПЧЕЛИНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3899,5048,'ПЧЕЛИЩЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3900,9427,'ПЧЕЛНИК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3901,9118,'ПЧЕЛНИК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3902,7987,'ПЧЕЛНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3903,6268,'ПШЕНИЧЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3904,8992,'ПЪДАРЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3905,7959,'ПЪДАРИНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3906,4158,'ПЪДАРСКО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3907,6746,'ПЪДАРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3908,8317,'ПЪНЧЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3909,7958,'ПЪРВАН',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3910,4110,'ПЪРВЕНЕЦ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3911,8694,'ПЪРВЕНЕЦ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3912,6865,'ПЪРВЕНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3913,6882,'ПЪРВИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3914,2890,'ПЪРВОМАЙ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3915,4270,'ПЪРВОМАЙ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3916,5139,'ПЪРВОМАЙЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3917,5365,'ПЪРЖИГРАХ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3918,3531,'ПЪРЛИЧЕВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3919,5052,'ПЪРОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3920,5307,'ПЪРТЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3921,5380,'ПЪРША',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3922,6075,'ПЪСТРЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3923,6233,'ПЪСТРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3924,6519,'ПЪСТРОГОР',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3925,6597,'ПЪСТРООК',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3926,6379,'ПЪТНИКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3927,6496,'ПЯСЪЧЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3928,3938,'РАБИША',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3929,6384,'РАБОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3930,3842,'РАБРОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3931,8146,'РАВАДИНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3932,8238,'РАВДА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3933,6834,'РАВЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3934,2249,'РАВНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3935,9235,'РАВНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3936,5742,'РАВНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3937,3473,'РАВНА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3938,9124,'РАВНА ГОРА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3939,6526,'РАВНА ГОРА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3940,8151,'РАВНА ГОРА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3941,8117,'РАВНЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3942,9523,'РАВНЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3943,4931,'РАВНИЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3944,4781,'РАВНИНАТА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3945,4955,'РАВНИЩА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3946,2167,'РАВНИЩЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3947,7296,'РАВНО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3948,4913,'РАВНО НИВИЩЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3949,2129,'РАВНО ПОЛЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3950,7965,'РАВНО СЕЛО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3951,5089,'РАВНОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3952,4582,'РАВНОГОР',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3953,9294,'РАДАН ВОЙВОДА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3954,5185,'РАДАНОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3955,5370,'РАДАНЧЕТО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3956,9149,'РАДЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3957,8917,'РАДЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3958,5360,'РАДЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3959,8959,'РАДЕЦКИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3960,2447,'РАДИБОШ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3961,6427,'РАДИЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3962,4590,'РАДИЛОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3963,7245,'РАДИНГРАД',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3964,8983,'РАДИНКА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3965,5360,'РАДИНО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3966,4202,'РАДИНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3967,5838,'РАДИШЕВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3968,9808,'РАДКО ДИМИТРИЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3969,5041,'РАДКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3970,2548,'РАДЛОВЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3971,6260,'РАДНЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3972,5035,'РАДНЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3973,3144,'РАДОВЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3974,6564,'РАДОВЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3975,2488,'РАДОВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3976,5380,'РАДОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3977,5084,'РАДОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3978,5633,'РАДОЕВСКОТО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3979,5367,'РАДОЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3980,8323,'РАДОЙНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3981,2400,'РАДОМИР',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3982,5997,'РАДОМИРЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3983,2148,'РАДОТИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3984,2043,'РАДУИЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3985,2359,'РАДУЙ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3986,2222,'РАДУЛОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3987,6185,'РАДУНЦИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3988,6185,'РАДУНЦИ - САНАТОРИУ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3989,5540,'РАДЮВЕНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3990,5363,'РАЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3991,2253,'РАЗБОИЩЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3992,8531,'РАЗБОЙНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3993,7707,'РАЗБОЙНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3994,9790,'РАЗВИГОРОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3995,3633,'РАЗГРАД',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3996,7200,'РАЗГРАД',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3997,7659,'РАЗДЕЛ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3998,8747,'РАЗДЕЛ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (3999,9181,'РАЗДЕЛНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4000,6283,'РАЗДЕЛНА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4001,7989,'РАЗДЕЛЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4002,2835,'РАЗДОЛ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4003,2166,'РАЗДОЛАТА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4004,2162,'РАЗЛИВ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4005,2760,'РАЗЛОГ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4006,5089,'РАЗСОХА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4007,6525,'РАЙКОВА МОГИЛА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4008,5617,'РАЙКОВСКА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4009,5039,'РАЙКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4010,7421,'РАЙНИНО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4011,6423,'РАЙНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4012,5347,'РАЙНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4013,5094,'РАЙНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4014,5363,'РАЙНУШКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4015,2017,'РАЙОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4016,3067,'РАКЕВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4017,2451,'РАКИЛОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4018,2223,'РАКИТА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4019,5998,'РАКИТА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4020,2753,'РАКИТНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4021,3791,'РАКИТНИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4022,6067,'РАКИТНИЦА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4023,4640,'РАКИТОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4024,8547,'РАКЛИНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4025,8439,'РАКЛИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4026,3820,'РАКОВИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4027,2577,'РАКОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4028,8884,'РАКОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4029,9659,'РАКОВСКИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4030,7264,'РАКОВСКИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4031,4150,'РАКОВСКИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4032,8257,'РАКОВСКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4033,5875,'РАЛЕВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4034,5367,'РАЛЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4035,5098,'РАЛИНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4036,6820,'РАЛИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4037,7759,'РАЛИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4038,6965,'РАЛИЧЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4039,2569,'РАНЕНЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4040,6720,'РАНИ ЛИСТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4041,2484,'РАНИ ЛУГ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4042,2357,'РАСНИК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4043,3660,'РАСОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4044,6865,'РАСТНИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4045,5343,'РАХОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4046,5345,'РАЧЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4047,5350,'РАЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4048,5035,'РАШЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4049,2578,'РАШКА ГРАЩИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4050,2152,'РАШКОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4051,5350,'РАШОВИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4052,3532,'РАШОВИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4053,5093,'РАЮВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4054,3935,'РАЯНОВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4055,2204,'РАЯНОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4056,2446,'РАЯНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4057,5087,'РЕБРЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4058,2384,'РЕБРО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4059,2294,'РЕБРОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4060,3158,'РЕБЪРКОВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4061,5340,'РЕДЕШКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4062,2269,'РЕДИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4063,2380,'РЕЖАНЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4064,2562,'РЕЖИНЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4065,5088,'РЕЗАЧ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4066,6649,'РЕЗБАРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4067,8281,'РЕЗОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4068,4734,'РЕКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4069,5088,'РЕКИЧКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4070,2018,'РЕЛЬОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4071,3954,'РЕПЛЯНА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4072,5993,'РЕСЕЛЕЦ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4073,5060,'РЕСЕН',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4074,2621,'РЕСИЛОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4075,4793,'РЕЧАНИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4076,8567,'РЕЧИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4077,2483,'РЕЯНОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4078,2192,'РИБАРИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4079,5720,'РИБАРИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4080,6790,'РИБАРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4081,5847,'РИБЕН',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4082,4952,'РИБЕН ДОЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4083,6939,'РИБИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4084,2864,'РИБНИК',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4085,4973,'РИБНИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4086,2967,'РИБНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4087,6849,'РИДИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4088,6742,'РИДОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4089,2630,'РИЛА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4090,2643,'РИЛСКИ МАНАСТИР',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4091,2710,'РИЛЦИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4092,6274,'РИСИМАНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4093,5370,'РИТЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4094,9830,'РИШ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4095,8664,'РОБОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4096,4736,'РОВИНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4097,6916,'РОГАЧ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4098,9632,'РОГАЧЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4099,3962,'РОГЛЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4100,6845,'РОГОЗАРИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4101,3360,'РОГОЗЕН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4102,9560,'РОГОЗИНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4103,6469,'РОГОЗИНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4104,6845,'РОГОЗЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4105,4140,'РОГОШ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4106,5447,'РОГУЛЯТ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4107,5092,'РОДИНА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4108,6356,'РОДОПИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4109,6762,'РОДОПСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4110,8539,'РОЖДЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4111,2820,'РОЖЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4112,8630,'РОЗА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4113,6596,'РОЗИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4114,4340,'РОЗИНО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4115,4154,'РОЗОВЕЦ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4116,4583,'РОЗОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4117,6163,'РОЗОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4118,3130,'РОМАН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4119,2254,'РОПОТ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4120,9537,'РОСЕН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4121,4421,'РОСЕН',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4122,8150,'РОСЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4123,9369,'РОСЕНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4124,8318,'РОСЕНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4125,7784,'РОСИНА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4126,7933,'РОСИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4127,9540,'РОСИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4128,5221,'РОСИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4129,5091,'РОСНО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4130,2225,'РОСОМАН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4131,4653,'РОХЛЕВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4132,9252,'РОЯК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4133,2343,'РУДАРЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4134,6659,'РУДИНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4135,8536,'РУДИНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4136,8112,'РУДНИК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4137,9105,'РУДНИК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4138,4960,'РУДОЗЕМ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4139,5367,'РУЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4140,4102,'РУЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4141,8540,'РУЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4142,7744,'РУЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4143,3930,'РУЖИНЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4144,8722,'РУЖИЦА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4145,9954,'РУЖИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4146,7692,'РУЙНО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4147,5304,'РУЙЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4148,6057,'РУМАНЯ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4149,6453,'РУМЕЛИЯ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4150,5785,'РУМЯНЦЕВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4151,5397,'РУНЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4152,2863,'РУПИТЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4153,6251,'РУПКИТЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4154,3726,'РУПЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4155,5994,'РУПЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4156,8574,'РУПЧА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4157,6695,'РУСАЛИНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4158,6795,'РУСАЛСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4159,5057,'РУСАЛЯ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4160,7000,'РУСЕ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4161,5380,'РУСИНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4162,3148,'РУСКА БЕЛА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4163,5035,'РУСКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4164,8105,'РУСОКАСТРО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4165,4956,'РУСТАН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4166,5079,'РУХОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4167,6928,'РУЧЕЙ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4168,2060,'РЪЖАНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4169,2389,'РЪЖДАВЕЦ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4170,2550,'РЪЖДАВИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4171,2856,'РЪЖДАК',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4172,4169,'РЪЖЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4173,4170,'РЪЖЕВО КОНАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4174,6171,'РЪЖЕНА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4175,6456,'РЪЖЕНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4176,8530,'РЪЖИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4177,2568,'РЪСОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4178,6850,'РЪТ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4179,7935,'РЪТЛИНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4180,8842,'РЪЧЕНИЦА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4181,5345,'РЯЗКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4182,7070,'РЯХОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4183,5440,'РЯХОВЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4184,9251,'САВА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4185,7318,'САВИН',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4186,8643,'САВИНО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4187,2576,'САВОЙСКИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4188,7841,'САДИНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4189,5896,'САДОВЕЦ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4190,2387,'САДОВИК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4191,6815,'САДОВИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4192,9139,'САДОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4193,4122,'САДОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4194,8463,'САДОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4195,2922,'САДОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4196,2576,'САЖДЕНИК',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4197,6568,'САКАРЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4198,9817,'САЛАМАНОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4199,5397,'САЛАСУКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4200,3933,'САЛАШ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4201,6942,'САМОВИЛА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4202,5040,'САМОВОДЕНЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4203,6878,'САМОДИВА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4204,6897,'САМОКИТКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4205,2000,'САМОКОВ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4206,2620,'САМОРАНОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4207,9101,'САМОТИНО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4208,5035,'САМСИИТЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4209,7454,'САМУИЛ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4210,2895,'САМУИЛОВА КРЕПОСТ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4211,9384,'САМУИЛОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4212,2879,'САМУИЛОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4213,8865,'САМУИЛОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4214,6051,'САМУИЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4215,8484,'САН СТЕФАНО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4216,5949,'САНАДИНОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4217,2800,'САНДАНСКИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4218,7059,'САНДРОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4219,2650,'САПАРЕВА БАНЯ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4220,2645,'САПАРЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4221,3333,'САРАЕВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4222,8659,'САРАНСКО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4223,2120,'САРАНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4224,4447,'САРАЯ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4225,2950,'САТОВЧА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4226,6961,'СБОР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4227,4449,'СБОР',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4228,6595,'СБОРИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4229,8899,'СБОРИЩЕ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4230,9006,'СВ. КОНСТАНТИН И ЕЛ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4231,7082,'СВАЛЕНИК',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4232,6675,'СВАТБАРЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4233,4304,'СВЕЖЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4234,4620,'СВЕТА ПЕТКА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4235,8256,'СВЕТИ ВЛАС',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4236,8258,'СВЕТИ ВЛАС - САНАТО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4237,4577,'СВЕТИ КОНСТАНТИН',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4238,9662,'СВЕТИ НИКОЛА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4239,6890,'СВЕТЛЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4240,7877,'СВЕТЛЕН',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4241,6420,'СВЕТЛИНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4242,8322,'СВЕТЛИНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4243,6547,'СВЕТЛИНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4244,2449,'СВЕТЛЯ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4245,1252,'СВЕТОВРАЧЕНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4246,7554,'СВЕТОСЛАВ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4247,6378,'СВЕТОСЛАВ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4248,5080,'СВЕТОСЛАВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4249,6768,'СВЕТУЛКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4250,7423,'СВЕЩАРИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4251,2266,'СВИДНЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4252,6500,'СВИЛЕНГРАД',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4253,5300,'СВИНАРСКИ ДОЛ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4254,6578,'СВИРАЧИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4255,6499,'СВИРКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4256,5367,'СВИРЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4257,7960,'СВИРЧОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4258,5250,'СВИЩОВ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4259,9398,'СВОБОДА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4260,8103,'СВОБОДА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4261,6800,'СВОБОДА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4262,4532,'СВОБОДА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4263,6230,'СВОБОДА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4264,6278,'СВОБОДЕН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4265,6706,'СВОБОДИНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4266,7997,'СВОБОДИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4267,2260,'СВОГЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4268,2171,'СВОДЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4269,7332,'СЕВАР',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4270,6745,'СЕВДАЛИНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4271,9405,'СЕВЕРНЯК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4272,9415,'СЕВЕРЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4273,5400,'СЕВЛИЕВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4274,2834,'СЕДЕЛЕЦ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4275,6827,'СЕДЕФЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4276,8994,'СЕДЛАРЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4277,6800,'СЕДЛАРИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4278,6789,'СЕДЛАРцИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4279,6621,'СЕДЛОВИНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4280,5300,'СЕДЯНКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4281,7282,'СЕЙДОЛ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4282,5344,'СЕЙКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4283,5041,'СЕЙМЕНИТЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4284,6890,'СЕКИРКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4285,7665,'СЕКУЛОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4286,3301,'СЕЛАНОВЦИ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4287,8862,'СЕЛИМИНОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4288,2744,'СЕЛИЩЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4289,5462,'СЕЛИЩЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4290,4735,'СЕЛИЩЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4291,2377,'СЕЛИЩЕН ДОЛ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4292,6487,'СЕЛСКА ПОЛЯНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4293,9655,'СЕЛЦЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4294,6184,'СЕЛЦЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4295,5655,'СЕЛЦЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4296,4129,'СЕЛЦИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4297,4814,'СЕЛЧА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4298,2060,'СЕЛЯНИН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4299,7072,'СЕМЕРДЖИЕВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4300,5340,'СЕМЕРДЖИИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4301,7970,'СЕМЕРЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4302,5035,'СЕМКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4303,4474,'СЕМЧИНОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4304,5450,'СЕННИК',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4305,7271,'СЕНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4306,6481,'СЕНОКЛАС',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4307,9634,'СЕНОКОС',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4308,2752,'СЕНОКОС',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4309,6800,'СЕНЦЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4310,4490,'СЕПТЕМВРИ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4311,3637,'СЕПТЕМВРИЙЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4312,3796,'СЕПТЕМВРИЙЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4313,9693,'СЕПТЕМВРИЙЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4314,7341,'СЕСЛАВ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4315,4469,'СЕСТРИМО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4316,2875,'СЕСТРИНО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4317,6660,'СЕСТРИНСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4318,5360,'СЕЧЕН КАМЪК',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4319,9923,'СЕЧИЩЕ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4320,6585,'СИВ КЛАДЕНЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4321,6522,'СИВА РЕКА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4322,4780,'СИВИНО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4323,8438,'СИГМЕН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4324,6380,'СИЛЕН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4325,7500,'СИЛИСТРА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4326,6490,'СИМЕОНОВГРАД',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4327,4475,'СИМЕОНОВЕЦ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4328,8665,'СИМЕОНОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4329,2730,'СИМИТЛИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4330,3737,'СИНАГОВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4331,6567,'СИНАПОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4332,9125,'СИНДЕЛ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4333,6825,'СИНДЕЛЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4334,8279,'СИНЕМОРЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4335,9950,'СИНИ ВИР',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4336,4236,'СИНИ ВРЪХ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4337,8534,'СИНИ РИД',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4338,6956,'СИНИГЕР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4339,4442,'СИНИТОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4340,6785,'СИНЧЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4341,3139,'СИНЬО БЪРДО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4342,8332,'СИНЬО КАМЕНЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4343,7287,'СИНЯ ВОДА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4344,6629,'СИПЕЙ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4345,3254,'СИРАКОВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4346,9564,'СИРАКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4347,6359,'СИРАКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4348,2450,'СИРИЩНИК',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4349,8744,'СИТОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4350,4104,'СИТОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4351,7583,'СИТОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4352,7667,'СКАЛА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4353,8462,'СКАЛА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4354,6923,'СКАЛАК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4355,8575,'СКАЛАК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4356,6846,'СКАЛИНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4357,8645,'СКАЛИЦА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4358,6652,'СКАЛИЩЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4359,6748,'СКАЛНА ГЛАВА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4360,5386,'СКАЛСКО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4361,5644,'СКАНДАЛОТО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4362,2811,'СКЛАВЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4363,6429,'СКОБЕЛЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4364,5508,'СКОБЕЛЕВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4365,6148,'СКОБЕЛЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4366,4227,'СКОБЕЛЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4367,8871,'СКОБЕЛЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4368,3946,'СКОМЛЯ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4369,5350,'СКОРЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4370,2143,'СКРАВЕНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4371,2964,'СКРЕБАТНО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4372,2663,'СКРИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4373,2599,'СКРИНЯНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4374,2897,'СКРЪТ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4375,4134,'СКУТАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4376,6720,'СКЪРБИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4377,9366,'СЛАВЕЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4378,6576,'СЛАВЕЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4379,5391,'СЛАВЕЙКОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4380,8738,'СЛАВЕЙКОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4381,9247,'СЛАВЕЙКОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4382,4747,'СЛАВЕЙНО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4383,5858,'СЛАВОВИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4384,4496,'СЛАВОВИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4385,3451,'СЛАВОТИН',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4386,5522,'СЛАВЩИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4387,5565,'СЛАВЯНИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4388,6236,'СЛАВЯНИН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4389,5840,'СЛАВЯНОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4390,7860,'СЛАВЯНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4391,6473,'СЛАВЯНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4392,8460,'СЛАВЯНЦИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4393,9257,'СЛАДКА ВОДА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4394,6960,'СЛАДКОДУМ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4395,6534,'СЛАДУН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4396,6064,'СЛАДЪК КЛАДЕНЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4397,2369,'СЛАКОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4398,8663,'СЛАМИНО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4399,3728,'СЛАНА БАРА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4400,3769,'СЛАНОТРЪН',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4401,3535,'СЛАТИНА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4402,4342,'СЛАТИНА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4403,5564,'СЛАТИНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4404,7585,'СЛАТИНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4405,5768,'СЛАТИНА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4406,2642,'СЛАТИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4407,2449,'СЛАТИНО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4408,2937,'СЛАЩЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4409,9784,'СЛИВАК',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4410,6919,'СЛИВАРКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4411,8358,'СЛИВАРОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4412,3668,'СЛИВАТА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4413,5537,'СЛИВЕК',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4414,8800,'СЛИВЕН',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4415,8840,'СЛИВЕНСКИ МИН. БАНИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4416,9395,'СЛИВЕНЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4417,6176,'СЛИВИТО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4418,4943,'СЛИВКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4419,2844,'СЛИВНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4420,2200,'СЛИВНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4421,7060,'СЛИВО ПОЛЕ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4422,3664,'СЛИВОВИК',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4423,5157,'СЛИВОВИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4424,3915,'СЛИВОВНИК',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4425,4710,'СЛИВОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4426,8331,'СЛИВОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4427,5367,'СЛИВОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4428,2484,'СЛИШОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4429,2533,'СЛОКОЩИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4430,5229,'СЛОМЕР',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4431,8240,'СЛЪНЧЕВ БРЯГ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4432,9144,'СЛЪНЧЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4433,7963,'СЛЪНЧОВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4434,6850,'СЛЪНЧОГЛЕД',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4435,7577,'СМИЛЕЦ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4436,4531,'СМИЛЕЦ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4437,5333,'СМИЛОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4438,4770,'СМИЛЯН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4439,9679,'СМИН',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4440,3663,'СМИРНЕНСКИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4441,7074,'СМИРНЕНСКИ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4442,6467,'СМИРНЕНЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4443,2456,'СМИРОВ ДОЛ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4444,2794,'СМОЛЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4445,2583,'СМОЛИЧАНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4446,8491,'СМОЛНИК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4447,9383,'СМОЛНИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4448,2073,'СМОЛСКО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4449,2255,'СМОЛЧА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4450,4700,'СМОЛЯН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4451,3450,'СМОЛЯНОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4452,5547,'СМОЧАН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4453,2641,'СМОЧЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4454,9820,'СМЯДОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4455,8568,'СНЕЖА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4456,9244,'СНЕЖИНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4457,6741,'СНЕЖИНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4458,9557,'СНОП',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4459,9533,'СНЯГОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4460,8579,'СНЯГОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4461,5283,'СОВАТА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4462,2547,'СОВОЛЯНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4463,8130,'СОЗОПОЛ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4464,7621,'СОКОЛ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4465,8945,'СОКОЛ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4466,3258,'СОКОЛАРЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4467,8984,'СОКОЛАРЦИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4468,6595,'СОКОЛЕНЦИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4469,8554,'СОКОЛЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4470,6812,'СОКОЛИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4471,6694,'СОКОЛИТЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4472,4367,'СОКОЛИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4473,9351,'СОКОЛНИК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4474,9640,'СОКОЛОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4475,5392,'СОКОЛОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4476,8435,'СОКОЛОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4477,5538,'СОКОЛОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4478,4751,'СОКОЛОВЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4479,6648,'СОКОЛСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4480,6688,'СОКОЛЯНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4481,5300,'СОЛАРИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4482,4711,'СОЛИЩА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4483,6721,'СОЛИЩЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4484,9122,'СОЛНИК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4485,5959,'СОМОВИТ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4486,2378,'СОПИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4487,2664,'СОПОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4488,4330,'СОПОТ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4489,5571,'СОПОТ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4490,4974,'СОПОТОТ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4491,8859,'СОТИРЯ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4492,6850,'СОФИЙЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4493,1000,'СОФИЯ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4494,3348,'СОФРОНИЕВО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4495,5344,'СПАНЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4496,3546,'СПАНЧЕВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4497,9561,'СПАСОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4498,6249,'СПАСОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4499,5340,'СПАСОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4500,2811,'СПАТОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4501,6346,'СПАХИЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4502,6799,'СПОЛУКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4503,7541,'СРАЦИМИР',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4504,3847,'СРАЦИМИРОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4505,4525,'СРЕБРИНОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4506,7587,'СРЕБЪРНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4507,4998,'СРЕДЕЦ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4508,6066,'СРЕДЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4509,8300,'СРЕДЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4510,9546,'СРЕДИНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4511,6738,'СРЕДИНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4512,7949,'СРЕДИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4513,7560,'СРЕДИЩЕ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4514,2062,'СРЕДИЩНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4515,9968,'СРЕДКОВЕЦ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4516,2918,'СРЕДНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4517,8581,'СРЕДНА МАХАЛА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4518,6717,'СРЕДНЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4519,5093,'СРЕДНИ КОЛИБИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4520,3137,'СРЕДНИ РЪТ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4521,6241,'СРЕДНО ГРАДИЩЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4522,9222,'СРЕДНО СЕЛО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4523,5088,'СРЕДНО СЕЛО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4524,6166,'СРЕДНОГОРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4525,4954,'СРЕДНОГОРЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4526,9798,'СРЕДНЯ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4527,3959,'СРЕДОГРИВ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4528,4798,'СРЕДОК',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4529,8845,'СРЕДОРЕК',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4530,2555,'СРЕДОРЕК',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4531,7433,'СРЕДОСЕЛЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4532,6693,'СРЕДСКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4533,6890,'СРЕДСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4534,6565,'СРЕМ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4535,6775,'СРЪНСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4536,5863,'СТАВЕРЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4537,9673,'СТАЕВЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4538,5350,'СТАЙНОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4539,4931,'СТАЙЧИН ДОЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4540,2489,'СТАЙЧОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4541,3963,'СТАКЕВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4542,6433,'СТАЛЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4543,3657,'СТАЛИЙСКА МАХАЛА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4544,4210,'СТАМБОЛИЙСКИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4545,6311,'СТАМБОЛИЙСКИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4546,2069,'СТАМБОЛОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4547,5249,'СТАМБОЛОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4548,7063,'СТАМБОЛОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4549,6362,'СТАМБОЛОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4550,9917,'СТАН',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4551,3641,'СТАНЕВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4552,7915,'СТАНЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4553,9952,'СТАНОВЕЦ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4554,5380,'СТАНЧА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4555,5367,'СТАНЧОВ ХАН',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4556,2391,'СТАНЬОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4557,9872,'СТАНЯНЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4558,2254,'СТАНЯНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4559,6792,'СТАР ЧИТАК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4560,6000,'СТАРА ЗАГОРА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4561,2845,'СТАРА КРЕСНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4562,8841,'СТАРА РЕКА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4563,8675,'СТАРА РЕКА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4564,7999,'СТАРА РЕЧКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4565,6880,'СТАРЕЙШИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4566,6964,'СТАРИ ЧАЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4567,5343,'СТАРИЛКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4568,6572,'СТАРИНСКО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4569,4165,'СТАРО ЖЕЛЕЗАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4570,6741,'СТАРО МЯСТО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4571,9110,'СТАРО ОРЯХОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4572,7447,'СТАРО СЕЛИЩЕ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4573,3142,'СТАРО СЕЛО',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4574,2412,'СТАРО СЕЛО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4575,8876,'СТАРО СЕЛО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4576,5671,'СТАРО СЕЛО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4577,7637,'СТАРО СЕЛО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4578,6877,'СТАРОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4579,6062,'СТАРОЗАГОРСКИ БАНИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4580,3822,'СТАРОПАТИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4581,4175,'СТАРОСЕЛ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4582,9226,'СТАРОСЕЛЕЦ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4583,5865,'СТАРОСЕЛЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4584,4987,'СТАРЦЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4585,2861,'СТАРЧЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4586,7963,'СТАРЧИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4587,7960,'СТЕВРЕК',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4588,5920,'СТЕЖЕРОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4589,2566,'СТЕНСКО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4590,9293,'СТЕФАН КАРАДЖА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4591,7633,'СТЕФАН КАРАДЖА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4592,9371,'СТЕФАН КАРАДЖА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4593,8725,'СТЕФАН КАРАДЖОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4594,5192,'СТЕФАН СТАМБОЛОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4595,5335,'СТЕФАНОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4596,9360,'СТЕФАНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4597,5581,'СТЕФАНОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4598,2414,'СТЕФАНОВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4599,4712,'СТИКЪЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4600,2638,'СТОБ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4601,4266,'СТОЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4602,5347,'СТОЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4603,2800,'СТОЖА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4604,9350,'СТОЖЕР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4605,8940,'СТОИЛ ВОЙВОДА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4606,8359,'СТОИЛОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4607,4715,'СТОЙКИТЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4608,6341,'СТОЙКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4609,5301,'СТОЙКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4610,7953,'СТОЙНОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4611,5625,'СТОЙНОВСКОТО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4612,5081,'СТОЙЧЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4613,5343,'СТОЙЧОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4614,5462,'СТОКИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4615,4338,'СТОЛЕТОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4616,6054,'СТОЛЕТОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4617,2134,'СТОЛНИК',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4618,5452,'СТОЛЪТ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4619,4822,'СТОМАНЕВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4620,5304,'СТОМАНЕЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4621,6873,'СТОМАНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4622,6243,'СТОЯН ЗАИМОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4623,9928,'СТОЯН МИХАЙЛОВСКИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4624,6773,'СТОЯНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4625,3539,'СТОЯНОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4626,5084,'СТОЯНОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4627,3134,'СТОЯНОВЦИ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4628,2584,'СТРАДАЛОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4629,4726,'СТРАЖА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4630,7738,'СТРАЖА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4631,5365,'СТРАЖАТА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4632,6731,'СТРАЖЕВЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4633,6954,'СТРАЖЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4634,7217,'СТРАЖЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4635,9615,'СТРАЖИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4636,5150,'СТРАЖИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4637,6710,'СТРАЖНИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4638,8680,'СТРАЛДЖА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4639,8758,'СТРАНДЖА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4640,6929,'СТРАНДЖЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4641,6428,'СТРАНСКО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4642,9142,'СТРАХИЛ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4643,6660,'СТРАХИЛ ВОЙВОДА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4644,9774,'СТРАХИЛИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4645,5190,'СТРАХИЛОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4646,8222,'СТРАЦИН',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4647,9179,'СТРАШИМИРОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4648,4988,'СТРАШИМИР-пром.с.',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4649,2482,'СТРЕЗИМИРОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4650,5133,'СТРЕЛЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4651,6058,'СТРЕЛЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4652,7562,'СТРЕЛКОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4653,4152,'СТРЕЛЦИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4654,8995,'СТРЕЛЦИ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4655,4530,'СТРЕЛЧА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4656,6683,'СТРЕМОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4657,6680,'СТРЕМЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4658,6899,'СТРИЖБА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4659,4197,'СТРОЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4660,8732,'СТРОЙНО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4661,7964,'СТРОЙНОВЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4662,5626,'СТРУГЪТ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4663,3919,'СТРУИНДОЛ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4664,9804,'СТРУИНО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4665,2806,'СТРУМА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4666,2895,'СТРУМЕШНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4667,2825,'СТРУМЯНИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4668,3132,'СТРУПЕЦ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4669,8856,'СТРУПЕЦ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4670,8555,'СТРУЯ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4671,5365,'СТРЪМЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4672,4142,'СТРЯМА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4673,3490,'СТУБЕЛ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4674,2488,'СТУДЕН ИЗВОР',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4675,6958,'СТУДЕН КЛАДЕНЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4676,4932,'СТУДЕНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4677,2344,'СТУДЕНА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4678,6538,'СТУДЕНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4679,7279,'СТУДЕНЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4680,4878,'СТУДЕНЕЦ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4681,9768,'СТУДЕНИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4682,3480,'СТУДЕНО БУЧЕ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4683,2135,'СТЪРГЕЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4684,7124,'СТЪРМЕН',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4685,4957,'СТЪРНИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4686,9170,'СУВОРОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4687,2820,'СУГАРЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4688,2062,'СУЕВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4689,6062,'СУЛИЦА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4690,5094,'СУЛТАНИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4691,3491,'СУМЕР',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4692,8470,'СУНГУРЛАРЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4693,6352,'СУСАМ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4694,9881,'СУХА РЕКА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4695,5045,'СУХА РЕКА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4696,5988,'СУХАЧЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4697,5240,'СУХИНДОЛ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4698,6794,'СУХОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4699,7618,'СУХОДОЛ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4700,8328,'СУХОДОЛ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4701,4209,'СУХОЗЕМ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4702,5380,'СУХОЛОЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4703,2736,'СУХОСТРЕЛ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4704,7324,'СУШЕВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4705,9868,'СУШИНА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4706,2759,'СУШИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4707,5177,'СУШИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4708,2558,'СУШИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4709,5099,'СЪБКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4710,5340,'СЪБОТКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4711,8941,'СЪБРАНО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4712,8522,'СЪДИЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4713,8923,'СЪДИЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4714,8915,'СЪДИЙСКО ПОЛЕ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4715,6234,'СЪЕДИНЕНИЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4716,8430,'СЪЕДИНЕНИЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4717,4190,'СЪЕДИНЕНИЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4718,7779,'СЪЕДИНЕНИЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4719,6924,'СЪРНАК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4720,6232,'СЪРНЕВЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4721,8479,'СЪРНЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4722,6268,'СЪРНЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4723,4146,'СЪРНЕГОР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4724,5035,'СЪРНЕНЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4725,9482,'СЪРНЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4726,9562,'СЪРНИНО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4727,4799,'СЪРНИНО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4728,4633,'СЪРНИЦА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4729,6361,'СЪРНИЦА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4730,7578,'СЪРПОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4731,8896,'СЪРЦЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4732,7647,'СЯНОВО',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4733,5380,'СЯРОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4734,6800,'СЯРЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4735,2215,'ТАБАН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4736,7085,'ТАБАЧКА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4737,5461,'ТАБАШКА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4738,2538,'ТАВАЛИЧЕВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4739,7983,'ТАЙМИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4740,8658,'ТАМАРИНО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4741,6344,'ТАТАРЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4742,4282,'ТАТАРЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4743,5934,'ТАТАРИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4744,6670,'ТАТКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4745,6835,'ТАТУЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4746,7755,'ТВЪРДИНЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4747,8155,'ТВЪРДИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4748,8890,'ТВЪРДИЦА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4749,9675,'ТВЪРДИЦА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4750,6370,'ТЕКЕТО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4751,9420,'ТЕЛЕРИГ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4752,5990,'ТЕЛИШ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4753,6850,'ТЕЛЧАРКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4754,6759,'ТЕМЕНУГА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4755,5165,'ТЕМЕНУГА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4756,8672,'ТЕНЕВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4757,5554,'ТЕПАВА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4758,2935,'ТЕПЛЕН',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4759,9450,'ТЕРВЕЛ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4760,9769,'ТЕРВЕЛ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4761,5035,'ТЕРЗИИТЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4762,8465,'ТЕРЗИЙСКО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4763,5665,'ТЕРЗИЙСКО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4764,7322,'ТЕРТЕР',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4765,5700,'ТЕТЕВЕН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4766,7340,'ТЕТОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4767,4810,'ТЕШЕЛ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4768,2927,'ТЕШОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4769,4729,'ТИКАЛЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4770,9785,'ТИМАРЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4771,6955,'ТИНТЯВА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4772,3164,'ТИПЧЕНИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4773,5070,'ТИТЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4774,7997,'ТИХОВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4775,6898,'ТИХОМИР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4776,6279,'ТИХОМИРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4777,8980,'ТИЧА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4778,2591,'ТИШАНОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4779,3055,'ТИШЕВИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4780,3787,'ТИЯНОВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4781,3243,'ТЛАЧЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4782,9964,'ТОДОР ИКОНОМОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4783,5350,'ТОДОРЕЦИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4784,5781,'ТОДОРИЧЕНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4785,7425,'ТОДОРОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4786,5887,'ТОДОРОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4787,5045,'ТОДОРОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4788,5301,'ТОДОРОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4789,5343,'ТОДОРЧЕТА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4790,5094,'ТОДЮВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4791,6965,'ТОКАЧКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4792,3854,'ТОЛОВИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4793,5080,'ТОМБЕТО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4794,2285,'ТОМПСЪН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4795,5365,'ТОМЧЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4796,2875,'ТОНСКО ДАБЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4797,5736,'ТОПИЛИЩА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4798,9654,'ТОПОЛА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4799,9140,'ТОПОЛИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4800,4454,'ТОПОЛИ ДОЛ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4801,8549,'ТОПОЛИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4802,6968,'ТОПОЛКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4803,2619,'ТОПОЛНИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4804,2858,'ТОПОЛНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4805,6560,'ТОПОЛОВГРАД',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4806,3828,'ТОПОЛОВЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4807,3936,'ТОПОЛОВЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4808,4260,'ТОПОЛОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4809,6452,'ТОПОЛОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4810,6728,'ТОПОЛЧАНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4811,8880,'ТОПОЛЧАНЕ',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4812,6277,'ТОПОЛЯНЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4813,5098,'ТОПУЗИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4814,8986,'ТОПУЗОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4815,7261,'ТОПЧИИ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4816,8582,'ТОПЧИЙСКО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4817,5335,'ТОРБАЛЪЖИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4818,5790,'ТОРОС',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4819,5899,'ТОТЛЕБЕН',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4820,7316,'ТОЧИЛАРИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4821,3825,'ТОШЕВЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4822,4933,'ТРАВЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4823,9694,'ТРАВНИК',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4824,3645,'ТРАЙКОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4825,6369,'ТРАКИЕЦ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4826,8348,'ТРАКИЙЦИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4827,6074,'ТРАКИЯ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4828,5349,'ТРАПЕСКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4829,7281,'ТРАПИЩЕ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4830,8889,'ТРАПОКЛОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4831,4737,'ТРЕБИЩЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4832,2557,'ТРЕКЛЯНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4833,9764,'ТРЕМ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4834,7994,'ТРЕСКАВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4835,3072,'ТРИ КЛАДЕНЦИ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4836,4263,'ТРИ МОГИЛИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4837,6682,'ТРИ МОГИЛИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4838,4222,'ТРИВОДИЦИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4839,9645,'ТРИГОРЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4840,4825,'ТРИГРАД',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4841,4141,'ТРИЛИСТНИК',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4842,3435,'ТРИФОНОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4843,9864,'ТРОИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4844,2733,'ТРОСКОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4845,6491,'ТРОЯН',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4846,5600,'ТРОЯН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4847,8108,'ТРОЯНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4848,6270,'ТРОЯНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4849,4199,'ТРУД',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4850,2160,'ТРУДОВЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4851,7283,'ТРЪБАЧ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4852,2460,'ТРЪН',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4853,8550,'ТРЪНАК',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4854,5307,'ТРЪНИТО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4855,9925,'ТРЪНИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4856,8719,'ТРЪНКОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4857,6266,'ТРЪНКОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4858,5097,'ТРЪНКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4859,5925,'ТРЪНЧОВИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4860,5857,'ТРЪСТЕНИК',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4861,7092,'ТРЪСТЕНИК',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4862,7835,'ТРЪСТИКА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4863,9134,'ТРЪСТИКОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4864,8128,'ТРЪСТИКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4865,5350,'ТРЯВНА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4866,2253,'ТУДЕН',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4867,9633,'ТУЗЛАТА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4868,6170,'ТУЛОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4869,5464,'ТУМБАЛОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4870,5083,'ТУМБЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4871,6157,'ТУРИЯ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4872,5388,'ТУРКИНЧА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4873,2468,'ТУРОКОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4874,4753,'ТУРЯН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4875,7600,'ТУТРАКАН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4876,9275,'ТУТРАКАНЦИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4877,2939,'ТУХОВИЩА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4878,5892,'ТУЧЕНИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4879,9884,'ТУШОВИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4880,6160,'ТЪЖА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4881,9953,'ТЪКАЧ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4882,4983,'ТЪНКА БАРА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4883,5084,'ТЪНКИ РЪТ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4884,8237,'ТЪНКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4885,6391,'ТЪНКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4886,4914,'ТЪНКОТО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4887,7919,'ТЪПЧИЛЕЩОВО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4888,7700,'ТЪРГОВИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4889,3953,'ТЪРГОВИЩЕ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4890,5070,'ТЪРКАШЕНИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4891,3252,'ТЪРНАВА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4892,8699,'ТЪРНАВА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4893,3249,'ТЪРНАК',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4894,5282,'ТЪРНЕНЕ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4895,6158,'ТЪРНИЧЕНЕ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4896,2532,'ТЪРНОВЛАГ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4897,7774,'ТЪРНОВЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4898,6843,'ТЪРНОВЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4899,7926,'ТЪРНОВЦИ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4900,6763,'ТЪРНОСЛИВКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4901,3741,'ТЪРНЯНЕ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4902,2586,'ТЪРСИНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4903,5423,'ТЪРХОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4904,4730,'ТЪРЪН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4905,9684,'ТЮЛЕНОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4906,4751,'ТЮРКМЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4907,6850,'ТЮТЮНЧЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4908,9429,'ТЯНЕВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4909,6492,'ТЯНЕВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4910,7936,'УГЛЕДНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4911,2418,'УГЛЯРЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4912,5465,'УГОРЕЛЕЦ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4913,5082,'УГОРЛЯКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4914,5580,'УГЪРЧИН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4915,9554,'УЗОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4916,6350,'УЗУНДЖОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4917,5343,'УЗУНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4918,4237,'УЗУНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4919,5541,'УМАРЕВЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4920,5365,'УРВАТА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4921,3064,'УРОВЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4922,4936,'УРУЧЕВЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4923,2675,'УСОЙКА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4924,4228,'УСТИНА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4925,6563,'УСТРЕМ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4926,6853,'УСТРЕН',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4927,4769,'УХЛОВИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4928,5035,'УШЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4929,2557,'УШИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4930,7244,'УШИНЦИ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4931,4992,'ФАБРИКА - ПРОМ. С.',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4932,8272,'ФАЗАНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4933,8340,'ФАКИЯ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4934,4797,'ФАТОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4935,9394,'ФЕЛДФЕБЕЛ ДЯНКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4936,8982,'ФИЛАРЕТОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4937,2775,'ФИЛИПОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4938,6564,'ФИЛИПОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4939,2472,'ФИЛИПОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4940,3778,'ФЛОРЕНТИН',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4941,4571,'ФОТИНОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4942,6873,'ФОТИНОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4943,2085,'ФРАНТУНСКИТЕ КОШАРИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4944,2682,'ФРОЛОШ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4945,3075,'ФУРЕН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4946,2952,'ФЪРГОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4947,5301,'ФЪРГОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4948,5365,'ФЪРЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4949,5367,'ФЪРТУНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4950,6141,'ХАДЖИ ДИМИТРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4951,9657,'ХАДЖИ ДИМИТЪР',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4952,5287,'ХАДЖИДИМИТРОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4953,8635,'ХАДЖИДИМИТРОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4954,2933,'ХАДЖИДИМОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4955,4441,'ХАДЖИЕВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4956,8492,'ХАДЖИИТЕ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4957,6875,'ХАДЖИЙСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4958,3357,'ХАЙРЕДИН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4959,7997,'ХАЛВАДЖИЙСКО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4960,3837,'ХАЛОВСКИ КОЛИБИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4961,6055,'ХАН АСПАРУХОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4962,9863,'ХАН КРУМ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4963,8668,'ХАНОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4964,5340,'ХАРАЧЕРИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4965,5093,'ХАРВАЛОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4966,6540,'ХАРМАНЛИ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4967,6300,'ХАСКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4968,4746,'ХАСОВИЦА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4969,4890,'ХВОЙНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4970,2942,'ХВОСТЯНЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4971,2072,'ХВЪРЧИЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4972,2211,'ХЕРАКОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4973,5451,'ХИРЕВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4974,6914,'ХИСАР',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4975,4180,'ХИСАРЯ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4976,9494,'ХИТОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4977,5579,'ХЛЕВЕНЕ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4978,6568,'ХЛЯБОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4979,6745,'ХОДЖОВЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4980,7054,'ХОТАНЦА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4981,5058,'ХОТНИЦА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4982,2821,'ХОТОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4983,4111,'ХРАБРИНО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4984,9618,'ХРАБРОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4985,9242,'ХРАБРОВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4986,2224,'ХРАБЪРСКО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4987,2824,'ХРАСНА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4988,6929,'ХРАСТОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4989,6072,'ХРИСТИЯНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4990,4339,'ХРИСТО ДАНОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4991,4231,'ХРИСТО МИЛЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4992,5070,'ХРИСТОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4993,5365,'ХРИСТОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4994,6050,'ХРИЩЕНИ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4995,6782,'ХРОМИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4996,3135,'ХУБАВЕНЕ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4997,7457,'ХУМА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4998,6571,'ХУХЛА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (4999,5082,'ХЪНЕВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5000,3329,'ХЪРЛЕЦ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5001,9937,'ХЪРСОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5002,7451,'ХЪРСОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5003,2819,'ХЪРСОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5004,3152,'ЦАКОНИЦА',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5005,4218,'ЦАЛАПИЦА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5006,9957,'ЦАНИ ГИНЧЕВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5007,2834,'ЦАПАРЕВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5008,7536,'ЦАР АСЕН',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5009,4422,'ЦАР АСЕН',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5010,7849,'ЦАР АСЕН',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5011,4126,'ЦАР КАЛОЯН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5012,7280,'ЦАР КАЛОЯН',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5013,3827,'ЦАР ПЕТРОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5014,7640,'ЦАР САМУИЛ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5015,3745,'ЦАР СИМЕОНОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5016,3853,'ЦАР ШИШМАНОВО',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5017,4204,'ЦАРАЦОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5018,9747,'ЦАРЕВ БРОД',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5019,7627,'ЦАРЕВ ДОЛ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5020,5380,'ЦАРЕВА ЛИВАДА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5021,6363,'ЦАРЕВА ПОЛЯНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5022,9367,'ЦАРЕВЕЦ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5023,6622,'ЦАРЕВЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5024,3141,'ЦАРЕВЕЦ',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5025,5282,'ЦАРЕВЕЦ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5026,8260,'ЦАРЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5027,9129,'ЦАРЕВЦИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5028,7932,'ЦАРЕВЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5029,4192,'ЦАРИМИР',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5030,6893,'ЦАРИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5031,2236,'ЦАРИЧИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5032,9614,'ЦАРИЧИНО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5033,5174,'ЦАРСКИ ИЗВОР',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5034,2220,'ЦАЦАРОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5035,4992,'ЦАЦАРОВЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5036,5094,'ЦВЕКЛЮВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5037,4630,'ЦВЕТИНО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5038,3542,'ЦВЕТКОВА БАРА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5039,7763,'ЦВЕТНИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5040,5340,'ЦВЯТКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5041,6850,'ЦВЯТОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5042,2479,'ЦЕГРИЛОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5043,6223,'ЦЕЛИНА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5044,8916,'ЦЕНИНО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5045,7575,'ЦЕНОВИЧ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5046,7139,'ЦЕНОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5047,6222,'ЦЕНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5048,5035,'ЦЕПЕРАНИТЕ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5049,4189,'ЦЕРЕТЕЛЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5050,2286,'ЦЕРЕЦЕЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5051,8472,'ЦЕРКОВСКИ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5052,5047,'ЦЕРОВА КОРИЯ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5053,7083,'ЦЕРОВЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5054,2567,'ЦЕРОВИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5055,7922,'ЦЕРОВИЩЕ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5056,2722,'ЦЕРОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5057,4465,'ЦЕРОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5058,2287,'ЦЕРОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5059,2666,'ЦИКЛОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5060,4939,'ЦИРКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5061,9261,'ЦОНЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5062,2567,'ЦРЕШНОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5063,2205,'ЦРЪКЛЕВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5064,4837,'ЦРЪНЧА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5065,4419,'ЦРЪНЧА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5066,2580,'ЦЪРВАРИЦА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5067,2576,'ЦЪРВЕНА ЯБЪЛКА',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5068,2567,'ЦЪРВЕНДОЛ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5069,2542,'ЦЪРВЕНЯНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5070,2624,'ЦЪРВИЩЕ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5071,9631,'ЦЪРКВА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5072,6844,'ЦЪРКВИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5073,9939,'ЦЪРКВИЦА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5074,4829,'ЧАВДАР',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5075,2084,'ЧАВДАР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5076,5084,'ЧАВДАРЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5077,5559,'ЧАВДАРЦИ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5078,5345,'ЧАВЕИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5079,6890,'ЧАВКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5080,6820,'ЧАЙКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5081,9277,'ЧАЙКА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5082,4476,'ЧАЙРА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5083,6870,'ЧАКАЛАРОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5084,5099,'ЧАКАЛИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5085,5365,'ЧАКАЛИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5086,6850,'ЧАКАЛЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5087,6947,'ЧАЛ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5088,4836,'ЧАЛА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5089,4123,'ЧАЛЪКОВИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5090,4651,'ЧАМКОВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5091,4716,'ЧАМЛА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5092,8628,'ЧАРГАН',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5093,8692,'ЧАРДА',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5094,5309,'ЧАРКОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5095,6744,'ЧЕГАНЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5096,2220,'ЧЕКАНЕЦ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5097,2577,'ЧЕКАНЕЦ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5098,7961,'ЧЕКАНЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5099,2122,'ЧЕКАНЧЕВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5100,8678,'ЧЕЛНИК',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5101,3093,'ЧЕЛОПЕК',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5102,2087,'ЧЕЛОПЕЧ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5103,9664,'ЧЕЛОПЕЧЕНЕ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5104,3465,'ЧЕЛЮСТНИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5105,3477,'ЧЕМИШ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5106,4850,'ЧЕПЕЛАРЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5107,2436,'ЧЕПИНО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5108,1554,'ЧЕПИНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5109,4958,'ЧЕПИНЦИ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5110,4786,'ЧЕПЛЕТЕН',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5111,2212,'ЧЕПЪРЛИНЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5112,4252,'ЧЕРВЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5113,7084,'ЧЕРВЕН',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5114,2629,'ЧЕРВЕН БРЕГ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5115,5980,'ЧЕРВЕН БРЯГ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5116,5293,'ЧЕРВЕНА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5117,7051,'ЧЕРВЕНА ВОДА',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5118,5311,'ЧЕРВЕНА ЛОКВА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5119,2408,'ЧЕРВЕНА МОГИЛА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5120,8896,'ЧЕРВЕНАКОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5121,5070,'ЧЕРВЕНКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5122,9298,'ЧЕРВЕНЦИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5123,6139,'ЧЕРГАНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5124,9799,'ЧЕРЕНЧА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5125,6462,'ЧЕРЕПОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5126,8577,'ЧЕРЕША',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5127,6672,'ЧЕРЕШИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5128,4771,'ЧЕРЕШКИТЕ',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5129,2824,'ЧЕРЕШНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5130,3524,'ЧЕРЕШОВИЦА',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5131,2787,'ЧЕРЕШОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5132,7339,'ЧЕРЕШОВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5133,4772,'ЧЕРЕШОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5134,4773,'ЧЕРЕШОВСКА РЕКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5135,3533,'ЧЕРКАСКИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5136,5951,'ЧЕРКОВИЦА',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5137,2072,'ЧЕРКОВИЩЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5138,7656,'ЧЕРКОВНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5139,9232,'ЧЕРКОВНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5140,7252,'ЧЕРКОВНА',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5141,7781,'ЧЕРКОВНА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5142,8478,'ЧЕРКОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5143,9773,'ЧЕРНА',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5144,9417,'ЧЕРНА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5145,7966,'ЧЕРНА ВОДА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5146,6258,'ЧЕРНА ГОРА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5147,2340,'ЧЕРНА ГОРА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5148,2789,'ЧЕРНА МЕСТА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5149,8527,'ЧЕРНА МОГИЛА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5150,6471,'ЧЕРНА МОГИЛА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5151,6692,'ЧЕРНА НИВА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5152,6626,'ЧЕРНА СКАЛА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5153,6585,'ЧЕРНА ЧЕРКВА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5154,9174,'ЧЕРНЕВО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5155,5646,'ЧЕРНЕВОТО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5156,5349,'ЧЕРНЕВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5157,7973,'ЧЕРНИ БРЯГ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5158,5725,'ЧЕРНИ ВИТ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5159,3649,'ЧЕРНИ ВРЪХ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5160,8122,'ЧЕРНИ ВРЪХ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5161,9827,'ЧЕРНИ ВРЪХ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5162,5084,'ЧЕРНИ ДЯЛ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5163,5620,'ЧЕРНИ ОСЪМ',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5164,6598,'ЧЕРНИ РИД',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5165,6778,'ЧЕРНИГОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5166,7651,'ЧЕРНИК',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5167,8468,'ЧЕРНИЦА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5168,2741,'ЧЕРНИЧЕ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5169,6954,'ЧЕРНИЧЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5170,4181,'ЧЕРНИЧЕВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5171,6581,'ЧЕРНИЧИНО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5172,3922,'ЧЕРНО ПОЛЕ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5173,5365,'ЧЕРНОВРЪХ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5174,9778,'ЧЕРНОГЛАВЦИ',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5175,7614,'ЧЕРНОГОР',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5176,6411,'ЧЕРНОГОРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5177,4456,'ЧЕРНОГОРОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5178,8545,'ЧЕРНОГРАД',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5179,6524,'ЧЕРНОДЪБ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5180,8739,'ЧЕРНОЗЕМ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5181,4168,'ЧЕРНОЗЕМЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5182,7921,'ЧЕРНОКАПЦИ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5183,7693,'ЧЕРНОЛИК',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5184,8142,'ЧЕРНОМОРЕЦ',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5185,9678,'ЧЕРНОМОРЦИ',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5186,9259,'ЧЕРНООК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5187,6946,'ЧЕРНООКИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5188,9873,'ЧЕРНООКОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5189,9532,'ЧЕРНООКОВО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5190,6701,'ЧЕРНООЧЕНЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5191,2067,'ЧЕРНЬОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5192,6670,'ЧЕРНЬОВЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5193,9469,'ЧЕСТИМЕНСКО',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5194,2598,'ЧЕТИРЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5195,4241,'ЧЕТРОКА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5196,4159,'ЧЕХЛАРЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5197,2556,'ЧЕШЛЯНЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5198,5156,'ЧЕШМА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5199,4121,'ЧЕШНЕГИРОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5200,2236,'ЧИБАОВЦИ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5201,6625,'ЧИЛИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5202,7162,'ЧИЛНОВ',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5203,8858,'ЧИНТУЛОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5204,3460,'ЧИПРОВЦИ',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5205,3050,'ЧИРЕН',6);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5206,6200,'ЧИРПАН',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5207,5088,'ЧИСТОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5208,5300,'ЧИТАКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5209,3912,'ЧИФЛИК',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5210,6677,'ЧИФЛИК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5211,5661,'ЧИФЛИК',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5212,6869,'ЧИЧЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5213,3819,'ЧИЧИЛ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5214,4161,'ЧОБА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5215,6836,'ЧОБАНКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5216,4760,'ЧОКМАНОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5217,8887,'ЧОКОБА',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5218,4636,'ЧОЛАКОВА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5219,6800,'ЧОМАКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5220,5989,'ЧОМАКОВЦИ',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5221,6890,'ЧОРБАДЖИЙСКО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5222,2215,'ЧОРУЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5223,8461,'ЧУБРА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5224,6786,'ЧУБРИКА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5225,2562,'ЧУДИНЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5226,7284,'ЧУДОМИР',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5227,2346,'ЧУЙПЕТЛЬОВО',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5228,8529,'ЧУКАРКА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5229,6560,'ЧУКАРОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5230,5088,'ЧУКАТА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5231,4245,'ЧУКАТА',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5232,5304,'ЧУКИЛИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5233,2209,'ЧУКОВЕЗЕР',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5234,7537,'ЧУКОВЕЦ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5235,2425,'ЧУКОВЕЦ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5236,5370,'ЧУКОВО',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5237,6818,'ЧУКОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5238,6592,'ЧУКУРИТЕ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5239,3950,'ЧУПРЕНЕ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5240,2126,'ЧУРЕК',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5241,4226,'ЧУРЕН',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5242,2885,'ЧУРИЛОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5243,2891,'ЧУРИЧЕНИ',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5244,4915,'ЧУРКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5245,4823,'ЧУРУКОВО',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5246,6572,'ЧУЧУЛИГА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5247,2865,'ЧУЧУЛИГОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5248,4796,'ЧУЧУР',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5249,9680,'ШАБЛА',8);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5250,6169,'ШАНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5251,5300,'ШАРАНИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5252,4916,'ШАРЕНСКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5253,8753,'ШАРКОВО',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5254,2684,'ШАТРОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5255,6144,'ШЕЙНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5256,5027,'ШЕМШЕВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5257,5034,'ШЕРЕМЕТЯ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5258,8897,'ШЕШКИНГРАД',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5259,8559,'ШИВАРОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5260,8895,'ШИВАЧЕВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5261,5094,'ШИЛИВЕРИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5262,5087,'ШИЛКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5263,3836,'ШИПИКОВА МАХАЛА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5264,6150,'ШИПКА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5265,2493,'ШИПКОВИЦА',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5266,5663,'ШИПКОВО',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5267,6865,'ШИПОК',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5268,3744,'ШИПОТ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5269,2015,'ШИПОЧАНЕ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5270,2552,'ШИПОЧАНО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5271,5344,'ШИПЧЕНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5272,4710,'ШИРОКА ЛЪКА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5273,6365,'ШИРОКА ПОЛЯНА',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5274,2013,'ШИРОКИ ДОЛ',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5275,6650,'ШИРОКО ПОЛЕ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5276,7159,'ШИРОКОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5277,3834,'ШИШЕНЦИ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5278,7971,'ШИШКОВИЦА',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5279,2553,'ШИШКОВЦИ',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5280,6458,'ШИШМАНОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5281,4133,'ШИШМАНЦИ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5282,5962,'ШИЯКОВО',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5283,9112,'ШКОРПИЛОВЦИ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5284,5053,'ШОДЕКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5285,5459,'ШОПИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5286,6883,'ШОПЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5287,5097,'ШУБЕЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5288,2252,'ШУМА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5289,5468,'ШУМАТА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5290,9700,'ШУМЕН',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5291,7639,'ШУМЕНЦИ',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5292,6888,'ШУМНАТИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5293,5380,'ШУШНЯ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5294,6842,'ЩЕРНА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5295,9283,'ЩИПСКО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5296,6528,'ЩИТ',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5297,7078,'ЩРЪКЛЕВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5298,4461,'ЩЪРКОВО',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5299,5791,'ЪГЛЕН',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5300,4241,'ЮГОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5301,7061,'ЮДЕЛНИК',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5302,6168,'ЮЛИЕВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5303,9138,'ЮНАК',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5304,6800,'ЮНАЦИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5305,4420,'ЮНАЦИТЕ',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5306,4629,'ЮНДОЛА',13);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5307,9109,'ЮНЕЦ',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5308,7338,'ЮПЕР',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5309,2796,'ЮРУКОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5310,2298,'ЯБЛАНИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5311,5750,'ЯБЛАНИЦА',11);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5312,8989,'ЯБЛАНОВО',20);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5313,6787,'ЯБЪЛКОВЕЦ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5314,6440,'ЯБЪЛКОВО',26);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5315,2544,'ЯБЪЛКОВО',10);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5316,5350,'ЯБЪЛКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5317,8542,'ЯБЪЛЧЕВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5318,6715,'ЯБЪЛЧЕНИ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5319,5350,'ЯВОР',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5320,5334,'ЯВОРЕЦ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5321,6179,'ЯВОРЕЦ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5322,2896,'ЯВОРНИЦА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5323,6696,'ЯВОРОВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5324,6240,'ЯВОРОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5325,4258,'ЯВРОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5326,6865,'ЯГНЕВО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5327,9231,'ЯГНИЛО',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5328,6167,'ЯГОДА',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5329,4835,'ЯГОДИНА',21);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5330,3537,'ЯГОДОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5331,4113,'ЯГОДОВО',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5332,6229,'ЯЗДАЧ',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5333,7991,'ЯЗОВЕЦ',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5334,7443,'ЯКИМ ГРУЕВО',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5335,3640,'ЯКИМОВО',12);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5336,6870,'ЯКОВИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5337,2875,'ЯКОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5338,5081,'ЯКОВЦИ',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5339,2790,'ЯКОРУДА',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5340,2220,'ЯЛБОТИНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5341,5056,'ЯЛОВО',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5342,8600,'ЯМБОЛ',28);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5343,6854,'ЯМИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5344,2183,'ЯМНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5345,1805,'ЯНА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5346,6865,'ЯНИНО',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5347,9823,'ЯНКОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5348,5345,'ЯНКОВЦИ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5349,2816,'ЯНОВО',1);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5350,5135,'ЯНТРА',4);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5351,5374,'ЯНТРА',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5352,3949,'ЯНЬОВЕЦ',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5353,2355,'ЯРДЖИЛОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5354,7691,'ЯРЕБИЦА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5355,6732,'ЯРЕБИЦА',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5356,9158,'ЯРЕБИЧНА',3);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5357,7998,'ЯРЕБИЧНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5358,2023,'ЯРЕБКОВИЦА',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5359,3799,'ЯРЛОВИЦА',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5360,2029,'ЯРЛОВО',22);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5361,2481,'ЯРЛОВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5362,2376,'ЯРОСЛАВЦИ',14);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5363,3775,'ЯСЕН',5);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5364,5850,'ЯСЕН',15);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5365,5335,'ЯСЕНИТЕ',7);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5366,9777,'ЯСЕНКОВО',27);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5367,7250,'ЯСЕНОВЕЦ',17);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5368,6147,'ЯСЕНОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5369,8569,'ЯСЕНОВО',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5370,8147,'ЯСНА ПОЛЯНА',2);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5371,4139,'ЯСНО ПОЛЕ',16);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5372,7975,'ЯСТРЕБ',9);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5373,7975,'ЯСТРЕБИНО',25);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5374,7664,'ЯСТРЕБНА',19);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5375,6056,'ЯСТРЕБОВО',24);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5376,7073,'ЯСТРЕБОВО',18);
insert into `n_nm` (`id_n_nm`,`postcode_n_nm`,`name_n_nm`,`id_n_oblast`) values (5377,2622,'ЯХИНОВО',10);

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

insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (1,'БЛАГОЕВГРАД',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (2,'БУРГАС',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (3,'ВАРНА',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (4,'ВЕЛИКО ТЪРНОВО',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (5,'ВИДИН',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (6,'ВРАЦА',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (7,'ГАБРОВО',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (8,'ДОБРИЧ',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (9,'КЪРДЖАЛИ',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (10,'КЮСТЕНДИЛ',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (11,'ЛОВЕЧ',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (12,'МОНТАНА',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (13,'ПАЗАРДЖИК',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (14,'ПЕРНИК',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (15,'ПЛЕВЕН',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (16,'ПЛОВДИВ',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (17,'РАЗГРАД',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (18,'РУСЕ',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (19,'СИЛИСТРА',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (20,'СЛИВЕН',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (21,'СМОЛЯН',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (22,'СОФИЯ',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (23,'СОФИЯ-ГРАД',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (24,'СТАРА ЗАГОРА',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (25,'ТЪРГОВИЩЕ',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (26,'ХАСКОВО',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (27,'ШУМЕН',1);
insert into `n_oblast` (`id_n_oblast`,`name_n_oblast`,`id_n_country`) values (28,'ЯМБОЛ',1);

/*Table structure for table `n_product_all_measure` */

DROP TABLE IF EXISTS `n_product_all_measure`;

CREATE TABLE `n_product_all_measure` (
  `id_pam` int(11) NOT NULL auto_increment COMMENT 'id na miarkata',
  `name_pam` varchar(30) default NULL COMMENT 'ime na miarkata',
  `sname_pam` varchar(6) default NULL COMMENT 'sakrateno ime na miarkata',
  PRIMARY KEY  (`id_pam`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_product_all_measure` */

insert into `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) values (1,'брой','бр.');
insert into `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) values (2,'пакет','пакет');
insert into `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) values (3,'Kашон','Kашон');
insert into `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) values (4,'Стек','Стек');
insert into `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) values (5,'Килограм','Кг.');
insert into `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) values (6,'Палет','Палет');
insert into `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) values (7,'Литър','Л.');
insert into `n_product_all_measure` (`id_pam`,`name_pam`,`sname_pam`) values (8,'Милилитър','мЛ.');

/*Table structure for table `n_product_consigment` */

DROP TABLE IF EXISTS `n_product_consigment`;

CREATE TABLE `n_product_consigment` (
  `id_pc` int(11) unsigned NOT NULL auto_increment COMMENT 'id na partida',
  `id_pm` int(11) default NULL COMMENT 'id na produkt',
  `parcel_pc` varchar(20) default NULL COMMENT 'nomer na partida',
  `dateofexpire_pc` date default NULL COMMENT 'data na godnost',
  `barcod_pc` varchar(20) unsigned zerofill NOT NULL default '00000000000' COMMENT 'barkod',
  `id_pp` int(11) unsigned NOT NULL default '0' COMMENT 'id na product_price',
  `id_ppp` int(11) unsigned NOT NULL default '0' COMMENT 'id product_promotion price',
  `id_pf` int(11) unsigned NOT NULL default '0' COMMENT 'id_ product fee',
  `exp_list_pc` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id_pc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_product_consigment` */

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
  `name_pm` varchar(60) default NULL,
  `fname_pm` varchar(60) default NULL,
  `sname_pm` varchar(60) default NULL,
  `cname_pm` varchar(60) default NULL,
  `cod1_pm` varchar(20) default NULL,
  `cod2_pm` varchar(20) default NULL,
  `barcod_pm` varchar(20) default NULL,
  `max_pop_pm` double default NULL,
  `expertsheet_pm` varchar(45) default NULL,
  `flag_pm` int(3) unsigned zerofill NOT NULL default '000',
  `min_pm` int(11) unsigned NOT NULL default '0',
  `code_pm` int(11) unsigned NOT NULL default '0',
  `id_n_mitprod` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*Data for the table `n_product_main` */

insert into `n_product_main` (`id_pm`,`id_pd`,`id_n_group`,`id_ppp`,`id_pp`,`id_pf`,`name_pm`,`fname_pm`,`sname_pm`,`cname_pm`,`cod1_pm`,`cod2_pm`,`barcod_pm`,`max_pop_pm`,`expertsheet_pm`,`flag_pm`,`min_pm`,`code_pm`,`id_n_mitprod`) values (1,1,7,1,1,1,'НЕСТЛЕ НУГА КРЕМ','НЕСТЛЕ НУГА КРЕМ','НЕСТЛЕ НУГ','НЕСТЛЕ НУГ','','','10101010101',5.65,'',000,1,999999,1);

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
  `price_ppp` decimal(10,5) default NULL,
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

insert into `n_type_bacc` (`id_tbacc`,`name_tbacc`) values (1,'Разплащателна сметка');
insert into `n_type_bacc` (`id_tbacc`,`name_tbacc`) values (2,'ДДС сметка');

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

insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (1,100,'Стокова разписка','Продажба');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (2,200,'Фактура','Ф-ра');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (3,300,'Проформа фактура','Проф. ф-ра');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (4,201,'Опростена фактура','Опр. ф-ра');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (5,3010,'Касова бележка','КБ');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (10,701,'Приходен ордер','Прих. ордер');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (11,702,'Разходен ордер','Разх. ордер');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (12,703,'Ордер за Аванс към подотчетно лице','Ордер Аванс МОЛ');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (13,704,'Ордер за междукасово прехвърляне','Ордер Каса - Каса');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (14,1612,'Протокол','Протокол');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (16,4062,'Ценова листа','Ц. листа');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (17,202,'Данъчна фактура','Дан. ф-ра');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (19,400,'Консигнационен протокол','Консиг. прот.');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (20,800,'Протокол за брак','Брак');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (21,900,'Протокол за липса','Липса');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (22,500,'Нареждане за прехвърляне','Прехвърляне');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (23,8000,'Протокол за приемане','Прот. Приемане');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (24,1000,'Оферта','Оферта');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (25,600,'Приемателна разписка','Р-ка приемане');
insert into `n_type_doc` (`id_ntd`,`code_ntd`,`name_ntd`,`name_print_ntd`) values (26,700,'Предавателна разписка','Р-ка Предаване');

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

insert into `sl_porder_types` (`id_spt`,`type_porder`,`id_tbacc`) values (1,'Вносна бележка',0);
insert into `sl_porder_types` (`id_spt`,`type_porder`,`id_tbacc`) values (2,'Преводно нареждане по Разплащателна сметка',1);
insert into `sl_porder_types` (`id_spt`,`type_porder`,`id_tbacc`) values (3,'Преводно нареждане по ДДС сметка',2);
insert into `sl_porder_types` (`id_spt`,`type_porder`,`id_tbacc`) values (4,'Захранване на ДДС сметка',2);
insert into `sl_porder_types` (`id_spt`,`type_porder`,`id_tbacc`) values (5,'Преводно нареждане към Бюджета',1);

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

insert into `user_master` (`id_um`,`acc_user`,`name_um`,`nomer_um`) values (1,'root','Иван Кацаров',1);
insert into `user_master` (`id_um`,`acc_user`,`name_um`,`nomer_um`) values (2,'katsarov','Иван Кацаров',2);
insert into `user_master` (`id_um`,`acc_user`,`name_um`,`nomer_um`) values (3,'imakante','Радослав Драгийски',3);
insert into `user_master` (`id_um`,`acc_user`,`name_um`,`nomer_um`) values (4,'jp','Иван Попов',4);

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

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;