DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`sl_procedure_case_in` $$
CREATE PROCEDURE `mida`.`sl_procedure_case_in` (IN comprator INT(6),
              IN in_number_sl_mop INT(11),
              IN in_outsl_mop INT(11),
              IN in_id_order_spec_type INT(11),
              IN in_id_order_spec_type_type INT(11),
              IN in_id_order_doc INT(11),
              IN in_date_is DATE,
              IN in_id_n_money INT(11),
              IN in_exchange_rate DOUBLE,
              IN in_sum_sl_mop DOUBLE,
              IN in_sum_os_val_sl_mop DOUBLE,
              IN in_user_id INT(11),
              IN in_id_sdtn INT(11),
              IN in_comment_sl_mop VARCHAR(250))
BEGIN

   IF (comprator = 0) THEN
            SELECT
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            n_contragent.id_contragent,
            n_contragent.code_contragent,
            n_contragent.name_n_contragent,
            sl_document_facade.number_df,
            sl_document_facade.id_df,
            sl_m_operation.id_sl_mop,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            `n_money`.`cod_n_money`,
            `sl_m_operation`.`date_is`,
            `sl_m_operation`.`exchange_rate`,
            `sl_m_operation`.`sum_sl_mop`,
            `sl_m_operation`.`sum_os_val_sl_mop`,
            `sl_m_operation`.`user_id`,
            `user_master`.`name_um`,
            `sl_m_operation`.`id_sdtn`,
            `sl_doc_type_num`.`name_sdtn`,
            `sl_m_operation`.`comment_sl_mop`
            FROM
            `sl_m_operation`
            Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
            Inner Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`out_sl_mop`
            Inner Join `sl_document_facade` ON `sl_document_facade`.`id_df` = `sl_m_operation`.`id_order_spec`
            Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
            Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_doc`
            Inner Join `user_master` ON `user_master`.`id_um` = `sl_m_operation`.`user_id`
            Inner Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `sl_m_operation`.`id_sdtn`
            WHERE
            `sl_m_operation`.`in_type_sl_mop` = 1 AND
            `sl_m_operation`.`out_type_sl_mop` = 3 AND
            `sl_m_operation`.`id_sdtn` = in_id_sdtn;

     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `sl_m_operation`( `sl_m_operation`.`number_sl_mop`,
                                      `sl_m_operation`.`in_sl_mop`,
                                      `sl_m_operation`.`in_type_sl_mop`,
                                      `sl_m_operation`.`out_sl_mop`,
                                      `sl_m_operation`.`out_type_sl_mop`,
                                      `sl_m_operation`.`id_order_spec`,
                                      `sl_m_operation`.`id_order_spec_type`,
                                      `sl_m_operation`.`id_order_doc`,
                                      `sl_m_operation`.`date_is`,
                                      `sl_m_operation`.`id_n_money`,
                                      `sl_m_operation`.`exchange_rate`,
                                      `sl_m_operation`.`sum_sl_mop`,
                                      `sl_m_operation`.`sum_os_val_sl_mop`,
                                      `sl_m_operation`.`user_id`,
                                      `sl_m_operation`.`id_sdtn`,
                                      `sl_m_operation`.`comment_sl_mop`)
        VALUES(in_number_sl_mop,
               1,
               in_outsl_mop,
               3,
               in_id_order_spec_type,
               in_id_order_spec_type_type,
               in_id_order_doc,
               in_date_is,
               in_id_n_money,
               in_exchange_rate,
               in_sum_sl_mop,
               in_sum_os_val_sl_mop,
               in_user_id,
               in_id_sdtn,
               in_comment_sl_mop
             );
     END IF;

END $$

DELIMITER ;