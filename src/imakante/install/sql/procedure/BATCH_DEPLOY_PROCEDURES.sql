use mida;

# procedure: ls_procedure_branch

DELIMITER $$

DROP PROCEDURE IF EXISTS ls_procedure_branch $$
CREATE PROCEDURE ls_procedure_branch (IN in_id INT(6), IN comprator TINYINT, IN in_code INT(6), IN in_name VARCHAR(30))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id, n.code, n.name FROM ls_otdeli n;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO ls_otdeli (code, name) VALUES(in_code,in_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE ls_otdeli SET code = in_code, name = in_name
           WHERE ls_otdeli.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM ls_otdeli  WHERE id = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code, n.name FROM ls_otdeli n WHERE n.id = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id, n.code, n.name FROM ls_otdeli n WHERE n.code LIKE CONCAT('%',in_code,'%') AND
        n.name LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code) AS code FROM ls_otdeli n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM ls_otdeli n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM ls_otdeli;
     END IF;

END $$

DELIMITER ;

# procedure: ls_procedure_country

DELIMITER $$

DROP PROCEDURE IF EXISTS ls_procedure_country $$
CREATE PROCEDURE ls_procedure_country (IN in_id INT(6), IN comprator TINYINT, IN in_code INT(6), IN in_name VARCHAR(30))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_country, n.code_n_country, n.name_n_country FROM n_country n ORDER BY n.id_n_country ASC;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_country (code_n_country, name_n_country) VALUES(in_code, in_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_country SET code_n_country = in_code, name_n_country = in_name WHERE n_country.id_n_country = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_country  WHERE id_n_country = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code_n_country, n.name_n_country FROM n_country n WHERE n.id_n_country = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
        SELECT n.id_n_country, n.code_n_country, n.name_n_country FROM n_country n
            WHERE n.name_n_country LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_country ASC;
        END IF;
        IF (in_code > -1) THEN
        SELECT n.id_n_country, n.code_n_country, n.name_n_country FROM n_country n
            WHERE n.code_n_country LIKE CONCAT('%',in_code,'%') AND n.name_n_country LIKE CONCAT('%',in_name,'%')
            ORDER BY n.id_n_country ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code_n_country) AS code FROM n_country n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_country) AS id FROM n_country n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM n_country;
     END IF;

END $$

DELIMITER ;

# procedure: ls_procedure_document_facade

DELIMITER $$

DROP PROCEDURE IF EXISTS ls_procedure_document_facade $$
CREATE PROCEDURE ls_procedure_document_facade (IN comprator TINYINT,                IN in_id_df INT(11),                IN in_id_contragent_in INT(11),     IN in_id_contragent_out INT(11),IN in_id_obekt_out INT(11),
                                                IN in_id_obekt_in INT(11),           IN in_id_distributor INT(11),       IN in_id_deliver INT(11),           IN in_descriptionPaying INT(3), IN in_docFacadeNumber BIGINT(10),
                                                IN in_docFacadeUser INT(11),         IN in_docFacadeUserLastEdit INT(11),IN in_id_facturaConnection INT(11), IN in_id_payingOrder INT(11),   IN in_id_zaqvkaConnection INT(11),
                                                IN in_docFacadeLevel INT(11),        IN in_docFacadeStorage INT(11),     IN in_docFacadeType INT (3),        IN in_docFacadeAllDDS DOUBLE,   IN in_docFacadeTotal DOUBLE,
                                                IN in_docFacadeCondition VARCHAR(11),IN in_docFacadeDate VARCHAR(10),    IN in_docFacadeComment VARCHAR(250),IN in_dateDeliver VARCHAR(10),  IN in_payingDate VARCHAR(10),
                                                IN in_docFacadeFlagFinish INT (3),   IN in_priceOne DOUBLE,              IN in_climbDown DOUBLE ,            IN in_in_store_df INT(11) )
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
         s.total_df, s.dds_df, s.user_df, um_usr_new.name_um,s.user_last_df, um_usr_last.name_um, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS deliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df,name_kp, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.flag_finish_df, s.id_rep, s.level_df , s.in_store_df
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
         LEFT JOIN user_master um_usr_new ON usr_new.id_um=um_usr_new.id_um
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur
         LEFT JOIN user_master um_usr_last ON usr_last.id_um=um_usr_last.id_um
         LEFT JOIN mida.sl_doc_type_num sldtn ON sldtn.id_sdtn=usr_new.id_sdtn
         LEFT JOIN  kind_paying ON  description_pay_df=kind_paying.id_kp
         WHERE  type_df = in_docFacadeType  AND level_df =  in_docFacadeLevel
         AND condition_df="0" ORDER BY s.number_df ASC;


END IF;

IF (comprator = 1) THEN
         INSERT INTO mida.sl_document_facade(in_contragent_df, out_obekt_df, in_obekt_df, number_df, type_df, condition_df,
         out_store_df, total_df, dds_df, user_df, user_last_df, date_edition_df, distributor_df, delivere_df,
         faktura_connection_df, zaiavka_connection_df, description_pay_df, paying_order_df, date_deliver_df, date_pay_df,
         comments_df, flag_finish_df,  level_df, out_contragent_df,in_store_df)
         VALUES(in_id_contragent_in,in_id_obekt_out,in_id_obekt_in,in_docFacadeNumber,in_docFacadeType,in_docFacadeCondition,
           in_docFacadeStorage,in_docFacadeTotal,in_docFacadeAllDDS,in_docFacadeUser,in_docFacadeUserLastEdit, in_docFacadeDate,in_id_distributor,
           in_id_deliver,in_id_facturaConnection,in_id_zaqvkaConnection, in_descriptionPaying,in_id_payingOrder,in_dateDeliver,in_payingDate,
           in_docFacadeComment,in_docFacadeFlagFinish, in_docFacadeLevel,in_id_contragent_out,in_in_store_df);
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
        s.out_contragent_df =in_id_contragent_out,
        s.in_store_df = in_in_store_df
        WHERE s.id_df = in_id_df;

     END IF;

IF (comprator = 3) THEN
      #   DELETE FROM mida.sl_document_facade WHERE id_df = in_id_df;
      UPDATE mida.sl_document_facade s SET s.condition_df ="1"
      WHERE id_df = in_id_df;
END IF;

IF (comprator = 4) THEN
         SELECT
         s.id_df,
         s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person, contr_in.tel_contragent,
         s.out_contragent_df,contr_out.code_contragent, contr_out.bul_n_contragent,contr_out.dan_n_contragent, contr_out.name_n_contragent,
         contr_out.address_n_contragent, p_contr_out.name_ls_n_person, contr_out.tel_contragent,
         s.in_obekt_df, obkt_in.name_n_obekt, obkt_in.address_n_obekt, obkt_in.code_n_obekt,
         s.out_obekt_df, obkt_out.name_n_obekt, obkt_out.address_n_obekt, obkt_out.code_n_obekt,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, um_usr_new.name_um,s.user_last_df, um_usr_last.name_um, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS deliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df,name_kp, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.flag_finish_df, s.id_rep, s.level_df , s.in_store_df
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
         LEFT JOIN user_master um_usr_new ON usr_new.id_um=um_usr_new.id_um
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur
         LEFT JOIN user_master um_usr_last ON usr_last.id_um=um_usr_last.id_um
         LEFT JOIN mida.sl_doc_type_num sldtn ON sldtn.id_sdtn=usr_new.id_sdtn
         LEFT JOIN  kind_paying ON  description_pay_df=kind_paying.id_kp
         WHERE s.id_df = in_id_df;
END IF;

     IF (comprator = 5) THEN
      SELECT
         s.id_df,
         s.in_contragent_df,contr_in.code_contragent, contr_in.bul_n_contragent, contr_in.dan_n_contragent, contr_in.name_n_contragent,
         contr_in.address_n_contragent, p_contr_in.name_ls_n_person, contr_in.tel_contragent,
         s.out_contragent_df,contr_out.code_contragent, contr_out.bul_n_contragent,contr_out.dan_n_contragent, contr_out.name_n_contragent,
         contr_out.address_n_contragent, p_contr_out.name_ls_n_person, contr_out.tel_contragent,
         s.in_obekt_df, obkt_in.name_n_obekt, obkt_in.address_n_obekt, obkt_in.code_n_obekt,
         s.out_obekt_df, obkt_out.name_n_obekt, obkt_out.address_n_obekt, obkt_out.code_n_obekt,
         s.type_df, s.number_df, s.condition_df, s.out_store_df,
         s.total_df, s.dds_df, s.user_df, um_usr_new.name_um,s.user_last_df, um_usr_last.name_um, s.date_edition_df, s.time_edition_df, s.distributor_df,p_dist.code_ls_n_person AS dist,
         s.delivere_df,p_deliv.code_ls_n_person AS deliv,
         s.faktura_connection_df, s.zaiavka_connection_df, s.description_pay_df,name_kp, s.paying_order_df, s.date_deliver_df,
         s.date_pay_df, s.comments_df, s.flag_finish_df, s.id_rep, s.level_df , s.in_store_df
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
         LEFT JOIN user_master um_usr_new ON usr_new.id_um=um_usr_new.id_um
         LEFT JOIN mida.n_doc_type_user_rights usr_last ON s.user_last_df = usr_last.id_ndtur
         LEFT JOIN user_master um_usr_last ON usr_last.id_um=um_usr_last.id_um
         LEFT JOIN mida.sl_doc_type_num sldtn ON sldtn.id_sdtn=usr_new.id_sdtn
         LEFT JOIN  kind_paying ON  description_pay_df=kind_paying.id_kp
         WHERE  type_df = in_docFacadeType  AND level_df =  in_docFacadeLevel
         AND condition_df="0" AND description_pay_df = in_descriptionPaying AND number_df like concat('%',in_docFacadeComment,'%')
         AND date_edition_df   between  in_docFacadeDate and  in_payingDate   ORDER BY s.number_df ASC;

     END IF;

IF (comprator = 6) THEN
        SELECT MAX(number_df) AS maxNumber FROM mida.sl_document_facade s, sl_doc_type_num sl, n_doc_type_user_rights ur
        WHERE number_df like CONCAT(sl.area_number_sdtn,'%')
        AND sl.id_sdtn=  ur.id_sdtn  AND ur.id_ndtur = in_docFacadeUser  AND s.level_df = in_id_obekt_in
        AND s.type_df = in_docFacadeType AND s.condition_df!=1;
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
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt  FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment,'%');
       END IF;
END IF;
#----------------------
# start text obekt
IF (comprator = 12) THEN
       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT(in_docFacadeComment,'%');
       END IF;
END IF;
# end text obekt
#--------------------------------
IF (comprator = 13) THEN

       IF  (in_docFacadeType = 0) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.code_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 1) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.name_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 2) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
         WHERE n.address_n_obekt LIKE CONCAT('%',in_docFacadeComment);
       END IF;
       IF  (in_docFacadeType = 3) THEN
         SELECT n.id_n_obekt, n.code_n_obekt, n.name_n_obekt, n.address_n_obekt, n.id_ls_n_person, n.tel_n_obekt FROM n_obekt n
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
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
           AND n.flag_n_contragent=0;
       END IF;
