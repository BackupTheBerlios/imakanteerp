# MySQL-Front 3.2  (Build 6.14)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'utf8' */;

# Host: localhost    Database: mida
# ------------------------------------------------------
# Server version 4.1.10a-nt-max
/*!40101 SET NAMES cp1251 */;


#
# Table structure for table customer_pri
#

DROP TABLE IF EXISTS `customer_pri`;
CREATE TABLE `customer_pri` (
  `Id_customer` int(11) NOT NULL default '0',
  `N1_Customer` varchar(8) default NULL,
  `Name` varchar(30) default NULL,
  PRIMARY KEY  (`Id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table dop
#

DROP TABLE IF EXISTS `dop`;
CREATE TABLE `dop` (
  `Id` int(11) NOT NULL default '0',
  `gender` varchar(4) default NULL,
  `sec` char(1) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table kasa001
#

DROP TABLE IF EXISTS `kasa001`;
CREATE TABLE `kasa001` (
  `kasaID` int(11) NOT NULL default '0',
  `Id_customer` int(11) default NULL,
  `Idperson` int(11) default NULL,
  `Date` datetime default NULL,
  `Total` double default NULL,
  `Totalwovat` double default NULL,
  `VAT` double default NULL,
  `ShipVIA` int(11) default NULL,
  `plat` double default NULL,
  `Tip_plat` smallint(6) NOT NULL default '0',
  `Id_kasa_order` int(11) default NULL,
  `Plateno` char(1) default NULL,
  PRIMARY KEY  (`kasaID`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table kasa001razhod
#

DROP TABLE IF EXISTS `kasa001razhod`;
CREATE TABLE `kasa001razhod` (
  `kasaIDraz` int(11) NOT NULL auto_increment,
  `Id_customer` int(11) default NULL,
  `Idperson` int(11) default NULL,
  `Date` datetime default NULL,
  `Total` double default NULL,
  `Totalwovat` double default NULL,
  `VAT` double default NULL,
  `ShipVIA` int(11) default NULL,
  `plat` double default NULL,
  `Tip_plat` smallint(6) NOT NULL default '0',
  `Id_kasa_order` int(11) default NULL,
  PRIMARY KEY  (`kasaIDraz`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table kasadet001razhod
#

DROP TABLE IF EXISTS `kasadet001razhod`;
CREATE TABLE `kasadet001razhod` (
  `Id_Saledet` int(11) NOT NULL auto_increment,
  `SaleID` int(11) default NULL,
  `Id_Product` int(11) default NULL,
  `UnitPrice` double default NULL,
  `Quantity` float default NULL,
  `Discount` smallint(6) NOT NULL default '0',
  `Totalcol` double default NULL,
  `Vatcol` double default NULL,
  `Idskl_strukt` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`Id_Saledet`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table ls_addresses
#

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

#
# Table structure for table ls_boln_impl
#

DROP TABLE IF EXISTS `ls_boln_impl`;
CREATE TABLE `ls_boln_impl` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0',
  `id_boln` smallint(6) default NULL COMMENT 'От шаблона',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmoth+pyear',
  `id_per_otn` int(11) default NULL COMMENT 'При сторниране',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT 'Начална дата',
  `n_o_days` tinyint(3) NOT NULL default '0' COMMENT 'Брой дни болнични',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table ls_bolnichni
#

DROP TABLE IF EXISTS `ls_bolnichni`;
CREATE TABLE `ls_bolnichni` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '0' COMMENT 'Име на вида болничен',
  `cod` varchar(6) NOT NULL default '' COMMENT 'Вътрешен код за вида болничен',
  `procent` decimal(3,2) unsigned NOT NULL default '0.00' COMMENT 'Процент на болничния',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table ls_dates
#

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
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table ls_dlajnosti
#

DROP TABLE IF EXISTS `ls_dlajnosti`;
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

DROP TABLE IF EXISTS `ls_dobavki`;
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

DROP TABLE IF EXISTS `ls_dod`;
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

#
# Table structure for table ls_monthpar
#

DROP TABLE IF EXISTS `ls_monthpar`;
CREATE TABLE `ls_monthpar` (
  `id` int(11) NOT NULL auto_increment,
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
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT 'Работен период',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table ls_otdeli
#

DROP TABLE IF EXISTS `ls_otdeli`;
CREATE TABLE `ls_otdeli` (
  `Id` int(11) NOT NULL default '0',
  `nomer` tinyint(4) default NULL,
  `nameotdel` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table ls_otp_impl
#

DROP TABLE IF EXISTS `ls_otp_impl`;
CREATE TABLE `ls_otp_impl` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0' COMMENT 'Актуален работник',
  `id_otp` smallint(6) NOT NULL default '0' COMMENT 'От шаблона',
  `id_period` int(11) NOT NULL default '0' COMMENT 'pmonth+pyear',
  `id_per_otn` smallint(6) default NULL COMMENT 'Период за строниране',
  `beg_date` date NOT NULL default '0000-00-00' COMMENT 'Начална дата',
  `n_o_days` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Брой дни отпуск в месеца',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='Изчислени болнични за конкретен ';

#
# Table structure for table ls_otpusk
#

DROP TABLE IF EXISTS `ls_otpusk`;
CREATE TABLE `ls_otpusk` (
  `id` smallint(4) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '' COMMENT 'Име на отпуск',
  `cod` varchar(6) NOT NULL default '' COMMENT 'Код на вида отпуск',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table ls_pic
#

DROP TABLE IF EXISTS `ls_pic`;
CREATE TABLE `ls_pic` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rabotnik` int(11) default NULL,
  `pic` blob,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table ls_result
#

DROP TABLE IF EXISTS `ls_result`;
CREATE TABLE `ls_result` (
  `id` int(11) NOT NULL auto_increment,
  `state` tinyint(2) unsigned NOT NULL default '1' COMMENT 'Всички записи генерирани в (0=извън) приложението',
  `id_period` smallint(5) unsigned NOT NULL default '0' COMMENT 'Работен период',
  `idrab` int(11) default NULL,
  `id_dlaj` int(11) default NULL,
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

DROP TABLE IF EXISTS `ls_sluj`;
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

DROP TABLE IF EXISTS `ls_users_rights`;
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

DROP TABLE IF EXISTS `ls_vid_osiguren`;
CREATE TABLE `ls_vid_osiguren` (
  `Id` int(11) NOT NULL auto_increment,
  `kod` char(1) default NULL,
  `opisanie` varchar(64) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table n_country
#

DROP TABLE IF EXISTS `n_country`;
CREATE TABLE `n_country` (
  `Id` int(11) NOT NULL default '0',
  `code` char(1) NOT NULL default '',
  `name` varchar(20) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table n_nm
#

DROP TABLE IF EXISTS `n_nm`;
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

DROP TABLE IF EXISTS `n_oblast`;
CREATE TABLE `n_oblast` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(20) default NULL,
  `id_country` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table natc_clasifikator_deinosti
#

DROP TABLE IF EXISTS `natc_clasifikator_deinosti`;
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

DROP TABLE IF EXISTS `natc_clasifikator_prof`;
CREATE TABLE `natc_clasifikator_prof` (
  `Id` int(11) NOT NULL auto_increment,
  `name_prof` varchar(50) default NULL,
  `cod` int(11) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table person
#

DROP TABLE IF EXISTS `person`;
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

DROP TABLE IF EXISTS `sl_d_delivery`;
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

DROP TABLE IF EXISTS `sl_d_documents`;
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

DROP TABLE IF EXISTS `sl_d_sale`;
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

DROP TABLE IF EXISTS `sl_n_baccount`;
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

DROP TABLE IF EXISTS `sl_n_cat_product`;
CREATE TABLE `sl_n_cat_product` (
  `idsl_n_cat_product` int(11) NOT NULL default '0',
  `name` varchar(45) default NULL,
  `name_s` varchar(5) default NULL,
  PRIMARY KEY  (`idsl_n_cat_product`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table sl_n_cust_info
#

DROP TABLE IF EXISTS `sl_n_cust_info`;
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

DROP TABLE IF EXISTS `sl_n_customer`;
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

DROP TABLE IF EXISTS `sl_n_distributors`;
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

DROP TABLE IF EXISTS `sl_n_docs`;
CREATE TABLE `sl_n_docs` (
  `Id` int(11) NOT NULL default '0',
  `name` varchar(20) default NULL COMMENT 'ime na documentaa',
  `info` varchar(15) default NULL COMMENT 'komentar',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='tipove documenti';

#
# Table structure for table sl_n_obekt
#

DROP TABLE IF EXISTS `sl_n_obekt`;
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

DROP TABLE IF EXISTS `sl_n_person`;
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

DROP TABLE IF EXISTS `sl_n_product`;
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

DROP TABLE IF EXISTS `sl_n_product_pri`;
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

DROP TABLE IF EXISTS `sl_n_product_razf`;
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

DROP TABLE IF EXISTS `sl_n_product_tsen`;
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

DROP TABLE IF EXISTS `sl_n_razfasofki`;
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

DROP TABLE IF EXISTS `sl_n_storage`;
CREATE TABLE `sl_n_storage` (
  `Id` int(11) NOT NULL default '0',
  `name` varchar(20) default NULL COMMENT 'ime na sklada',
  `info` varchar(15) default NULL COMMENT 'komentar',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='skladove';

#
# Table structure for table user_master
#

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE `user_master` (
  `Id` int(11) NOT NULL default '0',
  `name` varchar(14) default NULL,
  `nomer` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*!40101 SET NAMES utf8 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
