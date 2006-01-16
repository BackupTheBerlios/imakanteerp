DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_contragent` $$
CREATE PROCEDURE `nom_procedure_contragent`(IN comprator TINYINT,  IN in_id INT(10),      IN in_cod VARCHAR(11),     IN in_name VARCHAR(45),
                                            IN in_bul VARCHAR(13), IN in_dan VARCHAR(11), IN in_address VARCHAR(35), IN in_id_nm INT(10),
                                            IN in_tel VARCHAR(12), IN in_fax VARCHAR(12), IN in_email VARCHAR(20),   IN in_web VARCHAR(20),
                                            IN in_id_mol INT(10),  IN in_id_oso INT(10),  IN in_flag TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT c.id_contragent, c.code_contragent, c.name_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name, cont.code, cont.name, c.tel_n_contragent, c.fax_n_contragent, c.email_n_contragent, c.web_n_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `mida`.`ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `mida`.`ls_n_person` where id_ls_n_person= id_oso) AS OSO, c.flag_n_contragent
        FROM `mida`.`contragent` c, `mida`.`n_nm` nm, `mida`.`n_oblast` obl , `mida`.`n_country`  cont
        WHERE (c.id_nm = nm.id_nm and nm.id_n_oblast = obl.id_n_oblast and obl.id_country = cont.id_n_country) and c.flag_n_contragent = in_flag ORDER BY c.code_contragent;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `mida`.`contragent`(code_contragent,name_n_contragent,bul_n_contragent,dan_n_contragent,address_n_contragent,id_nm,tel_n_contragent,fax_n_contragent,email_n_contragent,web_n_contragent,id_mol,id_oso,flag_n_contragent)
         VALUES(in_cod,in_name,in_bul,in_dan,in_address,in_id_nm,in_tel,in_fax,in_email,in_web,in_id_mol,in_id_oso,in_flag);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `mida`.`contragent` SET flag_n_contragent = in_flag
           WHERE `mida`.`contragent`.id_contragent = in_id;
     END IF;

     IF (comprator = 5) THEN
       SELECT c.id_contragent, c.code_contragent, c.name_contragent, c.bul_n_contragent, c.dan_n_contragent, c.address_n_contragent, c.id_nm, nm.name_n_nm, obl.name_n_oblast, cont.code_n_country, cont.name_n_country, c.tel_n_contragent, c.fax_n_contragent, c.email_n_contragent, c.web_n_contragent, c.id_mol,
                @MOL:=(select name_ls_n_person from `mida`.`ls_n_person` where id_ls_n_person = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name_ls_n_person from `mida`.`ls_n_person` where id_ls_n_person = id_oso) AS OSO, c.flag_n_contragent
        FROM `mida`.`contragent` c, `mida`.`n_nm` nm, `mida`.`n_oblast` obl , `mida`.`n_country`  cont
        WHERE (c.id_nm = nm.id_nm and nm.id_oblast = obl.id_n_oblast and obl.id_country = cont.id_n_country and c.flag_n_contragent = in_flag ) AND
              c.code_contragent LIKE CONCAT('%',in_cod,'%') AND
              c.name_contragent LIKE CONCAT('%',in_name,'%') AND  c.bul_n_contragent LIKE CONCAT('%',in_bul,'%') AND c.dan LIKE CONCAT('%',in_dan,'%') AND
              c.address_n_contragent LIKE CONCAT('%',in_address,'%') AND c.tel LIKE CONCAT('%',in_tel,'%') AND c.fax LIKE CONCAT('%',in_fax,'%') AND
              c.email_n_contragent LIKE CONCAT('%',in_email,'%') AND c.web LIKE CONCAT('%',in_web,'%') ORDER BY c.code;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(c.id_contragent) AS id FROM `mida`.`contragent` c;
     END IF;

     IF (comprator = 10) THEN
        SELECT nm.name_n_nm  FROM `mida`.`n_nm` nm WHERE nm.id_nm = in_id_nm;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id_nm, nm.name_n_nm, obl.name_n_oblast, con.name_n_country, con.code_n_country
        FROM `mida`.`n_nm` nm, `mida`.`n_oblast` obl, `mida`.`n_country` con
        WHERE  nm.id_oblast = obl.id_n_oblast and obl.id_country = con.id_n_country and nm.name_n_nm like CONCAT('%',in_address,'%');
     END IF;

     IF (comprator = 12) THEN
        SELECT ls.id_ls_n_person, ls.name_ls_n_person, ls.egn_ls_n_person, ls.nlk_ls_n_person, ls.coment_ls_n_person
        FROM `mida`.`ls_n_person` ls WHERE ls.name_ls_n_person like CONCAT('%',in_name,'%')
        ORDER BY ls.name;
     END IF;
     IF (comprator = 13) THEN
        IF (in_id_mol != -1) THEN
            SELECT ls.id_ls_n_person, ls.name_ls_n_person, ls.egn_ls_n_person, ls.nlk_ls_n_person, ls.coment_ls_n_person FROM `mida`.`ls_n_person` ls WHERE ls.id_ls_n_person=in_id_mol;
        END IF;
        IF (in_id_oso != -1) THEN
            SELECT ls.id_ls_n_person, ls.name_ls_n_person, ls.egn_ls_n_person, ls.nlk_ls_n_person, ls.coment_ls_n_person FROM `mida`.`ls_n_person` ls WHERE ls.id_ls_n_person=in_id_oso;
        END IF;
     END IF;
     
     IF (comprator = 14) THEN
        SELECT  MAX(c.code_contragent) as code
        FROM `mida`.`contragent` c where c.flag_n_contragen = in_flag;
     END IF;

END $$

DELIMITER ;