# bul_n_contragent include
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# dan_n_contragent include
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# name_n_contragent include
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# address_n_contragent include
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE address_n_contragent  LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# tel_contragent include
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
# ls_n_person include
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT('%',in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
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
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT(in_docFacadeComment,'%')
           AND n.flag_n_contragent=0;
      END IF;
#  bul_n_contragent start with text
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
#  dan_n_contragent start with text
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
 #  name_n_contragent start with text
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
 #  address_n_contragent start with text
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.address_n_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
 #  tel_contragent start with text
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
      END IF;
#  ls_n_person start with text
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT(in_docFacadeComment,'%')
          AND n.flag_n_contragent=0;
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
           LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.code_contragent LIKE CONCAT('%',in_docFacadeComment)
           AND n.flag_n_contragent=0;
      END IF;
 #  bul_n_contragent end with text
       IF (in_docFacadeType = 1) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.bul_n_contragent LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
       END IF;
 #  dan_n_contragent end with text
       IF (in_docFacadeType = 2) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.dan_n_contragent LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
       END IF;
 #  name_n_contragent end with text
       IF (in_docFacadeType = 3) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.name_n_contragent LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
       END IF;
 #  address_n_contragent end with text
       IF (in_docFacadeType = 4) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.address_n_contragent LIKE CONCAT('%',in_docFacadeCommentr)
          AND n.flag_n_contragent=0;
       END IF;
#  tel_contragent end with text
       IF (in_docFacadeType = 5) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE n.tel_contragent LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
       END IF;
#  ls_n_person end with text
       IF (in_docFacadeType = 6) THEN
          SELECT n.id_contragent, n.code_contragent, n.name_n_contragent, n.bul_n_contragent, n.dan_n_contragent,
          n.address_n_contragent, n.id_nm, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
          n.id_mol, ls.name_ls_n_person FROM n_contragent n
          LEFT JOIN ls_n_person ls ON ls.id_ls_n_person=n.id_mol WHERE ls.name_ls_n_person LIKE CONCAT('%',in_docFacadeComment)
          AND n.flag_n_contragent=0;
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
#===============  otmestvane na 0  za izdavane na stoka==============
# za tyrsene po cod na produkta i tatisnat F7
   IF (in_docFacadeType = 0) THEN
     SELECT n.id_pm,pc.parcel_pc,  pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
      n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
      pc.id_pc, pc.dateofexpire_pc ,
     s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
     st.code_n_storage, st.name_n_storage, st.comments_n_storage
     FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
     LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
     LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
     WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
     ORDER BY id_n_storage,  n.code_pm;
   END IF;
# za tyrsene po cod na produkta i tatisnat F8
   IF (in_docFacadeType = 1) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp  as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc, pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
        st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.code_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.code_pm;

   END IF;
 # za tyrsene po cod na produkta i tatisnat F9
   IF (in_docFacadeType = 2) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.code_pm;
   END IF;
#================= otmestvane na 3  za priemane na stoka ===============
# za priemane na stoka i natisnat F7  , tyrsene po kod
   IF (in_docFacadeType = 3) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in;
   END IF;
 # za priemane na stoka i natisnat F8  , tyrsene po kod
   IF (in_docFacadeType = 4) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.code_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in;
   END IF;
# za priemane na stoka i natisnat F9 , tyrsene po kod
   IF (in_docFacadeType = 5) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.code_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in;
   END IF;
#===============  otmestvane na 6  za izdavane na stoka==============
# za tyrsene po ime i tatisnat F7
   IF (in_docFacadeType = 6) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.name_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.name_pm;
   END IF;
# za tyrsene po ime i tatisnat F8
   IF (in_docFacadeType = 7) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.name_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.name_pm;
   END IF;
# za tyrsene po ime i tatisnat F9
   IF (in_docFacadeType = 8) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       s.id_nal, s.id_n_storage,s.level, s.quant_nal, s.quant_rezerv_nal,
       st.code_n_storage, st.name_n_storage, st.comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       LEFT JOIN mida.sl_nalichnosti s ON pc.id_pc = s.id_pc
       LEFT JOIN mida.n_storage st ON st.id_n_storage = s.id_n_storage
       WHERE n.name_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in AND  s.level= in_id_df
       ORDER BY id_n_storage, n.name_pm;
   END IF;
#================= otmestvane na 9  za priemane na stoka ===============
# za priemane na stoka  i natisnat F7 , tyrsene po ime
   IF (in_docFacadeType = 9) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.name_pm LIKE CONCAT('%',in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in;
   END IF;
 # za priemane na stoka  i natisnat F8 , tyrsene po ime
   IF (in_docFacadeType = 10) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.name_pm LIKE CONCAT(in_docFacadeComment,'%') AND n.flag_pm = in_id_obekt_in;
   END IF;

# za priemane na stoka  i natisnat F9 , tyrsene po ime
   IF (in_docFacadeType = 11) THEN
       SELECT n.id_pm,pc.parcel_pc, pc.id_pp as pc_id_pp, pc.id_ppp as pc_id_ppp, pc.id_pf as pc_id_pf,
       n.id_pd, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.max_pop_pm,n.code_pm,
       pc.id_pc,pc.dateofexpire_pc ,
       @s.id_nal:=0 as id_nal, @s.id_n_storage:=0 as id_n_storage ,@s.level:=0 as level, @s.quant_nal:=0 as quant_nal,
       @s.quant_rezerv_nal:=0 as quant_rezerv_nal,
       @st.code_n_storage:=0 as code_n_storage, @st.name_n_storage:="" as name_n_storage,
       @st.comments_n_storage:="" as comments_n_storage
       FROM mida.n_product_main n LEFT JOIN mida.n_product_consigment pc ON pc.id_pm = n.id_pm
       WHERE n.name_pm LIKE CONCAT('%',in_docFacadeComment) AND n.flag_pm = in_id_obekt_in;
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
    #----------------------------old---------------------------------------------------------
    #SELECT * FROM mida.sl_nalichnosti s LEFT JOIN mida.n_product_consigment n ON n.id_pc=s.id_pc
    #LEFT JOIN mida.n_product_main pm ON pm.id_pm = n.id_pm
    #WHERE n.id_pc =in_id_obekt_in AND pm.flag_pm = in_id_df;
    #---------------------------------end------------------------------------------------------
    SELECT * FROM sl_nalichnosti s
    WHERE s.id_pc = in_id_obekt_in   AND s.id_n_storage= in_docFacadeStorage AND s.level=in_id_df;

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
     WHERE id_pc = in_id_obekt_in AND id_n_storage = in_id_obekt_out AND level=in_docFacadeLevel;

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
                       WHERE dl.id_dl = in_id_df)
            AND level=in_docFacadeLevel;

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
    WHERE id_df = in_id_df ORDER BY s.id_dl;
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
   DELETE FROM mida.sl_document_facade
   WHERE  type_df = in_id_df AND number_df = in_docFacadeNumber  AND level_df =in_id_obekt_out
   AND condition_df = in_docFacadeCondition;
  # UPDATE mida.sl_document_facade s SET s.condition_df ="1"
  # WHERE type_df = in_id_df AND number_df = in_docFacadeNumber AND level_df =in_id_obekt_out;

END IF;
IF (comprator = 36) THEN
    UPDATE mida.sl_nalichnosti s SET
     s.quant_rezerv_nal=quant_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
           AND level=in_docFacadeLevel;

END IF;

IF (comprator = 37) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.return_rezerv_nal = return_rezerv_nal + in_id_contragent_in
     WHERE id_pc = in_id_obekt_in AND id_n_storage = in_id_obekt_out AND s.level= in_docFacadeLevel;

END IF;

IF (comprator = 38) THEN
     UPDATE mida.sl_nalichnosti s SET
     s.return_rezerv_nal=return_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND s.level=in_docFacadeLevel;
END IF;

IF (comprator = 39) THEN
    UPDATE mida.sl_nalichnosti s SET s.quant_nal=(quant_nal+in_id_obekt_in)
      , s.return_rezerv_nal=return_rezerv_nal-in_id_obekt_in
    WHERE id_n_storage IN
                      (SELECT  dl.id_n_storage FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND id_pc IN
                     (SELECT  dl.id_pc FROM mida.sl_document_lines dl
                       WHERE dl.id_dl = in_id_df)
            AND s.level=in_docFacadeLevel;

END IF;

IF (comprator = 40) THEN
    UPDATE mida.sl_document_facade s SET s.condition_df = in_docFacadeCondition
    WHERE s.id_df = in_id_df;
END IF;

IF (comprator = 41) THEN
    SELECT pm.id_pm FROM n_product_consigment n
    LEFT JOIN n_product_main pm ON pm.id_pm = n.id_pm;
END IF;

IF (comprator = 42) THEN
   UPDATE sl_document_facade s SET s.faktura_connection_df = in_id_obekt_in ,
    s.zaiavka_connection_df = in_id_obekt_out
    WHERE s.id_df = in_id_df;
END IF;

IF (comprator = 43) THEN
     SELECT  n.cod_lat_n_money, s.value_sl_exchange_rate FROM mida.sl_exchange_rate s LEFT JOIN mida.n_money n ON n.id_n_money=s.id_n_money
     WHERE s.date_sl_exchange_rate = in_docFacadeComment;
END IF;

IF (comprator = 44) THEN
    SELECT id_nal FROM sl_nalichnosti s
    WHERE id_n_storage= in_docFacadeStorage
    AND id_pc = in_id_obekt_in AND level=in_docFacadeLevel;
END IF;

IF (comprator = 45) THEN
    INSERT INTO sl_nalichnosti(id_n_storage,id_pc,level,quant_nal,quant_rezerv_nal,return_rezerv_nal)
    VALUES(in_docFacadeStorage,in_id_obekt_in,0,0,0,0);
END IF;

IF (comprator = 46) THEN
    SELECT MAX(id_nal) as id FROM sl_nalichnosti s;
END IF;

IF (comprator = 47) THEN
   UPDATE mida.sl_nalichnosti s SET s.quant_nal=(quant_nal+in_id_obekt_out),
   s.id_n_storage = in_docFacadeStorage,
   s.id_pc = in_id_df,
   s.level = in_docFacadeLevel
   WHERE id_nal= in_id_obekt_in;
END IF;
IF (comprator = 48) THEN
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
    WHERE id_dl = in_id_df;
END IF;

IF (comprator = 49) THEN
       IF ( in_id_obekt_in = 0) THEN
          SELECT s.faktura_connection_df AS conn FROM sl_document_facade s
          WHERE id_df = in_id_df;
       END IF;

       IF ( in_id_obekt_in = 1) THEN
          SELECT s.zaiavka_connection_df AS conn FROM sl_document_facade s
          WHERE id_df = in_id_df;
       END IF;
END IF;

IF (comprator = 50) THEN
    SELECT s.id_n_storage, s.id_pc FROM sl_document_lines s
    WHERE s.id_dl = in_id_df;
END IF;

IF (comprator = 51) THEN
    SELECT MAX(s.date_sl_exchange_rate) as lastDate FROM sl_exchange_rate s;
END IF;

IF (comprator = 52) THEN
     SELECT n.id_pm, n.parcel_pc, n.id_pp, n.id_ppp, n.id_pf,
      pm.id_ppp as pm_id_ppp, pm.id_pp as pm_id_pp, pm.id_pf as pm_id_pf FROM n_product_consigment n LEFT JOIN n_product_main pm ON pm.id_pm=n.id_pm
    WhERE n.id_pc = in_id_df;
END IF;

END $$

DELIMITER ;

# procedure: ls_procedure_group

DELIMITER $$

DROP PROCEDURE IF EXISTS ls_procedure_group $$
CREATE PROCEDURE ls_procedure_group (IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_code INT(11), IN in_name VARCHAR(50), IN in_alid TINYINT, IN in_alname VARCHAR(50))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al  FROM `n_group` n, anlevel 
            WHERE nom_n_group = in_nom AND anlevel.id_al = n.id_al ORDER BY n.id_n_group ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_group`(nom_n_group, cod_n_group, name_n_group, id_al) VALUES(in_nom, in_code, in_name, in_alid);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_group` SET cod_n_group = in_code, name_n_group = in_name, nom_n_group = in_nom, id_al = in_alid
           WHERE `n_group`.id_n_group = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_group`  WHERE id_n_group = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_group, n.nom_n_group, n.cod_n_group, n.name_n_group, n.alid FROM `n_group` n WHERE `n_group`.id_n_group = in_id;

     END IF;
     IF (comprator = 5) THEN
          IF (in_alid > 0 AND in_code > -1) THEN
             SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.cod_n_group LIKE CONCAT('%',in_code,'%') AND n.name_n_group LIKE CONCAT('%',in_name,'%') AND anlevel.name_al LIKE CONCAT('%',in_alname,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid = 0 AND in_code > -1) THEN
             SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al,anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.cod_n_group LIKE CONCAT('%',in_code,'%') AND n.name_n_group LIKE CONCAT('%',in_name,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid > 0 AND in_code = -1) THEN
            SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.name_n_group LIKE CONCAT('%',in_name,'%') AND anlevel.name_al LIKE CONCAT('%',in_alname,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
          IF (in_alid = 0 AND in_code = -1) THEN
            SELECT n.id_n_group, n.cod_n_group, n.name_n_group, n.id_al, anlevel.name_al FROM `n_group` n, anlevel
                WHERE n.name_n_group LIKE CONCAT('%',in_name,'%')
                AND n.nom_n_group = in_nom AND anlevel.id_al = n.id_al
                ORDER BY n.id_n_group ASC;
          END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT n.id_al, n.cod_al, n.name_al FROM anlevel n ORDER BY cod_al;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_group) AS id FROM n_group n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM n_group;
     END IF;
END $$

DELIMITER ;

# procedure: ls_procedure_m

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_m $$
CREATE PROCEDURE sl_procedure_m (IN vid INT(11),IN modulator INT(11), IN comprator INT(11), IN area VARCHAR(3),
                                         IN BGDATE VARCHAR(20), IN ENDDATE VARCHAR(20))
BEGIN


           IF (comprator = 0) THEN

                IF (vid = 0) THEN

                   IF (modulator = 1) THEN
                      SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `n_contragent`.`code_contragent`,
                        `n_contragent`.`name_n_contragent`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                      FROM
                        `sl_m_operation`
                      Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                      Inner Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`out_sl_mop`
                      Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_spec`
                      Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                      Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                      WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE

                       ;
                   END IF;

                    IF (modulator  =  2) THEN
                       SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_baccount`.`code_nbc`,
                        `n_baccount`.`name_nbc`,
                        `n_casa`.`name_n_casa`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                       FROM
                        `sl_m_operation`
                       Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                       Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_spec`
                       Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                       Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                       Inner Join `n_baccount` ON `n_baccount`.`id_nbc` = `sl_m_operation`.`out_sl_mop`
                       WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE

                       ;
                    END IF;

                    IF (modulator = 3) THEN
                       SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `ls_n_person`.`name_ls_n_person`,
                        `ls_n_person`.`code_ls_n_person`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                       FROM
                        `sl_m_operation`
                       Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                       Inner Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_spec`
                       Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                       Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                       Inner Join `ls_n_person` ON `ls_n_person`.`id_ls_n_person` = `sl_m_operation`.`out_sl_mop`
                       WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                    END IF;


                END IF;


                IF (vid = 1) THEN

                        IF (modulator = 0) THEN
                         SELECT
                          `sl_m_operation`.`number_sl_mop`,
                          `casa_in`.`code_n_casa` AS `casa_code_in`,
                          `casa_in`.`name_n_casa` AS `case_name_in`,
                          `n_casa`.`name_n_casa` AS `casa_cde_out`,
                          `n_casa`.`code_n_casa` AS `casa_name_out`,
                          `n_expens`.`name_n_expens`,
                          `n_expens`.`code_n_expens`,
                          `sl_m_operation`.`date_is`,
                          `sl_m_operation`.`sum_sl_mop`,
                          `n_money`.`cod_n_money`,
                          `sl_exchange_rate`.`value_sl_exchange_rate`,
                          `sl_m_operation`.`sum_os_val_sl_mop`
                         FROM
                          `sl_m_operation`
                         Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                         Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                         Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                         Inner Join `n_casa` AS `casa_in` ON `casa_in`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                         Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
                         WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                        END IF;

                        IF (modulator = 1) THEN
                         SELECT
                          `sl_m_operation`.`number_sl_mop`,
                          `n_casa`.`code_n_casa`,
                          `n_casa`.`name_n_casa`,
                          `n_contragent`.`code_contragent`,
                          `n_contragent`.`name_n_contragent`,
                          `n_expens`.`name_n_expens`,
                          `n_expens`.`code_n_expens`,
                          `sl_m_operation`.`date_is`,
                          `sl_m_operation`.`sum_sl_mop`,
                          `n_money`.`cod_n_money`,
                          `sl_exchange_rate`.`value_sl_exchange_rate`,
                          `sl_m_operation`.`sum_os_val_sl_mop`
                        FROM
                          `sl_m_operation`
                        Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                        Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                        Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                        Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                        Inner Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`in_sl_mop`
                        WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                        END IF;

                       IF (modulator = 2) THEN
                        SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `n_baccount`.`name_nbc`,
                        `n_baccount`.`code_nbc`,
                        `n_expens`.`name_n_expens`,
                        `n_expens`.`code_n_expens`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                        FROM
                        `sl_m_operation`
                        Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                        Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                        Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                        Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                        Inner Join `n_baccount` ON `n_baccount`.`id_nbc` = `sl_m_operation`.`in_sl_mop`
                        WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                        END IF;

                        IF (modulator = 3) THEN
                        SELECT
                        `sl_m_operation`.`number_sl_mop`,
                        `n_casa`.`code_n_casa`,
                        `n_casa`.`name_n_casa`,
                        `ls_n_person`.`code_ls_n_person`,
                        `ls_n_person`.`name_ls_n_person`,
                        `n_expens`.`name_n_expens`,
                        `n_expens`.`code_n_expens`,
                        `sl_m_operation`.`date_is`,
                        `sl_m_operation`.`sum_sl_mop`,
                        `n_money`.`cod_n_money`,
                        `sl_exchange_rate`.`value_sl_exchange_rate`,
                        `sl_m_operation`.`sum_os_val_sl_mop`
                        FROM
                        `sl_m_operation`
                        Inner Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
                        Inner Join `sl_exchange_rate` ON `sl_exchange_rate`.`id_sl_exchange_rate` = `sl_m_operation`.`id_sl_exchange_rate`
                        Inner Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_spec`
                        Inner Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
                        Inner Join `ls_n_person` ON `ls_n_person`.`id_ls_n_person` = `sl_m_operation`.`in_sl_mop`
                        WHERE
                        `sl_m_operation`.`number_sl_mop` LIKE CONCAT(area + '???????') AND
                        `sl_m_operation`.`date_is` BETWEEN BGDATE AND ENDDATE
                        ;
                       END IF;

                END IF;
           END IF;


END $$

DELIMITER ;

# procedure: nom_procedure_anlevel

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_anlevel $$
CREATE PROCEDURE nom_procedure_anlevel (IN in_comprator INT, IN in_id INT, IN in_code VARCHAR(10),IN in_name VARCHAR(35), IN in_comment VARCHAR(250))
BEGIN

 IF (in_comprator = 0 ) THEN
     SELECT a.id_al,  a.cod_al, a.name_al, a.comment_al FROM anlevel a ORDER BY a.id_al ASC;

 END IF;

 IF (in_comprator = 1 ) THEN
  INSERT INTO anlevel(cod_al,name_al,comment_al) VALUES(in_code,in_name,in_comment);

 END IF;

 IF (in_comprator = 2 ) THEN
   UPDATE anlevel a SET cod_al = in_code,
                        name_al = in_name,
                        comment_al = in_comment
  WHERE id_al = in_id;

 END IF;

IF (in_comprator = 4 ) THEN
   DELETE FROM anlevel
   WHERE id_al = in_id;
END IF;

IF (in_comprator = 5 ) THEN
   SELECT a.id_al, a.cod_al, a.name_al, a.comment_al FROM anlevel a
   WHERE cod_al LIKE CONCAT('%',in_code,'%') 
    AND name_al LIKE CONCAT('%',in_name,'%') 
    AND comment_al LIKE CONCAT('%',in_comment,'%') 
    ORDER BY a.id_al ASC;

END IF;

IF (in_comprator = 7 ) THEN
  SELECT MAX(id_al) FROM  anlevel;

END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_baccount

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_baccount $$
CREATE PROCEDURE nom_procedure_baccount (IN comprator TINYINT, IN in_id INT(11), IN in_id_group INT(11), IN in_code INT(11),
                IN in_name VARCHAR(45), IN in_branch VARCHAR(45), IN in_account VARCHAR(28), IN in_bic VARCHAR(11),
                IN in_id_money INT(11), IN in_address VARCHAR(100), IN in_id_tacc INT(11), IN in_comment VARCHAR(250))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc,
            n.id_n_money, nm.cod_lat_n_money, n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            ORDER BY n.id_nbc ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_baccount (id_n_group, code_nbc, name_nbc, branch_nbc, account_nbc, bic_nbc, id_n_money, address_nbc, id_tbacc, comment_nbc)
        VALUES (in_id_group, in_code, in_name, in_branch, in_account, in_bic, in_id_money, in_address, in_id_tacc, in_comment);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_baccount SET id_n_group = in_id_group, code_nbc = in_code, name_nbc = in_name, branch_nbc = in_branch, account_nbc = in_account,
        bic_nbc = in_bic, id_n_money = in_id_money, address_nbc = in_address, id_tbacc = in_id_tacc, comment_nbc = in_comment
        WHERE n_baccount.id_nbc = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM n_baccount  WHERE id_nbc = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, n.id_n_money,
            nm.cod_lat_n_money, n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
            LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
            LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
            WHERE n.id_nbc = in_id;
     END IF;
     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, n.id_n_money,
                nm.cod_lat_n_money, n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
                LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
                LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
                WHERE n.name_nbc LIKE CONCAT('%',in_name,'%') ORDER BY n.id_nbc ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_nbc, n.id_n_group, ng.name_n_group, n.code_nbc, n.name_nbc, n.branch_nbc, n.account_nbc, n.bic_nbc, n.id_n_money,
                nm.cod_lat_n_money, n.address_nbc, n.id_tbacc, nta.name_tbacc, n.comment_nbc FROM n_baccount n
                LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
                LEFT OUTER JOIN n_type_bacc nta ON nta.id_tbacc = n.id_tbacc
                WHERE n.code_nbc LIKE CONCAT('%',in_code,'%') AND n.name_nbc LIKE CONCAT('%',in_name,'%') ORDER BY n.id_nbc ASC;
        END IF;
     END IF;
     IF (comprator = 6) THEN
        SELECT ntb.id_tbacc, ntb.name_tbacc FROM n_type_bacc ntb;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_nbc) FROM n_baccount n;
     END IF;
     IF (comprator = 8) THEN
        SELECT MAX(n.code_nbc) AS account_code FROM n_baccount n;
     END IF;
     IF (comprator = 9) THEN
        SELECT MAX(ntb.id_ntbacc) AS id_ntbacc FROM n_type_bacc ntb;
     END IF;
     IF (comprator = 10) THEN
        SELECT ng.id_n_group, ng.name_n_group FROM n_group ng WHERE ng.nom_n_group = 6;
     END IF;
     IF (comprator = 11) THEN
        SELECT MAX(ng.id_n_group) AS id_n_group FROM n_group ng WHERE ng.nom_n_group = 6;
     END IF;
     IF (comprator = 12) THEN
        SELECT nm.id_n_money, nm.cod_lat_n_money FROM n_money nm;
     END IF;
END $$

DELIMITER ;

# procedure: nom_procedure_casa

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_casa $$
CREATE PROCEDURE nom_procedure_casa(IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa,
                 n.comments_n_casa FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_n_casa ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_casa( id_n_group, code_n_casa, name_n_casa, comments_n_casa) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_casa SET id_n_group = in_id_groupe, code_n_casa = in_code,   name_n_casa = in_name, comments_n_casa = in_comments
        WHERE n_casa.id_n_casa = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_casa  WHERE id_n_casa = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa, n.comments_n_casa
                   FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.name_n_casa LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_casa ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_casa, n.id_n_group, ng.name_n_group, n.code_n_casa, n.name_n_casa, n.comments_n_casa
                   FROM n_casa n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.code_n_casa LIKE CONCAT('%',in_code,'%') AND  n.name_n_casa LIKE CONCAT('%',in_name,'%')
                   ORDER BY n.id_n_casa ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n WHERE n.nom_n_group = 5;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_casa) FROM n_casa n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_casa) AS code_n_casa FROM n_casa n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n WHERE n.nom_n_group = 5;
     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_contragent

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_contragent $$
CREATE PROCEDURE nom_procedure_contragent (IN comprator TINYINT,  IN in_id INT(10),      IN in_code INT(11),     IN in_name VARCHAR(45),
                                            IN in_bul VARCHAR(13), IN in_dan VARCHAR(11), IN in_address VARCHAR(35), IN in_id_nm INT(10),
                                            IN in_tel VARCHAR(12), IN in_fax VARCHAR(12), IN in_email VARCHAR(20),   IN in_web VARCHAR(20),
                                            IN in_id_mol INT(10),  IN in_id_oso INT(10),  IN in_flag TINYINT,
                                            IN in_nameBank_r VARCHAR(50) ,IN in_nameBank_d VARCHAR(50) ,
                                            IN in_iban_r VARCHAR(30) , IN in_iban_d VARCHAR(30) ,
                                            IN in_bic_r VARCHAR(11) ,IN in_bic_d VARCHAR(11) ,
                                            IN in_valuta_r VARCHAR(10) , IN in_valuta_d VARCHAR(10) )
