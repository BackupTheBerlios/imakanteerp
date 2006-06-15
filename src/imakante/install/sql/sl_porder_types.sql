
USE `mida`;
CREATE TABLE `sl_porder_types` (
  `id_spt` int(11) NOT NULL auto_increment,
  `type_porder` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id_spt`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
