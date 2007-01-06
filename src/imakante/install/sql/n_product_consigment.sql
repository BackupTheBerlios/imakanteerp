DROP TABLE IF EXISTS `n_product_consigment`;
CREATE TABLE `n_product_consigment` (
  `id_pc` int(11) unsigned NOT NULL auto_increment COMMENT 'id na partida',
  `id_pm` int(11) default NULL COMMENT 'id na produkt',
  `parcel_pc` varchar(20) default NULL COMMENT 'nomer na partida',
  `dateofexpire_pc` date default NULL COMMENT 'data na godnost',
  `barcod_pc` varchar(20) default '0' COMMENT 'barkod',
  `id_pp` int(11) unsigned default '0' COMMENT 'id na product_price',
  `id_ppp` int(11) unsigned default '0' COMMENT 'id product_promotion price',
  `id_pf` int(11) unsigned default '0' COMMENT 'id_ product fee',
  `exp_list_pc` varchar(45) default NULL,
  PRIMARY KEY  (`id_pc`)
) ENGINE=MyISAM AUTO_INCREMENT=470 DEFAULT CHARSET=cp1251;

