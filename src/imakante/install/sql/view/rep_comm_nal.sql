﻿DROP VIEW IF EXISTS `mida`.`rep_comm_nal`;
CREATE VIEW `rep_comm_nal` AS select `sl_nalichnosti`.`level` AS `level`,
`sl_nalichnosti`.`quant_nal` AS `quant_nal`,
`n_storage`.`code_n_storage` AS `code_n_storage`,
`n_storage`.`name_n_storage` AS `name_n_storage`,`rep_product`.`parcel_pc` AS `parcel_pc`,
`rep_product`.`dateofexpire_pc` AS `dateofexpire_pc`,`rep_product`.`barcod_pc` AS `barcod_pc`,
`rep_product`.`exp_list_pc` AS `exp_list_pc`,`rep_product`.`price1_pp` AS `price1_pp`,
`rep_product`.`price2_pp` AS `price2_pp`,`rep_product`.`price3_pp` AS `price3_pp`,
`rep_product`.`price0_pp` AS `price0_pp`,`rep_product`.`date_time_sl_curs` AS `date_time_sl_curs`,
`rep_product`.`value_sl_curs` AS `value_sl_curs`,`rep_product`.`cod_n_money` AS `cod_n_money`,
`rep_product`.`cod_lat_n_money` AS `cod_lat_n_money`,`rep_product`.`dds_pf` AS `dds_pf`,
`rep_product`.`excise_pf` AS `excise_pf`,`rep_product`.`other_pf` AS `other_pf`,
`rep_product`.`name_pm` AS `name_pm`,`rep_product`.`fname_pm` AS `fname_pm`,
`rep_product`.`sname_pm` AS `sname_pm`,`rep_product`.`cname_pm` AS `cname_pm`,
`rep_product`.`cod1_pm` AS `cod1_pm`,`rep_product`.`cod2_pm` AS `cod2_pm`,
`rep_product`.`barcod_pm` AS `barcod_pm`,`rep_product`.`max_pop_pm` AS `max_pop_pm`,
`rep_product`.`expertsheet_pm` AS `expertsheet_pm`,`rep_product`.`flag_pm` AS `flag_pm`,
`rep_product`.`min_pm` AS `min_pm`,`rep_product`.`code_pm` AS `code_pm`,
`rep_product`.`code_n_mitprod` AS `code_n_mitprod`,`rep_product`.`name_n_mitprod` AS `name_n_mitprod`,
`rep_product`.`v1_pd` AS `v1_pd`,`rep_product`.`name_miarka1` AS `name_miarka1`,
`rep_product`.`v2_pd` AS `v2_pd`,`rep_product`.`name_miarka2` AS `name_miarka2`,
`rep_product`.`v3_pd` AS `v3_pd`,`rep_product`.`name_miarka3` AS `name_miarka3`,
`rep_product`.`name_n_group` AS `name_n_group`,`rep_product`.`name_al` AS `name_al`,
`rep_product`.`cod_al` AS `cod_al`,`rep_product`.`code_contragent` AS `code_contragent`,
`rep_product`.`name_n_contragent` AS `name_n_contragent`,`rep_product`.`price0_dds` AS `price0_dds`,
`rep_product`.`price1_dds` AS `price1_dds`,`rep_product`.`price2_dds` AS `price2_dds`,
`rep_product`.`price3_dds` AS `price3_dds`,
((`sl_nalichnosti`.`quant_nal`)*(`rep_product`.`price0_pp`)) AS stock_value0,
((`sl_nalichnosti`.`quant_nal`)*(`rep_product`.`price1_pp`)) AS stock_value1,
((`sl_nalichnosti`.`quant_nal`)*(`rep_product`.`price2_pp`)) AS stock_value2,
((`sl_nalichnosti`.`quant_nal`)*(`rep_product`.`price3_pp`)) AS stock_value3,
((`sl_nalichnosti`.`quant_nal`)*(`rep_product`.`price0_dds`)) AS stock_value_dds0,
((`sl_nalichnosti`.`quant_nal`)*(`rep_product`.`price1_dds`)) AS stock_value_dds1,
((`sl_nalichnosti`.`quant_nal`)*(`rep_product`.`price2_dds`)) AS stock_value_dds2,
((`sl_nalichnosti`.`quant_nal`)*(`rep_product`.`price3_dds`)) AS stock_value_dds3,
((`sl_nalichnosti`.`quant_nal`) DIV (`rep_product`.`v3_pd`)) AS miarka3_value,
((`sl_nalichnosti`.`quant_nal`) - (((`sl_nalichnosti`.`quant_nal`) DIV (`rep_product`.`v3_pd`))*(`rep_product`.`v3_pd`))) DIV (`rep_product`.`v2_pd`)   AS miarka2_value,
(`sl_nalichnosti`.`quant_nal`) -
((`sl_nalichnosti`.`quant_nal`) DIV (`rep_product`.`v3_pd`))*(`rep_product`.`v3_pd`) -
(((`sl_nalichnosti`.`quant_nal`) - (((`sl_nalichnosti`.`quant_nal`) DIV (`rep_product`.`v3_pd`))*(`rep_product`.`v3_pd`))) DIV (`rep_product`.`v2_pd`)) * (`rep_product`.`v2_pd`)
AS ostatak

from ((`sl_nalichnosti` left join `n_storage` on((`sl_nalichnosti`.`id_n_storage` = `n_storage`.`id_n_storage`))) left join `rep_product` on((`sl_nalichnosti`.`id_pc` = `rep_product`.`id_pc`)));