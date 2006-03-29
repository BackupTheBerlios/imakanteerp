DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_case_advances $$
CREATE PROCEDURE sl_procedure_case_advances (
              IN comprator INT(6),
              IN in_id INT(11),
              IN in_number_sl_mop INT(11),
              IN in_in_sl_mop INT(11),
              IN in_outsl_mop INT(11),
              IN in_id_order_spec INT(11),
              IN in_id_order_doc INT(11),
              IN in_date_is VARCHAR(10),
              IN in_id_n_money INT(11),
              IN in_exchange_rate DOUBLE(11,4),
              IN in_sum_sl_mop DOUBLE(11,4),
              IN in_sum_os_val_sl_mop DOUBLE(11,4),
              IN in_user_id INT(11),
              IN in_id_sdtn INT(11),
              IN in_comment_sl_mop VARCHAR(250),
              IN in_casaBegin INT(11),
              IN in_casaEnd INT(11),
              IN in_personBegin INT(11),
              IN in_personEnd INT(11),
              IN in_data_begin DATE,
              IN in_data_end DATE,
              IN in_level INT(11)
              )
BEGIN

   IF (comprator = 0) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            ls_n_person.id_ls_n_person,
            ls_n_person.code_ls_n_person,
            ls_n_person.name_ls_n_person,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            n_money.cod_lat_n_money,
            sl_m_operation.date_is,
            sl_m_operation.exchange_rate,
            sl_m_operation.sum_sl_mop,
            sl_m_operation.sum_os_val_sl_mop,
            sl_m_operation.user_id,
            user_master.name_um,
            sl_m_operation.id_sdtn,
            sl_doc_type_num.name_sdtn,
            sl_m_operation.comment_sl_mop
            FROM
            sl_m_operation
            LEFT Join n_casa ON n_casa.id_n_casa = sl_m_operation.in_sl_mop
            LEFT Join ls_n_person ON ls_n_person.id_ls_n_person = sl_m_operation.out_sl_mop
            LEFT Join sl_document_facade ON sl_document_facade.id_df = sl_m_operation.id_order_spec
            LEFT Join n_money ON n_money.id_n_money = sl_m_operation.id_n_money
            LEFT Join n_incoms ON n_incoms.id_n_incoms = sl_m_operation.id_order_doc
            LEFT Join user_master ON user_master.id_um = sl_m_operation.user_id
            LEFT Join sl_doc_type_num ON sl_doc_type_num.id_sdtn = sl_m_operation.id_sdtn
            WHERE
            sl_m_operation.in_type_sl_mop = 1 AND
            sl_m_operation.out_type_sl_mop = 3 AND
            sl_m_operation.id_sdtn = in_id_sdtn AND
            sl_m_operation.levelx = in_level;

     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_m_operation(   sl_m_operation.number_sl_mop,
                                      sl_m_operation.in_sl_mop,
                                      sl_m_operation.in_type_sl_mop,
                                      sl_m_operation.out_sl_mop,
                                      sl_m_operation.out_type_sl_mop,
                                      sl_m_operation.id_order_spec,
                                      sl_m_operation.id_order_spec_type,
                                      sl_m_operation.id_order_doc,
                                      sl_m_operation.date_is,
                                      sl_m_operation.id_n_money,
                                      sl_m_operation.exchange_rate,
                                      sl_m_operation.sum_sl_mop,
                                      sl_m_operation.sum_os_val_sl_mop,
                                      sl_m_operation.user_id,
                                      sl_m_operation.id_sdtn,
                                      sl_m_operation.comment_sl_mop)
        VALUES(in_number_sl_mop,
               in_in_sl_mop,
               1,
               in_outsl_mop,
               4,
               in_id_order_spec,
               1,
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

     IF (comprator = 2) THEN
        UPDATE sl_m_operation SET
                                      sl_m_operation.number_sl_mop =  in_number_sl_mop,
                                      sl_m_operation.in_sl_mop = in_in_sl_mop,
                                      sl_m_operation.in_type_sl_mop = 1,
                                      sl_m_operation.out_sl_mop = in_outsl_mop,
                                      sl_m_operation.out_type_sl_mop = 4,
                                      sl_m_operation.id_order_spec = in_id_order_spec,
                                      sl_m_operation.id_order_spec_type = 1,
                                      sl_m_operation.id_order_doc = in_id_order_doc,
                                      sl_m_operation.date_is = in_date_is,
                                      sl_m_operation.id_n_money = in_id_n_money,
                                      sl_m_operation.exchange_rate = in_exchange_rate,
                                      sl_m_operation.sum_sl_mop = in_sum_sl_mop,
                                      sl_m_operation.sum_os_val_sl_mop = in_sum_os_val_sl_mop,
                                      sl_m_operation.user_id = in_user_id,
                                      sl_m_operation.id_sdtn = in_id_sdtn,
                                      sl_m_operation.comment_sl_mop = in_comment_sl_mop
        WHERE sl_m_operation.id_sl_mop = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM sl_m_operation  WHERE  sl_m_operation.id_sl_mop = in_id;
     END IF;

      IF (comprator = 5) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            ls_n_person.id_ls_n_person,
            ls_n_person.code_ls_n_person,
            ls_n_person.name_ls_n_person,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            n_money.cod_lat_n_money,
            sl_m_operation.date_is,
            sl_m_operation.exchange_rate,
            sl_m_operation.sum_sl_mop,
            sl_m_operation.sum_os_val_sl_mop,
            sl_m_operation.user_id,
            user_master.name_um,
            sl_m_operation.id_sdtn,
            sl_doc_type_num.name_sdtn,
            sl_m_operation.comment_sl_mop
            FROM
            sl_m_operation
            LEFT Join n_casa ON n_casa.id_n_casa = sl_m_operation.in_sl_mop
            LEFT Join ls_n_person ON ls_n_person.id_ls_n_person = sl_m_operation.out_sl_mop
            LEFT Join sl_document_facade ON sl_document_facade.id_df = sl_m_operation.id_order_spec
            LEFT Join n_money ON n_money.id_n_money = sl_m_operation.id_n_money
            LEFT Join n_incoms ON n_incoms.id_n_incoms = sl_m_operation.id_order_doc
            LEFT Join user_master ON user_master.id_um = sl_m_operation.user_id
            LEFT Join sl_doc_type_num ON sl_doc_type_num.id_sdtn = sl_m_operation.id_sdtn
            WHERE
            sl_m_operation.in_sl_mop = ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_casaBegin AND in_casaEnd ) AND
            sl_m_operation.out_sl_mop = ANY (SELECT ls_n_person.id_ls_n_person FROM ls_n_person WHERE ls_n_person.code_ls_n_person BETWEEN in_personBegin AND in_personEnd ) AND
            sl_m_operation.date_is BETWEEN  in_data_begin AND in_data_end AND
            sl_m_operation.in_type_sl_mop = 1 AND
            sl_m_operation.out_type_sl_mop = 4 AND
            sl_m_operation.id_sdtn = in_id_sdtn AND
            sl_m_operation.levelx = in_level;

       END IF;


         IF (comprator = 6) THEN
        SELECT n_casa.id_n_casa, n_casa.code_n_casa FROM n_casa;
        END IF;


        IF (comprator = 7) THEN
        SELECT MAX(sl_m_operation.id_sl_mop) FROM sl_m_operation n;
        END IF;

         IF (comprator = 8) THEN
        SELECT MAX(sl_m_operation.number_sl_mop) FROM sl_m_operation  WHERE sl_m_operation.id_sdtn = in_id_sdtn AND sl_m_operation.levelx = in_level;
        END IF;


          IF (comprator = 11) THEN
        SELECT n_money.id_n_money, n_money.cod_lat_n_money FROM n_money;
        END IF;

          IF (comprator = 12) THEN
        SELECT n_incoms.id_n_incoms, n_incoms.name_n_incoms FROM n_incoms;
        END IF;

END $$

DELIMITER ;