# MySQL-Front 3.2  (Build 6.14)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 'utf8' */;

# Host: localhost    Database: mida
# ------------------------------------------------------
# Server version 4.1.10a-nt-max

DROP DATABASE IF EXISTS `mida`;
CREATE DATABASE `mida` /*!40100 DEFAULT CHARACTER SET cp1251 */;
USE `mida`;
/*!40101 SET NAMES cp1251 */;


#
# Table structure for table bolnichni
#

CREATE TABLE `bolnichni` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_rab` int(10) unsigned NOT NULL default '0',
  `bol_date` date default NULL,
  `bol_day_firm` int(11) default NULL,
  `bol_day_noi` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table category_product
#

CREATE TABLE `category_product` (
  `Category_ID` tinyint(3) unsigned NOT NULL auto_increment,
  `CategoryName` varchar(20) NOT NULL default '',
  `Description` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='InnoDB free: 4096 kB; (`Id_Customer`) REFER `mida/customer_p';

#
# Table structure for table cdate
#

CREATE TABLE `cdate` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `mon` tinyint(2) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table country
#

CREATE TABLE `country` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `Name_country` varchar(45) character set cp1251 NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_bulgarian_ci;

#
# Table structure for table customer
#

CREATE TABLE `customer` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `n_customer` varchar(8) NOT NULL default '',
  `name_customer` varchar(45) NOT NULL default '',
  `mol_customer` varchar(45) default NULL,
  `obekt_customer` varchar(45) default NULL,
  `address_customer` varchar(25) default NULL,
  `grad_dr_customer` varchar(20) default NULL,
  `grad_ob_customer` varchar(20) default NULL,
  `oblast_customer` varchar(20) default NULL,
  `postcode_customer` varchar(8) default NULL,
  `country_customer` varchar(15) default NULL,
  `tel_customer` varchar(12) default NULL,
  `fax_customer` varchar(12) default NULL,
  `bul` varchar(11) default NULL,
  `dan` varchar(11) default NULL,
  `address_ob_customer` varchar(25) default NULL,
  `egnmol_customer` varchar(10) default NULL,
  `oso_customer` varchar(20) default NULL,
  `egnoso_customer` varchar(10) default NULL,
  `fix_rb_customer` tinyint(2) unsigned default '0' COMMENT 'Fix rebate',
  `dist01_customer` tinyint(4) unsigned default NULL COMMENT 'Nomer na distributor 1',
  `dist02_customer` tinyint(4) unsigned default NULL,
  `dist03_customer` tinyint(4) unsigned default NULL,
  `max_credit_limit` double default NULL,
  `email` varchar(20) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table customer_pri
#

