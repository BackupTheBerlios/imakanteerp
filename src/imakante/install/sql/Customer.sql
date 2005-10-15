
#
# Helper tables
#

# Countries
CREATE TABLE `sl_n_country` (
  `Id` tinyint(3) unsigned NOT NULL auto_increment,
  `code` char(3) default NULL,
  `name` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Oblasti
CREATE TABLE `sl_n_oblast` (
  `Id` tinyint(2) unsigned NOT NULL auto_increment,
  `name` varchar(20) NOT NULL default '',
  `Id_country` tinyint(3) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Country` (`Id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Naseleno miasto
CREATE TABLE `sl_n_nm` (
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
  `Id` int(6) unsigned NOT NULL auto_increment,
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
  `Id` int(6) unsigned NOT NULL auto_increment,
  `Id_cust` int(6) unsigned NOT NULL,
  `bank_code` char(10) default NULL,
  `bank_name` varchar(45) default NULL,
  `account` char(10) default NULL COMMENT 'Bankova smetka',
  `DDS_account` char(10) default NULL COMMENT 'Smetka po DDS',
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Distributors
CREATE TABLE `sl_n_distributors` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `Id_cust` int(6) unsigned NOT NULL,
  `code` char(4) NOT NULL default '' COMMENT 'User filed code',
  `name` varchar(20) default NULL,
  `comment` varchar(45) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

# Extra info for customer
CREATE TABLE `sl_n_cust_info` (
  `Id` int(6) unsigned NOT NULL auto_increment,
  `Id_cust` int(6) unsigned NOT NULL,
  `fix_rebate` tinyint(2) unsigned default '0' COMMENT 'Fix rebate',
  `credit_limit` double default NULL,
  PRIMARY KEY  (`Id`),
  KEY `Customer` (`Id_cust`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