BEGIN
     IF (comprator = 0) THEN
        SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent,
               c.BANKNAMER, c.BANKNAMED, c.IBANR, c.IBAND, c.BICD, c.BICR, c.VIDVALD, c.VIDVALR
        FROM `n_contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id_n_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = cont.id_n_country) and c.flag_n_contragent = in_flag ORDER BY c.code_contragent;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `n_contragent`(code_contragent,name_n_contragent,bul_n_contragent,dan_n_contragent,address_n_contragent,id_nm,tel_contragent,fax_contragent,email_contragent,web_contragent,id_mol,id_oso,flag_n_contragent,
                                  BANKNAMER, BANKNAMED, IBANR, IBAND, BICD, BICR, VIDVALD, VIDVALR)
         VALUES(in_code,in_name,in_bul,in_dan,in_address,in_id_nm,in_tel,in_fax,in_email,in_web,in_id_mol,in_id_oso,in_flag,
         in_nameBank_r,in_nameBank_d,in_iban_r,in_iban_d,in_bic_d,in_bic_r,in_valuta_d,in_valuta_r);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `n_contragent` SET flag_n_contragent = in_flag
           WHERE `n_contragent`.id_contragent = in_id;
     END IF;

     IF (comprator = 5) THEN
      IF (in_code != 0) THEN
       SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent,
               c.BANKNAMER, c.BANKNAMED, c.IBANR, c.IBAND, c.BICD, c.BICR, c.VIDVALD, c.VIDVALR
        FROM `n_contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id_n_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = cont.id_n_country and c.flag_n_contragent = in_flag ) AND
              c.code_contragent LIKE CONCAT('%',in_code,'%') AND
              c.name_n_contragent LIKE CONCAT('%',in_name,'%') AND  c.bul_n_contragent LIKE CONCAT('%',in_bul,'%') AND c.dan_n_contragent LIKE CONCAT('%',in_dan,'%') AND
              c.address_n_contragent LIKE CONCAT('%',in_address,'%') AND c.tel_contragent LIKE CONCAT('%',in_tel,'%') AND c.fax_contragent LIKE CONCAT('%',in_fax,'%') AND
              c.email_contragent LIKE CONCAT('%',in_email,'%') AND c.web_contragent LIKE CONCAT('%',in_web,'%') ORDER BY c.code_contragent;
     END IF;
      IF (in_code = 0) THEN
              SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent,
               c.BANKNAMER, c.BANKNAMED, c.IBANR, c.IBAND, c.BICD, c.BICR, c.VIDVALD, c.VIDVALR
        FROM `n_contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id_n_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = cont.id_n_country and c.flag_n_contragent = in_flag )
         AND c.name_n_contragent LIKE CONCAT('%',in_name,'%') AND  c.bul_n_contragent LIKE CONCAT('%',in_bul,'%') AND c.dan_n_contragent LIKE CONCAT('%',in_dan,'%') AND
              c.address_n_contragent LIKE CONCAT('%',in_address,'%') AND c.tel_contragent LIKE CONCAT('%',in_tel,'%') AND c.fax_contragent LIKE CONCAT('%',in_fax,'%') AND
              c.email_contragent LIKE CONCAT('%',in_email,'%') AND c.web_contragent LIKE CONCAT('%',in_web,'%') ORDER BY c.code_contragent;
      END IF;
      END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_contragent) AS id FROM `n_contragent` n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_contragent) AS code FROM `n_contragent` n;
     END IF;


     IF (comprator = 10) THEN
        SELECT nm.name_n_nm  FROM `n_nm` nm WHERE nm.id_n_nm = in_id_nm;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id_n_nm, nm.name_n_nm, obl.name_n_oblast, con.name_n_country, con.code_n_country
        FROM `n_nm` nm, `n_oblast` obl, `n_country` con
        WHERE  nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = con.id_n_country and nm.name_n_nm like CONCAT('%',in_address,'%');
     END IF;

     IF (comprator = 12) THEN
        SELECT ls.id_ls_n_person, ls.name_ls_n_person, ls.egn_ls_n_person, ls.nlk_ls_n_person, ls.comment_ls_n_person
        FROM `ls_n_person` ls WHERE ls.name_ls_n_person like CONCAT('%',in_name,'%')
        ORDER BY ls.name_ls_n_person;
     END IF;
     IF (comprator = 13) THEN
        IF (in_id_mol != -1) THEN
            SELECT ls.id_ls_n_person, ls.name_ls_n_person, ls.egn_ls_n_person, ls.nlk_ls_n_person, ls.comment_ls_n_person FROM `ls_n_person` ls WHERE ls.id_ls_n_person=in_id_mol;
        END IF;
        IF (in_id_oso != -1) THEN
            SELECT ls.id_ls_n_person, ls.name_ls_n_person, ls.egn_ls_n_person, ls.nlk_ls_n_person, ls.comment_ls_n_person FROM `ls_n_person` ls WHERE ls.id_ls_n_person=in_id_oso;
        END IF;
     END IF;

     IF (comprator = 14) THEN
        SELECT  MAX(c.code_contragent) as code
        FROM `n_contragent` c where c.flag_n_contragent = in_flag;
     END IF;

  IF (comprator = 15) THEN
          UPDATE mida.sl_contragent_product s SET
          flag_scp = in_flag
          WHERE id_contragent = in_id;
    END IF;

     IF (comprator = 16) THEN
         INSERT INTO mida.sl_contragent_product(id_contragent,id_pm,flag_scp)
         VALUES(in_id,in_id_oso,in_flag);
    END IF;

    IF (comprator = 17) THEN
        SELECT s.id_contragent, s.id_pm, s.flag_scp
        FROM mida.sl_contragent_product s
        WHERE id_contragent = in_id AND flag_scp=in_flag;
    END IF;

#     IF (comprator = 17) THEN
#        SELECT  sl_contragent_product.id_pm
#        FROM sl_contragent_product where sl_contragent_product.id_contragent = in_id AND sl_contragent_product.flag_scp = in_flag;
#     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_disband

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_disband $$
CREATE PROCEDURE nom_procedure_disband (IN in_comprator INT, IN in_id INT, IN in_name VARCHAR(20), IN in_sname VARCHAR(20))
BEGIN


 IF (in_comprator = 0 ) THEN
     SELECT n.id_pam, n.name_pam, n.sname_pam FROM n_product_all_measure n ORDER BY n.id_pam ASC;

 END IF;

 IF (in_comprator = 1 ) THEN

  INSERT INTO n_product_all_measure(name_pam,sname_pam) VALUES(in_name,in_sname);
 END IF;

 IF (in_comprator = 2 ) THEN
  UPDATE n_product_all_measure n SET name_pam = in_name,
                                     sname_pam = in_sname
  WHERE id_pam = in_id;

 END IF;

IF (in_comprator = 4 ) THEN
   DELETE FROM n_product_all_measure
   WHERE id_pam = in_id;
END IF;

IF (in_comprator = 5 ) THEN
  SELECT n.id_pam, n.name_pam, n.sname_pam FROM n_product_all_measure n
   WHERE name_pam LIKE CONCAT('%',in_name,'%') 
    AND sname_pam LIKE CONCAT('%',in_sname,'%') 
    ORDER BY n.id_pam ASC;

END IF;

IF (in_comprator = 7 ) THEN
  SELECT MAX(id_pam) FROM  n_product_all_measure;

END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_doctype

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_doctype $$
CREATE PROCEDURE nom_procedure_doctype (IN in_id INT(6), IN comprator TINYINT, IN in_code INT(10), IN in_name VARCHAR(50), IN in_print_name VARCHAR(50))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_ntd, n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n ORDER BY n.id_ntd ASC;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_type_doc (code_ntd, name_ntd, name_print_ntd) VALUES (in_code, in_name, in_print_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_type_doc SET code_ntd = in_code, name_ntd = in_name, name_print_ntd = in_print_name
           WHERE n_type_doc.id_ntd = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_type_doc  WHERE id_ntd = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n WHERE n.id_ntd = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_ntd, n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n 
                WHERE n.name_ntd LIKE CONCAT('%',in_name,'%') ORDER BY n.id_ntd ASC;
        END IF;
        IF (in_code > -1 ) THEN
            SELECT n.id_ntd, n.code_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n 
                WHERE n.code_ntd LIKE CONCAT('%',in_code,'%') AND n.name_ntd LIKE CONCAT('%',in_name,'%') ORDER BY n.id_ntd ASC;
        END IF;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_ntd) AS id FROM n_type_doc n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_ntd) AS code FROM n_type_doc n;
     END IF;

     IF (comprator = 9) THEN
       DELETE FROM n_type_doc;
     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_doctype_user_rights

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_doctype_user_rights $$
CREATE PROCEDURE nom_procedure_doctype_user_rights (IN comprator INT(6), IN in_id INT(11), IN in_id_um INT(11), IN in_id_sdtn INT(11), IN in_rights INT(11))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_ndtur, n.id_um, um.name_um, n.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn, n.rights_ndtur FROM n_doc_type_user_rights n
            LEFT OUTER JOIN user_master um ON um.id_um = n.id_um
            LEFT OUTER JOIN sl_doc_type_num dtn ON dtn.id_sdtn = n.id_sdtn
            ORDER BY n.id_ndtur ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_doc_type_user_rights (id_um, id_sdtn, rights_ndtur) VALUES (in_id_um, in_id_sdtn, in_rights);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_doc_type_user_rights SET id_um = in_id_um, id_sdtn = in_id_sdtn, rights_ndtur = in_rights
        WHERE n_doc_type_user_rights.id_ndtur = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM n_doc_type_user_rights  WHERE id_ndtur = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_ndtur, n.id_um, um.name_um, n.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn, n.rights_ndtur FROM n_doc_type_user_rights n
            LEFT OUTER JOIN user_master um ON um.id_um = n.id_um
            LEFT OUTER JOIN sl_doc_type_num dtn ON dtn.id_sdtn = n.id_sdtn
            WHERE n.id_ndtur = in_id;
     END IF;
     IF (comprator = 5) THEN
        SELECT n.id_ndtur, n.id_um, um.name_um, n.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn, n.rights_ndtur FROM n_doc_type_user_rights n
            LEFT OUTER JOIN user_master um ON um.id_um = n.id_um
            LEFT OUTER JOIN sl_doc_type_num dtn ON dtn.id_sdtn = n.id_sdtn
            WHERE n.rights_ndtur LIKE CONCAT('%',in_rights,'%') ORDER BY n.id_ndtur ASC;
     END IF;
     IF (comprator = 6) THEN
        SELECT um.id_um, um.name_um FROM user_master um;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_ndtur) FROM n_doc_type_user_rights n;
     END IF;
     IF (comprator = 8) THEN
        SELECT dtn.id_sdtn, dtn.area_number_sdtn, dtn.name_sdtn FROM sl_doc_type_num dtn;
     END IF;
END $$

DELIMITER ;

# procedure: nom_procedure_expens

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_expens $$
CREATE PROCEDURE nom_procedure_expens (IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens, n.comments_n_expens 
            FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_n_expens ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_expens( id_n_group, code_n_expens, name_n_expens, comments_n_expens) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_expens SET id_n_group = in_id_groupe, code_n_expens = in_code,   name_n_expens = in_name, comments_n_expens = in_comments
        WHERE n_expens.id_n_expens = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_expens WHERE id_n_expens = in_id;
     END IF;


     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens, n.comments_n_expens 
                FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_expens LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_expens ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_expens, n.id_n_group, ng.name_n_group, n.code_n_expens, n.name_n_expens, n.comments_n_expens 
                FROM n_expens n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_expens LIKE CONCAT('%',in_code,'%') AND  n.code_n_expens LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_expens ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_expens) FROM n_expens n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_expens) AS code_n_expens FROM n_expens n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_income

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_incom $$
CREATE PROCEDURE nom_procedure_incom (IN comprator TINYINT, IN in_id INT(11),IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms, n.comments_n_incoms 
            FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_n_incoms ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_incoms ( id_n_group, code_n_incoms, name_n_incoms, comments_n_incoms) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_incoms SET id_n_group = in_id_groupe, code_n_incoms = in_code,   name_n_incoms = in_name, comments_n_incoms = in_comments
        WHERE n_incoms.id_n_incoms = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_incoms WHERE id_n_incoms = in_id;
     END IF;


     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms, n.comments_n_incoms 
                FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_incoms LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_incoms ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_incoms, n.id_n_group, ng.name_n_group, n.code_n_incoms, n.name_n_incoms, n.comments_n_incoms 
                FROM n_incoms n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                WHERE n.code_n_incoms LIKE CONCAT('%',in_code,'%') AND  n.code_n_incoms LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_incoms ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_incoms) FROM n_incoms n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_incoms) AS code_n_incoms FROM n_incoms n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n
                              WHERE n.nom_n_group = 6;
     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_money

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_money $$
CREATE PROCEDURE nom_procedure_money (IN in_id INT(6), IN comprator INT(6), IN in_code INT(6), IN in_cod_lat VARCHAR(6), IN in_name VARCHAR(50), IN in_comments VARCHAR(255))
BEGIN        
     IF (comprator = 0) THEN
        SELECT n.id_n_money, n.cod_n_money, n.cod_lat_n_money, n.name_n_money, n.comments_n_money FROM n_money n ORDER BY n.id_n_money ASC;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_money(cod_n_money, cod_lat_n_money, name_n_money, comments_n_money ) VALUES(in_code, in_cod_lat, in_name, in_comments);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_money SET cod_n_money = in_code, cod_lat_n_money = in_cod_lat, name_n_money = in_name, comments_n_money = in_comments
           WHERE n_money.id_n_money = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_money  WHERE id_n_money = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.cod_n_money, n.cod_lat_n_money, n.name_n_money, comments_n_money FROM n_money n WHERE n.id_n_money = in_id;

     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_money, n.cod_n_money, n.cod_lat_n_money, n.name_n_money FROM n_money n 
                WHERE n.cod_lat_n_money LIKE CONCAT('%',in_cod_lat,'%') AND n.name_n_money LIKE CONCAT('%',in_name,'%')
                ORDER BY n.id_n_money ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_money, n.cod_n_money, n.cod_lat_n_money, n.name_n_money FROM n_money n WHERE n.code_n_money LIKE CONCAT('%',in_code,'%') AND
                n.cod_lat_n_money LIKE CONCAT('%',in_cod_lat,'%') AND n.name_n_money LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_money ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code_n_money) AS cod FROM n_money n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_money) AS id FROM n_money n;
     END IF;
     IF (comprator = 8) THEN
       DELETE FROM n_money;
     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_naselenimesta

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_naselenimesta $$
CREATE PROCEDURE nom_procedure_naselenimesta (IN comprator TINYINT, IN in_id INT(11), IN in_postcode INT(6), IN in_name VARCHAR(20), IN in_id_oblast INT(3) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast, obl.name_n_oblast
        FROM n_nm n, n_oblast obl WHERE n.id_n_oblast=obl.id_n_oblast ORDER BY n.id_n_nm ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_nm`(postcode_n_nm, name_n_nm, id_n_oblast) VALUES(in_postcode, in_name, in_id_oblast);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_nm SET postcode_n_nm = in_postcode, name_n_nm = in_name, id_n_oblast = in_id_oblast
        WHERE n_nm.id_n_nm = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_nm  WHERE id_n_nm = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast FROM `n_nm` n WHERE n.id_n_nm = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_postcode != 0) THEN
          SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast, obl.name_n_oblast FROM n_nm n, n_oblast obl 
            WHERE n.postcode_n_nm LIKE CONCAT(in_postcode,'%') AND n.name_n_nm LIKE CONCAT('%',in_name,'%') AND n.id_n_oblast = obl.id_n_oblast
            ORDER BY n.id_n_nm ASC;
        END IF;
        IF (in_postcode = 0) THEN
          SELECT n.id_n_nm, n.postcode_n_nm, n.name_n_nm, n.id_n_oblast, obl.name_n_oblast  FROM n_nm n, n_oblast obl
           WHERE n.name_n_nm LIKE CONCAT('%',in_name,'%') AND n.id_n_oblast = obl.id_n_oblast ORDER BY n.id_n_nm ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country FROM n_oblast n ORDER BY n.name_n_oblast;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_nm) AS id FROM n_nm n;
     END IF;
