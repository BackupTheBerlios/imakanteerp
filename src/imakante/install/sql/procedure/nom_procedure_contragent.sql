DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_contragent` $$
CREATE PROCEDURE `nom_procedure_contragent`(IN comprator TINYINT,  IN in_id INT(10),      IN in_cod VARCHAR(11),     IN in_name VARCHAR(45),
                                            IN in_bul VARCHAR(13), IN in_dan VARCHAR(11), IN in_address VARCHAR(35), IN in_id_nm INT(10),
                                            IN in_tel VARCHAR(12), IN in_fax VARCHAR(12), IN in_email VARCHAR(20),   IN in_web VARCHAR(20),
                                            IN in_id_mol INT(10),  IN in_id_oso INT(10),  IN in_flag TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT c.id_contragent, c.code, c.name, c.bul, c.dan, c.address, c.id_nm, nm.name, obl.name, cont.code, cont.name, c.tel, c.fax, c.email, c.web, c.id_mol,
                @MOL:=(select name from `mida`.`ls_n_person` where id = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name from `mida`.`ls_n_person` where id = id_oso) AS OSO, c.flag
        FROM `mida`.`contragent` c, `mida`.`n_nm` nm, `mida`.`n_oblast` obl , `mida`.`n_country`  cont
        WHERE (c.id_nm = nm.id and nm.id_oblast = obl.id and obl.id_country = cont.id) and c.flag = in_flag ORDER BY c.code;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `mida`.`contragent`(code,name,bul,dan,address,id_nm,tel,fax,email,web,id_mol,id_oso,flag)
         VALUES(in_cod,in_name,in_bul,in_dan,in_address,in_id_nm,in_tel,in_fax,in_email,in_web,in_id_mol,in_id_oso,in_flag);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `mida`.`contragent` SET flag = in_flag
           WHERE `mida`.`contragent`.id_contragent = in_id;
     END IF;

     IF (comprator = 5) THEN
       SELECT c.id_contragent, c.code, c.name, c.bul, c.dan, c.address, c.id_nm, nm.name, obl.name, cont.code, cont.name, c.tel, c.fax, c.email, c.web, c.id_mol,
                @MOL:=(select name from `mida`.`ls_n_person` where id = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name from `mida`.`ls_n_person` where id = id_oso) AS OSO, c.flag
        FROM `mida`.`contragent` c, `mida`.`n_nm` nm, `mida`.`n_oblast` obl , `mida`.`n_country`  cont
        WHERE (c.id_nm = nm.id and nm.id_oblast = obl.id and obl.id_country = cont.id and c.flag = in_flag ) AND
              c.code LIKE CONCAT('%',in_cod,'%') AND
              c.name LIKE CONCAT('%',in_name,'%') AND  c.bul LIKE CONCAT('%',in_bul,'%') AND c.dan LIKE CONCAT('%',in_dan,'%') AND
              c.address LIKE CONCAT('%',in_address,'%') AND c.tel LIKE CONCAT('%',in_tel,'%') AND c.fax LIKE CONCAT('%',in_fax,'%') AND
              c.email LIKE CONCAT('%',in_email,'%') AND c.web LIKE CONCAT('%',in_web,'%') ORDER BY c.code;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM `mida`.`contragent` n;
     END IF;

     IF (comprator = 10) THEN
        SELECT nm.name  FROM `mida`.`n_nm` nm WHERE nm.id = in_id_nm;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id, nm.name, obl.name, con.name, con.code
        FROM `mida`.`n_nm` nm, `mida`.`n_oblast` obl, `mida`.`n_country` con
        WHERE  nm.id_oblast = obl.id and obl.id_country = con.id and nm.name like CONCAT('%',in_address,'%');
     END IF;

     IF (comprator = 12) THEN
        SELECT ls.id, ls.name, ls.egn, ls.nlk, ls.coment
        FROM `mida`.`ls_n_person` ls WHERE ls.name like CONCAT('%',in_name,'%')
        ORDER BY ls.name;
     END IF;
     IF (comprator = 13) THEN
        IF (in_id_mol != -1) THEN
            SELECT ls.id, ls.name, ls.egn, ls.nlk, ls.coment FROM `mida`.`ls_n_person` ls WHERE ls.id=in_id_mol;
        END IF;
        IF (in_id_oso != -1) THEN
            SELECT ls.id, ls.name, ls.egn, ls.nlk, ls.coment FROM `mida`.`ls_n_person` ls WHERE ls.id=in_id_oso;
        END IF;
     END IF;
     
     IF (comprator = 14) THEN
        SELECT  MAX(c.code) as code
        FROM `mida`.`contragent` c where c.flag = in_flag;
     END IF;

END $$

DELIMITER ;