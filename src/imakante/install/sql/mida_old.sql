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

INSERT INTO `category_product` VALUES (1,'ц?ц?ц?ц?','');
INSERT INTO `category_product` VALUES (2,'ц?. ц?ц?ц','ц?ц?ц?ц?ц?ц?ц?ц?ц?');
INSERT INTO `category_product` VALUES (3,'ц?. ц?ц?ц','ц?ц?ц?ц?ц???ц?ц?ц???ц???');
INSERT INTO `category_product` VALUES (4,'ц?ц?ц???ц?','ц?ц?ц?ц???ц?ц? ц?ц?ц');
INSERT INTO `category_product` VALUES (5,'ц?. ц?ц?ц','ц?ц?ц?ц?ц?ц?ц?ц?ц?');
INSERT INTO `category_product` VALUES (6,'ц?ц?ц?ц???','ц?ц?ц?ц??? ц? ц???ц?ц?ц');
INSERT INTO `category_product` VALUES (7,'ц???. ц?ц?ц','ц???ц?ц?ц?ц?ц?ц?ц???ц?');
INSERT INTO `category_product` VALUES (8,'ц?. ц???ц?ц','ц?ц?ц?ц?ц?ц?ц?ц?ц?');
INSERT INTO `category_product` VALUES (9,'ц?ц?ц?ц?','');
INSERT INTO `category_product` VALUES (10,'ц?ц?ц?ц???','');
INSERT INTO `category_product` VALUES (11,'ц?ц?ц???ц?','');
INSERT INTO `category_product` VALUES (12,'ц???ц?ц?ц?','');
INSERT INTO `category_product` VALUES (13,'ц?ц?ц?ц?','');
CREATE TABLE `cdate` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `mon` tinyint(2) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

