
#
# Helper tables
#

# Countries
CREATE TABLE `n_country` (
  `Id` tinyint(3) unsigned NOT NULL auto_increment,
  `code` char(3) default NULL,
  `name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Oblasti
CREATE TABLE `n_oblast` (
  `Id` tinyint(2) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `Id_country` tinyint(3) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Country` (`Id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Naseleno miasto
CREATE TABLE `n_nm` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `postcode` varchar(8) default NULL,
  `Id_oblast` tinyint(2) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Oblast` (`Id_oblast`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Persons
CREATE TABLE `sl_n_person` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `egn` char(10) default NULL,
  `nlk` char(9) default NULL COMMENT 'Nomer na licna karta',
  `name` varchar(20) NOT NULL default '',
  `comment` varchar(20) NOT NULL default '' COMMENT 'Extra info',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

#
# Main customer info
#
CREATE TABLE `sl_n_customer` (
  `Id` int(11) unsigned NOT NULL auto_increment,
  `code` char(10) NOT NULL default '' COMMENT 'User filed customer code',
  `name` varchar(45) NOT NULL default '',
  `bul` char(13) default NULL COMMENT 'Bulstat',
  `dann` char(10) default NULL COMMENT 'NDR',
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

# Trade objects
CREATE TABLE `sl_n_obekt` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `Id_cust` int(6) unsigned NOT NULL,
  `name` varchar(45) default NULL,
  `address` varchar(25) default NULL,
  `Id_nm` int(6) unsigned default NULL COMMENT 'Cod na naseleno miasto',
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Bank accounts
CREATE TABLE `sl_n_baccount` (
  `Id` int(12) unsigned NOT NULL auto_increment,
  `Id_cust` int(11) unsigned NOT NULL,
  `bank_code` char(10) default NULL,
  `bank_name` varchar(45) default NULL,
  `account` char(10) default NULL COMMENT 'Bankova smetka',
  `DDS_account` char(10) default NULL COMMENT 'Smetka po DDS',
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Distributors
CREATE TABLE `sl_n_distributors` (
  `Id` int(12) unsigned NOT NULL auto_increment,
  `Id_cust` int(11) unsigned NOT NULL,
  `code` char(4) NOT NULL default '' COMMENT 'User filed code',
  `name` varchar(20) default NULL,
  `comment` varchar(45) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Extra info for customer
CREATE TABLE `sl_n_cust_info` (
  `Id` int(11) unsigned NOT NULL auto_increment,
  `Id_cust` int(11) unsigned NOT NULL,
  `fix_rebate` tinyint(2) unsigned default '0' COMMENT 'Fix rebate',
  `credit_limit` double default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Products
CREATE TABLE `sl_n_product` (
  `Id` int(11) NOT NULL auto_increment,
  `name` varchar(10) NOT NULL COMMENT 'ime na produkta',
  `tsena_dost` decimal(10,4) default NULL COMMENT 'Dostavna tsena bez dds za razf',
  `tsena_prod1` decimal(10,4) default NULL COMMENT 'prodajna tsena 1 za razf',
  `tsena_prod2` decimal(10,4) default NULL COMMENT 'prodajna tsena 2 za razf',
  `tsena_prod3` decimal(10,4) default NULL COMMENT 'prodajna tsena 3 za razf',
  `tsena_promo` decimal(10,4) default NULL COMMENT 'promocionalna tsena',
  `razf1` decimal(6,4) default NULL COMMENT 'razfasovka 1',
  `razf2` decimal(6,4) default NULL COMMENT 'razfasofka 2',
  `razf_name` varchar(10) default NULL COMMENT 'ime na razfasofka osnovna',
  `razf1_name` varchar(10) default NULL COMMENT 'ime na razfasofka 1',
  `razf2_name` varchar(10) default NULL COMMENT 'ime na razfasofka 2',
  `BARCOD` int(11) default NULL COMMENT 'Barcod',
  `date_promotsia` date default NULL COMMENT 'posleden den na promotsia',
  `DDS` tinyint(1) default NULL COMMENT 'dds da ili ne(0/1)',
  `max_proc` decimal(3,2) default NULL COMMENT 'maksimalen procent na otstapka ot tsena_prod1',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='razshireni parametri na produkta';

# Partidi pri dostavka
CREATE TABLE `sl_d_delivery` (
  `Id` int(11) NOT NULL auto_increment,
  `id_doc` int(11) default NULL COMMENT 'id na documenta',
  `number` varchar(11) default NULL COMMENT 'partiden nomer',
  `id_product` int(11) default NULL COMMENT 'id na producta',
  `amount_in` decimal(10,4) default NULL COMMENT 'postapilo kolicestvo',
  `amount_out` decimal(10,4) default NULL COMMENT 'prodadeno kolicestvo',
  `price` decimal(10,4) default NULL COMMENT 'edinicna pocupna cena',
  `razf_tip` tinyint(1) default 0 COMMENT 'tip razfasovka',
  `date_dost` date default NULL COMMENT 'data na dostavka',
  `godnost` decimal(10,2) default NULL COMMENT 'godnost v meseci',
  `sertifikat` varchar(15) default NULL COMMENT 'sertifikat',
  `id_storage` int(6) default NULL COMMENT 'id na sklad',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='parametri na dostavkata - partidi';

# Partidi pri prodazba
CREATE TABLE `sl_d_sale` (
  `Id` int(11) NOT NULL auto_increment,
  `id_doc` int(11) default NULL COMMENT 'id na documenta',
  `number` varchar(11) default NULL COMMENT 'partiden nomer',
  `id_product` int(11) default NULL COMMENT 'id na producta',
  `amount` decimal(10,4) default NULL COMMENT 'prodadeno kolicestvo',
  `price` decimal(10,4) default NULL COMMENT 'edinicna prodazna cena',
  `razf_tip` tinyint(1) default 0 COMMENT 'tip razfasovka',
  `date_sale` date default NULL COMMENT 'data na prodazba',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='parametri na dostavkata - partidi';

# Nomenklatura skladove
CREATE TABLE `sl_n_storage` (
  `Id` int(6) NOT NULL auto_increment,
  `name` varchar(20) default NULL COMMENT 'ime na sklada',
  `info` varchar(15) default NULL COMMENT 'komentar',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='skladove';

# Documenti
CREATE TABLE `sl_d_documents` (
  `Id` int(11) NOT NULL auto_increment,
  `id_customer` int(11) default NULL COMMENT 'id na contragenta',
  `op_type` tinyint(1) default 0 COMMENT 'tip operacia (pokupka, prodazba, ...)',
  `date` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'data na documenta',
  `op_date` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'data na operaciata',
  `totalwovat` double NOT NULL default 0 COMMENT 'suma bez DDS',
  `VAT` double NOT NULL default 0 COMMENT 'DDS',
  `ShipVIA` int(10) unsigned NOT NULL default '0' COMMENT 'Nacin na dostavka',
  `plat` double NOT NULL default '0' COMMENT 'Platena suma',
  `tip_plat` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Tip plastane',
  `id_kasa_order` int(10) unsigned NOT NULL default '0' COMMENT 'id na kasa ',
  `id_operator` int(10) unsigned NOT NULL default '0' COMMENT 'id na operator',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='parametri na documenta';

# Nomenklatura documenti
CREATE TABLE `sl_n_docs` (
  `Id` int(6) NOT NULL auto_increment,
  `name` varchar(20) default NULL COMMENT 'ime na documentaa',
  `info` varchar(15) default NULL COMMENT 'komentar',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='tipove documenti';
