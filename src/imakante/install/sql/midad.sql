# MySQL-Front 3.2  (Build 13.8)

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
# Table structure for table kind_paying
#

CREATE TABLE `kind_paying` (
  `id_kp` int(10) unsigned NOT NULL auto_increment,
  `name_kp` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id_kp`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table log_action_nalich
#

CREATE TABLE `log_action_nalich` (
  `id` int(11) NOT NULL auto_increment,
  `id_corect` int(11) default NULL,
  `bupdate` int(11) default NULL,
  `aupdate` int(11) default NULL,
  `uptime` timestamp NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


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
# Table structure for table ls_n_person
#

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


#
# Table structure for table ls_otdeli
#

CREATE TABLE `ls_otdeli` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `code` int(11) default NULL,
  `name` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


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
# Table structure for table ls_otpusk
#

CREATE TABLE `ls_otpusk` (
  `id` smallint(4) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '' COMMENT '�?ме на отпуск',
  `cod` varchar(6) NOT NULL default '' COMMENT 'Код на вида отпуск',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


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
# Table structure for table ls_sluj
#

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
# Table structure for table n_baccount
#

CREATE TABLE `n_baccount` (
  `id_nbc` int(11) NOT NULL auto_increment,
  `id_n_group` int(11) unsigned default NULL,
  `code_nbc` int(11) default NULL COMMENT 'cod na bankata',
  `name_nbc` varchar(45) default NULL COMMENT 'ime na bankata',
  `account_nbc` varchar(28) default NULL COMMENT 'Bankova smetka',
  `address_nbc` varchar(100) default NULL,
  `id_tbacc` int(11) unsigned default '1',
  `comment_nbc` varchar(250) default NULL,
  `bic` varchar(11) default NULL,
  `vidval` varchar(11) default NULL,
  PRIMARY KEY  (`id_nbc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='bankovi smetki';


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
  `IBANR` varchar(30) default NULL,
  `BICR` varchar(20) default NULL,
  `VIDVALR` varchar(11) default NULL,
  `BANKNAMER` varchar(50) default NULL,
  `IBAND` varchar(30) default NULL,
  `BICD` varchar(11) default NULL,
  `VIDVALD` varchar(10) default NULL,
  `BANKNAMED` int(11) default NULL,
  PRIMARY KEY  (`id_contragent`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='kontragenti';


#
# Table structure for table n_country
#

CREATE TABLE `n_country` (
  `id_n_country` int(11) NOT NULL auto_increment,
  `code_n_country` int(11) default NULL,
  `name_n_country` varchar(30) default NULL,
  PRIMARY KEY  (`id_n_country`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


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
# Table structure for table n_group
#

CREATE TABLE `n_group` (
  `id_n_group` int(11) NOT NULL auto_increment,
  `nom_n_group` int(11) default NULL,
  `cod_n_group` int(11) default NULL,
  `name_n_group` varchar(50) default NULL,
  `id_al` int(11) default NULL,
  PRIMARY KEY  (`id_n_group`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='vsichki vidove grupi';


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
# Table structure for table n_money
#

CREATE TABLE `n_money` (
  `id_n_money` int(11) NOT NULL auto_increment,
  `cod_n_money` int(11) default NULL,
  `cod_lat_n_money` varchar(11) default NULL,
  `name_n_money` varchar(50) default NULL,
  `comments_n_money` varchar(100) default NULL,
  PRIMARY KEY  (`id_n_money`),
  UNIQUE KEY `Index_2` (`cod_lat_n_money`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='opisanie na valutite';


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
# Table structure for table n_obekt
#

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
# Table structure for table n_product_all_measure
#

CREATE TABLE `n_product_all_measure` (
  `id_pam` int(11) NOT NULL auto_increment COMMENT 'id na miarkata',
  `name_pam` varchar(30) default NULL COMMENT 'ime na miarkata',
  `sname_pam` varchar(6) default NULL COMMENT 'sakrateno ime na miarkata',
  PRIMARY KEY  (`id_pam`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table n_product_consigment
#

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


#
# Table structure for table n_product_description
#

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


#
# Table structure for table n_product_fee
#

CREATE TABLE `n_product_fee` (
  `id_pf` int(11) NOT NULL auto_increment,
  `dds_pf` decimal(10,0) default NULL COMMENT 'DDS v protsenti',
  `excise_pf` decimal(10,0) default NULL COMMENT 'aktsiz %',
  `other_pf` decimal(10,0) default NULL COMMENT 'drugi',
  PRIMARY KEY  (`id_pf`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


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
  `name_pm` varchar(30) default NULL,
  `fname_pm` varchar(30) default NULL,
  `sname_pm` varchar(10) default NULL,
  `cname_pm` varchar(10) default NULL,
  `cod1_pm` varchar(20) default NULL,
  `cod2_pm` varchar(20) default NULL,
  `barcod_pm` int(11) unsigned default NULL,
  `max_pop_pm` double default NULL,
  `expertsheet_pm` varchar(45) default NULL,
  `flag_pm` int(3) unsigned zerofill NOT NULL default '000',
  `min_pm` int(11) unsigned NOT NULL default '0',
  `code_pm` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table n_product_price
#

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
# Table structure for table n_type_bacc
#

CREATE TABLE `n_type_bacc` (
  `id_tbacc` int(11) NOT NULL auto_increment,
  `name_tbacc` varchar(30) default NULL,
  PRIMARY KEY  (`id_tbacc`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='tipove bankovi smetki';


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
# Table structure for table sl_contragent_obekt
#

CREATE TABLE `sl_contragent_obekt` (
  `id_sco` int(11) NOT NULL auto_increment,
  `id_contragent` int(11) default NULL,
  `id_object` int(11) default NULL,
  PRIMARY KEY  (`id_sco`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


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
# Table structure for table sl_document_facade
#

CREATE TABLE `sl_document_facade` (
  `id_df` int(11) unsigned NOT NULL auto_increment,
  `in_contragent_df` int(11) unsigned default NULL COMMENT 'kontragent ot van kam sklad',
  `out_obekt_df` int(11) unsigned default NULL COMMENT 'obekt ot sklad navan',
  `in_obekt_df` int(11) unsigned default NULL COMMENT 'obekt -  sklad poluchatel',
  `number_df` int(10) unsigned zerofill default NULL COMMENT 'nomera na dokumentite',
  `type_df` int(10) unsigned default NULL COMMENT 'tip na dokumenta  1 / fakturi q2/ stokova',
  `condition_df` varchar(11) default NULL COMMENT 'sastoianie',
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
  UNIQUE KEY `Index_2` (`type_df`,`level_df`,`number_df`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_document_lines
#

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
# Table structure for table sl_m_operation
#

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
# Table structure for table sl_nalichnosti
#

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
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


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
# View structure for view VAT_dr
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `VAT_dr` AS select `sl_document_facade`.`number_df` AS `number_df`,`n_type_doc`.`name_ntd` AS `name_ntd`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_contragent`.`bul_n_contragent` AS `bul_n_contragent`,`sl_document_facade`.`date_edition_df` AS `date_edition_df`,`sl_document_facade`.`total_df` AS `total_df`,`sl_document_facade`.`dds_df` AS `dds_df` from ((`sl_document_facade` join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_document_facade`.`in_contragent_df`))) join `n_type_doc` on((`n_type_doc`.`code_ntd` = `sl_document_facade`.`type_df`))) where (`sl_document_facade`.`type_df` = 4) order by `sl_document_facade`.`number_df`;


#
# View structure for view print_doc_faktura
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `print_doc_faktura` AS select `sl_document_lines`.`id_df` AS `id_df`,`sl_document_lines`.`singly_price_dl` AS `singly_price_dl`,`sl_document_lines`.`climb_down_dl` AS `climb_down_dl`,`sl_document_lines`.`numbers_piece_dl` AS `numbers_piece_dl`,`sl_document_lines`.`dds_dl` AS `dds_dl`,`sl_document_lines`.`totalall_dl` AS `totalall_dl`,`n_product_consigment`.`id_pm` AS `nomerpm`,`n_product_main`.`fname_pm` AS `fname_pm`,`n_product_all_measure`.`name_pam` AS `name_pam` from ((((`sl_document_lines` left join `n_product_consigment` on((`n_product_consigment`.`id_pc` = `sl_document_lines`.`id_pc`))) left join `n_product_main` on((`n_product_main`.`id_pm` = `n_product_consigment`.`id_pm`))) left join `n_product_description` on((`n_product_description`.`id_pd` = `n_product_main`.`id_pd`))) left join `n_product_all_measure` on((`n_product_all_measure`.`id_pam` = `n_product_description`.`m1_pd`)));


#
# View structure for view rep_casa_nal
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_casa_nal` AS (select distinct `n_casa`.`code_n_casa` AS `code_n_casa`,ifnull(sum(`sl_m_operation`.`sum_os_val_sl_mop`),0) AS `suma`,`sl_m_operation`.`in_type_sl_mop` AS `in_type_sl_mop`,`sl_m_operation`.`out_type_sl_mop` AS `out_type_sl_mop`,`sl_m_operation`.`levelx` AS `levelx` from (`n_casa` left join `sl_m_operation` on((`sl_m_operation`.`in_sl_mop` = `n_casa`.`id_n_casa`))) where (`sl_m_operation`.`in_type_sl_mop` = 1) group by `n_casa`.`code_n_casa`) union (select distinct `n_casa`.`code_n_casa` AS `code_n_casa`,ifnull(sum(`sl_m_operation`.`sum_os_val_sl_mop`),0) AS `suma`,`sl_m_operation`.`in_type_sl_mop` AS `in_type_sl_mop`,`sl_m_operation`.`out_type_sl_mop` AS `out_type_sl_mop`,`sl_m_operation`.`levelx` AS `levelx` from (`n_casa` left join `sl_m_operation` on((`sl_m_operation`.`out_sl_mop` = `n_casa`.`id_n_casa`))) where (`sl_m_operation`.`out_type_sl_mop` = 1) group by `n_casa`.`code_n_casa`);


#
# View structure for view rep_comm_nal
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_comm_nal` AS select `s`.`id_n_storage` AS `id_n_storage`,`n_storage`.`code_n_storage` AS `code_n_storage`,`n_storage`.`name_n_storage` AS `name_n_storage`,`s`.`id_pc` AS `id_pc`,`n_product_consigment`.`id_pm` AS `id_pm`,`n_product_main`.`code_pm` AS `code_pm`,`n_product_main`.`name_pm` AS `name_pm`,`n_product_main`.`barcod_pm` AS `barcod_pm`,`n_product_consigment`.`parcel_pc` AS `parcel_pc`,`n_product_consigment`.`dateofexpire_pc` AS `dateofexpire_pc`,`sl_contragent_product`.`id_contragent` AS `id_contragent`,`n_contragent`.`code_contragent` AS `code_contragent`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`s`.`level` AS `level`,`s`.`quant_nal` AS `quant_nal`,`n_product_price`.`price0_pp` AS `price0_pp`,(`s`.`quant_nal` * `n_product_price`.`price0_pp`) AS `TSENA0`,`n_product_price`.`price1_pp` AS `price1_pp`,(`s`.`quant_nal` * `n_product_price`.`price1_pp`) AS `TSENA1`,`n_product_price`.`price2_pp` AS `price2_pp`,(`s`.`quant_nal` * `n_product_price`.`price2_pp`) AS `TSENA2`,`n_product_price`.`price3_pp` AS `price3_pp`,(`s`.`quant_nal` * `n_product_price`.`price3_pp`) AS `TSENA3`,(`s`.`quant_nal` DIV `n_product_description`.`v3_pd`) AS `miarka3`,((`s`.`quant_nal` - ((`s`.`quant_nal` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) AS `miarka2`,((`s`.`quant_nal` - ((`s`.`quant_nal` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) - (((`s`.`quant_nal` - ((`s`.`quant_nal` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) * `n_product_description`.`v2_pd`)) AS `OSTATAK` from (((((((`sl_nalichnosti` `s` join `n_storage` on((`n_storage`.`id_n_storage` = `s`.`id_n_storage`))) join `n_product_consigment` on((`n_product_consigment`.`id_pc` = `s`.`id_pc`))) join `sl_contragent_product` on((`sl_contragent_product`.`id_pm` = `n_product_consigment`.`id_pm`))) join `n_product_main` on((`n_product_main`.`id_pm` = `sl_contragent_product`.`id_pm`))) join `n_product_description` on((`n_product_description`.`id_pd` = `n_product_main`.`id_pd`))) join `n_product_price` on((`n_product_price`.`id_pp` = `n_product_consigment`.`id_pp`))) join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_contragent_product`.`id_contragent`)));


#
# View structure for view rep_doc_pri
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_doc_pri` AS select `sl_document_facade`.`number_df` AS `number_df`,`sl_document_facade`.`type_df` AS `type_df`,`sl_document_facade`.`condition_df` AS `condition_df`,`n_contragent`.`code_contragent` AS `code_contragent`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_contragent`.`bul_n_contragent` AS `bul_n_contragent`,`sl_document_facade`.`total_df` AS `total_df`,`sl_document_facade`.`dds_df` AS `dds_df`,`sl_document_facade`.`date_edition_df` AS `date_edition_df`,`sl_document_facade`.`level_df` AS `level_df`,`n_contragent`.`flag_n_contragent` AS `flag_n_contragent` from (`sl_document_facade` join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_document_facade`.`in_contragent_df`)));


#
# View structure for view rep_documents
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_documents` AS (select `d`.`id_dl` AS `id_dl`,`d`.`id_pc` AS `id_pc`,`pc`.`parcel_pc` AS `parcel_pc`,`pc`.`id_pm` AS `id_pm`,`pm`.`code_pm` AS `code_product`,`pm`.`name_pm` AS `name_product`,`pm`.`id_pd` AS `id_pd`,`pm`.`barcod_pm` AS `barcod_pm`,`d`.`id_n_storage` AS `id_n_storage`,`s`.`code_n_storage` AS `code_store`,`s`.`name_n_storage` AS `name_store`,`d`.`singly_price_dl` AS `singly_price_dl`,`d`.`climb_down_dl` AS `climb_down_dl`,`d`.`numbers_piece_dl` AS `numbers_piece_dl`,(`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) AS `miarka3`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) AS `miarka2`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) - (((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) * `n_product_description`.`v2_pd`)) AS `OSTATAK`,`d`.`dds_dl` AS `dds_dl`,`d`.`totalall_dl` AS `totalall_dl`,`d`.`id_df` AS `id_df`,`df`.`number_df` AS `number_df`,ifnull(`df`.`type_df`,0) AS `type_df`,ifnull(`df`.`in_contragent_df`,0) AS `in_contragent_df`,ifnull(`ictr`.`code_contragent`,0) AS `code_dostavchik`,ifnull(`ictr`.`name_n_contragent`,0) AS `name_dostavchik`,ifnull(`df`.`out_contragent_df`,0) AS `out_contragent_df`,ifnull(`octr`.`code_contragent`,0) AS `code_client`,ifnull(`octr`.`name_n_contragent`,_cp1251'') AS `name_client`,ifnull(`df`.`total_df`,0) AS `total_df`,`df`.`dds_df` AS `dds_df`,ifnull(`df`.`date_edition_df`,_utf8'0000-00-00') AS `date_edition_df`,ifnull(`df`.`date_deliver_df`,_utf8'0000-00-00') AS `date_deliver_df`,ifnull(`df`.`date_pay_df`,_utf8'0000-00-00') AS `date_pay_df`,ifnull(`df`.`user_df`,0) AS `user_df`,ifnull(`person1`.`code_ls_n_person`,0) AS `code_operator`,ifnull(`person1`.`name_ls_n_person`,_cp1251'') AS `name_operator`,ifnull(`df`.`distributor_df`,0) AS `distributor_df`,ifnull(`person2`.`code_ls_n_person`,0) AS `code_distributor`,ifnull(`person2`.`name_ls_n_person`,_cp1251'') AS `name_distributor`,ifnull(`df`.`delivere_df`,0) AS `delivere_df`,ifnull(`person3`.`code_ls_n_person`,0) AS `code_speditor`,ifnull(`person3`.`name_ls_n_person`,0) AS `name_speditor`,ifnull(`d`.`price_list_dl`,0) AS `IFNULL(d.price_list_dl,0)`,`df`.`level_df` AS `level_df` from ((((((((((`sl_document_lines` `d` join `sl_document_facade` `df` on((`df`.`id_df` = `d`.`id_df`))) join `n_product_consigment` `pc` on((`pc`.`id_pc` = `d`.`id_pc`))) join `n_product_main` `pm` on((`pm`.`id_pm` = `pc`.`id_pm`))) join `n_storage` `s` on((`s`.`id_n_storage` = `d`.`id_n_storage`))) left join `ls_n_person` `person1` on((`person1`.`id_ls_n_person` = `df`.`user_df`))) left join `ls_n_person` `person2` on((`person2`.`id_ls_n_person` = `df`.`distributor_df`))) left join `ls_n_person` `person3` on((`person3`.`id_ls_n_person` = `df`.`delivere_df`))) left join `n_contragent` `octr` on((`octr`.`id_contragent` = `df`.`out_contragent_df`))) left join `n_contragent` `ictr` on((`ictr`.`id_contragent` = `df`.`in_contragent_df`))) join `n_product_description` on((`n_product_description`.`id_pd` = `pm`.`id_pd`))) order by `d`.`id_dl`);


#
# View structure for view rep_documents_ivan
#

CREATE ALGORITHM=UNDEFINED DEFINER=`imakante`@`%` SQL SECURITY DEFINER VIEW `rep_documents_ivan` AS select `d`.`id_dl` AS `id_dl`,`d`.`id_pc` AS `id_pc`,`pc`.`parcel_pc` AS `parcel_pc`,`pc`.`id_pm` AS `id_pm`,`pm`.`code_pm` AS `code_product`,`pm`.`name_pm` AS `name_product`,`pm`.`id_pd` AS `id_pd`,`pm`.`barcod_pm` AS `barcod_pm`,`d`.`id_n_storage` AS `id_n_storage`,`s`.`code_n_storage` AS `code_store`,`s`.`name_n_storage` AS `name_store`,`df`.`in_store_df` AS `in_store_df`,`d`.`singly_price_dl` AS `singly_price_dl`,`d`.`climb_down_dl` AS `climb_down_dl`,`d`.`numbers_piece_dl` AS `numbers_piece_dl`,(`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) AS `miarka3`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) AS `miarka2`,((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) - (((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) * `n_product_description`.`v2_pd`)) AS `OSTATAK`,`d`.`dds_dl` AS `dds_dl`,`d`.`totalall_dl` AS `totalall_dl`,`d`.`id_df` AS `id_df`,`df`.`number_df` AS `number_df`,ifnull(`df`.`type_df`,0) AS `type_df`,`kp`.`name_kp` AS `vid_plashtane`,ifnull(`df`.`in_contragent_df`,0) AS `in_contragent_df`,ifnull(`ictr`.`code_contragent`,0) AS `code_dostavchik`,ifnull(`ictr`.`name_n_contragent`,0) AS `name_dostavchik`,ifnull(`ictr`.`bul_n_contragent`,0) AS `ictr_bul_nomer`,ifnull(`ictr`.`dan_n_contragent`,0) AS `ictr_dan_nomer`,ifnull(`ictr`.`address_n_contragent`,0) AS `ictr_address`,ifnull(`ictr_oso`.`name_ls_n_person`,0) AS `ictr_oso_name`,ifnull(`ictr_mol`.`name_ls_n_person`,0) AS `ictr_mol_name`,ifnull(`df`.`out_contragent_df`,0) AS `out_contragent_df`,ifnull(`octr`.`code_contragent`,0) AS `code_client`,ifnull(`octr`.`name_n_contragent`,_cp1251'') AS `name_client`,ifnull(`octr`.`bul_n_contragent`,0) AS `octr_bul_nomer`,ifnull(`octr`.`dan_n_contragent`,0) AS `octr_dan_nomer`,ifnull(`octr`.`address_n_contragent`,0) AS `octr_address`,ifnull(`octr_oso`.`name_ls_n_person`,0) AS `octr_oso_name`,ifnull(`octr_mol`.`name_ls_n_person`,0) AS `octr_mol_name`,ifnull(`df`.`total_df`,0) AS `total_df`,`df`.`dds_df` AS `dds_df`,ifnull(`df`.`date_edition_df`,_utf8'0000-00-00') AS `date_edition_df`,ifnull(`df`.`date_deliver_df`,_utf8'0000-00-00') AS `date_deliver_df`,ifnull(`df`.`date_pay_df`,_utf8'0000-00-00') AS `date_pay_df`,ifnull(`df`.`user_df`,0) AS `user_df`,ifnull(`person1`.`code_ls_n_person`,0) AS `code_operator`,ifnull(`person1`.`name_ls_n_person`,_cp1251'') AS `name_operator`,ifnull(`df`.`distributor_df`,0) AS `distributor_df`,ifnull(`person2`.`code_ls_n_person`,0) AS `code_distributor`,ifnull(`person2`.`name_ls_n_person`,_cp1251'') AS `name_distributor`,ifnull(`df`.`delivere_df`,0) AS `delivere_df`,ifnull(`person3`.`code_ls_n_person`,0) AS `code_speditor`,ifnull(`person3`.`name_ls_n_person`,0) AS `name_speditor`,ifnull(`d`.`price_list_dl`,0) AS `IFNULL(d.price_list_dl,0)`,`df`.`level_df` AS `level_df` from (((((((((((((((`sl_document_lines` `d` join `sl_document_facade` `df` on((`df`.`id_df` = `d`.`id_df`))) join `n_product_consigment` `pc` on((`pc`.`id_pc` = `d`.`id_pc`))) join `n_product_main` `pm` on((`pm`.`id_pm` = `pc`.`id_pm`))) join `n_storage` `s` on((`s`.`id_n_storage` = `d`.`id_n_storage`))) left join `ls_n_person` `person1` on((`person1`.`id_ls_n_person` = `df`.`user_df`))) left join `ls_n_person` `person2` on((`person2`.`id_ls_n_person` = `df`.`distributor_df`))) left join `ls_n_person` `person3` on((`person3`.`id_ls_n_person` = `df`.`delivere_df`))) left join `n_contragent` `octr` on((`octr`.`id_contragent` = `df`.`out_contragent_df`))) left join `ls_n_person` `octr_oso` on((`octr_oso`.`id_ls_n_person` = `octr`.`id_oso`))) left join `ls_n_person` `octr_mol` on((`octr_mol`.`id_ls_n_person` = `octr`.`id_mol`))) left join `n_contragent` `ictr` on((`ictr`.`id_contragent` = `df`.`in_contragent_df`))) left join `ls_n_person` `ictr_oso` on((`ictr_oso`.`id_ls_n_person` = `ictr`.`id_oso`))) left join `ls_n_person` `ictr_mol` on((`ictr_mol`.`id_ls_n_person` = `ictr`.`id_mol`))) join `n_product_description` on((`n_product_description`.`id_pd` = `pm`.`id_pd`))) left join `kind_paying` `kp` on((`kp`.`id_kp` = `df`.`description_pay_df`)));


#
# Source for procedure ls_procedure_country
#

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


END;

#
# Source for procedure ls_procedure_document_facade
#

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
         WHERE  type_df = in_docFacadeType AND level_df = in_docFacadeLevel
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
# za priemane na stoka
   IF (in_docFacadeType = 3) THEN
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
# za tyrsene po ime i tatisnat F7
   IF (in_docFacadeType = 4) THEN
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
   IF (in_docFacadeType = 5) THEN
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
   IF (in_docFacadeType = 6) THEN
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
# za priemane na stoka  i tyrsene po ime
   IF (in_docFacadeType = 7) THEN
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

END;

#
# Source for procedure ls_procedure_group
#

CREATE PROCEDURE `ls_procedure_group`(IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_code INT(11), IN in_name VARCHAR(50), IN in_alid TINYINT, IN in_alname VARCHAR(50))
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
END;

#
# Source for procedure nom_procedure_baccount
#

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
END;

#
# Source for procedure nom_procedure_casa
#

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

END;

#
# Source for procedure nom_procedure_contragent
#

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

END;

#
# Source for procedure nom_procedure_doctype
#

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

END;

#
# Source for procedure nom_procedure_doctype_user_rights
#

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
END;

#
# Source for procedure nom_procedure_expens
#

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

END;

#
# Source for procedure nom_procedure_incom
#

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

END;

#
# Source for procedure nom_procedure_money
#

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


END;

#
# Source for procedure nom_procedure_naselenimesta
#

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
END;

#
# Source for procedure nom_procedure_oblast
#

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

END;

#
# Source for procedure nom_procedure_person
#

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

     IF (comprator = 21) THEN
        SELECT n.code_ls_n_person  AS code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person FROM ls_n_person n
        WHERE code_ls_n_person = in_code;

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
         ON g.id_n_group = n.id_n_group WHERE n.flag_pm = in_flag_pm ORDER BY n.name_pm, n.id_pm;
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

END;

#
# Source for procedure sl_procedure_casa_casa
#

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

END;

#
# Source for procedure sl_procedure_case_advances
#

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

END;

#
# Source for procedure sl_procedure_case_in
#

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

END;

#
# Source for procedure sl_procedure_case_out
#

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

END;

#
# Source for procedure sl_procedure_exchange_rate
#

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

END;

#
# Source for procedure sl_procedure_m
#

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


END;

#
# Source for procedure sl_procedure_num_doc
#

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