END $$

DELIMITER ;

# procedure: nom_procedure_oblast

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_oblast $$
CREATE PROCEDURE nom_procedure_oblast (IN comprator TINYINT, IN in_id INT(11), IN in_name VARCHAR(20), IN in_id_country INT(3), IN in_country VARCHAR(45) )
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country, c.name_n_country
        FROM n_oblast n, n_country c WHERE n.id_n_country = c.id_n_country ORDER BY n.id_n_oblast ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `n_oblast`( name_n_oblast, id_n_country) VALUES(in_name, in_id_country);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `n_oblast` SET name_n_oblast = in_name, id_n_country = in_id_country
        WHERE `n_oblast`.id_n_oblast = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `n_oblast`  WHERE id_n_oblast = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country FROM `n_oblast` n WHERE n.id_n_oblast = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_n_oblast, n.name_n_oblast, n.id_n_country,c.name_n_country  FROM `n_oblast` n, `n_country` c 
            WHERE n.name_n_oblast LIKE CONCAT('%',in_name,'%') AND c.name_n_country LIKE CONCAT('%',in_country,'%') AND c.id_n_country = n.id_n_country
            ORDER BY n.id_n_oblast ASC;
     END IF;

     IF (comprator = 6) THEN
        SELECT id_n_country, code_n_country, name_n_country FROM n_country n ORDER BY name_n_country;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_oblast) AS id FROM `n_oblast` n;
     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_person

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_person $$
CREATE PROCEDURE nom_procedure_person (IN comprator TINYINT, IN in_id INT(11), IN in_id_group INT(11), IN in_code INT(11), IN in_egn VARCHAR(10), IN in_nomlk VARCHAR(9), IN in_name VARCHAR(45), IN in_comment VARCHAR(250) )
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group ORDER BY n.id_ls_n_person ASC;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO ls_n_person (id_n_group, code_ls_n_person, egn_ls_n_person, nlk_ls_n_person, name_ls_n_person, comment_ls_n_person) VALUES(in_id_group, in_code, in_egn, in_nomlk, in_name, in_comment);
     END IF;

     IF (comprator = 2) THEN
        UPDATE ls_n_person  SET id_n_group = in_id_group, code_ls_n_person = in_code, egn_ls_n_person = in_egn, nlk_ls_n_person = in_nomlk, name_ls_n_person = in_name, comment_ls_n_person = in_comment
        WHERE ls_n_person.id_ls_n_person = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM ls_n_person WHERE id_ls_n_person = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
        SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE  n.egn_ls_n_person LIKE CONCAT('%',in_egn,'%') AND n.name_ls_n_person LIKE CONCAT('%',in_name,'%')
                    ORDER BY n.id_ls_n_person ASC;
        END IF;
        IF (in_code > -1 ) THEN
        SELECT n.id_ls_n_person, n.id_n_group, ng.name_n_group, n.code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person,
                   n.comment_ls_n_person FROM ls_n_person n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.code_ls_n_person LIKE CONCAT('%',in_code,'%') AND n.egn_ls_n_person LIKE CONCAT('%',in_egn,'%') AND n.name_ls_n_person LIKE CONCAT('%',in_name,'%')
                    ORDER BY n.id_ls_n_person ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n WHERE n.nom_n_group = 3;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_ls_n_person) FROM ls_n_person n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_ls_n_person) AS code_ls_n_person FROM ls_n_person n;
     END IF;

     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n WHERE n.nom_n_group = 3;

     END IF;

     IF (comprator = 21) THEN
        SELECT n.code_ls_n_person  AS code_ls_n_person, n.egn_ls_n_person, n.nlk_ls_n_person, n.name_ls_n_person FROM ls_n_person n
        WHERE code_ls_n_person = in_code;

     END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_product

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_product $$
CREATE PROCEDURE nom_procedure_product (IN in_comprator TINYINT,    IN in_id_pm INT(11),              IN in_id_ppp INT(11),        IN in_id_pp INT(11),
                                                 IN in_id_pf INT(11),        IN in_id_n_group INT(11),         IN in_id_pd INT(11),         IN in_name_pm VARCHAR(30),
                                                 IN in_sname_pm VARCHAR(30), IN in_fname_pm VARCHAR(30),       IN in_cname_pm VARCHAR(30),  IN in_max_pop_pm DOUBLE,
                                                 IN in_flag_pm TINYINT,      IN in_expertsheet_pm VARCHAR(45), IN in_barcod_pm VARCHAR(20),  IN in_cod1_pm VARCHAR(20),
                                                 IN in_cod2_pm VARCHAR(20),  IN in_price0_pp DOUBLE,           IN in_price1_pp DOUBLE,      IN in_price2_pp DOUBLE,
                                                 IN in_price3_pp DOUBLE, IN in_min_pm INT(11), IN in_code_pm VARCHAR(11))
