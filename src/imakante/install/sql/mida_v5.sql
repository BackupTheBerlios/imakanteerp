# MySQL-Front 3.2  (Build 7.19)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'cp1250' */;

# Host: localhost:3307    Database: mida
# ------------------------------------------------------
# Server version 5.0.13-rc-nt

DROP DATABASE IF EXISTS `mida`;
CREATE DATABASE `mida` /*!40100 DEFAULT CHARACTER SET cp1251 */;
USE `mida`;

/*!40101 SET NAMES cp1251 */;

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
  `id_boln` smallint(6) default NULL COMMENT '?? ???????',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmoth+pyear',
  `id_per_otn` int(11) default NULL COMMENT '??? ??????????',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT '??????? ????',
  `n_o_days` tinyint(3) NOT NULL default '0' COMMENT '???? ??? ????????',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table ls_bolnichni
#

CREATE TABLE `ls_bolnichni` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '0' COMMENT '??? ?? ???? ????????',
  `cod` varchar(6) NOT NULL default '' COMMENT '???????? ??? ?? ???? ????????',
  `procent` decimal(3,2) unsigned NOT NULL default '0.00' COMMENT '??????? ?? ?????????',
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
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


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
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT '??????? ??????',
  `pmonth` tinyint(4) default NULL,
  `pyear` int(11) default NULL,
  `seq` varchar(40) default NULL,
  `dni5` tinyint(4) default NULL,
  `dni6` tinyint(4) default NULL,
  `ktu` decimal(3,2) NOT NULL default '0.60' COMMENT 'ktu',
  `min_rab_zaplata` decimal(10,2) NOT NULL default '0.00' COMMENT 'minimalna rabotna zaplata',
  `max_os_prag` decimal(10,2) NOT NULL default '0.00' COMMENT 'maksimalen osig. prag',
  `proc_oz` decimal(3,2) NOT NULL default '0.00' COMMENT 'fond oz i majchinstvo',
  `proc_pensii` decimal(3,2) NOT NULL default '0.00' COMMENT 'procent pensii',
  `proc_zo` decimal(3,2) NOT NULL default '0.00' COMMENT 'proc zdravno',
  `proc_bez` decimal(3,2) NOT NULL default '0.00' COMMENT 'proc bezrabotitsa',
  `proc_upf` decimal(3,2) NOT NULL default '0.00' COMMENT 'procent_upf',
  `coef` tinyint(3) NOT NULL default '3' COMMENT 'otnoshenie rabotodatel/rabotnik',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table ls_otdeli
#

