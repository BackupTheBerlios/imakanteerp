# MySQL-Front 3.2  (Build 6.14)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'utf8' */;

DROP DATABASE IF EXISTS `mida`;
CREATE DATABASE `mida` /*!40100 DEFAULT CHARACTER SET cp1251 */;
USE `mida`;
/*!40101 SET NAMES cp1251 */;

CREATE TABLE `category_product` (
  `Category_ID` tinyint(3) unsigned NOT NULL auto_increment,
  `CategoryName` varchar(20) NOT NULL default '',
  `Description` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='InnoDB free: 4096 kB; (`Id_Customer`) REFER `mida/customer_p';
CREATE TABLE `cdate` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `mon` tinyint(2) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `customer_pri` (
  `Id_customer` int(10) unsigned NOT NULL auto_increment,
  `N1_Customer` varchar(8) NOT NULL default '',
  `Name` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`Id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `dop` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `gender` varchar(4) NOT NULL default '',
  `sec` char(2) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `kasa001` (
  `kasaID` int(10) unsigned NOT NULL default '0',
  `Id_customer` int(11) default NULL,
  `Idperson` int(11) default NULL,
  `Date` datetime default NULL,
  `Total` double default NULL,
  `Totalwovat` double default NULL,
  `VAT` double default NULL,
  `ShipVIA` int(11) default NULL,
  `plat` double default NULL,
  `Tip_plat` smallint(6) default NULL,
  `Id_kasa_order` int(11) default NULL,
  `Plateno` enum('y','n') character set utf8 NOT NULL default 'y',
  PRIMARY KEY  (`kasaID`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
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
  `Tip_plat` smallint(6) default NULL,
  `Id_kasa_order` int(11) default NULL,
  PRIMARY KEY  (`kasaIDraz`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `kasadet001razhod` (
  `Id_Saledet` int(11) NOT NULL auto_increment,
  `SaleID` int(11) default NULL,
  `Id_Product` int(11) default NULL,
  `UnitPrice` double default NULL,
  `Quantity` float default NULL,
  `Discount` smallint(6) default NULL,
  `Totalcol` double default NULL,
  `Vatcol` double default NULL,
  `Idskl_strukt` smallint(6) default NULL,
  PRIMARY KEY  (`Id_Saledet`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_bolnichni` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_rab` int(10) unsigned NOT NULL default '0',
  `bol_date` date default NULL,
  `bol_day_firm` int(11) default NULL,
  `bol_day_noi` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_dlajnosti` (
  `id` int(11) NOT NULL auto_increment,
  `nomer` tinyint(4) default NULL,
  `namedlaj` varchar(50) default NULL,
  `id_ncl` int(6) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_dobavki` (
  `id` int(3) unsigned NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `co` tinyint(1) default NULL,
  `shifar` int(6) default NULL,
  `dod` tinyint(1) default NULL COMMENT 'daljim li e dan 0- ne 1 da',
  `zro` tinyint(1) default NULL COMMENT 'dalji li se vu sumata zo 0-ne 1 da',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_dod` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `datep` date default NULL,
  `doh` float default NULL,
  `sum` float default NULL,
  `prct` float default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_main` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `nomer` int(6) unsigned default NULL,
  `first` varchar(20) NOT NULL default '',
  `second` varchar(20) NOT NULL default '',
  `family` varchar(30) NOT NULL default '',
  `egn` varchar(10) NOT NULL default '',
  `b_date` date default '0000-00-00',
  `gender` varchar(4) NOT NULL default '',
  `nomer_LK` varchar(9) default NULL,
  `data_izd_LK` date default NULL,
  `oblast` varchar(15) default NULL,
  `postcode` varchar(4) default NULL,
  `grad` varchar(25) default NULL,
  `address` varchar(64) default NULL,
  `telefon` varchar(10) default NULL,
  `mobilen` varchar(15) default NULL,
  `email` varchar(25) default NULL,
  `nomer_dogowor` varchar(10) default NULL,
  `data_naznach` date NOT NULL default '0000-00-00',
  `data_postypwane` date NOT NULL default '0000-00-00',
  `data_napuskane` date default '0000-00-00',
  `posl_den_w_osig` date default '0000-00-00',
  `osnowanie_dog` varchar(4) default NULL,
  `srok_dog` varchar(15) default NULL,
  `d_st` tinyint(2) unsigned default '0',
  `m_st` tinyint(2) unsigned default '0',
  `g_st` tinyint(2) unsigned default '0',
  `kateg_rabotnik` varchar(4) default NULL,
  `fam_status` varchar(7) default NULL,
  `children` tinyint(2) unsigned default '0',
  `belejki` varchar(250) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_monthpar` (
  `id` int(5) unsigned NOT NULL auto_increment,
  `pmonth` tinyint(4) default NULL,
  `pyear` int(6) default NULL,
  `seq` varchar(40) default NULL,
  `dni5` tinyint(4) default NULL,
  `dni6` tinyint(4) default NULL,
  `minrzd` float default NULL,
  `minod` float default NULL,
  `maxod` float default NULL,
  `maxbdf` float default NULL,
  `avdod` float default NULL,
  `dodbln` float default NULL,
  `dodso` float default NULL,
  `pzdo` float default NULL,
  `psozo` float default NULL,
  `ppdo` float default NULL,
  `ptzpb` float default NULL,
  `pgzrs` float default NULL,
  `mrz` float default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_otdeli` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `nomer` tinyint(5) default NULL,
  `nameotdel` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_otpusk` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0',
  `date_otp` date default NULL,
  `day_firm` int(11) default NULL,
  `day_rabotnik` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_pic` (
  `Id` int(11) NOT NULL auto_increment,
  `id_rabotnik` int(11) default NULL,
  `pic` longblob COMMENT 'snimka na rabotnika',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_result` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `pmonth` tinyint(4) default NULL,
  `pyear` int(6) default NULL,
  `idrab` tinyint(4) NOT NULL default '0',
  `ID_dlaj` int(5) unsigned NOT NULL default '0',
  `avans` float NOT NULL default '0',
  `zaplata` float(6,2) unsigned NOT NULL default '0.00' COMMENT 'Shatna zaplata',
  `zsuma` float(6,2) NOT NULL default '0.00' COMMENT 'Zarabotena suma',
  `psuma` float(6,2) NOT NULL default '0.00' COMMENT 'Osiguritelen dohod',
  `dsuma` float(6,2) NOT NULL default '0.00' COMMENT 'oblagaem dohod',
  `nsuma` float(6,2) NOT NULL default '0.00' COMMENT 'suma za poluchawane',
  `srsuma` float(6,2) default NULL COMMENT 'zaem',
  `sdod` float(6,2) NOT NULL default '0.00' COMMENT 'suma dod',
  `sumaudr` float(6,2) NOT NULL default '0.00' COMMENT 'vsichki udrajki',
  `viddoo` tinyint(4) NOT NULL default '1' COMMENT 'vid danachno osig',
  `vdzo` tinyint(4) default NULL,
  `doo` float NOT NULL default '0' COMMENT 'doo ot rabotnika suma',
  `doou` float NOT NULL default '0' COMMENT 'doo ot firmata suma',
  `dodpl` tinyint(4) NOT NULL default '0',
  `dodyear` tinyint(4) NOT NULL default '1',
  `npr` float NOT NULL default '0',
  `dni` tinyint(3) NOT NULL default '0' COMMENT 'otraboteni dni',
  `otdel` tinyint(4) NOT NULL default '0',
  `cod` tinyint(4) NOT NULL default '0',
  `fullrab` tinyint(4) NOT NULL default '0',
  `hours` tinyint(4) NOT NULL default '0',
  `hoursdlg` tinyint(4) NOT NULL default '0',
  `odso` float NOT NULL default '0',
  `odzo` float default '0',
  `noonly` tinyint(4) NOT NULL default '1',
  `novdm` tinyint(4) NOT NULL default '1',
  `nozono` tinyint(4) NOT NULL default '1',
  `viddog` tinyint(4) NOT NULL default '0',
  `vidppf` float NOT NULL default '0',
  `vidupf` float(3,2) NOT NULL default '0.00' COMMENT 'procent',
  `upf` float NOT NULL default '0' COMMENT 'upf ot firmata',
  `upfr` float NOT NULL default '0' COMMENT 'upf ot rabotnika',
  `nkp` tinyint(4) NOT NULL default '0',
  `nkid` int(6) NOT NULL default '0',
  `nomer` int(6) NOT NULL default '0',
  `marker` tinyint(2) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_sluj` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `name_firm` varchar(60) default NULL,
  `dan_nom` varchar(11) default NULL,
  `bul` varchar(11) default NULL,
  `address` varchar(100) default NULL,
  `nam_boss` varchar(60) default NULL,
  `nam_acc` varchar(70) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_users_rights` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `id_user` int(4) default NULL COMMENT 'id user from user_master',
  `sastav` tinyint(1) default NULL COMMENT 'right to use form sastav',
  `vedom` tinyint(1) default NULL COMMENT 'right to use vedomost',
  `fishove` tinyint(1) default NULL COMMENT 'right to use fishove',
  `newmonth` tinyint(1) default NULL COMMENT 'right to create new month',
  `vedoma` tinyint(1) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `ls_vid_osiguren` (
  `Id` int(11) NOT NULL auto_increment,
  `kod` char(2) NOT NULL default '',
  `opisanie` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `natc_clasifikator_prof` (
  `Id` int(11) NOT NULL auto_increment,
  `name_prof` varchar(50) default NULL,
  `cod` int(5) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `person` (
  `idperson` int(10) unsigned NOT NULL auto_increment,
  `n_person` varchar(30) default NULL COMMENT 'sobstveno',
  `sn_person` varchar(15) default NULL COMMENT 'bashino',
  `tn_peerson` varchar(15) default NULL COMMENT 'familno',
  `f_au` tinyint(4) unsigned default NULL COMMENT 'parvi virtualen',
  `s_au` tinyint(4) unsigned default NULL COMMENT 'parvi realen',
  `fk_au` tinyint(4) unsigned default NULL COMMENT 'fakturen',
  PRIMARY KEY  (`idperson`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `prihod001` (
  `PrihodID` int(11) NOT NULL auto_increment,
  `Id_customer` int(11) default NULL,
  `Idperson` int(11) default NULL,
  `Date` datetime default NULL,
  `Total` double default NULL,
  `Totalwovat` double default NULL,
  `VAT` double default NULL,
  `ShipVIA` int(11) default NULL,
  `plat` double default NULL,
  `Tip_plat` smallint(6) default NULL,
  `Id_kasa_order` int(11) default NULL,
  `valuta` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`PrihodID`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `product_nom` (
  `Id_Product` int(10) unsigned NOT NULL auto_increment,
  `N_Product` varchar(8) NOT NULL default '',
  `name` varchar(25) NOT NULL default '',
  `Id_customer` int(10) unsigned default '0',
  `Category_ID` tinyint(3) unsigned default '0',
  `Dostavna` double default '0' COMMENT 'delene na 10000',
  `Prodajna1` double default '0',
  `Prodajna2` double default '0',
  `Prodajna3` double default '0',
  `Promtsionalna` double default '0',
  `DDS` tinyint(3) unsigned default '20',
  `AKTS` tinyint(3) unsigned default '0',
  PRIMARY KEY  (`Id_Product`),
  KEY `FK_product_nom_1` (`Id_customer`),
  KEY `FK_product_nom_2` (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='InnoDB free: 4096 kB; (`Category_ID`) REFER `mida/category_p';
CREATE TABLE `product_raf` (
  `id_product` int(10) unsigned NOT NULL auto_increment,
  `name1` char(20) default NULL COMMENT 'Ime za faktura',
  `razf1` tinyint(4) unsigned NOT NULL default '0',
  `razf2` tinyint(4) unsigned NOT NULL default '0',
  `namer1` char(10) NOT NULL default '',
  `namer2` char(10) NOT NULL default '',
  `otchetno` char(15) NOT NULL default '' COMMENT 'br',
  `pda_name` char(15) NOT NULL default '',
  `compil_numb` int(10) unsigned default '0',
  `DateDOST` datetime NOT NULL default '0000-00-00 00:00:00',
  `DateVAl` date NOT NULL default '0000-00-00',
  `SERT` char(25) NOT NULL default '',
  `Kred_Limit` int(10) unsigned NOT NULL default '0',
  `BARCOD` int(11) default NULL,
  PRIMARY KEY  (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 ROW_FORMAT=FIXED;
CREATE TABLE `sale001` (
  `SaleID` int(10) unsigned NOT NULL auto_increment,
  `Id_customer` int(10) unsigned NOT NULL default '0',
  `Idperson` int(10) unsigned NOT NULL default '0',
  `Date` datetime NOT NULL default '0000-00-00 00:00:00',
  `Total` double NOT NULL default '0',
  `Totalwovat` double NOT NULL default '0',
  `VAT` double NOT NULL default '0',
  `ShipVIA` int(10) unsigned NOT NULL default '0',
  `plat` double NOT NULL default '0',
  `Tip_plat` tinyint(3) unsigned NOT NULL default '0',
  `Id_kasa_order` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`SaleID`),
  KEY `sale001_ibfk_2` (`Id_customer`),
  KEY `sale001_ibfk_3` (`Idperson`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='InnoDB free: 4096 kB';
CREATE TABLE `sale001x` (
  `SaleIDx` int(10) unsigned NOT NULL auto_increment,
  `Id_customer` int(11) default NULL,
  `Idperson` int(11) default NULL,
  `Date` datetime default NULL,
  `Total` double default NULL,
  `Totalwovat` double default NULL,
  `VAT` double default NULL,
  `ShipVIA` int(11) default NULL,
  `plat` double default NULL,
  `Tip_plat` smallint(6) default NULL,
  `Id_kasa_order` int(11) default NULL,
  PRIMARY KEY  (`SaleIDx`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `saledet001` (
  `Id_Saledet` int(10) unsigned NOT NULL auto_increment,
  `SaleID` int(10) unsigned NOT NULL default '0',
  `Id_Product` int(10) unsigned NOT NULL default '0',
  `UnitPrice` double NOT NULL default '0',
  `Quantity` float NOT NULL default '0',
  `Discount` tinyint(3) unsigned NOT NULL default '0',
  `Totalcol` double NOT NULL default '0',
  `Vatcol` double NOT NULL default '0',
  `Idskl_strukt` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`Id_Saledet`),
  KEY `FK_saledet001_1` (`SaleID`),
  KEY `FK_saledet001_2` (`Id_Product`),
  KEY `FK_saledet001_3` (`Idskl_strukt`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='InnoDB free: 3072 kB; (`SaleID`) REFER `mida/sale001`(`SaleI';
CREATE TABLE `saledet001x` (
  `Id_Saledet` int(11) NOT NULL auto_increment,
  `SaleIDx` int(11) default NULL,
  `Id_Product` int(11) default NULL,
  `UnitPrice` double default NULL,
  `Quantity` float default NULL,
  `Discount` smallint(6) default NULL,
  `Totalcol` double default NULL,
  `Vatcol` double default NULL,
  `Idskl_strukt` smallint(6) default NULL,
  `Id_prototipe` int(10) unsigned default NULL COMMENT 'nomer na beljka ako ima takava',
  `tip_document` tinyint(3) unsigned default NULL COMMENT 'tip na dokumenta',
  PRIMARY KEY  (`Id_Saledet`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `salesd001_11_04` (
  `idSALESD001_11_04` int(10) unsigned NOT NULL auto_increment,
  `SaleID` int(10) unsigned NOT NULL default '0',
  `Id_Customer` int(10) unsigned NOT NULL default '0',
  `Idperson` int(10) unsigned NOT NULL default '0',
  `Total` double NOT NULL default '0',
  `VAT` double NOT NULL default '0',
  `ShiVIA` int(10) unsigned NOT NULL default '0',
  `PlAT` double NOT NULL default '0',
  `Tip_Plat` tinyint(3) unsigned NOT NULL default '0',
  `Td_kase_otd` int(10) unsigned NOT NULL default '0',
  `Namepersson` varchar(45) NOT NULL default '',
  `Namefirm` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`idSALESD001_11_04`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `salesdetsd001_11_04` (
  `idSalesdetsd001_11_04` int(10) unsigned NOT NULL auto_increment,
  `idSalesd001_11_04` int(10) unsigned NOT NULL default '0',
  `SaleID` int(10) unsigned NOT NULL default '0',
  `ID_product` int(10) unsigned NOT NULL default '0',
  `Name_product` int(10) unsigned NOT NULL default '0',
  `Unitprice` double NOT NULL default '0',
  `Quantity` float NOT NULL default '0',
  `Discount` tinyint(3) unsigned NOT NULL default '0',
  `Vatcol` double NOT NULL default '0',
  `Idskl_strukt` int(10) unsigned NOT NULL default '0',
  `Namesklad` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`idSalesdetsd001_11_04`),
  KEY `FK_Salesdetsd001_11_04_1` (`idSalesd001_11_04`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `skl_strukt` (
  `idskl_strukt` tinyint(4) unsigned NOT NULL auto_increment,
  `Name_sklad` varchar(11) NOT NULL default '',
  `TIMEST` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`idskl_strukt`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `skladove` (
  `idskladove` int(10) unsigned NOT NULL auto_increment,
  `n_produkt` varchar(8) NOT NULL default '',
  `skl001v` int(10) unsigned NOT NULL default '0' COMMENT 'realno kolichestvo v nai- malka ed. za sklad 001',
  `skl001f` int(10) unsigned NOT NULL default '0' COMMENT 'fakturno za sklad 001',
  `skl002v` int(10) unsigned NOT NULL default '0',
  `skl002f` int(10) unsigned NOT NULL default '0',
  `skl003v` int(10) unsigned NOT NULL default '0',
  `skl003f` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`idskladove`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_baccount` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `Id_cust` int(6) unsigned NOT NULL default '0',
  `bank_code` varchar(10) default NULL,
  `bank_name` varchar(45) default NULL,
  `account` varchar(10) default NULL COMMENT 'Bankova smetka',
  `DDS_account` varchar(10) default NULL COMMENT 'Smetka po DDS',
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_cat_product` (
  `idsl_n_cat_product` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL default '',
  `name_s` varchar(5) default NULL,
  PRIMARY KEY  (`idsl_n_cat_product`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_country` (
  `Id` tinyint(3) unsigned NOT NULL auto_increment,
  `code` char(3) default NULL,
  `name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_cust_info` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `Id_cust` int(6) unsigned NOT NULL default '0',
  `fix_rebate` tinyint(2) unsigned default '0' COMMENT 'Fix rebate',
  `credit_limit` double default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_customer` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `code` varchar(10) NOT NULL default '' COMMENT 'User filed customer code',
  `name` varchar(45) NOT NULL default '',
  `bul` varchar(13) default NULL COMMENT 'Bulstat',
  `dann` varchar(10) default NULL COMMENT 'NDR',
  `address` varchar(25) default NULL,
  `Id_nm` int(6) unsigned default NULL COMMENT 'Cod na naseleno miasto',
  `tel` varchar(12) default NULL,
  `fax` varchar(12) default NULL,
  `email` varchar(20) default NULL,
  `web` varchar(20) default NULL,
  `Id_mol` int(10) default NULL,
  `Id_oso` int(10) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_distributors` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `Id_cust` int(6) unsigned NOT NULL default '0',
  `code` varchar(4) NOT NULL default '' COMMENT 'User filed code',
  `name` varchar(20) default NULL,
  `comment` varchar(45) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_nm` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `postcode` varchar(8) default NULL,
  `Id_oblast` tinyint(2) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Oblast` (`Id_oblast`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_obekt` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `Id_cust` int(6) unsigned NOT NULL default '0',
  `name` varchar(45) default NULL,
  `address` varchar(25) default NULL,
  `Id_nm` int(6) unsigned default NULL COMMENT 'Cod na naseleno miasto',
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_oblast` (
  `Id` tinyint(2) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `Id_country` tinyint(3) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Country` (`Id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_person` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `egn` varchar(10) default NULL,
  `nlk` varchar(9) default NULL COMMENT 'Nomer na licna karta',
  `name` varchar(20) NOT NULL default '',
  `comment` varchar(20) NOT NULL default '' COMMENT 'Extra info',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_product_pri` (
  `idsl_n_product_pri` int(10) unsigned NOT NULL auto_increment,
  `nomer` varchar(10) default NULL,
  `name_product` varchar(45) NOT NULL default '',
  `id_cat` int(10) unsigned NOT NULL default '0',
  `name_f` varchar(45) default NULL,
  `name_s` varchar(45) default NULL,
  `nomer_eq` varchar(10) default NULL,
  `code1` varchar(15) default NULL,
  `code2` varchar(15) default NULL,
  `bar_code` varchar(15) default NULL,
  PRIMARY KEY  (`idsl_n_product_pri`,`id_cat`),
  KEY `FK_sl_n_product_pri_1` (`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_product_razf` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `id_product` int(10) unsigned NOT NULL default '0',
  `osn_razf` int(10) unsigned NOT NULL default '0',
  `razf1` int(10) unsigned NOT NULL default '0',
  `razf1_eq` double(6,4) unsigned NOT NULL default '0.0000',
  `razf2` int(10) unsigned NOT NULL default '0',
  `razf2_eq` double(6,4) unsigned NOT NULL default '0.0000',
  PRIMARY KEY  (`Id`),
  KEY `product` (`id_product`),
  KEY `Index_razf` (`razf2`,`razf1`,`osn_razf`),
  KEY `FK_sl_n_product_razf_1` (`osn_razf`,`razf1`,`razf2`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `sl_n_product_tsen` (
  `Id` int(11) NOT NULL auto_increment,
  `id_dost` int(11) default NULL COMMENT 'id na dostavchika',
  `tsena_dost` decimal(10,4) default NULL COMMENT 'Dostavna tsena bez dds za razf',
  `tsena_prod1` decimal(10,4) default NULL COMMENT 'prodajna tsena 1 za razf',
  `tsena_prod2` decimal(10,4) default NULL COMMENT 'prodajna tsena 2 za razf',
  `tsena_prod3` decimal(10,4) default NULL COMMENT 'prodajna tsena 3 za razf',
  `tsena_promo` decimal(10,4) default NULL COMMENT 'promocionalna tsena',
  `date_dost` date default NULL COMMENT 'data na dostavka',
  `date_dognost` date default NULL COMMENT 'posleden den na godnost',
  `date_promotsia` date default NULL COMMENT 'posleden den na promotsia',
  `sertifikat` varchar(15) default NULL COMMENT 'sertifikat',
  `partida` varchar(11) default NULL COMMENT 'partiden nomer',
  `DDS` tinyint(1) default NULL COMMENT 'dds da ili ne(0/1)',
  `max_proc` decimal(3,2) default NULL COMMENT 'maksimalen procent na otstapka ot tsena_prod1',
  `id_prod_pri` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`Id`,`id_prod_pri`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='razshirenio parametri na produkta';
CREATE TABLE `sl_n_razfasofki` (
  `Id` int(4) NOT NULL auto_increment,
  `metrika` int(1) NOT NULL default '0' COMMENT 'dali i pozvoleno drobno ch.',
  `name` varchar(20) default NULL,
  `name_short` varchar(5) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `slujebna` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `supl` (
  `idsupl` tinyint(3) unsigned NOT NULL auto_increment,
  `n_supl` varchar(4) NOT NULL default '',
  `name_supl` varchar(45) NOT NULL default '',
  `address` varchar(45) default NULL,
  `tel` varchar(15) default NULL,
  `fax` varchar(15) default NULL,
  `email` varchar(35) default NULL,
  `grad` varchar(25) default NULL,
  `country` varchar(25) default NULL,
  PRIMARY KEY  (`idsupl`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `tablestr` (
  `idTableStr` int(10) unsigned NOT NULL auto_increment,
  `NameTable` varchar(20) NOT NULL default '',
  `Opisanie` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`idTableStr`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
CREATE TABLE `user_master` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(14) default NULL,
  `nomer` int(4) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
CREATE TABLE `valuta` (
  `idvaluta` tinyint(3) unsigned NOT NULL auto_increment,
  `name_valuta` varchar(15) NOT NULL default '',
  `short_valuta` varchar(5) NOT NULL default '',
  `Stoinost_valuta` float unsigned NOT NULL default '0',
  PRIMARY KEY  (`idvaluta`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

ALTER TABLE `product_nom`
  ADD FOREIGN KEY (`Category_ID`) REFERENCES `category_product` (`Category_ID`);

ALTER TABLE `product_raf`
  ADD FOREIGN KEY (`id_product`) REFERENCES `product_nom` (`Id_Product`);

ALTER TABLE `sale001`
  ADD FOREIGN KEY (`Id_customer`) REFERENCES `customer_pri` (`Id_customer`),
  ADD FOREIGN KEY (`Idperson`) REFERENCES `person` (`idperson`);

ALTER TABLE `saledet001`
  ADD FOREIGN KEY (`Id_Product`) REFERENCES `product_nom` (`Id_Product`),
  ADD FOREIGN KEY (`Id_Product`) REFERENCES `product_nom` (`Id_Product`),
  ADD FOREIGN KEY (`Idskl_strukt`) REFERENCES `skl_strukt` (`idskl_strukt`);

ALTER TABLE `salesdetsd001_11_04`
  ADD FOREIGN KEY (`idSalesd001_11_04`) REFERENCES `salesd001_11_04` (`idSALESD001_11_04`);

/*!40101 SET NAMES utf8 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
