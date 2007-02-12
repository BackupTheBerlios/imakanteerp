﻿DROP VIEW IF EXISTS `mida`.`rep_vat_s`;
CREATE OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rep_vat_s` AS select `sl_document_facade`.`number_df` AS `number_df`,`sl_document_facade`.`type_df` AS `type_df`,`sl_document_facade`.`condition_df` AS `condition_df`,`sl_document_facade`.`total_df` AS `total_df`,`sl_document_facade`.`dds_df` AS `dds_df`,`sl_document_facade`.`date_edition_df` AS `date_edition_df`,`sl_document_facade`.`time_edition_df` AS `time_edition_df`,`sl_document_facade`.`flag_finish_df` AS `flag_finish_df`,`sl_document_facade`.`level_df` AS `level_df`,`sl_document_facade`.`id_df` AS `id_df`,`n_contragent`.`name_n_contragent` AS `name_n_contragent`,`n_contragent`.`code_contragent` AS `code_contragent`,`n_contragent`.`bul_n_contragent` AS `bul_n_contragent`,`n_contragent`.`dan_n_contragent` AS `dan_n_contragent`,`sl_document_facade`.`out_contragent_df` AS `out_contragent_df`,`sl_document_facade`.`description_pay_df` AS `description_pay_df` from (`sl_document_facade` left join `n_contragent` on((`n_contragent`.`id_contragent` = `sl_document_facade`.`out_contragent_df`))) where ((`sl_document_facade`.`type_df` = _utf8'202') and (`sl_document_facade`.`condition_df` = _cp1251'0') and (`sl_document_facade`.`level_df` = _utf8'3')) group by `sl_document_facade`.`number_df` order by `sl_document_facade`.`number_df`;