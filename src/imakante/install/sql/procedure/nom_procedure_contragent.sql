DELIMITER $$

DROP PROCEDURE IF EXISTS `frmtest`.`nom_procedure_contragent` $$
CREATE PROCEDURE `nom_procedure_contragent`(IN comprator TINYINT,  IN in_id INT(10),      IN in_cod VARCHAR(11),     IN in_name VARCHAR(45),
                                            IN in_bul VARCHAR(13), IN in_dan VARCHAR(11), IN in_address VARCHAR(35), IN in_id_nm INT(10),
                                            IN in_tel VARCHAR(12), IN in_fax VARCHAR(12), IN in_email VARCHAR(20),   IN in_web VARCHAR(20),
                                            IN in_id_mol INT(10),  IN in_id_oso INT(10),  IN in_flag TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT c.id_contragent, c.code, c.name, c.bul, c.dan, c.address, c.id_nm, nm.name, obl.name, cont.code, cont.name, c.tel, c.fax, c.email, c.web, c.id_mol,
                @MOL:=(select name from `frmtest`.`ls_n_person` where id = id_mol) AS MOL,
               c.id_oso, @OSO:=(select name from `frmtest`.`ls_n_person` where id = id_mol) AS OSO, c.flag
        FROM `frmtest`.`contragent` c, `frmtest`.`n_nm` nm, `frmtest`.`n_oblast` obl , `frmtest`.`n_country`  cont
        WHERE (c.id_nm = nm.id and nm.id_oblast = obl.id and obl.id_country = cont.id) and c.flag = in_flag;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO `frmtest`.`contragent`(name) VALUES(in_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE `frmtest`.`contragent` SET flag = in_flag
           WHERE `frmtest`.`contragent`.id_contragent = in_id;
     END IF;




     IF (comprator = 5) THEN
        SELECT n.id,  n.cod, n.name, n.alid  FROM `frmtest`.`group` n  WHERE n.cod LIKE CONCAT('%',in_cod,'%') AND
        n.name LIKE CONCAT('%',in_name,'%') AND n.alid LIKE CONCAT(in_alid,'%') AND n.nom=in_nom;
     END IF;
     





     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM `frmtest`.`contragent` n;
     END IF;

     IF (comprator = 10) THEN
        SELECT nm.name  FROM `frmtest`.`n_nm` nm WHERE nm.id = in_id_nm;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id, nm.name, obl.name, con.name, con.code
        FROM `frmtest`.`n_nm` nm, `frmtest`.`n_oblast` obl, `frmtest`.`n_country` con
        WHERE  nm.id_oblast = obl.id and obl.id_country = con.id and nm.name like CONCAT('%',in_address,'%');
     END IF;

     IF (comprator = 12) THEN
        SELECT ls.id, ls.name, ls.egn, ls.nlk, ls.coment
        FROM `frmtest`.`ls_n_person` ls WHERE ls.name like CONCAT('%',in_name,'%')
        ORDER BY ls.name;
     END IF;
     IF (comprator = 13) THEN
        IF (in_id_mol != -1) THEN
            SELECT ls.id, ls.name, ls.egn, ls.nlk, ls.coment FROM `frmtest`.`ls_n_person` ls WHERE ls.id=in_id_mol;
        END IF;
        IF (in_id_oso != -1) THEN
            SELECT ls.id, ls.name, ls.egn, ls.nlk, ls.coment FROM `frmtest`.`ls_n_person` ls WHERE ls.id=in_id_oso;
        END IF;
     END IF;


END $$

DELIMITER ;