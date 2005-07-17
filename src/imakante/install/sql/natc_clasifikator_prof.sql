USE `mida`;

CREATE TABLE `natc_clasifikator_prof` (
  `Id` int(11) NOT NULL auto_increment,
  `name_prof` varchar(50) default NULL,
  `cod` int(5) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