CREATE TABLE `country` (
  `Id` tinyint(3) unsigned NOT NULL auto_increment,
  `code` char(3) default NULL,
  `name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

CREATE TABLE `customer_pri` (
  `Id_customer` int(10) unsigned NOT NULL auto_increment,
  `N1_Customer` varchar(8) NOT NULL default '',
  `Name` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`Id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

INSERT INTO `customer_pri` VALUES (1,'000001','ц?ц?ц?ц?ц? ц');
INSERT INTO `customer_pri` VALUES (2,'000002','ц???ц???ц?ц?ц?ц???');
INSERT INTO `customer_pri` VALUES (3,'000003','ц?ц?ц?ц???ц?ц?');
INSERT INTO `customer_pri` VALUES (4,'000004','ц?ц?ц?ц?ц?ц?');
CREATE TABLE `dop` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `gender` varchar(4) NOT NULL default '',
  `sec` char(2) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `dop` VALUES (1,'мъж','да');
INSERT INTO `dop` VALUES (2,'жена','не');
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

INSERT INTO `ls_dlajnosti` VALUES (8,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (16,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (17,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (18,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (19,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (20,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (23,1,'Програмист -Пионерче 44444',7);
INSERT INTO `ls_dlajnosti` VALUES (24,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (25,5,'Програмист -Пионерче 3',7);
INSERT INTO `ls_dlajnosti` VALUES (26,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (28,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (29,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (30,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (31,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (33,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (34,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (38,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (39,1,'Програмист kojto e ku-ku',11);
INSERT INTO `ls_dlajnosti` VALUES (40,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (41,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (42,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (44,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (45,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (47,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (48,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (50,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (51,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (52,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (53,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (54,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (55,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (56,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (57,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (58,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (59,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (60,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (61,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (62,1,'Програмист -Пионерче werewrer',7);
INSERT INTO `ls_dlajnosti` VALUES (63,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (64,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (65,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (66,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (67,1,'Програмист -Пионерче',7);
INSERT INTO `ls_dlajnosti` VALUES (68,2,'dfgdfgdfg',234);
CREATE TABLE `ls_dobavki` (
  `id` int(3) unsigned NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `co` tinyint(1) default NULL,
  `shifar` int(6) default NULL,
  `dod` tinyint(1) default NULL COMMENT 'daljim li e dan 0- ne 1 da',
  `zro` tinyint(1) default NULL COMMENT 'dalji li se vu sumata zo 0-ne 1 da',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `ls_dobavki` VALUES (4,'Болнични',0,0,0,1);
INSERT INTO `ls_dobavki` VALUES (5,'Болнични - майченство',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (6,'Болнични - трудова зл.',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (7,'п?п?п?я?п?п? пЁп?п?п?',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (8,'п?п?п©п?п?я?п?п? п?я?',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (9,'???????????????? ???',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (10,'petuniq ?????',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (11,'???????????????? ?©??',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (12,'?·??????????????????',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (13,'п·я?пЁп?п?п?п?п?п?п?',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (14,'п·я?пЁп?п?п?п?п?п?п?',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (15,'????????????????????',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (16,'?????©?????????? ????',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (17,'?·??????????????????',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (18,'????????? ??',0,172375,0,3);
CREATE TABLE `ls_dod` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `datep` date default NULL,
  `doh` float default NULL,
  `sum` float default NULL,
  `prct` float default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `ls_dod` VALUES (1,'0000-00-00',110,0,18);
INSERT INTO `ls_dod` VALUES (2,'0000-00-00',140,5.4,24);
INSERT INTO `ls_dod` VALUES (3,'0000-00-00',400,67.8,28);
INSERT INTO `ls_dod` VALUES (4,'0000-00-00',1000,235.8,29);
INSERT INTO `ls_dod` VALUES (5,'0000-00-00',110,0,15);
INSERT INTO `ls_dod` VALUES (6,'0000-00-00',160,6,22);
INSERT INTO `ls_dod` VALUES (7,'0000-00-00',250,28,26);
INSERT INTO `ls_dod` VALUES (8,'0000-00-00',600,129,29);
INSERT INTO `ls_dod` VALUES (9,'0000-00-00',120,0,10);
INSERT INTO `ls_dod` VALUES (10,'0000-00-00',150,2,20);
INSERT INTO `ls_dod` VALUES (11,'0000-00-00',250,22,22);
INSERT INTO `ls_dod` VALUES (12,'2000-05-05',600,99,24);
INSERT INTO `ls_dod` VALUES (13,'2005-05-05',300,45,15);
INSERT INTO `ls_dod` VALUES (14,'2005-05-05',500,200,10);
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

INSERT INTO `ls_main` VALUES (72,152,'Димитрия','Симеонова','Карамитева','7401234649','2005-01-02','жена','5466','2005-01-01','????????','4000','?????','?????? 6','032941235','0888888888','ead@dsff.com','56656','2005-01-01','2005-01-01','2001-01-01','2001-01-01','22','',5,1,48,'1',NULL,0,'\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t');
INSERT INTO `ls_main` VALUES (73,125,'Иван','Митев','Балсамаджиев','7401234649','2000-01-01','мъж','6666','2005-01-01','sddfdf','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','','',1,1,1,'',NULL,0,'');
INSERT INTO `ls_main` VALUES (74,555,'Красимир','Павлов','Йорданов','7401234649','2005-12-01','мъж','56666','2005-01-01','','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','','',1,1,1,'',NULL,0,'');
INSERT INTO `ls_main` VALUES (75,142,'Симеон','Борисов','Кузманов','740123566','2000-01-01','мъж','65666','2005-01-01','gwtgwg','4000','feghwrhg','','','','','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','','',1,1,1,'',NULL,0,'');
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

INSERT INTO `ls_monthpar` VALUES (1,1,2005,NULL,21,24,150,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (2,2,2005,NULL,22,26,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (3,1,2004,NULL,21,62,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (4,1,2003,NULL,21,62,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (5,2,2004,NULL,11,62,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (6,3,2004,NULL,21,62,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (7,1,2002,NULL,22,61,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (8,1,2006,NULL,22,60,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (9,4,2004,NULL,20,62,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (10,3,2005,NULL,20,63,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (11,4,2005,NULL,19,60,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (12,5,2004,NULL,22,61,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (13,6,2005,'null111001111100011110011111001111',22,61,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ls_monthpar` VALUES (14,7,2005,'1001011100101100011011001111100',25,65,0,0,0,0,0,0,0,0,0,0,0,0,0);
CREATE TABLE `ls_otdeli` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `nomer` tinyint(5) default NULL,
  `nameotdel` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `ls_otdeli` VALUES (1,1,'????? ????? 1');
INSERT INTO `ls_otdeli` VALUES (2,2,'?????? ????');
INSERT INTO `ls_otdeli` VALUES (3,6,'Management of Development');
INSERT INTO `ls_otdeli` VALUES (4,13,'??????? ? ?????');
INSERT INTO `ls_otdeli` VALUES (5,7,'Информационни технологии');
INSERT INTO `ls_otdeli` VALUES (6,3,'????????? ????');
INSERT INTO `ls_otdeli` VALUES (7,27,'ALA BALA');
INSERT INTO `ls_otdeli` VALUES (8,4,'????????????? ?? ????');
INSERT INTO `ls_otdeli` VALUES (9,44,'??????');
INSERT INTO `ls_otdeli` VALUES (10,59,'Traffic redirecting');
INSERT INTO `ls_otdeli` VALUES (11,33,'Engagement manager');
INSERT INTO `ls_otdeli` VALUES (12,77,'??????????? ????????');
INSERT INTO `ls_otdeli` VALUES (13,16,'????????');
INSERT INTO `ls_otdeli` VALUES (15,47,'?????????');
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

INSERT INTO `ls_pic` VALUES (5,74,NULL);
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

INSERT INTO `ls_result` VALUES (1,11,2004,39,1417,0,256.38,185.52,28.65,0,58.58,253.56,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (2,11,2001,41,1417,0,357.58,158.56,25.58,0,56.58,586.25,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (3,1,1993,51,1417,0,1255.58,587.65,1585.56,0,1111.85,445,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (4,3,1994,43,1417,0,25.58,58.58,12.56,0,152.56,458.56,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (5,6,1995,59,0,0,0,0,0,0,0,214.25,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (6,1,1997,60,0,0,0,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (7,1,1998,61,0,0,450,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (8,1,1999,62,1,0,500,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (9,1,1991,63,0,0,0,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (10,1,2005,64,0,0,0,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (11,1,2005,65,0,0,450,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (12,1,2005,66,0,0,0,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (13,1,2005,67,0,0,450,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (14,1,2005,68,0,0,0,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (15,1,2005,69,0,0,0,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (16,1,2005,70,0,0,0,0,0,0,0,NULL,0,0,1,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0.75,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (17,1,2005,71,0,100,580.25,0,0,0,0,NULL,0,0,1,NULL,16.8,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0.9,0,3.11,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (18,1,2005,72,0,0,420.65,124.62,184.17,555.45,321,NULL,0,0,12,NULL,14.18,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0.9,0,5.12,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (19,1,2005,73,0,359,128.74,13,158.62,524.16,65,NULL,0,0,1,NULL,20.54,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0.9,0,3.1,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (20,1,2005,74,0,142.56,485.26,452.11,45.24,124.65,255.42,NULL,0,0,1,NULL,13.18,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0.9,0,2.1,0,0,0,NULL);
INSERT INTO `ls_result` VALUES (21,1,2005,75,0,0,0,353,3546,365,3216,NULL,0,0,1,NULL,45.85,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,6.23,0,0,0,NULL);
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

INSERT INTO `ls_sluj` VALUES (1,'Имаканте ООД','111615555','465665666','??????????','?????','????????');
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

INSERT INTO `ls_users_rights` VALUES (1,2,0,1,1,1,1);
CREATE TABLE `ls_vid_osiguren` (
  `Id` int(11) NOT NULL auto_increment,
  `kod` char(2) NOT NULL default '',
  `opisanie` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `ls_vid_osiguren` VALUES (1,'01','???????? ??? ????????? ?? III-?? ????????? ???');
INSERT INTO `ls_vid_osiguren` VALUES (2,'02','???????? ??? ????????? ?? I-?? ????????? ???');
INSERT INTO `ls_vid_osiguren` VALUES (3,'03','???????? ??? ????????? ?? II-?? ????????? ???');
INSERT INTO `ls_vid_osiguren` VALUES (4,'04','???????? ?? ????? ??? ???????????? ?????? ?????');
INSERT INTO `ls_vid_osiguren` VALUES (5,'12','??????????????? ?');
INSERT INTO `ls_vid_osiguren` VALUES (6,'14','???????? ??? ??????? ????????????');
CREATE TABLE `n_nm` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `Id_oblast` int(4) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Oblast` (`Id_oblast`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

INSERT INTO `n_nm` VALUES (1,'Пловдив',3);
CREATE TABLE `natc_clasifikator_prof` (
  `Id` int(11) NOT NULL auto_increment,
  `name_prof` varchar(50) default NULL,
  `cod` int(5) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `natc_clasifikator_prof` VALUES (1,'Абонатчик',7249);
INSERT INTO `natc_clasifikator_prof` VALUES (2,'Авиодиспечер',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3,'Авиометереолог',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (4,'Авиомеханик',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (5,'Авиомоторист',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (6,'Авиотехник',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (7,'Автобояджия',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (8,'Автоклавчик / производство на каучукови изделия',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (9,'Автоклавчик / хранително-вкусова промишленост',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (10,'Автомонтьор / автомобилен транспорт',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (11,'Автор на гегове, диалози, идеи',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (12,'Автотенекеджия / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (13,'Агент, застраховки',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (14,'Агент, недвижими имоти',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (15,'Агент, реклама',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (16,'Агент, трудова борса',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (17,'Агент, туризъм',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (18,'Агент, фондова борса',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (19,'Агломератчик / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (20,'Агрегатчик',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (21,'Агрегатчик / дърводобив',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (22,'Агроикономист',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (23,'Агроинженер',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (24,'Агроном',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (25,'Агроном / частна практика',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (26,'Агроном, растителна защита',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (27,'Агротехник',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (28,'Адвокат',2421);
INSERT INTO `natc_clasifikator_prof` VALUES (29,'Административен секретар / държавна администрация',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (30,'Административен секретар / съд',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (31,'Администратор / пътническа агенция (бюро)',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (32,'Администратор / хотел',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (33,'Администратор, база данни',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (34,'Администратор, връчване на призовки',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (35,'Администратор, компютърна  мрежа',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (36,'Аеродинамик',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (37,'Аквакултурист, фермер',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (38,'Акомпанятор',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (39,'Акордьор',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (40,'Акратофорчик / хранително-вкусова промишленост',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (41,'Акробат',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (42,'Актьор',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (43,'Акумулаторчик / автосервиз',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (44,'Акушерка',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (45,'Алуминизатор, химическа обработка на повърхности',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (46,'Амалгамчик / стъкларско производство',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (47,'Амбулантен търговец',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (48,'Анализатор на електролити / металургия',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (49,'Анализатор, досиета на лишени от свобода',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (50,'Анализатор, лаборант',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (51,'Анализатор-регулировчик, сушене / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (52,'Аналитик инженер, далекосъобщения',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (54,'Аналитик, ефективност на труда',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (55,'Аналитик, икономика',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (56,'Аналитик, компютърни бази данни',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (57,'Аналитик, компютърни мрежи (комуникации)',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (58,'Аналитик, компютърни системи',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (59,'Аналитик, металургични процеси',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (60,'Аналитик, проучване на пазари',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (61,'Аналитик, софтуер / база данни',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (62,'Аналитик, тарифи, такси',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (63,'Аналитик, финанси и счетоводство',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (65,'Анестезиолог, лекар',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (66,'Аниматор',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (67,'Анкетьор',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (68,'Антено-мачтови монтажник',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (69,'Апаратчик',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (70,'Апаратчик, абсорбер / химически процеси',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (71,'Апаратчик, адсорбер / химически процеси',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (72,'Апаратчик, бъркачка / химични процеси',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (73,'Апаратчик, дестилатор / химически процеси',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (74,'Апаратчик, дефибратори / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (75,'Апаратчик, изпарител / химични процеси',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (78,'Апаратчик, климатични съоръжения',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (79,'Апаратчик, кондензатор / химични процеси',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (80,'Апаратчик, кристализатор / химически процеси',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (83,'Апаратчик, обезводняваща машина / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (84,'Апаратчик, отопление',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (85,'Апаратчик, охлаждане',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (86,'Апаратчик, преса / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (87,'Апаратчик, пречиствателни съоръжения',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (88,'Апаратчик, реактор / химически процеси',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (89,'Апаратчик, редки метали / металургия',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (90,'Апаратчик, сушилна / химични процеси',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (91,'Апаратчик, сушилна инсталация / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (92,'Апаратчик, топлообменник / химични процеси',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (93,'Апаратчик, филтри / химични процеси',8153);
INSERT INTO `natc_clasifikator_prof` VALUES (94,'Апретурист / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (95,'Аптекар / дрогерия',3228);
INSERT INTO `natc_clasifikator_prof` VALUES (96,'Аптекар, фармацевт / аптека',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (97,'Аранжьор / изложби и панаири',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (98,'Аранжьор / търговски обекти',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (99,'Аранжьор, вътрешно обзавеждане',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (100,'Арбитър, спортен',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (101,'Арматурист / строителство',7124);
INSERT INTO `natc_clasifikator_prof` VALUES (102,'Арматурист, леярски форми и съоръжения',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (104,'Армировчик / строителство',7124);
INSERT INTO `natc_clasifikator_prof` VALUES (105,'Артист, балетист',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (106,'Артист, драматичен',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (107,'Артист, концертиращ',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (108,'Артист, оркестрант',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (109,'Артист, ученик в цирк',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (110,'Артистичен секретар',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (111,'Археолог',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (112,'Архивар',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (113,'Архивист',2431);
INSERT INTO `natc_clasifikator_prof` VALUES (114,'Архиепископ',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (115,'Архитект',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (116,'Архитект, декори',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (117,'Архитект, плавателни съдове',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (118,'Архитект-дизайнер',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (119,'Асансьоропридружител, пътници',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (120,'Асансьоропридружител, товаро-разтоварач',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (121,'Асистент / висше училище',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (122,'Асистент-оператор',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (123,'Асистент-оператор на фокуса',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (124,'Асистент-режисьор',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (125,'Асистент-стоматолог',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (126,'Аспираторчик / хранително-вкусова промишленост',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (127,'Астролог',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (128,'Астроном',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (129,'Астроном, приложен специалист',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (130,'Астрофизик',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (134,'Аукционер',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (135,'Афиньор / металургия',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (136,'Бавачка, домашна',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (137,'Багерист',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (139,'Бактериолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (140,'Бактериолог, ветеринарен',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (141,'Бактериолог, контрол на хранителни продукти',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (142,'Бактериолог, медицински',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (143,'Бактериолог, почви',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (144,'Бактериолог, производствен',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (145,'Бактериолог, фармацевтичен',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (146,'Бакърджия',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (147,'Балансьор на ротори',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (148,'Балансьор-коректор, абразиви',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (149,'Балетен педагог',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (150,'Балетен режисьор',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (151,'Балетен репетитор',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (152,'Балетист',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (153,'Балетмайстор',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (154,'Балировач-опаковчик',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (155,'Балоотваряч / производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (156,'Бальор-опаковчик',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (157,'Бандажьор на бобини, секции и ротори на машини',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (158,'Банков експерт',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (159,'Банцигар / дървообработване',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (160,'Барман',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (161,'Баруелист / производство на каучукови изделия',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (162,'Басейнчик / солодобив',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (163,'Белач, дървени трупи',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (164,'Белач-зареждач на роли / полиграфия',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (165,'Бемберист / производство на каучукови изделия',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (166,'Берач / растениевъдство',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (167,'Бетонджия / строителство',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (168,'Библиограф',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (169,'Библиотекар',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (170,'Библиотекар / училище',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (171,'Библиотекар / читалище',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (172,'Библиотекар-регистратор',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (173,'Биволовъд',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (174,'Бижутер',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (175,'Бижутер, плетач на синджири',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (176,'Билетопродавач',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (177,'Билкоберач',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (178,'Билкопроизводител',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (179,'Биограф',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (180,'Биолечител',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (181,'Биолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (182,'Биолог, молекулярен',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (183,'Биолог, морски',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (184,'Биолог, научен работник',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (185,'Биолог, питейна вода',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (186,'Биолог, приложен специалист',3211);
INSERT INTO `natc_clasifikator_prof` VALUES (187,'Биометрик',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (188,'Биотехнолог',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (189,'Биофизик',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (190,'Биохимик',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (191,'Бисмутчик / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (192,'Бласьор / производство на пластмасови изделия',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (193,'Бобиньор / производство на електрически машини',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (194,'Бодигард',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (195,'Болногледач / здравно заведение',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (196,'Болногледач, домашен',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (197,'Бомбаджия',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (198,'Бонтировчик / хранително-вкусова промишленост',7417);
INSERT INTO `natc_clasifikator_prof` VALUES (199,'Боргвергист / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (200,'Борден съпроводител / въздушен транспорт',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (201,'Борсов агент',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (202,'Борсов посредник',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (203,'Ботаник',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (204,'Ботаник, еколог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (205,'Ботаник, микролог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (206,'Ботаник, почва',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (207,'Ботаник, приложен специалист',3211);
INSERT INTO `natc_clasifikator_prof` VALUES (208,'Ботаник, таксономист',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (209,'Ботаник, хистолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (210,'Бояджия / строителство',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (211,'Бояджия / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (213,'Бояджия, антенно-мачтови съоръжения',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (214,'Бояджия, метални изделия',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (215,'Бояджия, метални конструкции / строителство',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (216,'Бояджия, метални части',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (217,'Бояджия, с нитроцелуозни лакове',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (218,'Бояджия, с оловни бои, органични разтворители',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (219,'Бояджия, транспортни средства',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (220,'Брегар / добив на пясък',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (221,'Бродировач',7444);
INSERT INTO `natc_clasifikator_prof` VALUES (222,'Брокер, застраховки',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (223,'Брокер, стоки',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (224,'Брокер, стокова борса',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (225,'Брокер, фондова борса',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (226,'Брокер, ценни книжа',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (227,'Бронзировач / полиграфия',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (228,'Брояч',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (229,'Бръснар',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (230,'Бубар',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (231,'Букволеяр / полиграфия',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (232,'Булдозерист',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (233,'Бункерист',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (234,'Бункерист / химични процеси',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (235,'Бърдар, ремонти / текстилно производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (236,'Бърдар, текстилни машини',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (237,'Бъчвар',7427);
INSERT INTO `natc_clasifikator_prof` VALUES (238,'Бюфетчик',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (239,'Вагоноописвач / жп транспорт',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (240,'Ваксаджия / битови услуги на улицата',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (242,'Вакуумимпрегнатор',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (243,'Вакуумист / хранително-вкусова промишленост',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (244,'Валутен касиер',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (245,'Валцар / хранително-вкусова промишленост',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (246,'Валцолеяр / полиграфия',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (247,'Валцьор, смеси за лепило',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (248,'Валцьор-оператор / металургия',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (250,'Варач / хранително-вкусова промишленост',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (251,'Варач, сапуни / производство на миещи продукти',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (252,'Варогасач / добив на строителни материали',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (254,'Ватман / градски транспорт',8313);
INSERT INTO `natc_clasifikator_prof` VALUES (255,'Вдевач / текстилно производство',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (256,'Велосипедист',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (257,'Ветеринарен лекар',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (258,'Ветеринарен лекар (доктор)',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (259,'Ветеринарен лекар, хирург',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (260,'Ветеринарен фелдшер',3227);
INSERT INTO `natc_clasifikator_prof` VALUES (261,'Вещопазач',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (262,'Взривач / добив',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (263,'Взривач на метални блокове / металургия',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (264,'Видео-инженер',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (265,'Видеомонтажист',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (266,'Викарий',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (267,'Вирусолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (268,'Вицепрезидент / синдикат',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (269,'Вицепрезидент на Републиката',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (270,'Влагоизмерител',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (271,'Владика',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (272,'Водач, автобус',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (273,'Водач, верижен трактор / строителство',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (274,'Водач, дрезина / жп транспорт',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (275,'Водач, електрокар',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (276,'Водач, колесен трактор / селско стопанство',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (277,'Водач, лек автомобил',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (278,'Водач, лек автомобил такси',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (279,'Водач, лекотоварен автомобил до 1,5 тона',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (280,'Водач, ловен туризъм',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (281,'Водач, машина за утъпкване на сняг',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (282,'Водач, микробус',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (283,'Водач, мотокар',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (284,'Водач, мотоциклет',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (285,'Водач, превозно средство с педално задвижване',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (286,'Водач, пробивно-шнекови машини',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (288,'Водач, ръчна количка (количкар)',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (289,'Водач, самосвал',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (290,'Водач, самоходни машини / дърводобив',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (291,'Водач, самоходни машини / селско стопанство',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (292,'Водач, самоходни моторни фрези',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (293,'Водач, селскостопанска машина',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (294,'Водач, специализирани автомобили',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (295,'Водач, специализирани машини в растениевъдството',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (296,'Водач, товарен автомобил над 1,5 тона',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (297,'Водач, транспортиращи средства с животинска сила',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (298,'Водач, триколка',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (299,'Водач, тролейбус',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (300,'Водач, тръбоизолационни почистващи машини',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (301,'Водач, тръбополагащи машини',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (302,'Водещ предаване / радио и телевизия',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (303,'Водолаз',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (304,'Водолечител / здравно заведение',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (305,'Водопроводчик',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (306,'Водопроводчик-мазутчик, металургична пещ',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (307,'Водоразпределител,  поливач / растениевъдството',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (308,'Войник / Българска армия (отбрана)',2);
INSERT INTO `natc_clasifikator_prof` VALUES (309,'Вокален педагог',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (310,'Вокалист, концертиращ',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (311,'Връзвач на телщанги и пружини, тапицер',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (312,'Втори механик / плавателен съд',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (313,'Вулканизатор / производство на каучукови изделия',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (314,'Вулканизатор на тапицерски плоскости, тапицер',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (315,'Вулканолог, геофизик',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (316,'Въглищар, дървени въглища',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (317,'Въглищар-сгураджия / енергетика',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (318,'Въжар',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (327,'Възпитател - учител с полувисше образование',3314);
INSERT INTO `natc_clasifikator_prof` VALUES (330,'Възпитател с полувисше образование / болница',3322);
INSERT INTO `natc_clasifikator_prof` VALUES (332,'Възпитател със средно педагогическо образование',3322);
INSERT INTO `natc_clasifikator_prof` VALUES (334,'Възстановител-металик',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (335,'Вътрешен коректор / полиграфия',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (336,'Гадател',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (337,'Газгенераторчик / коксово производство',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (338,'Газголдерчик / коксово производство',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (339,'Газировчик / производство на безалкохолни напитки',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (340,'Газовчик  / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (341,'Газозаварчик',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (342,'Газорезчик',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (343,'Газоспасител / добив на полезни изкопаеми',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (344,'Галванопластик / полиграфия',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (345,'Галванотехник по хромови, оловни и цинкови вани',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (346,'Галванотехник, химическа обработка на повърхности',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (347,'Галировач / текстилно производство',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (348,'Галтовчик / леярство',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (349,'Гардеробиер, лични вещи на временно съхранение',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (350,'Гардеробиер, спортна екипировка',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (351,'Гардеробиер, сценичен',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (352,'Гаров оператор / жп транспорт',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (353,'Гатерист / дървообработване',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (354,'Генерален директор / БНТ, БНР',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (355,'Генерален директор / дружество по Търговския Закон',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (356,'Генерален консул / държавна администрация (МВнР)',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (357,'Генерален секретар / Червен кръст',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (359,'Генерален секретар / политическа партия',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (360,'Генерален секретар / синдикат',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (361,'Генераторчик / коксово производство',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (362,'Генетик',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (363,'Генетик, животни',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (364,'Генетик, растения',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (365,'Географ',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (366,'Геодезист, инженер',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (367,'Геолог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (368,'Геолог, инженер / ГМО',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (369,'Геолог, микропалеонтолог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (370,'Геолог, минен инженер',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (371,'Геолог, научен работник',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (372,'Геолог, палеонтолог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (373,'Геолог, петрография и вулканология',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (374,'Геолог, стратиграф',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (376,'Геолог-техник, приложен специалист',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (377,'Геомагнетист, геофизик',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (378,'Геоморфолог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (379,'Геофизик',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (380,'Геофизик, ледолог (гласиолог)',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (381,'Геофизик, научен работник',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (382,'Геофизик, океанограф',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (383,'Геофизик, приложна геофизика',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (384,'Геофизик, хидролог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (385,'Геофизичен оператор / геоложки проучвания',7115);
INSERT INTO `natc_clasifikator_prof` VALUES (386,'Гид, планински водач',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (387,'Гилюшор / полиграфия',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (388,'Гипсаджия / строителство',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (389,'Главен агроном',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (390,'Главен актюер',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (391,'Главен архитект / общинска администрация',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (392,'Главен архитект / проектантска организация',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (393,'Главен асистент / висше училище',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (396,'Главен валутен касиер',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (397,'Главен ветеринарен лекар',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (398,'Главен готвач',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (399,'Главен дежурен, електрическа централа',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (400,'Главен дилър',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (401,'Главен директор / държавна администрация',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (403,'Главен експерт / Инспекция летателна експлоатация',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (404,'Главен експерт / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (405,'Главен експерт / областна администрация',2473);
INSERT INTO `natc_clasifikator_prof` VALUES (406,'Главен експерт / общинска администрация',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (407,'Главен експерт, информационно осигуряване',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (408,'Главен енергетик',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (409,'Главен зоотехник',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (410,'Главен икономист',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (411,'Главен инженер',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (412,'Главен инженер / общинска администрация',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (413,'Главен инспектор / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (414,'Главен инспектор по труда',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (415,'Главен камериер / хотел',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (416,'Главен касиер',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (417,'Главен касиер / БНБ',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (418,'Главен касиер, телефоно-телеграфен',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (420,'Главен конструктор (десенатор)',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (421,'Главен координатор / БНТ, БНР',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (423,'Главен лекар / частна болница',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (424,'Главен лесничей',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (425,'Главен механик / плавателен съд',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (426,'Главен механик / производство',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (427,'Главен митнически инспектор',2478);
INSERT INTO `natc_clasifikator_prof` VALUES (428,'Главен научен секретар',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (429,'Главен оператор, реактор в АЕЦ / енергетика',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (431,'Главен пилот / въздушен транспорт',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (433,'Главен проектант / проектантска организация',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (434,'Главен прокурор',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (437,'Главен редактор',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (439,'Главен секретар / Министерски съвет',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (440,'Главен секретар / държавна администрация',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (441,'Главен секретар / общинска администрация',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (442,'Главен секретар / спортна организация',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (444,'Главен специалист  / областна администрация',3443);
INSERT INTO `natc_clasifikator_prof` VALUES (445,'Главен специалист / държавна администрация',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (446,'Главен специалист / общинска администрация',3444);
INSERT INTO `natc_clasifikator_prof` VALUES (447,'Главен счетоводител',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (448,'Главен счетоводител / държавна администрация',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (449,'Главен счетоводител / общинска администрация',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (450,'Главен счетоводител / училище на бюджетна издръжка',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (451,'Главен съветник / Министерски съвет',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (452,'Главен съдебен инспектор',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (453,'Главен технолог',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (456,'Главен финансов ревизор / държавна администрация',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (461,'Главен юрисконсулт',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (462,'Главен юристконсулт / държавна администрация',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (463,'Главен юристконсулт / общинска администрация',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (464,'Главна акушерка',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (465,'Главна медицинска сестра',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (466,'Гладач на преса / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (467,'Гладач на преса / шивашко производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (468,'Гладач, облекло от лицеви меки кожи',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (469,'Гладач, шивач / шивашко производство',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (470,'Глазировач / порцеланово-фаянсово производство',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (472,'Гланцьор, шапки',7443);
INSERT INTO `natc_clasifikator_prof` VALUES (474,'Гледач на дресирани животни',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (475,'Гледач на животни, кланица',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (476,'Гледач на лабораторни животни',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (477,'Гледач на отровни змии',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (478,'Говедовъд',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (479,'Говорител / радио и телевизия',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (480,'Говорител / радиоуредба',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (481,'Говорител, връзки с медиите',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (482,'Горски надзирател',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (483,'Готвач',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (484,'Гоулов майстор',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (485,'Гравьор / полиграфия',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (486,'Гравьор / стъкларско производство',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (487,'Гравьор / текстилно производство',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (488,'Гравьор, бижутерия',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (489,'Гравьор, метал / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (490,'Градинар',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (491,'Градинар / оранжерия',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (492,'Градинар / парк',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (493,'Градировач / хранително-вкусова промишленост',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (494,'Гранульор / химични процеси',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (495,'Гранульор на отпадъчни материали / химични процеси',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (496,'Графолог',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (497,'Гресировач, моторни превозни средства / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (498,'Гримьор, сценичен',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (499,'Гримьор-перукер',5143);
INSERT INTO `natc_clasifikator_prof` VALUES (500,'Гробар, погребения и поддържане на гробници',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (501,'Грундировач на тръби / металургия',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (502,'Грундировач-байцвач, дървообработване',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (503,'Грънчар',7324);
INSERT INTO `natc_clasifikator_prof` VALUES (504,'Гумаджия, моторни превозни средства / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (505,'Гъбар',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (506,'Дансинг-партньор',5149);
INSERT INTO `natc_clasifikator_prof` VALUES (507,'Данъчен експерт / държавна администрация',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (508,'Данъчен инспектор / държавна администрация',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (509,'Даракчия / текстилно производство',8261);
INSERT INTO `natc_clasifikator_prof` VALUES (510,'Девиатор / водeн транспорт',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (511,'Дегустатор / хранително-вкусова промишленост',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (512,'Дезинсектор, работник, посадъчен материал',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (513,'Дезинсектор, специалист',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (514,'Дезинфектор, работник',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (515,'Дезинфектор, специалист',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (516,'Декан / висше училище',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (517,'Декоратор / порцеланово- фаянсово производство',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (518,'Декоратор, театър',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (519,'Декоратор-рисувач, текстил и облекло',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (520,'Деловодител',4143);
INSERT INTO `natc_clasifikator_prof` VALUES (521,'Деловодител, книгохранилище',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (522,'Демограф',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (523,'Демонстратор на стоки',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (524,'Демонтажник / строителство',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (525,'Депозитор-комплектовчик на шрифтове / полиграфия',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (526,'Депомайстор / жп транспорт',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (527,'Дератизатор, работник / зърнени силози',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (528,'Дератизатор, специалист',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (529,'Десенатор, текстил и облекло',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (530,'Дестилатор / производство на алкохол',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (531,'Детегледач',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (532,'Детектив / частна практика',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (533,'Детска учителка',3321);
INSERT INTO `natc_clasifikator_prof` VALUES (534,'Дефектоскопист',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (535,'Джазов певец',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (536,'Диагностик, моторни превозни средства / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (537,'Дивечовъд',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (538,'Диетолог - терапевт',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (539,'Дизайнер, керамични изделия',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (540,'Дизайнер, машинен инженер',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (541,'Дизайнер, облекло и аксесоари',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (542,'Дизайнер, производствени системи',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (543,'Дизайнер, промишлени изделия',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (544,'Дизайнер, художник',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (545,'Дизайнер-архитект',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (546,'Диктовач-коригировач на Брайлова азбука',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (547,'Дилър',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (548,'Дипломат / държавна администрация (МВнР)',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (549,'Дипломатически куриер',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (550,'Дипломиран експерт-счетоводител',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (551,'Директор / Агенция \"Митници\"',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (553,'Директор / детска градина на бюджетна издръжка',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (554,'Директор / дружество по Търговския Закон',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (557,'Директор / издателство',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (560,'Директор / консултативно-диагностичен център',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (561,'Директор / музей на бюджетна издръжка',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (562,'Директор / областна администрация',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (563,'Директор / общинска администрация',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (565,'Директор / печатна база',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (566,'Директор / регионална митническа дирекция',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (567,'Директор / социално учебно-професионално заведение',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (569,'Директор / училище на бюджетна издръжка',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (570,'Директор / частна болница',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (571,'Директор / частна радиостанция, телевизия',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (572,'Директор / частно училище',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (574,'Директор на филмова и телевизионна продукция',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (575,'Директор, ВиК',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (576,'Директор, Народна библиотека',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (577,'Директор, Национална следствена служба',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (578,'Директор, външнотърговска кантора',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (579,'Директор, експлоатация / транспорт',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (580,'Директор, заведение / обществено хранене',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (581,'Директор, икономическа политика',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (582,'Директор, комплекс за хранене',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (583,'Директор, научен институт',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (584,'Директор, научна лаборатория',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (585,'Директор, областен център за социални грижи',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (586,'Директор, производствена дейност',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (587,'Директор, ремонт на тръбопроводи',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (590,'Директор, търговска дейност',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (591,'Директор, търговски въпроси',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (592,'Директор, финансова дейност',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (593,'Директор, чистота',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (594,'Диригент',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (595,'Дисководещ',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (596,'Диспечер / автомобилен транспорт',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (597,'Диспечер / водeн транспорт',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (598,'Диспечер / въздушeн транспорт',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (599,'Диспечер / газопровoд, нефтопровод',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (600,'Диспечер / далекосъобщения (районен възел - РВД)',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (601,'Диспечер / жп гара',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (602,'Диспечер / жп транспорт',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (603,'Диспечер / производствo',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (605,'Дограмаджия',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (606,'Дозиметрист, лаборант',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (607,'Дозировач / производство на строителна керамика',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (608,'Дозировач на въглища / коксово производство',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (609,'Дозировчик  / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (610,'Дозировчик / порцеланово-фаянсово производство',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (611,'Дозировчик / хранително-вкусова промишленост',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (612,'Дозировчик, абразиви',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (613,'Докер',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (614,'Документалист',2431);
INSERT INTO `natc_clasifikator_prof` VALUES (615,'Документатор, финансов контрол',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (616,'Домакин / администрация',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (617,'Домакин, гардеробиер',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (619,'Домакин, организатор на почивно дело',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (620,'Домакин, основни средства',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (621,'Домакин, приемчик / производство',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (622,'Домакин, склад / производство',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (623,'Домакин, снабдител / търговия, производство',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (624,'Домакин, шофьор',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (625,'Домакин-касиер',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (626,'Домашна бавачка',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (627,'Домашна прислужница',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (628,'Домоуправител',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (629,'Доставчик на технически зрял тютюн',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (630,'Доцент',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (631,'Дояч, ръчно / животновъдство',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (632,'Дояч-оператор',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (633,'Драматург',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (634,'Дресьор на животни',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (635,'Дробилчик на комбиниран фураж',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (637,'Дървар / дърводобив',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (638,'Дърводелец, дървени конструкции / строителство',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (639,'Дърводелец, крояч',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (640,'Дърводелец, майстор-мебелист',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (641,'Дърводелец, монтаж на дограма',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (642,'Дърводелец, ремонт и поддържане на дограма',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (643,'Дърводелец, ремонт и поддържане на мебели',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (644,'Дърводелец, строителен',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (645,'Дърводелец, театрален',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (646,'Дърводелец-кофражист / строителство',7122);
INSERT INTO `natc_clasifikator_prof` VALUES (647,'Дърводелец-паркетчия / строителство',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (648,'Дърворезач, абрихт / дървообработване',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (649,'Дърворезач, дърва за огрев / сезонни битови услуги',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (650,'Дърворезбар',7425);
INSERT INTO `natc_clasifikator_prof` VALUES (651,'Държавен експерт / Патентно ведомство',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (652,'Държавен експерт / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (653,'Държавен инспектор / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (655,'Държавен служител / Министерство на отбраната (МО)',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (657,'Държавен съветник',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (658,'Държавен финансов ревизор / държавна администрация',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (659,'Дюшекчия',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (660,'Еколог, биолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (661,'Екперт, външнотърговски отношения',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (662,'Екскурзовод  / туристическа агенция (бюро)',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (663,'Екскурзовод / музей, художествена галерия',5116);
INSERT INTO `natc_clasifikator_prof` VALUES (664,'Екскурзовод, пътнически превози',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (665,'Екскурзовод, разглеждане на забележителности',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (667,'Експедитор',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (668,'Експериментатор на плавателни съдове',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (669,'Експерт / връзки с обществеността',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (670,'Експерт / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (671,'Експерт / изложби и панаири',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (673,'Експерт / туроператор',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (674,'Експерт / финансова къща',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (675,'Експерт / фондова борса',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (676,'Експерт по тютюна',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (677,'Експерт, ВиК',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (678,'Експерт, безопасност на труда',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (679,'Експерт, данъчни консултации',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (681,'Експерт, задължително социално осигуряване',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (682,'Експерт, застрахователни полици',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (683,'Експерт, здравеопазване',2229);
INSERT INTO `natc_clasifikator_prof` VALUES (684,'Експерт, здравно осигуряване',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (685,'Експерт, инвеститорски контрол',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (686,'Експерт, инженеринг и маркетинг',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (687,'Експерт, информационни технологии',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (688,'Експерт, компютъризация на управлението',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (689,'Експерт, културно-масова и спортна дейност',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (690,'Експерт, машинна обработка на информацията',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (692,'Експерт, международно сътрудничество',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (693,'Експерт, организационна дейност',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (694,'Експерт, организация и режим на работа',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (695,'Експерт, офис оформление',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (696,'Експерт, политика на цените',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (697,'Експерт, право',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (699,'Експерт, снабдяване, пласмент',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (700,'Експерт, социални дейности',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (701,'Експерт, социално подпомагане и ориентиране',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (702,'Експерт, социално-битова и жилищна политика',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (703,'Експерт, такси и тарифи',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (704,'Експерт, тарифиране / транспорт',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (706,'Експерт, труд и работна заплата',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (707,'Експерт, трудови отношения',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (708,'Експерт, управление на продажбите',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (709,'Експерт, цени и тарифи',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (710,'Експерт, чуждоезикова подготовка',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (713,'Екстрактьор / химични процеси',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (715,'Екструдерист / производство на каучукови изделия',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (716,'Екструдерист / производство на пластмасови изделия',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (717,'Ел. лаборант',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (718,'Ел. монтьор',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (719,'Електроавтомонтьор',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (720,'Електродчик / металургия',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (721,'Електроерозист, химическа обработка на повърхности',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (722,'Електроженист',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (723,'Електроинженер',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (724,'Електрокарист',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (726,'Електролитчик / металургия',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (727,'Електромеханик  / плавателен съд',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (728,'Електромеханошлосер',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (729,'Електромонтажник, електронни технически системи',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (730,'Електромонтьор, КИП и А',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (731,'Електромонтьор, аварийна група / енергетика',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (732,'Електромонтьор, машини и съоръжения',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (736,'Електромонтьор, телемеханични управлявани системи',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (738,'Електроник (електрончик)',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (739,'Електротехник',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (742,'Елтехник  / плавателен съд',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (743,'Емайлатор, химическа обработка на повърхности',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (744,'Ембриолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (745,'Енергетик / електро-лаборатория, ПТО',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (746,'Енергетик, инженер',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (747,'Енергетик, приложен специалист',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (748,'Енергетик, техник / цех, участък, смяна',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (749,'Ентомолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (750,'Епизоотолог',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (751,'Епископ',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (752,'Ергоном',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (753,'Есеист',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (754,'Естраден певец',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (755,'Етажен отговорник / хотел',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (756,'Етикетировач',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (757,'Етимолог',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (758,'Етнолог',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (759,'Ецер на клишета и цилиндри / полиграфия',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (760,'Железар, театрален',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (761,'Животновъд',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (762,'Животновъд, диви животни за кожи / ферма',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (763,'Животновъд, домашни животни за кожи',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (764,'Животновъд, племенни животни',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (765,'Жп посредник',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (766,'Журналист',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (767,'Жътвар',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (768,'Завалцовчик / производство на кондензатори',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (769,'Заварчик',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (771,'Заварчик, газово и електродъгово заваряванне',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (772,'Заварчик, специални методи',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (773,'Завеждащ  детски ясли на бюджетна издръжка',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (775,'Завеждащ административен отдел',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (776,'Завеждащ административна служба',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (777,'Завеждащ архивохранилище (книгохранилище)',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (778,'Завеждащ бюро за обредни услуги',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (779,'Завеждащ корабна радиостанция / водeн транспорт',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (780,'Завеждащ културно-масова работа',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (781,'Завеждащ личен състав',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (782,'Завеждащ машинотракторен парк',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (783,'Завеждащ морска регистрация',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (784,'Завеждащ нотариална служба',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (785,'Завеждащ обсерватория',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (786,'Завеждащ общинско здравно заведение',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (787,'Завеждащ оптичен филиал',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (788,'Завеждащ отдел специален-ГО',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (789,'Завеждащ охрана на обекти',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (790,'Завеждащ пристан / воден транспорт',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (791,'Завеждащ редакция',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (792,'Завеждащ сектор \"Икономика и анализи\"',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (793,'Завеждащ синоптична станция',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (794,'Завеждащ техническа безопасност',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (795,'Завеждащ техническа безопасност и охрана на труда',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (796,'Завеждащ техническа служба',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (797,'Завеждащ туристическо бюро',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (798,'Завеждащ учебен кабинет, работилница',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (799,'Заготвител / хранително-вкусова промишленост',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (804,'Закалчик на стъкло / стъкларско производство',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (805,'Закупчик',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (807,'Залесител',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (808,'Заливач / производство на кондензаторна маса',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (809,'Замервач-отчетник / добив на полезни изкопаеми',7116);
INSERT INTO `natc_clasifikator_prof` VALUES (810,'Заместник-генерален директор / БНТ, БНР',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (812,'Заместник-главен прокурор',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (813,'Заместник-главен редактор',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (814,'Заместник-главен счетоводител',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (816,'Заместник-декан / висше училище',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (817,'Заместник-директор / Агенция \"Митници\"',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (820,'Заместник-директор, Национална следствена служба',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (821,'Заместник-директор, производствена дейност',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (823,'Заместник-кмет на община',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (824,'Заместник-министър',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (825,'Заместник-министър-председател',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (828,'Заместник-началник, цех',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (829,'Заместник-председател / Народно събрание',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (830,'Заместник-председател / спортен клуб',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (831,'Заместник-председател / спортна организация',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (832,'Заместник-председател, Върховен съд',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (834,'Заместник-председател, Патентно ведомство',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (835,'Заместник-председател, адвокатска колегия',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (836,'Заместник-председател, държавна агенция',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (837,'Заместник-прокурор',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (838,'Заместник-ректор / висше училище',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (841,'Заместник-управител, ресторант',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (842,'Занитвач / машиностроене',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (843,'Запойчик',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (844,'Запойчик на игли',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (845,'Запредач / текстилно производство',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (846,'Запресовчик на дюзи / металургия',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (847,'Зареждач / текстилно производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (848,'Зареждач / хранително-вкусова промишленост',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (851,'Зареждач на събирачна машина / производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (854,'Зареждач, абразиви',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (859,'Зареждач-събирач, печатарска машина / полиграфия',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (860,'Зареждач-събирач, сгъвачна машина / полиграфия',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (861,'Застраховател',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (862,'Застрахователен агент',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (863,'Застрахователен брокер',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (864,'Затиловчик / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (865,'Заточвач на инструменти',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (866,'Заточвач, дарашки гарнитури, текстилни машини',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (867,'Захаровар, захарна маса',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (868,'Зачиствач на прокатна продукция / металургия',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (869,'Зверовъд',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (870,'Звукооператор',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (871,'Звукооператор, смесител на звукове',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (872,'Звукорежисьор',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (873,'Звукотехник',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (874,'Здравен специалист, експерт',2229);
INSERT INTO `natc_clasifikator_prof` VALUES (875,'Зеленчукопроизводител',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (876,'Земекопач / строителство',9313);
INSERT INTO `natc_clasifikator_prof` VALUES (877,'Земемер, приложен специалист',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (878,'Земемер, строителен инженер',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (879,'Земеустроител, приложен специалист',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (880,'Зидар / строителство',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (883,'Зидар, мостови съоръжения',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (884,'Зидаро-мазач',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (885,'Зооинженер',2213);
INSERT INTO `natc_clasifikator_prof` VALUES (886,'Зоолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (887,'Зоотехник',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (888,'Зъбонарезвач / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (889,'Зъботехник',3226);
INSERT INTO `natc_clasifikator_prof` VALUES (890,'Зърнопроизводител',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (891,'Игумен',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (892,'Извозвач с животинска тяга / дърводобив',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (893,'Изготвач на форми и отливки / леярство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (896,'Изготвител, бои и лакове',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (898,'Изготвител, връзки за обувки',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (899,'Изготвител, грим / фармацевтично производство',8221);
INSERT INTO `natc_clasifikator_prof` VALUES (900,'Изготвител, даражни гарнитури за текстилни машини',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (901,'Изготвител, корабни обшивки',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (902,'Изготвител, кордони / текстилно производство',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (904,'Изготвител, метален амбалаж',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (906,'Изготвител, образци - галантерия',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (907,'Изготвител, парфюмерия и козметика',8221);
INSERT INTO `natc_clasifikator_prof` VALUES (911,'Изготвител, разтвори / химични процеси',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (912,'Изготвител, разфасовчик на туш',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (913,'Изготвител, свръзки, абразивни и диамантни изделия',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (914,'Изготвител, смеси / химични процеси',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (915,'Изготвител, смеси и разтвори за бои за рисуване',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (916,'Изготвител, стъклопласти',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (917,'Изготвител, стъклошайби',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (918,'Изготвител, тапицерска вложка, тапицер',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (919,'Изготвител, телени изделия / металургия',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (920,'Изготвител, фирниси и маслен пастел',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (921,'Издател',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (922,'Издател, вестник',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (923,'Издател, книги',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (924,'Издател, периодика',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (925,'Издирвач на адреси / съд',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (926,'Изкопчия',9313);
INSERT INTO `natc_clasifikator_prof` VALUES (927,'Изкуствовед',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (928,'Изкърпвач-гладач',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (929,'Измервач, феритни и магнитни изделия',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (930,'Изолаторчик, топлинна изолация / строителство',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (931,'Изпитател',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (932,'Изпитател, моторни превозни средства',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (933,'Изпитател, хидравлично налягане',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (934,'Изпълнител / администрация',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (935,'Изпълнител на бюджета',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (936,'Изпълнител на модели / шивашко производство',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (937,'Изпълнител на специални изолации / строителство',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (938,'Изпълнител обреди',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (939,'Изпълнител, микрофилмова техника',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (942,'Изпълнител, художествено оформление',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (943,'Изпълнител, шофьор / администрация',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (946,'Изпълнителен директор, изпълнителна дирекция',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (948,'Изтегливач / производство на синтетични влакна',8158);
INSERT INTO `natc_clasifikator_prof` VALUES (949,'Изтегляч / металургия',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (950,'Изтегляч на жица / текстилно производство',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (952,'Изчислител',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (953,'Изчислител-оператор',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (954,'Иконом / хотел',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (955,'Икономист / хотели и ресторанти',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (956,'Икономист по заявки, поръчки и отчет',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (957,'Икономист, аналитик',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (958,'Икономист, консултант',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (959,'Икономист, макроикономика',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (960,'Икономист, научен работник',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (961,'Икономист, прогнозиране и стопанска ефективност',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (962,'Икономист, стоковед / външна търговия',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (963,'Икономист, съветник',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (964,'Икономист, труд и работна заплатта',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (965,'Икономист, търговска дейност',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (966,'Икономист, цени',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (967,'Илюзионист',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (968,'Илюстратор, книги',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (969,'Имам',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (970,'Импрегнатор / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (972,'Импресарио',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (973,'Имунолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (974,'Инвентарчик',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (975,'Инвеститор',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (976,'Инжектьор / сондиране',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (977,'Инженер технолог / дървообработване',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (978,'Инженер технолог / керамично производство',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (979,'Инженер технолог / кожарско и обувно производство',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (980,'Инженер технолог / полиграфическо производство',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (981,'Инженер технолог / строителство',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (982,'Инженер технолог / стъклопроизводство',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (983,'Инженер технолог / текстилно производство',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (984,'Инженер технолог / фармацевтично производство',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (985,'Инженер технолог / хранително-вкусова промишленост',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (986,'Инженер технолог / циментово производство',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (987,'Инженер технолог / шивашко производство',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (988,'Инженер технолог, опаковане на продукция',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (989,'Инженер, автоматизация на производството',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (990,'Инженер, водоснабдяване и канализация',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (991,'Инженер, далекосъобщения, телевизия, радио',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (992,'Инженер, двигатели',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (993,'Инженер, електрически контактни мрежи',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (994,'Инженер, електрически машини и апарати',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (995,'Инженер, електрически подсистеми',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (996,'Инженер, електромеханично оборудване',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (997,'Инженер, електроник / частна практика',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (998,'Инженер, електроника и автоматика',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (999,'Инженер, електронни инструменти и прибори',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1000,'Инженер, електрообзавеждане',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1001,'Инженер, енергетик',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1002,'Инженер, жп строителство',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1003,'Инженер, изследване на труда',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1004,'Инженер, инвеститорски контрол',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (1005,'Инженер, индустриални машини и системи',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1006,'Инженер, инструментална екипировка',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1008,'Инженер, компютърни приложения',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1009,'Инженер, компютърни системи',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1010,'Инженер, конструктор, аудио-, видеотехника',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1012,'Инженер, конструктор, самолетоводещи съоръжения',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1013,'Инженер, конструктор, строителство',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1015,'Инженер, корабни машини и механизми',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1016,'Инженер, корабостроене и кораборемонт',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1017,'Инженер, криогеник',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1018,'Инженер, маркшайдер',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1020,'Инженер, металург',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1021,'Инженер, механик',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1022,'Инженер, минен',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1023,'Инженер, минна електромеханика',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1024,'Инженер, минни машини',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1025,'Инженер, нормировчик',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1026,'Инженер, обогатяване  на полезни изкопаеми',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1027,'Инженер, оптична апаратура',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1028,'Инженер, осветителна техника',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1029,'Инженер, оферти и цени',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1030,'Инженер, оценяване на имоти',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1031,'Инженер, очистване на вода',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1032,'Инженер, парни и водогрейни котли',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1033,'Инженер, патентовед',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1034,'Инженер, поддържане на ЕИТ',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1036,'Инженер, проектант, далекосъобщения',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1037,'Инженер, производствена ефективност',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1038,'Инженер, производствени системи и роботи',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1040,'Инженер, промишлено и гражданско строителство',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1041,'Инженер, пътно строителство',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1042,'Инженер, развитие и внедряване',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1044,'Инженер, релейна защита',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1045,'Инженер, роботика',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1046,'Инженер, руднична вентилация и аеродинамика',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1047,'Инженер, самолетоводещи съоръжения',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (1048,'Инженер, самолетостроене',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1049,'Инженер, санитарно строителство',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1050,'Инженер, селскостопанско машиностроене',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1051,'Инженер, смазочни системи',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1052,'Инженер, сондажни машини',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1053,'Инженер, софтуер',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1054,'Инженер, строителен',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1055,'Инженер, строителство във вода',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1056,'Инженер, телекомуникации',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1057,'Инженер, техническа безопасност',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1058,'Инженер, тунелно строителство',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1059,'Инженер, турбини',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1060,'Инженер, хардуер',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1061,'Инженер, хидравлични и пневматични машини',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1062,'Инженер, хидроенергийно строителство',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1063,'Инженер, хидролог',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1064,'Инженер, хидромелиоративно строителство',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1065,'Инженер, химически процеси',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1066,'Инженер-химик',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1067,'Инкасатор, монетни телефонни апарати / БТК',9155);
INSERT INTO `natc_clasifikator_prof` VALUES (1068,'Инкасатор, неплатени сметки',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1071,'Инкасатор, плащания',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1072,'Инкасатор-касиер, електроенергия',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1073,'Инспектор / ВиК',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (1074,'Инспектор / банка',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1075,'Инспектор / въздушeн транспорт',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (1076,'Инспектор / държавна администрация',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (1077,'Инспектор на оркестър',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1078,'Инспектор на хор',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1080,'Инспектор по кадри',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (1081,'Инспектор по качеството, приложен специалист',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1082,'Инспектор по труда',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (1083,'Инспектор по учебна работа / образование',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (1084,'Инспектор, вагонен / жп транспорт',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1086,'Инспектор, гражданска отбрана',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (1087,'Инспектор, електрозахранване',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (1088,'Инспектор, здравно осигуряване',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1089,'Инспектор, контрол на решенията',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1090,'Инспектор, лицензии (разрешения)',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1091,'Инспектор, личен състав',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (1092,'Инспектор, локомотивен / жп транспорт',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1093,'Инспектор, митнически',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1095,'Инспектор, охрана на труда',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1096,'Инспектор, пенсионно дело',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1097,'Инспектор, пожарна безопасност на оборудване',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (1098,'Инспектор, превозни бригади / жп транспорт',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1099,'Инспектор, противопожарна охрана / сграда',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (1100,'Инспектор, професионална рехабилитация',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1101,'Инспектор, работна сила и пенсиониране',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1102,'Инспектор, работна среда',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1103,'Инспектор, санитарен',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (1104,'Инспектор, социално подпомагане',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1105,'Инспектор, техническа безопасност',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1107,'Инспектор, технически контрол и метрология',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1108,'Инспектор, технически надзор',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1109,'Инспектор, трудова борса',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1110,'Инспектор, трудоустрояване',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1111,'Инструктор / водeн транспорт',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (1112,'Инструктор / въздушeн транспорт',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (1113,'Инструктор / жп транспорт',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1114,'Инструктор на водачи на моторни превозни средства',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1115,'Инструктор по управление на плавателен съд до 10 т',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1116,'Инструктор по управление на платноход',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1117,'Инструктор, диетично хранене',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (1118,'Инструктор, спортен',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (1119,'Инструменталист, солист',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1121,'Инструменталчик, шлосер',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1122,'Информатик / частна практика',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1123,'Информатор - библиограф',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1124,'Информатор / музей, художествена галерия',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1125,'Информатор / туристическа агенция',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1126,'Информатор, приемна / държавна администрация',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1127,'Информатор, пропуски / общежитие',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1128,'Информатор, пътувания / въздушен транспорт',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1129,'Информатор, пътувания / жп транспорт',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1130,'Информатор-регистратор / болнично заведение',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1131,'Информатор-регистратор / поликлиника',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1132,'Историк',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (1133,'Историк, научен работник',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (1134,'Ихтиолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1135,'Кабелен муфаджия / енергетика',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1136,'Кадрови военнослужащ / Въоръжени сили',1);
INSERT INTO `natc_clasifikator_prof` VALUES (1137,'Кадровик',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1138,'Калайджия',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1139,'Каландрист / производство на каучукови изделия',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (1140,'Каландрист / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (1141,'Калибровчик, прецизни инструменти',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1143,'Калибровчик, телени изделия / металургия',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (1144,'Калибровчик, шаблони от дърво',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1145,'Калиграф',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (1146,'Калкулант',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (1147,'Калкулант - домакин, обществено хранене',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (1148,'Каловадач',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1149,'Калолечител',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1150,'Каменар / добив на скални материали',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (1151,'Камено-монтажник / строителство',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1152,'Каменоделец, скулптурни произведения',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (1153,'Камериер, личен',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (1154,'Камериер, хотел',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (1155,'Камериерка',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (1156,'Каналджия',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1157,'Каналокопател-каналочистач, машинист',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1158,'Кантарджия / склад',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (1159,'Кантарджия, отчетник',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1160,'Кантонер / жп транспорт',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (1161,'Капелан',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (1162,'Капитан / кораб',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1163,'Капитан / плавателен съд',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1164,'Капитан-пилот / плавателен съд',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1165,'Каротажен електромонтьор / геоложки проучвания',7115);
INSERT INTO `natc_clasifikator_prof` VALUES (1166,'Картограф',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1167,'Картограф-чертожник',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1169,'Картооформител на стенни, релефни карти и глобуси',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (1170,'Картотекар',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1171,'Каруцар',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (1172,'Касиер (калкулант) / обществено хранене (стол)',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1173,'Касиер / бензиностанция',4219);
INSERT INTO `natc_clasifikator_prof` VALUES (1174,'Касиер / казино',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1175,'Касиер / магазин',4212);
INSERT INTO `natc_clasifikator_prof` VALUES (1176,'Касиер / ресторант',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1177,'Касиер на гише / банка',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1178,'Касиер на гише / поща',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1179,'Касиер на гише за залагания',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1180,'Касиер на гише, телефоно-телеграфен',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1181,'Касиер, билетопродавач',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (1182,'Касиер, главен',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (1183,'Касиер, данъчни приходи',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (1184,'Касиер, заложна къща',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (1185,'Касиер, изпълнител на бюджета',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (1186,'Касиер, инкасатор (вода, топлоенергия)',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1187,'Касиер, маркировчик (куверти) / обществено хранене',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1188,'Касиер, обменител на валута',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (1189,'Касиер, продавач на билети',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (1190,'Касиер, счетоводство',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1191,'Касиер, телефоно-телеграфна експлоатация',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1192,'Касиер-домакин',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1193,'Касиер-калкулант',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1194,'Касиер-машинописец',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1195,'Касиер-платец',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1196,'Касиер-сътрудник',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1198,'Катодчик / металургия',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1199,'Качествен контрольор',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1201,'Квалифициран тъкач',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (1202,'Квестор / Народно събрание',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (1203,'Кесонен апаратчик',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1204,'Кесонен работник',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1205,'Килимар',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (1206,'Кинезитерапевт / фитнес център',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1207,'Кинезитерапевт, висше образование',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1208,'Кинезитерапевт, курортология',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1209,'Кинезитерапевт, спорт',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1210,'Киномеханик',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1211,'Киноработник',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (1212,'Кислородчик',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1213,'Клавиатурист на релефно-наборна азбука',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1214,'Клавиатурист, наборни машини / полиграфия',8251);
INSERT INTO `natc_clasifikator_prof` VALUES (1215,'Климатолог',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (1216,'Клоун',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (1217,'Кмет, кметство',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1218,'Кмет, община',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1219,'Кметски наместник / община',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1220,'Книговед',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1221,'Книговезец / полиграфия',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1222,'Книговезец, машинист / полиграфия',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (1223,'Книговезец, резач на нож / полиграфия',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1224,'Книговезец-подвързвач (Брайлова азбука)',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1225,'Книговодител, вписвания / съд',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1226,'Книговодител, счетоводство',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1227,'Книжар',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (1228,'Ковач',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1229,'Ковач, железар',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1230,'Ковач, фина бижутерия с камъни и перли',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1231,'Ковчежник / банка',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1232,'Кожар',7451);
INSERT INTO `natc_clasifikator_prof` VALUES (1234,'Кожухар',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (1235,'Козметик',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (1236,'Коксосортировач / коксово производство',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (1237,'Колар',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (1238,'Колбасар  / хранително-вкусова промишленост',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (1240,'Колонист / редакция, издателство',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1241,'Колорист / полиграфия',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (1242,'Командир-пилот / самолет',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1243,'Комбайнер',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (1244,'Комендант, въоръжена охрана',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (1245,'Коментатор',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1246,'Коментатор, новини, спорт',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1247,'Коминджия, стоманобетонни промишлени комини',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (1248,'Коминочистач',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (1249,'Комисионер, кораби',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (1250,'Компаньон',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (1251,'Компаньонка-партньор / битови услуги на улицата',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (1252,'Компаундировчик / химични процеси',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1253,'Комплексен управител / обществено хранене',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (1254,'Комплектовач на мебелен обков, мебелист',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1255,'Комплектовач-зареждач / производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1256,'Комплектовач-зареждач / шивашко производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1257,'Комплектовчик, архив (ЦТА)',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1258,'Комплектовчик, снабдител',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1259,'Композитор',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1260,'Компресорист',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1261,'Конверторчик / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (1262,'Кондуктор / въжена линия',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1263,'Кондуктор / градски транспорт',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1264,'Кондуктор / жп транспорт',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1265,'Кондуктор / пътнически междуселищен транспорт',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1266,'Кондуктор / ферибоот',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1267,'Коневъд',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (1268,'Конегледач',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (1269,'Консерватор-реставратор, архивни фондове',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (1270,'Консерватор-реставратор, паметници на културата',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (1272,'Конституционен съдия / Конституционен съд',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (1273,'Конструктор машинен, приложен специалист',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1274,'Конструктор на машинни части и детайли',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1275,'Конструктор, инженер, електроника и автоматика',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1276,'Конструктор, керамични изделия',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1277,'Конструктор, кукли',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1278,'Конструктор, машинен инженер',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1279,'Конструктор, музикални инструменти',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (1280,'Конструктор, облекло и модели',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1281,'Конструктор, производствени системи и роботи',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1282,'Конструктор, строителен инженер',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1283,'Консул / държавна администрация (МВнР)',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1284,'Консултант - лекар, здравно осигуряване',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1285,'Консултант, връзки с медиите',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1286,'Консултант, драматургичен',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1287,'Консултант, ефективност на бизнеса',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1288,'Консултант, застрахователни полици',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (1289,'Консултант, икономика',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (1290,'Консултант, компютърни системи',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1292,'Консултант, проучване на пазари',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1293,'Консултант, реклама',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1294,'Консултант, софтуер',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1295,'Консултант, тарифи, такси',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (1296,'Консултант, трудова заетост',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1297,'Консултант, търгове',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (1298,'Консултант, търговия',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1299,'Консултант, фармацевт',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (1300,'Консултант, финанси и счетоводство',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1301,'Консултант, хранене',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (1302,'Консултант-прогностик',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (1303,'Контрактов мениджър',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1304,'Контролен специалист, резервни части и оборудване',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1305,'Контрольор / градски транспорт',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1306,'Контрольор / дружество по ТЗ (ЕАД, ЕООД)',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (1307,'Контрольор / метро',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1308,'Контрольор в ГСС',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1309,'Контрольор на материали  / шивашко производство',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (1310,'Контрольор на стокооборот',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1311,'Контрольор по движението / жп транспорт',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1312,'Контрольор по качество',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1315,'Контрольор, екология',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1316,'Контрольор, експедиция на продукцията',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1317,'Контрольор, кодиране',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (1318,'Контрольор, надзорни съоръжения / енергетика',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1319,'Контрольор, облекло, шевни изделия',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (1320,'Контрольор, обработка на данни',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (1321,'Контрольор, пощенски / съобщения',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (1322,'Контрольор, приходи',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (1324,'Контрольор, роботи',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (1325,'Контрольор, сортиране на документи',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (1326,'Контрольор, технически контрол',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1327,'Контрольор, хигиена на труда',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1328,'Контурист',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1329,'Конфедерален секретар / синдикат',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (1330,'Конфекционер / производство на кожена галантерия',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (1331,'Конфекционер / текстилно производство',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1333,'Конфекционер на машина / производство на обувки',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (1334,'Конфекционер, директно копировална хартия',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1335,'Конфекционер, кожено облекло',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (1336,'Конфекционер, куфари и чанти',7452);
INSERT INTO `natc_clasifikator_prof` VALUES (1337,'Конфекционер, ленти за пишещи машини',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1338,'Конферансие',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (1339,'Концертиращ артист, солист и камерен изпълнител',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1340,'Концертмайстор',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1341,'Координатор / производство',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (1342,'Координатор / производство на оптични инструменти',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (1343,'Координатор / строителство',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (1344,'Координатор / телевизия и радио (БНТ)',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (1345,'Координатор, връзки с обществеността',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1346,'Координатор, далекосъобщения',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (1347,'Координатор, дистрибуторска мрежа',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1348,'Координатор, кариерно развитие',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1349,'Координатор, международни програми',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1350,'Координатор, реклама',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1351,'Координатор, туроператор',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1352,'Копировач',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1353,'Копист, филмови материали',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (1354,'Корабен агент',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (1355,'Корабен главен готвач',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1356,'Корабен готвач',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1357,'Корабен домакин / воден транспорт',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1359,'Корабен електроник',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1360,'Корабен електротехник',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1361,'Корабен изготвител, тръбни инсталации',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1362,'Корабен изолаторчик',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (1363,'Корабен камериер / воден транспорт',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1364,'Корабен кормчия',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1365,'Корабен машинист',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1366,'Корабен механик',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1367,'Корабен огняр',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (1368,'Корабен помпиер',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1369,'Корабен радиотелеграфист',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1370,'Корабен радиотелеграфист-радиотелефонист',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1371,'Корабен разкройчик на кабели / корабостроене',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1372,'Корабен формовчик, стъклопластни конструкции',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1373,'Корабен хлебар',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1374,'Корабомоделист',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1375,'Коректор / редакция, издателство',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1377,'Коректор, телефонни услуги',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (1378,'Коректор-стилист / редакция, издателство',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1379,'Корепетитор',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1380,'Кореспондент / радио, телевизия, БТА',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1381,'Кореспондент-преводач, специалист',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (1382,'Корнировач / полиграфия',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (1383,'Коробелач / дървообработване',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (1384,'Корпусник / корабостроене',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1385,'Корпусник, корабни стъклопластови конструкции',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1386,'Котлочистач / енергетика',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1387,'Котляр / машиностроене',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (1388,'Кофаджия / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (1389,'Кофражист-бетонджия, подземен (тунели)',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (1390,'Кранист',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1391,'Кранист, мостов кран',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1392,'Крановик',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1393,'Крепач / добив на полезни изкопаеми',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1394,'Крикатурист',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (1395,'Криминолог',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1396,'Критик',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1397,'Критик, изобразително изкуство',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1398,'Критик, литература',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1399,'Критик, музика',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1400,'Критик, театър',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1401,'Критик, филми',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1402,'Крояч / шивашко производство',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (1403,'Крояч на книговезки материали / полиграфия',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1404,'Крояч, банцигар на трикотаж / шивашко производство',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (1405,'Крояч, дърводелец',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (1406,'Крояч, настилаж на трикотаж / шивашко производство',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (1407,'Крояч, обущар',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1408,'Крояч-резач на стъкло / стъкларско производство',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (1409,'Крупие',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1411,'Куклоконструктор',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1412,'Куриер',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (1413,'Кюре',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (1414,'Лаборант / парова централа',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (1415,'Лаборант / производство',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (1416,'Лаборант, медицински',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (1417,'Лаборант, рентгенов',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (1419,'Лакировач-ситопечат на ски, дърводелец',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (1420,'Ледолог, геофизик',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (1421,'Лекар',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1422,'Лекар / ХЕИ',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1423,'Лекар ветеринарен',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (1424,'Лекар хуманен',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1425,'Лекар, завеждащ отделение',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1426,'Лекар, клинична лаборатория',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1427,'Лекар, медицинско застраховане и консултации',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1428,'Лекар, ординатор',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1429,'Лекар, физиотерапевт',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1430,'Лекар, член на ТЕЛК, ЦТЕЛК',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1431,'Лексикограф',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1432,'Лектор / висше училище',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1433,'Лепач / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1434,'Лепач на афиши, обяви, известия',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (1436,'Лепач на детайли (метални, пластмасови)',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (1438,'Лепилобъркач / производство на залепващи вещества',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1439,'Лепиловар / полиграфия',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1440,'Лепилообмазвач / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1441,'Лепилоприготвител / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1442,'Лепилоприготвител / полиграфия',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1443,'Лесничей',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (1444,'Лесовъд, специалист',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (1445,'Лесозащитник',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (1446,'Лесоинженер',2214);
INSERT INTO `natc_clasifikator_prof` VALUES (1447,'Летец-борден радист',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1448,'Летец-инженер',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1449,'Летец-механик',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1450,'Летец-пилот',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1451,'Летец-щурман',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1452,'Лечител чрез вяра',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (1453,'Лечител, алтернативни методи',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1454,'Лечител, биоенергия',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1455,'Леяр',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1456,'Леяр, аноди / металургия',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1457,'Леяр, благородни метали',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1460,'Леяр-формовчик на скулптурни произведения',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1461,'Ликвидатор / дружество по Търговския закон',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (1462,'Лингвист',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1463,'Линотипер / полиграфия',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1464,'Литератор',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1465,'Литературен сътрудник',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (1466,'Ловен надзирател',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (1467,'Ловец',6154);
INSERT INTO `natc_clasifikator_prof` VALUES (1468,'Логопед с висше образование',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (1469,'Логопед с полувисше образование',3333);
INSERT INTO `natc_clasifikator_prof` VALUES (1470,'Лодкостроител от стъклопласти',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1471,'Лозар',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (1472,'Локомотивен машинист / добив на полезни изкопаеми',8314);
INSERT INTO `natc_clasifikator_prof` VALUES (1473,'Локомотивен машинист / жп транспорт',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (1474,'Лоцман / плавателен съд',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1475,'Луголечител',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1476,'Лютиер',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (1477,'Магазинер / склад',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1478,'Мазач / строителство',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (1479,'Майка, детско селище',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1480,'Майстор готвач',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1481,'Майстор готвач-сладкар',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1482,'Майстор крояч, шивач',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (1483,'Майстор монтьор, полиграфични машини',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1484,'Майстор обущар',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1485,'Майстор пекар, хляб и сладкарски изделия',7412);
INSERT INTO `natc_clasifikator_prof` VALUES (1486,'Майстор полиграфист / полиграфия',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (1489,'Майстор, боза / хранително-вкусова промишленост',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (1491,'Майстор, нектари / хранително-вкусова промишленост',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (1493,'Майстор-маслар / хранително-вкусова промишленост',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1494,'Майстор-миньор',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1496,'Майстор-млекар / хранително-вкусова промишленост',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1497,'Майстор-монтьор, електрически машини и апарати',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (1498,'Майстор-сиренар / хранително-вкусова промишленост',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1499,'Майстор-флотиер / добив на полезни изкопаеми',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (1500,'Макетист',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1501,'Макетьор / полиграфия',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1502,'Мамалог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1503,'Маневрист / жп транспорт',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (1504,'Манекен',5211);
INSERT INTO `natc_clasifikator_prof` VALUES (1505,'Маникюрист-педикюрист',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (1506,'Манипулант (стифчия) /  яйцезаготвителни складове',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1507,'Манипулант, билки и гъби',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1508,'Манипулант, изготвяне на бали / тютюн',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1509,'Манипулант, кондициониран тютюн',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1510,'Манипулант, лепач на кашони',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (1512,'Манипулант, подреждане на детайли / производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1514,'Манипулант, технически зрял и изсушен тютюн',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1515,'Маркировач',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (1516,'Маркшайдер, инженер',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1517,'Мартеничар',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (1518,'Масажист / фитнесзала',5143);
INSERT INTO `natc_clasifikator_prof` VALUES (1519,'Масажист, терапевт',3252);
INSERT INTO `natc_clasifikator_prof` VALUES (1520,'Масльончик',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1522,'Математик',2121);
INSERT INTO `natc_clasifikator_prof` VALUES (1523,'Математик, научен работник',2121);
INSERT INTO `natc_clasifikator_prof` VALUES (1524,'Математик, програмист',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1526,'Материалчик-рецептьор / стъкларско производство',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (1528,'Матричар / полиграфия',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (1529,'Матричар, инструменти',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1530,'Матричар, катодни основи / металургия',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1531,'Мачтовик',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1532,'Машинен боцман',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1533,'Машинен инженер / механично-инструментален участък',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1534,'Машинен инженер, конструктор',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1535,'Машинен инженер, норми и нормативи',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1536,'Машинен инженер, проектант',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1538,'Машинист / бетонен център (бетонов възел)',8218);
INSERT INTO `natc_clasifikator_prof` VALUES (1539,'Машинист / дърводобив',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (1540,'Машинист / производство на сладолед',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1541,'Машинист,  сух пастел и моделин',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1543,'Машинист, автобагер',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1544,'Машинист, автовишка',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1545,'Машинист, автогрейдер',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1547,'Машинист, аграгат или тютюнорезачна машина',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1548,'Машинист, агрегат за тютюневи бали',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1549,'Машинист, багер',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1552,'Машинист, бичещи машини / каменообработване',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1553,'Машинист, булдозер',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1554,'Машинист, валяк',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1555,'Машинист, вибросита / производство на торове',8157);
INSERT INTO `natc_clasifikator_prof` VALUES (1556,'Машинист, въжена линия',8338);
INSERT INTO `natc_clasifikator_prof` VALUES (1559,'Машинист, дробилка за отпадъци / дървообработване',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (1561,'Машинист, изкопни машини',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1562,'Машинист, изливане на пилоти при фундиране',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1563,'Машинист, инсталация за дунапрен',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1564,'Машинист, кабелополагаща машина',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1565,'Машинист, каналокопател-каналочистач',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1566,'Машинист, кран',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1568,'Машинист, локомотив / жп транспорт',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (1569,'Машинист, мелници и дробилки / химични процеси',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1572,'Машинист, млечна машина',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1575,'Машинист, обработка на камъни',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1576,'Машинист, обрезващи машини / каменообработване',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1577,'Машинист, пакето-повдигащи плочи / строителство',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1579,'Машинист, печатар',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (1580,'Машинист, подвижна установка (МПУ) / сондиране',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (1581,'Машинист, подемно-транспортни съоръжения',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1582,'Машинист, полировъчни машини  / каменообработване',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1583,'Машинист, портални и козлови кранове',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1588,'Машинист, пълнене и дозировка / химични процеси',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1589,'Машинист, пътностроителна машина (ФАДРОМА и др.)',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1590,'Машинист, разфасовъчна машина за сирене',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1599,'Машинист, ски-лифт',8338);
INSERT INTO `natc_clasifikator_prof` VALUES (1601,'Машинист, таблетираща машина за акварел',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1602,'Машинист, телфер',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1603,'Машинист, тигелна машина / леярство',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (1605,'Машинист, тонго-пълначна машина',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (1606,'Машинист, транспортно-технологични машини',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1611,'Машинист, шлюз',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1612,'Машинописец',4112);
INSERT INTO `natc_clasifikator_prof` VALUES (1613,'Машинописка',4112);
INSERT INTO `natc_clasifikator_prof` VALUES (1614,'Мебелист',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1615,'Мебелист, дефектоотстранител',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1616,'Медицинска сестра',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1617,'Медицинска сестра / частна практика',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1618,'Медицинска сестра, анестезиолог',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1619,'Медицинска сестра, манипулационна',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1620,'Медицинска сестра, стоматология',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1621,'Медицинска сестра, училищна',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1622,'Медицинска сестра, хирургия',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1623,'Медицински козметик',3252);
INSERT INTO `natc_clasifikator_prof` VALUES (1624,'Медицински консултант',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1625,'Медицински лаборант',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (1626,'Медицински управител / балнеологичен център',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (1628,'Мелничар / обогатяване на полезни изкопаеми',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (1629,'Мелничар / хранително-вкусова промишленост',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (1632,'Мениджър',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1633,'Мениджър, казино',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1634,'Мениджър, основни услуги',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1635,'Мениджър, прогнозиране',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1636,'Мениджър, продажби',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1637,'Мениджър, разработки',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1638,'Мениджър, реклама',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1640,'Месодобивник / хранително-вкусова промишленост',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (1641,'Метализатор, химическа обработка на повърхности',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (1642,'Метач - мияч, пътническа гара / транспорт',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1643,'Метач, улица / комунално стопанство',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1644,'Метеоролог',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (1645,'Метеоролог, приложен специалист',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (1646,'Метеоролог-наблюдател',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (1647,'Методист / библиотека',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1648,'Методист по обучение',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1649,'Методист, лечебна физкултура',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1650,'Методист, обучение с персонален компютър (ПК)',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1651,'Методист, подготовка чужди езици / образование',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1652,'Методист, спорт',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (1653,'Методист, учебни програми и курсове / образование',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1654,'Методист, финансова дейност',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1655,'Метролог, везни и теглилки',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1656,'Метролог, приложен специалист',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1657,'Механизатор',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (1658,'Механик  / плавателен съд',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1659,'Механик / АТЦ',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (1660,'Механик, нормировчик',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1661,'Механик, поддържане на радио-съобщителна техника',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1662,'Механик, приложен специалист',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1663,'Механик, техническа експлоатация на локомотиви',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1664,'Механик-монтьор',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1665,'Механошлосер',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1666,'Механошлосер, машини и съоръжения',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1667,'Мехатроник',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1668,'Микробиолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1669,'Минен инженер',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1670,'Минен работник',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1671,'Минен спасител',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (1672,'Минералог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (1673,'Минералчик на комбиниран фураж',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (1674,'Министър',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1675,'Министър-председател',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1676,'Миньор',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1677,'Мисионер',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1678,'Митнически инспектор',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1679,'Митнически посредник',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1680,'Митрополит',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (1681,'Мияч, витрини',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1682,'Мияч, метални изделия / машиностроене',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1683,'Мияч, моторни превозни средства / автосервиз',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1684,'Мияч, прозорци',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1685,'Мияч, съдове и прибори / обществено хранене',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (1686,'Мияч, улица в населени места',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1687,'Младши експерт / Министерски съвет, Президентство',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (1688,'Младши експерт / държавна администрация',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1689,'Младши инспектор / държавна администрация',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1690,'Младши прокурор',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (1691,'Младши счетоводител / държавна администрация',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1692,'Младши съдия',2422);
INSERT INTO `natc_clasifikator_prof` VALUES (1693,'Младши юристконсулт / държавна администрация',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1694,'Млекар, експедитор',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1695,'Млекоприемчик',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1696,'Моделиер, бижутерия и сувенири',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1697,'Моделиер, калъпи за обувки / производство',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1698,'Моделиер, мебели',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1699,'Моделиер, музикални инструменти',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (1700,'Моделиер, нови изделия от дърво',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1701,'Моделиер, облекло и аксесоари',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1703,'Моделиер-конструктор, обувки',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1704,'Моделиер-конструктор, текстил, облекло, галантелия',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1705,'Моделист / порцеланово-фаянсово производство',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (1706,'Моделчик / леярство',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1707,'Моделчик, леярски модели от дървесина',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1708,'Мозайкаджия / строителство',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1709,'Монах',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1710,'Монахиня',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1711,'Монтажист, копист / полиграфия',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (1712,'Монтажник / АТЦ',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1713,'Монтажник, ВиК',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1714,'Монтажник, външни водопроводни мрежи',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1715,'Монтажник, външни отоплителни системи',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1717,'Монтажник, канализационни тръбопроводни инсталации',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1718,'Монтажник, корабни вентилационни системи',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1719,'Монтажник, летателни апарати / машиностроене',7233);
INSERT INTO `natc_clasifikator_prof` VALUES (1720,'Монтажник, механични компоненти в изделие',8281);
INSERT INTO `natc_clasifikator_prof` VALUES (1722,'Монтажник, под вода',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1723,'Монтажник, радиосъоръжения',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1724,'Монтажник, радиосъоръжения - високочестотни уредби',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1725,'Монтажник, селскостопански машини / машиностроене',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1728,'Монтажник, телефонни и телеграфни кабели и линии',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1729,'Монтажник, технологични тръбопроводи',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1730,'Монтьор / автомобилостроене',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1731,'Монтьор на МПС / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1732,'Монтьор на гуми, моторни превозни средства',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1733,'Монтьор, автомобили и мотоциклети',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1734,'Монтьор, асансьори',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1735,'Монтьор, въжени линии',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1736,'Монтьор, вътрешно районни съобщения / ТВД',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1737,'Монтьор, електрически машини и апарати',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (1738,'Монтьор, електрически мрежи и системи',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (1739,'Монтьор, електронна техника',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1740,'Монтьор, енергийни съоръжения',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1741,'Монтьор, кабелна арматура',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1742,'Монтьор, калкулатори',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1743,'Монтьор, котелно оборудване / енергетика',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1744,'Монтьор, линейно кабелно стопанство',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1747,'Монтьор, машини и съоръжения (не \"шлосер\")',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1748,'Монтьор, минни машини',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1749,'Монтьор, отопление / енергетика',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1750,'Монтьор, печатарски машини',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1751,'Монтьор, подвижен състав / жп транспорт',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (1753,'Монтьор, поддържане на аудио-визуална техника',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1755,'Монтьор, поддържане на измервателни уреди',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1756,'Монтьор, поддържане на пишещи машини',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1758,'Монтьор, поддържане на телефонна централа',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1761,'Монтьор, производство на акумулатори',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (1762,'Монтьор, пътностроителни машини',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1763,'Монтьор, режимни настройки / енергетика',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1764,'Монтьор, ремонт и поддържане на КИП и А',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1765,'Монтьор, селищна телефонна мрежа',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1766,'Монтьор, селскостопански машини',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1767,'Монтьор, тежка механизация',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1768,'Монтьор, топлофикация / енергетика',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1769,'Монтьор, трактори',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1770,'Монтьор, турбинно оборудване / енергетика',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1771,'Монтьор-изготвител, корабна електроника',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1773,'Монтьор-механошлосер',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1775,'Монтьори, летателни апарати',7233);
INSERT INTO `natc_clasifikator_prof` VALUES (1776,'Морфолог',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1777,'Моряк',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1778,'Моряк / Военно морски флот (отбрана)',2);
INSERT INTO `natc_clasifikator_prof` VALUES (1779,'Моряк, машинна команда',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1780,'Моряк, палубна команда',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1781,'Мостовак',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (1782,'Моторист, корабни силови уредби',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1783,'Моторист, куриер',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1784,'Моторист, моряк',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1785,'Моторист, моторен трион и минилебедка / дърводобив',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (1786,'Мотоциклетист',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1787,'Мотоциклетист, разносна търговия',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1788,'Музикален аранжьор',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1789,'Музикален оформител',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1790,'Музикален продуцент',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1791,'Музикален ръководител',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1793,'Музикант, инструментист',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1794,'Музикант, певец',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1795,'Музикант, певец /с основно и по-ниско образование/',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (1796,'Музиковед',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1797,'Музиколог',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1798,'Мънач',7431);
INSERT INTO `natc_clasifikator_prof` VALUES (1799,'Мюфтия',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (1801,'Наборен военнослужащ / Въоръжени сили',2);
INSERT INTO `natc_clasifikator_prof` VALUES (1802,'Наборчик / полиграфия',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1803,'Навивач',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1804,'Навивач на бобини',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (1805,'Навивач на скоби за траверси / дървообработване',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (1807,'Навивач на фурнир / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (1809,'Навигационен инспектор / водeн транспорт',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (1810,'Навързвач / текстилно производство',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1811,'Навързвач на основи / текстилно производство',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1812,'Нагревач на метални заготовки',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1813,'Надзорник / газопроводни магистрали',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1814,'Наносвач / воден транспорт',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (1815,'Наплавчик / металургия',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (1816,'Напульор / производство на пластмасови изделия',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1817,'Нареждач на ламели',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1818,'Нарезвач, винтове и резби / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (1819,'Народен лечител',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1820,'Народен представител',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (1821,'Наръчник (шивач на ръка) / шивашко производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1822,'Нарядник / гараж',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (1823,'Нарядчик / локомотивно депо',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (1825,'Настройчик, автоматични и полуавтоматични стругове',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1826,'Настройчик, агрегатни и специализирани машини',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1827,'Настройчик, дървообработващи машини',7429);
INSERT INTO `natc_clasifikator_prof` VALUES (1828,'Настройчик, зъбонарезни машини',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1829,'Настройчик, преси',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1830,'Настройчик, стъргателни машини',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1831,'Настройчик, шприц-апарати',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1832,'Настройчик-оператор, металорежещи машини с ЦПУ',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1833,'Научен секретар',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (1834,'Научен сътрудник I степен',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1835,'Научен сътрудник II степен',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1836,'Научен сътрудник III степен',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1837,'Началник / борса',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1839,'Началник / информационно-изчислителен център',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1840,'Началник / пласментно-снабдителна база',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1841,'Началник / посредническо бюро',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1842,'Началник / пречиствателна станция',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (1843,'Началник / проектантско бюро',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1844,'Началник влак / жп транспорт',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1846,'Началник гара (жп- V-VII категория)',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (1847,'Началник кабинет на министър-председателя',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1848,'Началник на домоуправление',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (1851,'Началник на правен отдел',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (1852,'Началник обща канцелария / висше училище',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (1853,'Началник отдел / Министерски съвет',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1854,'Началник отдел / автотранспортен',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1855,'Началник отдел / висше училище',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (1856,'Началник отдел / държавна администрация',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1858,'Началник отдел / областна администрация',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (1859,'Началник отдел / общинска администрация',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (1860,'Началник отдел / търговия на едро или дребно',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1861,'Началник отдел, АСУ',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1862,'Началник отдел, ОТКК',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1863,'Началник отдел, ТРЗ, кадри и охрана на труда',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1864,'Началник отдел, автоматизация',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1865,'Началник отдел, административен',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1866,'Началник отдел, административно-стопански',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1867,'Началник отдел, входящ контрол',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1868,'Началник отдел, външнотърговски',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1869,'Началник отдел, геолого-маркшайдерски',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1871,'Началник отдел, доставка на резервни части',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1872,'Началник отдел, енергиен',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1873,'Началник отдел, енерго-механиченен',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1874,'Началник отдел, заплащане и прогнозиране',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1876,'Началник отдел, икономически',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1878,'Началник отдел, информационен център с библиотека',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1879,'Началник отдел, информационно обслужване',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1881,'Началник отдел, капитално строителство',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1882,'Началник отдел, конструкторско-технологичен',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1884,'Началник отдел, личен състав',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1885,'Началник отдел, маркетинг и оферти',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1888,'Началник отдел, международно сътрудничество',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (1889,'Началник отдел, механизация',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1890,'Началник отдел, механичен',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1891,'Началник отдел, нови асортименти',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1894,'Началник отдел, пазарна дейност',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1895,'Началник отдел, планово-икономически',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1896,'Началник отдел, пласмент',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1898,'Началник отдел, правен',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (1899,'Началник отдел, приватизационен',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1900,'Началник отдел, производствени мощности',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1901,'Началник отдел, производство, себестойност и цени',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1903,'Началник отдел, себестойност и цени',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1904,'Началник отдел, социално-битов',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1906,'Началник отдел, телекомуникации',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1910,'Началник отдел, технически и качествен контрол',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1911,'Началник отдел, технически средства за обучение',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1912,'Началник отдел, технологичен',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1914,'Началник отдел, труд и работна заплата (ТРЗ)',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1915,'Началник отдел, труд и социално развитие',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1916,'Началник отдел, търговски',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1917,'Началник отдел, управление на качеството',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1919,'Началник отдел, управление на човешките ресурси',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1920,'Началник отдел, цени и ценообразуване',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1921,'Началник производствена група',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1922,'Началник сектор / държавна администрация',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1923,'Началник сектор / областна администрация',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (1924,'Началник сектор / общинска администрация',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (1926,'Началник управление, електрическа централа',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1927,'Началник цех / производство',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1928,'Началник, eл. захранване',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1931,'Началник, бюро за социална дейност',1155);
INSERT INTO `natc_clasifikator_prof` VALUES (1932,'Началник, външнотърговска кантора',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1933,'Началник, гараж и автосервиз / автокомплекс',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1934,'Началник, експериментално производство',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1937,'Началник, канцелария / Президентство',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1938,'Началник, митница',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (1939,'Началник, подземен обект / далекосъобщения',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1940,'Началник, пощенска станция / съобщения',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1941,'Началник, протокол / Народно събрание',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1942,'Началник, протокол / държавна администрация',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1943,'Началник, ремонтна работилница',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1944,'Началник, рудник',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1945,'Началник, склад / производство',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (1946,'Началник, смяна',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1947,'Началник, строеж',1223);
INSERT INTO `natc_clasifikator_prof` VALUES (1953,'Неврохирург',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1954,'Непоказано',999);
INSERT INTO `natc_clasifikator_prof` VALUES (1955,'Никога не работил',998);
INSERT INTO `natc_clasifikator_prof` VALUES (1958,'Нискоквалифициран работник / животновъдство',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (1959,'Нискоквалифициран работник / поливно стопанство',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (1960,'Нискоквалифициран работник / растениевъдство',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (1961,'Нискоквалифициран работник, поддържане на пътища',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (1962,'Нискоквалифициран работник, поддържане на язовири',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (1963,'Нискоквалифициран работник, сезонни битови услуги',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (1965,'Нитовчик, багерни конструкции',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1966,'Нормировчик по труда, експерт',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1967,'Нормировчик, приложен специалист',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1968,'Носач на багаж / хотел, пътническа гара',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (1969,'Нотариус',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (1970,'Нотограф',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (1971,'Нототекар',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1972,'Обгорвач / стъкларско производство',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (1973,'Обдухвач, електропорцеланови изделия',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (1974,'Обеззаразител',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1976,'Областен управител',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1977,'Облицовчик / строителство',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1979,'Обрезвач',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1980,'Обрушвач на бордове / открит рудник',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (1982,'Обслужващ погребение',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (1983,'Обслужващ работник / металургия',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1984,'Обущар, майстор ръчна изработка',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1985,'Обущар, поправка на обувки',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1986,'Обущар, театрален',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (1987,'Общ работник / добив на полезни изкопаеми',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (1988,'Общ работник / дърводобив',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (1989,'Общ работник / кантора (офис)',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (1990,'Общ работник / леярство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1991,'Общ работник / обществено хранене',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (1992,'Общ работник / производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1993,'Общ работник / склад',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (1994,'Общ работник, зареждане на конвейр / производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1996,'Общ работник, поддържане и ремонт на сгради',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (1998,'Общ работник, риболовен плавателен съд',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (1999,'Общ работник, строителство на сгради',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (2000,'Общ работник, събирач на стружки / машиностроене',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2002,'Общ работник, чистач на отходни места и бани',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2003,'Общ работник, чистач на помещения',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2004,'Овощар',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (2005,'Овцевъд (козевъд)',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2006,'Огняр',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2007,'Огняр, парен котел / производство на топлоенергия',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2008,'Одитор',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (2009,'Озеленител, парк',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (2010,'Окачествител / добив на полезни изкопаеми',7116);
INSERT INTO `natc_clasifikator_prof` VALUES (2011,'Окачествител / шивашко производство',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (2012,'Окачествител на прежди / текстилно производство',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2013,'Окачествител на яйца (овоскопист)',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2014,'Окачествител, ФОМ / дървообработване',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (2015,'Окачествител, изсушен тютюн',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2016,'Окачествител, конфекция / шивашко производство',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (2017,'Окачествител, плетиво',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2019,'Окачествител, сертификати',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2021,'Окачествител, сортиран тютюн',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2022,'Окачествител, строителна керамика',7323);
INSERT INTO `natc_clasifikator_prof` VALUES (2025,'Окачествител, тъкани / текстилно производство',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (2026,'Океанограф',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2027,'Окръжен прокурор',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2028,'Оксиженист',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2029,'Оксиженист-газозаварчик',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2030,'Окултист',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (2031,'Опаковчик',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2032,'Оператор / атомна електроцентрала (АЕЦ)',3117);
INSERT INTO `natc_clasifikator_prof` VALUES (2033,'Оператор / далекосъобщения',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2034,'Оператор / добив на скални материали',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2035,'Оператор / жп транспорт',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (2036,'Оператор / кожарско производство',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2037,'Оператор / компютърна обработка на информацията',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2038,'Оператор / нефтопреработване',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2039,'Оператор / порцеланово-фаянсово производство',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2040,'Оператор / прахова металургия',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (2041,'Оператор / пречиствателна подстанция',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2044,'Оператор / производство на алкохолни напитки',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2045,'Оператор / производство на безалкохолни напитки',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2046,'Оператор / производство на бензини',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2048,'Оператор / производство на бира',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2049,'Оператор / производство на бяла захар',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2050,'Оператор / производство на вар',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2051,'Оператор / производство на водороден газ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2052,'Оператор / производство на въгледвуокис',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2053,'Оператор / производство на глицерин',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2054,'Оператор / производство на дървесни плоскости',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2055,'Оператор / производство на експлозивни материали',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2056,'Оператор / производство на електровакуумни изделия',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2057,'Оператор / производство на електронни елементи',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2059,'Оператор / производство на емайли и летливи лакове',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2062,'Оператор / производство на изкуствени кожи',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2064,'Оператор / производство на каучукови изделия',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2065,'Оператор / производство на кондензатори',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (2067,'Оператор / производство на лед',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (2068,'Оператор / производство на лимонена киселина',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2069,'Оператор / производство на линолеум',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2070,'Оператор / производство на мастила и туш',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2071,'Оператор / производство на мая за хляб',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2072,'Оператор / производство на миещи продукти',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2073,'Оператор / производство на нетъкан текстил',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2074,'Оператор / производство на нишесте и гликоза',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2075,'Оператор / производство на обувки',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (2076,'Оператор / производство на парафини',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2077,'Оператор / производство на пектин',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (2078,'Оператор / производство на пластмасови изделия',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2080,'Оператор / производство на промишлени диаманти',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (2081,'Оператор / производство на смазки и моторни масла',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2082,'Оператор / производство на сокове',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (2084,'Оператор / производство на стъкларски изделия',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2085,'Оператор / производство на сух лед',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2086,'Оператор / производство на торове, пестициди',8157);
INSERT INTO `natc_clasifikator_prof` VALUES (2087,'Оператор / производство на туткал',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2088,'Оператор / производство на фойерверки',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2089,'Оператор / производство на фотографска хартия',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2090,'Оператор / производство на фотографски плаки',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2092,'Оператор / производство на халогенен газ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2093,'Оператор / производство на хартиени изделия',8145);
INSERT INTO `natc_clasifikator_prof` VALUES (2094,'Оператор / производство на хартия и картон',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2097,'Оператор / производство на хлорен газ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2098,'Оператор / производство на целулоза',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2099,'Оператор / производство на цимент',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2100,'Оператор / радиопредавател',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2101,'Оператор / студио за звукозапис',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2102,'Оператор, ЕИМ',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2103,'Оператор, автоматизирани поточни линии',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2104,'Оператор, автоматика / бетонов център',8218);
INSERT INTO `natc_clasifikator_prof` VALUES (2105,'Оператор, агрегатни машини / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2106,'Оператор, адресираща машина / пощи и съобщения',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2107,'Оператор, асфалтосмесител',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (2109,'Оператор, бродировачна машина',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (2111,'Оператор, вентилационни съоръжения',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (2113,'Оператор, водоразпределение',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2114,'Оператор, газоразпределение',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2115,'Оператор, главно ел.табло / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2116,'Оператор, гланциране на хартия',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2119,'Оператор, допълнителна обработка на кожи',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2120,'Оператор, дървообработващи машини',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (2121,'Оператор, ел.табло \"собствени нужди\" / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2122,'Оператор, електрическа подстанция / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2123,'Оператор, електронна везна за товарни автомобили',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (2124,'Оператор, енергиен блок',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2125,'Оператор, енергийни агрегати, задвижвани от вятъра',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2126,'Оператор, затварячна машина',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2128,'Оператор, изпитване и настройка / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2129,'Оператор, изтегляне на проводници и тел',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (2130,'Оператор, импрегниране / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2135,'Оператор, инсталация термична обработка на тютюн',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2137,'Оператор, книговезки машини / полиграфия',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (2138,'Оператор, коксова батерия / коксово производство',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (2139,'Оператор, команден пулт / поточни линии',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2140,'Оператор, командно табло / ВЕЦ и ПАВЕЦ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2141,'Оператор, компютър',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2145,'Оператор, копирна машина',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (2147,'Оператор, леене на метали',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (2148,'Оператор, лепене / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2149,'Оператор, линия за бутилиране на олио',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2150,'Оператор, линия за макаронени изделия',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2151,'Оператор, литографски конвейр',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2152,'Оператор, манипулиране и ферментиране на тютюн',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2153,'Оператор, масообмен / химични процеси',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2154,'Оператор, машини  / животновъдство',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (2159,'Оператор, машини за извличане на растителни масла',8279);
INSERT INTO `natc_clasifikator_prof` VALUES (2160,'Оператор, машини за мелничарски продукти',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2162,'Оператор, машини за обработка на зърнени продукти',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2163,'Оператор, машини за обработка на фуражи',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2167,'Оператор, машини за подготовка на текстилни влакна',8261);
INSERT INTO `natc_clasifikator_prof` VALUES (2172,'Оператор, машини за производство на захар на бучки',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2174,'Оператор, машини за производство на пудра-захар',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2175,'Оператор, машини за проявяване на филми',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2179,'Оператор, медицинска апаратура',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2180,'Оператор, металообработваща машина',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2182,'Оператор, металургична пещ',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (2185,'Оператор, микроскоп',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2186,'Оператор, микрофилмова техника',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2187,'Оператор, микрофон',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2189,'Оператор, монорелсов път',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2191,'Оператор, наборни машини / полиграфия',8251);
INSERT INTO `natc_clasifikator_prof` VALUES (2192,'Оператор, обработка на азбест',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (2193,'Оператор, обработка на кожи',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2194,'Оператор, обработка на минерали',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2195,'Оператор, обработка на отпадъци',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2197,'Оператор, опаковка на течни и аерозолни препарати',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2198,'Оператор, оптични медицински апарати',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2200,'Оператор, парна инсталация / енергетика',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2201,'Оператор, парна турбина / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2202,'Оператор, печатарски конвейр',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2203,'Оператор, печатарски машини',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2205,'Оператор, плетачна машина',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (2207,'Оператор, подготовка на порцеланово-фаянсова маса',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (2208,'Оператор, подготовка на стъклена маса',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (2209,'Оператор, подстанция / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2211,'Оператор, пощенски / съобщения',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2212,'Оператор, предачни машини / текстилно производство',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2213,'Оператор, предпечатна подготовка',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2214,'Оператор, преработване на природен газ',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2215,'Оператор, промиване на минерали',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2217,'Оператор, пропарване / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2218,'Оператор, пулт / обогатяване на полезни изкопаеми',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (2220,'Оператор, пулт на поточна линия',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2221,'Оператор, пълнене и запойка на ампули',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2222,'Оператор, първична обработка на дърво',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (2223,'Оператор, първична обработка на метали',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2224,'Оператор, радиодиагностични апарати',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2225,'Оператор, разпределение на електроенергия',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2226,'Оператор, разцепване на скални материали',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2227,'Оператор, рафиниране на нефт',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2228,'Оператор, роботизирани линии',8172);
INSERT INTO `natc_clasifikator_prof` VALUES (2229,'Оператор, рязане на скални материали',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2230,'Оператор, смеси / производство на кибрит',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2233,'Оператор, спомагателни съоръжения / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2237,'Оператор, сушене / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2240,'Оператор, съединяване на хартия',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2243,'Оператор, текстопредаващи апарати',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2244,'Оператор, телевизионна камера',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2245,'Оператор, телекс',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2246,'Оператор, телефотоапаратура',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2249,'Оператор, термична обработка на горивата',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (2250,'Оператор, технологичен пулт / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2253,'Оператор, транспортиране под налягане на газове',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2256,'Оператор, трошене на скални материали и минерали',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2257,'Оператор, тъкачни машини',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (2258,'Оператор, ултразвукова техника',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2260,'Оператор, факсимилна машина',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2261,'Оператор, филмова камера',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2264,'Оператор, фино сатиниране  на хартия',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2265,'Оператор, флаер-машина / текстилно производство',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2266,'Оператор, хидрогрупа / ВЕЦ и ПАВЕЦ',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2267,'Оператор, химичен контрол / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2268,'Оператор, химическа обработка на кожи',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2269,'Оператор, химическа обработка на повърхности',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (2271,'Оператор, химическо смилане и смесване',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (2272,'Оператор, химично филтриране',8153);
INSERT INTO `natc_clasifikator_prof` VALUES (2273,'Оператор, целогумен агрегат / химични процеси',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2274,'Оператор, централна компресорна станция',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2278,'Оператор, щавене на кожи',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2279,'Оператор-координатор / конвейрна система',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2280,'Оператор-радист, морзов код',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2281,'Описвач / спортен тотализатор',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (2282,'Оповестител, говорител по радиоуредба',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2283,'Определител на копирни светлини',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2284,'Оптик',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (2285,'Оптометрист',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (2286,'Организатор / дом на културата',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2287,'Организатор / задгранично дружество',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (2288,'Организатор / производство',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (2290,'Организатор / производство прецизна апаратура',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (2294,'Организатор / ремонт на МПС',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2295,'Организатор / строителство',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (2296,'Организатор / технически ремонт и поддържане',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2297,'Организатор / читалище',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2298,'Организатор технически, абонамент / пощи',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2299,'Организатор, ТРЗ',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (2300,'Организатор, валутни и кредитни въпроси',3419);
INSERT INTO `natc_clasifikator_prof` VALUES (2301,'Организатор, доставка на възли и детайли',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2302,'Организатор, експлоатация / транспорт',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (2304,'Организатор, звукови ефекти',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2305,'Организатор, изкупуване',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2306,'Организатор, информационно обслужване',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (2307,'Организатор, ишлеме',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2308,'Организатор, капитално строителство',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2310,'Организатор, консултантска дейност',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2311,'Организатор, координационен контрол',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2312,'Организатор, културни прояви',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (2314,'Организатор, международни връзки',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2317,'Организатор, оперативно управление и контрол',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2318,'Организатор, пласмент и реализация',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2319,'Организатор, протокол',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2320,'Организатор, пътуване',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2321,'Организатор, развитие и внедряване',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (2322,'Организатор, светлинни ефекти',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2323,'Организатор, снимачна продукция',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2324,'Организатор, социално-битови въпроси',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2326,'Организатор, събиране на вземания',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2327,'Организатор, техническа експлоатация на МПС',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2329,'Организатор, търгове -  цени и ефективност',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2330,'Организатор, търговска дейност',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2331,'Организатор, учебна дейност',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2332,'Организатор, физкултура',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (2333,'Организатор, хигиена',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (2334,'Организатор, чистота на обществени места',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2335,'Оризопроизводител',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2336,'Оркестратор',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (2337,'Орнитолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2338,'Ортопед и травматолог',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (2339,'Ортопедичен техник',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (2340,'Осветител',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2341,'Осеменител',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2342,'Осигурител',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (2344,'Отвръщач на изделия от метал / металургия',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (2346,'Отговорен лаборант / производство',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (2347,'Отговорен редактор',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (2348,'Отговорен секретар / редакция',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (2349,'Отговорен секретар / синдикат',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2350,'Отговорник / взривен склад',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (2351,'Отговорник / електроработилница',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (2353,'Отговорник / порцеланово-фаянсово производство',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (2354,'Отговорник / почивна база',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (2355,'Отговорник / производство на строителна керамика',7323);
INSERT INTO `natc_clasifikator_prof` VALUES (2356,'Отговорник / работническо общежитие',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (2357,'Отговорник, ателие / културни институции',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (2360,'Отговорник, информационно обслужване',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2361,'Отговорник, качество / производство',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2362,'Отговорник, книжарница',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2363,'Отговорник, ловна дружинка',6154);
INSERT INTO `natc_clasifikator_prof` VALUES (2364,'Отговорник, научна апаратура',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (2366,'Отговорник, претоварна база',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (2367,'Отговорник, радиационна безопасност',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (2369,'Отговорник, строително-ремонтни работи',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2370,'Отливар / стъкларско производство',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2371,'Отливар на кукли за флехт машина, текстилни машини',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (2372,'Отчетник',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2373,'Отчетник / автосервиз',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (2374,'Отчетник ценни образци / автомобилен транспорт',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (2375,'Отчетник, изчислител на грешки / полиграфия',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (2376,'Офицер / Българска армия (отбрана)',1);
INSERT INTO `natc_clasifikator_prof` VALUES (2377,'Офицер / Въоръжени сили',1);
INSERT INTO `natc_clasifikator_prof` VALUES (2378,'Офортист-печатар / полиграфия',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (2379,'Охранител',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2381,'Охранител, невъоръжен',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2382,'Оценител на обект за приватизация',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2383,'Оценител на тютюн',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2384,'Оценител, застрахователни загуби',3419);
INSERT INTO `natc_clasifikator_prof` VALUES (2385,'Оценител, търгове',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2386,'Павьор',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (2387,'Пазач, въоръжена охрана',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2388,'Пазач, музеи / култура',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2389,'Пазач, невъоръжена охрана',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2390,'Пазач, охрана на предприятие',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2391,'Пазач, паркинг',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2392,'Пазач, училище / образование',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2393,'Пазител на ценности / банков трезор',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (2394,'Пакетировач',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2395,'Палеонтолог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2396,'Палубен боцман',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (2397,'Паразитолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2398,'Паразитолог, ветеринарен',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (2399,'Парафинист',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (2400,'Парафиньор / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2401,'Паркетчия / строителство',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (2402,'Парламентарен секретар / Министерски съвет',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (2403,'Паспортист',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (2404,'Пастир / животновъдство',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (2405,'Пастировчик на плочи / производство на акумулатори',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2406,'Пастор',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (2407,'Патентен експерт',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (2408,'Патентовед',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (2409,'Патолог, ветеринарен лекар',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (2410,'Патолог-биолог, животни, растения',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2411,'Патриарх',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (2412,'Патрул, плажен',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (2413,'Певец, народни песни',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (2414,'Педагог / обединен детски комплекс (ОДЗ)',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (2415,'Педагог / частна практика',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (2416,'Педагогически съветник',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (2417,'Пекар / производство на кондензатори',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (2418,'Пекар / производство на строителна керамика',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (2419,'Пекар / химични процеси',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (2420,'Пекар, вар',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2422,'Пеналог',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (2424,'Перач / затвор, казарма',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (2425,'Перач / училище, болница',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (2426,'Перач на вълна / текстилно производство',7432);
INSERT INTO `natc_clasifikator_prof` VALUES (2427,'Петролог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2428,'Печатар / полиграфия',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2429,'Печатар / текстилно производство',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (2430,'Печатар машинист, зареждач / полиграфия',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2431,'Печатар машинист, събирач / полиграфия',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2432,'Печатар на копирки',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2434,'Печатар, помощник-машинист / полиграфия',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2435,'Печатар-подавач / полиграфия',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (2436,'Пещар / порцеланово-фаянсово производство',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2437,'Пещар / производство на строителна керамика',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (2438,'Пещар, металокерамични и електровъгленови изделия',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (2439,'Пиколо',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (2440,'Пилозъбчик / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2441,'Пирографист, дърводелец',7425);
INSERT INTO `natc_clasifikator_prof` VALUES (2442,'Пирометрист',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2443,'Пиротехник',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (2444,'Писател - драматург',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2445,'Писател - публицист',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2446,'Писател, техническа литература',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2447,'Плазморезач',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2448,'Плазовчик',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2449,'Плакатист',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (2450,'Плакировач, пясък / леярство',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (2451,'Плакировчик, студено валцуване / металургия',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2452,'Планински водач (гид)',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (2453,'Планински спасител',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (2454,'Плановик',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2455,'Планопазител',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (2456,'Пласьор',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2457,'Плетач и почиствач, кабелни форми',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2458,'Плетач на шелф',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2460,'Плетач, ръчно художествено плетиво',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2461,'Плетач-майстор / трикотаж',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2462,'Пломбаджия / жп транспорт',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (2463,'Погребален агент',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (2464,'Подавач, плочи за лакиране / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2468,'Подготвител, фурнирни платна / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2469,'Подреждач, пакети за обрязване / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2470,'Поет',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2471,'Пожарникар',3453);
INSERT INTO `natc_clasifikator_prof` VALUES (2472,'Полевъд / растениевъдство',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2473,'Поливач / растениевъдството',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (2474,'Полиграфист, отговорник на филиал',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (2475,'Полировач / металообработване',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (2477,'Полировач, дърводелец',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (2478,'Политолог',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (2479,'Полицай',3452);
INSERT INTO `natc_clasifikator_prof` VALUES (2480,'Помолог',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (2481,'Помощник възпитател / детска градина (детска ясла)',5131);
INSERT INTO `natc_clasifikator_prof` VALUES (2482,'Помощник готвач',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (2483,'Помощник директор / училище на бюджетна издръжка',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (2484,'Помощник епидемиолог',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (2485,'Помощник лесничей',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (2486,'Помощник локомотивен машинист / жп транспорт',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (2487,'Помощник машинист, агрегат за тютюневи бали',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2488,'Помощник оператор / производство на топлоенергия',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2489,'Помощник председател / академия',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (2490,'Помощник ректор / висше училище',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (2491,'Помощник-длъжностно лице по гражданско състояние',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (2492,'Помощник-капитан / кораб',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (2493,'Помощник-консерватор  на художествени произведения',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2494,'Помощник-началник смяна, подземен минен участък',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (2495,'Помощник-оператор на печатарски машини',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2496,'Помощник-оператор, литографски конвейр',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2497,'Помощник-режисьор',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2498,'Помощник-реставратор',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2500,'Помощник-фармацевт',3228);
INSERT INTO `natc_clasifikator_prof` VALUES (2501,'Помпиер, петролни продукти',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2502,'Портиер, жилищна сграда',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2503,'Портиер, обществена сграда',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2505,'Посредник / спорт',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2506,'Посредник, държавни поръчки',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2507,'Посредник, записи, книги / издателство',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2508,'Посредник, недвижими имоти',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (2509,'Посредник, работна сила',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (2510,'Посредник, стоки',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2511,'Посредник, транспортни услуги',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (2512,'Посредник, туристически услуги',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2513,'Посредник, търгове',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2514,'Посредник, фондова борса',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (2515,'Посредник, ценни книжа',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (2516,'Постановчик',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (2519,'Почиствач на сита и цулаги / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2520,'Почиствач, ел. възли в ултразвукова вана',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2522,'Почиствач-шмиргелист / леярство',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (2523,'Пощальон',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (2524,'Пощенски контрольор / съобщения',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2525,'Пощенски оператор / съобщения',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2526,'Пощенски служител',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2527,'Правителствен агент',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (2528,'Правителствен преводач / държавна администрация',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (2529,'Правителствен съагент / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (2530,'Преброител',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2531,'Преводач',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (2532,'Преводач със средно език. образование',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (2533,'Преводач, частна практика',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (2534,'Превозвач с лодка (лодкар)',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (2535,'Предач, БД / текстилно производство',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2537,'Предач, груби флаери / текстилно производство',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2541,'Предач, майстор',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2543,'Предач, режещи машини / текстилно производство',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2544,'Председател / Конституционен съд',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2545,'Председател / Народно събрание',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2546,'Председател / академия',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (2547,'Председател / общински съвет',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (2548,'Председател / организация на потребителите',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2549,'Председател / организация на работодатели',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2550,'Председател / политическа партия',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (2551,'Председател / спортен клуб',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (2552,'Председател / спортна организация',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (2554,'Председател / творческо сдружение',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2555,'Председател / фондация с идеална цел',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2557,'Председател на комисия / Народно събрание',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2558,'Председател на отделение / съд',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2559,'Председател поземлена комисия / община',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (2560,'Председател, Висш адвокатски съвет',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (2561,'Председател, Върховен административен съд',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2562,'Председател, Върховен касационен съд',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2563,'Председател, Върховен съд',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2565,'Председател, Патентно ведомство',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2566,'Председател, адвокатска колегия',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (2567,'Председател, държавна агенция',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2568,'Председател, държавна комисия',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2569,'Председател, надзорен съвет / дружество по ТЗ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (2570,'Председател, управителен съвет / кооперация',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (2571,'Представител / културни институции',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2572,'Представител, бизнес услуги',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2573,'Представител, продажби',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (2574,'Президент / синдикат',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2575,'Президент на Републиката',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2576,'Прелезопазач / жп транспорт',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (2577,'Пренавивач (дублирки) / текстилно производство',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2580,'Пренавивач / текстилно производство',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2582,'Преносвач',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (2583,'Преносвач товаро-разтоварач',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (2584,'Препаратор, учебни помагала',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (2585,'Преподавател / ПУЦ',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (2586,'Преподавател / университет, колеж',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (2587,'Преподавател по кормилна практика',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (2591,'Преподавател, балет',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2592,'Преподавател, изящни изкуства',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2593,'Преподавател, каменоделство',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2594,'Преподавател, машинопис',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2595,'Преподавател, музикални инструменти',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2596,'Преподавател, народни художествени занаяти',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2597,'Преподавател, народно пеене',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2598,'Преподавател, печатарство',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2599,'Преподавател, приложни изкуства',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2600,'Преподавател, работа с метали',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (2601,'Преподавател, танци',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2602,'Пресовач на модели / текстилно производство',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (2603,'Престъргвач, лагери / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2604,'Пресьор / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2606,'Пресьор, гумени и пластмасови форми / полиграфия',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2609,'Пресьор, шперплат',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2613,'Приготвител, лакове и багрила, дърводелец',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (2615,'Приготвител, сплави за акумулатори / леярство',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (2616,'Придружител',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (2617,'Придружител / природен резерват',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2618,'Придружител на инвалиди',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (2619,'Приемник-зареждач на щрипс',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2620,'Приемчик / изкупуване на селскостопански продукти',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2622,'Приемчик, снабдяване',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (2624,'Прикачвач / дърводобив',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (2625,'Припойчик',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2626,'Природолечител',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (2627,'Прислужник, личен',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (2628,'Прислужник, религиозен храм',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2629,'Прислужник, чистач / училище',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2631,'Пробивчик / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2632,'Пробовземач',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (2633,'Проверител / спортен тотализатор',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (2635,'Проверител, марки и ценни книжа',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (2636,'Прогнозист на време',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (2637,'Програмен директор / БНТ, БНР',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (2638,'Програмист, настройчик на промишлени роботи',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (2639,'Програмист, приложен специалист',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (2640,'Продавач / бензиностанция (газостанция)',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2641,'Продавач / дистрибутивна търговия',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2642,'Продавач / магазин',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2643,'Продавач / открит щанд (сергия)',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2644,'Продавач / пазар',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2646,'Продавач, демонстратор / магазин',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2647,'Продавач, дистрибутор / склад на едро',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2648,'Продавач, доставчик на стоки по каталог / търговия',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2649,'Продавач, изпълнение на поръчки по телефона',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2650,'Продавач, имоти',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (2651,'Продавач, театрални програми',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (2652,'Продавач-консултант / магазин',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2653,'Продуцент',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (2654,'Проектант инженер, електроника и автоматика',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (2655,'Проектант, компютърни системи',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (2656,'Проектант, строителен инженер',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (2658,'Производител, бубено семе',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2660,'Производител, вълна',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2661,'Производител, гъбен мицел',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (2662,'Производител, гъби',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (2663,'Производител, дървен амбалаж',7427);
INSERT INTO `natc_clasifikator_prof` VALUES (2664,'Производител, дървени въглища',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (2665,'Производител, дървени трупи',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (2666,'Производител, живи риби за разплод / рибобасейни',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (2669,'Производител, зърнени култури',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2670,'Производител, изделия от дърво',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2671,'Производител, кошничарски изделия, четки и метли',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2672,'Производител, мляко',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2673,'Производител, ориз',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2674,'Производител, посадъчен материал',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (2675,'Производител, прецизни инструменти',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (2676,'Производител, пълнени шивашки изделия',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (2677,'Производител, разсади',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (2678,'Производител, сарашки изделия',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (2679,'Производител, царевица',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2680,'Производител, яйца',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2681,'Прокорист',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2682,'Прокурор',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (2683,'Прокурор-завеждащ отдел / Главна прокуратура',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2684,'Прокурор-ръководител / апелативна прокуратура',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2685,'Промишлен психолог',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2686,'Пропарчик / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2687,'Проповедник',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (2688,'Просветител на оптични елементи',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2689,'Протирчик-хонингмашинист / металообработване',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (2690,'Професор',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (2691,'Проявител, филмови материали',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2692,'Психолог',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2693,'Психолог / здравно заведение',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2694,'Психолог / места за лишаване от свобода',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2695,'Птицевъд',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2696,'Птицевъд, инкубатор',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2698,'Пчелар',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2699,'Пълнач на варели',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2700,'Пълнач на газови запалки',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2701,'Пълнач на изолационно въже',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (2703,'Пълнач на решетки / производство на акумулатори',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2704,'Пълнач на циментовози',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2706,'Пълнач, пакетировач',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2708,'Първи асистент на сценографа',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2709,'Пътен работник',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2711,'Работник (сезонен) / животновъдство',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (2712,'Работник / бензиностанция',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2713,'Работник / дърводобив',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (2714,'Работник / зоопарк',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2715,'Работник / зъботехническа лаборатория',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2716,'Работник / изкупуване на амбалаж',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2717,'Работник / ловно стопанство',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (2718,'Работник / обществена баня',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2719,'Работник / обществена тоалетна',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2720,'Работник / панаир, стрелбище',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2721,'Работник / производство на азбестови изделия',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2726,'Работник / производство на електровакуумни изделия',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2727,'Работник / производство на живачни прекъсвачи',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2728,'Работник / производство на миканитни изделия',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2729,'Работник / производство на намотъчни изделия',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2732,'Работник / производство на пишещи изделия',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2733,'Работник / производство на пресматериали',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2734,'Работник / производство на разсади и цветя',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2737,'Работник / производство на сол от морска вода',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2740,'Работник / производството на фотосъпротивления',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2741,'Работник / ремонт на линейни газопроводи',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (2742,'Работник / риболюпилни, рибобасейни',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (2743,'Работник / сечене на монети и медали',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2744,'Работник / солодобивен район',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2745,'Работник в ателие / културни институции, телевизия',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2746,'Работник в калъпен парк / обувно производство',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (2747,'Работник в кухня / обществено хранене',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (2748,'Работник в музеи',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2751,'Работник минен, отводняване на работни места',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (2754,'Работник на ЦГА за производство на изделия от ПВЦ',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (2755,'Работник на бобинарка / текстилно производство',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2757,'Работник на машина за емблемиране, номериране',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2763,'Работник на чепкало',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2765,'Работник на шпулмашина / текстилно производство',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2767,'Работник по археологически разкопки',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2770,'Работник по изготвяне на гребени, режещи машини',7229);
INSERT INTO `natc_clasifikator_prof` VALUES (2773,'Работник по озеленяване / парково стопанство',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2777,'Работник по производство на каучукови профили',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2779,'Работник по специално фундиране / строителство',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (2781,'Работник по туристическа маркировка',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2782,'Работник по химическо чистене и гладене',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (2783,'Работник, антени за СВЧ',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (2784,'Работник, арматурни части за музикални инструменти',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2785,'Работник, ацетиленов генератор',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2786,'Работник, багрилна кухня  / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (2787,'Работник, брониране / производство на кабели',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2791,'Работник, глазиране на електропорцеланови изделия',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (2792,'Работник, гравиране на мраморни изделия',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2793,'Работник, детайли и възли за слаботокови апарати',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2794,'Работник, добив на пчелно млечице и пчелна отрова',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2796,'Работник, домашно почистване',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (2798,'Работник, допълнително обслужващи дейности',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2799,'Работник, доставка на стоки по домовете',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2800,'Работник, доставка на флотационни агрегати',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (2801,'Работник, дъбене на кожи',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2802,'Работник, дървени играчки',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2803,'Работник, дървени изделия за домашна употреба',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2805,'Работник, дървени спортни съоръжения',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2806,'Работник, дървени щипки за простиране',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2811,'Работник, запридане / текстилно производство',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2814,'Работник, зареждане на акумулатори',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2815,'Работник, зареждане със СГМ',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2816,'Работник, зареждащо устройство / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2821,'Работник, изготвяне на валчета',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (2822,'Работник, изкуствени цветя, булченски накити',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2823,'Работник, изолация на локомотивни котли',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (2824,'Работник, изработване на радиоскали',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2829,'Работник, каменообработване',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (2830,'Работник, камъшитни и кошничарски изделия',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2831,'Работник, керамични камъни за бижутерия',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2833,'Работник, кутии за музикални инструменти',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2835,'Работник, лакиране / производство на кабели',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2837,'Работник, линия за производство на хляб',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2839,'Работник, мазутно стопанство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2840,'Работник, марки / полиграфия',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2841,'Работник, мартеници',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2842,'Работник, машина - ласе / шивашко производство',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (2843,'Работник, машина за талаш / дървообработване',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (2848,'Работник, метални контейнери',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (2851,'Работник, механична обработка на пиезокварц',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2856,'Работник, монтаж на дървени детайли',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2857,'Работник, монтаж на електрически компоненти',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2858,'Работник, монтаж на електронни компоненти',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2859,'Работник, монтаж на елементи върху печатни платки',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2860,'Работник, монтаж на кожени детайли',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2861,'Работник, монтаж на механични компоненти',8281);
INSERT INTO `natc_clasifikator_prof` VALUES (2862,'Работник, монтаж на текстилни компоненти',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2863,'Работник, монтаж на хартиени компоненти',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2865,'Работник, монтьор на електрооборудване',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (2866,'Работник, набиране и събиране на магнитопроводи',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2869,'Работник, направа на бохори / солодобив',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2871,'Работник, обличане на тапицерски детайли, тапицер',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (2875,'Работник, обработка на кинофилми',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2876,'Работник, обработка на маримит / металургия',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (2877,'Работник, обработка на маринит / металургия',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2882,'Работник, обработка на скъпоценни камъни',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2886,'Работник, обслужване на драга',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2887,'Работник, обслужване на смесители / тютюн',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2889,'Работник, обслужващ атракционна дейност',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2890,'Работник, овощарство',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2892,'Работник, ортопедични апарати и съоръжения',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2893,'Работник, отчетник / строително-ремонтни работи',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2894,'Работник, оформяне на картели',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2895,'Работник, пакетиране',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2897,'Работник, пана и текстилна декорация',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (2899,'Работник, погребални дървени изделия',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2900,'Работник, подготовка на заваръчни детайли',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2901,'Работник, подготовка на карти',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2902,'Работник, подготовка на мебелни плочи',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (2903,'Работник, подготовка на сондажи за ремонт',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2909,'Работник, поддържане на музикални инструменти',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2911,'Работник, поддържане на хвостохранилище',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2912,'Работник, поддържане на хидротехнически съоръжения',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (2915,'Работник, полагане на пътни настилки',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2917,'Работник, помпена станция',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2918,'Работник, помпиер',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2919,'Работник, поставяне на скъпоценни камъни и перли',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2920,'Работник, почистване и поддържане / общежитие',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (2921,'Работник, почистване на жилки / обработка на тютюн',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2922,'Работник, почистване на машини и инсталации',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2924,'Работник, почистване на руднични канавки, площадки',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2926,'Работник, почистване на тавани и прозорци',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2927,'Работник, почистване на фасади / строителство',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (2928,'Работник, прахове и пасти за заваряване и спояване',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (2929,'Работник, предене и свилоточене',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2930,'Работник, преработка на восъчна суровина',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2931,'Работник, преработка на фенол / химични процеси',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2933,'Работник, пресьор / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2934,'Работник, пречиствателна станция',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2935,'Работник, приготвяне на електропорцеланова маса',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (2936,'Работник, приготвяне на пигменти и спектри',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2938,'Работник, приемане и предаване на МПС / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (2942,'Работник, производство и поправка на чадъри',7449);
INSERT INTO `natc_clasifikator_prof` VALUES (2946,'Работник, производство на колектори',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2947,'Работник, производство на кръвен серум',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (2948,'Работник, производство на метли',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2949,'Работник, производство на смоли / химични процеси',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2950,'Работник, пропан-бутан станция',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2951,'Работник, прослушване и презапис на фонозапис',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (2952,'Работник, протезиране',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2953,'Работник, проучвателни и земемерни работи',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2954,'Работник, пчелни кошери',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2955,'Работник, първична обработка на вълна',7432);
INSERT INTO `natc_clasifikator_prof` VALUES (2959,'Работник, разчистване на терени',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2961,'Работник, ремонт и поддъране на текстилна техника',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (2963,'Работник, ремонт на велосипеди',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2965,'Работник, ремонт на подвижен състав / жп транспорт',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (2966,'Работник, ремонт на поточни линии',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (2967,'Работник, ръчно доработване на пластмасови детайли',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2968,'Работник, ръчно обогатяване на полезни изкопаеми',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2972,'Работник, сглобяване на играчки',8286);
INSERT INTO `natc_clasifikator_prof` VALUES (2974,'Работник, сглобяване на спортни уреди',8286);
INSERT INTO `natc_clasifikator_prof` VALUES (2975,'Работник, сгъване на кутии',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2977,'Работник, силози и въглищна кула / металургия',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (2978,'Работник, ситови шаблони / полиграфия',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2979,'Работник, смазване на машини',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2980,'Работник, солен стиф',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2981,'Работник, спомагателни дейности / солодобив',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2985,'Работник, струни за музикални инструменти',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2988,'Работник, стъклопоставяне',7136);
INSERT INTO `natc_clasifikator_prof` VALUES (2989,'Работник, сувенири от дърво',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2990,'Работник, сушилно помещение',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2991,'Работник, събаряне на сгради',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (2993,'Работник, съоръжение на бент',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2996,'Работник, тестомесачна машина',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2997,'Работник, техническо редактиране / полиграфия',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (3000,'Работник, тъкане на гоблени',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3001,'Работник, ударни музикални инструменти',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (3003,'Работник, учебна работилница',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (3004,'Работник, учебни помагала - биологични модели',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3005,'Работник, учебни помагала - влажни препарати',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3006,'Работник, учебни помагала - микроскопни материали',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3007,'Работник, учебни помагала - скелети',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3008,'Работник, учебни помагала - хербарии и макети',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3010,'Работник, фиксиране и кръвопускане',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3011,'Работник, филигранна бижутерия',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (3012,'Работник, фина довършителна работа / строителство',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (3014,'Работник, формовъчни смеси / леярство',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3016,'Работник, хидротехнически съоръжения / енергетика',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (3018,'Работник, холография',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (3020,'Работник, художествено оформление на текстил',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (3022,'Работник, шепинг-машина / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3023,'Работник, шивач на бали / тютюн',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3024,'Работник-трудотерапевт',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3025,'Равин',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3026,'Радиаторджия / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3027,'Радиоастроном',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3028,'Радиомонтьор, корабен',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (3029,'Радиооператор',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3030,'Радиотелеграфист',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3031,'Радиотехник, поддържане на радиовръзка',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (3032,'Раздавач на рекламни материали',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (3033,'Раздавач, инструменти и материали, инструменталчик',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3034,'Раздробвач на ивици, стъклен воал',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (3036,'Разкройчик / машиностроене',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3037,'Разливач, цветни метали / леярство',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (3039,'Разносвач',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (3040,'Разносвач на амбалаж',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3042,'Разносвач на призовки / съд',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (3043,'Разносвач на храна / социални грижи',5133);
INSERT INTO `natc_clasifikator_prof` VALUES (3045,'Разпоредител, проверител на билети',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (3047,'Разпределител на печата / съобщения',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (3048,'Разпределител-контрольор на материали / полиграфия',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (3049,'Разсадопроизводител, зеленчуци',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3050,'Разстиловач, тапицер',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3054,'Разчетник на поръчки',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (3055,'Разчетник, поръчки / шивашко производство',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (3056,'Районен прокурор',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (3057,'Ракетострелец',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (3059,'Рамаджия / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3060,'Растениевъд, облагородяване на овощни дървета',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3061,'Растителнозащитник',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3062,'Рафиньор / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3063,'Рафиньор, благородни метали',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (3065,'Реагентчик / добив на полезни изкопаеми',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (3066,'Ревизор - счетоводител',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3067,'Ревизор по безопасността / жп транспорт',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3068,'Ревизор, материално-отговорни лица (МОЛ)',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3069,'Ревизор-вагони',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3071,'Регистратор, деловодство',4143);
INSERT INTO `natc_clasifikator_prof` VALUES (3072,'Регулировчик на двигател / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3076,'Редактор',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3077,'Редактор - стилист',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3079,'Редач',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3084,'Режисьор на балетни представления',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (3085,'Режисьор на видеосмесителен пулт',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3086,'Режисьор на монтаж',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3087,'Режисьор на музикално произведение',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (3088,'Режисьор на пулт, аудиовизия',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3089,'Режисьор, първи асистент',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3090,'Режисьор, радио',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3091,'Режисьор, театър',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3092,'Режисьор, телевизия',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3093,'Режисьор, филми',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3094,'Резач',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3095,'Резач, книговезки нож / полиграфия',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (3096,'Резач, метални листове',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (3098,'Резач, скални материали за художествена мозайка',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (3099,'Резач, циркуляр / полиграфия',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (3100,'Резбар, изделия от дърво',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (3101,'Резбошлифовчик / металообработване',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (3102,'Резервен работник / обувно производство',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (3103,'Рекламен агент',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3104,'Рекламен експерт',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (3105,'Ректор / висше училище',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3106,'Релейчик / енергетика',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (3107,'Рендосвач, дървообработване',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (3108,'Рентгенов лаборант',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (3109,'Рентгенометрист',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3110,'Репортер',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3111,'Репортер, журналист в радио',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3112,'Репортер, журналист в телевизия',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3113,'Репортер, журналист във вестник / списание /',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3114,'Репортер, криминален',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3115,'Репродуктивен фотограф / полиграфия',7344);
INSERT INTO `natc_clasifikator_prof` VALUES (3116,'Реставратор, паметници на културата',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (3117,'Реставратор, произведения на изкуството',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (3118,'Ресьораджия / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3119,'Ретушор / полиграфия',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (3120,'Ретушьор / порцеланово-фаянсово производство',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (3121,'Рехабилитатор, висше образование',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (3122,'Рехабилитатор, лечебна физкултура',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3126,'Рехабилитатор, на слуха, с полувисше образование',3333);
INSERT INTO `natc_clasifikator_prof` VALUES (3127,'Рехабилитатор, специалист по гръбначния стълб',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3128,'Рехабилитатор, сурдопедагогика',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (3129,'Рехабилитатор, терапевт',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3130,'Рехабилитатор, тифлопедагогика',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (3131,'Рехабилитатор, трудотерапия',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3132,'Рецензент',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3133,'Рибар / езерни и речни води',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3134,'Рибар / язовир',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3135,'Рибар, за консумация от домакинството',6211);
INSERT INTO `natc_clasifikator_prof` VALUES (3136,'Рибовъд',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (3137,'Риболовен надзирател',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (3138,'Риболовец / Черноморско крайбрежие',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3139,'Риболовец / океански води (риболов)',6153);
INSERT INTO `natc_clasifikator_prof` VALUES (3140,'Риболовец / река Дунав',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3141,'Риболог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3146,'Ръководител (член на ръководство) / синдикат',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (3149,'Ръководител / Червен полумесец',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3150,'Ръководител / автотранспорт',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3151,'Ръководител / банка,  застрахователно дружество',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3152,'Ръководител / борса',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3154,'Ръководител / дъщерна фирма по ТЗ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3155,'Ръководител / експедиция и складово стопанство',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3157,'Ръководител / изкупна база',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3158,'Ръководител / кооперативен пазар',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3160,'Ръководител / малко предприятие, творческо ателие',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3162,'Ръководител / междуучилищен център',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (3165,'Ръководител / организация за закрила на животните',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3166,'Ръководител / организация за човешките права',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3168,'Ръководител / петролна складова база',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3169,'Ръководител / пласментно-снабдителна база',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3170,'Ръководител / пощенска станция',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3171,'Ръководител / пречиствателна станция',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (3172,'Ръководител / програмен колектив',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3173,'Ръководител / проектантска група',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3174,'Ръководител / проектантски център',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3175,'Ръководител / проекто-програмен институт',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3176,'Ръководител / складова база',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3178,'Ръководител / транспорт, БДЖ: участък, подрайон',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3180,'Ръководител / търговска база',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3181,'Ръководител / търговски клон',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3182,'Ръководител / търговски обект',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3183,'Ръководител / универсален магазин',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3184,'Ръководител / хладилна складова база',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3185,'Ръководител / хуманитарна организация',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3187,'Ръководител база / горско, рибно стопанство',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3188,'Ръководител движение / автогара',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3189,'Ръководител движение / жп транспорт',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (3190,'Ръководител департамент / висше училище',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3191,'Ръководител катедра / висше училище',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3193,'Ръководител на група технически отдели',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3194,'Ръководител на група технологични отдели',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3195,'Ръководител на група търговски отдели',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3196,'Ръководител на екип / редакция',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3197,'Ръководител на колегия / БНТ',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (3198,'Ръководител направление, Координация и инвестиции',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3199,'Ръководител направление, Сервиз и ремонт',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3201,'Ръководител направление, изкупуване',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3202,'Ръководител направление, икономическа политика',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3204,'Ръководител направление, производствено-технически',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3205,'Ръководител направление, производство',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3206,'Ръководител направление, реклама',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3207,'Ръководител направление, транспорт и застраховки',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3209,'Ръководител обект / дърводобив',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3210,'Ръководител полети',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3211,'Ръководител постановъчна част',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3212,'Ръководител смяна / жп гара',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (3213,'Ръководител търговска експлоатация / транспорт',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (3214,'Ръководител участък / селско, горско стопанство',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3215,'Ръководител чета / жп транспорт',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3216,'Ръководител, Съвет на нотариусите',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (3217,'Ръководител, ТРЗ, кадри и охрана на труда',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (3219,'Ръководител, административно-стопански отдел',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3223,'Ръководител, договаряне',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3224,'Ръководител, европейска интеграция',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3225,'Ръководител, заведение / битови услуги',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3226,'Ръководител, звено за капитално строителство',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3227,'Ръководител, инспекторат / държавна администрация',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (3230,'Ръководител, качествен технически контрол',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3231,'Ръководител, комунални услуги',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (3232,'Ръководител, международно сътрудничество',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3233,'Ръководител, научна секция',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (3234,'Ръководител, обособено производство',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3235,'Ръководител, пазарна политика',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3236,'Ръководител, постановъчна част',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3237,'Ръководител, правен отдел',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (3238,'Ръководител, пресслужба / Президентство',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (3239,'Ръководител, производствен  участък',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3240,'Ръководител, производствен отдел',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3242,'Ръководител, ремонтна база / битови уреди',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3243,'Ръководител, творчески фонд',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3244,'Ръководител, техническо направление',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3245,'Ръководител, финансово-икономическо направление',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (3246,'Ръководител, химическа лаборатория',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3247,'Ръководител, художествено осветление и озвучаване',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3249,'Ръководител, цехова лаборатория',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3250,'Ръководни служители в ЦТЕЛК и ТЕЛК',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (3251,'Салонен управител',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (3252,'Санитар / аптека',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3253,'Санитар / ветеринарна лечебница',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3254,'Санитар / дом за социални грижи',5133);
INSERT INTO `natc_clasifikator_prof` VALUES (3255,'Санитар / здравно заведение',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3256,'Санитар / стоматология',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3257,'Санитар, домашен патронаж',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (3258,'Санитарен инспектор',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (3259,'Сапанджия',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (3260,'Сараф',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (3261,'Сарач',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (3262,'Саяджия / обувно производство',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (3263,'Свещеник',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3264,'Свещоизготвител',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3265,'Свилар / текстилно производство',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (3266,'Свиневъд',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (3267,'Сдатъчен капитан / кораб',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (3268,'Себестойчик',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3269,'Себестойчик, плановик',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3270,'Себестойчик, ценовик',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3271,'Седлар',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (3272,'Сезонен работник / горско стопанство',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (3273,'Сезонен работник, полевъдство',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (3274,'Сеизмолог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (3275,'Секач с ръчни инструменти / дърводобив',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (3276,'Секач, моторен трион и минилебедка / дърводобив',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (3277,'Секретар',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3279,'Секретар / адвокатска колегия',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3280,'Секретар / асоциация',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3281,'Секретар / община',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3282,'Секретар / съдебно-изпълнителна служба',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3283,'Секретар на военно аташе',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (3284,'Секретар на изпълнителния директор',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3285,'Секретар на комисия / Народно събрание',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3286,'Секретар на ректор',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3288,'Секретар поземлена комисия / община',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3289,'Секретар, кметство (район)',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3290,'Секретар, проучване на информационна работа',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (3291,'Секретар-касиер в учебно заведение',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3292,'Секретар-координатор',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3293,'Секретар-протоколист',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3294,'Секционен майстор / текстилно производство',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3295,'Секционен майстор / шивашко производство',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (3298,'Секционен майстор, предачни машини',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (3299,'Секционен майстор, тъкачни машини',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3300,'Селекционер, животновъд',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3301,'Селекционер, кръстосани животни',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3302,'Селекционер, растениевъд',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3304,'Семантик',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3305,'Семасиолог',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3306,'Семеберач, семесъбирач',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (3307,'Семедобивник',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3308,'Сенситометрист',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3309,'Сервизен работник, рекламации на мебели и дограма',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (3310,'Сервитьор',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (3311,'Сержант / Въоръжени сили',1);
INSERT INTO `natc_clasifikator_prof` VALUES (3312,'Сернировач / хранително-вкусова промишленост',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3313,'Серум-продуцент',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3314,'Сестра, медицинска',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (3315,'Сеяч, метални прахове и смеси / прахова металургия',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (3316,'Сигналист-маневрист / жп транспорт',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3317,'Сигналист-маневрист / подземен добив',8112);
INSERT INTO `natc_clasifikator_prof` VALUES (3318,'Сигналист-охранител / жп транспорт',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (3319,'Силажьор / хранително-вкусова промишленост',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (3320,'Синдик',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3322,'Сиропчия / хранително-вкусова промишленост',7412);
INSERT INTO `natc_clasifikator_prof` VALUES (3323,'Систем-администратор',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (3324,'Систем-оператор, ЕИМ',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (3325,'Систем-организатор, ефективност на системите',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3326,'Систем-организатор, ефективност на търговията',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (3327,'Систем-програмист, база данни',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3328,'Систем-програмист, комуникации',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3329,'Систем-програмист, производствени системи и роботи',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3330,'Ситопечатар / полиграфия',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (3331,'Складов управител',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3332,'Скробвач / текстилно производство',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (3333,'Скулптор',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (3334,'Сладкар / обществено хранене',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (3335,'Следовател',2425);
INSERT INTO `natc_clasifikator_prof` VALUES (3336,'Словослагател / полиграфия',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (3337,'Служител / читалище',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3338,'Служител МВР - общи служби',3454);
INSERT INTO `natc_clasifikator_prof` VALUES (3339,'Служител МВР - специални служби',3459);
INSERT INTO `natc_clasifikator_prof` VALUES (3341,'Служител, държавен апарат / национална сигурност',3451);
INSERT INTO `natc_clasifikator_prof` VALUES (3344,'Смесител на влакна / текстилно производство',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (3345,'Смоловар / дървообработване',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (3346,'Смоляр',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (3347,'Снабдител',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (3348,'Сновач / текстилно производство',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3349,'Солар на риба / хранително-вкусова промишленост',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3350,'Солист, балетист',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (3351,'Солист, концертиращ артист',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (3352,'Солодобивчик',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (3353,'Сондьор',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (3354,'Сортировач',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3355,'Сортировач / полиграфия',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3356,'Сортировач и опаковчик, метален амбалаж',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (3357,'Сортировач на тютюн',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3358,'Сортировач, билки',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (3359,'Софтуерист, анализ на системи',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3360,'Софтуерист, приложен специалист',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3361,'Социален консултант',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3362,'Социален работник SOS помощник-майка',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3363,'Социален работник SOS-майка',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3364,'Социален работник, експерт',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3365,'Социален работник, криминолог',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3366,'Социален работник, пенолог',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3367,'Социален работник, специалист',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3368,'Социолог, научен работник',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3369,'Социолог, производствен',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3370,'Социолог, проучване на общественото мнение',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3371,'Социолог, социална патология',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3372,'Спасител минен, обект и аварийна база',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (3373,'Спасител на плаж',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (3374,'Спедитор',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (3375,'Специалист / Бюро по труда',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3376,'Специалист / Главна дирекция',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3377,'Специалист / Министерство на отбраната',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3378,'Специалист / Териториално статистическо бюро',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3379,'Специалист / водно-отпадъчно стопанство',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3381,'Специалист / данъчна администрация',3446);
INSERT INTO `natc_clasifikator_prof` VALUES (3382,'Специалист / държавна администрация',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3383,'Специалист / ефективно използване на материалите',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3384,'Специалист / извънкласна и извънучилищна дейност',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3385,'Специалист / импресарска къща',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3386,'Специалист / митнически пункт',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3387,'Специалист / митническо бюро',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3388,'Специалист / монтажно-ремонтни работи',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3389,'Специалист / областна администрация',3443);
INSERT INTO `natc_clasifikator_prof` VALUES (3390,'Специалист / общинска администрация',3444);
INSERT INTO `natc_clasifikator_prof` VALUES (3392,'Специалист / пресслужба',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (3394,'Специалист / социални дейности',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3395,'Специалист / социално подпомагане и ориентиране',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3396,'Специалист / телекомуникации',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3397,'Специалист / ученическа спортна школа',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3399,'Специалист, автоматизирани производствени системи',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3401,'Специалист, базопасност на труда',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (3402,'Специалист, доброволно осигуряване',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (3404,'Специалист, държавни поръчки',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3405,'Специалист, задължително социално осигуряване',3449);
INSERT INTO `natc_clasifikator_prof` VALUES (3406,'Специалист, здравно осигуряване',3449);
INSERT INTO `natc_clasifikator_prof` VALUES (3407,'Специалист, информационни технологии',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3408,'Специалист, каталожна търговия',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3409,'Специалист, качество на продукцията',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3411,'Специалист, компютърна мрежа',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3412,'Специалист, контрольор',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3413,'Специалист, кореспондент',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3414,'Специалист, маркетинг, оферти и цени',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3415,'Специалист, научна апаратура',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (3416,'Специалист, недвижими имоти',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (3417,'Специалист, организатор по реклама',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3418,'Специалист, организиране на продажбите',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3419,'Специалист, отчетник',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3420,'Специалист, охрана на труда',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (3421,'Специалист, пожарна безопасност / производство',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (3422,'Специалист, полиграфист',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3423,'Специалист, почистване на водите и въздуха',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3424,'Специалист, прецизна техника',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (3426,'Специалист, статистическа информация',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3427,'Специалист, столово хранене и здравеопазване',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (3428,'Специалист, строително-ремонтни работи',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3429,'Специалист, счетоводни консултации',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3430,'Специалист, сътрудник в личен състав',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3431,'Специалист, сътрудник по финанси',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3432,'Специалист, тарифиране',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (3433,'Специалист, труд и работна заплата',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3434,'Специалист, туристически услуги',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (3435,'Специалист, търговска дейност',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3436,'Специалист, управление на персонала',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3437,'Специалист, учебна техника',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3438,'Специалист, филолог',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3439,'Специалист, финанасов отчет и анализ',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3441,'Специалист-секретар',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3442,'Специалист-стенограф / Народно събрание',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (3443,'Спирач / жп транспорт',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3444,'Спойвач, пластмасови изделия',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (3446,'Спортен инструктор',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3447,'Спортен методист',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3448,'Стажант-адвокат',2421);
INSERT INTO `natc_clasifikator_prof` VALUES (3449,'Стажант-артист',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (3450,'Стандартизатор',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (3451,'Стартьор / въздушeн транспорт',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3452,'Старша акушерка',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (3453,'Старша медицинска сестра',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (3454,'Старша стюардеса (стюард) / въздушен транспорт',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (3455,'Старши асистент',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (3456,'Старши експерт / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3457,'Старши експерт / областна администрация',2473);
INSERT INTO `natc_clasifikator_prof` VALUES (3458,'Старши експерт / общинска администрация',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3459,'Старши жп работник',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (3460,'Старши инспектор / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3461,'Старши инспектор по труда',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (3462,'Старши лекар / здравно заведение',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (3463,'Старши медицински лаборант',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (3464,'Старши митнически инспектор',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3465,'Старши научен сътрудник I степен',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (3466,'Старши научен сътрудник II степен',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (3467,'Старши преподавател / университет, колеж',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (3469,'Старши резервен работник / шивашко производство',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (3470,'Старши рентгенов лаборант',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (3471,'Старши рехабилитатор, терапевт',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3472,'Старши специалист / държавна администрация',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3473,'Старши счетоводител / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3474,'Старши счетоводител / общинска администрация',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3475,'Старши съветник / Министерски съвет',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3476,'Старши съдебен инспектор',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (3477,'Старши тъкач / текстилно производство',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3478,'Старши учител',2321);
INSERT INTO `natc_clasifikator_prof` VALUES (3479,'Старши финансов ревизор / държавна администрация',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (3480,'Старши юристконсулт',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (3481,'Старши юристконсулт / държавна администрация',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3482,'Старши юристконсулт / общинска администрация',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3483,'Старши-помощник капитан / плавателен съд',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (3484,'Старшина на шлеп',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (3485,'Статистик',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3486,'Статистик, икономическа статистика',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3487,'Статистик, математическа статистика',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3488,'Статистик, медицинска статистика',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3489,'Статистик, приложен специалист',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3490,'Статистик, точни науки',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3491,'Статистик-отчетник',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (3492,'Стенограф',4111);
INSERT INTO `natc_clasifikator_prof` VALUES (3493,'Стенограф-машинописец',4111);
INSERT INTO `natc_clasifikator_prof` VALUES (3494,'Стереотипер / полиграфия',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (3495,'Стифадор / въздушeн транспорт',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (3496,'Стифор / хранително-вкусова промишленост',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (3497,'Стоковед, материално отговорно лице',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3498,'Стомановар / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3499,'Стоматолог',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3500,'Стоматолог / частна практика',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3501,'Стоматолог, детски',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3502,'Стоматолог, ортодонт',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3503,'Стоматолог, ортопед',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3504,'Стоматолог, терапевт',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3505,'Стоматолог, хирург',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3506,'Стратиграф',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (3507,'Стрелочник / жп транспорт',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3508,'Стригач на плат / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (3509,'Стригач на плат / текстилно производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3510,'Строител - монтажник, стоманобетонови конструкции',7126);
INSERT INTO `natc_clasifikator_prof` VALUES (3512,'Строител, довършителни работи',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (3513,'Строител, зидаромазач',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (3514,'Строител, кофражист',7122);
INSERT INTO `natc_clasifikator_prof` VALUES (3515,'Строител, огнеопорна зидария',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (3516,'Строител, подови настилки',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3517,'Строител, стенни облицовки',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3518,'Строител, съобщителни съоръжения',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (3519,'Строителен бояджия',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (3520,'Строителен импрегнатор',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (3521,'Строителен инженер',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3523,'Строителен инженер / частна практика',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3524,'Строителен инженер, норми и нормативи',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3525,'Строителен инженер, поддръжка на сгради',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3526,'Строителен инженер, проектант',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3528,'Строителен тенекеджия',7135);
INSERT INTO `natc_clasifikator_prof` VALUES (3529,'Строителен техник',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3530,'Строителен техник / частна практика',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3531,'Строителен техник, проектант',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3532,'Стругар / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3533,'Стругар, дърво / дървообработване',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (3534,'Стругар, каменоделство',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (3535,'Стругар, керамика',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (3536,'Стъклар (остъклител) / строителство',7136);
INSERT INTO `natc_clasifikator_prof` VALUES (3537,'Стъклар / производство на осветителни тела',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (3538,'Стъкломияч (фасада на сграда)',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (3540,'Стъргалчик',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3541,'Стъргалчик, хобелист / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3542,'Стъргалчик, шепингар / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3543,'Стюард, влак / жп транспорт',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (3544,'Стюардеса (стюард) / въздушен транспорт',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (3545,'Сулфитьор / хранително-вкусова промишленост',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3546,'Суфльор',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3547,'Сушар / порцеланово-фаянсово производство',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (3548,'Сушар / производство на азбестови изделия',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (3550,'Сушилчик',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3551,'Сценарист',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3552,'Сценичен работник',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3553,'Сценограф',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (3554,'Счетоводител - аналитик',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3555,'Счетоводител - ревизор',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3556,'Счетоводител / частна практика',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3557,'Счетоводител бюджетни приходи',3446);
INSERT INTO `natc_clasifikator_prof` VALUES (3558,'Счетоводител, втора степен',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3559,'Счетоводител, компютърно счетоводство',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3560,'Счетоводител, одиторски контрол',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3561,'Счетоводител, приложен специалист',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3562,'Счетоводител, първа степен',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3563,'Счетоводител-изчислител',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3564,'Събаряч на сгради и съоръжения / строителство',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (3565,'Събирач на дългове',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (3566,'Събирач на облози, залагания / бингозала',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (3567,'Събирач на облози, писане на билети',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (3568,'Събирач на отпадъци хартиени, метални и други',9161);
INSERT INTO `natc_clasifikator_prof` VALUES (3569,'Събирач на пожертвования (милостиня)',9155);
INSERT INTO `natc_clasifikator_prof` VALUES (3570,'Събирач на сено',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (3571,'Събирач на смет',9161);
INSERT INTO `natc_clasifikator_prof` VALUES (3573,'Събирач, книговезец / полиграфия',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (3574,'Събирач, миди водорасли (аквакултури)',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (3575,'Съветник / Министерски съвет',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3576,'Съветник / политическа партия',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (3578,'Съветник по методи на обучение',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (3579,'Съветник, горско стопанство',3214);
INSERT INTO `natc_clasifikator_prof` VALUES (3580,'Съветник, земеделие',3214);
INSERT INTO `natc_clasifikator_prof` VALUES (3581,'Съветник, икономика',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (3582,'Съветник, професионална кариера',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (3583,'Съветник, професионално ориентиране',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (3584,'Съветник, семеен',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (3585,'Съветник, студентски труд',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (3586,'Съдебен (арбитражен) секретар',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3587,'Съдебен архивист, документатор',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (3588,'Съдебен информатор',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (3589,'Съдебен статистик',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (3590,'Съдия',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (3591,'Съдия, спортен',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (3592,'Съдия-изпълнител',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (3593,'Съдържател на волиера (пойни и декоративни птици)',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3594,'Съдържател на кучкарник',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3595,'Съдържател на резерват за екзотични животни',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3596,'Сърцар-формовчик / леярство',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3597,'Съставител на издания',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3598,'Състезател / спорт',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (3599,'Сътрудник / дипломатическо представителство',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (3600,'Сътрудник / редакция, издателство',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (3601,'Сътрудник на директор',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3602,'Сътрудник, експертен / Министерски съвет',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3603,'Сътрудник, издаване на паспорти',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3604,'Сътрудник, имиграционен',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3605,'Сътрудник, работа с младежи',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3606,'Сътрудник, социална помощ',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3607,'Сътрудник, технически / Министерски съвет',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (3608,'ТТ-контрольор',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3609,'ТТ-оператор',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3610,'Табелчик',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (3611,'Таксономист, животни, растения',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3612,'Талиман / воден транспорт',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (3614,'Танцьор, състезателни танци',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (3615,'Тапетаджия, строителен бояджия',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (3616,'Тапицер',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3617,'Тапицер, дърводелец',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3618,'Тапицер, театрален',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3619,'Тарифьор / автомобилен транспорт',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3620,'Тарифьор / жп транспорт',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (3621,'Татуировчик',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (3622,'Тахографчик',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3623,'Театрален гардеробиер',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3624,'Театрален гримьор',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3625,'Театрален дърводелец',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3626,'Театрален железар',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3627,'Театрален обущар',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3628,'Театрален реквизитор',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3629,'Театрален тапицер',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3630,'Театрален шивач',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3631,'Театър-майстор',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3632,'Текелажник',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (3633,'Текстилен бояджия / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (3634,'Телевизионен оператор',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3635,'Телеграфист',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3636,'Телефонен-телеграфен контрольор',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3637,'Телефонен-телеграфен оператор',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3638,'Телефонист / държавна администрация',4223);
INSERT INTO `natc_clasifikator_prof` VALUES (3639,'Телефонист, разпределителни комутационни табла',4223);
INSERT INTO `natc_clasifikator_prof` VALUES (3640,'Телохранител',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (3641,'Телферист',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (3642,'Темперовчик на отливки / металургия',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (3643,'Тенекеджия / машиностроене',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3644,'Тенекеджия / строителство',7135);
INSERT INTO `natc_clasifikator_prof` VALUES (3645,'Тенекеджия на МПС / автосервиз',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3646,'Теолог',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3647,'Термист / металургия',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (3648,'Термист, абразивни и диамантни изделия',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (3650,'Термографчик',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3651,'Тефлонизатор / производство на обувки',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (3652,'Техник / автоматизирани производствени системи',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3653,'Техник / далекосъобщителна техника',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3654,'Техник / дълбоко нефтено сондиране',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3655,'Техник / експлоатация ел.съоръжения',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3656,'Техник / експлоатация на нефтени и газови находища',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3657,'Техник / експлоатация на фонотична апаратура',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3658,'Техник / компютърни системи',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3660,'Техник / производство на музикални инструменти',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3661,'Техник / проучвателно ядково сондиране',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3663,'Техник / сигнални системи',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3664,'Техник / сондажна електромеханика',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3665,'Техник / фотолаборатория',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3666,'Техник на електрически инсталации',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3667,'Техник, агрохимия и растителна защита',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (3668,'Техник, апаратура за физиотерапия',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3669,'Техник, архитектура',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3670,'Техник, електронно-изчислителна техника (ЕИМ)',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3671,'Техник, енергомеханик',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3672,'Техник, звук-студио',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3673,'Техник, земемер',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3674,'Техник, земеустроител',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3675,'Техник, изкуствени крайници',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3676,'Техник, измервателни уреди',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3677,'Техник, изпитване, пробване на звук',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3678,'Техник, инвеститорски контрол',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3679,'Техник, качествен контрол',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3681,'Техник, лабораторни уреди',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (3682,'Техник, лесовъд',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (3683,'Техник, леярство',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3684,'Техник, машинен',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3685,'Техник, медицински апарати',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3686,'Техник, металург',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3687,'Техник, механик',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3688,'Техник, микропроцесорна техника',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3689,'Техник, минен',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3690,'Техник, минна геология',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3691,'Техник, нискочестотна техника',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3692,'Техник, озеленител',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (3693,'Техник, оптична апаратура',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3694,'Техник, ортопедия',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3695,'Техник, осветителна техника',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3696,'Техник, пожарна безопасност',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (3697,'Техник, полупроводникова техника',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3698,'Техник, програмист',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3699,'Техник, протези',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3700,'Техник, рентгенова техника',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3701,'Техник, роботи',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3702,'Техник, скенерна апаратура',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3703,'Техник, снимачна техника',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3704,'Техник, софтуер / комуникации',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3705,'Техник, софтуер / потребителски услуги',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3706,'Техник, софтуер / чертожни системи',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3707,'Техник, строителен',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3708,'Техник, топограф',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3709,'Техник, уреди за контрол на производствени процеси',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (3710,'Техник, фотографска техника',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3711,'Техник, хардуер',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3712,'Техник, хидро- и пневмотехника',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3713,'Техник, химични процеси',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3714,'Техник-винар / хранително-вкусова промишленост',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (3715,'Техник-технолог',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3717,'Техник-технолог / стъкларско производство',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3718,'Техник-технолог / хранително-вкусова промишленост',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3719,'Техник-технолог, биотехнологичен синтез',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3720,'Техник-технолог, каучук и пластмаси',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3721,'Техник-технолог, манипулиране и обработка на тютюн',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3722,'Техник-технолог, опазване на околната среда',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3723,'Техник-технолог, полимерни медицински изделия',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3724,'Техник-технолог, разходни норми',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3725,'Техник-технолог, свързващи вeщества',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3726,'Техник-технолог, силикатни технологии',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3727,'Техник-технолог, студена обработка',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3728,'Техник-технолог, топла обработка',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3729,'Техник-технолог, уредостроене',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3731,'Техник-технолог, химик',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3732,'Техник-технолог, химични влакна',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3733,'Техник-технолог, целулоза, хартия и картон',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3734,'Техник-техолог, бетон и бетонови изделия',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3735,'Технически асистент',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3736,'Технически изпълнител',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3737,'Технически организатор',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3738,'Технически организатор, вътрешноцехов транспорт',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3739,'Технически организатор, жилищно обслужване',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3740,'Технически организатор, нормировчик',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3741,'Технически организатор, подготовка кадри',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3743,'Технически организатор, съставяне на справочник',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (3745,'Технически редактор / издателство',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (3746,'Технически ръководител / горско стопанство',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3747,'Технически ръководител / строителство',1223);
INSERT INTO `natc_clasifikator_prof` VALUES (3748,'Технически секретар',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3749,'Технически сътрудник',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3750,'Технически сътрудник, личен състав',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3751,'Технически сътрудник, машинописец',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3752,'Технолог / въздушeн транспорт',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (3753,'Технолог / жп транспорт',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3754,'Технолог / кожарско и кожухарско производство',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3755,'Технолог / преработване на нефт и газ',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3756,'Технолог / производство на минерални торове',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3757,'Технолог / текстил, апретура, багрене и печатане',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3758,'Технолог, асфалтови настилки',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3759,'Технолог, база данни',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3760,'Технолог, нефтохимичен синтез',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3761,'Технолог, облекло / шивашко производство',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3762,'Технолог, особено чисти вещества',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3763,'Технолог, стандарти',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3764,'Технолог, фин органичен синтез',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3765,'Товарач на продукция',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3766,'Товаро-разтоварач',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (3767,'Токсиколог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3768,'Тонинженер',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (3769,'Тоноператор',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3770,'Тонтехник',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3771,'Топилчик / леярство',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3772,'Топитьор / порцеланово-фаянсово производство',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (3773,'Топограф, приложен специалист',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3774,'Торкретист / добив на полезни изкопаеми',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (3775,'Точилар',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (3776,'Тракторист',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3777,'Тракторист / селско стопанство',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3778,'Тракторист / строителство',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3779,'Тракторист, вишка',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (3780,'Тралмайстор',6153);
INSERT INTO `natc_clasifikator_prof` VALUES (3781,'Транжьор / хранително-вкусова промишленост',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3782,'Трасировач / машиностроене',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3783,'Треньор',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3784,'Треньор на състезателни коне',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3785,'Трети механик  / плавателен съд',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (3786,'Тровалчик',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3787,'Трудов посредник',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3788,'Трудовик',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3789,'Тръбар / машиностроене',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (3790,'Тръборезач-тръбочистач / машиностроене',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (3791,'Туроператор, приложен специалист',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (3792,'Тъкач / текстилно производство',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3793,'Тъкач, губери',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3794,'Тъкач, килимар',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3795,'Тъкач, козяци',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3797,'Тъкач, художествено изработване на тъкани',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3798,'Търговски агент',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3799,'Търговски брокер',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3800,'Търговски помощник (общ работник в търговията)',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (3801,'Търговски помощник / външнотърговска база',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3802,'Търговски представител',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3803,'Търговски пълномощник',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3804,'Търговски пътник',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3805,'Тютюнопроизводител',6112);
INSERT INTO `natc_clasifikator_prof` VALUES (3806,'Управител (малко предприятие) / ВиК',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3808,'Управител (малко предприятие) / бингозала',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3811,'Управител (малко предприятие) / горско стопанство',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3812,'Управител (малко предприятие) / детска градина',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3813,'Управител (малко предприятие) / заложна къща',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3814,'Управител (малко предприятие) / застраховане',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3815,'Управител (малко предприятие) / здравеопазване',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3816,'Управител (малко предприятие) / индустрия',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3817,'Управител (малко предприятие) / киносалон',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3818,'Управител (малко предприятие) / козметичен салон',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3820,'Управител (малко предприятие) / културни дейности',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3821,'Управител (малко предприятие) / куриерски услуги',1316);
INSERT INTO `natc_clasifikator_prof` VALUES (3822,'Управител (малко предприятие) / къмпинг',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3823,'Управител (малко предприятие) / ловно стопанство',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3824,'Управител (малко предприятие) / мотел',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3825,'Управител (малко предприятие) / обмяна на валута',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3826,'Управител (малко предприятие) / образование',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3827,'Управител (малко предприятие) / обществено хранене',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3831,'Управител (малко предприятие) / производство',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3832,'Управител (малко предприятие) / промишленост',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3836,'Управител (малко предприятие) / ресторант, стол',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3837,'Управител (малко предприятие) / рибовъдство',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3838,'Управител (малко предприятие) / риболов',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3839,'Управител (малко предприятие) / селско стопанство',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3840,'Управител (малко предприятие) / социални услуги',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3841,'Управител (малко предприятие) / спортни дейности',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3844,'Управител (малко предприятие) / строителство',1313);
INSERT INTO `natc_clasifikator_prof` VALUES (3845,'Управител (малко предприятие) / счетоводна къща',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3847,'Управител (малко предприятие) / театрален салон',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3849,'Управител (малко предприятие) / търговия на дребно',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3850,'Управител (малко предприятие) / търговия на едро',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3852,'Управител (малко предприятие) / фитнес зала',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3853,'Управител (малко предприятие) / хотел',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3855,'Управител (малко предприятие) / чистота',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3856,'Управител (малко предприятие), автогараж / услуги',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3863,'Управител (малко предприятие), сервиз МПС / услуги',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3864,'Управител / детско заведение на бюджетна издръжка',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (3865,'Управител / дружество по ТЗ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3866,'Управител / зоопарк',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3867,'Управител / общежитие',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3868,'Управител / оптичен магазин',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3869,'Управител / поликлиника на бюджетна издръжка',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (3870,'Управител / санитарен магазин',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3873,'Управител / фирмена учебна база',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3874,'Управител / хижа',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3875,'Управител на аптечен пункт / здравно заведение',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3876,'Управител на обреден дом / общинска администрация',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3877,'Управител на ученически стол',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (3878,'Управител, Българска народна банка',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (3879,'Управител, автотранспорт',1316);
INSERT INTO `natc_clasifikator_prof` VALUES (3880,'Управител, аптека',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3881,'Управител, домакин (иконом)',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3882,'Управител, етажен / хотел',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3884,'Управител, къмпинг',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3885,'Управител, магазин',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3886,'Управител, пансион, общежитие',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3887,'Управител, почивна станция',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3888,'Управител, профилакториум',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3889,'Управител, ресторант, стол',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3890,'Управител, склад',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3891,'Управител, хотел',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3892,'Управляващ база данни',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3893,'Уредник в музей (художествена галерия)',2432);
INSERT INTO `natc_clasifikator_prof` VALUES (3894,'Уредник на програма',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3895,'Училищен инспектор',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (3896,'Училищен психолог',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (3906,'Учител - възпитател с полувисше образование',3314);
INSERT INTO `natc_clasifikator_prof` VALUES (3912,'Учител с висше образование / детска градина',2341);
INSERT INTO `natc_clasifikator_prof` VALUES (3914,'Учител с висше образование / предучилищно обучение',2341);
INSERT INTO `natc_clasifikator_prof` VALUES (3960,'Учител с висше образование, спорт / средно училище',2322);
INSERT INTO `natc_clasifikator_prof` VALUES (3961,'Учител с полувисше образование / детска градина',3321);
INSERT INTO `natc_clasifikator_prof` VALUES (3971,'Учител с полувисше образование, математика',3311);
INSERT INTO `natc_clasifikator_prof` VALUES (3972,'Учител с полувисше образование, природни науки',3311);
INSERT INTO `natc_clasifikator_prof` VALUES (3974,'Учител с полувисше образование, трудово обучение',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3976,'Учител със средно образование, трудово обучение',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3978,'Учител, работа с дърво',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3979,'Файтонджия',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (3980,'Фактурист',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (3981,'Фактурист-счетоводител',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3982,'Фармаколог - токсиколог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3983,'Фармацевт',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3984,'Фармацевт - инспектор',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3986,'Фасонировач-сортировач / производство на копчета',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (3987,'Фаянсаджия / строителство',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3988,'Фелдшер, ветеринарен',3227);
INSERT INTO `natc_clasifikator_prof` VALUES (3989,'Фелдшер, хуманен',3221);
INSERT INTO `natc_clasifikator_prof` VALUES (3990,'Ферментатор / производство на тютюневи изделия',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (3992,'Фермер, растиниевъдство-животновъдство',6131);
INSERT INTO `natc_clasifikator_prof` VALUES (3993,'Феросплавчик / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3994,'Фиданкопроизводител',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (3995,'Физик',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3996,'Физик, акустик',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3997,'Физик, атомна физика',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3998,'Физик, балистик',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3999,'Физик, електричество и магнетизъм',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4000,'Физик, електроник',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4001,'Физик, механика',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4002,'Физик, молекулярна физика',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4003,'Физик, научен работник',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4004,'Физик, оптика',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4005,'Физик, приложен специалист',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4006,'Физик, теоретична физика',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4007,'Физик, термодинамика',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4008,'Физик, топлофизика',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4009,'Физик, физика на елементарните частици',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4010,'Физик, физика на полупроводниците',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4011,'Физик, физика на твърдото тяло',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4012,'Физик, хидродинамика',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4013,'Физиолог, животни, растения',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4014,'Физиотерапевт',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (4015,'Фиксатор на прежди / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (4016,'Филерист / производство на синтетични влакна',8158);
INSERT INTO `natc_clasifikator_prof` VALUES (4017,'Филигранист, бижутер',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (4018,'Филмов монтажист',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (4019,'Филмов оператор',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (4020,'Филмов разпределител',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (4021,'Филмотекар',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4022,'Филолог',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4023,'Филолог, етимолог',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4024,'Филолог, лексикограф',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4025,'Филолог, морфолог',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4026,'Филолог, научен работник',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4027,'Филолог, преводач',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (4028,'Филолог, семантик',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4029,'Филолог, фонолог',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4030,'Философ',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (4031,'Филтърджия / обогатяване на полезни изкопаеми',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (4032,'Филтърджия / хранително-вкусова промишленост',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (4033,'Финансист',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (4034,'Финансов експерт / държавна администрация',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (4035,'Финансов ревизор / държавна администрация',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (4037,'Финомеханик',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (4038,'Фирмописец',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4039,'Фитолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4040,'Флюсовар / металургия',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (4041,'Флюсодобивчик / металургия',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (4042,'Фондопазител / музей или художествена галерия',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4043,'Фонотекар',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4046,'Формовчик / порцеланово-фаянсово производство',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (4047,'Формовчик на елементи от пенополистирол',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (4048,'Формовчик на изолационни панели',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (4049,'Формовчик на каси / леярство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4050,'Формовчик на фолио / производство на кондензатори',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (4052,'Фотограметрист',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (4053,'Фотограф',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4054,'Фотограф, микрофотография',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4055,'Фотограф, мода',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4056,'Фотограф, наука',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4057,'Фотограф, полиция',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4058,'Фотограф, портретист',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4059,'Фотограф, преса',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4060,'Фотограф, производствен',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4061,'Фотограф, рекламен',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4062,'Фотограф, търговски каталози',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4063,'Фотограф-оператор',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4064,'Фотограф-репродуктор',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4065,'Фотомодел',5211);
INSERT INTO `natc_clasifikator_prof` VALUES (4066,'Фотоработник / полиграфия',7344);
INSERT INTO `natc_clasifikator_prof` VALUES (4067,'Фоторепортер',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (4068,'Фоторетушьор',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4069,'Фототекар',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4071,'Фрахтовател',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (4072,'Фрезист / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4073,'Фрезист, боргвергист / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4074,'Фрезист-монтажист на клишета / полиграфия',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4075,'Фрезокординатор / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4076,'Френолог',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (4077,'Фризьор',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (4078,'Фуражир / фуражна кухня',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (4079,'Фурнирослепвач / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4080,'Футеровчик / хранително-вкусова промишленост',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (4081,'Футеровчик, зидаромазач',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (4082,'Хамалин',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (4083,'Хардуерист, приложен специалист',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (4084,'Хелиографист',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (4086,'Хигиенист',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (4088,'Хигиенист - чистач, вагони / жп транспорт',9136);
INSERT INTO `natc_clasifikator_prof` VALUES (4089,'Хигиенист, лекарски (стоматологичен) кабинет',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (4091,'Хидро-метеорологичен наблюдател',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4092,'Хидроакустик',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (4093,'Хидробиолог',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4094,'Хидрогеолог',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (4095,'Хидрогеолог, приложен специалист',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4096,'Хидроизмервател и хидро-наблюдател',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4097,'Хидроизолаторчик / строителство',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (4098,'Хидролог',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (4099,'Хидростроител',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (4100,'Хижар',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (4101,'Химик',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4102,'Химик, аналитик',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4103,'Химик, научен работник',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4104,'Химик, неорганична химия',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4105,'Химик, органична химия',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4106,'Химик, приложен специалист',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4107,'Химик, фармацевт (индустрия)',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4108,'Химик, физикохимия',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4109,'Химик, химически контрол на качеството',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4111,'Химикалист / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4112,'Химикалист по обработка на стоманени профили',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (4114,'Хипнотизатор',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (4115,'Хиромант',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (4116,'Хирург',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (4117,'Хистолог, животни, растения',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4119,'Хлораторчик, обезарязаване на вода чрез хлориране',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (4120,'Хмелопроизводител',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (4121,'Хомеопат, семеен съветник',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (4122,'Хореограф',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (4123,'Хормайстор',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (4124,'Хромолитограф / полиграфия',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (4125,'Хронометражист',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4126,'Хронометрист',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (4127,'Хронометрист',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4128,'Художествен редактор',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (4129,'Художествен ръководител',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (4130,'Художник',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4131,'Художник, издания / редакция',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4132,'Художник, реклама',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4133,'Художник-аниматор',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4134,'Художник-изпълнител',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (4135,'Цветопроизводител',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (4136,'Ценовик, приложен специалист',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (4138,'Циркулярист / дървообработване',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (4139,'Циркулярист, разкрояване ФОМ / дървообработване',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4140,'Цитолог, животни, растения',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4141,'Часовникар',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (4143,'Чертожник',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (4144,'Четинар / хранително-вкусова промишленост',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (4145,'Четкар',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (4147,'Чистач на плат / текстилно производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4149,'Чистач, автобуси / пътнически транспорт',9136);
INSERT INTO `natc_clasifikator_prof` VALUES (4150,'Чистач, административни помещения',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4151,'Чистач, канали',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (4152,'Чистач, магазин / търговия',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4153,'Чистач, обществена зала, салон / култура',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4154,'Чистач, поддържане на ферма / животновъдство',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (4155,'Чистач, производствени и сервизни помещения',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4156,'Чистач, сняг и лед',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (4158,'Чистач, улица в населени места',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (4159,'Читалищен секретар',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (4160,'Член, Висш адвокатски съвет',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (4161,'Член, държавна комисия',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (4162,'Член, контролен съвет / кооперация',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4163,'Член, надзорен съвет / дружество по ТЗ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4164,'Член, поземлена комисия',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (4165,'Член, съвет на директорите / дружество по ТЗ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4166,'Член, управителен съвет / дружество по ТЗ',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4168,'Член-съдия / окръжен, градски, районен съд',2422);
INSERT INTO `natc_clasifikator_prof` VALUES (4169,'Член-юрист, Висш съдебен съвет',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (4170,'Шаблоногравьор / полиграфия',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4171,'Шагреньор / производство на изкуствени кожи',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (4172,'Шапкар',7443);
INSERT INTO `natc_clasifikator_prof` VALUES (4173,'Шелист / дървообработване',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (4174,'Шеф-монтажник, електронни технически системи',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (4175,'Шеф-монтажник, хидро и пневмосистеми',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (4176,'Шивач майстор, кожено облекло',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (4177,'Шивач майстор, облекло',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (4178,'Шивач на суров плат / текстилно производство',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4179,'Шивач на ширити / текстилно производство',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (4180,'Шивач, галантерия',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (4183,'Шивач, права машина / шивашко производство',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (4184,'Шивач, театрален',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (4185,'Шифровчик (кодировчик)',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (4186,'Шихтовчик / металургия',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (4187,'Шлайфист / металообработване',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (4188,'Шлайфист, дървообработване',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (4189,'Шлайфист-полировач / металообработване',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (4190,'Шлаковчик / металургия',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (4192,'Шлифовчик / стъкларско производство',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (4193,'Шлиценарезвач / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4194,'Шлосер',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4195,'Шлосер, ремонт и обличане на декели',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4196,'Шлосер, ремонт и поддържане на машини и съоръжения',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4198,'Шлосер, ремонт на техническа екипировка',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4199,'Шлосер-монтьор',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4200,'Шмиргелист',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (4202,'Шофьор / администрация',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4203,'Шофьор, автобус',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4204,'Шофьор, автокран',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4205,'Шофьор, водоноска / комунално стопанство',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4206,'Шофьор, доставка на стоки по домовете с лека кола',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4207,'Шофьор, камион над 1,5 тона',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4208,'Шофьор, лек автомобил до 9 пътнически места',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4210,'Шофьор, лека кола',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4211,'Шофьор, линейка (спешна помощ)',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4212,'Шофьор, пътнически таксиметров',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4213,'Шофьор, специален автомобил над 25 тона',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4214,'Шофьор, съчленен автобус или тролейбус',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4215,'Шофьор, тежкотоварен автомобил (TIR, КАМАЗ)',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4216,'Шофьор, товарен автомобил (вкл. таксиметров)',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4217,'Шофьор, тролейбус',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4218,'Шпакловчик / строителство',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (4219,'Шпредингист / производство на изкуствени кожи',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (4220,'Шприцьор / производство на каучукови изделия',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (4221,'Шприцьор / производство на пластмасови изделия',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (4222,'Шприцьор / стъкларско производство',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (4224,'Шрекмашинист / металообработване',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4225,'Щампьор / текстилно производство',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (4226,'Щанцьор',7223);
INSERT INTO `natc_clasifikator_prof` VALUES (4227,'Щанцьор, форми / полиграфия',7223);
INSERT INTO `natc_clasifikator_prof` VALUES (4228,'Юрганджия',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (4229,'Юрист',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (4230,'Юристконсулт',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (4231,'Ясновидец',5146);
CREATE TABLE `oblasti` (
  `Id` int(5) NOT NULL auto_increment,
  `name_oblast` varchar(30) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `oblasti` VALUES (1,'София - град');
INSERT INTO `oblasti` VALUES (2,'София');
INSERT INTO `oblasti` VALUES (3,'Пловдивска');
INSERT INTO `oblasti` VALUES (4,'Варненска');
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

INSERT INTO `person` VALUES (1,'ц?ц?ц?ц?ц?ц?','ц?ц???ц?','ц?ц?ц?',1,1,1);
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

INSERT INTO `product_nom` VALUES (1,'0010201','?? ?-?? ?????? 168',1,1,2.196,2.26,2.33,2.33,2,20,NULL);
INSERT INTO `product_nom` VALUES (2,'0010202','?? ?-?? ?????? 336??',1,1,4.536,4.675,4.82,4.82,5,20,NULL);
INSERT INTO `product_nom` VALUES (3,'0010203','?? ?-?? ?????? 160',1,1,2.196,2.318,2.39,2.39,2,20,NULL);
INSERT INTO `product_nom` VALUES (4,'0010204','?? ?-?? ?????? 320??',1,1,4.536,4.74,4.89,4.89,5,20,NULL);
INSERT INTO `product_nom` VALUES (5,'0010205','?? ?-?? ???? 143',1,1,2.196,2.26,2.33,2.33,2,20,NULL);
INSERT INTO `product_nom` VALUES (6,'0010206','?? ?-?? ???? 286??',1,1,4.536,4.675,4.82,4.82,5,20,NULL);
INSERT INTO `product_nom` VALUES (7,'0010207','?? ?-?? ?????? 202 ??????',1,1,2.916,3.01,3.1,3.1,3,20,NULL);
INSERT INTO `product_nom` VALUES (8,'0010208','?? ?-?? ?????? 361 ??????',1,1,5.28,5.432,5.6,5.6,5,20,NULL);
INSERT INTO `product_nom` VALUES (9,'0010209','?? ?????? ???? 192??',1,1,0,2.949,3.04,3.04,3,20,NULL);
INSERT INTO `product_nom` VALUES (10,'0010210','?? ?????? ???????',1,1,0,59.82,61.67,61.67,60,20,NULL);
INSERT INTO `product_nom` VALUES (11,'0010211','?? ?????? ?????',1,1,1.62,1.659,1.71,1.71,2,20,NULL);
INSERT INTO `product_nom` VALUES (12,'0010212','?? ?????? ???????',1,1,1.62,1.659,1.71,1.71,2,20,NULL);
INSERT INTO `product_nom` VALUES (13,'0010213','?? ?????? ??????',1,1,1.62,1.659,1.71,1.71,2,20,NULL);
INSERT INTO `product_nom` VALUES (14,'0010214','?? ?????? ???',1,1,1.62,1.659,1.71,1.71,2,20,NULL);
INSERT INTO `product_nom` VALUES (15,'0010215','?? ?????? ???????',1,1,1.62,1.659,1.71,1.71,2,20,NULL);
INSERT INTO `product_nom` VALUES (16,'0010216','?? ???????? ??? ? ???????',1,1,1.704,1.756,1.81,1.81,2,20,NULL);
INSERT INTO `product_nom` VALUES (17,'0010217','?? ???????? ???????',1,1,2.34,2.415,2.49,2.49,2,20,NULL);
INSERT INTO `product_nom` VALUES (18,'0010218','?? ?????? ?????? 1??',1,1,8.088,8.33,8.586,8.586,8,20,NULL);
INSERT INTO `product_nom` VALUES (19,'0010219','?? ?-?? ??????? 24??',1,1,2.196,2.26,2.33,2.33,2,20,NULL);
INSERT INTO `product_nom` VALUES (20,'0010220','?? ??????? 300??',1,1,4.536,4.675,4.82,4.82,5,20,NULL);
INSERT INTO `product_nom` VALUES (21,'0010221','?? ??????+Jacobs 3in1',1,1,0,2.318,2.39,2.39,2,20,NULL);
INSERT INTO `product_nom` VALUES (22,'0010222','?? ??????+Jacobs 3in1',1,1,0,2.26,2.33,2.33,2,20,NULL);
INSERT INTO `product_nom` VALUES (23,'0010223','?? ????+Jacobs 3in1',1,1,0,2.26,2.33,2.33,2,20,NULL);
INSERT INTO `product_nom` VALUES (24,'0010224','?? ???????+Jacobs 3in1',1,1,0,2.26,2.33,2.33,2,20,NULL);
INSERT INTO `product_nom` VALUES (25,'0010225','?? ????? ?????? 2.78??',1,1,39.216,0,40.57,40.57,0,20,NULL);
INSERT INTO `product_nom` VALUES (26,'0010226','?? ????????+Jacobs 3in1',1,1,0,2.26,2.33,2.33,2,20,NULL);
INSERT INTO `product_nom` VALUES (27,'0010227','?? ?????? ?????',1,1,1.62,1.659,1.71,1.71,2,20,NULL);
INSERT INTO `product_nom` VALUES (28,'0010228','?? ???????? 140??',1,1,2.196,2.26,2.33,2.33,2,20,NULL);
INSERT INTO `product_nom` VALUES (29,'0010400','?? ?????? ???е??? 45??',1,1,0.24,0.247,0.255,0.255,0,20,NULL);
INSERT INTO `product_nom` VALUES (30,'0010401','?? ?????? 45',1,1,0.24,0.247,0.255,0.255,0,20,NULL);
INSERT INTO `product_nom` VALUES (31,'0010402','?? ?????? ???? 45??',1,1,0.2,0,0.21,0.21,0,20,NULL);
INSERT INTO `product_nom` VALUES (32,'0010403','?? ?????? ????',1,1,0.324,0.335,0.345,0.345,0,20,NULL);
INSERT INTO `product_nom` VALUES (33,'0010404','?? ?????? ????????',1,1,0.768,0,0.8,0.8,0,20,NULL);
INSERT INTO `product_nom` VALUES (34,'0010405','?? ??????+Aroma ???????',1,1,15.3,0,15.875,15.875,0,20,NULL);
INSERT INTO `product_nom` VALUES (35,'0010406','?? ?????? 45??+????? 25??',1,1,0.244,0.247,0.255,0.255,0,20,NULL);
INSERT INTO `product_nom` VALUES (36,'0010407','?? ?????? ???е??? 45??',1,1,0,0.247,0.255,0.255,0,20,NULL);
INSERT INTO `product_nom` VALUES (37,'0010408','?? ?????? XXL ?????',1,1,0.24,0,0.25,0.25,0,20,NULL);
INSERT INTO `product_nom` VALUES (38,'0010409','?? ?????? XXL ??????',1,1,0.24,0,0.25,0.25,0,20,NULL);
INSERT INTO `product_nom` VALUES (39,'0010410','?? Wafelini',1,1,0.348,0.373,0.385,0.385,0,20,NULL);
INSERT INTO `product_nom` VALUES (40,'0010411','?? ?????? ????? ??????',1,1,23.94,0,24.88,24.88,0,20,NULL);
INSERT INTO `product_nom` VALUES (41,'0010601','?? ???? ???? ???????',1,1,0.48,0.495,0.51,0.51,0,20,NULL);
INSERT INTO `product_nom` VALUES (42,'0010602','?? ???? ???? ???????',1,1,0.48,0.495,0.51,0.51,0,20,NULL);
INSERT INTO `product_nom` VALUES (43,'0010603','?? ???? ???? ?????',1,1,0.48,0.495,0.51,0.51,0,20,NULL);
INSERT INTO `product_nom` VALUES (44,'0010604','?? ????????? ?????',1,1,0.204,0.213,0.22,0.22,0,20,NULL);
INSERT INTO `product_nom` VALUES (45,'0010605','?? ????????? ?????',1,1,0.204,0.213,0.22,0.22,0,20,NULL);
INSERT INTO `product_nom` VALUES (46,'0010700','? ???е??? 90??',1,1,0.68,0,0.715,0.715,0,20,NULL);
INSERT INTO `product_nom` VALUES (47,'0010701','? ??????? ???е??? 40??',1,1,0.36,0.378,0.39,0.39,0,20,NULL);
INSERT INTO `product_nom` VALUES (48,'0010702','? ??????? ???е??? 90??',1,1,0.732,0.757,0.78,0.78,1,20,NULL);
INSERT INTO `product_nom` VALUES (49,'0010703','? ????? ??? ???е??? 25',1,1,0.276,0.286,0.295,0.295,0,20,NULL);
INSERT INTO `product_nom` VALUES (50,'0010704','? ????? ??? 25',1,1,0,0,0.285,0.285,0,20,NULL);
INSERT INTO `product_nom` VALUES (51,'0010705','? ????? ??? ???е??? 40',1,1,0.396,0.412,0.425,0.425,0,20,NULL);
INSERT INTO `product_nom` VALUES (52,'0010706','? ????? ??????? 40',1,1,0.44,0.46,0.475,0.475,0,20,NULL);
INSERT INTO `product_nom` VALUES (53,'0010707','? ????? ??? ???е??? 10',1,1,0.888,0.92,0.945,0.945,1,20,NULL);
INSERT INTO `product_nom` VALUES (54,'0010708','? ????? Perfect ???????',1,1,1.044,1.077,1.11,1.11,1,20,NULL);
INSERT INTO `product_nom` VALUES (55,'0010709','? ????? ??????? 100',1,1,0.972,1.005,1.036,1.036,1,20,NULL);
INSERT INTO `product_nom` VALUES (56,'0010710','? ????? ????/????. 100',1,1,0.888,0.92,0.945,0.945,1,20,NULL);
INSERT INTO `product_nom` VALUES (57,'0010711','? ????? ????????? 90',1,1,0.888,0.92,0.945,0.945,1,20,NULL);
INSERT INTO `product_nom` VALUES (58,'0010712','? ????? 10 ??????',1,1,0.972,1,1.036,1.036,1,20,NULL);
INSERT INTO `product_nom` VALUES (59,'0010713','? ????? Luflee 34??',1,1,0.408,0.42,0.435,0.435,0,20,NULL);
INSERT INTO `product_nom` VALUES (60,'0010714','? ????? ???е???',1,1,1.14,1.17,1.21,1.21,1,20,NULL);
INSERT INTO `product_nom` VALUES (61,'0010715','? ????? Happy cows',1,1,1.116,0,1.15,1.15,0,20,NULL);
INSERT INTO `product_nom` VALUES (62,'0010716','? ????? ????',1,1,1.14,1.17,1.21,1.21,1,20,NULL);
INSERT INTO `product_nom` VALUES (63,'0010717','? ????? ????',1,1,1.14,1.17,1.21,1.21,1,20,NULL);
INSERT INTO `product_nom` VALUES (64,'0010718','? ????? ?????/???. ?????',1,1,1.14,1.17,1.21,1.21,1,20,NULL);
INSERT INTO `product_nom` VALUES (65,'0010719','? ????? Luflee',1,1,0.799,0.825,0.85,0.85,1,20,NULL);
INSERT INTO `product_nom` VALUES (66,'0010720','? ????? ???????',1,1,1.14,1.23,1.27,1.27,1,20,NULL);
INSERT INTO `product_nom` VALUES (67,'0010721','? ????? ????. ? ???????',1,1,1.14,1.23,1.27,1.27,1,20,NULL);
INSERT INTO `product_nom` VALUES (68,'0010722','? ????? Milkinis',1,1,1.14,1.17,1.21,1.21,1,20,NULL);
INSERT INTO `product_nom` VALUES (69,'0010723','? ????? ???? ??????',1,1,1.14,1.23,1.27,1.27,1,20,NULL);
INSERT INTO `product_nom` VALUES (70,'0010724','? ????? 300 ????.? ????.',1,1,3.24,3.327,3.43,3.43,3,20,NULL);
INSERT INTO `product_nom` VALUES (71,'0010725','? ????? 300 Knusperzauber',1,1,3.24,3.327,3.43,3.43,3,20,NULL);
INSERT INTO `product_nom` VALUES (72,'0010726','? ????? 300 Noussnugat',1,1,3.24,3.327,3.43,3.43,3,20,NULL);
INSERT INTO `product_nom` VALUES (73,'0010727','? ??е??? ?.190 ?????',1,1,1.296,1.31,1.35,1.35,1,20,NULL);
INSERT INTO `product_nom` VALUES (74,'0010728','? ??е??? ?.380 ?????',1,1,2.352,2.377,2.45,2.45,2,20,NULL);
INSERT INTO `product_nom` VALUES (75,'0010729','? ???????? ??. 35',1,1,0.48,0.499,0.515,0.515,0,20,NULL);
INSERT INTO `product_nom` VALUES (76,'0010730','? ???????? ??. 50',1,1,0.72,0.75,0.775,0.775,1,20,NULL);
INSERT INTO `product_nom` VALUES (77,'0010731','? ???????? ??. 100',1,1,1.284,1.33,1.375,1.375,1,20,NULL);
INSERT INTO `product_nom` VALUES (78,'0010732','? ???????? ??. 200',1,1,2.4,2.47,2.55,2.55,2,20,NULL);
INSERT INTO `product_nom` VALUES (79,'0010733','? ????? ??? ??????',1,1,1.212,1.33,1.37,1.37,1,20,NULL);
INSERT INTO `product_nom` VALUES (80,'0010734','? ????? 300?? ???е???',1,1,3.24,3.327,3.43,3.43,3,20,NULL);
INSERT INTO `product_nom` VALUES (81,'0010735','? ????? Spekulatius 100??',1,1,1.164,1.17,1.21,1.21,1,20,NULL);
INSERT INTO `product_nom` VALUES (82,'0010736','? ????? ???? ?????? 100??',1,1,1.14,0,1.21,1.21,0,20,NULL);
INSERT INTO `product_nom` VALUES (83,'0010737','? ????? Zimsterne 100??',1,1,1.164,1.17,1.21,1.21,1,20,NULL);
INSERT INTO `product_nom` VALUES (84,'0010738','? ????? Choco Swing 300??',1,1,0,3.3271,3.43,3.43,3,20,NULL);
INSERT INTO `product_nom` VALUES (85,'0010739','? ???????? 400??',1,1,0,5.306,5.47,5.47,5,20,NULL);
INSERT INTO `product_nom` VALUES (86,'0010742','? ????? Winter ???????',1,1,302.4,305.17,314.6,314.6,305,20,NULL);
INSERT INTO `product_nom` VALUES (87,'0010755','? ?-Joi ???е??? 70??',1,1,0,0.922,0.95,0.95,1,20,NULL);
INSERT INTO `product_nom` VALUES (88,'0010756','? M-Joi ?????? 70??',1,1,0,1.01,1.04,1.04,1,20,NULL);
INSERT INTO `product_nom` VALUES (89,'0010757','? M-Joi ??????? 70??',1,1,0,0.922,0.95,0.95,1,20,NULL);
INSERT INTO `product_nom` VALUES (90,'0010758','? M-Joj ????? 70??',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (91,'0010759','? M-Joj ???????',1,1,0,17.46,18,18,17,20,NULL);
INSERT INTO `product_nom` VALUES (92,'0010760','? ????? ?-Joi ??????? 240',1,1,0,210.59,217.1,217.1,211,20,NULL);
INSERT INTO `product_nom` VALUES (93,'0010762','? ???????? ???????',1,1,0,159.274,164.2,164.2,159,20,NULL);
INSERT INTO `product_nom` VALUES (94,'0011094','? Jacobs 2in1 20??',1,1,0,5,5.15,5.15,5,20,NULL);
INSERT INTO `product_nom` VALUES (95,'0011095','? Jacobs 3in1-360??',1,1,4.854,5,5.15,5.15,5,20,NULL);
INSERT INTO `product_nom` VALUES (96,'0011096','? Jacobs 3in1-90??',1,1,1.212,1.246,1.285,1.285,1,20,NULL);
INSERT INTO `product_nom` VALUES (97,'0011097','? ??????? ?.???????? 3??',1,1,4.059,0,4.2,4.2,0,20,NULL);
INSERT INTO `product_nom` VALUES (98,'0011098','? ??????? Jacobs 3??',1,1,4.239,0,4.4,4.4,0,20,NULL);
INSERT INTO `product_nom` VALUES (99,'0011099','? Jacobs 3?1-180??',1,1,2.424,2.4,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (100,'0011100','? ????е???? ??????',1,1,0,2.49,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (101,'0011101','? ????? Monarch ??. 100',1,1,1.452,1.494,1.54,1.54,1,20,NULL);
INSERT INTO `product_nom` VALUES (102,'0011102','? ????? Monarch ??. 250',1,1,3.48,3.58,3.69,3.69,4,20,NULL);
INSERT INTO `product_nom` VALUES (103,'0011103','? ????? Espresso ??. 100',1,1,1.212,1.246,1.285,1.285,1,20,NULL);
INSERT INTO `product_nom` VALUES (104,'0011104','? ????? Espresso ??. 250',1,1,2.832,2.91,3,3,3,20,NULL);
INSERT INTO `product_nom` VALUES (105,'0011105','? ????? Professional 1??',1,1,17.04,17.363,17.9,17.9,17,20,NULL);
INSERT INTO `product_nom` VALUES (106,'0011106','? ????? Monarch ????.100',1,1,5.34,5.5,5.67,5.67,6,20,NULL);
INSERT INTO `product_nom` VALUES (107,'0011107','? ????е???? ??????',1,1,2.424,2.49,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (108,'0011108','? ????е???? ???????',1,1,2.424,2.49,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (109,'0011109','? ????е???? ???????',1,1,2.424,2.49,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (110,'0011110','? ????е???? ????? ????',1,1,2.424,2.49,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (111,'0011111','? ???? ???????? 100 ?????',1,1,0.852,0.852,0.88,0.88,1,20,NULL);
INSERT INTO `product_nom` VALUES (112,'0011112','? ???? ???????? 200 ?????',1,1,1.5,0,1.56,1.56,0,20,NULL);
INSERT INTO `product_nom` VALUES (113,'0011113','? ???? ???????? 500 ?????',1,1,4.14,0,4.205,4.205,0,20,NULL);
INSERT INTO `product_nom` VALUES (114,'0011114','? ???? ???????? 1??.?????',1,1,8.16,0,8.41,8.41,0,20,NULL);
INSERT INTO `product_nom` VALUES (115,'0011115','? ???? ???????? Rpivilege',1,1,8.64,8.7,8.9,8.9,9,20,NULL);
INSERT INTO `product_nom` VALUES (116,'0011116','? ???? ??? 1000??',1,1,10.4659,0,10.9,10.9,0,20,NULL);
INSERT INTO `product_nom` VALUES (117,'0011117','? ???? ??? 500??',1,1,0,5.29,5.45,5.45,5,20,NULL);
INSERT INTO `product_nom` VALUES (118,'0011119','? ???? ???????? ??.200+??',1,1,1.578,0,1.64,1.64,0,20,NULL);
INSERT INTO `product_nom` VALUES (119,'0011121','? ?. ???????? ????.100',1,1,0.81,0.829,0.855,0.855,1,20,NULL);
INSERT INTO `product_nom` VALUES (120,'0011122','? ?. ???????? ????.200+??',1,1,1.578,0,1.64,1.64,0,20,NULL);
INSERT INTO `product_nom` VALUES (121,'0011123','? Jacobs Aroma Classic 10',1,1,1.0511,1.09,1.125,1.125,1,20,NULL);
INSERT INTO `product_nom` VALUES (122,'0011124','? Jacobs Aroma Fine Groun',1,1,1.0511,1.09,1.125,1.125,1,20,NULL);
INSERT INTO `product_nom` VALUES (123,'0011125','K Jakobs ????? Classik 25',1,1,2.508,2.59,2.67,2.67,3,20,NULL);
INSERT INTO `product_nom` VALUES (124,'0011126','? Jacobs Aroma 100?? ????',1,1,3.312,3.414,3.52,3.52,3,20,NULL);
INSERT INTO `product_nom` VALUES (125,'0011127','? ???????? Jacobs Aroma',1,1,16.572,17.15,17.68,17.68,17,20,NULL);
INSERT INTO `product_nom` VALUES (126,'0011128','? ???? ???????? ??.200??',1,1,1.578,1.63,1.685,1.685,2,20,NULL);
INSERT INTO `product_nom` VALUES (127,'0011129','? ?.???????? ??? ???.100?',1,1,1.332,1.387,1.43,1.43,1,20,NULL);
INSERT INTO `product_nom` VALUES (128,'0011130','? ????? Cronat Gold 100??',1,1,4.37,4.51,4.65,4.65,5,20,NULL);
INSERT INTO `product_nom` VALUES (129,'0011131','? ?.???????? 100?? ??',1,1,0.81,0.829,0.855,0.855,1,20,NULL);
INSERT INTO `product_nom` VALUES (130,'0011132','? ?.???????? 200?? ??????',1,1,1.578,1.63,1.685,1.685,2,20,NULL);
INSERT INTO `product_nom` VALUES (131,'0011133','? ?.???????? Qualite 100?',1,1,1.056,1.09,1.125,1.125,1,20,NULL);
INSERT INTO `product_nom` VALUES (132,'0011134','? ??????? ???? ????????',1,1,0,26.52,27.34,27.34,27,20,NULL);
INSERT INTO `product_nom` VALUES (133,'0011135','? ?.???????? ?????? 100??',1,1,0.8342,0.85,0.886,0.886,1,20,NULL);
INSERT INTO `product_nom` VALUES (134,'0011136','? ?.???????? 100?? ?????',1,1,0.888,0.92,0.95,0.95,1,20,NULL);
INSERT INTO `product_nom` VALUES (135,'0011200','?? ???? ???????? 10??',1,1,0.2832,0.291,0.3,0.3,0,20,NULL);
INSERT INTO `product_nom` VALUES (136,'0011201','?? ???? ???????? 10??',1,1,0.2832,0.291,0.3,0.3,0,20,NULL);
INSERT INTO `product_nom` VALUES (137,'0011202','?? ???? ????? 10??',1,1,0.2832,0.291,0.3,0.3,0,20,NULL);
INSERT INTO `product_nom` VALUES (138,'0011301','? ??????? ??? 28',1,1,0.4032,0,0.21,0.21,0,20,NULL);
INSERT INTO `product_nom` VALUES (139,'0011305','? ??????? ??? 90',1,1,1.212,0,0.61,0.61,0,20,NULL);
INSERT INTO `product_nom` VALUES (140,'0011307','? ??????? ????? 90',1,1,1.212,0,0.61,0.61,0,20,NULL);
INSERT INTO `product_nom` VALUES (141,'0011308','? ??????? ???/???. 90',1,1,1.212,0,0.61,0.61,0,20,NULL);
INSERT INTO `product_nom` VALUES (142,'0011309','? ??????? ????? 170??',1,1,2.016,0,2.02,2.02,0,20,NULL);
INSERT INTO `product_nom` VALUES (143,'0011310','? ??????? ???????/??? 170',1,1,2.016,0,2.02,2.02,0,20,NULL);
INSERT INTO `product_nom` VALUES (144,'0011313','? ???????? ???/????? 28??',1,1,0.4032,0,0.405,0.405,0,20,NULL);
INSERT INTO `product_nom` VALUES (159,'0012016','?? J 3?1 ????????',NULL,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (160,'0012017','?? ???е??? 90??',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (161,'0012018','?? ????? 40?? ????????',NULL,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (162,'0012019','?? ????? 25?? ????????',NULL,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (166,'0012023','?? ???? ????????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (168,'0012025','?? ??????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (169,'0012026','?? ????? ????е? ?????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (170,'0012027','?? ?????? 100?? ????????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (171,'0012028','?? ????? ?????? 100??',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (172,'0012029','?? ????? ????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (173,'0012030','?? ?????? ????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (174,'0012031','?? Jacobs 3in1-90gr',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (176,'0012033','?? ????? ???? 34??',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (177,'0012034','?? Jacobs Aroma ????????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (178,'0012035','?? ???? ???????? 500??',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (179,'0012036','?? ????? ???????? ???????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (180,'0012037','?? ????е???? ????????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (181,'0012038','?? ????? ?????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (182,'0012039','?? ????? ???е???',1,1,0,0,0,0,0,20,NULL);
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

INSERT INTO `skl_strukt` VALUES (1,'001','0000-00-00 00:00:00');
INSERT INTO `skl_strukt` VALUES (2,'002','0000-00-00 00:00:00');
INSERT INTO `skl_strukt` VALUES (3,'003','0000-00-00 00:00:00');
INSERT INTO `skl_strukt` VALUES (4,'004','0000-00-00 00:00:00');
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

INSERT INTO `sl_n_razfasofki` VALUES (1,0,'broika','br');
INSERT INTO `sl_n_razfasofki` VALUES (2,1,'gram','gr');
INSERT INTO `sl_n_razfasofki` VALUES (3,0,'kutia','kut');
INSERT INTO `sl_n_razfasofki` VALUES (4,0,'kashon','kash');
INSERT INTO `sl_n_razfasofki` VALUES (5,1,'kilogram','kg');
CREATE TABLE `slujebna` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `slujebna` VALUES (1,'??');
INSERT INTO `slujebna` VALUES (2,'???????? ????');
INSERT INTO `slujebna` VALUES (3,'????');
INSERT INTO `slujebna` VALUES (4,'????????');
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

INSERT INTO `user_master` VALUES (1,'root',0);
INSERT INTO `user_master` VALUES (2,'rado',1);
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