BEGIN
     IF (in_comprator = 0) THEN
        SELECT n.code_pm ,n.id_pm, n.id_n_group, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.cod1_pm,
         n.cod2_pm, n.barcod_pm, n.max_pop_pm, n.expertsheet_pm, n.flag_pm,  pp.id_sl_curs,pp.price0_pp,money.cod_lat_n_money,@stoinost_in_lv:=(sl_curs.value_sl_curs*pp.price0_pp)AS lv, pp.price1_pp, pp.price2_pp,pp.price3_pp, pf.dds_pf, pf.excise_pf,
         pf.other_pf, pd.id_pd, pd.m1_pd, pd.v1_pd, pd.m2_pd, pd.v2_pd, pd.m3_pd, pd.v3_pd,min_pm,((pp.price0_pp*pf.dds_pf/100) + pp.price0_pp) as dost_prive_sDDS
        FROM n_product_main n LEFT JOIN n_product_price pp ON pp.id_pp = n.id_pp LEFT JOIN sl_curs  ON  pp.id_sl_curs = sl_curs.id_sl_curs LEFT JOIN n_money money ON money.id_n_money = sl_curs.id_sl_curs LEFT JOIN n_product_fee pf ON pf.id_pf = n.id_pf LEFT JOIN
         n_product_description pd ON pd.id_pd = n.id_pd LEFT JOIN n_product_promotion_price ppp ON ppp.id_ppp = n.id_ppp LEFT JOIN n_group g
         ON g.id_n_group = n.id_n_group WHERE n.flag_pm = in_flag_pm ORDER BY n.name_pm, n.id_pm;
     END IF;
     IF (in_comprator = 1) THEN
        INSERT INTO n_product_main(id_n_group,id_ppp,id_pp, id_pf,name_pm, fname_pm, sname_pm,cname_pm,cod1_pm,
          cod2_pm,  barcod_pm,  max_pop_pm,  expertsheet_pm,min_pm, flag_pm, id_pd, code_pm )  VALUES(in_id_n_group,in_id_ppp,in_id_pp, in_id_pf,in_name_pm,
          in_fname_pm, in_sname_pm, in_cname_pm, in_cod1_pm, in_cod2_pm,  in_barcod_pm, in_max_pop_pm, in_expertsheet_pm, in_min_pm, in_flag_pm, in_id_pd, in_code_pm);
     END IF;
     IF (in_comprator = 2) THEN
       UPDATE `mida`.`n_product_main` SET flag_pm = in_flag_pm
        WHERE n_product_main.id_pm = in_id_pm;
     END IF;

     IF (in_comprator = 3) THEN
          SELECT n.id_pd, n.m1_pd, n.v1_pd, n.m2_pd, n.v2_pd, n.m3_pd, n.v3_pd FROM mida.n_product_description n
           WHERE n.id_pd = in_id_pd;
     END IF;


     IF (in_comprator = 4) THEN
         SELECT n.id_n_group, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.cod1_pm, n.cod2_pm, n.barcod_pm, n.max_pop_pm, n.expertsheet_pm, n.flag_pm, n.id_pd
          FROM n_product_main n WHERE n.id_pm = in_id_pm;
     END IF;

       IF (in_comprator = 5) THEN
             IF (in_barcod_pm != 0) THEN
              SELECT n.code_pm ,n.id_pm, n.id_n_group, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.cod1_pm,
         n.cod2_pm, n.barcod_pm, n.max_pop_pm, n.expertsheet_pm, n.flag_pm,  pp.id_sl_curs,pp.price0_pp,money.cod_lat_n_money,@stoinost_in_lv:=(sl_curs.value_sl_curs*pp.price0_pp)AS lv, pp.price1_pp, pp.price2_pp,pp.price3_pp, pf.dds_pf, pf.excise_pf,
         pf.other_pf, pd.id_pd, pd.m1_pd, pd.v1_pd, pd.m2_pd, pd.v2_pd, pd.m3_pd, pd.v3_pd,min_pm
              FROM mida.n_product_main n LEFT JOIN n_product_price pp ON pp.id_pp = n.id_pp LEFT JOIN sl_curs  ON  pp.id_sl_curs = sl_curs.id_sl_curs LEFT JOIN n_money money ON money.id_n_money = sl_curs.id_sl_curs LEFT JOIN n_product_fee pf ON pf.id_pf = n.id_pf LEFT JOIN
         n_product_description pd ON pd.id_pd = n.id_pd LEFT JOIN n_product_promotion_price ppp ON ppp.id_ppp = n.id_ppp LEFT JOIN n_group g
         ON g.id_n_group = n.id_n_group WHERE n.name_pm  LIKE CONCAT('%',in_name_pm,'%') AND  n.fname_pm LIKE CONCAT('%',in_fname_pm,'%') AND
              n.sname_pm LIKE CONCAT('%',in_sname_pm,'%') AND n.cname_pm LIKE CONCAT('%',in_cname_pm,'%') AND  n.cod1_pm LIKE CONCAT('%',in_cod1_pm,'%') AND
              n.cod2_pm LIKE CONCAT('%',in_cod2_pm,'%') AND  n.barcod_pm LIKE CONCAT('%',in_barcod_pm,'%') AND  n.expertsheet_pm LIKE CONCAT('%',in_expertsheet_pm,'%')
             AND n.code_pm LIKE CONCAT('%',in_code_pm,'%') AND flag_pm = in_flag_pm ORDER BY n.name_pm;
           END IF;
       IF (in_barcod_pm = 0) THEN
          SELECT n.code_pm ,n.id_pm, n.id_n_group, n.id_ppp, n.id_pp, n.id_pf, n.name_pm, n.fname_pm, n.sname_pm, n.cname_pm, n.cod1_pm,
         n.cod2_pm, n.barcod_pm, n.max_pop_pm, n.expertsheet_pm, n.flag_pm,  pp.id_sl_curs,pp.price0_pp,money.cod_lat_n_money,@stoinost_in_lv:=(sl_curs.value_sl_curs*pp.price0_pp)AS lv, pp.price1_pp, pp.price2_pp,pp.price3_pp, pf.dds_pf, pf.excise_pf,
         pf.other_pf, pd.id_pd, pd.m1_pd, pd.v1_pd, pd.m2_pd, pd.v2_pd, pd.m3_pd, pd.v3_pd,min_pm
          FROM mida.n_product_main n LEFT JOIN n_product_price pp ON pp.id_pp = n.id_pp LEFT JOIN sl_curs  ON  pp.id_sl_curs = sl_curs.id_sl_curs LEFT JOIN n_money money ON money.id_n_money = sl_curs.id_sl_curs LEFT JOIN n_product_fee pf ON pf.id_pf = n.id_pf LEFT JOIN
         n_product_description pd ON pd.id_pd = n.id_pd LEFT JOIN n_product_promotion_price ppp ON ppp.id_ppp = n.id_ppp LEFT JOIN n_group g
         ON g.id_n_group = n.id_n_group WHERE n.name_pm  LIKE CONCAT('%',in_name_pm,'%') AND  n.fname_pm LIKE CONCAT('%',in_fname_pm,'%') AND
          n.sname_pm LIKE CONCAT('%',in_sname_pm,'%') AND n.cname_pm LIKE CONCAT('%',in_cname_pm,'%') AND  n.cod1_pm LIKE CONCAT('%',in_cod1_pm,'%') AND
          n.cod2_pm LIKE CONCAT('%',in_cod2_pm,'%') AND  n.expertsheet_pm LIKE CONCAT('%',in_expertsheet_pm,'%')
         AND n.code_pm LIKE CONCAT('%',in_code_pm,'%') AND flag_pm = in_flag_pm ORDER BY n.name_pm;
      END IF;
     END IF;



     IF (in_comprator = 6) THEN
        SELECT n.dds_pf, n.excise_pf, n.other_pf FROM n_product_fee n
         WHERE n.id_pf = in_id_pf;
     END IF;


     IF (in_comprator = 7) THEN
        SELECT MAX(n.id_pm) AS id_pm FROM `mida`.`n_product_main` n;
     END IF;

      IF (in_comprator = 8) THEN
        SELECT n.price1_pp, n.price2_pp, n.price3_pp, n.price0_pp, n.id_sl_curs FROM n_product_price n
         WHERE n.id_pp = in_id_pp;
     END IF;
      IF (in_comprator = 9) THEN
         INSERT INTO n_product_price(id_sl_curs,price0_pp,price1_pp,price2_pp,price3_pp) VALUES(in_id_pp,in_price0_pp,in_price1_pp,in_price2_pp,in_price3_pp);
     END IF;

     IF (in_comprator = 10) THEN
          UPDATE n_product_price n SET id_sl_curs = in_id_pd,
             price0_pp = in_price0_pp,
             price1_pp = in_price1_pp,
             price2_pp = in_price2_pp,
             price3_pp = in_price3_pp
            WHERE n.id_pp = in_id_pp;
    END IF;

    IF (in_comprator = 11) THEN
        SELECT n.price_ppp, n.datestart_ppp, n.datestop_ppp FROM n_product_promotion_price n WHERE n.id_ppp = in_id_ppp;
    END IF;

    IF (in_comprator = 12) THEN
        INSERT INTO n_product_promotion_price(price_ppp,datestart_ppp,datestop_ppp) VALUES(in_price0_pp,in_name_pm,in_sname_pm);
    END IF;

    IF (in_comprator = 13) THEN
        UPDATE n_product_promotion_price n SET price_ppp = in_price0_pp,
         datestart_ppp = in_name_pm,
         datestop_ppp =  in_sname_pm
        WHERE n.id_ppp =  in_id_ppp;
    END IF;

     IF (in_comprator = 14) THEN
         INSERT INTO n_product_fee(dds_pf,excise_pf,other_pf) VALUES(in_price0_pp,in_price1_pp,in_price2_pp);
    END IF;

     IF (in_comprator = 15) THEN
        UPDATE n_product_fee n SET dds_pf = in_price0_pp,
         excise_pf =  in_price1_pp,
         other_pf =   in_price2_pp
        WHERE n.id_pf = in_id_pf;
    END IF;

     IF (in_comprator = 16) THEN
        SELECT n.id_n_group,n.name_n_group, n.cod_n_group, n.nom_n_group FROM n_group n WHERE n.nom_n_group=in_id_pf  ORDER BY n.name_n_group;
    END IF;

      IF (in_comprator = 17) THEN
          SELECT n.id_oso, n.id_mol, n.id_nm, n.code_contragent, n.name_n_contragent,
           n.bul_n_contragent, n.dan_n_contragent, n.address_n_contragent, n.tel_contragent, n.fax_contragent,
           n.email_contragent, n.web_contragent, n.flag_n_contragent FROM mida.n_contragent n
           WHERE n.flag_n_contragent = 0 AND n.id_contragent=in_id_pm;
    END IF;

      IF (in_comprator = 18) THEN
         SELECT MAX(n.id_pp)  AS id_pp FROM `mida`.`n_product_price` n;
    END IF;

    IF (in_comprator = 19) THEN
           SELECT MAX(n.id_ppp) AS id_ppp FROM `mida`.`n_product_promotion_price` n;
    END IF;

    IF (in_comprator = 20) THEN
          SELECT MAX(n.id_pf) AS id_pf FROM `mida`.`n_product_fee` n;
    END IF;

    IF (in_comprator = 21) THEN
        SELECT  n.id_n_money,n.cod_n_money, n.cod_lat_n_money, n.name_n_money, n.comments_n_money FROM n_money n ORDER BY n.cod_lat_n_money;
    END IF;

     IF (in_comprator = 22) THEN
        SELECT s.id_sl_curs, s.date_time_sl_curs, s.id_n_money, s.value_sl_curs FROM sl_curs s WHERE s.id_sl_curs = in_id_pd;
    END IF;

    IF (in_comprator = 24) THEN
         SELECT n.id_contragent, n.id_oso, n.id_mol, n.id_nm, n.code_contragent, n.name_n_contragent, n.bul_n_contragent,
           n.dan_n_contragent, n.address_n_contragent, n.tel_contragent, n.fax_contragent, n.email_contragent, n.web_contragent,
           n.flag_n_contragent FROM n_contragent n WHERE n.flag_n_contragent = 0;
    END IF;

     IF (in_comprator = 25) THEN
          SELECT n.id_pam, n.name_pam, n.sname_pam FROM mida.n_product_all_measure n ORDER BY name_pam;
    END IF;

     IF (in_comprator = 26) THEN
         SELECT s.id_sl_curs, s.date_time_sl_curs, s.id_n_money,money.cod_lat_n_money ,s.value_sl_curs FROM mida.sl_curs s, n_money money
         WHERE money.id_n_money = s.id_n_money  ORDER BY s.date_time_sl_curs;
    END IF;

      IF (in_comprator = 27) THEN
        INSERT INTO mida.n_product_description(v1_pd,v2_pd,v3_pd,m1_pd,m2_pd,m3_pd)
        VALUES(in_id_pm,in_id_pp,in_id_ppp,in_id_pf,in_id_pd,in_id_n_group);
    END IF;

     IF (in_comprator = 28) THEN
         SELECT MAX(n.id_pd) AS id_pd FROM mida.n_product_description n;
    END IF;

     IF (in_comprator = 29) THEN
         UPDATE mida.n_product_description n SET v1_pd = in_id_pm,
         v2_pd = in_id_pp,
         v3_pd = in_id_ppp,
         m1_pd = in_id_pf,
         m2_pd = in_barcod_pm,
         m3_pd = in_id_n_group
         WHERE id_pd = in_id_pd;
    END IF;

     IF (in_comprator = 30) THEN
         SELECT s.id_pm, s.id_contragent, s.flag_scp FROM mida.sl_contragent_product s
         WHERE id_pm = in_id_pm AND flag_scp = in_flag_pm;
    END IF;

     IF (in_comprator = 31) THEN
         INSERT INTO mida.sl_contragent_product(id_pm,id_contragent,flag_scp)
          VALUES(in_id_pm,in_id_n_group,in_flag_pm);
    END IF;

    IF (in_comprator = 32) THEN
     UPDATE mida.sl_contragent_product  SET id_contragent = in_id_n_group,
         flag_scp = in_flag_pm
         WHERE id_pm = in_id_pm;

    END IF;

      IF (in_comprator = 33) THEN

       SELECT n.id_pm, n.flag_pm FROM mida.n_product_main n WHERE n.id_pm = in_id_pm;

    END IF;
    IF (in_comprator = 34) THEN
       UPDATE mida.n_product_consigment n SET
        id_pm = in_id_pm
       WHERE id_pm =  in_id_pp;
    END IF;

    IF (in_comprator = 35) THEN
      INSERT INTO mida.n_product_consigment(id_pm,parcel_pc,dateofexpire_pc)
       VALUES(in_id_pm,"000001",(select CURDATE()));

    END IF;

    IF (in_comprator = 36) THEN
         SELECT n.id_pc, n.parcel_pc, n.dateofexpire_pc, n.barcod_pc, n.id_pp, n.id_ppp, n.id_pf, n.exp_list_pc
         FROM n_product_consigment n
         WHERE id_pm =in_id_pm ;

    END IF;
     IF (in_comprator = 37) THEN
         SELECT n.id_pp, n.id_ppp, n.id_pf FROM n_product_consigment n
         WHERE id_pc =in_id_pm ;

    END IF;
    
    IF (in_comprator = 38) THEN
         INSERT INTO mida.n_product_consigment( id_pm, parcel_pc, dateofexpire_pc, barcod_pc, id_pp, id_ppp, id_pf,exp_list_pc)
         VALUES(in_id_pm, in_id_pd, in_sname_pm, in_barcod_pm, in_id_pp, in_id_ppp, in_id_pf,in_expertsheet_pm);

    END IF;
    IF (in_comprator = 39) THEN
       UPDATE mida.n_product_consigment n SET n.id_pm  = in_id_pm,
        n.parcel_pc = in_id_pd,
        n.dateofexpire_pc = in_sname_pm,
        n.barcod_pc = in_barcod_pm,
        n.id_pp = in_id_pp,
        n.id_ppp = in_id_ppp,
        n.id_pf = in_id_pf,
        n.exp_list_pc = in_expertsheet_pm
        WHERE n.id_pc=in_id_n_group;
   END IF;

    IF (in_comprator = 40) THEN
      SELECT MAX(id_pc) as id FROM mida.n_product_consigment n;

   END IF;
   IF (in_comprator = 41) THEN
      DELETE FROM mida.n_product_consigment
      WHERE id_pc = in_id_pm;

   END IF;

