DROP VIEW IF EXISTS `mida`.`print_doc_faktura`;
CREATE VIEW  `mida`.`print_doc_faktura` AS 
select `sl_document_lines`.`id_df` AS `id_df`,
`sl_document_lines`.`singly_price_dl` AS `singly_price_dl`,
`sl_document_lines`.`climb_down_dl` AS `climb_down_dl`,
`sl_document_lines`.`numbers_piece_dl` AS `numbers_piece_dl`,
`sl_document_lines`.`dds_dl` AS `dds_dl`,
`sl_document_lines`.`totalall_dl` AS `totalall_dl`,
`n_product_consigment`.`id_pm` AS `nomerpm`,
`n_product_main`.`fname_pm` AS `fname_pm`,
`n_product_all_measure`.`name_pam` AS `name_pam` 
from ((((`sl_document_lines` 
left join `n_product_consigment` on((`n_product_consigment`.`id_pc` = `sl_document_lines`.`id_pc`))) 
left join `n_product_main` on((`n_product_main`.`id_pm` = `n_product_consigment`.`id_pm`))) 
left join `n_product_description` on((`n_product_description`.`id_pd` = `n_product_main`.`id_pd`))) 
left join `n_product_all_measure` on((`n_product_all_measure`.`id_pam` = `n_product_description`.`m1_pd`)));