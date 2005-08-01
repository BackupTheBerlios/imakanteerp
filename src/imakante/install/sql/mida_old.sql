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

INSERT INTO `category_product` VALUES (1,'�?�?�?�?','');
INSERT INTO `category_product` VALUES (2,'�?. �?�?�','�?�?�?�?�?�?�?�?�?');
INSERT INTO `category_product` VALUES (3,'�?. �?�?�','�?�?�?�?�???�?�?�???�???');
INSERT INTO `category_product` VALUES (4,'�?�?�???�?','�?�?�?�???�?�? �?�?�');
INSERT INTO `category_product` VALUES (5,'�?. �?�?�','�?�?�?�?�?�?�?�?�?');
INSERT INTO `category_product` VALUES (6,'�?�?�?�???','�?�?�?�??? �? �???�?�?�');
INSERT INTO `category_product` VALUES (7,'�???. �?�?�','�???�?�?�?�?�?�?�???�?');
INSERT INTO `category_product` VALUES (8,'�?. �???�?�','�?�?�?�?�?�?�?�?�?');
INSERT INTO `category_product` VALUES (9,'�?�?�?�?','');
INSERT INTO `category_product` VALUES (10,'�?�?�?�???','');
INSERT INTO `category_product` VALUES (11,'�?�?�???�?','');
INSERT INTO `category_product` VALUES (12,'�???�?�?�?','');
INSERT INTO `category_product` VALUES (13,'�?�?�?�?','');
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

INSERT INTO `customer_pri` VALUES (1,'000001','�?�?�?�?�? �');
INSERT INTO `customer_pri` VALUES (2,'000002','�???�???�?�?�?�???');
INSERT INTO `customer_pri` VALUES (3,'000003','�?�?�?�???�?�?');
INSERT INTO `customer_pri` VALUES (4,'000004','�?�?�?�?�?�?');
CREATE TABLE `dop` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `gender` varchar(4) NOT NULL default '',
  `sec` char(2) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `dop` VALUES (1,'���','��');
INSERT INTO `dop` VALUES (2,'����','��');
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

