DROP TABLE IF EXISTS `mida`.`sl_n_casa`;
CREATE TABLE  `mida`.`sl_n_casa` (
  `idsl_casa` int(10) unsigned NOT NULL auto_increment,
  `gr_casa` int(10) unsigned NOT NULL default '0',
  `cod_casa` int(10) unsigned NOT NULL default '1',
  `name_casa` varchar(45) NOT NULL default 'каса',
  `comments` varchar(250) default NULL,
  PRIMARY KEY  (`idsl_casa`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;