CREATE TABLE `ls_otdeli` (
  `Id` int(11) NOT NULL default '0',
  `nomer` tinyint(4) default NULL,
  `nameotdel` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table ls_otp_impl
#

CREATE TABLE `ls_otp_impl` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0' COMMENT '???????? ????????',
  `id_otp` smallint(6) NOT NULL default '0' COMMENT '?? ???????',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmonth+pyear',
  `id_per_otn` smallint(6) default NULL COMMENT '?????? ?? ??????????',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT '??????? ????',
  `n_o_days` tinyint(3) unsigned NOT NULL default '0' COMMENT '???? ??? ?????? ? ??????',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='????????? ???????? ?? ????????? ';


#
# Table structure for table ls_otpusk
#

CREATE TABLE `ls_otpusk` (
  `id` smallint(4) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '' COMMENT '??? ?? ??????',
  `cod` varchar(6) NOT NULL default '' COMMENT '??? ?? ???? ??????',
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
  `state` tinyint(2) unsigned NOT NULL default '1' COMMENT '?????? ?????? ?????????? ? (0=?????) ????????????',
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT '??????? ??????',
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
# Table structure for table ls_users_rights
#

CREATE TABLE `ls_users_rights` (
  `Id` int(11) NOT NULL default '0',
  `id_user` int(11) default NULL,
  `sastav` tinyint(4) NOT NULL default '0',
  `vedom` tinyint(4) NOT NULL default '0',
  `fishove` tinyint(4) NOT NULL default '0',
  `newmonth` tinyint(4) NOT NULL default '0',
  `vedoma` tinyint(4) NOT NULL default '0',
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
# Table structure for table n_country
#

CREATE TABLE `n_country` (
  `id` smallint(6) NOT NULL auto_increment,
  `code` char(1) NOT NULL default '',
  `name` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table n_nm
#

CREATE TABLE `n_nm` (
  `id` int(11) NOT NULL default '0',
  `postcode` int(6) default NULL,
  `name` varchar(20) default NULL,
  `id_oblast` tinyint(3) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table n_oblast
#

CREATE TABLE `n_oblast` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(20) default NULL,
  `id_country` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table natc_clasifikator_deinosti
#

CREATE TABLE `natc_clasifikator_deinosti` (
  `id` int(11) NOT NULL auto_increment,
  `nkid` varchar(6) default NULL,
  `name` varchar(50) default NULL,
  `n1` decimal(6,2) unsigned NOT NULL default '0.00',
  `n2` decimal(6,2) unsigned NOT NULL default '0.00',
  `n3` decimal(6,2) unsigned NOT NULL default '0.00',
  `n4` decimal(6,2) unsigned NOT NULL default '0.00',
  `n5` decimal(6,2) unsigned NOT NULL default '0.00',
  `n6` decimal(6,2) unsigned NOT NULL default '0.00',
  `n7` decimal(6,2) unsigned NOT NULL default '0.00',
  `n8` decimal(6,2) unsigned NOT NULL default '0.00',
  `n9` decimal(6,2) unsigned NOT NULL default '0.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table natc_clasifikator_prof
#

CREATE TABLE `natc_clasifikator_prof` (
  `Id` int(11) NOT NULL auto_increment,
  `name_prof` varchar(50) default NULL,
  `cod` int(11) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table person
#

CREATE TABLE `person` (
  `idperson` int(11) NOT NULL default '0',
  `n_person` varchar(30) default NULL COMMENT 'sobstveno',
  `sn_person` varchar(15) default NULL COMMENT 'bashino',
  `tn_peerson` varchar(15) default NULL COMMENT 'familno',
  `f_au` int(11) NOT NULL default '0',
  `s_au` int(11) NOT NULL default '0',
  `fk_au` int(11) NOT NULL default '0',
  PRIMARY KEY  (`idperson`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_d_delivery
#

CREATE TABLE `sl_d_delivery` (
  `Id` int(11) NOT NULL auto_increment,
  `id_doc` int(11) default NULL COMMENT 'id na documenta',
  `number` varchar(11) default NULL COMMENT 'partiden nomer',
  `id_product` int(11) default NULL COMMENT 'id na producta',
  `amount_in` decimal(10,0) NOT NULL default '0',
  `amount_out` decimal(10,0) NOT NULL default '0',
  `price` decimal(10,0) NOT NULL default '0',
  `razf_tip` tinyint(4) NOT NULL default '0',
  `date_dost` date default NULL COMMENT 'data na dostavka',
  `godnost` decimal(10,0) NOT NULL default '0',
  `sertifikat` varchar(15) default NULL COMMENT 'sertifikat',
  `id_storage` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='parametri na dostavkata - partidi';


#
# Table structure for table sl_d_documents
#

CREATE TABLE `sl_d_documents` (
  `Id` int(11) NOT NULL auto_increment,
  `id_customer` int(11) default NULL COMMENT 'id na contragenta',
  `op_type` tinyint(4) NOT NULL default '0',
  `date` datetime default NULL,
  `op_date` datetime default NULL,
  `totalwovat` double default NULL,
  `VAT` double default NULL,
  `ShipVIA` int(11) default NULL,
  `plat` double default NULL,
  `tip_plat` int(11) default NULL,
  `id_kasa_order` int(11) default NULL,
  `id_operator` int(11) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='parametri na documenta';


#
# Table structure for table sl_d_sale
#

CREATE TABLE `sl_d_sale` (
  `Id` int(11) NOT NULL auto_increment,
  `id_doc` int(11) default NULL COMMENT 'id na documenta',
  `number` varchar(11) default NULL COMMENT 'partiden nomer',
  `id_product` int(11) default NULL COMMENT 'id na producta',
  `amount` decimal(10,0) NOT NULL default '0',
  `price` decimal(10,0) NOT NULL default '0',
  `razf_tip` tinyint(4) NOT NULL default '0',
  `date_sale` date default NULL COMMENT 'data na prodazba',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='parametri na dostavkata - partidi';


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
# Table structure for table sl_n_cat_product
#

CREATE TABLE `sl_n_cat_product` (
  `idsl_n_cat_product` int(11) NOT NULL default '0',
  `name` varchar(45) default NULL,
  `name_s` varchar(5) default NULL,
  PRIMARY KEY  (`idsl_n_cat_product`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_cust_info
#

CREATE TABLE `sl_n_cust_info` (
  `Id` int(11) NOT NULL default '0',
  `Id_cust` int(11) default NULL,
  `fix_rebate` int(11) default NULL,
  `credit_limit` double default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_customer
#

CREATE TABLE `sl_n_customer` (
  `Id` int(11) NOT NULL default '0',
  `code` varchar(10) default NULL,
  `name` varchar(45) default NULL,
  `bul` varchar(13) default NULL COMMENT 'Bulstat',
  `dann` varchar(10) default NULL COMMENT 'NDR',
  `address` varchar(25) default NULL,
  `Id_nm` int(11) default NULL,
  `tel` varchar(12) default NULL,
  `fax` varchar(12) default NULL,
  `email` varchar(20) default NULL,
  `web` varchar(20) default NULL,
  `Id_mol` int(10) default NULL,
  `Id_oso` int(10) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_distributors
#

CREATE TABLE `sl_n_distributors` (
  `Id` int(11) NOT NULL default '0',
  `Id_cust` int(11) default NULL,
  `code` varchar(4) default NULL,
  `name` varchar(20) default NULL,
  `comment` varchar(45) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_docs
#

CREATE TABLE `sl_n_docs` (
  `Id` int(11) NOT NULL default '0',
  `name` varchar(20) default NULL COMMENT 'ime na documentaa',
  `info` varchar(15) default NULL COMMENT 'komentar',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='tipove documenti';


#
# Table structure for table sl_n_gr_contr
#

CREATE TABLE `sl_n_gr_contr` (
  `id` int(11) NOT NULL auto_increment,
  `cod` varchar(6) default NULL,
  `name` varchar(30) default NULL,
  `opisanie` varchar(150) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_gr_object
#

CREATE TABLE `sl_n_gr_object` (
  `id` int(11) NOT NULL auto_increment,
  `cod` varchar(6) default NULL,
  `name` varchar(30) default NULL,
  `opisanie` varchar(150) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_gr_parichni
#

CREATE TABLE `sl_n_gr_parichni` (
  `id` int(6) NOT NULL auto_increment,
  `cod` varchar(6) default NULL,
  `name` varchar(30) default NULL,
  `opisanie` varchar(150) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_gr_stock
#

CREATE TABLE `sl_n_gr_stock` (
  `id` int(11) NOT NULL auto_increment,
  `cod` varchar(6) default NULL,
  `name` varchar(30) default NULL,
  `opisanie` varchar(150) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_obekt
#

CREATE TABLE `sl_n_obekt` (
  `Id` int(11) NOT NULL default '0',
  `Id_cust` int(11) default NULL,
  `name` varchar(45) default NULL,
  `address` varchar(25) default NULL,
  `Id_nm` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_person
#

CREATE TABLE `sl_n_person` (
  `Id` int(11) NOT NULL default '0',
  `egn` varchar(10) default NULL,
  `nlk` varchar(9) default NULL COMMENT 'Nomer na licna karta',
  `name` varchar(20) default NULL,
  `comment` varchar(20) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_product
#

CREATE TABLE `sl_n_product` (
  `Id` int(11) NOT NULL auto_increment,
  `name` varchar(10) default NULL,
  `tsena_dost` decimal(10,0) NOT NULL default '0',
  `tsena_prod1` decimal(10,0) NOT NULL default '0',
  `tsena_prod2` decimal(10,0) NOT NULL default '0',
  `tsena_prod3` decimal(10,0) NOT NULL default '0',
  `tsena_promo` decimal(10,0) NOT NULL default '0',
  `razf1` decimal(10,0) NOT NULL default '0',
  `razf2` decimal(10,0) NOT NULL default '0',
  `razf_name` varchar(10) default NULL COMMENT 'ime na razfasofka osnovna',
  `razf1_name` varchar(10) default NULL COMMENT 'ime na razfasofka 1',
  `razf2_name` varchar(10) default NULL COMMENT 'ime na razfasofka 2',
  `BARCOD` int(11) default NULL COMMENT 'Barcod',
  `date_promotsia` date default NULL COMMENT 'posleden den na promotsia',
  `DDS` tinyint(4) NOT NULL default '0',
  `max_proc` decimal(10,0) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='razshireni parametri na produkta';


#
# Table structure for table sl_n_product_pri
#

CREATE TABLE `sl_n_product_pri` (
  `idsl_n_product_pri` int(11) NOT NULL default '0',
  `nomer` varchar(10) default NULL,
  `name_product` varchar(45) default NULL,
  `id_cat` int(11) NOT NULL default '0',
  `name_f` varchar(45) default NULL,
  `name_s` varchar(45) default NULL,
  `nomer_eq` varchar(10) default NULL,
  `code1` varchar(15) default NULL,
  `code2` varchar(15) default NULL,
  `bar_code` varchar(15) default NULL,
  PRIMARY KEY  (`idsl_n_product_pri`,`id_cat`),
  KEY `FK_sl_n_product_pri_1` (`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_product_razf
#

CREATE TABLE `sl_n_product_razf` (
  `Id` int(11) NOT NULL default '0',
  `id_product` int(11) default NULL,
  `osn_razf` int(11) default NULL,
  `razf1` int(11) default NULL,
  `razf1_eq` int(11) default NULL,
  `razf2` int(11) default NULL,
  `razf2_eq` int(11) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `product` (`id_product`),
  KEY `Index_razf` (`razf2`,`razf1`,`osn_razf`),
  KEY `FK_sl_n_product_razf_1` (`osn_razf`,`razf1`,`razf2`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_product_tsen
#

CREATE TABLE `sl_n_product_tsen` (
  `Id` int(11) NOT NULL auto_increment,
  `id_dost` int(11) default NULL COMMENT 'id na dostavchika',
  `tsena_dost` decimal(10,0) NOT NULL default '0',
  `tsena_prod1` decimal(10,0) NOT NULL default '0',
  `tsena_prod2` decimal(10,0) NOT NULL default '0',
  `tsena_prod3` decimal(10,0) NOT NULL default '0',
  `tsena_promo` decimal(10,0) NOT NULL default '0',
  `date_dost` date default NULL COMMENT 'data na dostavka',
  `date_dognost` date default NULL COMMENT 'posleden den na godnost',
  `date_promotsia` date default NULL COMMENT 'posleden den na promotsia',
  `sertifikat` varchar(15) default NULL COMMENT 'sertifikat',
  `partida` varchar(11) default NULL COMMENT 'partiden nomer',
  `DDS` tinyint(4) NOT NULL default '0',
  `max_proc` decimal(10,0) NOT NULL default '0',
  `id_prod_pri` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Id`,`id_prod_pri`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='razshirenio parametri na produkta';


#
# Table structure for table sl_n_razfasofki
#

CREATE TABLE `sl_n_razfasofki` (
  `Id` int(11) NOT NULL default '0',
  `metrika` int(11) default NULL,
  `name` varchar(20) default NULL,
  `name_short` varchar(5) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# Table structure for table sl_n_storage
#

CREATE TABLE `sl_n_storage` (
  `Id` int(11) NOT NULL default '0',
  `name` varchar(20) default NULL COMMENT 'ime na sklada',
  `info` varchar(15) default NULL COMMENT 'komentar',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='skladove';


#
# Table structure for table user_master
#

CREATE TABLE `user_master` (
  `Id` int(11) NOT NULL default '0',
  `name` varchar(14) default NULL,
  `nomer` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;


#
# View structure for view ls_prob_view
#

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ls_prob_view` AS select `l`.`Id` AS `Id`,`l`.`nomer` AS `nomer`,`l`.`first` AS `first`,`l`.`second` AS `second`,`l`.`family` AS `family`,`l`.`egn` AS `egn`,`l`.`gender` AS `gender`,`l`.`nomer_LK` AS `nomer_LK`,`l`.`nomer_dogowor` AS `nomer_dogowor`,`l`.`osnowanie_dog` AS `osnowanie_dog`,`l`.`d_st` AS `d_st`,`l`.`m_st` AS `m_st`,`l`.`g_st` AS `g_st`,`l`.`kateg_rabotnik` AS `kateg_rabotnik`,`l`.`fam_status` AS `fam_status`,`l`.`children` AS `children`,`l`.`trudosposobnost` AS `trudosposobnost`,`l`.`belejki` AS `belejki` from `ls_main` `l`;

#
# Source for procedure ls_procedure_delete_rec_nm
#

CREATE PROCEDURE `ls_procedure_delete_rec_nm`(d INT)
BEGIN
   DELETE FROM n_ns WHERE id = d;
END;

#
# Source for procedure ls_procedure_insert_new_nm
#

CREATE PROCEDURE `ls_procedure_insert_new_nm`(in_pcode VARCHAR(11), in_name VARCHAR(30), in_oblast INT(6))
BEGIN
   INSERT INTO n_nm (postcode, name, id_oblast) VALUES(in_code,in_name,in_oblast);
END;

#
# Source for procedure ls_procedure_select_area_short
#

CREATE PROCEDURE `ls_procedure_select_area_short`()
BEGIN
   SELECT n.name FROM n_oblast n ORDER BY n.id;
END;

#
# Source for procedure ls_procedure_select_country
#

CREATE PROCEDURE `ls_procedure_select_country`()
BEGIN
  SELECT n.id, n.code, n.name FROM n_country n;
END;

#
# Source for procedure ls_procedure_select_nm
#

CREATE PROCEDURE `ls_procedure_select_nm`()
BEGIN
  SELECT n.id, n.postcode, n.name, n.id_oblast, n_oblast.name FROM n_nm n LEFT JOIN n_oblast ON(n_oblast.id = n.id_oblast);

END;

#
# Source for procedure ls_procedure_select_row_nm
#

CREATE PROCEDURE `ls_procedure_select_row_nm`(row_index INT)
BEGIN
      SELECT n.id, n.postcode, n.name, n.id_oblast FROM n_nm n WHERE n.id = row_index;
END;

#
# Source for procedure ls_procedure_update_nm
#

CREATE PROCEDURE `ls_procedure_update_nm`(in_pcode VARCHAR(11), in_name VARCHAR(30), in_oblast INT(6), in_id INT(11))
BEGIN
  UPDATE n_nm SET postcode = in_code, name = in_name, id_oblast = in_oblast WHERE id = in_id;
END;
/*!40101 SET NAMES cp1250 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;