﻿DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_document_facade` $$
CREATE PROCEDURE `mida`.`ls_procedure_document_facade` (IN comprator TINYINT,      IN in_id_df INT(11),                IN in_id_contragent_in INT(11),     IN in_id_contragent_out INT(11),IN in_id_obekt_out INT(11),
                                              IN in_id_obekt_in INT(11),           IN in_id_distributor INT(11),       IN in_id_deliver INT(11),           IN in_descriptionPaying INT(3), IN in_docFacadeNumber INT(10),
                                              IN in_docFacadeUser INT(11),         IN in_docFacadeUserLastEdit INT(11),IN in_id_facturaConnection INT(11), IN in_id_payingOrder INT(11),   IN in_id_zaqvkaConnection INT(11),
                                              IN in_docFacadeLevel INT(11),        IN in_docFacadeStorage INT(11),     IN in_docFacadeType INT (3),        IN in_docFacadeAllDDS DOUBLE,   IN in_docFacadeTotal DOUBLE,
                                              IN in_docFacadeCondition VARCHAR(11),IN in_docFacadeDate VARCHAR(10),    IN in_docFacadeComment VARCHAR(250),IN in_dateDeliver VARCHAR(10),  IN in_payingDate VARCHAR(10),
                                              IN in_docFacadeFlagFinish INT (3) )
BEGIN
     IF (comprator = 0) THEN
        SELECT s.id_df,
         s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person,
         s.out_contragent_df,contr_out.code_contragent, contr_out.bul_n_contragent,contr_out.dan_n_contragent, contr_out.name_n_contragent,
         contr_out.address_n_contragent, p_contr_out.name_ls_n_person,
         s.in_obekt_df, obkt_in.name_n_obekt, obkt_in.address_n_obekt, obkt_in.code_n_obekt,
         s.out_obekt_df, obkt_out.name_n_obekt, obkt_out.address_n_obekt, obkt_out.code_n_obekt,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, s.user_last_df, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS devliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.fag_finish_df, s.id_rep, s.level_df, s.out_contragent_df
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
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur;



     END IF;
     IF (comprator = 1) THEN
         INSERT INTO mida.sl_document_facade(in_contragent_df, out_obekt_df, in_obekt_df, number_df, type_df, condition_df,
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

     END IF;

   #  IF (comprator = 3) THEN
   #       DELETE FROM mida.sl_document_facade WHERE id_df = in_id_df;
    #  END IF;

IF (comprator = 4) THEN
         SELECT s.id_df, s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person,
         s.in_obekt_df, obkt_in.name_sno, obkt_in.address_sno, obkt_in.code_sno,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, s.user_last_df, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS devliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.fag_finish_df, s.id_rep, s.level_df, s.out_contragent_df
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
        AND sl.id_sdtn= ur.id_sdtn AND ur.id_ndtur = in_docFacadeUser;
END IF;


     #IF (comprator = 7) THEN
     #
    # END IF;

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

END $$

DELIMITER ;