
# Host: www.katsarov.net:3307    Database: mida
# ------------------------------------------------------
# Server version 5.0.18-standard

USE `mida`;

#
# Table structure for table sl_paying_orders
#

DROP TABLE IF EXISTS `sl_paying_orders`;
CREATE TABLE `sl_paying_orders` (
  `id_spo` int(11) NOT NULL auto_increment,
  `id_spt` int(11) NOT NULL default '0',
  `id_nbc` int(11) NOT NULL default '0' COMMENT 'danni na nareditel',
  `id_contragent` int(11) NOT NULL default '0' COMMENT 'danni na polu4atel',
  `amount` decimal(12,2) NOT NULL default '0.00',
  `osnovanie` varchar(60) default NULL,
  `comment_spo` varchar(60) default NULL,
  `instant` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id_spo`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;
