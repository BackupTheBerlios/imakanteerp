DELIMITER $$

DROP PROCEDURE IF EXISTS `frmtest`.`ls_procedure_group` $$
CREATE PROCEDURE `ls_procedure_group`(IN in_id INT(6), IN in_nom TINYINT, IN comprator TINYINT, IN in_cod VARCHAR(30), IN in_name VARCHAR(30), IN in_alid TINYINT)
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id, n.cod, n.name, n.alid FROM `frmtest`.`group` n WHERE nom = in_nom;
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
        SELECT n.id,  n.cod, n.name, n.alid  FROM `frmtest`.`group` n  WHERE n.cod LIKE in_cod AND
        n.name LIKE in_name AND n.alid LIKE in_alid AND n.nom=in_nom;
     END IF;
     IF (comprator = 6) THEN
        SELECT * FROM `frmtest`.`anlevel` n;
     END IF;



     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM `frmtest`.`group` n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM `frmtest`.`group`;
     END IF;
END $$

DELIMITER ;