END $$

DELIMITER ;

# procedure: nom_procedure_storage

DELIMITER $$

DROP PROCEDURE IF EXISTS nom_procedure_storage $$
CREATE PROCEDURE nom_procedure_storage (IN comprator TINYINT, IN in_id INT(11), IN in_id_groupe INT(11), IN in_code INT(11), IN in_name VARCHAR(40), IN in_comments VARCHAR(250))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_n_storage, n.id_n_group, ng.name_n_group, n.code_n_storage, n.name_n_storage, n.comments_n_storage 
            FROM n_storage n LEFT OUTER JOIN n_group ng ON ng.id_n_group=n.id_n_group ORDER BY n.id_n_storage ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO n_storage ( id_n_group, code_n_storage, name_n_storage, comments_n_storage) VALUES(in_id_groupe, in_code, in_name, in_comments);
     END IF;
     IF (comprator = 2) THEN
        UPDATE n_storage SET id_n_group = in_id_groupe, code_n_storage = in_code, name_n_storage = in_name, comments_n_storage = in_comments
        WHERE n_storage.id_n_storage = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_storage  WHERE id_n_storage = in_id;
     END IF;


     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT n.id_n_storage, n.id_n_group, ng.name_n_group, n.code_n_storage, n.name_n_storage,
                   n.comments_n_storage FROM n_storage n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.name_n_storage LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_storage ASC;
        END IF;
        IF (in_code > -1) THEN
            SELECT n.id_n_storage, n.id_n_group, ng.name_n_group, n.code_n_storage, n.name_n_storage,
                   n.comments_n_storage FROM n_storage n LEFT OUTER JOIN n_group ng ON ng.id_n_group = n.id_n_group
                   WHERE n.code_n_storage LIKE CONCAT('%',in_code,'%') AND  n.code_n_storage LIKE CONCAT('%',in_name,'%') ORDER BY n.id_n_storage ASC;
        END IF;
     END IF;


     IF (comprator = 6) THEN
        SELECT n.id_n_group, n.name_n_group FROM n_group n WHERE n.nom_n_group = 4;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_n_storage) FROM n_storage n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.code_n_storage) AS code_n_storage FROM n_storage n;
     END IF;


     IF (comprator = 9) THEN
        SELECT MAX(n.id_n_group) AS id_n_group FROM n_group n WHERE n.nom_n_group = 4;
     END IF;

END $$

DELIMITER ;

# procedure: sl_procedure_casa_casa

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_casa_casa $$
CREATE PROCEDURE sl_procedure_casa_casa (
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
              IN in_contragentBegin INT(11),
              IN in_contragentEnd INT(11),
              IN in_data_begin DATE,
              IN in_data_end DATE,
              IN in_level INT(11)
              )
BEGIN

   IF (comprator = 0) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            ncasa.id_n_casa,
            ncasa.code_n_casa,
            scasa.id_n_casa,
            scasa.code_n_casa,
            scasa.name_n_casa,
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
            LEFT Join n_casa ncasa ON ncasa.id_n_casa = sl_m_operation.in_sl_mop
            LEFT Join n_casa scasa ON scasa.id_n_casa = sl_m_operation.out_sl_mop
            LEFT Join sl_document_facade ON sl_document_facade.id_df = sl_m_operation.id_order_spec
            LEFT Join n_money ON n_money.id_n_money = sl_m_operation.id_n_money
            LEFT Join n_incoms ON n_incoms.id_n_incoms = sl_m_operation.id_order_doc
            LEFT Join user_master ON user_master.id_um = sl_m_operation.user_id
            LEFT Join sl_doc_type_num ON sl_doc_type_num.id_sdtn = sl_m_operation.id_sdtn
            WHERE
            sl_m_operation.in_type_sl_mop = 1 AND
            sl_m_operation.out_type_sl_mop = 1 AND
            sl_m_operation.id_sdtn = in_id_sdtn AND
            sl_m_operation.levelx = in_level;

     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_m_operation( sl_m_operation.number_sl_mop,
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
               1,
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
                                      sl_m_operation.out_type_sl_mop = 1,
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
            ncasa.id_n_casa,
            ncasa.code_n_casa,
            scasa.id_n_casa,
            scasa.code_n_casa,
            scasa.name_n_casa,
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
            LEFT Join n_casa ncasa ON ncasa.id_n_casa = sl_m_operation.in_sl_mop
            LEFT Join n_casa scasa ON scasa.id_n_casa = sl_m_operation.out_sl_mop
            LEFT Join sl_document_facade ON sl_document_facade.id_df = sl_m_operation.id_order_spec
            LEFT Join n_money ON n_money.id_n_money = sl_m_operation.id_n_money
            LEFT Join n_incoms ON n_incoms.id_n_incoms = sl_m_operation.id_order_doc
            LEFT Join user_master ON user_master.id_um = sl_m_operation.user_id
            LEFT Join sl_doc_type_num ON sl_doc_type_num.id_sdtn = sl_m_operation.id_sdtn
            WHERE
            sl_m_operation.in_sl_mop = ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_casaBegin AND in_casaEnd ) AND
            sl_m_operation.out_sl_mop = ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_contragentBegin AND in_contragentEnd ) AND
            sl_m_operation.date_is BETWEEN  in_data_begin AND in_data_end AND
            sl_m_operation.in_type_sl_mop = 1 AND
            sl_m_operation.out_type_sl_mop = 1 AND
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

        IF (comprator = 9) THEN
            SELECT n_casa.id_n_casa, n_casa.code_n_casa, n_casa.name_n_casa FROM n_casa WHERE n_casa.id_n_casa != in_in_sl_mop;
        END IF;

          IF (comprator = 11) THEN
        SELECT n_money.id_n_money, n_money.cod_lat_n_money FROM n_money;
        END IF;

          IF (comprator = 12) THEN
        SELECT n_incoms.id_n_incoms, n_incoms.name_n_incoms FROM n_incoms;
        END IF;

END $$

DELIMITER ;

# procedure: sl_procedure_case_advances

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
            sl_m_operation.out_sl_mop,
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
            sl_m_operation.out_type_sl_mop = 4 AND
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

