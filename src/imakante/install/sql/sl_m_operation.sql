# MySQL-Front 3.2  (Build 13.0)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;

/*!40101 SET NAMES cp1251 */;
/*!40103 SET TIME_ZONE='SYSTEM' */;

# Host: www.katsarov.net:3307    Database: mida
# ------------------------------------------------------
# Server version 5.0.18-standard

USE `mida`;

#
# Table structure for table sl_m_operation
#

DROP TABLE IF EXISTS `sl_m_operation`;
CREATE TABLE `sl_m_operation` (
  `id_sl_mop` int(11) unsigned NOT NULL auto_increment,
  `number_sl_mop` int(11) default NULL COMMENT 'nomer na dokumenta',
  `in_sl_mop` int(11) default NULL COMMENT 'id na obekta v koito vlizat parite',
  `in_type_sl_mop` int(11) default NULL COMMENT 'tipa na obekta v koito vlizat parite',
  `out_sl_mop` int(11) default NULL COMMENT 'id na obekta ot koito izlizat parite',
  `out_type_sl_mop` int(11) default NULL COMMENT 'tipa na obekta ot koito izlizat parite',
  `id_order_spec` int(11) default NULL COMMENT 'id na svarzani dokumenti',
  `id_order_spec_type` int(11) default NULL COMMENT 'tip na svarzani dokumenti',
  `id_order_doc` int(11) default NULL COMMENT 'vida na prihoden/razhoden',
  `date_is` date default NULL COMMENT 'data na izdavane',
  `id_n_money` int(11) default NULL COMMENT 'id valuta na izdavane',
  `exchange_rate` double(7,4) default '1.0000' COMMENT 'stoinost na exchange',
  `sum_sl_mop` double(7,4) default NULL COMMENT 'suma po dokumenta',
  `sum_os_val_sl_mop` double(7,4) default NULL COMMENT 'suma v osnovna valuta',
  `user_id` int(11) default NULL COMMENT 'id potrebitel izdal dokumenta',
  `id_sdtn` int(11) default NULL COMMENT 'id na kochana s dokumenti',
  `comment_sl_mop` varchar(250) default NULL,
  `levelx` int(11) default '1',
  PRIMARY KEY  (`id_sl_mop`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table sl_m_operation
#

INSERT INTO `sl_m_operation` VALUES (1,1,1,1,1,3,1,1,1,'2006-02-01',1,1,100,100,3,1,NULL,1);
INSERT INTO `sl_m_operation` VALUES (2,2,0,1,2,3,0,1,0,NULL,1,1,0,0,3,1,NULL,1);
INSERT INTO `sl_m_operation` VALUES (3,3,0,1,14,3,0,1,0,NULL,1,1,0,0,3,1,NULL,1);
INSERT INTO `sl_m_operation` VALUES (4,4,0,1,15,3,0,1,0,NULL,1,1,0,0,3,1,NULL,1);
INSERT INTO `sl_m_operation` VALUES (5,5,0,1,16,3,0,1,0,NULL,1,1,0,0,3,1,NULL,1);
INSERT INTO `sl_m_operation` VALUES (6,6,0,1,133,3,0,1,0,NULL,1,1,0,0,3,1,NULL,1);
INSERT INTO `sl_m_operation` VALUES (7,7,0,1,155,3,0,1,0,NULL,1,1,0,0,3,1,NULL,1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
