
USE `mida`;
/*!40101 SET NAMES cp1251 */;


#
# Table structure for table ls_monthpar
#
DROP TABLE `ls_monthpar`;
CREATE TABLE `ls_monthpar` (
  `id` int(11) NOT NULL auto_increment,
  `pmonth` tinyint(4) default NULL,
  `pyear` int(11) default NULL,
  `seq` varchar(40) default NULL,
  `dni5` tinyint(4) default NULL,
  `dni6` tinyint(4) default NULL,
  `ktu` decimal(3,2) NOT NULL default '0.60' COMMENT 'ktu',
  `min_rab_zaplata` decimal(10,2) NOT NULL default '0.00' COMMENT 'minimalna rabotna zaplata',
  `max_os_prag` decimal(10,2) NOT NULL default '0.00' COMMENT 'maksimalen osig. prag',
  `proc_oz` decimal(3,2) NOT NULL default '0.00' COMMENT 'fond oz i majchinstvo',
  `proc_pensii` decimal(3,2) NOT NULL default '0.00' COMMENT 'procent pensii',
  `proc_zo` decimal(3,2) NOT NULL default '0.00' COMMENT 'proc zdravno',
  `proc_bez` decimal(3,2) NOT NULL default '0.00' COMMENT 'proc bezrabotitsa',
  `proc_upf` decimal(3,2) NOT NULL default '0.00' COMMENT 'procent_upf',
  `coef` tinyint(3) NOT NULL default '3' COMMENT 'otnoshenie rabotodatel/rabotnik',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

/*!40101 SET NAMES utf8 */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