# procedure: sl_procedure_case_in

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_case_in $$
CREATE PROCEDURE sl_procedure_case_in (
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
              IN in_contragentBegin INT(11),
              IN in_contragentEnd INT(11),
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
            n_contragent.id_contragent,
            n_contragent.code_contragent,
            n_contragent.name_n_contragent,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            `n_money`.`cod_lat_n_money`,
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
            LEFT Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
            LEFT Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`out_sl_mop`
            LEFT Join `sl_document_facade` ON `sl_document_facade`.`id_df` = `sl_m_operation`.`id_order_spec`
            LEFT Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
            LEFT Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_doc`
            LEFT Join `user_master` ON `user_master`.`id_um` = `sl_m_operation`.`user_id`
            LEFT Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `sl_m_operation`.`id_sdtn`
            WHERE
            `sl_m_operation`.`in_type_sl_mop` = 1 AND
            `sl_m_operation`.`out_type_sl_mop` = 3 AND
            `sl_m_operation`.`id_sdtn` = in_id_sdtn AND
            `sl_m_operation`.`levelx` = in_level;

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
               in_in_sl_mop,
               1,
               in_outsl_mop,
               3,
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
        UPDATE `sl_m_operation` SET
                                      `sl_m_operation`.`number_sl_mop` =  in_number_sl_mop,
                                      `sl_m_operation`.`in_sl_mop` = in_in_sl_mop,
                                      `sl_m_operation`.`in_type_sl_mop` = 1,
                                      `sl_m_operation`.`out_sl_mop` = in_outsl_mop,
                                      `sl_m_operation`.`out_type_sl_mop` = 3,
                                      `sl_m_operation`.`id_order_spec` = in_id_order_spec,
                                      `sl_m_operation`.`id_order_spec_type` = 1,
                                      `sl_m_operation`.`id_order_doc` = in_id_order_doc,
                                      `sl_m_operation`.`date_is` = in_date_is,
                                      `sl_m_operation`.`id_n_money` = in_id_n_money,

                                      `sl_m_operation`.`exchange_rate` = in_exchange_rate,

                                      `sl_m_operation`.`sum_sl_mop` = in_sum_sl_mop,
                                      `sl_m_operation`.`sum_os_val_sl_mop`= in_sum_os_val_sl_mop,
                                      `sl_m_operation`.`user_id`= in_user_id,
                                      `sl_m_operation`.`id_sdtn`= in_id_sdtn,
                                      `sl_m_operation`.`comment_sl_mop` = in_comment_sl_mop
        WHERE sl_m_operation.id_sl_mop = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `sl_m_operation`  WHERE  sl_m_operation.id_sl_mop = in_id;
     END IF;

      IF (comprator = 5) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            n_contragent.id_contragent,
            n_contragent.code_contragent,
            n_contragent.name_n_contragent,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_incoms.name_n_incoms,
            sl_m_operation.id_n_money,
            `n_money`.`cod_lat_n_money`,
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
            LEFT Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`in_sl_mop`
            LEFT Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`out_sl_mop`
            LEFT Join `sl_document_facade` ON `sl_document_facade`.`id_df` = `sl_m_operation`.`id_order_spec`
            LEFT Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
            LEFT Join `n_incoms` ON `n_incoms`.`id_n_incoms` = `sl_m_operation`.`id_order_doc`
            LEFT Join `user_master` ON `user_master`.`id_um` = `sl_m_operation`.`user_id`
            LEFT Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `sl_m_operation`.`id_sdtn`
            WHERE
             sl_m_operation.in_sl_mop = ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_casaBegin AND in_casaEnd ) AND
             sl_m_operation.out_sl_mop = ANY (SELECT n_contragent.id_contragent FROM n_contragent WHERE n_contragent.code_contragent BETWEEN in_contragentBegin AND in_contragentEnd ) AND
             `sl_m_operation`.`date_is` BETWEEN  in_data_begin AND in_data_end AND
            `sl_m_operation`.`in_type_sl_mop` = 1 AND
            `sl_m_operation`.`out_type_sl_mop` = 3 AND
            `sl_m_operation`.`id_sdtn` = in_id_sdtn AND
            `sl_m_operation`.`levelx` = in_level;

       END IF;


         IF (comprator = 6) THEN
        SELECT n_casa.id_n_casa, n_casa.code_n_casa FROM `n_casa`;
        END IF;


        IF (comprator = 7) THEN
        SELECT MAX(sl_m_operation.id_sl_mop) FROM `sl_m_operation` n;
        END IF;

         IF (comprator = 8) THEN
        SELECT MAX(sl_m_operation.number_sl_mop) FROM sl_m_operation  WHERE sl_m_operation.id_sdtn = in_id_sdtn AND sl_m_operation.levelx = in_level;
        END IF;


          IF (comprator = 11) THEN
        SELECT n_money.id_n_money, n_money.cod_lat_n_money FROM `n_money`;
        END IF;

          IF (comprator = 12) THEN
        SELECT n_incoms.id_n_incoms, n_incoms.name_n_incoms FROM `n_incoms`;
        END IF;

END $$

DELIMITER ;

# procedure: sl_procedure_case_out

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_case_out $$
CREATE PROCEDURE sl_procedure_case_out (
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
              IN in_contragentBegin INT(11),
              IN in_contragentEnd INT(11),
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
            n_contragent.id_contragent,
            n_contragent.code_contragent,
            n_contragent.name_n_contragent,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_expens.name_n_expens,
            sl_m_operation.id_n_money,
            `n_money`.`cod_lat_n_money`,
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
            LEFT Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
            LEFT Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`in_sl_mop`
            LEFT Join `sl_document_facade` ON `sl_document_facade`.`id_df` = `sl_m_operation`.`id_order_spec`
            LEFT Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
            LEFT Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_doc`
            LEFT Join `user_master` ON `user_master`.`id_um` = `sl_m_operation`.`user_id`
            LEFT Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `sl_m_operation`.`id_sdtn`
            WHERE
            `sl_m_operation`.`in_type_sl_mop` = 3 AND
            `sl_m_operation`.`out_type_sl_mop` = 1 AND
            `sl_m_operation`.`id_sdtn` = in_id_sdtn AND
            `sl_m_operation`.`levelx` = in_level;

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
               in_outsl_mop,
               3,
               in_in_sl_mop,
               1,
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
        UPDATE `sl_m_operation` SET
                                      `sl_m_operation`.`number_sl_mop` =  in_number_sl_mop,
                                      `sl_m_operation`.`in_sl_mop` = in_outsl_mop,
                                      `sl_m_operation`.`in_type_sl_mop` = 3,
                                      `sl_m_operation`.`out_sl_mop` = in_in_sl_mop,
                                      `sl_m_operation`.`out_type_sl_mop` = 1,
                                      `sl_m_operation`.`id_order_spec` = in_id_order_spec,
                                      `sl_m_operation`.`id_order_spec_type` = 1,
                                      `sl_m_operation`.`id_order_doc` = in_id_order_doc,
                                      `sl_m_operation`.`date_is` = in_date_is,
                                      `sl_m_operation`.`id_n_money` = in_id_n_money,

                                      `sl_m_operation`.`exchange_rate` = in_exchange_rate,

                                      `sl_m_operation`.`sum_sl_mop` = in_sum_sl_mop,
                                      `sl_m_operation`.`sum_os_val_sl_mop`= in_sum_os_val_sl_mop,
                                      `sl_m_operation`.`user_id`= in_user_id,
                                      `sl_m_operation`.`id_sdtn`= in_id_sdtn,
                                      `sl_m_operation`.`comment_sl_mop` = in_comment_sl_mop
        WHERE sl_m_operation.id_sl_mop = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `sl_m_operation`  WHERE  sl_m_operation.id_sl_mop = in_id;
     END IF;

      IF (comprator = 5) THEN
            SELECT
            sl_m_operation.id_sl_mop,
            sl_m_operation.number_sl_mop,
            n_casa.id_n_casa,
            n_casa.code_n_casa,
            n_contragent.id_contragent,
            n_contragent.code_contragent,
            n_contragent.name_n_contragent,
            sl_document_facade.number_df,
            sl_m_operation.id_order_spec,
            sl_m_operation.id_order_doc,
            n_expens.name_n_expens,
            sl_m_operation.id_n_money,
            `n_money`.`cod_lat_n_money`,
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
            LEFT Join `n_casa` ON `n_casa`.`id_n_casa` = `sl_m_operation`.`out_sl_mop`
            LEFT Join `n_contragent` ON `n_contragent`.`id_contragent` = `sl_m_operation`.`in_sl_mop`
            LEFT Join `sl_document_facade` ON `sl_document_facade`.`id_df` = `sl_m_operation`.`id_order_spec`
            LEFT Join `n_money` ON `n_money`.`id_n_money` = `sl_m_operation`.`id_n_money`
            LEFT Join `n_expens` ON `n_expens`.`id_n_expens` = `sl_m_operation`.`id_order_doc`
            LEFT Join `user_master` ON `user_master`.`id_um` = `sl_m_operation`.`user_id`
            LEFT Join `sl_doc_type_num` ON `sl_doc_type_num`.`id_sdtn` = `sl_m_operation`.`id_sdtn`
            WHERE
             sl_m_operation.out_sl_mop= ANY (SELECT n_casa.id_n_casa FROM n_casa WHERE n_casa.code_n_casa BETWEEN in_casaBegin AND in_casaEnd ) AND
             sl_m_operation.in_sl_mop = ANY (SELECT n_contragent.id_contragent FROM n_contragent WHERE n_contragent.code_contragent BETWEEN in_contragentBegin AND in_contragentEnd ) AND
             `sl_m_operation`.`date_is` BETWEEN  in_data_begin AND in_data_end AND
            `sl_m_operation`.`in_type_sl_mop` = 3 AND
            `sl_m_operation`.`out_type_sl_mop` = 1 AND
            `sl_m_operation`.`id_sdtn` = in_id_sdtn AND
            `sl_m_operation`.`levelx` = in_level;

       END IF;


         IF (comprator = 6) THEN
        SELECT n_casa.id_n_casa, n_casa.code_n_casa FROM `n_casa`;
        END IF;


        IF (comprator = 7) THEN
        SELECT MAX(sl_m_operation.id_sl_mop) FROM `sl_m_operation` n;
        END IF;

         IF (comprator = 8) THEN
        SELECT MAX(sl_m_operation.number_sl_mop) FROM sl_m_operation  WHERE sl_m_operation.id_sdtn = in_id_sdtn AND sl_m_operation.levelx = in_level;
        END IF;


          IF (comprator = 11) THEN
        SELECT n_money.id_n_money, n_money.cod_lat_n_money FROM `n_money`;
        END IF;

          IF (comprator = 12) THEN
        SELECT n_expens.id_n_expens, n_expens.name_n_expens FROM `n_expens`;
        END IF;

END $$

DELIMITER ;

# procedure: sl_procedure_copiuri

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_copiuri $$
CREATE PROCEDURE sl_procedure_copiuri (IN comprator INT(3),
                                                IN in_id_um INT(11),
                                                IN in_name_um VARCHAR(40),
                                                IN in_paper_100 INT(5),
                                                IN in_paper_50 INT(5),
                                                IN in_paper_20 INT(5),
                                                IN in_paper_10 INT(5),
                                                IN in_paper_5 INT(5),
                                                IN in_paper_2 INT(5),
                                                IN in_metal_1 INT(5),
                                                IN in_metal_050 INT(5),
                                                IN in_metal_020 INT(5),
                                                IN in_metal_010 INT(5),
                                                IN in_metal_005 INT(5),
                                                IN in_metal_002 INT(5),
                                                IN in_metal_001 INT(5),
                                                IN dateBegin VARCHAR(15), IN dateEnd VARCHAR(15))
BEGIN
  IF (comprator =  0) then

      SELECT sc.id_sc, sc.id_um, user_master.name_um, sc.instant,
              sc.paper_100, (sc.paper_100*100) AS suma_100, sc.paper_50, (sc.paper_50*50) AS suma_50,
              sc.paper_20, (sc.paper_20*20) AS suma_20, sc.paper_10, (sc.paper_10*10) AS suma_10,
              sc.paper_5,(sc.paper_5*5) AS suma_5, sc.paper_2, (sc.paper_2*2) AS suma_2,
              sc.metal_1, (sc.metal_1*1) AS suma_1, sc.metal_050, (sc.metal_050*0.50) AS suma_050,
              sc.metal_020, (sc.metal_020*0.20) AS suma_020, sc.metal_010, (sc.metal_010*0.10) AS suma_010,
              sc.metal_005, (sc.metal_005*0.05) AS suma_005, sc.metal_002, (sc.metal_002*0.02) AS suma_002,
              sc.metal_001, (sc.metal_001*0.01) AS suma_001
              FROM sl_copiuri sc
              LEFT JOIN user_master ON user_master.id_um = sc.id_um
              WHERE DATE(sc.instant) BETWEEN  dateBegin AND dateEnd
              ORDER by id_sc ASC;
  END IF;
  IF (comprator = 1) then
  INSERT INTO sl_copiuri(id_um, paper_100, paper_50, paper_20, paper_10, paper_5, paper_2, 
                        metal_1, metal_050, metal_020, metal_010, metal_005, metal_002, metal_001) 
                  VALUES(in_id_um, in_paper_100, in_paper_50, in_paper_20, in_paper_10, in_paper_5, in_paper_2, 
                        in_metal_1, in_metal_050, in_metal_020, in_metal_010, in_metal_005, in_metal_002, in_metal_001);
  end if;
  IF (comprator =  5) then

      SELECT sc.id_sc, sc.id_um, user_master.name_um, sc.instant,
              sc.paper_100, (sc.paper_100*100) AS suma_100, sc.paper_50, (sc.paper_50*50) AS suma_50,
              sc.paper_20, (sc.paper_20*20) AS suma_20, sc.paper_10, (sc.paper_10*10) AS suma_10,
              sc.paper_5,(sc.paper_5*5) AS suma_5, sc.paper_2, (sc.paper_2*2) AS suma_2,
              sc.metal_1, (sc.metal_1*1) AS suma_1, sc.metal_050, (sc.metal_050*0.50) AS suma_050,
              sc.metal_020, (sc.metal_020*0.20) AS suma_020, sc.metal_010, (sc.metal_010*0.10) AS suma_010,
              sc.metal_005, (sc.metal_005*0.05) AS suma_005, sc.metal_002, (sc.metal_002*0.02) AS suma_002,
              sc.metal_001, (sc.metal_001*0.01) AS suma_001
              FROM sl_copiuri sc
              LEFT JOIN user_master ON user_master.id_um = sc.id_um
              WHERE DATE(sc.instant) BETWEEN  dateBegin AND dateEnd AND user_master.name_um LIKE CONCAT('%',in_name_um,'%')
              ORDER by id_sc ASC;
  END IF;


END $$

DELIMITER ;

# procedure: sl_procedure_exchange_rate

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_exchange_rate $$
CREATE PROCEDURE sl_procedure_exchange_rate (IN comprator TINYINT, IN in_id INT(10), IN in_date DATE, IN in_id_money INT(11), IN in_value DECIMAL(10,5))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_sl_exchange_rate, n.date_sl_exchange_rate, n.id_n_money, nm.cod_lat_n_money, nm.name_n_money, n.value_sl_exchange_rate
            FROM sl_exchange_rate n 
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money 
            ORDER BY n.id_sl_exchange_rate ASC;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_exchange_rate (date_sl_exchange_rate, id_n_money, value_sl_exchange_rate) VALUES(in_date, in_id_money, in_value);
     END IF;

     IF (comprator = 2) THEN
        UPDATE sl_exchange_rate SET date_sl_exchange_rate = in_date, id_n_money = in_id_money, value_sl_exchange_rate = in_value
           WHERE sl_exchange_rate.id_sl_exchange_rate = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM sl_exchange_rate  WHERE id_sl_exchange_rate = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code_ntd, n.name_ntd, n.name_print_ntd FROM sl_exchange_rate n WHERE n.id_sl_exchange_rate = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_sl_exchange_rate, n.datesl_exchange_rate, n.id_n_money, nm.cod_n_money, n.valuesl_exchange_rate
                FROM sl_exchange_rate n LEFT OUTER JOIN n_money nm ON nm.id_n_money = n.id_n_money
                WHERE n.date_sl_exchange_rate LIKE CONCAT('%',in_date,'%') AND  nm.cod_n_money LIKE CONCAT('%',in_code_money,'%')
                ORDER BY n.id_sl_exchange_rate ASC;
     END IF;

     IF (comprator = 6) THEN
        SELECT nm.id_n_money, nm.cod_lat_n_money, nm.name_n_money 
            FROM n_money nm;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_sl_exchange_rate) AS id FROM sl_exchange_rate n;
     END IF;

     IF (comprator = 8) THEN
        SELECT MAX(n.id_n_money) AS id_n_money FROM n_money n;
     END IF;

     IF (comprator = 9) THEN
       DELETE FROM sl_exchange_rate;
     END IF;
     
     IF (comprator = 10) THEN
        SELECT nm.id_n_money, nm.cod_lat_n_money, nm.name_n_money 
            FROM n_money nm WHERE nm.id_n_money = in_id_money;
     END IF;

