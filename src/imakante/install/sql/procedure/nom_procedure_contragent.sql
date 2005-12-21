DELIMITER $$

DROP PROCEDURE IF EXISTS `frmtest`.`nom_procedure_contragent` $$
CREATE PROCEDURE `nom_procedure_contragent`(IN comprator TINYINT,  IN in_id INT(10),      IN in_cod VARCHAR(11),     IN in_name VARCHAR(45),
                                            IN in_bul VARCHAR(13), IN in_dan VARCHAR(11), IN in_address VARCHAR(35), IN in_id_nm INT(10),
                                            IN in_tel VARCHAR(12), IN in_fax VARCHAR(12), IN in_email VARCHAR(20),   IN in_web VARCHAR(20),
                                            IN in_id_mol INT(10),  IN in_id_oso INT(10),  IN in_flag TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT c.id_contragent, c.code, c.name, c.bul, c.dan, c.address, c.id_nm, nm.name, obl.name, cont.code, cont.name, c.tel, c.fax, c.email, c.web, c.id_mol, c.id_oso
        FROM `frmtest`.`contragent` c, `frmtest`.`n_nm` nm, `frmtest`.`n_oblast` obl , `frmtest`.`n_country`  cont
        WHERE (c.id_nm = nm.id and nm.id_oblast = obl.id and obl.id_country = cont.id) and c.flag = in_flag;
     END IF;
     IF (comprator = 1) THEN
        INSERT INTO `frmtest`.`group`(nom, cod, name, alid) VALUES(in_nom, in_cod, in_name, in_alid);
     END IF;
     IF (comprator = 2) THEN
        UPDATE `frmtest`.`group` SET cod = in_cod, name = in_name, nom = in_nom, alid = in_alid
           WHERE `frmtest`.`group`.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM `frmtest`.`group`  WHERE id = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.id, n.nom, n.cod, n.name, n.alid FROM `frmtest`.`group` n WHERE `frmtest`.`group`.id = in_id;

     END IF;
     IF (comprator = 5) THEN
        SELECT n.id,  n.cod, n.name, n.alid  FROM `frmtest`.`group` n  WHERE n.cod LIKE CONCAT('%',in_cod,'%') AND
        n.name LIKE CONCAT('%',in_name,'%') AND n.alid LIKE CONCAT(in_alid,'%') AND n.nom=in_nom;
     END IF;
     IF (comprator = 6) THEN
        SELECT * FROM `frmtest`.`anlevel` n ORDER BY cod;
     END IF;



     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM `frmtest`.`group` n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM `frmtest`.`group`;
     END IF;

      IF (comprator = 10) THEN
        SELECT nm.name  FROM `frmtest`.`n_nm` nm WHERE nm.id = in_id_nm;
     END IF;

     IF (comprator = 11) THEN
        SELECT nm.id, nm.name, obl.name, con.name, con.code
        FROM `frmtest`.`n_nm` nm, `frmtest`.`n_oblast` obl, `frmtest`.`n_country` con
        WHERE  nm.id_oblast = obl.id and obl.id_country = con.id and nm.name like CONCAT('%',in_address,'%');
     END IF;


END $$

DELIMITER ;