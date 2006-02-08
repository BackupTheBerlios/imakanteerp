DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_document_facade` $$
CREATE PROCEDURE `mida`.`ls_procedure_document_facade` (IN comprator TINYINT,      IN in_id_df INT(11),                IN in_id_contragent_in INT(11),     IN in_id_contragent_out,        IN in_id_obekt_out INT(11),
                                              IN in_id_obekt_in INT(11),           IN in_id_distributor INT(11),       IN in_id_deliver INT(11),           IN in_descriptionPaying INT(3), IN in_docFacadeNumber INT(10),
                                              IN in_docFacadeUser INT(11),         IN in_docFacadeUserLastEdit INT(11),IN in_id_facturaConnection INT(11), IN in_id_payingOrder INT(11),   IN in_id_zaqvkaConnection INT(11)
                                              IN in_docFacadeLevel INT(11),        IN in_docFacadeStorage INT(11),     IN in_docFacadeType INT (3),        IN in_docFacadeAllDDS DOUBLE,   IN in_docFacadeTotal DOUBLE,
                                              IN in_docFacadeCondition VARCHAR(11),IN in_docFacadeDate DATE,           IN in_docFacadeComment VARCHAR(250),IN in_dateDeliver DATE,         IN in_payingDate DATE
                                              IN in_docFacadeFlagFinish INT (3) )
BEGIN
     IF (comprator = 0) THEN
        SELECT s.id_df, s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person,
         s.in_obekt_df, obkt_in.name_sno, obkt_in.address_sno, obkt_in.code_sno,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, s.user_last_df, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS devliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.fag_finish_df, s.id_rep, s.level_df, s.out_contragent_df
         FROM mida.sl_document_facade s LEFT JOIN mida.sl_n_obekt obkt_in ON s.in_obekt_df=obkt_in.id_sno
         LEFT JOIN mida.ls_n_person p_deliv ON p_deliv.id_ls_n_person=s.delivere_df
         LEFT JOIN mida.ls_n_person p_dist ON p_dist.id_ls_n_person=s.distributor_df
         LEFT JOIN  mida.n_contragent contr_in ON contr_in.id_contragent = s.in_contragent_df
         LEFT JOIN  mida.ls_n_person p_contr_in ON contr_in.id_mol = p_contr_in.id_ls_n_person
         LEFT JOIN mida.n_doc_type_user_rights usr_new ON s.user_df = usr_new.id_ndtur
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur;



     END IF;
     IF (comprator = 1) THEN
         INSERT INTO mida.sl_document_facade(SELECT in_contragent_df, out_obekt_df, in_obekt_df, number_df, type_df, condition_df,
         out_store_df, total_df, dds_df, user_df, user_last_df, date_edition_df, distributor_df, delivere_df,
         faktura_connection_df, zaiavka_connection_df, description_pay_df, paying_order_df, date_deliver_df, date_pay_df,
         comments_df, fag_finish_df,  level_df, out_contragent_df)
         VALUES(in_id_contragent_in,in_id_obekt_out,in_id_obekt_in,in_docFacadeNumber,in_docFacadeType,in_docFacadeCondition,
           in_docFacadeStorage,in_docFacadeTotal,in_docFacadeAllDDS,in_docFacadeUser,in_docFacadeUserLastEdit, in_docFacadeDate,in_id_distributor,
           in_id_deliver,in_id_facturaConnection,in_id_zaqvkaConnection, in_descriptionPaying,in_id_payingOrder,in_dateDeliver,in_payingDate,
           in_docFacadeComment,in_docFacadeFlagFinish, in_docFacadeLevel,in_id_contragent_out);
     END IF;
     IF (comprator = 2) THEN
          UPDATE mida.sl_document_facade s SET
        s.in_contragent_df = in_id_contragent_in,
        s.out_obekt_df = in_id_obekt_out,
        s.in_obekt_df = in_id_obekt_in,
        s.number_df = in_docFacadeNumber,
        s.type_df = in_docFacadeType,
        s.condition_df = in_docFacadeCondition,
        s.out_store_df = in_docFacadeStorage,
        s.total_df = in_docFacadeTotal,
        s.dds_df = in_docFacadeAllDDS,
        s.user_df = in_docFacadeUser,
        s.user_last_df = in_docFacadeUserLastEdit,
        s.date_edition_df = in_docFacadeDate,

        s.distributor_df = in_id_distributor,
        s.delivere_df = in_id_deliver,
        s.faktura_connection_df = in_id_facturaConnection,
        s.zaiavka_connection_df = in_id_zaqvkaConnection,
        s.description_pay_df = in_descriptionPaying,
        s.paying_order_df = in_id_payingOrder,
        s.date_deliver_df = in_dateDeliver,
        s.date_pay_df = in_payingDate,
        s.comments_df = in_docFacadeComment,
        s.fag_finish_df = in_docFacadeFlagFinish,

        s.level_df = in_docFacadeLevel,
        s.out_contragent_df =in_id_contragent_out
        WHERE s.id_df = in_id_df;
;
     END IF;

     IF (comprator = 3) THEN
          DELETE FROM mida.sl_document_facade s  WHERE s.id_df = in_id_df;
     END IF;

     IF (comprator = 4) THEN
         SELECT s.id_df, s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person,
         s.in_obekt_df, obkt_in.name_sno, obkt_in.address_sno, obkt_in.code_sno,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, s.user_last_df, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS devliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.fag_finish_df, s.id_rep, s.level_df, s.out_contragent_df
         FROM mida.sl_document_facade s LEFT JOIN mida.sl_n_obekt obkt_in ON s.in_obekt_df=obkt_in.id_sno
         LEFT JOIN mida.ls_n_person p_deliv ON p_deliv.id_ls_n_person=s.delivere_df
         LEFT JOIN mida.ls_n_person p_dist ON p_dist.id_ls_n_person=s.distributor_df
         LEFT JOIN  mida.n_contragent contr_in ON contr_in.id_contragent = s.in_contragent_df
         LEFT JOIN  mida.ls_n_person p_contr_in ON contr_in.id_mol = p_contr_in.id_ls_n_person
         LEFT JOIN mida.n_doc_type_user_rights usr_new ON s.user_df = usr_new.id_ndtur
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur
         WHERE s.id_df = in_id_df;


     END IF;
     IF (comprator = 5) THEN

     END IF;

     IF (comprator = 6) THEN


     END IF;


     IF (comprator = 7) THEN
        
     END IF;

     IF (comprator = 8) THEN
       IF (comprator = 0) THEN
          SELECT l.id_n_group, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_id_distributor,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
       IF (comprator = 1) THEN
           SELECT l.id_n_group, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_id_deliver,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
     END IF;

    IF (comprator = 9) THEN
        IF (comprator = 0) THEN
          SELECT l.id_n_group, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT(in_id_distributor,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
       IF (comprator = 1) THEN
           SELECT l.id_n_group, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT(in_id_deliver,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
     END IF;
     END IF;comprator = 10) THEN
    IF  (comprator = 0) THEN
        SELECT l.id_n_group, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_id_distributor)  ORDER BY   l.name_ls_n_person;
       END IF;
       IF (comprator = 1) THEN
           SELECT l.id_n_group, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_id_deliver)  ORDER BY   l.name_ls_n_person;
      END IF;

      


END $$

DELIMITER ;