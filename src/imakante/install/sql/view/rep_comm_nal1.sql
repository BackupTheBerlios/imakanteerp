﻿DROP VIEW IF EXISTS `mida`.`rep_comm_nal1`;
CREATE OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rep_comm_nal1` AS select `sl_nalichnosti`.`id_pc` AS `id_pc`,`sl_nalichnosti`.`level` AS `level`,`sl_nalichnosti`.`quant_nal` AS `quant_nal`,`sl_nalichnosti`.`id_n_storage` AS `id_n_storage`,`n_storage`.`code_n_storage` AS `code_n_storage`,`n_storage`.`name_n_storage` AS `name_n_storage`,`rep_product`.`id_pm` AS `id_pm`,`rep_product`.`parcel_pc` AS `parcel_pc`,`rep_product`.`dateofexpire_pc` AS `dateofexpire_pc`,`rep_product`.`barcod_pc` AS `barcod_pc`,`rep_product`.`id_pp` AS `id_pp`,`rep_product`.`id_ppp` AS `id_ppp`,`rep_product`.`id_pf` AS `id_pf`,`rep_product`.`exp_list_pc` AS `exp_list_pc`,`rep_product`.`id_pd` AS `id_pd`,`rep_product`.`id_n_group` AS `id_n_group`,`rep_product`.`name_pm` AS `name_pm`,`rep_product`.`fname_pm` AS `fname_pm`,`rep_product`.`sname_pm` AS `sname_pm`,`rep_product`.`cname_pm` AS `cname_pm`,`rep_product`.`cod1_pm` AS `cod1_pm`,`rep_product`.`cod2_pm` AS `cod2_pm`,`rep_product`.`barcod_pm` AS `barcod_pm`,`rep_product`.`max_pop_pm` AS `max_pop_pm`,`rep_product`.`expertsheet_pm` AS `expertsheet_pm`,`rep_product`.`flag_pm` AS `flag_pm`,`rep_product`.`min_pm` AS `min_pm`,`rep_product`.`code_pm` AS `code_pm`,`rep_product`.`id_sl_curs` AS `id_sl_curs`,`rep_product`.`price0_pp` AS `price0_pp`,(`sl_nalichnosti`.`quant_nal` * `rep_product`.`price0_pp`) AS `VALUE_TSENA0`,`rep_product`.`price1_pp` AS `price1_pp`,(`sl_nalichnosti`.`quant_nal` * `rep_product`.`price1_pp`) AS `VALUE_TSENA1`,`rep_product`.`price2_pp` AS `price2_pp`,(`sl_nalichnosti`.`quant_nal` * `rep_product`.`price2_pp`) AS `VALUE_TSENA2`,`rep_product`.`price3_pp` AS `price3_pp`,(`sl_nalichnosti`.`quant_nal` * `rep_product`.`price3_pp`) AS `VALUE_TSENA3`,`rep_mes_def`.`v1_pd` AS `v1_pd`,`rep_mes_def`.`v2_pd` AS `v2_pd`,`rep_mes_def`.`v3_pd` AS `v3_pd`,`rep_mes_def`.`first_sname` AS `first_sname`,`rep_mes_def`.`sec_sname` AS `sec_sname`,`rep_mes_def`.`th_sname` AS `th_sname`,(`sl_nalichnosti`.`quant_nal` DIV `rep_mes_def`.`v3_pd`) AS `miarka3`,((`sl_nalichnosti`.`quant_nal` - ((`sl_nalichnosti`.`quant_nal` DIV `rep_mes_def`.`v3_pd`) * `rep_mes_def`.`v3_pd`)) DIV `rep_mes_def`.`v2_pd`) AS `miarka2`,((`sl_nalichnosti`.`quant_nal` - ((`sl_nalichnosti`.`quant_nal` DIV `rep_mes_def`.`v3_pd`) * `rep_mes_def`.`v3_pd`)) - (((`sl_nalichnosti`.`quant_nal` - ((`sl_nalichnosti`.`quant_nal` DIV `rep_mes_def`.`v3_pd`) * `rep_mes_def`.`v3_pd`)) DIV `rep_mes_def`.`v2_pd`) * `rep_mes_def`.`v2_pd`)) AS `OSTATAK` from (((`sl_nalichnosti` left join `n_storage` on((`sl_nalichnosti`.`id_n_storage` = `n_storage`.`id_n_storage`))) left join `rep_product` on((`sl_nalichnosti`.`id_pc` = `rep_product`.`id_pc`))) left join `rep_mes_def` on((`rep_product`.`id_pd` = `rep_mes_def`.`id_pd`)));