INSERT INTO `ls_dlajnosti` VALUES (8,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (16,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (17,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (18,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (19,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (20,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (23,1,'���������� -�������� 44444',7);
INSERT INTO `ls_dlajnosti` VALUES (24,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (25,5,'���������� -�������� 3',7);
INSERT INTO `ls_dlajnosti` VALUES (26,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (28,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (29,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (30,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (31,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (33,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (34,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (38,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (39,1,'���������� kojto e ku-ku',11);
INSERT INTO `ls_dlajnosti` VALUES (40,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (41,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (42,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (44,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (45,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (47,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (48,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (50,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (51,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (52,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (53,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (54,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (55,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (56,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (57,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (58,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (59,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (60,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (61,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (62,1,'���������� -�������� werewrer',7);
INSERT INTO `ls_dlajnosti` VALUES (63,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (64,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (65,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (66,1,'���������� -��������',7);
INSERT INTO `ls_dlajnosti` VALUES (67,1,'���������� -��������',7);
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

INSERT INTO `ls_dobavki` VALUES (4,'��������',0,0,0,1);
INSERT INTO `ls_dobavki` VALUES (5,'�������� - ����������',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (6,'�������� - ������� ��.',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (7,'�?�?�?�?�?�? ��?�?�?',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (8,'�?�?��?�?�?�?�? �?�?',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (9,'???????????????? ???',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (10,'petuniq ?????',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (11,'???????????????? ?�??',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (12,'?�??????????????????',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (13,'��?��?�?�?�?�?�?�?',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (14,'��?��?�?�?�?�?�?�?',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (15,'????????????????????',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (16,'?????�?????????? ????',0,0,0,0);
INSERT INTO `ls_dobavki` VALUES (17,'?�??????????????????',0,0,0,0);
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

INSERT INTO `ls_main` VALUES (72,152,'��������','���������','����������','7401234649','2005-01-02','����','5466','2005-01-01','????????','4000','?????','?????? 6','032941235','0888888888','ead@dsff.com','56656','2005-01-01','2005-01-01','2001-01-01','2001-01-01','22','',5,1,48,'1',NULL,0,'\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t');
INSERT INTO `ls_main` VALUES (73,125,'����','�����','������������','7401234649','2000-01-01','���','6666','2005-01-01','sddfdf','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','','',1,1,1,'',NULL,0,'');
INSERT INTO `ls_main` VALUES (74,555,'��������','������','��������','7401234649','2005-12-01','���','56666','2005-01-01','','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','','',1,1,1,'',NULL,0,'');
INSERT INTO `ls_main` VALUES (75,142,'������','�������','��������','740123566','2000-01-01','���','65666','2005-01-01','gwtgwg','4000','feghwrhg','','','','','','0000-00-00','0000-00-00','0000-00-00','0000-00-00','','',1,1,1,'',NULL,0,'');
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
INSERT INTO `ls_otdeli` VALUES (5,7,'������������� ����������');
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

INSERT INTO `ls_sluj` VALUES (1,'�������� ���','111615555','465665666','??????????','?????','????????');
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

INSERT INTO `n_nm` VALUES (1,'�������',3);
CREATE TABLE `natc_clasifikator_prof` (
  `Id` int(11) NOT NULL auto_increment,
  `name_prof` varchar(50) default NULL,
  `cod` int(5) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `natc_clasifikator_prof` VALUES (1,'���������',7249);
INSERT INTO `natc_clasifikator_prof` VALUES (2,'������������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3,'��������������',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (4,'�����������',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (5,'������������',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (6,'����������',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (7,'�����������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (8,'����������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (9,'����������� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (10,'����������� / ����������� ���������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (11,'����� �� ������, �������, ����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (12,'�������������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (13,'�����, �����������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (14,'�����, ��������� �����',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (15,'�����, �������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (16,'�����, ������� �����',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (17,'�����, �������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (18,'�����, ������� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (19,'������������ / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (20,'����������',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (21,'���������� / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (22,'�������������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (23,'�����������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (24,'�������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (25,'������� / ������ ��������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (26,'�������, ���������� ������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (27,'����������',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (28,'�������',2421);
INSERT INTO `natc_clasifikator_prof` VALUES (29,'��������������� �������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (30,'��������������� �������� / ���',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (31,'������������� / ���������� ������� (����)',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (32,'������������� / �����',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (33,'�������������, ���� �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (34,'�������������, �������� �� ��������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (35,'�������������, ����������  �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (36,'�����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (37,'�������������, ������',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (38,'�����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (39,'��������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (40,'������������ / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (41,'�������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (42,'������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (43,'������������� / ����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (44,'��������',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (45,'������������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (46,'���������� / ���������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (47,'���������� ��������',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (48,'���������� �� ����������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (49,'����������, ������� �� ������ �� �������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (50,'����������, ��������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (51,'����������-������������, ������ / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (52,'�������� �������, ���������������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (54,'��������, ����������� �� �����',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (55,'��������, ���������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (56,'��������, ���������� ���� �����',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (57,'��������, ���������� ����� (�����������)',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (58,'��������, ���������� �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (59,'��������, ������������ �������',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (60,'��������, ��������� �� ������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (61,'��������, ������� / ���� �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (62,'��������, ������, �����',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (63,'��������, ������� � ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (65,'������������, �����',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (66,'��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (67,'��������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (68,'������-������� ���������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (69,'���������',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (70,'���������, �������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (71,'���������, �������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (72,'���������, �������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (73,'���������, ���������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (74,'���������, ����������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (75,'���������, ��������� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (78,'���������, ���������� ����������',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (79,'���������, ����������� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (80,'���������, ������������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (83,'���������, ������������� ������ / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (84,'���������, ���������',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (85,'���������, ���������',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (86,'���������, ����� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (87,'���������, �������������� ����������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (88,'���������, ������� / ��������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (89,'���������, ����� ������ / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (90,'���������, ������� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (91,'���������, ������� ���������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (92,'���������, ������������� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (93,'���������, ������ / ������� �������',8153);
INSERT INTO `natc_clasifikator_prof` VALUES (94,'���������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (95,'������� / ��������',3228);
INSERT INTO `natc_clasifikator_prof` VALUES (96,'�������, ��������� / ������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (97,'�������� / ������� � �������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (98,'�������� / ��������� ������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (99,'��������, �������� �����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (100,'�������, �������',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (101,'���������� / ������������',7124);
INSERT INTO `natc_clasifikator_prof` VALUES (102,'����������, ������� ����� � ����������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (104,'���������� / ������������',7124);
INSERT INTO `natc_clasifikator_prof` VALUES (105,'������, ��������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (106,'������, ����������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (107,'������, �����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (108,'������, ����������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (109,'������, ������ � ����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (110,'���������� ��������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (111,'��������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (112,'�������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (113,'��������',2431);
INSERT INTO `natc_clasifikator_prof` VALUES (114,'�����������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (115,'��������',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (116,'��������, ������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (117,'��������, ���������� ������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (118,'��������-��������',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (119,'��������������������, �������',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (120,'��������������������, ������-����������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (121,'�������� / ����� �������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (122,'��������-��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (123,'��������-�������� �� ������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (124,'��������-��������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (125,'��������-����������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (126,'������������ / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (127,'��������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (128,'��������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (129,'��������, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (130,'����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (134,'���������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (135,'������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (136,'�������, �������',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (137,'��������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (139,'�����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (140,'�����������, �����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (141,'�����������, ������� �� ���������� ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (142,'�����������, ����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (143,'�����������, �����',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (144,'�����������, �������������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (145,'�����������, �������������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (146,'���������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (147,'��������� �� ������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (148,'���������-��������, ��������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (149,'������� �������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (150,'������� ��������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (151,'������� ���������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (152,'��������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (153,'������������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (154,'���������-���������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (155,'����������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (156,'������-���������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (157,'��������� �� ������, ������ � ������ �� ������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (158,'������ �������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (159,'�������� / ����������������',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (160,'������',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (161,'��������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (162,'��������� / ���������',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (163,'�����, ������� �����',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (164,'�����-�������� �� ���� / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (165,'��������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (166,'����� / ���������������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (167,'��������� / ������������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (168,'����������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (169,'�����������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (170,'����������� / �������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (171,'����������� / ��������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (172,'�����������-�����������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (173,'���������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (174,'�������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (175,'�������, ������ �� ��������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (176,'��������������',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (177,'����������',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (178,'�����������������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (179,'�������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (180,'����������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (181,'������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (182,'������, �����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (183,'������, ������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (184,'������, ������ ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (185,'������, ������� ����',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (186,'������, �������� ����������',3211);
INSERT INTO `natc_clasifikator_prof` VALUES (187,'���������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (188,'�����������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (189,'��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (190,'��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (191,'��������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (192,'������� / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (193,'�������� / ������������ �� ������������ ������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (194,'��������',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (195,'����������� / ������� ���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (196,'�����������, �������',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (197,'���������',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (198,'����������� / ����������-������� ������������',7417);
INSERT INTO `natc_clasifikator_prof` VALUES (199,'����������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (200,'������ ������������ / �������� ���������',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (201,'������ �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (202,'������ ���������',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (203,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (204,'�������, ������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (205,'�������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (206,'�������, �����',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (207,'�������, �������� ����������',3211);
INSERT INTO `natc_clasifikator_prof` VALUES (208,'�������, �����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (209,'�������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (210,'������� / ������������',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (211,'������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (213,'�������, �������-������� ����������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (214,'�������, ������� �������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (215,'�������, ������� ����������� / ������������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (216,'�������, ������� �����',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (217,'�������, � ������������� ������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (218,'�������, � ������ ���, ��������� ������������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (219,'�������, ����������� ��������',7142);
INSERT INTO `natc_clasifikator_prof` VALUES (220,'������ / ����� �� �����',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (221,'����������',7444);
INSERT INTO `natc_clasifikator_prof` VALUES (222,'������, �����������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (223,'������, �����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (224,'������, ������� �����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (225,'������, ������� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (226,'������, ����� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (227,'����������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (228,'�����',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (229,'�������',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (230,'�����',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (231,'��������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (232,'�����������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (233,'���������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (234,'��������� / ������� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (235,'������, ������� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (236,'������, ��������� ������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (237,'������',7427);
INSERT INTO `natc_clasifikator_prof` VALUES (238,'��������',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (239,'������������� / �� ���������',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (240,'��������� / ������ ������ �� �������',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (242,'�����������������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (243,'��������� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (244,'������� ������',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (245,'������ / ����������-������� ������������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (246,'��������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (247,'�������, ����� �� ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (248,'�������-�������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (250,'����� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (251,'�����, ������ / ������������ �� ����� ��������',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (252,'��������� / ����� �� ���������� ���������',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (254,'������ / ������� ���������',8313);
INSERT INTO `natc_clasifikator_prof` VALUES (255,'������ / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (256,'������������',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (257,'����������� �����',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (258,'����������� ����� (������)',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (259,'����������� �����, ������',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (260,'����������� �������',3227);
INSERT INTO `natc_clasifikator_prof` VALUES (261,'���������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (262,'������� / �����',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (263,'������� �� ������� ������� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (264,'�����-�������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (265,'��������������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (266,'�������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (267,'���������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (268,'������������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (269,'������������� �� �����������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (270,'��������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (271,'�������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (272,'�����, �������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (273,'�����, ������� ������� / ������������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (274,'�����, ������� / �� ���������',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (275,'�����, ����������',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (276,'�����, ������� ������� / ������ ����������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (277,'�����, ��� ���������',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (278,'�����, ��� ��������� �����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (279,'�����, ����������� ��������� �� 1,5 ����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (280,'�����, ����� �������',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (281,'�����, ������ �� ��������� �� ����',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (282,'�����, ��������',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (283,'�����, �������',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (284,'�����, ����������',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (285,'�����, �������� �������� � ������� ����������',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (286,'�����, ��������-������� ������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (288,'�����, ����� ������� (��������)',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (289,'�����, ��������',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (290,'�����, ��������� ������ / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (291,'�����, ��������� ������ / ������ ����������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (292,'�����, ��������� ������� �����',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (293,'�����, ��������������� ������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (294,'�����, �������������� ����������',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (295,'�����, �������������� ������ � �����������������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (296,'�����, ������� ��������� ��� 1,5 ����',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (297,'�����, �������������� �������� � ���������� ����',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (298,'�����, ��������',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (299,'�����, ���������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (300,'�����, ���������������� ���������� ������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (301,'�����, ������������� ������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (302,'����� ��������� / ����� � ���������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (303,'�������',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (304,'����������� / ������� ���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (305,'�������������',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (306,'�������������-��������, ������������ ���',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (307,'�����������������,  ������� / �����������������',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (308,'������ / ��������� ����� (�������)',2);
INSERT INTO `natc_clasifikator_prof` VALUES (309,'������� �������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (310,'��������, �����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (311,'������� �� �������� � �������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (312,'����� ������� / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (313,'������������ / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (314,'������������ �� ���������� ���������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (315,'����������, ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (316,'��������, ������� �������',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (317,'��������-��������� / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (318,'�����',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (327,'���������� - ������ � ��������� �����������',3314);
INSERT INTO `natc_clasifikator_prof` VALUES (330,'���������� � ��������� ����������� / �������',3322);
INSERT INTO `natc_clasifikator_prof` VALUES (332,'���������� ��� ������ ������������� �����������',3322);
INSERT INTO `natc_clasifikator_prof` VALUES (334,'�������������-�������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (335,'�������� �������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (336,'�������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (337,'��������������� / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (338,'������������ / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (339,'���������� / ������������ �� ������������ �������',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (340,'��������  / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (341,'������������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (342,'����������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (343,'������������ / ����� �� ������� ���������',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (344,'�������������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (345,'������������� �� �������, ������ � ������� ����',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (346,'�������������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (347,'��������� / ��������� ������������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (348,'��������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (349,'�����������, ����� ���� �� �������� ����������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (350,'�����������, ������� ����������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (351,'�����������, ��������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (352,'����� �������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (353,'�������� / ����������������',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (354,'��������� �������� / ���, ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (355,'��������� �������� / ��������� �� ���������� �����',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (356,'��������� ������ / �������� ������������� (����)',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (357,'��������� �������� / ������ �����',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (359,'��������� �������� / ����������� ������',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (360,'��������� �������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (361,'������������ / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (362,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (363,'�������, �������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (364,'�������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (365,'�������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (366,'���������, �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (367,'������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (368,'������, ������� / ���',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (369,'������, ����������������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (370,'������, ����� �������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (371,'������, ������ ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (372,'������, �����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (373,'������, ����������� � ������������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (374,'������, ����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (376,'������-������, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (377,'������������, ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (378,'�����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (379,'��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (380,'��������, ������� (���������)',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (381,'��������, ������ ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (382,'��������, ����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (383,'��������, �������� ���������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (384,'��������, ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (385,'���������� �������� / �������� ����������',7115);
INSERT INTO `natc_clasifikator_prof` VALUES (386,'���, ��������� �����',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (387,'������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (388,'��������� / ������������',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (389,'������ �������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (390,'������ ������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (391,'������ �������� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (392,'������ �������� / ������������ �����������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (393,'������ �������� / ����� �������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (396,'������ ������� ������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (397,'������ ����������� �����',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (398,'������ ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (399,'������ �������, ������������ ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (400,'������ �����',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (401,'������ �������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (403,'������ ������� / ��������� ��������� ������������',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (404,'������ ������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (405,'������ ������� / �������� �������������',2473);
INSERT INTO `natc_clasifikator_prof` VALUES (406,'������ ������� / �������� �������������',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (407,'������ �������, ������������� �����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (408,'������ ���������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (409,'������ ���������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (410,'������ ���������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (411,'������ �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (412,'������ ������� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (413,'������ ��������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (414,'������ ��������� �� �����',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (415,'������ �������� / �����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (416,'������ ������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (417,'������ ������ / ���',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (418,'������ ������, ��������-����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (420,'������ ����������� (���������)',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (421,'������ ����������� / ���, ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (423,'������ ����� / ������ �������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (424,'������ ��������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (425,'������ ������� / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (426,'������ ������� / ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (427,'������ ���������� ���������',2478);
INSERT INTO `natc_clasifikator_prof` VALUES (428,'������ ������ ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (429,'������ ��������, ������� � ��� / ����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (431,'������ ����� / �������� ���������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (433,'������ ��������� / ������������ �����������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (434,'������ ��������',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (437,'������ ��������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (439,'������ �������� / ����������� �����',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (440,'������ �������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (441,'������ �������� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (442,'������ �������� / ������� �����������',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (444,'������ ����������  / �������� �������������',3443);
INSERT INTO `natc_clasifikator_prof` VALUES (445,'������ ���������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (446,'������ ���������� / �������� �������������',3444);
INSERT INTO `natc_clasifikator_prof` VALUES (447,'������ ������������',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (448,'������ ������������ / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (449,'������ ������������ / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (450,'������ ������������ / ������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (451,'������ �������� / ����������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (452,'������ ������� ���������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (453,'������ ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (456,'������ �������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (461,'������ �����������',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (462,'������ ������������ / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (463,'������ ������������ / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (464,'������ ��������',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (465,'������ ���������� ������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (466,'������ �� ����� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (467,'������ �� ����� / ������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (468,'������, ������� �� ������ ���� ����',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (469,'������, ����� / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (470,'���������� / �����������-�������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (472,'��������, �����',7443);
INSERT INTO `natc_clasifikator_prof` VALUES (474,'������ �� ��������� �������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (475,'������ �� �������, �������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (476,'������ �� ����������� �������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (477,'������ �� ������� ����',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (478,'���������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (479,'��������� / ����� � ���������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (480,'��������� / �����������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (481,'���������, ������ � �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (482,'������ ����������',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (483,'������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (484,'������ �������',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (485,'������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (486,'������� / ���������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (487,'������� / ��������� ������������',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (488,'�������, ���������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (489,'�������, ����� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (490,'��������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (491,'�������� / ���������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (492,'�������� / ����',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (493,'���������� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (494,'��������� / ������� �������',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (495,'��������� �� ��������� ��������� / ������� �������',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (496,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (497,'����������, ������� �������� �������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (498,'�������, ��������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (499,'�������-�������',5143);
INSERT INTO `natc_clasifikator_prof` VALUES (500,'������, ���������� � ���������� �� ��������',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (501,'����������� �� ����� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (502,'�����������-�������, ����������������',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (503,'�������',7324);
INSERT INTO `natc_clasifikator_prof` VALUES (504,'��������, ������� �������� �������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (505,'�����',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (506,'�������-��������',5149);
INSERT INTO `natc_clasifikator_prof` VALUES (507,'������� ������� / �������� �������������',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (508,'������� ��������� / �������� �������������',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (509,'�������� / ��������� ������������',8261);
INSERT INTO `natc_clasifikator_prof` VALUES (510,'�������� / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (511,'���������� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (512,'�����������, ��������, ��������� ��������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (513,'�����������, ����������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (514,'�����������, ��������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (515,'�����������, ����������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (516,'����� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (517,'��������� / �����������- �������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (518,'���������, ������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (519,'���������-�������, ������� � �������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (520,'�����������',4143);
INSERT INTO `natc_clasifikator_prof` VALUES (521,'�����������, ��������������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (522,'��������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (523,'������������ �� �����',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (524,'����������� / ������������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (525,'���������-������������� �� �������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (526,'����������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (527,'�����������, �������� / ������� ������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (528,'�����������, ����������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (529,'���������, ������� � �������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (530,'���������� / ������������ �� �������',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (531,'����������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (532,'�������� / ������ ��������',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (533,'������ ��������',3321);
INSERT INTO `natc_clasifikator_prof` VALUES (534,'��������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (535,'������ �����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (536,'����������, ������� �������� �������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (537,'���������',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (538,'�������� - ��������',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (539,'��������, ��������� �������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (540,'��������, ������� �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (541,'��������, ������� � ���������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (542,'��������, �������������� �������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (543,'��������, ���������� �������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (544,'��������, ��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (545,'��������-��������',2141);
INSERT INTO `natc_clasifikator_prof` VALUES (546,'��������-����������� �� �������� ������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (547,'�����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (548,'�������� / �������� ������������� (����)',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (549,'�������������� ������',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (550,'���������� �������-������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (551,'�������� / ������� \"�������\"',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (553,'�������� / ������ ������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (554,'�������� / ��������� �� ���������� �����',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (557,'�������� / �����������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (560,'�������� / �������������-������������ ������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (561,'�������� / ����� �� �������� ��������',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (562,'�������� / �������� �������������',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (563,'�������� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (565,'�������� / ������� ����',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (566,'�������� / ���������� ���������� ��������',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (567,'�������� / �������� ������-������������� ���������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (569,'�������� / ������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (570,'�������� / ������ �������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (571,'�������� / ������ ������������, ���������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (572,'�������� / ������ �������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (574,'�������� �� ������� � ������������ ���������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (575,'��������, ���',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (576,'��������, ������� ����������',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (577,'��������, ���������� ���������� ������',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (578,'��������, ��������������� �������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (579,'��������, ������������ / ���������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (580,'��������, ��������� / ���������� �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (581,'��������, ������������ ��������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (582,'��������, �������� �� �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (583,'��������, ������ ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (584,'��������, ������ �����������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (585,'��������, �������� ������ �� �������� �����',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (586,'��������, �������������� �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (587,'��������, ������ �� ������������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (590,'��������, ��������� �������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (591,'��������, ��������� �������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (592,'��������, ��������� �������',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (593,'��������, �������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (594,'��������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (595,'����������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (596,'�������� / ����������� ���������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (597,'�������� / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (598,'�������� / ������e� ���������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (599,'�������� / ��������o�, �����������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (600,'�������� / ��������������� (������� ����� - ���)',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (601,'�������� / �� ����',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (602,'�������� / �� ���������',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (603,'�������� / �����������o',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (605,'�����������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (606,'�����������, ��������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (607,'��������� / ������������ �� ���������� ��������',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (608,'��������� �� ������� / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (609,'����������  / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (610,'���������� / �����������-�������� ������������',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (611,'���������� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (612,'����������, ��������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (613,'�����',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (614,'�������������',2431);
INSERT INTO `natc_clasifikator_prof` VALUES (615,'������������, �������� �������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (616,'������� / �������������',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (617,'�������, �����������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (619,'�������, ����������� �� ������� ����',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (620,'�������, ������� ��������',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (621,'�������, �������� / ������������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (622,'�������, ����� / ������������',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (623,'�������, ��������� / ��������, ������������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (624,'�������, ������',4134);
INSERT INTO `natc_clasifikator_prof` VALUES (625,'�������-������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (626,'������� �������',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (627,'������� �����������',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (628,'�������������',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (629,'��������� �� ���������� ���� �����',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (630,'������',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (631,'����, ����� / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (632,'����-��������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (633,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (634,'������� �� �������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (635,'��������� �� ���������� �����',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (637,'������ / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (638,'����������, ������� ����������� / ������������',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (639,'����������, �����',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (640,'����������, �������-��������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (641,'����������, ������ �� �������',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (642,'����������, ������ � ���������� �� �������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (643,'����������, ������ � ���������� �� ������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (644,'����������, ����������',7123);
INSERT INTO `natc_clasifikator_prof` VALUES (645,'����������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (646,'����������-��������� / ������������',7122);
INSERT INTO `natc_clasifikator_prof` VALUES (647,'����������-��������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (648,'����������, ������ / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (649,'����������, ����� �� ����� / ������� ������ ������',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (650,'�����������',7425);
INSERT INTO `natc_clasifikator_prof` VALUES (651,'�������� ������� / �������� ���������',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (652,'�������� ������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (653,'�������� ��������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (655,'�������� �������� / ������������ �� ��������� (��)',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (657,'�������� ��������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (658,'�������� �������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (659,'��������',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (660,'������, ������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (661,'������, ��������������� ���������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (662,'�����������  / ������������ ������� (����)',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (663,'����������� / �����, ������������ �������',5116);
INSERT INTO `natc_clasifikator_prof` VALUES (664,'�����������, ���������� �������',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (665,'�����������, ����������� �� ����������������',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (667,'����������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (668,'��������������� �� ���������� ������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (669,'������� / ������ � ��������������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (670,'������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (671,'������� / ������� � �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (673,'������� / �����������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (674,'������� / ��������� ����',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (675,'������� / ������� �����',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (676,'������� �� ������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (677,'�������, ���',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (678,'�������, ����������� �� �����',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (679,'�������, ������� �����������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (681,'�������, ������������ �������� �����������',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (682,'�������, ��������������� ������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (683,'�������, ��������������',2229);
INSERT INTO `natc_clasifikator_prof` VALUES (684,'�������, ������� �����������',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (685,'�������, ������������� �������',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (686,'�������, ���������� � ���������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (687,'�������, ������������� ����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (688,'�������, �������������� �� ������������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (689,'�������, ��������-������ � ������� �������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (690,'�������, ������� ��������� �� ������������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (692,'�������, ������������ ��������������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (693,'�������, �������������� �������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (694,'�������, ����������� � ����� �� ������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (695,'�������, ���� ����������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (696,'�������, �������� �� ������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (697,'�������, �����',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (699,'�������, ����������, ��������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (700,'�������, �������� ��������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (701,'�������, �������� ����������� � �����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (702,'�������, ��������-������ � ������� ��������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (703,'�������, ����� � ������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (704,'�������, ���������� / ���������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (706,'�������, ���� � ������� �������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (707,'�������, ������� ���������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (708,'�������, ���������� �� ����������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (709,'�������, ���� � ������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (710,'�������, ������������ ����������',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (713,'����������� / ������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (715,'������������ / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (716,'������������ / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (717,'��. ��������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (718,'��. �������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (719,'������������������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (720,'����������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (721,'��������������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (722,'�������������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (723,'��������������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (724,'�������������',8325);
INSERT INTO `natc_clasifikator_prof` VALUES (726,'������������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (727,'��������������  / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (728,'�������������������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (729,'����������������, ���������� ���������� �������',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (730,'��������������, ��� � �',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (731,'��������������, �������� ����� / ����������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (732,'��������������, ������ � ����������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (736,'��������������, ������������� ����������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (738,'���������� (�����������)',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (739,'�������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (742,'��������  / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (743,'���������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (744,'���������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (745,'��������� / �������-�����������, ���',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (746,'���������, �������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (747,'���������, �������� ����������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (748,'���������, ������ / ���, �������, �����',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (749,'���������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (750,'�����������',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (751,'�������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (752,'�������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (753,'������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (754,'�������� �����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (755,'������ ���������� / �����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (756,'������������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (757,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (758,'�������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (759,'���� �� ������� � �������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (760,'�������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (761,'����������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (762,'����������, ���� ������� �� ���� / �����',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (763,'����������, ������� ������� �� ����',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (764,'����������, �������� �������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (765,'�� ���������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (766,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (767,'������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (768,'����������� / ������������ �� ������������',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (769,'��������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (771,'��������, ������ � ������������� �����������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (772,'��������, ��������� ������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (773,'��������  ������ ���� �� �������� ��������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (775,'�������� ��������������� �����',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (776,'�������� ��������������� ������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (777,'�������� ��������������� (��������������)',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (778,'�������� ���� �� ������� ������',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (779,'�������� ������� ������������ / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (780,'�������� ��������-������ ������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (781,'�������� ����� ������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (782,'�������� ��������������� ����',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (783,'�������� ������ �����������',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (784,'�������� ���������� ������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (785,'�������� ������������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (786,'�������� �������� ������� ���������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (787,'�������� ������� ������',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (788,'�������� ����� ���������-��',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (789,'�������� ������ �� ������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (790,'�������� ������� / ����� ���������',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (791,'�������� ��������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (792,'�������� ������ \"��������� � �������\"',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (793,'�������� ���������� �������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (794,'�������� ���������� �����������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (795,'�������� ���������� ����������� � ������ �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (796,'�������� ���������� ������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (797,'�������� ������������ ����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (798,'�������� ������ �������, �����������',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (799,'���������� / ����������-������� ������������',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (804,'�������� �� ������ / ���������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (805,'��������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (807,'���������',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (808,'������� / ������������ �� ������������� ����',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (809,'��������-�������� / ����� �� ������� ���������',7116);
INSERT INTO `natc_clasifikator_prof` VALUES (810,'���������-��������� �������� / ���, ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (812,'���������-������ ��������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (813,'���������-������ ��������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (814,'���������-������ ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (816,'���������-����� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (817,'���������-�������� / ������� \"�������\"',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (820,'���������-��������, ���������� ���������� ������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (821,'���������-��������, �������������� �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (823,'���������-���� �� ������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (824,'���������-��������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (825,'���������-��������-�����������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (828,'���������-��������, ���',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (829,'���������-����������� / ������� ��������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (830,'���������-����������� / ������� ����',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (831,'���������-����������� / ������� �����������',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (832,'���������-�����������, �������� ���',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (834,'���������-�����������, �������� ���������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (835,'���������-�����������, ���������� �������',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (836,'���������-�����������, �������� �������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (837,'���������-��������',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (838,'���������-������ / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (841,'���������-���������, ���������',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (842,'�������� / �������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (843,'��������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (844,'�������� �� ����',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (845,'�������� / ��������� ������������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (846,'����������� �� ���� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (847,'�������� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (848,'�������� / ����������-������� ������������',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (851,'�������� �� ��������� ������ / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (854,'��������, ��������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (859,'��������-�������, ���������� ������ / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (860,'��������-�������, �������� ������ / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (861,'�������������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (862,'��������������� �����',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (863,'��������������� ������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (864,'���������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (865,'�������� �� �����������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (866,'��������, ������� ���������, ��������� ������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (867,'���������, ������� ����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (868,'��������� �� �������� ��������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (869,'��������',6122);
INSERT INTO `natc_clasifikator_prof` VALUES (870,'�������������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (871,'�������������, �������� �� �������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (872,'�������������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (873,'�����������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (874,'������� ����������, �������',2229);
INSERT INTO `natc_clasifikator_prof` VALUES (875,'���������������������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (876,'��������� / ������������',9313);
INSERT INTO `natc_clasifikator_prof` VALUES (877,'�������, �������� ����������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (878,'�������, ���������� �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (879,'�������������, �������� ����������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (880,'����� / ������������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (883,'�����, ������� ����������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (884,'������-�����',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (885,'����������',2213);
INSERT INTO `natc_clasifikator_prof` VALUES (886,'������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (887,'���������',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (888,'������������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (889,'����������',3226);
INSERT INTO `natc_clasifikator_prof` VALUES (890,'�����������������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (891,'������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (892,'�������� � ���������� ���� / ����������',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (893,'�������� �� ����� � ������� / ��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (896,'����������, ��� � ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (898,'����������, ������ �� ������',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (899,'����������, ���� / ������������� ������������',8221);
INSERT INTO `natc_clasifikator_prof` VALUES (900,'����������, ������� ��������� �� ��������� ������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (901,'����������, ������� �������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (902,'����������, ������� / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (904,'����������, ������� �������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (906,'����������, ������� - ����������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (907,'����������, ���������� � ���������',8221);
INSERT INTO `natc_clasifikator_prof` VALUES (911,'����������, �������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (912,'����������, ����������� �� ���',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (913,'����������, �������, ��������� � ��������� �������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (914,'����������, ����� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (915,'����������, ����� � �������� �� ��� �� ��������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (916,'����������, ������������',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (917,'����������, �����������',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (918,'����������, ���������� ������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (919,'����������, ������ ������� / ����������',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (920,'����������, ������� � ������ ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (921,'�������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (922,'�������, �������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (923,'�������, �����',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (924,'�������, ���������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (925,'�������� �� ������ / ���',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (926,'��������',9313);
INSERT INTO `natc_clasifikator_prof` VALUES (927,'�����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (928,'���������-������',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (929,'��������, ������� � �������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (930,'�����������, �������� �������� / ������������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (931,'���������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (932,'���������, ������� �������� ��������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (933,'���������, ����������� ��������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (934,'���������� / �������������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (935,'���������� �� �������',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (936,'���������� �� ������ / ������� ������������',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (937,'���������� �� ��������� �������� / ������������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (938,'���������� ������',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (939,'����������, ������������ �������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (942,'����������, ������������ ����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (943,'����������, ������ / �������������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (946,'������������ ��������, ������������ ��������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (948,'���������� / ������������ �� ���������� ������',8158);
INSERT INTO `natc_clasifikator_prof` VALUES (949,'�������� / ����������',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (950,'�������� �� ���� / ��������� ������������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (952,'����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (953,'����������-��������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (954,'������ / �����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (955,'��������� / ������ � ����������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (956,'��������� �� ������, ������� � �����',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (957,'���������, ��������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (958,'���������, ����������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (959,'���������, ��������������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (960,'���������, ������ ��������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (961,'���������, ������������ � ��������� �����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (962,'���������, �������� / ������ ��������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (963,'���������, ��������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (964,'���������, ���� � ������� ��������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (965,'���������, ��������� �������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (966,'���������, ����',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (967,'����������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (968,'����������, �����',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (969,'����',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (970,'����������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (972,'����������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (973,'��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (974,'�����������',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (975,'����������',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (976,'��������� / ���������',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (977,'������� �������� / ����������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (978,'������� �������� / ��������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (979,'������� �������� / �������� � ������ ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (980,'������� �������� / �������������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (981,'������� �������� / ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (982,'������� �������� / ������������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (983,'������� �������� / ��������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (984,'������� �������� / ������������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (985,'������� �������� / ����������-������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (986,'������� �������� / ��������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (987,'������� �������� / ������� ������������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (988,'������� ��������, ��������� �� ���������',2148);
INSERT INTO `natc_clasifikator_prof` VALUES (989,'�������, ������������� �� ��������������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (990,'�������, �������������� � �����������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (991,'�������, ���������������, ���������, �����',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (992,'�������, ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (993,'�������, ������������ ��������� �����',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (994,'�������, ������������ ������ � �������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (995,'�������, ������������ ����������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (996,'�������, ���������������� ����������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (997,'�������, ���������� / ������ ��������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (998,'�������, ����������� � ����������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (999,'�������, ���������� ����������� � �������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1000,'�������, ������������������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1001,'�������, ���������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1002,'�������, �� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1003,'�������, ���������� �� �����',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1004,'�������, ������������� �������',2416);
INSERT INTO `natc_clasifikator_prof` VALUES (1005,'�������, ������������ ������ � �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1006,'�������, �������������� ����������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1008,'�������, ���������� ����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1009,'�������, ���������� �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1010,'�������, �����������, �����-, ������������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1012,'�������, �����������, �������������� ����������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1013,'�������, �����������, ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1015,'�������, ������� ������ � ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1016,'�������, ������������� � ������������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1017,'�������, ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1018,'�������, ����������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1020,'�������, ��������',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1021,'�������, �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1022,'�������, �����',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1023,'�������, ����� ���������������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1024,'�������, ����� ������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1025,'�������, �����������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1026,'�������, �����������  �� ������� ���������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1027,'�������, ������� ���������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1028,'�������, ����������� �������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1029,'�������, ������ � ����',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1030,'�������, ��������� �� �����',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1031,'�������, ��������� �� ����',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1032,'�������, ����� � ���������� �����',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1033,'�������, ����������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1034,'�������, ���������� �� ���',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1036,'�������, ���������, ���������������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1037,'�������, �������������� �����������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (1038,'�������, �������������� ������� � ������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1040,'�������, ���������� � ���������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1041,'�������, ����� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1042,'�������, �������� � ����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1044,'�������, ������� ������',2143);
INSERT INTO `natc_clasifikator_prof` VALUES (1045,'�������, ��������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1046,'�������, �������� ���������� � ������������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1047,'�������, �������������� ����������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (1048,'�������, ���������������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1049,'�������, ��������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1050,'�������, ��������������� �������������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1051,'�������, �������� �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1052,'�������, �������� ������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1053,'�������, �������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1054,'�������, ����������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1055,'�������, ������������ ��� ����',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1056,'�������, ���������������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1057,'�������, ���������� �����������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1058,'�������, ������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1059,'�������, �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1060,'�������, �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1061,'�������, ����������� � ����������� ������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1062,'�������, �������������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1063,'�������, ��������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1064,'�������, ����������������� ������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1065,'�������, ��������� �������',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1066,'�������-�����',2147);
INSERT INTO `natc_clasifikator_prof` VALUES (1067,'���������, ������� ��������� ������� / ���',9155);
INSERT INTO `natc_clasifikator_prof` VALUES (1068,'���������, ��������� ������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1071,'���������, ��������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1072,'���������-������, ��������������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1073,'��������� / ���',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (1074,'��������� / �����',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1075,'��������� / ������e� ���������',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (1076,'��������� / �������� �������������',2476);
INSERT INTO `natc_clasifikator_prof` VALUES (1077,'��������� �� ��������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1078,'��������� �� ���',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1080,'��������� �� �����',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (1081,'��������� �� ����������, �������� ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1082,'��������� �� �����',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (1083,'��������� �� ������ ������ / �����������',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (1084,'���������, ������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1086,'���������, ���������� �������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (1087,'���������, �����������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (1088,'���������, ������� �����������',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1089,'���������, ������� �� ���������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1090,'���������, �������� (����������)',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1091,'���������, ����� ������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (1092,'���������, ����������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1093,'���������, ����������',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1095,'���������, ������ �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1096,'���������, ��������� ����',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1097,'���������, ������� ����������� �� ����������',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (1098,'���������, �������� ������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1099,'���������, �������������� ������ / ������',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (1100,'���������, ������������� �������������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1101,'���������, ������� ���� � ������������',2412);
INSERT INTO `natc_clasifikator_prof` VALUES (1102,'���������, ������� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1103,'���������, ���������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (1104,'���������, �������� �����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1105,'���������, ���������� �����������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1107,'���������, ���������� ������� � ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1108,'���������, ���������� ������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1109,'���������, ������� �����',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1110,'���������, ���������������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1111,'���������� / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (1112,'���������� / ������e� ���������',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (1113,'���������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1114,'���������� �� ������ �� ������� �������� ��������',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1115,'���������� �� ���������� �� ���������� ��� �� 10 �',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1116,'���������� �� ���������� �� ���������',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (1117,'����������, �������� �������',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (1118,'����������, �������',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (1119,'���������������, ������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1121,'���������������, ������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1122,'���������� / ������ ��������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1123,'���������� - ����������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1124,'���������� / �����, ������������ �������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1125,'���������� / ������������ �������',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1126,'����������, ������� / �������� �������������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1127,'����������, �������� / ���������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1128,'����������, ��������� / �������� ���������',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1129,'����������, ��������� / �� ���������',4221);
INSERT INTO `natc_clasifikator_prof` VALUES (1130,'����������-����������� / �������� ���������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1131,'����������-����������� / �����������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (1132,'�������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (1133,'�������, ������ ��������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (1134,'��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1135,'������� �������� / ����������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1136,'������� ������������ / ��������� ����',1);
INSERT INTO `natc_clasifikator_prof` VALUES (1137,'��������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1138,'���������',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1139,'���������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (1140,'���������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (1141,'�����������, �������� �����������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1143,'�����������, ������ ������� / ����������',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (1144,'�����������, ������� �� �����',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1145,'��������',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (1146,'���������',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (1147,'��������� - �������, ���������� �������',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (1148,'���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1149,'�����������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1150,'������� / ����� �� ������ ���������',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (1151,'������-��������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1152,'�����������, ���������� ������������',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (1153,'��������, �����',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (1154,'��������, �����',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (1155,'����������',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (1156,'���������',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1157,'�������������-������������, ��������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1158,'���������� / �����',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (1159,'����������, ��������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1160,'�������� / �� ���������',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (1161,'�������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (1162,'������� / �����',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1163,'������� / ���������� ���',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1164,'�������-����� / ���������� ���',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1165,'��������� �������������� / �������� ����������',7115);
INSERT INTO `natc_clasifikator_prof` VALUES (1166,'���������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1167,'���������-���������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1169,'�������������� �� ������, ������� ����� � �������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (1170,'����������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1171,'�������',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (1172,'������ (���������) / ���������� ������� (����)',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1173,'������ / ��������������',4219);
INSERT INTO `natc_clasifikator_prof` VALUES (1174,'������ / ������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1175,'������ / �������',4212);
INSERT INTO `natc_clasifikator_prof` VALUES (1176,'������ / ���������',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1177,'������ �� ���� / �����',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1178,'������ �� ���� / ����',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1179,'������ �� ���� �� ���������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1180,'������ �� ����, ��������-����������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1181,'������, ��������������',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (1182,'������, ������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (1183,'������, ������� �������',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (1184,'������, ������� ����',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (1185,'������, ���������� �� �������',4216);
INSERT INTO `natc_clasifikator_prof` VALUES (1186,'������, ��������� (����, ������������)',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1187,'������, ����������� (�������) / ���������� �������',4213);
INSERT INTO `natc_clasifikator_prof` VALUES (1188,'������, ��������� �� ������',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (1189,'������, �������� �� ������',4214);
INSERT INTO `natc_clasifikator_prof` VALUES (1190,'������, ������������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1191,'������, ��������-���������� ������������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (1192,'������-�������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1193,'������-���������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1194,'������-�����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1195,'������-������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1196,'������-���������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1198,'�������� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1199,'��������� ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1201,'������������ �����',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (1202,'������� / ������� ��������',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (1203,'������� ���������',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1204,'������� ��������',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1205,'�������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (1206,'�������������� / ������ ������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1207,'��������������, ����� �����������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1208,'��������������, ������������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1209,'��������������, �����',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1210,'�����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1211,'������������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (1212,'�����������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1213,'������������ �� �������-������� ������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1214,'������������, ������� ������ / ����������',8251);
INSERT INTO `natc_clasifikator_prof` VALUES (1215,'����������',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (1216,'�����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (1217,'����, ��������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1218,'����, ������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1219,'������� ��������� / ������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (1220,'��������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1221,'���������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1222,'����������, �������� / ����������',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (1223,'����������, ����� �� ��� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1224,'����������-���������� (�������� ������)',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1225,'������������, ��������� / ���',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1226,'������������, ������������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1227,'������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (1228,'�����',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1229,'�����, �������',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1230,'�����, ���� ��������� � ������ � �����',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1231,'��������� / �����',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (1232,'�����',7451);
INSERT INTO `natc_clasifikator_prof` VALUES (1234,'�������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (1235,'��������',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (1236,'��������������� / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (1237,'�����',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (1238,'��������  / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (1240,'�������� / ��������, �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1241,'�������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (1242,'��������-����� / �������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1243,'���������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (1244,'���������, ��������� ������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (1245,'����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1246,'����������, ������, �����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1247,'���������, �������������� ���������� ������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (1248,'������������',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (1249,'����������, ������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (1250,'���������',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (1251,'�����������-�������� / ������ ������ �� �������',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (1252,'��������������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1253,'���������� ��������� / ���������� �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (1254,'������������ �� ������� �����, ��������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1255,'������������-�������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1256,'������������-�������� / ������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1257,'�������������, ����� (���)',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1258,'�������������, ���������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1259,'����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1260,'������������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1261,'������������ / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (1262,'��������� / ������ �����',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1263,'��������� / ������� ���������',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1264,'��������� / �� ���������',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1265,'��������� / ���������� ������������ ���������',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1266,'��������� / ��������',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1267,'�������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (1268,'����������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (1269,'�����������-�����������, ������� �������',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (1270,'�����������-�����������, ��������� �� ���������',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (1272,'�������������� ����� / �������������� ���',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (1273,'����������� �������, �������� ����������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1274,'����������� �� ������� ����� � �������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1275,'�����������, �������, ����������� � ����������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (1276,'�����������, ��������� �������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1277,'�����������, �����',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1278,'�����������, ������� �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1279,'�����������, ��������� �����������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (1280,'�����������, ������� � ������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1281,'�����������, �������������� ������� � ������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1282,'�����������, ���������� �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (1283,'������ / �������� ������������� (����)',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1284,'���������� - �����, ������� �����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1285,'����������, ������ � �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1286,'����������, �������������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1287,'����������, ����������� �� �������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1288,'����������, ��������������� ������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (1289,'����������, ���������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (1290,'����������, ���������� �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (1292,'����������, ��������� �� ������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1293,'����������, �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1294,'����������, �������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1295,'����������, ������, �����',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (1296,'����������, ������� �������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1297,'����������, �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (1298,'����������, ��������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1299,'����������, ���������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (1300,'����������, ������� � ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1301,'����������, �������',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (1302,'����������-����������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (1303,'���������� ��������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1304,'��������� ����������, �������� ����� � ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1305,'���������� / ������� ���������',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1306,'���������� / ��������� �� �� (���, ����)',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (1307,'���������� / �����',5114);
INSERT INTO `natc_clasifikator_prof` VALUES (1308,'���������� � ���',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1309,'���������� �� ���������  / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (1310,'���������� �� �����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (1311,'���������� �� ���������� / �� ���������',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1312,'���������� �� ��������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1315,'����������, ��������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1316,'����������, ���������� �� �����������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1317,'����������, ��������',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (1318,'����������, �������� ���������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1319,'����������, �������, ����� �������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (1320,'����������, ��������� �� �����',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (1321,'����������, �������� / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (1322,'����������, �������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (1324,'����������, ������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (1325,'����������, ��������� �� ���������',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (1326,'����������, ���������� �������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1327,'����������, ������� �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1328,'���������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1329,'������������ �������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (1330,'������������ / ������������ �� ������ ����������',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (1331,'������������ / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1333,'������������ �� ������ / ������������ �� ������',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (1334,'������������, �������� ����������� ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1335,'������������, ������ �������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (1336,'������������, ������ � �����',7452);
INSERT INTO `natc_clasifikator_prof` VALUES (1337,'������������, ����� �� ������ ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1338,'�����������',3474);
INSERT INTO `natc_clasifikator_prof` VALUES (1339,'����������� ������, ������ � ������� ����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1340,'��������������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1341,'����������� / ������������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (1342,'����������� / ������������ �� ������� �����������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (1343,'����������� / ������������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (1344,'����������� / ��������� � ����� (���)',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (1345,'�����������, ������ � ��������������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1346,'�����������, ���������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (1347,'�����������, �������������� �����',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (1348,'�����������, �������� ��������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1349,'�����������, ������������ ��������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1350,'�����������, �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1351,'�����������, �����������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (1352,'���������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1353,'������, ������� ���������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (1354,'������� �����',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (1355,'������� ������ ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1356,'������� ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1357,'������� ������� / ����� ���������',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1359,'������� ����������',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1360,'������� �������������',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1361,'������� ����������, ������ ����������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1362,'������� �����������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (1363,'������� �������� / ����� ���������',5112);
INSERT INTO `natc_clasifikator_prof` VALUES (1364,'������� �������',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1365,'������� ��������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1366,'������� �������',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1367,'������� �����',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (1368,'������� �������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1369,'������� ����������������',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1370,'������� ����������������-���������������',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1371,'������� ���������� �� ������ / �������������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1372,'������� ���������, ������������� �����������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1373,'������� ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1374,'��������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1375,'�������� / ��������, �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1377,'��������, ��������� ������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (1378,'��������-������� / ��������, �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (1379,'�����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1380,'������������ / �����, ���������, ���',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1381,'������������-��������, ����������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (1382,'���������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (1383,'��������� / ����������������',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (1384,'��������� / �������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1385,'���������, ������� �������������� �����������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1386,'����������� / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1387,'������ / �������������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (1388,'�������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (1389,'���������-���������, �������� (������)',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (1390,'�������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1391,'�������, ������ ����',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1392,'��������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1393,'������ / ����� �� ������� ���������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1394,'�����������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (1395,'����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1396,'������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1397,'������, ������������� ��������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1398,'������, ����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1399,'������, ������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1400,'������, ������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1401,'������, �����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1402,'����� / ������� ������������',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (1403,'����� �� ���������� ��������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1404,'�����, �������� �� �������� / ������� ������������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (1405,'�����, ����������',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (1406,'�����, �������� �� �������� / ������� ������������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (1407,'�����, ������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1408,'�����-����� �� ������ / ���������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (1409,'������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (1411,'����������������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (1412,'������',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (1413,'����',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (1414,'�������� / ������ ��������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (1415,'�������� / ������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (1416,'��������, ����������',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (1417,'��������, ���������',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (1419,'���������-��������� �� ���, ����������',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (1420,'�������, ��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (1421,'�����',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1422,'����� / ���',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1423,'����� �����������',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (1424,'����� �������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1425,'�����, �������� ���������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1426,'�����, �������� �����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1427,'�����, ���������� ������������ � �����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1428,'�����, ���������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1429,'�����, �������������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1430,'�����, ���� �� ����, �����',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1431,'�����������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1432,'������ / ����� �������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1433,'����� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1434,'����� �� �����, �����, ��������',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (1436,'����� �� ������� (�������, �����������)',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (1438,'������������ / ������������ �� ��������� ��������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1439,'��������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1440,'�������������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1441,'����������������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (1442,'����������������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1443,'��������',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (1444,'�������, ����������',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (1445,'������������',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (1446,'�����������',2214);
INSERT INTO `natc_clasifikator_prof` VALUES (1447,'�����-������ ������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1448,'�����-�������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1449,'�����-�������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1450,'�����-�����',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1451,'�����-������',3144);
INSERT INTO `natc_clasifikator_prof` VALUES (1452,'������� ���� ����',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (1453,'�������, ������������ ������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1454,'�������, ����������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1455,'����',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1456,'����, ����� / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1457,'����, ���������� ������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1460,'����-��������� �� ���������� ������������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1461,'���������� / ��������� �� ���������� �����',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (1462,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1463,'��������� / ����������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1464,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (1465,'����������� ���������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (1466,'����� ����������',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (1467,'�����',6154);
INSERT INTO `natc_clasifikator_prof` VALUES (1468,'������� � ����� �����������',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (1469,'������� � ��������� �����������',3333);
INSERT INTO `natc_clasifikator_prof` VALUES (1470,'������������� �� ������������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1471,'�����',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (1472,'����������� �������� / ����� �� ������� ���������',8314);
INSERT INTO `natc_clasifikator_prof` VALUES (1473,'����������� �������� / �� ���������',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (1474,'������ / ���������� ���',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (1475,'�����������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1476,'������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (1477,'��������� / �����',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (1478,'����� / ������������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (1479,'�����, ������ ������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (1480,'������� ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1481,'������� ������-�������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (1482,'������� �����, �����',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (1483,'������� �������, ������������ ������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1484,'������� ������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1485,'������� �����, ���� � ���������� �������',7412);
INSERT INTO `natc_clasifikator_prof` VALUES (1486,'������� ����������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (1489,'�������, ���� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (1491,'�������, ������� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (1493,'�������-������ / ����������-������� ������������',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1494,'�������-������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1496,'�������-������ / ����������-������� ������������',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1497,'�������-�������, ������������ ������ � �������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (1498,'�������-������� / ����������-������� ������������',7413);
INSERT INTO `natc_clasifikator_prof` VALUES (1499,'�������-������� / ����� �� ������� ���������',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (1500,'��������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (1501,'�������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (1502,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1503,'��������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (1504,'�������',5211);
INSERT INTO `natc_clasifikator_prof` VALUES (1505,'����������-����������',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (1506,'���������� (�������) /  ���������������� ��������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1507,'����������, ����� � ����',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1508,'����������, ��������� �� ���� / �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1509,'����������, ������������� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1510,'����������, ����� �� ������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (1512,'����������, ���������� �� ������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1514,'����������, ���������� ���� � ������� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1515,'����������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (1516,'����������, �������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1517,'����������',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (1518,'�������� / ����������',5143);
INSERT INTO `natc_clasifikator_prof` VALUES (1519,'��������, ��������',3252);
INSERT INTO `natc_clasifikator_prof` VALUES (1520,'����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1522,'���������',2121);
INSERT INTO `natc_clasifikator_prof` VALUES (1523,'���������, ������ ��������',2121);
INSERT INTO `natc_clasifikator_prof` VALUES (1524,'���������, ����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1526,'�����������-��������� / ���������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (1528,'�������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (1529,'��������, �����������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (1530,'��������, ������� ������ / ����������',8122);
INSERT INTO `natc_clasifikator_prof` VALUES (1531,'��������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1532,'������� ������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1533,'������� ������� / ���������-�������������� �������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1534,'������� �������, �����������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1535,'������� �������, ����� � ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1536,'������� �������, ���������',2145);
INSERT INTO `natc_clasifikator_prof` VALUES (1538,'�������� / ������� ������ (������� �����)',8218);
INSERT INTO `natc_clasifikator_prof` VALUES (1539,'�������� / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (1540,'�������� / ������������ �� ��������',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1541,'��������,  ��� ������ � �������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1543,'��������, ���������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1544,'��������, ���������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1545,'��������, �����������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1547,'��������, ������� ��� ������������� ������',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1548,'��������, ������� �� �������� ����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (1549,'��������, �����',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1552,'��������, ������ ������ / �����������������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1553,'��������, ��������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1554,'��������, �����',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1555,'��������, ��������� / ������������ �� ������',8157);
INSERT INTO `natc_clasifikator_prof` VALUES (1556,'��������, ������ �����',8338);
INSERT INTO `natc_clasifikator_prof` VALUES (1559,'��������, �������� �� �������� / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (1561,'��������, ������� ������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1562,'��������, �������� �� ������ ��� ���������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1563,'��������, ���������� �� ��������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1564,'��������, �������������� ������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1565,'��������, �������������-������������',8334);
INSERT INTO `natc_clasifikator_prof` VALUES (1566,'��������, ����',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1568,'��������, ��������� / �� ���������',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (1569,'��������, ������� � �������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1572,'��������, ������ ������',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1575,'��������, ��������� �� ������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1576,'��������, ��������� ������ / �����������������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1577,'��������, ������-��������� ����� / ������������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1579,'��������, �������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (1580,'��������, �������� ��������� (���) / ���������',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (1581,'��������, �������-����������� ����������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1582,'��������, ����������� ������  / �����������������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (1583,'��������, �������� � ������� �������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1588,'��������, ������� � ��������� / ������� �������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (1589,'��������, ��������������� ������ (������� � ��.)',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (1590,'��������, ������������ ������ �� ������',8272);
INSERT INTO `natc_clasifikator_prof` VALUES (1599,'��������, ���-����',8338);
INSERT INTO `natc_clasifikator_prof` VALUES (1601,'��������, ����������� ������ �� �������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (1602,'��������, ������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (1603,'��������, ������� ������ / ��������',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (1605,'��������, �����-�������� ������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (1606,'��������, �����������-������������ ������',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1611,'��������, ����',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (1612,'�����������',4112);
INSERT INTO `natc_clasifikator_prof` VALUES (1613,'�����������',4112);
INSERT INTO `natc_clasifikator_prof` VALUES (1614,'��������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1615,'��������, ������������������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1616,'���������� ������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1617,'���������� ������ / ������ ��������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1618,'���������� ������, ������������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1619,'���������� ������, ��������������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1620,'���������� ������, ������������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1621,'���������� ������, ��������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1622,'���������� ������, ��������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (1623,'���������� ��������',3252);
INSERT INTO `natc_clasifikator_prof` VALUES (1624,'���������� ����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1625,'���������� ��������',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (1626,'���������� ��������� / ������������� ������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (1628,'�������� / ����������� �� ������� ���������',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (1629,'�������� / ����������-������� ������������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (1632,'��������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1633,'��������, ������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1634,'��������, ������� ������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1635,'��������, ������������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1636,'��������, ��������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1637,'��������, ����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1638,'��������, �������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (1640,'������������ / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (1641,'�����������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (1642,'����� - ����, ���������� ���� / ���������',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1643,'�����, ����� / ��������� ����������',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1644,'����������',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (1645,'����������, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (1646,'����������-����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (1647,'�������� / ����������',2433);
INSERT INTO `natc_clasifikator_prof` VALUES (1648,'�������� �� ��������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1649,'��������, ������� ����������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (1650,'��������, �������� � ���������� �������� (��)',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (1651,'��������, ���������� ����� ����� / �����������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1652,'��������, �����',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (1653,'��������, ������ �������� � ������� / �����������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (1654,'��������, ��������� �������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (1655,'��������, ����� � ��������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1656,'��������, �������� ����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (1657,'�����������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (1658,'�������  / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (1659,'������� / ���',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (1660,'�������, �����������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1661,'�������, ���������� �� �����-����������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1662,'�������, �������� ����������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (1663,'�������, ���������� ������������ �� ����������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (1664,'�������-�������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1665,'������������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1666,'������������, ������ � ����������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1667,'����������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1668,'�����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (1669,'����� �������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (1670,'����� ��������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1671,'����� ��������',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (1672,'���������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (1673,'���������� �� ���������� �����',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (1674,'��������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1675,'��������-�����������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1676,'������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (1677,'��������',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1678,'���������� ���������',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1679,'���������� ���������',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (1680,'����������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (1681,'����, �������',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1682,'����, ������� ������� / �������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1683,'����, ������� �������� �������� / ����������',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1684,'����, ��������',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (1685,'����, ������ � ������� / ���������� �������',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (1686,'����, ����� � �������� �����',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (1687,'������ ������� / ����������� �����, �������������',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (1688,'������ ������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1689,'������ ��������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1690,'������ ��������',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (1691,'������ ������������ / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1692,'������ �����',2422);
INSERT INTO `natc_clasifikator_prof` VALUES (1693,'������ ������������ / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (1694,'������, ����������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1695,'�������������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (1696,'��������, ��������� � ��������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (1697,'��������, ������ �� ������ / ������������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1698,'��������, ������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (1699,'��������, ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (1700,'��������, ���� ������� �� �����',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1701,'��������, ������� � ���������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1703,'��������-�����������, ������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1704,'��������-�����������, �������, �������, ����������',3472);
INSERT INTO `natc_clasifikator_prof` VALUES (1705,'�������� / �����������-�������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (1706,'�������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (1707,'��������, ������� ������ �� ���������',7421);
INSERT INTO `natc_clasifikator_prof` VALUES (1708,'����������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1709,'�����',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1710,'��������',3481);
INSERT INTO `natc_clasifikator_prof` VALUES (1711,'���������, ������ / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (1712,'��������� / ���',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1713,'���������, ���',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1714,'���������, ������ ������������ �����',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1715,'���������, ������ ����������� �������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1717,'���������, �������������� ������������� ����������',7134);
INSERT INTO `natc_clasifikator_prof` VALUES (1718,'���������, ������� ������������� �������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1719,'���������, ��������� ������� / �������������',7233);
INSERT INTO `natc_clasifikator_prof` VALUES (1720,'���������, ��������� ���������� � �������',8281);
INSERT INTO `natc_clasifikator_prof` VALUES (1722,'���������, ��� ����',7218);
INSERT INTO `natc_clasifikator_prof` VALUES (1723,'���������, ���������������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1724,'���������, ��������������� - �������������� ������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1725,'���������, ��������������� ������ / �������������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1728,'���������, ��������� � ���������� ������ � �����',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1729,'���������, ������������ ������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (1730,'������� / �����������������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1731,'������� �� ��� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1732,'������� �� ����, ������� �������� ��������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1733,'�������, ���������� � �����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (1734,'�������, ���������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1735,'�������, ������ �����',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1736,'�������, �������� ������� ��������� / ���',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1737,'�������, ������������ ������ � �������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (1738,'�������, ������������ ����� � �������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (1739,'�������, ���������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1740,'�������, ��������� ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1741,'�������, ������� ��������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1742,'�������, �����������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1743,'�������, ������� ���������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1744,'�������, ������� ������� ����������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1747,'�������, ������ � ���������� (�� \"������\")',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1748,'�������, ����� ������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1749,'�������, ��������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1750,'�������, ���������� ������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (1751,'�������, �������� ������ / �� ���������',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (1753,'�������, ���������� �� �����-�������� �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1755,'�������, ���������� �� ������������ �����',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1756,'�������, ���������� �� ������ ������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (1758,'�������, ���������� �� ��������� ��������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1761,'�������, ������������ �� �����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (1762,'�������, ��������������� ������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1763,'�������, ������� ��������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1764,'�������, ������ � ���������� �� ��� � �',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1765,'�������, ������� ��������� �����',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (1766,'�������, ��������������� ������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1767,'�������, ����� �����������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1768,'�������, ������������ / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1769,'�������, ��������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1770,'�������, �������� ���������� / ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (1771,'�������-����������, ������� �����������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (1773,'�������-������������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (1775,'��������, ��������� �������',7233);
INSERT INTO `natc_clasifikator_prof` VALUES (1776,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (1777,'�����',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1778,'����� / ������ ������ ���� (�������)',2);
INSERT INTO `natc_clasifikator_prof` VALUES (1779,'�����, ������� �������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1780,'�����, ������� �������',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (1781,'��������',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (1782,'��������, ������� ������ ������',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1783,'��������, ������',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1784,'��������, �����',8342);
INSERT INTO `natc_clasifikator_prof` VALUES (1785,'��������, ������� ����� � ����������� / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (1786,'�������������',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1787,'�������������, �������� ��������',8324);
INSERT INTO `natc_clasifikator_prof` VALUES (1788,'��������� ��������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1789,'��������� ���������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1790,'��������� ���������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1791,'��������� �����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1793,'��������, �������������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1794,'��������, �����',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1795,'��������, ����� /� ������� � ��-����� �����������/',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (1796,'���������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1797,'���������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (1798,'�����',7431);
INSERT INTO `natc_clasifikator_prof` VALUES (1799,'������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (1801,'������� ������������ / ��������� ����',2);
INSERT INTO `natc_clasifikator_prof` VALUES (1802,'�������� / ����������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (1803,'�������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1804,'������� �� ������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (1805,'������� �� ����� �� �������� / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (1807,'������� �� ������ / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (1809,'������������ ��������� / ���e� ���������',3143);
INSERT INTO `natc_clasifikator_prof` VALUES (1810,'��������� / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1811,'��������� �� ������ / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (1812,'�������� �� ������� ���������',7222);
INSERT INTO `natc_clasifikator_prof` VALUES (1813,'��������� / ������������ ����������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (1814,'�������� / ����� ���������',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (1815,'��������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (1816,'�������� / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (1817,'�������� �� ������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1818,'��������, ������� � ����� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (1819,'������� �������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (1820,'������� ������������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (1821,'�������� (����� �� ����) / ������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1822,'�������� / �����',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (1823,'�������� / ����������� ����',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (1825,'����������, ����������� � ��������������� ��������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1826,'����������, ��������� � �������������� ������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1827,'����������, ���������������� ������',7429);
INSERT INTO `natc_clasifikator_prof` VALUES (1828,'����������, ����������� ������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1829,'����������, �����',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1830,'����������, ����������� ������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1831,'����������, �����-�������',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1832,'����������-��������, ������������ ������ � ���',7221);
INSERT INTO `natc_clasifikator_prof` VALUES (1833,'������ ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (1834,'������ ��������� I ������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1835,'������ ��������� II ������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1836,'������ ��������� III ������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (1837,'�������� / �����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1839,'�������� / �������������-������������ ������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1840,'�������� / ����������-����������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1841,'�������� / ������������� ����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1842,'�������� / �������������� �������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (1843,'�������� / ������������ ����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (1844,'�������� ���� / �� ���������',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (1846,'�������� ���� (��- V-VII ���������)',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (1847,'�������� ������� �� ��������-������������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1848,'�������� �� ��������������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (1851,'�������� �� ������ �����',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (1852,'�������� ���� ���������� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (1853,'�������� ����� / ����������� �����',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1854,'�������� ����� / ���������������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1855,'�������� ����� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (1856,'�������� ����� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1858,'�������� ����� / �������� �������������',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (1859,'�������� ����� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (1860,'�������� ����� / �������� �� ���� ��� ������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1861,'�������� �����, ���',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1862,'�������� �����, ����',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1863,'�������� �����, ���, ����� � ������ �� �����',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1864,'�������� �����, �������������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1865,'�������� �����, ���������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1866,'�������� �����, ���������������-���������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1867,'�������� �����, ������ �������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1868,'�������� �����, ���������������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1869,'�������� �����, �������-�������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1871,'�������� �����, �������� �� �������� �����',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1872,'�������� �����, ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1873,'�������� �����, ������-�����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1874,'�������� �����, ��������� � ������������',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1876,'�������� �����, ������������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1878,'�������� �����, ������������� ������ � ����������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1879,'�������� �����, ������������� ����������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1881,'�������� �����, ��������� ������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1882,'�������� �����, ��������������-������������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1884,'�������� �����, ����� ������',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1885,'�������� �����, ��������� � ������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1888,'�������� �����, ������������ ��������������',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (1889,'�������� �����, �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1890,'�������� �����, ���������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1891,'�������� �����, ���� �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1894,'�������� �����, ������� �������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1895,'�������� �����, �������-������������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1896,'�������� �����, ��������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1898,'�������� �����, ������',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (1899,'�������� �����, ���������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1900,'�������� �����, �������������� ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1901,'�������� �����, ������������, ������������ � ����',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1903,'�������� �����, ������������ � ����',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1904,'�������� �����, ��������-�����',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1906,'�������� �����, ���������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (1910,'�������� �����, ���������� � ��������� �������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1911,'�������� �����, ���������� �������� �� ��������',1236);
INSERT INTO `natc_clasifikator_prof` VALUES (1912,'�������� �����, ������������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1914,'�������� �����, ���� � ������� ������� (���)',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1915,'�������� �����, ���� � �������� ��������',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1916,'�������� �����, ���������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1917,'�������� �����, ���������� �� ����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (1919,'�������� �����, ���������� �� ��������� �������',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (1920,'�������� �����, ���� � ��������������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (1921,'�������� �������������� �����',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1922,'�������� ������ / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1923,'�������� ������ / �������� �������������',1124);
INSERT INTO `natc_clasifikator_prof` VALUES (1924,'�������� ������ / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (1926,'�������� ����������, ������������ ��������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1927,'�������� ��� / ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1928,'��������, e�. ����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1931,'��������, ���� �� �������� �������',1155);
INSERT INTO `natc_clasifikator_prof` VALUES (1932,'��������, ��������������� �������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (1933,'��������, ����� � ���������� / ������������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1934,'��������, ��������������� ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1937,'��������, ���������� / �������������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1938,'��������, �������',1123);
INSERT INTO `natc_clasifikator_prof` VALUES (1939,'��������, �������� ����� / ���������������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1940,'��������, �������� ������� / ���������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (1941,'��������, �������� / ������� ��������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (1942,'��������, �������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (1943,'��������, �������� �����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1944,'��������, ������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1945,'��������, ����� / ������������',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (1946,'��������, �����',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (1947,'��������, ������',1223);
INSERT INTO `natc_clasifikator_prof` VALUES (1953,'�����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (1954,'����������',999);
INSERT INTO `natc_clasifikator_prof` VALUES (1955,'������ �� �������',998);
INSERT INTO `natc_clasifikator_prof` VALUES (1958,'����������������� �������� / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (1959,'����������������� �������� / ������� ����������',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (1960,'����������������� �������� / ���������������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (1961,'����������������� ��������, ���������� �� ������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (1962,'����������������� ��������, ���������� �� �������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (1963,'����������������� ��������, ������� ������ ������',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (1965,'��������, ������� �����������',7232);
INSERT INTO `natc_clasifikator_prof` VALUES (1966,'����������� �� �����, �������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (1967,'�����������, �������� ����������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (1968,'����� �� ����� / �����, ���������� ����',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (1969,'��������',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (1970,'��������',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (1971,'���������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (1972,'�������� / ���������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (1973,'��������, ������������������ �������',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (1974,'�������������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (1976,'�������� ���������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (1977,'���������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (1979,'��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1980,'�������� �� ������� / ������ ������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (1982,'��������� ����������',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (1983,'��������� �������� / ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1984,'������, ������� ����� ���������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1985,'������, �������� �� ������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (1986,'������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (1987,'��� �������� / ����� �� ������� ���������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (1988,'��� �������� / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (1989,'��� �������� / ������� (����)',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (1990,'��� �������� / ��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1991,'��� �������� / ���������� �������',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (1992,'��� �������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1993,'��� �������� / �����',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (1994,'��� ��������, ��������� �� ������� / ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (1996,'��� ��������, ���������� � ������ �� ������',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (1998,'��� ��������, ��������� ���������� ���',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (1999,'��� ��������, ������������ �� ������',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (2000,'��� ��������, ������� �� ������� / �������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2002,'��� ��������, ������ �� ������� ����� � ����',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2003,'��� ��������, ������ �� ���������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2004,'������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (2005,'������� (�������)',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2006,'�����',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2007,'�����, ����� ����� / ������������ �� ������������',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2008,'������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (2009,'����������, ����',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (2010,'������������ / ����� �� ������� ���������',7116);
INSERT INTO `natc_clasifikator_prof` VALUES (2011,'������������ / ������� ������������',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (2012,'������������ �� ������ / ��������� ������������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2013,'������������ �� ���� (����������)',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2014,'������������, ��� / ����������������',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (2015,'������������, ������� �����',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2016,'������������, ��������� / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (2017,'������������, �������',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2019,'������������, �����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2021,'������������, �������� �����',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2022,'������������, ���������� ��������',7323);
INSERT INTO `natc_clasifikator_prof` VALUES (2025,'������������, ������ / ��������� ������������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (2026,'����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2027,'������� ��������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2028,'����������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2029,'����������-������������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2030,'��������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (2031,'���������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2032,'�������� / ������ ��������������� (���)',3117);
INSERT INTO `natc_clasifikator_prof` VALUES (2033,'�������� / ���������������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2034,'�������� / ����� �� ������ ���������',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2035,'�������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (2036,'�������� / �������� ������������',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2037,'�������� / ���������� ��������� �� ������������',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2038,'�������� / �����������������',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2039,'�������� / �����������-�������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2040,'�������� / ������� ����������',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (2041,'�������� / �������������� ����������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2044,'�������� / ������������ �� ��������� �������',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2045,'�������� / ������������ �� ������������ �������',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2046,'�������� / ������������ �� �������',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2048,'�������� / ������������ �� ����',8277);
INSERT INTO `natc_clasifikator_prof` VALUES (2049,'�������� / ������������ �� ���� �����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2050,'�������� / ������������ �� ���',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2051,'�������� / ������������ �� ��������� ���',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2052,'�������� / ������������ �� ������������',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2053,'�������� / ������������ �� ��������',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2054,'�������� / ������������ �� �������� ���������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2055,'�������� / ������������ �� ����������� ���������',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2056,'�������� / ������������ �� ��������������� �������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2057,'�������� / ������������ �� ���������� ��������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2059,'�������� / ������������ �� ������ � ������� ������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2062,'�������� / ������������ �� ���������� ����',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2064,'�������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2065,'�������� / ������������ �� ������������',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (2067,'�������� / ������������ �� ���',8159);
INSERT INTO `natc_clasifikator_prof` VALUES (2068,'�������� / ������������ �� �������� ��������',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2069,'�������� / ������������ �� ��������',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2070,'�������� / ������������ �� ������� � ���',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2071,'�������� / ������������ �� ��� �� ����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2072,'�������� / ������������ �� ����� ��������',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2073,'�������� / ������������ �� ������� �������',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (2074,'�������� / ������������ �� ������� � �������',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2075,'�������� / ������������ �� ������',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (2076,'�������� / ������������ �� ��������',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2077,'�������� / ������������ �� ������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (2078,'�������� / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2080,'�������� / ������������ �� ���������� ��������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (2081,'�������� / ������������ �� ������ � ������� �����',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2082,'�������� / ������������ �� ������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (2084,'�������� / ������������ �� ���������� �������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2085,'�������� / ������������ �� ��� ���',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2086,'�������� / ������������ �� ������, ���������',8157);
INSERT INTO `natc_clasifikator_prof` VALUES (2087,'�������� / ������������ �� ������',8222);
INSERT INTO `natc_clasifikator_prof` VALUES (2088,'�������� / ������������ �� ����������',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2089,'�������� / ������������ �� ����������� ������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2090,'�������� / ������������ �� ����������� �����',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2092,'�������� / ������������ �� ��������� ���',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2093,'�������� / ������������ �� �������� �������',8145);
INSERT INTO `natc_clasifikator_prof` VALUES (2094,'�������� / ������������ �� ������ � ������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2097,'�������� / ������������ �� ������ ���',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2098,'�������� / ������������ �� ��������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2099,'�������� / ������������ �� ������',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2100,'�������� / ���������������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2101,'�������� / ������ �� ����������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2102,'��������, ���',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2103,'��������, �������������� ������� �����',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2104,'��������, ���������� / ������� ������',8218);
INSERT INTO `natc_clasifikator_prof` VALUES (2105,'��������, ��������� ������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2106,'��������, ���������� ������ / ���� � ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2107,'��������, ���������������',8336);
INSERT INTO `natc_clasifikator_prof` VALUES (2109,'��������, ������������ ������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (2111,'��������, ������������� ����������',8164);
INSERT INTO `natc_clasifikator_prof` VALUES (2113,'��������, �����������������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2114,'��������, �����������������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2115,'��������, ������ ��.����� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2116,'��������, ���������� �� ������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2119,'��������, ������������ ��������� �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2120,'��������, ���������������� ������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (2121,'��������, ��.����� \"��������� �����\" / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2122,'��������, ������������ ���������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2123,'��������, ���������� ����� �� ������� ����������',8292);
INSERT INTO `natc_clasifikator_prof` VALUES (2124,'��������, �������� ����',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2125,'��������, ��������� ��������, ���������� �� ������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2126,'��������, ���������� ������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2128,'��������, ��������� � ��������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2129,'��������, ��������� �� ���������� � ���',8125);
INSERT INTO `natc_clasifikator_prof` VALUES (2130,'��������, ������������ / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2135,'��������, ���������� �������� ��������� �� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2137,'��������, ���������� ������ / ����������',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (2138,'��������, ������� ������� / ������� ������������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (2139,'��������, �������� ���� / ������� �����',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2140,'��������, �������� ����� / ��� � �����',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2141,'��������, ��������',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2145,'��������, ������� ������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (2147,'��������, ����� �� ������',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (2148,'��������, ������ / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2149,'��������, ����� �� ���������� �� ����',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2150,'��������, ����� �� ���������� �������',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2151,'��������, ����������� �������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2152,'��������, ������������ � ������������ �� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2153,'��������, ��������� / ������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2154,'��������, ������  / ��������������',8331);
INSERT INTO `natc_clasifikator_prof` VALUES (2159,'��������, ������ �� ��������� �� ���������� �����',8279);
INSERT INTO `natc_clasifikator_prof` VALUES (2160,'��������, ������ �� ����������� ��������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2162,'��������, ������ �� ��������� �� ������� ��������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2163,'��������, ������ �� ��������� �� ������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (2167,'��������, ������ �� ���������� �� ��������� ������',8261);
INSERT INTO `natc_clasifikator_prof` VALUES (2172,'��������, ������ �� ������������ �� ����� �� �����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2174,'��������, ������ �� ������������ �� �����-�����',8276);
INSERT INTO `natc_clasifikator_prof` VALUES (2175,'��������, ������ �� ���������� �� �����',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2179,'��������, ���������� ���������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2180,'��������, ����������������� ������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2182,'��������, ������������ ���',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (2185,'��������, ���������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2186,'��������, ������������ �������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2187,'��������, ��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2189,'��������, ���������� ���',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2191,'��������, ������� ������ / ����������',8251);
INSERT INTO `natc_clasifikator_prof` VALUES (2192,'��������, ��������� �� ������',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (2193,'��������, ��������� �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2194,'��������, ��������� �� ��������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2195,'��������, ��������� �� ��������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2197,'��������, �������� �� ����� � ��������� ���������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2198,'��������, ������� ���������� �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2200,'��������, ����� ���������� / ����������',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2201,'��������, ����� ������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2202,'��������, ���������� �������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2203,'��������, ���������� ������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2205,'��������, �������� ������',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (2207,'��������, ���������� �� �����������-�������� ����',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (2208,'��������, ���������� �� �������� ����',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (2209,'��������, ���������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2211,'��������, �������� / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2212,'��������, �������� ������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2213,'��������, ����������� ����������',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (2214,'��������, ������������ �� �������� ���',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2215,'��������, ��������� �� ��������',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2217,'��������, ���������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2218,'��������, ���� / ����������� �� ������� ���������',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (2220,'��������, ���� �� ������� �����',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2221,'��������, ������� � ������� �� ������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2222,'��������, �������� ��������� �� �����',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (2223,'��������, �������� ��������� �� ������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2224,'��������, ����������������� �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2225,'��������, ������������� �� ��������������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2226,'��������, ���������� �� ������ ���������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2227,'��������, ���������� �� ����',8155);
INSERT INTO `natc_clasifikator_prof` VALUES (2228,'��������, ������������ �����',8172);
INSERT INTO `natc_clasifikator_prof` VALUES (2229,'��������, ������ �� ������ ���������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2230,'��������, ����� / ������������ �� ������',8223);
INSERT INTO `natc_clasifikator_prof` VALUES (2233,'��������, ������������ ���������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2237,'��������, ������ / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2240,'��������, ����������� �� ������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2243,'��������, ��������������� �������',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2244,'��������, ������������ ������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2245,'��������, ������',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2246,'��������, �����������������',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2249,'��������, �������� ��������� �� ��������',8156);
INSERT INTO `natc_clasifikator_prof` VALUES (2250,'��������, ������������ ���� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2253,'��������, �������������� ��� �������� �� ������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2256,'��������, ������� �� ������ ��������� � ��������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2257,'��������, ������� ������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (2258,'��������, ������������ �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (2260,'��������, ���������� ������',4113);
INSERT INTO `natc_clasifikator_prof` VALUES (2261,'��������, ������� ������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (2264,'��������, ���� ����������  �� ������',8144);
INSERT INTO `natc_clasifikator_prof` VALUES (2265,'��������, �����-������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2266,'��������, ���������� / ��� � �����',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2267,'��������, ������� ������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (2268,'��������, ��������� ��������� �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2269,'��������, ��������� ��������� �� �����������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (2271,'��������, ��������� ������� � ��������',8151);
INSERT INTO `natc_clasifikator_prof` VALUES (2272,'��������, ������� ����������',8153);
INSERT INTO `natc_clasifikator_prof` VALUES (2273,'��������, ��������� ������� / ������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2274,'��������, ��������� ����������� �������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2278,'��������, ������ �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2279,'��������-����������� / ��������� �������',8171);
INSERT INTO `natc_clasifikator_prof` VALUES (2280,'��������-������, ������ ���',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (2281,'������� / ������� �����������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (2282,'�����������, ��������� �� �����������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2283,'����������� �� ������� ��������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2284,'�����',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (2285,'�����������',3254);
INSERT INTO `natc_clasifikator_prof` VALUES (2286,'����������� / ��� �� ���������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2287,'����������� / ����������� ���������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (2288,'����������� / ������������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (2290,'����������� / ������������ �������� ���������',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (2294,'����������� / ������ �� ���',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2295,'����������� / ������������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (2296,'����������� / ���������� ������ � ����������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2297,'����������� / ��������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (2298,'����������� ����������, ��������� / ����',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2299,'�����������, ���',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (2300,'�����������, ������� � �������� �������',3419);
INSERT INTO `natc_clasifikator_prof` VALUES (2301,'�����������, �������� �� ����� � �������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2302,'�����������, ������������ / ���������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (2304,'�����������, ������� ������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2305,'�����������, ����������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2306,'�����������, ������������� ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (2307,'�����������, ������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2308,'�����������, ��������� ������������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2310,'�����������, ������������� �������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2311,'�����������, �������������� �������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2312,'�����������, �������� ������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (2314,'�����������, ������������ ������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2317,'�����������, ���������� ���������� � �������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2318,'�����������, �������� � ����������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2319,'�����������, ��������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2320,'�����������, ��������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2321,'�����������, �������� � ����������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (2322,'�����������, ��������� ������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2323,'�����������, �������� ���������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2324,'�����������, ��������-������ �������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2326,'�����������, �������� �� ��������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2327,'�����������, ���������� ������������ �� ���',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (2329,'�����������, ������� -  ���� � �����������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2330,'�����������, ��������� �������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2331,'�����������, ������ �������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (2332,'�����������, ����������',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (2333,'�����������, �������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (2334,'�����������, ������� �� ���������� �����',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2335,'�����������������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2336,'�����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (2337,'���������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2338,'������� � �����������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (2339,'����������� ������',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (2340,'���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2341,'����������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2342,'����������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (2344,'�������� �� ������� �� ����� / ����������',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (2346,'��������� �������� / ������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (2347,'��������� ��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (2348,'��������� �������� / ��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (2349,'��������� �������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2350,'���������� / ������� �����',7117);
INSERT INTO `natc_clasifikator_prof` VALUES (2351,'���������� / ������������������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (2353,'���������� / �����������-�������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (2354,'���������� / ������� ����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (2355,'���������� / ������������ �� ���������� ��������',7323);
INSERT INTO `natc_clasifikator_prof` VALUES (2356,'���������� / ������������ ���������',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (2357,'����������, ������ / �������� ����������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (2360,'����������, ������������� ����������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2361,'����������, �������� / ������������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (2362,'����������, ����������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2363,'����������, ����� ��������',6154);
INSERT INTO `natc_clasifikator_prof` VALUES (2364,'����������, ������ ���������',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (2366,'����������, ���������� ����',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (2367,'����������, ����������� �����������',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (2369,'����������, ����������-�������� ������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2370,'������� / ���������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2371,'������� �� ����� �� ����� ������, ��������� ������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (2372,'��������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2373,'�������� / ����������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (2374,'�������� ����� ������� / ����������� ���������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (2375,'��������, ���������� �� ������ / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (2376,'������ / ��������� ����� (�������)',1);
INSERT INTO `natc_clasifikator_prof` VALUES (2377,'������ / ��������� ����',1);
INSERT INTO `natc_clasifikator_prof` VALUES (2378,'��������-������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (2379,'���������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2381,'���������, ����������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2382,'�������� �� ����� �� ������������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2383,'�������� �� �����',7415);
INSERT INTO `natc_clasifikator_prof` VALUES (2384,'��������, ��������������� ������',3419);
INSERT INTO `natc_clasifikator_prof` VALUES (2385,'��������, �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2386,'������',9312);
INSERT INTO `natc_clasifikator_prof` VALUES (2387,'�����, ��������� ������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2388,'�����, ����� / �������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2389,'�����, ����������� ������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2390,'�����, ������ �� �����������',5161);
INSERT INTO `natc_clasifikator_prof` VALUES (2391,'�����, �������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2392,'�����, ������� / �����������',9154);
INSERT INTO `natc_clasifikator_prof` VALUES (2393,'������� �� �������� / ������ ������',4211);
INSERT INTO `natc_clasifikator_prof` VALUES (2394,'�����������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2395,'�����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2396,'������� ������',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (2397,'�����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2398,'�����������, �����������',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (2399,'����������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (2400,'���������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2401,'��������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (2402,'������������� �������� / ����������� �����',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (2403,'����������',4145);
INSERT INTO `natc_clasifikator_prof` VALUES (2404,'������ / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (2405,'����������� �� ����� / ������������ �� �����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2406,'������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (2407,'�������� �������',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (2408,'����������',2479);
INSERT INTO `natc_clasifikator_prof` VALUES (2409,'�������, ����������� �����',2223);
INSERT INTO `natc_clasifikator_prof` VALUES (2410,'�������-������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (2411,'��������',1145);
INSERT INTO `natc_clasifikator_prof` VALUES (2412,'������, ������',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (2413,'�����, ������� �����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (2414,'������� / �������� ������ �������� (���)',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (2415,'������� / ������ ��������',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (2416,'������������� ��������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (2417,'����� / ������������ �� ������������',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (2418,'����� / ������������ �� ���������� ��������',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (2419,'����� / ������� �������',8152);
INSERT INTO `natc_clasifikator_prof` VALUES (2420,'�����, ���',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2422,'�������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (2424,'����� / ������, �������',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (2425,'����� / �������, �������',9137);
INSERT INTO `natc_clasifikator_prof` VALUES (2426,'����� �� ����� / ��������� ������������',7432);
INSERT INTO `natc_clasifikator_prof` VALUES (2427,'��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (2428,'������� / ����������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2429,'������� / ��������� ������������',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (2430,'������� ��������, �������� / ����������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2431,'������� ��������, ������� / ����������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2432,'������� �� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2434,'�������, ��������-�������� / ����������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2435,'�������-������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (2436,'����� / �����������-�������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2437,'����� / ������������ �� ���������� ��������',8133);
INSERT INTO `natc_clasifikator_prof` VALUES (2438,'�����, ��������������� � ���������������� �������',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (2439,'������',9151);
INSERT INTO `natc_clasifikator_prof` VALUES (2440,'���������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2441,'�����������, ����������',7425);
INSERT INTO `natc_clasifikator_prof` VALUES (2442,'�����������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (2443,'����������',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (2444,'������� - ���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2445,'������� - ���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2446,'�������, ���������� ����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2447,'�����������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2448,'���������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2449,'���������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (2450,'����������, ����� / ��������',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (2451,'�����������, ������� ��������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2452,'��������� ����� (���)',5115);
INSERT INTO `natc_clasifikator_prof` VALUES (2453,'��������� ��������',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (2454,'��������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2455,'������������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (2456,'�������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2457,'������ � ���������, ������� �����',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2458,'������ �� ����',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2460,'������, ����� ������������ �������',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2461,'������-������� / ��������',7436);
INSERT INTO `natc_clasifikator_prof` VALUES (2462,'���������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (2463,'���������� �����',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (2464,'�������, ����� �� �������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2468,'�����������, �������� ������ / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2469,'���������, ������ �� ��������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2470,'����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (2471,'����������',3453);
INSERT INTO `natc_clasifikator_prof` VALUES (2472,'������� / ���������������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2473,'������� / �����������������',9212);
INSERT INTO `natc_clasifikator_prof` VALUES (2474,'�����������, ���������� �� ������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (2475,'��������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (2477,'���������, ����������',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (2478,'���������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (2479,'�������',3452);
INSERT INTO `natc_clasifikator_prof` VALUES (2480,'�������',2212);
INSERT INTO `natc_clasifikator_prof` VALUES (2481,'�������� ���������� / ������ ������� (������ ����)',5131);
INSERT INTO `natc_clasifikator_prof` VALUES (2482,'�������� ������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (2483,'�������� �������� / ������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (2484,'�������� �����������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (2485,'�������� ��������',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (2486,'�������� ����������� �������� / �� ���������',8311);
INSERT INTO `natc_clasifikator_prof` VALUES (2487,'�������� ��������, ������� �� �������� ����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2488,'�������� �������� / ������������ �� ������������',8162);
INSERT INTO `natc_clasifikator_prof` VALUES (2489,'�������� ����������� / ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (2490,'�������� ������ / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (2491,'��������-���������� ���� �� ���������� ���������',5144);
INSERT INTO `natc_clasifikator_prof` VALUES (2492,'��������-������� / �����',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (2493,'��������-�����������  �� ������������ ������������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2494,'��������-�������� �����, �������� ����� �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (2495,'��������-�������� �� ���������� ������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2496,'��������-��������, ����������� �������',8252);
INSERT INTO `natc_clasifikator_prof` VALUES (2497,'��������-��������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (2498,'��������-�����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2500,'��������-���������',3228);
INSERT INTO `natc_clasifikator_prof` VALUES (2501,'�������, �������� ��������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2502,'�������, ������� ������',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2503,'�������, ���������� ������',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2505,'��������� / �����',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2506,'���������, �������� �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2507,'���������, ������, ����� / �����������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2508,'���������, ��������� �����',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (2509,'���������, ������� ����',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (2510,'���������, �����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (2511,'���������, ����������� ������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (2512,'���������, ������������ ������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (2513,'���������, �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (2514,'���������, ������� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (2515,'���������, ����� �����',3411);
INSERT INTO `natc_clasifikator_prof` VALUES (2516,'�����������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (2519,'��������� �� ���� � ������ / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2520,'���������, ��. ����� � ������������ ����',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2522,'���������-���������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (2523,'��������',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (2524,'�������� ���������� / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2525,'�������� �������� / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2526,'�������� ��������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (2527,'������������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (2528,'������������� �������� / �������� �������������',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (2529,'������������� ������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (2530,'����������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (2531,'��������',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (2532,'�������� ��� ������ ����. �����������',3479);
INSERT INTO `natc_clasifikator_prof` VALUES (2533,'��������, ������ ��������',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (2534,'��������� � ����� (������)',9331);
INSERT INTO `natc_clasifikator_prof` VALUES (2535,'������, �� / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2537,'������, ����� ������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2541,'������, �������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2543,'������, ������ ������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (2544,'����������� / �������������� ���',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2545,'����������� / ������� ��������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2546,'����������� / ��������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (2547,'����������� / �������� �����',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (2548,'����������� / ����������� �� �������������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2549,'����������� / ����������� �� ������������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2550,'����������� / ����������� ������',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (2551,'����������� / ������� ����',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (2552,'����������� / ������� �����������',1144);
INSERT INTO `natc_clasifikator_prof` VALUES (2554,'����������� / ��������� ���������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2555,'����������� / �������� � ������� ���',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (2557,'����������� �� ������� / ������� ��������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2558,'����������� �� ��������� / ���',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2559,'����������� ��������� ������� / ������',1131);
INSERT INTO `natc_clasifikator_prof` VALUES (2560,'�����������, ���� ���������� �����',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (2561,'�����������, �������� ��������������� ���',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2562,'�����������, �������� ���������� ���',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2563,'�����������, �������� ���',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (2565,'�����������, �������� ���������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2566,'�����������, ���������� �������',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (2567,'�����������, �������� �������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2568,'�����������, �������� �������',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (2569,'�����������, �������� ����� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (2570,'�����������, ����������� ����� / ����������',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (2571,'������������ / �������� ����������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2572,'������������, ������ ������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (2573,'������������, ��������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (2574,'��������� / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (2575,'��������� �� �����������',1111);
INSERT INTO `natc_clasifikator_prof` VALUES (2576,'������������ / �� ���������',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (2577,'���������� (��������) / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2580,'���������� / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2582,'���������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (2583,'��������� ������-����������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (2584,'����������, ������ ��������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (2585,'������������ / ���',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (2586,'������������ / �����������, �����',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (2587,'������������ �� �������� ��������',3341);
INSERT INTO `natc_clasifikator_prof` VALUES (2591,'������������, �����',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2592,'������������, ������ ��������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2593,'������������, �������������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2594,'������������, ���������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2595,'������������, ��������� �����������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2596,'������������, ������� ������������ �������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2597,'������������, ������� �����',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2598,'������������, �����������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2599,'������������, �������� ��������',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2600,'������������, ������ � ������',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (2601,'������������, �����',3313);
INSERT INTO `natc_clasifikator_prof` VALUES (2602,'�������� �� ������ / ��������� ������������',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (2603,'�����������, ������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2604,'������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2606,'�������, ������ � ����������� ����� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2609,'�������, ��������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2613,'�����������, ������ � �������, ����������',7424);
INSERT INTO `natc_clasifikator_prof` VALUES (2615,'�����������, ������ �� ����������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (2616,'�����������',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (2617,'����������� / �������� ��������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2618,'����������� �� ��������',5142);
INSERT INTO `natc_clasifikator_prof` VALUES (2619,'��������-�������� �� �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2620,'�������� / ���������� �� ��������������� ��������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2622,'��������, ����������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (2624,'��������� / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (2625,'���������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2626,'��������������',3259);
INSERT INTO `natc_clasifikator_prof` VALUES (2627,'����������, �����',9131);
INSERT INTO `natc_clasifikator_prof` VALUES (2628,'����������, ���������� ����',9141);
INSERT INTO `natc_clasifikator_prof` VALUES (2629,'����������, ������ / �������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2631,'��������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2632,'�����������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (2633,'���������� / ������� �����������',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (2635,'����������, ����� � ����� �����',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (2636,'���������� �� �����',2112);
INSERT INTO `natc_clasifikator_prof` VALUES (2637,'��������� �������� / ���, ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (2638,'����������, ���������� �� ���������� ������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (2639,'����������, �������� ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (2640,'�������� / �������������� (�����������)',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2641,'�������� / ������������� ��������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2642,'�������� / �������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2643,'�������� / ������ ���� (������)',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2644,'�������� / �����',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2646,'��������, ������������ / �������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2647,'��������, ����������� / ����� �� ����',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2648,'��������, ��������� �� ����� �� ������� / ��������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2649,'��������, ���������� �� ������� �� ��������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2650,'��������, �����',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (2651,'��������, ��������� ��������',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (2652,'��������-���������� / �������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2653,'���������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (2654,'��������� �������, ����������� � ����������',2144);
INSERT INTO `natc_clasifikator_prof` VALUES (2655,'���������, ���������� �������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (2656,'���������, ���������� �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (2658,'������������, ������ ����',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2660,'������������, �����',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2661,'������������, ����� �����',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (2662,'������������, ����',6114);
INSERT INTO `natc_clasifikator_prof` VALUES (2663,'������������, ������ �������',7427);
INSERT INTO `natc_clasifikator_prof` VALUES (2664,'������������, ������� �������',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (2665,'������������, ������� �����',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (2666,'������������, ���� ���� �� ������� / �����������',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (2669,'������������, ������� �������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2670,'������������, ������� �� �����',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2671,'������������, ����������� �������, ����� � �����',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2672,'������������, �����',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (2673,'������������, ����',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2674,'������������, ��������� ��������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (2675,'������������, �������� �����������',7224);
INSERT INTO `natc_clasifikator_prof` VALUES (2676,'������������, ������� ������� �������',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (2677,'������������, �������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (2678,'������������, ������� �������',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (2679,'������������, ��������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (2680,'������������, ����',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2681,'���������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (2682,'��������',2424);
INSERT INTO `natc_clasifikator_prof` VALUES (2683,'��������-�������� ����� / ������ �����������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2684,'��������-����������� / ���������� �����������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (2685,'��������� ��������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2686,'��������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (2687,'�����������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (2688,'����������� �� ������� ��������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2689,'���������-�������������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (2690,'��������',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (2691,'���������, ������� ���������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2692,'��������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2693,'�������� / ������� ���������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2694,'�������� / ����� �� �������� �� �������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (2695,'��������',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2696,'��������, ���������',6123);
INSERT INTO `natc_clasifikator_prof` VALUES (2698,'������',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2699,'������ �� ������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2700,'������ �� ������ �������',5222);
INSERT INTO `natc_clasifikator_prof` VALUES (2701,'������ �� ����������� ����',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (2703,'������ �� ������� / ������������ �� �����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2704,'������ �� �����������',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2706,'������, �����������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2708,'����� �������� �� ����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (2709,'����� ��������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2711,'�������� (�������) / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (2712,'�������� / ��������������',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2713,'�������� / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (2714,'�������� / �������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2715,'�������� / �������������� �����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2716,'�������� / ���������� �� �������',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (2717,'�������� / ����� ����������',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (2718,'�������� / ���������� ����',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2719,'�������� / ���������� ��������',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (2720,'�������� / ������, ���������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2721,'�������� / ������������ �� ��������� �������',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (2726,'�������� / ������������ �� ��������������� �������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2727,'�������� / ������������ �� ������� ����������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2728,'�������� / ������������ �� ��������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2729,'�������� / ������������ �� ��������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2732,'�������� / ������������ �� ������ �������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2733,'�������� / ������������ �� �������������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (2734,'�������� / ������������ �� ������� � �����',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2737,'�������� / ������������ �� ��� �� ������ ����',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2740,'�������� / �������������� �� �����������������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2741,'�������� / ������ �� ������� �����������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (2742,'�������� / �����������, �����������',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (2743,'�������� / ������ �� ������ � ������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2744,'�������� / ����������� �����',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2745,'�������� � ������ / �������� ����������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2746,'�������� � ������� ���� / ������ ������������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (2747,'�������� � ����� / ���������� �������',9133);
INSERT INTO `natc_clasifikator_prof` VALUES (2748,'�������� � �����',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (2751,'�������� �����, ����������� �� ������� �����',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (2754,'�������� �� ��� �� ������������ �� ������� �� ���',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (2755,'�������� �� ��������� / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2757,'�������� �� ������ �� �����������, ����������',8291);
INSERT INTO `natc_clasifikator_prof` VALUES (2763,'�������� �� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2765,'�������� �� ���������� / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (2767,'�������� �� �������������� ��������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2770,'�������� �� ��������� �� �������, ������ ������',7229);
INSERT INTO `natc_clasifikator_prof` VALUES (2773,'�������� �� ����������� / ������� ����������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2777,'�������� �� ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (2779,'�������� �� ��������� ��������� / ������������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (2781,'�������� �� ������������ ����������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2782,'�������� �� ��������� ������� � �������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (2783,'��������, ������ �� ���',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (2784,'��������, ��������� ����� �� ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2785,'��������, ���������� ���������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2786,'��������, �������� �����  / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (2787,'��������, ��������� / ������������ �� ������',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2791,'��������, ��������� �� ������������������ �������',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (2792,'��������, ��������� �� �������� �������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (2793,'��������, ������� � ����� �� ����������� �������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2794,'��������, ����� �� ������ ������� � ������ ������',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2796,'��������, ������� ����������',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (2798,'��������, ������������ ���������� ��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2799,'��������, �������� �� ����� �� ��������',9112);
INSERT INTO `natc_clasifikator_prof` VALUES (2800,'��������, �������� �� ����������� ��������',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (2801,'��������, ������ �� ����',8268);
INSERT INTO `natc_clasifikator_prof` VALUES (2802,'��������, ������� �������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2803,'��������, ������� ������� �� ������� ��������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2805,'��������, ������� ������� ����������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2806,'��������, ������� ����� �� ����������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2811,'��������, ��������� / ��������� ������������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2814,'��������, ��������� �� �����������',8216);
INSERT INTO `natc_clasifikator_prof` VALUES (2815,'��������, ��������� ��� ���',5221);
INSERT INTO `natc_clasifikator_prof` VALUES (2816,'��������, ��������� ���������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (2821,'��������, ��������� �� �������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (2822,'��������, ���������� �����, ��������� ������',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2823,'��������, �������� �� ����������� �����',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (2824,'��������, ����������� �� ����������',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2829,'��������, �����������������',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (2830,'��������, ��������� � ����������� �������',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2831,'��������, ��������� ������ �� ���������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2833,'��������, ����� �� ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2835,'��������, �������� / ������������ �� ������',8217);
INSERT INTO `natc_clasifikator_prof` VALUES (2837,'��������, ����� �� ������������ �� ����',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2839,'��������, ������� ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2840,'��������, ����� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2841,'��������, ���������',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2842,'��������, ������ - ���� / ������� ������������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (2843,'��������, ������ �� ����� / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (2848,'��������, ������� ����������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (2851,'��������, ��������� ��������� �� ����������',8214);
INSERT INTO `natc_clasifikator_prof` VALUES (2856,'��������, ������ �� ������� �������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2857,'��������, ������ �� ������������ ����������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2858,'��������, ������ �� ���������� ����������',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2859,'��������, ������ �� �������� ����� ������� ������',8283);
INSERT INTO `natc_clasifikator_prof` VALUES (2860,'��������, ������ �� ������ �������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2861,'��������, ������ �� ��������� ����������',8281);
INSERT INTO `natc_clasifikator_prof` VALUES (2862,'��������, ������ �� ��������� ����������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2863,'��������, ������ �� �������� ����������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2865,'��������, ������� �� �����������������',7241);
INSERT INTO `natc_clasifikator_prof` VALUES (2866,'��������, �������� � �������� �� ��������������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2869,'��������, ������� �� ������ / ���������',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2871,'��������, �������� �� ���������� �������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (2875,'��������, ��������� �� ���������',8226);
INSERT INTO `natc_clasifikator_prof` VALUES (2876,'��������, ��������� �� ������� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (2877,'��������, ��������� �� ������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (2882,'��������, ��������� �� ���������� ������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2886,'��������, ���������� �� �����',8114);
INSERT INTO `natc_clasifikator_prof` VALUES (2887,'��������, ���������� �� ��������� / �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2889,'��������, ��������� ����������� �������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (2890,'��������, ����������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (2892,'��������, ����������� ������� � ����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2893,'��������, �������� / ����������-�������� ������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (2894,'��������, �������� �� �������',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2895,'��������, ����������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (2897,'��������, ���� � ��������� ���������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (2899,'��������, ���������� ������� �������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2900,'��������, ���������� �� ��������� �������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (2901,'��������, ���������� �� �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2902,'��������, ���������� �� ������� �����',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (2903,'��������, ���������� �� ������� �� ������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2909,'��������, ���������� �� ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2911,'��������, ���������� �� ���������������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2912,'��������, ���������� �� ��������������� ����������',7235);
INSERT INTO `natc_clasifikator_prof` VALUES (2915,'��������, �������� �� ����� ��������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2917,'��������, ������� �������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2918,'��������, �������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2919,'��������, ��������� �� ���������� ������ � �����',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (2920,'��������, ���������� � ���������� / ���������',9132);
INSERT INTO `natc_clasifikator_prof` VALUES (2921,'��������, ���������� �� ����� / ��������� �� �����',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (2922,'��������, ���������� �� ������ � ����������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2924,'��������, ���������� �� �������� �������, ��������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2926,'��������, ���������� �� ������ � ��������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (2927,'��������, ���������� �� ������ / ������������',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (2928,'��������, ������� � ����� �� ���������� � ��������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (2929,'��������, ������� � �����������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (2930,'��������, ���������� �� ������� ��������',6124);
INSERT INTO `natc_clasifikator_prof` VALUES (2931,'��������, ���������� �� ����� / ������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2933,'��������, ������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (2934,'��������, �������������� �������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2935,'��������, ���������� �� ������������������ ����',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (2936,'��������, ���������� �� �������� � �������',8225);
INSERT INTO `natc_clasifikator_prof` VALUES (2938,'��������, �������� � ��������� �� ��� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (2942,'��������, ������������ � �������� �� ������',7449);
INSERT INTO `natc_clasifikator_prof` VALUES (2946,'��������, ������������ �� ���������',8282);
INSERT INTO `natc_clasifikator_prof` VALUES (2947,'��������, ������������ �� ������ �����',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (2948,'��������, ������������ �� �����',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (2949,'��������, ������������ �� ����� / ������� �������',8154);
INSERT INTO `natc_clasifikator_prof` VALUES (2950,'��������, ������-����� �������',8163);
INSERT INTO `natc_clasifikator_prof` VALUES (2951,'��������, ����������� � �������� �� ���������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (2952,'��������, �����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2953,'��������, ������������ � ��������� ������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2954,'��������, ������ ������',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (2955,'��������, �������� ��������� �� �����',7432);
INSERT INTO `natc_clasifikator_prof` VALUES (2959,'��������, ����������� �� ������',9314);
INSERT INTO `natc_clasifikator_prof` VALUES (2961,'��������, ������ � ��������� �� ��������� �������',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (2963,'��������, ������ �� ����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (2965,'��������, ������ �� �������� ������ / �� ���������',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (2966,'��������, ������ �� ������� �����',7239);
INSERT INTO `natc_clasifikator_prof` VALUES (2967,'��������, ����� ����������� �� ����������� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2968,'��������, ����� ����������� �� ������� ���������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2972,'��������, ���������� �� �������',8286);
INSERT INTO `natc_clasifikator_prof` VALUES (2974,'��������, ���������� �� ������� �����',8286);
INSERT INTO `natc_clasifikator_prof` VALUES (2975,'��������, ������� �� �����',8285);
INSERT INTO `natc_clasifikator_prof` VALUES (2977,'��������, ������ � �������� ���� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (2978,'��������, ������ ������� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (2979,'��������, �������� �� ������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2980,'��������, ����� ����',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (2981,'��������, ������������ �������� / ���������',9311);
INSERT INTO `natc_clasifikator_prof` VALUES (2985,'��������, ������ �� ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (2988,'��������, ���������������',7136);
INSERT INTO `natc_clasifikator_prof` VALUES (2989,'��������, �������� �� �����',7331);
INSERT INTO `natc_clasifikator_prof` VALUES (2990,'��������, ������� ���������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (2991,'��������, �������� �� ������',9315);
INSERT INTO `natc_clasifikator_prof` VALUES (2993,'��������, ���������� �� ����',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (2996,'��������, ������������ ������',8274);
INSERT INTO `natc_clasifikator_prof` VALUES (2997,'��������, ���������� ����������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (3000,'��������, ������ �� �������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3001,'��������, ������ ��������� �����������',7313);
INSERT INTO `natc_clasifikator_prof` VALUES (3003,'��������, ������ �����������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (3004,'��������, ������ �������� - ���������� ������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3005,'��������, ������ �������� - ������ ���������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3006,'��������, ������ �������� - ����������� ���������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3007,'��������, ������ �������� - �������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3008,'��������, ������ �������� - �������� � ������',7332);
INSERT INTO `natc_clasifikator_prof` VALUES (3010,'��������, ��������� � ������������',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3011,'��������, ���������� ���������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (3012,'��������, ���� ������������ ������ / ������������',7143);
INSERT INTO `natc_clasifikator_prof` VALUES (3014,'��������, ���������� ����� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3016,'��������, ��������������� ���������� / ����������',8161);
INSERT INTO `natc_clasifikator_prof` VALUES (3018,'��������, ����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (3020,'��������, ������������ ���������� �� �������',7437);
INSERT INTO `natc_clasifikator_prof` VALUES (3022,'��������, ������-������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3023,'��������, ����� �� ���� / �����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3024,'��������-�������������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3025,'�����',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3026,'������������ / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3027,'�������������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3028,'������������, �������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (3029,'�������������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3030,'����������������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3031,'�����������, ���������� �� �����������',7243);
INSERT INTO `natc_clasifikator_prof` VALUES (3032,'�������� �� �������� ���������',9121);
INSERT INTO `natc_clasifikator_prof` VALUES (3033,'��������, ����������� � ���������, ���������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3034,'���������� �� �����, ������� ����',8135);
INSERT INTO `natc_clasifikator_prof` VALUES (3036,'���������� / �������������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3037,'��������, ������ ������ / ��������',8126);
INSERT INTO `natc_clasifikator_prof` VALUES (3039,'���������',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (3040,'��������� �� �������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3042,'��������� �� �������� / ���',9152);
INSERT INTO `natc_clasifikator_prof` VALUES (3043,'��������� �� ����� / �������� �����',5133);
INSERT INTO `natc_clasifikator_prof` VALUES (3045,'������������, ���������� �� ������',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (3047,'������������� �� ������ / ���������',4141);
INSERT INTO `natc_clasifikator_prof` VALUES (3048,'�������������-���������� �� ��������� / ����������',7349);
INSERT INTO `natc_clasifikator_prof` VALUES (3049,'�������������������, ���������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3050,'�����������, �������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3054,'��������� �� �������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (3055,'���������, ������� / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (3056,'������� ��������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (3057,'�������������',5169);
INSERT INTO `natc_clasifikator_prof` VALUES (3059,'�������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3060,'�����������, �������������� �� ������ �������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3061,'������������������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3062,'�������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3063,'��������, ���������� ������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (3065,'���������� / ����� �� ������� ���������',7114);
INSERT INTO `natc_clasifikator_prof` VALUES (3066,'������� - ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3067,'������� �� ������������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3068,'�������, ����������-��������� ���� (���)',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3069,'�������-������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3071,'�����������, �����������',4143);
INSERT INTO `natc_clasifikator_prof` VALUES (3072,'������������ �� �������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3076,'��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3077,'�������� - �������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3079,'�����',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3084,'�������� �� ������� �������������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (3085,'�������� �� ��������������� ����',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3086,'�������� �� ������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3087,'�������� �� ��������� ������������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (3088,'�������� �� ����, ����������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3089,'��������, ����� ��������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3090,'��������, �����',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3091,'��������, ������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3092,'��������, ���������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3093,'��������, �����',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3094,'�����',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3095,'�����, ���������� ��� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (3096,'�����, ������� �������',7213);
INSERT INTO `natc_clasifikator_prof` VALUES (3098,'�����, ������ ��������� �� ������������ �������',7119);
INSERT INTO `natc_clasifikator_prof` VALUES (3099,'�����, �������� / ����������',8253);
INSERT INTO `natc_clasifikator_prof` VALUES (3100,'������, ������� �� �����',7426);
INSERT INTO `natc_clasifikator_prof` VALUES (3101,'�������������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (3102,'�������� �������� / ������ ������������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (3103,'�������� �����',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3104,'�������� �������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (3105,'������ / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3106,'�������� / ����������',7242);
INSERT INTO `natc_clasifikator_prof` VALUES (3107,'���������, ����������������',7423);
INSERT INTO `natc_clasifikator_prof` VALUES (3108,'��������� ��������',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (3109,'���������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3110,'��������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3111,'��������, ��������� � �����',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3112,'��������, ��������� � ���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3113,'��������, ��������� ��� ������� / �������� /',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3114,'��������, ����������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3115,'������������� �������� / ����������',7344);
INSERT INTO `natc_clasifikator_prof` VALUES (3116,'�����������, ��������� �� ���������',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (3117,'�����������, ������������ �� ����������',2434);
INSERT INTO `natc_clasifikator_prof` VALUES (3118,'����������� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3119,'������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (3120,'�������� / �����������-�������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (3121,'�������������, ����� �����������',2225);
INSERT INTO `natc_clasifikator_prof` VALUES (3122,'�������������, ������� ����������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3126,'�������������, �� �����, � ��������� �����������',3333);
INSERT INTO `natc_clasifikator_prof` VALUES (3127,'�������������, ���������� �� ���������� �����',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3128,'�������������, ���������������',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (3129,'�������������, ��������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3130,'�������������, ���������������',2353);
INSERT INTO `natc_clasifikator_prof` VALUES (3131,'�������������, ������������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3132,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3133,'����� / ������ � ����� ����',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3134,'����� / ������',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3135,'�����, �� ���������� �� �������������',6211);
INSERT INTO `natc_clasifikator_prof` VALUES (3136,'�������',6151);
INSERT INTO `natc_clasifikator_prof` VALUES (3137,'��������� ����������',5162);
INSERT INTO `natc_clasifikator_prof` VALUES (3138,'��������� / ����������� ����������',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3139,'��������� / �������� ���� (�������)',6153);
INSERT INTO `natc_clasifikator_prof` VALUES (3140,'��������� / ���� �����',6152);
INSERT INTO `natc_clasifikator_prof` VALUES (3141,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3146,'����������� (���� �� �����������) / ��������',1142);
INSERT INTO `natc_clasifikator_prof` VALUES (3149,'����������� / ������ ���������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3150,'����������� / �������������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3151,'����������� / �����,  ��������������� ���������',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3152,'����������� / �����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3154,'����������� / ������� ����� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3155,'����������� / ���������� � �������� ����������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3157,'����������� / ������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3158,'����������� / ������������ �����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3160,'����������� / ����� �����������, ��������� ������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3162,'����������� / ������������� ������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (3165,'����������� / ����������� �� ������� �� ���������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3166,'����������� / ����������� �� ��������� �����',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3168,'����������� / �������� �������� ����',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3169,'����������� / ����������-����������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3170,'����������� / �������� �������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3171,'����������� / �������������� �������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (3172,'����������� / ��������� ��������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3173,'����������� / ������������ �����',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3174,'����������� / ������������ ������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3175,'����������� / �������-��������� ��������',1227);
INSERT INTO `natc_clasifikator_prof` VALUES (3176,'����������� / �������� ����',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3178,'����������� / ���������, ���: �������, ��������',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3180,'����������� / ��������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3181,'����������� / ��������� ����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3182,'����������� / ��������� �����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3183,'����������� / ����������� �������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3184,'����������� / �������� �������� ����',1226);
INSERT INTO `natc_clasifikator_prof` VALUES (3185,'����������� / ����������� �����������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3187,'����������� ���� / ������, ����� ����������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3188,'����������� �������� / ��������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3189,'����������� �������� / �� ���������',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (3190,'����������� ����������� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3191,'����������� ������� / ����� �������',1152);
INSERT INTO `natc_clasifikator_prof` VALUES (3193,'����������� �� ����� ���������� ������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3194,'����������� �� ����� ������������ ������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3195,'����������� �� ����� ��������� ������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3196,'����������� �� ���� / ��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (3197,'����������� �� ������� / ���',1157);
INSERT INTO `natc_clasifikator_prof` VALUES (3198,'����������� �����������, ����������� � ����������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3199,'����������� �����������, ������ � ������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3201,'����������� �����������, ����������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3202,'����������� �����������, ������������ ��������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3204,'����������� �����������, ��������������-����������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3205,'����������� �����������, ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3206,'����������� �����������, �������',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3207,'����������� �����������, ��������� � �����������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3209,'����������� ����� / ����������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3210,'����������� ������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3211,'����������� ������������ ����',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (3212,'����������� ����� / �� ����',3152);
INSERT INTO `natc_clasifikator_prof` VALUES (3213,'����������� ��������� ������������ / ���������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (3214,'����������� ������� / ������, ������ ����������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3215,'����������� ���� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3216,'�����������, ����� �� �����������',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (3217,'�����������, ���, ����� � ������ �� �����',1232);
INSERT INTO `natc_clasifikator_prof` VALUES (3219,'�����������, ���������������-��������� �����',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3223,'�����������, ����������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3224,'�����������, ���������� ����������',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3225,'�����������, ��������� / ������ ������',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3226,'�����������, ����� �� ��������� ������������',1239);
INSERT INTO `natc_clasifikator_prof` VALUES (3227,'�����������, ����������� / �������� �������������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (3230,'�����������, ��������� ���������� �������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3231,'�����������, ��������� ������',1228);
INSERT INTO `natc_clasifikator_prof` VALUES (3232,'�����������, ������������ ��������������',1234);
INSERT INTO `natc_clasifikator_prof` VALUES (3233,'�����������, ������ ������',1151);
INSERT INTO `natc_clasifikator_prof` VALUES (3234,'�����������, ��������� ������������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3235,'�����������, ������� ��������',1233);
INSERT INTO `natc_clasifikator_prof` VALUES (3236,'�����������, ������������ ����',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3237,'�����������, ������ �����',1235);
INSERT INTO `natc_clasifikator_prof` VALUES (3238,'�����������, ���������� / �������������',1121);
INSERT INTO `natc_clasifikator_prof` VALUES (3239,'�����������, �������������  �������',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3240,'�����������, ������������� �����',1222);
INSERT INTO `natc_clasifikator_prof` VALUES (3242,'�����������, �������� ���� / ������ �����',1224);
INSERT INTO `natc_clasifikator_prof` VALUES (3243,'�����������, ��������� ����',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3244,'�����������, ���������� �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3245,'�����������, ���������-������������ �����������',1231);
INSERT INTO `natc_clasifikator_prof` VALUES (3246,'�����������, ��������� �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3247,'�����������, ������������ ���������� � ����������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3249,'�����������, ������ �����������',1237);
INSERT INTO `natc_clasifikator_prof` VALUES (3250,'��������� ��������� � ����� � ����',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (3251,'������� ���������',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (3252,'������� / ������',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3253,'������� / ����������� ���������',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3254,'������� / ��� �� �������� �����',5133);
INSERT INTO `natc_clasifikator_prof` VALUES (3255,'������� / ������� ���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3256,'������� / ������������',5139);
INSERT INTO `natc_clasifikator_prof` VALUES (3257,'�������, ������� ��������',5134);
INSERT INTO `natc_clasifikator_prof` VALUES (3258,'��������� ���������',3222);
INSERT INTO `natc_clasifikator_prof` VALUES (3259,'���������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (3260,'�����',4218);
INSERT INTO `natc_clasifikator_prof` VALUES (3261,'�����',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (3262,'������� / ������ ������������',7454);
INSERT INTO `natc_clasifikator_prof` VALUES (3263,'��������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3264,'���������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3265,'������ / ��������� ������������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (3266,'��������',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (3267,'�������� ������� / �����',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (3268,'�����������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3269,'�����������, ��������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3270,'�����������, �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3271,'������',7453);
INSERT INTO `natc_clasifikator_prof` VALUES (3272,'������� �������� / ������ ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (3273,'������� ��������, �����������',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (3274,'���������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (3275,'����� � ����� ����������� / ����������',9214);
INSERT INTO `natc_clasifikator_prof` VALUES (3276,'�����, ������� ����� � ����������� / ����������',8333);
INSERT INTO `natc_clasifikator_prof` VALUES (3277,'��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3279,'�������� / ���������� �������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3280,'�������� / ���������',1143);
INSERT INTO `natc_clasifikator_prof` VALUES (3281,'�������� / ������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3282,'�������� / �������-������������ ������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3283,'�������� �� ������ �����',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (3284,'�������� �� ������������� ��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3285,'�������� �� ������� / ������� ��������',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3286,'�������� �� ������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3288,'�������� ��������� ������� / ������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3289,'��������, �������� (�����)',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3290,'��������, ��������� �� ������������� ������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (3291,'��������-������ � ������ ���������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3292,'��������-�����������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3293,'��������-�����������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3294,'��������� ������� / ��������� ������������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3295,'��������� ������� / ������� ������������',7441);
INSERT INTO `natc_clasifikator_prof` VALUES (3298,'��������� �������, �������� ������',7433);
INSERT INTO `natc_clasifikator_prof` VALUES (3299,'��������� �������, ������� ������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3300,'�����������, ����������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3301,'�����������, ���������� �������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3302,'�����������, �����������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3304,'��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3305,'����������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3306,'���������, �����������',6142);
INSERT INTO `natc_clasifikator_prof` VALUES (3307,'������������',6115);
INSERT INTO `natc_clasifikator_prof` VALUES (3308,'��������������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3309,'�������� ��������, ���������� �� ������ � �������',7422);
INSERT INTO `natc_clasifikator_prof` VALUES (3310,'���������',5124);
INSERT INTO `natc_clasifikator_prof` VALUES (3311,'������� / ��������� ����',1);
INSERT INTO `natc_clasifikator_prof` VALUES (3312,'���������� / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3313,'�����-���������',5132);
INSERT INTO `natc_clasifikator_prof` VALUES (3314,'������, ����������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (3315,'����, ������� ������� � ����� / ������� ����������',8213);
INSERT INTO `natc_clasifikator_prof` VALUES (3316,'���������-��������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3317,'���������-��������� / �������� �����',8112);
INSERT INTO `natc_clasifikator_prof` VALUES (3318,'���������-��������� / �� ���������',9316);
INSERT INTO `natc_clasifikator_prof` VALUES (3319,'�������� / ����������-������� ������������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (3320,'������',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3322,'�������� / ����������-������� ������������',7412);
INSERT INTO `natc_clasifikator_prof` VALUES (3323,'������-�������������',2131);
INSERT INTO `natc_clasifikator_prof` VALUES (3324,'������-��������, ���',4114);
INSERT INTO `natc_clasifikator_prof` VALUES (3325,'������-�����������, ����������� �� ���������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3326,'������-�����������, ����������� �� ����������',2414);
INSERT INTO `natc_clasifikator_prof` VALUES (3327,'������-����������, ���� �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3328,'������-����������, �����������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3329,'������-����������, �������������� ������� � ������',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3330,'����������� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (3331,'������� ���������',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3332,'�������� / ��������� ������������',8263);
INSERT INTO `natc_clasifikator_prof` VALUES (3333,'��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (3334,'������� / ���������� �������',5123);
INSERT INTO `natc_clasifikator_prof` VALUES (3335,'����������',2425);
INSERT INTO `natc_clasifikator_prof` VALUES (3336,'������������� / ����������',7341);
INSERT INTO `natc_clasifikator_prof` VALUES (3337,'�������� / ��������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3338,'�������� ��� - ���� ������',3454);
INSERT INTO `natc_clasifikator_prof` VALUES (3339,'�������� ��� - ��������� ������',3459);
INSERT INTO `natc_clasifikator_prof` VALUES (3341,'��������, �������� ������ / ���������� ���������',3451);
INSERT INTO `natc_clasifikator_prof` VALUES (3344,'�������� �� ������ / ��������� ������������',8262);
INSERT INTO `natc_clasifikator_prof` VALUES (3345,'�������� / ����������������',8142);
INSERT INTO `natc_clasifikator_prof` VALUES (3346,'������',6143);
INSERT INTO `natc_clasifikator_prof` VALUES (3347,'���������',4133);
INSERT INTO `natc_clasifikator_prof` VALUES (3348,'������ / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3349,'����� �� ���� / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3350,'������, ��������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (3351,'������, ����������� ������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (3352,'������������',7113);
INSERT INTO `natc_clasifikator_prof` VALUES (3353,'�������',8111);
INSERT INTO `natc_clasifikator_prof` VALUES (3354,'����������',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3355,'���������� / ����������',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3356,'���������� � ���������, ������� �������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (3357,'���������� �� �����',9324);
INSERT INTO `natc_clasifikator_prof` VALUES (3358,'����������, �����',5223);
INSERT INTO `natc_clasifikator_prof` VALUES (3359,'����������, ������ �� �������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3360,'����������, �������� ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3361,'�������� ����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3362,'�������� �������� SOS ��������-�����',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3363,'�������� �������� SOS-�����',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3364,'�������� ��������, �������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3365,'�������� ��������, ����������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3366,'�������� ��������, �������',2445);
INSERT INTO `natc_clasifikator_prof` VALUES (3367,'�������� ��������, ����������',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3368,'��������, ������ ��������',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3369,'��������, �������������',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3370,'��������, ��������� �� ������������ ������',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3371,'��������, �������� ���������',2444);
INSERT INTO `natc_clasifikator_prof` VALUES (3372,'�������� �����, ����� � �������� ����',7112);
INSERT INTO `natc_clasifikator_prof` VALUES (3373,'�������� �� ����',9153);
INSERT INTO `natc_clasifikator_prof` VALUES (3374,'��������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (3375,'���������� / ���� �� �����',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3376,'���������� / ������ ��������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3377,'���������� / ������������ �� ���������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3378,'���������� / ������������ ������������� ����',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3379,'���������� / �����-��������� ����������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3381,'���������� / ������� �������������',3446);
INSERT INTO `natc_clasifikator_prof` VALUES (3382,'���������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3383,'���������� / ��������� ���������� �� �����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3384,'���������� / ����������� � ������������� �������',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3385,'���������� / ����������� ����',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3386,'���������� / ���������� �����',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3387,'���������� / ���������� ����',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3388,'���������� / ��������-�������� ������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3389,'���������� / �������� �������������',3443);
INSERT INTO `natc_clasifikator_prof` VALUES (3390,'���������� / �������� �������������',3444);
INSERT INTO `natc_clasifikator_prof` VALUES (3392,'���������� / ����������',2415);
INSERT INTO `natc_clasifikator_prof` VALUES (3394,'���������� / �������� ��������',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3395,'���������� / �������� ����������� � �����������',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3396,'���������� / ���������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3397,'���������� / ���������� ������� �����',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3399,'����������, �������������� �������������� �������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3401,'����������, ����������� �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (3402,'����������, ���������� �����������',3412);
INSERT INTO `natc_clasifikator_prof` VALUES (3404,'����������, �������� �������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (3405,'����������, ������������ �������� �����������',3449);
INSERT INTO `natc_clasifikator_prof` VALUES (3406,'����������, ������� �����������',3449);
INSERT INTO `natc_clasifikator_prof` VALUES (3407,'����������, ������������� ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3408,'����������, ��������� ��������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3409,'����������, �������� �� �����������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3411,'����������, ���������� �����',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3412,'����������, ����������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3413,'����������, ������������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3414,'����������, ���������, ������ � ����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3415,'����������, ������ ���������',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (3416,'����������, ��������� �����',3413);
INSERT INTO `natc_clasifikator_prof` VALUES (3417,'����������, ����������� �� �������',3429);
INSERT INTO `natc_clasifikator_prof` VALUES (3418,'����������, ������������ �� ����������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3419,'����������, ��������',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3420,'����������, ������ �� �����',3154);
INSERT INTO `natc_clasifikator_prof` VALUES (3421,'����������, ������� ����������� / ������������',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (3422,'����������, �����������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3423,'����������, ���������� �� ������ � �������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3424,'����������, �������� �������',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (3426,'����������, ������������� ����������',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3427,'����������, ������� ������� � ��������������',3223);
INSERT INTO `natc_clasifikator_prof` VALUES (3428,'����������, ����������-�������� ������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3429,'����������, ���������� �����������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3430,'����������, ��������� � ����� ������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3431,'����������, ��������� �� �������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3432,'����������, ����������',2418);
INSERT INTO `natc_clasifikator_prof` VALUES (3433,'����������, ���� � ������� �������',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3434,'����������, ������������ ������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (3435,'����������, ��������� �������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3436,'����������, ���������� �� ���������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3437,'����������, ������ �������',2363);
INSERT INTO `natc_clasifikator_prof` VALUES (3438,'����������, �������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (3439,'����������, ��������� ����� � ������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3441,'����������-��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3442,'����������-��������� / ������� ��������',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (3443,'������ / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3444,'�������, ����������� �������',8284);
INSERT INTO `natc_clasifikator_prof` VALUES (3446,'������� ����������',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3447,'������� ��������',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3448,'�������-�������',2421);
INSERT INTO `natc_clasifikator_prof` VALUES (3449,'�������-������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (3450,'��������������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (3451,'�������� / ������e� ���������',3145);
INSERT INTO `natc_clasifikator_prof` VALUES (3452,'������ ��������',3232);
INSERT INTO `natc_clasifikator_prof` VALUES (3453,'������ ���������� ������',3231);
INSERT INTO `natc_clasifikator_prof` VALUES (3454,'������ ��������� (������) / �������� ���������',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (3455,'������ ��������',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (3456,'������ ������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3457,'������ ������� / �������� �������������',2473);
INSERT INTO `natc_clasifikator_prof` VALUES (3458,'������ ������� / �������� �������������',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3459,'������ �� ��������',7234);
INSERT INTO `natc_clasifikator_prof` VALUES (3460,'������ ��������� / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3461,'������ ��������� �� �����',2475);
INSERT INTO `natc_clasifikator_prof` VALUES (3462,'������ ����� / ������� ���������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (3463,'������ ���������� ��������',3224);
INSERT INTO `natc_clasifikator_prof` VALUES (3464,'������ ���������� ���������',3447);
INSERT INTO `natc_clasifikator_prof` VALUES (3465,'������ ������ ��������� I ������',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (3466,'������ ������ ��������� II ������',2311);
INSERT INTO `natc_clasifikator_prof` VALUES (3467,'������ ������������ / �����������, �����',2312);
INSERT INTO `natc_clasifikator_prof` VALUES (3469,'������ �������� �������� / ������� ������������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (3470,'������ ��������� ��������',3225);
INSERT INTO `natc_clasifikator_prof` VALUES (3471,'������ �������������, ��������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (3472,'������ ���������� / �������� �������������',3442);
INSERT INTO `natc_clasifikator_prof` VALUES (3473,'������ ������������ / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3474,'������ ������������ / �������� �������������',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3475,'������ �������� / ����������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3476,'������ ������� ���������',1125);
INSERT INTO `natc_clasifikator_prof` VALUES (3477,'������ ����� / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3478,'������ ������',2321);
INSERT INTO `natc_clasifikator_prof` VALUES (3479,'������ �������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (3480,'������ ������������',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (3481,'������ ������������ / �������� �������������',2472);
INSERT INTO `natc_clasifikator_prof` VALUES (3482,'������ ������������ / �������� �������������',2474);
INSERT INTO `natc_clasifikator_prof` VALUES (3483,'������-�������� ������� / ���������� ���',3141);
INSERT INTO `natc_clasifikator_prof` VALUES (3484,'�������� �� ����',8341);
INSERT INTO `natc_clasifikator_prof` VALUES (3485,'���������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3486,'���������, ������������ ����������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3487,'���������, ������������� ����������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3488,'���������, ���������� ����������',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3489,'���������, �������� ����������',3433);
INSERT INTO `natc_clasifikator_prof` VALUES (3490,'���������, ����� �����',2122);
INSERT INTO `natc_clasifikator_prof` VALUES (3491,'���������-��������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (3492,'���������',4111);
INSERT INTO `natc_clasifikator_prof` VALUES (3493,'���������-�����������',4111);
INSERT INTO `natc_clasifikator_prof` VALUES (3494,'����������� / ����������',7342);
INSERT INTO `natc_clasifikator_prof` VALUES (3495,'�������� / ������e� ���������',3147);
INSERT INTO `natc_clasifikator_prof` VALUES (3496,'������ / ����������-������� ������������',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (3497,'��������, ���������� ��������� ����',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3498,'���������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3499,'����������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3500,'���������� / ������ ��������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3501,'����������, ������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3502,'����������, ��������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3503,'����������, �������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3504,'����������, ��������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3505,'����������, ������',2222);
INSERT INTO `natc_clasifikator_prof` VALUES (3506,'����������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (3507,'���������� / �� ���������',8312);
INSERT INTO `natc_clasifikator_prof` VALUES (3508,'������� �� ���� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (3509,'������� �� ���� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3510,'�������� - ���������, ��������������� �����������',7126);
INSERT INTO `natc_clasifikator_prof` VALUES (3512,'��������, ������������ ������',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (3513,'��������, �����������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (3514,'��������, ���������',7122);
INSERT INTO `natc_clasifikator_prof` VALUES (3515,'��������, ���������� �������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (3516,'��������, ������ ��������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3517,'��������, ������ ���������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3518,'��������, ����������� ����������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (3519,'���������� �������',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (3520,'���������� �����������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (3521,'���������� �������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3523,'���������� ������� / ������ ��������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3524,'���������� �������, ����� � ���������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3525,'���������� �������, ��������� �� ������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3526,'���������� �������, ���������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (3528,'���������� ����������',7135);
INSERT INTO `natc_clasifikator_prof` VALUES (3529,'���������� ������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3530,'���������� ������ / ������ ��������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3531,'���������� ������, ���������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3532,'������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3533,'�������, ����� / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (3534,'�������, �������������',8219);
INSERT INTO `natc_clasifikator_prof` VALUES (3535,'�������, ��������',8134);
INSERT INTO `natc_clasifikator_prof` VALUES (3536,'������� (����������) / ������������',7136);
INSERT INTO `natc_clasifikator_prof` VALUES (3537,'������� / ������������ �� ����������� ����',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (3538,'���������� (������ �� ������)',9142);
INSERT INTO `natc_clasifikator_prof` VALUES (3540,'����������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3541,'����������, �������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3542,'����������, �������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (3543,'������, ���� / �� ���������',5113);
INSERT INTO `natc_clasifikator_prof` VALUES (3544,'��������� (������) / �������� ���������',5111);
INSERT INTO `natc_clasifikator_prof` VALUES (3545,'��������� / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3546,'�������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3547,'����� / �����������-�������� ������������',8132);
INSERT INTO `natc_clasifikator_prof` VALUES (3548,'����� / ������������ �� ��������� �������',8137);
INSERT INTO `natc_clasifikator_prof` VALUES (3550,'��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3551,'���������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3552,'�������� ��������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3553,'���������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (3554,'������������ - ��������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3555,'������������ - �������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3556,'������������ / ������ ��������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3557,'������������ �������� �������',3446);
INSERT INTO `natc_clasifikator_prof` VALUES (3558,'������������, ����� ������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3559,'������������, ���������� ������������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3560,'������������, ��������� �������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3561,'������������, �������� ����������',3432);
INSERT INTO `natc_clasifikator_prof` VALUES (3562,'������������, ����� ������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (3563,'������������-����������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3564,'������� �� ������ � ���������� / ������������',7129);
INSERT INTO `natc_clasifikator_prof` VALUES (3565,'������� �� �������',4217);
INSERT INTO `natc_clasifikator_prof` VALUES (3566,'������� �� ������, ��������� / ���������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (3567,'������� �� ������, ������ �� ������',4215);
INSERT INTO `natc_clasifikator_prof` VALUES (3568,'������� �� �������� ��������, ������� � �����',9161);
INSERT INTO `natc_clasifikator_prof` VALUES (3569,'������� �� ������������� (���������)',9155);
INSERT INTO `natc_clasifikator_prof` VALUES (3570,'������� �� ����',9211);
INSERT INTO `natc_clasifikator_prof` VALUES (3571,'������� �� ����',9161);
INSERT INTO `natc_clasifikator_prof` VALUES (3573,'�������, ���������� / ����������',7345);
INSERT INTO `natc_clasifikator_prof` VALUES (3574,'�������, ���� ��������� (�����������)',9215);
INSERT INTO `natc_clasifikator_prof` VALUES (3575,'�������� / ����������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3576,'�������� / ����������� ������',1141);
INSERT INTO `natc_clasifikator_prof` VALUES (3578,'�������� �� ������ �� ��������',2361);
INSERT INTO `natc_clasifikator_prof` VALUES (3579,'��������, ������ ����������',3214);
INSERT INTO `natc_clasifikator_prof` VALUES (3580,'��������, ���������',3214);
INSERT INTO `natc_clasifikator_prof` VALUES (3581,'��������, ���������',2441);
INSERT INTO `natc_clasifikator_prof` VALUES (3582,'��������, ������������� �������',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (3583,'��������, ������������� �����������',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (3584,'��������, ������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (3585,'��������, ���������� ����',2413);
INSERT INTO `natc_clasifikator_prof` VALUES (3586,'������� (����������) ��������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3587,'������� ��������, ������������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (3588,'������� ����������',4222);
INSERT INTO `natc_clasifikator_prof` VALUES (3589,'������� ���������',4122);
INSERT INTO `natc_clasifikator_prof` VALUES (3590,'�����',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (3591,'�����, �������',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (3592,'�����-����������',2423);
INSERT INTO `natc_clasifikator_prof` VALUES (3593,'���������� �� ������� (����� � ����������� �����)',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3594,'���������� �� ���������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3595,'���������� �� �������� �� ��������� �������',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3596,'������-��������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3597,'���������� �� �������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (3598,'���������� / �����',3477);
INSERT INTO `natc_clasifikator_prof` VALUES (3599,'��������� / �������������� ����������������',3445);
INSERT INTO `natc_clasifikator_prof` VALUES (3600,'��������� / ��������, �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (3601,'��������� �� ��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3602,'���������, ��������� / ����������� �����',2471);
INSERT INTO `natc_clasifikator_prof` VALUES (3603,'���������, �������� �� ��������',3439);
INSERT INTO `natc_clasifikator_prof` VALUES (3604,'���������, ������������',3434);
INSERT INTO `natc_clasifikator_prof` VALUES (3605,'���������, ������ � �������',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3606,'���������, �������� �����',3461);
INSERT INTO `natc_clasifikator_prof` VALUES (3607,'���������, ���������� / ����������� �����',3441);
INSERT INTO `natc_clasifikator_prof` VALUES (3608,'��-����������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3609,'��-��������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3610,'��������',9323);
INSERT INTO `natc_clasifikator_prof` VALUES (3611,'�����������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3612,'������� / ����� ���������',4136);
INSERT INTO `natc_clasifikator_prof` VALUES (3614,'�������, ������������ �����',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (3615,'����������, ���������� �������',7141);
INSERT INTO `natc_clasifikator_prof` VALUES (3616,'�������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3617,'�������, ����������',7445);
INSERT INTO `natc_clasifikator_prof` VALUES (3618,'�������, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3619,'�������� / ����������� ���������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3620,'�������� / �� ���������',4135);
INSERT INTO `natc_clasifikator_prof` VALUES (3621,'�����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (3622,'�����������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3623,'��������� �����������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3624,'��������� �������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3625,'��������� ����������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3626,'��������� �������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3627,'��������� ������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3628,'��������� ����������',5145);
INSERT INTO `natc_clasifikator_prof` VALUES (3629,'��������� �������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3630,'��������� �����',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (3631,'������-�������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (3632,'����������',7216);
INSERT INTO `natc_clasifikator_prof` VALUES (3633,'��������� ������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (3634,'������������ ��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3635,'�����������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3636,'���������-���������� ����������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3637,'���������-���������� ��������',3134);
INSERT INTO `natc_clasifikator_prof` VALUES (3638,'���������� / �������� �������������',4223);
INSERT INTO `natc_clasifikator_prof` VALUES (3639,'����������, ��������������� ������������ �����',4223);
INSERT INTO `natc_clasifikator_prof` VALUES (3640,'������������',5163);
INSERT INTO `natc_clasifikator_prof` VALUES (3641,'���������',8337);
INSERT INTO `natc_clasifikator_prof` VALUES (3642,'����������� �� ������� / ����������',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (3643,'���������� / �������������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3644,'���������� / ������������',7135);
INSERT INTO `natc_clasifikator_prof` VALUES (3645,'���������� �� ��� / ����������',7231);
INSERT INTO `natc_clasifikator_prof` VALUES (3646,'������',2461);
INSERT INTO `natc_clasifikator_prof` VALUES (3647,'������� / ����������',8124);
INSERT INTO `natc_clasifikator_prof` VALUES (3648,'�������, ��������� � ��������� �������',8136);
INSERT INTO `natc_clasifikator_prof` VALUES (3650,'������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (3651,'������������ / ������������ �� ������',8269);
INSERT INTO `natc_clasifikator_prof` VALUES (3652,'������ / �������������� �������������� �������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3653,'������ / ����������������� �������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3654,'������ / ������� ������� ���������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3655,'������ / ������������ ��.����������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3656,'������ / ������������ �� ������� � ������ ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3657,'������ / ������������ �� ��������� ���������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3658,'������ / ���������� �������',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3660,'������ / ������������ �� ��������� �����������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3661,'������ / ������������ ������ ���������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3663,'������ / �������� �������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3664,'������ / �������� ���������������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3665,'������ / ���������������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3666,'������ �� ������������ ����������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3667,'������, ��������� � ���������� ������',3212);
INSERT INTO `natc_clasifikator_prof` VALUES (3668,'������, ��������� �� ������������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3669,'������, �����������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3670,'������, ����������-������������ ������� (���)',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3671,'������, �������������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3672,'������, ����-������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3673,'������, �������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3674,'������, �������������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3675,'������, ���������� ��������',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3676,'������, ������������ �����',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3677,'������, ���������, �������� �� ����',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3678,'������, ������������� �������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3679,'������, ��������� �������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3681,'������, ����������� �����',3136);
INSERT INTO `natc_clasifikator_prof` VALUES (3682,'������, �������',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (3683,'������, ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3684,'������, �������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3685,'������, ���������� �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3686,'������, ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3687,'������, �������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3688,'������, ��������������� �������',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3689,'������, �����',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3690,'������, ����� ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3691,'������, ������������� �������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3692,'������, ����������',3213);
INSERT INTO `natc_clasifikator_prof` VALUES (3693,'������, ������� ���������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3694,'������, ���������',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3695,'������, ����������� �������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3696,'������, ������� �����������',3151);
INSERT INTO `natc_clasifikator_prof` VALUES (3697,'������, ���������������� �������',3114);
INSERT INTO `natc_clasifikator_prof` VALUES (3698,'������, ����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3699,'������, �������',3253);
INSERT INTO `natc_clasifikator_prof` VALUES (3700,'������, ���������� �������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3701,'������, ������',3123);
INSERT INTO `natc_clasifikator_prof` VALUES (3702,'������, �������� ���������',3135);
INSERT INTO `natc_clasifikator_prof` VALUES (3703,'������, �������� �������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3704,'������, ������� / �����������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3705,'������, ������� / ������������� ������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3706,'������, ������� / �������� �������',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3707,'������, ����������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3708,'������, ��������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3709,'������, ����� �� ������� �� �������������� �������',3139);
INSERT INTO `natc_clasifikator_prof` VALUES (3710,'������, ����������� �������',3131);
INSERT INTO `natc_clasifikator_prof` VALUES (3711,'������, �������',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (3712,'������, �����- � �������������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3713,'������, ������� �������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3714,'������-����� / ����������-������� ������������',7416);
INSERT INTO `natc_clasifikator_prof` VALUES (3715,'������-��������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3717,'������-�������� / ���������� ������������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3718,'������-�������� / ����������-������� ������������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3719,'������-��������, ��������������� ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3720,'������-��������, ������ � ���������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3721,'������-��������, ������������ � ��������� �� �����',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3722,'������-��������, �������� �� �������� �����',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3723,'������-��������, ��������� ���������� �������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3724,'������-��������, �������� �����',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3725,'������-��������, ��������� �e������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3726,'������-��������, ��������� ����������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3727,'������-��������, ������� ���������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3728,'������-��������, ����� ���������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3729,'������-��������, ������������',3115);
INSERT INTO `natc_clasifikator_prof` VALUES (3731,'������-��������, �����',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3732,'������-��������, ������� ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3733,'������-��������, ��������, ������ � ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3734,'������-�������, ����� � �������� �������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3735,'���������� ��������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3736,'���������� ����������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3737,'���������� �����������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3738,'���������� �����������, ������������� ���������',4137);
INSERT INTO `natc_clasifikator_prof` VALUES (3739,'���������� �����������, ������� ����������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3740,'���������� �����������, �����������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3741,'���������� �����������, ���������� �����',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3743,'���������� �����������, ��������� �� ����������',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (3745,'���������� �������� / �����������',3475);
INSERT INTO `natc_clasifikator_prof` VALUES (3746,'���������� ����������� / ������ ����������',1221);
INSERT INTO `natc_clasifikator_prof` VALUES (3747,'���������� ����������� / ������������',1223);
INSERT INTO `natc_clasifikator_prof` VALUES (3748,'���������� ��������',4115);
INSERT INTO `natc_clasifikator_prof` VALUES (3749,'���������� ���������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3750,'���������� ���������, ����� ������',4192);
INSERT INTO `natc_clasifikator_prof` VALUES (3751,'���������� ���������, �����������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (3752,'�������� / ������e� ���������',3146);
INSERT INTO `natc_clasifikator_prof` VALUES (3753,'�������� / �� ���������',3153);
INSERT INTO `natc_clasifikator_prof` VALUES (3754,'�������� / �������� � ���������� ������������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3755,'�������� / ������������ �� ���� � ���',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3756,'�������� / ������������ �� ��������� ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3757,'�������� / �������, ��������, ������� � ��������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3758,'��������, ��������� ��������',3112);
INSERT INTO `natc_clasifikator_prof` VALUES (3759,'��������, ���� �����',3122);
INSERT INTO `natc_clasifikator_prof` VALUES (3760,'��������, ������������ ������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3761,'��������, ������� / ������� ������������',3118);
INSERT INTO `natc_clasifikator_prof` VALUES (3762,'��������, ������� ����� ��������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3763,'��������, ���������',3155);
INSERT INTO `natc_clasifikator_prof` VALUES (3764,'��������, ��� ��������� ������',3116);
INSERT INTO `natc_clasifikator_prof` VALUES (3765,'������� �� ���������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3766,'������-����������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (3767,'����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3768,'����������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (3769,'�����������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3770,'���������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (3771,'�������� / ��������',7212);
INSERT INTO `natc_clasifikator_prof` VALUES (3772,'�������� / �����������-�������� ������������',8131);
INSERT INTO `natc_clasifikator_prof` VALUES (3773,'��������, �������� ����������',3113);
INSERT INTO `natc_clasifikator_prof` VALUES (3774,'���������� / ����� �� ������� ���������',7111);
INSERT INTO `natc_clasifikator_prof` VALUES (3775,'�������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (3776,'����������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3777,'���������� / ������ ����������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3778,'���������� / ������������',8332);
INSERT INTO `natc_clasifikator_prof` VALUES (3779,'����������, �����',8339);
INSERT INTO `natc_clasifikator_prof` VALUES (3780,'�����������',6153);
INSERT INTO `natc_clasifikator_prof` VALUES (3781,'�������� / ����������-������� ������������',7411);
INSERT INTO `natc_clasifikator_prof` VALUES (3782,'���������� / �������������',7214);
INSERT INTO `natc_clasifikator_prof` VALUES (3783,'�������',2458);
INSERT INTO `natc_clasifikator_prof` VALUES (3784,'������� �� ������������ ����',6129);
INSERT INTO `natc_clasifikator_prof` VALUES (3785,'����� �������  / ���������� ���',3142);
INSERT INTO `natc_clasifikator_prof` VALUES (3786,'���������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (3787,'������ ���������',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3788,'��������',3423);
INSERT INTO `natc_clasifikator_prof` VALUES (3789,'������ / �������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (3790,'����������-����������� / �������������',7215);
INSERT INTO `natc_clasifikator_prof` VALUES (3791,'�����������, �������� ����������',3414);
INSERT INTO `natc_clasifikator_prof` VALUES (3792,'����� / ��������� ������������',8264);
INSERT INTO `natc_clasifikator_prof` VALUES (3793,'�����, ������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3794,'�����, �������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3795,'�����, ������',7435);
INSERT INTO `natc_clasifikator_prof` VALUES (3797,'�����, ������������ ����������� �� ������',7434);
INSERT INTO `natc_clasifikator_prof` VALUES (3798,'��������� �����',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3799,'��������� ������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3800,'��������� �������� (��� �������� � ����������)',9111);
INSERT INTO `natc_clasifikator_prof` VALUES (3801,'��������� �������� / ��������������� ����',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3802,'��������� ������������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3803,'��������� �����������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (3804,'��������� ������',3421);
INSERT INTO `natc_clasifikator_prof` VALUES (3805,'������������������',6112);
INSERT INTO `natc_clasifikator_prof` VALUES (3806,'��������� (����� �����������) / ���',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3808,'��������� (����� �����������) / ���������',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3811,'��������� (����� �����������) / ������ ����������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3812,'��������� (����� �����������) / ������ �������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3813,'��������� (����� �����������) / ������� ����',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3814,'��������� (����� �����������) / ������������',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3815,'��������� (����� �����������) / ��������������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3816,'��������� (����� �����������) / ���������',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3817,'��������� (����� �����������) / ���������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3818,'��������� (����� �����������) / ���������� �����',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3820,'��������� (����� �����������) / �������� ��������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3821,'��������� (����� �����������) / ��������� ������',1316);
INSERT INTO `natc_clasifikator_prof` VALUES (3822,'��������� (����� �����������) / �������',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3823,'��������� (����� �����������) / ����� ����������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3824,'��������� (����� �����������) / �����',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3825,'��������� (����� �����������) / ������ �� ������',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3826,'��������� (����� �����������) / �����������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3827,'��������� (����� �����������) / ���������� �������',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3831,'��������� (����� �����������) / ������������',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3832,'��������� (����� �����������) / ������������',1312);
INSERT INTO `natc_clasifikator_prof` VALUES (3836,'��������� (����� �����������) / ���������, ����',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3837,'��������� (����� �����������) / �����������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3838,'��������� (����� �����������) / �������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3839,'��������� (����� �����������) / ������ ����������',1311);
INSERT INTO `natc_clasifikator_prof` VALUES (3840,'��������� (����� �����������) / �������� ������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3841,'��������� (����� �����������) / ������� ��������',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3844,'��������� (����� �����������) / ������������',1313);
INSERT INTO `natc_clasifikator_prof` VALUES (3845,'��������� (����� �����������) / ���������� ����',1317);
INSERT INTO `natc_clasifikator_prof` VALUES (3847,'��������� (����� �����������) / ��������� �����',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3849,'��������� (����� �����������) / �������� �� ������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3850,'��������� (����� �����������) / �������� �� ����',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3852,'��������� (����� �����������) / ������ ����',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3853,'��������� (����� �����������) / �����',1315);
INSERT INTO `natc_clasifikator_prof` VALUES (3855,'��������� (����� �����������) / �������',1318);
INSERT INTO `natc_clasifikator_prof` VALUES (3856,'��������� (����� �����������), ��������� / ������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3863,'��������� (����� �����������), ������ ��� / ������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3864,'��������� / ������ ��������� �� �������� ��������',1153);
INSERT INTO `natc_clasifikator_prof` VALUES (3865,'��������� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (3866,'��������� / �������',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3867,'��������� / ���������',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3868,'��������� / ������� �������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3869,'��������� / ����������� �� �������� ��������',1154);
INSERT INTO `natc_clasifikator_prof` VALUES (3870,'��������� / ��������� �������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3873,'��������� / ������� ������ ����',1229);
INSERT INTO `natc_clasifikator_prof` VALUES (3874,'��������� / ����',1319);
INSERT INTO `natc_clasifikator_prof` VALUES (3875,'��������� �� ������� ����� / ������� ���������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3876,'��������� �� ������� ��� / �������� �������������',1132);
INSERT INTO `natc_clasifikator_prof` VALUES (3877,'��������� �� ���������� ����',5122);
INSERT INTO `natc_clasifikator_prof` VALUES (3878,'���������, ��������� ������� �����',1112);
INSERT INTO `natc_clasifikator_prof` VALUES (3879,'���������, �������������',1316);
INSERT INTO `natc_clasifikator_prof` VALUES (3880,'���������, ������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3881,'���������, ������� (������)',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3882,'���������, ������ / �����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (3884,'���������, �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3885,'���������, �������',1314);
INSERT INTO `natc_clasifikator_prof` VALUES (3886,'���������, �������, ���������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3887,'���������, ������� �������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3888,'���������, ��������������',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3889,'���������, ���������, ����',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3890,'���������, �����',4131);
INSERT INTO `natc_clasifikator_prof` VALUES (3891,'���������, �����',1225);
INSERT INTO `natc_clasifikator_prof` VALUES (3892,'���������� ���� �����',2132);
INSERT INTO `natc_clasifikator_prof` VALUES (3893,'������� � ����� (������������ �������)',2432);
INSERT INTO `natc_clasifikator_prof` VALUES (3894,'������� �� ��������',4191);
INSERT INTO `natc_clasifikator_prof` VALUES (3895,'�������� ���������',2362);
INSERT INTO `natc_clasifikator_prof` VALUES (3896,'�������� ��������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (3906,'������ - ���������� � ��������� �����������',3314);
INSERT INTO `natc_clasifikator_prof` VALUES (3912,'������ � ����� ����������� / ������ �������',2341);
INSERT INTO `natc_clasifikator_prof` VALUES (3914,'������ � ����� ����������� / ������������ ��������',2341);
INSERT INTO `natc_clasifikator_prof` VALUES (3960,'������ � ����� �����������, ����� / ������ �������',2322);
INSERT INTO `natc_clasifikator_prof` VALUES (3961,'������ � ��������� ����������� / ������ �������',3321);
INSERT INTO `natc_clasifikator_prof` VALUES (3971,'������ � ��������� �����������, ����������',3311);
INSERT INTO `natc_clasifikator_prof` VALUES (3972,'������ � ��������� �����������, �������� �����',3311);
INSERT INTO `natc_clasifikator_prof` VALUES (3974,'������ � ��������� �����������, ������� ��������',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3976,'������ ��� ������ �����������, ������� ��������',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3978,'������, ������ � �����',3312);
INSERT INTO `natc_clasifikator_prof` VALUES (3979,'����������',9332);
INSERT INTO `natc_clasifikator_prof` VALUES (3980,'���������',4132);
INSERT INTO `natc_clasifikator_prof` VALUES (3981,'���������-������������',4121);
INSERT INTO `natc_clasifikator_prof` VALUES (3982,'���������� - ����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (3983,'���������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3984,'��������� - ���������',2224);
INSERT INTO `natc_clasifikator_prof` VALUES (3986,'�����������-���������� / ������������ �� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (3987,'���������� / ������������',7132);
INSERT INTO `natc_clasifikator_prof` VALUES (3988,'�������, �����������',3227);
INSERT INTO `natc_clasifikator_prof` VALUES (3989,'�������, �������',3221);
INSERT INTO `natc_clasifikator_prof` VALUES (3990,'����������� / ������������ �� �������� �������',8278);
INSERT INTO `natc_clasifikator_prof` VALUES (3992,'������, ���������������-��������������',6131);
INSERT INTO `natc_clasifikator_prof` VALUES (3993,'������������ / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (3994,'�������������������',6141);
INSERT INTO `natc_clasifikator_prof` VALUES (3995,'�����',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3996,'�����, �������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3997,'�����, ������ ������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3998,'�����, ��������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (3999,'�����, ������������� � ����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4000,'�����, ����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4001,'�����, ��������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4002,'�����, ����������� ������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4003,'�����, ������ ��������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4004,'�����, ������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4005,'�����, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4006,'�����, ���������� ������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4007,'�����, �������������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4008,'�����, �����������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4009,'�����, ������ �� ������������� �������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4010,'�����, ������ �� ����������������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4011,'�����, ������ �� �������� ����',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4012,'�����, �������������',2111);
INSERT INTO `natc_clasifikator_prof` VALUES (4013,'��������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4014,'�������������',3251);
INSERT INTO `natc_clasifikator_prof` VALUES (4015,'�������� �� ������ / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (4016,'�������� / ������������ �� ���������� ������',8158);
INSERT INTO `natc_clasifikator_prof` VALUES (4017,'�����������, �������',7312);
INSERT INTO `natc_clasifikator_prof` VALUES (4018,'������ ���������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (4019,'������ ��������',3132);
INSERT INTO `natc_clasifikator_prof` VALUES (4020,'������ �������������',3473);
INSERT INTO `natc_clasifikator_prof` VALUES (4021,'����������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4022,'�������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4023,'�������, ��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4024,'�������, �����������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4025,'�������, ��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4026,'�������, ������ ��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4027,'�������, ��������',2447);
INSERT INTO `natc_clasifikator_prof` VALUES (4028,'�������, ��������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4029,'�������, �������',2446);
INSERT INTO `natc_clasifikator_prof` VALUES (4030,'�������',2442);
INSERT INTO `natc_clasifikator_prof` VALUES (4031,'���������� / ����������� �� ������� ���������',8113);
INSERT INTO `natc_clasifikator_prof` VALUES (4032,'���������� / ����������-������� ������������',8271);
INSERT INTO `natc_clasifikator_prof` VALUES (4033,'���������',2411);
INSERT INTO `natc_clasifikator_prof` VALUES (4034,'�������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (4035,'�������� ������� / �������� �������������',2477);
INSERT INTO `natc_clasifikator_prof` VALUES (4037,'�����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (4038,'����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4039,'�������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4040,'�������� / ����������',8123);
INSERT INTO `natc_clasifikator_prof` VALUES (4041,'������������� / ����������',8121);
INSERT INTO `natc_clasifikator_prof` VALUES (4042,'������������ / ����� ��� ������������ �������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4043,'���������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4046,'��������� / �����������-�������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (4047,'��������� �� �������� �� ��������������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (4048,'��������� �� ����������� ������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (4049,'��������� �� ���� / ��������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4050,'��������� �� ����� / ������������ �� ������������',8215);
INSERT INTO `natc_clasifikator_prof` VALUES (4052,'��������������',2142);
INSERT INTO `natc_clasifikator_prof` VALUES (4053,'��������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4054,'��������, ���������������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4055,'��������, ����',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4056,'��������, �����',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4057,'��������, �������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4058,'��������, ����������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4059,'��������, �����',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4060,'��������, �������������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4061,'��������, ��������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4062,'��������, ��������� ��������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4063,'��������-��������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4064,'��������-�����������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4065,'���������',5211);
INSERT INTO `natc_clasifikator_prof` VALUES (4066,'������������ / ����������',7344);
INSERT INTO `natc_clasifikator_prof` VALUES (4067,'������������',2451);
INSERT INTO `natc_clasifikator_prof` VALUES (4068,'������������',3133);
INSERT INTO `natc_clasifikator_prof` VALUES (4069,'���������',4142);
INSERT INTO `natc_clasifikator_prof` VALUES (4071,'�����������',3422);
INSERT INTO `natc_clasifikator_prof` VALUES (4072,'������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4073,'�������, ����������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4074,'�������-��������� �� ������� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4075,'��������������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4076,'��������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (4077,'�������',5141);
INSERT INTO `natc_clasifikator_prof` VALUES (4078,'������� / ������� �����',6121);
INSERT INTO `natc_clasifikator_prof` VALUES (4079,'�������������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4080,'���������� / ����������-������� ������������',8273);
INSERT INTO `natc_clasifikator_prof` VALUES (4081,'����������, �����������',7121);
INSERT INTO `natc_clasifikator_prof` VALUES (4082,'�������',9333);
INSERT INTO `natc_clasifikator_prof` VALUES (4083,'����������, �������� ����������',3121);
INSERT INTO `natc_clasifikator_prof` VALUES (4084,'������������',4193);
INSERT INTO `natc_clasifikator_prof` VALUES (4086,'���������',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (4088,'��������� - ������, ������ / �� ���������',9136);
INSERT INTO `natc_clasifikator_prof` VALUES (4089,'���������, �������� (��������������) �������',9134);
INSERT INTO `natc_clasifikator_prof` VALUES (4091,'�����-�������������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4092,'������������',2149);
INSERT INTO `natc_clasifikator_prof` VALUES (4093,'�����������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4094,'�����������',2146);
INSERT INTO `natc_clasifikator_prof` VALUES (4095,'�����������, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4096,'��������������� � �����-����������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4097,'���������������� / ������������',7133);
INSERT INTO `natc_clasifikator_prof` VALUES (4098,'��������',2114);
INSERT INTO `natc_clasifikator_prof` VALUES (4099,'�������������',7125);
INSERT INTO `natc_clasifikator_prof` VALUES (4100,'�����',5121);
INSERT INTO `natc_clasifikator_prof` VALUES (4101,'�����',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4102,'�����, ��������',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4103,'�����, ������ ��������',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4104,'�����, ����������� �����',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4105,'�����, ��������� �����',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4106,'�����, �������� ����������',3111);
INSERT INTO `natc_clasifikator_prof` VALUES (4107,'�����, ��������� (���������)',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4108,'�����, �����������',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4109,'�����, ��������� ������� �� ����������',2113);
INSERT INTO `natc_clasifikator_prof` VALUES (4111,'���������� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4112,'���������� �� ��������� �� ��������� �������',8224);
INSERT INTO `natc_clasifikator_prof` VALUES (4114,'������������',3476);
INSERT INTO `natc_clasifikator_prof` VALUES (4115,'��������',5146);
INSERT INTO `natc_clasifikator_prof` VALUES (4116,'������',2221);
INSERT INTO `natc_clasifikator_prof` VALUES (4117,'��������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4119,'�����������, ������������� �� ���� ���� ���������',8165);
INSERT INTO `natc_clasifikator_prof` VALUES (4120,'�����������������',6111);
INSERT INTO `natc_clasifikator_prof` VALUES (4121,'��������, ������ ��������',2443);
INSERT INTO `natc_clasifikator_prof` VALUES (4122,'���������',2456);
INSERT INTO `natc_clasifikator_prof` VALUES (4123,'����������',2455);
INSERT INTO `natc_clasifikator_prof` VALUES (4124,'������������� / ����������',7343);
INSERT INTO `natc_clasifikator_prof` VALUES (4125,'��������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4126,'������������',3119);
INSERT INTO `natc_clasifikator_prof` VALUES (4127,'������������',3156);
INSERT INTO `natc_clasifikator_prof` VALUES (4128,'����������� ��������',2452);
INSERT INTO `natc_clasifikator_prof` VALUES (4129,'����������� �����������',2457);
INSERT INTO `natc_clasifikator_prof` VALUES (4130,'��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4131,'��������, ������� / ��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4132,'��������, �������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4133,'��������-��������',2454);
INSERT INTO `natc_clasifikator_prof` VALUES (4134,'��������-����������',3471);
INSERT INTO `natc_clasifikator_prof` VALUES (4135,'�����������������',6113);
INSERT INTO `natc_clasifikator_prof` VALUES (4136,'�������, �������� ����������',3415);
INSERT INTO `natc_clasifikator_prof` VALUES (4138,'����������� / ����������������',8141);
INSERT INTO `natc_clasifikator_prof` VALUES (4139,'�����������, ����������� ��� / ����������������',8143);
INSERT INTO `natc_clasifikator_prof` VALUES (4140,'�������, �������, ��������',2211);
INSERT INTO `natc_clasifikator_prof` VALUES (4141,'����������',7311);
INSERT INTO `natc_clasifikator_prof` VALUES (4143,'���������',4195);
INSERT INTO `natc_clasifikator_prof` VALUES (4144,'������� / ����������-������� ������������',9322);
INSERT INTO `natc_clasifikator_prof` VALUES (4145,'������',7428);
INSERT INTO `natc_clasifikator_prof` VALUES (4147,'������ �� ���� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4149,'������, �������� / ���������� ���������',9136);
INSERT INTO `natc_clasifikator_prof` VALUES (4150,'������, ��������������� ���������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4151,'������, ������',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (4152,'������, ������� / ��������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4153,'������, ���������� ����, ����� / �������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4154,'������, ���������� �� ����� / ��������������',9213);
INSERT INTO `natc_clasifikator_prof` VALUES (4155,'������, �������������� � �������� ���������',9135);
INSERT INTO `natc_clasifikator_prof` VALUES (4156,'������, ���� � ���',9163);
INSERT INTO `natc_clasifikator_prof` VALUES (4158,'������, ����� � �������� �����',9162);
INSERT INTO `natc_clasifikator_prof` VALUES (4159,'��������� ��������',3431);
INSERT INTO `natc_clasifikator_prof` VALUES (4160,'����, ���� ���������� �����',1146);
INSERT INTO `natc_clasifikator_prof` VALUES (4161,'����, �������� �������',1122);
INSERT INTO `natc_clasifikator_prof` VALUES (4162,'����, ��������� ����� / ����������',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4163,'����, �������� ����� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4164,'����, ��������� �������',2419);
INSERT INTO `natc_clasifikator_prof` VALUES (4165,'����, ����� �� ����������� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4166,'����, ����������� ����� / ��������� �� ��',1211);
INSERT INTO `natc_clasifikator_prof` VALUES (4168,'����-����� / �������, �������, ������� ���',2422);
INSERT INTO `natc_clasifikator_prof` VALUES (4169,'����-�����, ���� ������� �����',1113);
INSERT INTO `natc_clasifikator_prof` VALUES (4170,'�������������� / ����������',7346);
INSERT INTO `natc_clasifikator_prof` VALUES (4171,'��������� / ������������ �� ���������� ����',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (4172,'������',7443);
INSERT INTO `natc_clasifikator_prof` VALUES (4173,'������ / ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (4174,'���-���������, ���������� ���������� �������',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (4175,'���-���������, ����� � �������������',7219);
INSERT INTO `natc_clasifikator_prof` VALUES (4176,'����� �������, ������ �������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (4177,'����� �������, �������',7442);
INSERT INTO `natc_clasifikator_prof` VALUES (4178,'����� �� ����� ���� / ��������� ������������',9321);
INSERT INTO `natc_clasifikator_prof` VALUES (4179,'����� �� ������ / ��������� ������������',8265);
INSERT INTO `natc_clasifikator_prof` VALUES (4180,'�����, ����������',7447);
INSERT INTO `natc_clasifikator_prof` VALUES (4183,'�����, ����� ������ / ������� ������������',8266);
INSERT INTO `natc_clasifikator_prof` VALUES (4184,'�����, ���������',7333);
INSERT INTO `natc_clasifikator_prof` VALUES (4185,'��������� (����������)',4144);
INSERT INTO `natc_clasifikator_prof` VALUES (4186,'��������� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (4187,'�������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (4188,'��������, ����������������',8241);
INSERT INTO `natc_clasifikator_prof` VALUES (4189,'��������-��������� / �����������������',8212);
INSERT INTO `natc_clasifikator_prof` VALUES (4190,'��������� / ����������',7211);
INSERT INTO `natc_clasifikator_prof` VALUES (4192,'��������� / ���������� ������������',7321);
INSERT INTO `natc_clasifikator_prof` VALUES (4193,'������������� / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4194,'������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4195,'������, ������ � �������� �� ������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4196,'������, ������ � ���������� �� ������ � ����������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4198,'������, ������ �� ���������� ����������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4199,'������-�������',7226);
INSERT INTO `natc_clasifikator_prof` VALUES (4200,'����������',7225);
INSERT INTO `natc_clasifikator_prof` VALUES (4202,'������ / �������������',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4203,'������, �������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4204,'������, ��������',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4205,'������, ��������� / ��������� ����������',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4206,'������, �������� �� ����� �� �������� � ���� ����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4207,'������, ������ ��� 1,5 ����',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4208,'������, ��� ��������� �� 9 ���������� �����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4210,'������, ���� ����',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4211,'������, ������� (������ �����)',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4212,'������, ���������� �����������',8323);
INSERT INTO `natc_clasifikator_prof` VALUES (4213,'������, ��������� ��������� ��� 25 ����',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4214,'������, �������� ������� ��� ���������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4215,'������, ������������ ��������� (TIR, �����)',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4216,'������, ������� ��������� (���. �����������)',8321);
INSERT INTO `natc_clasifikator_prof` VALUES (4217,'������, ���������',8322);
INSERT INTO `natc_clasifikator_prof` VALUES (4218,'���������� / ������������',7139);
INSERT INTO `natc_clasifikator_prof` VALUES (4219,'����������� / ������������ �� ���������� ����',8227);
INSERT INTO `natc_clasifikator_prof` VALUES (4220,'�������� / ������������ �� ��������� �������',8231);
INSERT INTO `natc_clasifikator_prof` VALUES (4221,'�������� / ������������ �� ����������� �������',8232);
INSERT INTO `natc_clasifikator_prof` VALUES (4222,'�������� / ���������� ������������',7322);
INSERT INTO `natc_clasifikator_prof` VALUES (4224,'������������ / �����������������',8211);
INSERT INTO `natc_clasifikator_prof` VALUES (4225,'������� / ��������� ������������',8267);
INSERT INTO `natc_clasifikator_prof` VALUES (4226,'�������',7223);
INSERT INTO `natc_clasifikator_prof` VALUES (4227,'�������, ����� / ����������',7223);
INSERT INTO `natc_clasifikator_prof` VALUES (4228,'���������',7446);
INSERT INTO `natc_clasifikator_prof` VALUES (4229,'�����',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (4230,'������������',2429);
INSERT INTO `natc_clasifikator_prof` VALUES (4231,'���������',5146);
CREATE TABLE `oblasti` (
  `Id` int(5) NOT NULL auto_increment,
  `name_oblast` varchar(30) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

INSERT INTO `oblasti` VALUES (1,'����� - ����');
INSERT INTO `oblasti` VALUES (2,'�����');
INSERT INTO `oblasti` VALUES (3,'����������');
INSERT INTO `oblasti` VALUES (4,'���������');
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

INSERT INTO `person` VALUES (1,'�?�?�?�?�?�?','�?�???�?','�?�?�?',1,1,1);
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
INSERT INTO `product_nom` VALUES (29,'0010400','?? ?????? ???�??? 45??',1,1,0.24,0.247,0.255,0.255,0,20,NULL);
INSERT INTO `product_nom` VALUES (30,'0010401','?? ?????? 45',1,1,0.24,0.247,0.255,0.255,0,20,NULL);
INSERT INTO `product_nom` VALUES (31,'0010402','?? ?????? ???? 45??',1,1,0.2,0,0.21,0.21,0,20,NULL);
INSERT INTO `product_nom` VALUES (32,'0010403','?? ?????? ????',1,1,0.324,0.335,0.345,0.345,0,20,NULL);
INSERT INTO `product_nom` VALUES (33,'0010404','?? ?????? ????????',1,1,0.768,0,0.8,0.8,0,20,NULL);
INSERT INTO `product_nom` VALUES (34,'0010405','?? ??????+Aroma ???????',1,1,15.3,0,15.875,15.875,0,20,NULL);
INSERT INTO `product_nom` VALUES (35,'0010406','?? ?????? 45??+????? 25??',1,1,0.244,0.247,0.255,0.255,0,20,NULL);
INSERT INTO `product_nom` VALUES (36,'0010407','?? ?????? ???�??? 45??',1,1,0,0.247,0.255,0.255,0,20,NULL);
INSERT INTO `product_nom` VALUES (37,'0010408','?? ?????? XXL ?????',1,1,0.24,0,0.25,0.25,0,20,NULL);
INSERT INTO `product_nom` VALUES (38,'0010409','?? ?????? XXL ??????',1,1,0.24,0,0.25,0.25,0,20,NULL);
INSERT INTO `product_nom` VALUES (39,'0010410','?? Wafelini',1,1,0.348,0.373,0.385,0.385,0,20,NULL);
INSERT INTO `product_nom` VALUES (40,'0010411','?? ?????? ????? ??????',1,1,23.94,0,24.88,24.88,0,20,NULL);
INSERT INTO `product_nom` VALUES (41,'0010601','?? ???? ???? ???????',1,1,0.48,0.495,0.51,0.51,0,20,NULL);
INSERT INTO `product_nom` VALUES (42,'0010602','?? ???? ???? ???????',1,1,0.48,0.495,0.51,0.51,0,20,NULL);
INSERT INTO `product_nom` VALUES (43,'0010603','?? ???? ???? ?????',1,1,0.48,0.495,0.51,0.51,0,20,NULL);
INSERT INTO `product_nom` VALUES (44,'0010604','?? ????????? ?????',1,1,0.204,0.213,0.22,0.22,0,20,NULL);
INSERT INTO `product_nom` VALUES (45,'0010605','?? ????????? ?????',1,1,0.204,0.213,0.22,0.22,0,20,NULL);
INSERT INTO `product_nom` VALUES (46,'0010700','? ???�??? 90??',1,1,0.68,0,0.715,0.715,0,20,NULL);
INSERT INTO `product_nom` VALUES (47,'0010701','? ??????? ???�??? 40??',1,1,0.36,0.378,0.39,0.39,0,20,NULL);
INSERT INTO `product_nom` VALUES (48,'0010702','? ??????? ???�??? 90??',1,1,0.732,0.757,0.78,0.78,1,20,NULL);
INSERT INTO `product_nom` VALUES (49,'0010703','? ????? ??? ???�??? 25',1,1,0.276,0.286,0.295,0.295,0,20,NULL);
INSERT INTO `product_nom` VALUES (50,'0010704','? ????? ??? 25',1,1,0,0,0.285,0.285,0,20,NULL);
INSERT INTO `product_nom` VALUES (51,'0010705','? ????? ??? ???�??? 40',1,1,0.396,0.412,0.425,0.425,0,20,NULL);
INSERT INTO `product_nom` VALUES (52,'0010706','? ????? ??????? 40',1,1,0.44,0.46,0.475,0.475,0,20,NULL);
INSERT INTO `product_nom` VALUES (53,'0010707','? ????? ??? ???�??? 10',1,1,0.888,0.92,0.945,0.945,1,20,NULL);
INSERT INTO `product_nom` VALUES (54,'0010708','? ????? Perfect ???????',1,1,1.044,1.077,1.11,1.11,1,20,NULL);
INSERT INTO `product_nom` VALUES (55,'0010709','? ????? ??????? 100',1,1,0.972,1.005,1.036,1.036,1,20,NULL);
INSERT INTO `product_nom` VALUES (56,'0010710','? ????? ????/????. 100',1,1,0.888,0.92,0.945,0.945,1,20,NULL);
INSERT INTO `product_nom` VALUES (57,'0010711','? ????? ????????? 90',1,1,0.888,0.92,0.945,0.945,1,20,NULL);
INSERT INTO `product_nom` VALUES (58,'0010712','? ????? 10 ??????',1,1,0.972,1,1.036,1.036,1,20,NULL);
INSERT INTO `product_nom` VALUES (59,'0010713','? ????? Luflee 34??',1,1,0.408,0.42,0.435,0.435,0,20,NULL);
INSERT INTO `product_nom` VALUES (60,'0010714','? ????? ???�???',1,1,1.14,1.17,1.21,1.21,1,20,NULL);
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
INSERT INTO `product_nom` VALUES (73,'0010727','? ??�??? ?.190 ?????',1,1,1.296,1.31,1.35,1.35,1,20,NULL);
INSERT INTO `product_nom` VALUES (74,'0010728','? ??�??? ?.380 ?????',1,1,2.352,2.377,2.45,2.45,2,20,NULL);
INSERT INTO `product_nom` VALUES (75,'0010729','? ???????? ??. 35',1,1,0.48,0.499,0.515,0.515,0,20,NULL);
INSERT INTO `product_nom` VALUES (76,'0010730','? ???????? ??. 50',1,1,0.72,0.75,0.775,0.775,1,20,NULL);
INSERT INTO `product_nom` VALUES (77,'0010731','? ???????? ??. 100',1,1,1.284,1.33,1.375,1.375,1,20,NULL);
INSERT INTO `product_nom` VALUES (78,'0010732','? ???????? ??. 200',1,1,2.4,2.47,2.55,2.55,2,20,NULL);
INSERT INTO `product_nom` VALUES (79,'0010733','? ????? ??? ??????',1,1,1.212,1.33,1.37,1.37,1,20,NULL);
INSERT INTO `product_nom` VALUES (80,'0010734','? ????? 300?? ???�???',1,1,3.24,3.327,3.43,3.43,3,20,NULL);
INSERT INTO `product_nom` VALUES (81,'0010735','? ????? Spekulatius 100??',1,1,1.164,1.17,1.21,1.21,1,20,NULL);
INSERT INTO `product_nom` VALUES (82,'0010736','? ????? ???? ?????? 100??',1,1,1.14,0,1.21,1.21,0,20,NULL);
INSERT INTO `product_nom` VALUES (83,'0010737','? ????? Zimsterne 100??',1,1,1.164,1.17,1.21,1.21,1,20,NULL);
INSERT INTO `product_nom` VALUES (84,'0010738','? ????? Choco Swing 300??',1,1,0,3.3271,3.43,3.43,3,20,NULL);
INSERT INTO `product_nom` VALUES (85,'0010739','? ???????? 400??',1,1,0,5.306,5.47,5.47,5,20,NULL);
INSERT INTO `product_nom` VALUES (86,'0010742','? ????? Winter ???????',1,1,302.4,305.17,314.6,314.6,305,20,NULL);
INSERT INTO `product_nom` VALUES (87,'0010755','? ?-Joi ???�??? 70??',1,1,0,0.922,0.95,0.95,1,20,NULL);
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
INSERT INTO `product_nom` VALUES (100,'0011100','? ????�???? ??????',1,1,0,2.49,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (101,'0011101','? ????? Monarch ??. 100',1,1,1.452,1.494,1.54,1.54,1,20,NULL);
INSERT INTO `product_nom` VALUES (102,'0011102','? ????? Monarch ??. 250',1,1,3.48,3.58,3.69,3.69,4,20,NULL);
INSERT INTO `product_nom` VALUES (103,'0011103','? ????? Espresso ??. 100',1,1,1.212,1.246,1.285,1.285,1,20,NULL);
INSERT INTO `product_nom` VALUES (104,'0011104','? ????? Espresso ??. 250',1,1,2.832,2.91,3,3,3,20,NULL);
INSERT INTO `product_nom` VALUES (105,'0011105','? ????? Professional 1??',1,1,17.04,17.363,17.9,17.9,17,20,NULL);
INSERT INTO `product_nom` VALUES (106,'0011106','? ????? Monarch ????.100',1,1,5.34,5.5,5.67,5.67,6,20,NULL);
INSERT INTO `product_nom` VALUES (107,'0011107','? ????�???? ??????',1,1,2.424,2.49,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (108,'0011108','? ????�???? ???????',1,1,2.424,2.49,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (109,'0011109','? ????�???? ???????',1,1,2.424,2.49,2.57,2.57,2,20,NULL);
INSERT INTO `product_nom` VALUES (110,'0011110','? ????�???? ????? ????',1,1,2.424,2.49,2.57,2.57,2,20,NULL);
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
INSERT INTO `product_nom` VALUES (160,'0012017','?? ???�??? 90??',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (161,'0012018','?? ????? 40?? ????????',NULL,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (162,'0012019','?? ????? 25?? ????????',NULL,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (166,'0012023','?? ???? ????????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (168,'0012025','?? ??????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (169,'0012026','?? ????? ????�? ?????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (170,'0012027','?? ?????? 100?? ????????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (171,'0012028','?? ????? ?????? 100??',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (172,'0012029','?? ????? ????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (173,'0012030','?? ?????? ????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (174,'0012031','?? Jacobs 3in1-90gr',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (176,'0012033','?? ????? ???? 34??',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (177,'0012034','?? Jacobs Aroma ????????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (178,'0012035','?? ???? ???????? 500??',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (179,'0012036','?? ????? ???????? ???????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (180,'0012037','?? ????�???? ????????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (181,'0012038','?? ????? ?????',1,1,0,0,0,0,0,20,NULL);
INSERT INTO `product_nom` VALUES (182,'0012039','?? ????? ???�???',1,1,0,0,0,0,0,20,NULL);
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