END $$

DELIMITER ;

# procedure: sl_procedure_num_doc

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_num_doc $$
CREATE PROCEDURE sl_procedure_num_doc (IN comprator TINYINT, IN in_id INT(11), IN in_id_doctype INT(11), IN in_area INT(3), IN in_name VARCHAR(40))
BEGIN
     IF (comprator = 0) THEN
          SELECT n.id_sdtn, n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn
            FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd ORDER BY n.id_sdtn ASC;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO sl_doc_type_num (id_ntd, area_number_sdtn, name_sdtn) VALUES(in_id_doctype, in_area, in_name);
     END IF;
     IF (comprator = 2) THEN
        UPDATE sl_doc_type_num SET id_ntd = in_id_doctype, area_number_sdtn = in_area, name_sdtn = in_name
        WHERE sl_doc_type_num.id_sdtn = in_id;
     END IF;
     IF (comprator = 3) THEN
        DELETE FROM sl_doc_type_num WHERE id_sdtn = in_id;
     END IF;
     IF (comprator = 4) THEN
        SELECT n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn FROM sl_doc_type_num n
            LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd WHERE n.id_sdtn = in_id;
     END IF;
     IF (comprator = 5) THEN
        IF (in_area = -1 ) THEN
        SELECT n.id_sdtn, n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn
               FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd
               WHERE n.name_sdtn LIKE CONCAT('%',in_name,'%') ORDER BY n.id_sdtn ASC;
        END IF;
        IF (in_area > -1 ) THEN
        SELECT n.id_sdtn, n.id_ntd, ntd.name_ntd, n.area_number_sdtn, n.name_sdtn
               FROM sl_doc_type_num n LEFT OUTER JOIN n_type_doc ntd ON ntd.id_ntd = n.id_ntd
               WHERE n.area_number_sdtn LIKE CONCAT('%',in_area,'%') AND  n.name_sdtn LIKE CONCAT('%',in_name,'%') ORDER BY n.id_sdtn ASC;
        END IF;
     END IF;
     IF (comprator = 6) THEN
        SELECT ntd.id_ntd, ntd.name_ntd FROM n_type_doc ntd;
     END IF;
     IF (comprator = 7) THEN
        SELECT MAX(n.id_sdtn) FROM sl_doc_type_num n;
     END IF;
     IF (comprator = 8) THEN
        SELECT MAX(n.area_number_sdtn) AS area_number FROM sl_doc_type_num n;
     END IF;
     IF (comprator = 9) THEN
        SELECT MAX(ntd.id_ntd) AS id_ntd FROM n_type_doc ntd;
     END IF;
END $$

DELIMITER ;

# procedure: sl_procedure_paying_orders

DELIMITER $$

DROP PROCEDURE IF EXISTS sl_procedure_paying_orders $$
CREATE PROCEDURE sl_procedure_paying_orders(IN comprator TINYINT, IN in_id INT(11), IN in_order_person INT(11), 
                                            IN in_id_spt INT(11), IN in_id_nbc INT(11), IN in_id_person INT(11), IN in_pname VARCHAR(60), 
                                            IN in_id_contragent INT(11), IN in_code INT(11), IN in_name VARCHAR(45), 
                                            IN in_amount DECIMAL(12,2), IN in_osnovanie VARCHAR(60), IN in_comment_spo VARCHAR(60), 
                                            IN in_SOT INT(11), IN in_SOTN VARCHAR(50), IN beginDate VARCHAR(15), IN endDate VARCHAR(15))
BEGIN
     IF (comprator = 0) THEN
        IF (in_order_person = 0) THEN
          SELECT po.id_spo, po.ordering_person, po.id_spt, pt.type_porder, 
            po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD, po.amount, po.osnovanie, po.comment_spo, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt 
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent AND nc.flag_n_contragent = 0  
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
            WHERE po.ordering_person = 0 
            ORDER BY po.id_spo ASC;
        END IF;
        IF (in_order_person = 1) THEN
          SELECT po.id_spo, po.ordering_person, po.id_spt, pt.type_porder, po.id_ls_n_person, p.name_ls_n_person, 
            po.id_nbc, nb.name_nbc, nb.branch_nbc, nb.address_nbc, nb.account_nbc, nb.bic_nbc, nb.id_n_money, nm.cod_lat_n_money,  
            nb.id_tbacc, tb.name_tbacc, po.amount, po.osnovanie, po.comment_spo, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt  
            LEFT OUTER JOIN ls_n_person p ON p.id_ls_n_person = po.id_ls_n_person 
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = nb.id_n_money 
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = 1 
            WHERE po.ordering_person = 1 
            ORDER BY po.id_spo ASC;
        END IF;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO sl_paying_orders (ordering_person, id_spt, id_nbc, id_ls_n_person, id_contragent, amount, osnovanie, comment_spo) 
                VALUES(in_order_person, in_id_spt, in_id_nbc, in_id_person, in_id_contragent, in_amount, in_osnovanie, in_comment_spo);
     END IF;

     IF (comprator = 2) THEN
        UPDATE sl_paying_orders  
            SET ordering_person = in_order_person, id_spt = in_id_spt, id_nbc = in_id_nbc, id_ls_n_person = in_id_person, id_contragent = in_id_contragent, 
                amount = in_amount, osnovanie = in_osnovanie, comment_spo = in_comment_spo, instant = CURRENT_TIMESTAMP 
            WHERE sl_paying_orders.id_spo = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM sl_paying_orders WHERE id_spo = in_id;
     END IF;

     IF (comprator = 4) THEN
          SELECT po.id_spo, po.id_spt, pt.type_porder, po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD, po.amount, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent AND nc.flag_n_contragent = 0
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
            WHERE po.id_spo = in_id;
     END IF;

     IF (comprator = 5) THEN
        IF (in_code = -1) THEN
            SELECT po.id_spo, po.id_spt, pt.type_porder, po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.VIDVALD, po.amount, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent AND nc.flag_n_contragent = 0  
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc
            WHERE  nc.name_contragent LIKE CONCAT('%',in_name,'%')    
            ORDER BY po.id_spt ASC;
        END IF;
        IF (in_code > -1 ) THEN
            SELECT po.id_spo, po.id_spt, pt.type_porder, po.id_nbc, nb.name_nbc, nb.account_nbc, nb.id_tbacc, tb.name_tbacc, 
            po.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.VIDVALR,
            nc.BANKNAMED, nc.IBAND, nc.VIDVALD, po.amount, DATE(po.instant) 
            FROM sl_paying_orders po 
            LEFT OUTER JOIN sl_porder_types pt ON pt.id_spt = po.id_spt
            LEFT OUTER JOIN n_baccount nb ON nb.id_nbc = po.id_nbc 
            LEFT OUTER JOIN n_contragent nc ON nc.id_contragent = po.id_contragent AND nc.flag_n_contragent = 0   
            LEFT OUTER JOIN n_type_bacc tb ON tb.id_tbacc = nb.id_tbacc 
            WHERE nc.code_contragent LIKE CONCAT('%',in_code,'%') AND nc.name_n_contragent LIKE CONCAT('%',in_name,'%') 
            ORDER BY po.id_spt ASC;
        END IF;
     END IF;

     IF (comprator = 6) THEN
        SELECT pt.id_spt, pt.type_porder, pt.id_tbacc FROM sl_porder_types pt ORDER BY pt.id_spt ASC;
     END IF;

     IF (comprator = 7) THEN
        IF (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5) THEN 
            SELECT nb.id_nbc, nb.name_nbc, nb.branch_nbc, nb.address_nbc, nb.account_nbc, nb.bic_nbc, nb.id_n_money, nm.cod_lat_n_money  
            FROM n_baccount nb
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = nb.id_n_money 
            WHERE nb.id_tbacc = 1 
            ORDER BY nb.id_nbc ASC;
        END IF;
        IF (in_SOT = 3 OR in_SOT = 4) THEN 
            SELECT nb.id_nbc, nb.name_nbc, nb.branch_nbc, nb.address_nbc, nb.account_nbc, nb.bic_nbc, nb.id_n_money, nm.cod_lat_n_money 
            FROM n_baccount nb
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = nb.id_n_money 
            WHERE nb.id_tbacc = 2 
            ORDER BY nb.id_nbc ASC;
        END IF;
     END IF;

     IF (comprator = 8) THEN
        SELECT nc.id_contragent, nc.name_n_contragent, nc.code_contragent, nc.BANKNAMER, nc.IBANR, nc.BICR, nc.VIDVALR,
        nc.BANKNAMED, nc.IBAND, nc.BICD, nc.VIDVALD 
        FROM n_contragent nc 
        WHERE nc.flag_n_contragent = 0 
        ORDER BY nc.id_contragent ASC;
     END IF;

     IF (comprator = 9) THEN
        SELECT tb.id_tbacc, tb.name_tbacc FROM n_type_bacc tb ORDER BY tb.id_tbacc ASC;
     END IF;

     IF (comprator = 10) THEN
        SELECT MAX(po.id_spo) FROM sl_paying_orders po;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id_n_money, nm.cod_lat_n_money FROM n_money nm ORDER BY nm.id_n_money ASC;
     END IF;

     IF (comprator = 12) THEN 
        SELECT p.id_ls_n_person, p.code_ls_n_person, p.name_ls_n_person, p.egn_ls_n_person FROM ls_n_person p 
            ORDER BY p.id_ls_n_person ASC;
     END IF;

     IF (comprator = 13) THEN
        SELECT ta.id_spt FROM sl_porder_types ta WHERE ta.type_porder = in_SOTN;
     END IF;


     IF (comprator = 14) THEN
        IF (in_code = -1 AND (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5)) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMER, cn.BICR, cn.IBANR, cn.VIDVALR  
                FROM n_contragent cn WHERE cn.flag_n_contragent = 0 
                ORDER BY cn.id_contragent ASC;
        END IF;
        IF (in_code > -1 AND (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5)) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMER, cn.BICR, cn.IBANR, cn.VIDVALR  
                FROM n_contragent cn
                WHERE cn.code_contragent LIKE CONCAT('%',in_code,'%') AND cn.flag_n_contragent = 0 
                ORDER BY cn.id_contragent ASC;
        END IF;
        IF (in_code = -1 AND (in_SOT = 3 OR in_SOT = 4)) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMED, cn.BICD, cn.IBAND, cn.VIDVALD  
                FROM n_contragent cn WHERE cn.flag_n_contragent = 0 
                ORDER BY cn.id_contragent ASC;
        END IF;
        IF (in_code > -1 AND (in_SOT = 3 OR in_SOT = 4)) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMED, cn.BICD, cn.IBAND, cn.VIDVALD  
                FROM n_contragent cn
                WHERE cn.code_contragent LIKE CONCAT('%',in_code,'%') AND cn.flag_n_contragent = 0  
                ORDER BY cn.id_contragent ASC;
        END IF;
     END IF;

     IF (comprator = 15) THEN
        SELECT p.id_ls_n_person, p.name_ls_n_person FROM ls_n_person p
            WHERE p.name_ls_n_person LIKE CONCAT('%',in_pname,'%')
            ORDER BY p.name_ls_n_person ASC;
     END IF;

     IF (comprator = 16) THEN
        IF (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMER, cn.BICR, cn.IBANR, cn.VIDVALR  
                FROM n_contragent cn 
                WHERE cn.code_contragent = in_code AND cn.flag_n_contragent = 0;
        END IF;
        IF (in_SOT = 3 OR in_SOT = 4) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMED, cn.BICD, cn.IBAND, cn.VIDVALD  
                FROM n_contragent cn 
                WHERE cn.code_contragent = in_code AND cn.flag_n_contragent = 0;
        END IF;
     END IF;

     IF (comprator = 17) THEN
        SELECT p.id_ls_n_person, p.name_ls_n_person FROM ls_n_person p
            WHERE p.name_ls_n_person = in_pname;
     END IF;

     IF (comprator = 18) THEN
        IF (in_SOT = 1 OR in_SOT = 2 OR in_SOT = 5) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMER, cn.BICR, cn.IBANR, cn.VIDVALR  
                FROM n_contragent cn
                WHERE cn.id_contragent = in_id AND cn.flag_n_contragent = 0;
        END IF;
        IF (in_SOT = 3 OR in_SOT = 4) THEN 
            SELECT cn.id_contragent, cn.code_contragent, cn.name_n_contragent, cn.BANKNAMED, cn.BICD, cn.IBAND, cn.VIDVALD  
                FROM n_contragent cn
                WHERE cn.id_contragent = in_id AND cn.flag_n_contragent = 0;
        END IF;
     END IF;

     IF (comprator = 19) THEN
        SELECT p.id_ls_n_person, p.name_ls_n_person FROM ls_n_person p
            WHERE p.id_ls_n_person = in_id;
     END IF;

     IF (comprator = 20) THEN
        SELECT nb.id_nbc, nb.name_nbc, nb.branch_nbc, nb.address_nbc, nb.account_nbc, nb.bic_nbc, nb.id_n_money, nm.cod_lat_n_money  
            FROM n_baccount nb
            LEFT OUTER JOIN n_money nm ON nm.id_n_money = nb.id_n_money 
            WHERE nb.id_nbc = in_id_nbc;
     END IF;
END $$

DELIMITER ;