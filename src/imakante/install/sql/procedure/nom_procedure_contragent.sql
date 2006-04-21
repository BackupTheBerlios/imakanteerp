DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_contragent` $$
CREATE PROCEDURE `nom_procedure_contragent`(IN comprator TINYINT,  IN in_id INT(10),      IN in_code INT(11),     IN in_name VARCHAR(45),
                                            IN in_bul VARCHAR(13), IN in_dan VARCHAR(11), IN in_address VARCHAR(35), IN in_id_nm INT(10),
                                            IN in_tel VARCHAR(12), IN in_fax VARCHAR(12), IN in_email VARCHAR(20),   IN in_web VARCHAR(20),
                                            IN in_id_mol INT(10),  IN in_id_oso INT(10),  IN in_flag TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent
        FROM `n_contragent` c, `n_nm` nm, `n_oblast` obl , `n_country`  cont
        WHERE (c.id_nm = nm.id_n_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_n_country = cont.id_n_country) and c.flag_n_contragent = in_flag ORDER BY c.code_contragent;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `n_contragent`(code_contragent,name_n_contragent,bul_n_contragent,dan_n_contragent,address_n_contragent,id_nm,tel_contragent,fax_contragent,email_contragent,web_contragent,id_mol,id_oso,flag_n_contragent)
         VALUES(in_code,in_name,in_bul,in_dan,in_address,in_id_nm,in_tel,in_fax,in_email,in_web,in_id_mol,in_id_oso,in_flag);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `n_contragent` SET flag_n_contragent = in_flag
           WHERE `n_contragent`.id_contragent = in_id;
     END IF;

     IF (comprator = 5) THEN
      IF (in_code != 0) THEN
       SELECT c.id_contragent, c.code_contragent, c.name_n_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_contragent, c.fax_contragent, c.email_contragent, c.web_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent
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
               c.id_oso, @OSO:=(select name_ls_n_person from `ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent
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

     IF (comprator = 17) THEN
        SELECT  sl_contragent_product.id_pm
        FROM sl_contragent_product where sl_contragent_product.id_contragent = in_id AND sl_contragent_product.flag_scp = in_flag;
     END IF;

END $$

DELIMITER ;