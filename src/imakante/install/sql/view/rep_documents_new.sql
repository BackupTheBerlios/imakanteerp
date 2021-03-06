﻿DROP VIEW IF EXISTS `mida`.`rep_documents_new`;
CREATE VIEW `rep_documents_new` AS select `d`.`id_dl` AS `id_dl`,`d`.`id_pc` AS
`id_pc`,`pc`.`parcel_pc` AS `parcel_pc`,`pc`.`id_pm`
 AS `id_pm`,
`pm`.`code_pm` AS `code_product`,
`pm`.`name_pm` AS `name_product`,
`pm`.`fname_pm` AS `fname_product`,
`pm`.`expertsheet_pm` AS `espertsheet`,
`pm`.`id_pd` AS `id_pd`,
`pm`.`barcod_pm` AS `barcod_pm`,
`d`.`id_n_storage` AS `id_n_storage`,`s`.`code_n_storage` AS `code_store`,
`s`.`name_n_storage` AS `name_store`,
`df`.`in_store_df` AS `in_store_df`,
`d`.`singly_price_dl` AS `singly_price_dl`,
`d`.`climb_down_dl` AS `climb_down_dl`,
`d`.`numbers_piece_dl` AS `numbers_piece_dl`,
(`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) AS `miarka3`,
((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) AS `miarka2`,
((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) - (((`d`.`numbers_piece_dl` - ((`d`.`numbers_piece_dl` DIV `n_product_description`.`v3_pd`) * `n_product_description`.`v3_pd`)) DIV `n_product_description`.`v2_pd`) * `n_product_description`.`v2_pd`)) AS `OSTATAK`,
`d`.`dds_dl` AS `dds_dl`,
`d`.`totalall_dl` AS `totalall_dl`,
`d`.`id_df` AS `id_df`,
`df`.`number_df` AS `number_df`,
ifnull(`df`.`type_df`,0) AS `type_df`,`kp`.`name_kp` AS `vid_plashtane`,
ifnull(`df`.`in_contragent_df`,0) AS `in_contragent_df`,
ifnull(`ictr`.`code_contragent`,0) AS `code_dostavchik`,
ifnull(`ictr`.`name_n_contragent`,0) AS `name_dostavchik`,
ifnull(`ictr`.`bul_n_contragent`,0) AS `ictr_bul_nomer`,
ifnull(`ictr`.`dan_n_contragent`,0) AS `ictr_dan_nomer`,
ifnull(`ictr`.`address_n_contragent`,0) AS `ictr_address`,
ifnull(`ictr_oso`.`name_ls_n_person`,0) AS `ictr_oso_name`,
ifnull(`ictr_mol`.`name_ls_n_person`,0) AS `ictr_mol_name`,
ifnull(`df`.`out_contragent_df`,0) AS `out_contragent_df`,
ifnull(`ictr`.`IBANR`,0) AS `ictr_ibanr`,ifnull(`ictr`.`BICR`,0) AS `ictr_bicr`,
ifnull(`ictr`.`VIDVALR`,0) AS `ictr_vidvalr`,
ifnull(`ictr`.`BANKNAMER`,0) AS `ictr_banknamer`,
ifnull(`ictr`.`IBAND`,0) AS `ictr_iband`,ifnull(`ictr`.`BICD`,0) AS `ictr_bicd`,
ifnull(`ictr`.`VIDVALD`,0) AS `ictr_vidvald`,
ifnull(`ictr`.`BANKNAMED`,0) AS `ictr_banknamed`,
ifnull(`octr`.`code_contragent`,0) AS `code_client`,
ifnull(`octr`.`name_n_contragent`,_cp1251'') AS `name_client`,
ifnull(`octr`.`bul_n_contragent`,0) AS `octr_bul_nomer`,
ifnull(`octr`.`dan_n_contragent`,0) AS `octr_dan_nomer`,
ifnull(`octr`.`address_n_contragent`,0) AS `octr_address`,
ifnull(`octr_oso`.`name_ls_n_person`,0) AS `octr_oso_name`,
ifnull(`octr_mol`.`name_ls_n_person`,0) AS `octr_mol_name`,
ifnull(`df`.`total_df`,0) AS `total_df`,`df`.`dds_df` AS `dds_df`,
ifnull(`octr`.`IBANR`,0) AS `octr_ibanr`,ifnull(`octr`.`BICR`,0) AS `octr_bicr`,
ifnull(`octr`.`VIDVALR`,0) AS `octr_vidvalr`,
ifnull(`octr`.`BANKNAMER`,0) AS `octr_banknamer`,
ifnull(`octr`.`IBAND`,0) AS `octr_iband`,
ifnull(`octr`.`BICD`,0) AS `octr_bicd`,
ifnull(`octr`.`VIDVALD`,0) AS `octr_vidvald`,
ifnull(`octr`.`BANKNAMED`,0) AS `octr_banknamed`,
ifnull(`df`.`date_edition_df`,_utf8'0000-00-00') AS `date_edition_df`,
ifnull(`df`.`date_deliver_df`,_utf8'0000-00-00') AS `date_deliver_df`,
ifnull(`df`.`date_pay_df`,_utf8'0000-00-00') AS `date_pay_df`,
ifnull(`df`.`user_df`,0) AS `user_df`,
ifnull(`person1`.`code_ls_n_person`,0) AS `code_operator`,
ifnull(`person1`.`name_ls_n_person`,_cp1251'') AS `name_operator`,
ifnull(`df`.`distributor_df`,0) AS `distributor_df`,
ifnull(`person2`.`code_ls_n_person`,0) AS `code_distributor`,
ifnull(`person2`.`name_ls_n_person`,_cp1251'') AS `name_distributor`,
ifnull(`df`.`delivere_df`,0) AS `delivere_df`,
ifnull(`person3`.`code_ls_n_person`,0) AS `code_speditor`,
ifnull(`person3`.`name_ls_n_person`,0) AS `name_speditor`,
ifnull(`d`.`price_list_dl`,0) AS `price_list_dl`,

`n_product_all_measure`.`name_pam`,
`n_product_all_measure`.`sname_pam`,
`n_product_all_measure`.`id_pam`,
`n_product_description`.`v1_pd`,
`n_product_description`.`m1_pd`,

`df`.`level_df` AS `level_df`
from (((((((((((((((`sl_document_lines` `d` join `sl_document_facade` `df` on((`df`.`id_df` = `d`.`id_df`)))
join `n_product_consigment` `pc` on((`pc`.`id_pc` = `d`.`id_pc`)))
join `n_product_main` `pm` on((`pm`.`id_pm` = `pc`.`id_pm`)))
join `n_storage` `s` on((`s`.`id_n_storage` = `d`.`id_n_storage`)))
left join `ls_n_person` `person1` on((`person1`.`id_ls_n_person` = `df`.`user_df`)))
left join `ls_n_person` `person2` on((`person2`.`id_ls_n_person` = `df`.`distributor_df`)))
left join `ls_n_person` `person3` on((`person3`.`id_ls_n_person` = `df`.`delivere_df`)))
left join `n_contragent` `octr` on((`octr`.`id_contragent` = `df`.`out_contragent_df`)))
left join `ls_n_person` `octr_oso` on((`octr_oso`.`id_ls_n_person` = `octr`.`id_oso`)))
left join `ls_n_person` `octr_mol` on((`octr_mol`.`id_ls_n_person` = `octr`.`id_mol`)))
left join `n_contragent` `ictr` on((`ictr`.`id_contragent` = `df`.`in_contragent_df`)))
left join `ls_n_person` `ictr_oso` on((`ictr_oso`.`id_ls_n_person` = `ictr`.`id_oso`)))
left join `ls_n_person` `ictr_mol` on((`ictr_mol`.`id_ls_n_person` = `ictr`.`id_mol`)))
join `n_product_description` on((`n_product_description`.`id_pd` = `pm`.`id_pd`)))
left join `kind_paying` `kp` on((`kp`.`id_kp` = `df`.`description_pay_df`)))
Left Join `n_product_all_measure` ON `n_product_description`.`m1_pd` = `n_product_all_measure`.`id_pam`;