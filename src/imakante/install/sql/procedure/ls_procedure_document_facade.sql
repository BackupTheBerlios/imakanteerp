DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_document_facade` $$
CREATE PROCEDURE `ls_procedure_document_facade`(IN comprator TINYINT,                IN in_id_df INT(11),                IN in_id_contragent_in INT(11),     IN in_id_contragent_out INT(11),IN in_id_obekt_out INT(11),
                                                IN in_id_obekt_in INT(11),           IN in_id_distributor INT(11),       IN in_id_deliver INT(11),           IN in_descriptionPaying INT(3), IN in_docFacadeNumber INT(10),
                                                IN in_docFacadeUser INT(11),         IN in_docFacadeUserLastEdit INT(11),IN in_id_facturaConnection INT(11), IN in_id_payingOrder INT(11),   IN in_id_zaqvkaConnection INT(11),
                                                IN in_docFacadeLevel INT(11),        IN in_docFacadeStorage INT(11),     IN in_docFacadeType INT (3),        IN in_docFacadeAllDDS DOUBLE,   IN in_docFacadeTotal DOUBLE,
                                                IN in_docFacadeCondition VARCHAR(11),IN in_docFacadeDate VARCHAR(10),    IN in_docFacadeComment VARCHAR(250),IN in_dateDeliver VARCHAR(10),  IN in_payingDate VARCHAR(10),
                                                IN in_docFacadeFlagFinish INT (3),   IN in_priceOne DOUBLE,              IN in_climbDown DOUBLE )
BEGIN

IF (comprator = 0) THEN
        SELECT
         s.id_df,
         s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person, contr_in.tel_contragent,
         s.out_contragent_df,contr_out.code_contragent, contr_out.bul_n_contragent,contr_out.dan_n_contragent, contr_out.name_n_contragent,
         contr_out.address_n_contragent, p_contr_out.name_ls_n_person, contr_out.tel_contragent,
         s.in_obekt_df, obkt_in.name_n_obekt, obkt_in.address_n_obekt, obkt_in.code_n_obekt,
         s.out_obekt_df, obkt_out.name_n_obekt, obkt_out.address_n_obekt, obkt_out.code_n_obekt,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, s.user_last_df, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS deliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.flag_finish_df, s.id_rep, s.level_df
         FROM mida.sl_document_facade s
         LEFT JOIN mida.n_obekt obkt_in ON s.in_obekt_df=obkt_in.id_n_obekt
         LEFT JOIN mida.n_obekt obkt_out ON s.out_obekt_df=obkt_out.id_n_obekt
         LEFT JOIN mida.ls_n_person p_deliv ON p_deliv.id_ls_n_person=s.delivere_df
         LEFT JOIN mida.ls_n_person p_dist ON p_dist.id_ls_n_person=s.distributor_df
         LEFT JOIN  mida.n_contragent contr_in ON contr_in.id_contragent = s.in_contragent_df
         LEFT JOIN  mida.n_contragent contr_out ON contr_out.id_contragent = s.out_contragent_df
         LEFT JOIN  mida.ls_n_person p_contr_in ON contr_in.id_mol = p_contr_in.id_ls_n_person
         LEFT JOIN  mida.ls_n_person p_contr_out ON contr_out.id_mol = p_contr_out.id_ls_n_person
         LEFT JOIN mida.n_doc_type_user_rights usr_new ON s.user_df = usr_new.id_ndtur
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur ORDER BY id_df DESC;
END IF;

IF (comprator = 1) THEN
         INSERT INTO mida.sl_document_facade(in_contragent_df, out_obekt_df, in_obekt_df, number_df, type_df, condition_df,
         out_store_df, total_df, dds_df, user_df, user_last_df, date_edition_df, distributor_df, delivere_df,
         faktura_connection_df, zaiavka_connection_df, description_pay_df, paying_order_df, date_deliver_df, date_pay_df,
         comments_df, flag_finish_df,  level_df, out_contragent_df)
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
        s.flag_finish_df = in_docFacadeFlagFinish,

        s.level_df = in_docFacadeLevel,
        s.out_contragent_df =in_id_contragent_out
        WHERE s.id_df = in_id_df;

     END IF;

IF (comprator = 3) THEN
      #   DELETE FROM mida.sl_document_facade WHERE id_df = in_id_df;
      UPDATE mida.sl_document_facade s SET s.condition_df ="1"
      WHERE id_df = in_id_df;
END IF;

IF (comprator = 4) THEN
         SELECT s.id_df, s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person,
         s.in_obekt_df, obkt_in.name_sno, obkt_in.address_sno, obkt_in.code_sno,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, s.user_last_df, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS devliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.flag_finish_df, s.id_rep, s.level_df, s.out_contragent_df
         FROM mida.sl_document_facade s LEFT JOIN mida.n_obekt obkt_in ON s.in_obekt_df=obkt_in.id_sno
         LEFT JOIN mida.ls_n_person p_deliv ON p_deliv.id_ls_n_person=s.delivere_df
         LEFT JOIN mida.ls_n_person p_dist ON p_dist.id_ls_n_person=s.distributor_df
         LEFT JOIN  mida.n_contragent contr_in ON contr_in.id_contragent = s.in_contragent_df
         LEFT JOIN  mida.ls_n_person p_contr_in ON contr_in.id_mol = p_contr_in.id_ls_n_person
         LEFT JOIN mida.n_doc_type_user_rights usr_new ON s.user_df = usr_new.id_ndtur
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur
         WHERE s.id_df = in_id_df;
END IF;

 #    IF (comprator = 5) THEN
 #
 #    END IF;

IF (comprator = 6) THEN
        SELECT MAX(number_df) AS maxNumber FROM mida.sl_document_facade s, sl_doc_type_num sl, n_doc_type_user_rights ur
        WHERE number_df like CONCAT(sl.area_number_sdtn,'%')
        AND sl.id_sdtn=  ur.id_sdtn  AND ur.id_ndtur = in_docFacadeUser  AND s.level_df = in_id_obekt_in;
END IF;


IF (comprator = 7) THEN
          SELECT MAX(id_df) as id FROM mida.sl_document_facade s;
END IF;

    # 13 - DISTRIBUTOR
    # 14 - DELIVER
IF (comprator = 8) THEN
       IF (in_docFacadeType = 13) THEN
          SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_docFacadeComment,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
       IF (in_docFacadeType = 14) THEN
           SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_docFacadeComment,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
END IF;

IF (comprator = 9) THEN
        IF (in_docFacadeType = 13) THEN
          SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT(in_docFacadeComment,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
       IF (in_docFacadeType = 14) THEN
           SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT(in_docFacadeComment,'%')  ORDER BY   l.name_ls_n_person;
       END IF;
END IF;

IF (comprator = 10) THEN
       IF  (in_docFacadeType = 13) THEN
        SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_docFacadeComment)  ORDER BY   l.name_ls_n_person;
       END IF;
       IF (in_docFacadeType = 14) THEN
           SELECT l.id_ls_n_person, l.code_ls_n_person, l.egn_ls_n_person, l.nlk_ls_n_person, l.name_ls_n_person,
          l.comment_ls_n_person FROM mida.ls_n_person l
          WHERE l.code_ls_n_person LIKE CONCAT('%',in_docFacadeComment)  ORDER BY   l.name_ls_n_person;
      END IF;
END IF;
# include text obekt
#--------------------------------
IF (comprator = 11) THEN
       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
END IF;
#----------------------
# start text obekt
IF (comprator = 12) THEN
       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
END IF;
# end text obekt
#--------------------------------
IF (comprator = 13) THEN

       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
END IF;




# include text  contragent
#---------------------------------
IF (comprator = 14) THEN
 #   code_contragent include
      IF  (in_docFacadeType = 0) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
           n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
           n.id_mol, ls.name_ls_n_person FROM n_contragent n
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
# bul_n_contragent include
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# dan_n_contragent include
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# name_n_contragent include
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# address_n_contragent include
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE address_n_contragent  LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# tel_contragent include
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;
# ls_n_person include
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT('%',in_docFacadeComment,'%');
      END IF;


END IF;
 # start text  contragent
 #--------------------------------
IF (comprator = 15) THEN
#  code_contragent start with text
       IF (in_docFacadeType = 0) THEN
           SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
           n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
           n.id_mol, ls.name_ls_n_person FROM n_contragent n
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
#  bul_n_contragent start with text
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
#  dan_n_contragent start with text
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
 #  name_n_contragent start with text
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
 #  address_n_contragent start with text
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.address_n_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
 #  tel_contragent start with text
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
#  ls_n_person start with text
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT(in_docFacadeComment,'%');
      END IF;
END IF;
# end text  contragent
#--------------------------------
IF (comprator = 16) THEN

#  code_contragent end with text
       IF (in_docFacadeType = 0) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
           n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
           n.id_mol, ls.name_ls_n_person FROM n_contragent n
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT('%',in_docFacadeComment);
      END IF;
 #  bul_n_contragent end with text
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT('%',in_docFacadeComment);
       END IF;
 #  dan_n_contragent end with text
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT('%',in_docFacadeComment);
       END IF;
 #  name_n_contragent end with text
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT('%',in_docFacadeComment);
       END IF;
 #  address_n_contragent end with text
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.address_n_contragent LIKE CONCAT('%',in_docFacadeCommentr);
       END IF;
#  tel_contragent end with text
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT('%',in_docFacadeComment);
       END IF;
#  ls_n_person end with text
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT('%',in_docFacadeComment);
       END IF;


END IF;

# get user data
#---------------------
IF (comprator = 17) THEN
    SELECT n.id_ndtur, u.name_um FROM n_doc_type_user_rights n
    LEFT JOIN user_master u ON u.id_um = n.id_um
    WHERE n.id_ndtur = in_docFacadeUser;


END IF;

IF (comprator = 18) THEN
      SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
      n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
      n.id_mol, ls.name_ls_n_person FROM n_contragent n
      LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.id_contragent = in_docFacadeUser;


END IF;

IF (comprator = 19) THEN
      SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person FROM n_obekt n
      WHERE n.id_n_obekt = in_docFacadeUser;
END IF;

IF (comprator = 20) THEN
   IF (in_docFacadeType = 0) THEN
     SELECT pc.id_pc,n.id_pm, n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
     pc.parcel_pc, pc.dateofexpire_pc ,
     s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
     st.id_n_storage, st.code_n_storage, st.name_n_storage, st.comments_n_storage
     FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
     LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
     LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
     WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df;
   END IF;
   IF (in_docFacadeType = 1) THEN
       SELECT n.id_pm, n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.parcel_pc, pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.id_n_storage, st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.code_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df;
   END IF;
   IF (in_docFacadeType = 2) THEN
       SELECT n.id_pm, n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.parcel_pc, pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.id_n_storage, st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df;
   END IF;
END IF;
IF (comprator = 21) THEN
   SELECT n.price1_pp, n.price2_pp, n.price3_pp, n.price0_pp,n.id_sl_curs FROM mida.n_product_price n
   WHERE n.id_pp = in_id_obekt_in;
END IF;

IF (comprator = 22) THEN
   SELECT n.id_pd, n.m1_pd, n.v1_pd, n.m2_pd, n.v2_pd, n.m3_pd, n.v3_pd FROM mida.n_product_description n
   WHERE n.id_pd = in_id_obekt_in;
END IF;
IF (comprator = 23) THEN
    SELECT n.dds_pf, n.excise_pf, n.other_pf FROM mida.n_product_fee n
     WHERE id_pf = in_id_obekt_in;
END IF;
IF (comprator = 24) THEN
    SELECT n.id_pam, n.name_pam, n.sname_pam
    FROM mida.n_product_all_measure n WHERE id_pam = in_id_obekt_in;
END IF;

IF (comprator = 25) THEN
    SELECT * FROM mida.sl_nalichnosti s LEFT JOIN mida.n_product_consigment n ON n.id_pc=s.id_pc
    LEFT JOIN mida.n_product_main pm ON pm.id_pm = n.id_pm
    WHERE n.id_pc =in_id_obekt_in AND pm.flag_pm = in_id_df;
END IF;

IF (comprator = 26) THEN
    INSERT INTO mida.sl_document_lines(id_df,id_pc,id_n_storage,singly_price_dl,climb_down_dl,
           numbers_piece_dl,dds_dl,totalall_dl,price_list_dl)
    VALUES(in_id_df,in_id_obekt_in,in_id_obekt_out,in_priceOne,in_climbDown,in_id_contragent_in,in_docFacadeAllDDS,in_docFacadeTotal,in_id_deliver);
END IF;

IF (comprator = 27) THEN
      SELECT * FROM mida.sl_nalichnosti s
      WHERE id_pc = in_id_df AND id_n_storage = in_id_obekt_in;
END IF;
IF (comprator = 28) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.quant_rezerv_nal = quant_rezerv_nal + in_id_contragent_in
     WHERE id_pc = in_id_obekt_in AND id_n_storage = in_id_obekt_out ;

END IF;
IF (comprator = 29) THEN
    SELECT s.id_sl_curs, s.id_n_money, s.value_sl_curs,cod_lat_n_money FROM mida.sl_curs s LEFT JOIN n_money m ON m.id_n_money = s.id_n_money
    WHERE s.id_sl_curs = in_id_obekt_in;
END IF;

IF (comprator = 30) THEN
    UPDATE mida.sl_nalichnosti s SET s.quant_nal=(quant_nal-in_id_obekt_in)
      , s.quant_rezerv_nal=quant_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df);

END IF;

IF (comprator = 31) THEN
    SELECT s.id_dl, s.id_pc, s.id_n_storage, s.singly_price_dl, s.climb_down_dl, s.numbers_piece_dl, s.dds_dl, s.totalall_dl, s.id_df, s.price_list_dl,
n.id_pc, n.id_pm, n.parcel_pc, n.dateofexpire_pc,
 pm.id_pm, pm.id_pd, pm.id_n_group, pm.id_ppp, pm.id_pp, pm.id_pf, pm.name_pm, pm.fname_pm, pm.sname_pm, pm.cname_pm,
 pm.cod1_pm, pm.cod2_pm, pm.barcod_pm, pm.max_pop_pm, pm.expertsheet_pm, pm.flag_pm, pm.min_pm, pm.code_pm,
 pd.id_pd, pd.m1_pd, pd.v1_pd as v1, pd.m2_pd, pd.v2_pd as v2, pd.m3_pd, pd.v3_pd as v3,
 pp.id_pp, pp.id_sl_curs, pp.price1_pp, pp.price2_pp, pp.price3_pp, pp.price0_pp,
 pf.id_pf, pf.dds_pf, pf.excise_pf, pf.other_pf,
 st.id_n_storage, st.id_n_group, st.code_n_storage, st.name_n_storage, st.comments_n_storage,
 pam1.sname_pam as m1, pam2.sname_pam as m2, pam3.sname_pam as m3
    FROM mida.sl_document_lines s LEFT JOIN mida.n_product_consigment n ON s.id_pc = n.id_pc
    LEFT JOIN mida.n_product_main pm ON pm.id_pm=n.id_pm
    LEFT JOIN  mida.n_product_price pp   ON pm.id_pp=pp.id_pp
    LEFT JOIN  mida.n_product_description pd   ON pm.id_pd=pd.id_pd
    LEFT JOIN  mida.n_product_fee pf   ON pm.id_pf=pf.id_pf
    LEFT JOIN  mida.n_storage st   ON st.id_n_storage = s.id_n_storage
    LEFT JOIN  mida.n_product_all_measure pam1 ON pam1.id_pam = pd.m1_pd
    LEFT JOIN  mida.n_product_all_measure pam2 ON pam2.id_pam = pd.m2_pd
    LEFT JOIN  mida.n_product_all_measure pam3 ON pam3.id_pam = pd.m3_pd
    WHERE id_df = in_id_df;
END IF;

IF (comprator = 32) THEN
    UPDATE mida.sl_document_lines s SET s.id_pc = in_id_obekt_in,
    s.id_n_storage = in_id_obekt_out,
    s.singly_price_dl = in_priceOne ,
    s.climb_down_dl = in_climbDown,
    s.numbers_piece_dl=  in_id_contragent_in ,
    s.dds_dl = in_docFacadeAllDDS ,
    s.totalall_dl = in_docFacadeTotal,
    s.id_df=  in_id_df,
    s.price_list_dl= in_id_deliver
    WHERE id_dl = in_id_contragent_out;
END IF;

IF (comprator = 33) THEN
    DELETE FROM mida.sl_document_lines
    WHERE  id_dl = in_id_df;
END IF;

IF (comprator = 34) THEN
    SELECT MAX(id_dl) as id FROM mida.sl_document_lines s;

END IF;

IF (comprator = 35) THEN
  # DELETE FROM mida.sl_document_facade
  # WHERE  type_df = in_id_df AND number_df = in_id_obekt_in AND level_df =in_id_obekt_out;
   UPDATE mida.sl_document_facade s SET s.condition_df ="1"
   WHERE type_df = in_id_df AND number_df = in_id_obekt_in AND level_df =in_id_obekt_out;

END IF;
IF (comprator = 36) THEN
    UPDATE mida.sl_nalichnosti s SET
     s.quant_rezerv_nal=quant_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df);

END IF;

IF (comprator = 37) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.return_rezerv_nal = return_rezerv_nal + in_id_contragent_in
     WHERE id_pc = in_id_obekt_in AND id_n_storage = in_id_obekt_out ;

END IF;

IF (comprator = 38) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.return_rezerv_nal=return_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df);
END IF;

IF (comprator = 39) THEN
    UPDATE mida.sl_nalichnosti s SET s.quant_nal=(quant_nal+in_id_obekt_in)
      , s.return_rezerv_nal=return_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df);

END IF;

IF (comprator = 40) THEN
    UPDATE mida.sl_document_facade s SET s.condition_df ="2"
    WHERE s.id_df = in_id_df;
END IF;


END $$

DELIMITER ;