CREATE TABLE `customer_pri` (
  `Id_customer` int(10) unsigned NOT NULL auto_increment,
  `N1_Customer` varchar(8) NOT NULL default '',
  `Name` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`Id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table dlaj
#

CREATE TABLE `dlaj` (
  `Id` int(11) NOT NULL auto_increment,
  `nomer` tinyint(4) default NULL,
  `namedlaj` varchar(50) default NULL,
  `nomkod` varchar(8) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table dobavki
#

CREATE TABLE `dobavki` (
  `id` int(3) unsigned NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `dd` tinyint(4) default NULL,
  `nsi` tinyint(3) default NULL,
  `ndo` tinyint(3) default NULL,
  `pkb` tinyint(1) default NULL,
  `co` tinyint(1) default NULL,
  `shifar` int(6) default NULL,
  `dod` tinyint(1) default NULL,
  `vdm` tinyint(1) default NULL,
  `zr` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table dod
#

CREATE TABLE `dod` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `datep` date default NULL,
  `doh` float default NULL,
  `sum` float default NULL,
  `prct` float default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table dop
#

CREATE TABLE `dop` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `gender` varchar(4) NOT NULL default '',
  `sec` char(2) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table kasa001
#

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

#
# Table structure for table kasa001razhod
#

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

#
# Table structure for table kasadet001razhod
#

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

#
# Table structure for table ls_sluj
#

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

#
# Table structure for table ls_users_rights
#

CREATE TABLE `ls_users_rights` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `id_user` int(4) default NULL COMMENT 'id user from user_master',
  `sastav` tinyint(1) default NULL COMMENT 'right to use form sastav',
  `vedom` tinyint(1) default NULL COMMENT 'right to use vedomost',
  `fishove` tinyint(1) default NULL COMMENT 'right to use fishove',
  `newmonth` tinyint(1) default NULL COMMENT 'right to create new month',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table lsresult
#

CREATE TABLE `lsresult` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `pmonth` tinyint(4) default NULL,
  `pyear` int(6) NOT NULL default '0',
  `idrab` tinyint(4) NOT NULL default '0',
  `ID_dlaj` int(5) unsigned NOT NULL default '0',
  `avans` float NOT NULL default '0',
  `zaplata` float(7,2) unsigned NOT NULL default '0.00' COMMENT 'Shatna zaplata',
  `zsuma` float NOT NULL default '0' COMMENT 'Zarabotena suma',
  `psuma` float NOT NULL default '0' COMMENT 'Osiguritelen dohod',
  `dsuma` float NOT NULL default '0' COMMENT 'oblagaem dohod',
  `nsuma` float NOT NULL default '0' COMMENT 'suma za poluchawane',
  `srsuma` float default NULL COMMENT 'zaem i drugi ',
  `sdod` float NOT NULL default '0' COMMENT 'suma dod',
  `viddoo` tinyint(4) NOT NULL default '1' COMMENT 'vid danachno osig',
  `vdzo` tinyint(4) default NULL,
  `doo` float NOT NULL default '0',
  `doou` float NOT NULL default '0',
  `dodpl` tinyint(4) NOT NULL default '0',
  `dodyear` tinyint(4) NOT NULL default '1',
  `npr` float NOT NULL default '0',
  `sumavn` float NOT NULL default '0',
  `dni` tinyint(4) NOT NULL default '0',
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
  `vidupf` tinyint(4) NOT NULL default '0',
  `upf` float NOT NULL default '0',
  `upfr` float NOT NULL default '0.75',
  `nkp` tinyint(4) NOT NULL default '0',
  `nkid` int(6) NOT NULL default '0',
  `nomer` int(6) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table main_ls
#

CREATE TABLE `main_ls` (
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

#
# Table structure for table monthpar
#

CREATE TABLE `monthpar` (
  `id` int(5) unsigned NOT NULL auto_increment,
  `pmonth` tinyint(4) default NULL,
  `pyear` int(6) default NULL,
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

#
# Table structure for table otdeli
#

CREATE TABLE `otdeli` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `nomer` tinyint(5) default NULL,
  `nameotdel` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table otpusk
#

CREATE TABLE `otpusk` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_rab` int(11) NOT NULL default '0',
  `date_otp` date default NULL,
  `day_firm` int(11) default NULL,
  `day_rabotnik` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table person
#

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

#
# Table structure for table prihod001
#

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

#
# Table structure for table product_nom
#

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

#
# Table structure for table product_raf
#

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

#
# Table structure for table sale001
#

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

#
# Table structure for table sale001x
#

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

#
# Table structure for table saledet001
#

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

#
# Table structure for table saledet001x
#

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

#
# Table structure for table salesd001_11_04
#

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

#
# Table structure for table salesdetsd001_11_04
#

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

#
# Table structure for table sec_ls
#

CREATE TABLE `sec_ls` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `year` tinyint(5) default NULL,
  `month` tinyint(3) default NULL,
  `idperson` int(6) default NULL,
  `dlaj` varchar(15) default NULL,
  `avans` float default NULL,
  `suma` float default NULL,
  `zsuma` float default NULL,
  `suma1` float default NULL,
  `suma2` float default NULL,
  `suma3` float default NULL,
  `suma4` float default NULL,
  `dodsuma` float default NULL,
  `vdoo` tinyint(4) default NULL,
  `vzo` tinyint(4) default NULL,
  `prdoo` float default NULL,
  `sdoo` float default NULL,
  `udoo` float default NULL,
  `ydod` float default NULL,
  `npr` float default NULL,
  `osuma` float default NULL,
  `vnsuma` float default NULL,
  `PKB` float(3,2) default NULL,
  `pkbr` float(3,2) default NULL,
  `dni` tinyint(4) default NULL,
  `otdel` tinyint(4) default NULL,
  `COD` tinyint(4) default NULL,
  `full` set('Да',' Не') character set utf8 default NULL,
  `hours` tinyint(4) default NULL,
  `hoursd` tinyint(4) default NULL,
  `odso` float default NULL,
  `ch328` set('??',' ??') character set utf8 default NULL,
  `novdm` set('??',' ??') character set utf8 default NULL,
  `nozon` set('??',' ??') character set utf8 default NULL,
  `vidig` tinyint(4) default NULL,
  `vidppf` tinyint(4) default NULL,
  `ppf` float default NULL,
  `vidupf` tinyint(4) default NULL,
  `upf` float default NULL,
  `uprf` float(8,2) default NULL,
  `NKP` tinyint(4) default NULL,
  `nkid` tinyint(4) default NULL,
  `NR` tinyint(4) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table skl_strukt
#

CREATE TABLE `skl_strukt` (
  `idskl_strukt` tinyint(4) unsigned NOT NULL auto_increment,
  `Name_sklad` varchar(11) NOT NULL default '',
  `TIMEST` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`idskl_strukt`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table skladove
#

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

#
# Table structure for table slujebna
#

CREATE TABLE `slujebna` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table supl
#

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

#
# Table structure for table tablestr
#

CREATE TABLE `tablestr` (
  `idTableStr` int(10) unsigned NOT NULL auto_increment,
  `NameTable` varchar(20) NOT NULL default '',
  `Opisanie` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`idTableStr`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table user_master
#

CREATE TABLE `user_master` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(14) default NULL,
  `nomer` int(4) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Table structure for table valuta
#

CREATE TABLE `valuta` (
  `idvaluta` tinyint(3) unsigned NOT NULL auto_increment,
  `name_valuta` varchar(15) NOT NULL default '',
  `short_valuta` varchar(5) NOT NULL default '',
  `Stoinost_valuta` float unsigned NOT NULL default '0',
  PRIMARY KEY  (`idvaluta`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Table structure for table wid_osiguren
#

CREATE TABLE `wid_osiguren` (
  `Id` int(11) NOT NULL auto_increment,
  `kod` char(2) NOT NULL default '',
  `opisanie` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
#  Foreign keys for table product_nom
#

ALTER TABLE `product_nom`
  ADD FOREIGN KEY (`Category_ID`) REFERENCES `category_product` (`Category_ID`);

#
#  Foreign keys for table product_raf
#

ALTER TABLE `product_raf`
  ADD FOREIGN KEY (`id_product`) REFERENCES `product_nom` (`Id_Product`);

#
#  Foreign keys for table sale001
#

ALTER TABLE `sale001`
  ADD FOREIGN KEY (`Id_customer`) REFERENCES `customer_pri` (`Id_customer`),
  ADD FOREIGN KEY (`Idperson`) REFERENCES `person` (`idperson`);

#
#  Foreign keys for table saledet001
#

ALTER TABLE `saledet001`
  ADD FOREIGN KEY (`Id_Product`) REFERENCES `product_nom` (`Id_Product`),
  ADD FOREIGN KEY (`Id_Product`) REFERENCES `product_nom` (`Id_Product`),
  ADD FOREIGN KEY (`Idskl_strukt`) REFERENCES `skl_strukt` (`idskl_strukt`);

#
#  Foreign keys for table salesdetsd001_11_04
#

ALTER TABLE `salesdetsd001_11_04`
  ADD FOREIGN KEY (`idSalesd001_11_04`) REFERENCES `salesd001_11_04` (`idSALESD001_11_04`);

/*!40101 SET NAMES utf8 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
